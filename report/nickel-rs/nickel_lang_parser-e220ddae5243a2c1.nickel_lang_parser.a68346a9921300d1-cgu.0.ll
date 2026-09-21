Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN18nickel_lang_parser5utils12strip_indent17hd875a5ab6cf2eccdE:bb.a
bb.b:                                             ; preds = %bb.a, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$usize$GT$$GT$17hf4d44f28c9d64f6aE.exit74"
  ret void

bb.c:                                             ; preds = %bb.bv
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.d:                                             ; preds = %.lr.ph268, %bb.aj
  %.sroa.0.0267 = phi i64 [ 0, %.lr.ph268 ], [ %.sroa.0.2, %bb.aj ] ; 6 uses
  %.sroa.08.0266 = phi i8 [ 1, %.lr.ph268 ], [ %.sroa.08.2, %bb.aj ] ; 3 uses
  %.sroa.014.0265 = phi i1 [ false, %.lr.ph268 ], [ %.sroa.014.2, %bb.aj ] ; 3 uses
  %.sroa.7.0264 = phi i64 [ undef, %.lr.ph268 ], [ %.sroa.7.2, %bb.aj ] ; 3 uses
  %.sroa.0.0150263 = phi ptr [ %0, %.lr.ph268 ], [ %i.k, %bb.aj ] ; 6 uses
  %.sroa.7.0152262 = phi i64 [ 0, %.lr.ph268 ], [ %i.l, %bb.aj ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0150263, i64 56 ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.7.0152262, 1
  %i.m = load i32, ptr %.sroa.0.0150263, align 8, !range !28, !noundef !19
  %.not61 = icmp eq i32 %i.m, 3
  br i1 %.not61, label %bb.l, label %bb.k

._crit_edge:                                      ; preds = %bb.aj
  %.sroa.0132.0.copyload.pre = load i64, ptr %i.c, align 8 ; 4 uses
  %.sroa.4133.0.copyload.pre = load ptr, ptr %i.f, align 8 ; 4 uses
  %.sroa.5134.0.copyload.pre = load i64, ptr %i.g, align 8 ; 3 uses
  %i.n = icmp ult i64 %.sroa.5134.0.copyload.pre, 1152921504606846976
  call void @llvm.assume(i1 %i.n)
  %.idx273 = shl nuw nsw i64 %.sroa.5134.0.copyload.pre, 3
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.4133.0.copyload.pre, i64 %.idx273
  %i.p = icmp eq i64 %.sroa.5134.0.copyload.pre, 0
  br i1 %i.p, label %._crit_edge272, label %.lr.ph271

bb.e:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = icmp eq i64 %.sroa.0132.0.copyload.pre, 0
  br i1 %i.r, label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17hdbd84214480ce876E.exit", label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17hdbd84214480ce876E.exit.sink.split"

.lr.ph271:                                        ; preds = %._crit_edge, %bb.i
  %.sroa.5136.0269 = phi ptr [ %i.s, %bb.i ], [ %.sroa.4133.0.copyload.pre, %._crit_edge ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.5136.0269, i64 8 ; 2 uses
  %i.t = load i64, ptr %.sroa.5136.0269, align 8, !noalias !8965, !noundef !19 ; 2 uses
  %.not202 = icmp ult i64 %i.t, %1
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.t ; 2 uses
  br i1 %.not202, label %bb.g, label %bb.h, !prof !22

._crit_edge272:                                   ; preds = %bb.i, %._crit_edge
  %i.v = icmp eq i64 %.sroa.0132.0.copyload.pre, 0
  br i1 %i.v, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$usize$GT$$GT$17hf4d44f28c9d64f6aE.exit74", label %bb.f

bb.f:                                             ; preds = %._crit_edge272
  %i.w = shl nuw i64 %.sroa.0132.0.copyload.pre, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4133.0.copyload.pre, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !8966
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$usize$GT$$GT$17hf4d44f28c9d64f6aE.exit74"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$usize$GT$$GT$17hf4d44f28c9d64f6aE.exit74": ; preds = %bb.f, %._crit_edge272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

bb.g:                                             ; preds = %.lr.ph271
  %i.x = load i32, ptr %i.u, align 8, !range !28, !noundef !19
  %.not60 = icmp eq i32 %i.x, 3
  br i1 %.not60, label %bb.h, label %bb.i, !prof !20

bb.h:                                             ; preds = %bb.g, %.lr.ph271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @301, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.ab, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #52
          to label %bb.j unwind label %bb.e

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i64 0, ptr %i.ac, align 8
  %i.ad = icmp eq ptr %i.s, %i.o
  br i1 %i.ad, label %._crit_edge272, label %.lr.ph271

bb.j:                                             ; preds = %bb.z, %bb.h
  unreachable

bb.k:                                             ; preds = %bb.d
  %i.ae = trunc nuw i8 %.sroa.08.0266 to i1
  br i1 %i.ae, label %bb.bt, label %bb.bs

bb.l:                                             ; preds = %bb.d
  store i64 0, ptr %i.b, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.543.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0150263, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0150263, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0150263, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !19 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj ; 4 uses
  %i.al = icmp samesign eq i64 %i.aj, 0
  br i1 %i.al, label %.thread175, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.au
  %i.am = phi ptr [ %i.ff, %bb.au ], [ inttoptr (i64 1 to ptr), %bb.l ] ; 2 uses
  %i.an = phi i64 [ %i.fg, %bb.au ], [ 0, %bb.l ] ; 22 uses
  %.sroa.0.1252 = phi i64 [ %.sroa.0.3, %bb.au ], [ %.sroa.0.0267, %bb.l ] ; 7 uses
  %.sroa.08.1251 = phi i8 [ %.sroa.08.3, %bb.au ], [ %.sroa.08.0266, %bb.l ] ; 4 uses
  %.sroa.014.1249 = phi i1 [ %.sroa.014.3, %bb.au ], [ %.sroa.014.0265, %bb.l ] ; 5 uses
  %.sroa.7.1247 = phi i64 [ %.sroa.7.3, %bb.au ], [ %.sroa.7.0264, %bb.l ] ; 5 uses
  %.sroa.0126.0246 = phi ptr [ %.sroa.0126.1, %bb.au ], [ %i.ah, %bb.l ] ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0126.0246, i64 1 ; 3 uses
  %i.ap = load i8, ptr %.sroa.0126.0246, align 1, !noalias !8967, !noundef !19 ; 5 uses
  %i.aq = icmp sgt i8 %i.ap, -1
  br i1 %i.aq, label %bb.m, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i": ; preds = %.lr.ph
  %i.ar = and i8 %i.ap, 31
  %i.as = zext nneg i8 %i.ar to i32               ; 3 uses
  %i.at = icmp ne ptr %i.ao, %i.ak
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0126.0246, i64 2 ; 3 uses
  %i.av = load i8, ptr %i.ao, align 1, !noalias !8967, !noundef !19
  %i.aw = shl nuw nsw i32 %i.as, 6
  %i.ax = and i8 %i.av, 63
  %i.ay = zext nneg i8 %i.ax to i32               ; 2 uses
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = icmp samesign ugt i8 %i.ap, -33
  br i1 %i.ba, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i", label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bb = zext nneg i8 %i.ap to i32
  br label %bb.n

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i"
  %i.bc = icmp ne ptr %i.au, %i.ak
  call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0126.0246, i64 3 ; 3 uses
  %i.be = load i8, ptr %i.au, align 1, !noalias !8967, !noundef !19
  %i.bf = shl nuw nsw i32 %i.ay, 6
  %i.bg = and i8 %i.be, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh            ; 2 uses
  %i.bj = shl nuw nsw i32 %i.as, 12
  %i.bk = or disjoint i32 %i.bi, %i.bj
  %i.bl = icmp samesign ugt i8 %i.ap, -17
  br i1 %i.bl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i", label %bb.n

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i"
  %i.bm = icmp ne ptr %i.bd, %i.ak
  call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0126.0246, i64 4
  %i.bo = load i8, ptr %i.bd, align 1, !noalias !8967, !noundef !19
  %i.bp = shl nuw nsw i32 %i.as, 18
  %i.bq = and i32 %i.bp, 1835008
  %i.br = shl nuw nsw i32 %i.bi, 6
  %i.bs = and i8 %i.bo, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = or disjoint i32 %i.bu, %i.bq
  br label %bb.n

.loopexit203:                                     ; preds = %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %lpad.loopexit206 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.ao, %bb.ar, %bb.az, %bb.bk
  %lpad.loopexit210 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit203
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit203 ], [ %lpad.loopexit206, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit210, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.val.i122 = load i64, ptr %i.b, align 8        ; 2 uses
  %i.bw = icmp eq i64 %.val.i122, 0
  br i1 %i.bw, label %bb.bw, label %bb.br

bb.n:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i", %bb.m, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i"
  %.sroa.0126.1 = phi ptr [ %i.au, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i" ], [ %i.ao, %bb.m ], [ %i.bn, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i" ], [ %i.bd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i" ] ; 2 uses
  %.sroa.4.0.i = phi i32 [ %i.az, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i" ], [ %i.bb, %bb.m ], [ %i.bv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i" ], [ %i.bk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i" ] ; 21 uses
  switch i32 %.sroa.4.0.i, label %bb.ak [
    i32 1114112, label %.thread175
    i32 32, label %bb.al
    i32 9, label %bb.am
    i32 10, label %bb.an
  ]

.thread175:                                       ; preds = %bb.n, %bb.au, %bb.l
  %i.bx = phi i64 [ 0, %bb.l ], [ %i.fg, %bb.au ], [ %i.an, %bb.n ] ; 18 uses
  %.sroa.7.1.lcssa = phi i64 [ %.sroa.7.0264, %bb.l ], [ %.sroa.7.3, %bb.au ], [ %.sroa.7.1247, %bb.n ]
  %.sroa.014.1.lcssa = phi i1 [ %.sroa.014.0265, %bb.l ], [ %.sroa.014.3, %bb.au ], [ %.sroa.014.1249, %bb.n ]
  %.sroa.08.1.lcssa = phi i8 [ %.sroa.08.0266, %bb.l ], [ %.sroa.08.3, %bb.au ], [ %.sroa.08.1251, %bb.n ]
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.0267, %bb.l ], [ %.sroa.0.3, %bb.au ], [ %.sroa.0.1252, %bb.n ]
  %i.by = icmp eq i64 %.sroa.7.0152262, 0
  br i1 %i.by, label %bb.o, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h2dbdec7125455187E.exit"

bb.o:                                             ; preds = %.thread175
  %i.bz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !19, !noundef !19 ; 8 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.o
  %i.ca = phi i64 [ 0, %bb.o ], [ %i.cn, %.backedge.i.backedge ] ; 5 uses
  %i.cb = sub nuw i64 %i.bx, %i.ca                ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cd = icmp ult i64 %i.cb, 16
  br i1 %i.cd, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %.backedge.i
  %.not.i.i.i = icmp eq i64 %i.bx, %i.ca
  br i1 %.not.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h2dbdec7125455187E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.p
  %.sroa.01.05.i.i.i = phi i64 [ %i.ch, %bb.p ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.01.05.i.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !8968, !noalias !8969, !noundef !19
  %i.cg = icmp eq i8 %i.cf, 10
  br i1 %i.cg, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.ch = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ch, %i.cb
  br i1 %exitcond.not.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h2dbdec7125455187E.exit", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %.backedge.i
  %i.ci = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cc, i64 noundef %i.cb)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %i.cj = extractvalue { i64, i64 } %i.ci, 0
  %i.ck = extractvalue { i64, i64 } %i.ci, 1
  %i.cl = trunc nuw i64 %i.cj to i1
  br i1 %i.cl, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h2dbdec7125455187E.exit"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %.noexc
  %.sroa.4.0.i27.i.i = phi i64 [ %i.ck, %.noexc ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cm = add i64 %i.ca, 1
  %i.cn = add i64 %i.cm, %.sroa.4.0.i27.i.i       ; 2 uses
  %.not21.i.i = icmp ugt i64 %i.cn, %i.bx         ; 2 uses
  %i.co = add i64 %.sroa.4.0.i27.i.i, %i.ca       ; 5 uses
  %or.cond.i.not.i = icmp ult i64 %i.co, %i.bx
  br i1 %or.cond.i.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h2dbdec7125455187E.exit", label %.backedge.i.backedge

bb.r:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.co
  %lhsc.i = load i8, ptr %i.cp, align 1, !alias.scope !8970
  %i.cq = icmp eq i8 %lhsc.i, 10                  ; 2 uses
  %brmerge.i = or i1 %.not21.i.i, %i.cq
  br i1 %brmerge.i, label %bb.s, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.r, %bb.q
  br label %.backedge.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h2dbdec7125455187E.exit": ; preds = %.preheader.i.i.i, %.noexc, %bb.q, %.lr.ph.i, %bb.p, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", %bb.s, %.thread175
  %i.cr = phi i64 [ %i.bx, %.lr.ph.i ], [ %i.bx, %bb.p ], [ %i.bx, %.thread175 ], [ %i.de, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit" ], [ %i.bx, %bb.s ], [ %i.bx, %bb.q ], [ %i.bx, %.noexc ], [ %i.bx, %.preheader.i.i.i ] ; 6 uses
  %i.cs = icmp eq i64 %.sroa.7.0152262, %i.i
  br i1 %i.cs, label %bb.ac, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17ha2c8b553fff213bfE.exit"

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.co
  br i1 %i.cq, label %bb.t, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h2dbdec7125455187E.exit"

bb.t:                                             ; preds = %bb.s
  %i.cu = icmp eq i64 %i.co, 0
  br i1 %i.cu, label %.thread186, label %.lr.ph.i

bb.u:                                             ; preds = %.backedge.i79
  %i.cv = add i64 %i.co, 1                        ; 2 uses
  %2 = icmp eq i64 %i.cv, 0
  br i1 %2, label %bb.w, label %.thread186

.thread186:                                       ; preds = %bb.t, %bb.u
  %i.cw = phi i64 [ %i.cv, %bb.u ], [ 1, %bb.t ]  ; 5 uses
  %.not.i = icmp ult i64 %i.cw, %i.bx
  br i1 %.not.i, label %bb.v, label %.split.i

.split.i:                                         ; preds = %.thread186
  %i.cx = icmp eq i64 %i.cw, %i.bx
  br i1 %i.cx, label %bb.w, label %bb.z

bb.v:                                             ; preds = %.thread186
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !8971, !noundef !19
  %i.da = icmp sgt i8 %i.cz, -65
  br i1 %i.da, label %bb.w, label %bb.z

.lr.ph.i:                                         ; preds = %bb.t, %.backedge.i79
  %i.db = phi ptr [ %i.dc, %.backedge.i79 ], [ %i.bz, %bb.t ] ; 2 uses
  %.val.i = load i8, ptr %i.db, align 1, !noalias !8972, !noundef !19
  switch i8 %.val.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h2dbdec7125455187E.exit" [
    i8 32, label %.backedge.i79
    i8 9, label %.backedge.i79
  ]

.backedge.i79:                                    ; preds = %.lr.ph.i, %.lr.ph.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ct
  br i1 %i.dd, label %bb.u, label %.lr.ph.i

bb.w:                                             ; preds = %bb.v, %.split.i, %bb.u
  %3 = phi i64 [ %i.cw, %bb.v ], [ %i.bx, %.split.i ], [ 0, %bb.u ] ; 3 uses
  %i.de = sub nuw i64 %i.bx, %3                   ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bz, i64 %3
  %i.dg = icmp slt i64 %i.de, 0
  br i1 %i.dg, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.w
  %i.dh = icmp eq i64 %i.bx, %3
  br i1 %i.dh, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !8973
  %i.di = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.de, i64 noundef range(i64 1, 9) 1) #54, !noalias !8973 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.x ], [ 0, %bb.w ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.v, %.split.i
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bz, i64 noundef %i.bx, i64 noundef %i.cw, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @304) #52
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.x, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.di, %bb.x ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.df, i64 %i.de, i1 false), !noalias !8974
  %.val.i82 = load i64, ptr %i.b, align 8         ; 2 uses
  %i.dk = icmp eq i64 %.val.i82, 0
  br i1 %i.dk, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef %.val.i82, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !8975
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit": ; preds = %bb.ab, %bb.aa
  store i64 %i.de, ptr %i.b, align 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %i.de, ptr %.sroa.543.0..sroa_idx, align 8
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h2dbdec7125455187E.exit"

bb.ac:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h2dbdec7125455187E.exit"
  %i.dl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !19, !noundef !19 ; 4 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.dm = phi i64 [ %i.cr, %bb.ac ], [ %i.dq, %bb.ae ]
  %i.dn = invoke { i64, i64 } @_ZN4core5slice6memchr7memrchr17h0c3e43ac4b055a3eE(i8 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dl, i64 noundef %i.dm)
          to label %.noexc86 unwind label %.loopexit203 ; 2 uses

.noexc86:                                         ; preds = %bb.ad
  %i.do = extractvalue { i64, i64 } %i.dn, 0
  %i.dp = trunc nuw i64 %i.do to i1
  br i1 %i.dp, label %bb.af, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17ha2c8b553fff213bfE.exit"

bb.ae:                                            ; preds = %bb.ag, %bb.af
  %.not.i.i = icmp ugt i64 %i.dq, %i.cr
  br i1 %.not.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17ha2c8b553fff213bfE.exit", label %bb.ad

bb.af:                                            ; preds = %.noexc86
  %i.dq = extractvalue { i64, i64 } %i.dn, 1      ; 7 uses
  %or.cond25.i.not.i = icmp ult i64 %i.dq, %i.cr
  br i1 %or.cond25.i.not.i, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dq
  %lhsc.i85 = load i8, ptr %i.dr, align 1, !alias.scope !8976
  %i.ds = icmp eq i8 %lhsc.i85, 10
  br i1 %i.ds, label %bb.ai, label %bb.ae

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17ha2c8b553fff213bfE.exit": ; preds = %bb.ae, %.noexc86, %.lr.ph.i94, %_ZN5alloc6string6String8truncate17hf71e28f22521745fE.exit, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h2dbdec7125455187E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !8977)
  %.val.i87 = load i64, ptr %i.af, align 8, !alias.scope !8977 ; 2 uses
  %i.dt = icmp eq i64 %.val.i87, 0
  br i1 %i.dt, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit89", label %bb.ah

bb.ah:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17ha2c8b553fff213bfE.exit"
  %.val1.i88 = load ptr, ptr %i.ag, align 8, !alias.scope !8977, !nonnull !19, !noundef !19
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i88, i64 noundef %.val.i87, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !8977
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit89"

bb.ai:                                            ; preds = %bb.ag
  %i.du = icmp sgt i64 %i.cr, -1
  call void @llvm.assume(i1 %i.du)
  %i.dv = add nsw i64 %i.cr, -1
  %i.dw = icmp eq i64 %i.dq, %i.dv
  br i1 %i.dw, label %_ZN5alloc6string6String8truncate17hf71e28f22521745fE.exit, label %.lr.ph.preheader.i91

.lr.ph.preheader.i91:                             ; preds = %bb.ai
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dq
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.cr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  br label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %.backedge.i96, %.lr.ph.preheader.i91
  %i.ea = phi ptr [ %i.eb, %.backedge.i96 ], [ %i.dz, %.lr.ph.preheader.i91 ] ; 2 uses
  %.val.i95 = load i8, ptr %i.ea, align 1, !noalias !8978, !noundef !19
  switch i8 %.val.i95, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17ha2c8b553fff213bfE.exit" [
    i8 32, label %.backedge.i96
    i8 9, label %.backedge.i96
  ]

.backedge.i96:                                    ; preds = %.lr.ph.i94, %.lr.ph.i94
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.dy
  br i1 %i.ec, label %_ZN5alloc6string6String8truncate17hf71e28f22521745fE.exit, label %.lr.ph.i94

_ZN5alloc6string6String8truncate17hf71e28f22521745fE.exit: ; preds = %.backedge.i96, %bb.ai
  store i64 %i.dq, ptr %.sroa.543.0..sroa_idx, align 8
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17ha2c8b553fff213bfE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit89": ; preds = %bb.ah, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17ha2c8b553fff213bfE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9313780bff20e686E.exit", %bb.bs, %bb.bt, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit89"
  %.sroa.7.2 = phi i64 [ %.sroa.7.0152262, %bb.bt ], [ undef, %bb.bs ], [ %.sroa.7.1.lcssa, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit89" ], [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9313780bff20e686E.exit" ]
  %.sroa.014.2 = phi i1 [ true, %bb.bt ], [ false, %bb.bs ], [ %.sroa.014.1.lcssa, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit89" ], [ false, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9313780bff20e686E.exit" ]
  %.sroa.08.2 = phi i8 [ 0, %bb.bt ], [ 0, %bb.bs ], [ %.sroa.08.1.lcssa, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit89" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9313780bff20e686E.exit" ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.0267, %bb.bt ], [ %.sroa.0.0267, %bb.bs ], [ %.sroa.0.1.lcssa, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit89" ], [ %.sroa.0.0267, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9313780bff20e686E.exit" ]
  %i.ed = icmp eq ptr %i.k, %i.h
  br i1 %i.ed, label %._crit_edge, label %bb.d

.thread200:                                       ; preds = %bb.ap, %bb.at
  %i.ee = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ee)
  br label %bb.ay

bb.ak:                                            ; preds = %bb.n
  %i.ef = trunc nuw i8 %.sroa.08.1251 to i1
  %i.eg = icmp sgt i64 %i.an, -1
  %i.eh = icmp samesign ult i32 %.sroa.4.0.i, 128 ; 3 uses
  call void @llvm.assume(i1 %i.eg)
  br i1 %i.ef, label %bb.bg, label %bb.av

bb.al:                                            ; preds = %bb.n
  %i.ei = trunc nuw i8 %.sroa.08.1251 to i1       ; 2 uses
  %i.ej = icmp ult i64 %.sroa.0.1252, %i.e
  %or.cond = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond, label %bb.as, label %bb.ap

bb.am:                                            ; preds = %bb.n
  %i.ek = trunc nuw i8 %.sroa.08.1251 to i1       ; 2 uses
  %i.el = icmp ult i64 %.sroa.0.1252, %i.e
  %or.cond3 = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond3, label %bb.as, label %bb.at

bb.an:                                            ; preds = %bb.n
  %i.em = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.em)
  %i.en = load i64, ptr %i.b, align 8, !range !38, !noundef !19
  %i.eo = icmp eq i64 %i.en, %i.an
  br i1 %i.eo, label %bb.ao, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit, !prof !20

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.an, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc105:                                        ; preds = %bb.ao
  %.pre.i = load i64, ptr %.sroa.543.0..sroa_idx, align 8
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit: ; preds = %bb.an, %.noexc105
  %i.ep = phi ptr [ %i.am, %bb.an ], [ %.pre, %.noexc105 ] ; 2 uses
  %i.eq = phi i64 [ %i.an, %bb.an ], [ %.pre.i, %.noexc105 ] ; 2 uses
  %i.er = icmp sgt i64 %i.eq, -1
  call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eq
  store i8 10, ptr %i.es, align 1, !noalias !8979
  %i.et = add nuw i64 %i.an, 1                    ; 2 uses
  store i64 %i.et, ptr %.sroa.543.0..sroa_idx, align 8
  br label %bb.au

bb.ap:                                            ; preds = %bb.al
  br i1 %i.ei, label %bb.aq, label %.thread200

bb.aq:                                            ; preds = %bb.ap, %bb.at
  %i.eu = add i64 %.sroa.0.1252, 1
  %i.ev = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ev)
  %i.ew = load i64, ptr %i.b, align 8, !range !38, !noundef !19
  %i.ex = icmp eq i64 %i.ew, %i.an
  br i1 %i.ex, label %bb.ar, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit109, !prof !20

bb.ar:                                            ; preds = %bb.aq
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.an, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc108:                                        ; preds = %bb.ar
  %.pre.i107 = load i64, ptr %.sroa.543.0..sroa_idx, align 8
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit109

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit109: ; preds = %.noexc108, %bb.aq
  %i.ey = phi i64 [ %i.an, %bb.aq ], [ %.pre.i107, %.noexc108 ] ; 2 uses
  %i.ez = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.fa = icmp sgt i64 %i.ey, -1
  call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ey
  %i.fc = trunc nuw nsw i32 %.sroa.4.0.i to i8
  store i8 %i.fc, ptr %i.fb, align 1, !noalias !8980
  %i.fd = add nuw i64 %i.an, 1                    ; 2 uses
  store i64 %i.fd, ptr %.sroa.543.0..sroa_idx, align 8
  br label %bb.au
end_hunk_0
begin_hunk_1_@"_ZN4core3ptr179drop_in_place$LT$alloc..rc..RcInner$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17he6991c9171b9d58dE":bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !598744, !noundef !19 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"
  %i.i = load i64, ptr %i.g, align 8, !noalias !598745, !noundef !19
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.g, align 8, !noalias !598745
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.d:                                             ; preds = %bb.c
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hff02b6e03c9e23feE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f), !inline_history !0
  br label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit": ; preds = %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i", %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1e9e04162c44765eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598749)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !598749, !noundef !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !598749
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !598749 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7c05a23995e012aE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !598749, !noundef !19 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7c05a23995e012aE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !598749, !nonnull !19, !noundef !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !598749, !noundef !19
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !598749, !noundef !19
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !598749
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !598749, !nonnull !19, !noundef !19
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !598749
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !598749, !nonnull !19, !noundef !19
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !598749, !inline_history !598748
  %i.s = load i64, ptr %i.e, align 8, !noalias !598749, !noundef !19
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !598749
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7c05a23995e012aE.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7c05a23995e012aE.exit": ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !598749, !noundef !19 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.03.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !598749, !noundef !19
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.03.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !598749
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h83573e064cf46c01E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598753)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !598753, !noundef !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !598753
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !598753 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3fd5ca34db5bbdfE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !598753, !noundef !19 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3fd5ca34db5bbdfE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.02.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.02.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !598753, !nonnull !19, !noundef !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !598753, !noundef !19
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.02.03.i.i, -1
  %i.k = add i64 %.sroa.02.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !598753, !noundef !19
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !598753
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !598753, !nonnull !19, !noundef !19
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !598753
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !598753, !nonnull !19, !noundef !19
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !598753, !inline_history !598752
  %i.s = load i64, ptr %i.e, align 8, !noalias !598753, !noundef !19
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !598753
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.02.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3fd5ca34db5bbdfE.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3fd5ca34db5bbdfE.exit": ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !598753, !noundef !19 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.01.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !598753, !noundef !19
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.01.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !598753
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr194drop_in_place$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$17h0bd26101962b8281E"(ptr noalias nofree noundef nonnull readonly align 64 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598762)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598764)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 16, !alias.scope !598765, !nonnull !19, !noundef !19 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !598765, !noundef !19 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598766)
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcdcd083aa74ec3aeE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h461c554db74ef589E.exit.i.i.i.i.i"
  %.sroa.0.08.i.i.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h461c554db74ef589E.exit.i.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.08.i.i.i.i.i
  %i.f = add nuw i64 %.sroa.0.08.i.i.i.i.i, 1     ; 4 uses
  %.val7.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !598766, !noalias !598765, !nonnull !19, !noundef !19 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17h9afd9b6e786a7e79E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %.val7.i.i.i.i.i)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h461c554db74ef589E.exit.i.i.i.i.i" unwind label %.body.i.i.i.i.i, !noalias !598767

.body.i.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #54, !noalias !598767
  %i.h = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.h, label %.body.i.i.i, label %.lr.ph

"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h461c554db74ef589E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #54, !noalias !598767
  %i.i = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcdcd083aa74ec3aeE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.j = add i64 %.sroa.0.1.i.i.i.i.i9, 1         ; 2 uses
  %i.k = icmp eq i64 %i.j, %.val1.i.i.i
  br i1 %i.k, label %.body.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i.i.i, %bb.b
  %.sroa.0.1.i.i.i.i.i9 = phi i64 [ %i.j, %bb.b ], [ %i.f, %.body.i.i.i.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i9
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !598766, !noalias !598765, !nonnull !19, !noundef !19
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h461c554db74ef589E"(ptr %.val.i.i.i.i.i) #53
          to label %bb.b unwind label %bb.c, !noalias !598767

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !598767
  unreachable

.body.i.i.i:                                      ; preds = %bb.b, %.body.i.i.i.i.i
  %.val4.i.i.i = load i64, ptr %i.a, align 8, !range !38, !alias.scope !598765, !noundef !19 ; 2 uses
  %i.n = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.n, label %"_ZN4core3ptr110drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$17he53ebe4e6b393adaE.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %.body.i.i.i
  %i.o = shl nuw i64 %.val4.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !598765
  br label %"_ZN4core3ptr110drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$17he53ebe4e6b393adaE.exit.i.i.i"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcdcd083aa74ec3aeE.exit.i.i.i": ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h461c554db74ef589E.exit.i.i.i.i.i", %bb.a
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !range !38, !alias.scope !598765, !noundef !19 ; 2 uses
  %i.p = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.p, label %"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hd3fbce4c3add0768E.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcdcd083aa74ec3aeE.exit.i.i.i"
  %i.q = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !598765
  br label %"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hd3fbce4c3add0768E.exit"

"_ZN4core3ptr110drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$17he53ebe4e6b393adaE.exit.i.i.i": ; preds = %bb.d, %.body.i.i.i
  resume { ptr, i32 } %i.g

"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hd3fbce4c3add0768E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcdcd083aa74ec3aeE.exit.i.i.i", %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr195drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$$GT$17h552e328bc011189dE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !19, !align !42, !noundef !19 ; 2 uses
  %i.b = atomicrmw sub ptr %.val, i32 1 release, align 4
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, -1073741825
  %or.cond.not.i.i = icmp eq i32 %i.d, -2147483648
  br i1 %or.cond.not.i.i, label %bb.b, label %"_ZN4core3ptr157drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h728f278a9ca3b416E.exit", !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.val, i32 noundef %i.c)
  br label %"_ZN4core3ptr157drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h728f278a9ca3b416E.exit"

"_ZN4core3ptr157drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h728f278a9ca3b416E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr196drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$$GT$17h165b15b57bb768e8E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !21, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.g, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 8
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw sub ptr %.val, i32 1073741823 release, align 4
  %i.i = add i32 %i.h, -1073741823                ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.i, 1073741824
  br i1 %or.cond.i.i, label %"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h4dae71a1d56f8165E.exit", label %bb.e, !prof !48

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.val, i32 noundef %i.i)
  br label %"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h4dae71a1d56f8165E.exit"

"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h4dae71a1d56f8165E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core3ptr19swap_nonoverlapping17haaa80cf207d154d7E(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 4, 73) %2) unnamed_addr #21 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 3 uses
  %i.b = and i64 %2, 7                            ; 2 uses
  switch i64 %i.a, label %.preheader.i.preheader.new [
    i64 0, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i
    i64 1, label %.preheader.i.epil.preheader
  ]

.preheader.i.preheader.new:                       ; preds = %bb.a
  %unroll_iter = and i64 %i.a, 14
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.0.03.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.f, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.c = or disjoint i64 %.sroa.0.03.i.i, 1       ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598783)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 1, !alias.scope !598782, !noalias !598783
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.e, align 1, !alias.scope !598783, !noalias !598782
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.d, align 1, !alias.scope !598782, !noalias !598783
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.e, align 1, !alias.scope !598783, !noalias !598782
  %i.f = add nuw nsw i64 %.sroa.0.03.i.i, 2       ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598785)
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.g, align 1, !alias.scope !598784, !noalias !598785
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.h, align 1, !alias.scope !598785, !noalias !598784
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.g, align 1, !alias.scope !598784, !noalias !598785
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.h, align 1, !alias.scope !598785, !noalias !598784
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i.loopexit.unr-lcssa, label %.preheader.i

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i.loopexit.unr-lcssa: ; preds = %.preheader.i
  %i.i = and i64 %2, 8
  %lcmp.mod.not = icmp eq i64 %i.i, 0
  br i1 %lcmp.mod.not, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %bb.a, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i.loopexit.unr-lcssa
  %.sroa.0.03.i.i.epil.init = phi i64 [ 0, %bb.a ], [ %i.f, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod2 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i.epil.init ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598783)
  %.sroa.0.0.copyload.i.i.i.epil = load i64, ptr %i.j, align 1, !alias.scope !598782, !noalias !598783
  %.sroa.02.0.copyload.i.i.i.epil = load i64, ptr %i.k, align 1, !alias.scope !598783, !noalias !598782
  store i64 %.sroa.02.0.copyload.i.i.i.epil, ptr %i.j, align 1, !alias.scope !598782, !noalias !598783
  store i64 %.sroa.0.0.copyload.i.i.i.epil, ptr %i.k, align 1, !alias.scope !598783, !noalias !598782
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i: ; preds = %.preheader.i.epil.preheader, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i.loopexit.unr-lcssa, %bb.a
  %.not4.i = icmp eq i64 %i.b, 0
  br i1 %.not4.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i
  %i.l = and i64 %2, 120                          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 4 uses
  %i.o = icmp samesign ult i64 %i.b, 4
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598787)
  %.sroa.0.0.copyload.i.i5.i = load i32, ptr %i.m, align 1, !alias.scope !598786, !noalias !598787
  %.sroa.02.0.copyload.i.i6.i = load i32, ptr %i.n, align 1, !alias.scope !598787, !noalias !598786
  store i32 %.sroa.02.0.copyload.i.i6.i, ptr %i.m, align 1, !alias.scope !598786, !noalias !598787
  store i32 %.sroa.0.0.copyload.i.i5.i, ptr %i.n, align 1, !alias.scope !598787, !noalias !598786
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.p = and i64 %2, 2
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598789)
  %.sroa.0.0.copyload.i9.i.i = load i16, ptr %i.r, align 1, !alias.scope !598788, !noalias !598789
  %.sroa.02.0.copyload.i10.i.i = load i16, ptr %i.s, align 1, !alias.scope !598789, !noalias !598788
  store i16 %.sroa.02.0.copyload.i10.i.i, ptr %i.r, align 1, !alias.scope !598788, !noalias !598789
  store i16 %.sroa.0.0.copyload.i9.i.i, ptr %i.s, align 1, !alias.scope !598789, !noalias !598788
  %i.t = or disjoint i64 %.sroa.0.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %i.u = and i64 %2, 1
  %i.v = icmp eq i64 %i.u, 0
end_hunk_1
begin_hunk_2_@"_ZN4core3ptr207drop_in_place$LT$core..iter..adapters..chain..Chain$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$C$core..option..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17h011bf4b7e9cd6639E":bb.a

bb.c:                                             ; preds = %bb.b
  %i.n = mul nuw i64 %i.l, 280
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !598813
  br label %"_ZN4core3ptr124drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17h5a5f8d564cbdec1aE.exit"

"_ZN4core3ptr124drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17h5a5f8d564cbdec1aE.exit": ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598814)
  %i.o = load i64, ptr %0, align 8, !range !81, !alias.scope !598814, !noundef !19 ; 3 uses
  %i.p = icmp eq i64 %i.o, 22
  br i1 %i.p, label %"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17hdb84a42b5152c9bfE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr124drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17h5a5f8d564cbdec1aE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598817)
  %i.q = icmp eq i64 %i.o, 21
  br i1 %i.q, label %"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17hdb84a42b5152c9bfE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598818)
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %i.o, i64 18)
  switch i64 %i.r, label %bb.f [
    i64 0, label %bb.h
    i64 1, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598819)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !598820, !nonnull !19, !noundef !19 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !598820, !noundef !19 ; 2 uses
  %i.v = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.v, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw [224 x i8], ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i.i
  %i.x = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.w), !noalias !598820
  %i.y = icmp eq i64 %i.x, %.val1.i.i.i.i.i.i
  br i1 %i.y, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.f
  %.val2.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !range !38, !alias.scope !598820, !noundef !19 ; 2 uses
  %i.z = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.z, label %"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17hdb84a42b5152c9bfE.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i.i.i.i"
  %i.aa = mul nuw i64 %.val2.i.i.i.i.i.i, 224
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !598820
  br label %"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17hdb84a42b5152c9bfE.exit"

bb.h:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %0)
  br label %"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17hdb84a42b5152c9bfE.exit"

bb.i:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.ab)
  br label %"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17hdb84a42b5152c9bfE.exit"

"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17hdb84a42b5152c9bfE.exit": ; preds = %"_ZN4core3ptr124drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17h5a5f8d564cbdec1aE.exit", %bb.d, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i.i.i.i", %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr212drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..raw..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6e773852922fc71eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598823)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.a, align 8, !alias.scope !598823, !noundef !19 ; 3 uses
  %i.b = icmp eq i64 %.val3.i, 0
  br i1 %i.b, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77c527b68e8b00ecE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !598823 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !598823 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !598823
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = sub nsw i64 0, %i.l
  %i.t = getelementptr inbounds i8, ptr %.val2.i, i64 %i.s
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #54, !noalias !598823
  br label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77c527b68e8b00ecE.exit"

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77c527b68e8b00ecE.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr216drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$$RF$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$C$nickel_lang_parser..ast..typ..EnumRows$C$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17haf4dcbb996684458E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !23, !noundef !19 ; 3 uses
  %i.b = icmp ne i64 %i.a, 12
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp samesign ult i64 %i.a, 3
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17h1d5a2cb8b3abaaa4E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598826)
  switch i64 %i.a, label %bb.c [
    i64 0, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17h1d5a2cb8b3abaaa4E.exit"
    i64 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i64, ptr %i.d, align 8, !alias.scope !598826, !noundef !19 ; 4 uses
  %i.e = icmp eq i64 %.val3.i, 0
  br i1 %i.e, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17h1d5a2cb8b3abaaa4E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.f = shl i64 %.val3.i, 2
  %i.g = icmp slt i64 %.val3.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i64 %i.f, -16                        ; 2 uses
  %i.i = add i64 %i.h, 16                         ; 2 uses
  %i.j = add nsw i64 %.val3.i, 17
  %i.k = add i64 %i.j, %i.i                       ; 4 uses
  %i.l = icmp uge i64 %i.k, %i.i
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17h1d5a2cb8b3abaaa4E.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i
  %.sink.i = phi i64 [ %i.u, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i ], [ %i.h, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ]
  %.sink7.i = phi i64 [ %i.x, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i ], [ %i.k, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ]
  %.val.sink.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.sink.i = load ptr, ptr %.val.sink.in.i, align 8, !alias.scope !598826, !nonnull !19, !noundef !19
  %i.o = sub nuw nsw i64 -16, %.sink.i
  %i.p = getelementptr inbounds i8, ptr %.val.sink.i, i64 %i.o
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %.sink7.i, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !598826
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17h1d5a2cb8b3abaaa4E.exit"

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.q, align 8, !alias.scope !598826, !noundef !19 ; 4 uses
  %i.r = icmp eq i64 %.val1.i, 0
  br i1 %i.r, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17h1d5a2cb8b3abaaa4E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i: ; preds = %bb.d
  %i.s = shl i64 %.val1.i, 2
  %i.t = icmp slt i64 %.val1.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.t)
  %i.u = and i64 %i.s, -16                        ; 2 uses
  %i.v = add i64 %i.u, 16                         ; 2 uses
  %i.w = add nsw i64 %.val1.i, 17
  %i.x = add i64 %i.w, %i.v                       ; 4 uses
  %i.y = icmp uge i64 %i.x, %i.v
  %i.z = icmp ult i64 %i.x, 9223372036854775793
  tail call void @llvm.assume(i1 %i.y)
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17h1d5a2cb8b3abaaa4E.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i"

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17h1d5a2cb8b3abaaa4E.exit": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i, %bb.d, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr217drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h25eb3bad12f8cf2bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !19 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84df39a12a892c45E.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84df39a12a892c45E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add i64 %.sroa.0.0.i.i7, 1               ; 4 uses
  invoke fastcc void @"_ZN4core3ptr194drop_in_place$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$17h0bd26101962b8281E"(ptr noalias noundef readonly align 64 dereferenceable(64) %i.e)
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
  invoke fastcc void @"_ZN4core3ptr194drop_in_place$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$17h0bd26101962b8281E"(ptr noalias noundef readonly align 64 dereferenceable(64) %i.k) #53
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !598829
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !38, !noundef !19 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hc30328077fe2c2a2E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = shl nuw i64 %.val4, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 64) #54
  br label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hc30328077fe2c2a2E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84df39a12a892c45E.exit": ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !38, !noundef !19 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hc30328077fe2c2a2E.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84df39a12a892c45E.exit"
  %i.p = shl nuw i64 %.val2, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 64) #54
  br label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hc30328077fe2c2a2E.exit6"

"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hc30328077fe2c2a2E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84df39a12a892c45E.exit", %bb.g
  ret void

"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hc30328077fe2c2a2E.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr234drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$nickel_lang_parser..uniterm..fix_field_types..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h96da8196de788fb2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598845)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !598846, !nonnull !19, !noundef !19 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load ptr, ptr %i.c, align 8, !alias.scope !598846, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598847)
  %i.h = icmp eq ptr %.val2.i.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr91drop_in_place$LT$$u5b$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$u5d$$GT$17h2858f63d73ac093eE.exit.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %"_ZN4core3ptr81drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h7491634f49a7d300E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.j, %"_ZN4core3ptr81drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h7491634f49a7d300E.exit.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.07.i.i.i ; 4 uses
  %i.j = add nuw i64 %.sroa.0.07.i.i.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598848)
  %i.k = load i64, ptr %i.i, align 8, !range !32, !alias.scope !598849, !noalias !598846, !noundef !19 ; 4 uses
  %i.l = icmp eq i64 %i.k, 18
  br i1 %i.l, label %"_ZN4core3ptr81drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h7491634f49a7d300E.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598851)
  %i.m = icmp ne i64 %i.k, 12
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ult i64 %i.k, 3
  br i1 %i.n, label %bb.c, label %"_ZN4core3ptr81drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h7491634f49a7d300E.exit.i.i.i"

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598852)
  switch i64 %i.k, label %bb.d [
    i64 0, label %"_ZN4core3ptr81drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h7491634f49a7d300E.exit.i.i.i"
    i64 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !598853, !noalias !598846, !noundef !19 ; 4 uses
  %i.p = icmp eq i64 %.val3.i.i.i.i.i.i.i, 0
  br i1 %i.p, label %"_ZN4core3ptr81drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h7491634f49a7d300E.exit.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.q = shl i64 %.val3.i.i.i.i.i.i.i, 2
  %i.r = icmp slt i64 %.val3.i.i.i.i.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.r)
  %i.s = and i64 %i.q, -16                        ; 2 uses
  %i.t = add i64 %i.s, 16                         ; 2 uses
  %i.u = add nsw i64 %.val3.i.i.i.i.i.i.i, 17
  %i.v = add i64 %i.u, %i.t                       ; 4 uses
  %i.w = icmp uge i64 %i.v, %i.t
  %i.x = icmp ult i64 %i.v, 9223372036854775793
  tail call void @llvm.assume(i1 %i.w)
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %"_ZN4core3ptr81drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h7491634f49a7d300E.exit.i.i.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.af, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i ], [ %i.s, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i.i.i.i.i = phi i64 [ %i.ai, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i ], [ %i.v, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val.sink.i.i.i.i.i.i.i = load ptr, ptr %.val.sink.in.i.i.i.i.i.i.i, align 8, !alias.scope !598853, !noalias !598846, !nonnull !19, !noundef !19
  %i.z = sub nuw nsw i64 -16, %.sink.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %.val.sink.i.i.i.i.i.i.i, i64 %i.z
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef %.sink7.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !598854
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h7491634f49a7d300E.exit.i.i.i"

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !598853, !noalias !598846, !noundef !19 ; 4 uses
  %i.ac = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %"_ZN4core3ptr81drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h7491634f49a7d300E.exit.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ad = shl i64 %.val1.i.i.i.i.i.i.i, 2
  %i.ae = icmp slt i64 %.val1.i.i.i.i.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = and i64 %i.ad, -16                      ; 2 uses
  %i.ag = add i64 %i.af, 16                       ; 2 uses
  %i.ah = add nsw i64 %.val1.i.i.i.i.i.i.i, 17
  %i.ai = add i64 %i.ah, %i.ag                    ; 4 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag
  %i.ak = icmp ult i64 %i.ai, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %"_ZN4core3ptr81drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h7491634f49a7d300E.exit.i.i.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i.i"

"_ZN4core3ptr81drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h7491634f49a7d300E.exit.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i, %bb.e, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.am = icmp eq i64 %i.j, %i.g
  br i1 %i.am, label %"_ZN4core3ptr91drop_in_place$LT$$u5b$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$u5d$$GT$17h2858f63d73ac093eE.exit.i.i", label %.lr.ph.i.i.i

"_ZN4core3ptr91drop_in_place$LT$$u5b$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$u5d$$GT$17h2858f63d73ac093eE.exit.i.i": ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h7491634f49a7d300E.exit.i.i.i", %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !598846, !noundef !19 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$GT$17he8d8c50b6c3a66f9E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$$u5b$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$u5d$$GT$17h2858f63d73ac093eE.exit.i.i"
  %i.aq = load ptr, ptr %0, align 8, !alias.scope !598846, !nonnull !19, !noundef !19
  %i.ar = mul nuw i64 %i.ao, 104
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !598846
  br label %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$GT$17he8d8c50b6c3a66f9E.exit"

"_ZN4core3ptr120drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$GT$17he8d8c50b6c3a66f9E.exit": ; preds = %"_ZN4core3ptr91drop_in_place$LT$$u5b$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$u5d$$GT$17h2858f63d73ac093eE.exit.i.i", %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr240drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$lalrpop_util..ErrorRecovery$LT$usize$C$nickel_lang_parser..lexer..Token$C$nickel_lang_parser..error..ParseOrLexError$GT$$C$nickel_lang_parser..error..ParseError$GT$$GT$17h01a1fe15d08faca1E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598857)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !598857, !nonnull !19, !noundef !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !598857, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !598857, !noundef !19 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN4core3ptr68drop_in_place$LT$$u5b$nickel_lang_parser..error..ParseError$u5d$$GT$17he0045d6b07b79c6fE.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.07.i.i
  %i.h = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_parser..error..ParseError$GT$17hc14aa7d1c40722b6E"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.g), !noalias !598857
  %i.i = icmp eq i64 %i.h, %i.e
  br i1 %i.i, label %"_ZN4core3ptr68drop_in_place$LT$$u5b$nickel_lang_parser..error..ParseError$u5d$$GT$17he0045d6b07b79c6fE.exit.i", label %.lr.ph.i.i

"_ZN4core3ptr68drop_in_place$LT$$u5b$nickel_lang_parser..error..ParseError$u5d$$GT$17he0045d6b07b79c6fE.exit.i": ; preds = %.lr.ph.i.i, %bb.a
  %i.j = icmp eq i64 %i.c, 0
  br i1 %i.j, label %"_ZN111_$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$Src$C$Dest$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc9c6a4867063e5f7E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr68drop_in_place$LT$$u5b$nickel_lang_parser..error..ParseError$u5d$$GT$17he0045d6b07b79c6fE.exit.i"
  %i.k = shl nuw i64 %i.c, 7
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !598857
  br label %"_ZN111_$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$Src$C$Dest$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc9c6a4867063e5f7E.exit"

"_ZN111_$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$Src$C$Dest$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc9c6a4867063e5f7E.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$$u5b$nickel_lang_parser..error..ParseError$u5d$$GT$17he0045d6b07b79c6fE.exit.i", %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr242drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$C$nickel_lang_parser..grammar..__action123..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h383d776f1da93b20E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598869)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
begin_hunk_3_@"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..uniterm..UniTerm$GT$17h646881509180d685E":bb.a
bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599395)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !599396, !nonnull !19, !noundef !19 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !599396, !noundef !19 ; 2 uses
  %i.aj = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.aj, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [280 x i8], ptr %.val.i.i.i, i64 %.sroa.0.07.i.i.i.i.i
  %i.al = add nuw i64 %.sroa.0.07.i.i.i.i.i, 1    ; 2 uses
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %i.ak), !noalias !599396
  %i.am = icmp eq i64 %i.al, %.val1.i.i.i
  br i1 %i.am, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %i.an = icmp eq i64 %i.a, 0
  br i1 %i.an, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h1ad22147a9e3645dE.exit.i.i", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i"
  %i.ao = mul nuw i64 %i.a, 280
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !599396
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h1ad22147a9e3645dE.exit.i.i"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h1ad22147a9e3645dE.exit.i.i": ; preds = %bb.g, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i"
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599397)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i1.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !599398, !nonnull !19, !noundef !19 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i2.i.i = load i64, ptr %i.ar, align 8, !alias.scope !599398, !noundef !19 ; 2 uses
  %i.as = icmp eq i64 %.val1.i2.i.i, 0
  br i1 %i.as, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i", label %.lr.ph.i.i.i3.i.i

.lr.ph.i.i.i3.i.i:                                ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h1ad22147a9e3645dE.exit.i.i", %.lr.ph.i.i.i3.i.i
  %.sroa.0.07.i.i.i4.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i3.i.i ], [ 0, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h1ad22147a9e3645dE.exit.i.i" ] ; 2 uses
  %i.at = getelementptr inbounds nuw [224 x i8], ptr %.val.i1.i.i, i64 %.sroa.0.07.i.i.i4.i.i
  %i.au = add nuw i64 %.sroa.0.07.i.i.i4.i.i, 1   ; 2 uses
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.at), !noalias !599398
  %i.av = icmp eq i64 %i.au, %.val1.i2.i.i
  br i1 %i.av, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i", label %.lr.ph.i.i.i3.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i": ; preds = %.lr.ph.i.i.i3.i.i, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h1ad22147a9e3645dE.exit.i.i"
  %.val2.i5.i.i = load i64, ptr %i.ap, align 8, !range !38, !alias.scope !599398, !noundef !19 ; 2 uses
  %i.aw = icmp eq i64 %.val2.i5.i.i, 0
  br i1 %i.aw, label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..uniterm..UniTermNode$GT$17h82e537ffa50e2c75E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i"
  %i.ax = mul nuw i64 %.val2.i5.i.i, 224
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1.i.i, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !599398
  br label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..uniterm..UniTermNode$GT$17h82e537ffa50e2c75E.exit"

"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..uniterm..UniTermNode$GT$17h82e537ffa50e2c75E.exit": ; preds = %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i", %bb.e, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i", %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..FieldDecl$GT$17h91d63db14c5bc71dE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !88, !noundef !19
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 18)
  switch i64 %i.b, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599401)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !599401, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i64, ptr %i.e, align 8, !alias.scope !599401, !noundef !19 ; 2 uses
  %i.f = icmp eq i64 %.val1.i, 0
  br i1 %i.f, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [224 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i
  %i.h = add nuw i64 %.sroa.0.07.i.i.i, 1         ; 2 uses
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.g), !noalias !599401
  %i.i = icmp eq i64 %i.h, %.val1.i
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i": ; preds = %.lr.ph.i.i.i, %bb.b
  %.val2.i = load i64, ptr %i.c, align 8, !range !38, !alias.scope !599401, !noundef !19 ; 2 uses
  %i.j = icmp eq i64 %.val2.i, 0
  br i1 %i.j, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..Include$GT$$GT$17hf1e0209f7a450a31E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i"
  %i.k = mul nuw i64 %.val2.i, 224
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !599401
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..Include$GT$$GT$17hf1e0209f7a450a31E.exit"

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %0)
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..Include$GT$$GT$17hf1e0209f7a450a31E.exit"

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.l)
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..Include$GT$$GT$17hf1e0209f7a450a31E.exit"

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..Include$GT$$GT$17hf1e0209f7a450a31E.exit": ; preds = %bb.c, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i", %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..LastField$GT$17hf5f01355ce767d5eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !82, !noundef !19 ; 2 uses
  %.not = icmp eq i64 %i.a, 21
  br i1 %.not, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..FieldDecl$GT$17h91d63db14c5bc71dE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599406)
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 18)
  switch i64 %i.b, label %bb.c [
    i64 0, label %bb.e
    i64 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599407)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !599408, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.e, align 8, !alias.scope !599408, !noundef !19 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i, 0
  br i1 %i.f, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [224 x i8], ptr %.val.i.i, i64 %.sroa.0.07.i.i.i.i
  %i.h = add nuw i64 %.sroa.0.07.i.i.i.i, 1       ; 2 uses
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.g), !noalias !599408
  %i.i = icmp eq i64 %i.h, %.val1.i.i
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i": ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.val2.i.i = load i64, ptr %i.c, align 8, !range !38, !alias.scope !599408, !noundef !19 ; 2 uses
  %i.j = icmp eq i64 %.val2.i.i, 0
  br i1 %i.j, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..FieldDecl$GT$17h91d63db14c5bc71dE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i"
  %i.k = mul nuw i64 %.val2.i.i, 224
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !599408
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..FieldDecl$GT$17h91d63db14c5bc71dE.exit"

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %0)
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..FieldDecl$GT$17h91d63db14c5bc71dE.exit"

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.l)
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..FieldDecl$GT$17h91d63db14c5bc71dE.exit"

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..FieldDecl$GT$17h91d63db14c5bc71dE.exit": ; preds = %bb.f, %bb.e, %bb.d, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$17he85ce3dc543a50d9E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !19 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599415)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1f7f24f6245757bfE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i"
  %.sroa.0.08.i.i = phi i64 [ %i.e, %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.08.i.i
  %i.e = add nuw i64 %.sroa.0.08.i.i, 1           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599417)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !599418, !nonnull !19, !noundef !19 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h55c17926cb1cc05eE"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #56
          to label %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i" unwind label %.body.i.i, !noalias !599418, !inline_history !4

.body.i.i:                                        ; preds = %.lr.ph.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #54, !noalias !599418, !inline_history !68
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %.body, label %.lr.ph

"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i": ; preds = %.lr.ph.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #54, !noalias !599418, !inline_history !68
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1f7f24f6245757bfE.exit", label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.j = add i64 %.sroa.0.1.i.i19, 1              ; 2 uses
  %i.k = icmp eq i64 %i.j, %.val1
  br i1 %i.k, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.b
  %.sroa.0.1.i.i19 = phi i64 [ %i.j, %bb.b ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.1.i.i19
  invoke fastcc void @"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE"(ptr noalias noundef readonly align 8 dereferenceable(8) %i.l) #53
          to label %bb.b unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !599415
  unreachable

.body:                                            ; preds = %bb.b, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !38, !noundef !19 ; 2 uses
  %i.n = icmp eq i64 %.val4, 0
  br i1 %i.n, label %"_ZN4core3ptr65drop_in_place$LT$alloc..raw_vec..RawVec$LT$pretty..BoxDoc$GT$$GT$17h796b59f7d7e15fa8E.exit", label %bb.d

bb.d:                                             ; preds = %.body
  %i.o = shl nuw i64 %.val4, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..raw_vec..RawVec$LT$pretty..BoxDoc$GT$$GT$17h796b59f7d7e15fa8E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1f7f24f6245757bfE.exit": ; preds = %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !38, !noundef !19 ; 2 uses
  %i.p = icmp eq i64 %.val2, 0
  br i1 %i.p, label %"_ZN4core3ptr65drop_in_place$LT$alloc..raw_vec..RawVec$LT$pretty..BoxDoc$GT$$GT$17h796b59f7d7e15fa8E.exit6", label %bb.e

bb.e:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1f7f24f6245757bfE.exit"
  %i.q = shl nuw i64 %.val2, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..raw_vec..RawVec$LT$pretty..BoxDoc$GT$$GT$17h796b59f7d7e15fa8E.exit6"

"_ZN4core3ptr65drop_in_place$LT$alloc..raw_vec..RawVec$LT$pretty..BoxDoc$GT$$GT$17h796b59f7d7e15fa8E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1f7f24f6245757bfE.exit", %bb.e
  ret void

"_ZN4core3ptr65drop_in_place$LT$alloc..raw_vec..RawVec$LT$pretty..BoxDoc$GT$$GT$17h796b59f7d7e15fa8E.exit": ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_parser..error..ParseError$GT$17hc14aa7d1c40722b6E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !89, !noundef !19
  switch i32 %i.a, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 8, label %bb.h
    i32 9, label %bb.j
    i32 15, label %bb.l
    i32 18, label %bb.n
    i32 22, label %bb.p
    i32 23, label %bb.r
  ]

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit": ; preds = %bb.u, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit26", %bb.t, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.g, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i10", %bb.d, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i", %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599445)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !599445, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !599445, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599446)
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.g, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i" ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.g = add nuw i64 %.sroa.0.010.i.i.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599447)
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !599448, !noalias !599445 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.h, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !599448, !noalias !599445, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !599449
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = icmp eq i64 %i.g, %.val1.i
  br i1 %i.j, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i", %bb.b
  %.val2.i = load i64, ptr %i.b, align 8, !range !38, !alias.scope !599445, !noundef !19 ; 2 uses
  %i.k = icmp eq i64 %.val2.i, 0
  br i1 %i.k, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i"
  %i.l = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !599445
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit"

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599450)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i3 = load ptr, ptr %i.n, align 8, !alias.scope !599450, !nonnull !19, !noundef !19 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i4 = load i64, ptr %i.o, align 8, !alias.scope !599450, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599451)
  %i.p = icmp eq i64 %.val1.i4, 0
  br i1 %i.p, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i10", label %.lr.ph.i.i.i5

.lr.ph.i.i.i5:                                    ; preds = %bb.e, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i9"
  %.sroa.0.010.i.i.i6 = phi i64 [ %i.r, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i9" ], [ 0, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val.i3, i64 %.sroa.0.010.i.i.i6 ; 2 uses
  %i.r = add nuw i64 %.sroa.0.010.i.i.i6, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599452)
  %.val.i.i.i.i7 = load i64, ptr %i.q, align 8, !alias.scope !599453, !noalias !599450 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i.i7, 0
  br i1 %i.s, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i9", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i5
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i.i.i.i8 = load ptr, ptr %i.t, align 8, !alias.scope !599453, !noalias !599450, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i8, i64 noundef %.val.i.i.i.i7, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !599454
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i9"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i9": ; preds = %bb.f, %.lr.ph.i.i.i5
  %i.u = icmp eq i64 %i.r, %.val1.i4
  br i1 %i.u, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i10", label %.lr.ph.i.i.i5

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i10": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i9", %bb.e
  %.val2.i11 = load i64, ptr %i.m, align 8, !range !38, !alias.scope !599450, !noundef !19 ; 2 uses
  %i.v = icmp eq i64 %.val2.i11, 0
  br i1 %i.v, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i10"
  %i.w = mul nuw i64 %.val2.i11, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !599450
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit"

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599455)
  %.val.i13 = load i64, ptr %i.x, align 8, !alias.scope !599455 ; 2 uses
  %i.y = icmp eq i64 %.val.i13, 0
  br i1 %i.y, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i14 = load ptr, ptr %i.z, align 8, !alias.scope !599455, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i14, i64 noundef %.val.i13, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !599455
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"

bb.j:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ab = icmp eq i64 %.val, 0
  br i1 %i.ab, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.ac, align 8, !nonnull !19, !noundef !19
  %i.ad = mul nuw i64 %.val, 20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 4) #54
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit"

bb.l:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599456)
  %.val.i15 = load i64, ptr %i.ae, align 8, !alias.scope !599456 ; 2 uses
  %i.af = icmp eq i64 %.val.i15, 0
  br i1 %i.af, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i16 = load ptr, ptr %i.ag, align 8, !alias.scope !599456, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i16, i64 noundef %.val.i15, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !599456
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit"

bb.n:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599457)
  %.val.i18 = load i64, ptr %i.ah, align 8, !alias.scope !599457 ; 2 uses
  %i.ai = icmp eq i64 %.val.i18, 0
  br i1 %i.ai, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i19 = load ptr, ptr %i.aj, align 8, !alias.scope !599457, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i19, i64 noundef %.val.i18, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !599457
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit"

bb.p:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599458)
  %.val.i21 = load i64, ptr %i.ak, align 8, !alias.scope !599458 ; 2 uses
  %i.al = icmp eq i64 %.val.i21, 0
  br i1 %i.al, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_3
begin_hunk_4_@"_ZN4core3ptr81drop_in_place$LT$$LP$usize$C$nickel_lang_parser..utils..FieldDecl$C$usize$RP$$GT$17hc99e49bee87d2a4dE":bb.a
  %i.a = load i64, ptr %0, align 8, !range !88, !alias.scope !599945, !noundef !19
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 18)
  switch i64 %i.b, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599946)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !599947, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.e, align 8, !alias.scope !599947, !noundef !19 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i, 0
  br i1 %i.f, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [224 x i8], ptr %.val.i.i, i64 %.sroa.0.07.i.i.i.i
  %i.h = add nuw i64 %.sroa.0.07.i.i.i.i, 1       ; 2 uses
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.g), !noalias !599947
  %i.i = icmp eq i64 %i.h, %.val1.i.i
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i": ; preds = %.lr.ph.i.i.i.i, %bb.b
  %.val2.i.i = load i64, ptr %i.c, align 8, !range !38, !alias.scope !599947, !noundef !19 ; 2 uses
  %i.j = icmp eq i64 %.val2.i.i, 0
  br i1 %i.j, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..FieldDecl$GT$17h91d63db14c5bc71dE.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i"
  %i.k = mul nuw i64 %.val2.i.i, 224
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !599947
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..FieldDecl$GT$17h91d63db14c5bc71dE.exit"

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %0)
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..FieldDecl$GT$17h91d63db14c5bc71dE.exit"

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.l)
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..FieldDecl$GT$17h91d63db14c5bc71dE.exit"

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..FieldDecl$GT$17h91d63db14c5bc71dE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i", %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr81drop_in_place$LT$$LP$usize$C$nickel_lang_parser..utils..LastField$C$usize$RP$$GT$17h878748f4be07fdd7E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599954)
  %i.a = load i64, ptr %0, align 8, !range !82, !alias.scope !599954, !noundef !19 ; 2 uses
  %.not.i = icmp eq i64 %i.a, 21
  br i1 %.not.i, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..LastField$GT$17hf5f01355ce767d5eE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599955)
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 18)
  switch i64 %i.b, label %bb.c [
    i64 0, label %bb.e
    i64 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599956)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !599957, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !599957, !noundef !19 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.f, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [224 x i8], ptr %.val.i.i.i, i64 %.sroa.0.07.i.i.i.i.i
  %i.h = add nuw i64 %.sroa.0.07.i.i.i.i.i, 1     ; 2 uses
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.g), !noalias !599957
  %i.i = icmp eq i64 %i.h, %.val1.i.i.i
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !range !38, !alias.scope !599957, !noundef !19 ; 2 uses
  %i.j = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.j, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..LastField$GT$17hf5f01355ce767d5eE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i"
  %i.k = mul nuw i64 %.val2.i.i.i, 224
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !599957
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..LastField$GT$17hf5f01355ce767d5eE.exit"

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %0)
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..LastField$GT$17hf5f01355ce767d5eE.exit"

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.l)
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..LastField$GT$17hf5f01355ce767d5eE.exit"

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..LastField$GT$17hf5f01355ce767d5eE.exit": ; preds = %bb.a, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i", %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h7491634f49a7d300E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !32, !noundef !19 ; 4 uses
  %i.b = icmp eq i64 %i.a, 18
  br i1 %i.b, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit", label %bb.b

"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i, %bb.e, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599965)
  %i.c = icmp ne i64 %i.a, 12
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.a, 3
  br i1 %i.d, label %bb.c, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit"

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599966)
  switch i64 %i.a, label %bb.d [
    i64 0, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit"
    i64 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !599967, !noundef !19 ; 4 uses
  %i.f = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.g = shl i64 %.val3.i.i.i, 2
  %i.h = icmp slt i64 %.val3.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.h)
  %i.i = and i64 %i.g, -16                        ; 2 uses
  %i.j = add i64 %i.i, 16                         ; 2 uses
  %i.k = add nsw i64 %.val3.i.i.i, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = icmp ult i64 %i.l, 9223372036854775793
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i = phi i64 [ %i.v, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i ], [ %i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i = phi i64 [ %i.y, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i ], [ %i.l, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.sink.i.i.i = load ptr, ptr %.val.sink.in.i.i.i, align 8, !alias.scope !599967, !nonnull !19, !noundef !19
  %i.p = sub nuw nsw i64 -16, %.sink.i.i.i
  %i.q = getelementptr inbounds i8, ptr %.val.sink.i.i.i, i64 %i.p
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %.sink7.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !599967
  br label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit"

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !599967, !noundef !19 ; 4 uses
  %i.s = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.s, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i: ; preds = %bb.e
  %i.t = shl i64 %.val1.i.i.i, 2
  %i.u = icmp slt i64 %.val1.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.u)
  %i.v = and i64 %i.t, -16                        ; 2 uses
  %i.w = add i64 %i.v, 16                         ; 2 uses
  %i.x = add nsw i64 %.val1.i.i.i, 17
  %i.y = add i64 %i.x, %i.w                       ; 4 uses
  %i.z = icmp uge i64 %i.y, %i.w
  %i.aa = icmp ult i64 %i.y, 9223372036854775793
  tail call void @llvm.assume(i1 %i.z)
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17hfb9a299175415cceE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !19 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add i64 %.sroa.0.0.i.i7, 1               ; 4 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$17he85ce3dc543a50d9E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.e)
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
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$17he85ce3dc543a50d9E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.k) #53
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !599970
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !38, !noundef !19 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17h6ce979acc6531e7fE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17h6ce979acc6531e7fE.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit": ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !38, !noundef !19 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17h6ce979acc6531e7fE.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit"
  %i.p = mul nuw i64 %.val2, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17h6ce979acc6531e7fE.exit6"

"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17h6ce979acc6531e7fE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit", %bb.g
  ret void

"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17h6ce979acc6531e7fE.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..error..ParseError$GT$$GT$17h84e885ac0a0fd5e1E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha55b492daa721016E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.sroa.0.07.i.i
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_parser..error..ParseError$GT$17hc14aa7d1c40722b6E"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.d)
  %i.f = icmp eq i64 %i.e, %.val1
  br i1 %i.f, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha55b492daa721016E.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha55b492daa721016E.exit": ; preds = %.lr.ph.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !38, !noundef !19 ; 2 uses
  %i.g = icmp eq i64 %.val2, 0
  br i1 %i.g, label %"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_parser..error..ParseError$GT$$GT$17h28c64aa65306314cE.exit6", label %bb.b

bb.b:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha55b492daa721016E.exit"
  %i.h = mul nuw i64 %.val2, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_parser..error..ParseError$GT$$GT$17h28c64aa65306314cE.exit6"

"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_parser..error..ParseError$GT$$GT$17h28c64aa65306314cE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha55b492daa721016E.exit", %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..iter..sources..once..Once$LT$malachite_q..Rational$GT$$GT$17hd6ecdb104febd0e7E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599981)
  %i.a = load i64, ptr %0, align 8, !range !34, !alias.scope !599982, !noundef !19 ; 3 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775807
  br i1 %i.b, label %"_ZN4core3ptr72drop_in_place$LT$core..option..IntoIter$LT$malachite_q..Rational$GT$$GT$17hb208b614997f3883E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599983)
  %switch.i.i.i.i = icmp sgt i64 %i.a, 0
  br i1 %switch.i.i.i.i, label %bb.c, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i.i.i"

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !599984, !nonnull !19, !noundef !19
  %i.d = shl nuw i64 %i.a, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !599984
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i.i.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i.i.i": ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i.i = load i64, ptr %i.e, align 8, !range !52, !alias.scope !599984, !noundef !19 ; 2 uses
  %switch8.i.i.i.i = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %switch8.i.i.i.i, label %bb.d, label %"_ZN4core3ptr72drop_in_place$LT$core..option..IntoIter$LT$malachite_q..Rational$GT$$GT$17hb208b614997f3883E.exit"

bb.d:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i.i.i"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !599984, !nonnull !19, !noundef !19
  %i.g = shl nuw i64 %.val.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !599984
  br label %"_ZN4core3ptr72drop_in_place$LT$core..option..IntoIter$LT$malachite_q..Rational$GT$$GT$17hb208b614997f3883E.exit"

"_ZN4core3ptr72drop_in_place$LT$core..option..IntoIter$LT$malachite_q..Rational$GT$$GT$17hb208b614997f3883E.exit": ; preds = %bb.a, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i.i.i", %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..lexer..Token$GT$$GT$17h912c193b47489818E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !80, !noundef !19 ; 2 uses
  %i.b = icmp eq i64 %i.a, 169
  br i1 %i.b, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit", label %bb.b

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit": ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599991)
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 166)
  switch i64 %i.c, label %bb.c [
    i64 0, label %bb.e
    i64 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.d, align 8, !range !50, !alias.scope !599991, !noundef !19 ; 3 uses
  %i.e = icmp ne i64 %.val.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.e)
  %or.cond.i.i = icmp slt i64 %.val.i, 1
  br i1 %or.cond.i.i, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !599991, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !599992
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit"

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..lexer..NormalToken$GT$17h2febfc0c2f8078f4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %0)
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit"

bb.f:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load i64, ptr %i.g, align 8, !range !50, !alias.scope !599991, !noundef !19 ; 3 uses
  %i.h = icmp ne i64 %.val2.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.h)
  %or.cond.i4.i = icmp slt i64 %.val2.i, 1
  br i1 %or.cond.i4.i, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.i, align 8, !alias.scope !599991, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !599993
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit"
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr81drop_in_place$LT$nickel_lang_parser..grammar..__parse__ExtendedTerm..__Symbol$GT$17h35911617b0deb48dE"(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(288) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !91, !noundef !19
  switch i8 %i.a, label %bb.b [
    i8 0, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"
    i8 1, label %bb.c
    i8 2, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"
    i8 6, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"
    i8 7, label %bb.g
    i8 8, label %bb.h
    i8 9, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"
    i8 10, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"
    i8 11, label %bb.i
    i8 12, label %bb.j
    i8 13, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"
    i8 14, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"
    i8 15, label %bb.k
    i8 16, label %bb.m
    i8 17, label %bb.n
    i8 18, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"
    i8 19, label %bb.o
    i8 20, label %bb.q
    i8 21, label %bb.r
    i8 22, label %bb.s
    i8 23, label %bb.t
    i8 24, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"
end_hunk_4
begin_hunk_5_@"_ZN4core3ptr90drop_in_place$LT$alloc..vec..drain..Drain$LT$nickel_lang_parser..error..ParseError$GT$$GT$17he71bd1754efcb855E":bb.a
bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !600192, !noundef !19 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0a657a655fb0e77E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !600192, !noundef !19 ; 4 uses
  %i.o = icmp ult i64 %i.n, 128102389400760776
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !600192, !noundef !19 ; 2 uses
  %.not3.i.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8, !noalias !600192
  br label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0a657a655fb0e77E.exit"

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !600192, !nonnull !19, !noundef !19 ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.t, i64 %i.n
  %i.w = mul i64 %i.l, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false), !noalias !600192
  br label %bb.d

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !600192, !nonnull !19, !noundef !19 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.0.07.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.ab, i64 %.sroa.0.07.i.i
  %i.ad = add nuw i64 %.sroa.0.07.i.i, 1          ; 2 uses
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_parser..error..ParseError$GT$17hc14aa7d1c40722b6E"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.ac), !noalias !600192
  %i.ae = icmp eq i64 %i.ad, %i.g
  br i1 %i.ae, label %"_ZN4core3ptr68drop_in_place$LT$$u5b$nickel_lang_parser..error..ParseError$u5d$$GT$17he0045d6b07b79c6fE.exit.i", label %.lr.ph.i.i

"_ZN4core3ptr68drop_in_place$LT$$u5b$nickel_lang_parser..error..ParseError$u5d$$GT$17he0045d6b07b79c6fE.exit.i": ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !600192, !noundef !19 ; 3 uses
  %.not.i.i18.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i18.i, label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0a657a655fb0e77E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr68drop_in_place$LT$$u5b$nickel_lang_parser..error..ParseError$u5d$$GT$17he0045d6b07b79c6fE.exit.i"
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !600192, !noundef !19 ; 4 uses
  %i.aj = icmp ult i64 %i.ai, 128102389400760776
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !600192, !noundef !19 ; 2 uses
  %.not3.i.i19.i = icmp eq i64 %i.al, %i.ai
  br i1 %.not3.i.i19.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.am = add i64 %i.ai, %i.ag
  store i64 %i.am, ptr %i.ah, align 8, !noalias !600192
  br label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0a657a655fb0e77E.exit"

bb.i:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.x, align 8, !noalias !600192, !nonnull !19, !noundef !19 ; 2 uses
  %i.ao = getelementptr inbounds nuw [72 x i8], ptr %i.an, i64 %i.al
  %i.ap = getelementptr inbounds nuw [72 x i8], ptr %i.an, i64 %i.ai
  %i.aq = mul i64 %i.ag, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.ao, i64 %i.aq, i1 false), !noalias !600192
  br label %bb.h

"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0a657a655fb0e77E.exit": ; preds = %bb.b, %bb.d, %"_ZN4core3ptr68drop_in_place$LT$$u5b$nickel_lang_parser..error..ParseError$u5d$$GT$17he0045d6b07b79c6fE.exit.i", %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$$LP$usize$C$nickel_lang_parser..ast..pattern..FieldPattern$C$usize$RP$$GT$17h3de62b9d04ed001dE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(288) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600207)
  %i.a = load i64, ptr %0, align 8, !range !32, !alias.scope !600208, !noundef !19 ; 4 uses
  %i.b = icmp eq i64 %i.a, 18
  br i1 %i.b, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600210)
  %i.c = icmp ne i64 %i.a, 12
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.a, 3
  br i1 %i.d, label %bb.c, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit"

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600211)
  switch i64 %i.a, label %bb.d [
    i64 0, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit"
    i64 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !600212, !noundef !19 ; 4 uses
  %i.f = icmp eq i64 %.val3.i.i.i.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.g = shl i64 %.val3.i.i.i.i.i.i, 2
  %i.h = icmp slt i64 %.val3.i.i.i.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.h)
  %i.i = and i64 %i.g, -16                        ; 2 uses
  %i.j = add i64 %i.i, 16                         ; 2 uses
  %i.k = add nsw i64 %.val3.i.i.i.i.i.i, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = icmp ult i64 %i.l, 9223372036854775793
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi i64 [ %i.v, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i ], [ %i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i.i.i.i = phi i64 [ %i.y, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i ], [ %i.l, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.sink.i.i.i.i.i.i = load ptr, ptr %.val.sink.in.i.i.i.i.i.i, align 8, !alias.scope !600212, !nonnull !19, !noundef !19
  %i.p = sub nuw nsw i64 -16, %.sink.i.i.i.i.i.i
  %i.q = getelementptr inbounds i8, ptr %.val.sink.i.i.i.i.i.i, i64 %i.p
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %.sink7.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !600212
  br label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit"

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !600212, !noundef !19 ; 4 uses
  %i.s = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.s, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i: ; preds = %bb.e
  %i.t = shl i64 %.val1.i.i.i.i.i.i, 2
  %i.u = icmp slt i64 %.val1.i.i.i.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.u)
  %i.v = and i64 %i.t, -16                        ; 2 uses
  %i.w = add i64 %i.v, 16                         ; 2 uses
  %i.x = add nsw i64 %.val1.i.i.i.i.i.i, 17
  %i.y = add i64 %i.x, %i.w                       ; 4 uses
  %i.z = icmp uge i64 %i.y, %i.w
  %i.aa = icmp ult i64 %i.y, 9223372036854775793
  tail call void @llvm.assume(i1 %i.z)
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i"

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i", %bb.e, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..determinize..state..State$GT$$GT$17hab0780cd7fc9ccd1E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !19 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ae360a4af67f348E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit.i.i"
  %.sroa.0.09.i.i = phi i64 [ %i.e, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.09.i.i, 1           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600229)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !600230, !nonnull !19, !noundef !19
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !600231
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit.i.i" unwind label %bb.c

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ae360a4af67f348E.exit", label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit8.i.i"
  %.sroa.0.110.i.i = phi i64 [ %i.m, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit8.i.i" ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.m = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600234)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !600235, !nonnull !19, !noundef !19
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !600236
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit8.i.i"

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit8.i.i" unwind label %bb.e

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit8.i.i": ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.m, %.val1
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

.body:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit8.i.i", %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !38, !noundef !19 ; 2 uses
  %i.s = icmp eq i64 %.val4, 0
  br i1 %i.s, label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h999dcbd5e873d2ceE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.t = shl nuw i64 %.val4, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h999dcbd5e873d2ceE.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ae360a4af67f348E.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !38, !noundef !19 ; 2 uses
  %i.u = icmp eq i64 %.val2, 0
  br i1 %i.u, label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h999dcbd5e873d2ceE.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ae360a4af67f348E.exit"
  %i.v = shl nuw i64 %.val2, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h999dcbd5e873d2ceE.exit6"

"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h999dcbd5e873d2ceE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ae360a4af67f348E.exit", %bb.g
  ret void

"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h999dcbd5e873d2ceE.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !28, !noundef !19
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600239)
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !600239 ; 2 uses
  %i.d = icmp eq i64 %.val.i, 0
  br i1 %i.d, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !600239, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !600239
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit": ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$17h7f3cd6f12e3d0a3aE"(ptr %.0.val, i8 %.8.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5cb375b162e92678E.exit", !prof !20

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.0.val)
  br label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5cb375b162e92678E.exit"

"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5cb375b162e92678E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr94drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h057cfc0b795e26f2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600250)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !600250, !nonnull !19, !noundef !19 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !600250, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600251)
  %i.h = icmp eq ptr %.val2.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr65drop_in_place$LT$$u5b$nickel_lang_parser..ast..typ..Type$u5d$$GT$17h79c16d270918dc26E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.j, %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.07.i.i ; 4 uses
  %i.j = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600253)
  %i.k = load i64, ptr %i.i, align 8, !range !23, !alias.scope !600254, !noalias !600250, !noundef !19 ; 3 uses
  %i.l = icmp ne i64 %i.k, 12
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp samesign ult i64 %i.k, 3
  br i1 %i.m, label %bb.b, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600255)
  switch i64 %i.k, label %bb.c [
    i64 0, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i"
    i64 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val3.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !600256, !noalias !600250, !noundef !19 ; 4 uses
  %i.o = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.o, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = shl i64 %.val3.i.i.i.i.i, 2
  %i.q = icmp slt i64 %.val3.i.i.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.q)
  %i.r = and i64 %i.p, -16                        ; 2 uses
  %i.s = add i64 %i.r, 16                         ; 2 uses
  %i.t = add nsw i64 %.val3.i.i.i.i.i, 17
  %i.u = add i64 %i.t, %i.s                       ; 4 uses
  %i.v = icmp uge i64 %i.u, %i.s
  %i.w = icmp ult i64 %i.u, 9223372036854775793
  tail call void @llvm.assume(i1 %i.v)
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i = phi i64 [ %i.ae, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i ], [ %i.r, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i.i.i = phi i64 [ %i.ah, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i ], [ %i.u, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val.sink.i.i.i.i.i = load ptr, ptr %.val.sink.in.i.i.i.i.i, align 8, !alias.scope !600256, !noalias !600250, !nonnull !19, !noundef !19
  %i.y = sub nuw nsw i64 -16, %.sink.i.i.i.i.i
  %i.z = getelementptr inbounds i8, ptr %.val.sink.i.i.i.i.i, i64 %i.y
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %.sink7.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !600257
  br label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i"

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !600256, !noalias !600250, !noundef !19 ; 4 uses
  %i.ab = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.ab, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i: ; preds = %bb.d
  %i.ac = shl i64 %.val1.i.i.i.i.i, 2
  %i.ad = icmp slt i64 %.val1.i.i.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = and i64 %i.ac, -16                      ; 2 uses
  %i.af = add i64 %i.ae, 16                       ; 2 uses
  %i.ag = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.ah = add i64 %i.ag, %i.af                    ; 4 uses
  %i.ai = icmp uge i64 %i.ah, %i.af
  %i.aj = icmp ult i64 %i.ah, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ai)
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i"

"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i, %bb.d, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %.lr.ph.i.i
  %i.al = icmp eq i64 %i.j, %i.g
  br i1 %i.al, label %"_ZN4core3ptr65drop_in_place$LT$$u5b$nickel_lang_parser..ast..typ..Type$u5d$$GT$17h79c16d270918dc26E.exit.i", label %.lr.ph.i.i

end_hunk_5
begin_hunk_6_@"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h70f199374a6624afE":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600691)
  %i.af = load i64, ptr %i.a, align 8, !range !38, !alias.scope !600692, !noundef !19
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = icmp ugt i64 %gepdiff71, %i.ag
  br i1 %i.ah, label %bb.m, label %bb.n, !prof !20

bb.m:                                             ; preds = %.critedge23
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ae, i64 noundef %gepdiff71, i64 noundef 1, i64 noundef 1)
          to label %.noexc31 unwind label %bb.f

.noexc31:                                         ; preds = %bb.m
  %.pre.i.i30 = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !600693
  br label %bb.n

bb.n:                                             ; preds = %.noexc31, %.critedge23
  %i.ai = phi i64 [ %i.ae, %.critedge23 ], [ %.pre.i.i30, %.noexc31 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.082
  %i.ak = icmp sgt i64 %i.ai, -1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !600693, !nonnull !19, !noundef !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.aj, i64 %gepdiff71, i1 false), !noalias !600693
  %i.an = add nuw i64 %i.ai, %gepdiff71
  store i64 %i.an, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !600693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.o:                                             ; preds = %.noexc29, %bb.k
  %i.ao = phi ptr [ %i.h, %bb.k ], [ %.pre, %.noexc29 ] ; 2 uses
  %i.ap = phi i64 [ %i.ab, %bb.k ], [ %.pre118, %.noexc29 ]
  %i.aq = phi i64 [ %i.i, %bb.k ], [ %.pre.i.i, %.noexc29 ] ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %i.aa, i64 %gepdiff, i1 false), !noalias !600688
  %i.at = add nuw i64 %i.aq, %gepdiff             ; 4 uses
  store i64 %i.at, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !600688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600695)
  %i.au = sub i64 %i.ap, %i.at
  %i.av = icmp ult i64 %i.au, 2
  br i1 %i.av, label %bb.p, label %bb.q, !prof !20

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.at, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.p
  %.pre.i.i33 = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !600696
  %.pre119 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !600696
  br label %bb.q

bb.q:                                             ; preds = %.noexc34, %bb.o
  %i.aw = phi ptr [ %i.ao, %bb.o ], [ %.pre119, %.noexc34 ] ; 2 uses
  %i.ax = phi i64 [ %i.at, %bb.o ], [ %.pre.i.i33, %.noexc34 ] ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  %i.ba = load i16, ptr %4, align 1, !noalias !600696
  store i16 %i.ba, ptr %i.az, align 1, !noalias !600696
  %i.bb = add nuw i64 %i.ax, 2                    ; 3 uses
  store i64 %i.bb, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !600696
  br i1 %.not21.i, label %.critedge23, label %.lr.ph.split.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit": ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hfd249acd81853ca9E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4, i64 noundef range(i64 1, 4) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 21 uses
  %.not18 = icmp samesign ult i64 %5, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %.not18, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %2, 0
  br i1 %i.c, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !73

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.b
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !600746
  %i.e = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #54, !noalias !600746 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10218) #52
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit": ; preds = %bb.a, %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.06.0134137 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %2, %bb.c ], [ 0, %bb.a ]
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.e, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ] ; 5 uses
  store i64 %.sroa.06.0134137, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 15 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef 2)
          to label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit" unwind label %bb.f

.loopexit:                                        ; preds = %.loopexit.split.loopexit, %.loopexit.split.loopexit.split-lp, %.loopexit.split-lp, %.loopexit.split.us, %bb.f
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit133, %.loopexit.split.loopexit ], [ %lpad.loopexit.split-lp134, %.loopexit.split.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !600747)
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !600747 ; 2 uses
  %i.g = icmp eq i64 %.val.i, 0
  br i1 %i.g, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", label %bb.e

bb.e:                                             ; preds = %.loopexit
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !600747, !nonnull !19, !noundef !19
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !600747
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"

bb.f:                                             ; preds = %bb.bh, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit"
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit"
  %.sroa.0114.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4115.0.copyload = load i64, ptr %.sroa.4115.0..sroa_idx, align 8 ; 25 uses
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6117.0.copyload = load i64, ptr %.sroa.6117.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7118.0.copyload = load i64, ptr %.sroa.7118.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.8119.0.copyload = load i64, ptr %.sroa.8119.0..sroa_idx, align 8
  %.sroa.10121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.10121.0.copyload = load i64, ptr %.sroa.10121.0..sroa_idx, align 8
  %.sroa.12123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.12123.0.copyload = load ptr, ptr %.sroa.12123.0..sroa_idx, align 8 ; 17 uses
  %.sroa.13124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.13124.0.copyload = load i64, ptr %.sroa.13124.0..sroa_idx, align 8 ; 42 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = trunc nuw i64 %.sroa.0114.0.copyload to i1
  %i.j = add i64 %.sroa.15.0.copyload, -1         ; 3 uses
  br i1 %i.i, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us", label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12123.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.k = sub i64 %.sroa.15.0.copyload, %.sroa.6117.0.copyload
  %umax50.i.us = call i64 @llvm.umax.i64(i64 %.sroa.4115.0.copyload, i64 %.sroa.15.0.copyload)
  %i.l = add i64 %.sroa.4115.0.copyload, -1
  %.first_iter = icmp ult i64 %i.l, %.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.4115.0.copyload
  %exitcond.not.i.us60.not = icmp ult i64 %.sroa.4115.0.copyload, %.sroa.15.0.copyload
  %invariant.op182 = sub i64 1, %.sroa.4115.0.copyload
  %.not147.us63 = icmp eq i64 %.sroa.4115.0.copyload, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.ab, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us"
  %i.m = phi ptr [ %.sroa.10.0.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %i.co, %bb.ab ] ; 5 uses
  %i.n = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %i.cq, %bb.ab ] ; 7 uses
  %.sroa.3079.0.us = phi i64 [ %.sroa.10121.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %.sroa.3079.1.us, %bb.ab ] ; 2 uses
  %.sroa.18.0.us = phi i64 [ %.sroa.8119.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %.sroa.11127.1.us, %bb.ab ] ; 3 uses
  %.sroa.08.0.us = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %.sroa.11127.1.us, %bb.ab ] ; 6 uses
  %i.o = icmp eq i64 %.sroa.3079.0.us, -1
  %i.p = add i64 %.sroa.18.0.us, %i.j             ; 3 uses
  %i.q = icmp ult i64 %i.p, %.sroa.13124.0.copyload ; 2 uses
  br i1 %i.o, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !600748)
  call void @llvm.experimental.noalias.scope.decl(metadata !600749)
  br i1 %i.q, label %.lr.ph.i51.us, label %.critedge25

.lr.ph.i51.us:                                    ; preds = %bb.h, %.sink.split.i.us
  %i.r = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.3079.0.us, %bb.h ] ; 3 uses
  %i.s = phi i64 [ %i.av, %.sink.split.i.us ], [ %i.p, %bb.h ]
  %i.t = phi i64 [ %.ph72.i.us, %.sink.split.i.us ], [ %.sroa.18.0.us, %bb.h ] ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !600748, !noalias !600750, !noundef !19
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i64
  %i.y = shl nuw i64 1, %i.x
  %i.z = and i64 %i.y, %.sroa.7118.0.copyload
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.p, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i51.us
  %.sroa.0.0.i.i53.us = call i64 @llvm.umax.i64(i64 %i.r, i64 %.sroa.4115.0.copyload) ; 4 uses
  %umax50.i54.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i53.us, i64 %.sroa.15.0.copyload)
  %exitcond.not.i56.us55.not = icmp ult i64 %.sroa.0.0.i.i53.us, %.sroa.15.0.copyload
  br i1 %exitcond.not.i56.us55.not, label %.lr.ph, label %.preheader149.us.preheader

bb.j:                                             ; preds = %bb.k
  %i.ab = add i64 %.sroa.02.0.i55.us56, 1         ; 2 uses
  %exitcond.not.i56.us = icmp eq i64 %i.ab, %umax50.i54.us
  br i1 %exitcond.not.i56.us, label %.preheader149.us.preheader, label %.lr.ph

.preheader149.us.preheader:                       ; preds = %bb.j, %bb.i
  %i.ac = icmp ult i64 %i.r, %.sroa.4115.0.copyload
  br i1 %i.ac, label %.lr.ph58, label %.loopexit.i.us

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.sroa.02.0.i55.us56 = phi i64 [ %i.ab, %bb.j ], [ %.sroa.0.0.i.i53.us, %bb.i ] ; 4 uses
  %i.ad = add i64 %.sroa.02.0.i55.us56, %i.t      ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %.sroa.13124.0.copyload
  br i1 %i.ae, label %bb.k, label %.split.us

bb.k:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i55.us56
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !600749, !noalias !600751, !noundef !19
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.ad
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !600748, !noalias !600750, !noundef !19
  %.not22.i58.us = icmp eq i8 %i.ag, %i.ai
  br i1 %.not22.i58.us, label %bb.j, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.reass.reass = add i64 %i.t, %invariant.op
  %i.aj = add i64 %.reass.reass, %.sroa.02.0.i55.us56
  br label %.sink.split.i.us

.preheader149.us:                                 ; preds = %bb.n
  %i.ak = icmp ult i64 %i.r, %i.al
  br i1 %i.ak, label %.lr.ph58, label %.loopexit.i.us

.lr.ph58:                                         ; preds = %.preheader149.us.preheader, %.preheader149.us
  %.sroa.57.0.i59.us57 = phi i64 [ %i.al, %.preheader149.us ], [ %.sroa.4115.0.copyload, %.preheader149.us.preheader ]
  %i.al = add i64 %.sroa.57.0.i59.us57, -1        ; 6 uses
  %i.am = icmp ult i64 %i.al, %.sroa.15.0.copyload
  br i1 %i.am, label %bb.m, label %.split217.us.invoke

bb.m:                                             ; preds = %.lr.ph58
  %i.an = add i64 %i.al, %i.t                     ; 3 uses
  %i.ao = icmp ult i64 %i.an, %.sroa.13124.0.copyload
  br i1 %i.ao, label %bb.n, label %.split217.us.invoke

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.al
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !600749, !noalias !600751, !noundef !19
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.an
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !600748, !noalias !600750, !noundef !19
  %.not.i60.us = icmp eq i8 %i.aq, %i.as
  br i1 %.not.i60.us, label %.preheader149.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = add i64 %i.t, %.sroa.6117.0.copyload
  br label %.sink.split.i.us

bb.p:                                             ; preds = %.lr.ph.i51.us
  %i.au = add i64 %i.t, %.sroa.15.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.p, %bb.o, %bb.l
  %.sink.i.us = phi i64 [ %i.k, %bb.o ], [ 0, %bb.l ], [ 0, %bb.p ]
  %.ph72.i.us = phi i64 [ %i.at, %bb.o ], [ %i.aj, %bb.l ], [ %i.au, %bb.p ] ; 2 uses
  %i.av = add i64 %.ph72.i.us, %i.j               ; 2 uses
  %i.aw = icmp ult i64 %i.av, %.sroa.13124.0.copyload
  br i1 %i.aw, label %.lr.ph.i51.us, label %.critedge25

bb.q:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !600752)
  call void @llvm.experimental.noalias.scope.decl(metadata !600753)
  br i1 %i.q, label %.lr.ph.i44.us, label %.critedge25

.lr.ph.i44.us:                                    ; preds = %bb.q, %bb.x
  %i.ax = phi i64 [ %i.by, %bb.x ], [ %i.p, %bb.q ]
  %i.ay = phi i64 [ %i.bx, %bb.x ], [ %.sroa.18.0.us, %bb.q ] ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !600752, !noalias !600754, !noundef !19
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %.sroa.7118.0.copyload
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.w, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i44.us
  br i1 %exitcond.not.i.us60.not, label %.lr.ph62, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.r
  %i.bg = add i64 %.sroa.02.0.i.us61, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bg, %umax50.i.us
  br i1 %exitcond.not.i.us, label %.preheader.us.preheader, label %.lr.ph62

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not147.us63, label %.loopexit.i.us, label %.lr.ph65

.lr.ph62:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i.us61 = phi i64 [ %i.bg, %.preheader ], [ %.sroa.4115.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.bh = add i64 %.sroa.02.0.i.us61, %i.ay       ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %.sroa.13124.0.copyload
  br i1 %i.bi, label %bb.r, label %.split213.us

bb.r:                                             ; preds = %.lr.ph62
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i.us61
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !600753, !noalias !600755, !noundef !19
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.bh
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !600752, !noalias !600754, !noundef !19
  %.not22.i.us = icmp eq i8 %i.bk, %i.bm
  br i1 %.not22.i.us, label %.preheader, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.reass373.reass = add i64 %i.ay, %invariant.op182
  %i.bn = add i64 %.reass373.reass, %.sroa.02.0.i.us61
  br label %bb.x

.preheader.us:                                    ; preds = %bb.u
  %.not147.us = icmp eq i64 %i.bo, 0
  br i1 %.not147.us, label %.loopexit.i.us, label %.lr.ph65

.lr.ph65:                                         ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.57.0.i.us64 = phi i64 [ %i.bo, %.preheader.us ], [ %.sroa.4115.0.copyload, %.preheader.us.preheader ]
  %i.bo = add i64 %.sroa.57.0.i.us64, -1          ; 5 uses
  br i1 %.first_iter, label %bb.t, label %.split217.us.invoke

bb.t:                                             ; preds = %.lr.ph65
  %i.bp = add i64 %i.bo, %i.ay                    ; 3 uses
  %i.bq = icmp ult i64 %i.bp, %.sroa.13124.0.copyload
  br i1 %i.bq, label %bb.u, label %.split217.us.invoke

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.bo
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !600753, !noalias !600755, !noundef !19
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.bp
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !600752, !noalias !600754, !noundef !19
  %.not.i.us = icmp eq i8 %i.bs, %i.bu
  br i1 %.not.i.us, label %.preheader.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = add i64 %.sroa.6117.0.copyload, %i.ay
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.i44.us
  %i.bw = add i64 %i.ay, %.sroa.15.0.copyload
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.s
  %i.bx = phi i64 [ %i.bn, %bb.s ], [ %i.bv, %bb.v ], [ %i.bw, %bb.w ] ; 2 uses
  %i.by = add i64 %i.bx, %i.j                     ; 2 uses
  %i.bz = icmp ult i64 %i.by, %.sroa.13124.0.copyload
  br i1 %i.bz, label %.lr.ph.i44.us, label %.critedge25

.loopexit.i.us:                                   ; preds = %.preheader149.us.preheader, %.preheader.us.preheader, %.preheader149.us, %.preheader.us
  %.sroa.7126.1.us = phi i64 [ %i.ay, %.preheader.us ], [ %i.t, %.preheader149.us ], [ %i.ay, %.preheader.us.preheader ], [ %i.t, %.preheader149.us.preheader ] ; 2 uses
  %.sroa.3079.1.us = phi i64 [ -1, %.preheader.us ], [ 0, %.preheader149.us ], [ -1, %.preheader.us.preheader ], [ 0, %.preheader149.us.preheader ]
  %.sroa.11127.1.us = add i64 %.sroa.7126.1.us, %.sroa.15.0.copyload ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.0.us
  call void @llvm.experimental.noalias.scope.decl(metadata !600756)
  %gepdiff.us = sub nuw nsw i64 %.sroa.7126.1.us, %.sroa.08.0.us ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !600757)
  %i.cb = load i64, ptr %i.b, align 8, !range !38, !alias.scope !600758, !noundef !19
  %i.cc = sub i64 %i.cb, %i.n
  %i.cd = icmp ugt i64 %gepdiff.us, %i.cc
  br i1 %i.cd, label %bb.y, label %bb.z, !prof !20

bb.y:                                             ; preds = %.loopexit.i.us
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.n, i64 noundef %gepdiff.us, i64 noundef 1, i64 noundef 1)
          to label %.noexc35.us unwind label %.loopexit.split.us

.noexc35.us:                                      ; preds = %bb.y
  %.pre.i.i.us = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !600759
  %.pre281 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !600759
  br label %bb.z

bb.z:                                             ; preds = %.noexc35.us, %.loopexit.i.us
  %i.ce = phi ptr [ %i.m, %.loopexit.i.us ], [ %.pre281, %.noexc35.us ]
  %i.cf = phi i64 [ %i.n, %.loopexit.i.us ], [ %.pre.i.i.us, %.noexc35.us ] ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, -1
  call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr nonnull readonly align 1 %i.ca, i64 %gepdiff.us, i1 false), !noalias !600759
  %i.ci = add i64 %i.cf, %gepdiff.us              ; 4 uses
  store i64 %i.ci, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !600759
  call void @llvm.experimental.noalias.scope.decl(metadata !600760)
  call void @llvm.experimental.noalias.scope.decl(metadata !600761)
  %i.cj = load i64, ptr %i.b, align 8, !range !38, !alias.scope !600762, !noundef !19
  %i.ck = sub i64 %i.cj, %i.ci
  %i.cl = icmp ugt i64 %5, %i.ck
  br i1 %i.cl, label %bb.aa, label %bb.ab, !prof !20

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ci, i64 noundef %5, i64 noundef 1, i64 noundef 1)
          to label %.noexc40.us unwind label %.loopexit.split.us

.noexc40.us:                                      ; preds = %bb.aa
  %.pre.i.i39.us = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !600763
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc40.us, %bb.z
  %i.cm = phi i64 [ %i.ci, %bb.z ], [ %.pre.i.i39.us, %.noexc40.us ] ; 3 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  call void @llvm.assume(i1 %i.cn)
  %i.co = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !600763, !nonnull !19, !noundef !19 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cp, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 %5, i1 false), !noalias !600763
  %i.cq = add nuw i64 %i.cm, %5                   ; 2 uses
  store i64 %i.cq, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !600763
  br label %bb.g

.loopexit.split.us:                               ; preds = %bb.aa, %bb.y
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit"
  %i.cr = and i64 %.sroa.6117.0.copyload, 65536
  %.not = icmp eq i64 %i.cr, 0
  br i1 %.not, label %.lr.ph.i.lr.ph, label %.critedge25

.lr.ph.i.lr.ph:                                   ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12123.0.copyload) ]
  %i.cs = trunc i64 %.sroa.6117.0.copyload to i1  ; 2 uses
  %i.ct = icmp eq i64 %.sroa.4115.0.copyload, 0
  br i1 %i.ct, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.lr.ph
  %.not.i.i.i.peel.peel = icmp ult i64 %.sroa.4115.0.copyload, %.sroa.13124.0.copyload
  br i1 %.not.i.i.i.peel.peel, label %bb.ad, label %.split.i.i.i.peel.peel

.split.i.i.i.peel.peel:                           ; preds = %bb.ac
  %i.cu = icmp eq i64 %.sroa.4115.0.copyload, %.sroa.13124.0.copyload
  br i1 %i.cu, label %bb.ae, label %.loopexit277

bb.ad:                                            ; preds = %bb.ac
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %.sroa.4115.0.copyload
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !600764, !noalias !600765, !noundef !19
  %i.cx = icmp sgt i8 %i.cw, -65
  br i1 %i.cx, label %bb.ae, label %.loopexit277

bb.ae:                                            ; preds = %bb.ad, %.split.i.i.i.peel.peel, %.lr.ph.i.lr.ph
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %.sroa.4115.0.copyload ; 4 uses
  %i.cz = icmp samesign eq i64 %.sroa.4115.0.copyload, %.sroa.13124.0.copyload
  br i1 %i.cz, label %.loopexit278.peel, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = load i8, ptr %i.cy, align 1, !noalias !600766, !noundef !19 ; 5 uses
  %i.db = icmp sgt i8 %i.da, -1
  br i1 %i.db, label %bb.ag, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel.peel": ; preds = %bb.af
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.dd = and i8 %i.da, 31
  %i.de = zext nneg i8 %i.dd to i32               ; 3 uses
  %i.df = add nuw nsw i64 %.sroa.4115.0.copyload, 1
  %i.dg = icmp samesign ne i64 %i.df, %.sroa.13124.0.copyload
  call void @llvm.assume(i1 %i.dg)
  %i.dh = load i8, ptr %i.dc, align 1, !noalias !600766, !noundef !19
  %i.di = shl nuw nsw i32 %i.de, 6
  %i.dj = and i8 %i.dh, 63
  %i.dk = zext nneg i8 %i.dj to i32               ; 2 uses
  %i.dl = or disjoint i32 %i.di, %i.dk
  %i.dm = icmp samesign ugt i8 %i.da, -33
  br i1 %i.dm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel.peel", label %bb.ah

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel.peel"
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.do = add nuw nsw i64 %.sroa.4115.0.copyload, 2
  %i.dp = icmp samesign ne i64 %i.do, %.sroa.13124.0.copyload
  call void @llvm.assume(i1 %i.dp)
  %i.dq = load i8, ptr %i.dn, align 1, !noalias !600766, !noundef !19
  %i.dr = shl nuw nsw i32 %i.dk, 6
  %i.ds = and i8 %i.dq, 63
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dr, %i.dt            ; 2 uses
  %i.dv = shl nuw nsw i32 %i.de, 12
  %i.dw = or disjoint i32 %i.du, %i.dv
  %i.dx = icmp samesign ugt i8 %i.da, -17
  br i1 %i.dx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i.peel.peel", label %bb.ah

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel.peel"
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cy, i64 3
  %i.dz = add nuw nsw i64 %.sroa.4115.0.copyload, 3
  %i.ea = icmp samesign ne i64 %i.dz, %.sroa.13124.0.copyload
  call void @llvm.assume(i1 %i.ea)
  %i.eb = load i8, ptr %i.dy, align 1, !noalias !600766, !noundef !19
  %i.ec = shl nuw nsw i32 %i.de, 18
  %i.ed = and i32 %i.ec, 1835008
  %i.ee = shl nuw nsw i32 %i.du, 6
  %i.ef = and i8 %i.eb, 63
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = or disjoint i32 %i.ee, %i.eg
end_hunk_6
begin_hunk_7_@_ZN6pretty6render4best17hbf081fd1a04c1842E:bb.a
  %.val1.i.i136.i = load ptr, ptr %.sroa.459.0..sroa_idx.i, align 8, !alias.scope !602364, !noalias !602313, !nonnull !19, !noundef !19
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i136.i, i64 noundef %.val.i.i135.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !602364
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i137.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i137.i": ; preds = %bb.ce, %bb.cd
  %.val.i138.i = load i64, ptr %i.p, align 8, !alias.scope !602362, !noalias !602313 ; 2 uses
  %i.ji = icmp eq i64 %.val.i138.i, 0
  br i1 %i.ji, label %"_ZN4core3ptr64drop_in_place$LT$pretty..render..BufferWrite$LT$$LP$$RP$$GT$$GT$17ha40406ca2318f2cbE.exit140.i", label %bb.cf

bb.cf:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i137.i"
  %.val1.i139.i = load ptr, ptr %.sroa.453.0..sroa_idx.i, align 8, !alias.scope !602362, !noalias !602313, !nonnull !19, !noundef !19
  %i.jj = shl nuw i64 %.val.i138.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i139.i, i64 noundef %i.jj, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !602362
  br label %"_ZN4core3ptr64drop_in_place$LT$pretty..render..BufferWrite$LT$$LP$$RP$$GT$$GT$17ha40406ca2318f2cbE.exit140.i"

"_ZN4core3ptr64drop_in_place$LT$pretty..render..BufferWrite$LT$$LP$$RP$$GT$$GT$17ha40406ca2318f2cbE.exit140.i": ; preds = %bb.cf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i137.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !602313
  br label %.backedge.i.backedge

bb.cg:                                            ; preds = %bb.aa
  store i64 0, ptr %i.dc, align 8, !noalias !602348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !602313
  %i.jk = invoke fastcc noundef align 8 dereferenceable(8) ptr @"_ZN11typed_arena14Arena$LT$T$GT$15alloc_slow_path17h1c7ae19edb52e23aE"(ptr noundef nonnull align 8 %i.dc, ptr noalias noundef nonnull align 8 %i.dp)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc37:                                         ; preds = %bb.cg, %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit.i"
  %.sroa.061.0.i = phi ptr [ %i.ec, %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit.i" ], [ %i.jk, %bb.cg ]
  %.sroa.061.0.val.i = load ptr, ptr %.sroa.061.0.i, align 8, !nonnull !19, !align !24, !noundef !19
  br label %.backedge.i.backedge

bb.ch:                                            ; preds = %bb.ag
  store i64 0, ptr %i.ef, align 8, !noalias !602353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602313
  %i.jl = invoke fastcc noundef align 8 dereferenceable(8) ptr @"_ZN11typed_arena14Arena$LT$T$GT$15alloc_slow_path17h1c7ae19edb52e23aE"(ptr noundef nonnull align 8 %i.ef, ptr noalias noundef nonnull align 8 %i.er)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc38:                                         ; preds = %bb.ch, %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit119.i"
  %.sroa.066.0.i = phi ptr [ %i.fe, %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit119.i" ], [ %i.jl, %bb.ch ]
  %.sroa.066.0.val.i = load ptr, ptr %.sroa.066.0.i, align 8, !nonnull !19, !align !24, !noundef !19
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %"_ZN6pretty6render17Best$LT$T$C$A$GT$4best28_$u7b$$u7b$closure$u7d$$u7d$17hbc030239500e4c14E.exit.i5.i.i", %.noexc38, %.noexc37, %"_ZN4core3ptr64drop_in_place$LT$pretty..render..BufferWrite$LT$$LP$$RP$$GT$$GT$17ha40406ca2318f2cbE.exit140.i", %_ZN6pretty6render13write_newline17hfd4ba65a6652f133E.exit.i, %bb.ap, %bb.al, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9313780bff20e686E.exit.i", %bb.o, %"_ZN6pretty6render17Best$LT$T$C$A$GT$4best28_$u7b$$u7b$closure$u7d$$u7d$17hbc030239500e4c14E.exit.i.i"
  %.sroa.071.0.i.be = phi i64 [ %.sroa.071.0.i, %.noexc38 ], [ %.sroa.071.0.i, %bb.al ], [ %.sroa.071.0.i, %bb.o ], [ %.sroa.013.0.i, %bb.ap ], [ %.sroa.047.0.copyload.i, %_ZN6pretty6render13write_newline17hfd4ba65a6652f133E.exit.i ], [ %.sroa.071.0.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9313780bff20e686E.exit.i" ], [ %.sroa.071.0.i, %"_ZN4core3ptr64drop_in_place$LT$pretty..render..BufferWrite$LT$$LP$$RP$$GT$$GT$17ha40406ca2318f2cbE.exit140.i" ], [ %.sroa.071.0.i, %.noexc37 ], [ %.sroa.071.0.i, %"_ZN6pretty6render17Best$LT$T$C$A$GT$4best28_$u7b$$u7b$closure$u7d$$u7d$17hbc030239500e4c14E.exit.i.i" ], [ %.sroa.071.0.i, %"_ZN6pretty6render17Best$LT$T$C$A$GT$4best28_$u7b$$u7b$closure$u7d$$u7d$17hbc030239500e4c14E.exit.i5.i.i" ]
  %.sroa.072.0.i.be = phi i8 [ %.sroa.072.0.i, %.noexc38 ], [ %.sroa.072.1.i, %bb.al ], [ %.sroa.072.0.i, %bb.o ], [ %.sroa.072.0.i, %bb.ap ], [ %.sroa.448.0.copyload.i, %_ZN6pretty6render13write_newline17hfd4ba65a6652f133E.exit.i ], [ %.sroa.072.0.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9313780bff20e686E.exit.i" ], [ %.sroa.072.0.i, %"_ZN4core3ptr64drop_in_place$LT$pretty..render..BufferWrite$LT$$LP$$RP$$GT$$GT$17ha40406ca2318f2cbE.exit140.i" ], [ %.sroa.072.0.i, %.noexc37 ], [ %.sroa.072.0.i, %"_ZN6pretty6render17Best$LT$T$C$A$GT$4best28_$u7b$$u7b$closure$u7d$$u7d$17hbc030239500e4c14E.exit.i.i" ], [ %.sroa.072.0.i, %"_ZN6pretty6render17Best$LT$T$C$A$GT$4best28_$u7b$$u7b$closure$u7d$$u7d$17hbc030239500e4c14E.exit.i5.i.i" ]
  %.sroa.073.0.i.be = phi ptr [ %.sroa.066.0.val.i, %.noexc38 ], [ %.val98.i, %bb.al ], [ %.sroa.012.0.i, %bb.o ], [ %.val94.i, %bb.ap ], [ %.sroa.650.0.copyload.i, %_ZN6pretty6render13write_newline17hfd4ba65a6652f133E.exit.i ], [ %.val93.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9313780bff20e686E.exit.i" ], [ %.val.i, %"_ZN4core3ptr64drop_in_place$LT$pretty..render..BufferWrite$LT$$LP$$RP$$GT$$GT$17ha40406ca2318f2cbE.exit140.i" ], [ %.sroa.061.0.val.i, %.noexc37 ], [ %.val102.i, %"_ZN6pretty6render17Best$LT$T$C$A$GT$4best28_$u7b$$u7b$closure$u7d$$u7d$17hbc030239500e4c14E.exit.i.i" ], [ %.val.i8.i.i, %"_ZN6pretty6render17Best$LT$T$C$A$GT$4best28_$u7b$$u7b$closure$u7d$$u7d$17hbc030239500e4c14E.exit.i5.i.i" ]
  br label %.backedge.i

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.k
  %lpad.loopexit3 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i.i120.i
  %lpad.loopexit6 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i123.i
  %lpad.loopexit8 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.l, %bb.w, %bb.y, %bb.z, %bb.af, %bb.am, %bb.ar, %bb.cg, %bb.ch
  %lpad.loopexit13 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.az, %bb.ay, %bb.ax, %.thread.i, %bb.u, %bb.t, %bb.s
  %lpad.loopexit17 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw, %bb.i
  %lpad.loopexit.split-lp18 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.ae, %bb.ak, %.loopexit.split-lp.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.fa, %bb.ak ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.dy, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit3, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit6, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit8, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit13, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit17, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp18, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr74drop_in_place$LT$pretty..render..Best$LT$pretty..BoxDoc$C$$LP$$RP$$GT$$GT$17hd7db51acfd32cdb8E"(ptr noalias noundef align 8 dereferenceable(96) %i.d) #53
  br label %bb.c

"_ZN6pretty6render17Best$LT$T$C$A$GT$4best17hdac517fe01ac6e3bE.exit.thread": ; preds = %.noexc31, %.noexc23, %.noexc21, %.noexc36, %.noexc35, %.noexc34, %.noexc22, %.backedge.i, %.noexc29, %.noexc32, %.noexc30, %"_ZN6pretty6render20BufferWrite$LT$A$GT$6render17h8f15109584fe460aE.exit.thread.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !602365)
  %.val5.i = load i64, ptr %i.d, align 8, !alias.scope !602365 ; 2 uses
  %i.jm = icmp eq i64 %.val5.i, 0
  br i1 %i.jm, label %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17he18611079659ee93E.exit.i", label %bb.ci

bb.ci:                                            ; preds = %"_ZN6pretty6render17Best$LT$T$C$A$GT$4best17hdac517fe01ac6e3bE.exit.thread"
  %.val6.i = load ptr, ptr %.sroa.4.0..sroa_idx1, align 8, !alias.scope !602365, !nonnull !19, !noundef !19
  %i.jn = mul nuw i64 %.val5.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i, i64 noundef %i.jn, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !602365
  br label %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17he18611079659ee93E.exit.i"

"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17he18611079659ee93E.exit.i": ; preds = %bb.ci, %"_ZN6pretty6render17Best$LT$T$C$A$GT$4best17hdac517fe01ac6e3bE.exit.thread"
  %.val7.i = load i64, ptr %i.l, align 8, !alias.scope !602365 ; 2 uses
  %i.jo = icmp eq i64 %.val7.i, 0
  br i1 %i.jo, label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h9442f5d0fc4da2e2E.exit11.i", label %bb.cj

bb.cj:                                            ; preds = %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17he18611079659ee93E.exit.i"
  %.val8.i = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !602365, !nonnull !19, !noundef !19
  %i.jp = shl nuw i64 %.val7.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.jp, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !602365
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h9442f5d0fc4da2e2E.exit11.i"

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h9442f5d0fc4da2e2E.exit11.i": ; preds = %bb.cj, %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17he18611079659ee93E.exit.i"
  %.val.i39 = load i64, ptr %i.m, align 8, !alias.scope !602365 ; 2 uses
  %i.jq = icmp eq i64 %.val.i39, 0
  br i1 %i.jq, label %"_ZN4core3ptr74drop_in_place$LT$pretty..render..Best$LT$pretty..BoxDoc$C$$LP$$RP$$GT$$GT$17hd7db51acfd32cdb8E.exit", label %bb.ck

bb.ck:                                            ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h9442f5d0fc4da2e2E.exit11.i"
  %.val2.i = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !alias.scope !602365, !nonnull !19, !noundef !19
  %i.jr = shl nuw i64 %.val.i39, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.jr, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !602365
  br label %"_ZN4core3ptr74drop_in_place$LT$pretty..render..Best$LT$pretty..BoxDoc$C$$LP$$RP$$GT$$GT$17hd7db51acfd32cdb8E.exit"

"_ZN6pretty6render17Best$LT$T$C$A$GT$4best17hdac517fe01ac6e3bE.exit": ; preds = %.critedge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !602366)
  %.val5.i40 = load i64, ptr %i.d, align 8, !alias.scope !602366 ; 2 uses
  %i.js = icmp eq i64 %.val5.i40, 0
  br i1 %i.js, label %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17he18611079659ee93E.exit.i42", label %bb.cl

bb.cl:                                            ; preds = %"_ZN6pretty6render17Best$LT$T$C$A$GT$4best17hdac517fe01ac6e3bE.exit"
  %.val6.i41 = load ptr, ptr %.sroa.4.0..sroa_idx1, align 8, !alias.scope !602366, !nonnull !19, !noundef !19
  %i.jt = mul nuw i64 %.val5.i40, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i41, i64 noundef %i.jt, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !602366
  br label %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17he18611079659ee93E.exit.i42"

"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17he18611079659ee93E.exit.i42": ; preds = %bb.cl, %"_ZN6pretty6render17Best$LT$T$C$A$GT$4best17hdac517fe01ac6e3bE.exit"
  %.val7.i43 = load i64, ptr %i.l, align 8, !alias.scope !602366 ; 2 uses
  %i.ju = icmp eq i64 %.val7.i43, 0
  br i1 %i.ju, label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h9442f5d0fc4da2e2E.exit11.i45", label %bb.cm

bb.cm:                                            ; preds = %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17he18611079659ee93E.exit.i42"
  %.val8.i44 = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !602366, !nonnull !19, !noundef !19
  %i.jv = shl nuw i64 %.val7.i43, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i44, i64 noundef %i.jv, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !602366
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h9442f5d0fc4da2e2E.exit11.i45"

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h9442f5d0fc4da2e2E.exit11.i45": ; preds = %bb.cm, %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17he18611079659ee93E.exit.i42"
  %.val.i46 = load i64, ptr %i.m, align 8, !alias.scope !602366 ; 2 uses
  %i.jw = icmp eq i64 %.val.i46, 0
  br i1 %i.jw, label %"_ZN4core3ptr74drop_in_place$LT$pretty..render..Best$LT$pretty..BoxDoc$C$$LP$$RP$$GT$$GT$17hd7db51acfd32cdb8E.exit48", label %bb.cn

bb.cn:                                            ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h9442f5d0fc4da2e2E.exit11.i45"
  %.val2.i47 = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !alias.scope !602366, !nonnull !19, !noundef !19
  %i.jx = shl nuw i64 %.val.i46, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i47, i64 noundef %i.jx, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !602366
  br label %"_ZN4core3ptr74drop_in_place$LT$pretty..render..Best$LT$pretty..BoxDoc$C$$LP$$RP$$GT$$GT$17hd7db51acfd32cdb8E.exit48"

"_ZN4core3ptr74drop_in_place$LT$pretty..render..Best$LT$pretty..BoxDoc$C$$LP$$RP$$GT$$GT$17hd7db51acfd32cdb8E.exit48": ; preds = %bb.cn, %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h9442f5d0fc4da2e2E.exit11.i45"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$17he85ce3dc543a50d9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i.i)
          to label %"_ZN4core3ptr61drop_in_place$LT$typed_arena..Arena$LT$pretty..BoxDoc$GT$$GT$17h32ba0ab03e162bb3E.exit" unwind label %bb.co

bb.co:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$pretty..render..Best$LT$pretty..BoxDoc$C$$LP$$RP$$GT$$GT$17hd7db51acfd32cdb8E.exit48"
  %i.jy = landingpad { ptr, i32 }
          cleanup
  %i.jz = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17hfb9a299175415cceE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.jz) #53
          to label %common.resume unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !602367
  unreachable

common.resume.sink.split:                         ; preds = %.body.i56, %.body.i
  %.val4.i57.sink = phi i64 [ %.val4.i, %.body.i ], [ %.val4.i57, %.body.i56 ]
  %.val.i52.sink = phi ptr [ %.val.i50, %.body.i ], [ %.val.i52, %.body.i56 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.kj, %.body.i ], [ %i.lb, %.body.i56 ]
  %i.kb = mul nuw i64 %.val4.i57.sink, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i52.sink, i64 noundef %i.kb, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !19
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.c, %.body.i56, %bb.cu, %.body.i, %bb.co
  %common.resume.op = phi { ptr, i32 } [ %i.lb, %.body.i56 ], [ %i.jy, %bb.co ], [ %i.kj, %.body.i ], [ %i.kr, %bb.cu ], [ %.pn, %bb.c ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr61drop_in_place$LT$typed_arena..Arena$LT$pretty..BoxDoc$GT$$GT$17h32ba0ab03e162bb3E.exit": ; preds = %"_ZN4core3ptr74drop_in_place$LT$pretty..render..Best$LT$pretty..BoxDoc$C$$LP$$RP$$GT$$GT$17hd7db51acfd32cdb8E.exit48"
  %i.kc = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !602368)
  %.val.i50 = load ptr, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !602368, !nonnull !19, !noundef !19 ; 4 uses
  %.val1.i = load i64, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !602368, !noundef !19 ; 4 uses
  %i.kd = icmp eq i64 %.val1.i, 0
  br i1 %i.kd, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i", label %.lr.ph64

bb.cq:                                            ; preds = %.lr.ph64
  %i.ke = icmp eq i64 %i.kg, %.val1.i
  br i1 %i.ke, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i", label %.lr.ph64

.lr.ph64:                                         ; preds = %"_ZN4core3ptr61drop_in_place$LT$typed_arena..Arena$LT$pretty..BoxDoc$GT$$GT$17h32ba0ab03e162bb3E.exit", %bb.cq
  %.sroa.0.0.i.i.i63 = phi i64 [ %i.kg, %bb.cq ], [ 0, %"_ZN4core3ptr61drop_in_place$LT$typed_arena..Arena$LT$pretty..BoxDoc$GT$$GT$17h32ba0ab03e162bb3E.exit" ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %.val.i50, i64 %.sroa.0.0.i.i.i63
  %i.kg = add i64 %.sroa.0.0.i.i.i63, 1           ; 4 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$17he85ce3dc543a50d9E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.kf)
          to label %bb.cq unwind label %bb.cs, !noalias !602368

bb.cr:                                            ; preds = %.lr.ph66
  %i.kh = add i64 %.sroa.0.1.i.i.i65, 1           ; 2 uses
  %i.ki = icmp eq i64 %i.kh, %.val1.i
  br i1 %i.ki, label %.body.i, label %.lr.ph66

bb.cs:                                            ; preds = %.lr.ph64
  %i.kj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kk = icmp eq i64 %i.kg, %.val1.i
  br i1 %i.kk, label %.body.i, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.cs, %bb.cr
  %.sroa.0.1.i.i.i65 = phi i64 [ %i.kh, %bb.cr ], [ %i.kg, %bb.cs ] ; 2 uses
  %i.kl = getelementptr inbounds nuw [24 x i8], ptr %.val.i50, i64 %.sroa.0.1.i.i.i65
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$17he85ce3dc543a50d9E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.kl) #53
          to label %bb.cr unwind label %bb.ct, !noalias !602368

bb.ct:                                            ; preds = %.lr.ph66
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !602369
  unreachable

.body.i:                                          ; preds = %bb.cr, %bb.cs
  %.val4.i = load i64, ptr %i.kc, align 8, !range !38, !alias.scope !602368, !noundef !19 ; 2 uses
  %i.kn = icmp eq i64 %.val4.i, 0
  br i1 %i.kn, label %common.resume, label %common.resume.sink.split

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i": ; preds = %bb.cq, %"_ZN4core3ptr61drop_in_place$LT$typed_arena..Arena$LT$pretty..BoxDoc$GT$$GT$17h32ba0ab03e162bb3E.exit"
  %.val2.i51 = load i64, ptr %i.kc, align 8, !range !38, !alias.scope !602368, !noundef !19 ; 2 uses
  %i.ko = icmp eq i64 %.val2.i51, 0
  br i1 %i.ko, label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17hfb9a299175415cceE.exit61", label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17hfb9a299175415cceE.exit61.sink.split"

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17hfb9a299175415cceE.exit61.sink.split": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i59"
  %.val2.i51.sink = phi i64 [ %.val2.i60, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i59" ], [ %.val2.i51, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i" ]
  %.val.i50.sink = phi ptr [ %.val.i52, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i59" ], [ %.val.i50, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i" ]
  %.ph = phi i1 [ true, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i59" ], [ false, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i" ]
  %i.kp = mul nuw i64 %.val2.i51.sink, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i50.sink, i64 noundef %i.kp, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !19
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17hfb9a299175415cceE.exit61"

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17hfb9a299175415cceE.exit61": ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17hfb9a299175415cceE.exit61.sink.split", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i59"
  %i.kq = phi i1 [ false, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i" ], [ true, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i59" ], [ %.ph, %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17hfb9a299175415cceE.exit61.sink.split" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %i.kq

"_ZN4core3ptr74drop_in_place$LT$pretty..render..Best$LT$pretty..BoxDoc$C$$LP$$RP$$GT$$GT$17hd7db51acfd32cdb8E.exit": ; preds = %bb.ck, %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h9442f5d0fc4da2e2E.exit11.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$17he85ce3dc543a50d9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i.i)
          to label %"_ZN4core3ptr61drop_in_place$LT$typed_arena..Arena$LT$pretty..BoxDoc$GT$$GT$17h32ba0ab03e162bb3E.exit49" unwind label %bb.cu

bb.cu:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$pretty..render..Best$LT$pretty..BoxDoc$C$$LP$$RP$$GT$$GT$17hd7db51acfd32cdb8E.exit"
  %i.kr = landingpad { ptr, i32 }
          cleanup
  %i.ks = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17hfb9a299175415cceE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ks) #53
          to label %common.resume unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !602370
  unreachable

"_ZN4core3ptr61drop_in_place$LT$typed_arena..Arena$LT$pretty..BoxDoc$GT$$GT$17h32ba0ab03e162bb3E.exit49": ; preds = %"_ZN4core3ptr74drop_in_place$LT$pretty..render..Best$LT$pretty..BoxDoc$C$$LP$$RP$$GT$$GT$17hd7db51acfd32cdb8E.exit"
  %i.ku = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !602371)
  %.val.i52 = load ptr, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !602371, !nonnull !19, !noundef !19 ; 4 uses
  %.val1.i53 = load i64, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !602371, !noundef !19 ; 4 uses
  %i.kv = icmp eq i64 %.val1.i53, 0
  br i1 %i.kv, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i59", label %.lr.ph

bb.cw:                                            ; preds = %.lr.ph
  %i.kw = icmp eq i64 %i.ky, %.val1.i53
  br i1 %i.kw, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i59", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN4core3ptr61drop_in_place$LT$typed_arena..Arena$LT$pretty..BoxDoc$GT$$GT$17h32ba0ab03e162bb3E.exit49", %bb.cw
  %.sroa.0.0.i.i.i5460 = phi i64 [ %i.ky, %bb.cw ], [ 0, %"_ZN4core3ptr61drop_in_place$LT$typed_arena..Arena$LT$pretty..BoxDoc$GT$$GT$17h32ba0ab03e162bb3E.exit49" ] ; 2 uses
  %i.kx = getelementptr inbounds nuw [24 x i8], ptr %.val.i52, i64 %.sroa.0.0.i.i.i5460
  %i.ky = add i64 %.sroa.0.0.i.i.i5460, 1         ; 4 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$17he85ce3dc543a50d9E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.kx)
          to label %bb.cw unwind label %bb.cy, !noalias !602371

bb.cx:                                            ; preds = %.lr.ph62
  %i.kz = add i64 %.sroa.0.1.i.i.i5561, 1         ; 2 uses
  %i.la = icmp eq i64 %i.kz, %.val1.i53
  br i1 %i.la, label %.body.i56, label %.lr.ph62

bb.cy:                                            ; preds = %.lr.ph
  %i.lb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lc = icmp eq i64 %i.ky, %.val1.i53
  br i1 %i.lc, label %.body.i56, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.cy, %bb.cx
  %.sroa.0.1.i.i.i5561 = phi i64 [ %i.kz, %bb.cx ], [ %i.ky, %bb.cy ] ; 2 uses
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %.val.i52, i64 %.sroa.0.1.i.i.i5561
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$17he85ce3dc543a50d9E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ld) #53
          to label %bb.cx unwind label %bb.cz, !noalias !602371

bb.cz:                                            ; preds = %.lr.ph62
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !602372
  unreachable

.body.i56:                                        ; preds = %bb.cx, %bb.cy
  %.val4.i57 = load i64, ptr %i.ku, align 8, !range !38, !alias.scope !602371, !noundef !19 ; 2 uses
  %i.lf = icmp eq i64 %.val4.i57, 0
  br i1 %i.lf, label %common.resume, label %common.resume.sink.split

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8fdb326bbd4c788dE.exit.i59": ; preds = %bb.cw, %"_ZN4core3ptr61drop_in_place$LT$typed_arena..Arena$LT$pretty..BoxDoc$GT$$GT$17h32ba0ab03e162bb3E.exit49"
  %.val2.i60 = load i64, ptr %i.ku, align 8, !range !38, !alias.scope !602371, !noundef !19 ; 2 uses
  %i.lg = icmp eq i64 %.val2.i60, 0
  br i1 %i.lg, label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17hfb9a299175415cceE.exit61", label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$$GT$17hfb9a299175415cceE.exit61.sink.split"

bb.da:                                            ; preds = %bb.c
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

bb.db:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN70_$LT$pretty..DocBuilder$LT$D$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbaaa5007cb10b4ffE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !19, !align !24, !noundef !19
  %i.e = load i8, ptr %1, align 8, !range !67, !noundef !19
  %.not = icmp eq i8 %i.e, 15
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @"_ZN63_$LT$pretty..Doc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ded24e6df84c84fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %.sroa.0.0.copyload = load i8, ptr %i.b, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8             ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !inline_history !602373
  %i.g = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !inline_history !602373 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hb4596846ac05d431E.exit.i.i", !prof !20

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #52, !inline_history !602373
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hb4596846ac05d431E.exit.i.i": ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !602377
  invoke fastcc void @"_ZN63_$LT$pretty..Doc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ded24e6df84c84fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val)
          to label %"_ZN62_$LT$pretty..BoxDoc$LT$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h81d749d7cc0ff6c5E.exit" unwind label %bb.e, !inline_history !602376

bb.e:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hb4596846ac05d431E.exit.i.i"
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 24, i64 noundef 8) #54, !inline_history !602373
  resume { ptr, i32 } %i.i

"_ZN62_$LT$pretty..BoxDoc$LT$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h81d749d7cc0ff6c5E.exit": ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hb4596846ac05d431E.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !602377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602377
  br label %bb.f

bb.f:                                             ; preds = %"_ZN62_$LT$pretty..BoxDoc$LT$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h81d749d7cc0ff6c5E.exit", %bb.b
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ undef, %"_ZN62_$LT$pretty..BoxDoc$LT$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h81d749d7cc0ff6c5E.exit" ]
  %.sroa.53.0 = phi ptr [ %.sroa.53.0.copyload, %bb.b ], [ %i.g, %"_ZN62_$LT$pretty..BoxDoc$LT$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h81d749d7cc0ff6c5E.exit" ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.copyload, %bb.b ], [ 15, %"_ZN62_$LT$pretty..BoxDoc$LT$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h81d749d7cc0ff6c5E.exit" ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.k, align 8
  store i8 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 1 dereferenceable(7) %i.j, i64 7, i1 false)
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.53.0..sroa_idx4, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3e6a061b512ecb51E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #28 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !19
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !19 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp ugt i64 %.sroa.0.0.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !602386
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.011.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i11 = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.j = or disjoint i64 %.sroa.0.0.i11, 1
  %i.k = icmp ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.0.0.i11
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !602386
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.0.0.i11, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.011.0.i
  %i.q = or disjoint i64 %.sroa.0.0.i11, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.011.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.011.0.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i11, %bb.d ] ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !602386, !noundef !19
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.0.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.011.1.i
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit: ; preds = %bb.f, %bb.g
  %.sroa.011.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.011.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.011.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !19
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub i64 %2, %.sroa.0.0                  ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted21 = load i64, ptr %i.aj, align 8
  %.promoted22 = load i64, ptr %i.ak, align 8, !alias.scope !602387
  %.promoted24 = load i64, ptr %i.al, align 8, !alias.scope !602387
  br label %bb.q

bb.i:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !19
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !602388, !noundef !19
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !602388, !noundef !19 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !602388, !noundef !19
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !602388
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !602388
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !602388
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !602387
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !602387
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.04.0.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.lcssa
  %.sroa.014.0.copyload.i18 = load i32, ptr %i.bl, align 1, !alias.scope !602389
  %i.bm = zext i32 %.sroa.014.0.copyload.i18 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.011.0.i12 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.sroa.0.0.i13 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %i.bn = or disjoint i64 %.sroa.0.0.i13, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.04.0.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.0.0.i13
  %.sroa.015.0.copyload.i17 = load i16, ptr %i.bq, align 1, !alias.scope !602389
  %i.br = zext i16 %.sroa.015.0.copyload.i17 to i64
  %i.bs = shl nuw nsw i64 %.sroa.0.0.i13, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.011.0.i12
  %i.bv = or disjoint i64 %.sroa.0.0.i13, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.011.1.i14 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.011.0.i12, %bb.m ] ; 2 uses
  %.sroa.0.1.i15 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.0.0.i13, %bb.m ] ; 3 uses
  %i.bw = icmp samesign ult i64 %.sroa.0.1.i15, %i.ag
  br i1 %i.bw, label %bb.p, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.0.1.i15, %.sroa.04.0.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !602389, !noundef !19
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.0.1.i15, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.011.1.i14
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19: ; preds = %bb.o, %bb.p
  %.sroa.011.2.i16 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.011.1.i14, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.011.2.i16, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted24, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted21, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.04.020 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.020
  %.sroa.08.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.08.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.08.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.04.020, 8            ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex17hfef0b7c94ab11909E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !19
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state15617h9e230f734b6be8e2E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state317hbcce7281c33d0a42E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 7 uses
  %i.c = add i64 %2, 7                            ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %.pre.pre.pre = load ptr, ptr %1, align 8       ; 5 uses
  br i1 %i.d, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %2 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !noundef !19
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @10262, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !19
  %i.j = and i8 %i.i, 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %.critedge, label %.lr.ph11

.preheader:                                       ; preds = %bb.o, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.cj, %bb.o ] ; 3 uses
  %i.l = icmp ult i64 %.sroa.0.0.lcssa, %i.b
  br i1 %i.l, label %.lr.ph56, label %.critedge

.lr.ph:                                           ; preds = %bb.o
  %i.m = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.cj ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noundef !19
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @10262, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !noundef !19
  %i.r = and i8 %i.q, 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %.critedge, label %.lr.ph11

.lr.ph56:                                         ; preds = %.preheader, %bb.b
  %.sroa.0.155 = phi i64 [ %i.aa, %bb.b ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %.sroa.0.155
  %i.u = load i8, ptr %i.t, align 1, !noundef !19
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @10262, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noundef !19
  %i.y = and i8 %i.x, 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph56
  %i.aa = add nuw i64 %.sroa.0.155, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.b
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph56

.critedge.thread:                                 ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.b, ptr %i.ab, align 8
  br label %bb.s

.critedge:                                        ; preds = %.lr.ph, %bb.n, %.lr.ph56, %.lr.ph.preheader, %.preheader, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.bt, %bb.k ], [ %i.bl, %bb.i ], [ %i.cb, %bb.m ], [ %.sroa.0.155, %.lr.ph56 ], [ %i.an, %bb.c ], [ %i.av, %bb.e ], [ %i.bd, %bb.g ], [ %.sroa.0.0.lcssa, %.preheader ], [ %2, %.lr.ph.preheader ], [ %i.cj, %.lr.ph ], [ %i.af, %bb.n ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.2, ptr %i.ac, align 8
  %i.ad = icmp ult i64 %.sroa.0.2, %i.b
  br i1 %i.ad, label %bb.p, label %bb.s

.lr.ph11:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ae = phi ptr [ %i.m, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.05310 = phi i64 [ %i.cj, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 8 uses
  %i.af = phi i64 [ %i.ck, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !19
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @10262, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !19
  %i.al = and i8 %i.ak, 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph11
  %i.an = add i64 %.sroa.0.05310, 1
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !19
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @10262, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noundef !19
  %i.at = and i8 %i.as, 1
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = add i64 %.sroa.0.05310, 2
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !19
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @10262, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !19
  %i.bb = and i8 %i.ba, 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = add i64 %.sroa.0.05310, 3
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bf = load i8, ptr %i.be, align 1, !noundef !19
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @10262, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !19
  %i.bj = and i8 %i.bi, 1
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = add i64 %.sroa.0.05310, 4
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !19
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @10262, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !19
  %i.br = and i8 %i.bq, 1
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = add i64 %.sroa.0.05310, 5
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !19
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @10262, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noundef !19
  %i.bz = and i8 %i.by, 1
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cb = add i64 %.sroa.0.05310, 6
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 7
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !19
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @10262, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !19
  %i.ch = and i8 %i.cg, 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = add i64 %.sroa.0.05310, 8               ; 4 uses
  %i.ck = add i64 %.sroa.0.05310, 15              ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.b
  br i1 %i.cl, label %.lr.ph, label %.preheader

bb.p:                                             ; preds = %.critedge
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %.sroa.0.2
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !19
  %i.co = icmp eq i8 %i.cn, 45
  br i1 %i.co, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cp = add nuw i64 %.sroa.0.2, 1
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state417h32089db0d03f1f93E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.cp)
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  ret void

bb.s:                                             ; preds = %.critedge.thread, %.critedge, %bb.p
  %.sroa.0.274 = phi i64 [ %i.b, %.critedge.thread ], [ %.sroa.0.2, %.critedge ], [ %.sroa.0.2, %bb.p ]
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !602393, !noalias !602394, !noundef !19 ; 2 uses
  %i.cs = sub nuw i64 %.sroa.0.274, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.cr
  store i64 1, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cs, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state417h32089db0d03f1f93E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.s, %bb.a
  %.tr66 = phi i64 [ %2, %bb.a ], [ %i.aw, %bb.s ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 13 uses
  %i.c = add i64 %.tr66, 7                        ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %.pre.pre.pre = load ptr, ptr %1, align 8       ; 12 uses
  br i1 %i.d, label %.lr.ph.preheader, label %.preheader82

.lr.ph.preheader:                                 ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %.tr66 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !noundef !19
  %.not20 = icmp eq i8 %i.f, 45
  br i1 %.not20, label %.lr.ph22, label %.critedge

.preheader82:                                     ; preds = %bb.o, %tailrecurse
  %.sroa.0.0.lcssa = phi i64 [ %.tr66, %tailrecurse ], [ %i.am, %bb.o ] ; 3 uses
  %i.g = icmp ult i64 %.sroa.0.0.lcssa, %i.b
  br i1 %i.g, label %.lr.ph108, label %.critedge

.lr.ph:                                           ; preds = %bb.o
  %i.h = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.am ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noundef !19
  %.not = icmp eq i8 %i.i, 45
  br i1 %.not, label %.lr.ph22, label %.critedge

.lr.ph108:                                        ; preds = %.preheader82, %bb.b
  %.sroa.0.1107 = phi i64 [ %i.m, %bb.b ], [ %.sroa.0.0.lcssa, %.preheader82 ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %.sroa.0.1107
  %i.k = load i8, ptr %i.j, align 1, !noundef !19
  %i.l = icmp eq i8 %i.k, 45
  br i1 %i.l, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph108
  %i.m = add nuw i64 %.sroa.0.1107, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.b
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph108

.critedge.thread:                                 ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.al

.critedge:                                        ; preds = %.lr.ph, %bb.n, %.lr.ph108, %.lr.ph.preheader, %.preheader82, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.ag, %bb.k ], [ %i.ad, %bb.i ], [ %i.aj, %bb.m ], [ %.sroa.0.1107, %.lr.ph108 ], [ %i.u, %bb.c ], [ %i.x, %bb.e ], [ %i.aa, %bb.g ], [ %.sroa.0.0.lcssa, %.preheader82 ], [ %.tr66, %.lr.ph.preheader ], [ %i.am, %.lr.ph ], [ %i.r, %bb.n ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store i64 %.sroa.0.2, ptr %i.o, align 8
  %i.p = icmp ult i64 %.sroa.0.2, %i.b
  br i1 %i.p, label %bb.p, label %bb.al

.lr.ph22:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.q = phi ptr [ %i.h, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.010521 = phi i64 [ %i.am, %.lr.ph ], [ %.tr66, %.lr.ph.preheader ] ; 8 uses
  %i.r = phi i64 [ %i.an, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.t = load i8, ptr %i.s, align 1, !noundef !19
  %.not32 = icmp eq i8 %i.t, 45
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph22
  %i.u = add i64 %.sroa.0.010521, 1
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph22
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.w = load i8, ptr %i.v, align 1, !noundef !19
  %.not33 = icmp eq i8 %i.w, 45
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add i64 %.sroa.0.010521, 2
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.z = load i8, ptr %i.y, align 1, !noundef !19
  %.not34 = icmp eq i8 %i.z, 45
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add i64 %.sroa.0.010521, 3
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !19
  %.not35 = icmp eq i8 %i.ac, 45
  br i1 %.not35, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add i64 %.sroa.0.010521, 4
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !noundef !19
  %.not36 = icmp eq i8 %i.af, 45
  br i1 %.not36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add i64 %.sroa.0.010521, 5
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !19
  %.not37 = icmp eq i8 %i.ai, 45
  br i1 %.not37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = add i64 %.sroa.0.010521, 6
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 7
  %i.al = load i8, ptr %i.ak, align 1, !noundef !19
  %.not38 = icmp eq i8 %i.al, 45
  br i1 %.not38, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.am = add i64 %.sroa.0.010521, 8              ; 4 uses
  %i.an = add i64 %.sroa.0.010521, 15             ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.b
  br i1 %i.ao, label %.lr.ph, label %.preheader82

bb.p:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %.sroa.0.2
  %i.aq = load i8, ptr %i.ap, align 1, !noundef !19
  %i.ar = zext i8 %i.aq to i64
  %i.as = add nuw i64 %.sroa.0.2, 1               ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr @10263, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !range !93, !noundef !19
  switch i8 %i.au, label %default.unreachable148 [
    i8 0, label %bb.al
    i8 1, label %bb.q
    i8 2, label %bb.r
  ]

default.unreachable148:                           ; preds = %bb.s, %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state317hbcce7281c33d0a42E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.as)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state917h54e4a890085e55aaE.exit"

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602413)
  store i64 %i.as, ptr %i.o, align 8, !alias.scope !602413, !noalias !602414
  %i.av = icmp ult i64 %i.as, %i.b
  br i1 %i.av, label %bb.s, label %bb.ak

bb.s:                                             ; preds = %bb.r
  %i.aw = add nuw i64 %.sroa.0.2, 2               ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.as
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !602415, !noundef !19
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @10266, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !range !27, !noalias !602415, !noundef !19
  switch i8 %i.bb, label %default.unreachable148 [
    i8 0, label %bb.ak
    i8 1, label %bb.t
    i8 2, label %tailrecurse
    i8 3, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state317hbcce7281c33d0a42E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aw)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state917h54e4a890085e55aaE.exit"

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602416)
  %i.bc = add i64 %.sroa.0.2, 9                   ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.b
  br i1 %i.bd, label %.lr.ph113.preheader, label %.preheader

.lr.ph113.preheader:                              ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.aw ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !noalias !602417, !noundef !19
  %.not30.i24 = icmp eq i8 %i.bf, 37
  br i1 %.not30.i24, label %.lr.ph26, label %.loopexit

.preheader:                                       ; preds = %bb.ai, %bb.u
  %.sroa.0.0.i.lcssa = phi i64 [ %i.aw, %bb.u ], [ %i.cj, %bb.ai ] ; 3 uses
  %i.bg = icmp ult i64 %.sroa.0.0.i.lcssa, %i.b
  br i1 %i.bg, label %.lr.ph116, label %.loopexit

.lr.ph113:                                        ; preds = %bb.ai
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.cj ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !602417, !noundef !19
  %.not30.i = icmp eq i8 %i.bi, 37
  br i1 %.not30.i, label %.lr.ph26, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph113, %bb.ah, %.lr.ph116, %.lr.ph113.preheader, %.preheader, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w
  %.sroa.0.2.i = phi i64 [ %i.cg, %bb.ag ], [ %i.cd, %bb.ae ], [ %.sroa.0.1.i115, %.lr.ph116 ], [ %i.br, %bb.w ], [ %i.bu, %bb.y ], [ %i.bx, %bb.aa ], [ %i.ca, %bb.ac ], [ %.sroa.0.0.i.lcssa, %.preheader ], [ %i.aw, %.lr.ph113.preheader ], [ %i.cj, %.lr.ph113 ], [ %i.bo, %bb.ah ] ; 3 uses
  %i.bj = icmp ult i64 %.sroa.0.2.i, %i.b
  br i1 %i.bj, label %bb.aj, label %.loopexit.thread

.lr.ph116:                                        ; preds = %.preheader, %bb.v
  %.sroa.0.1.i115 = phi i64 [ %i.bm, %bb.v ], [ %.sroa.0.0.i.lcssa, %.preheader ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %.sroa.0.1.i115
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !602417, !noundef !19
  %.not.i = icmp eq i8 %i.bl, 37
  br i1 %.not.i, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %.lr.ph116
  %i.bm = add nuw i64 %.sroa.0.1.i115, 1          ; 2 uses
  %exitcond139.not = icmp eq i64 %i.bm, %i.b
  br i1 %exitcond139.not, label %.loopexit.thread, label %.lr.ph116

.lr.ph26:                                         ; preds = %.lr.ph113.preheader, %.lr.ph113
  %i.bn = phi ptr [ %i.bh, %.lr.ph113 ], [ %i.be, %.lr.ph113.preheader ] ; 7 uses
  %.sroa.0.0.i11225 = phi i64 [ %i.cj, %.lr.ph113 ], [ %i.aw, %.lr.ph113.preheader ] ; 8 uses
  %i.bo = phi i64 [ %i.ck, %.lr.ph113 ], [ %i.bc, %.lr.ph113.preheader ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !602417, !noundef !19
  %.not31.i = icmp eq i8 %i.bq, 37
  br i1 %.not31.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph26
  %i.br = add i64 %.sroa.0.0.i11225, 1
  br label %.loopexit

bb.x:                                             ; preds = %.lr.ph26
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !602417, !noundef !19
  %.not32.i = icmp eq i8 %i.bt, 37
  br i1 %.not32.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = add i64 %.sroa.0.0.i11225, 2
  br label %.loopexit

bb.z:                                             ; preds = %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !602417, !noundef !19
  %.not33.i = icmp eq i8 %i.bw, 37
  br i1 %.not33.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = add i64 %.sroa.0.0.i11225, 3
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bz = load i8, ptr %i.by, align 1, !noalias !602417, !noundef !19
  %.not34.i = icmp eq i8 %i.bz, 37
  br i1 %.not34.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = add i64 %.sroa.0.0.i11225, 4
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 5
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !602417, !noundef !19
  %.not35.i = icmp eq i8 %i.cc, 37
  br i1 %.not35.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = add i64 %.sroa.0.0.i11225, 5
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !602417, !noundef !19
  %.not36.i = icmp eq i8 %i.cf, 37
  br i1 %.not36.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cg = add i64 %.sroa.0.0.i11225, 6
  br label %.loopexit

bb.ah:                                            ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !602417, !noundef !19
  %.not37.i = icmp eq i8 %i.ci, 37
  br i1 %.not37.i, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.cj = add i64 %.sroa.0.0.i11225, 8            ; 4 uses
  %i.ck = add i64 %.sroa.0.0.i11225, 15           ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.b
  br i1 %i.cl, label %.lr.ph113, label %.preheader

bb.aj:                                            ; preds = %.loopexit
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %.sroa.0.2.i
  %i.cn = load i8, ptr %i.cm, align 1, !noalias !602417, !noundef !19
  %i.co = icmp eq i8 %i.cn, 34
  br i1 %i.co, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state37017ha7e4bd7f3036255fE.exit.i", label %.loopexit.thread

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state37017ha7e4bd7f3036255fE.exit.i": ; preds = %bb.aj
  %i.cp = add nuw i64 %.sroa.0.2.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602418)
  store i64 %i.cp, ptr %i.o, align 8, !alias.scope !602419, !noalias !602420
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN18nickel_lang_parser5lexer33symbolic_string_prefix_and_length17h81c49786b0f8b507E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %.sroa.479.0..sroa_idx, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !noalias !19
  store i64 57, ptr %0, align 8, !noalias !602419
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state917h54e4a890085e55aaE.exit"

.loopexit.thread:                                 ; preds = %bb.v, %bb.aj, %.loopexit
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !602421, !noalias !602422, !noundef !19 ; 2 uses
  %i.cs = sub nuw i64 %i.as, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.cr
  store i64 1, ptr %0, align 8, !noalias !602416
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %.sroa.469.0..sroa_idx, align 8, !noalias !602416
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cs, ptr %.sroa.570.0..sroa_idx, align 8, !noalias !602416
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state917h54e4a890085e55aaE.exit"

bb.ak:                                            ; preds = %bb.s, %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !602423, !noalias !602424, !noundef !19 ; 2 uses
  %i.cw = sub nuw i64 %i.as, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.cv
  store i64 1, ptr %0, align 8, !noalias !602413
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cx, ptr %.sroa.457.0..sroa_idx, align 8, !noalias !602413
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cw, ptr %.sroa.558.0..sroa_idx, align 8, !noalias !602413
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state917h54e4a890085e55aaE.exit"

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state917h54e4a890085e55aaE.exit": ; preds = %bb.ak, %bb.t, %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state37017ha7e4bd7f3036255fE.exit.i", %.loopexit.thread, %bb.q, %bb.al
  ret void

bb.al:                                            ; preds = %.critedge.thread, %bb.p, %.critedge
  %.sroa.0.2150 = phi i64 [ %i.b, %.critedge.thread ], [ %.sroa.0.2, %bb.p ], [ %.sroa.0.2, %.critedge ]
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !602425, !noalias !602426, !noundef !19 ; 2 uses
  %i.da = sub nuw i64 %.sroa.0.2150, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.cz
  store i64 1, ptr %0, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.db, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.da, ptr %.sroa.546.0..sroa_idx, align 8
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state917h54e4a890085e55aaE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state717h9b5138bb9f34ce28E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) initializes((24, 32)) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.d = icmp ult i64 %2, %i.c
  %.pre = load ptr, ptr %1, align 8               ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i64 %2, 1                        ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.g = load i8, ptr %i.f, align 1, !noundef !19
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @10264, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !range !27, !noundef !19
  switch i8 %i.j, label %default.unreachable32 [
    i8 0, label %bb.k
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable32:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state317hbcce7281c33d0a42E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.e)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state817h1dbd9ef9bc75004eE.exit"

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state417h32089db0d03f1f93E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.e)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state817h1dbd9ef9bc75004eE.exit"

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602433)
  store i64 %i.e, ptr %i.a, align 8, !alias.scope !602433, !noalias !602434
  %i.k = icmp ult i64 %i.e, %i.c
  br i1 %i.k, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.e
  %i.m = load i8, ptr %i.l, align 1, !noalias !602435, !noundef !19 ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @10262, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !602435, !noundef !19
  %i.q = and i8 %i.p, 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i8 %i.m, 45
  br i1 %i.s, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.t = add nuw i64 %2, 2
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state317hbcce7281c33d0a42E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.t)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state817h1dbd9ef9bc75004eE.exit"

bb.i:                                             ; preds = %bb.g
  %i.u = add nuw i64 %2, 2
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state417h32089db0d03f1f93E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.u)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state817h1dbd9ef9bc75004eE.exit"

end_hunk_7
begin_hunk_8_@"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8217h7a194f2bdf0a30bcE":bb.a
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !602775, !noalias !602776, !noundef !19 ; 2 uses
  %i.x = sub nuw i64 %2, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.w
  store i64 1, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %.sroa.524.0..sroa_idx, align 8
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8317h6f8b5945f995227dE.exit"

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8317h6f8b5945f995227dE.exit": ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.c, %bb.d, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8417h7099b26fcefe387fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) initializes((24, 32)) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.d = icmp ult i64 %2, %i.c
  %.pre = load ptr, ptr %1, align 8               ; 4 uses
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i64 %2, 1                        ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.g = load i8, ptr %i.f, align 1, !noundef !19
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @10275, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !range !27, !noundef !19
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.k
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.f, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state317hbcce7281c33d0a42E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.e)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8517h708fafbb7c578fdfE.exit"

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state417h32089db0d03f1f93E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.e)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8517h708fafbb7c578fdfE.exit"

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602786)
  store i64 %i.e, ptr %i.a, align 8, !alias.scope !602786, !noalias !602787
  %i.k = icmp ult i64 %i.e, %i.c
  br i1 %i.k, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i64 %2, 2                        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.e
  %i.n = load i8, ptr %i.m, align 1, !noalias !602788, !noundef !19
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @10272, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !range !27, !noalias !602788, !noundef !19
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %bb.j
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state317hbcce7281c33d0a42E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.l)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8517h708fafbb7c578fdfE.exit"

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state417h32089db0d03f1f93E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.l)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8517h708fafbb7c578fdfE.exit"

bb.i:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8617h6db284187b0ed201E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.l)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8517h708fafbb7c578fdfE.exit"

bb.j:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !602789, !noalias !602790, !noundef !19 ; 2 uses
  %i.t = sub nuw i64 %i.e, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.s
  store i64 1, ptr %0, align 8, !noalias !602786
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %.sroa.435.0..sroa_idx, align 8, !noalias !602786
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %.sroa.536.0..sroa_idx, align 8, !noalias !602786
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8517h708fafbb7c578fdfE.exit"

bb.k:                                             ; preds = %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !602791, !noalias !602792, !noundef !19 ; 2 uses
  %i.x = sub nuw i64 %2, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.w
  store i64 1, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %.sroa.524.0..sroa_idx, align 8
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8517h708fafbb7c578fdfE.exit"

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8517h708fafbb7c578fdfE.exit": ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.c, %bb.d, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8617h6db284187b0ed201E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) initializes((24, 32)) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %2
  %i.g = load i8, ptr %i.f, align 1, !noundef !19 ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @10262, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !19
  %i.k = and i8 %i.j, 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i8 %i.g, 45
  br i1 %i.m, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.n = add nuw i64 %2, 1
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state317hbcce7281c33d0a42E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.n)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = add nuw i64 %2, 1
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state417h32089db0d03f1f93E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.o)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %bb.a, %bb.c
  store i64 116, ptr %0, align 8
  br label %bb.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8817hd9fb20e9f770e6edE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #29 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 5 uses
  %i.c = add i64 %2, 7                            ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %.pre.pre = load ptr, ptr %1, align 8           ; 4 uses
  br i1 %i.d, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %2 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !noundef !19
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @10262, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !19
  %i.j = and i8 %i.i, 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph11

.preheader:                                       ; preds = %bb.o, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.cg, %bb.o ] ; 3 uses
  %i.l = icmp ult i64 %.sroa.0.0.lcssa, %i.b
  br i1 %i.l, label %.lr.ph49, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %i.m = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.cg ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noundef !19
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @10262, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !noundef !19
  %i.r = and i8 %i.q, 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %.loopexit, label %.lr.ph11

.lr.ph49:                                         ; preds = %.preheader, %bb.b
  %.sroa.0.148 = phi i64 [ %i.aa, %bb.b ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %.sroa.0.148
  %i.u = load i8, ptr %i.t, align 1, !noundef !19
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @10262, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noundef !19
  %i.y = and i8 %i.x, 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph49
  %i.aa = add nuw i64 %.sroa.0.148, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph49

.lr.ph11:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ab = phi ptr [ %i.m, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.04610 = phi i64 [ %i.cg, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 8 uses
  %i.ac = phi i64 [ %i.ch, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !19
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @10262, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !19
  %i.ai = and i8 %i.ah, 8
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph11
  %i.ak = add i64 %.sroa.0.04610, 1
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.am = load i8, ptr %i.al, align 1, !noundef !19
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @10262, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !19
  %i.aq = and i8 %i.ap, 8
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = add i64 %.sroa.0.04610, 2
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.au = load i8, ptr %i.at, align 1, !noundef !19
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @10262, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !19
  %i.ay = and i8 %i.ax, 8
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = add i64 %.sroa.0.04610, 3
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !19
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @10262, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !19
  %i.bg = and i8 %i.bf, 8
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = add i64 %.sroa.0.04610, 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !19
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @10262, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !19
  %i.bo = and i8 %i.bn, 8
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = add i64 %.sroa.0.04610, 5
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !noundef !19
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @10262, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !19
  %i.bw = and i8 %i.bv, 8
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = add i64 %.sroa.0.04610, 6
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  %i.ca = load i8, ptr %i.bz, align 1, !noundef !19
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @10262, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !19
  %i.ce = and i8 %i.cd, 8
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = add i64 %.sroa.0.04610, 8               ; 4 uses
  %i.ch = add i64 %.sroa.0.04610, 15              ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.b
  br i1 %i.ci, label %.lr.ph, label %.preheader

.loopexit:                                        ; preds = %.lr.ph, %bb.n, %bb.b, %.lr.ph49, %.lr.ph.preheader, %.preheader, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.by, %bb.m ], [ %i.bq, %bb.k ], [ %2, %.lr.ph.preheader ], [ %i.ak, %bb.c ], [ %i.as, %bb.e ], [ %i.ba, %bb.g ], [ %i.bi, %bb.i ], [ %.sroa.0.0.lcssa, %.preheader ], [ %.sroa.0.148, %.lr.ph49 ], [ %i.b, %bb.b ], [ %i.cg, %.lr.ph ], [ %i.ac, %bb.n ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.2, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !602796, !noalias !602797, !noundef !19 ; 2 uses
  %i.cm = sub nuw i64 %.sroa.0.2, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.cl
  store i64 1, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cn, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cm, ptr %.sroa.529.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state9217h94140849be4618d8E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) initializes((24, 32)) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.d = icmp ult i64 %2, %i.c
  %.pre = load ptr, ptr %1, align 8               ; 4 uses
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i64 %2, 1                        ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.g = load i8, ptr %i.f, align 1, !noundef !19
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @10269, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !range !27, !noundef !19
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.k
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.f, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state317hbcce7281c33d0a42E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.e)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state9317h3d89e5c623c14a3aE.exit"

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state417h32089db0d03f1f93E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.e)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state9317h3d89e5c623c14a3aE.exit"

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602807)
  store i64 %i.e, ptr %i.a, align 8, !alias.scope !602807, !noalias !602808
  %i.k = icmp ult i64 %i.e, %i.c
  br i1 %i.k, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i64 %2, 2                        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.e
  %i.n = load i8, ptr %i.m, align 1, !noalias !602809, !noundef !19
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @10267, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !range !27, !noalias !602809, !noundef !19
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %bb.j
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state317hbcce7281c33d0a42E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.l)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state9317h3d89e5c623c14a3aE.exit"

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state417h32089db0d03f1f93E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.l)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state9317h3d89e5c623c14a3aE.exit"

bb.i:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state9417h82d4c5fb0a3a0e70E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.l)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state9317h3d89e5c623c14a3aE.exit"

bb.j:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !602810, !noalias !602811, !noundef !19 ; 2 uses
  %i.t = sub nuw i64 %i.e, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.s
  store i64 1, ptr %0, align 8, !noalias !602807
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %.sroa.435.0..sroa_idx, align 8, !noalias !602807
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %.sroa.536.0..sroa_idx, align 8, !noalias !602807
end_hunk_8
begin_hunk_9_@"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state11517hb2303472ec5000e1E":bb.a
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink.i.i.sink = phi i64 [ 167, %bb.z ], [ 2, %bb.y ]
  store i64 %.sink.i.i.sink, ptr %0, align 8
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state11417h635415e9a2d66f49E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state11617he296a4053fe18449E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !19 ; 2 uses
  %i.e = icmp ult i64 %2, %i.d
  %.pre = load ptr, ptr %1, align 8               ; 4 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.g = load i8, ptr %i.f, align 1, !noundef !19 ; 2 uses
  %i.h = add i8 %i.g, -48
  %or.cond = icmp ult i8 %i.h, 10
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.e, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602921)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !602921, !noalias !602922, !noundef !19 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !602921, !noalias !602922, !noundef !19
  %i.m = sub nuw i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !602923
  call void @"_ZN11malachite_q10conversion6string15from_sci_string106_$LT$impl$u20$malachite_base..num..conversion..traits..FromSciString$u20$for$u20$malachite_q..Rational$GT$28from_sci_string_with_options17h73505755d7fc0e29E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.m, i8 noundef 4, i8 noundef 10), !noalias !602924
  %i.o = load i64, ptr %i.b, align 8, !range !34, !noalias !602923, !noundef !19 ; 2 uses
  %.not.i.i.not = icmp eq i64 %i.o, -9223372036854775807
  br i1 %.not.i.i.not, label %bb.n, label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %2, 1
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state11717h24cbc2c4611b38a2E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.p)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state20317hcacb7ac3ea85b480E.exit"

bb.e:                                             ; preds = %bb.b
  switch i8 %i.g, label %bb.c [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.q = add nuw i64 %2, 1                        ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.d
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !noalias !602925, !noundef !19
  %i.u = add i8 %i.t, -48
  %or.cond.i = icmp ult i8 %i.u, 10
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602926)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !602926, !noalias !602927, !noundef !19 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !602926, !noalias !602927, !noundef !19
  %i.z = sub nuw i64 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !602928
  call void @"_ZN11malachite_q10conversion6string15from_sci_string106_$LT$impl$u20$malachite_base..num..conversion..traits..FromSciString$u20$for$u20$malachite_q..Rational$GT$28from_sci_string_with_options17h73505755d7fc0e29E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i64 noundef %i.z, i8 noundef 4, i8 noundef 10), !noalias !602929
  %i.ab = load i64, ptr %i.a, align 8, !range !34, !noalias !602928, !noundef !19 ; 2 uses
  %.not.i.i17.not = icmp eq i64 %i.ab, -9223372036854775807
  br i1 %.not.i.i17.not, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = add nuw i64 %2, 2
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state11717h24cbc2c4611b38a2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ac)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state20317hcacb7ac3ea85b480E.exit"

bb.j:                                             ; preds = %bb.h
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.749.0.copyload = load ptr, ptr %.sroa.749.0..sroa_idx, align 8, !noalias !602930
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.1052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.1052.0.copyload = load ptr, ptr %.sroa.1052.0..sroa_idx, align 8, !noalias !602930
  %.sroa.1153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.547.sroa.7.0..sroa.547.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.547.sroa.7.0..sroa.547.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1153.0..sroa_idx, i64 16, i1 false), !noalias !19
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.547.sroa.4.0..sroa.547.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load <2 x i64>, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !602930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602928
  store i64 %i.ab, ptr %.sroa.446.0..sroa_idx, align 8, !noalias !602931
  store ptr %.sroa.749.0.copyload, ptr %.sroa.547.0..sroa_idx, align 8, !noalias !602931
  store <2 x i64> %i.ad, ptr %.sroa.547.sroa.4.0..sroa.547.0..sroa_idx.sroa_idx, align 8, !noalias !602931
  %.sroa.547.sroa.6.0..sroa.547.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.1052.0.copyload, ptr %.sroa.547.sroa.6.0..sroa.547.0..sroa_idx.sroa_idx, align 8, !noalias !602931
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602928
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.i.i23.sink = phi i64 [ 167, %bb.k ], [ 2, %bb.j ]
  store i64 %.sink.i.i23.sink, ptr %0, align 8, !noalias !602931
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state20317hcacb7ac3ea85b480E.exit"

bb.m:                                             ; preds = %bb.c
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !602932
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !602932
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.537.sroa.7.0..sroa.537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.537.sroa.7.0..sroa.537.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load <2 x i64>, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !602932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !602923
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.537.0..sroa_idx, align 8
  store <2 x i64> %i.ae, ptr %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx, align 8
  %.sroa.537.sroa.6.0..sroa.537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.10.0.copyload, ptr %.sroa.537.sroa.6.0..sroa.537.0..sroa_idx.sroa_idx, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !602923
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i.i.sink = phi i64 [ 167, %bb.n ], [ 2, %bb.m ]
  store i64 %.sink.i.i.sink, ptr %0, align 8
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state20317hcacb7ac3ea85b480E.exit"

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state20317hcacb7ac3ea85b480E.exit": ; preds = %bb.l, %bb.i, %bb.o, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state11717h24cbc2c4611b38a2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 5 uses
  %i.d = add i64 %2, 7                            ; 2 uses
  %i.e = icmp ult i64 %i.d, %i.c
  %.pre.pre = load ptr, ptr %1, align 8           ; 4 uses
  br i1 %i.e, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %2 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noundef !19
  %i.h = add i8 %i.g, -58
  %i.i = icmp ult i8 %i.h, -10
  br i1 %i.i, label %.loopexit, label %.lr.ph11

.preheader:                                       ; preds = %bb.o, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.bj, %bb.o ] ; 3 uses
  %i.j = icmp ult i64 %.sroa.0.0.lcssa, %i.c
  br i1 %i.j, label %.lr.ph49, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.bj ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !noundef !19
  %i.m = add i8 %i.l, -58
  %i.n = icmp ult i8 %i.m, -10
  br i1 %i.n, label %.loopexit, label %.lr.ph11

.loopexit:                                        ; preds = %.lr.ph, %bb.n, %bb.b, %.lr.ph49, %.lr.ph.preheader, %.preheader, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.be, %bb.m ], [ %i.az, %bb.k ], [ %2, %.lr.ph.preheader ], [ %i.af, %bb.c ], [ %i.ak, %bb.e ], [ %i.ap, %bb.g ], [ %i.au, %bb.i ], [ %.sroa.0.0.lcssa, %.preheader ], [ %.sroa.0.148, %.lr.ph49 ], [ %i.c, %bb.b ], [ %i.bj, %.lr.ph ], [ %i.aa, %bb.n ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.2, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602939)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !602939, !noalias !602940, !noundef !19 ; 2 uses
  %i.r = sub nuw i64 %.sroa.0.2, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !602941
  call void @"_ZN11malachite_q10conversion6string15from_sci_string106_$LT$impl$u20$malachite_base..num..conversion..traits..FromSciString$u20$for$u20$malachite_q..Rational$GT$28from_sci_string_with_options17h73505755d7fc0e29E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.s, i64 noundef %i.r, i8 noundef 4, i8 noundef 10), !noalias !602942
  %i.t = load i64, ptr %i.a, align 8, !range !34, !noalias !602941, !noundef !19 ; 2 uses
  %.not.i.i.not = icmp eq i64 %i.t, -9223372036854775807
  br i1 %.not.i.i.not, label %bb.q, label %bb.p

.lr.ph49:                                         ; preds = %.preheader, %bb.b
  %.sroa.0.148 = phi i64 [ %i.y, %bb.b ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %.sroa.0.148
  %i.v = load i8, ptr %i.u, align 1, !noundef !19
  %i.w = add i8 %i.v, -58
  %i.x = icmp ult i8 %i.w, -10
  br i1 %i.x, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph49
  %i.y = add nuw i64 %.sroa.0.148, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph49

.lr.ph11:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.z = phi ptr [ %i.k, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.04610 = phi i64 [ %i.bj, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 8 uses
  %i.aa = phi i64 [ %i.bk, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !19
  %i.ad = add i8 %i.ac, -58
  %i.ae = icmp ult i8 %i.ad, -10
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph11
  %i.af = add i64 %.sroa.0.04610, 1
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !19
  %i.ai = add i8 %i.ah, -58
  %i.aj = icmp ult i8 %i.ai, -10
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = add i64 %.sroa.0.04610, 2
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.am = load i8, ptr %i.al, align 1, !noundef !19
  %i.an = add i8 %i.am, -58
  %i.ao = icmp ult i8 %i.an, -10
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = add i64 %.sroa.0.04610, 3
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ar = load i8, ptr %i.aq, align 1, !noundef !19
  %i.as = add i8 %i.ar, -58
  %i.at = icmp ult i8 %i.as, -10
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = add i64 %.sroa.0.04610, 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !noundef !19
  %i.ax = add i8 %i.aw, -58
  %i.ay = icmp ult i8 %i.ax, -10
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = add i64 %.sroa.0.04610, 5
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !19
  %i.bc = add i8 %i.bb, -58
  %i.bd = icmp ult i8 %i.bc, -10
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = add i64 %.sroa.0.04610, 6
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 7
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !19
  %i.bh = add i8 %i.bg, -58
  %i.bi = icmp ult i8 %i.bh, -10
  br i1 %i.bi, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = add i64 %.sroa.0.04610, 8               ; 4 uses
  %i.bk = add i64 %.sroa.0.04610, 15              ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.c
  br i1 %i.bl, label %.lr.ph, label %.preheader

bb.p:                                             ; preds = %.loopexit
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !602943
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !602943
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.528.sroa.7.0..sroa.528.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.528.sroa.7.0..sroa.528.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.528.sroa.4.0..sroa.528.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = load <2 x i64>, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !602943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602941
  store i64 %i.t, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.528.0..sroa_idx, align 8
  store <2 x i64> %i.bm, ptr %.sroa.528.sroa.4.0..sroa.528.0..sroa_idx.sroa_idx, align 8
  %.sroa.528.sroa.6.0..sroa.528.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.10.0.copyload, ptr %.sroa.528.sroa.6.0..sroa.528.0..sroa_idx.sroa_idx, align 8
  br label %bb.r

bb.q:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602941
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink.i.i.sink = phi i64 [ 167, %bb.q ], [ 2, %bb.p ]
  store i64 %.sink.i.i.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state11817hc5255cef639d92c8E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 7 uses
  %i.d = add i64 %2, 7                            ; 2 uses
  %i.e = icmp ult i64 %i.d, %i.c
  %.pre.pre.pre = load ptr, ptr %1, align 8       ; 5 uses
  br i1 %i.e, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %2 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noundef !19
  %i.h = add i8 %i.g, -58
  %i.i = icmp ult i8 %i.h, -10
  br i1 %i.i, label %.critedge, label %.lr.ph11

.preheader:                                       ; preds = %bb.o, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.bg, %bb.o ] ; 3 uses
  %i.j = icmp ult i64 %.sroa.0.0.lcssa, %i.c
  br i1 %i.j, label %.lr.ph54, label %.critedge

.lr.ph:                                           ; preds = %bb.o
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.bg ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !noundef !19
  %i.m = add i8 %i.l, -58
  %i.n = icmp ult i8 %i.m, -10
  br i1 %i.n, label %.critedge, label %.lr.ph11

.lr.ph54:                                         ; preds = %.preheader, %bb.b
  %.sroa.0.153 = phi i64 [ %i.s, %bb.b ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %.sroa.0.153
  %i.p = load i8, ptr %i.o, align 1, !noundef !19
  %i.q = add i8 %i.p, -58
  %i.r = icmp ult i8 %i.q, -10
  br i1 %i.r, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph54
  %i.s = add nuw i64 %.sroa.0.153, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.c
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph54

.critedge.thread:                                 ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.c, ptr %i.t, align 8
  br label %.critedge30

.critedge:                                        ; preds = %.lr.ph, %bb.n, %.lr.ph54, %.lr.ph.preheader, %.preheader, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.aw, %bb.k ], [ %i.ar, %bb.i ], [ %i.bb, %bb.m ], [ %.sroa.0.153, %.lr.ph54 ], [ %i.ac, %bb.c ], [ %i.ah, %bb.e ], [ %i.am, %bb.g ], [ %.sroa.0.0.lcssa, %.preheader ], [ %2, %.lr.ph.preheader ], [ %i.bg, %.lr.ph ], [ %i.x, %bb.n ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.2, ptr %i.u, align 8
  %i.v = icmp ult i64 %.sroa.0.2, %i.c
  br i1 %i.v, label %bb.p, label %.critedge30

.lr.ph11:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.w = phi ptr [ %i.k, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.05110 = phi i64 [ %i.bg, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 8 uses
  %i.x = phi i64 [ %i.bh, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.z = load i8, ptr %i.y, align 1, !noundef !19
  %i.aa = add i8 %i.z, -58
  %i.ab = icmp ult i8 %i.aa, -10
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph11
  %i.ac = add i64 %.sroa.0.05110, 1
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !19
  %i.af = add i8 %i.ae, -58
  %i.ag = icmp ult i8 %i.af, -10
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = add i64 %.sroa.0.05110, 2
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !19
  %i.ak = add i8 %i.aj, -58
  %i.al = icmp ult i8 %i.ak, -10
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = add i64 %.sroa.0.05110, 3
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ao = load i8, ptr %i.an, align 1, !noundef !19
  %i.ap = add i8 %i.ao, -58
  %i.aq = icmp ult i8 %i.ap, -10
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = add i64 %.sroa.0.05110, 4
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  %i.at = load i8, ptr %i.as, align 1, !noundef !19
  %i.au = add i8 %i.at, -58
  %i.av = icmp ult i8 %i.au, -10
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = add i64 %.sroa.0.05110, 5
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !19
  %i.az = add i8 %i.ay, -58
  %i.ba = icmp ult i8 %i.az, -10
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = add i64 %.sroa.0.05110, 6
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 7
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !19
  %i.be = add i8 %i.bd, -58
  %i.bf = icmp ult i8 %i.be, -10
  br i1 %i.bf, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = add i64 %.sroa.0.05110, 8               ; 4 uses
  %i.bh = add i64 %.sroa.0.05110, 15              ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.c
  br i1 %i.bi, label %.lr.ph, label %.preheader

bb.p:                                             ; preds = %.critedge
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %.sroa.0.2
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !19
  switch i8 %i.bk, label %.critedge30 [
    i8 69, label %bb.q
    i8 101, label %bb.q
  ]

.critedge30:                                      ; preds = %.critedge.thread, %.critedge, %bb.p
  %.sroa.0.273 = phi i64 [ %i.c, %.critedge.thread ], [ %.sroa.0.2, %.critedge ], [ %.sroa.0.2, %bb.p ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602950)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !602950, !noalias !602951, !noundef !19 ; 2 uses
  %i.bn = sub nuw i64 %.sroa.0.273, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !602952
  call void @"_ZN11malachite_q10conversion6string15from_sci_string106_$LT$impl$u20$malachite_base..num..conversion..traits..FromSciString$u20$for$u20$malachite_q..Rational$GT$28from_sci_string_with_options17h73505755d7fc0e29E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bo, i64 noundef %i.bn, i8 noundef 4, i8 noundef 10), !noalias !602953
  %i.bp = load i64, ptr %i.a, align 8, !range !34, !noalias !602952, !noundef !19 ; 2 uses
  %.not.i.i.not = icmp eq i64 %i.bp, -9223372036854775807
  br i1 %.not.i.i.not, label %bb.t, label %bb.s

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.bq = add nuw i64 %.sroa.0.2, 1
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state11617he296a4053fe18449E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.bq)
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.q
  ret void

bb.s:                                             ; preds = %.critedge30
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !602954
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !602954
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.533.sroa.7.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.sroa.7.0..sroa.533.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.533.sroa.4.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load <2 x i64>, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !602954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602952
  store i64 %i.bp, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.533.0..sroa_idx, align 8
  store <2 x i64> %i.br, ptr %.sroa.533.sroa.4.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  %.sroa.533.sroa.6.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.10.0.copyload, ptr %.sroa.533.sroa.6.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  br label %bb.u

bb.t:                                             ; preds = %.critedge30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602952
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink.i.i.sink = phi i64 [ 167, %bb.t ], [ 2, %bb.s ]
  store i64 %.sink.i.i.sink, ptr %0, align 8
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state12217h4f2033c340cd9fabE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 5 uses
  %i.d = add i64 %2, 7                            ; 2 uses
  %i.e = icmp ult i64 %i.d, %i.c
  %.pre.pre = load ptr, ptr %1, align 8           ; 4 uses
  br i1 %i.e, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %2 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noundef !19
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @10288, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !19
  %i.k = and i8 %i.j, 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.lr.ph11

.preheader:                                       ; preds = %bb.s, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.cv, %bb.s ] ; 3 uses
  %i.m = icmp ult i64 %.sroa.0.0.lcssa, %i.c
  br i1 %i.m, label %.lr.ph47, label %.loopexit

.lr.ph:                                           ; preds = %bb.s
  %i.n = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.cv ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !noundef !19
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @10288, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noundef !19
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %.loopexit, label %.lr.ph11

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %bb.f, %.lr.ph47, %.lr.ph.preheader, %.preheader, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q
  %.sroa.0.2 = phi i64 [ %i.cn, %bb.q ], [ %i.cf, %bb.o ], [ %2, %.lr.ph.preheader ], [ %i.az, %bb.g ], [ %i.bh, %bb.i ], [ %i.bp, %bb.k ], [ %i.bx, %bb.m ], [ %.sroa.0.0.lcssa, %.preheader ], [ %.sroa.0.146, %.lr.ph47 ], [ %i.c, %bb.f ], [ %i.cv, %.lr.ph ], [ %i.ar, %bb.r ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.2, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602960)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !602961
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !602960, !noalias !602962, !noundef !19 ; 2 uses
  %i.x = sub nuw i64 %.sroa.0.2, %i.w             ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.w ; 3 uses
  %.not.i367.i = icmp ugt i64 %i.x, 2
  br i1 %.not.i367.i, label %bb.b, label %.split.i.i

.split.i.i:                                       ; preds = %.loopexit
  %i.z = icmp eq i64 %i.x, 2
  br i1 %i.z, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.loopexit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !602963, !noalias !602960, !noundef !19
  %i.ac = icmp sgt i8 %i.ab, -65
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.split.i.i
  %i.ad = add i64 %i.x, -2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  call void @_ZN18nickel_lang_parser5utils17parse_number_base17h2d77829247e44be1E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, i8 noundef 16, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.ad), !noalias !602960
  %i.af = load i64, ptr %i.a, align 8, !range !34, !noalias !602961, !noundef !19 ; 2 uses
  %i.ag = icmp eq i64 %i.af, -9223372036854775807
  br i1 %i.ag, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17h45c7162dd8624aadE.exit", label %bb.e

bb.d:                                             ; preds = %bb.b, %.split.i.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef %i.x, i64 noundef 2, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10258) #52, !noalias !602960
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.4349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4349.0..sroa_idx.i, i64 48, i1 false), !noalias !602960
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17h45c7162dd8624aadE.exit"

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17h45c7162dd8624aadE.exit": ; preds = %bb.c, %bb.e
  %.sink.i386.i = phi i64 [ 3, %bb.e ], [ 168, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602961
  %i.ah = tail call i64 @llvm.usub.sat.i64(i64 %.sink.i386.i, i64 166)
  switch i64 %i.ah, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
  ]

.lr.ph47:                                         ; preds = %.preheader, %bb.f
  %.sroa.0.146 = phi i64 [ %i.ap, %bb.f ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %.sroa.0.146
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !19
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @10288, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noundef !19
  %i.an = and i8 %i.am, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph47
  %i.ap = add nuw i64 %.sroa.0.146, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph47

.lr.ph11:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.aq = phi ptr [ %i.n, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.04410 = phi i64 [ %i.cv, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 8 uses
  %i.ar = phi i64 [ %i.cw, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.at = load i8, ptr %i.as, align 1, !noundef !19
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @10288, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noundef !19
  %i.ax = and i8 %i.aw, 1
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph11
  %i.az = add i64 %.sroa.0.04410, 1
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !19
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @10288, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noundef !19
  %i.bf = and i8 %i.be, 1
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bh = add i64 %.sroa.0.04410, 2
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !19
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @10288, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !19
  %i.bn = and i8 %i.bm, 1
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bp = add i64 %.sroa.0.04410, 3
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.br = load i8, ptr %i.bq, align 1, !noundef !19
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @10288, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !19
  %i.bv = and i8 %i.bu, 1
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = add i64 %.sroa.0.04410, 4
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.aq, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !noundef !19
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @10288, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !19
  %i.cd = and i8 %i.cc, 1
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cf = add i64 %.sroa.0.04410, 5
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aq, i64 6
  %i.ch = load i8, ptr %i.cg, align 1, !noundef !19
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @10288, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !19
  %i.cl = and i8 %i.ck, 1
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cn = add i64 %.sroa.0.04410, 6
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.aq, i64 7
  %i.cp = load i8, ptr %i.co, align 1, !noundef !19
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @10288, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !19
  %i.ct = and i8 %i.cs, 1
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = add i64 %.sroa.0.04410, 8               ; 4 uses
  %i.cw = add i64 %.sroa.0.04410, 15              ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.c
  br i1 %i.cx, label %.lr.ph, label %.preheader

default.unreachable:                              ; preds = %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17h45c7162dd8624aadE.exit"
  unreachable

bb.t:                                             ; preds = %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17h45c7162dd8624aadE.exit"
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 %.sink.i386.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.w

bb.u:                                             ; preds = %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17h45c7162dd8624aadE.exit"
  store i64 167, ptr %0, align 8
  br label %bb.w

bb.v:                                             ; preds = %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17h45c7162dd8624aadE.exit"
  store i64 167, ptr %0, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state12317h79f9a53b6c06bf73E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 5 uses
  %i.d = add i64 %2, 7                            ; 2 uses
  %i.e = icmp ult i64 %i.d, %i.c
  %.pre.pre = load ptr, ptr %1, align 8           ; 4 uses
  br i1 %i.e, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %2 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noundef !19
  %i.h = and i8 %i.g, -8
  %.not2610 = icmp eq i8 %i.h, 48
  br i1 %.not2610, label %.lr.ph12, label %.loopexit

.preheader:                                       ; preds = %bb.r, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.bf, %bb.r ] ; 3 uses
  %i.i = icmp ult i64 %.sroa.0.0.lcssa, %i.c
  br i1 %i.i, label %.lr.ph56, label %.loopexit

.lr.ph:                                           ; preds = %bb.r
  %i.j = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.bf ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !noundef !19
  %i.l = and i8 %i.k, -8
  %.not26 = icmp eq i8 %i.l, 48
  br i1 %.not26, label %.lr.ph12, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.q, %bb.e, %.lr.ph56, %.lr.ph.preheader, %.preheader, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p
  %.sroa.0.2 = phi i64 [ %i.bb, %bb.p ], [ %i.ax, %bb.n ], [ %2, %.lr.ph.preheader ], [ %i.ah, %bb.f ], [ %i.al, %bb.h ], [ %i.ap, %bb.j ], [ %i.at, %bb.l ], [ %.sroa.0.0.lcssa, %.preheader ], [ %.sroa.0.155, %.lr.ph56 ], [ %i.c, %bb.e ], [ %i.bf, %.lr.ph ], [ %i.ad, %bb.q ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.2, ptr %i.m, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602969)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !602970
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !602969, !noalias !602971, !noundef !19 ; 2 uses
  %i.p = sub nuw i64 %.sroa.0.2, %i.o             ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.o ; 3 uses
  %.not.i369.i = icmp ugt i64 %i.p, 2
  br i1 %.not.i369.i, label %bb.b, label %.split.i370.i

.split.i370.i:                                    ; preds = %.loopexit
  %i.r = icmp eq i64 %i.p, 2
  br i1 %i.r, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.loopexit
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !602972, !noalias !602969, !noundef !19
  %i.u = icmp sgt i8 %i.t, -65
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.split.i370.i
  %i.v = add i64 %i.p, -2
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  call void @_ZN18nickel_lang_parser5utils17parse_number_base17h2d77829247e44be1E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, i8 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.w, i64 noundef %i.v), !noalias !602969
  %i.x = load i64, ptr %i.a, align 8, !range !34, !noalias !602970, !noundef !19 ; 2 uses
  %.not37 = icmp eq i64 %i.x, -9223372036854775807
  br i1 %.not37, label %bb.t, label %bb.s

bb.d:                                             ; preds = %bb.b, %.split.i370.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.q, i64 noundef %i.p, i64 noundef 2, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10259) #52, !noalias !602969
  unreachable

.lr.ph56:                                         ; preds = %.preheader, %bb.e
  %.sroa.0.155 = phi i64 [ %i.ab, %bb.e ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %.sroa.0.155
  %i.z = load i8, ptr %i.y, align 1, !noundef !19
  %i.aa = and i8 %i.z, -8
  %.not = icmp eq i8 %i.aa, 48
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph56
  %i.ab = add nuw i64 %.sroa.0.155, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph56

.lr.ph12:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ac = phi ptr [ %i.j, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.05311 = phi i64 [ %i.bf, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 8 uses
  %i.ad = phi i64 [ %i.bg, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !noundef !19
  %i.ag = and i8 %i.af, -8
  %.not27 = icmp eq i8 %i.ag, 48
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph12
  %i.ah = add i64 %.sroa.0.05311, 1
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !19
  %i.ak = and i8 %i.aj, -8
  %.not28 = icmp eq i8 %i.ak, 48
  br i1 %.not28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = add i64 %.sroa.0.05311, 2
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.an = load i8, ptr %i.am, align 1, !noundef !19
  %i.ao = and i8 %i.an, -8
  %.not29 = icmp eq i8 %i.ao, 48
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = add i64 %.sroa.0.05311, 3
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ar = load i8, ptr %i.aq, align 1, !noundef !19
  %i.as = and i8 %i.ar, -8
  %.not30 = icmp eq i8 %i.as, 48
  br i1 %.not30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = add i64 %.sroa.0.05311, 4
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 5
  %i.av = load i8, ptr %i.au, align 1, !noundef !19
  %i.aw = and i8 %i.av, -8
  %.not31 = icmp eq i8 %i.aw, 48
  br i1 %.not31, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = add i64 %.sroa.0.05311, 5
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.az = load i8, ptr %i.ay, align 1, !noundef !19
  %i.ba = and i8 %i.az, -8
  %.not32 = icmp eq i8 %i.ba, 48
  br i1 %.not32, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = add i64 %.sroa.0.05311, 6
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 7
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !19
  %i.be = and i8 %i.bd, -8
  %.not33 = icmp eq i8 %i.be, 48
  br i1 %.not33, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.bf = add i64 %.sroa.0.05311, 8               ; 4 uses
  %i.bg = add i64 %.sroa.0.05311, 15              ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.c
  br i1 %i.bh, label %.lr.ph, label %.preheader

bb.s:                                             ; preds = %bb.c
  %.sroa.4355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.536.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4355.0..sroa_idx.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602970
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602970
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink.i389.i.sink = phi i64 [ 167, %bb.t ], [ 4, %bb.s ]
  store i64 %.sink.i389.i.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state12417hb883c7452ef29994E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 5 uses
  %i.d = add i64 %2, 7                            ; 2 uses
  %i.e = icmp ult i64 %i.d, %i.c
  %.pre.pre = load ptr, ptr %1, align 8           ; 4 uses
  br i1 %i.e, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %2 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noundef !19
  %i.h = add i8 %i.g, -50
  %i.i = icmp ult i8 %i.h, -2
  br i1 %i.i, label %.loopexit, label %.lr.ph11

.preheader:                                       ; preds = %bb.s, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.br, %bb.s ] ; 3 uses
  %i.j = icmp ult i64 %.sroa.0.0.lcssa, %i.c
  br i1 %i.j, label %.lr.ph47, label %.loopexit

.lr.ph:                                           ; preds = %bb.s
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.br ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !noundef !19
  %i.m = add i8 %i.l, -50
  %i.n = icmp ult i8 %i.m, -2
  br i1 %i.n, label %.loopexit, label %.lr.ph11

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %bb.f, %.lr.ph47, %.lr.ph.preheader, %.preheader, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q
  %.sroa.0.2 = phi i64 [ %i.bm, %bb.q ], [ %i.bh, %bb.o ], [ %2, %.lr.ph.preheader ], [ %i.an, %bb.g ], [ %i.as, %bb.i ], [ %i.ax, %bb.k ], [ %i.bc, %bb.m ], [ %.sroa.0.0.lcssa, %.preheader ], [ %.sroa.0.146, %.lr.ph47 ], [ %i.c, %bb.f ], [ %i.br, %.lr.ph ], [ %i.ai, %bb.r ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.2, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602978)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !602979
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !602978, !noalias !602980, !noundef !19 ; 2 uses
  %i.r = sub nuw i64 %.sroa.0.2, %i.q             ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.q ; 3 uses
  %.not.i374.i = icmp ugt i64 %i.r, 2
  br i1 %.not.i374.i, label %bb.b, label %.split.i375.i

.split.i375.i:                                    ; preds = %.loopexit
  %i.t = icmp eq i64 %i.r, 2
  br i1 %i.t, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.loopexit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !602981, !noalias !602978, !noundef !19
  %i.w = icmp sgt i8 %i.v, -65
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.split.i375.i
  %i.x = add i64 %i.r, -2
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  call void @_ZN18nickel_lang_parser5utils17parse_number_base17h2d77829247e44be1E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, i8 noundef 2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef %i.x), !noalias !602978
  %i.z = load i64, ptr %i.a, align 8, !range !34, !noalias !602979, !noundef !19 ; 2 uses
  %i.aa = icmp eq i64 %i.z, -9223372036854775807
  br i1 %i.aa, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17h45c7162dd8624aadE.exit", label %bb.e

bb.d:                                             ; preds = %bb.b, %.split.i375.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.s, i64 noundef %i.r, i64 noundef 2, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10260) #52, !noalias !602978
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.4361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4361.0..sroa_idx.i, i64 48, i1 false), !noalias !602978
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17h45c7162dd8624aadE.exit"

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17h45c7162dd8624aadE.exit": ; preds = %bb.c, %bb.e
  %.sink.i392.i = phi i64 [ 5, %bb.e ], [ 168, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602979
  %i.ab = tail call i64 @llvm.usub.sat.i64(i64 %.sink.i392.i, i64 166)
  switch i64 %i.ab, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
  ]

.lr.ph47:                                         ; preds = %.preheader, %bb.f
  %.sroa.0.146 = phi i64 [ %i.ag, %bb.f ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %.sroa.0.146
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !19
  %i.ae = add i8 %i.ad, -50
  %i.af = icmp ult i8 %i.ae, -2
  br i1 %i.af, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph47
  %i.ag = add nuw i64 %.sroa.0.146, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph47

.lr.ph11:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ah = phi ptr [ %i.k, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.04410 = phi i64 [ %i.br, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 8 uses
  %i.ai = phi i64 [ %i.bs, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !19
  %i.al = add i8 %i.ak, -50
  %i.am = icmp ult i8 %i.al, -2
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph11
  %i.an = add i64 %.sroa.0.04410, 1
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !19
  %i.aq = add i8 %i.ap, -50
  %i.ar = icmp ult i8 %i.aq, -2
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = add i64 %.sroa.0.04410, 2
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %i.au = load i8, ptr %i.at, align 1, !noundef !19
  %i.av = add i8 %i.au, -50
  %i.aw = icmp ult i8 %i.av, -2
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = add i64 %.sroa.0.04410, 3
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !noundef !19
  %i.ba = add i8 %i.az, -50
  %i.bb = icmp ult i8 %i.ba, -2
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = add i64 %.sroa.0.04410, 4
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !noundef !19
  %i.bf = add i8 %i.be, -50
  %i.bg = icmp ult i8 %i.bf, -2
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = add i64 %.sroa.0.04410, 5
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !19
  %i.bk = add i8 %i.bj, -50
  %i.bl = icmp ult i8 %i.bk, -2
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = add i64 %.sroa.0.04410, 6
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !19
  %i.bp = add i8 %i.bo, -50
  %i.bq = icmp ult i8 %i.bp, -2
  br i1 %i.bq, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = add i64 %.sroa.0.04410, 8               ; 4 uses
  %i.bs = add i64 %.sroa.0.04410, 15              ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.c
  br i1 %i.bt, label %.lr.ph, label %.preheader

default.unreachable:                              ; preds = %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17h45c7162dd8624aadE.exit"
  unreachable

bb.t:                                             ; preds = %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17h45c7162dd8624aadE.exit"
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 %.sink.i392.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.w

bb.u:                                             ; preds = %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17h45c7162dd8624aadE.exit"
  store i64 167, ptr %0, align 8
  br label %bb.w

bb.v:                                             ; preds = %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17h45c7162dd8624aadE.exit"
  store i64 167, ptr %0, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state12917h4c14cffd630ea8adE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 5 uses
  %i.c = add i64 %2, 7                            ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %.pre.pre = load ptr, ptr %1, align 8           ; 4 uses
  br i1 %i.d, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %2 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !noundef !19
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @10262, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !19
  %i.j = and i8 %i.i, 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph11

.preheader:                                       ; preds = %bb.q, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.cq, %bb.q ] ; 3 uses
  %i.l = icmp ult i64 %.sroa.0.0.lcssa, %i.b
  br i1 %i.l, label %.lr.ph49, label %.loopexit

.lr.ph:                                           ; preds = %bb.q
  %i.m = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.cq ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noundef !19
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @10262, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !noundef !19
  %i.r = and i8 %i.q, 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %.loopexit, label %.lr.ph11

.loopexit:                                        ; preds = %.lr.ph, %bb.p, %bb.d, %.lr.ph49, %.lr.ph.preheader, %.preheader, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o
  %.sroa.0.2 = phi i64 [ %i.ci, %bb.o ], [ %i.ca, %bb.m ], [ %2, %.lr.ph.preheader ], [ %i.au, %bb.e ], [ %i.bc, %bb.g ], [ %i.bk, %bb.i ], [ %i.bs, %bb.k ], [ %.sroa.0.0.lcssa, %.preheader ], [ %.sroa.0.148, %.lr.ph49 ], [ %i.b, %bb.d ], [ %i.cq, %.lr.ph ], [ %i.am, %bb.p ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.2, ptr %i.t, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602988)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !602988, !noalias !602989, !noundef !19 ; 2 uses
  %i.w = sub nuw i64 %.sroa.0.2, %i.v             ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.v ; 3 uses
  %i.y = icmp ult i64 %i.w, 2
  br i1 %i.y, label %.split3.i.i, label %bb.b

.split3.i.i:                                      ; preds = %.loopexit
  %i.z = icmp eq i64 %i.w, 1
  br i1 %i.z, label %bb.r, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !602990, !noalias !602991, !noundef !19
  %i.ac = icmp sgt i8 %i.ab, -65
  br i1 %i.ac, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b, %.split3.i.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.x, i64 noundef %i.w, i64 noundef 0, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10261) #52, !noalias !602988
  unreachable

.lr.ph49:                                         ; preds = %.preheader, %bb.d
  %.sroa.0.148 = phi i64 [ %i.ak, %bb.d ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %.sroa.0.148
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !19
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @10262, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !19
  %i.ai = and i8 %i.ah, 8
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph49
  %i.ak = add nuw i64 %.sroa.0.148, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph49

.lr.ph11:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.al = phi ptr [ %i.m, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.04610 = phi i64 [ %i.cq, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 8 uses
  %i.am = phi i64 [ %i.cr, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !noundef !19
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @10262, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !noundef !19
  %i.as = and i8 %i.ar, 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph11
  %i.au = add i64 %.sroa.0.04610, 1
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph11
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !noundef !19
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @10262, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !19
  %i.ba = and i8 %i.az, 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = add i64 %.sroa.0.04610, 2
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !noundef !19
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @10262, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !19
  %i.bi = and i8 %i.bh, 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = add i64 %.sroa.0.04610, 3
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !19
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @10262, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !19
  %i.bq = and i8 %i.bp, 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = add i64 %.sroa.0.04610, 4
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.al, i64 5
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !19
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @10262, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !19
  %i.by = and i8 %i.bx, 8
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ca = add i64 %.sroa.0.04610, 5
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !19
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @10262, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !19
  %i.cg = and i8 %i.cf, 8
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ci = add i64 %.sroa.0.04610, 6
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %i.al, i64 7
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !19
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @10262, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !19
  %i.co = and i8 %i.cn, 8
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = add i64 %.sroa.0.04610, 8               ; 4 uses
  %i.cr = add i64 %.sroa.0.04610, 15              ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.b
  br i1 %i.cs, label %.lr.ph, label %.preheader

bb.r:                                             ; preds = %.split3.i.i, %bb.b
  %i.ct = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.cu = add i64 %i.w, -1
  store i64 6, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cu, ptr %.sroa.529.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state14517hd0a94652ada7be5aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 13 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !19, !align !18 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.t, %bb.a
  %.tr147 = phi i64 [ %2, %bb.a ], [ %i.cv, %bb.t ] ; 5 uses
  %i.e = add i64 %.tr147, 7                       ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %tailrecurse
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.tr147 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !noundef !19
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @10288, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !noundef !19
  %i.l = and i8 %i.k, 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.critedge, label %.lr.ph193

.preheader:                                       ; preds = %bb.o, %tailrecurse
  %.sroa.0.0.lcssa = phi i64 [ %.tr147, %tailrecurse ], [ %i.ca, %bb.o ] ; 3 uses
  %i.n = icmp ult i64 %.sroa.0.0.lcssa, %i.b
  br i1 %i.n, label %.lr.ph116, label %.critedge

bb.b:                                             ; preds = %bb.o
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ca ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noundef !19
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @10288, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noundef !19
  %i.t = and i8 %i.s, 8
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %.critedge, label %.lr.ph193

.lr.ph193:                                        ; preds = %.lr.ph, %bb.b
  %i.v = phi ptr [ %i.o, %bb.b ], [ %i.g, %.lr.ph ] ; 7 uses
  %.sroa.0.0113192 = phi i64 [ %i.ca, %bb.b ], [ %.tr147, %.lr.ph ] ; 8 uses
  %i.w = phi i64 [ %i.cb, %bb.b ], [ %i.e, %.lr.ph ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.y = load i8, ptr %i.x, align 1, !noundef !19
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @10288, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !19
  %i.ac = and i8 %i.ab, 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph193
  %i.ae = add i64 %.sroa.0.0113192, 1
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph193
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !noundef !19
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @10288, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !19
  %i.ak = and i8 %i.aj, 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = add i64 %.sroa.0.0113192, 2
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !noundef !19
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @10288, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !noundef !19
  %i.as = and i8 %i.ar, 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = add i64 %.sroa.0.0113192, 3
end_hunk_9
begin_hunk_10_@"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state22817hc5979b89818900b8E":bb.a
.lr.ph26:                                         ; preds = %.lr.ph106.preheader, %.lr.ph106
  %i.ag = phi ptr [ %i.z, %.lr.ph106 ], [ %i.w, %.lr.ph106.preheader ] ; 7 uses
  %.sroa.0.0.i10525 = phi i64 [ %i.bc, %.lr.ph106 ], [ %i.d, %.lr.ph106.preheader ] ; 8 uses
  %i.ah = phi i64 [ %i.bd, %.lr.ph106 ], [ %i.u, %.lr.ph106.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !603578, !noundef !19
  %.not28.i = icmp eq i8 %i.aj, 95
  br i1 %.not28.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph26
  %i.ak = add i64 %.sroa.0.0.i10525, 1
  br label %.critedge.i

bb.j:                                             ; preds = %.lr.ph26
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.am = load i8, ptr %i.al, align 1, !noalias !603578, !noundef !19
  %.not29.i = icmp eq i8 %i.am, 95
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add i64 %.sroa.0.0.i10525, 2
  br label %.critedge.i

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !603578, !noundef !19
  %.not30.i = icmp eq i8 %i.ap, 95
  br i1 %.not30.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add i64 %.sroa.0.0.i10525, 3
  br label %.critedge.i

bb.n:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !noalias !603578, !noundef !19
  %.not31.i = icmp eq i8 %i.as, 95
  br i1 %.not31.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = add i64 %.sroa.0.0.i10525, 4
  br label %.critedge.i

bb.p:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 5
  %i.av = load i8, ptr %i.au, align 1, !noalias !603578, !noundef !19
  %.not32.i = icmp eq i8 %i.av, 95
  br i1 %.not32.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add i64 %.sroa.0.0.i10525, 5
  br label %.critedge.i

bb.r:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !603578, !noundef !19
  %.not33.i = icmp eq i8 %i.ay, 95
  br i1 %.not33.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = add i64 %.sroa.0.0.i10525, 6
  br label %.critedge.i

bb.t:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !603578, !noundef !19
  %.not34.i = icmp eq i8 %i.bb, 95
  br i1 %.not34.i, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %bb.t
  %i.bc = add i64 %.sroa.0.0.i10525, 8            ; 4 uses
  %i.bd = add i64 %.sroa.0.0.i10525, 15           ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.b
  br i1 %i.be, label %.lr.ph106, label %.preheader

bb.v:                                             ; preds = %.critedge.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre, i64 %.sroa.0.2.i
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !603578, !noundef !19
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @10262, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !603578, !noundef !19
  %i.bk = and i8 %i.bj, 32
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %.critedge36.i, label %bb.y

.critedge36.i:                                    ; preds = %bb.h, %bb.v, %.critedge.i
  %.sroa.0.2.i148 = phi i64 [ %.sroa.0.2.i, %.critedge.i ], [ %.sroa.0.2.i, %bb.v ], [ %i.b, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603579)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !603579, !noalias !603580, !noundef !19
  %i.bo = add i64 %i.bn, 1
  %.sroa.0.0.i.i20 = tail call noundef i64 @llvm.umax.i64(i64 %i.bo, i64 %.sroa.0.2.i148) ; 2 uses
  %i.bp = icmp eq i64 %.sroa.0.0.i.i20, 0
  br i1 %i.bp, label %.loopexit80, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.critedge36.i, %bb.x
  %.sroa.02.0444.i22 = phi i64 [ %i.bu, %bb.x ], [ %.sroa.0.0.i.i20, %.critedge36.i ] ; 5 uses
  %.not362.i23 = icmp ult i64 %.sroa.02.0444.i22, %i.b
  br i1 %.not362.i23, label %bb.w, label %.split.i24

.split.i24:                                       ; preds = %.lr.ph.i21
  %i.bq = icmp eq i64 %.sroa.02.0444.i22, %i.b
  br i1 %i.bq, label %.loopexit80, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i21
  %i.br = getelementptr inbounds nuw i8, ptr %.pre, i64 %.sroa.02.0444.i22
  %i.bs = load i8, ptr %i.br, align 1, !noalias !603581, !noundef !19
  %i.bt = icmp sgt i8 %i.bs, -65
  br i1 %i.bt, label %.loopexit80, label %bb.x

bb.x:                                             ; preds = %bb.w, %.split.i24
  %i.bu = add i64 %.sroa.02.0444.i22, 1           ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.loopexit80, label %.lr.ph.i21

bb.y:                                             ; preds = %bb.v
  %i.bw = add nuw i64 %.sroa.0.2.i, 1
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state12917h4c14cffd630ea8adE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bw)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state51817h4f147c38541e9996E.exit"

.loopexit80:                                      ; preds = %.split.i24, %bb.w, %bb.x, %.critedge36.i
  %.sroa.02.0.lcssa.i25 = phi i64 [ 0, %.critedge36.i ], [ %.sroa.02.0444.i22, %bb.w ], [ 0, %bb.x ], [ %i.b, %.split.i24 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.02.0.lcssa.i25, ptr %i.bx, align 8, !alias.scope !603579, !noalias !603580
  store i64 167, ptr %0, align 8, !alias.scope !603577, !noalias !603582
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state51817h4f147c38541e9996E.exit"

bb.z:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603583)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i64 %i.d, ptr %i.by, align 8, !alias.scope !603583, !noalias !603584
  %i.bz = icmp ult i64 %i.d, %i.b
  br i1 %i.bz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !603585, !noundef !19 ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 37
  br i1 %i.cc, label %bb.ae, label %bb.ax

bb.ab:                                            ; preds = %bb.ax, %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603586)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !603586, !noalias !603587, !noundef !19 ; 2 uses
  %i.cf = sub nuw i64 %i.d, %i.ce                 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ce ; 3 uses
  %i.ch = icmp ult i64 %i.cf, 2
  br i1 %i.ch, label %.split3.i.i, label %bb.ac

.split3.i.i:                                      ; preds = %bb.ab
  %i.ci = icmp eq i64 %i.cf, 1
  br i1 %i.ci, label %bb.az, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !603588, !noalias !603589, !noundef !19
  %i.cl = icmp sgt i8 %i.ck, -65
  br i1 %i.cl, label %bb.az, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split3.i.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cg, i64 noundef %i.cf, i64 noundef 0, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10261) #52, !noalias !603590
  unreachable

bb.ae:                                            ; preds = %bb.aa
  %i.cm = add nuw i64 %2, 2                       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603591)
  %i.cn = add i64 %2, 9                           ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.b
  br i1 %i.co, label %.lr.ph.preheader, label %.preheader82

.lr.ph.preheader:                                 ; preds = %bb.ae
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.cm ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !603592, !noundef !19
  %.not30.i3220 = icmp eq i8 %i.cq, 37
  br i1 %.not30.i3220, label %.lr.ph22, label %.loopexit83

.preheader82:                                     ; preds = %bb.as, %bb.ae
  %.sroa.0.0.i27.lcssa = phi i64 [ %i.cm, %bb.ae ], [ %i.du, %bb.as ] ; 3 uses
  %i.cr = icmp ult i64 %.sroa.0.0.i27.lcssa, %i.b
  br i1 %i.cr, label %.lr.ph101, label %.loopexit83

.lr.ph:                                           ; preds = %bb.as
  %i.cs = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.du ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !noalias !603592, !noundef !19
  %.not30.i32 = icmp eq i8 %i.ct, 37
  br i1 %.not30.i32, label %.lr.ph22, label %.loopexit83

.loopexit83:                                      ; preds = %.lr.ph, %bb.ar, %.lr.ph101, %.lr.ph.preheader, %.preheader82, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag
  %.sroa.0.2.i29 = phi i64 [ %i.dr, %bb.aq ], [ %i.do, %bb.ao ], [ %.sroa.0.1.i28100, %.lr.ph101 ], [ %i.dc, %bb.ag ], [ %i.df, %bb.ai ], [ %i.di, %bb.ak ], [ %i.dl, %bb.am ], [ %.sroa.0.0.i27.lcssa, %.preheader82 ], [ %i.cm, %.lr.ph.preheader ], [ %i.du, %.lr.ph ], [ %i.cz, %bb.ar ] ; 3 uses
  %i.cu = icmp ult i64 %.sroa.0.2.i29, %i.b
  br i1 %i.cu, label %bb.at, label %.critedge.i30

.lr.ph101:                                        ; preds = %.preheader82, %bb.af
  %.sroa.0.1.i28100 = phi i64 [ %i.cx, %bb.af ], [ %.sroa.0.0.i27.lcssa, %.preheader82 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre, i64 %.sroa.0.1.i28100
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !603592, !noundef !19
  %.not.i31 = icmp eq i8 %i.cw, 37
  br i1 %.not.i31, label %bb.af, label %.loopexit83

bb.af:                                            ; preds = %.lr.ph101
  %i.cx = add nuw i64 %.sroa.0.1.i28100, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.cx, %i.b
  br i1 %exitcond.not, label %.critedge.i30, label %.lr.ph101

.lr.ph22:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.cy = phi ptr [ %i.cs, %.lr.ph ], [ %i.cp, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.0.i279921 = phi i64 [ %i.du, %.lr.ph ], [ %i.cm, %.lr.ph.preheader ] ; 8 uses
  %i.cz = phi i64 [ %i.dv, %.lr.ph ], [ %i.cn, %.lr.ph.preheader ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.db = load i8, ptr %i.da, align 1, !noalias !603592, !noundef !19
  %.not31.i33 = icmp eq i8 %i.db, 37
  br i1 %.not31.i33, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph22
  %i.dc = add i64 %.sroa.0.0.i279921, 1
  br label %.loopexit83

bb.ah:                                            ; preds = %.lr.ph22
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.de = load i8, ptr %i.dd, align 1, !noalias !603592, !noundef !19
  %.not32.i34 = icmp eq i8 %i.de, 37
  br i1 %.not32.i34, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.df = add i64 %.sroa.0.0.i279921, 2
  br label %.loopexit83

bb.aj:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 3
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !603592, !noundef !19
  %.not33.i35 = icmp eq i8 %i.dh, 37
  br i1 %.not33.i35, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = add i64 %.sroa.0.0.i279921, 3
  br label %.loopexit83

bb.al:                                            ; preds = %bb.aj
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !603592, !noundef !19
  %.not34.i36 = icmp eq i8 %i.dk, 37
  br i1 %.not34.i36, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dl = add i64 %.sroa.0.0.i279921, 4
  br label %.loopexit83

bb.an:                                            ; preds = %bb.al
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 5
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !603592, !noundef !19
  %.not35.i = icmp eq i8 %i.dn, 37
  br i1 %.not35.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.do = add i64 %.sroa.0.0.i279921, 5
  br label %.loopexit83

bb.ap:                                            ; preds = %bb.an
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cy, i64 6
  %i.dq = load i8, ptr %i.dp, align 1, !noalias !603592, !noundef !19
  %.not36.i = icmp eq i8 %i.dq, 37
  br i1 %.not36.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dr = add i64 %.sroa.0.0.i279921, 6
  br label %.loopexit83

bb.ar:                                            ; preds = %bb.ap
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cy, i64 7
  %i.dt = load i8, ptr %i.ds, align 1, !noalias !603592, !noundef !19
  %.not37.i = icmp eq i8 %i.dt, 37
  br i1 %.not37.i, label %bb.as, label %.loopexit83

bb.as:                                            ; preds = %bb.ar
  %i.du = add i64 %.sroa.0.0.i279921, 8           ; 4 uses
  %i.dv = add i64 %.sroa.0.0.i279921, 15          ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.b
  br i1 %i.dw, label %.lr.ph, label %.preheader82

bb.at:                                            ; preds = %.loopexit83
  %i.dx = getelementptr inbounds nuw i8, ptr %.pre, i64 %.sroa.0.2.i29
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !603592, !noundef !19
  %i.dz = icmp eq i8 %i.dy, 34
  br i1 %i.dz, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state55317h3ad3bbb8d68b7b4dE.exit.i", label %.critedge.i30

.critedge.i30:                                    ; preds = %bb.af, %bb.at, %.loopexit83
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603593)
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !603594, !noalias !603595, !noundef !19 ; 2 uses
  %i.ec = sub nuw i64 %i.d, %i.eb                 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.eb ; 3 uses
  %i.ee = icmp ult i64 %i.ec, 2
  br i1 %i.ee, label %.split3.i.i.i, label %bb.au

.split3.i.i.i:                                    ; preds = %.critedge.i30
  %i.ef = icmp eq i64 %i.ec, 1
  br i1 %i.ef, label %bb.aw, label %bb.av

bb.au:                                            ; preds = %.critedge.i30
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !603596, !noalias !603597, !noundef !19
  %i.ei = icmp sgt i8 %i.eh, -65
  br i1 %i.ei, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au, %.split3.i.i.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ed, i64 noundef %i.ec, i64 noundef 0, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10261) #52, !noalias !603598, !inline_history !603569
  unreachable

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state55317h3ad3bbb8d68b7b4dE.exit.i": ; preds = %bb.at
  %i.ej = add nuw i64 %.sroa.0.2.i29, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603599)
  store i64 %i.ej, ptr %i.by, align 8, !alias.scope !603600, !noalias !603601
  store i64 0, ptr %0, align 8, !noalias !603600
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state51817h4f147c38541e9996E.exit"

bb.aw:                                            ; preds = %bb.au, %.split3.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.el = add i64 %i.ec, -1
  store i64 6, ptr %0, align 8, !noalias !603591
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ek, ptr %.sroa.471.0..sroa_idx, align 8, !noalias !603591
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.el, ptr %.sroa.572.0..sroa_idx, align 8, !noalias !603591
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state51817h4f147c38541e9996E.exit"

bb.ax:                                            ; preds = %bb.aa
  %i.em = zext i8 %i.cb to i64
  %i.en = getelementptr inbounds nuw i8, ptr @10262, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !noalias !603585, !noundef !19
  %i.ep = and i8 %i.eo, 8
  %i.eq = icmp eq i8 %i.ep, 0
  br i1 %i.eq, label %bb.ab, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.er = add nuw i64 %2, 2
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state12917h4c14cffd630ea8adE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.er)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state51817h4f147c38541e9996E.exit"

bb.az:                                            ; preds = %.split3.i.i, %bb.ac
  %i.es = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.et = add i64 %i.cf, -1
  store i64 6, ptr %0, align 8, !noalias !603583
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.es, ptr %.sroa.459.0..sroa_idx, align 8, !noalias !603583
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.et, ptr %.sroa.560.0..sroa_idx, align 8, !noalias !603583
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state51817h4f147c38541e9996E.exit"

.loopexit:                                        ; preds = %.split.i, %bb.d, %bb.e, %bb.c
  %.sroa.02.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %.sroa.02.0444.i, %bb.d ], [ 0, %bb.e ], [ %i.b, %.split.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.02.0.lcssa.i, ptr %i.eu, align 8, !alias.scope !603573, !noalias !603574
  store i64 167, ptr %0, align 8
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state51817h4f147c38541e9996E.exit"

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state51817h4f147c38541e9996E.exit": ; preds = %bb.az, %bb.ay, %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state55317h3ad3bbb8d68b7b4dE.exit.i", %bb.aw, %.loopexit80, %bb.y, %bb.f, %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state49617h7814d4b0289667d7E.exit", %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state23317h4d305a994d0cb2fdE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 4 uses
  %i.c = icmp ult i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state23417h0924ca4e535cdd07E.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  %i.f = load i8, ptr %i.e, align 1, !noundef !19
  %i.g = icmp eq i8 %i.f, 97
  br i1 %i.g, label %bb.c, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state23417h0924ca4e535cdd07E.exit"

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %2, 1                        ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.b
  br i1 %i.i, label %bb.d, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state23417h0924ca4e535cdd07E.exit"

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  %i.k = load i8, ptr %i.j, align 1, !noalias !603614, !noundef !19
  %i.l = icmp eq i8 %i.k, 108
  br i1 %i.l, label %bb.e, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state23417h0924ca4e535cdd07E.exit"

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw i64 %2, 2                        ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.b
  br i1 %i.n, label %bb.f, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state23417h0924ca4e535cdd07E.exit"

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noalias !603615, !noundef !19
  %i.q = icmp eq i8 %i.p, 108
  br i1 %i.q, label %bb.g, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state23417h0924ca4e535cdd07E.exit"

bb.g:                                             ; preds = %bb.f
  %i.r = add nuw i64 %2, 3                        ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.b
  br i1 %i.s, label %bb.h, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state23417h0924ca4e535cdd07E.exit"

end_hunk_10
begin_hunk_11_@"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state55717h1dd48d169528dff2E":bb.a
bb.g:                                             ; preds = %bb.f
  %i.r = add nuw i64 %2, 3                        ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.b
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !noalias !604860, !noundef !19
  %i.v = icmp eq i8 %i.u, 105
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = add nuw i64 %2, 4
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state56117h06ee2b6a9f968f1bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.w)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state55817hfa8040abd1ba1fdcE.exit"

bb.j:                                             ; preds = %bb.h, %bb.g
  store i64 41, ptr %0, align 8, !noalias !604861
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state55817hfa8040abd1ba1fdcE.exit"

bb.k:                                             ; preds = %bb.f, %bb.e
  store i64 41, ptr %0, align 8, !noalias !604862
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state55817hfa8040abd1ba1fdcE.exit"

bb.l:                                             ; preds = %bb.d, %bb.c
  store i64 41, ptr %0, align 8, !noalias !604863
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state55817hfa8040abd1ba1fdcE.exit"

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state55817hfa8040abd1ba1fdcE.exit": ; preds = %bb.l, %bb.i, %bb.j, %bb.k, %bb.m
  ret void

bb.m:                                             ; preds = %bb.a, %bb.b
  store i64 41, ptr %0, align 8
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state55817hfa8040abd1ba1fdcE.exit"
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state56117h06ee2b6a9f968f1bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 3 uses
  %i.c = icmp ult i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state56217h9194e3b0ab4eee68E.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  %i.f = load i8, ptr %i.e, align 1, !noundef !19
  %i.g = icmp eq i8 %i.f, 110
  br i1 %i.g, label %bb.c, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state56217h9194e3b0ab4eee68E.exit"

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %2, 1                        ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.b
  br i1 %i.i, label %bb.d, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state56217h9194e3b0ab4eee68E.exit"

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  %i.k = load i8, ptr %i.j, align 1, !noalias !604873, !noundef !19
  %i.l = icmp eq i8 %i.k, 103
  br i1 %i.l, label %bb.e, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state56217h9194e3b0ab4eee68E.exit"

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw i64 %2, 2                        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604874)
  %i.n = icmp ult i64 %i.m, %i.b
  br i1 %i.n, label %bb.f, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state56217h9194e3b0ab4eee68E.exit"

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noalias !604875, !noundef !19
  %i.q = icmp eq i8 %i.p, 37
  br i1 %i.q, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state56417h72267cd1b4d682dfE.exit.i", label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state56217h9194e3b0ab4eee68E.exit"

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state56417h72267cd1b4d682dfE.exit.i": ; preds = %bb.f
  %i.r = add nuw i64 %2, 3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.r, ptr %i.s, align 8, !alias.scope !604876, !noalias !604877
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state56217h9194e3b0ab4eee68E.exit"

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state56217h9194e3b0ab4eee68E.exit": ; preds = %bb.b, %bb.a, %bb.e, %bb.f, %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state56417h72267cd1b4d682dfE.exit.i", %bb.d, %bb.c
  %storemerge34 = phi i64 [ 41, %bb.c ], [ 41, %bb.e ], [ 142, %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state56417h72267cd1b4d682dfE.exit.i" ], [ 41, %bb.f ], [ 41, %bb.d ], [ 41, %bb.a ], [ 41, %bb.b ]
  store i64 %storemerge34, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state57417hce39676c0f087ab0E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 3 uses
  %i.c = icmp ult i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state57517h3e4acb3c8b923f33E.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  %i.f = load i8, ptr %i.e, align 1, !noundef !19
  %i.g = icmp eq i8 %i.f, 110
  br i1 %i.g, label %bb.c, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state57517h3e4acb3c8b923f33E.exit"

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %2, 1                        ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.b
  br i1 %i.i, label %bb.d, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state57517h3e4acb3c8b923f33E.exit"

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  %i.k = load i8, ptr %i.j, align 1, !noalias !604884, !noundef !19
  switch i8 %i.k, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state57517h3e4acb3c8b923f33E.exit" [
    i8 37, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state57517h3e4acb3c8b923f33E.exit.sink.split"
    i8 50, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i64 %2, 2                        ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.b
  br i1 %i.m, label %bb.f, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state57517h3e4acb3c8b923f33E.exit"

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !noalias !604885, !noundef !19
  %i.p = icmp eq i8 %i.o, 37
  br i1 %i.p, label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state57517h3e4acb3c8b923f33E.exit.sink.split", label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state57517h3e4acb3c8b923f33E.exit"

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state57517h3e4acb3c8b923f33E.exit.sink.split": ; preds = %bb.f, %bb.d
  %.sink1 = phi i64 [ 2, %bb.d ], [ 3, %bb.f ]
  %.sink.ph = phi i64 [ 95, %bb.d ], [ 96, %bb.f ]
  %i.q = add nuw i64 %2, %.sink1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.q, ptr %i.r, align 8, !noalias !19
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state57517h3e4acb3c8b923f33E.exit"

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state57517h3e4acb3c8b923f33E.exit": ; preds = %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state57517h3e4acb3c8b923f33E.exit.sink.split", %bb.c, %bb.d, %bb.f, %bb.e, %bb.b, %bb.a
  %.sink = phi i64 [ 41, %bb.e ], [ 41, %bb.b ], [ 41, %bb.d ], [ 41, %bb.a ], [ 41, %bb.c ], [ 41, %bb.f ], [ %.sink.ph, %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state57517h3e4acb3c8b923f33E.exit.sink.split" ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state58017heb61e1acd65418f9E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((24, 32)) %1, i64 noundef %2) unnamed_addr #29 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 6 uses
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %2
  %i.g = load i8, ptr %i.f, align 1, !noundef !19 ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @10262, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !19
  %i.k = and i8 %i.j, 32
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i8 %i.g, 95
  br i1 %i.m, label %bb.e, label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.n = add nuw i64 %2, 1
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8817hd9fb20e9f770e6edE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.n)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8917h926ef61b2ba77a86E.exit"

bb.e:                                             ; preds = %bb.c
  %i.o = add nuw i64 %2, 1                        ; 4 uses
  %i.p = add i64 %2, 8                            ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.c
  br i1 %i.q, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.o ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !noalias !604889, !noundef !19
  %.not.i10 = icmp eq i8 %i.s, 95
  br i1 %.not.i10, label %.lr.ph12, label %.critedge.i

.preheader:                                       ; preds = %bb.s, %bb.e
  %.sroa.0.0.i.lcssa = phi i64 [ %i.o, %bb.e ], [ %i.ax, %bb.s ] ; 3 uses
  %i.t = icmp ult i64 %.sroa.0.0.i.lcssa, %i.c
  br i1 %i.t, label %.lr.ph35, label %.critedge.i

.lr.ph:                                           ; preds = %bb.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ax ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !604889, !noundef !19
  %.not.i = icmp eq i8 %i.v, 95
  br i1 %.not.i, label %.lr.ph12, label %.critedge.i

.lr.ph35:                                         ; preds = %.preheader, %bb.f
  %.sroa.0.1.i34 = phi i64 [ %i.z, %bb.f ], [ %.sroa.0.0.i.lcssa, %.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.1.i34
  %i.x = load i8, ptr %i.w, align 1, !noalias !604889, !noundef !19
  %i.y = icmp eq i8 %i.x, 95
  br i1 %i.y, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph35
  %i.z = add nuw i64 %.sroa.0.1.i34, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.c
  br i1 %exitcond.not, label %.critedge.i.thread, label %.lr.ph35

.critedge.i:                                      ; preds = %.lr.ph, %bb.r, %.lr.ph35, %.lr.ph.preheader, %.preheader, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.ar, %bb.o ], [ %i.ao, %bb.m ], [ %i.au, %bb.q ], [ %.sroa.0.1.i34, %.lr.ph35 ], [ %i.af, %bb.g ], [ %i.ai, %bb.i ], [ %i.al, %bb.k ], [ %.sroa.0.0.i.lcssa, %.preheader ], [ %i.o, %.lr.ph.preheader ], [ %i.ax, %.lr.ph ], [ %i.ac, %bb.r ] ; 3 uses
  %i.aa = icmp ult i64 %.sroa.0.2.i, %i.c
  br i1 %i.aa, label %bb.t, label %.critedge.i.thread

.lr.ph12:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ab = phi ptr [ %i.u, %.lr.ph ], [ %i.r, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.0.i3311 = phi i64 [ %i.ax, %.lr.ph ], [ %i.o, %.lr.ph.preheader ] ; 8 uses
  %i.ac = phi i64 [ %i.ay, %.lr.ph ], [ %i.p, %.lr.ph.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !604889, !noundef !19
  %.not28.i = icmp eq i8 %i.ae, 95
  br i1 %.not28.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph12
  %i.af = add i64 %.sroa.0.0.i3311, 1
  br label %.critedge.i

bb.h:                                             ; preds = %.lr.ph12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !604889, !noundef !19
  %.not29.i = icmp eq i8 %i.ah, 95
  br i1 %.not29.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = add i64 %.sroa.0.0.i3311, 2
  br label %.critedge.i

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !604889, !noundef !19
  %.not30.i = icmp eq i8 %i.ak, 95
  br i1 %.not30.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add i64 %.sroa.0.0.i3311, 3
  br label %.critedge.i

bb.l:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.an = load i8, ptr %i.am, align 1, !noalias !604889, !noundef !19
  %.not31.i = icmp eq i8 %i.an, 95
  br i1 %.not31.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = add i64 %.sroa.0.0.i3311, 4
  br label %.critedge.i

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !604889, !noundef !19
  %.not32.i = icmp eq i8 %i.aq, 95
  br i1 %.not32.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = add i64 %.sroa.0.0.i3311, 5
  br label %.critedge.i

bb.p:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  %i.at = load i8, ptr %i.as, align 1, !noalias !604889, !noundef !19
  %.not33.i = icmp eq i8 %i.at, 95
  br i1 %.not33.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = add i64 %.sroa.0.0.i3311, 6
  br label %.critedge.i

bb.r:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  %i.aw = load i8, ptr %i.av, align 1, !noalias !604889, !noundef !19
  %.not34.i = icmp eq i8 %i.aw, 95
  br i1 %.not34.i, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %bb.r
  %i.ax = add i64 %.sroa.0.0.i3311, 8             ; 4 uses
  %i.ay = add i64 %.sroa.0.0.i3311, 15            ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %.lr.ph, label %.preheader

bb.t:                                             ; preds = %.critedge.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.2.i
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !604889, !noundef !19
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @10262, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !604889, !noundef !19
  %i.bf = and i8 %i.be, 32
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %.critedge.i.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = add nuw i64 %.sroa.0.2.i, 1
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8817hd9fb20e9f770e6edE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bh)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8917h926ef61b2ba77a86E.exit"

.critedge.i.thread:                               ; preds = %bb.f, %bb.t, %.critedge.i
  store i64 55, ptr %0, align 8, !noalias !604890
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8917h926ef61b2ba77a86E.exit"

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8917h926ef61b2ba77a86E.exit": ; preds = %.critedge.i.thread, %bb.u, %bb.v, %bb.d
  ret void

bb.v:                                             ; preds = %bb.a, %bb.c
  store i64 55, ptr %0, align 8
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8917h926ef61b2ba77a86E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state58417h086a073c9e28dee7E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) initializes((24, 32)) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.d = icmp ult i64 %2, %i.c
  %.pre = load ptr, ptr %1, align 8               ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i64 %2, 1                        ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.g = load i8, ptr %i.f, align 1, !noundef !19
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @10282, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !range !27, !noundef !19
  switch i8 %i.j, label %default.unreachable32 [
    i8 0, label %bb.k
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable32:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state317hbcce7281c33d0a42E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.e)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8717h8f8fd76848938211E.exit"

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state417h32089db0d03f1f93E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.e)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8717h8f8fd76848938211E.exit"

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604897)
  store i64 %i.e, ptr %i.a, align 8, !alias.scope !604897, !noalias !604898
  %i.k = icmp ult i64 %i.e, %i.c
  br i1 %i.k, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.e
  %i.m = load i8, ptr %i.l, align 1, !noalias !604899, !noundef !19 ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @10262, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !604899, !noundef !19
  %i.q = and i8 %i.p, 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i8 %i.m, 45
  br i1 %i.s, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.t = add nuw i64 %2, 2
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state317hbcce7281c33d0a42E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.t)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8717h8f8fd76848938211E.exit"

bb.i:                                             ; preds = %bb.g
  %i.u = add nuw i64 %2, 2
  tail call fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex6state417h32089db0d03f1f93E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.u)
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8717h8f8fd76848938211E.exit"

bb.j:                                             ; preds = %bb.g, %bb.e
  store i64 25, ptr %0, align 8, !noalias !604897
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8717h8f8fd76848938211E.exit"

bb.k:                                             ; preds = %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !604900, !noalias !604901, !noundef !19 ; 2 uses
  %i.x = sub nuw i64 %2, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.w
  store i64 1, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %.sroa.522.0..sroa_idx, align 8
  br label %"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8717h8f8fd76848938211E.exit"

"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex7state8717h8f8fd76848938211E.exit": ; preds = %bb.j, %bb.i, %bb.h, %bb.c, %bb.d, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$logos..Logos$GT$3lex8state58817h029f23f49812fba5E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) initializes((24, 32)) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
end_hunk_11
begin_hunk_12_@"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17hfc2329aa9cc03c16E":bb.a
  br label %bb.e

.split:                                           ; preds = %.lr.ph
  %i.i = icmp eq i64 %.sroa.02.030, %i.f
  br i1 %i.i, label %.split._crit_edge, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.02.030
  %i.k = load i8, ptr %i.j, align 1, !noundef !19
  %i.l = icmp sgt i8 %i.k, -65
  br i1 %i.l, label %.split._crit_edge, label %bb.d

bb.d:                                             ; preds = %.split, %bb.c
  %i.m = add i64 %.sroa.02.030, 1                 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.split._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.p, %bb.o, %bb.n, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit20", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit", %bb.g, %bb.f, %.split._crit_edge
  ret void

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !19 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noundef !19
  %i.t = sub nuw i64 %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  tail call fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hfd249acd81853ca9E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.u, i64 noundef %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @264, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @69, i64 noundef 1)
  br label %bb.e

bb.h:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !19 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !19 ; 2 uses
  %i.aa = sub nuw i64 %i.z, %i.x                  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.ac = icmp slt i64 %i.aa, 0
  br i1 %i.ac, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.h
  %i.ad = icmp eq i64 %i.z, %i.x
  br i1 %i.ad, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit", label %bb.i

bb.i:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !607725
  %i.ae = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aa, i64 noundef range(i64 1, 9) 1) #54, !noalias !607725 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit"

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.i ], [ 0, %bb.h ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !607726
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.ae, %bb.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.ab, i64 %i.aa, i1 false), !noalias !607727
  store i64 %i.aa, ptr %0, align 8, !alias.scope !607728
  %.sroa.2.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.2.0..sroa_idx22, align 8, !alias.scope !607728
  %.sroa.3.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aa, ptr %.sroa.3.0..sroa_idx23, align 8, !alias.scope !607728
  br label %bb.e

bb.k:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !19 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !19 ; 2 uses
  %i.al = sub nuw i64 %i.ak, %i.ai                ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.an = icmp slt i64 %i.al, 0
  br i1 %i.an, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15: ; preds = %bb.k
  %i.ao = icmp eq i64 %i.ak, %i.ai
  br i1 %i.ao, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit20", label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !607729
  %i.ap = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, 9) 1) #54, !noalias !607729 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.m, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit20"

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.ph.i.i19 = phi i64 [ 1, %bb.l ], [ 0, %bb.k ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i19, i64 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !607730
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit20": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15, %bb.l
  %.sroa.10.0.i.i16 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15 ], [ %i.ap, %bb.l ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i16, ptr nonnull readonly align 1 %i.am, i64 %i.al, i1 false), !noalias !607731
  store i64 %i.al, ptr %0, align 8, !alias.scope !607732
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i16, ptr %.sroa.228.0..sroa_idx, align 8, !alias.scope !607732
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %.sroa.329.0..sroa_idx, align 8, !alias.scope !607732
  br label %bb.e

bb.n:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noundef !19 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i64, ptr %i.au, align 8, !noundef !19
  %i.aw = sub nuw i64 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aw, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.e

bb.o:                                             ; preds = %bb.a
  %i.ay = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !19 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !19
  %i.bd = sub nuw i64 %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bd, ptr %.sroa.39.0..sroa_idx, align 8
  br label %bb.e

bb.p:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !19 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !19
  %i.bk = sub nuw i64 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %.sroa.211.0..sroa_idx, align 8
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bk, ptr %.sroa.312.0..sroa_idx, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex17hde3b27e2ebcc786aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !19
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state2117h9a40c1cf469d0242E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.b)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state217h47037940b6862730E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #29 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 7 uses
  %i.c = add i64 %2, 7                            ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %.pre.pre.pre = load ptr, ptr %1, align 8       ; 5 uses
  br i1 %i.d, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %2 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !noundef !19
  %.not10 = icmp eq i8 %i.f, 37
  br i1 %.not10, label %.lr.ph12, label %.critedge

.preheader:                                       ; preds = %bb.o, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.am, %bb.o ] ; 3 uses
  %i.g = icmp ult i64 %.sroa.0.0.lcssa, %i.b
  br i1 %i.g, label %.lr.ph70, label %.critedge

.lr.ph:                                           ; preds = %bb.o
  %i.h = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.am ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noundef !19
  %.not = icmp eq i8 %i.i, 37
  br i1 %.not, label %.lr.ph12, label %.critedge

.lr.ph70:                                         ; preds = %.preheader, %bb.b
  %.sroa.0.169 = phi i64 [ %i.m, %bb.b ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %.sroa.0.169
  %i.k = load i8, ptr %i.j, align 1, !noundef !19
  %i.l = icmp eq i8 %i.k, 37
  br i1 %i.l, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph70
  %i.m = add nuw i64 %.sroa.0.169, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.b
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph70

.critedge.thread:                                 ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.q

.critedge:                                        ; preds = %.lr.ph, %bb.n, %.lr.ph70, %.lr.ph.preheader, %.preheader, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.ag, %bb.k ], [ %i.ad, %bb.i ], [ %i.aj, %bb.m ], [ %.sroa.0.169, %.lr.ph70 ], [ %i.u, %bb.c ], [ %i.x, %bb.e ], [ %i.aa, %bb.g ], [ %.sroa.0.0.lcssa, %.preheader ], [ %2, %.lr.ph.preheader ], [ %i.am, %.lr.ph ], [ %i.r, %bb.n ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i64 %.sroa.0.2, ptr %i.o, align 8
  %i.p = icmp ult i64 %.sroa.0.2, %i.b
  br i1 %i.p, label %bb.p, label %bb.q

.lr.ph12:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.q = phi ptr [ %i.h, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.06711 = phi i64 [ %i.am, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 8 uses
  %i.r = phi i64 [ %i.an, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.t = load i8, ptr %i.s, align 1, !noundef !19
  %.not31 = icmp eq i8 %i.t, 37
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph12
  %i.u = add i64 %.sroa.0.06711, 1
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph12
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.w = load i8, ptr %i.v, align 1, !noundef !19
  %.not32 = icmp eq i8 %i.w, 37
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add i64 %.sroa.0.06711, 2
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.z = load i8, ptr %i.y, align 1, !noundef !19
  %.not33 = icmp eq i8 %i.z, 37
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add i64 %.sroa.0.06711, 3
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !19
  %.not34 = icmp eq i8 %i.ac, 37
  br i1 %.not34, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add i64 %.sroa.0.06711, 4
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !noundef !19
  %.not35 = icmp eq i8 %i.af, 37
  br i1 %.not35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add i64 %.sroa.0.06711, 5
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !19
  %.not36 = icmp eq i8 %i.ai, 37
  br i1 %.not36, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = add i64 %.sroa.0.06711, 6
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 7
  %i.al = load i8, ptr %i.ak, align 1, !noundef !19
  %.not37 = icmp eq i8 %i.al, 37
  br i1 %.not37, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.am = add i64 %.sroa.0.06711, 8               ; 4 uses
  %i.an = add i64 %.sroa.0.06711, 15              ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.b
  br i1 %i.ao, label %.lr.ph, label %.preheader

bb.p:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %.sroa.0.2
  %i.aq = load i8, ptr %i.ap, align 1, !noundef !19
  %i.ar = icmp eq i8 %i.aq, 123
  br i1 %i.ar, label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state317h213617f7ca5c0b64E.exit", label %bb.q

"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state317h213617f7ca5c0b64E.exit": ; preds = %bb.p
  %i.as = add nuw i64 %.sroa.0.2, 1               ; 2 uses
  store i64 %i.as, ptr %i.o, align 8, !alias.scope !607736, !noalias !607737
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge, %.critedge.thread, %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state317h213617f7ca5c0b64E.exit"
  %.sroa.0.288.sink = phi i64 [ %i.as, %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state317h213617f7ca5c0b64E.exit" ], [ %i.b, %.critedge.thread ], [ %.sroa.0.2, %.critedge ], [ %.sroa.0.2, %bb.p ]
  %.sink99 = phi i64 [ -9223372036854775804, %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state317h213617f7ca5c0b64E.exit" ], [ -9223372036854775806, %.critedge.thread ], [ -9223372036854775806, %.critedge ], [ -9223372036854775806, %bb.p ]
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noalias !19, !noundef !19 ; 2 uses
  %i.av = sub nuw i64 %.sroa.0.288.sink, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.au
  store i64 %.sink99, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.av, ptr %.sroa.542.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state417h4d302f0f0ac55c82E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((24, 32)) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 8 uses
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i64 %2, 1                        ; 15 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %2
  %i.h = load i8, ptr %i.g, align 1, !noundef !19
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @10336, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !range !99, !noundef !19
  switch i8 %i.k, label %default.unreachable [
    i8 0, label %bb.af
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.h
    i8 4, label %bb.l
    i8 5, label %bb.p
    i8 6, label %bb.t
    i8 7, label %bb.x
    i8 8, label %bb.ab
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state517h07d1d5c18dbf83d4E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.e)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1417h23d470e733e16b3dE.exit"

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ult i64 %i.e, %i.c
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  %i.n = load i8, ptr %i.m, align 1, !noalias !607759, !noundef !19
  %or.cond.i = icmp slt i8 %i.n, -64
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = add nuw i64 %2, 2
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state517h07d1d5c18dbf83d4E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.o)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1417h23d470e733e16b3dE.exit"

bb.g:                                             ; preds = %bb.e, %bb.d
  store i64 -9223372036854775808, ptr %0, align 8, !noalias !607760
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1417h23d470e733e16b3dE.exit"

bb.h:                                             ; preds = %bb.b
  %i.p = icmp ult i64 %i.e, %i.c
  br i1 %i.p, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  %i.r = load i8, ptr %i.q, align 1, !noalias !607761, !noundef !19
  %i.s = and i8 %i.r, -32
  %or.cond.i29 = icmp eq i8 %i.s, -96
  br i1 %or.cond.i29, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = add nuw i64 %2, 2
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1417h23d470e733e16b3dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.t, i8 noundef 0), !inline_history !10
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1417h23d470e733e16b3dE.exit"

bb.k:                                             ; preds = %bb.i, %bb.h
  store i64 -9223372036854775808, ptr %0, align 8, !noalias !607762
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1417h23d470e733e16b3dE.exit"

bb.l:                                             ; preds = %bb.b
  %i.u = icmp ult i64 %i.e, %i.c
  br i1 %i.u, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  %i.w = load i8, ptr %i.v, align 1, !noalias !607763, !noundef !19
  %or.cond.i30 = icmp slt i8 %i.w, -64
end_hunk_12
begin_hunk_13_@"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1617h322f2e019c2f2380E":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607993)
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !noalias !607994, !noundef !19
  %or.cond.i = icmp slt i8 %i.n, -64
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !607994
  call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17hfc2329aa9cc03c16E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.k, i8 noundef range(i8 0, 8) %3), !noalias !607992, !inline_history !607995
  %i.o = load i64, ptr %i.a, align 8, !range !101, !noalias !607994, !noundef !19
  %i.p = tail call i64 @llvm.usub.sat.i64(i64 %i.o, i64 -9223372036854775802)
  switch i64 %i.p, label %default.unreachable23 [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.j
    i64 3, label %bb.k
  ]

bb.g:                                             ; preds = %bb.e
  %i.q = add nuw i64 %2, 2
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state517h07d1d5c18dbf83d4E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.q)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1417h23d470e733e16b3dE.exit"

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !607993
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  store i64 -9223372036854775801, ptr %0, align 8, !alias.scope !607992, !noalias !607993
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  store i64 -9223372036854775801, ptr %0, align 8, !alias.scope !607992, !noalias !607993
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !607993, !noalias !607992, !noundef !19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.s, ptr %i.t, align 8, !alias.scope !607993, !noalias !607992
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state2117h9a40c1cf469d0242E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.s)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !607994
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1417h23d470e733e16b3dE.exit"

default.unreachable23:                            ; preds = %bb.f, %bb.c
  unreachable

bb.m:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.q

bb.n:                                             ; preds = %bb.c
  store i64 -9223372036854775801, ptr %0, align 8
  br label %bb.q

bb.o:                                             ; preds = %bb.c
  store i64 -9223372036854775801, ptr %0, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !19 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.v, ptr %i.w, align 8
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state2117h9a40c1cf469d0242E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.v)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1417h23d470e733e16b3dE.exit"

"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1417h23d470e733e16b3dE.exit": ; preds = %bb.l, %bb.g, %bb.q
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state2117h9a40c1cf469d0242E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 41 uses
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !19 ; 2 uses
  %i.g = icmp eq i64 %i.f, %2
  br i1 %i.g, label %bb.d, label %._crit_edge176

._crit_edge176:                                   ; preds = %bb.b
  %.pre177 = load ptr, ptr %1, align 8, !alias.scope !608082, !noalias !608083
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = add nuw i64 %2, 1                        ; 37 uses
  %i.i = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19 ; 26 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %2
  %i.k = load i8, ptr %i.j, align 1, !noundef !19
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @10337, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !range !608084, !noundef !19
  switch i8 %i.n, label %default.unreachable [
    i8 0, label %._crit_edge
    i8 1, label %bb.h
    i8 2, label %bb.ab
    i8 3, label %bb.ac
    i8 4, label %bb.aj
    i8 5, label %bb.aq
    i8 6, label %bb.ax
    i8 7, label %bb.be
    i8 8, label %bb.bl
    i8 9, label %bb.bs
    i8 10, label %bb.bz
    i8 11, label %bb.cr
  ]

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !608082, !noalias !608083
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 -9223372036854775800, ptr %0, align 8
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.e:                                             ; preds = %._crit_edge176, %._crit_edge
  %i.o = phi ptr [ %i.i, %._crit_edge ], [ %.pre177, %._crit_edge176 ]
  %i.p = phi i64 [ %.pre, %._crit_edge ], [ %i.f, %._crit_edge176 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608082)
  %i.q = add i64 %i.p, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.q, i64 %2) ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.r, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.sroa.02.030.i = phi i64 [ %i.w, %bb.g ], [ %.sroa.0.0.i.i, %bb.e ] ; 5 uses
  %.not14.i = icmp ult i64 %.sroa.02.030.i, %i.c
  br i1 %.not14.i, label %bb.f, label %.split.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.s = icmp eq i64 %.sroa.02.030.i, %i.c
  br i1 %i.s, label %.loopexit, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.02.030.i
  %i.u = load i8, ptr %i.t, align 1, !noalias !608085, !noundef !19
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.i
  %i.w = add i64 %.sroa.02.030.i, 1               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.i

"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit": ; preds = %bb.cq, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.by, %bb.bx, %bb.br, %bb.bq, %bb.bk, %bb.bj, %bb.bd, %bb.bc, %bb.aw, %bb.av, %bb.ap, %bb.ao, %bb.ai, %bb.ah, %bb.cx, %bb.cw, %bb.aa, %bb.z, %bb.ab, %.loopexit, %bb.d
  ret void

default.unreachable:                              ; preds = %bb.cb, %bb.ca, %bb.c
  unreachable

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608086)
  %i.y = add i64 %2, 8                            ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.c
  br i1 %i.z, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !608087, !noundef !19
  %.not.i218 = icmp eq i8 %i.ab, 37
  br i1 %.not.i218, label %.lr.ph220, label %.critedge.i

.preheader:                                       ; preds = %bb.v, %bb.h
  %.sroa.0.0.i.lcssa = phi i64 [ %i.h, %bb.h ], [ %i.bj, %bb.v ] ; 3 uses
  %i.ac = icmp ult i64 %.sroa.0.0.i.lcssa, %i.c
  br i1 %i.ac, label %.lr.ph163, label %.critedge.i

.lr.ph:                                           ; preds = %bb.v
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bj ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !608087, !noundef !19
  %.not.i = icmp eq i8 %i.ae, 37
  br i1 %.not.i, label %.lr.ph220, label %.critedge.i

.lr.ph163:                                        ; preds = %.preheader, %bb.i
  %.sroa.0.1.i162 = phi i64 [ %i.ai, %bb.i ], [ %.sroa.0.0.i.lcssa, %.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.0.1.i162
  %i.ag = load i8, ptr %i.af, align 1, !noalias !608087, !noundef !19
  %i.ah = icmp eq i8 %i.ag, 37
  br i1 %i.ah, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %.lr.ph163
  %i.ai = add i64 %.sroa.0.1.i162, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.c
  br i1 %exitcond.not, label %.critedge.i.thread, label %.lr.ph163

.critedge.i.thread:                               ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.c, ptr %i.aj, align 8, !alias.scope !608086, !noalias !608088
  br label %.critedge39.i

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph163, %.lr.ph.preheader, %.preheader, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j
  %.sroa.0.2.i = phi i64 [ %i.bc, %bb.r ], [ %i.az, %bb.p ], [ %i.bf, %bb.t ], [ %.sroa.0.1.i162, %.lr.ph163 ], [ %i.aq, %bb.j ], [ %i.at, %bb.l ], [ %i.aw, %bb.n ], [ %.sroa.0.0.i.lcssa, %.preheader ], [ %i.h, %.lr.ph.preheader ], [ %i.bj, %.lr.ph ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.2.i, ptr %i.ak, align 8, !alias.scope !608086, !noalias !608088
  %i.al = icmp ult i64 %.sroa.0.2.i, %i.c
  br i1 %i.al, label %bb.w, label %.critedge39.i

.lr.ph220:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.am = phi ptr [ %i.ad, %.lr.ph ], [ %i.aa, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.0.i161219 = phi i64 [ %i.bj, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 8 uses
  %i.an = phi i64 [ %i.bk, %.lr.ph ], [ %i.y, %.lr.ph.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !608087, !noundef !19
  %.not31.i = icmp eq i8 %i.ap, 37
  br i1 %.not31.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph220
  %i.aq = add i64 %.sroa.0.0.i161219, 1
  br label %.critedge.i

bb.k:                                             ; preds = %.lr.ph220
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !noalias !608087, !noundef !19
  %.not32.i = icmp eq i8 %i.as, 37
  br i1 %.not32.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = add i64 %.sroa.0.0.i161219, 2
  br label %.critedge.i

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  %i.av = load i8, ptr %i.au, align 1, !noalias !608087, !noundef !19
  %.not33.i = icmp eq i8 %i.av, 37
  br i1 %.not33.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = add i64 %.sroa.0.0.i161219, 3
  br label %.critedge.i

bb.o:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !608087, !noundef !19
  %.not34.i = icmp eq i8 %i.ay, 37
  br i1 %.not34.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = add i64 %.sroa.0.0.i161219, 4
  br label %.critedge.i

bb.q:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !608087, !noundef !19
  %.not35.i = icmp eq i8 %i.bb, 37
  br i1 %.not35.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = add i64 %.sroa.0.0.i161219, 5
  br label %.critedge.i

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 6
  %i.be = load i8, ptr %i.bd, align 1, !noalias !608087, !noundef !19
  %.not36.i = icmp eq i8 %i.be, 37
  br i1 %.not36.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = add i64 %.sroa.0.0.i161219, 6
  br label %.critedge.i

bb.u:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 7
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !608087, !noundef !19
  %.not37.i = icmp eq i8 %i.bh, 37
  br i1 %.not37.i, label %bb.v, label %.critedge.i.thread259

.critedge.i.thread259:                            ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.an, ptr %i.bi, align 8, !alias.scope !608086, !noalias !608088
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bj = add i64 %.sroa.0.0.i161219, 8           ; 4 uses
  %i.bk = add i64 %.sroa.0.0.i161219, 15          ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.c
  br i1 %i.bl, label %.lr.ph, label %.preheader

bb.w:                                             ; preds = %.critedge.i.thread259, %.critedge.i
  %.sroa.0.2.i261 = phi i64 [ %i.an, %.critedge.i.thread259 ], [ %.sroa.0.2.i, %.critedge.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.0.2.i261
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !608087, !noundef !19
  %i.bo = icmp eq i8 %i.bn, 123
  br i1 %i.bo, label %bb.z, label %.critedge39.i

.critedge39.i:                                    ; preds = %.critedge.i.thread, %bb.w, %.critedge.i
  %.sroa.0.2.i199 = phi i64 [ %i.c, %.critedge.i.thread ], [ %.sroa.0.2.i261, %bb.w ], [ %.sroa.0.2.i, %.critedge.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608089)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !608089, !noalias !608090, !noundef !19 ; 3 uses
  %i.br = sub nuw i64 %.sroa.0.2.i199, %i.bq      ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bq
  %i.bt = icmp slt i64 %i.br, 0
  br i1 %i.bt, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15.i: ; preds = %.critedge39.i
  %i.bu = icmp eq i64 %.sroa.0.2.i199, %i.bq
  br i1 %i.bu, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !608091
  %i.bv = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.br, i64 noundef range(i64 1, 9) 1) #54, !noalias !608091 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x, %.critedge39.i
  %.sroa.4.0.ph.i.i19.i = phi i64 [ 1, %bb.x ], [ 0, %.critedge39.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i19.i, i64 %i.br, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !608092
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.bx = add nuw i64 %.sroa.0.2.i261, 1          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608094)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.bx, ptr %i.by, align 8, !alias.scope !608094, !noalias !608093
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !608095, !noalias !608096, !noundef !19 ; 2 uses
  %i.cb = sub nuw i64 %i.bx, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ca
  store i64 -9223372036854775805, ptr %0, align 8, !alias.scope !608093, !noalias !608094
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !608093, !noalias !608094
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cb, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !608093, !noalias !608094
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.aa:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15.i, %bb.x
  %.sroa.10.0.i.i16.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15.i ], [ %i.bv, %bb.x ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i16.i, ptr nonnull readonly align 1 %i.bs, i64 %i.br, i1 false), !noalias !608097
  store i64 %i.br, ptr %0, align 8, !noalias !608086
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i16.i, ptr %.sroa.4100.0..sroa_idx, align 8, !noalias !608086
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.br, ptr %.sroa.5101.0..sroa_idx, align 8, !noalias !608086
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.ab:                                            ; preds = %bb.c
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state517h07d1d5c18dbf83d4E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %i.h)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.ac:                                            ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608098)
  %i.cd = icmp ult i64 %i.h, %i.c
  br i1 %i.cd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !608099, !noundef !19
  %or.cond.i = icmp slt i8 %i.cf, -64
  br i1 %or.cond.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608100)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !608100, !noalias !608101, !noundef !19
  %i.ci = add i64 %i.ch, 1
  %.sroa.0.0.i.i42 = tail call noundef i64 @llvm.umax.i64(i64 %i.ci, i64 %i.h)
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.ae, %bb.ag
  %.sroa.02.030.i44 = phi i64 [ %i.cn, %bb.ag ], [ %.sroa.0.0.i.i42, %bb.ae ] ; 5 uses
  %.not14.i45 = icmp ult i64 %.sroa.02.030.i44, %i.c
  br i1 %.not14.i45, label %bb.af, label %.split.i46

.split.i46:                                       ; preds = %.lr.ph.i43
  %i.cj = icmp eq i64 %.sroa.02.030.i44, %i.c
  br i1 %i.cj, label %bb.ai, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i43
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.02.030.i44
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !608102, !noundef !19
  %i.cm = icmp sgt i8 %i.cl, -65
  br i1 %i.cm, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.split.i46
  %i.cn = add i64 %.sroa.02.030.i44, 1            ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.ai, label %.lr.ph.i43

bb.ah:                                            ; preds = %bb.ad
  %i.cp = add nuw i64 %2, 2
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state517h07d1d5c18dbf83d4E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.cp)
end_hunk_13
