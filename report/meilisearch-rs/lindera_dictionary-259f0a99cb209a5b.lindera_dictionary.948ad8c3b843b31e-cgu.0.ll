Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-259f0a99cb209a5b.lindera_dictionary.948ad8c3b843b31e-cgu.0?download=true
inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 40
begin_hunk_0_@"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf35793715db690d9E":bb.a
.loopexit.i.i.i.i.i.i.i:                          ; preds = %.preheader108.i.i.i.i.i.i.i, %bb.i, %bb.g, %bb.l, %.preheader108.i.i.i.i.i.i.i.preheader, %.preheader102.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i, %.preheader105.i.i.i.i.i.i.i
  %.sroa.033.3.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.i ], [ %i.be, %bb.l ], [ %i.p, %bb.g ], [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %.preheader105.i.i.i.i.i.i.i ], [ 0, %.preheader102.i.i.i.i.i.i.i ], [ 0, %.preheader108.i.i.i.i.i.i.i.preheader ], [ %i.s, %.preheader108.i.i.i.i.i.i.i ]
  %i.t = zext i32 %.sroa.033.3.i.i.i.i.i.i.i to i64
  %i.u = shl nuw i64 %i.t, 32
  br label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i

.lr.ph:                                           ; preds = %.preheader108.i.i.i.i.i.i.i.preheader, %.preheader108.i.i.i.i.i.i.i
  %.sroa.03.2.i.i.i.i.i.i.i79 = phi ptr [ %i.q, %.preheader108.i.i.i.i.i.i.i ], [ %i.k, %.preheader108.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.2.i.i.i.i.i.i.i78 = phi i64 [ %i.r, %.preheader108.i.i.i.i.i.i.i ], [ %i.l, %.preheader108.i.i.i.i.i.i.i.preheader ]
  %.sroa.033.2.i.i.i.i.i.i.i77 = phi i32 [ %i.s, %.preheader108.i.i.i.i.i.i.i ], [ 0, %.preheader108.i.i.i.i.i.i.i.preheader ]
  %i.v = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i.i.i.i.i.i.i77, i32 10) ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1
  %i.x = load i8, ptr %.sroa.03.2.i.i.i.i.i.i.i79, align 1, !alias.scope !105, !noalias !106, !noundef !6
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.y, -48                    ; 2 uses
  %i.aa = icmp ugt i32 %i.z, 9                    ; 2 uses
  %brmerge.i.i.i.i.i.i.i = select i1 %i.aa, i1 true, i1 %i.w
  br i1 %brmerge.i.i.i.i.i.i.i, label %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ab = extractvalue { i32, i1 } %i.v, 0
  %i.ac = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.ab, i32 %i.z) ; 2 uses
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %.loopexit101.i.i.i.i.i.i.i, label %.preheader108.i.i.i.i.i.i.i

.loopexit104.split.loop.exit122.i.i.i.i.i.i.i:    ; preds = %.lr.ph84
  %.mux97.le.i.i.i.i.i.i.i = select i1 %i.at, i64 256, i64 512
  br label %.loopexit101.i.i.i.i.i.i.i

.loopexit110.split.loop.exit116.i.i.i.i.i.i.i:    ; preds = %.lr.ph
  %.mux.le.i.i.i.i.i.i.i = select i1 %i.aa, i64 256, i64 768
  br label %.loopexit101.i.i.i.i.i.i.i

.loopexit101.i.i.i.i.i.i.i:                       ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i, %bb.k, %.lr.ph129.i.i.i.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i
  %.sroa.12.2.i.i.i.i.i.i.i = phi i64 [ 256, %.lr.ph129.i.i.i.i.i.i.i ], [ 512, %bb.k ], [ 256, %.lr.ph.i.i.i.i.i.i.i ], [ %.mux97.le.i.i.i.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i ], [ %.mux.le.i.i.i.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i ], [ 768, %bb.h ]
  %i.ae = or disjoint i64 %.sroa.12.2.i.i.i.i.i.i.i, 1
  br label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader105.i.i.i.i.i.i.i, %bb.i
  %.sroa.03.3121.i.i.i.i.i.i.i = phi ptr [ %i.al, %bb.i ], [ %i.k, %.preheader105.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.27.3120.i.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.i ], [ %i.l, %.preheader105.i.i.i.i.i.i.i ]
  %.sroa.033.4119.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.i ], [ 0, %.preheader105.i.i.i.i.i.i.i ]
  %i.af = load i8, ptr %.sroa.03.3121.i.i.i.i.i.i.i, align 1, !alias.scope !105, !noalias !106, !noundef !6
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -48                  ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 10
  br i1 %i.ai, label %bb.i, label %.loopexit101.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aj = mul i32 %.sroa.033.4119.i.i.i.i.i.i.i, 10
  %i.ak = add nsw i64 %.sroa.27.3120.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i.i.i.i.i.i.i, i64 1
  %i.am = sub i32 %i.aj, %i.ah                    ; 2 uses
  %.not91.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not91.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.d
  %i.an = icmp ult i64 %i.e, 8
  br i1 %i.an, label %.lr.ph129.i.i.i.i.i.i.i.preheader, label %.preheader102.i.i.i.i.i.i.i

.lr.ph129.i.i.i.i.i.i.i.preheader:                ; preds = %.preheader.i.i.i.i.i.i.i, %bb.j
  %.sroa.03.1128.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.j ], [ %i.h, %.preheader.i.i.i.i.i.i.i ]
  %.sroa.27.1127.i.i.i.i.i.i.i.ph = phi i64 [ %i.e, %bb.j ], [ %i.i, %.preheader.i.i.i.i.i.i.i ]
  br label %.lr.ph129.i.i.i.i.i.i.i

.preheader102.i.i.i.i.i.i.i:                      ; preds = %bb.j, %bb.e
  %.sroa.27.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.e, %bb.j ], [ %i.i, %bb.e ] ; 2 uses
  %.sroa.03.0.ph.i.i.i.i.i.i.i = phi ptr [ %i.d, %bb.j ], [ %i.h, %bb.e ]
  %.not92.i.i.i.i.i.i.i80 = icmp eq i64 %.sroa.27.0.ph.i.i.i.i.i.i.i, 0
  br i1 %.not92.i.i.i.i.i.i.i80, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph84

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.e
  %.not93125.i.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not93125.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph129.i.i.i.i.i.i.i.preheader

.lr.ph84:                                         ; preds = %.preheader102.i.i.i.i.i.i.i, %bb.g
  %.sroa.03.0.i.i.i.i.i.i.i83 = phi ptr [ %i.n, %bb.g ], [ %.sroa.03.0.ph.i.i.i.i.i.i.i, %.preheader102.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i.i.i.i.i82 = phi i64 [ %i.o, %bb.g ], [ %.sroa.27.0.ph.i.i.i.i.i.i.i, %.preheader102.i.i.i.i.i.i.i ]
  %.sroa.033.0.i.i.i.i.i.i.i81 = phi i32 [ %i.p, %bb.g ], [ 0, %.preheader102.i.i.i.i.i.i.i ]
  %i.ao = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i.i.i.i.i.i.i81, i32 10) ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.ao, 1
  %i.aq = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i83, align 1, !alias.scope !105, !noalias !106, !noundef !6
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ugt i32 %i.as, 9                   ; 2 uses
  %brmerge96.i.i.i.i.i.i.i = select i1 %i.at, i1 true, i1 %i.ap
  br i1 %brmerge96.i.i.i.i.i.i.i, label %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph84
  %i.au = extractvalue { i32, i1 } %i.ao, 0
  %i.av = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.au, i32 %i.as) ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.av, 1
  br i1 %i.aw, label %.loopexit101.i.i.i.i.i.i.i, label %bb.g

.lr.ph129.i.i.i.i.i.i.i:                          ; preds = %.lr.ph129.i.i.i.i.i.i.i.preheader, %bb.l
  %.sroa.03.1128.i.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.l ], [ %.sroa.03.1128.i.i.i.i.i.i.i.ph, %.lr.ph129.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1127.i.i.i.i.i.i.i = phi i64 [ %i.bc, %bb.l ], [ %.sroa.27.1127.i.i.i.i.i.i.i.ph, %.lr.ph129.i.i.i.i.i.i.i.preheader ]
  %.sroa.033.1126.i.i.i.i.i.i.i = phi i32 [ %i.be, %bb.l ], [ 0, %.lr.ph129.i.i.i.i.i.i.i.preheader ]
  %i.ax = load i8, ptr %.sroa.03.1128.i.i.i.i.i.i.i, align 1, !alias.scope !105, !noalias !106, !noundef !6
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -48                  ; 2 uses
  %i.ba = icmp ult i32 %i.az, 10
  br i1 %i.ba, label %bb.l, label %.loopexit101.i.i.i.i.i.i.i

bb.l:                                             ; preds = %.lr.ph129.i.i.i.i.i.i.i
  %i.bb = mul i32 %.sroa.033.1126.i.i.i.i.i.i.i, 10
  %i.bc = add nsw i64 %.sroa.27.1127.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i.i.i.i.i.i.i, i64 1
  %i.be = add i32 %i.az, %i.bb                    ; 2 uses
  %.not93.i.i.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not93.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph129.i.i.i.i.i.i.i

_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i: ; preds = %.loopexit101.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i
  %.sroa.12.0.insert.insert.i.i.i.i.i.i.i = phi i64 [ %i.u, %.loopexit.i.i.i.i.i.i.i ], [ %i.ae, %.loopexit101.i.i.i.i.i.i.i ] ; 3 uses
  %i.bf = trunc i64 %.sroa.12.0.insert.insert.i.i.i.i.i.i.i to i1
  br i1 %i.bf, label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i, label %bb.m

_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i: ; preds = %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i, %bb.c, %bb.c, %bb.b
  %.sroa.12.0.insert.insert.i.i.i2.i.i.i.i = phi i64 [ %.sroa.12.0.insert.insert.i.i.i.i.i.i.i, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i ], [ 257, %bb.c ], [ 257, %bb.c ], [ 1, %bb.b ]
  %.sroa.03.0.insert.insert.i.i.i.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i2.i.i.i.i, 8
  %.sroa.415.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.03.0.insert.insert.i.i.i.i.i.i to i8 ; 2 uses
  %i.bg = icmp ult i8 %.sroa.415.0.extract.trunc.i.i.i.i.i, 5
  tail call void @llvm.assume(i1 %i.bg)
  store i8 %.sroa.415.0.extract.trunc.i.i.i.i.i, ptr %i.b, align 1, !alias.scope !103, !noalias !107
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h182e90a280bb351fE.exit.thread"

bb.m:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i
  %.sroa.617.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i.i.i.i.i, 32
  %.sroa.617.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.617.0.extract.shift.i.i.i.i.i to i32
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h182e90a280bb351fE.exit.thread"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h182e90a280bb351fE.exit.thread": ; preds = %bb.a, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i, %bb.m
  %.sroa.0.0.i45 = phi i32 [ 1, %bb.m ], [ 0, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i ], [ 0, %bb.a ]
  %i.bh = phi i32 [ %.sroa.617.0.extract.trunc.i.i.i.i.i, %bb.m ], [ undef, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i ], [ undef, %bb.a ]
  %i.bi = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i45, 0
  %i.bj = insertvalue { i32, i32 } %i.bi, i32 %i.bh, 1
  ret { i32, i32 } %i.bj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb69d40a40b35ebE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1
  store i64 %i.d, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.e = load i64, ptr %0, align 8, !range !12, !alias.scope !125, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !125, !noundef !6 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.d, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit_crit_edge"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit_crit_edge": ; preds = %bb.c
  %.sroa.26.0.copyload.i.pre = load i64, ptr %i.i, align 8, !alias.scope !126
  %.sroa.37.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.37.0.copyload.i.pre = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert, align 8, !alias.scope !126
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit"

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !125, !noundef !6 ; 5 uses
  %.sroa.012.013.i = load ptr, ptr %i.i, align 8, !alias.scope !125, !nonnull !6, !noundef !6 ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.k, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.012.015.i.prol = phi ptr [ %.sroa.012.0.i.prol, %.lr.ph.i.prol ], [ %.sroa.012.013.i, %.lr.ph.i.preheader ]
  %.sroa.011.014.i.prol = phi i64 [ %i.n, %.lr.ph.i.prol ], [ %i.k, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.prol, i64 544
  %i.n = add i64 %.sroa.011.014.i.prol, -1        ; 2 uses
  %.sroa.012.0.i.prol = load ptr, ptr %i.m, align 8, !noalias !125, !nonnull !6, !noundef !6 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !112

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.012.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.012.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.012.015.i.unr = phi ptr [ %.sroa.012.013.i, %.lr.ph.i.preheader ], [ %.sroa.012.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.011.014.i.unr = phi i64 [ %i.k, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %i.o = icmp ult i64 %i.k, 8
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.013.i, %bb.d ], [ %.sroa.012.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.012.0.i.7, %.lr.ph.i ] ; 2 uses
  store ptr %.sroa.012.0.lcssa.i, ptr %i.g, align 8, !alias.scope !125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !alias.scope !125
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit"

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.012.015.i = phi ptr [ %.sroa.012.0.i.7, %.lr.ph.i ], [ %.sroa.012.015.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.011.014.i = phi i64 [ %i.x, %.lr.ph.i ], [ %.sroa.011.014.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i, i64 544
  %.sroa.012.0.i = load ptr, ptr %i.p, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 544
  %.sroa.012.0.i.1 = load ptr, ptr %i.q, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.1, i64 544
  %.sroa.012.0.i.2 = load ptr, ptr %i.r, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.2, i64 544
  %.sroa.012.0.i.3 = load ptr, ptr %i.s, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.3, i64 544
  %.sroa.012.0.i.4 = load ptr, ptr %i.t, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.4, i64 544
  %.sroa.012.0.i.5 = load ptr, ptr %i.u, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.5, i64 544
  %.sroa.012.0.i.6 = load ptr, ptr %i.v, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.6, i64 544
  %i.x = add i64 %.sroa.011.014.i, -8             ; 2 uses
  %.sroa.012.0.i.7 = load ptr, ptr %i.w, align 8, !noalias !125, !nonnull !6, !noundef !6 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge.i, label %.lr.ph.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit": ; preds = %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit_crit_edge", %._crit_edge.i
  %.sroa.37.0.copyload.i = phi i64 [ %.sroa.37.0.copyload.i.pre, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit_crit_edge" ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.26.0.copyload.i = phi i64 [ %.sroa.26.0.copyload.i.pre, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit_crit_edge" ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.05.0.copyload.i = phi ptr [ %i.h, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit_crit_edge" ], [ %.sroa.012.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.37.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i, i64 538
  %i.aa = load i16, ptr %i.z, align 2, !noalias !127, !noundef !6
  %i.ab = zext i16 %i.aa to i64
  %i.ac = icmp ult i64 %.sroa.37.0.copyload.i, %i.ab
  br i1 %i.ac, label %bb.g, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.a, %_ZN5alloc11collections5btree3mem7replace17hab96113abcff5af0E.exit
  %.sroa.3.0 = phi ptr [ %i.bi, %_ZN5alloc11collections5btree3mem7replace17hab96113abcff5af0E.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.bg, %_ZN5alloc11collections5btree3mem7replace17hab96113abcff5af0E.exit ], [ null, %bb.a ]
  %i.ad = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ae = insertvalue { ptr, ptr } %i.ad, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.ae

.lr.ph.i.i.i:                                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit", %bb.f
  %.sroa.0.038.i.i.i = phi ptr [ %i.af, %bb.f ], [ %.sroa.05.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit" ] ; 2 uses
  %.sroa.5.037.i.i.i = phi i64 [ %i.ah, %bb.f ], [ %.sroa.26.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit" ]
  %i.af = load ptr, ptr %.sroa.0.038.i.i.i, align 8, !noalias !128, !noundef !6 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.f

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %i.ag = zext i16 %i.aj to i64
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = add i64 %.sroa.5.037.i.i.i, 1           ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i, i64 536
  %i.aj = load i16, ptr %i.ai, align 8, !noalias !128 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 538
  %i.al = load i16, ptr %i.ak, align 2, !noalias !127, !noundef !6
  %i.am = icmp ult i16 %i.aj, %i.al
  br i1 %i.am, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit"
  %.sroa.6.sroa.4.0.ph.i.i = phi i64 [ %.sroa.37.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit" ], [ %i.ag, %._crit_edge.loopexit.i.i.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i = phi i64 [ %.sroa.26.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit" ], [ %i.ah, %._crit_edge.loopexit.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i = phi ptr [ %.sroa.05.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit" ], [ %i.af, %._crit_edge.loopexit.i.i.i ] ; 4 uses
  %i.an = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i, 0
  %i.ao = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i, 1 ; 2 uses
  br i1 %i.an, label %_ZN5alloc11collections5btree3mem7replace17hab96113abcff5af0E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i, i64 544
  %i.aq = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i, 11
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %xtraiter25 = and i64 %.sroa.6.sroa.0.0.ph.i.i, 7 ; 2 uses
  %lcmp.mod26.not = icmp eq i64 %xtraiter25, 0
  br i1 %lcmp.mod26.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.prol = phi ptr [ %i.as, %.prol.preheader ], [ %i.ar, %bb.h ]
  %.pn28.in.i.i.i.prol = phi i64 [ %.pn28.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i, %bb.h ]
  %prol.iter27 = phi i64 [ %prol.iter27.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.prol = add i64 %.pn28.in.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.prol, align 8, !noalias !129, !nonnull !6, !noundef !6 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter27.next = add i64 %prol.iter27, 1     ; 2 uses
  %prol.iter27.cmp.not = icmp eq i64 %prol.iter27.next, %xtraiter25
  br i1 %prol.iter27.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !124

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.unr = phi ptr [ %i.ar, %bb.h ], [ %i.as, %.prol.preheader ]
  %.pn28.in.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i, %bb.h ], [ %.pn28.i.i.i.prol, %.prol.preheader ]
  %i.at = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i, 8
  br i1 %i.at, label %_ZN5alloc11collections5btree3mem7replace17hab96113abcff5af0E.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i = phi ptr [ %i.bc, %.new ], [ %.pn30.in.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i = phi i64 [ %.pn28.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i = load ptr, ptr %.pn30.in.i.i.i, align 8, !noalias !129, !nonnull !6, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i, i64 544
  %.pn30.i.i.i.1 = load ptr, ptr %i.au, align 8, !noalias !129, !nonnull !6, !noundef !6
  %i.av = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.1, i64 544
  %.pn30.i.i.i.2 = load ptr, ptr %i.av, align 8, !noalias !129, !nonnull !6, !noundef !6
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.2, i64 544
  %.pn30.i.i.i.3 = load ptr, ptr %i.aw, align 8, !noalias !129, !nonnull !6, !noundef !6
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.3, i64 544
  %.pn30.i.i.i.4 = load ptr, ptr %i.ax, align 8, !noalias !129, !nonnull !6, !noundef !6
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.4, i64 544
  %.pn30.i.i.i.5 = load ptr, ptr %i.ay, align 8, !noalias !129, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.5, i64 544
  %.pn30.i.i.i.6 = load ptr, ptr %i.az, align 8, !noalias !129, !nonnull !6, !noundef !6
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.6, i64 544
  %.pn28.i.i.i.7 = add i64 %.pn28.in.i.i.i, -8    ; 2 uses
  %.pn30.i.i.i.7 = load ptr, ptr %i.ba, align 8, !noalias !129, !nonnull !6, !noundef !6 ; 2 uses
  %i.bb = icmp eq i64 %.pn28.i.i.i.7, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.7, i64 544
  br i1 %i.bb, label %_ZN5alloc11collections5btree3mem7replace17hab96113abcff5af0E.exit, label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @432) #46
          to label %.noexc.i unwind label %bb.j, !noalias !126

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_ZN5alloc11collections5btree3mem7replace17hab96113abcff5af0E.exit: ; preds = %.prol.loopexit, %.new, %bb.g
  %.sroa.7.0.i.i = phi i64 [ %i.ao, %bb.g ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i = phi ptr [ %.sroa.0.0.ph.i.i, %bb.g ], [ %.pn30.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.7, %.new ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i, i64 8
  %i.bf = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i, 11
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.sroa.6.sroa.4.0.ph.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i, i64 272
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.6.sroa.4.0.ph.i.i
  store ptr %.sroa.07.0.i.i, ptr %i.g, align 8, !alias.scope !126
  store i64 0, ptr %.sroa.26.0..sroa_idx.i, align 8, !alias.scope !126
  store i64 %.sroa.7.0.i.i, ptr %.sroa.37.0..sroa_idx.i, align 8, !alias.scope !126
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #46
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_ZN10serde_core2de5Error13invalid_value17h52e384ac25f529c9E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr @258, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @253, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN65_$LT$serde_core..de..Unexpected$u20$as$u20$core..fmt..Display$GT$3fmt17h3e0ccc46ccc4f5e9E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbb53d74cc799f97eE", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @5, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %i.i, align 8
  call fastcc void @"_ZN7bincode8features5serde79_$LT$impl$u20$serde_core..de..Error$u20$for$u20$bincode..error..DecodeError$GT$6custom17h1793eea32bcc55dbE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_ZN10serde_core2de5Error14invalid_length17h72cbc66618b3b61fE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 0, 5) %1, ptr noundef nonnull align 1 %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.d, align 8
  store ptr %2, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
end_hunk_0
begin_hunk_1_@_ZN18lindera_dictionary18dictionary_builder15user_dictionary21UserDictionaryBuilder5build17h0c4c5c9a5cf6970fE:bb.a
  %i.pa = getelementptr inbounds nuw i8, ptr %.val.i, i64 56
  %.val2.i.i.i.i.i = load i64, ptr %i.pa, align 8, !alias.scope !3429 ; 2 uses
  %i.pb = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.pb, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit.i.i.i.i.i"
  %i.pc = getelementptr inbounds nuw i8, ptr %.val.i, i64 64
  %.val3.i.i.i.i.i = load ptr, ptr %i.pc, align 8, !alias.scope !3429, !nonnull !6, !noundef !6
  %i.pd = shl nuw i64 %.val2.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.pd, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !3429
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 88, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3430
  %i.pe = icmp ult i64 %i.ec, 2
  br i1 %i.pe, label %bb.dl, label %bb.di, !prof !7

bb.di:                                            ; preds = %bb.dh
  %i.pf = icmp ult i64 %i.ec, 21
  br i1 %i.pf, label %bb.dk, label %bb.dj, !prof !7

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h158fb465fe748c48E(ptr noalias noundef nonnull align 8 %i.eb, i64 noundef %i.ec, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.thread unwind label %bb.t

bb.dk:                                            ; preds = %bb.di
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h3174c537cec64284E(ptr noalias noundef nonnull align 8 %i.eb, i64 noundef %i.ec)
          to label %.thread unwind label %bb.t

.thread:                                          ; preds = %bb.dk, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr null, ptr %i.au, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  store i64 0, ptr %i.ph, align 8
  br label %.lr.ph

bb.dl:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr null, ptr %i.au, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 3 uses
  store i64 0, ptr %i.pj, align 8
  %i.pk = icmp eq i64 %i.ec, 0
  br i1 %i.pk, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i64 0, ptr %i.as, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.pl, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 0, ptr %i.pm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 0, ptr %i.ar, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.pn, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  store i64 0, ptr %i.po, align 8
  br label %._crit_edge1396

.lr.ph:                                           ; preds = %.thread, %bb.dl
  %i.pp = phi ptr [ %i.ph, %.thread ], [ %i.pj, %bb.dl ]
  %i.pq = phi ptr [ %i.pg, %.thread ], [ %i.pi, %bb.dl ] ; 2 uses
  %.idx1904.pn = shl nuw nsw i64 %i.ec, 3
  %i.pr = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx1904.pn ; 2 uses
  %i.ps = load i64, ptr %1, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.pu = load i16, ptr %i.pt, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.pw = load i16, ptr %i.pv, align 2            ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 3 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  br label %bb.dm

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit580": ; preds = %.loopexit.split-lp1024.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.jt, %bb.js, %bb.hm, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit579"
  %.pn395 = phi { ptr, i32 } [ %.pn384, %bb.hm ], [ %lpad.thr_comm, %bb.js ], [ %lpad.thr_comm, %bb.jt ], [ %.pn384, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit579" ], [ %lpad.loopexit.split-lp2789, %.loopexit.split-lp1024.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..vec..Vec$LT$lindera_dictionary..viterbi..WordEntry$GT$$GT$$GT$17h2bd0b5f0f27c1545E"(ptr noalias noundef align 8 dereferenceable(24) %i.au) #48
          to label %.body434 unwind label %bb.eo

bb.dm:                                            ; preds = %.lr.ph, %bb.jr
  %.sroa.0693.01389 = phi ptr [ %i.eb, %.lr.ph ], [ %i.py, %bb.jr ] ; 3 uses
  %.sroa.8695.01388 = phi i32 [ 0, %.lr.ph ], [ %i.pz, %bb.jr ] ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0693.01389, i64 8 ; 2 uses
  %i.pz = add i32 %.sroa.8695.01388, 1
  %.val424 = load ptr, ptr %.sroa.0693.01389, align 8, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3431)
  %i.qa = getelementptr inbounds nuw i8, ptr %.val424, i64 80
  %i.qb = load i64, ptr %i.qa, align 8, !alias.scope !3431, !noundef !6
  %.not.i.i = icmp ne i64 %i.qb, 0
  %i.qc = getelementptr inbounds nuw i8, ptr %.val424, i64 72
  %i.qd = load i64, ptr %i.qc, align 8, !alias.scope !3431
  %i.qe = icmp ne i64 %i.qd, 0
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.qe, i1 false
  br i1 %or.cond.i.i, label %bb.dn, label %bb.hq

bb.dn:                                            ; preds = %bb.dm
  %i.qf = getelementptr inbounds nuw i8, ptr %.val424, i64 64
  %i.qg = load ptr, ptr %i.qf, align 8, !alias.scope !3431, !nonnull !6, !noundef !6
  %i.qh = load i64, ptr %i.qg, align 8, !noalias !3432, !noundef !6 ; 16 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.val424, i64 48
  %i.qj = load i64, ptr %i.qi, align 8, !noundef !6 ; 2 uses
  %.not.i = icmp ugt i64 %i.qh, %i.qj
  br i1 %.not.i, label %bb.do, label %bb.hn, !prof !9

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.qh, i64 noundef %i.qj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46
          to label %.noexc468 unwind label %.loopexit.split-lp1024.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc468:                                        ; preds = %bb.do
  unreachable

._crit_edge:                                      ; preds = %bb.jr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i64 0, ptr %i.as, align 8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 11 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.qk, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 6 uses
  store i64 0, ptr %i.ql, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 0, ptr %i.ar, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 10 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.qm, align 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 5 uses
  store i64 0, ptr %i.qn, align 8
  %.sroa.0349.11391 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.qo = load i64, ptr %1, align 8, !noundef !6  ; 6 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.qq = load i64, ptr %i.qp, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  %.sroa.091.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.091.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %.sroa.091.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %.sroa.091.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %.sroa.292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8, !align !11 ; 2 uses
  %.not380 = icmp eq ptr %i.qu, null
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qw = load ptr, ptr %i.qv, align 8, !nonnull !6, !align !8
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 40
  %.sroa.4220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.6222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 17
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  %.sroa.688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 17
  %.sroa.4716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %.sroa.8720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i541 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i542 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.qy = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.qz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ra = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.7736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.11737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.not4.i534 = icmp eq i64 %i.qo, 0
  br label %bb.dp

bb.dp:                                            ; preds = %._crit_edge, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit"
  %i.rb = phi i64 [ 0, %._crit_edge ], [ %i.abx, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit" ] ; 4 uses
  %i.rc = phi i64 [ 0, %._crit_edge ], [ %i.acw, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit" ] ; 4 uses
  %.sroa.0349.11393 = phi ptr [ %.sroa.0349.11391, %._crit_edge ], [ %.sroa.0349.1, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit" ] ; 3 uses
  %.sroa.0349.01392 = phi ptr [ %i.eb, %._crit_edge ], [ %.sroa.0349.11393, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit" ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.rd = load ptr, ptr %.sroa.0349.01392, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 80
  %i.rf = load i64, ptr %i.re, align 8, !noundef !6 ; 2 uses
  %i.rg = icmp eq i64 %i.rf, %i.qo
  br i1 %i.rg, label %bb.ev, label %bb.eu

._crit_edge1396:                                  ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit", %._crit_edge.thread
  %i.rh = phi ptr [ %i.po, %._crit_edge.thread ], [ %i.qn, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit" ]
  %i.ri = phi ptr [ %i.pn, %._crit_edge.thread ], [ %i.qm, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit" ] ; 4 uses
  %i.rj = phi ptr [ %i.pl, %._crit_edge.thread ], [ %i.qk, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit" ] ; 3 uses
  %i.rk = phi ptr [ %i.pi, %._crit_edge.thread ], [ %i.pq, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit" ] ; 2 uses
  %i.rl = phi ptr [ %i.pj, %._crit_edge.thread ], [ %i.pp, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 0, ptr %i.ak, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.rm, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store i64 0, ptr %i.rn, align 8
  %i.ro = load ptr, ptr %i.au, align 8, !noundef !6 ; 2 uses
  %.not366.not = icmp eq ptr %i.ro, null
  %i.rp = load i64, ptr %i.rl, align 8            ; 2 uses
  %4 = icmp eq i64 %i.rp, 0
  %.not1903 = select i1 %.not366.not, i1 true, i1 %4
  br i1 %.not1903, label %._crit_edge1404, label %.lr.ph1403.preheader

.lr.ph1403.preheader:                             ; preds = %._crit_edge1396
  %5 = ptrtoint ptr %i.ro to i64
  %6 = load i64, ptr %i.rk, align 8
  br label %.lr.ph1403

.lr.ph1403:                                       ; preds = %.lr.ph1403.preheader, %bb.et
  %i.rq = phi ptr [ %i.xe, %bb.et ], [ inttoptr (i64 8 to ptr), %.lr.ph1403.preheader ]
  %i.rr = phi i64 [ %i.xg, %bb.et ], [ 0, %.lr.ph1403.preheader ] ; 3 uses
  %.sroa.0138.01402 = phi i32 [ %i.xh, %bb.et ], [ 0, %.lr.ph1403.preheader ] ; 2 uses
  %.sroa.5740.01400 = phi ptr [ %.sroa.07.0.i.i.i, %bb.et ], [ null, %.lr.ph1403.preheader ] ; 2 uses
  %.sroa.14742.01399 = phi i64 [ %.sroa.7.0.i.i.i, %bb.et ], [ %6, %.lr.ph1403.preheader ] ; 6 uses
  %.sroa.22748.01398 = phi i64 [ %i.rs, %bb.et ], [ %i.rp, %.lr.ph1403.preheader ]
  %.sroa.9741.01397 = phi i64 [ 0, %bb.et ], [ %5, %.lr.ph1403.preheader ] ; 2 uses
  %i.rs = add i64 %.sroa.22748.01398, -1          ; 2 uses
  %.not.i.i469 = icmp eq ptr %.sroa.5740.01400, null
  br i1 %.not.i.i469, label %bb.dq, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i"

bb.dq:                                            ; preds = %.lr.ph1403
  %i.rt = inttoptr i64 %.sroa.9741.01397 to ptr   ; 3 uses
  %i.ru = icmp eq i64 %.sroa.14742.01399, 0
  br i1 %i.ru, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.dq
  %xtraiter = and i64 %.sroa.14742.01399, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.rt, %.lr.ph.i.i.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.rw, %.lr.ph.i.i.prol ], [ %.sroa.14742.01399, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 544
  %i.rw = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.rv, align 8, !noalias !3433, !nonnull !6, !noundef !6 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3132

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %i.rt, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %.sroa.14742.01399, %.lr.ph.i.i.preheader ], [ %i.rw, %.lr.ph.i.i.prol ]
  %i.rx = icmp ult i64 %.sroa.14742.01399, 8
  br i1 %i.rx, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.sg, %.lr.ph.i.i ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 544
  %.sroa.012.0.i.i = load ptr, ptr %i.ry, align 8, !noalias !3433, !nonnull !6, !noundef !6
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 544
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.rz, align 8, !noalias !3433, !nonnull !6, !noundef !6
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 544
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.sa, align 8, !noalias !3433, !nonnull !6, !noundef !6
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 544
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.sb, align 8, !noalias !3433, !nonnull !6, !noundef !6
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 544
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.sc, align 8, !noalias !3433, !nonnull !6, !noundef !6
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 544
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.sd, align 8, !noalias !3433, !nonnull !6, !noundef !6
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 544
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.se, align 8, !noalias !3433, !nonnull !6, !noundef !6
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 544
  %i.sg = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.sf, align 8, !noalias !3433, !nonnull !6, !noundef !6 ; 2 uses
  %i.sh = icmp eq i64 %i.sg, 0
  br i1 %i.sh, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i", label %.lr.ph.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i": ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.dq, %.lr.ph1403
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.14742.01399, %.lr.ph1403 ], [ 0, %bb.dq ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.9741.01397, %.lr.ph1403 ], [ 0, %bb.dq ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %.sroa.5740.01400, %.lr.ph1403 ], [ %i.rt, %bb.dq ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 538
  %i.sj = load i16, ptr %i.si, align 2, !noalias !3434, !noundef !6
  %i.sk = zext i16 %i.sj to i64
  %i.sl = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.sk
  br i1 %i.sl, label %bb.ds, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i", %bb.dr
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.sm, %bb.dr ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.so, %bb.dr ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i" ]
  %i.sm = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !3435, !noundef !6 ; 4 uses
  %.not.i.i.i.i.i470 = icmp eq ptr %i.sm, null
  br i1 %.not.i.i.i.i.i470, label %bb.du, label %bb.dr

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.dr
  %i.sn = zext i16 %i.sq to i64
  br label %bb.ds

bb.dr:                                            ; preds = %.lr.ph.i.i.i.i
  %i.so = add i64 %.sroa.5.037.i.i.i.i, 1         ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 536
  %i.sq = load i16, ptr %i.sp, align 8, !noalias !3435 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 538
  %i.ss = load i16, ptr %i.sr, align 2, !noalias !3434, !noundef !6
  %i.st = icmp ult i16 %i.sq, %i.ss
  br i1 %i.st, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ds:                                            ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i"
  %.sroa.6.sroa.4.0.ph.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i" ], [ %i.sn, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i" ], [ %i.so, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i" ], [ %i.sm, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %i.su = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i, 0
  %i.sv = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i, 1 ; 2 uses
  br i1 %i.su, label %.loopexit986, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 544
  %i.sx = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.sx)
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %i.sv ; 2 uses
  %xtraiter2976 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i, 7 ; 2 uses
  %lcmp.mod2977.not = icmp eq i64 %xtraiter2976, 0
  br i1 %lcmp.mod2977.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.dt, %.prol.preheader
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.sz, %.prol.preheader ], [ %i.sy, %bb.dt ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.dt ]
  %prol.iter2978 = phi i64 [ %prol.iter2978.next, %.prol.preheader ], [ 0, %bb.dt ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !3436, !nonnull !6, !noundef !6 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter2978.next = add i64 %prol.iter2978, 1 ; 2 uses
  %prol.iter2978.cmp.not = icmp eq i64 %prol.iter2978.next, %xtraiter2976
  br i1 %prol.iter2978.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3146

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.dt
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.dt ], [ %.pn30.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.sy, %bb.dt ], [ %i.sz, %.prol.preheader ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.dt ], [ %.pn28.i.i.i.i.prol, %.prol.preheader ]
  %i.ta = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i, 8
  br i1 %i.ta, label %.loopexit986, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i = phi ptr [ %i.tj, %.new ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !3436, !nonnull !6, !noundef !6
  %i.tb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 544
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.tb, align 8, !noalias !3436, !nonnull !6, !noundef !6
  %i.tc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 544
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.tc, align 8, !noalias !3436, !nonnull !6, !noundef !6
  %i.td = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 544
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.td, align 8, !noalias !3436, !nonnull !6, !noundef !6
  %i.te = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 544
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.te, align 8, !noalias !3436, !nonnull !6, !noundef !6
  %i.tf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 544
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.tf, align 8, !noalias !3436, !nonnull !6, !noundef !6
  %i.tg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 544
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.tg, align 8, !noalias !3436, !nonnull !6, !noundef !6
  %i.th = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 544
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.th, align 8, !noalias !3436, !nonnull !6, !noundef !6 ; 2 uses
  %i.ti = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.tj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 544
  br i1 %i.ti, label %.loopexit986, label %.new

bb.du:                                            ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @432) #46
          to label %.noexc.i.i473 unwind label %bb.dv, !noalias !3437

.noexc.i.i473:                                    ; preds = %bb.du
  unreachable

bb.dv:                                            ; preds = %bb.du
  %i.tk = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit517": ; preds = %.loopexit.split-lp989.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eq, %bb.ep
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp2712, %bb.eq ], [ %lpad.loopexit.split-lp2712, %bb.ep ], [ %lpad.loopexit.split-lp2717, %.loopexit.split-lp989.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.val429 = load i64, ptr %i.ak, align 8         ; 2 uses
  %i.tl = icmp eq i64 %.val429, 0
  br i1 %i.tl, label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit", label %bb.dw

bb.dw:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit517"
  %.val430 = load ptr, ptr %i.rm, align 8, !nonnull !6, !noundef !6
  %i.tm = mul nuw i64 %.val429, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val430, i64 noundef %i.tm, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit"

.loopexit.split-lp989.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dx, %bb.dz, %._crit_edge1404
  %lpad.loopexit.split-lp2717 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit517"

.loopexit986:                                     ; preds = %.prol.loopexit, %.new, %bb.ds
  %.sroa.7.0.i.i.i = phi i64 [ %i.sv, %bb.ds ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i, %bb.ds ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.7, %.new ]
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 8
  %i.to = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.to)
  %i.tp = getelementptr inbounds nuw [24 x i8], ptr %i.tn, i64 %.sroa.6.sroa.4.0.ph.i.i.i ; 2 uses
  %i.tq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 288
  %i.ts = load i64, ptr %i.tr, align 8, !noundef !6 ; 2 uses
  %i.tt = icmp ult i64 %i.ts, 576460752303423488
  call void @llvm.assume(i1 %i.tt)
  %i.tu = trunc i64 %i.ts to i32                  ; 2 uses
  %i.tv = shl i32 %.sroa.0138.01402, 5
  %i.tw = or i32 %i.tv, %i.tu
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8, !nonnull !6, !noundef !6
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.ua = load i64, ptr %i.tz, align 8, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !3438)
  %i.ub = load i64, ptr %i.ak, align 8, !range !14, !alias.scope !3438, !noundef !6
  %i.uc = icmp eq i64 %i.rr, %i.ub
  br i1 %i.uc, label %bb.dx, label %bb.et

bb.dx:                                            ; preds = %.loopexit986
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he436d2a93d1a1c91E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @130)
          to label %._crit_edge1788 unwind label %.loopexit.split-lp989.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge1788:                                  ; preds = %bb.dx
  %.pre1789 = load ptr, ptr %i.rm, align 8, !alias.scope !3438
  br label %bb.et

._crit_edge1404.loopexit:                         ; preds = %bb.et
  %.pre1790 = load ptr, ptr %i.rm, align 8
  br label %._crit_edge1404

._crit_edge1404:                                  ; preds = %._crit_edge1404.loopexit, %._crit_edge1396
  %i.ud = phi i64 [ %i.xg, %._crit_edge1404.loopexit ], [ 0, %._crit_edge1396 ]
  %i.ue = phi ptr [ %.pre1790, %._crit_edge1404.loopexit ], [ inttoptr (i64 8 to ptr), %._crit_edge1396 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke fastcc void @_ZN4yada7builder18DoubleArrayBuilder5build17h2966da70c206852fE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ue, i64 noundef %i.ud)
          to label %bb.dy unwind label %.loopexit.split-lp989.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dy:                                            ; preds = %._crit_edge1404
  %i.uf = load i64, ptr %i.aj, align 8, !range !15, !noundef !6 ; 4 uses
  %.not368 = icmp eq i64 %i.uf, -9223372036854775808
  br i1 %.not368, label %bb.dz, label %.preheader, !prof !16

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr @129, ptr %i.ad, align 8
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 1, ptr %i.ug, align 8
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr null, ptr %i.uh, align 8
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ui, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %i.uj, align 8
  %i.uk = invoke fastcc noundef nonnull ptr @_ZN6anyhow9__private10format_err17h7fa6d8de0a0b5309E(ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.ad)
          to label %bb.ea unwind label %.loopexit.split-lp989.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.uk, ptr %i.ul, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 4, ptr %i.um, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  %.val425 = load i64, ptr %i.ak, align 8         ; 2 uses
  %i.un = icmp eq i64 %.val425, 0
  br i1 %i.un, label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit476", label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.uo = mul nuw i64 %.val425, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ue, i64 noundef %i.uo, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit476"

.preheader:                                       ; preds = %bb.dy
  %.sroa.4301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.4301.0.copyload = load ptr, ptr %.sroa.4301.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.5302.0.copyload = load i64, ptr %.sroa.5302.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 0, ptr %i.ai, align 8
  %i.up = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.up, align 8
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store i64 0, ptr %i.uq, align 8
  %i.ur = load ptr, ptr %i.au, align 8, !noundef !6 ; 2 uses
  %.not369.not = icmp eq ptr %i.ur, null
  br i1 %.not369.not, label %.loopexit._crit_edge, label %select.unfold902.preheader

select.unfold902.preheader:                       ; preds = %.preheader
  %7 = load i64, ptr %i.rl, align 8               ; 2 uses
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %.split1406.loopexit, label %.lr.ph2705

.lr.ph2705:                                       ; preds = %select.unfold902.preheader
  %9 = ptrtoint ptr %i.ur to i64
  %10 = load i64, ptr %i.rk, align 8
  br label %bb.ec

.loopexit.loopexit:                               ; preds = %bb.em, %.loopexit1916
  %i.us = icmp eq i64 %i.ut, 0
  br i1 %i.us, label %.split1406.loopexit, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph2705, %.loopexit.loopexit
  %.sroa.5759.02703 = phi ptr [ null, %.lr.ph2705 ], [ %.sroa.07.0.i.i.i503, %.loopexit.loopexit ] ; 2 uses
  %.sroa.14761.02702 = phi i64 [ %10, %.lr.ph2705 ], [ %.sroa.7.0.i.i.i502, %.loopexit.loopexit ] ; 6 uses
  %.sroa.22767.02701 = phi i64 [ %7, %.lr.ph2705 ], [ %i.ut, %.loopexit.loopexit ]
  %.sroa.9760.02700 = phi i64 [ %9, %.lr.ph2705 ], [ 0, %.loopexit.loopexit ] ; 2 uses
  %i.ut = add i64 %.sroa.22767.02701, -1          ; 2 uses
  %.not.i.i478 = icmp eq ptr %.sroa.5759.02703, null
  br i1 %.not.i.i478, label %bb.ed, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i483"

bb.ed:                                            ; preds = %bb.ec
  %i.uu = inttoptr i64 %.sroa.9760.02700 to ptr   ; 3 uses
  %i.uv = icmp eq i64 %.sroa.14761.02702, 0
  br i1 %i.uv, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i483", label %.lr.ph.i.i508.preheader

.lr.ph.i.i508.preheader:                          ; preds = %bb.ed
  %xtraiter2979 = and i64 %.sroa.14761.02702, 7   ; 2 uses
  %lcmp.mod2980.not = icmp eq i64 %xtraiter2979, 0
  br i1 %lcmp.mod2980.not, label %.lr.ph.i.i508.prol.loopexit, label %.lr.ph.i.i508.prol

.lr.ph.i.i508.prol:                               ; preds = %.lr.ph.i.i508.preheader, %.lr.ph.i.i508.prol
  %.sroa.012.015.i.i509.prol = phi ptr [ %.sroa.012.0.i.i511.prol, %.lr.ph.i.i508.prol ], [ %i.uu, %.lr.ph.i.i508.preheader ]
  %.sroa.011.014.i.i510.prol = phi i64 [ %i.ux, %.lr.ph.i.i508.prol ], [ %.sroa.14761.02702, %.lr.ph.i.i508.preheader ]
  %prol.iter2981 = phi i64 [ %prol.iter2981.next, %.lr.ph.i.i508.prol ], [ 0, %.lr.ph.i.i508.preheader ]
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i509.prol, i64 544
  %i.ux = add i64 %.sroa.011.014.i.i510.prol, -1  ; 2 uses
  %.sroa.012.0.i.i511.prol = load ptr, ptr %i.uw, align 8, !noalias !3439, !nonnull !6, !noundef !6 ; 3 uses
  %prol.iter2981.next = add i64 %prol.iter2981, 1 ; 2 uses
  %prol.iter2981.cmp.not = icmp eq i64 %prol.iter2981.next, %xtraiter2979
  br i1 %prol.iter2981.cmp.not, label %.lr.ph.i.i508.prol.loopexit, label %.lr.ph.i.i508.prol, !llvm.loop !3153

.lr.ph.i.i508.prol.loopexit:                      ; preds = %.lr.ph.i.i508.prol, %.lr.ph.i.i508.preheader
  %.sroa.012.0.i.i511.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i508.preheader ], [ %.sroa.012.0.i.i511.prol, %.lr.ph.i.i508.prol ]
  %.sroa.012.015.i.i509.unr = phi ptr [ %i.uu, %.lr.ph.i.i508.preheader ], [ %.sroa.012.0.i.i511.prol, %.lr.ph.i.i508.prol ]
  %.sroa.011.014.i.i510.unr = phi i64 [ %.sroa.14761.02702, %.lr.ph.i.i508.preheader ], [ %i.ux, %.lr.ph.i.i508.prol ]
  %i.uy = icmp ult i64 %.sroa.14761.02702, 8
  br i1 %i.uy, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i483", label %.lr.ph.i.i508

.lr.ph.i.i508:                                    ; preds = %.lr.ph.i.i508.prol.loopexit, %.lr.ph.i.i508
  %.sroa.012.015.i.i509 = phi ptr [ %.sroa.012.0.i.i511.7, %.lr.ph.i.i508 ], [ %.sroa.012.015.i.i509.unr, %.lr.ph.i.i508.prol.loopexit ]
  %.sroa.011.014.i.i510 = phi i64 [ %i.vh, %.lr.ph.i.i508 ], [ %.sroa.011.014.i.i510.unr, %.lr.ph.i.i508.prol.loopexit ]
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i509, i64 544
  %.sroa.012.0.i.i511 = load ptr, ptr %i.uz, align 8, !noalias !3439, !nonnull !6, !noundef !6
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i511, i64 544
  %.sroa.012.0.i.i511.1 = load ptr, ptr %i.va, align 8, !noalias !3439, !nonnull !6, !noundef !6
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i511.1, i64 544
  %.sroa.012.0.i.i511.2 = load ptr, ptr %i.vb, align 8, !noalias !3439, !nonnull !6, !noundef !6
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i511.2, i64 544
  %.sroa.012.0.i.i511.3 = load ptr, ptr %i.vc, align 8, !noalias !3439, !nonnull !6, !noundef !6
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i511.3, i64 544
  %.sroa.012.0.i.i511.4 = load ptr, ptr %i.vd, align 8, !noalias !3439, !nonnull !6, !noundef !6
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i511.4, i64 544
  %.sroa.012.0.i.i511.5 = load ptr, ptr %i.ve, align 8, !noalias !3439, !nonnull !6, !noundef !6
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i511.5, i64 544
  %.sroa.012.0.i.i511.6 = load ptr, ptr %i.vf, align 8, !noalias !3439, !nonnull !6, !noundef !6
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i511.6, i64 544
  %i.vh = add i64 %.sroa.011.014.i.i510, -8       ; 2 uses
  %.sroa.012.0.i.i511.7 = load ptr, ptr %i.vg, align 8, !noalias !3439, !nonnull !6, !noundef !6 ; 2 uses
  %i.vi = icmp eq i64 %i.vh, 0
  br i1 %i.vi, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i483", label %.lr.ph.i.i508

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i483": ; preds = %.lr.ph.i.i508.prol.loopexit, %.lr.ph.i.i508, %bb.ed, %bb.ec
  %.sroa.37.0.copyload.i.i484 = phi i64 [ %.sroa.14761.02702, %bb.ec ], [ 0, %bb.ed ], [ 0, %.lr.ph.i.i508 ], [ 0, %.lr.ph.i.i508.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i485 = phi i64 [ %.sroa.9760.02700, %bb.ec ], [ 0, %bb.ed ], [ 0, %.lr.ph.i.i508 ], [ 0, %.lr.ph.i.i508.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i486 = phi ptr [ %.sroa.5759.02703, %bb.ec ], [ %i.uu, %bb.ed ], [ %.sroa.012.0.i.i511.lcssa.unr, %.lr.ph.i.i508.prol.loopexit ], [ %.sroa.012.0.i.i511.7, %.lr.ph.i.i508 ] ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i486, i64 538
  %i.vk = load i16, ptr %i.vj, align 2, !noalias !3440, !noundef !6
  %i.vl = zext i16 %i.vk to i64
  %i.vm = icmp ult i64 %.sroa.37.0.copyload.i.i484, %i.vl
  br i1 %i.vm, label %bb.ef, label %.lr.ph.i.i.i.i489

.lr.ph.i.i.i.i489:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i483", %bb.ee
  %.sroa.0.038.i.i.i.i490 = phi ptr [ %i.vn, %bb.ee ], [ %.sroa.05.0.copyload.i.i486, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i483" ] ; 2 uses
  %.sroa.5.037.i.i.i.i491 = phi i64 [ %i.vp, %bb.ee ], [ %.sroa.26.0.copyload.i.i485, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i483" ]
  %i.vn = load ptr, ptr %.sroa.0.038.i.i.i.i490, align 8, !noalias !3441, !noundef !6 ; 4 uses
  %.not.i.i.i.i.i492 = icmp eq ptr %i.vn, null
  br i1 %.not.i.i.i.i.i492, label %bb.eh, label %bb.ee

._crit_edge.loopexit.i.i.i.i493:                  ; preds = %bb.ee
  %i.vo = zext i16 %i.vr to i64
  br label %bb.ef

bb.ee:                                            ; preds = %.lr.ph.i.i.i.i489
  %i.vp = add i64 %.sroa.5.037.i.i.i.i491, 1      ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i490, i64 536
  %i.vr = load i16, ptr %i.vq, align 8, !noalias !3441 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vn, i64 538
  %i.vt = load i16, ptr %i.vs, align 2, !noalias !3440, !noundef !6
  %i.vu = icmp ult i16 %i.vr, %i.vt
  br i1 %i.vu, label %._crit_edge.loopexit.i.i.i.i493, label %.lr.ph.i.i.i.i489

bb.ef:                                            ; preds = %._crit_edge.loopexit.i.i.i.i493, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i483"
  %.sroa.6.sroa.4.0.ph.i.i.i494 = phi i64 [ %.sroa.37.0.copyload.i.i484, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i483" ], [ %i.vo, %._crit_edge.loopexit.i.i.i.i493 ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i495 = phi i64 [ %.sroa.26.0.copyload.i.i485, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i483" ], [ %i.vp, %._crit_edge.loopexit.i.i.i.i493 ] ; 5 uses
  %.sroa.0.0.ph.i.i.i496 = phi ptr [ %.sroa.05.0.copyload.i.i486, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit.i483" ], [ %i.vn, %._crit_edge.loopexit.i.i.i.i493 ] ; 3 uses
  %i.vv = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i495, 0
  %i.vw = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i494, 1 ; 2 uses
  br i1 %i.vv, label %.loopexit1916, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i496, i64 544
  %i.vy = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i494, 11
  call void @llvm.assume(i1 %i.vy)
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vx, i64 %i.vw ; 2 uses
  %xtraiter2985 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i495, 7 ; 2 uses
  %lcmp.mod2986.not = icmp eq i64 %xtraiter2985, 0
  br i1 %lcmp.mod2986.not, label %.prol.loopexit2983, label %.prol.preheader2982

.prol.preheader2982:                              ; preds = %bb.eg, %.prol.preheader2982
  %.pn30.in.i.i.i.i497.prol = phi ptr [ %i.wa, %.prol.preheader2982 ], [ %i.vz, %bb.eg ]
  %.pn28.in.i.i.i.i498.prol = phi i64 [ %.pn28.i.i.i.i499.prol, %.prol.preheader2982 ], [ %.sroa.6.sroa.0.0.ph.i.i.i495, %bb.eg ]
  %prol.iter2987 = phi i64 [ %prol.iter2987.next, %.prol.preheader2982 ], [ 0, %bb.eg ]
  %.pn28.i.i.i.i499.prol = add i64 %.pn28.in.i.i.i.i498.prol, -1 ; 2 uses
  %.pn30.i.i.i.i500.prol = load ptr, ptr %.pn30.in.i.i.i.i497.prol, align 8, !noalias !3442, !nonnull !6, !noundef !6 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i500.prol, i64 544 ; 2 uses
  %prol.iter2987.next = add i64 %prol.iter2987, 1 ; 2 uses
  %prol.iter2987.cmp.not = icmp eq i64 %prol.iter2987.next, %xtraiter2985
  br i1 %prol.iter2987.cmp.not, label %.prol.loopexit2983, label %.prol.preheader2982, !llvm.loop !3167

.prol.loopexit2983:                               ; preds = %.prol.preheader2982, %bb.eg
  %.pn30.i.i.i.i500.lcssa.unr = phi ptr [ poison, %bb.eg ], [ %.pn30.i.i.i.i500.prol, %.prol.preheader2982 ]
  %.pn30.in.i.i.i.i497.unr = phi ptr [ %i.vz, %bb.eg ], [ %i.wa, %.prol.preheader2982 ]
  %.pn28.in.i.i.i.i498.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i495, %bb.eg ], [ %.pn28.i.i.i.i499.prol, %.prol.preheader2982 ]
  %i.wb = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i495, 8
  br i1 %i.wb, label %.loopexit1916, label %.new2984

.new2984:                                         ; preds = %.prol.loopexit2983, %.new2984
  %.pn30.in.i.i.i.i497 = phi ptr [ %i.wk, %.new2984 ], [ %.pn30.in.i.i.i.i497.unr, %.prol.loopexit2983 ]
  %.pn28.in.i.i.i.i498 = phi i64 [ %.pn28.i.i.i.i499.7, %.new2984 ], [ %.pn28.in.i.i.i.i498.unr, %.prol.loopexit2983 ]
  %.pn30.i.i.i.i500 = load ptr, ptr %.pn30.in.i.i.i.i497, align 8, !noalias !3442, !nonnull !6, !noundef !6
  %i.wc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i500, i64 544
  %.pn30.i.i.i.i500.1 = load ptr, ptr %i.wc, align 8, !noalias !3442, !nonnull !6, !noundef !6
  %i.wd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i500.1, i64 544
  %.pn30.i.i.i.i500.2 = load ptr, ptr %i.wd, align 8, !noalias !3442, !nonnull !6, !noundef !6
  %i.we = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i500.2, i64 544
  %.pn30.i.i.i.i500.3 = load ptr, ptr %i.we, align 8, !noalias !3442, !nonnull !6, !noundef !6
  %i.wf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i500.3, i64 544
  %.pn30.i.i.i.i500.4 = load ptr, ptr %i.wf, align 8, !noalias !3442, !nonnull !6, !noundef !6
  %i.wg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i500.4, i64 544
  %.pn30.i.i.i.i500.5 = load ptr, ptr %i.wg, align 8, !noalias !3442, !nonnull !6, !noundef !6
  %i.wh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i500.5, i64 544
  %.pn30.i.i.i.i500.6 = load ptr, ptr %i.wh, align 8, !noalias !3442, !nonnull !6, !noundef !6
  %i.wi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i500.6, i64 544
  %.pn28.i.i.i.i499.7 = add i64 %.pn28.in.i.i.i.i498, -8 ; 2 uses
  %.pn30.i.i.i.i500.7 = load ptr, ptr %i.wi, align 8, !noalias !3442, !nonnull !6, !noundef !6 ; 2 uses
  %i.wj = icmp eq i64 %.pn28.i.i.i.i499.7, 0
  %i.wk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i500.7, i64 544
  br i1 %i.wj, label %.loopexit1916, label %.new2984

bb.eh:                                            ; preds = %.lr.ph.i.i.i.i489
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @432) #46
          to label %.noexc.i.i506 unwind label %bb.ei, !noalias !3443

.noexc.i.i506:                                    ; preds = %bb.eh
  unreachable

bb.ei:                                            ; preds = %bb.eh
  %i.wl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit1916:                                    ; preds = %.prol.loopexit2983, %.new2984, %bb.ef
  %.sroa.7.0.i.i.i502 = phi i64 [ %i.vw, %bb.ef ], [ 0, %.new2984 ], [ 0, %.prol.loopexit2983 ]
  %.sroa.07.0.i.i.i503 = phi ptr [ %.sroa.0.0.ph.i.i.i496, %bb.ef ], [ %.pn30.i.i.i.i500.lcssa.unr, %.prol.loopexit2983 ], [ %.pn30.i.i.i.i500.7, %.new2984 ]
  %i.wm = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i494, 11
  call void @llvm.assume(i1 %i.wm)
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i496, i64 272
  %i.wo = getelementptr inbounds nuw [24 x i8], ptr %i.wn, i64 %.sroa.6.sroa.4.0.ph.i.i.i494 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.wq = load ptr, ptr %i.wp, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %i.ws = load i64, ptr %i.wr, align 8, !noundef !6 ; 2 uses
  %.idx2707 = shl nuw nsw i64 %i.ws, 4
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wq, i64 %.idx2707
  %i.wu = icmp eq i64 %i.ws, 0
  br i1 %i.wu, label %.loopexit.loopexit, label %.lr.ph2699

.split1406.loopexit:                              ; preds = %.loopexit.loopexit, %select.unfold902.preheader
  %.sroa.0782.0.copyload.pre = load i64, ptr %i.ai, align 8
  %.sroa.4783.0.copyload.pre = load ptr, ptr %i.up, align 8
  %.sroa.5784.0.copyload.pre = load i64, ptr %i.uq, align 8
  br label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.preheader, %.split1406.loopexit
  %.sroa.5784.0.copyload = phi i64 [ %.sroa.5784.0.copyload.pre, %.split1406.loopexit ], [ 0, %.preheader ]
  %.sroa.4783.0.copyload = phi ptr [ %.sroa.4783.0.copyload.pre, %.split1406.loopexit ], [ inttoptr (i64 1 to ptr), %.preheader ]
  %.sroa.0782.0.copyload = phi i64 [ %.sroa.0782.0.copyload.pre, %.split1406.loopexit ], [ 0, %.preheader ]
  %.sroa.0785.0.copyload = load i64, ptr %i.ar, align 8
  %.sroa.4786.0.copyload = load ptr, ptr %i.ri, align 8
  %.sroa.5787.0.copyload = load i64, ptr %i.rh, align 8
  %.sroa.12797.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12797.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  store i64 %i.uf, ptr %0, align 8
  %.sroa.4789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4301.0.copyload, ptr %.sroa.4789.0..sroa_idx, align 8
  %.sroa.5790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5302.0.copyload, ptr %.sroa.5790.0..sroa_idx, align 8
  %.sroa.6791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0782.0.copyload, ptr %.sroa.6791.0..sroa_idx, align 8
  %.sroa.7792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.4783.0.copyload, ptr %.sroa.7792.0..sroa_idx, align 8
  %.sroa.8793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5784.0.copyload, ptr %.sroa.8793.0..sroa_idx, align 8
  %.sroa.9794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0785.0.copyload, ptr %.sroa.9794.0..sroa_idx, align 8
  %.sroa.10795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.4786.0.copyload, ptr %.sroa.10795.0..sroa_idx, align 8
  %.sroa.11796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.5787.0.copyload, ptr %.sroa.11796.0..sroa_idx, align 8
  %.sroa.13798.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %.sroa.13798.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.val427 = load i64, ptr %i.ak, align 8         ; 2 uses
  %i.wv = icmp eq i64 %.val427, 0
  br i1 %i.wv, label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit516", label %bb.ej

bb.ej:                                            ; preds = %.loopexit._crit_edge
  %i.ww = mul nuw i64 %.val427, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ue, i64 noundef %i.ww, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit516"

.loopexit.split-lp1002.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gf, %bb.fy, %.invoke2322, %bb.ew, %bb.fa
  %lpad.loopexit.split-lp2735 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit"

"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit516": ; preds = %bb.ej, %.loopexit._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..vec..Vec$LT$lindera_dictionary..viterbi..WordEntry$GT$$GT$$GT$17h2bd0b5f0f27c1545E"(ptr noalias noundef align 8 dereferenceable(24) %i.au)
          to label %bb.ek unwind label %bb.t

bb.ek:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit516"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call fastcc void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E"(ptr noalias noundef align 8 dereferenceable(24) %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call fastcc void @"_ZN4core3ptr61drop_in_place$LT$csv..reader..Reader$LT$std..fs..File$GT$$GT$17h600befcd7006890bE"(ptr noalias noundef align 8 dereferenceable(136) %i.ay)
  br label %bb.el

bb.el:                                            ; preds = %bb.p, %"_ZN4core3ptr61drop_in_place$LT$csv..reader..Reader$LT$std..fs..File$GT$$GT$17h600befcd7006890bE.exit", %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  ret void

bb.em:                                            ; preds = %.lr.ph2699
  %.sroa.0350.1 = getelementptr inbounds nuw i8, ptr %.sroa.0350.02698, i64 16 ; 2 uses
  %i.wx = icmp eq ptr %.sroa.0350.1, %i.wt
  br i1 %i.wx, label %.loopexit.loopexit, label %.lr.ph2699

.lr.ph2699:                                       ; preds = %.loopexit1916, %bb.em
  %.sroa.0350.02698 = phi ptr [ %.sroa.0350.1, %bb.em ], [ %i.wq, %.loopexit1916 ] ; 2 uses
  invoke fastcc void @_ZN18lindera_dictionary7viterbi9WordEntry9serialize17he86a14316cebac0aE(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %.sroa.0350.02698, ptr noalias noundef align 8 dereferenceable(24) %i.ai)
          to label %bb.em unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph2699
  %lpad.loopexit.split-lp2712 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val412 = load i64, ptr %i.ai, align 8         ; 2 uses
  %i.wy = icmp eq i64 %.val412, 0
  br i1 %i.wy, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val413 = load ptr, ptr %i.up, align 8, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val413, i64 noundef %.val412, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %bb.ep

bb.eo:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit580"
  %i.wz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #49
  unreachable

bb.ep:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.en
  %i.xa = icmp eq i64 %i.uf, 0
  br i1 %i.xa, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit517", label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4301.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4301.0.copyload, i64 noundef %i.uf, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit517"

"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit476": ; preds = %bb.eb, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.er

bb.er:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit577", %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit476"
  %i.xb = phi ptr [ %i.qm, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit577" ], [ %i.ri, %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit476" ]
  %i.xc = phi ptr [ %i.qk, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit577" ], [ %i.rj, %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit476" ]
  %.val408 = load i64, ptr %i.ar, align 8         ; 2 uses
  %i.xd = icmp eq i64 %.val408, 0
  br i1 %i.xd, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit518", label %bb.es

bb.es:                                            ; preds = %bb.er
  %.val409 = load ptr, ptr %i.xb, align 8, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val409, i64 noundef %.val408, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit518"

bb.et:                                            ; preds = %._crit_edge1788, %.loopexit986
  %i.xe = phi ptr [ %.pre1789, %._crit_edge1788 ], [ %i.rq, %.loopexit986 ] ; 2 uses
  %i.xf = getelementptr inbounds nuw [24 x i8], ptr %i.xe, i64 %i.rr ; 3 uses
  store ptr %i.ty, ptr %i.xf, align 8, !noalias !3438
  %.sroa.4751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  store i64 %i.ua, ptr %.sroa.4751.0..sroa_idx, align 8, !noalias !3438
  %.sroa.5752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  store i32 %i.tw, ptr %.sroa.5752.0..sroa_idx, align 8, !noalias !3438
  %i.xg = add i64 %i.rr, 1                        ; 3 uses
  store i64 %i.xg, ptr %i.rn, align 8, !alias.scope !3438
  %i.xh = add i32 %.sroa.0138.01402, %i.tu
  %i.xi = icmp eq i64 %i.rs, 0
  br i1 %i.xi, label %._crit_edge1404.loopexit, label %.lr.ph1403

bb.eu:                                            ; preds = %bb.dp
  %.not374 = icmp ult i64 %i.rf, %i.qq
  br i1 %.not374, label %bb.ew, label %bb.ex

bb.ev:                                            ; preds = %bb.dp
  br i1 %.not380, label %bb.fz, label %bb.fy

bb.ew:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %1, ptr %i.al, align 8
  %.sroa.4260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.4260.0..sroa_idx, align 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.qp, ptr %i.xj, align 8
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.4264.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3444
  store ptr @134, ptr %i.g, align 8, !noalias !3445
  %.sroa.4730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 3, ptr %.sroa.4730.0..sroa_idx, align 8, !noalias !3445
  %.sroa.5731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.al, ptr %.sroa.5731.0..sroa_idx, align 8, !noalias !3445
  %.sroa.6732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %.sroa.6732.0..sroa_idx, align 8, !noalias !3445
  %.sroa.7733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.7733.0..sroa_idx, align 8, !noalias !3445
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.fa unwind label %.loopexit.split-lp1002.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ex:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.qr, align 8
  store i64 0, ptr %i.qs, align 8
  %.sroa.073.0.val417 = load ptr, ptr %.sroa.0349.01392, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.sroa.073.0.val417, i64 80
  %i.xl = load i64, ptr %i.xk, align 8, !noundef !6 ; 5 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.sroa.073.0.val417, i64 64
  %i.xn = load ptr, ptr %i.xm, align 8, !nonnull !6, !noundef !6
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.073.0.val417, i64 72
  %i.xp = load i64, ptr %i.xo, align 8, !noundef !6 ; 2 uses
  %.not.i520 = icmp ugt i64 %i.xl, %i.xp
  br i1 %.not.i520, label %.invoke2324, label %bb.ey, !prof !9

bb.ey:                                            ; preds = %bb.ex
  %.not4.i = icmp eq i64 %i.xl, 0
  br i1 %.not4.i, label %bb.fc, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.xq = getelementptr [8 x i8], ptr %i.xn, i64 %i.xl
  %i.xr = getelementptr i8, ptr %i.xq, i64 -8
  %i.xs = load i64, ptr %i.xr, align 8, !noundef !6 ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.sroa.073.0.val417, i64 48
  %i.xu = load i64, ptr %i.xt, align 8, !noundef !6 ; 2 uses
  %.not5.i = icmp ugt i64 %i.xs, %i.xu
  br i1 %.not5.i, label %.invoke2324, label %bb.fc, !prof !35

bb.fa:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.xv = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17hba822881bcddadacE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.am)
          to label %bb.fb unwind label %.loopexit.split-lp1002.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fb:                                            ; preds = %bb.fa
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.xv, ptr %i.xw, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.xx, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit577"

.loopexit.split-lp997.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fo, %bb.fk, %.invoke2324, %bb.fs, %bb.fi
  %lpad.loopexit.split-lp.a = landingpad { ptr, i32 }
          cleanup
  br label %.body531

.body531:                                         ; preds = %.loopexit.split-lp997.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fv, %bb.fw
  %eh.lpad-body532 = phi { ptr, i32 } [ %i.zl, %bb.fv ], [ %i.zl, %bb.fw ], [ %lpad.loopexit.split-lp.a, %.loopexit.split-lp997.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E"(ptr noalias noundef align 8 dereferenceable(24) %i.ao) #48
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit"

bb.fc:                                            ; preds = %bb.ez, %bb.ey
  %.sroa.0.03.i = phi i64 [ %i.xs, %bb.ez ], [ 0, %bb.ey ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %.sroa.0349.01392, ptr %i.an, align 8
  store i64 %.sroa.0.03.i, ptr %.sroa.091.sroa.2.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.091.sroa.3.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.xl, ptr %.sroa.091.sroa.5.0..sroa_idx, align 8
  store i64 4, ptr %.sroa.292.0..sroa_idx, align 8
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fx, %bb.fc
  %i.xy = phi i64 [ %.pr, %bb.fx ], [ 4, %bb.fc ] ; 2 uses
  %.not375 = icmp eq i64 %i.xy, 0
  br i1 %.not375, label %bb.fe, label %bb.fk, !prof !7

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.experimental.noalias.scope.decl(metadata !3446)
  %i.xz = load i64, ptr %.sroa.091.sroa.4.0..sroa_idx, align 8, !alias.scope !3446, !noundef !6 ; 5 uses
  %i.ya = load i64, ptr %.sroa.091.sroa.5.0..sroa_idx, align 8, !alias.scope !3446, !noundef !6
  %i.yb = icmp eq i64 %i.xz, %i.ya
  br i1 %i.yb, label %bb.fl, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.yc = load i64, ptr %.sroa.091.sroa.3.0..sroa_idx, align 8, !alias.scope !3446, !noundef !6 ; 4 uses
  %i.yd = load ptr, ptr %i.an, align 8, !alias.scope !3446, !nonnull !6, !align !8, !noundef !6
  %i.ye = load ptr, ptr %i.yd, align 8, !noalias !3446, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 80
  %i.yg = load i64, ptr %i.yf, align 8, !noalias !3446, !noundef !6 ; 4 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 64
  %i.yi = load ptr, ptr %i.yh, align 8, !noalias !3446, !nonnull !6, !noundef !6
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ye, i64 72
  %i.yk = load i64, ptr %i.yj, align 8, !noalias !3446, !noundef !6 ; 2 uses
  %.not.i523 = icmp ugt i64 %i.yg, %i.yk
  br i1 %.not.i523, label %.invoke2324, label %bb.fg, !prof !9

bb.fg:                                            ; preds = %bb.ff
  %i.yl = icmp ult i64 %i.xz, %i.yg
  br i1 %i.yl, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.yi, i64 %i.xz
  %i.yn = load i64, ptr %i.ym, align 8, !noalias !3446, !noundef !6 ; 5 uses
  %i.yo = add nuw i64 %i.xz, 1
  store i64 %i.yo, ptr %.sroa.091.sroa.4.0..sroa_idx, align 8, !alias.scope !3446
  store i64 %i.yn, ptr %.sroa.091.sroa.3.0..sroa_idx, align 8, !alias.scope !3446
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ye, i64 48
  %i.yq = load i64, ptr %i.yp, align 8, !noalias !3446, !noundef !6 ; 2 uses
  %i.yr = icmp ult i64 %i.yn, %i.yc
  %.not5.i524 = icmp ugt i64 %i.yn, %i.yq
  %or.cond.i = or i1 %i.yr, %.not5.i524
  br i1 %or.cond.i, label %.invoke2324, label %bb.fj, !prof !9

bb.fi:                                            ; preds = %bb.fg
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.xz, i64 noundef %i.yg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #46
          to label %.noexc528 unwind label %.loopexit.split-lp997.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc528:                                        ; preds = %bb.fi
  unreachable

.invoke2324:                                      ; preds = %bb.ez, %bb.ex, %bb.fh, %bb.ff
  %i.ys = phi i64 [ 0, %bb.ff ], [ %i.yc, %bb.fh ], [ 0, %bb.ex ], [ 0, %bb.ez ]
  %i.yt = phi i64 [ %i.yg, %bb.ff ], [ %i.yn, %bb.fh ], [ %i.xs, %bb.ez ], [ %i.xl, %bb.ex ]
  %i.yu = phi i64 [ %i.yk, %bb.ff ], [ %i.yq, %bb.fh ], [ %i.xu, %bb.ez ], [ %i.xp, %bb.ex ]
end_hunk_1
begin_hunk_2_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb39ca07ebc1a7187E":bb.a
  %i.x = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.4.0.i.ph.i
  %i.z = load ptr, ptr %i.y, align 8, !noalias !9888, !nonnull !6, !noundef !6
  %i.aa = add i64 %.sroa.3.0.i, -1
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %.sroa.022.0.copyload = load i64, ptr %2, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.022.0.copyload, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.524.0.copyload, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit15"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit15": ; preds = %bb.h, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h03526daf6a401263E.exit", %bb.i, %bb.g
  ret void

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h03526daf6a401263E.exit": ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i, ptr %i.ab, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.i, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0.i.i74, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %.sroa.44.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9889)
  %.val.i13 = load i64, ptr %2, align 8, !alias.scope !9889 ; 2 uses
  %i.ac = icmp eq i64 %.val.i13, 0
  br i1 %i.ac, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit15", label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h03526daf6a401263E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i13, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !9889
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit15"

bb.i:                                             ; preds = %._crit_edge
  %.sroa.037.0.copyload = load i64, ptr %2, align 8
  store i64 %.sroa.037.0.copyload, ptr %0, align 8
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val, ptr %.sroa.05.sroa.4.0..sroa_idx, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val12, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx7, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.4.0.i.ph.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit15"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h373f035985f41430E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9926)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !9927
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !9927 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !9927 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !9927 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !9927
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h77cfca97dd81f902E.exit"

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.019.021.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.018.020.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.prol, i64 544
  %i.g = load ptr, ptr %i.f, align 8, !noalias !9928, !nonnull !6, !noundef !6 ; 3 uses
  %i.h = add i64 %.sroa.018.020.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !9897

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.019.021.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.018.020.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.019.021.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.019.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.018.020.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.018.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i, i64 544
  %i.k = load ptr, ptr %i.j, align 8, !noalias !9928, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  %i.m = load ptr, ptr %i.l, align 8, !noalias !9928, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 544
  %i.o = load ptr, ptr %i.n, align 8, !noalias !9928, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 544
  %i.q = load ptr, ptr %i.p, align 8, !noalias !9928, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 544
  %i.s = load ptr, ptr %i.r, align 8, !noalias !9928, !nonnull !6, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 544
  %i.u = load ptr, ptr %i.t, align 8, !noalias !9928, !nonnull !6, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 544
  %i.w = load ptr, ptr %i.v, align 8, !noalias !9928, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 544
  %i.y = load ptr, ptr %i.x, align 8, !noalias !9928, !nonnull !6, !noundef !6 ; 2 uses
  %i.z = add i64 %.sroa.018.020.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !9929, !noundef !6 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb797ea32dfcbfdf3E.exit.i", label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i3.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.5.05.i.i = phi i64 [ %i.ae, %.lr.ph.i3.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.5.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.5.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #47, !noalias !9930
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !9929, !noundef !6 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb797ea32dfcbfdf3E.exit.i", label %.lr.ph.i3.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb797ea32dfcbfdf3E.exit.i": ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.5.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i3.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i3.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.5.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #47, !noalias !9930
  br label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h77cfca97dd81f902E.exit"

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h77cfca97dd81f902E.exit": ; preds = %bb.b, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb797ea32dfcbfdf3E.exit.i"
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9932)
  %i.ah = load i64, ptr %1, align 8, !range !12, !alias.scope !9933, !noundef !6
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !9933, !noundef !6 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit_crit_edge.i"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit_crit_edge.i": ; preds = %bb.f
  %.sroa.26.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !9934
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.37.0.copyload.i.pre.i = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !9934
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !9933, !noundef !6 ; 5 uses
  %.sroa.012.013.i.i = load ptr, ptr %i.al, align 8, !alias.scope !9933, !nonnull !6, !noundef !6 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit.i", label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 544
  %i.aq = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !9935, !nonnull !6, !noundef !6 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !9909

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit.i", label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 544
  %.sroa.012.0.i.i = load ptr, ptr %i.as, align 8, !noalias !9935, !nonnull !6, !noundef !6
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 544
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !9935, !nonnull !6, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 544
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !9935, !nonnull !6, !noundef !6
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 544
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !9935, !nonnull !6, !noundef !6
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 544
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !9935, !nonnull !6, !noundef !6
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 544
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !9935, !nonnull !6, !noundef !6
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 544
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !9935, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 544
  %i.ba = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !9935, !nonnull !6, !noundef !6 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit.i", label %.lr.ph.i.i2

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit.i": ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit_crit_edge.i"
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.37.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.26.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %i.ak, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit_crit_edge.i" ], [ %.sroa.012.013.i.i, %bb.g ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9936)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 538
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !9937, !noundef !6
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit.i", %bb.i
  %.sroa.0.060.i.i.i.i = phi ptr [ %i.bg, %bb.i ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit.i" ] ; 4 uses
  %.sroa.5.059.i.i.i.i = phi i64 [ %i.by, %bb.i ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit.i" ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.060.i.i.i.i, align 8, !noalias !9938, !noundef !6 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit.i"
  %.sroa.6.0.lcssa.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit.i" ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit.i" ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h29be9efd79c1e9f4E.exit.i" ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  %i.bj = add nuw nsw i64 %.sroa.6.0.lcssa.i.i.i.i, 1 ; 2 uses
  br i1 %i.bi, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h0d6c009ef45f944bE.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 544
  %i.bl = icmp samesign ult i64 %.sroa.6.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.h ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !9939, !nonnull !6, !noundef !6 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !9924

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.h ], [ %i.bn, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h0d6c009ef45f944bE.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !9939, !nonnull !6, !noundef !6
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 544
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !9939, !nonnull !6, !noundef !6
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 544
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !9939, !nonnull !6, !noundef !6
  %i.br = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 544
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !9939, !nonnull !6, !noundef !6
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 544
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !9939, !nonnull !6, !noundef !6
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 544
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !9939, !nonnull !6, !noundef !6
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 544
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !9939, !nonnull !6, !noundef !6
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 544
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !9939, !nonnull !6, !noundef !6 ; 2 uses
  %i.bw = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 544
  br i1 %i.bw, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h0d6c009ef45f944bE.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.059.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i, i64 536
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !9938 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #47, !noalias !9940
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 538
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !9937, !noundef !6
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i54.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i55.i.i.i.i = select i1 %.not.i54.i.i.i.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i55.i.i.i.i, i64 noundef 8) #47, !noalias !9940
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @431) #46
          to label %.noexc.i.i unwind label %bb.k, !noalias !9941

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @433) #46, !noalias !9942
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h0d6c009ef45f944bE.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !9934
  store i64 0, ptr %i.al, align 8, !alias.scope !9934
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !9934
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h0d6c009ef45f944bE.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h77cfca97dd81f902E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hac6b39fde76facceE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9979)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !9980
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !9980 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !9980 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !9980 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !9980
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h6c4c90071e7fe67cE.exit"

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.019.021.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.018.020.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.prol, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !noalias !9981, !nonnull !6, !noundef !6 ; 3 uses
  %i.h = add i64 %.sroa.018.020.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !9950

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.019.021.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.018.020.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.019.021.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.019.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.018.020.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.018.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !noalias !9981, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !noalias !9981, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !noalias !9981, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !noalias !9981, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !noalias !9981, !nonnull !6, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !noalias !9981, !nonnull !6, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !noalias !9981, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !noalias !9981, !nonnull !6, !noundef !6 ; 2 uses
  %i.z = add i64 %.sroa.018.020.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !9982, !noundef !6 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h01a2031ed89c1f72E.exit.i", label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i3.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.5.05.i.i = phi i64 [ %i.ae, %.lr.ph.i3.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.5.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.5.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 56, i64 152
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #47, !noalias !9983
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !9982, !noundef !6 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h01a2031ed89c1f72E.exit.i", label %.lr.ph.i3.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h01a2031ed89c1f72E.exit.i": ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.5.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i3.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i3.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.5.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 56, i64 152
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #47, !noalias !9983
  br label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h6c4c90071e7fe67cE.exit"

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h6c4c90071e7fe67cE.exit": ; preds = %bb.b, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h01a2031ed89c1f72E.exit.i"
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9985)
  %i.ah = load i64, ptr %1, align 8, !range !12, !alias.scope !9986, !noundef !6
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !9986, !noundef !6 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit_crit_edge.i"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit_crit_edge.i": ; preds = %bb.f
  %.sroa.26.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !9987
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.37.0.copyload.i.pre.i = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !9987
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !9986, !noundef !6 ; 5 uses
  %.sroa.012.013.i.i = load ptr, ptr %i.al, align 8, !alias.scope !9986, !nonnull !6, !noundef !6 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i", label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 56
  %i.aq = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !9988, !nonnull !6, !noundef !6 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !9962

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i", label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 56
  %.sroa.012.0.i.i = load ptr, ptr %i.as, align 8, !noalias !9988, !nonnull !6, !noundef !6
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 56
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !9988, !nonnull !6, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 56
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !9988, !nonnull !6, !noundef !6
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 56
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !9988, !nonnull !6, !noundef !6
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 56
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !9988, !nonnull !6, !noundef !6
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 56
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !9988, !nonnull !6, !noundef !6
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 56
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !9988, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 56
  %i.ba = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !9988, !nonnull !6, !noundef !6 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i", label %.lr.ph.i.i2

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i": ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit_crit_edge.i"
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.37.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.26.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %i.ak, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit_crit_edge.i" ], [ %.sroa.012.013.i.i, %bb.g ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9989)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 54
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !9990, !noundef !6
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i", %bb.i
  %.sroa.0.060.i.i.i.i = phi ptr [ %i.bg, %bb.i ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i" ] ; 4 uses
  %.sroa.5.059.i.i.i.i = phi i64 [ %i.by, %bb.i ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i" ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.060.i.i.i.i, align 8, !noalias !9991, !noundef !6 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i"
  %.sroa.6.0.lcssa.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i" ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i" ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i" ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  %i.bj = add nuw nsw i64 %.sroa.6.0.lcssa.i.i.i.i, 1 ; 2 uses
  br i1 %i.bi, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h9fb636e2cd2bf2faE.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 56
  %i.bl = icmp samesign ult i64 %.sroa.6.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.h ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !9992, !nonnull !6, !noundef !6 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 56 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !9977

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.h ], [ %i.bn, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h9fb636e2cd2bf2faE.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !9992, !nonnull !6, !noundef !6
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 56
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !9992, !nonnull !6, !noundef !6
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 56
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !9992, !nonnull !6, !noundef !6
  %i.br = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 56
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !9992, !nonnull !6, !noundef !6
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 56
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !9992, !nonnull !6, !noundef !6
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 56
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !9992, !nonnull !6, !noundef !6
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 56
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !9992, !nonnull !6, !noundef !6
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 56
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !9992, !nonnull !6, !noundef !6 ; 2 uses
  %i.bw = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 56
  br i1 %i.bw, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h9fb636e2cd2bf2faE.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.059.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i, i64 52
  %i.ca = load i16, ptr %i.bz, align 4, !noalias !9991 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 56, i64 152
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #47, !noalias !9993
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 54
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !9990, !noundef !6
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i54.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i55.i.i.i.i = select i1 %.not.i54.i.i.i.i, i64 56, i64 152
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i55.i.i.i.i, i64 noundef 8) #47, !noalias !9993
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @431) #46
          to label %.noexc.i.i unwind label %bb.k, !noalias !9994

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @433) #46, !noalias !9995
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h9fb636e2cd2bf2faE.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !9987
  store i64 0, ptr %i.al, align 8, !alias.scope !9987
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !9987
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h9fb636e2cd2bf2faE.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h6c4c90071e7fe67cE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(24) ptr @"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h86f9f1a5ded59713E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 17 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 17 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = load i64, ptr %0, align 8, !range !15, !noundef !6 ; 8 uses
  %i.f = icmp eq i64 %i.e, -9223372036854775808
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8 ; 8 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8
  br label %bb.bp

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.710.0.copyload = load ptr, ptr %.sroa.710.0..sroa_idx, align 8 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 11 uses
  %.not.i = icmp eq ptr %.sroa.710.0.copyload, null
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !10115
  %i.h = tail call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !10115 ; 11 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 544) #46
          to label %.noexc.i unwind label %bb.bn, !noalias !10115

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  store ptr null, ptr %i.h, align 8, !noalias !10115
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 538
  store ptr %i.h, ptr %.sroa.6.0.copyload, align 8, !noalias !10115
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8
  store i64 0, ptr %i.k, align 8, !noalias !10115
  store i16 1, ptr %i.j, align 2, !noalias !10116
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.e, ptr %i.l, align 8, !noalias !10117
  %.sroa.526.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.0.0.copyload, ptr %.sroa.526.0..sroa_idx27.i, align 8, !noalias !10117
  %.sroa.6.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.5.0.copyload, ptr %.sroa.6.0..sroa_idx29.i, align 8, !noalias !10117
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  store i64 0, ptr %i.m, align 8, !noalias !10118
  %.sroa.533.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.533.0..sroa_idx34.i, align 8, !noalias !10118
  %.sroa.636.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  store i64 0, ptr %.sroa.636.0..sroa_idx37.i, align 8, !noalias !10118
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  %.sink63.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sink63.i.sroa.gep179.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %.sink62.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sink62.i.sroa.gep181.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10119
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.710.0.copyload, i64 538 ; 2 uses
end_hunk_2
