Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33049
inline.NumDeleted: 15304
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 158
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha928e51eaca7fbd7E":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %bb.f, label %.split44.us.i.i

.split44.us.i.i:                                  ; preds = %bb.d, %bb.b
  %.us-phi45.i.i = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.l, %bb.d ] ; 2 uses
  %.us-phi46.i.i = phi i64 [ %.promoted41.i.i, %bb.b ], [ %i.k, %bb.d ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  %i.n = load i16, ptr %.sroa.623.0..sroa_idx.i.i, align 8, !alias.scope !1545, !noundef !44 ; 2 uses
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %i.n, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h1c1e932dd7d69402E.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.split44.us.i.i
  %.promoted15.i.i.i.i.i.i.i = load ptr, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !alias.scope !1545
  br label %bb.e

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.e
  store ptr %i.s, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !alias.scope !1545
  store ptr %i.r, ptr %i.c, align 8, !alias.scope !1545
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h1c1e932dd7d69402E.exit.i.i

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %i.o = phi ptr [ %.promoted15.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.p = phi ptr [ %.us-phi45.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %bb.e ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.o, align 16, !noalias !1545
  %i.q = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -1152 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.q to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %._crit_edge.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  store ptr null, ptr %i.c, align 8, !alias.scope !1542
  br label %bb.g

_ZN4core4iter8adapters7flatten17and_then_or_clear17h1c1e932dd7d69402E.exit.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %.split44.us.i.i
  %i.t = phi ptr [ %i.r, %._crit_edge.i.i.i.i.i.i.i ], [ %.us-phi45.i.i, %.split44.us.i.i ]
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %i.n, %.split44.us.i.i ] ; 3 uses
  %i.u = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = and i16 %i.u, %.lcssa.i.i.i.i.i.i.i
  store i16 %i.x, ptr %.sroa.623.0..sroa_idx.i.i, align 8, !alias.scope !1545
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [72 x i8], ptr %i.t, i64 %i.y
  %i.aa = add i64 %.us-phi46.i.i, -1
  store i64 %i.aa, ptr %i.d, align 8, !alias.scope !1546
  br label %bb.m

bb.g:                                             ; preds = %bb.f, %.split.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  %i.ab = icmp eq ptr %i.h, %i.j
  br i1 %i.ab, label %.split48.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 3 uses
  store ptr %i.ac, ptr %i.f, align 8, !alias.scope !1549
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !1549, !nonnull !44, !align !50, !noundef !44 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !1552, !noalias !1553, !nonnull !44, !noundef !44 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !1552, !noalias !1553, !noundef !44
  %i.ah = getelementptr i8, ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %i.ae, align 16, !noalias !1554
  %i.aj = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1552, !noalias !1553, !noundef !44 ; 2 uses
  store ptr %i.ae, ptr %i.c, align 8, !alias.scope !1537
  store ptr %i.ak, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !alias.scope !1537
  store ptr %i.ai, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !alias.scope !1537
  store <16 x i1> %i.aj, ptr %.sroa.623.0..sroa_idx.i.i, align 8, !alias.scope !1537
  store i64 %i.am, ptr %i.d, align 8, !alias.scope !1537
  br label %.split.i.i

.split48.i.i:                                     ; preds = %bb.g, %.split48.us.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1556, !noundef !44 ; 3 uses
  %.not.i6.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i6.i.i, label %bb.q, label %bb.i

bb.i:                                             ; preds = %.split48.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1560, !noundef !44 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.at = load i16, ptr %i.as, align 8, !alias.scope !1562, !noundef !44 ; 2 uses
  %.not13.i.i.i.i.i7.i.i = icmp eq i16 %i.at, 0
  br i1 %.not13.i.i.i.i.i7.i.i, label %.lr.ph.i.i.i.i.i12.i.i, label %_ZN4core3ops8function6FnOnce9call_once17haa2746d7f8cc2184E.exit.i8.i.i

.lr.ph.i.i.i.i.i12.i.i:                           ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.promoted15.i.i.i.i.i13.i.i = load ptr, ptr %i.au, align 8, !alias.scope !1562
  br label %bb.k

._crit_edge.i.i.i.i.i17.i.i:                      ; preds = %bb.k
  store ptr %i.az, ptr %i.au, align 8, !alias.scope !1562
  store ptr %i.ay, ptr %i.an, align 8, !alias.scope !1562
  br label %_ZN4core3ops8function6FnOnce9call_once17haa2746d7f8cc2184E.exit.i8.i.i

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i12.i.i
  %i.av = phi ptr [ %.promoted15.i.i.i.i.i13.i.i, %.lr.ph.i.i.i.i.i12.i.i ], [ %i.az, %bb.k ] ; 2 uses
  %i.aw = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i12.i.i ], [ %i.ay, %bb.k ]
  %.val11.i.i.i.i.i14.i.i = load <16 x i8>, ptr %i.av, align 16, !noalias !1562
  %i.ax = icmp sgt <16 x i8> %.val11.i.i.i.i.i14.i.i, splat (i8 -1)
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -1152 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %.cast.i.i.i.i.i15.i.i = bitcast <16 x i1> %i.ax to i16 ; 2 uses
  %.not.i.i.i.i.i16.i.i = icmp eq i16 %.cast.i.i.i.i.i15.i.i, 0
  br i1 %.not.i.i.i.i.i16.i.i, label %bb.k, label %._crit_edge.i.i.i.i.i17.i.i

_ZN4core3ops8function6FnOnce9call_once17haa2746d7f8cc2184E.exit.i8.i.i: ; preds = %._crit_edge.i.i.i.i.i17.i.i, %bb.j
  %i.ba = phi ptr [ %i.ay, %._crit_edge.i.i.i.i.i17.i.i ], [ %i.ao, %bb.j ]
  %.lcssa.i.i.i.i.i9.i.i = phi i16 [ %.cast.i.i.i.i.i15.i.i, %._crit_edge.i.i.i.i.i17.i.i ], [ %i.at, %bb.j ] ; 3 uses
  %i.bb = add i16 %.lcssa.i.i.i.i.i9.i.i, -1
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i9.i.i, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.lcssa.i.i.i.i.i9.i.i
  store i16 %i.be, ptr %i.as, align 8, !alias.scope !1562
  %i.bf = sub nsw i64 0, %i.bd
  %i.bg = getelementptr inbounds [72 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = add i64 %i.aq, -1
  store i64 %i.bh, ptr %i.ap, align 8, !alias.scope !1560
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  store ptr null, ptr %i.an, align 8, !alias.scope !1556
  br label %bb.q

bb.m:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17haa2746d7f8cc2184E.exit.i8.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h1c1e932dd7d69402E.exit.i.i
  %.pn = phi ptr [ %i.z, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h1c1e932dd7d69402E.exit.i.i ], [ %i.bg, %_ZN4core3ops8function6FnOnce9call_once17haa2746d7f8cc2184E.exit.i8.i.i ]
  %.sroa.3.0.i10.pn.i.i = getelementptr inbounds i8, ptr %.pn, i64 -64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1565
  %i.bi = load i32, ptr %.sroa.3.0.i10.pn.i.i, align 8, !range !72, !alias.scope !1566, !noalias !1567, !noundef !44
  %i.bj = icmp eq i32 %i.bi, 3
  %.sroa.0.0.in.v.i.i = select i1 %i.bj, i64 4, i64 20
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i10.pn.i.i, i64 %.sroa.0.0.in.v.i.i
  %.sroa.0.0.i.i3 = load i32, ptr %.sroa.0.0.in.i.i, align 4, !alias.scope !1566, !noalias !1567, !noundef !44
  call fastcc void @_ZN16nickel_lang_core6pretty12ident_quoted17he2c890ac8425eb17E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %.sroa.0.0.i.i3), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1565
  invoke fastcc void @_ZN3nls12field_walker3Def8metadata17h07ac61a3bb4fdca4E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.3.0.i10.pn.i.i)
          to label %"_ZN3nls8requests10completion14env_completion28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf513eb7b35c76d27E.exit" unwind label %bb.o, !noalias !1567

bb.n:                                             ; preds = %bb.p, %bb.o
  resume { ptr, i32 } %i.bk

bb.o:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  %.val.i.i14.i.i = load i64, ptr %i.b, align 8, !range !74, !alias.scope !1570, !noalias !1565, !noundef !44 ; 2 uses
  %i.bl = icmp eq i64 %.val.i.i14.i.i, 0
  br i1 %i.bl, label %bb.n, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i15.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !1570, !noalias !1565, !nonnull !44, !noundef !44
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i15.i.i, i64 noundef %.val.i.i14.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !1571
  br label %bb.n

"_ZN3nls8requests10completion14env_completion28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf513eb7b35c76d27E.exit": ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1566
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.r

bb.q:                                             ; preds = %.split48.i.i, %bb.l
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %"_ZN3nls8requests10completion14env_completion28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf513eb7b35c76d27E.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb80c32317db38c40E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [20 x i8], align 4                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1590, !noalias !1591, !nonnull !44, !noundef !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1590, !noalias !1591, !nonnull !44, !noundef !44 ; 4 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96ce428e3648daccE.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96ce428e3648daccE.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96ce428e3648daccE.exit": ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store ptr %i.i, ptr %i.f, align 8, !alias.scope !1590, !noalias !1591
  %.sroa.0.0.copyload1 = load i32, ptr %i.g, align 4, !noalias !1590 ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload1, 3
  br i1 %.not, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96ce428e3648daccE.exit.thread", label %bb.b

bb.b:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96ce428e3648daccE.exit"
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  store i32 %.sroa.0.0.copyload1, ptr %i.c, align 4
  %.val = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.k = call { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.c) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %i.c, i64 16, i1 false)
  %i.n = call noundef i32 @_ZN16nickel_lang_core8position8PosTable4push17he3da8391857f0e75E(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1592
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !1593
  %i.q = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 1) #66, !noalias !1593 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75, !noalias !1594
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.q, %bb.c ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.m, i1 false), !noalias !1595
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !1596
  %i.s = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #66, !noalias !1596 ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h9be3f1766bd04029E.exit", !prof !49

bb.e:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br i1 %i.p, label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17hc897eb5c4a867c5aE.exit.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !1597
  br label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17hc897eb5c4a867c5aE.exit.i.i"

bb.g:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1598
  store ptr @363, ptr %i.a, align 8, !noalias !1598
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.v, align 8, !noalias !1598
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.w, align 8, !noalias !1598
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !1598
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.y, align 8, !noalias !1598
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.h unwind label %bb.e, !noalias !1596

bb.h:                                             ; preds = %bb.g
  unreachable

"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17hc897eb5c4a867c5aE.exit.i.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.u

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h9be3f1766bd04029E.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i"
  store i64 216172782113783809, ptr %i.s, align 8, !noalias !1596
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.n, ptr %i.z, align 8, !noalias !1596
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.m, ptr %i.aa, align 8
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 8
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx4.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96ce428e3648daccE.exit.thread"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96ce428e3648daccE.exit.thread": ; preds = %bb.a, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96ce428e3648daccE.exit", %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h9be3f1766bd04029E.exit"
  %.sroa.0.0 = phi ptr [ %i.s, %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h9be3f1766bd04029E.exit" ], [ null, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96ce428e3648daccE.exit" ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc94741408cf263c5E"(ptr noalias noundef nonnull align 8 dereferenceable(184) initializes((120, 124)) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [296 x i8], align 8               ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 18 uses
  %i.i = alloca [24 x i8], align 16               ; 12 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [72 x i8], align 8                ; 4 uses
  %i.q = alloca [88 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [40 x i8], align 16               ; 7 uses
  %i.t = alloca [20 x i8], align 4                ; 4 uses
  %i.u = alloca [20 x i8], align 4                ; 4 uses
  %i.v = alloca [20 x i8], align 4                ; 4 uses
  %i.w = alloca [72 x i8], align 8                ; 13 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [56 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [56 x i8], align 8               ; 10 uses
  %i.ad = alloca [56 x i8], align 8               ; 11 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [208 x i8], align 8              ; 28 uses
  %i.ag = alloca [32 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [48 x i8], align 8               ; 7 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 6 uses
  %i.al = alloca [8 x i8], align 8                ; 3 uses
  %i.am = alloca [48 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [48 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 4 uses
  %i.at = alloca [48 x i8], align 8               ; 7 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [72 x i8], align 8               ; 15 uses
  %.sroa.616.i.i.i.i = alloca [64 x i8], align 8  ; 5 uses
  %i.aw = alloca [72 x i8], align 8               ; 15 uses
  %i.ax = alloca [104 x i8], align 8              ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val.i.i = load ptr, ptr %i.az, align 8, !alias.scope !1926, !noalias !1927 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val1.i.i = load i64, ptr %i.ba, align 8, !alias.scope !1926, !noalias !1927
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.8.0..sroa_idx4.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.12.0..sroa_idx13.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.59.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.7.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.657.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 32
end_hunk_0
begin_hunk_1_@"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17ha330f6c22de7cdacE":bb.a
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82201e294df05012E.exit65.thread", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82201e294df05012E.exit65"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82201e294df05012E.exit65": ; preds = %bb.bd
  %i.gd = add i64 %i.gb, -1
  store i64 %i.gd, ptr %i.v, align 8, !alias.scope !14902, !noalias !14900
  %i.ge = call fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h241bf9a8123bf5afE"(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.t), !noalias !14900 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i48, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82201e294df05012E.exit65.thread", label %bb.be

bb.be:                                            ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82201e294df05012E.exit65"
  call void @llvm.experimental.noalias.scope.decl(metadata !14903)
  %i.gf = load ptr, ptr %i.w, align 8, !alias.scope !14903, !noalias !14900, !nonnull !44, !align !50, !noundef !44
  %i.gg = load ptr, ptr %i.x, align 8, !alias.scope !14903, !noalias !14900, !nonnull !44, !align !57, !noundef !44
  %i.gh = load ptr, ptr %i.y, align 8, !alias.scope !14903, !noalias !14900, !nonnull !44, !align !50, !noundef !44
  %i.gi = load ptr, ptr %i.z, align 8, !alias.scope !14903, !noalias !14900, !nonnull !44, !align !50, !noundef !44
  %i.gj = call fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h03e8e091a5b37afcE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gf, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gg, ptr noundef nonnull %i.ge, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gi), !noalias !14904, !inline_history !14835
  br label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82201e294df05012E.exit65.thread"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82201e294df05012E.exit65.thread": ; preds = %bb.bd, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82201e294df05012E.exit65", %bb.be
  %.sroa.0.0.i.i49 = phi ptr [ %i.gj, %bb.be ], [ null, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82201e294df05012E.exit65" ], [ null, %bb.bd ] ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !14900, !noalias !14901
  store ptr %.sroa.0.0.i.i49, ptr %i.u, align 8, !alias.scope !14900, !noalias !14901
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hc0f3f1e61131eaadE.exit28"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hc0f3f1e61131eaadE.exit28thread-pre-split": ; preds = %bb.bc
  %.pr98 = load ptr, ptr %i.u, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hc0f3f1e61131eaadE.exit28"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hc0f3f1e61131eaadE.exit28": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hc0f3f1e61131eaadE.exit28thread-pre-split", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82201e294df05012E.exit65.thread"
  %i.gk = phi ptr [ %.pr98, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hc0f3f1e61131eaadE.exit28thread-pre-split" ], [ %.sroa.0.0.i.i49, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82201e294df05012E.exit65.thread" ]
  %.not20.not = icmp eq ptr %i.gk, null
  br i1 %.not20.not, label %.loopexit, label %bb.bf

bb.bf:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hc0f3f1e61131eaadE.exit28"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.gl = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17ha330f6c22de7cdacE"(ptr noalias noundef align 8 dereferenceable(352) %0, ptr noalias noundef align 8 dereferenceable(272) %i.j, i8 noundef %.pre-phi)
          to label %bb.bg unwind label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %i.j, i64 272, i1 false)
  store i64 1, ptr %i.h, align 8
  store i64 1, ptr %i.ab, align 8
  store i64 1, ptr %i.ac, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !14905
  %i.gm = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !14905 ; 3 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.bh, label %bb.bk, !prof !47

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #75
          to label %.noexc29 unwind label %bb.bi

.noexc29:                                         ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h950ffcace6aea9cdE"(ptr noalias noundef align 8 dereferenceable(280) %i.ac)
          to label %common.resume unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.bk:                                            ; preds = %bb.bg
  %i.gq = add i64 %i.gl, %.sroa.0.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.gm, ptr noundef nonnull align 8 dereferenceable(296) %i.h, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf37ea9f76feb9b19E"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.gm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ba

bb.bl:                                            ; preds = %bb.bf
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h53723849226635efE"(ptr noalias noundef align 8 dereferenceable(272) %i.j) #77
          to label %common.resume unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17ha923ffb96d336386E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(272) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [20 x i8], align 4                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [272 x i8], align 8               ; 9 uses
  %i.i = alloca [296 x i8], align 8               ; 7 uses
  %i.j = alloca [296 x i8], align 8               ; 9 uses
  %i.k = alloca [272 x i8], align 8               ; 6 uses
  %i.l = icmp eq i8 %2, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !44 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !44 ; 2 uses
  %.not21 = icmp eq i64 %i.p, %i.n
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n
  %i.r = xor i64 %i.n, -1
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.p
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %i.r ; 3 uses
  %.not2256 = icmp eq ptr %i.t, null
  %.not22 = select i1 %.not21, i1 true, i1 %.not2256 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not22, label %.preheader, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not22, label %..preheader60_crit_edge, label %bb.ao

..preheader60_crit_edge:                          ; preds = %bb.c
  %.pre = add i8 %2, -1
  br label %.preheader60

.preheader60:                                     ; preds = %..preheader60_crit_edge, %bb.ap
  %.pre-phi = phi i8 [ %.pre, %..preheader60_crit_edge ], [ %i.ea, %bb.ap ]
  %.sroa.0.2.ph = phi i64 [ 0, %..preheader60_crit_edge ], [ %i.eb, %bb.ap ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %bb.ar

bb.d:                                             ; preds = %bb.b
  %i.z = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h2c600cc88c2d579cE"(ptr noalias noundef align 8 dereferenceable(8) %i.t) ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !60, !noundef !44
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !49

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #75
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 272 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 264 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !44
  %i.ah = sub i64 %i.ae, %i.ag                    ; 2 uses
  %i.ai = sub i64 32, %i.ah
  tail call fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h8da437376b9cc57fE"(ptr noalias noundef align 8 dereferenceable(272) %i.ac, ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %i.ai)
  %i.aj = load i64, ptr %i.ad, align 8, !noundef !44
  %i.ak = load i64, ptr %i.af, align 8, !noundef !44
  %i.al = add i64 %i.ah, %i.ak
  %i.am = sub i64 %i.aj, %i.al
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.b
  %.sroa.0.0.ph = phi i64 [ 0, %bb.b ], [ %i.am, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 264 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2342ad8641d7ff95E.exit24"
  %.sroa.0.0 = phi i64 [ %i.dv, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2342ad8641d7ff95E.exit24" ], [ %.sroa.0.0.ph, %.preheader ] ; 3 uses
  %i.aw = load i64, ptr %i.m, align 8, !noundef !44
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load i64, ptr %i.o, align 8, !noundef !44
  %i.az = icmp eq i64 %i.ay, 32
  br i1 %i.az, label %.loopexit59, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !14958)
  %i.ba = load i64, ptr %0, align 8, !range !60, !alias.scope !14958, !noalias !14959, !noundef !44
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exitthread-pre-split", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = call fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb80c32317db38c40E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ao), !noalias !14958 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !14958, !noalias !14959
  store ptr %i.bc, ptr %i.an, align 8, !alias.scope !14958, !noalias !14959
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exitthread-pre-split": ; preds = %bb.i
  %.pr = load ptr, ptr %i.an, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exitthread-pre-split", %bb.j
  %i.bd = phi ptr [ %.pr, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exitthread-pre-split" ], [ %i.bc, %bb.j ]
  %.not23.not = icmp eq ptr %i.bd, null
  br i1 %.not23.not, label %.loopexit59, label %bb.k

bb.k:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !14960)
  call void @llvm.experimental.noalias.scope.decl(metadata !14961)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14962
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !noalias !14962
  br label %bb.l

.body.i.i:                                        ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i", %bb.x, %.body38
  %i.be = phi i64 [ %.pre.i.i, %.body38 ], [ 0, %bb.x ], [ 0, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i" ] ; 2 uses
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body39, %.body38 ], [ %i.cp, %bb.x ], [ %i.cp, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i" ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.be
  %i.bg = sub i64 %i.bh, %i.be
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17hd9c0b5187dd0a6dfE"(ptr noalias noundef nonnull readonly align 8 %i.bf, i64 noundef %i.bg)
          to label %common.resume unwind label %bb.ak, !noalias !14962

bb.l:                                             ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.i.i", %bb.k
  %i.bh = phi i64 [ 0, %bb.k ], [ %i.dn, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.i.i" ] ; 7 uses
  %.sroa.4.07.i.i = phi i64 [ 32, %bb.k ], [ %i.bi, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.i.i" ]
  %i.bi = add nsw i64 %.sroa.4.07.i.i, -1         ; 2 uses
  %i.bj = load i64, ptr %0, align 8, !range !60, !alias.scope !14963, !noalias !14964, !noundef !44
  %i.bk = load ptr, ptr %i.an, align 8, !alias.scope !14963, !noalias !14964 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !14963, !noalias !14964
  %i.bl = trunc nuw i64 %i.bj to i1
  br i1 %i.bl, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ccf897cf4e66525E.exit.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !14965)
  call void @llvm.experimental.noalias.scope.decl(metadata !14966), !noalias !14967
  %i.bm = load ptr, ptr %i.ar, align 8, !alias.scope !14968, !noalias !14969, !nonnull !44, !noundef !44
  %i.bn = load ptr, ptr %i.as, align 8, !alias.scope !14968, !noalias !14969, !nonnull !44, !noundef !44 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, %i.bm
  br i1 %i.bo, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5a9bbfc919cf452aE.exit, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96ce428e3648daccE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96ce428e3648daccE.exit.i": ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store ptr %i.bp, ptr %i.as, align 8, !alias.scope !14968, !noalias !14969
  %.sroa.0.0.copyload1.i = load i32, ptr %i.bn, align 4, !noalias !14970 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload1.i, 3
  br i1 %.not.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5a9bbfc919cf452aE.exit, label %bb.n

bb.n:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96ce428e3648daccE.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, i64 16, i1 false), !noalias !14971
  store i32 %.sroa.0.0.copyload1.i, ptr %i.d, align 4, !noalias !14971
  %.val.i34 = load ptr, ptr %i.at, align 8, !alias.scope !14965, !noalias !14967 ; 2 uses
  %i.bq = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.d)
          to label %.noexc35 unwind label %.loopexit ; 2 uses

.noexc35:                                         ; preds = %bb.n
  %i.br = extractvalue { ptr, i64 } %i.bq, 0
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1      ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i34) ], !noalias !14967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(20) %i.d, i64 16, i1 false), !noalias !14971
  %i.bt = invoke noundef i32 @_ZN16nickel_lang_core8position8PosTable4push17he3da8391857f0e75E(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i34, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.c)
          to label %.noexc36 unwind label %.loopexit

.noexc36:                                         ; preds = %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14972
  %i.bu = icmp slt i64 %i.bs, 0
  br i1 %i.bu, label %bb.p, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %.noexc36
  %i.bv = icmp eq i64 %i.bs, 0                    ; 2 uses
  br i1 %i.bv, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i.i", label %bb.o

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !14973
  %i.bw = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bs, i64 noundef range(i64 1, 9) 1) #66, !noalias !14973 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i.i"

bb.p:                                             ; preds = %bb.o, %.noexc36
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.o ], [ 0, %.noexc36 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.p
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i.i": ; preds = %bb.o, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.bw, %bb.o ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.br, i64 %i.bs, i1 false), !noalias !14974
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !14975
  %i.by = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #66, !noalias !14975 ; 7 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.s, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ccf897cf4e66525E.exit.i.i.thread45", !prof !49

bb.q:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bv, label %.body38, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !14976
  br label %.body38

bb.s:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14977
  store ptr @363, ptr %i.b, align 8, !noalias !14977
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.cb, align 8, !noalias !14977
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.cc, align 8, !noalias !14977
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cd, align 8, !noalias !14977
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ce, align 8, !noalias !14977
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.t unwind label %bb.q, !noalias !14975

bb.t:                                             ; preds = %bb.s
  unreachable

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ccf897cf4e66525E.exit.i.i.thread45": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i.i"
  store i64 216172782113783809, ptr %i.by, align 8, !noalias !14975
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.bt, ptr %i.cf, align 8, !noalias !14975
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.bs, ptr %i.cg, align 8, !noalias !14971
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !14971
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i64 %i.bs, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !14971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14971
  br label %bb.u

.loopexit:                                        ; preds = %bb.n, %.noexc35
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.body38:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.r
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.ca, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.pre.i.i = load i64, ptr %i.ap, align 8, !alias.scope !14978, !noalias !14962
  br label %.body.i.i

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ccf897cf4e66525E.exit.i.i": ; preds = %bb.l
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5a9bbfc919cf452aE.exit, label %bb.u

bb.u:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ccf897cf4e66525E.exit.i.i.thread45", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ccf897cf4e66525E.exit.i.i"
  %.sroa.0.0.i.i.i48 = phi ptr [ %i.by, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ccf897cf4e66525E.exit.i.i.thread45" ], [ %i.bk, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ccf897cf4e66525E.exit.i.i" ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14979)
  %i.ch = load i64, ptr %i.ap, align 8, !alias.scope !14979, !noalias !14962, !noundef !44 ; 5 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = icmp eq i64 %i.bh, 32                   ; 2 uses
  %or.cond.i.i.i = and i1 %i.cj, %i.ci
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.v, !prof !109

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp eq i64 %i.ch, %i.bh
  br i1 %i.ck, label %bb.ag, label %bb.af

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14980
  store ptr @683, ptr %i.g, align 8, !noalias !14980
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.cl, align 8, !noalias !14980
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.cm, align 8, !noalias !14980
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cn, align 8, !noalias !14980
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.co, align 8, !noalias !14980
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @684) #75
          to label %bb.ad unwind label %bb.x, !noalias !14980

bb.x:                                             ; preds = %bb.w
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = ptrtoint ptr %.sroa.0.0.i.i.i48 to i64
  %i.cr = and i64 %i.cq, 3
  %..i.i = call i64 @llvm.umin.i64(i64 %i.cr, i64 2)
  switch i64 %..i.i, label %.body.i.i [
    i64 2, label %bb.y
    i64 0, label %bb.z
  ], !prof !54

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc31 unwind label %bb.ae

.noexc31:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14981
  store ptr %.sroa.0.0.i.i.i48, ptr %i.f, align 8, !noalias !14981
  %i.cs = load i64, ptr %.sroa.0.0.i.i.i48, align 8, !noalias !14982, !noundef !44 ; 3 uses
  %i.ct = and i64 %i.cs, 72057594037927935
  %i.cu = add nsw i64 %i.ct, -1                   ; 3 uses
  %i.cv = and i64 %i.cs, 1080863910568919040
  %i.cw = icmp ult i64 %i.cs, 864691128455135232
  call void @llvm.assume(i1 %i.cw), !noalias !14980
  %i.cx = or i64 %i.cu, %i.cv
  store i64 %i.cx, ptr %.sroa.0.0.i.i.i48, align 8, !noalias !14982
  %i.cy = icmp ugt i64 %i.cu, 72057594037927935
  br i1 %i.cy, label %bb.ab, label %bb.aa, !prof !49

bb.aa:                                            ; preds = %bb.z
  %i.cz = icmp eq i64 %i.cu, 0
  br i1 %i.cz, label %bb.ac, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i"

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14982
  store ptr @2307, ptr %i.e, align 8, !noalias !14982
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.da, align 8, !noalias !14982
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.db, align 8, !noalias !14982
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !noalias !14982
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.dd, align 8, !noalias !14982
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc32 unwind label %bb.ae

.noexc32:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i" unwind label %bb.ae

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i": ; preds = %bb.ac, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14981
  br label %.body.i.i

bb.ad:                                            ; preds = %bb.w
  unreachable

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.y
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !14980
  unreachable

bb.af:                                            ; preds = %bb.v
  br i1 %i.cj, label %bb.ah, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.i.i"

bb.ag:                                            ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !14979, !noalias !14962
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.i.i"

bb.ah:                                            ; preds = %bb.af
  %.not.i.i.i = icmp eq i64 %i.ch, 32
  br i1 %.not.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.df = phi i64 [ %i.dj, %bb.aj ], [ 0, %bb.ah ] ; 2 uses
  store i64 %i.df, ptr %i.aq, align 8, !alias.scope !14979, !noalias !14962
  store i64 0, ptr %i.ap, align 8, !alias.scope !14979, !noalias !14962
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.i.i"

bb.aj:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ch
  %i.dh = shl i64 %i.ch, 3
  %i.di = sub i64 256, %i.dh
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(272) %i.h, ptr nonnull align 8 %i.dg, i64 %i.di, i1 false), !alias.scope !14979, !noalias !14962
  %.pre.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !14979, !noalias !14962
  %i.dj = sub i64 32, %.pre.i.i.i
  br label %bb.ai

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.i.i": ; preds = %bb.ai, %bb.ag, %bb.af
  %i.dk = phi i64 [ %i.df, %bb.ai ], [ %i.bh, %bb.af ], [ 0, %bb.ag ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dk
  store ptr %.sroa.0.0.i.i.i48, ptr %i.dl, align 8, !alias.scope !14979, !noalias !14962
  %i.dm = load i64, ptr %i.aq, align 8, !alias.scope !14979, !noalias !14962, !noundef !44
  %i.dn = add i64 %i.dm, 1                        ; 3 uses
  store i64 %i.dn, ptr %i.aq, align 8, !alias.scope !14979, !noalias !14962
  %i.do = icmp eq i64 %i.bi, 0
  br i1 %i.do, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5a9bbfc919cf452aE.exit, label %bb.l

bb.ak:                                            ; preds = %.body.i.i
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !14962
  unreachable

common.resume:                                    ; preds = %bb.bb, %bb.ay, %bb.am, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ds, %bb.am ], [ %.pn.i.i, %.body.i.i ], [ %i.en, %bb.ay ], [ %i.eq, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h5a9bbfc919cf452aE.exit: ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96ce428e3648daccE.exit.i", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ccf897cf4e66525E.exit.i.i", %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.i.i"
  %.sroa.3.0.copyload41 = phi i64 [ %i.bh, %bb.m ], [ %i.bh, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96ce428e3648daccE.exit.i" ], [ %i.bh, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ccf897cf4e66525E.exit.i.i" ], [ %i.dn, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %i.h, i64 256, i1 false)
  %.sroa.2.0.copyload40 = load i64, ptr %i.ap, align 8, !noalias !14983 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14962
  store i64 1, ptr %i.j, align 8
  store i64 1, ptr %i.au, align 8
  store i64 0, ptr %i.av, align 8
  store i64 %.sroa.2.0.copyload40, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.3.0.copyload41, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !14984
  %i.dq = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !14984 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.al, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2342ad8641d7ff95E.exit24", !prof !47

bb.al:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h5a9bbfc919cf452aE.exit
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #75
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h950ffcace6aea9cdE"(ptr noalias noundef align 8 dereferenceable(280) %i.av)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2342ad8641d7ff95E.exit24": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h5a9bbfc919cf452aE.exit
  %i.du = sub i64 %.sroa.0.0, %.sroa.2.0.copyload40
  %i.dv = add i64 %i.du, %.sroa.3.0.copyload41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.dq, ptr noundef nonnull align 8 dereferenceable(296) %i.j, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf37ea9f76feb9b19E"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.dq)
  br label %bb.g

.loopexit59:                                      ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit26", %bb.as, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit", %bb.h
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit" ], [ %.sroa.0.0, %bb.h ], [ %.sroa.0.2, %bb.as ], [ %.sroa.0.2, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit26" ]
  ret i64 %.sroa.0.1

bb.ao:                                            ; preds = %bb.c
  %i.dw = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h2c600cc88c2d579cE"(ptr noalias noundef align 8 dereferenceable(8) %i.t) ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !range !60, !noundef !44
  %i.dy = trunc nuw i64 %i.dx to i1
  br i1 %i.dy, label %bb.ap, label %bb.aq, !prof !46

bb.ap:                                            ; preds = %bb.ao
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ea = add i8 %2, -1                           ; 2 uses
  %i.eb = tail call fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17ha923ffb96d336386E"(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(272) %i.dz, i8 noundef %i.ea)
  br label %.preheader60

bb.aq:                                            ; preds = %bb.ao
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #75
  unreachable

bb.ar:                                            ; preds = %.preheader60, %bb.ba
  %.sroa.0.2 = phi i64 [ %i.ep, %bb.ba ], [ %.sroa.0.2.ph, %.preheader60 ] ; 3 uses
  %i.ec = load i64, ptr %i.m, align 8, !noundef !44
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ee = load i64, ptr %i.o, align 8, !noundef !44
  %i.ef = icmp eq i64 %i.ee, 32
  br i1 %i.ef, label %.loopexit59, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !14985)
  %i.eg = load i64, ptr %0, align 8, !range !60, !alias.scope !14985, !noalias !14986, !noundef !44
  %i.eh = trunc nuw i64 %i.eg to i1
  br i1 %i.eh, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit26thread-pre-split", label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ei = call fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb80c32317db38c40E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v), !noalias !14985 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !14985, !noalias !14986
  store ptr %i.ei, ptr %i.u, align 8, !alias.scope !14985, !noalias !14986
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit26"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit26thread-pre-split": ; preds = %bb.at
  %.pr49 = load ptr, ptr %i.u, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit26"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit26": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit26thread-pre-split", %bb.au
  %i.ej = phi ptr [ %.pr49, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit26thread-pre-split" ], [ %i.ei, %bb.au ]
  %.not20.not = icmp eq ptr %i.ej, null
  br i1 %.not20.not, label %.loopexit59, label %bb.av

bb.av:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit26"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.ek = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17ha923ffb96d336386E"(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(272) %i.k, i8 noundef %.pre-phi)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %i.k, i64 272, i1 false)
  store i64 1, ptr %i.i, align 8
  store i64 1, ptr %i.x, align 8
  store i64 1, ptr %i.y, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !14987
  %i.el = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !14987 ; 3 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.ax, label %bb.ba, !prof !47

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #75
          to label %.noexc27 unwind label %bb.ay

.noexc27:                                         ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h950ffcace6aea9cdE"(ptr noalias noundef align 8 dereferenceable(280) %i.y)
          to label %common.resume unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.ba:                                            ; preds = %bb.aw
  %i.ep = add i64 %i.ek, %.sroa.0.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.el, ptr noundef nonnull align 8 dereferenceable(296) %i.i, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf37ea9f76feb9b19E"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ar

bb.bb:                                            ; preds = %bb.av
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h53723849226635efE"(ptr noalias noundef align 8 dereferenceable(272) %i.k) #77
          to label %common.resume unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17hb50a2cdfccd0c1abE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, ptr noalias noundef nonnull align 8 dereferenceable(272) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [272 x i8], align 8               ; 9 uses
  %i.g = alloca [296 x i8], align 8               ; 7 uses
  %i.h = alloca [296 x i8], align 8               ; 9 uses
  %i.i = alloca [272 x i8], align 8               ; 6 uses
  %i.j = icmp eq i8 %2, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !44 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !44 ; 2 uses
  %.not21 = icmp eq i64 %i.n, %i.l
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.p = xor i64 %i.l, -1
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.n
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.p ; 3 uses
  %.not2257 = icmp eq ptr %i.r, null
  %.not22 = select i1 %.not21, i1 true, i1 %.not2257 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not22, label %.preheader, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not22, label %..preheader61_crit_edge, label %bb.ao

..preheader61_crit_edge:                          ; preds = %bb.c
  %.pre = add i8 %2, -1
  br label %.preheader61

.preheader61:                                     ; preds = %..preheader61_crit_edge, %bb.ap
  %.pre-phi = phi i8 [ %.pre, %..preheader61_crit_edge ], [ %i.ed, %bb.ap ]
  %.sroa.0.2.ph = phi i64 [ 0, %..preheader61_crit_edge ], [ %i.ee, %bb.ap ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %bb.ar

bb.d:                                             ; preds = %bb.b
  %i.x = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h2c600cc88c2d579cE"(ptr noalias noundef align 8 dereferenceable(8) %i.r) ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !range !60, !noundef !44
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.e, label %bb.f, !prof !49

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #75
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 272 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 264 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !44
  %i.af = sub i64 %i.ac, %i.ae                    ; 2 uses
  %i.ag = sub i64 32, %i.af
  tail call fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hb7aa7796bd1d7d9cE"(ptr noalias noundef align 8 dereferenceable(272) %i.aa, ptr noalias noundef align 8 dereferenceable(80) %0, i64 noundef %i.ag)
  %i.ah = load i64, ptr %i.ab, align 8, !noundef !44
  %i.ai = load i64, ptr %i.ad, align 8, !noundef !44
  %i.aj = add i64 %i.af, %i.ai
  %i.ak = sub i64 %i.ah, %i.aj
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.b
  %.sroa.0.0.ph = phi i64 [ 0, %bb.b ], [ %i.ak, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 264 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2342ad8641d7ff95E.exit24"
  %.sroa.0.0 = phi i64 [ %i.dy, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2342ad8641d7ff95E.exit24" ], [ %.sroa.0.0.ph, %.preheader ] ; 3 uses
  %i.au = load i64, ptr %i.k, align 8, !noundef !44
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = load i64, ptr %i.m, align 8, !noundef !44
  %i.ax = icmp eq i64 %i.aw, 32
  br i1 %i.ax, label %.loopexit60, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15026)
  %i.ay = load i64, ptr %0, align 8, !range !60, !alias.scope !15026, !noalias !15027, !noundef !44
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4b63a483e13f8640E.exitthread-pre-split", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = tail call fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4ff720ae5207a9e3E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.al), !noalias !15026 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !15026, !noalias !15027
  store ptr %i.ba, ptr %i.am, align 8, !alias.scope !15026, !noalias !15027
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4b63a483e13f8640E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4b63a483e13f8640E.exitthread-pre-split": ; preds = %bb.i
  %.pr = load ptr, ptr %i.am, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4b63a483e13f8640E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4b63a483e13f8640E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4b63a483e13f8640E.exitthread-pre-split", %bb.j
  %i.bb = phi ptr [ %.pr, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4b63a483e13f8640E.exitthread-pre-split" ], [ %i.ba, %bb.j ]
  %.not23.not = icmp eq ptr %i.bb, null
  br i1 %.not23.not, label %.loopexit60, label %bb.k

bb.k:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4b63a483e13f8640E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15029)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15030
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !noalias !15030
  br label %bb.l

.body.i.i:                                        ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i", %bb.x, %bb.u
  %i.bc = phi i64 [ %.pre.i.i, %bb.u ], [ 0, %bb.x ], [ 0, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i" ] ; 2 uses
  %.pn.i.i = phi { ptr, i32 } [ %lpad.phi, %bb.u ], [ %i.cs, %bb.x ], [ %i.cs, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i" ]
end_hunk_1
begin_hunk_2_@_ZN16nickel_lang_core4eval17update_at_indices17hdfe3cfdef101eebaE:bb.a
  store ptr %.sroa.03.0.copyload.i.i.i, ptr %i.c, align 8, !noalias !23519
  %i.az = load i64, ptr %.sroa.03.0.copyload.i.i.i, align 8, !noalias !23520, !noundef !44 ; 3 uses
  %i.ba = and i64 %i.az, 72057594037927935
  %i.bb = add nsw i64 %i.ba, -1                   ; 3 uses
  %i.bc = and i64 %i.az, 1080863910568919040
  %i.bd = icmp ult i64 %i.az, 864691128455135232
  call void @llvm.assume(i1 %i.bd)
  %i.be = or i64 %i.bb, %i.bc
  store i64 %i.be, ptr %.sroa.03.0.copyload.i.i.i, align 8, !noalias !23520
  %i.bf = icmp ugt i64 %i.bb, 72057594037927935
  br i1 %i.bf, label %.noexc7, label %bb.q, !prof !49

bb.q:                                             ; preds = %bb.p
  %i.bg = icmp eq i64 %i.bb, 0
  br i1 %i.bg, label %bb.r, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i.i.i"

.noexc7:                                          ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23520
  store ptr @2307, ptr %i.b, align 8, !noalias !23520
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bh, align 8, !noalias !23520
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.bi, align 8, !noalias !23520
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bj, align 8, !noalias !23520
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bk, align 8, !noalias !23520
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
  unreachable

bb.r:                                             ; preds = %bb.q
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i.i.i.i": ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %._crit_edge, label %bb.b

bb.s:                                             ; preds = %bb.v, %bb.u
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.t:                                             ; preds = %bb.o
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.m
  %.pn10.i.i = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %i.at, %bb.m ]
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h9ebd1172f649ab62E"(ptr nonnull %.sroa.03.0.copyload.i.i.i) #77
          to label %.body.thread unwind label %bb.s

bb.v:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17haf00ed2c0fe3d677E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #77
          to label %bb.u unwind label %bb.s

.body.thread:                                     ; preds = %bb.u, %bb.w
  %eh.lpad-body7 = phi { ptr, i32 } [ %.pn10.i.i, %bb.u ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %eh.lpad-body7

bb.w:                                             ; preds = %bb.h, %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h9ebd1172f649ab62E"(ptr nonnull %.sroa.03.0.copyload.i.i.i) #77
          to label %.body.thread unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval22VmContext$LT$R$C$C$GT$18new_with_pos_table17hea4736b12c63ca60E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(632) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i64 noundef range(i64 0, 3) %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [632 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %i.b, ptr noundef nonnull align 8 dereferenceable(632) %1, i64 632, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.e = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #66 ; 4 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.e, !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #75
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.k, %.body ], [ %i.g, %bb.d ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$nickel_lang_core..cache..CacheHub$GT$17hcae5d88de75558eeE"(ptr noalias noundef align 8 dereferenceable(632) %i.b) #77
          to label %bb.k unwind label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  store ptr @_ZN3std2io5stdio6stderr8INSTANCE17h5d12f2cc7577b812E, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %3, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.h, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.i = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #66 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.i, !prof !47

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #75
          to label %.noexc8 unwind label %bb.g

.noexc8:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr48drop_in_place$LT$nls..error..WarningReporter$GT$17h8038753c40a10d93E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #77
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

.body:                                            ; preds = %bb.g
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Write$GT$$GT$17hd14d58d5bfa1bac7E"(ptr nonnull %i.e, ptr nonnull @305) #77
          to label %bb.c unwind label %bb.j

bb.i:                                             ; preds = %bb.e
  store i64 %3, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %4, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, i64 632, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr %i.e, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr @305, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 696
  store ptr %i.i, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr @307, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 0, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %.body, %bb.n, %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.k:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !23523)
  %.val.i = load i64, ptr %2, align 8, !alias.scope !23523 ; 2 uses
  %i.u = icmp eq i64 %.val.i, 0
  br i1 %i.u, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..position..PosTable$GT$17h41e46e736d667444E.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i = load ptr, ptr %i.v, align 8, !alias.scope !23523, !nonnull !44, !noundef !44
  %i.w = mul nuw i64 %.val.i, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !23523
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..position..PosTable$GT$17h41e46e736d667444E.exit"

bb.n:                                             ; preds = %bb.k
  invoke void @"_ZN4core3ptr48drop_in_place$LT$nls..error..WarningReporter$GT$17h8038753c40a10d93E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #77
          to label %bb.l unwind label %bb.j

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..position..PosTable$GT$17h41e46e736d667444E.exit": ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$13err_with_ctxt17hb32a374f3e59579eE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(392) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [392 x i8], align 8               ; 4 uses
  %i.b = alloca [440 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.a, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 392, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23540)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !23540, !noalias !23541 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !23540, !noalias !23541 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23540, !noalias !23541
  store i64 0, ptr %i.c, align 8, !alias.scope !23540, !noalias !23541
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !23540, !noalias !23541
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23540, !noalias !23541
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !23540, !noalias !23541, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 640
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !23542, !nonnull !44, !noundef !44
  %i.g = getelementptr i8, ptr %i.e, i64 648
  %.val6.i = load i64, ptr %i.g, align 8, !noalias !23542, !noundef !44 ; 5 uses
  %i.h = mul i64 %.val6.i, 12                     ; 4 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %.val6.i, 768614336404564650
  br i1 %or.cond.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !23543
  %i.j = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 4) #66, !noalias !23543 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 4, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc.i unwind label %bb.d, !noalias !23542

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.m, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.n = shl nuw i64 %.sroa.0.0.copyload.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !23544
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef align 8 dereferenceable(392) %i.a) #77
          to label %common.resume unwind label %bb.j

bb.f:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.val6.i, %bb.b ] ; 2 uses
  %i.o = icmp samesign ule i64 %.val6.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 4 %.val.i, i64 %i.h, i1 false), !noalias !23545
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store i64 %.val6.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.b, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !23546
  %i.q = tail call noundef align 8 dereferenceable_or_null(440) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 440, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !23546 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6fc0bf10e5873fdeE.exit", !prof !47

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 440) #75
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorData$GT$17h53916dccc6bd6180E"(ptr noalias noundef nonnull align 8 dereferenceable(440) %i.b) #77
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.l, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6fc0bf10e5873fdeE.exit": ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.q, ptr noundef nonnull align 8 dereferenceable(440) %i.b, i64 440, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.q

bb.j:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$15eval_permissive5inner17hf959dd3ef54d1334E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [360 x i8], align 8               ; 4 uses
  %i.l = alloca [20 x i8], align 4                ; 4 uses
  %i.m = alloca [392 x i8], align 8               ; 7 uses
  %i.n = alloca [64 x i8], align 8                ; 11 uses
  %i.o = alloca [64 x i8], align 8                ; 2 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.r, align 8
  %i.s = icmp eq i64 %3, 0
  br i1 %i.s, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.t = ptrtoint ptr %2 to i64
  %i.u = and i64 %i.t, 3
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2)
  switch i64 %..i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !54

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75, !noalias !23593
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !23593
  store ptr %2, ptr %i.j, align 8, !noalias !23593
  %i.v = load i64, ptr %2, align 8, !noalias !23594, !noundef !44 ; 3 uses
  %i.w = and i64 %i.v, 72057594037927935
  %i.x = add nsw i64 %i.w, -1                     ; 3 uses
  %i.y = and i64 %i.v, 1080863910568919040
  %i.z = icmp ult i64 %i.v, 864691128455135232
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = or i64 %i.x, %i.y
  store i64 %i.aa, ptr %2, align 8, !noalias !23594
  %i.ab = icmp ugt i64 %i.x, 72057594037927935
  br i1 %i.ab, label %bb.f, label %bb.e, !prof !49

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %bb.g, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i"

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23594
  store ptr @2307, ptr %i.i, align 8, !noalias !23594
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.ad, align 8, !noalias !23594
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.ae, align 8, !noalias !23594
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8, !noalias !23594
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %i.ag, align 8, !noalias !23594
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75, !noalias !23594
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !23593
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i": ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23593
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit"

bb.h:                                             ; preds = %bb.a
  %i.ah = invoke noundef i32 @_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
end_hunk_2
begin_hunk_3_@_ZN16nickel_lang_core4eval5subst17h03e8e091a5b37afcE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.py = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.py, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  store i64 -9223372036854775755, ptr %i.am, align 8
  %i.pz = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hfbe983e1bb6e37adE(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.am, i32 noundef %i.bm)
          to label %bb.ff unwind label %bb.de

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread398.thread

bb.fg:                                            ; preds = %bb.dc
  %i.qa = load ptr, ptr %i.al, align 8, !nonnull !44, !noundef !44
  %i.qb = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h03e8e091a5b37afcE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.qa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.fh unwind label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  store ptr %i.qb, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qc, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  store i64 -9223372036854775754, ptr %i.ak, align 8
  %i.qd = call fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hfbe983e1bb6e37adE(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ak, i32 noundef %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %.thread398.thread

bb.fi:                                            ; preds = %bb.fg
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26636)
  call void @llvm.experimental.noalias.scope.decl(metadata !26637)
  %i.qg = load ptr, ptr %i.qf, align 8, !alias.scope !26638, !nonnull !44, !noundef !44 ; 2 uses
  %i.qh = load i64, ptr %i.qg, align 8, !noalias !26638, !noundef !44
  %i.qi = add i64 %i.qh, -1                       ; 2 uses
  store i64 %i.qi, ptr %i.qg, align 8, !noalias !26638
  %i.qj = icmp eq i64 %i.qi, 0
  br i1 %i.qj, label %bb.fj, label %.thread

bb.fj:                                            ; preds = %bb.fi
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6a62d9c4eafed149E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qf)
          to label %.thread unwind label %bb.bk

bb.fk:                                            ; preds = %bb.dd
  %i.qk = extractvalue { ptr, ptr } %i.mr, 0      ; 4 uses
  %i.ql = extractvalue { ptr, ptr } %i.mr, 1      ; 2 uses
  store ptr %i.qk, ptr %i.ab, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ql, ptr %i.qm, align 8
  %i.qn = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h03e8e091a5b37afcE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.ql, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.fl unwind label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.qo = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.qk, ptr %i.qo, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.qn, ptr %i.qp, align 8
  store i64 -9223372036854775753, ptr %i.aa, align 8
  %i.qq = call fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hfbe983e1bb6e37adE(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.aa, i32 noundef %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.thread398.thread

bb.fm:                                            ; preds = %bb.fk
  %i.qr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qs = load i64, ptr %i.qk, align 8, !noalias !26639, !noundef !44
  %i.qt = add i64 %i.qs, -1                       ; 2 uses
  store i64 %i.qt, ptr %i.qk, align 8, !noalias !26639
  %i.qu = icmp eq i64 %i.qt, 0
  br i1 %i.qu, label %bb.fn, label %.thread

bb.fn:                                            ; preds = %bb.fm
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h11e86ee6dea44245E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.thread unwind label %bb.bk

.thread367:                                       ; preds = %bb.di, %bb.de, %bb.dt
  %.pn57 = phi { ptr, i32 } [ %i.ms, %bb.de ], [ %.pn348, %bb.dt ], [ %lpad.thr_comm.split-lp352, %bb.di ] ; 12 uses
  switch i64 %i.bn, label %bb.fo [
    i64 0, label %.thread309
    i64 2, label %.thread309
    i64 3, label %.thread309
    i64 4, label %.thread309
    i64 5, label %.thread309
    i64 6, label %.thread309
    i64 7, label %.thread309
    i64 8, label %.thread309
    i64 9, label %.thread309
    i64 10, label %.thread309
    i64 11, label %.thread309
  ]

bb.fo:                                            ; preds = %.thread367
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$nickel_lang_core..eval..value..lens..TermContent$GT$17hf262d84e57c68a1fE"(i64 %i.bn, ptr nonnull %.sroa.9.0.copyload) #77
          to label %.thread309 unwind label %bb.bk

bb.fp:                                            ; preds = %bb.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.az, ptr noundef nonnull align 8 dereferenceable(20) %i.qv, i64 20, i1 false)
  %i.qw = load ptr, ptr %i.ay, align 8, !noundef !44 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.not = icmp eq ptr %i.qw, null
  br i1 %.not, label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h018b08b0676830e2E.exit", label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.qx = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h03e8e091a5b37afcE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.qw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h018b08b0676830e2E.exit" unwind label %.thread316, !inline_history !26510

"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h018b08b0676830e2E.exit": ; preds = %bb.fq, %bb.fp
  %.sroa.06.0 = phi ptr [ null, %bb.fp ], [ %i.qx, %bb.fq ] ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !26640
  %i.qy = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #66, !noalias !26640 ; 6 uses
  %i.qz = icmp eq ptr %i.qy, null
  br i1 %i.qz, label %bb.fs, label %_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h65fb18ae3428fdc4E.exit, !prof !49

bb.fr:                                            ; preds = %bb.fs
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha4bec725ceeb1ce6E"(ptr %.sroa.06.0) #77
          to label %.thread unwind label %bb.fu, !noalias !26640

bb.fs:                                            ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h018b08b0676830e2E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !26640
  store ptr @363, ptr %i.t, align 8, !noalias !26640
  %i.rb = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.rb, align 8, !noalias !26640
  %i.rc = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %i.rc, align 8, !noalias !26640
  %i.rd = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.rd, align 8, !noalias !26640
  %i.re = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.re, align 8, !noalias !26640
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.ft unwind label %bb.fr, !noalias !26640

bb.ft:                                            ; preds = %bb.fs
  unreachable

bb.fu:                                            ; preds = %bb.fr
  %i.rf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !26640
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h65fb18ae3428fdc4E.exit: ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h018b08b0676830e2E.exit"
  store i64 504403158265495553, ptr %i.qy, align 8, !noalias !26640
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store i32 %i.bm, ptr %i.rg, align 8, !noalias !26640
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store ptr %.sroa.06.0, ptr %i.rh, align 8, !noalias !26641
  %.sroa.5.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i100, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.az, i64 20, i1 false)
  br label %.thread398.thread

.thread398:                                       ; preds = %bb.er, %bb.ch
  %.val73 = phi ptr [ %.sroa.9.0.copyload, %bb.er ], [ %i.by, %bb.ch ]
  %.sroa.0.0 = phi ptr [ %i.nm, %bb.er ], [ %i.lq, %bb.ch ] ; 6 uses
  switch i64 %i.br, label %bb.fv [
    i64 3, label %.thread398.thread
    i64 4, label %.thread398.thread
    i64 6, label %.thread398.thread
    i64 7, label %.thread398.thread
    i64 9, label %.thread398.thread
  ]

bb.fv:                                            ; preds = %.thread398
  call fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueContent$GT$17ha3ac47c605b688b4E"(i64 %i.bn, ptr nonnull %.val73)
  br label %.thread398.thread

.thread309:                                       ; preds = %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %bb.fo, %bb.ce, %bb.cd, %.body114, %.thread316
  %.val71 = phi ptr [ %.sroa.9.0.copyload, %.thread367 ], [ %.val71471, %.thread316 ], [ %i.by, %bb.ce ], [ %.sroa.9.0.copyload, %.thread367 ], [ %i.by, %.body114 ], [ %i.by, %bb.cd ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %bb.fo ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ]
  %.pn61302 = phi { ptr, i32 } [ %.pn57, %.thread367 ], [ %lpad.thr_comm314, %.thread316 ], [ %eh.lpad-body115, %bb.ce ], [ %.pn57, %.thread367 ], [ %eh.lpad-body115, %.body114 ], [ %eh.lpad-body115, %bb.cd ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %bb.fo ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ] ; 6 uses
  switch i64 %i.br, label %bb.fw [
    i64 3, label %.thread
    i64 4, label %.thread
    i64 6, label %.thread
    i64 7, label %.thread
    i64 9, label %.thread
  ]

bb.fw:                                            ; preds = %.thread309
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueContent$GT$17ha3ac47c605b688b4E"(i64 %i.bn, ptr %.val71) #77
          to label %.thread unwind label %bb.bk

.thread:                                          ; preds = %bb.cn, %bb.co, %bb.cp, %bb.fr, %.body, %bb.ck, %bb.fm, %bb.fn, %bb.fi, %bb.fj, %bb.eu, %.sink.split.i, %bb.dy, %bb.dz, %bb.fa, %bb.fc, %bb.em, %.thread309, %.thread309, %.thread309, %.thread309, %.thread309, %bb.fw, %bb.fx
  %.pn63292 = phi { ptr, i32 } [ %.pn61302, %bb.fw ], [ %lpad.thr_comm.split-lp, %bb.fx ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %lpad.thr_comm359372, %bb.dz ], [ %i.ra, %bb.fr ], [ %lpad.thr_comm379395, %bb.em ], [ %i.lz, %bb.cp ], [ %lpad.thr_comm.split-lp360, %bb.dy ], [ %i.lz, %bb.cn ], [ %lpad.thr_comm404, %bb.fc ], [ %lpad.thr_comm404, %bb.fa ], [ %i.lz, %bb.co ], [ %eh.lpad-body, %.body ], [ %i.qe, %bb.fi ], [ %i.lu, %bb.ck ], [ %i.pl, %.sink.split.i ], [ %i.pl, %bb.eu ], [ %i.qe, %bb.fj ], [ %i.qr, %bb.fn ], [ %i.qr, %bb.fm ]
  resume { ptr, i32 } %.pn63292

bb.fx:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bl) #77
          to label %.thread unwind label %bb.bk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h0b4b9aee15944c5fE"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, i32 %.0.val, ptr noalias noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  store i64 -9223372036854775760, ptr %i.b, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !26644
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #66, !noalias !26644 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !49

bb.b:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17h8beee001917ff641E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #77
          to label %.body unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26644
  store ptr @363, ptr %i.a, align 8, !noalias !26644
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !26644
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !26644
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !26644
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !26644
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.d unwind label %bb.b, !noalias !26644

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

.body:                                            ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17h1948f6b0bc247e2eE"(ptr %1) #77
          to label %common.resume unwind label %bb.h

bb.f:                                             ; preds = %bb.a
  store i64 360287970189639681, ptr %i.d, align 8, !noalias !26644
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.0.val, ptr %i.l, align 8, !noalias !26644
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %1)
          to label %"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17h1948f6b0bc247e2eE.exit" unwind label %bb.g

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.f, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #66
  br label %common.resume

"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17h1948f6b0bc247e2eE.exit": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #66
  ret ptr %i.d

bb.h:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h4bbaaf521553b399E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !44, !align !57, !noundef !44
  call fastcc void @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3get17h703ae53d8d3e4236E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !44, !align !50, !noundef !44
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !44, !noundef !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !44, !align !50, !noundef !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.i = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h03e8e091a5b37afcE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE"(ptr noalias noundef align 8 dereferenceable(16) %i.h) #77
          to label %common.resume unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !26663)
  call void @llvm.experimental.noalias.scope.decl(metadata !26664)
  call void @llvm.experimental.noalias.scope.decl(metadata !26665)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !26666, !nonnull !44, !noundef !44 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !26666, !noundef !44
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !26666
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i"

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26667)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !26668, !noundef !44 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !noalias !26669, !noundef !44
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.q, align 8, !noalias !26669
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %common.resume unwind label %bb.j

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i": ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26670)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !26671, !noundef !44 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i"
  %i.y = load i64, ptr %i.w, align 8, !noalias !26672, !noundef !44
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %i.w, align 8, !noalias !26672
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit"

bb.i:                                             ; preds = %bb.h
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit"

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.o, %bb.g ], [ %i.o, %bb.f ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit": ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i", %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.i

bb.k:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h65fb18ae3428fdc4E(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !26675
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #66, !noalias !26675 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.f, !prof !49

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha4bec725ceeb1ce6E"(ptr %1) #77
          to label %.body unwind label %bb.e, !noalias !26675

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26675
  store ptr @363, ptr %i.a, align 8, !noalias !26675
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8, !noalias !26675
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8, !noalias !26675
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !noalias !26675
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8, !noalias !26675
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.d unwind label %bb.b, !noalias !26675

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !26675
  unreachable

bb.f:                                             ; preds = %bb.a
  store i64 504403158265495553, ptr %i.b, align 8, !noalias !26675
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.j, align 8, !noalias !26675
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  ret ptr %i.b

.body:                                            ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h8a70626c8867d132E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %.sroa.5 = alloca [20 x i8], align 8            ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7ff1a9a7d24b822dE.exit" unwind label %bb.g

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7ff1a9a7d24b822dE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !26678
  %i.d = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #66, !noalias !26678 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !49

bb.b:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha4bec725ceeb1ce6E"(ptr %2) #77
          to label %.body unwind label %bb.e, !noalias !26678

bb.c:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7ff1a9a7d24b822dE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26678
  store ptr @363, ptr %i.a, align 8, !noalias !26678
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !26678
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !26678
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !26678
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !26678
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.d unwind label %bb.b, !noalias !26678

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !26678
  unreachable

bb.f:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7ff1a9a7d24b822dE.exit"
  store i64 504403158265495553, ptr %i.d, align 8, !noalias !26678
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %3, ptr %i.l, align 8, !noalias !26678
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %2, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret ptr %i.d

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %eh.lpad-body4

bb.g:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h926155e26836363aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #77
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(56) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h0387bfd3c4baa557E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !54

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !44 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i64 %i.d, 72057594037927936
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(152) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h04da8435ccea6fa5E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !54

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !44 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 432345564227567616
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(56) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h8225101b6e597a23E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !54

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !44 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 360287970189639680
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(32) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hac6c141ceeca4d09E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !54

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !44 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 504403158265495552
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(24) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hc542811867851c62E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !54

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !44 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 216172782113783808
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(64) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hf72b754c82014d49E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !54

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !44 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 72057594037927936
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h3a47ad85c30a6c8bE(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #66 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.e, !prof !49

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #77
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @363, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 720575940379279361, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %0, ptr %i.k, align 8
  ret ptr %i.c

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h402ae83a5d8f7d5fE(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #66 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !49

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$nickel_lang_core..eval..cache..lazy..InnerThunkData$GT$17h63cb26aa143c48f6E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..cell..RefCell$LT$nickel_lang_core..eval..cache..lazy..ThunkData$GT$$GT$17hb2f16a97a4ac1912E.exit" unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @363, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 288230376151711745, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

"_ZN4core3ptr94drop_in_place$LT$core..cell..RefCell$LT$nickel_lang_core..eval..cache..lazy..ThunkData$GT$$GT$17hb2f16a97a4ac1912E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h897b93b3f2cbd0dfE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.b = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #66 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.f, !prof !49

bb.b:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %0, align 8, !range !74, !alias.scope !26687, !noundef !44 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17hc897eb5c4a867c5aE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !26688
  br label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17hc897eb5c4a867c5aE.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @363, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.a
  store i64 216172782113783809, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  ret ptr %i.b

"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17hc897eb5c4a867c5aE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hb94e68060f19afdeE(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.b = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #66 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !49

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..eval..value..ArrayData$GT$17h76d533a9d8f254a1E"(ptr noalias noundef align 8 dereferenceable(64) %0) #77
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @363, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 72057594037927937, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hc104fe64487da644E(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(152) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.b = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef 8) #66 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !49

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17h98f3e4c25bcc37aeE"(ptr noalias noundef align 8 dereferenceable(152) %0) #77
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @363, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 432345564227567617, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.j, ptr noundef nonnull align 8 dereferenceable(152) %0, i64 152, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17he32ae9b41080fb8aE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #66 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !49

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17ha08d494a68dab1f8E"(ptr noalias noundef align 8 dereferenceable(56) %0) #77
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @363, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17heb310c893d674711E(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.b = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef 8) #66 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !49

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..RecordData$GT$17h0e7d8c406d4d0da2E"(ptr noalias noundef align 8 dereferenceable(88) %0) #77
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @363, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 144115188075855873, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hfbe983e1bb6e37adE(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #66 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !49

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17h8beee001917ff641E"(ptr noalias noundef align 8 dereferenceable(56) %0) #77
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @363, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 360287970189639681, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4eval8fixpoint11patch_field17hf76afb179d1f90bcE(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !44
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17hdf60af61186d76eaE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue11content_mut17hf8de15f8b38892b1E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !26701 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %cond.i = icmp eq i64 %i.d, 6
  br i1 %cond.i, label %bb.c, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17hdf60af61186d76eaE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !26701, !nonnull !44, !noundef !44 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !26702, !noundef !44
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e, !prof !46

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.f, align 8, !noalias !26702
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  invoke void @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData11init_cached17h40fa763f4840943bE(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
          to label %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i" unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @332) #75, !noalias !26702
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.ad, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load i64, ptr %i.f, align 8, !noalias !26703, !noundef !44
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.f, align 8, !noalias !26703
  br label %common.resume

"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i": ; preds = %bb.d
  %i.m = load i64, ptr %i.f, align 8, !noalias !26703, !noundef !44
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.f, align 8, !noalias !26703
  br label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17hdf60af61186d76eaE.exit

_ZN16nickel_lang_core4eval8fixpoint11patch_value17hdf60af61186d76eaE.exit: ; preds = %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i", %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !44, !noundef !44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !44 ; 2 uses
  %.idx = mul nuw nsw i64 %i.r, 160
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16nickel_lang_core4eval8fixpoint11patch_value17hdf60af61186d76eaE.exit, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17hdf60af61186d76eaE.exit5
  %.sroa.01.02 = phi ptr [ %i.u, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17hdf60af61186d76eaE.exit5 ], [ %i.p, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17hdf60af61186d76eaE.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.02, i64 160 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.02, i64 152
  %i.w = tail call { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue11content_mut17hf8de15f8b38892b1E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v), !noalias !26704 ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0
  %cond.i2 = icmp eq i64 %i.x, 6
  br i1 %cond.i2, label %bb.g, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17hdf60af61186d76eaE.exit5

bb.g:                                             ; preds = %.lr.ph
  %i.y = extractvalue { i64, ptr } %i.w, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %.val.i3 = load ptr, ptr %i.y, align 8, !noalias !26704, !nonnull !44, !noundef !44 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i3, i64 16 ; 6 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !26705, !noundef !44
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !46

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %i.z, align 8, !noalias !26705
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i3, i64 24
  invoke void @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData11init_cached17h40fa763f4840943bE(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
          to label %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4" unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @332) #75, !noalias !26705
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load i64, ptr %i.z, align 8, !noalias !26706, !noundef !44
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.z, align 8, !noalias !26706
  br label %common.resume

"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4": ; preds = %bb.h
  %i.ag = load i64, ptr %i.z, align 8, !noalias !26706, !noundef !44
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.z, align 8, !noalias !26706
  br label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17hdf60af61186d76eaE.exit5

_ZN16nickel_lang_core4eval8fixpoint11patch_value17hdf60af61186d76eaE.exit5: ; preds = %.lr.ph, %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4"
  %i.ai = icmp eq ptr %i.u, %i.s
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN16nickel_lang_core4eval8fixpoint11patch_value17hdf60af61186d76eaE.exit5, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17hdf60af61186d76eaE.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4eval8fixpoint6revert17h6456128da66b5499E(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.08.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 13 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.sroa.0.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.4.0.copyload = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %i.l = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.l, label %bb.b, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i: ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !44, !noundef !44
  %or.cond.i.i.i.i.i.i = icmp slt i64 %.sroa.5.0.copyload, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i)
  %i.m = shl i64 %.sroa.5.0.copyload, 3
  %i.n = and i64 %i.m, -16                        ; 2 uses
  %i.o = add i64 %i.n, 16                         ; 2 uses
  %i.p = add nsw i64 %.sroa.5.0.copyload, 17
  %i.q = add i64 %i.p, %i.o                       ; 3 uses
  %i.r = icmp uge i64 %i.q, %i.o
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp ult i64 %i.q, 9223372036854775793
  tail call void @llvm.assume(i1 %i.s)
  %i.t = sub nuw nsw i64 -16, %i.n
end_hunk_3
begin_hunk_4_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op117h87cb9241e55fbf9aE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %.thread2774

bb.arh:                                           ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %.thread2774

bb.ari:                                           ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %.thread2774

bb.arj:                                           ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %.thread2774

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit1843": ; preds = %bb.arp, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i1837", %bb.arq, %.thread2774, %bb.bw
  %.sroa.0516.22770 = phi i8 [ %.sroa.0516.2.ph2773, %.thread2774 ], [ %.sroa.0516.2, %bb.bw ], [ %.sroa.0516.22771, %bb.arq ], [ %.sroa.0516.22771, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i1837" ], [ %.sroa.0516.22771, %bb.arp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qg)
  %i.chg = trunc nuw i8 %.sroa.0516.22770 to i1
  br i1 %i.chg, label %bb.ars, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1847"

bb.ark:                                           ; preds = %.thread2767, %bb.bw
  %.sroa.0516.22771 = phi i8 [ %.sroa.0516.2.ph, %.thread2767 ], [ %.sroa.0516.2, %bb.bw ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28486)
  call void @llvm.experimental.noalias.scope.decl(metadata !28487)
  call void @llvm.experimental.noalias.scope.decl(metadata !28488)
  %i.chh = load ptr, ptr %i.qg, align 16, !alias.scope !28489, !nonnull !44, !noundef !44 ; 2 uses
  %i.chi = load i64, ptr %i.chh, align 8, !noalias !28489, !noundef !44
  %i.chj = add i64 %i.chi, -1                     ; 2 uses
  store i64 %i.chj, ptr %i.chh, align 8, !noalias !28489
  %i.chk = icmp eq i64 %i.chj, 0
  br i1 %i.chk, label %bb.arl, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i1837"

bb.arl:                                           ; preds = %bb.ark
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.qg)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i1837" unwind label %bb.arm

bb.arm:                                           ; preds = %bb.arl
  %i.chl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28490)
  %i.chm = load ptr, ptr %i.qn, align 8, !alias.scope !28491, !noundef !44 ; 3 uses
  %i.chn = icmp eq ptr %i.chm, null
  br i1 %i.chn, label %.body1834, label %bb.arn

bb.arn:                                           ; preds = %bb.arm
  %i.cho = load i64, ptr %i.chm, align 8, !noalias !28492, !noundef !44
  %i.chp = add i64 %i.cho, -1                     ; 2 uses
  store i64 %i.chp, ptr %i.chm, align 8, !noalias !28492
  %i.chq = icmp eq i64 %i.chp, 0
  br i1 %i.chq, label %bb.aro, label %.body1834

bb.aro:                                           ; preds = %bb.arn
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qn)
          to label %.body1834 unwind label %bb.arr

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i1837": ; preds = %bb.arl, %bb.ark
  call void @llvm.experimental.noalias.scope.decl(metadata !28493)
  %i.chr = load ptr, ptr %i.qn, align 8, !alias.scope !28494, !noundef !44 ; 3 uses
  %i.chs = icmp eq ptr %i.chr, null
  br i1 %i.chs, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit1843", label %bb.arp

bb.arp:                                           ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i1837"
  %i.cht = load i64, ptr %i.chr, align 8, !noalias !28495, !noundef !44
  %i.chu = add i64 %i.cht, -1                     ; 2 uses
  store i64 %i.chu, ptr %i.chr, align 8, !noalias !28495
  %i.chv = icmp eq i64 %i.chu, 0
  br i1 %i.chv, label %bb.arq, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit1843"

bb.arq:                                           ; preds = %bb.arp
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qn)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit1843" unwind label %bb.aqu

bb.arr:                                           ; preds = %bb.aro
  %i.chw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.ars:                                           ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit1843"
  %i.chx = ptrtoint ptr %i.ql to i64
  %i.chy = and i64 %i.chx, 3
  %..i.i1845 = call i64 @llvm.umin.i64(i64 %i.chy, i64 2)
  switch i64 %..i.i1845, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1847" [
    i64 2, label %bb.art
    i64 0, label %bb.aru
  ], !prof !54

bb.art:                                           ; preds = %bb.ars
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75, !noalias !28496
  unreachable

bb.aru:                                           ; preds = %bb.ars
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28496
  store ptr %i.ql, ptr %i.c, align 8, !noalias !28496
  %i.chz = load i64, ptr %i.ql, align 8, !noalias !28497, !noundef !44 ; 3 uses
  %i.cia = and i64 %i.chz, 72057594037927935
  %i.cib = add nsw i64 %i.cia, -1                 ; 3 uses
  %i.cic = and i64 %i.chz, 1080863910568919040
  %i.cid = icmp ult i64 %i.chz, 864691128455135232
  call void @llvm.assume(i1 %i.cid)
  %i.cie = or i64 %i.cib, %i.cic
  store i64 %i.cie, ptr %i.ql, align 8, !noalias !28497
  %i.cif = icmp ugt i64 %i.cib, 72057594037927935
  br i1 %i.cif, label %bb.arw, label %bb.arv, !prof !49

bb.arv:                                           ; preds = %bb.aru
  %i.cig = icmp eq i64 %i.cib, 0
  br i1 %i.cig, label %bb.arx, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i1846"

bb.arw:                                           ; preds = %bb.aru
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28497
  store ptr @2307, ptr %i.b, align 8, !noalias !28497
  %i.cih = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.cih, align 8, !noalias !28497
  %i.cii = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.cii, align 8, !noalias !28497
  %i.cij = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cij, align 8, !noalias !28497
  %i.cik = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.cik, align 8, !noalias !28497
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75, !noalias !28497
  unreachable

bb.arx:                                           ; preds = %bb.arv
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !28496
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i1846"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i1846": ; preds = %bb.arx, %bb.arv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28496
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1847"

bb.ary:                                           ; preds = %bb.asb, %bb.asa, %bb.arz, %.critedge969.thread
  br i1 %.sroa.0513.02326, label %bb.asf, label %bb.aqt

.critedge969.thread:                              ; preds = %bb.im, %bb.ake, %.thread2920.thread, %bb.bo, %bb.aqg, %bb.aqf, %bb.apw, %bb.apv, %bb.apa, %bb.aol, %bb.aok, %bb.aob, %bb.aoa, %bb.anm, %bb.anl, %bb.anc, %bb.amn, %bb.amm, %bb.amb, %bb.ama, %bb.alv, %bb.ald, %bb.alc, %bb.akr, %bb.akq, %bb.ajq, %bb.ajp, %bb.ajm, %bb.ajl, %bb.ajn, %bb.aji, %bb.ais, %bb.aip, %.thread3203, %bb.ahm, %bb.ahl, %bb.ahn, %.thread3179, %.body1123, %.body1126, %.body1129, %bb.adj, %bb.adi, %bb.acs, %bb.acr, %bb.acb, %bb.aca, %bb.abk, %bb.abj, %bb.aax, %bb.aaw, %bb.aaa, %bb.zz, %bb.zl, %bb.zk, %bb.yy, %bb.yx, %bb.yl, %bb.yk, %bb.xy, %bb.xx, %bb.xl, %bb.xk, %.thread3118, %bb.wo, %bb.wn, %bb.si, %.thread3041, %bb.rw, %bb.rv, %bb.pt, %bb.ps, %.thread2988, %bb.pe, %bb.pd, %.thread2981, %bb.op, %bb.oo, %.thread2974, %bb.oa, %bb.nz, %.thread2967, %bb.nl, %bb.nk, %bb.my, %bb.mx, %bb.jn, %.thread2862, %bb.ix, %bb.iw, %bb.hp, %bb.ho, %bb.fn, %bb.fm, %bb.fb, %bb.fa, %bb.el, %bb.ek, %bb.cb, %bb.ca, %.thread2920, %bb.fw, %.thread3257, %bb.anj, %bb.aly, %bb.aik, %bb.aix, %bb.aif, %bb.xh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit1695", %bb.tq, %bb.pq, %bb.pb, %bb.om, %bb.nx, %bb.ard, %bb.md, %bb.mo, %bb.ml, %bb.kl, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit", %bb.jc, %bb.hj, %bb.hf, %bb.eu, %.body1485, %.body1497, %bb.bx, %.critedge969.thread2748, %.critedge969.thread2739, %.critedge969.thread2731, %.critedge969.thread2723, %.critedge969.thread2715, %.critedge969.thread2707, %.critedge969.thread2699, %.critedge969.thread2691, %.critedge969.thread2683, %.critedge969.thread2675, %.critedge969.thread2667, %.critedge969.thread2659, %.critedge969.thread2651, %.critedge969.thread2643, %.critedge969.thread2635, %.critedge969.thread2627, %.critedge969.thread2619, %.critedge969.thread2611, %.critedge969.thread2603, %.critedge969.thread2595, %.critedge969.thread2587, %.critedge969.thread2579, %.critedge969.thread2571, %.critedge969.thread2563, %.critedge969.thread2555, %.critedge969.thread2547, %.critedge969.thread2539, %.critedge969.thread2531, %.critedge969.thread2523, %.critedge969.thread2515, %.critedge969.thread2507, %.critedge969.thread2499, %.critedge969.thread2491, %.critedge969.thread2483, %.critedge969.thread2475, %.critedge969.thread2467, %.critedge969.thread2459, %.critedge969.thread2451, %.critedge969.thread2443, %.critedge969.thread2435, %.critedge969.thread2427, %.critedge969.thread2419, %.critedge969.thread2411, %.critedge969.thread2403, %.critedge969.thread2395, %.critedge969.thread2387, %.critedge969.thread2379, %.critedge969.thread2371, %.critedge969.thread2363, %.critedge969.thread2355, %.critedge969.thread2347, %.critedge969.thread2339, %.critedge969.thread2331
  %.sroa.226.02330 = phi i32 [ %i.uv, %.critedge969.thread2739 ], [ %i.qu, %.critedge969.thread2748 ], [ %i.cfq, %.critedge969.thread2331 ], [ %i.cez, %.critedge969.thread2339 ], [ %i.cck, %.critedge969.thread2347 ], [ %i.cbn, %.critedge969.thread2355 ], [ %i.cat, %.critedge969.thread2363 ], [ %i.bzs, %.critedge969.thread2371 ], [ %i.bzg, %.critedge969.thread2379 ], [ %i.byp, %.critedge969.thread2387 ], [ %i.bxs, %.critedge969.thread2395 ], [ %i.bxi, %.critedge969.thread2403 ], [ %i.bwg, %.critedge969.thread2411 ], [ %i.bvk, %.critedge969.thread2419 ], [ %i.bty, %.critedge969.thread2427 ], [ %i.bqa, %.critedge969.thread2435 ], [ %i.bki, %.critedge969.thread2443 ], [ %i.bje, %.critedge969.thread2451 ], [ %i.bia, %.critedge969.thread2459 ], [ %i.bgw, %.critedge969.thread2467 ], [ %i.bgg, %.critedge969.thread2475 ], [ %i.bfd, %.critedge969.thread2483 ], [ %i.bec, %.critedge969.thread2491 ], [ %i.bdi, %.critedge969.thread2499 ], [ %i.bco, %.critedge969.thread2507 ], [ %i.bbw, %.critedge969.thread2515 ], [ %i.baz, %.critedge969.thread2523 ], [ %i.azw, %.critedge969.thread2531 ], [ %i.azd, %.critedge969.thread2539 ], [ %i.asf, %.critedge969.thread2547 ], [ %i.arv, %.critedge969.thread2555 ], [ %i.arb, %.critedge969.thread2563 ], [ %i.aqk, %.critedge969.thread2571 ], [ %i.aow, %.critedge969.thread2579 ], [ %i.aom, %.critedge969.thread2587 ], [ %i.anr, %.critedge969.thread2595 ], [ %i.amw, %.critedge969.thread2603 ], [ %i.amb, %.critedge969.thread2611 ], [ %i.alg, %.critedge969.thread2619 ], [ %i.akm, %.critedge969.thread2627 ], [ %i.agq, %.critedge969.thread2635 ], [ %i.afi, %.critedge969.thread2643 ], [ %i.aes, %.critedge969.thread2651 ], [ %i.aea, %.critedge969.thread2659 ], [ %i.add, %.critedge969.thread2667 ], [ %i.act, %.critedge969.thread2675 ], [ %i.acd, %.critedge969.thread2683 ], [ %i.zn, %.critedge969.thread2691 ], [ %i.yw, %.critedge969.thread2699 ], [ %i.yi, %.critedge969.thread2707 ], [ %i.xv, %.critedge969.thread2715 ], [ %i.xf, %.critedge969.thread2723 ], [ %i.we, %.critedge969.thread2731 ], [ %.sroa.226.24, %bb.aji ], [ %.sroa.226.6, %bb.jn ], [ %.sroa.226.7, %.thread2920 ], [ %.sroa.226.10, %bb.si ], [ %.sroa.226.3, %bb.fw ], [ %.sroa.226.26, %bb.apa ], [ %.sroa.226.263264, %.thread3257 ], [ %i.cbd, %bb.aob ], [ %i.caj, %bb.anm ], [ %i.byw, %bb.amn ], [ %i.bzw, %bb.anc ], [ %i.cag, %bb.anj ], [ %i.byf, %bb.amb ], [ %i.bwy, %bb.ald ], [ %i.bxw, %bb.alv ], [ %i.byc, %bb.aly ], [ %i.bvw, %bb.akr ], [ %i.bto, %bb.ajq ], [ %.sroa.226.25, %bb.ake ], [ %.sroa.226.243227, %bb.ajm ], [ %.sroa.226.21, %bb.ahl ], [ %.sroa.226.21, %bb.ahn ], [ %i.bro, %bb.aik ], [ %i.brz, %bb.aip ], [ %.sroa.226.21, %bb.ahm ], [ %i.bse, %bb.ais ], [ %i.bsm, %bb.aix ], [ %.sroa.226.223206, %.thread3203 ], [ %.sroa.226.22, %bb.aif ], [ %.sroa.226.213182, %.thread3179 ], [ %.sroa.226.20, %.body1123 ], [ %.sroa.226.18, %.body1126 ], [ %.sroa.226.17, %.body1129 ], [ %i.bjv, %bb.adj ], [ %i.bir, %bb.acs ], [ %i.bhn, %bb.acb ], [ %i.bgm, %bb.abk ], [ %i.bfw, %bb.aax ], [ %i.bet, %bb.aaa ], [ %i.bds, %bb.zl ], [ %i.bcy, %bb.yy ], [ %i.bce, %bb.yl ], [ %i.bbm, %bb.xy ], [ %i.bap, %bb.xl ], [ %i.ayt, %bb.wo ], [ %i.bac, %.thread3118 ], [ %i.bal, %bb.xh ], [ %i.arl, %bb.rw ], [ %.sroa.226.113081, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit1695" ], [ %.sroa.226.73304, %.thread2920.thread ], [ %.sroa.226.103045, %.thread3041 ], [ %.sroa.226.103039, %bb.tq ], [ %i.aoc, %bb.pt ], [ %i.anh, %bb.pe ], [ %i.anv, %.thread2988 ], [ %i.anz, %bb.pq ], [ %i.amm, %bb.op ], [ %i.ana, %.thread2981 ], [ %i.ane, %bb.pb ], [ %i.alr, %bb.oa ], [ %i.amf, %.thread2974 ], [ %i.amj, %bb.om ], [ %i.akw, %bb.nl ], [ %i.alk, %.thread2967 ], [ %i.alo, %bb.nx ], [ %i.akc, %bb.my ], [ %i.aee, %bb.iw ], [ %i.chf, %bb.ard ], [ %i.ajb, %bb.md ], [ %i.aee, %bb.ix ], [ %.sroa.226.72911, %bb.mo ], [ %i.cep, %bb.apw ], [ %i.ajq, %bb.ml ], [ %.sroa.226.62866, %.thread2862 ], [ %.sroa.226.62860, %bb.kl ], [ %i.zd, %bb.fm ], [ %i.aci, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit" ], [ %i.abt, %bb.hp ], [ %.sroa.226.5, %bb.im ], [ %i.aev, %bb.jc ], [ %i.zd, %bb.fn ], [ %.sroa.226.32805, %bb.hj ], [ %i.cca, %bb.aol ], [ %i.abj, %bb.hf ], [ %i.ym, %bb.fb ], [ %i.xl, %bb.el ], [ %i.yb, %bb.eu ], [ %i.ul, %bb.cb ], [ %.sroa.226.2, %.body1485 ], [ %.sroa.226.1, %.body1497 ], [ %i.uh, %bb.bx ], [ %i.ud, %bb.bo ], [ %i.ul, %bb.ca ], [ %i.xl, %bb.ek ], [ %i.ym, %bb.fa ], [ %i.abt, %bb.ho ], [ %i.akc, %bb.mx ], [ %i.akw, %bb.nk ], [ %i.alr, %bb.nz ], [ %i.amm, %bb.oo ], [ %i.anh, %bb.pd ], [ %i.aoc, %bb.ps ], [ %i.arl, %bb.rv ], [ %i.ayt, %bb.wn ], [ %i.bap, %bb.xk ], [ %i.bbm, %bb.xx ], [ %i.bce, %bb.yk ], [ %i.bcy, %bb.yx ], [ %i.bds, %bb.zk ], [ %i.bet, %bb.zz ], [ %i.bfw, %bb.aaw ], [ %i.bgm, %bb.abj ], [ %i.bhn, %bb.aca ], [ %i.bir, %bb.acr ], [ %i.bjv, %bb.adi ], [ %.sroa.226.243227, %bb.ajn ], [ %.sroa.226.243227, %bb.ajl ], [ %i.bto, %bb.ajp ], [ %i.bvw, %bb.akq ], [ %i.bwy, %bb.alc ], [ %i.byf, %bb.ama ], [ %i.byw, %bb.amm ], [ %i.caj, %bb.anl ], [ %i.cbd, %bb.aoa ], [ %i.cca, %bb.aok ], [ %i.cep, %bb.apv ], [ %i.cfg, %bb.aqf ], [ %i.cfg, %bb.aqg ] ; 5 uses
  %.sroa.0782.02328 = phi ptr [ %i.uu, %.critedge969.thread2739 ], [ %i.qt, %.critedge969.thread2748 ], [ %i.cfp, %.critedge969.thread2331 ], [ %i.cey, %.critedge969.thread2339 ], [ %i.ccj, %.critedge969.thread2347 ], [ %i.cbm, %.critedge969.thread2355 ], [ %i.cas, %.critedge969.thread2363 ], [ %i.bzr, %.critedge969.thread2371 ], [ %i.bzf, %.critedge969.thread2379 ], [ %i.byo, %.critedge969.thread2387 ], [ %i.bxr, %.critedge969.thread2395 ], [ %i.bxh, %.critedge969.thread2403 ], [ %i.bwf, %.critedge969.thread2411 ], [ %i.bvj, %.critedge969.thread2419 ], [ %i.btx, %.critedge969.thread2427 ], [ %i.bpz, %.critedge969.thread2435 ], [ %i.bkh, %.critedge969.thread2443 ], [ %i.bjd, %.critedge969.thread2451 ], [ %i.bhz, %.critedge969.thread2459 ], [ %i.bgv, %.critedge969.thread2467 ], [ %i.bgf, %.critedge969.thread2475 ], [ %i.bfc, %.critedge969.thread2483 ], [ %i.beb, %.critedge969.thread2491 ], [ %i.bdh, %.critedge969.thread2499 ], [ %i.bcn, %.critedge969.thread2507 ], [ %i.bbv, %.critedge969.thread2515 ], [ %i.bay, %.critedge969.thread2523 ], [ %i.azv, %.critedge969.thread2531 ], [ %i.azc, %.critedge969.thread2539 ], [ %i.ase, %.critedge969.thread2547 ], [ %i.aru, %.critedge969.thread2555 ], [ %i.ara, %.critedge969.thread2563 ], [ %i.aqj, %.critedge969.thread2571 ], [ %i.aov, %.critedge969.thread2579 ], [ %i.aol, %.critedge969.thread2587 ], [ %i.anq, %.critedge969.thread2595 ], [ %i.amv, %.critedge969.thread2603 ], [ %i.ama, %.critedge969.thread2611 ], [ %i.alf, %.critedge969.thread2619 ], [ %i.akl, %.critedge969.thread2627 ], [ %i.agp, %.critedge969.thread2635 ], [ %i.afh, %.critedge969.thread2643 ], [ %i.aer, %.critedge969.thread2651 ], [ %i.adz, %.critedge969.thread2659 ], [ %i.adc, %.critedge969.thread2667 ], [ %i.acs, %.critedge969.thread2675 ], [ %i.acc, %.critedge969.thread2683 ], [ %i.zm, %.critedge969.thread2691 ], [ %i.yv, %.critedge969.thread2699 ], [ %i.yh, %.critedge969.thread2707 ], [ %i.xu, %.critedge969.thread2715 ], [ %i.xe, %.critedge969.thread2723 ], [ %i.wd, %.critedge969.thread2731 ], [ %.sroa.0782.24, %bb.aji ], [ %.sroa.0782.6, %bb.jn ], [ %.sroa.0782.7, %.thread2920 ], [ %.sroa.0782.10, %bb.si ], [ %.sroa.0782.3, %bb.fw ], [ %.sroa.0782.26, %bb.apa ], [ %.sroa.0782.263265, %.thread3257 ], [ %i.cbc, %bb.aob ], [ %i.cai, %bb.anm ], [ %i.byv, %bb.amn ], [ %i.bzv, %bb.anc ], [ %i.caf, %bb.anj ], [ %i.bye, %bb.amb ], [ %i.bwx, %bb.ald ], [ %i.bxv, %bb.alv ], [ %i.byb, %bb.aly ], [ %i.bvv, %bb.akr ], [ %i.btn, %bb.ajq ], [ %.sroa.0782.25, %bb.ake ], [ %.sroa.0782.243228, %bb.ajm ], [ %.sroa.0782.21, %bb.ahl ], [ %.sroa.0782.21, %bb.ahn ], [ %i.brn, %bb.aik ], [ %i.bry, %bb.aip ], [ %.sroa.0782.21, %bb.ahm ], [ %i.bsd, %bb.ais ], [ %i.bsl, %bb.aix ], [ %.sroa.0782.223207, %.thread3203 ], [ %.sroa.0782.22, %bb.aif ], [ %.sroa.0782.213183, %.thread3179 ], [ %.sroa.0782.20, %.body1123 ], [ %.sroa.0782.18, %.body1126 ], [ %.sroa.0782.17, %.body1129 ], [ %i.bju, %bb.adj ], [ %i.biq, %bb.acs ], [ %i.bhm, %bb.acb ], [ %i.bgl, %bb.abk ], [ %i.bfv, %bb.aax ], [ %i.bes, %bb.aaa ], [ %i.bdr, %bb.zl ], [ %i.bcx, %bb.yy ], [ %i.bcd, %bb.yl ], [ %i.bbl, %bb.xy ], [ %i.bao, %bb.xl ], [ %i.ays, %bb.wo ], [ %i.bab, %.thread3118 ], [ %i.bak, %bb.xh ], [ %i.ark, %bb.rw ], [ %.sroa.0782.113083, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit1695" ], [ %.sroa.0782.73305, %.thread2920.thread ], [ %.sroa.0782.103046, %.thread3041 ], [ %.sroa.0782.103040, %bb.tq ], [ %i.aob, %bb.pt ], [ %i.ang, %bb.pe ], [ %i.anu, %.thread2988 ], [ %i.any, %bb.pq ], [ %i.aml, %bb.op ], [ %i.amz, %.thread2981 ], [ %i.and, %bb.pb ], [ %i.alq, %bb.oa ], [ %i.ame, %.thread2974 ], [ %i.ami, %bb.om ], [ %i.akv, %bb.nl ], [ %i.alj, %.thread2967 ], [ %i.aln, %bb.nx ], [ %i.akb, %bb.my ], [ %i.aed, %bb.iw ], [ %i.che, %bb.ard ], [ %i.ajc, %bb.md ], [ %i.aed, %bb.ix ], [ %.sroa.0782.72912, %bb.mo ], [ %i.ceo, %bb.apw ], [ %i.ajr, %bb.ml ], [ %.sroa.0782.62867, %.thread2862 ], [ %.sroa.0782.62861, %bb.kl ], [ %i.zc, %bb.fm ], [ %i.ach, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit" ], [ %i.abs, %bb.hp ], [ %.sroa.0782.5, %bb.im ], [ %i.aeu, %bb.jc ], [ %i.zc, %bb.fn ], [ %.sroa.0782.32806, %bb.hj ], [ %i.cbz, %bb.aol ], [ %i.abk, %bb.hf ], [ %i.yl, %bb.fb ], [ %i.xk, %bb.el ], [ %i.ya, %bb.eu ], [ %i.uk, %bb.cb ], [ %.sroa.0782.2, %.body1485 ], [ %.sroa.0782.1, %.body1497 ], [ %i.ug, %bb.bx ], [ %i.uc, %bb.bo ], [ %i.uk, %bb.ca ], [ %i.xk, %bb.ek ], [ %i.yl, %bb.fa ], [ %i.abs, %bb.ho ], [ %i.akb, %bb.mx ], [ %i.akv, %bb.nk ], [ %i.alq, %bb.nz ], [ %i.aml, %bb.oo ], [ %i.ang, %bb.pd ], [ %i.aob, %bb.ps ], [ %i.ark, %bb.rv ], [ %i.ays, %bb.wn ], [ %i.bao, %bb.xk ], [ %i.bbl, %bb.xx ], [ %i.bcd, %bb.yk ], [ %i.bcx, %bb.yx ], [ %i.bdr, %bb.zk ], [ %i.bes, %bb.zz ], [ %i.bfv, %bb.aaw ], [ %i.bgl, %bb.abj ], [ %i.bhm, %bb.aca ], [ %i.biq, %bb.acr ], [ %i.bju, %bb.adi ], [ %.sroa.0782.243228, %bb.ajn ], [ %.sroa.0782.243228, %bb.ajl ], [ %i.btn, %bb.ajp ], [ %i.bvv, %bb.akq ], [ %i.bwx, %bb.alc ], [ %i.bye, %bb.ama ], [ %i.byv, %bb.amm ], [ %i.cai, %bb.anl ], [ %i.cbc, %bb.aoa ], [ %i.cbz, %bb.aok ], [ %i.ceo, %bb.apv ], [ %i.cff, %bb.aqf ], [ %i.cff, %bb.aqg ] ; 5 uses
  %.sroa.0513.02326 = phi i1 [ true, %.critedge969.thread2739 ], [ %.sroa.0513.1.ph, %.critedge969.thread2748 ], [ true, %.critedge969.thread2331 ], [ true, %.critedge969.thread2339 ], [ true, %.critedge969.thread2347 ], [ true, %.critedge969.thread2355 ], [ true, %.critedge969.thread2363 ], [ true, %.critedge969.thread2371 ], [ true, %.critedge969.thread2379 ], [ true, %.critedge969.thread2387 ], [ true, %.critedge969.thread2395 ], [ true, %.critedge969.thread2403 ], [ true, %.critedge969.thread2411 ], [ true, %.critedge969.thread2419 ], [ true, %.critedge969.thread2427 ], [ true, %.critedge969.thread2435 ], [ true, %.critedge969.thread2443 ], [ true, %.critedge969.thread2451 ], [ true, %.critedge969.thread2459 ], [ true, %.critedge969.thread2467 ], [ true, %.critedge969.thread2475 ], [ true, %.critedge969.thread2483 ], [ true, %.critedge969.thread2491 ], [ true, %.critedge969.thread2499 ], [ true, %.critedge969.thread2507 ], [ true, %.critedge969.thread2515 ], [ true, %.critedge969.thread2523 ], [ true, %.critedge969.thread2531 ], [ true, %.critedge969.thread2539 ], [ true, %.critedge969.thread2547 ], [ true, %.critedge969.thread2555 ], [ true, %.critedge969.thread2563 ], [ true, %.critedge969.thread2571 ], [ true, %.critedge969.thread2579 ], [ true, %.critedge969.thread2587 ], [ true, %.critedge969.thread2595 ], [ true, %.critedge969.thread2603 ], [ true, %.critedge969.thread2611 ], [ true, %.critedge969.thread2619 ], [ true, %.critedge969.thread2627 ], [ true, %.critedge969.thread2635 ], [ true, %.critedge969.thread2643 ], [ true, %.critedge969.thread2651 ], [ true, %.critedge969.thread2659 ], [ true, %.critedge969.thread2667 ], [ true, %.critedge969.thread2675 ], [ true, %.critedge969.thread2683 ], [ true, %.critedge969.thread2691 ], [ true, %.critedge969.thread2699 ], [ true, %.critedge969.thread2707 ], [ true, %.critedge969.thread2715 ], [ true, %.critedge969.thread2723 ], [ true, %.critedge969.thread2731 ], [ true, %bb.aji ], [ true, %bb.jn ], [ true, %.thread2920 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apa ], [ true, %.thread3257 ], [ true, %bb.aob ], [ true, %bb.anm ], [ true, %bb.amn ], [ true, %bb.anc ], [ true, %bb.anj ], [ true, %bb.amb ], [ true, %bb.ald ], [ true, %bb.alv ], [ true, %bb.aly ], [ true, %bb.akr ], [ true, %bb.ajq ], [ true, %bb.ake ], [ true, %bb.ajm ], [ true, %bb.ahl ], [ true, %bb.ahn ], [ true, %bb.aik ], [ true, %bb.aip ], [ true, %bb.ahm ], [ true, %bb.ais ], [ true, %bb.aix ], [ true, %.thread3203 ], [ true, %bb.aif ], [ true, %.thread3179 ], [ true, %.body1123 ], [ true, %.body1126 ], [ true, %.body1129 ], [ true, %bb.adj ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3118 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit1695" ], [ true, %.thread2920.thread ], [ true, %.thread3041 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2988 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2981 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2974 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2967 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ false, %bb.ard ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apw ], [ true, %bb.ml ], [ true, %.thread2862 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aol ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajn ], [ true, %bb.ajl ], [ true, %bb.ajp ], [ true, %bb.akq ], [ true, %bb.alc ], [ true, %bb.ama ], [ true, %bb.amm ], [ true, %bb.anl ], [ true, %bb.aoa ], [ true, %bb.aok ], [ true, %bb.apv ], [ true, %bb.aqf ], [ true, %bb.aqg ] ; 4 uses
  %.sroa.0516.02324 = phi i8 [ 0, %.critedge969.thread2739 ], [ %.sroa.0516.1.ph, %.critedge969.thread2748 ], [ 0, %.critedge969.thread2331 ], [ 0, %.critedge969.thread2339 ], [ 0, %.critedge969.thread2347 ], [ 0, %.critedge969.thread2355 ], [ 0, %.critedge969.thread2363 ], [ 1, %.critedge969.thread2371 ], [ 0, %.critedge969.thread2379 ], [ 0, %.critedge969.thread2387 ], [ 1, %.critedge969.thread2395 ], [ 0, %.critedge969.thread2403 ], [ 0, %.critedge969.thread2411 ], [ 1, %.critedge969.thread2419 ], [ 0, %.critedge969.thread2427 ], [ 1, %.critedge969.thread2435 ], [ 0, %.critedge969.thread2443 ], [ 0, %.critedge969.thread2451 ], [ 0, %.critedge969.thread2459 ], [ 0, %.critedge969.thread2467 ], [ 0, %.critedge969.thread2475 ], [ 0, %.critedge969.thread2483 ], [ 0, %.critedge969.thread2491 ], [ 0, %.critedge969.thread2499 ], [ 0, %.critedge969.thread2507 ], [ 0, %.critedge969.thread2515 ], [ 0, %.critedge969.thread2523 ], [ 1, %.critedge969.thread2531 ], [ 0, %.critedge969.thread2539 ], [ 1, %.critedge969.thread2547 ], [ 0, %.critedge969.thread2555 ], [ 1, %.critedge969.thread2563 ], [ 1, %.critedge969.thread2571 ], [ 1, %.critedge969.thread2579 ], [ 0, %.critedge969.thread2587 ], [ 0, %.critedge969.thread2595 ], [ 0, %.critedge969.thread2603 ], [ 0, %.critedge969.thread2611 ], [ 0, %.critedge969.thread2619 ], [ 0, %.critedge969.thread2627 ], [ 1, %.critedge969.thread2635 ], [ 1, %.critedge969.thread2643 ], [ 1, %.critedge969.thread2651 ], [ 1, %.critedge969.thread2659 ], [ 1, %.critedge969.thread2667 ], [ 1, %.critedge969.thread2675 ], [ 0, %.critedge969.thread2683 ], [ 0, %.critedge969.thread2691 ], [ 0, %.critedge969.thread2699 ], [ 1, %.critedge969.thread2707 ], [ 0, %.critedge969.thread2715 ], [ 1, %.critedge969.thread2723 ], [ 1, %.critedge969.thread2731 ], [ 1, %bb.aji ], [ 1, %bb.jn ], [ 1, %.thread2920 ], [ 1, %bb.si ], [ 1, %bb.fw ], [ 1, %bb.apa ], [ %.sroa.0516.423263, %.thread3257 ], [ 1, %bb.aob ], [ 1, %bb.anm ], [ 1, %bb.amn ], [ 1, %bb.anc ], [ 1, %bb.anj ], [ 1, %bb.amb ], [ 1, %bb.ald ], [ 1, %bb.alv ], [ 1, %bb.aly ], [ 1, %bb.akr ], [ 1, %bb.ajq ], [ 1, %bb.ake ], [ 1, %bb.ajm ], [ 1, %bb.ahl ], [ 1, %bb.ahn ], [ 1, %bb.aik ], [ 1, %bb.aip ], [ 1, %bb.ahm ], [ 1, %bb.ais ], [ 1, %bb.aix ], [ 1, %.thread3203 ], [ 1, %bb.aif ], [ 1, %.thread3179 ], [ %.sroa.0516.35, %.body1123 ], [ %.sroa.0516.32, %.body1126 ], [ %.sroa.0516.29, %.body1129 ], [ 1, %bb.adj ], [ 1, %bb.acs ], [ 1, %bb.acb ], [ 1, %bb.abk ], [ 1, %bb.aax ], [ 1, %bb.aaa ], [ 1, %bb.zl ], [ 1, %bb.yy ], [ 1, %bb.yl ], [ 1, %bb.xy ], [ 1, %bb.xl ], [ 1, %bb.wo ], [ 1, %.thread3118 ], [ 1, %bb.xh ], [ 1, %bb.rw ], [ %.sroa.0516.263079, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit1695" ], [ 1, %.thread2920.thread ], [ 1, %.thread3041 ], [ %.sroa.0516.233038, %bb.tq ], [ 1, %bb.pt ], [ 1, %bb.pe ], [ 1, %.thread2988 ], [ 1, %bb.pq ], [ 1, %bb.op ], [ 1, %.thread2981 ], [ 1, %bb.pb ], [ 1, %bb.oa ], [ 1, %.thread2974 ], [ 1, %bb.om ], [ 1, %bb.nl ], [ 1, %.thread2967 ], [ 1, %bb.nx ], [ 1, %bb.my ], [ 1, %bb.iw ], [ 0, %bb.ard ], [ 0, %bb.md ], [ 1, %bb.ix ], [ %.sroa.0516.192909, %bb.mo ], [ 1, %bb.apw ], [ %.sroa.0516.222959, %bb.ml ], [ 1, %.thread2862 ], [ %.sroa.0516.162859, %bb.kl ], [ 1, %bb.fm ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit" ], [ 1, %bb.hp ], [ 1, %bb.im ], [ 1, %bb.jc ], [ 1, %bb.fn ], [ %.sroa.0516.112803, %bb.hj ], [ 1, %bb.aol ], [ %.sroa.0516.14.ph, %bb.hf ], [ 1, %bb.fb ], [ 1, %bb.el ], [ 1, %bb.eu ], [ 1, %bb.cb ], [ %.sroa.0516.6, %.body1485 ], [ %.sroa.0516.3, %.body1497 ], [ 1, %bb.bx ], [ 1, %bb.bo ], [ 1, %bb.ca ], [ 1, %bb.ek ], [ 1, %bb.fa ], [ 1, %bb.ho ], [ 1, %bb.mx ], [ 1, %bb.nk ], [ 1, %bb.nz ], [ 1, %bb.oo ], [ 1, %bb.pd ], [ 1, %bb.ps ], [ 1, %bb.rv ], [ 1, %bb.wn ], [ 1, %bb.xk ], [ 1, %bb.xx ], [ 1, %bb.yk ], [ 1, %bb.yx ], [ 1, %bb.zk ], [ 1, %bb.zz ], [ 1, %bb.aaw ], [ 1, %bb.abj ], [ 1, %bb.aca ], [ 1, %bb.acr ], [ 1, %bb.adi ], [ 1, %bb.ajn ], [ 1, %bb.ajl ], [ 1, %bb.ajp ], [ 1, %bb.akq ], [ 1, %bb.alc ], [ 1, %bb.ama ], [ 1, %bb.amm ], [ 1, %bb.anl ], [ 1, %bb.aoa ], [ 1, %bb.aok ], [ 1, %bb.apv ], [ 1, %bb.aqf ], [ 1, %bb.aqg ] ; 5 uses
  %.sroa.0552.02322 = phi i1 [ true, %.critedge969.thread2739 ], [ %.sroa.0552.1.ph, %.critedge969.thread2748 ], [ true, %.critedge969.thread2331 ], [ true, %.critedge969.thread2339 ], [ true, %.critedge969.thread2347 ], [ true, %.critedge969.thread2355 ], [ true, %.critedge969.thread2363 ], [ true, %.critedge969.thread2371 ], [ true, %.critedge969.thread2379 ], [ true, %.critedge969.thread2387 ], [ true, %.critedge969.thread2395 ], [ true, %.critedge969.thread2403 ], [ true, %.critedge969.thread2411 ], [ true, %.critedge969.thread2419 ], [ true, %.critedge969.thread2427 ], [ true, %.critedge969.thread2435 ], [ true, %.critedge969.thread2443 ], [ true, %.critedge969.thread2451 ], [ true, %.critedge969.thread2459 ], [ true, %.critedge969.thread2467 ], [ true, %.critedge969.thread2475 ], [ true, %.critedge969.thread2483 ], [ true, %.critedge969.thread2491 ], [ true, %.critedge969.thread2499 ], [ true, %.critedge969.thread2507 ], [ true, %.critedge969.thread2515 ], [ true, %.critedge969.thread2523 ], [ true, %.critedge969.thread2531 ], [ true, %.critedge969.thread2539 ], [ true, %.critedge969.thread2547 ], [ true, %.critedge969.thread2555 ], [ true, %.critedge969.thread2563 ], [ true, %.critedge969.thread2571 ], [ true, %.critedge969.thread2579 ], [ true, %.critedge969.thread2587 ], [ true, %.critedge969.thread2595 ], [ true, %.critedge969.thread2603 ], [ true, %.critedge969.thread2611 ], [ true, %.critedge969.thread2619 ], [ true, %.critedge969.thread2627 ], [ true, %.critedge969.thread2635 ], [ true, %.critedge969.thread2643 ], [ true, %.critedge969.thread2651 ], [ true, %.critedge969.thread2659 ], [ true, %.critedge969.thread2667 ], [ true, %.critedge969.thread2675 ], [ true, %.critedge969.thread2683 ], [ true, %.critedge969.thread2691 ], [ true, %.critedge969.thread2699 ], [ true, %.critedge969.thread2707 ], [ true, %.critedge969.thread2715 ], [ true, %.critedge969.thread2723 ], [ true, %.critedge969.thread2731 ], [ true, %bb.aji ], [ true, %bb.jn ], [ true, %.thread2920 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apa ], [ true, %.thread3257 ], [ true, %bb.aob ], [ true, %bb.anm ], [ true, %bb.amn ], [ true, %bb.anc ], [ true, %bb.anj ], [ true, %bb.amb ], [ true, %bb.ald ], [ true, %bb.alv ], [ true, %bb.aly ], [ true, %bb.akr ], [ true, %bb.ajq ], [ true, %bb.ake ], [ true, %bb.ajm ], [ true, %bb.ahl ], [ true, %bb.ahn ], [ true, %bb.aik ], [ true, %bb.aip ], [ true, %bb.ahm ], [ true, %bb.ais ], [ true, %bb.aix ], [ true, %.thread3203 ], [ true, %bb.aif ], [ true, %.thread3179 ], [ true, %.body1123 ], [ true, %.body1126 ], [ false, %.body1129 ], [ true, %bb.adj ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3118 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit1695" ], [ true, %.thread2920.thread ], [ true, %.thread3041 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2988 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2981 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2974 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2967 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.ard ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apw ], [ true, %bb.ml ], [ true, %.thread2862 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aol ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajn ], [ true, %bb.ajl ], [ true, %bb.ajp ], [ true, %bb.akq ], [ true, %bb.alc ], [ true, %bb.ama ], [ true, %bb.amm ], [ true, %bb.anl ], [ true, %bb.aoa ], [ true, %bb.aok ], [ true, %bb.apv ], [ true, %bb.aqf ], [ true, %bb.aqg ]
  %.sroa.0553.02321 = phi i1 [ true, %.critedge969.thread2739 ], [ %.sroa.0553.1.ph, %.critedge969.thread2748 ], [ true, %.critedge969.thread2331 ], [ true, %.critedge969.thread2339 ], [ true, %.critedge969.thread2347 ], [ true, %.critedge969.thread2355 ], [ true, %.critedge969.thread2363 ], [ true, %.critedge969.thread2371 ], [ true, %.critedge969.thread2379 ], [ true, %.critedge969.thread2387 ], [ true, %.critedge969.thread2395 ], [ true, %.critedge969.thread2403 ], [ true, %.critedge969.thread2411 ], [ true, %.critedge969.thread2419 ], [ true, %.critedge969.thread2427 ], [ true, %.critedge969.thread2435 ], [ true, %.critedge969.thread2443 ], [ true, %.critedge969.thread2451 ], [ true, %.critedge969.thread2459 ], [ true, %.critedge969.thread2467 ], [ true, %.critedge969.thread2475 ], [ true, %.critedge969.thread2483 ], [ true, %.critedge969.thread2491 ], [ true, %.critedge969.thread2499 ], [ true, %.critedge969.thread2507 ], [ true, %.critedge969.thread2515 ], [ true, %.critedge969.thread2523 ], [ true, %.critedge969.thread2531 ], [ true, %.critedge969.thread2539 ], [ true, %.critedge969.thread2547 ], [ true, %.critedge969.thread2555 ], [ true, %.critedge969.thread2563 ], [ true, %.critedge969.thread2571 ], [ true, %.critedge969.thread2579 ], [ true, %.critedge969.thread2587 ], [ true, %.critedge969.thread2595 ], [ true, %.critedge969.thread2603 ], [ true, %.critedge969.thread2611 ], [ true, %.critedge969.thread2619 ], [ true, %.critedge969.thread2627 ], [ true, %.critedge969.thread2635 ], [ true, %.critedge969.thread2643 ], [ true, %.critedge969.thread2651 ], [ true, %.critedge969.thread2659 ], [ true, %.critedge969.thread2667 ], [ true, %.critedge969.thread2675 ], [ true, %.critedge969.thread2683 ], [ true, %.critedge969.thread2691 ], [ true, %.critedge969.thread2699 ], [ true, %.critedge969.thread2707 ], [ true, %.critedge969.thread2715 ], [ true, %.critedge969.thread2723 ], [ true, %.critedge969.thread2731 ], [ true, %bb.aji ], [ true, %bb.jn ], [ true, %.thread2920 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apa ], [ true, %.thread3257 ], [ true, %bb.aob ], [ true, %bb.anm ], [ true, %bb.amn ], [ true, %bb.anc ], [ true, %bb.anj ], [ true, %bb.amb ], [ true, %bb.ald ], [ true, %bb.alv ], [ true, %bb.aly ], [ true, %bb.akr ], [ true, %bb.ajq ], [ true, %bb.ake ], [ true, %bb.ajm ], [ true, %bb.ahl ], [ true, %bb.ahn ], [ true, %bb.aik ], [ true, %bb.aip ], [ true, %bb.ahm ], [ true, %bb.ais ], [ true, %bb.aix ], [ true, %.thread3203 ], [ true, %bb.aif ], [ true, %.thread3179 ], [ true, %.body1123 ], [ false, %.body1126 ], [ true, %.body1129 ], [ true, %bb.adj ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3118 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit1695" ], [ true, %.thread2920.thread ], [ true, %.thread3041 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2988 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2981 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2974 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2967 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.ard ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apw ], [ true, %bb.ml ], [ true, %.thread2862 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aol ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajn ], [ true, %bb.ajl ], [ true, %bb.ajp ], [ true, %bb.akq ], [ true, %bb.alc ], [ true, %bb.ama ], [ true, %bb.amm ], [ true, %bb.anl ], [ true, %bb.aoa ], [ true, %bb.aok ], [ true, %bb.apv ], [ true, %bb.aqf ], [ true, %bb.aqg ]
  %.sroa.0554.02320 = phi i1 [ true, %.critedge969.thread2739 ], [ %.sroa.0554.1.ph, %.critedge969.thread2748 ], [ true, %.critedge969.thread2331 ], [ true, %.critedge969.thread2339 ], [ true, %.critedge969.thread2347 ], [ true, %.critedge969.thread2355 ], [ true, %.critedge969.thread2363 ], [ true, %.critedge969.thread2371 ], [ true, %.critedge969.thread2379 ], [ true, %.critedge969.thread2387 ], [ true, %.critedge969.thread2395 ], [ true, %.critedge969.thread2403 ], [ true, %.critedge969.thread2411 ], [ true, %.critedge969.thread2419 ], [ true, %.critedge969.thread2427 ], [ true, %.critedge969.thread2435 ], [ true, %.critedge969.thread2443 ], [ true, %.critedge969.thread2451 ], [ true, %.critedge969.thread2459 ], [ true, %.critedge969.thread2467 ], [ true, %.critedge969.thread2475 ], [ true, %.critedge969.thread2483 ], [ true, %.critedge969.thread2491 ], [ true, %.critedge969.thread2499 ], [ true, %.critedge969.thread2507 ], [ true, %.critedge969.thread2515 ], [ true, %.critedge969.thread2523 ], [ true, %.critedge969.thread2531 ], [ true, %.critedge969.thread2539 ], [ true, %.critedge969.thread2547 ], [ true, %.critedge969.thread2555 ], [ true, %.critedge969.thread2563 ], [ true, %.critedge969.thread2571 ], [ true, %.critedge969.thread2579 ], [ true, %.critedge969.thread2587 ], [ true, %.critedge969.thread2595 ], [ true, %.critedge969.thread2603 ], [ true, %.critedge969.thread2611 ], [ true, %.critedge969.thread2619 ], [ true, %.critedge969.thread2627 ], [ true, %.critedge969.thread2635 ], [ true, %.critedge969.thread2643 ], [ true, %.critedge969.thread2651 ], [ true, %.critedge969.thread2659 ], [ true, %.critedge969.thread2667 ], [ true, %.critedge969.thread2675 ], [ true, %.critedge969.thread2683 ], [ true, %.critedge969.thread2691 ], [ true, %.critedge969.thread2699 ], [ true, %.critedge969.thread2707 ], [ true, %.critedge969.thread2715 ], [ true, %.critedge969.thread2723 ], [ true, %.critedge969.thread2731 ], [ true, %bb.aji ], [ true, %bb.jn ], [ true, %.thread2920 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apa ], [ true, %.thread3257 ], [ true, %bb.aob ], [ true, %bb.anm ], [ true, %bb.amn ], [ true, %bb.anc ], [ true, %bb.anj ], [ true, %bb.amb ], [ true, %bb.ald ], [ true, %bb.alv ], [ true, %bb.aly ], [ true, %bb.akr ], [ true, %bb.ajq ], [ true, %bb.ake ], [ true, %bb.ajm ], [ true, %bb.ahl ], [ true, %bb.ahn ], [ true, %bb.aik ], [ true, %bb.aip ], [ true, %bb.ahm ], [ true, %bb.ais ], [ true, %bb.aix ], [ true, %.thread3203 ], [ true, %bb.aif ], [ true, %.thread3179 ], [ false, %.body1123 ], [ true, %.body1126 ], [ true, %.body1129 ], [ true, %bb.adj ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3118 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit1695" ], [ true, %.thread2920.thread ], [ true, %.thread3041 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2988 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2981 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2974 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2967 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.ard ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apw ], [ true, %bb.ml ], [ true, %.thread2862 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aol ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajn ], [ true, %bb.ajl ], [ true, %bb.ajp ], [ true, %bb.akq ], [ true, %bb.alc ], [ true, %bb.ama ], [ true, %bb.amm ], [ true, %bb.anl ], [ true, %bb.aoa ], [ true, %bb.aok ], [ true, %bb.apv ], [ true, %bb.aqf ], [ true, %bb.aqg ]
  %i.cil = load i8, ptr %i.qf, align 8, !range !130, !noundef !44
  switch i8 %i.cil, label %bb.ary [
    i8 36, label %bb.arz
    i8 37, label %bb.asa
    i8 38, label %bb.asb
  ]

bb.arz:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0552.02322, label %bb.asc, label %bb.ary

bb.asa:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0553.02321, label %bb.asd, label %bb.ary

bb.asb:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0554.02320, label %bb.ase, label %bb.ary

bb.asc:                                           ; preds = %bb.arz
  %i.cim = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$regex..regex..string..Regex$GT$17hae430c70751e4fdaE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cim)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h897659d52136a610E.exit1849" unwind label %bb.by

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h897659d52136a610E.exit1849": ; preds = %bb.asc
  br i1 %.sroa.0513.02326, label %bb.asf, label %bb.aqt

bb.asd:                                           ; preds = %bb.asa
  %i.cin = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$regex..regex..string..Regex$GT$17hae430c70751e4fdaE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cin)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h897659d52136a610E.exit1851" unwind label %bb.by

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h897659d52136a610E.exit1851": ; preds = %bb.asd
  br i1 %.sroa.0513.02326, label %bb.asf, label %bb.aqt

bb.ase:                                           ; preds = %bb.asb
  %i.cio = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$regex..regex..string..Regex$GT$17hae430c70751e4fdaE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cio)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h897659d52136a610E.exit1853" unwind label %bb.by

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h897659d52136a610E.exit1853": ; preds = %bb.ase
  br i1 %.sroa.0513.02326, label %bb.asf, label %bb.aqt

bb.asf:                                           ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h897659d52136a610E.exit1849", %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h897659d52136a610E.exit1851", %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h897659d52136a610E.exit1853", %bb.ary
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE"(ptr noalias noundef align 8 dereferenceable(16) %i.qg) #77
          to label %bb.aqt unwind label %bb.by

bb.asg:                                           ; preds = %.thread3324, %bb.ash, %bb.aqt
  %.sroa.226.273329 = phi i32 [ %i.qw, %.thread3324 ], [ %.sroa.226.27, %bb.ash ], [ %.sroa.226.27, %bb.aqt ]
  %.sroa.0782.273328 = phi ptr [ %i.qv, %.thread3324 ], [ %.sroa.0782.27, %bb.ash ], [ %.sroa.0782.27, %bb.aqt ]
  %i.cip = insertvalue { ptr, i32 } poison, ptr %.sroa.0782.273328, 0
  %i.ciq = insertvalue { ptr, i32 } %i.cip, i32 %.sroa.226.273329, 1
  resume { ptr, i32 } %i.ciq

bb.ash:                                           ; preds = %bb.aqt
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qh) #77
          to label %bb.asg unwind label %bb.by
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h73c0a7815adcdf93E"(ptr %.8.val, i64 %.16.val, i32 %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store ptr %.8.val, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.16.val, ptr %i.f, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9ca5b67ccf336554E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28507
  store ptr @433, ptr %i.a, align 8, !noalias !28508
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !28508
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !28508
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !28508
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !28508
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !28509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 %.0.val, ptr %i.h, align 8
  store i64 41, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !28510
  %i.i = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !28510 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #77
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.i, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h87a614ebbf3c0ec2E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28528
  store i64 0, ptr %i.c, align 8, !noalias !28528
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !28528
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !28528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28528
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !28528
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !28528
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !28528
  store ptr %i.c, ptr %i.b, align 8, !noalias !28528
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1248, ptr %i.f, align 8, !noalias !28528
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !28529

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28530)
  call void @llvm.experimental.noalias.scope.decl(metadata !28531)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !74, !alias.scope !28532, !noalias !28528, !noundef !44 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !28532, !noalias !28528, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !28533
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.g, !prof !49

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1249, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1329, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1251) #75
          to label %.noexc.i unwind label %bb.b, !noalias !28529

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.o, %bb.i ], [ %i.h, %bb.c ]
  %.val2 = load i64, ptr %0, align 8, !range !70, !noundef !44 ; 2 uses
  %switch = icmp sgt i64 %.val2, 0
  br i1 %switch, label %bb.f, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit"

bb.f:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !28534
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit"

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28528
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.l, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !28535
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !28535 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.k, !prof !47

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #77
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %0, align 8, !range !70, !noundef !44 ; 2 uses
  %switch1 = icmp sgt i64 %.val, 0
  br i1 %switch1, label %bb.l, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit8"

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.q, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !28536
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit8": ; preds = %bb.k, %bb.l
  ret ptr %i.m

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit": ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hc55c91bd512ab392E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i32 %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call { ptr, i64 } @_ZN16nickel_lang_core4eval5value11NickelValue7type_of17hc677b7a5c04dea94E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  store ptr %i.g, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9ca5b67ccf336554E", ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28546
  store ptr @439, ptr %i.a, align 8, !noalias !28547
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !28547
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !28547
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !28547
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !28547
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !28548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 %.0.val, ptr %i.k, align 8
  store i64 41, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !28549
  %i.l = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !28549 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit", !prof !47

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #77
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit": ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.l, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.l

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @436) #75
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hd8f4a5a784e74a66E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, ptr %.24.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  %.not = icmp eq ptr %.24.val, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %.24.val to i64
  %i.f = and i64 %i.e, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !54

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = load i64, ptr %.24.val, align 8, !noundef !44 ; 3 uses
  %i.h = and i64 %i.g, 72057594037927935          ; 3 uses
  %i.i = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  %i.k = and i64 %i.g, 1080863910568919040
  %i.l = icmp ult i64 %i.g, 864691128455135232
  tail call void @llvm.assume(i1 %i.l)
  %i.m = or i64 %i.j, %i.k
  store i64 %i.m, ptr %.24.val, align 8
  %i.n = icmp eq i64 %i.h, 72057594037927935
  br i1 %i.n, label %bb.e, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !49

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @2307, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.r, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @440, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @441) #75
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr239drop_in_place$LT$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$17h288f891a4b85f63fE"(ptr noalias noundef align 8 dereferenceable(16) %i.c) #77
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.d, %bb.b
  store ptr %.24.val, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.u, align 8
  ret void

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17he67c6f3a1612f267E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28567
  store i64 0, ptr %i.c, align 8, !noalias !28567
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !28567
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !28567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28567
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !28567
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !28567
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !28567
  store ptr %i.c, ptr %i.b, align 8, !noalias !28567
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1248, ptr %i.f, align 8, !noalias !28567
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !28568

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28569)
  call void @llvm.experimental.noalias.scope.decl(metadata !28570)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !74, !alias.scope !28571, !noalias !28567, !noundef !44 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !28571, !noalias !28567, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !28572
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.g, !prof !49

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1249, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1329, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1251) #75
          to label %.noexc.i unwind label %bb.b, !noalias !28568

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.o, %bb.i ], [ %i.h, %bb.c ]
  %.val2 = load i64, ptr %0, align 8, !range !70, !noundef !44 ; 2 uses
  %switch = icmp sgt i64 %.val2, 0
  br i1 %switch, label %bb.f, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit"

bb.f:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !28573
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit"

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28567
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.l, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !28574
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !28574 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.k, !prof !47

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #77
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %0, align 8, !range !70, !noundef !44 ; 2 uses
  %switch1 = icmp sgt i64 %.val, 0
  br i1 %switch1, label %bb.l, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit8"

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.q, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !28575
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit8": ; preds = %bb.k, %bb.l
  ret ptr %i.m

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit": ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hfa7497a0f8f7a929E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [392 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load ptr, ptr %0, align 8, !nonnull !44, !align !50, !noundef !44
  call void @"_ZN16nickel_lang_core4eval5value63Container$LT$$RF$nickel_lang_core..term..record..RecordData$GT$11field_names17h703dc6207979630eE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !44, !align !50, !noundef !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %i.h, i64 20, i1 false)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !28586
  %i.i = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #66, !noalias !28586 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.f, !prof !49

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28586
  store ptr @363, ptr %i.a, align 8, !noalias !28586
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8, !noalias !28586
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.l, align 8, !noalias !28586
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !noalias !28586
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.n, align 8, !noalias !28586
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.c unwind label %.body.i, !noalias !28586

bb.c:                                             ; preds = %bb.b
  unreachable

.body.i:                                          ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.o, %.body.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28587)
  %.val.i = load i64, ptr %i.c, align 8, !range !74, !alias.scope !28587, !noundef !44 ; 2 uses
  %i.q = icmp eq i64 %.val.i, 0
  br i1 %i.q, label %common.resume, label %bb.e

bb.e:                                             ; preds = %.body
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i = load ptr, ptr %i.r, align 8, !alias.scope !28587, !nonnull !44, !noundef !44
  %i.s = mul nuw i64 %.val.i, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !28587
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  store i64 504403158265495553, ptr %i.i, align 8, !noalias !28586
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 -1, ptr %i.t, align 8, !noalias !28586
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.u, align 8, !noalias !28588
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !44, !align !66, !noundef !44
  %i.x = load i32, ptr %i.w, align 4, !noundef !44
  %i.y = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull %i.i, i32 noundef %i.x)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !44, !align !66, !noundef !44
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.y, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.ab, ptr %i.ae, align 8
  store i64 36, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !28589
  %i.af = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !28589 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit", !prof !47

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #77
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

common.resume:                                    ; preds = %.body, %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %eh.lpad-body, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit": ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.af, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.af
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hff3c416d73ab9074E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28607
  store i64 0, ptr %i.c, align 8, !noalias !28607
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !28607
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !28607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28607
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !28607
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !28607
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !28607
  store ptr %i.c, ptr %i.b, align 8, !noalias !28607
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1248, ptr %i.f, align 8, !noalias !28607
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !28608

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28609)
  call void @llvm.experimental.noalias.scope.decl(metadata !28610)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !74, !alias.scope !28611, !noalias !28607, !noundef !44 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !28611, !noalias !28607, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !28612
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.g, !prof !49

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1249, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1329, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1251) #75
          to label %.noexc.i unwind label %bb.b, !noalias !28608

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.o, %bb.i ], [ %i.h, %bb.c ]
  %.val2 = load i64, ptr %0, align 8, !range !70, !noundef !44 ; 2 uses
  %switch = icmp sgt i64 %.val2, 0
  br i1 %switch, label %bb.f, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit"

bb.f:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !28613
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit"

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28607
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.l, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !28614
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !28614 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.k, !prof !47

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #77
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %0, align 8, !range !70, !noundef !44 ; 2 uses
  %switch1 = icmp sgt i64 %.val, 0
  br i1 %switch1, label %bb.l, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit8"

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.q, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !28615
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit8": ; preds = %bb.k, %bb.l
  ret ptr %i.m

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit": ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op19seq_terms17h391153a912e514c9E"(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28653)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !28654, !noundef !44 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.j, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1475e9d363ba5e2cE.exit.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1475e9d363ba5e2cE.exit.i.i": ; preds = %bb.a
  %i.o = add i64 %i.m, -1
  store i64 %i.o, ptr %i.l, align 8, !alias.scope !28654
  %i.p = invoke fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h475e57f9373884e3E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
          to label %.noexc unwind label %bb.am    ; 2 uses

.noexc:                                           ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1475e9d363ba5e2cE.exit.i.i"
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.j, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !28655 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val3.i.i = load i32, ptr %i.r, align 8, !alias.scope !28655
  %.val4.i.i = load ptr, ptr %i.p, align 8, !nonnull !44, !noundef !44 ; 4 uses
  %i.s = ptrtoint ptr %.val4.i.i to i64
  %i.t = and i64 %i.s, 3
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2)
  switch i64 %..i.i.i.i, label %bb.f [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !54

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc9 unwind label %bb.am

.noexc9:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = load i64, ptr %.val4.i.i, align 8, !noundef !44 ; 3 uses
  %i.v = and i64 %i.u, 72057594037927935          ; 3 uses
  %i.w = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  %i.y = and i64 %i.u, 1080863910568919040
  %i.z = icmp ult i64 %i.u, 864691128455135232
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = or i64 %i.x, %i.y
  store i64 %i.aa, ptr %.val4.i.i, align 8
  %i.ab = icmp eq i64 %i.v, 72057594037927935
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !49

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !28655
  store ptr @2307, ptr %i.k, align 8, !noalias !28655
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.ac, align 8, !noalias !28655
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.ad, align 8, !noalias !28655
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !noalias !28655
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.af, align 8, !noalias !28655
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc10 unwind label %bb.am

.noexc10:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
end_hunk_4
begin_hunk_5_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op217h3972c15837ca5a7fE":bb.a
.noexc3320:                                       ; preds = %bb.csd
  unreachable

bb.cse:                                           ; preds = %bb.csc
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i3318" unwind label %bb.cql

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i3318": ; preds = %bb.cse, %bb.csc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32508
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit3322"

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit3331": ; preds = %bb.csk, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i3323", %bb.csl, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit3322"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.abz)
  %i.hym = trunc nuw i8 %.sroa.0627.340284791 to i1
  br i1 %i.hym, label %bb.csn, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit3338"

bb.csf:                                           ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit3322"
  call void @llvm.experimental.noalias.scope.decl(metadata !32510)
  call void @llvm.experimental.noalias.scope.decl(metadata !32511)
  call void @llvm.experimental.noalias.scope.decl(metadata !32512)
  %i.hyn = load ptr, ptr %i.abz, align 16, !alias.scope !32513, !nonnull !44, !noundef !44 ; 2 uses
  %i.hyo = load i64, ptr %i.hyn, align 8, !noalias !32513, !noundef !44
  %i.hyp = add i64 %i.hyo, -1                     ; 2 uses
  store i64 %i.hyp, ptr %i.hyn, align 8, !noalias !32513
  %i.hyq = icmp eq i64 %i.hyp, 0
  br i1 %i.hyq, label %bb.csg, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i3323"

bb.csg:                                           ; preds = %bb.csf
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.abz)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i3323" unwind label %bb.csh

bb.csh:                                           ; preds = %bb.csg
  %i.hyr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32514)
  %i.hys = load ptr, ptr %i.acf, align 8, !alias.scope !32515, !noundef !44 ; 3 uses
  %i.hyt = icmp eq ptr %i.hys, null
  br i1 %i.hyt, label %.body3289, label %bb.csi

bb.csi:                                           ; preds = %bb.csh
  %i.hyu = load i64, ptr %i.hys, align 8, !noalias !32516, !noundef !44
  %i.hyv = add i64 %i.hyu, -1                     ; 2 uses
  store i64 %i.hyv, ptr %i.hys, align 8, !noalias !32516
  %i.hyw = icmp eq i64 %i.hyv, 0
  br i1 %i.hyw, label %bb.csj, label %.body3289

bb.csj:                                           ; preds = %bb.csi
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acf)
          to label %.body3289 unwind label %bb.csm

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i3323": ; preds = %bb.csg, %bb.csf
  call void @llvm.experimental.noalias.scope.decl(metadata !32517)
  %i.hyx = load ptr, ptr %i.acf, align 8, !alias.scope !32518, !noundef !44 ; 3 uses
  %i.hyy = icmp eq ptr %i.hyx, null
  br i1 %i.hyy, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit3331", label %bb.csk

bb.csk:                                           ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i3323"
  %i.hyz = load i64, ptr %i.hyx, align 8, !noalias !32519, !noundef !44
  %i.hza = add i64 %i.hyz, -1                     ; 2 uses
  store i64 %i.hza, ptr %i.hyx, align 8, !noalias !32519
  %i.hzb = icmp eq i64 %i.hza, 0
  br i1 %i.hzb, label %bb.csl, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit3331"

bb.csl:                                           ; preds = %bb.csk
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acf)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit3331" unwind label %bb.cqv

bb.csm:                                           ; preds = %bb.csj
  %i.hzc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.csn:                                           ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit3331"
  call void @llvm.experimental.noalias.scope.decl(metadata !32520)
  %.val.i3332 = load ptr, ptr %i.aca, align 8, !alias.scope !32520, !nonnull !44, !noundef !44 ; 4 uses
  %i.hzd = ptrtoint ptr %.val.i3332 to i64
  %i.hze = and i64 %i.hzd, 3
  %..i.i3333 = call i64 @llvm.umin.i64(i64 %i.hze, i64 2)
  switch i64 %..i.i3333, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit3338" [
    i64 2, label %bb.cso
    i64 0, label %bb.csp
  ], !prof !54

bb.cso:                                           ; preds = %bb.csn
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc3335 unwind label %.split

.noexc3335:                                       ; preds = %bb.cso
  unreachable

bb.csp:                                           ; preds = %bb.csn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32520
  store ptr %.val.i3332, ptr %i.c, align 8, !noalias !32520
  %i.hzf = load i64, ptr %.val.i3332, align 8, !noalias !32521, !noundef !44 ; 3 uses
  %i.hzg = and i64 %i.hzf, 72057594037927935
  %i.hzh = add nsw i64 %i.hzg, -1                 ; 3 uses
  %i.hzi = and i64 %i.hzf, 1080863910568919040
  %i.hzj = icmp ult i64 %i.hzf, 864691128455135232
  call void @llvm.assume(i1 %i.hzj)
  %i.hzk = or i64 %i.hzh, %i.hzi
  store i64 %i.hzk, ptr %.val.i3332, align 8, !noalias !32521
  %i.hzl = icmp ugt i64 %i.hzh, 72057594037927935
  br i1 %i.hzl, label %bb.csr, label %bb.csq, !prof !49

bb.csq:                                           ; preds = %bb.csp
  %i.hzm = icmp eq i64 %i.hzh, 0
  br i1 %i.hzm, label %bb.css, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i3334"

bb.csr:                                           ; preds = %bb.csp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32521
  store ptr @2307, ptr %i.b, align 8, !noalias !32521
  %i.hzn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.hzn, align 8, !noalias !32521
  %i.hzo = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.hzo, align 8, !noalias !32521
  %i.hzp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.hzp, align 8, !noalias !32521
  %i.hzq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.hzq, align 8, !noalias !32521
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc3336 unwind label %.split

.noexc3336:                                       ; preds = %bb.csr
  unreachable

bb.css:                                           ; preds = %bb.csq
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i3334" unwind label %.split

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i3334": ; preds = %bb.css, %bb.csq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32520
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit3338"

.critedge1247.thread:                             ; preds = %.split5287, %.critedge1247.thread5272, %.critedge1247.thread5257, %bb.bma, %bb.bsn, %.thread4395, %.thread4386, %.thread4536, %bb.brh, %.thread4802, %bb.crm, %bb.crl, %bb.crf, %bb.cre, %bb.cph, %bb.cpg, %bb.cpa, %bb.coz, %bb.cna, %bb.cmz, %bb.cmt, %bb.cms, %.thread4669, %bb.cif, %bb.cie, %bb.chy, %bb.chx, %bb.chp, %bb.chd, %bb.chc, %bb.cgd, %bb.cgc, %bb.cbh, %bb.cbg, %bb.byy, %bb.byx, %bb.bxq, %bb.bxp, %bb.bxj, %bb.bxi, %bb.bvz, %bb.bvy, %bb.bvs, %bb.bvr, %bb.bvm, %bb.bvl, %bb.bvn, %bb.bvb, %.thread4586, %bb.buw, %bb.buv, %bb.bux, %.thread4582, %bb.btw, %bb.btv, %bb.btp, %bb.bto, %bb.btk, %bb.btj, %bb.btl, %bb.bsy, %bb.bru, %bb.brt, %bb.brn, %bb.brm, %bb.bpc, %bb.bpb, %bb.bov, %bb.bou, %bb.bof, %bb.boe, %bb.bny, %bb.bnx, %bb.bnf, %bb.bne, %bb.bmy, %bb.bmx, %bb.bmk, %bb.bmj, %bb.blc, %bb.blb, %bb.bfv, %bb.bfu, %bb.bfo, %bb.bfn, %bb.bff, %bb.bev, %bb.beu, %bb.bbt, %bb.bbs, %bb.bbq, %.noexc2961, %bb.ayw, %bb.bbl, %bb.bbk, %bb.axd, %bb.axc, %bb.aww, %bb.awv, %bb.awi, %bb.awh, %bb.awb, %bb.awa, %bb.ave, %bb.avd, %bb.aux, %bb.auw, %bb.atz, %bb.aty, %bb.ats, %bb.atr, %bb.asz, %bb.asy, %bb.ass, %bb.asr, %bb.aru, %bb.art, %bb.arn, %bb.arm, %bb.cnf, %bb.cng, %.body1358, %bb.clm, %bb.ckb, %bb.chv, %bb.bzf, %bb.bpo, %bb.brj, %bb.brk, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit3032", %bb.bmp, %bb.bfl, %.body1735, %bb.bel
  %.sroa.288.03967 = phi i32 [ %.sroa.288.05280, %.critedge1247.thread5272 ], [ %.sroa.288.8, %bb.bbl ], [ %i.hrt, %bb.cph ], [ %i.hrc, %bb.cpa ], [ %i.hnr, %bb.cna ], [ %i.hoj, %bb.cnf ], [ %i.hoo, %bb.cng ], [ %.sroa.288.42, %.body1358 ], [ %i.hna, %bb.cmt ], [ %i.hft, %bb.cif ], [ %.sroa.288.41, %bb.clm ], [ %.sroa.288.38, %.thread4669 ], [ %.sroa.288.384696, %bb.ckb ], [ %i.hfc, %bb.chy ], [ %i.hdy, %bb.chd ], [ %i.het, %bb.chp ], [ %i.hez, %bb.chv ], [ %i.hbt, %bb.cgd ], [ %i.gpv, %bb.cbh ], [ %i.gku, %bb.byy ], [ %.sroa.288.35, %bb.bzf ], [ %i.ght, %bb.bxq ], [ %i.ghc, %bb.bxj ], [ %i.gen, %bb.bvz ], [ %i.gdw, %bb.bvs ], [ %.sroa.288.344598, %bb.bvm ], [ %i.gce, %.thread4582 ], [ %i.gaf, %bb.btw ], [ %.sroa.288.34, %bb.bvb ], [ %.sroa.288.344589, %.thread4586 ], [ %i.fzo, %bb.btp ], [ %.sroa.288.334551, %bb.btk ], [ %.sroa.288.33, %bb.bsy ], [ %i.fwe, %bb.bru ], [ %.sroa.288.32, %bb.bsn ], [ %i.fvn, %bb.brn ], [ %.sroa.288.34807, %.thread4802 ], [ %.sroa.288.23, %bb.bpo ], [ %.sroa.288.2444754533, %bb.brj ], [ %.sroa.288.2444754533, %bb.brk ], [ %i.fqy, %bb.bov ], [ %i.fpy, %bb.bof ], [ %i.fph, %bb.bny ], [ %i.foc, %bb.bnf ], [ %i.fno, %bb.bmy ], [ %i.fmf, %bb.bmk ], [ %i.fnb, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit3032" ], [ %i.fke, %bb.blc ], [ %.sroa.288.22, %bb.bma ], [ %i.fmv, %bb.bmp ], [ %i.fbv, %bb.bfv ], [ %i.fbe, %bb.bfo ], [ %i.fag, %bb.bev ], [ %i.fay, %bb.bff ], [ %i.fbb, %bb.bfl ], [ %i.ewh, %bb.bbt ], [ %.sroa.288.9, %.body1735 ], [ %.sroa.288.94237, %bb.bel ], [ %.sroa.288.34140, %bb.bbq ], [ %.sroa.288.3, %bb.ayw ], [ %.sroa.288.8, %bb.bbk ], [ %i.emq, %bb.axd ], [ %i.emq, %bb.axc ], [ %i.hwa, %bb.crf ], [ %i.elz, %bb.aww ], [ %i.ele, %bb.awi ], [ %i.ekn, %bb.awb ], [ %i.eja, %bb.ave ], [ %i.eij, %bb.aux ], [ %i.egh, %bb.atz ], [ %.sroa.288.244540, %.thread4536 ], [ %i.efq, %bb.ats ], [ %i.eei, %bb.asz ], [ %i.edr, %bb.ass ], [ %i.ecr, %bb.aru ], [ %.sroa.288.174399, %.thread4395 ], [ %i.eca, %bb.arn ], [ %.sroa.288.174393, %.thread4386 ], [ %i.eca, %bb.arm ], [ %i.ecr, %bb.art ], [ %i.edr, %bb.asr ], [ %i.eei, %bb.asy ], [ %i.efq, %bb.atr ], [ %i.egh, %bb.aty ], [ %i.eij, %bb.auw ], [ %i.eja, %bb.avd ], [ %i.ekn, %bb.awa ], [ %i.ele, %bb.awh ], [ %i.elz, %bb.awv ], [ %.sroa.288.34140, %.noexc2961 ], [ %i.ewh, %bb.bbs ], [ %i.fag, %bb.beu ], [ %i.fbe, %bb.bfn ], [ %i.fbv, %bb.bfu ], [ %i.fke, %bb.blb ], [ %i.fmf, %bb.bmj ], [ %i.fno, %bb.bmx ], [ %i.foc, %bb.bne ], [ %i.fph, %bb.bnx ], [ %i.fpy, %bb.boe ], [ %i.fqy, %bb.bou ], [ %i.frp, %bb.bpb ], [ %i.frp, %bb.bpc ], [ %i.fvn, %bb.brm ], [ %i.fwe, %bb.brt ], [ %.sroa.288.334551, %bb.btl ], [ %.sroa.288.334551, %bb.btj ], [ %i.fzo, %bb.bto ], [ %i.gaf, %bb.btv ], [ %i.gcj, %bb.bux ], [ %i.gcj, %bb.buv ], [ %i.gcj, %bb.buw ], [ %.sroa.288.344598, %bb.bvn ], [ %.sroa.288.344598, %bb.bvl ], [ %i.gdw, %bb.bvr ], [ %i.gen, %bb.bvy ], [ %i.ghc, %bb.bxi ], [ %i.ght, %bb.bxp ], [ %i.gku, %bb.byx ], [ %i.gpv, %bb.cbg ], [ %i.hbt, %bb.cgc ], [ %i.hdy, %bb.chc ], [ %i.hfc, %bb.chx ], [ %i.hft, %bb.cie ], [ %i.hna, %bb.cms ], [ %i.hnr, %bb.cmz ], [ %i.hrc, %bb.coz ], [ %i.hrt, %bb.cpg ], [ %i.hwa, %bb.cre ], [ %i.hwr, %bb.crl ], [ %i.hwr, %bb.crm ], [ %.sroa.288.24, %bb.brh ], [ %.sroa.288.05265, %.critedge1247.thread5257 ], [ %.sroa.288.95288, %.split5287 ]
  %.sroa.0922.03966 = phi ptr [ %.sroa.0922.05281, %.critedge1247.thread5272 ], [ %.sroa.0922.8, %bb.bbl ], [ %i.hrs, %bb.cph ], [ %i.hrb, %bb.cpa ], [ %i.hnq, %bb.cna ], [ %i.hoi, %bb.cnf ], [ %i.hon, %bb.cng ], [ %.sroa.0922.42, %.body1358 ], [ %i.hmz, %bb.cmt ], [ %i.hfs, %bb.cif ], [ %.sroa.0922.41, %bb.clm ], [ %.sroa.0922.38, %.thread4669 ], [ %.sroa.0922.384697, %bb.ckb ], [ %i.hfb, %bb.chy ], [ %i.hdx, %bb.chd ], [ %i.hes, %bb.chp ], [ %i.hey, %bb.chv ], [ %i.hbs, %bb.cgd ], [ %i.gpu, %bb.cbh ], [ %i.gkt, %bb.byy ], [ %.sroa.0922.35, %bb.bzf ], [ %i.ghs, %bb.bxq ], [ %i.ghb, %bb.bxj ], [ %i.gem, %bb.bvz ], [ %i.gdv, %bb.bvs ], [ %.sroa.0922.344599, %bb.bvm ], [ %i.gcd, %.thread4582 ], [ %i.gae, %bb.btw ], [ %.sroa.0922.34, %bb.bvb ], [ %.sroa.0922.344590, %.thread4586 ], [ %i.fzn, %bb.btp ], [ %.sroa.0922.334552, %bb.btk ], [ %.sroa.0922.33, %bb.bsy ], [ %i.fwd, %bb.bru ], [ %.sroa.0922.32, %bb.bsn ], [ %i.fvm, %bb.brn ], [ %.sroa.0922.34808, %.thread4802 ], [ %.sroa.0922.23, %bb.bpo ], [ %.sroa.0922.2444774531, %bb.brj ], [ %.sroa.0922.2444774531, %bb.brk ], [ %i.fqx, %bb.bov ], [ %i.fpx, %bb.bof ], [ %i.fpg, %bb.bny ], [ %i.fob, %bb.bnf ], [ %i.fnn, %bb.bmy ], [ %i.fme, %bb.bmk ], [ %i.fna, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit3032" ], [ %i.fkd, %bb.blc ], [ %.sroa.0922.22, %bb.bma ], [ %i.fmu, %bb.bmp ], [ %i.fbu, %bb.bfv ], [ %i.fbd, %bb.bfo ], [ %i.faf, %bb.bev ], [ %i.fax, %bb.bff ], [ %i.fba, %bb.bfl ], [ %i.ewg, %bb.bbt ], [ %.sroa.0922.9, %.body1735 ], [ %.sroa.0922.94238, %bb.bel ], [ %.sroa.0922.34142, %bb.bbq ], [ %.sroa.0922.3, %bb.ayw ], [ %.sroa.0922.8, %bb.bbk ], [ %i.emp, %bb.axd ], [ %i.emp, %bb.axc ], [ %i.hvz, %bb.crf ], [ %i.ely, %bb.aww ], [ %i.eld, %bb.awi ], [ %i.ekm, %bb.awb ], [ %i.eiz, %bb.ave ], [ %i.eii, %bb.aux ], [ %i.egg, %bb.atz ], [ %.sroa.0922.244541, %.thread4536 ], [ %i.efp, %bb.ats ], [ %i.eeh, %bb.asz ], [ %i.edq, %bb.ass ], [ %i.ecq, %bb.aru ], [ %.sroa.0922.174400, %.thread4395 ], [ %i.ebz, %bb.arn ], [ %.sroa.0922.174394, %.thread4386 ], [ %i.ebz, %bb.arm ], [ %i.ecq, %bb.art ], [ %i.edq, %bb.asr ], [ %i.eeh, %bb.asy ], [ %i.efp, %bb.atr ], [ %i.egg, %bb.aty ], [ %i.eii, %bb.auw ], [ %i.eiz, %bb.avd ], [ %i.ekm, %bb.awa ], [ %i.eld, %bb.awh ], [ %i.ely, %bb.awv ], [ %.sroa.0922.34142, %.noexc2961 ], [ %i.ewg, %bb.bbs ], [ %i.faf, %bb.beu ], [ %i.fbd, %bb.bfn ], [ %i.fbu, %bb.bfu ], [ %i.fkd, %bb.blb ], [ %i.fme, %bb.bmj ], [ %i.fnn, %bb.bmx ], [ %i.fob, %bb.bne ], [ %i.fpg, %bb.bnx ], [ %i.fpx, %bb.boe ], [ %i.fqx, %bb.bou ], [ %i.fro, %bb.bpb ], [ %i.fro, %bb.bpc ], [ %i.fvm, %bb.brm ], [ %i.fwd, %bb.brt ], [ %.sroa.0922.334552, %bb.btl ], [ %.sroa.0922.334552, %bb.btj ], [ %i.fzn, %bb.bto ], [ %i.gae, %bb.btv ], [ %i.gci, %bb.bux ], [ %i.gci, %bb.buv ], [ %i.gci, %bb.buw ], [ %.sroa.0922.344599, %bb.bvn ], [ %.sroa.0922.344599, %bb.bvl ], [ %i.gdv, %bb.bvr ], [ %i.gem, %bb.bvy ], [ %i.ghb, %bb.bxi ], [ %i.ghs, %bb.bxp ], [ %i.gkt, %bb.byx ], [ %i.gpu, %bb.cbg ], [ %i.hbs, %bb.cgc ], [ %i.hdx, %bb.chc ], [ %i.hfb, %bb.chx ], [ %i.hfs, %bb.cie ], [ %i.hmz, %bb.cms ], [ %i.hnq, %bb.cmz ], [ %i.hrb, %bb.coz ], [ %i.hrs, %bb.cpg ], [ %i.hvz, %bb.cre ], [ %i.hwq, %bb.crl ], [ %i.hwq, %bb.crm ], [ %.sroa.0922.24, %bb.brh ], [ %.sroa.0922.05266, %.critedge1247.thread5257 ], [ %.sroa.0922.95289, %.split5287 ]
  %.sroa.0621.03965 = phi i8 [ %.sroa.0621.1.ph, %.critedge1247.thread5272 ], [ 1, %bb.bbl ], [ 1, %bb.cph ], [ 1, %bb.cpa ], [ 1, %bb.cna ], [ 1, %bb.cnf ], [ 1, %bb.cng ], [ %.sroa.0621.27, %.body1358 ], [ 1, %bb.cmt ], [ 1, %bb.cif ], [ %.sroa.0621.24, %bb.clm ], [ 1, %.thread4669 ], [ %.sroa.0621.21.ph, %bb.ckb ], [ 1, %bb.chy ], [ 1, %bb.chd ], [ 1, %bb.chp ], [ 1, %bb.chv ], [ 1, %bb.cgd ], [ 1, %bb.cbh ], [ 1, %bb.byy ], [ 0, %bb.bzf ], [ 1, %bb.bxq ], [ 1, %bb.bxj ], [ 1, %bb.bvz ], [ 1, %bb.bvs ], [ 1, %bb.bvm ], [ 1, %.thread4582 ], [ 1, %bb.btw ], [ 1, %bb.bvb ], [ 1, %.thread4586 ], [ 1, %bb.btp ], [ 1, %bb.btk ], [ 1, %bb.bsy ], [ 1, %bb.bru ], [ 1, %bb.bsn ], [ 1, %bb.brn ], [ 1, %.thread4802 ], [ 1, %bb.bpo ], [ 1, %bb.brj ], [ 1, %bb.brk ], [ 1, %bb.bov ], [ 1, %bb.bof ], [ 1, %bb.bny ], [ 1, %bb.bnf ], [ 1, %bb.bmy ], [ 1, %bb.bmk ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit3032" ], [ 1, %bb.blc ], [ 1, %bb.bma ], [ 1, %bb.bmp ], [ 1, %bb.bfv ], [ 1, %bb.bfo ], [ 1, %bb.bev ], [ 1, %bb.bff ], [ 1, %bb.bfl ], [ 1, %bb.bbt ], [ 1, %.body1735 ], [ %.sroa.0621.44236, %bb.bel ], [ 1, %bb.bbq ], [ 1, %bb.ayw ], [ 1, %bb.bbk ], [ 1, %bb.axd ], [ 1, %bb.axc ], [ 1, %bb.crf ], [ 1, %bb.aww ], [ 1, %bb.awi ], [ 1, %bb.awb ], [ 1, %bb.ave ], [ 1, %bb.aux ], [ 1, %bb.atz ], [ 1, %.thread4536 ], [ 1, %bb.ats ], [ 1, %bb.asz ], [ 1, %bb.ass ], [ 1, %bb.aru ], [ 0, %.thread4395 ], [ 1, %bb.arn ], [ 0, %.thread4386 ], [ 1, %bb.arm ], [ 1, %bb.art ], [ 1, %bb.asr ], [ 1, %bb.asy ], [ 1, %bb.atr ], [ 1, %bb.aty ], [ 1, %bb.auw ], [ 1, %bb.avd ], [ 1, %bb.awa ], [ 1, %bb.awh ], [ 1, %bb.awv ], [ 1, %.noexc2961 ], [ 1, %bb.bbs ], [ 1, %bb.beu ], [ 1, %bb.bfn ], [ 1, %bb.bfu ], [ 1, %bb.blb ], [ 1, %bb.bmj ], [ 1, %bb.bmx ], [ 1, %bb.bne ], [ 1, %bb.bnx ], [ 1, %bb.boe ], [ 1, %bb.bou ], [ 1, %bb.bpb ], [ 1, %bb.bpc ], [ 1, %bb.brm ], [ 1, %bb.brt ], [ 1, %bb.btl ], [ 1, %bb.btj ], [ 1, %bb.bto ], [ 1, %bb.btv ], [ 1, %bb.bux ], [ 1, %bb.buv ], [ 1, %bb.buw ], [ 1, %bb.bvn ], [ 1, %bb.bvl ], [ 1, %bb.bvr ], [ 1, %bb.bvy ], [ 1, %bb.bxi ], [ 1, %bb.bxp ], [ 1, %bb.byx ], [ 1, %bb.cbg ], [ 1, %bb.cgc ], [ 1, %bb.chc ], [ 1, %bb.chx ], [ 1, %bb.cie ], [ 1, %bb.cms ], [ 1, %bb.cmz ], [ 1, %bb.coz ], [ 1, %bb.cpg ], [ 1, %bb.cre ], [ 1, %bb.crl ], [ 1, %bb.crm ], [ 1, %bb.brh ], [ %.sroa.0621.0.ph, %.critedge1247.thread5257 ], [ 1, %.split5287 ]
  %.sroa.0624.03964 = phi i8 [ 1, %.critedge1247.thread5272 ], [ 1, %bb.bbl ], [ 1, %bb.cph ], [ 1, %bb.cpa ], [ 1, %bb.cna ], [ 1, %bb.cnf ], [ 1, %bb.cng ], [ 1, %.body1358 ], [ 1, %bb.cmt ], [ 1, %bb.cif ], [ 1, %bb.clm ], [ 1, %.thread4669 ], [ 1, %bb.ckb ], [ 1, %bb.chy ], [ 1, %bb.chd ], [ 1, %bb.chp ], [ 1, %bb.chv ], [ 1, %bb.cgd ], [ 1, %bb.cbh ], [ 1, %bb.byy ], [ 1, %bb.bzf ], [ 1, %bb.bxq ], [ 1, %bb.bxj ], [ 1, %bb.bvz ], [ 1, %bb.bvs ], [ 1, %bb.bvm ], [ 1, %.thread4582 ], [ 1, %bb.btw ], [ 1, %bb.bvb ], [ 1, %.thread4586 ], [ 1, %bb.btp ], [ 1, %bb.btk ], [ 1, %bb.bsy ], [ 1, %bb.bru ], [ 1, %bb.bsn ], [ 1, %bb.brn ], [ %.sroa.0624.54814, %.thread4802 ], [ 1, %bb.bpo ], [ 1, %bb.brj ], [ 1, %bb.brk ], [ 1, %bb.bov ], [ 1, %bb.bof ], [ 1, %bb.bny ], [ 1, %bb.bnf ], [ 1, %bb.bmy ], [ 1, %bb.bmk ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit3032" ], [ 1, %bb.blc ], [ 1, %bb.bma ], [ 1, %bb.bmp ], [ 1, %bb.bfv ], [ 1, %bb.bfo ], [ 1, %bb.bev ], [ 1, %bb.bff ], [ 1, %bb.bfl ], [ 1, %bb.bbt ], [ 1, %.body1735 ], [ 1, %bb.bel ], [ 1, %bb.bbq ], [ 1, %bb.ayw ], [ 1, %bb.bbk ], [ 1, %bb.axd ], [ 1, %bb.axc ], [ 1, %bb.crf ], [ 1, %bb.aww ], [ 1, %bb.awi ], [ 1, %bb.awb ], [ 1, %bb.ave ], [ 1, %bb.aux ], [ 1, %bb.atz ], [ 1, %.thread4536 ], [ 1, %bb.ats ], [ 1, %bb.asz ], [ 1, %bb.ass ], [ 1, %bb.aru ], [ 1, %.thread4395 ], [ 1, %bb.arn ], [ 1, %.thread4386 ], [ 1, %bb.arm ], [ 1, %bb.art ], [ 1, %bb.asr ], [ 1, %bb.asy ], [ 1, %bb.atr ], [ 1, %bb.aty ], [ 1, %bb.auw ], [ 1, %bb.avd ], [ 1, %bb.awa ], [ 1, %bb.awh ], [ 1, %bb.awv ], [ 1, %.noexc2961 ], [ 1, %bb.bbs ], [ 1, %bb.beu ], [ 1, %bb.bfn ], [ 1, %bb.bfu ], [ 1, %bb.blb ], [ 1, %bb.bmj ], [ 1, %bb.bmx ], [ 1, %bb.bne ], [ 1, %bb.bnx ], [ 1, %bb.boe ], [ 1, %bb.bou ], [ 1, %bb.bpb ], [ 1, %bb.bpc ], [ 1, %bb.brm ], [ 1, %bb.brt ], [ 1, %bb.btl ], [ 1, %bb.btj ], [ 1, %bb.bto ], [ 1, %bb.btv ], [ 1, %bb.bux ], [ 1, %bb.buv ], [ 1, %bb.buw ], [ 1, %bb.bvn ], [ 1, %bb.bvl ], [ 1, %bb.bvr ], [ 1, %bb.bvy ], [ 1, %bb.bxi ], [ 1, %bb.bxp ], [ 1, %bb.byx ], [ 1, %bb.cbg ], [ 1, %bb.cgc ], [ 1, %bb.chc ], [ 1, %bb.chx ], [ 1, %bb.cie ], [ 1, %bb.cms ], [ 1, %bb.cmz ], [ 1, %bb.coz ], [ 1, %bb.cpg ], [ 1, %bb.cre ], [ 1, %bb.crl ], [ 1, %bb.crm ], [ 1, %bb.brh ], [ 1, %.critedge1247.thread5257 ], [ 1, %.split5287 ]
  %.sroa.0627.03963 = phi i8 [ %.sroa.0627.1.ph, %.critedge1247.thread5272 ], [ 1, %bb.bbl ], [ 1, %bb.cph ], [ 1, %bb.cpa ], [ 1, %bb.cna ], [ 1, %bb.cnf ], [ 1, %bb.cng ], [ %.sroa.0627.23, %.body1358 ], [ 1, %bb.cmt ], [ 1, %bb.cif ], [ %.sroa.0627.20, %bb.clm ], [ 1, %.thread4669 ], [ %.sroa.0627.17.ph, %bb.ckb ], [ 1, %bb.chy ], [ 1, %bb.chd ], [ 1, %bb.chp ], [ 1, %bb.chv ], [ 1, %bb.cgd ], [ 1, %bb.cbh ], [ 1, %bb.byy ], [ 1, %bb.bzf ], [ 1, %bb.bxq ], [ 1, %bb.bxj ], [ 1, %bb.bvz ], [ 1, %bb.bvs ], [ 1, %bb.bvm ], [ 1, %.thread4582 ], [ 1, %bb.btw ], [ 1, %bb.bvb ], [ 1, %.thread4586 ], [ 1, %bb.btp ], [ 1, %bb.btk ], [ 1, %bb.bsy ], [ 1, %bb.bru ], [ 1, %bb.bsn ], [ 1, %bb.brn ], [ %.sroa.0627.54813, %.thread4802 ], [ 1, %bb.bpo ], [ 1, %bb.brj ], [ 1, %bb.brk ], [ 1, %bb.bov ], [ 1, %bb.bof ], [ 1, %bb.bny ], [ 1, %bb.bnf ], [ 1, %bb.bmy ], [ 1, %bb.bmk ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit3032" ], [ 1, %bb.blc ], [ 1, %bb.bma ], [ 1, %bb.bmp ], [ 1, %bb.bfv ], [ 1, %bb.bfo ], [ 1, %bb.bev ], [ 1, %bb.bff ], [ 1, %bb.bfl ], [ 1, %bb.bbt ], [ 0, %.body1735 ], [ 0, %bb.bel ], [ 1, %bb.bbq ], [ 1, %bb.ayw ], [ 1, %bb.bbk ], [ 1, %bb.axd ], [ 1, %bb.axc ], [ 1, %bb.crf ], [ 1, %bb.aww ], [ 1, %bb.awi ], [ 1, %bb.awb ], [ 1, %bb.ave ], [ 1, %bb.aux ], [ 1, %bb.atz ], [ 1, %.thread4536 ], [ 1, %bb.ats ], [ 1, %bb.asz ], [ 1, %bb.ass ], [ 1, %bb.aru ], [ 1, %.thread4395 ], [ 1, %bb.arn ], [ 1, %.thread4386 ], [ 1, %bb.arm ], [ 1, %bb.art ], [ 1, %bb.asr ], [ 1, %bb.asy ], [ 1, %bb.atr ], [ 1, %bb.aty ], [ 1, %bb.auw ], [ 1, %bb.avd ], [ 1, %bb.awa ], [ 1, %bb.awh ], [ 1, %bb.awv ], [ 1, %.noexc2961 ], [ 1, %bb.bbs ], [ 1, %bb.beu ], [ 1, %bb.bfn ], [ 1, %bb.bfu ], [ 1, %bb.blb ], [ 1, %bb.bmj ], [ 1, %bb.bmx ], [ 1, %bb.bne ], [ 1, %bb.bnx ], [ 1, %bb.boe ], [ 1, %bb.bou ], [ 1, %bb.bpb ], [ 1, %bb.bpc ], [ 1, %bb.brm ], [ 1, %bb.brt ], [ 1, %bb.btl ], [ 1, %bb.btj ], [ 1, %bb.bto ], [ 1, %bb.btv ], [ 1, %bb.bux ], [ 1, %bb.buv ], [ 1, %bb.buw ], [ 1, %bb.bvn ], [ 1, %bb.bvl ], [ 1, %bb.bvr ], [ 1, %bb.bvy ], [ 1, %bb.bxi ], [ 1, %bb.bxp ], [ 1, %bb.byx ], [ 1, %bb.cbg ], [ 1, %bb.cgc ], [ 1, %bb.chc ], [ 1, %bb.chx ], [ 1, %bb.cie ], [ 1, %bb.cms ], [ 1, %bb.cmz ], [ 1, %bb.coz ], [ 1, %bb.cpg ], [ 1, %bb.cre ], [ 1, %bb.crl ], [ 1, %bb.crm ], [ 1, %bb.brh ], [ %.sroa.0627.0.ph5255, %.critedge1247.thread5257 ], [ 0, %.split5287 ]
  %.sroa.0674.03961 = phi i8 [ %.sroa.0674.1.ph, %.critedge1247.thread5272 ], [ 1, %bb.bbl ], [ 1, %bb.cph ], [ 1, %bb.cpa ], [ 1, %bb.cna ], [ 1, %bb.cnf ], [ 1, %bb.cng ], [ 1, %.body1358 ], [ 1, %bb.cmt ], [ 1, %bb.cif ], [ 1, %bb.clm ], [ 1, %.thread4669 ], [ 1, %bb.ckb ], [ 1, %bb.chy ], [ 1, %bb.chd ], [ 1, %bb.chp ], [ 1, %bb.chv ], [ 1, %bb.cgd ], [ 1, %bb.cbh ], [ 1, %bb.byy ], [ 1, %bb.bzf ], [ 1, %bb.bxq ], [ 1, %bb.bxj ], [ 1, %bb.bvz ], [ 1, %bb.bvs ], [ 1, %bb.bvm ], [ 1, %.thread4582 ], [ 1, %bb.btw ], [ 1, %bb.bvb ], [ 1, %.thread4586 ], [ 1, %bb.btp ], [ 1, %bb.btk ], [ 1, %bb.bsy ], [ 1, %bb.bru ], [ 1, %bb.bsn ], [ 1, %bb.brn ], [ 1, %.thread4802 ], [ 1, %bb.bpo ], [ 1, %bb.brj ], [ 1, %bb.brk ], [ 1, %bb.bov ], [ 1, %bb.bof ], [ 1, %bb.bny ], [ 1, %bb.bnf ], [ 1, %bb.bmy ], [ 1, %bb.bmk ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hf012e10bab5d9935E.exit3032" ], [ 1, %bb.blc ], [ 1, %bb.bma ], [ 1, %bb.bmp ], [ 1, %bb.bfv ], [ 1, %bb.bfo ], [ 1, %bb.bev ], [ 1, %bb.bff ], [ 1, %bb.bfl ], [ 1, %bb.bbt ], [ 1, %.body1735 ], [ 1, %bb.bel ], [ 1, %bb.bbq ], [ 1, %bb.ayw ], [ 1, %bb.bbk ], [ 1, %bb.axd ], [ 1, %bb.axc ], [ 1, %bb.crf ], [ 1, %bb.aww ], [ 1, %bb.awi ], [ 1, %bb.awb ], [ 1, %bb.ave ], [ 1, %bb.aux ], [ 1, %bb.atz ], [ 1, %.thread4536 ], [ 1, %bb.ats ], [ 1, %bb.asz ], [ 1, %bb.ass ], [ 1, %bb.aru ], [ 1, %.thread4395 ], [ 1, %bb.arn ], [ 1, %.thread4386 ], [ 1, %bb.arm ], [ 1, %bb.art ], [ 1, %bb.asr ], [ 1, %bb.asy ], [ 1, %bb.atr ], [ 1, %bb.aty ], [ 1, %bb.auw ], [ 1, %bb.avd ], [ 1, %bb.awa ], [ 1, %bb.awh ], [ 1, %bb.awv ], [ 1, %.noexc2961 ], [ 1, %bb.bbs ], [ 1, %bb.beu ], [ 1, %bb.bfn ], [ 1, %bb.bfu ], [ 1, %bb.blb ], [ 1, %bb.bmj ], [ 1, %bb.bmx ], [ 1, %bb.bne ], [ 1, %bb.bnx ], [ 1, %bb.boe ], [ 1, %bb.bou ], [ 1, %bb.bpb ], [ 1, %bb.bpc ], [ 1, %bb.brm ], [ 1, %bb.brt ], [ 1, %bb.btl ], [ 1, %bb.btj ], [ 1, %bb.bto ], [ 1, %bb.btv ], [ 1, %bb.bux ], [ 1, %bb.buv ], [ 1, %bb.buw ], [ 1, %bb.bvn ], [ 1, %bb.bvl ], [ 1, %bb.bvr ], [ 1, %bb.bvy ], [ 1, %bb.bxi ], [ 1, %bb.bxp ], [ 1, %bb.byx ], [ 1, %bb.cbg ], [ 1, %bb.cgc ], [ 1, %bb.chc ], [ 1, %bb.chx ], [ 1, %bb.cie ], [ 1, %bb.cms ], [ 1, %bb.cmz ], [ 1, %bb.coz ], [ 1, %bb.cpg ], [ 1, %bb.cre ], [ 1, %bb.crl ], [ 1, %bb.crm ], [ 1, %bb.brh ], [ %.sroa.0674.0.ph5254, %.critedge1247.thread5257 ], [ 1, %.split5287 ]
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE"(ptr noalias noundef align 8 dereferenceable(16) %i.abx) #77
          to label %bb.cqd unwind label %bb.ark

bb.cst:                                           ; preds = %bb.cqd
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aby) #77
          to label %.thread5320 unwind label %bb.ark

bb.csu:                                           ; preds = %.thread5320
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE"(ptr noalias noundef align 8 dereferenceable(16) %i.abz) #77
          to label %bb.cqu unwind label %bb.ark

bb.csv:                                           ; preds = %bb.cqu
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aca) #77
          to label %bb.crc unwind label %bb.ark

bb.csw:                                           ; preds = %.split, %.noexc3339, %.thread4774, %bb.crc
  %.sroa.288.464782 = phi i32 [ %.sroa.288.464783, %.noexc3339 ], [ %i.hvx, %.split ], [ %.sroa.288.464783, %.thread4774 ], [ %.sroa.288.45, %bb.crc ]
  %.sroa.0922.464780 = phi ptr [ %.sroa.0922.464781, %.noexc3339 ], [ %i.hvw, %.split ], [ %.sroa.0922.464781, %.thread4774 ], [ %.sroa.0922.45, %bb.crc ]
  %i.hzr = insertvalue { ptr, i32 } poison, ptr %.sroa.0922.464780, 0
  %i.hzs = insertvalue { ptr, i32 } %i.hzr, i32 %.sroa.288.464782, 1
  resume { ptr, i32 } %i.hzs

.thread4774:                                      ; preds = %.critedge1245, %.thread4122, %.critedge1245.thread, %bb.ayd, %bb.axx, %bb.ayj, %.split, %bb.crc
  %.sroa.288.464783 = phi i32 [ %i.hvx, %.split ], [ %.sroa.288.45, %bb.crc ], [ %i.epa, %bb.ayj ], [ %.sroa.288.1, %.critedge1245 ], [ %.sroa.288.14105, %bb.ayd ], [ %i.eos, %.thread4122 ], [ %i.eok, %bb.axx ], [ %.sroa.288.14105, %.critedge1245.thread ] ; 2 uses
  %.sroa.0922.464781 = phi ptr [ %i.hvw, %.split ], [ %.sroa.0922.45, %bb.crc ], [ %i.epb, %bb.ayj ], [ %.sroa.0922.1, %.critedge1245 ], [ %.sroa.0922.14106, %bb.ayd ], [ %i.eor, %.thread4122 ], [ %i.eol, %bb.axx ], [ %.sroa.0922.14106, %.critedge1245.thread ] ; 2 uses
  %.sroa.0674.104779 = phi i8 [ %.sroa.0674.11, %.split ], [ %.sroa.0674.8, %bb.crc ], [ 1, %bb.ayj ], [ 1, %.critedge1245 ], [ 1, %bb.ayd ], [ 1, %.thread4122 ], [ 1, %bb.axx ], [ 1, %.critedge1245.thread ]
  %i.hzt = load i64, ptr %i.acb, align 8, !range !133, !noundef !44 ; 2 uses
  %i.hzu = icmp ne i64 %i.hzt, -9223372036854775789
  call void @llvm.assume(i1 %i.hzu)
  %i.hzv = icmp slt i64 %i.hzt, 0
  %cond = icmp eq i8 %.sroa.0674.104779, 0
  %or.cond1328 = or i1 %cond, %i.hzv
  br i1 %or.cond1328, label %bb.csw, label %bb.csx

bb.csx:                                           ; preds = %.thread4774
  %i.hzw = getelementptr inbounds nuw i8, ptr %i.acb, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32522)
  call void @llvm.experimental.noalias.scope.decl(metadata !32523)
  %i.hzx = load ptr, ptr %i.hzw, align 8, !alias.scope !32524, !noundef !44 ; 3 uses
  %i.hzy = icmp eq ptr %i.hzx, null
  br i1 %i.hzy, label %.noexc3339, label %bb.csy

bb.csy:                                           ; preds = %bb.csx
  %i.hzz = load i64, ptr %i.hzx, align 8, !noalias !32525, !noundef !44
  %i.iaa = add i64 %i.hzz, -1                     ; 2 uses
  store i64 %i.iaa, ptr %i.hzx, align 8, !noalias !32525
  %i.iab = icmp eq i64 %i.iaa, 0
  br i1 %i.iab, label %bb.csz, label %.noexc3339

bb.csz:                                           ; preds = %bb.csy
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hzw)
          to label %.noexc3339 unwind label %bb.ark

.noexc3339:                                       ; preds = %bb.csz, %bb.csx, %bb.csy
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hf11d9a9152135beeE"(ptr noalias noundef align 8 dereferenceable(24) %i.acb) #77
          to label %bb.csw unwind label %bb.ark
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h20df22bcfd0d3bd4E"(i32 %.0.val, ptr noalias noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 10 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !32552
  %i.f = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, 9) 1) #66, !noalias !32552 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

.body:                                            ; preds = %bb.g, %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"
  %.pn = phi { ptr, i32 } [ %i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit" ], [ %i.h, %bb.c ], [ %i.o, %bb.g ]
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb7a4e037a5b65337E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #77
          to label %common.resume unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i32 1852797802, ptr %i.f, align 1, !noalias !32553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN63_$LT$serde_json..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hced9439fef8da4a9E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32554
  store ptr @214, ptr %i.a, align 8, !noalias !32555
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !32555
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.57.0..sroa_idx, align 8, !noalias !32555
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.68.0..sroa_idx, align 8, !noalias !32555
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !32555
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit": ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !32556
  br label %.body

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 4, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 4, ptr %.sroa.6.0..sroa_idx4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.0.val, ptr %i.l, align 8
  store i64 32, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !32557
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !32557 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.i, !prof !47

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc8 unwind label %bb.g

.noexc8:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #77
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !32558)
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !32558, !nonnull !44, !noundef !44 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32559)
  call void @llvm.experimental.noalias.scope.decl(metadata !32560)
  %i.q = load i64, ptr %.val.i, align 8, !range !135, !alias.scope !32561, !noalias !32558, !noundef !44
  switch i64 %i.q, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb7a4e037a5b65337E.exit" [
    i64 0, label %bb.j
    i64 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !32561, !noalias !32558, !noundef !44 ; 2 uses
  %i.s = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.s, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb7a4e037a5b65337E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !32561, !noalias !32558, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #66, !noalias !32562
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb7a4e037a5b65337E.exit"

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h0c80501cefa94e37E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.u)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb7a4e037a5b65337E.exit" unwind label %bb.l, !noalias !32558

common.resume:                                    ; preds = %.body, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.l ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #66, !noalias !32558
  br label %common.resume

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb7a4e037a5b65337E.exit": ; preds = %bb.i, %bb.j, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.k
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #66, !noalias !32558
  ret ptr %i.m

bb.m:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h3d7d0a8b8f08d37dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [392 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32587
  store i64 0, ptr %i.d, align 8, !noalias !32587
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !32587
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !32587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32587
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !32587
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !32587
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !32587
  store ptr %i.d, ptr %i.c, align 8, !noalias !32587
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @1248, ptr %i.h, align 8, !noalias !32587
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !32588

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32589)
  call void @llvm.experimental.noalias.scope.decl(metadata !32590)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !74, !alias.scope !32591, !noalias !32587, !noundef !44 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !32591, !noalias !32587, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !32592
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit", !prof !49

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1249, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1329, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1251) #75
          to label %.noexc.i unwind label %bb.b, !noalias !32588

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.o, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !32593 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !32593 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !32593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32587
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !32594
  %i.l = call noundef dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, 9) 1) #66, !noalias !32594 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7", %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7" ], [ %i.o, %bb.i ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.n, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !32595
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.l, ptr noundef nonnull align 1 dereferenceable(48) @483, i64 48, i1 false), !noalias !32596
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !44, !align !66, !noundef !44
  %i.r = load i32, ptr %i.q, align 4, !noundef !44
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !44, !align !50, !noundef !44
  %.val = load ptr, ptr %i.t, align 8, !nonnull !44, !noundef !44 ; 4 uses
  %i.u = ptrtoint ptr %.val to i64
  %i.v = and i64 %i.u, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.v, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !54

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc3 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7"

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = load i64, ptr %.val, align 8, !noundef !44 ; 3 uses
  %i.x = and i64 %i.w, 72057594037927935          ; 3 uses
  %i.y = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  %i.aa = and i64 %i.w, 1080863910568919040
  %i.ab = icmp ult i64 %i.w, 864691128455135232
  call void @llvm.assume(i1 %i.ab)
  %i.ac = or i64 %i.z, %i.aa
  store i64 %i.ac, ptr %.val, align 8
  %i.ad = icmp eq i64 %i.x, 72057594037927935
  br i1 %i.ad, label %bb.m, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !49

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @2307, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ah, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc4 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7"

.noexc4:                                          ; preds = %bb.m
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7": ; preds = %bb.m, %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !32597
  br label %bb.g

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.l, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !44, !align !66, !noundef !44
  %i.al = load i32, ptr %i.ak, align 4, !noundef !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.014.0.copyload, ptr %i.am, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.515.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 48, ptr %i.an, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.l, ptr %.sroa.518.0..sroa_idx19, align 8
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 48, ptr %.sroa.621.0..sroa_idx22, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.r, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.val, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.al, ptr %i.ar, align 4
  store i64 23, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !32598
  %i.as = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !32598 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit", !prof !47

bb.n:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc8 unwind label %bb.o

.noexc8:                                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #77
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.as, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.aw, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h42e62c166ac151b2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !44, !align !50, !noundef !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !44, !align !50, !noundef !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5b98a148af48c05dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5b98a148af48c05dE", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32608
  store ptr @485, ptr %i.a, align 8, !noalias !32609
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !32609
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !32609
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !32609
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @375, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !32609
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !32609
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !32610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !44, !align !66, !noundef !44
  %i.n = load i32, ptr %i.m, align 4, !noundef !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !32611
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !32611 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #77
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h4bda56446fc964e8E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [392 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32636
  store i64 0, ptr %i.d, align 8, !noalias !32636
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !32636
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !32636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32636
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !32636
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !32636
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !32636
  store ptr %i.d, ptr %i.c, align 8, !noalias !32636
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @1248, ptr %i.h, align 8, !noalias !32636
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !32637

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32638)
  call void @llvm.experimental.noalias.scope.decl(metadata !32639)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !74, !alias.scope !32640, !noalias !32636, !noundef !44 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !32640, !noalias !32636, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !32641
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit", !prof !49

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1249, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1329, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1251) #75
          to label %.noexc.i unwind label %bb.b, !noalias !32637

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7", %bb.h, %bb.q, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7" ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !32642 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !32642 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !32642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32636
  %i.l = load ptr, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, align 8, !nonnull !44, !align !57, !noundef !44
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, i64 8), align 8, !noundef !44 ; 8 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit"
  %i.o = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !32643
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 1) #66, !noalias !32643 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit"
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.f ], [ 0, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7": ; preds = %bb.o, %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.am, %bb.n ], [ %i.am, %bb.o ] ; 2 uses
  %i.r = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !32644
  br label %common.resume

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7"

bb.j:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.m, i1 false), !noalias !32645
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !44, !align !66, !noundef !44
  %i.v = load i32, ptr %i.u, align 4, !noundef !44
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !44, !align !50, !noundef !44
  %.val = load ptr, ptr %i.x, align 8, !nonnull !44, !noundef !44 ; 4 uses
  %i.y = ptrtoint ptr %.val to i64
  %i.z = and i64 %i.y, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.z, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !54

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc3 unwind label %bb.n
end_hunk_5
begin_hunk_6_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h4bda56446fc964e8E":bb.a
.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %.val, align 8, !noundef !44 ; 3 uses
  %i.ab = and i64 %i.aa, 72057594037927935        ; 3 uses
  %i.ac = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  %i.ae = and i64 %i.aa, 1080863910568919040
  %i.af = icmp ult i64 %i.aa, 864691128455135232
  call void @llvm.assume(i1 %i.af)
  %i.ag = or i64 %i.ad, %i.ae
  store i64 %i.ag, ptr %.val, align 8
  %i.ah = icmp eq i64 %i.ab, 72057594037927935
  br i1 %i.ah, label %bb.m, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !49

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @2307, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.al, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc4 unwind label %bb.n

.noexc4:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7", label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !32646
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7"

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.l, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !44, !align !66, !noundef !44
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.014.0.copyload, ptr %i.aq, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.515.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.m, ptr %i.ar, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.sroa.10.0.i.i, ptr %.sroa.518.0..sroa_idx19, align 8
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.m, ptr %.sroa.621.0..sroa_idx22, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.v, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.val, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.ap, ptr %i.av, align 4
  store i64 23, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !32647
  %i.aw = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !32647 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.p, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit", !prof !47

bb.p:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #77
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.aw, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ba, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h4c06f7d7af5245dfE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = load i8, ptr %.0.val, align 1, !range !45, !noundef !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = load i8, ptr %.8.val, align 1, !range !45, !noundef !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr null, ptr %i.g, align 8
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  store i8 %i.f, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32657
  store i64 0, ptr %i.c, align 8, !noalias !32657
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !32657
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !32657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32657
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.j, align 8, !noalias !32657
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !32657
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !32657
  store ptr %i.c, ptr %i.b, align 8, !noalias !32657
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1248, ptr %i.k, align 8, !noalias !32657
  %i.l = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !32658

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !32659)
  call void @llvm.experimental.noalias.scope.decl(metadata !32660)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !74, !alias.scope !32661, !noalias !32657, !noundef !44 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !32661, !noalias !32657, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !32662
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.e, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfa474f63e17f41dfE.exit.i", !prof !49

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1249, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1329, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1251) #75
          to label %.noexc.i unwind label %bb.b, !noalias !32658

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.b, %bb.c
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17h30267df7c680e51fE"(ptr noalias noundef align 8 dereferenceable(40) %i.d) #77
          to label %common.resume unwind label %bb.g

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfa474f63e17f41dfE.exit.i": ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !32663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32657
  call void @llvm.experimental.noalias.scope.decl(metadata !32664)
  %.val2.i = load i64, ptr %i.d, align 8, !range !74, !alias.scope !32664, !noundef !44 ; 2 uses
  %i.o = icmp eq i64 %.val2.i, 0
  br i1 %i.o, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17h30267df7c680e51fE.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfa474f63e17f41dfE.exit.i"
  %i.p = mul nuw i64 %.val2.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull inttoptr (i64 8 to ptr), i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !32664
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17h30267df7c680e51fE.exit"

common.resume:                                    ; preds = %.body
  resume { ptr, i32 } %i.m

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17h30267df7c680e51fE.exit": ; preds = %bb.f, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfa474f63e17f41dfE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h517703a1cfd78284E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !32685
  %i.e = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, 9) 1) #66, !noalias !32685 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

.body:                                            ; preds = %bb.g, %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"
  %.pn = phi { ptr, i32 } [ %i.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit" ], [ %i.g, %bb.c ], [ %i.n, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$toml..de..error..Error$GT$17h014a8a8d2648d757E"(ptr noalias noundef align 8 dereferenceable(88) %0) #77
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i32 1819111284, ptr %i.e, align 1, !noalias !32686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN61_$LT$toml..de..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h194125f2afffaa47E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32687
  store ptr @214, ptr %i.a, align 8, !noalias !32688
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !32688
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.57.0..sroa_idx, align 8, !noalias !32688
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.68.0..sroa_idx, align 8, !noalias !32688
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !32688
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit": ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !32689
  br label %.body

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 4, ptr %i.i, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 4, ptr %.sroa.6.0..sroa_idx4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.0.val, ptr %i.k, align 8
  store i64 32, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !32690
  %i.l = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !32690 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.i, !prof !47

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc8 unwind label %bb.g

.noexc8:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #77
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.l, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$toml..de..error..Error$GT$17h014a8a8d2648d757E"(ptr noalias noundef align 8 dereferenceable(88) %0)
  ret ptr %i.l

bb.j:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h962278494c41e4c0E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !44, !align !50, !noundef !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !44, !align !50, !noundef !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5b98a148af48c05dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5b98a148af48c05dE", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32700
  store ptr @488, ptr %i.a, align 8, !noalias !32701
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !32701
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !32701
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !32701
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @375, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !32701
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !32701
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !32702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !44, !align !66, !noundef !44
  %i.n = load i32, ptr %i.m, align 4, !noundef !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !32703
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !32703 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #77
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h9714516d6aa521d8E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [392 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32728
  store i64 0, ptr %i.d, align 8, !noalias !32728
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !32728
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !32728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32728
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !32728
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !32728
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !32728
  store ptr %i.d, ptr %i.c, align 8, !noalias !32728
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @1248, ptr %i.h, align 8, !noalias !32728
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !32729

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32730)
  call void @llvm.experimental.noalias.scope.decl(metadata !32731)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !74, !alias.scope !32732, !noalias !32728, !noundef !44 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !32732, !noalias !32728, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !32733
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit", !prof !49

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1249, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1329, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1251) #75
          to label %.noexc.i unwind label %bb.b, !noalias !32729

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7", %bb.h, %bb.q, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7" ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !32734 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !32734 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !32734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32728
  %i.l = load ptr, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, align 8, !nonnull !44, !align !57, !noundef !44
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, i64 8), align 8, !noundef !44 ; 8 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit"
  %i.o = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !32735
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 1) #66, !noalias !32735 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit"
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.f ], [ 0, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7": ; preds = %bb.o, %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.am, %bb.n ], [ %i.am, %bb.o ] ; 2 uses
  %i.r = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !32736
  br label %common.resume

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7"

bb.j:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.m, i1 false), !noalias !32737
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !44, !align !66, !noundef !44
  %i.v = load i32, ptr %i.u, align 4, !noundef !44
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !44, !align !50, !noundef !44
  %.val = load ptr, ptr %i.x, align 8, !nonnull !44, !noundef !44 ; 4 uses
  %i.y = ptrtoint ptr %.val to i64
  %i.z = and i64 %i.y, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.z, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !54

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc3 unwind label %bb.n

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %.val, align 8, !noundef !44 ; 3 uses
  %i.ab = and i64 %i.aa, 72057594037927935        ; 3 uses
  %i.ac = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  %i.ae = and i64 %i.aa, 1080863910568919040
  %i.af = icmp ult i64 %i.aa, 864691128455135232
  call void @llvm.assume(i1 %i.af)
  %i.ag = or i64 %i.ad, %i.ae
  store i64 %i.ag, ptr %.val, align 8
  %i.ah = icmp eq i64 %i.ab, 72057594037927935
  br i1 %i.ah, label %bb.m, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !49

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @2307, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.al, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc4 unwind label %bb.n

.noexc4:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7", label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !32738
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7"

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.l, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !44, !align !66, !noundef !44
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.014.0.copyload, ptr %i.aq, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.515.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.m, ptr %i.ar, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.sroa.10.0.i.i, ptr %.sroa.518.0..sroa_idx19, align 8
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.m, ptr %.sroa.621.0..sroa_idx22, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.v, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.val, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.ap, ptr %i.av, align 4
  store i64 23, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !32739
  %i.aw = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !32739 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.p, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit", !prof !47

bb.p:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #77
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.aw, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ba, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17ha50cbe650b665dffE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !44, !align !50, !noundef !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !44, !align !50, !noundef !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5b98a148af48c05dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5b98a148af48c05dE", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32749
  store ptr @490, ptr %i.a, align 8, !noalias !32750
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !32750
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !32750
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !32750
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @375, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !32750
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !32750
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !32751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !44, !align !66, !noundef !44
  %i.n = load i32, ptr %i.m, align 4, !noundef !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !32752
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !32752 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #77
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17hdba5d217f34c4b09E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [392 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32777
  store i64 0, ptr %i.d, align 8, !noalias !32777
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !32777
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !32777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32777
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !32777
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !32777
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !32777
  store ptr %i.d, ptr %i.c, align 8, !noalias !32777
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @1248, ptr %i.h, align 8, !noalias !32777
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !32778

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32779)
  call void @llvm.experimental.noalias.scope.decl(metadata !32780)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !74, !alias.scope !32781, !noalias !32777, !noundef !44 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !32781, !noalias !32777, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !32782
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit", !prof !49

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1249, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1329, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1251) #75
          to label %.noexc.i unwind label %bb.b, !noalias !32778

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.o, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !32783 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !32783 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !32783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32777
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !32784
  %i.l = call noundef dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, 9) 1) #66, !noalias !32784 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7", %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7" ], [ %i.o, %bb.i ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.n, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !32785
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h80bd04c5d8f007c4E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.l, ptr noundef nonnull align 1 dereferenceable(48) @483, i64 48, i1 false), !noalias !32786
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !44, !align !66, !noundef !44
  %i.r = load i32, ptr %i.q, align 4, !noundef !44
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !44, !align !50, !noundef !44
  %.val = load ptr, ptr %i.t, align 8, !nonnull !44, !noundef !44 ; 4 uses
  %i.u = ptrtoint ptr %.val to i64
  %i.v = and i64 %i.u, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.v, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !54

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc3 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit7"

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = load i64, ptr %.val, align 8, !noundef !44 ; 3 uses
  %i.x = and i64 %i.w, 72057594037927935          ; 3 uses
  %i.y = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  %i.aa = and i64 %i.w, 1080863910568919040
  %i.ab = icmp ult i64 %i.w, 864691128455135232
end_hunk_6
begin_hunk_7_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn17h8e521a2a74e90aa1E":bb.a
    i64 0, label %bb.ur
  ], !prof !54

bb.uq:                                            ; preds = %bb.up
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc1076 unwind label %bb.sh

.noexc1076:                                       ; preds = %bb.uq
  unreachable

bb.ur:                                            ; preds = %bb.up
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !34041
  store ptr %.val.i1073, ptr %i.g, align 8, !noalias !34041
  %i.baa = load i64, ptr %.val.i1073, align 8, !noalias !34042, !noundef !44 ; 3 uses
  %i.bab = and i64 %i.baa, 72057594037927935
  %i.bac = add nsw i64 %i.bab, -1                 ; 3 uses
  %i.bad = and i64 %i.baa, 1080863910568919040
  %i.bae = icmp ult i64 %i.baa, 864691128455135232
  call void @llvm.assume(i1 %i.bae)
  %i.baf = or i64 %i.bac, %i.bad
  store i64 %i.baf, ptr %.val.i1073, align 8, !noalias !34042
  %i.bag = icmp ugt i64 %i.bac, 72057594037927935
  br i1 %i.bag, label %bb.ut, label %bb.us, !prof !49

bb.us:                                            ; preds = %bb.ur
  %i.bah = icmp eq i64 %i.bac, 0
  br i1 %i.bah, label %bb.uu, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i1075"

bb.ut:                                            ; preds = %bb.ur
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34042
  store ptr @2307, ptr %i.f, align 8, !noalias !34042
  %i.bai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.bai, align 8, !noalias !34042
  %i.baj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.baj, align 8, !noalias !34042
  %i.bak = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bak, align 8, !noalias !34042
  %i.bal = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.bal, align 8, !noalias !34042
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc1077 unwind label %bb.sh

.noexc1077:                                       ; preds = %bb.ut
  unreachable

bb.uu:                                            ; preds = %bb.us
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i1075" unwind label %bb.sh

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i1075": ; preds = %bb.uu, %bb.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !34041
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1079"

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1086": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i1082", %bb.uv, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1079"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  %i.bam = trunc nuw i8 %.sroa.0253.6 to i1
  br i1 %i.bam, label %bb.vb, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1093"

bb.uv:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1079"
  %i.ban = ptrtoint ptr %.sroa.0106.0.copyload107 to i64
  %i.bao = and i64 %i.ban, 3
  %..i.i1081 = call i64 @llvm.umin.i64(i64 %i.bao, i64 2)
  switch i64 %..i.i1081, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1086" [
    i64 2, label %bb.uw
    i64 0, label %bb.ux
  ], !prof !54

bb.uw:                                            ; preds = %bb.uv
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc1083 unwind label %bb.ry

.noexc1083:                                       ; preds = %bb.uw
  unreachable

bb.ux:                                            ; preds = %bb.uv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !34043
  store ptr %.sroa.0106.0.copyload107, ptr %i.e, align 8, !noalias !34043
  %i.bap = load i64, ptr %.sroa.0106.0.copyload107, align 8, !noalias !34044, !noundef !44 ; 3 uses
  %i.baq = and i64 %i.bap, 72057594037927935
  %i.bar = add nsw i64 %i.baq, -1                 ; 3 uses
  %i.bas = and i64 %i.bap, 1080863910568919040
  %i.bat = icmp ult i64 %i.bap, 864691128455135232
  call void @llvm.assume(i1 %i.bat)
  %i.bau = or i64 %i.bar, %i.bas
  store i64 %i.bau, ptr %.sroa.0106.0.copyload107, align 8, !noalias !34044
  %i.bav = icmp ugt i64 %i.bar, 72057594037927935
  br i1 %i.bav, label %bb.uz, label %bb.uy, !prof !49

bb.uy:                                            ; preds = %bb.ux
  %i.baw = icmp eq i64 %i.bar, 0
  br i1 %i.baw, label %bb.va, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i1082"

bb.uz:                                            ; preds = %bb.ux
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34044
  store ptr @2307, ptr %i.d, align 8, !noalias !34044
  %i.bax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.bax, align 8, !noalias !34044
  %i.bay = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.bay, align 8, !noalias !34044
  %i.baz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.baz, align 8, !noalias !34044
  %i.bba = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.bba, align 8, !noalias !34044
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc1084 unwind label %bb.ry

.noexc1084:                                       ; preds = %bb.uz
  unreachable

bb.va:                                            ; preds = %bb.uy
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i1082" unwind label %bb.ry

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i1082": ; preds = %bb.va, %bb.uy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !34043
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1086"

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1093": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i1089", %bb.vb, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1086"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call fastcc void @"_ZN4core3ptr136drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..Closure$C$nickel_lang_core..position..PosIdx$RP$$GT$$GT$17h0ed063917c1267abE"(ptr noalias noundef align 8 dereferenceable(32) %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  br label %bb.tt

bb.vb:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1086"
  switch i64 %..i1027, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1093" [
    i64 2, label %bb.vc
    i64 0, label %bb.vd
  ], !prof !54

bb.vc:                                            ; preds = %bb.vb
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc1090 unwind label %bb.rp

.noexc1090:                                       ; preds = %bb.vc
  unreachable

bb.vd:                                            ; preds = %bb.vb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34045
  store ptr %.sroa.0103.0.copyload104, ptr %i.c, align 8, !noalias !34045
  %i.bbb = load i64, ptr %.sroa.0103.0.copyload104, align 8, !noalias !34046, !noundef !44 ; 3 uses
  %i.bbc = and i64 %i.bbb, 72057594037927935
  %i.bbd = add nsw i64 %i.bbc, -1                 ; 3 uses
  %i.bbe = and i64 %i.bbb, 1080863910568919040
  %i.bbf = icmp ult i64 %i.bbb, 864691128455135232
  call void @llvm.assume(i1 %i.bbf)
  %i.bbg = or i64 %i.bbd, %i.bbe
  store i64 %i.bbg, ptr %.sroa.0103.0.copyload104, align 8, !noalias !34046
  %i.bbh = icmp ugt i64 %i.bbd, 72057594037927935
  br i1 %i.bbh, label %bb.vf, label %bb.ve, !prof !49

bb.ve:                                            ; preds = %bb.vd
  %i.bbi = icmp eq i64 %i.bbd, 0
  br i1 %i.bbi, label %bb.vg, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i1089"

bb.vf:                                            ; preds = %bb.vd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34046
  store ptr @2307, ptr %i.b, align 8, !noalias !34046
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bbj, align 8, !noalias !34046
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.bbk, align 8, !noalias !34046
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bbl, align 8, !noalias !34046
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bbm, align 8, !noalias !34046
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc1091 unwind label %bb.rp

.noexc1091:                                       ; preds = %bb.vf
  unreachable

bb.vg:                                            ; preds = %bb.ve
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i1089" unwind label %bb.rp

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i1089": ; preds = %bb.vg, %bb.ve
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34045
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit1093"

bb.vh:                                            ; preds = %.body1070
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cz) #77
          to label %.body1023 unwind label %bb.bv

.body1023.thread:                                 ; preds = %bb.sb, %bb.sc, %bb.sd, %.body1023
  %.pn387635 = phi { ptr, i32 } [ %.pn387, %.body1023 ], [ %i.auj, %bb.sd ], [ %i.auj, %bb.sc ], [ %i.auj, %bb.sb ]
  %.sroa.0253.2634 = phi i8 [ %.sroa.0253.2, %.body1023 ], [ 1, %bb.sd ], [ 1, %bb.sc ], [ 1, %bb.sb ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.db) #77
          to label %.body1016 unwind label %bb.bv

.body1016.thread:                                 ; preds = %bb.rs, %bb.rt, %bb.ru, %.body1016
  %.pn389630 = phi { ptr, i32 } [ %.pn389, %.body1016 ], [ %i.atl, %bb.ru ], [ %i.atl, %bb.rt ], [ %i.atl, %bb.rs ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dd) #77
          to label %bb.ro unwind label %bb.bv

"_ZN4core3ptr395drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..Closure$C$nickel_lang_core..position..PosIdx$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_opn..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6b3da2d964868074E.exit": ; preds = %.body687, %.body610, %bb.fn, %bb.ic, %bb.mg, %bb.pf, %bb.ro
  %.pn492 = phi { ptr, i32 } [ %.pn391, %bb.ro ], [ %.pn402, %bb.pf ], [ %.pn490, %.body610 ], [ %.pn456, %bb.fn ], [ %.pn443, %bb.ic ], [ %.pn420, %bb.mg ], [ %.pn473, %.body687 ]
  resume { ptr, i32 } %.pn492
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h36769c195d915573E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34064
  store i64 0, ptr %i.c, align 8, !noalias !34064
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !34064
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !34064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34064
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !34064
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !34064
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !34064
  store ptr %i.c, ptr %i.b, align 8, !noalias !34064
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1248, ptr %i.f, align 8, !noalias !34064
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !34065

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34066)
  call void @llvm.experimental.noalias.scope.decl(metadata !34067)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !74, !alias.scope !34068, !noalias !34064, !noundef !44 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !34068, !noalias !34064, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !34069
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.g, !prof !49

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1249, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1329, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1251) #75
          to label %.noexc.i unwind label %bb.b, !noalias !34065

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.o, %bb.i ], [ %i.h, %bb.c ]
  %.val2 = load i64, ptr %0, align 8, !range !70, !noundef !44 ; 2 uses
  %switch = icmp sgt i64 %.val2, 0
  br i1 %switch, label %bb.f, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit"

bb.f:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !34070
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit"

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34064
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.l, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !34071
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !34071 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.k, !prof !47

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #77
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %0, align 8, !range !70, !noundef !44 ; 2 uses
  %switch1 = icmp sgt i64 %.val, 0
  br i1 %switch1, label %bb.l, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit8"

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.q, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !34072
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit8": ; preds = %bb.k, %bb.l
  ret ptr %i.m

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hd930d14300275195E.exit": ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h98d44a488b8d496fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val = load ptr, ptr %i.d, align 8, !noundef !44
  %i.e = tail call fastcc noundef ptr @_ZN16nickel_lang_core5label5Label17get_evaluated_arg17h1201a410589cc7caE(ptr %.val) ; 2 uses
  store ptr %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h926155e26836363aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #77
          to label %common.resume unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store ptr %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.h, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  store i64 19, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !34075
  %i.i = tail call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !34075 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit", !prof !47

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.c) #77
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0246afdd6f1be64cE.exit": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.i, ptr noundef nonnull align 8 dereferenceable(392) %i.c, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.i

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17hc8d970a79ca46a46E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nonnull captures(address, read_provenance) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 5, 11) %2, i64 noundef range(i64 1, 5) %3, i32 noundef %4, ptr noundef nonnull %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 15 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %5, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34096
  store i64 0, ptr %i.c, align 8, !noalias !34096
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !34096
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !34096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34096
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.f, align 8, !noalias !34096
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !34096
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !34096
  store ptr %i.c, ptr %i.b, align 8, !noalias !34096
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1248, ptr %i.g, align 8, !noalias !34096
  %i.h = invoke noundef zeroext i1 @"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !34097

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34098)
  call void @llvm.experimental.noalias.scope.decl(metadata !34099)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !74, !alias.scope !34100, !noalias !34096, !noundef !44 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.j, label %.thread15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !34100, !noalias !34096, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !34101
  br label %.thread15

bb.d:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.e, label %bb.f, !prof !49

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1249, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1329, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1251) #75
          to label %.noexc.i unwind label %bb.b, !noalias !34097

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload1 = load i64, ptr %i.c, align 8, !noalias !34102 ; 3 uses
  %.sroa.5.0.copyload3 = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !34102 ; 3 uses
  %.sroa.6.0.copyload5 = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !34102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34096
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !34103
  %i.k = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #66, !noalias !34103 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload1, 0
  br i1 %i.n, label %.thread15, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload3) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload3, i64 noundef %.sroa.0.0.copyload1, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !34104
  br label %.thread15

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %2, i1 false), !noalias !34105
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.o = load i32, ptr %.8.val, align 4, !noundef !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.0.0.copyload1, ptr %i.p, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.0.copyload3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.6.0.copyload5, ptr %.sroa.6.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %2, ptr %i.q, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.k, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %2, ptr %.sroa.510.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %3, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %4, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %5, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.o, ptr %i.u, align 4
  store i64 23, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !34106
  %i.v = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !34106 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.n, !prof !47

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc6 unwind label %bb.l

.noexc6:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #77
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.n:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.v, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.z, align 8
  store ptr null, ptr %0, align 8
  ret void

bb.o:                                             ; preds = %.thread15
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.p:                                             ; preds = %bb.l, %.thread15
  %.pn13 = phi { ptr, i32 } [ %.pn14, %.thread15 ], [ %i.x, %bb.l ]
  resume { ptr, i32 } %.pn13

.thread15:                                        ; preds = %bb.h, %bb.i, %bb.b, %bb.c
  %.pn14 = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.m, %bb.h ], [ %i.i, %bb.c ], [ %i.m, %bb.i ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #77
          to label %bb.p unwind label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17hf460a6073bc109f5E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN85_$LT$nickel_lang_core..term..string..SubstringError$u20$as$u20$core..fmt..Display$GT$3fmt17h1ed75060094802ffE", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34116
  store ptr @214, ptr %i.a, align 8, !noalias !34117
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !34117
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !34117
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !34117
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !34117
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.j, %bb.e ]
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..string..SubstringError$GT$17h8a4055f4e3dab8e1E"(ptr noalias noundef align 8 dereferenceable(120) %0) #77
  resume { ptr, i32 } %eh.lpad-body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.g, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !34118
  %i.h = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !34118 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g, !prof !47

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #75
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hd9f5391c2dddfed8E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #77
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.h, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..string..SubstringError$GT$17h8a4055f4e3dab8e1E"(ptr noalias noundef align 8 dereferenceable(120) %0)
  ret ptr %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract9apply_all17h63f738ca9f4efae3E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [152 x i8], align 8               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [168 x i8], align 8               ; 5 uses
  %i.g = icmp eq ptr %1, %2
  br i1 %i.g, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h02a0ab05f5a95509E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %2 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 160
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  br label %bb.c

bb.c:                                             ; preds = %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17ha981f5321bbd1b13E.exit.i.i.i", %bb.b
  %i.m = phi ptr [ %i.af, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17ha981f5321bbd1b13E.exit.i.i.i" ], [ %0, %bb.b ] ; 3 uses
  %.sroa.07.0.i.i = phi i64 [ %i.ag, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17ha981f5321bbd1b13E.exit.i.i.i" ], [ 0, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [160 x i8], ptr %1, i64 %.sroa.07.0.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34129)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !34130
  store ptr %i.m, ptr %i.e, align 8, !noalias !34130
  call void @llvm.experimental.noalias.scope.decl(metadata !34131)
  call void @llvm.experimental.noalias.scope.decl(metadata !34132)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34133
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %.val.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !34134, !noalias !34135, !nonnull !44, !noundef !44 ; 5 uses
  %i.p = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.q = and i64 %i.p, 3
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 2)
  switch i64 %..i.i.i.i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i" [
    i64 2, label %bb.d
    i64 0, label %bb.e
  ], !prof !54

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc.i.i.i unwind label %.body.thread5.i.i.i, !noalias !34130

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %.val.i.i.i.i.i, align 8, !noalias !34133, !noundef !44 ; 3 uses
  %i.s = and i64 %i.r, 72057594037927935          ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  %i.v = and i64 %i.r, 1080863910568919040
  %i.w = icmp ult i64 %i.r, 864691128455135232
  call void @llvm.assume(i1 %i.w)
  %i.x = or i64 %i.u, %i.v
  store i64 %i.x, ptr %.val.i.i.i.i.i, align 8, !noalias !34133
  %i.y = icmp eq i64 %i.s, 72057594037927935
  br i1 %i.y, label %bb.f, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i", !prof !49

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34133
  store ptr @2307, ptr %i.b, align 8, !noalias !34133
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.z, align 8, !noalias !34133
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aa, align 8, !noalias !34133
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8, !noalias !34133
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ac, align 8, !noalias !34133
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc2.i.i.i unwind label %.body.thread5.i.i.i, !noalias !34130

.noexc2.i.i.i:                                    ; preds = %bb.f
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i": ; preds = %bb.e, %bb.c
  store ptr %.val.i.i.i.i.i, ptr %i.d, align 8, !noalias !34133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34133
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.n)
          to label %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17ha981f5321bbd1b13E.exit.i.i.i" unwind label %bb.g, !noalias !34135

bb.g:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i"
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #77
          to label %.body.thread.i.i.i unwind label %bb.h, !noalias !34135

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !34135
  unreachable

.body.thread5.i.i.i:                              ; preds = %bb.f, %bb.d
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17ha981f5321bbd1b13E.exit.i.i.i": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 152, i1 false), !noalias !34130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34133
  store ptr %i.m, ptr %i.f, align 8, !noalias !34130
  store ptr %.val.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !34130
  %i.af = call noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract5apply17h979b649f88f8a7a6E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.l, ptr noundef nonnull %i.m, i32 noundef %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !34130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34130
  %i.ag = add nuw i64 %.sroa.07.0.i.i, 1          ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.k
  br i1 %i.ah, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h02a0ab05f5a95509E.exit", label %bb.c

.body.thread.i.i.i:                               ; preds = %.body.thread5.i.i.i, %bb.g
  %eh.lpad-body4.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body.thread5.i.i.i ], [ %i.ad, %bb.g ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #77
          to label %.body unwind label %bb.i, !noalias !34136

bb.i:                                             ; preds = %.body.thread.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !34136
  unreachable

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h02a0ab05f5a95509E.exit": ; preds = %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17ha981f5321bbd1b13E.exit.i.i.i", %bb.a
  %.sroa.04.0.i.i = phi ptr [ %0, %bb.a ], [ %i.af, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17ha981f5321bbd1b13E.exit.i.i.i" ]
  ret ptr %.sroa.04.0.i.i

.body:                                            ; preds = %.body.thread.i.i.i
  resume { ptr, i32 } %eh.lpad-body4.i.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term4make12enum_variant17h282b4f8539890072E(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @355, i64 noundef 5)
          to label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7ff1a9a7d24b822dE.exit" unwind label %bb.g

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7ff1a9a7d24b822dE.exit": ; preds = %bb.a
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !34143
  %i.d = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #66, !noalias !34143 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !49

bb.b:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha4bec725ceeb1ce6E"(ptr nonnull %0) #77
          to label %.body unwind label %bb.e, !noalias !34143

bb.c:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7ff1a9a7d24b822dE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34143
  store ptr @363, ptr %i.a, align 8, !noalias !34143
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !34143
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !34143
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !34143
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !34143
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.d unwind label %bb.b, !noalias !34143

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !34143
  unreachable

bb.f:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7ff1a9a7d24b822dE.exit"
  store i64 504403158265495553, ptr %i.d, align 8, !noalias !34143
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 -1, ptr %i.l, align 8, !noalias !34143
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %0, ptr %i.m, align 8, !noalias !34144
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body3 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %eh.lpad-body3

bb.g:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #77
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term4make7builder6Record4path17h3b9ff691889cde0dE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(416) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [20 x i8], align 4                ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !34171, !noalias !34172 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !34171, !noalias !34172, !nonnull !44, !noundef !44 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !34171, !noalias !34172 ; 4 uses
  %i.d = icmp ult i64 %.sroa.5.0.copyload.i, 461168601842738791
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.body:                                            ; preds = %bb.b, %bb.c
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..make..builder..Record$GT$17hea6745aec0dc3e0eE"(ptr noalias noundef align 8 dereferenceable(32) %1) #77
          to label %bb.e unwind label %bb.d

bb.b:                                             ; preds = %bb.c
  %i.e = mul nuw i64 %.sroa.0.0.copyload.i, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !34173
  br label %.body

bb.c:                                             ; preds = %.noexc12.i.i.i.i.i, %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h3d7e47f9346a6823E.exit.i.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.g, label %.body, label %bb.b

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.noexc13.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i = phi i64 [ %i.p, %.noexc13.i.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34174
  %i.h = getelementptr inbounds nuw [20 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.0.01.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.h, i64 20, i1 false), !noalias !34174
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8, !noalias !34175
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h3d7e47f9346a6823E.exit.i.i.i.i.i.i.i", label %.noexc.i.i.i.i.i.i, !prof !46

.noexc.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34175
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.b, align 8, !noalias !34175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34175
  store ptr %i.b, ptr %i.a, align 8, !noalias !34175
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @1215, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1217)
          to label %.noexc.i.i.i.i.i unwind label %bb.c, !noalias !34176

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34175
  br label %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h3d7e47f9346a6823E.exit.i.i.i.i.i.i.i"

"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h3d7e47f9346a6823E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.k = invoke { ptr, i64 } @"_ZN92_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17ha8e0a3be93011bbfE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.c)
          to label %.noexc12.i.i.i.i.i unwind label %bb.c, !noalias !34176 ; 2 uses

.noexc12.i.i.i.i.i:                               ; preds = %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h3d7e47f9346a6823E.exit.i.i.i.i.i.i.i"
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = invoke fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17h7ab9a53d8129d93bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef %i.m)
          to label %.noexc13.i.i.i.i.i unwind label %bb.c, !noalias !34176

.noexc13.i.i.i.i.i:                               ; preds = %.noexc12.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34174
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.0.01.i.i.i.i.i.i
  %i.p = add nuw nsw i64 %.sroa.0.01.i.i.i.i.i.i, 1 ; 2 uses
  store i32 %i.n, ptr %i.o, align 4, !noalias !34176
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.p, %.sroa.5.0.copyload.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.loopexit:                                        ; preds = %.noexc13.i.i.i.i.i, %bb.a
  %i.q = mul nuw i64 %.sroa.0.0.copyload.i, 5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.q, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx17, align 8
  store i64 18, ptr %0, align 8
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 -9223372036854775806, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 1
  ret void

bb.d:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %.body
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term6record10RecordData10map_values17h51431eeb7ea399e6E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.058 = alloca [48 x i8], align 8          ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 13 uses
  %i.h = alloca [40 x i8], align 8                ; 12 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.i, align 8
  %.sroa.021.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.021.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.021.sroa.4.0.copyload = load ptr, ptr %.sroa.021.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.021.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.021.sroa.5.0.copyload = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_7
begin_hunk_8_@_ZN3nls10diagnostic22SerializableDiagnostic4from17ha5e769508483d17dE:bb.a
  %.val.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !43679, !noalias !43680, !nonnull !44, !noundef !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !43679, !noalias !43680, !nonnull !44, !noundef !44
  %i.n = ptrtoint ptr %.val4.i.i.i.i.i.i.i to i64
  %i.o = ptrtoint ptr %.val.i.i.i.i.i.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 96
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit.i.i.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit.i.i.i.i.i.i": ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i.i.i.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ]
  %i.r = load ptr, ptr %.sroa.415.0..sroa_idx, align 8, !alias.scope !43677, !noalias !43678, !noundef !44
  %.not51.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not51.i.i.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit.i.i.i.i.i.i"
  %.val.i59.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !43681, !noalias !43682, !nonnull !44, !noundef !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.val4.i60.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !43681, !noalias !43682, !nonnull !44, !noundef !44
  %i.t = ptrtoint ptr %.val4.i60.i.i.i.i.i.i to i64
  %i.u = ptrtoint ptr %.val.i59.i.i.i.i.i.i to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 96
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i.i.i": ; preds = %bb.f, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit.i.i.i.i.i.i"
  %.sroa.8.0.i.i.i.i.i.i = phi i64 [ %i.w, %bb.f ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit.i.i.i.i.i.i" ]
  %i.x = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i ; 2 uses
  %i.y = call i64 @llvm.umax.i64(i64 %i.x, i64 3) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = add nuw nsw i64 %i.y, 1  ; 2 uses
  %i.z = mul i64 %.sroa.0.0.i.i.i.i.i, 96         ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.x, 96076792050570580
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !69

bb.g:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !43683, !noalias !43684
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aa, align 8, !alias.scope !43683, !noalias !43684
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ab, align 8, !alias.scope !43683, !noalias !43684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !43675
  call fastcc void @"_ZN4core3ptr380drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$alloc..vec..into_iter..IntoIter$LT$codespan_reporting..diagnostic..Diagnostic$LT$nickel_lang_parser..files..FileId$GT$$GT$$C$alloc..vec..Vec$LT$nls..diagnostic..SerializableDiagnostic$GT$$C$nls..diagnostic..SerializableDiagnostic..from$LT$nickel_lang_core..error..warning..Warning$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1c348ae06e06c2c5E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e), !noalias !43676
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h60d61dfd38eeb542E.exit

bb.h:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$nls..diagnostic..SerializableDiagnostic$GT$17h52de24b43516f232E"(ptr noalias noundef align 8 dereferenceable(96) %i.c) #77, !noalias !43675
  br label %bb.v

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i.i.i"
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !43685
  %i.ae = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.z, i64 noundef range(i64 1, 9) 8) #66, !noalias !43685 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.i ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i unwind label %bb.h, !noalias !43675

.noexc.i.i.i.i:                                   ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.ae, %bb.i ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.i ] ; 2 uses
  %i.ag = icmp samesign ult i64 %i.y, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !43675
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.d, align 8, !noalias !43675
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !43675
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !43675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !43676
  call void @llvm.experimental.noalias.scope.decl(metadata !43686)
  call void @llvm.experimental.noalias.scope.decl(metadata !43687)
  call void @llvm.experimental.noalias.scope.decl(metadata !43688)
  call void @llvm.experimental.noalias.scope.decl(metadata !43689)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43690
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8c19612e83ba952cE.exit.i.i.i.i.i.i", %bb.k
  %i.am = phi ptr [ %i.be, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8c19612e83ba952cE.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %bb.k ]
  %i.an = phi i64 [ %i.bg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8c19612e83ba952cE.exit.i.i.i.i.i.i" ], [ 1, %bb.k ] ; 5 uses
  invoke fastcc void @"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2daa2057efac07b3E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %bb.n unwind label %bb.m, !noalias !43691

.body.i.i.i.i:                                    ; preds = %bb.s, %bb.m
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bh, %bb.s ], [ %i.ao, %bb.m ]
  call fastcc void @"_ZN4core3ptr380drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$alloc..vec..into_iter..IntoIter$LT$codespan_reporting..diagnostic..Diagnostic$LT$nickel_lang_parser..files..FileId$GT$$GT$$C$alloc..vec..Vec$LT$nls..diagnostic..SerializableDiagnostic$GT$$C$nls..diagnostic..SerializableDiagnostic..from$LT$nickel_lang_core..error..warning..Warning$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1c348ae06e06c2c5E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b) #77, !noalias !43691
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nls..diagnostic..SerializableDiagnostic$GT$$GT$17h0150b37944347a0eE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #77, !noalias !43675
  br label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ap = load i64, ptr %i.a, align 8, !range !70, !noalias !43692, !noundef !44
  %.not.i.i5.i.i.i.i = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %.not.i.i5.i.i.i.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = icmp samesign ult i64 %i.an, 96076792050570582
  call void @llvm.assume(i1 %i.aq)
  %i.ar = load i64, ptr %i.d, align 8, !range !74, !alias.scope !43693, !noalias !43694, !noundef !44
  %i.as = icmp eq i64 %i.an, %i.ar
  br i1 %i.as, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8c19612e83ba952cE.exit.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !43695, !noalias !43696, !noundef !44
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit.i.i.i.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !43697, !noalias !43698, !nonnull !44, !noundef !44
  %.val4.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !43697, !noalias !43698, !nonnull !44, !noundef !44
  %i.au = ptrtoint ptr %.val4.i.i.i.i.i.i.i.i.i to i64
  %i.av = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  %i.ax = udiv exact i64 %i.aw, 96
  %i.ay = add nuw nsw i64 %i.ax, 1
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit.i.i.i.i.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.q, %bb.p
  %.sroa.7.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %bb.q ], [ 1, %bb.p ]
  %i.az = load ptr, ptr %i.aj, align 8, !alias.scope !43695, !noalias !43696, !noundef !44
  %.not51.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not51.i.i.i.i.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit.i.i.i.i.i.i.i.i"
  %.val.i59.i.i.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !43699, !noalias !43700, !nonnull !44, !noundef !44
  %.val4.i60.i.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !43699, !noalias !43700, !nonnull !44, !noundef !44
  %i.ba = ptrtoint ptr %.val4.i60.i.i.i.i.i.i.i.i to i64
  %i.bb = ptrtoint ptr %.val.i59.i.i.i.i.i.i.i.i to i64
  %i.bc = sub nuw i64 %i.ba, %i.bb
  %i.bd = udiv exact i64 %i.bc, 96
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8c19612e83ba952cE.exit.i.i.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8c19612e83ba952cE.exit.i.i_crit_edge.i.i.i.i", %bb.o
  %i.be = phi ptr [ %.pre.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8c19612e83ba952cE.exit.i.i_crit_edge.i.i.i.i" ], [ %i.am, %bb.o ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [96 x i8], ptr %i.be, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !43692
  %i.bg = add nuw nsw i64 %i.an, 1                ; 2 uses
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !43693, !noalias !43694
  br label %bb.l

bb.s:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i.i.i.i.i"
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$nls..diagnostic..SerializableDiagnostic$GT$17h52de24b43516f232E"(ptr noalias noundef align 8 dereferenceable(96) %i.a) #77, !noalias !43692
  br label %.body.i.i.i.i

"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i.i.i.i.i": ; preds = %bb.r, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit.i.i.i.i.i.i.i.i"
  %.sroa.8.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bd, %bb.r ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit.i.i.i.i.i.i.i.i" ]
  %i.bi = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.an, i64 noundef %i.bi, i64 noundef 8, i64 noundef 96)
          to label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8c19612e83ba952cE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.s, !noalias !43694

"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8c19612e83ba952cE.exit.i.i_crit_edge.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd4f2ccf677a95d79E.exit61.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !43693, !noalias !43694
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8c19612e83ba952cE.exit.i.i.i.i.i.i"

bb.t:                                             ; preds = %bb.n
  call fastcc void @"_ZN4core3ptr380drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$alloc..vec..into_iter..IntoIter$LT$codespan_reporting..diagnostic..Diagnostic$LT$nickel_lang_parser..files..FileId$GT$$GT$$C$alloc..vec..Vec$LT$nls..diagnostic..SerializableDiagnostic$GT$$C$nls..diagnostic..SerializableDiagnostic..from$LT$nickel_lang_core..error..warning..Warning$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1c348ae06e06c2c5E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b), !noalias !43691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !43684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !43675
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h60d61dfd38eeb542E.exit

bb.u:                                             ; preds = %bb.v, %.body.i.i.i.i
  %.pn3.i.i.i.i = phi { ptr, i32 } [ %.pn.ph.i.i.i.i, %bb.v ], [ %.pn.i.i.i.i.i.i, %.body.i.i.i.i ]
  resume { ptr, i32 } %.pn3.i.i.i.i

bb.v:                                             ; preds = %bb.h, %bb.b
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.ac, %bb.h ]
  call fastcc void @"_ZN4core3ptr380drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$alloc..vec..into_iter..IntoIter$LT$codespan_reporting..diagnostic..Diagnostic$LT$nickel_lang_parser..files..FileId$GT$$GT$$C$alloc..vec..Vec$LT$nls..diagnostic..SerializableDiagnostic$GT$$C$nls..diagnostic..SerializableDiagnostic..from$LT$nickel_lang_core..error..warning..Warning$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1c348ae06e06c2c5E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e) #77, !noalias !43676
  br label %bb.u

_ZN4core4iter6traits8iterator8Iterator7collect17h60d61dfd38eeb542E.exit: ; preds = %bb.g, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !43674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43667
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN3nls10task_queue9TaskQueue13queue_message17h3cefa44a58f38953E(ptr noalias noundef nonnull align 8 dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [128 x i8], align 8               ; 19 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [104 x i8], align 8               ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.19.i.i.i.i = alloca [80 x i8], align 8   ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [96 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 18 uses
  %.sroa.19.i.i.i = alloca [80 x i8], align 8     ; 5 uses
  %i.x = alloca [120 x i8], align 8               ; 11 uses
  %i.y = alloca [104 x i8], align 8               ; 10 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [96 x i8], align 8               ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.1050.i.i.i.i = alloca [80 x i8], align 8 ; 5 uses
  %i.ad = alloca [120 x i8], align 8              ; 10 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 5 uses
  %i.al = alloca [88 x i8], align 8               ; 7 uses
  %.sroa.20.i.i.i.i = alloca [72 x i8], align 8   ; 5 uses
  %.sroa.13.i.i96.i = alloca [72 x i8], align 8   ; 5 uses
  %i.am = alloca [104 x i8], align 8              ; 10 uses
  %i.an = alloca [88 x i8], align 8               ; 7 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.9.i.i.i = alloca [72 x i8], align 8      ; 4 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 5 uses
  %i.as = alloca [32 x i8], align 8               ; 6 uses
  %i.at = alloca [32 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [32 x i8], align 8               ; 5 uses
  %i.aw = alloca [144 x i8], align 8              ; 7 uses
  %i.ax = alloca [144 x i8], align 8              ; 17 uses
  %.sroa.13.i.i.i = alloca [128 x i8], align 8    ; 6 uses
  %i.ay = alloca [144 x i8], align 8              ; 8 uses
  %i.az = alloca [104 x i8], align 8              ; 10 uses
  %i.ba = alloca [144 x i8], align 8              ; 7 uses
  %i.bb = alloca [32 x i8], align 8               ; 7 uses
  %i.bc = alloca [144 x i8], align 8              ; 7 uses
  %i.bd = alloca [32 x i8], align 8               ; 7 uses
  %i.be = alloca [24 x i8], align 8               ; 5 uses
  %i.bf = alloca [24 x i8], align 8               ; 5 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %i.bj = alloca [24 x i8], align 8               ; 19 uses
  %i.bk = alloca [32 x i8], align 8               ; 7 uses
  %i.bl = alloca [144 x i8], align 8              ; 8 uses
  %i.bm = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.17324.i = alloca [104 x i8], align 8     ; 7 uses
  %i.bn = alloca [88 x i8], align 8               ; 7 uses
  %i.bo = alloca [144 x i8], align 8              ; 6 uses
  %i.bp = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.19.i = alloca [72 x i8], align 8         ; 7 uses
  %i.bq = alloca [88 x i8], align 8               ; 13 uses
  %i.br = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.17.i = alloca [128 x i8], align 8        ; 7 uses
  %i.bs = alloca [144 x i8], align 8              ; 19 uses
  %i.bt = alloca [56 x i8], align 8               ; 8 uses
  %i.bu = alloca [144 x i8], align 8              ; 6 uses
  %i.bv = load i64, ptr %1, align 8, !range !115, !noundef !44 ; 3 uses
  %i.bw = icmp ne i64 %i.bv, -9223372036854775806
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = add nsw i64 %i.bv, 9223372036854775807
  %i.by = icmp ugt i64 %i.bv, -9223372036854775808
  %i.bz = select i1 %i.by, i64 %i.bx, i64 1
  switch i64 %i.bz, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %.thread
    i64 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(80) %i.ca, i64 80, i1 false)
  store i64 -9223372036854775806, ptr %i.bu, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44232)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !44232, !noalias !44233, !noundef !44 ; 2 uses
  %i.ce = load i64, ptr %0, align 8, !range !74, !alias.scope !44232, !noalias !44233, !noundef !44 ; 2 uses
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.d, label %.thread10

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h70d4f59bb4c66d1fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @866)
          to label %._crit_edge.i unwind label %bb.e, !noalias !44234

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i64, ptr %i.cc, align 8, !alias.scope !44232, !noalias !44233
  %.pre6.i = load i64, ptr %0, align 8, !range !74, !alias.scope !44232, !noalias !44233
  br label %.thread10

bb.e:                                             ; preds = %bb.d
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$nls..task_queue..ReqOrSync$GT$17h550a48b001e3ec60E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.bu) #77
          to label %.body.thread unwind label %bb.f, !noalias !44232

bb.f:                                             ; preds = %bb.e
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !44235
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bt, ptr noundef nonnull align 8 dereferenceable(56) %i.ci, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !44237, !noalias !44236, !nonnull !44, !noundef !44 ; 12 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !44237, !noalias !44236, !noundef !44 ; 2 uses
  switch i64 %i.cm, label %bb.li [
    i64 20, label %bb.h
    i64 21, label %bb.ch
    i64 22, label %bb.eu
    i64 15, label %bb.if
  ]

bb.h:                                             ; preds = %bb.g
  %i.cn = load i128, ptr %i.ck, align 1
  %i.co = xor i128 %i.cn, 133470022749355469486444907679031256436
  %i.cp = getelementptr i8, ptr %i.ck, i64 16
  %i.cq = load i32, ptr %i.cp, align 1
  %i.cr = zext i32 %i.cq to i128
  %i.cs = xor i128 %i.cr, 1852141647
  %i.ct = or i128 %i.co, %i.cs
  %i.cu = icmp ne i128 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.i, label %bb.li

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !44238
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !44238
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44239)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !44238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !44238
  %i.cy = load i8, ptr %i.br, align 8, !range !101, !alias.scope !44239, !noalias !44240, !noundef !44 ; 3 uses
  switch i8 %i.cy, label %bb.j [
    i8 4, label %bb.k
    i8 5, label %bb.x
  ], !prof !106

bb.j:                                             ; preds = %bb.i
  %i.cz = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17ha60d36d37554b4a1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101)
          to label %bb.bl unwind label %bb.bk, !noalias !44240

bb.k:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44241)
  %i.db = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !44241, !noalias !44242, !noundef !44 ; 2 uses
  %i.dd = icmp ult i64 %i.dc, 288230376151711744
  tail call void @llvm.assume(i1 %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !44243
  invoke void @_ZN10serde_json5value2de15SeqDeserializer3new17h83c00a78209f13a7E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bf)
          to label %.noexc.i.i unwind label %bb.bk, !noalias !44244

.noexc.i.i:                                       ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !44243
  call void @llvm.experimental.noalias.scope.decl(metadata !44245)
  call void @llvm.experimental.noalias.scope.decl(metadata !44246)
  call void @llvm.experimental.noalias.scope.decl(metadata !44247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !44248
end_hunk_8
begin_hunk_9_@_ZN3nls3run17h8a053cec2b6f4f41E:bb.a
          to label %.body16.i unwind label %bb.akh, !noalias !50782

bb.akh:                                           ; preds = %.body20.i, %.body16.i, %.body.i313, %bb.acq
  %i.cco = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !50782
  unreachable

bb.aki:                                           ; preds = %bb.aco
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iy)
  store ptr %i.ja, ptr %i.iy, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store ptr @"_ZN59_$LT$nls..config..LspConfig$u20$as$u20$core..fmt..Debug$GT$3fmt17he44c01770f170b66E", ptr %.sroa.4109.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50916
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 4, ptr %i.ccp, align 8, !noalias !50916
  %.sroa.431.0..sroa_idx.i.i369 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @917, ptr %.sroa.431.0..sroa_idx.i.i369, align 8, !noalias !50916
  %.sroa.532.0..sroa_idx.i.i370 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 3, ptr %.sroa.532.0..sroa_idx.i.i370, align 8, !noalias !50916
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @923, ptr %i.ccq, align 8, !noalias !50916
  %.sroa.449.0..sroa_idx.i.i371 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i371, align 8, !noalias !50916
  %.sroa.550.0..sroa_idx.i.i372 = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.iy, ptr %.sroa.550.0..sroa_idx.i.i372, align 8, !noalias !50916
  %.sroa.651.0..sroa_idx.i.i373 = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i373, align 8, !noalias !50916
  %.sroa.752.0..sroa_idx.i.i374 = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i374, align 8, !noalias !50916
  store i64 0, ptr %i.b, align 8, !noalias !50916
  %.sroa.462.0..sroa_idx.i.i376 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @917, ptr %.sroa.462.0..sroa_idx.i.i376, align 8, !noalias !50916
  %.sroa.563.0..sroa_idx.i.i377 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 3, ptr %.sroa.563.0..sroa_idx.i.i377, align 8, !noalias !50916
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ccr, align 8, !noalias !50916
  %.sroa.524.0..sroa_idx25.i.i378 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @913, ptr %.sroa.524.0..sroa_idx25.i.i378, align 8, !noalias !50916
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i379 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 19, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i379, align 8, !noalias !50916
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.ccs, align 8, !noalias !50916
  %i.cct = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 113, ptr %i.cct, align 4, !noalias !50916
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b)
          to label %bb.akj unwind label %bb.aac

bb.akj:                                           ; preds = %bb.aki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iy)
  br label %bb.acp

bb.akk:                                           ; preds = %.noexc.i.i335, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i.i
  %.pre1.i.i.i.i7.i.i = phi i64 [ %.pre1.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i.i ], [ %i.cck, %.noexc.i.i335 ] ; 2 uses
  %i.ccu = phi i64 [ %.pre.i.i.i.i.i19.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i.i ], [ %i.ccj, %.noexc.i.i335 ] ; 3 uses
  %i.ccv = add i64 %i.ccu, 1
  %i.ccw = add i64 %i.ccu, 2
  store i64 %i.ccw, ptr %i.bnu, align 8, !noalias !50917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.030.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !50782
  %.sroa.030.sroa.0.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.030.sroa.0.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.030.sroa.0.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false), !noalias !50782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !50912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.iw, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false), !noalias !50918
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.iw, i64 1048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ccx, ptr noundef nonnull align 8 dereferenceable(48) %i.be, i64 48, i1 false), !noalias !50918
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.iw, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(856) %i.ccy, ptr noundef nonnull align 8 dereferenceable(856) %i.bc, i64 856, i1 false), !noalias !50918
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ccz, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 32, i1 false), !noalias !50918
  %i.cda = getelementptr inbounds nuw i8, ptr %i.iw, i64 920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cda, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.030.sroa.0.i, i64 64, i1 false), !noalias !50918
  %.sroa.030.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 984
  store i64 %i.ccu, ptr %.sroa.030.sroa.5.0..sroa_idx.i, align 8, !alias.scope !50783, !noalias !50918
  %.sroa.030.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 992
  store i64 %.pre1.i.i.i.i7.i.i, ptr %.sroa.030.sroa.6.0..sroa_idx.i, align 8, !alias.scope !50783, !noalias !50918
  %.sroa.030.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 1000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.030.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false), !noalias !50918
  %.sroa.6.0..sroa_idx.i336 = getelementptr inbounds nuw i8, ptr %i.iw, i64 1032
  store i64 %i.ccv, ptr %.sroa.6.0..sroa_idx.i336, align 8, !alias.scope !50783, !noalias !50918
  %.sroa.7.0..sroa_idx.i337 = getelementptr inbounds nuw i8, ptr %i.iw, i64 1040
  store i64 %.pre1.i.i.i.i7.i.i, ptr %.sroa.7.0..sroa_idx.i337, align 8, !alias.scope !50783, !noalias !50918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.030.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !50782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !50782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !50782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !50782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iv)
  %i.cdb = invoke fastcc noundef ptr @_ZN3nls6server6Server3run17h0328fac6dc762f3aE(ptr noalias noundef align 8 dereferenceable(1096) %i.iw)
          to label %bb.akm unwind label %bb.akl   ; 3 uses

bb.akl:                                           ; preds = %bb.akk
  %i.cdc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$nls..server..Server$GT$17h58935f205086db5fE"(ptr noalias noundef align 8 dereferenceable(1096) %i.iw) #77
          to label %.body305 unwind label %bb.pc

bb.akm:                                           ; preds = %bb.akk
  store ptr %i.cdb, ptr %i.ix, align 8
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$nls..server..Server$GT$17h58935f205086db5fE"(ptr noalias noundef align 8 dereferenceable(1096) %i.iw)
          to label %bb.akp unwind label %bb.akn

bb.akn:                                           ; preds = %bb.akm
  %i.cdd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cde = icmp eq ptr %i.cdb, null
  br i1 %i.cde, label %.body305, label %bb.ako

bb.ako:                                           ; preds = %bb.akn
  invoke void @"_ZN6anyhow5error65_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$anyhow..Error$GT$4drop17hb615d6e29474b63bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ix)
          to label %.body305 unwind label %bb.pc

bb.akp:                                           ; preds = %bb.akm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw)
  %i.cdf = icmp eq ptr %i.cdb, null
  br i1 %i.cdf, label %"_ZN4core3ptr73drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$17hfd2a6a9138bce875E.exit384", label %bb.akq

bb.akq:                                           ; preds = %bb.akp
  invoke void @"_ZN6anyhow5error65_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$anyhow..Error$GT$4drop17hb615d6e29474b63bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ix)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$17hfd2a6a9138bce875E.exit384" unwind label %bb.aac

"_ZN4core3ptr73drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$17hfd2a6a9138bce875E.exit384": ; preds = %bb.akp, %bb.akq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ix)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ja)
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h021f64043e1f1e62E"(ptr noalias noundef align 8 dereferenceable(32) %i.jf)
          to label %bb.akr unwind label %.body219

bb.akr:                                           ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$17hfd2a6a9138bce875E.exit384"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh)
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit390"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit390": ; preds = %bb.pe, %bb.pd, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit211.thread", %bb.akz, %bb.aky, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit212", %bb.ala, %bb.akr
  %.sroa.0.3 = phi ptr [ null, %bb.akr ], [ %.sroa.0.7, %bb.akz ], [ %.sroa.0.2.i, %bb.ala ], [ %.sroa.0.4, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit212" ], [ %.sroa.0.7, %bb.aky ], [ %i.apb, %bb.pe ], [ %i.apb, %bb.pd ], [ %.sroa.0.0, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit211.thread" ]
  ret ptr %.sroa.0.3

bb.aks:                                           ; preds = %bb.acm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ja)
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h021f64043e1f1e62E"(ptr noalias noundef align 8 dereferenceable(32) %i.jf)
          to label %bb.akt unwind label %.body219.thread472

bb.akt:                                           ; preds = %bb.akx, %bb.aab, %bb.aks
  %.sroa.0.4 = phi ptr [ %i.bnp, %bb.aks ], [ %i.bif, %bb.akx ], [ %i.bij, %bb.aab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf)
  call void @llvm.experimental.noalias.scope.decl(metadata !50919)
  %.val.i385 = load i64, ptr %i.jh, align 8, !range !71, !alias.scope !50919, !noundef !44
  %.val1.i = load ptr, ptr %i.aoi, align 8, !alias.scope !50919
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$crossbeam_channel..channel..Sender$LT$lsp_server..msg..Message$GT$$GT$17h79ea2ed6192ab3b1E"(i64 %.val.i385, ptr %.val1.i)
          to label %bb.akv unwind label %bb.aku, !noalias !50919

bb.aku:                                           ; preds = %bb.akt
  %i.cdg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr89drop_in_place$LT$crossbeam_channel..channel..Receiver$LT$lsp_server..msg..Message$GT$$GT$17h3ec7c023b70cffceE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aoj) #77
          to label %.body unwind label %bb.akw

bb.akv:                                           ; preds = %bb.akt
  invoke void @"_ZN4core3ptr89drop_in_place$LT$crossbeam_channel..channel..Receiver$LT$lsp_server..msg..Message$GT$$GT$17h3ec7c023b70cffceE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aoj)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit212" unwind label %bb.pf

bb.akw:                                           ; preds = %bb.aku
  %i.cdh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.akx:                                           ; preds = %bb.zy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.je)
  br label %bb.akt

bb.aky:                                           ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit212", %bb.ala
  %.sroa.0.7 = phi ptr [ %.sroa.0.2.i, %bb.ala ], [ %.sroa.0.4, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit212" ] ; 2 uses
  %i.cdi = icmp eq i64 %.sroa.775.093.i.i, 0
  br i1 %i.cdi, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit390", label %bb.akz

bb.akz:                                           ; preds = %bb.aky
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.092.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.092.i.i, i64 noundef %.sroa.775.093.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !50920
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit390"

.body219.thread:                                  ; preds = %.body.i228, %.critedge.i, %.body.i.i.i.i.i, %.body219.thread472, %bb.ps
  %.pn118468 = phi { ptr, i32 } [ %lpad.thr_comm, %.body219.thread472 ], [ %.pn, %bb.ps ], [ %.pn120.ph.i, %.critedge.i ], [ %i.aud, %.body.i.i.i.i.i ], [ %eh.lpad-body.i, %.body.i228 ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$lsp_server..Connection$GT$17he65eb08526169428E"(ptr noalias noundef align 8 dereferenceable(32) %i.jh) #77
          to label %.body unwind label %bb.pc

bb.ala:                                           ; preds = %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  %.not124 = icmp eq i64 %.sroa.775.093.i.i, -9223372036854775808
  br i1 %.not124, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit390", label %bb.aky

bb.alb:                                           ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.092.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.092.i.i, i64 noundef %.sroa.775.093.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !50921
  br label %common.resume
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN3nls3run28_$u7b$$u7b$closure$u7d$$u7d$17h76704c9713a0f127E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN55_$LT$std..path..PathBuf$u20$as$u20$core..fmt..Debug$GT$3fmt17hb5095f6ece0ab423E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @925, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %i.h, align 8
  %i.i = invoke fastcc noundef nonnull ptr @_ZN6anyhow9__private10format_err17hed671fa8c37bdbceE(ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h0c80501cefa94e37E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #77
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h0c80501cefa94e37E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  ret ptr %i.i

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_ZN3nls4main17h82d68757a3644aefE() unnamed_addr #0 personality ptr @rust_eh_personality {
"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h6428f9c0d012b31aE.exit.i.i":
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 13 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !51006
  store ptr null, ptr %i.i, align 8, !noalias !51007
  %i.m = tail call noundef i64 @_ZN3std6thread8ThreadId3new17he3dd9ca51594caddE(), !noalias !51007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !51007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51007
  store i64 -9223372036854775808, ptr %i.g, align 8, !noalias !51007
  %i.n = call noundef nonnull ptr @_ZN3std6thread6Thread3new17he81d12966881814bE(i64 noundef %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g), !noalias !51007
  store ptr %i.n, ptr %i.h, align 8, !noalias !51007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !51007
  invoke void @_ZN3std6thread9spawnhook15run_spawn_hooks17h8fa97b7a21c09f32E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.c unwind label %bb.b, !noalias !51007

.critedge.i.i:                                    ; preds = %.noexc50.i.i, %bb.aa, %.thread34.i.i, %bb.i, %bb.b
  %.sroa.019.2.i.i = phi i1 [ false, %.noexc50.i.i ], [ false, %bb.aa ], [ true, %bb.b ], [ false, %bb.i ], [ false, %.thread34.i.i ]
  %.pn30.pn.i.i = phi { ptr, i32 } [ %i.z, %.noexc50.i.i ], [ %.pn37.i.i, %bb.aa ], [ %i.r, %bb.b ], [ %i.ab, %bb.i ], [ %.pn37.i.i, %.thread34.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51008)
  call void @llvm.experimental.noalias.scope.decl(metadata !51009)
  call void @llvm.experimental.noalias.scope.decl(metadata !51010)
  call void @llvm.experimental.noalias.scope.decl(metadata !51011)
  %i.o = load ptr, ptr %i.h, align 8, !alias.scope !51012, !noalias !51007, !nonnull !44, !noundef !44
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !51013
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.a, label %.thread.i.i

bb.a:                                             ; preds = %.critedge.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.thread.i.i unwind label %bb.z, !noalias !51007

bb.b:                                             ; preds = %"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h6428f9c0d012b31aE.exit.i.i"
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i.i

bb.c:                                             ; preds = %"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h6428f9c0d012b31aE.exit.i.i"
  %.pre.i.i = load ptr, ptr %i.h, align 8, !noalias !51007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !51007
  %i.s = atomicrmw add ptr %.pre.i.i, i64 1 monotonic, align 8, !noalias !51007
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.h, align 8, !noalias !51007, !nonnull !44, !noundef !44 ; 3 uses
  store ptr %i.u, ptr %i.e, align 8, !noalias !51007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !51007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51007
  store i64 1, ptr %i.a, align 8, !noalias !51007
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.v, align 8, !noalias !51007
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !noalias !51007
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !51014
  %i.x = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !51014 ; 11 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %bb.j, !prof !47

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #75
          to label %.noexc41.i.i unwind label %bb.f, !noalias !51007

.noexc41.i.i:                                     ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$17h50071dbbadb81addE"(ptr noalias noundef align 8 dereferenceable(32) %i.w)
          to label %bb.ac unwind label %bb.g, !noalias !51007

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !51007
  unreachable

bb.h:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.w
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i.i

bb.j:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !51007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51007
  store ptr %i.x, ptr %i.d, align 8, !noalias !51007
  %i.ac = atomicrmw add ptr %i.x, i64 1 monotonic, align 8, !noalias !51007
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !51007
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.u, ptr %i.ae, align 8, !noalias !51007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !51007
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.x, ptr %i.af, align 8, !noalias !51007
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !51007, !noundef !44 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  invoke void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17h03b3ed8948d2bfa1E(ptr noundef nonnull align 8 %i.ai)
          to label %bb.n unwind label %bb.ab, !noalias !51007

bb.n:                                             ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !51007
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !51015
  %i.aj = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !51015 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.o, label %bb.r, !prof !47

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #75
          to label %.noexc43.i.i unwind label %bb.p, !noalias !51007

.noexc43.i.i:                                     ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr159drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$nls..run$C$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc193888e0d55af4eE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #77
          to label %.thread34.i.i unwind label %bb.q, !noalias !51007

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
end_hunk_9
begin_hunk_10_@"_ZN3nls5error105_$LT$impl$u20$core..convert..From$LT$nls..error..Error$GT$$u20$for$u20$lsp_server..msg..ResponseError$GT$4from17h3aea2d51c021a5e1E":switch.lookup
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1248, ptr %i.j, align 8, !noalias !51063
  %i.k = invoke noundef zeroext i1 @"_ZN56_$LT$nls..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hd0c49a8694444465E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.a, !noalias !51064

bb.a:                                             ; preds = %bb.d, %switch.lookup
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !51065)
  call void @llvm.experimental.noalias.scope.decl(metadata !51066)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !74, !alias.scope !51067, !noalias !51063, !noundef !44 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.m, label %.body, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !51067, !noalias !51063, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !51068
  br label %.body

bb.c:                                             ; preds = %switch.lookup
  br i1 %i.k, label %bb.d, label %bb.e, !prof !49

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1249, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1329, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1251) #75
          to label %.noexc.i unwind label %bb.a, !noalias !51064

.noexc.i:                                         ; preds = %bb.d
  unreachable

.body:                                            ; preds = %bb.a, %bb.b
  call void @"_ZN4core3ptr38drop_in_place$LT$nls..error..Error$GT$17h720c23c31a986ec2E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %1) #77
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !51063
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %switch.load, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 6, ptr %i.o, align 8
  call void @"_ZN4core3ptr38drop_in_place$LT$nls..error..Error$GT$17h720c23c31a986ec2E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3nls5files11uri_to_path17hd910522c224e7989E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4, !noundef !44 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.e, align 8, !nonnull !44, !noundef !44 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5 = load i64, ptr %i.f, align 8, !noundef !44 ; 5 uses
  %i.g = zext i32 %i.d to i64                     ; 12 uses
  %i.h = icmp eq i32 %i.d, 0
  br i1 %i.h, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i = icmp ugt i64 %.val5, %i.g       ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.b
  %i.i = icmp eq i64 %.val5, %i.g
  br i1 %i.i, label %_ZN3url3Url5slice17h22379bb9db16854bE.exit, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.val4, i64 %i.g
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !51091, !noundef !44
  %i.l = icmp sgt i8 %i.k, -65
  br i1 %i.l, label %_ZN3url3Url5slice17h22379bb9db16854bE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.i.i.i.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val4, i64 noundef %.val5, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1840) #75
  unreachable

_ZN3url3Url5slice17h22379bb9db16854bE.exit:       ; preds = %.split.i.i.i.i, %bb.c
  %i.m = icmp eq i32 %i.d, 4
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN3url3Url5slice17h22379bb9db16854bE.exit
  %i.n = load i32, ptr %.val4, align 1
  %i.o = icmp ne i32 %i.n, 1701603686
  %i.p = zext i1 %i.o to i32
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_ZN3url3Url12to_file_path17ha5fdd726f7cc12feE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
  %i.q = load i64, ptr %i.b, align 8, !range !70, !noundef !44
  %i.r = icmp eq i64 %i.q, -9223372036854775808
  br i1 %i.r, label %bb.l, label %bb.m

bb.g:                                             ; preds = %_ZN3url3Url5slice17h22379bb9db16854bE.exit, %bb.e
  br i1 %.not.i.i.i.i, label %bb.h, label %.split.i.i.i.i7

.split.i.i.i.i7:                                  ; preds = %bb.g
  %i.s = icmp eq i64 %.val5, %i.g
  br i1 %i.s, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 %i.g
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !51092, !noundef !44
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.split.i.i.i.i7
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val4, i64 noundef %.val5, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1840) #75
  unreachable

bb.j:                                             ; preds = %bb.h, %.split.i.i.i.i7
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !51093
  %i.w = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 1) #66, !noalias !51093 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit"

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75, !noalias !51094
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit": ; preds = %bb.a, %bb.j
  %.sroa.10.0.i.i = phi ptr [ %i.w, %bb.j ], [ inttoptr (i64 1 to ptr), %bb.a ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %.val4, i64 %i.g, i1 false), !noalias !51095
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.g, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !51096)
  call void @llvm.experimental.noalias.scope.decl(metadata !51097)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @843)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.aa, i64 17, i1 false), !alias.scope !51098
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i16, ptr %i.ab, align 8, !range !84, !alias.scope !51097, !noalias !51096, !noundef !44 ; 2 uses
  %i.ad = trunc nuw i16 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.af = load i16, ptr %i.ae, align 2, !alias.scope !51097, !noalias !51096
  %.sroa.52.0.i = select i1 %i.ad, i16 %i.af, i16 undef
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !range !80, !alias.scope !51097, !noalias !51096, !noundef !44 ; 2 uses
  %i.ai = trunc nuw i32 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !51097, !noalias !51096
  %.sroa.54.0.i = select i1 %i.ai, i32 %i.ak, i32 undef
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i32, ptr %i.al, align 8, !range !80, !alias.scope !51097, !noalias !51096, !noundef !44 ; 2 uses
  %i.an = trunc nuw i32 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !alias.scope !51097, !noalias !51096
  %.sroa.56.0.i = select i1 %i.an, i32 %i.ap, i32 undef
  %.sroa.4.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.ah, ptr %.sroa.4.0..sroa_idx.i9, align 8, !alias.scope !51096, !noalias !51097
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %.sroa.54.0.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !51096, !noalias !51097
  %.sroa.6.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.am, ptr %.sroa.6.0..sroa_idx.i10, align 8, !alias.scope !51096, !noalias !51097
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %.sroa.56.0.i, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !51096, !noalias !51097
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i16 %i.ac, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !51096, !noalias !51097
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  store i16 %.sroa.52.0.i, ptr %.sroa.9.0..sroa_idx.i, align 2, !alias.scope !51096, !noalias !51097
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 4, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !51096, !noalias !51097
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aq = load <4 x i32>, ptr %i.z, align 8, !alias.scope !51097, !noalias !51096
  store <4 x i32> %i.aq, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !51096, !noalias !51097
  store i64 -9223372036854775807, ptr %i.a, align 8, !alias.scope !51096, !noalias !51097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit"
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN3nls5files23run_diagnostics_on_file28_$u7b$$u7b$closure$u7d$$u7d$17h8558d7a10591ca3aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN47_$LT$url..Url$u20$as$u20$core..fmt..Display$GT$3fmt17hf731789d5c65e344E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51106
  store ptr @944, ptr %i.a, align 8, !noalias !51107
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !51107
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !51107
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !51107
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !51107
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !51108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17hb3cac43196ebc144E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3nls5trace5Trace10reply_with17h3360ca0838d0a17eE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [128 x i8], align 8               ; 19 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.7.sroa.0.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 8 uses
  %i.l = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51209)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !51210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !51210
  store ptr @"_ZN61_$LT$nls..trace..TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h55997654ef7bce92E", ptr %i.i, align 8, !noalias !51210
  %i.m = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @"_ZN61_$LT$nls..trace..TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h55997654ef7bce92E", i64 72) acquire, align 8, !noalias !51211
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %"_ZN61_$LT$nls..trace..TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref17h40bbf71cfbe53cafE.exit.i", label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !51211
  store ptr %i.i, ptr %i.h, align 8, !noalias !51211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !51211
  store ptr %i.h, ptr %i.g, align 8, !noalias !51211
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @"_ZN61_$LT$nls..trace..TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h55997654ef7bce92E", i64 72), i1 noundef zeroext false, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @1219, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1500)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !51211
  br label %"_ZN61_$LT$nls..trace..TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref17h40bbf71cfbe53cafE.exit.i"

"_ZN61_$LT$nls..trace..TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref17h40bbf71cfbe53cafE.exit.i": ; preds = %.noexc, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !51210
  %i.o = cmpxchg ptr @"_ZN61_$LT$nls..trace..TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h55997654ef7bce92E", i32 0, i32 1 acquire monotonic, align 4, !noalias !51212
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %.noexc2, label %bb.c, !prof !46

bb.c:                                             ; preds = %"_ZN61_$LT$nls..trace..TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref17h40bbf71cfbe53cafE.exit.i"
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 4 @"_ZN61_$LT$nls..trace..TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h55997654ef7bce92E")
          to label %.noexc2 unwind label %bb.z

.noexc2:                                          ; preds = %bb.c, %"_ZN61_$LT$nls..trace..TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref17h40bbf71cfbe53cafE.exit.i"
  %i.q = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !51212
  %i.r = and i64 %i.q, 9223372036854775807
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc1b28d79b599ac34E.exit.i", label %bb.d, !prof !46

bb.d:                                             ; preds = %.noexc2
  %i.t = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc3 unwind label %bb.z

.noexc3:                                          ; preds = %bb.d
  %i.u = xor i1 %i.t, true
  %i.v = zext i1 %i.u to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc1b28d79b599ac34E.exit.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc1b28d79b599ac34E.exit.i": ; preds = %.noexc3, %.noexc2
  %.sroa.01.0.i.i.i = phi i8 [ %i.v, %.noexc3 ], [ 0, %.noexc2 ] ; 2 uses
  %i.w = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN61_$LT$nls..trace..TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h55997654ef7bce92E", i64 4) monotonic, align 4, !noalias !51212
  %.not.i = icmp eq i8 %i.w, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc1b28d79b599ac34E.exit.i"
  %i.x = trunc nuw i8 %.sroa.01.0.i.i.i to i1
  invoke fastcc void @"_ZN3nls5trace5Trace10with_trace28_$u7b$$u7b$closure$u7d$$u7d$17h5e14a1f40d52d17fE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull align 8 @"_ZN61_$LT$nls..trace..TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h55997654ef7bce92E", i1 noundef zeroext %i.x)
          to label %.noexc4 unwind label %bb.z

.noexc4:                                          ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = load i8, ptr %i.y, align 8, !range !82, !noalias !51210, !noundef !44 ; 2 uses
  %i.aa = icmp eq i8 %i.z, 2
  %.pre.i = load ptr, ptr %i.j, align 8, !noalias !51210 ; 2 uses
  br i1 %i.aa, label %bb.aa, label %bb.f

bb.f:                                             ; preds = %.noexc4, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc1b28d79b599ac34E.exit.i"
  %i.ab = phi i8 [ %i.z, %.noexc4 ], [ %.sroa.01.0.i.i.i, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc1b28d79b599ac34E.exit.i" ] ; 2 uses
  %i.ac = phi ptr [ %.pre.i, %.noexc4 ], [ @"_ZN61_$LT$nls..trace..TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h55997654ef7bce92E", %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc1b28d79b599ac34E.exit.i" ] ; 12 uses
  %i.ad = trunc nuw i8 %i.ab to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !51213)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0.i.i)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !51214)
  call void @llvm.experimental.noalias.scope.decl(metadata !51215)
  call void @llvm.experimental.noalias.scope.decl(metadata !51216)
  call void @llvm.experimental.noalias.scope.decl(metadata !51217)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.val.i.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !51218, !noalias !51219, !noundef !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.val1.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !51218, !noalias !51219, !noundef !44
  %i.ah = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h7908a68ae8a0a8eaE(i64 %.val.i.i.i.i, i64 %.val1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0), !noalias !51220 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51221)
  call void @llvm.experimental.noalias.scope.decl(metadata !51222)
  call void @llvm.experimental.noalias.scope.decl(metadata !51223)
  call void @llvm.experimental.noalias.scope.decl(metadata !51224)
  call void @llvm.experimental.noalias.scope.decl(metadata !51225)
  %i.ai = lshr i64 %i.ah, 57
  %i.aj = trunc nuw nsw i64 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !51226, !noalias !51227, !noundef !44 ; 5 uses
  %i.am = load ptr, ptr %i.ae, align 8, !alias.scope !51226, !noalias !51227, !nonnull !44, !noundef !44 ; 7 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.aj, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.an = load i64, ptr %0, align 8, !range !70, !alias.scope !51228, !noalias !51229
  %.fr50.i.i.i.i.i.i = freeze i64 %i.an
  %.not.i.i.i.i.i.i = icmp eq i64 %.fr50.i.i.i.i.i.i, -9223372036854775808
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !alias.scope !51228, !noalias !51229
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !51228, !noalias !51229 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !51228, !noalias !51229, !nonnull !44
  br i1 %.not.i.i.i.i.i.i, label %.split.i.i.i.i.i.i, label %.split.us44.i.i.i.i.i.i

.split.us44.i.i.i.i.i.i:                          ; preds = %bb.f, %bb.h
  %.sroa.9.0.i.us.i.i.i.i.i.i = phi i64 [ %i.bk, %bb.h ], [ 0, %bb.f ]
  %.pn.us.i.i.i.i.i.i = phi i64 [ %i.bl, %bb.h ], [ %i.ah, %bb.f ]
  %.sroa.01.0.i.us.i.i.i.i.i.i = and i64 %.pn.us.i.i.i.i.i.i, %i.al ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.01.0.i.us.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i = load <16 x i8>, ptr %i.ar, align 1, !noalias !51230 ; 2 uses
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not.i.not33.us.i.i.i.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.not33.us.i.i.i.i.i.i, label %._crit_edge.split.us.us.i.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.i

.lr.ph.us.i.i.i.i.i.i:                            ; preds = %.split.us44.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bb35f72f7ecf6fdE.exit.thread.us.us.i.i.i.i.i.i"
  %.sroa.06.0.i34.us.us.i.i.i.i.i.i = phi i16 [ %i.bg, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bb35f72f7ecf6fdE.exit.thread.us.us.i.i.i.i.i.i" ], [ %i.at, %.split.us44.i.i.i.i.i.i ] ; 3 uses
  %i.au = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.us.us.i.i.i.i.i.i, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %.sroa.01.0.i.us.i.i.i.i.i.i, %i.av
  %i.ax = and i64 %i.aw, %i.al                    ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax                    ; 2 uses
  %i.az = getelementptr inbounds [96 x i8], ptr %i.am, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -96
  call void @llvm.experimental.noalias.scope.decl(metadata !51231), !noalias !51232
  call void @llvm.experimental.noalias.scope.decl(metadata !51233), !noalias !51232
  call void @llvm.experimental.noalias.scope.decl(metadata !51234), !noalias !51232
  call void @llvm.experimental.noalias.scope.decl(metadata !51235), !noalias !51232
  %i.bb = load i64, ptr %i.ba, align 8, !range !70, !alias.scope !51236, !noalias !51237, !noundef !44
  %.not51.i.i.i.i.i.i = icmp eq i64 %i.bb, -9223372036854775808
  br i1 %.not51.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bb35f72f7ecf6fdE.exit.thread.us.us.i.i.i.i.i.i", label %bb.g, !prof !138

bb.g:                                             ; preds = %.lr.ph.us.i.i.i.i.i.i
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 -80
  %.val4.i.i.i.i.i.us.us.i.i.i.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !51236, !noalias !51237, !noundef !44
  %.not.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.us.us.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i, label %.split.us.us.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bb35f72f7ecf6fdE.exit.thread.us.us.i.i.i.i.i.i", !prof !88

.split.us.us.i.i.i.i.i.i:                         ; preds = %bb.g
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -88
  %.val3.i.i.i.i.i.us.us.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !51236, !noalias !51237, !nonnull !44, !noundef !44
  %bcmp.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i.us.us.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !51238, !noalias !51239
  %i.be = icmp eq i32 %bcmp.i.i.i.i.i.i.i.us.us.i.i.i.i.i.i, 0
  br i1 %i.be, label %.loopexit.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bb35f72f7ecf6fdE.exit.thread.us.us.i.i.i.i.i.i", !prof !108

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bb35f72f7ecf6fdE.exit.thread.us.us.i.i.i.i.i.i": ; preds = %.split.us.us.i.i.i.i.i.i, %bb.g, %.lr.ph.us.i.i.i.i.i.i
  %i.bf = add i16 %.sroa.06.0.i34.us.us.i.i.i.i.i.i, -1
  %i.bg = and i16 %i.bf, %.sroa.06.0.i34.us.us.i.i.i.i.i.i ; 2 uses
  %.not.i.not.us.us.i.i.i.i.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i.not.us.us.i.i.i.i.i.i, label %._crit_edge.split.us.us.i.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.i

._crit_edge.split.us.us.i.i.i.i.i.i:              ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8bb35f72f7ecf6fdE.exit.thread.us.us.i.i.i.i.i.i", %.split.us44.i.i.i.i.i.i
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i, splat (i8 -1)
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = icmp eq i16 %i.bi, 0
  br i1 %i.bj, label %bb.h, label %"_ZN4core3ptr73drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$17hfd2a6a9138bce875E.exit.i.i", !prof !49

bb.h:                                             ; preds = %._crit_edge.split.us.us.i.i.i.i.i.i
  %i.bk = add i64 %.sroa.9.0.i.us.i.i.i.i.i.i, 16 ; 2 uses
  %i.bl = add i64 %.sroa.01.0.i.us.i.i.i.i.i.i, %i.bk
end_hunk_10
begin_hunk_11_@_ZN3nls8requests7symbols7symbols17ha336fc1918c455e8E:bb.a
  %i.bv = icmp eq i64 %i.bq, %i.bu
  br i1 %i.bv, label %bb.aa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6fc98c357929d85eE.exit.i.i"

bb.w:                                             ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7b2e9d1d7aeb8c7E.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !70202)
  call void @llvm.experimental.noalias.scope.decl(metadata !70203)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.val.i.i.i7.i = load ptr, ptr %i.bw, align 8, !alias.scope !70204, !noalias !70205, !noundef !44 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.val2.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !70204, !noalias !70205 ; 2 uses
  %i.by = icmp eq ptr %.val.i.i.i7.i, null
  %i.bz = icmp eq i64 %.val2.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.by, i1 true, i1 %i.bz
  br i1 %or.cond.i.i.i.i.i.i, label %"_ZN4core3ptr226drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb08dd495b48c0bf3E.exit.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i7.i) ]
  %i.ca = mul nuw i64 %.val2.i.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i7.i, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !70206, !inline_history !70149
  br label %"_ZN4core3ptr226drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb08dd495b48c0bf3E.exit.i.i.i.i"

"_ZN4core3ptr226drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb08dd495b48c0bf3E.exit.i.i.i.i": ; preds = %bb.x, %bb.w
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$$GT$17h3c4fef65ba9a562eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.b)
          to label %"_ZN4core3ptr263drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$alloc..vec..Vec$LT$lsp_types..document_symbols..DocumentSymbol$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h0631a648ec8a834eE.exit.i.i" unwind label %bb.y, !noalias !70200, !inline_history !70149

bb.y:                                             ; preds = %"_ZN4core3ptr226drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb08dd495b48c0bf3E.exit.i.i.i.i"
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$$GT$17h3c4fef65ba9a562eE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.bm) #77
          to label %.body.i unwind label %bb.z, !noalias !70200, !inline_history !70149

bb.z:                                             ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !70207, !inline_history !70149
  unreachable

"_ZN4core3ptr263drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$alloc..vec..Vec$LT$lsp_types..document_symbols..DocumentSymbol$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h0631a648ec8a834eE.exit.i.i": ; preds = %"_ZN4core3ptr226drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb08dd495b48c0bf3E.exit.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$$GT$17h3c4fef65ba9a562eE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.bm)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hc77ec2ec492fade7E.exit.i" unwind label %bb.af, !noalias !70183, !inline_history !70149

bb.aa:                                            ; preds = %bb.v
  %i.cd = load ptr, ptr %i.b, align 8, !alias.scope !70208, !noalias !70209, !noundef !44
  %.not.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hbd84d385806d0996E.exit.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !70210, !noalias !70211, !nonnull !44, !noundef !44
  %.val4.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !70210, !noalias !70211, !nonnull !44, !noundef !44
  %i.ce = ptrtoint ptr %.val4.i.i.i.i.i to i64
  %i.cf = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.cg = sub nuw i64 %i.ce, %i.cf
  %i.ch = udiv exact i64 %i.cg, 136
  %i.ci = add nuw nsw i64 %i.ch, 1
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hbd84d385806d0996E.exit.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17hbd84d385806d0996E.exit.i.i.i.i": ; preds = %bb.ab, %bb.aa
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.ci, %bb.ab ], [ 1, %bb.aa ]
  %i.cj = load ptr, ptr %i.bm, align 8, !alias.scope !70208, !noalias !70209, !noundef !44
  %.not51.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not51.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hbd84d385806d0996E.exit61.i.i.i.i", label %bb.ac

bb.ac:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hbd84d385806d0996E.exit.i.i.i.i"
  %.val.i59.i.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !70212, !noalias !70213, !nonnull !44, !noundef !44
  %.val4.i60.i.i.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !70212, !noalias !70213, !nonnull !44, !noundef !44
  %i.ck = ptrtoint ptr %.val4.i60.i.i.i.i to i64
  %i.cl = ptrtoint ptr %.val.i59.i.i.i.i to i64
  %i.cm = sub nuw i64 %i.ck, %i.cl
  %i.cn = udiv exact i64 %i.cm, 136
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hbd84d385806d0996E.exit61.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6fc98c357929d85eE.exit.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6fc98c357929d85eE.exit.i.i_crit_edge", %bb.v
  %i.co = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6fc98c357929d85eE.exit.i.i_crit_edge" ], [ %i.bp, %bb.v ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [136 x i8], ptr %i.co, i64 %i.bq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cp, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false)
  %i.cq = add nuw nsw i64 %i.bq, 1                ; 2 uses
  store i64 %i.cq, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !70198, !noalias !70201
  br label %bb.s

bb.ad:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hbd84d385806d0996E.exit61.i.i.i.i"
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$lsp_types..document_symbols..DocumentSymbol$GT$17hcce99406d028f1daE"(ptr noalias noundef align 8 dereferenceable(136) %i.a) #77
          to label %bb.t unwind label %bb.ae

"_ZN4core6option15Option$LT$T$GT$6map_or17hbd84d385806d0996E.exit61.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hbd84d385806d0996E.exit.i.i.i.i", %bb.ac
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.cn, %bb.ac ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17hbd84d385806d0996E.exit.i.i.i.i" ]
  %i.cs = add nuw nsw i64 %.sroa.7.0.i.i.i.i, %.sroa.8.0.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.bq, i64 noundef %i.cs, i64 noundef 8, i64 noundef 136)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6fc98c357929d85eE.exit.i.i_crit_edge" unwind label %bb.ad, !noalias !70183, !inline_history !70149

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6fc98c357929d85eE.exit.i.i_crit_edge": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hbd84d385806d0996E.exit61.i.i.i.i"
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i28, align 8, !alias.scope !70198, !noalias !70201
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6fc98c357929d85eE.exit.i.i"

bb.ae:                                            ; preds = %bb.ad, %bb.t
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !70200, !inline_history !70149
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hc77ec2ec492fade7E.exit.i": ; preds = %"_ZN4core3ptr263drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$alloc..vec..Vec$LT$lsp_types..document_symbols..DocumentSymbol$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h0631a648ec8a834eE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !70184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !70185
  br label %bb.al

bb.af:                                            ; preds = %"_ZN4core3ptr263drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$alloc..vec..Vec$LT$lsp_types..document_symbols..DocumentSymbol$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h0631a648ec8a834eE.exit.i.i"
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %bb.y, %bb.af
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cu, %bb.af ], [ %i.cb, %bb.y ], [ %.pn.i.i, %bb.t ]
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$17h81c99dc3cbcd6104E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #77
          to label %.body unwind label %bb.ag, !noalias !70183, !inline_history !70140

bb.ag:                                            ; preds = %"_ZN4core3ptr323drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..into_iter..IntoIter$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$$GT$17h79ded7eec8588457E.exit.i", %.body.i, %bb.p
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body30

.body30:                                          ; preds = %bb.aj, %bb.ag
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !70183, !inline_history !70140
  unreachable

bb.ah:                                            ; preds = %bb.p, %bb.h
  %.pn.i.ph = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %i.bf, %bb.p ]
  call void @llvm.experimental.noalias.scope.decl(metadata !70214)
  call void @llvm.experimental.noalias.scope.decl(metadata !70215), !noalias !70183
  %.val.i.i = load ptr, ptr %.sroa.748.0..sroa_idx, align 8, !alias.scope !70216, !noalias !70183, !noundef !44 ; 3 uses
  %.val2.i.i = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !70216, !noalias !70183 ; 2 uses
  %i.cw = icmp eq ptr %.val.i.i, null
  %i.cx = icmp eq i64 %.val2.i.i, 0
  %or.cond.i.i.i.i29 = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %or.cond.i.i.i.i29, label %"_ZN4core3ptr226drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb08dd495b48c0bf3E.exit.i.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !70183
  %i.cy = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !70217
  br label %"_ZN4core3ptr226drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb08dd495b48c0bf3E.exit.i.i"

"_ZN4core3ptr226drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb08dd495b48c0bf3E.exit.i.i": ; preds = %bb.ai, %bb.ah
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$$GT$17h3c4fef65ba9a562eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.e)
          to label %"_ZN4core3ptr323drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..into_iter..IntoIter$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$$GT$17h79ded7eec8588457E.exit.i" unwind label %bb.aj, !noalias !70183

bb.aj:                                            ; preds = %"_ZN4core3ptr226drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb08dd495b48c0bf3E.exit.i.i"
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$$GT$17h3c4fef65ba9a562eE"(ptr noalias noundef readonly align 8 dereferenceable(32) %.sroa.5.0..sroa_idx46) #77
          to label %.body30 unwind label %bb.ak, !noalias !70183

bb.ak:                                            ; preds = %bb.aj
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !70218
  unreachable

"_ZN4core3ptr323drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..into_iter..IntoIter$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$$GT$17h79ded7eec8588457E.exit.i": ; preds = %"_ZN4core3ptr226drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb08dd495b48c0bf3E.exit.i.i"
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$$GT$17h3c4fef65ba9a562eE"(ptr noalias noundef readonly align 8 dereferenceable(32) %.sroa.5.0..sroa_idx46)
          to label %.body unwind label %bb.ag

bb.al:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hc77ec2ec492fade7E.exit.i", %"_ZN4core3ptr263drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Record$GT$$C$alloc..vec..Vec$LT$lsp_types..document_symbols..DocumentSymbol$GT$$C$nls..requests..symbols..symbols..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h0631a648ec8a834eE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !70180
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.val = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.val23 = load i64, ptr %i.dc, align 8, !noundef !44 ; 4 uses
  %i.dd = icmp eq i64 %.val23, 0
  br i1 %i.dd, label %"_ZN4core3ptr53drop_in_place$LT$nls..field_walker..FieldResolver$GT$17h0dec2567545f4370E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  %i.de = mul i64 %.val23, 20
  %i.df = icmp slt i64 %.val23, 922337203685477580
  call void @llvm.assume(i1 %i.df)
  %i.dg = and i64 %i.de, -16                      ; 2 uses
  %i.dh = add i64 %i.dg, 32                       ; 2 uses
  %i.di = add nsw i64 %.val23, 17
  %i.dj = add i64 %i.di, %i.dh                    ; 4 uses
  %i.dk = icmp uge i64 %i.dj, %i.dh
  %i.dl = icmp ult i64 %i.dj, 9223372036854775793
  call void @llvm.assume(i1 %i.dk)
  call void @llvm.assume(i1 %i.dl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.dm = icmp eq i64 %i.dj, 0
  br i1 %i.dm, label %"_ZN4core3ptr53drop_in_place$LT$nls..field_walker..FieldResolver$GT$17h0dec2567545f4370E.exit", label %bb.am

bb.am:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i
  %i.dn = sub i64 -32, %i.dg
  %i.do = getelementptr inbounds i8, ptr %.val, i64 %i.dn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 16) #66
  br label %"_ZN4core3ptr53drop_in_place$LT$nls..field_walker..FieldResolver$GT$17h0dec2567545f4370E.exit"

"_ZN4core3ptr53drop_in_place$LT$nls..field_walker..FieldResolver$GT$17h0dec2567545f4370E.exit": ; preds = %bb.al, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN3nls9contracts11LocalConfig9from_file28_$u7b$$u7b$closure$u7d$$u7d$17h7897ee94e66a9568E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.e, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70226
  store ptr @1142, ptr %i.a, align 8, !noalias !70227
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !70227
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !70227
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !70227
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !70227
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !70228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.f = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17hb3cac43196ebc144E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3nls9contracts22ContractConfigsWatcher11load_config17h97a3f663580e3870E(ptr %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [128 x i8], align 8               ; 19 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [128 x i8], align 8               ; 19 uses
  %i.g = alloca [80 x i8], align 8                ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %i.i = alloca [80 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [56 x i8], align 8                ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [264 x i8], align 8               ; 28 uses
  %i.v = alloca [264 x i8], align 8               ; 4 uses
  %i.w = alloca [72 x i8], align 8                ; 6 uses
  %i.x = alloca [72 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 10 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !70473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !70473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !70474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !70474
  store i64 0, ptr %i.u, align 8, !noalias !70474
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !70474
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !70474
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !70474
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !70474
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !70474
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !70474
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !70474
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !70474
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !70474
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 112 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 120 ; 2 uses
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !70474
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !70474
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 168 ; 5 uses
  store ptr null, ptr %i.am, align 8, !noalias !70474
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 144 ; 3 uses
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !70474
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !70474
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 2 uses
  store i64 0, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !70474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70476)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !70477
  %i.ao = icmp slt i64 %1, 0
  br i1 %i.ao, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.ap = icmp eq i64 %1, 0
  br i1 %i.ap, label %bb.z, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !70478
  %i.aq = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, 9) 1) #66, !noalias !70478 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc.i.i.i unwind label %bb.d, !noalias !70479

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %..body.i_crit_edge.i.i, %bb.d
  %.val1.i.i.i = phi i64 [ 0, %bb.d ], [ %.val1.i.pre.i.i, %..body.i_crit_edge.i.i ] ; 4 uses
  %.val.i24.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %.val.i24.pre.i.i, %..body.i_crit_edge.i.i ] ; 4 uses
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.as, %bb.d ], [ %i.cn, %..body.i_crit_edge.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70481)
  %i.at = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.at, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hed80ce919b13d653E.exit.i.i.i", label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.au = icmp eq i64 %i.aw, %.val1.i.i.i
  br i1 %i.au, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hed80ce919b13d653E.exit.i.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i, %bb.e
  %.sroa.0.0.i.i.i.i.i83 = phi i64 [ %i.aw, %bb.e ], [ 0, %.body.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %.val.i24.i.i, i64 %.sroa.0.0.i.i.i.i.i83
  %i.aw = add i64 %.sroa.0.0.i.i.i.i.i83, 1       ; 4 uses
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..program..BuilderInput$GT$17hf81cbc43415d4816E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.av)
          to label %bb.e unwind label %bb.g, !noalias !70482

bb.f:                                             ; preds = %.lr.ph85
  %i.ax = add i64 %.sroa.0.1.i.i.i.i.i84, 1       ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %.val1.i.i.i
  br i1 %i.ay, label %.body.i25.i.i, label %.lr.ph85

bb.g:                                             ; preds = %.lr.ph
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ba = icmp eq i64 %i.aw, %.val1.i.i.i
  br i1 %i.ba, label %.body.i25.i.i, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i.i.i.i84 = phi i64 [ %i.ax, %bb.f ], [ %i.aw, %bb.g ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %.val.i24.i.i, i64 %.sroa.0.1.i.i.i.i.i84
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..program..BuilderInput$GT$17hf81cbc43415d4816E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.bb) #77
          to label %bb.f unwind label %bb.h, !noalias !70482

bb.h:                                             ; preds = %.lr.ph85
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !70483
  unreachable

.body.i25.i.i:                                    ; preds = %bb.f, %bb.g
  %.val4.i.i.i = load i64, ptr %i.u, align 8, !range !74, !alias.scope !70481, !noalias !70484, !noundef !44 ; 2 uses
  %i.bd = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.bd, label %.body26.i.i, label %bb.i

bb.i:                                             ; preds = %.body.i25.i.i
  %i.be = mul nuw i64 %.val4.i.i.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i24.i.i, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !70482
  br label %.body26.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hed80ce919b13d653E.exit.i.i.i": ; preds = %bb.e, %.body.i.i.i
  %.val2.i.i.i = load i64, ptr %i.u, align 8, !range !74, !alias.scope !70481, !noalias !70484, !noundef !44 ; 2 uses
  %i.bf = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bf, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..BuilderInput$GT$$GT$17he9720b02d99271c7E.exit.i.i", label %bb.j

bb.j:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hed80ce919b13d653E.exit.i.i.i"
  %i.bg = mul nuw i64 %.val2.i.i.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i24.i.i, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !70482
  br label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..BuilderInput$GT$$GT$17he9720b02d99271c7E.exit.i.i"

end_hunk_11
begin_hunk_12_@_ZN4core4iter6traits8iterator8Iterator7collect17hefa389c7806d30c0E:bb.a

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !92900, !noalias !92901
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !alias.scope !92900, !noalias !92901
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8, !alias.scope !92900, !noalias !92901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !92898
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val11.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !92902, !noalias !92899, !noundef !44 ; 2 uses
  %i.k = icmp eq i64 %.val11.i.i.i.i, 0
  br i1 %i.k, label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h7d8a6988dbdef636E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val10.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !92903, !noalias !92899, !nonnull !44, !noundef !44
  %i.l = shl nuw i64 %.val11.i.i.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !92904
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h7d8a6988dbdef636E.exit"

bb.f:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %i.g, 0
  br i1 %i.n, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !92905
  br label %bb.v

bb.h:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !92898 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !92906
  %i.o = tail call noundef align 8 dereferenceable_or_null(352) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 352, i64 noundef range(i64 1, 9) 8) #66, !noalias !92906 ; 6 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 352, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #75
          to label %.noexc.i.i.i.i unwind label %bb.f, !noalias !92898

.noexc.i.i.i.i:                                   ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.510.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx4.i.i.i.i, i64 72, i1 false), !noalias !92898
  store i64 %i.g, ptr %i.o, align 8, !noalias !92898
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !noalias !92898
  store i64 4, ptr %i.d, align 8, !noalias !92898
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !92898
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !92898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !92898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !92899
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92910)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92911
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.k

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i.i.i.i.i", %bb.j
  %i.q = phi ptr [ %i.ad, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i.i.i.i.i" ], [ %i.o, %bb.j ]
  %i.r = phi i64 [ %i.af, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i.i.i.i.i" ], [ 1, %bb.j ] ; 5 uses
  invoke fastcc void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h10408aaec58620caE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.n unwind label %bb.m, !noalias !92912

"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i.i.i.i": ; preds = %bb.s, %bb.r, %bb.m
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.v, %bb.m ], [ %i.ag, %bb.r ], [ %i.ag, %bb.s ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val10.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !92913, !noalias !92912, !noundef !44 ; 2 uses
  %i.t = icmp eq i64 %.val10.i.i.i.i.i.i, 0
  br i1 %i.t, label %.body.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i.i.i.i"
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !92914, !noalias !92912, !nonnull !44, !noundef !44
  %i.u = shl nuw i64 %.val10.i.i.i.i.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !92915
  br label %.body.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.k
  %i.w = load i64, ptr %i.a, align 8, !range !70, !noalias !92916, !noundef !44 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.w, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.5.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !92916 ; 3 uses
  %i.x = icmp samesign ult i64 %i.r, 104811045873349726
  tail call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.d, align 8, !range !74, !alias.scope !92917, !noalias !92918, !noundef !44
  %i.z = icmp eq i64 %i.r, %i.y
  br i1 %i.z, label %bb.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val8.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !92913, !noalias !92912, !noundef !44 ; 2 uses
  %i.ab = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.ab, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val7.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !92914, !noalias !92912, !nonnull !44, !noundef !44
  %i.ac = shl nuw i64 %.val8.i.i.i.i.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !92919
  br label %bb.u

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i_crit_edge.i.i.i.i", %bb.o
  %i.ad = phi ptr [ %.pre.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i_crit_edge.i.i.i.i" ], [ %i.q, %bb.o ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [88 x i8], ptr %i.ad, i64 %i.r ; 3 uses
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.59.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, i64 72, i1 false), !noalias !92916
  store i64 %i.w, ptr %i.ae, align 8, !noalias !92916
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !92916
  %i.af = add nuw nsw i64 %i.r, 1                 ; 2 uses
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !92917, !noalias !92918
  br label %bb.k

bb.r:                                             ; preds = %bb.t
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = icmp eq i64 %i.w, 0
  br i1 %i.ah, label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !92920
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i.i.i.i"

bb.t:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.r, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 88)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.r, !noalias !92918

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.t
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !92917, !noalias !92918
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i.i.i.i.i"

.body.i.i.i.i:                                    ; preds = %bb.l, %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i.i.i.i"
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$alloc..vec..Vec$LT$url..Url$GT$$GT$17h91867fe8020eb24aE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #77, !noalias !92898
  br label %"_ZN4core3ptr307drop_in_place$LT$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..filter_map..FilterMap$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$C$nls..world..World..uris$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h299250a3a2d0a0bdE.exit12.i.i.i.i"

bb.u:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !92901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !92898
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h7d8a6988dbdef636E.exit"

"_ZN4core3ptr307drop_in_place$LT$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..filter_map..FilterMap$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$C$nls..world..World..uris$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h299250a3a2d0a0bdE.exit12.i.i.i.i": ; preds = %bb.w, %bb.v, %.body.i.i.i.i
  %.pn13.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i, %.body.i.i.i.i ], [ %.pn.ph.i.i.i.i, %bb.v ], [ %.pn.ph.i.i.i.i, %bb.w ]
  resume { ptr, i32 } %.pn13.i.i.i.i

bb.v:                                             ; preds = %bb.g, %bb.f, %bb.b
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.m, %bb.f ], [ %i.m, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val9.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !92902, !noalias !92899, !noundef !44 ; 2 uses
  %i.aj = icmp eq i64 %.val9.i.i.i.i, 0
  br i1 %i.aj, label %"_ZN4core3ptr307drop_in_place$LT$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..filter_map..FilterMap$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$C$nls..world..World..uris$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h299250a3a2d0a0bdE.exit12.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val8.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !92903, !noalias !92899, !nonnull !44, !noundef !44
  %i.ak = shl nuw i64 %.val9.i.i.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !92921
  br label %"_ZN4core3ptr307drop_in_place$LT$core..iter..adapters..cloned..Cloned$LT$core..iter..adapters..filter_map..FilterMap$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$C$nls..world..World..uris$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h299250a3a2d0a0bdE.exit12.i.i.i.i"

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h7d8a6988dbdef636E.exit": ; preds = %bb.d, %bb.e, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !92897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !92889
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hfdffae3f0a6ef50cE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [296 x i8], align 8               ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 16               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92956)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !92957
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92958)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, i8 0, i64 17, i1 false), !noalias !92957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !92959
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92960)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !92961, !noalias !92962
  store i64 0, ptr %i.b, align 8, !alias.scope !92963, !noalias !92964
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.h = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb80c32317db38c40E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.b unwind label %.loopexit.split-lp.i.i.i.i, !noalias !92959 ; 2 uses

.body.i.i.i.i:                                    ; preds = %bb.e, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %i.m, %bb.e ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr407drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h89ade5fadabb629aE"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #77
          to label %.body.i.i.i unwind label %bb.u, !noalias !92965

.loopexit.i.i.i.i:                                ; preds = %bb.t, %bb.s, %bb.p, %bb.o, %bb.k, %bb.h
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.l, %bb.a
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8, !alias.scope !92966, !noalias !92967
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !92966, !noalias !92967
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92959
  store i64 1, ptr %i.a, align 8, !noalias !92959
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8, !noalias !92959
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !92959
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !92959
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !92968
  %i.k = tail call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !92968 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i.i.i.i", !prof !47

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #75
          to label %.noexc11.i.i.i.i unwind label %bb.e, !noalias !92959

.noexc11.i.i.i.i:                                 ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h950ffcace6aea9cdE"(ptr noalias noundef align 8 dereferenceable(280) %i.j)
          to label %.body.i.i.i.i unwind label %bb.f, !noalias !92959

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !92959
  unreachable

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i.i.i.i": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.k, ptr noundef nonnull align 8 dereferenceable(296) %i.a, i64 296, i1 false), !noalias !92959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92959
  store ptr %i.k, ptr %i.c, align 16, !alias.scope !92958, !noalias !92965
  br label %.preheader

.preheader:                                       ; preds = %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i.i.i.i", %bb.b
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader
  %i.o = phi i64 [ 1, %.preheader ], [ %.be, %.backedge ]
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit15thread-pre-split.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb80c32317db38c40E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc14.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !92965 ; 2 uses

.noexc14.i.i.i.i:                                 ; preds = %bb.h
  store i64 1, ptr %i.b, align 8, !alias.scope !92969, !noalias !92970
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !92969, !noalias !92970
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit15thread-pre-split.i.i.i.i": ; preds = %bb.g
  %.pr.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !92959
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit15.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit15thread-pre-split.i.i.i.i", %.noexc14.i.i.i.i
  %i.r = phi ptr [ %.pr.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit15thread-pre-split.i.i.i.i" ], [ %i.q, %.noexc14.i.i.i.i ]
  %.not7.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit15.i.i.i.i"
  %i.s = load ptr, ptr %i.c, align 16, !alias.scope !92958, !noalias !92965, !noundef !44
  %.not8.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i.i, label %bb.l, label %bb.k, !prof !49

bb.j:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit15.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr407drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h89ade5fadabb629aE"(ptr noalias noundef align 8 dereferenceable(56) %i.b)
          to label %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hc76fab85b62df238E.exit" unwind label %bb.v, !noalias !92957

bb.k:                                             ; preds = %bb.i
  %i.t = invoke fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h2c600cc88c2d579cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %.loopexit.i.i.i.i, !noalias !92965 ; 4 uses

bb.l:                                             ; preds = %bb.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #75
          to label %bb.m unwind label %.loopexit.split-lp.i.i.i.i, !noalias !92965

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.u = load i64, ptr %i.t, align 8, !range !60, !noalias !92965, !noundef !44
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.v, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = load i8, ptr %i.e, align 16, !alias.scope !92958, !noalias !92965, !noundef !44
  %i.y = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17ha923ffb96d336386E"(ptr noalias noundef align 8 dereferenceable(56) %i.b, ptr noalias noundef align 8 dereferenceable(272) %i.w, i8 noundef %i.x)
          to label %bb.r unwind label %.loopexit.i.i.i.i, !noalias !92965

bb.p:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 272 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !92965, !noundef !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 264 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !92965, !noundef !44
  %i.ad = sub i64 %i.aa, %i.ac                    ; 2 uses
  %i.ae = sub i64 32, %i.ad
  invoke fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h8da437376b9cc57fE"(ptr noalias noundef align 8 dereferenceable(272) %i.w, ptr noalias noundef align 8 dereferenceable(56) %i.b, i64 noundef %i.ae)
          to label %bb.q unwind label %.loopexit.i.i.i.i, !noalias !92965

bb.q:                                             ; preds = %bb.p
  %i.af = load i64, ptr %i.z, align 8, !noalias !92965, !noundef !44
  %i.ag = load i64, ptr %i.ab, align 8, !noalias !92965, !noundef !44
  %i.ah = add i64 %i.ad, %i.ag
  %i.ai = sub i64 %i.af, %i.ah
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.ai, %bb.q ], [ %i.y, %bb.o ]
  %i.aj = load i64, ptr %i.d, align 8, !alias.scope !92958, !noalias !92965, !noundef !44
  %i.ak = add i64 %i.aj, %.sroa.03.0.i.i.i.i
  store i64 %i.ak, ptr %i.d, align 8, !alias.scope !92958, !noalias !92965
  %i.al = load i64, ptr %i.b, align 8, !range !60, !alias.scope !92971, !noalias !92972, !noundef !44
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit17thread-pre-split.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb80c32317db38c40E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc16.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !92965 ; 2 uses

.noexc16.i.i.i.i:                                 ; preds = %bb.s
  store i64 1, ptr %i.b, align 8, !alias.scope !92971, !noalias !92972
  store ptr %i.an, ptr %i.g, align 8, !alias.scope !92971, !noalias !92972
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit17.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit17thread-pre-split.i.i.i.i": ; preds = %bb.r
  %.pr18.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !92959
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit17.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit17.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit17thread-pre-split.i.i.i.i", %.noexc16.i.i.i.i
  %i.ao = phi ptr [ %.pr18.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit17thread-pre-split.i.i.i.i" ], [ %i.an, %.noexc16.i.i.i.i ]
  %.not9.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i.i.i, label %.backedge, label %bb.t

bb.t:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit17.i.i.i.i"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17hb7996dbbd61742eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !92965

._crit_edge.i.i.i.i:                              ; preds = %bb.t
  %.pre.pre.i.i.i.i = load i64, ptr %i.b, align 8, !range !60, !alias.scope !92969, !noalias !92970
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit17.i.i.i.i"
  %.be = phi i64 [ %.pre.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ 1, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h6d86cfa7b8bd5249E.exit17.i.i.i.i" ]
  br label %bb.g

bb.u:                                             ; preds = %.body.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !92965
  unreachable

bb.v:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.v, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aq, %bb.v ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !92973)
  call void @llvm.experimental.noalias.scope.decl(metadata !92974)
  %i.ar = load ptr, ptr %i.c, align 16, !alias.scope !92975, !noalias !92957, !noundef !44 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hcfbc48a7f0860ce0E.exit.i.i.i", label %bb.w

bb.w:                                             ; preds = %.body.i.i.i
  %i.at = load i64, ptr %i.ar, align 8, !noalias !92976, !noundef !44
  %i.au = add i64 %i.at, -1                       ; 2 uses
  store i64 %i.au, ptr %i.ar, align 8, !noalias !92976
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.x, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hcfbc48a7f0860ce0E.exit.i.i.i"

bb.x:                                             ; preds = %bb.w
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hcfbc48a7f0860ce0E.exit.i.i.i" unwind label %bb.y, !noalias !92957

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !92957
  unreachable

"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hcfbc48a7f0860ce0E.exit.i.i.i": ; preds = %bb.x, %bb.w, %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hc76fab85b62df238E.exit": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92959
  %.sroa.3.0.copyload5.i = load i64, ptr %i.e, align 16, !noalias !92977
  %.sroa.2.0.copyload3.i = load i64, ptr %i.d, align 8, !noalias !92977
  %i.ax = load <2 x i64>, ptr %i.c, align 16, !noalias !92977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !92957
  store <2 x i64> %i.ax, ptr %0, align 8, !alias.scope !92956, !noalias !92978
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.copyload5.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !92956, !noalias !92978
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ay, align 8, !alias.scope !92956, !noalias !92978
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.2.0.copyload3.i, ptr %i.az, align 8, !alias.scope !92956, !noalias !92978
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator8find_map17hb291ecabd4d54a34E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !93048, !noalias !93049, !nonnull !44, !noundef !44 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8, !alias.scope !93048, !noalias !93049 ; 2 uses
  %i.e = icmp eq ptr %.promoted, %i.c
  br i1 %i.e, label %"_ZN4core3ptr108drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$17h2b2ef479273bd9beE.exit", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c2144e16acfd173E.exit.i.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c2144e16acfd173E.exit.i.lr.ph": ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !nonnull !44, !align !50
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !44, !align !50
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !44, !align !50
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c2144e16acfd173E.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c2144e16acfd173E.exit.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c2144e16acfd173E.exit.i.lr.ph", %bb.l
  %i.k = phi ptr [ %.promoted, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c2144e16acfd173E.exit.i.lr.ph" ], [ %i.l, %bb.l ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93051), !noalias !93052
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 3 uses
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !93048, !noalias !93049
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !noalias !93053 ; 5 uses
  %.not.i4 = icmp eq i64 %.sroa.0.0.copyload.i, -9223372036854775808
  br i1 %.not.i4, label %"_ZN4core3ptr108drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$17h2b2ef479273bd9beE.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c2144e16acfd173E.exit.i"
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.63.0.copyload.i = load i32, ptr %.sroa.63.0..sroa_idx.i, align 8, !noalias !93053
  %.sroa.9.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !93054, !nonnull !44, !noundef !44 ; 4 uses
  %.sroa.9.sroa.6.0..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.9.sroa.6.0.copyload = load i64, ptr %.sroa.9.sroa.6.0..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !noalias !93054 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93055
  %i.m = icmp ult i64 %.sroa.9.sroa.6.0.copyload, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m), !noalias !93056
  %i.n = shl nuw i64 %.sroa.9.sroa.6.0.copyload, 4 ; 2 uses
  %i.o = icmp samesign ugt i64 %.sroa.9.sroa.6.0.copyload, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.p = icmp eq i64 %.sroa.9.sroa.6.0.copyload, 0
  br i1 %i.p, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !93057, !inline_history !93018
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, 9) 8) #66, !noalias !93057, !inline_history !93018 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.c
  %i.s = add nuw nsw i64 %.sroa.9.sroa.6.0.copyload, 2305843009213693951
  %i.t = and i64 %i.s, 2305843009213693951        ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %i.v = icmp samesign ult i64 %i.t, 3
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.u, 4611686018427387900
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #75
          to label %.noexc.i.i.i.i.i.i unwind label %bb.f, !noalias !93058, !inline_history !93018

.noexc.i.i.i.i.i.i:                               ; preds = %bb.d
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.w = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.x = phi ptr [ %.sroa.9.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.y = load ptr, ptr %i.x, align 8, !noalias !93059, !nonnull !44, !align !50, !noundef !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.w ; 2 uses
  store ptr %i.y, ptr %i.aa, align 8, !noalias !93060
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 0, ptr %i.ab, align 8, !noalias !93061
  %i.ac = load ptr, ptr %i.z, align 8, !noalias !93059, !nonnull !44, !align !50, !noundef !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ac, ptr %i.af, align 8, !noalias !93060
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 0, ptr %i.ag, align 8, !noalias !93061
  %i.ah = load ptr, ptr %i.ad, align 8, !noalias !93059, !nonnull !44, !align !50, !noundef !44
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ah, ptr %i.ak, align 8, !noalias !93060
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 0, ptr %i.al, align 8, !noalias !93061
  %i.am = load ptr, ptr %i.ai, align 8, !noalias !93059, !nonnull !44, !align !50, !noundef !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store ptr %i.am, ptr %i.ap, align 8, !noalias !93060
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  store i64 0, ptr %i.aq, align 8, !noalias !93061
  %i.ar = add nuw nsw i64 %i.w, 4                 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ar, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init122 = phi ptr [ %.sroa.9.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.an, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod124 = icmp ne i64 %xtraiter, 0
end_hunk_12
begin_hunk_13_@"_ZN51_$LT$T$u20$as$u20$core..clone..uninit..CopySpec$GT$9clone_one17h9a476efb04ad1dbbE":bb.a
  %i.h = select i1 %i.e, i64 %i.g, i64 0
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.r
    i64 2, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ne i32 %i.d, 4
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i32 %i.d, -3
  %i.k = icmp samesign ugt i32 %i.d, 2
  %narrow.i.i = select i1 %i.k, i32 %i.j, i32 1
  switch i32 %narrow.i.i, label %bb.d [
    i32 0, label %"_ZN82_$LT$nickel_lang_core..typecheck..UnifRecordRows$u20$as$u20$core..clone..Clone$GT$5clone17h5cb19b1bbc1d6af3E.exit"
    i32 1, label %bb.e
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98523)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !98524, !inline_history !98507
  %i.m = tail call noalias noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !98524, !inline_history !98507 ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hbed5e7b9f66e2ba4E.exit.i", !prof !49

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #75, !noalias !98524, !inline_history !98507
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hbed5e7b9f66e2ba4E.exit.i": ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !alias.scope !98523, !noalias !98525, !nonnull !44, !align !50, !noundef !44 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98527)
  %i.p = load i64, ptr %i.o, align 8, !range !51, !alias.scope !98527, !noalias !98528, !noundef !44
  %i.q = tail call i64 @llvm.usub.sat.i64(i64 %i.p, i64 17)
  switch i64 %i.q, label %default.unreachable [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

default.unreachable:                              ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hbed5e7b9f66e2ba4E.exit.i"
  unreachable

bb.g:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hbed5e7b9f66e2ba4E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98529
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.o)
          to label %.noexc2 unwind label %bb.j, !inline_history !98511

.noexc2:                                          ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.s = load <2 x i16>, ptr %i.r, align 8, !alias.scope !98527, !noalias !98528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.037, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !98530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98529
  br label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7fabd4b3095ca580E.exit"

bb.h:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hbed5e7b9f66e2ba4E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.037, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 88, i1 false), !alias.scope !98531, !noalias !98524
  %.sroa.638.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.t = load <2 x i16>, ptr %.sroa.638.0..sroa_idx41, align 8, !alias.scope !98531, !noalias !98524
  %.sroa.848.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  %.sroa.848.0.copyload52 = load i32, ptr %.sroa.848.0..sroa_idx51, align 4, !alias.scope !98531, !noalias !98524
  br label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7fabd4b3095ca580E.exit"

bb.i:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hbed5e7b9f66e2ba4E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.037, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 88, i1 false), !alias.scope !98531, !noalias !98524
  %.sroa.638.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.u = load <2 x i16>, ptr %.sroa.638.0..sroa_idx39, align 8, !alias.scope !98531, !noalias !98524
  %.sroa.848.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  %.sroa.848.0.copyload50 = load i32, ptr %.sroa.848.0..sroa_idx49, align 4, !alias.scope !98531, !noalias !98524
  br label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7fabd4b3095ca580E.exit"

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 96, i64 noundef 8) #66, !noalias !98524, !inline_history !98507
  br label %common.resume

"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7fabd4b3095ca580E.exit": ; preds = %bb.i, %bb.h, %.noexc2
  %.sroa.848.0 = phi i32 [ undef, %.noexc2 ], [ %.sroa.848.0.copyload52, %bb.h ], [ %.sroa.848.0.copyload50, %bb.i ]
  %i.w = phi <2 x i16> [ %i.s, %.noexc2 ], [ %i.t, %bb.h ], [ %i.u, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.m, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.037, i64 88, i1 false), !noalias !98532
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store <2 x i16> %i.w, ptr %.sroa.638.0..sroa_idx, align 8, !noalias !98532
  %.sroa.848.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 92
  store i32 %.sroa.848.0, ptr %.sroa.848.0..sroa_idx, align 4, !noalias !98532
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.037)
  %i.x = ptrtoint ptr %i.m to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98533)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !98534, !inline_history !98516
  %i.y = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !98534, !inline_history !98516 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.k, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hc4246bc1908725aaE.exit.i", !prof !49

bb.k:                                             ; preds = %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7fabd4b3095ca580E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #75
          to label %.noexc unwind label %bb.o, !inline_history !98516

.noexc:                                           ; preds = %bb.k
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hc4246bc1908725aaE.exit.i": ; preds = %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7fabd4b3095ca580E.exit"
  %i.aa = load ptr, ptr %i.l, align 8, !alias.scope !98533, !noalias !98525, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98535
  invoke fastcc void @"_ZN82_$LT$nickel_lang_core..typecheck..UnifRecordRows$u20$as$u20$core..clone..Clone$GT$5clone17h5cb19b1bbc1d6af3E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa)
          to label %bb.p unwind label %bb.l, !noalias !98534, !inline_history !98519

bb.l:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hc4246bc1908725aaE.exit.i"
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 48, i64 noundef 8) #66, !noalias !98534, !inline_history !98516
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.718, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.ac, i64 20, i1 false)
  br label %"_ZN82_$LT$nickel_lang_core..typecheck..UnifRecordRows$u20$as$u20$core..clone..Clone$GT$5clone17h5cb19b1bbc1d6af3E.exit"

bb.n:                                             ; preds = %bb.c
  br label %"_ZN82_$LT$nickel_lang_core..typecheck..UnifRecordRows$u20$as$u20$core..clone..Clone$GT$5clone17h5cb19b1bbc1d6af3E.exit"

bb.o:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %i.ab, %bb.l ]
  invoke fastcc void @"_ZN4core3ptr126drop_in_place$LT$nickel_lang_parser..typ..RecordRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17he42eddaa7a4519eaE"(ptr nonnull %i.m) #77
          to label %common.resume unwind label %bb.q, !noalias !98525, !inline_history !98520

bb.p:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hc4246bc1908725aaE.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !98535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.718, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.434.0..sroa_idx, i64 16, i1 false)
  br label %"_ZN82_$LT$nickel_lang_core..typecheck..UnifRecordRows$u20$as$u20$core..clone..Clone$GT$5clone17h5cb19b1bbc1d6af3E.exit"

bb.q:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !98525, !inline_history !98520
  unreachable

bb.r:                                             ; preds = %bb.a
  %.sroa.0.sroa.0.0.copyload21 = load i64, ptr %0, align 8, !alias.scope !98536
  %.sroa.0.sroa.7.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.718, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.sroa.7.0..sroa_idx27, i64 20, i1 false)
  %.sroa.0.sroa.8.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.sroa.8.0.copyload31 = load ptr, ptr %.sroa.0.sroa.8.0..sroa_idx30, align 8, !alias.scope !98536
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.8.0.copyload14 = load i32, ptr %.sroa.8.0..sroa_idx13, align 4, !alias.scope !98536
  br label %"_ZN82_$LT$nickel_lang_core..typecheck..UnifRecordRows$u20$as$u20$core..clone..Clone$GT$5clone17h5cb19b1bbc1d6af3E.exit"

bb.s:                                             ; preds = %bb.a
  %.sroa.0.sroa.0.0.copyload20 = load i64, ptr %0, align 8, !alias.scope !98536
  %.sroa.0.sroa.7.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.718, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.sroa.7.0..sroa_idx26, i64 20, i1 false)
  %.sroa.0.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.sroa.8.0.copyload29 = load ptr, ptr %.sroa.0.sroa.8.0..sroa_idx28, align 8, !alias.scope !98536
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.8.0.copyload12 = load i32, ptr %.sroa.8.0..sroa_idx11, align 4, !alias.scope !98536
  br label %"_ZN82_$LT$nickel_lang_core..typecheck..UnifRecordRows$u20$as$u20$core..clone..Clone$GT$5clone17h5cb19b1bbc1d6af3E.exit"

"_ZN82_$LT$nickel_lang_core..typecheck..UnifRecordRows$u20$as$u20$core..clone..Clone$GT$5clone17h5cb19b1bbc1d6af3E.exit": ; preds = %bb.m, %bb.n, %bb.p, %bb.c, %bb.r, %bb.s
  %.sroa.0.sroa.8.0 = phi ptr [ %.sroa.0.sroa.8.0.copyload29, %bb.s ], [ %.sroa.0.sroa.8.0.copyload31, %bb.r ], [ undef, %bb.n ], [ %i.y, %bb.p ], [ undef, %bb.m ], [ undef, %bb.c ]
  %.sroa.0.sroa.6.0 = phi i32 [ %i.d, %bb.s ], [ %i.d, %bb.r ], [ 6, %bb.n ], [ %i.d, %bb.p ], [ 5, %bb.m ], [ 3, %bb.c ]
  %.sroa.0.sroa.0.0 = phi i64 [ %.sroa.0.sroa.0.0.copyload20, %bb.s ], [ %.sroa.0.sroa.0.0.copyload21, %bb.r ], [ undef, %bb.n ], [ %i.x, %bb.p ], [ undef, %bb.m ], [ undef, %bb.c ]
  %.sroa.8.0 = phi i32 [ %.sroa.8.0.copyload12, %bb.s ], [ %.sroa.8.0.copyload14, %bb.r ], [ undef, %bb.n ], [ undef, %bb.p ], [ undef, %bb.m ], [ undef, %bb.c ]
  %.sroa.6.0.in = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.sroa.0.0, ptr %1, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sroa.0.sroa.6.0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.718, i64 20, i1 false)
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %.sroa.0.sroa.8.0, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load <2 x i16>, ptr %.sroa.6.0.in, align 8, !alias.scope !98537
  store <2 x i16> %i.af, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 4
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17h31890de8827fa45bE"(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1665, ptr %i.a, align 8, !noalias !98541
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 37, ptr %i.e, align 8, !noalias !98541
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.f, align 8, !noalias !98541
  %i.g = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h681b652c6d4fbf4aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.g

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr38drop_in_place$LT$csv..error..Error$GT$17h6e3c872a3eb55888E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #77
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17hc19674e3eddfbe51E"(ptr noundef nonnull %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1666, ptr %i.a, align 8, !noalias !98544
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 22, ptr %i.e, align 8, !noalias !98544
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.f, align 8, !noalias !98544
  %i.g = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h413489e1b66adf20E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.g

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h0c80501cefa94e37E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #77
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN52_$LT$std..path..Path$u20$as$u20$core..hash..Hash$GT$4hash17hd65b7de8719511b9E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %2) unnamed_addr #39 {
.split:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.split
  %.sroa.06.0.lcssa = phi i64 [ 0, %.split ], [ %.sroa.06.2, %bb.b ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ 0, %.split ], [ %.sroa.0.1, %bb.b ] ; 3 uses
  %i.b = icmp ult i64 %.sroa.0.0.lcssa, %1
  br i1 %i.b, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h06409676d1619bb7E.exit", label %bb.a

.lr.ph:                                           ; preds = %.split, %bb.b
  %.sroa.0.026 = phi i64 [ %.sroa.0.1, %bb.b ], [ 0, %.split ] ; 4 uses
  %.sroa.06.025 = phi i64 [ %.sroa.06.2, %bb.b ], [ 0, %.split ] ; 3 uses
  %.sroa.011.024 = phi i64 [ %i.c, %bb.b ], [ 0, %.split ] ; 4 uses
  %i.c = add nuw i64 %.sroa.011.024, 1            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.011.024
  %i.e = load i8, ptr %i.d, align 1, !noundef !44
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.c, label %bb.b

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h06409676d1619bb7E.exit": ; preds = %._crit_edge
  %i.g = sub nuw i64 %1, %.sroa.0.0.lcssa         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.lcssa
  %i.i = add i64 %i.g, %.sroa.06.0.lcssa          ; 2 uses
  %i.j = tail call i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 62)
  tail call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h1f31902e5fe51f38E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.g)
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h06409676d1619bb7E.exit"
  %.sroa.06.1 = phi i64 [ %i.j, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h06409676d1619bb7E.exit" ], [ %.sroa.06.0.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98547
  store i64 %.sroa.06.1, ptr %i.a, align 8, !noalias !98547
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h1f31902e5fe51f38E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98547
  ret void

bb.b:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.06.2 = phi i64 [ %.sroa.06.3, %bb.g ], [ %.sroa.06.025, %.lr.ph ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.t, %bb.g ], [ %.sroa.0.026, %.lr.ph ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.k = icmp ugt i64 %.sroa.011.024, %.sroa.0.026
  br i1 %i.k, label %bb.d, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h06409676d1619bb7E.exit21"

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h06409676d1619bb7E.exit21": ; preds = %bb.c, %bb.d
  %.sroa.06.3 = phi i64 [ %i.q, %bb.d ], [ %.sroa.06.025, %bb.c ]
  %i.l = sub nuw i64 %1, %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 3 uses
  switch i64 %i.l, label %bb.h [
    i64 1, label %bb.e
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = sub nuw i64 %.sroa.011.024, %.sroa.0.026 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.026
  %i.p = add i64 %i.n, %.sroa.06.025              ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 62)
  tail call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h1f31902e5fe51f38E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.n)
  br label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h06409676d1619bb7E.exit21"

bb.e:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h06409676d1619bb7E.exit21"
  %i.r = load i8, ptr %i.m, align 1, !noundef !44
  %i.s = icmp eq i8 %i.r, 46
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h06409676d1619bb7E.exit21", %bb.h, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.e, %bb.f
  %.sroa.015.0 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.i ]
  %i.t = add i64 %.sroa.015.0, %i.c
  br label %bb.b

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h06409676d1619bb7E.exit21"
  %i.u = load i8, ptr %i.m, align 1, !noundef !44
  %i.v = icmp eq i8 %i.u, 46
  br i1 %i.v, label %bb.i, label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.x = load i8, ptr %i.w, align 1, !noundef !44
  %i.y = icmp eq i8 %i.x, 47
  br i1 %i.y, label %bb.g, label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h71ca773022667bfcE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @355, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN54_$LT$csv..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hd7a9ac03e0f2dc34E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @355, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1370)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN54_$LT$nls..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h38b67b2877f1f0adE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = load i64, ptr %0, align 8, !range !154, !noundef !44 ; 3 uses
  %i.i = icmp ne i64 %i.h, -9223372036854775802
  tail call void @llvm.assume(i1 %i.i)
  %i.j = xor i64 %i.h, -9223372036854775808
  %i.k = icmp slt i64 %i.h, 0
  %i.l = select i1 %i.k, i64 %i.j, i64 6
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.g, align 8
  %i.n = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1371, i64 noundef 18, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1275)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.f, align 8
  %i.p = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1373, i64 noundef 11, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.e, align 8
  %i.r = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1374, i64 noundef 12, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.d, align 8
  %i.u = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1376, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1377, i64 noundef 3, ptr noundef nonnull align 1 %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1375, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @938, i64 noundef 4, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1378, i64 noundef 14)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.c, align 8
  %i.x = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1379, i64 noundef 15, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1275)
end_hunk_13
begin_hunk_14_@"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h35bd200d719eb9d2E":bb.a
; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h42a8993cd94104cfE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #41 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !44, !noundef !44 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Weak$LT$bool$C$$RF$alloc..alloc..Global$GT$$GT$17h009b711c42fd6e9bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Weak$LT$bool$C$$RF$alloc..alloc..Global$GT$$GT$17h009b711c42fd6e9bE.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #66
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Weak$LT$bool$C$$RF$alloc..alloc..Global$GT$$GT$17h009b711c42fd6e9bE.exit"

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Weak$LT$bool$C$$RF$alloc..alloc..Global$GT$$GT$17h009b711c42fd6e9bE.exit": ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5f85d8d250eb5bfeE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #41 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !44, !noundef !44 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load i64, ptr %i.b, align 8, !range !74, !alias.scope !146, !noundef !44 ; 2 uses
  %i.c = icmp eq i64 %.val, 0
  br i1 %i.c, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !44, !noundef !44
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !99806
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit": ; preds = %bb.b, %bb.a
  %i.e = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.e, label %"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..path..PathBuf$C$$RF$alloc..alloc..Global$GT$$GT$17he7e933543da709b8E.exit4", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..path..PathBuf$C$$RF$alloc..alloc..Global$GT$$GT$17he7e933543da709b8E.exit4"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #66
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..path..PathBuf$C$$RF$alloc..alloc..Global$GT$$GT$17he7e933543da709b8E.exit4"

"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..path..PathBuf$C$$RF$alloc..alloc..Global$GT$$GT$17he7e933543da709b8E.exit4": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit", %bb.c, %bb.d
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h7a5ddac32af3f235E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !44, !noundef !44 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$17h50071dbbadb81addE"(ptr noalias noundef align 8 dereferenceable(32) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %"_ZN4core3ptr152drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h7a1899773b66f035E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr152drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h7a1899773b66f035E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #66
  br label %"_ZN4core3ptr152drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h7a1899773b66f035E.exit"

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %"_ZN4core3ptr152drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h7a1899773b66f035E.exit2", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %"_ZN4core3ptr152drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h7a1899773b66f035E.exit2"

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #66
  br label %"_ZN4core3ptr152drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h7a1899773b66f035E.exit2"

"_ZN4core3ptr152drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h7a1899773b66f035E.exit2": ; preds = %bb.e, %bb.f, %bb.g
  ret void

"_ZN4core3ptr152drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h7a1899773b66f035E.exit": ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hafc72f3ee1fb378aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #41 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !44, !noundef !44 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call fastcc void @"_ZN4core3ptr90drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$nls..contracts..LocalConfigs$GT$$GT$17h0a827b2f59346a23E"(ptr noalias noundef align 8 dereferenceable(64) %i.b)
  %i.c = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %"_ZN4core3ptr142drop_in_place$LT$alloc..sync..Weak$LT$std..sync..poison..rwlock..RwLock$LT$nls..contracts..LocalConfigs$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17haabe5617ba54d0a7E.exit2", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %"_ZN4core3ptr142drop_in_place$LT$alloc..sync..Weak$LT$std..sync..poison..rwlock..RwLock$LT$nls..contracts..LocalConfigs$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17haabe5617ba54d0a7E.exit2"

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #66
  br label %"_ZN4core3ptr142drop_in_place$LT$alloc..sync..Weak$LT$std..sync..poison..rwlock..RwLock$LT$nls..contracts..LocalConfigs$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17haabe5617ba54d0a7E.exit2"

"_ZN4core3ptr142drop_in_place$LT$alloc..sync..Weak$LT$std..sync..poison..rwlock..RwLock$LT$nls..contracts..LocalConfigs$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17haabe5617ba54d0a7E.exit2": ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb23ab45bd8e1b192E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !44, !noundef !44 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @"_ZN4core3ptr152drop_in_place$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$crossbeam_channel..err..SendError$LT$lsp_server..msg..Message$GT$$GT$$GT$$GT$17h1da933dc90c2c6ebE"(ptr noalias noundef align 8 dereferenceable(128) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %"_ZN4core3ptr204drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$crossbeam_channel..err..SendError$LT$lsp_server..msg..Message$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17ha1284a3ca6c800aeE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr204drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$crossbeam_channel..err..SendError$LT$lsp_server..msg..Message$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17ha1284a3ca6c800aeE.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #66
  br label %"_ZN4core3ptr204drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$crossbeam_channel..err..SendError$LT$lsp_server..msg..Message$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17ha1284a3ca6c800aeE.exit"

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %"_ZN4core3ptr204drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$crossbeam_channel..err..SendError$LT$lsp_server..msg..Message$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17ha1284a3ca6c800aeE.exit2", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %"_ZN4core3ptr204drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$crossbeam_channel..err..SendError$LT$lsp_server..msg..Message$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17ha1284a3ca6c800aeE.exit2"

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #66
  br label %"_ZN4core3ptr204drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$crossbeam_channel..err..SendError$LT$lsp_server..msg..Message$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17ha1284a3ca6c800aeE.exit2"

"_ZN4core3ptr204drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$crossbeam_channel..err..SendError$LT$lsp_server..msg..Message$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17ha1284a3ca6c800aeE.exit2": ; preds = %bb.e, %bb.f, %bb.g
  ret void

"_ZN4core3ptr204drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$core..result..Result$LT$$LP$$RP$$C$crossbeam_channel..err..SendError$LT$lsp_server..msg..Message$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17ha1284a3ca6c800aeE.exit": ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef range(i64 0, 1401) %0, i64 noundef range(i64 1, 129) %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread, label %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit

_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr
  br label %bb.c

_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit: ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %0, i64 noundef range(i64 1, -9223372036854775807) %1) #66 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef %1, i64 noundef %0) #75
  unreachable

bb.c:                                             ; preds = %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit
  %.sroa.07.0.i4 = phi ptr [ %i.b, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread ], [ %i.c, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit ]
  ret ptr %.sroa.07.0.i4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h48c7fc290e63b1cfE"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #66 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 104) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h61c941d896d78f31E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #66 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hbed5e7b9f66e2ba4E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #66 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hc4246bc1908725aaE"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #66 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hd3b8fe35fc981247E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #66 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key17h43aa3d125141d4f0E"(ptr noalias noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !99810
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %_ZN5alloc5slice11stable_sort17heedb59e925035f9aE.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 21
  br i1 %i.d, label %bb.d, label %bb.c, !prof !46

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core5slice4sort6stable14driftsort_main17h451b088ddf773d1eE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5alloc5slice11stable_sort17heedb59e925035f9aE.exit

bb.d:                                             ; preds = %bb.b
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0a26fc1e583e4700E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1)
  br label %_ZN5alloc5slice11stable_sort17heedb59e925035f9aE.exit

_ZN5alloc5slice11stable_sort17heedb59e925035f9aE.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17h0e7242bd522449e0E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #42 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !70, !noundef !44 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !44 ; 3 uses
  %i.e = icmp eq i64 %i.b, %1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.i = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #66
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.f:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %3, align 8, !nonnull !44, !noundef !44
  %i.k = icmp uge i64 %2, %i.d
  tail call void @llvm.assume(i1 %i.k)
  %i.l = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) #66
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.g:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.o = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #66
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit": ; preds = %bb.i, %bb.f, %bb.e
  %.sroa.012.0.i.i.pn = phi ptr [ %i.l, %bb.f ], [ %i.o, %bb.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.p = icmp eq ptr %.sroa.012.0.i.i.pn, null    ; 2 uses
  %i.q = inttoptr i64 %1 to ptr
  %spec.select = select i1 %i.p, ptr %i.q, ptr %.sroa.012.0.i.i.pn
  %spec.select8 = zext i1 %i.p to i64
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit", %bb.h, %bb.d
  %.sroa.012.0.i.i.pn.sink = phi ptr [ %i.h, %bb.d ], [ %spec.select, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ %i.n, %bb.h ]
  %storemerge = phi i64 [ 0, %bb.d ], [ %spec.select8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ 0, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.012.0.i.i.pn.sink, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.s, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0a58773c8f766f45E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !74, !noundef !44 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99815)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = mul i64 %i.e, 96
  %or.cond.i.i = icmp samesign ugt i64 %i.c, 48038396025285290
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99815
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8de265661c6882b9E.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.g, align 8, !alias.scope !99815, !nonnull !44, !noundef !44
  %i.i = mul nuw nsw i64 %i.c, 96
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !99816, !noalias !99815
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !99816, !noalias !99815
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8de265661c6882b9E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8de265661c6882b9E.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 8, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.j, align 8, !alias.scope !99816, !noalias !99815
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h0e7242bd522449e0E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !99815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99815
  %i.k = load i64, ptr %i.b, align 8, !range !60, !noalias !99815, !noundef !44
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8de265661c6882b9E.exit.i"
  %i.n = load i64, ptr %i.m, align 8, !range !70, !noalias !99815, !noundef !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !99815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99815
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.p, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #75
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8de265661c6882b9E.exit.i"
  %i.q = load ptr, ptr %i.m, align 8, !noalias !99815, !nonnull !44, !noundef !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99815
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !99815
  store i64 %i.e, ptr %0, align 8, !alias.scope !99815
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h10329923140e887dE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !74, !noundef !44 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99821)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = mul i64 %i.e, 48
  %or.cond.i.i = icmp samesign ugt i64 %i.c, 96076792050570581
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99821
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8de265661c6882b9E.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.g, align 8, !alias.scope !99821, !nonnull !44, !noundef !44
  %i.i = mul nuw nsw i64 %i.c, 48
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !99822, !noalias !99821
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !99822, !noalias !99821
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8de265661c6882b9E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8de265661c6882b9E.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 8, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_14
begin_hunk_15_@"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcdd6a70d98692ea9E":bb.a
  %.sroa.013.033.i = phi ptr [ %i.s, %bb.k ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i" ] ; 4 uses
  %.sroa.7.032.i = phi i64 [ %i.t, %bb.k ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i" ] ; 3 uses
  %.sroa.10.031.i = phi i64 [ %i.p, %bb.k ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i" ]
  %i.p = add nsw i64 %.sroa.10.031.i, -1          ; 2 uses
  %i.q = icmp eq ptr %.sroa.013.033.i, %i.o
  br i1 %i.q, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc1abc0ae1a1a81bfE.exit", label %bb.e

bb.d:                                             ; preds = %bb.h, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.033.i, i64 160
  %i.t = add nuw nsw i64 %.sroa.7.032.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100683)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !100684
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.033.i, i64 152
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !100685, !noalias !100686, !nonnull !44, !noundef !44 ; 5 uses
  %i.v = ptrtoint ptr %.val.i.i to i64
  %i.w = and i64 %i.v, 3
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2)
  switch i64 %..i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i" [
    i64 2, label %bb.f
    i64 0, label %bb.g
  ], !prof !54

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc.i unwind label %bb.d, !noalias !100687

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %.val.i.i, align 8, !noalias !100688, !noundef !44 ; 3 uses
  %i.y = and i64 %i.x, 72057594037927935          ; 3 uses
  %i.z = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  %i.ab = and i64 %i.x, 1080863910568919040
  %i.ac = icmp ult i64 %i.x, 864691128455135232
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = or i64 %i.aa, %i.ab
  store i64 %i.ad, ptr %.val.i.i, align 8, !noalias !100688
  %i.ae = icmp eq i64 %i.y, 72057594037927935
  br i1 %i.ae, label %bb.h, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i", !prof !49

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !100684
  store ptr @2307, ptr %i.b, align 8, !noalias !100684
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.af, align 8, !noalias !100684
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ag, align 8, !noalias !100684
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8, !noalias !100684
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ai, align 8, !noalias !100684
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc12.i unwind label %bb.d, !noalias !100687

.noexc12.i:                                       ; preds = %bb.h
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i": ; preds = %bb.g, %bb.e
  store ptr %.val.i.i, ptr %i.d, align 8, !noalias !100684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !100684
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.013.033.i)
          to label %bb.k unwind label %bb.i, !noalias !100686

bb.i:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i"
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #77
          to label %bb.m unwind label %bb.j, !noalias !100686

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !100686
  unreachable

bb.k:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.018.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.018.i, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 152, i1 false), !noalias !100681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !100684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !100684
  %i.al = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %.sroa.7.032.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.al, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.018.i, i64 152, i1 false), !noalias !100687
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  store ptr %.val.i.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !100687
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018.i)
  %i.am = icmp eq i64 %i.p, 0
  br i1 %i.am, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc1abc0ae1a1a81bfE.exit", label %.lr.ph.i

bb.l:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !100687
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.aj, %bb.i ]
  store i64 %.sroa.7.032.i, ptr %i.n, align 8, !alias.scope !100689, !noalias !100681
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hf11d9a9152135beeE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #77
          to label %bb.n unwind label %bb.l, !noalias !100687

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc1abc0ae1a1a81bfE.exit": ; preds = %.lr.ph.i, %bb.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.thread.i"
  %i.ao = phi ptr [ %i.j, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.thread.i" ], [ %i.n, %bb.k ], [ %i.n, %.lr.ph.i ]
  store i64 %.16.val, ptr %i.ao, align 8, !noalias !100681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !100680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !100681
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcef8808b423035e3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !100699
  %i.c = mul i64 %.16.val, 72                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 128102389400760775
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.e = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.e)
  store i64 0, ptr %i.b, align 8, !noalias !100699
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !100699
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hb4007783fde3f7c1E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !100700
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #66, !noalias !100700 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2389) #75, !noalias !100699
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !100699
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !100699
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i", %bb.e
  %.sroa.012.023.i = phi ptr [ %i.p, %bb.e ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i" ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.o, %bb.e ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i" ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.m, %bb.e ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i" ]
  %i.m = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.n = icmp eq ptr %.sroa.012.023.i, %i.l
  br i1 %i.n, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hb4007783fde3f7c1E.exit", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100699
  invoke fastcc void @"_ZN76_$LT$nickel_lang_parser..error..ParseError$u20$as$u20$core..clone..Clone$GT$5clone17h3e614a7f7db1bc7cE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.f, !noalias !100701

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 72
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !100701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100699
  %i.r = icmp eq i64 %i.m, 0
  br i1 %i.r, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hb4007783fde3f7c1E.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.k, align 8, !alias.scope !100702, !noalias !100699
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..error..ParseError$GT$$GT$17h1bff77efed51abacE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #77, !noalias !100701
  resume { ptr, i32 } %lpad.loopexit.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hb4007783fde3f7c1E.exit": ; preds = %.lr.ph.i, %bb.e, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.thread.i"
  %i.s = phi ptr [ %i.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.thread.i" ], [ %i.k, %bb.e ], [ %i.k, %.lr.ph.i ]
  store i64 %.16.val, ptr %i.s, align 8, !noalias !100699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !100703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !100699
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @"_ZN67_$LT$csv..writer..Writer$LT$W$GT$$u20$as$u20$nls..trace..Writer$GT$10write_item17hc42645874e5789f7E"(ptr noalias noundef align 8 dereferenceable(384) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  %i.c = alloca [39 x i8], align 1                ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 14 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  %i.g = alloca [24 x i8], align 8                ; 14 uses
  %i.h = alloca [24 x i8], align 8                ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i64, ptr %i.i, align 8, !noundef !44
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load i32, ptr %i.k, align 8, !range !85, !noundef !44
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i8, ptr %i.m, align 8, !range !45, !noundef !44
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.07.0.copyload = load i64, ptr %i.o, align 8 ; 6 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 9 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.p = load i64, ptr %1, align 8, !range !60, !noundef !44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !60, !noundef !44 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = zext i64 %i.j to i128
  %i.x = mul nuw nsw i128 %i.w, 1000000
  %i.y = udiv i32 %i.l, 1000
  %i.z = zext nneg i32 %i.y to i128
  %i.aa = add nuw nsw i128 %i.x, %i.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100833)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 2, !range !76, !alias.scope !100833, !noalias !100834, !noundef !44
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100835)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !100836
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %0, ptr %i.ae, align 8, !noalias !100836
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100838)
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store i64 2, ptr %i.h, align 8, !alias.scope !100839, !noalias !100840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100841)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !100842, !noalias !100843, !noundef !44
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = invoke fastcc noundef align 8 ptr @"_ZN3csv6writer15Writer$LT$W$GT$15write_delimiter17hb2739916160d51adE"(ptr noalias noundef nonnull align 8 dereferenceable(384) %0)
          to label %.noexc6.i.i unwind label %.body.i.i, !noalias !100844 ; 2 uses

.noexc6.i.i:                                      ; preds = %bb.c
  %.not16.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not16.i.i.i.i.i.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %.noexc6.i.i, %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 21 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !100845
  %i.al = load i64, ptr %i.aj, align 8, !alias.scope !100842, !noalias !100843, !noundef !44 ; 4 uses
  %i.am = load i64, ptr %i.ak, align 8, !alias.scope !100842, !noalias !100843, !noundef !44 ; 4 uses
  %i.an = icmp ugt i64 %i.al, %i.am
  br i1 %i.an, label %._crit_edge.i.i.i.invoke.i.i, label %.lr.ph.i.i.i.i.i, !prof !119

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 18 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.aw = load ptr, ptr %i.ao, align 8, !alias.scope !100842, !noalias !100843, !nonnull !44, !noundef !44
  %i.ax = sub nuw i64 %i.am, %i.al
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.al
  invoke void @_ZN8csv_core6writer6Writer5field17h9c154826982314cbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(288) %i.ap, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @945, i64 noundef 15, ptr noalias noundef nonnull align 1 %i.ay, i64 noundef %i.ax)
          to label %.noexc7.i.i unwind label %.body.i.i, !noalias !100844

.noexc7.i.i:                                      ; preds = %.lr.ph.i.i.i.i.i
  %i.az = load i8, ptr %i.aq, align 8, !range !45, !noalias !100845, !noundef !44
  %i.ba = load i64, ptr %i.g, align 8, !noalias !100845, !noundef !44 ; 4 uses
  %i.bb = load i64, ptr %i.ar, align 8, !noalias !100845, !noundef !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !100845
  %i.bc = icmp ugt i64 %i.ba, 15
  br i1 %i.bc, label %._crit_edge.i.i.i.invoke.i.i, label %bb.e, !prof !49

bb.e:                                             ; preds = %.noexc7.i.i
  %i.bd = trunc nuw i8 %i.az to i1
  %i.be = sub nuw nsw i64 15, %i.ba               ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr @945, i64 %i.ba ; 2 uses
  %i.bg = load i64, ptr %i.aj, align 8, !alias.scope !100842, !noalias !100843, !noundef !44
  %i.bh = add i64 %i.bg, %i.bb                    ; 8 uses
  store i64 %i.bh, ptr %i.aj, align 8, !alias.scope !100842, !noalias !100843
  br i1 %i.bd, label %bb.f, label %.loopexit278.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !100846)
  store i8 1, ptr %i.as, align 1, !alias.scope !100847, !noalias !100848
  %i.bi = load i64, ptr %i.at, align 8, !range !70, !alias.scope !100847, !noalias !100848, !noundef !44 ; 2 uses
  %.not.i14.peel.i.i.i.i.i = icmp eq i64 %i.bi, -9223372036854775808
  br i1 %.not.i14.peel.i.i.i.i.i, label %.loopexit60.i.i.i.invoke.i.i, label %bb.g, !prof !49

bb.g:                                             ; preds = %bb.f
  %i.bj = load i64, ptr %i.ak, align 8, !alias.scope !100847, !noalias !100848, !noundef !44 ; 2 uses
  %.not6.i.peel.i.i.i.i.i = icmp ugt i64 %i.bh, %i.bj
  br i1 %.not6.i.peel.i.i.i.i.i, label %._crit_edge.i.i.i.invoke.i.i, label %bb.h, !prof !79

bb.h:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %i.ao, align 8, !alias.scope !100847, !noalias !100848, !nonnull !44, !noundef !44 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100849)
  %i.bl = load i64, ptr %i.au, align 8, !alias.scope !100850, !noalias !100851, !noundef !44 ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, -1
  call void @llvm.assume(i1 %i.bm)
  %i.bn = sub nsw i64 %i.bi, %i.bl
  %i.bo = icmp ult i64 %i.bh, %i.bn
  br i1 %i.bo, label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i.peel.i.i.i.i.i", label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.peel.i.i.i.i.i", !prof !46

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.peel.i.i.i.i.i": ; preds = %bb.h
  %i.bp = invoke fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h49b38a2378cf49e3E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.at, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bk, i64 noundef %i.bh)
          to label %.noexc8.i.i unwind label %.body.i.i, !noalias !100844 ; 2 uses

.noexc8.i.i:                                      ; preds = %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.peel.i.i.i.i.i"
  store i8 0, ptr %i.as, align 1, !alias.scope !100847, !noalias !100848
  %.not7.i.peel.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not7.i.peel.i.i.i.i.i, label %.peel.next.i.i.i.i.i, label %.loopexit62.i.i.i.invoke.i.i

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i.peel.i.i.i.i.i": ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !100852)
  %i.bq = load ptr, ptr %i.av, align 8, !alias.scope !100853, !noalias !100854, !nonnull !44, !noundef !44
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull readonly align 1 %i.bk, i64 range(i64 0, -1) %i.bh, i1 false), !noalias !100855
  %i.bs = add i64 %i.bl, %i.bh
  store i64 %i.bs, ptr %i.au, align 8, !alias.scope !100853, !noalias !100854
  store i8 0, ptr %i.as, align 1, !alias.scope !100847, !noalias !100848
  br label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i.peel.i.i.i.i.i", %.noexc8.i.i
  store i64 0, ptr %i.aj, align 8, !alias.scope !100856, !noalias !100848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !100845
  %i.bt = load i64, ptr %i.ak, align 8, !alias.scope !100842, !noalias !100843, !noundef !44
  %i.bu = load ptr, ptr %i.ao, align 8, !alias.scope !100842, !noalias !100843, !nonnull !44, !noundef !44
  invoke void @_ZN8csv_core6writer6Writer5field17h9c154826982314cbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(288) %i.ap, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bf, i64 noundef %i.be, ptr noalias noundef nonnull align 1 %i.bu, i64 noundef %i.bt)
          to label %.noexc9.i.i unwind label %.body.i.i, !noalias !100844

.noexc9.i.i:                                      ; preds = %.peel.next.i.i.i.i.i
  %i.bv = load i8, ptr %i.aq, align 8, !range !45, !noalias !100845, !noundef !44
  %i.bw = load i64, ptr %i.g, align 8, !noalias !100845, !noundef !44 ; 3 uses
  %i.bx = load i64, ptr %i.ar, align 8, !noalias !100845, !noundef !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !100845
  %i.by = icmp ugt i64 %i.bw, %i.be
  br i1 %i.by, label %._crit_edge.i.i.i.invoke.i.i, label %.lr.ph.i.i.i.i, !prof !119

._crit_edge.i.i.i.invoke.i.i:                     ; preds = %.noexc20.i, %bb.j, %.noexc22.i, %bb.s, %.noexc24.i, %bb.ab, %.noexc31.i.i, %bb.y, %.noexc29.i.i, %bb.v, %.noexc20.i.i, %bb.p, %.noexc18.i.i, %bb.m, %.noexc9.i.i, %bb.g, %.noexc7.i.i, %bb.d
  %i.bz = phi i64 [ 0, %bb.y ], [ %i.al, %bb.d ], [ %i.gc, %.noexc29.i.i ], [ 0, %bb.g ], [ %i.di, %bb.m ], [ %i.gy, %.noexc31.i.i ], [ 0, %bb.p ], [ %i.ft, %bb.v ], [ %i.ba, %.noexc7.i.i ], [ %i.bw, %.noexc9.i.i ], [ %i.hx, %.noexc24.i ], [ %i.dr, %.noexc18.i.i ], [ %i.en, %.noexc20.i.i ], [ %i.fm, %.noexc22.i ], [ 0, %bb.ab ], [ 0, %bb.s ], [ %i.cz, %.noexc20.i ], [ 0, %bb.j ]
  %i.ca = phi i64 [ %i.gj, %bb.y ], [ %i.am, %bb.d ], [ 6, %.noexc29.i.i ], [ %i.bh, %bb.g ], [ %i.dj, %bb.m ], [ %i.gg, %.noexc31.i.i ], [ %i.dy, %bb.p ], [ %i.fu, %bb.v ], [ 15, %.noexc7.i.i ], [ %i.be, %.noexc9.i.i ], [ %i.hf, %.noexc24.i ], [ 10, %.noexc18.i.i ], [ %i.dv, %.noexc20.i.i ], [ %i.eu, %.noexc22.i ], [ %i.hi, %bb.ab ], [ %i.ex, %bb.s ], [ %i.ch, %.noexc20.i ], [ %i.ck, %bb.j ]
  %i.cb = phi i64 [ %i.gl, %bb.y ], [ %i.am, %bb.d ], [ 6, %.noexc29.i.i ], [ %i.bj, %bb.g ], [ %i.dj, %bb.m ], [ %i.gg, %.noexc31.i.i ], [ %i.ea, %bb.p ], [ %i.fu, %bb.v ], [ 15, %.noexc7.i.i ], [ %i.be, %.noexc9.i.i ], [ %i.hf, %.noexc24.i ], [ 10, %.noexc18.i.i ], [ %i.dv, %.noexc20.i.i ], [ %i.eu, %.noexc22.i ], [ %i.hk, %bb.ab ], [ %i.ez, %bb.s ], [ %i.ch, %.noexc20.i ], [ %i.cm, %bb.j ]
  %i.cc = phi ptr [ @833, %bb.y ], [ @828, %bb.d ], [ @829, %.noexc29.i.i ], [ @833, %bb.g ], [ @828, %bb.m ], [ @829, %.noexc31.i.i ], [ @833, %bb.p ], [ @828, %bb.v ], [ @829, %.noexc7.i.i ], [ @829, %.noexc9.i.i ], [ @829, %.noexc24.i ], [ @829, %.noexc18.i.i ], [ @829, %.noexc20.i.i ], [ @829, %.noexc22.i ], [ @833, %bb.ab ], [ @833, %bb.s ], [ @829, %.noexc20.i ], [ @833, %bb.j ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.bz, i64 noundef %i.ca, i64 noundef %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc) #75
          to label %._crit_edge.i.i.i.cont.i.i unwind label %.body.i.i, !noalias !100844

._crit_edge.i.i.i.cont.i.i:                       ; preds = %._crit_edge.i.i.i.invoke.i.i
  unreachable

.lr.ph.i.i.i.i:                                   ; preds = %.noexc9.i.i, %.noexc20.i
  %i.cd = phi i64 [ %i.da, %.noexc20.i ], [ %i.bx, %.noexc9.i.i ]
  %i.ce = phi i64 [ %i.cz, %.noexc20.i ], [ %i.bw, %.noexc9.i.i ] ; 2 uses
  %i.cf = phi i8 [ %i.cy, %.noexc20.i ], [ %i.bv, %.noexc9.i.i ]
  %.sroa.6.0.i36.i142.i.i.i.i = phi i64 [ %i.ch, %.noexc20.i ], [ %i.be, %.noexc9.i.i ]
  %.sroa.04.0.i37.i141.i.i.i.i = phi ptr [ %i.ci, %.noexc20.i ], [ %i.bf, %.noexc9.i.i ]
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = sub nuw nsw i64 %.sroa.6.0.i36.i142.i.i.i.i, %i.ce ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i37.i141.i.i.i.i, i64 %i.ce ; 2 uses
  %i.cj = load i64, ptr %i.aj, align 8, !alias.scope !100842, !noalias !100843, !noundef !44
  %i.ck = add i64 %i.cj, %i.cd                    ; 8 uses
  store i64 %i.ck, ptr %i.aj, align 8, !alias.scope !100842, !noalias !100843
  br i1 %i.cg, label %bb.i, label %.loopexit278.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !100857)
  store i8 1, ptr %i.as, align 1, !alias.scope !100858, !noalias !100848
  %i.cl = load i64, ptr %i.at, align 8, !range !70, !alias.scope !100858, !noalias !100848, !noundef !44 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp eq i64 %i.cl, -9223372036854775808
  br i1 %.not.i14.i.i.i.i.i, label %.loopexit60.i.i.i.invoke.i.i, label %bb.j, !prof !49

bb.j:                                             ; preds = %bb.i
  %i.cm = load i64, ptr %i.ak, align 8, !alias.scope !100858, !noalias !100848, !noundef !44 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp ugt i64 %i.ck, %i.cm
  br i1 %.not6.i.i.i.i.i.i, label %._crit_edge.i.i.i.invoke.i.i, label %bb.k, !prof !79

.loopexit60.i.i.i.invoke.i.i:                     ; preds = %bb.i, %bb.r, %bb.aa, %bb.x, %bb.o, %bb.f
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @832) #75
          to label %.loopexit60.i.i.i.cont.i.i unwind label %.body.i.i, !noalias !100844
end_hunk_15
begin_hunk_16_@"_ZN67_$LT$csv..writer..Writer$LT$W$GT$$u20$as$u20$nls..trace..Writer$GT$10write_item17hc42645874e5789f7E":bb.a

bb.bj:                                            ; preds = %.lr.ph39.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !100951)
  store i8 1, ptr %i.md, align 1, !alias.scope !100952, !noalias !100913
  %i.ns = load i64, ptr %i.me, align 8, !range !70, !alias.scope !100952, !noalias !100913, !noundef !44 ; 2 uses
  %.not.i12.i.i.i.i.i.i.i = icmp eq i64 %i.ns, -9223372036854775808
  br i1 %.not.i12.i.i.i.i.i.i.i, label %.loopexit117.i.i.i.i.i.i.invoke.i, label %bb.bk, !prof !49

bb.bk:                                            ; preds = %bb.bj
  %i.nt = load i64, ptr %i.lv, align 8, !alias.scope !100952, !noalias !100913, !noundef !44 ; 2 uses
  %.not6.i13.i.i.i.i.i.i.i = icmp ugt i64 %i.nr, %i.nt
  br i1 %.not6.i13.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.invoke.i, label %bb.bl, !prof !79

bb.bl:                                            ; preds = %bb.bk
  %i.nu = load ptr, ptr %i.lz, align 8, !alias.scope !100952, !noalias !100913, !nonnull !44, !noundef !44 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100953)
  %i.nv = load i64, ptr %i.mf, align 8, !alias.scope !100954, !noalias !100945, !noundef !44 ; 4 uses
  %i.nw = icmp sgt i64 %i.nv, -1
  call void @llvm.assume(i1 %i.nw)
  %i.nx = sub nsw i64 %i.ns, %i.nv
  %i.ny = icmp ult i64 %i.nr, %i.nx
  br i1 %i.ny, label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i17.i.i.i.i.i.i.i", label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i14.i.i.i.i.i.i.i", !prof !46

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i17.i.i.i.i.i.i.i": ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !100955)
  %i.nz = load ptr, ptr %i.mg, align 8, !alias.scope !100956, !noalias !100948, !nonnull !44, !noundef !44
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.nv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr nonnull readonly align 1 %i.nu, i64 range(i64 0, -1) %i.nr, i1 false), !noalias !100957
  %i.ob = add i64 %i.nv, %i.nr
  store i64 %i.ob, ptr %i.mf, align 8, !alias.scope !100956, !noalias !100948
  store i8 0, ptr %i.md, align 1, !alias.scope !100952, !noalias !100913
  br label %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit18.i.i.i.i.i.i.i"

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i14.i.i.i.i.i.i.i": ; preds = %bb.bl
  %i.oc = invoke fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h49b38a2378cf49e3E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.me, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.nu, i64 noundef %i.nr)
          to label %.noexc54.i unwind label %.loopexit.i, !noalias !100834 ; 2 uses

.noexc54.i:                                       ; preds = %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i14.i.i.i.i.i.i.i"
  store i8 0, ptr %i.md, align 1, !alias.scope !100952, !noalias !100913
  %.not7.i15.i.i.i.i.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not7.i15.i.i.i.i.i.i.i, label %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit18.i.i.i.i.i.i.i", label %.loopexit119.i.i.i.i.i.i.invoke.i

"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit18.i.i.i.i.i.i.i": ; preds = %.noexc54.i, %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i17.i.i.i.i.i.i.i"
  store i64 0, ptr %i.lu, align 8, !alias.scope !100950, !noalias !100913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !100940
  %i.od = load i64, ptr %i.lv, align 8, !alias.scope !100938, !noalias !100939, !noundef !44
  %i.oe = load ptr, ptr %i.lz, align 8, !alias.scope !100938, !noalias !100939, !nonnull !44, !noundef !44
  invoke void @_ZN8csv_core6writer6Writer5field17h9c154826982314cbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(288) %i.ma, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.np, i64 noundef %i.no, ptr noalias noundef nonnull align 1 %i.oe, i64 noundef %i.od)
          to label %.noexc55.i unwind label %.loopexit.i, !noalias !100834

.noexc55.i:                                       ; preds = %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit18.i.i.i.i.i.i.i"
  %i.of = load i8, ptr %i.mb, align 8, !range !45, !noalias !100940, !noundef !44
  %i.og = load i64, ptr %i.b, align 8, !noalias !100940, !noundef !44 ; 3 uses
  %i.oh = load i64, ptr %i.mc, align 8, !noalias !100940, !noundef !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !100940
  %i.oi = icmp ugt i64 %i.og, %i.no
  br i1 %i.oi, label %._crit_edge.i.i.i.i.i.i.invoke.i, label %.lr.ph39.i.i.i.i.i.i, !prof !121

"_ZN99_$LT$$RF$mut$u20$csv..serializer..SeRecord$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h86af473e8e0057e3E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph39.i.i.i.i.i.i, %bb.bf, %bb.av
  %storemerge.in.i.i.i.i = load i64, ptr %i.iu, align 8, !alias.scope !100958, !noalias !100913, !noundef !44
  %storemerge.i.i.i.i = add i64 %storemerge.in.i.i.i.i, 1
  store i64 %storemerge.i.i.i.i, ptr %i.iu, align 8, !alias.scope !100958, !noalias !100913
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  %i.oj = invoke fastcc noundef align 8 ptr @"_ZN94_$LT$$RF$mut$u20$csv..serializer..SeRecord$LT$W$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h7dcdbcc7c968a0a7E"(ptr nonnull align 8 dereferenceable(384) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.2.0.copyload, i64 noundef %.sroa.3.0.copyload)
          to label %.noexc57.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !100834 ; 2 uses

.noexc57.i:                                       ; preds = %"_ZN99_$LT$$RF$mut$u20$csv..serializer..SeRecord$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h86af473e8e0057e3E.exit.i.i.i.i"
  %.not25.i.i.i.i = icmp eq ptr %i.oj, null
  br i1 %.not25.i.i.i.i, label %bb.bm, label %.thread73.i

bb.bm:                                            ; preds = %.noexc57.i
  %i.ok = invoke fastcc noundef align 8 ptr @"_ZN99_$LT$$RF$mut$u20$csv..serializer..SeRecord$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he7dea4064d6a2887E"(ptr nonnull readonly align 8 dereferenceable(8) %i.d, i64 %i.p, i64 %i.r)
          to label %.noexc58.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 2 uses

.noexc58.i:                                       ; preds = %bb.bm
  %.not26.i.i.i30.i = icmp eq ptr %i.ok, null
  br i1 %.not26.i.i.i30.i, label %bb.bn, label %.thread73.i

bb.bn:                                            ; preds = %.noexc58.i
  %i.ol = invoke fastcc noundef align 8 ptr @"_ZN99_$LT$$RF$mut$u20$csv..serializer..SeRecord$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he7dea4064d6a2887E"(ptr nonnull readonly align 8 dereferenceable(8) %i.d, i64 %i.t, i64 %i.v)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 2 uses

.loopexit.i:                                      ; preds = %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit18.i.i.i.i.i.i.i", %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i14.i.i.i.i.i.i.i"
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i.i.i.i.i.i.i", %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.i.i.i.i.i.i.i"
  %lpad.loopexit77.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i80.i.i.i.i", %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.i78.i.i.i.i"
  %lpad.loopexit83.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i56.i.i.i.i", %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.i54.i.i.i.i"
  %lpad.loopexit91.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i.i.i.i.i", %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.i.i.i.i.i"
  %lpad.loopexit101.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bm, %bb.bn, %bb.bx, %bb.bs, %"_ZN99_$LT$$RF$mut$u20$csv..serializer..SeRecord$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h86af473e8e0057e3E.exit.i.i.i.i", %.peel.next121.i.i.i.i.i.i.i, %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i14.peel.i.i.i.i.i.i.i", %.lr.ph72.i.i.i.i.i.i.i, %bb.bd, %.loopexit119.i.i.i.i.i.i.invoke.i, %.loopexit117.i.i.i.i.i.i.invoke.i, %._crit_edge.i.i.i.i.i.i.invoke.i, %.peel.next.i.i.i.i.i.i.i, %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.peel.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i, %bb.at, %bb.am, %bb.ak, %bb.ai, %bb.ae
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i, %bb.ao, %bb.an, %bb.ag, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.body.i.i ], [ %lpad.loopexit.split-lp.i.i, %bb.ag ], [ %i.is, %bb.an ], [ %i.is, %bb.ao ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit77.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit83.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit91.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit101.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  %i.om = icmp eq i64 %.sroa.07.0.copyload, 0
  br i1 %i.om, label %"_ZN4core3ptr45drop_in_place$LT$nls..trace..CsvTraceItem$GT$17haa8d4a7e5bed2199E.exit.i", label %bb.bo

bb.bo:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload, i64 noundef %.sroa.07.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !100959
  br label %"_ZN4core3ptr45drop_in_place$LT$nls..trace..CsvTraceItem$GT$17haa8d4a7e5bed2199E.exit.i"

bb.bp:                                            ; preds = %bb.ai, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc50a1a683f02aa09E.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !100836
  br i1 %storemerge.i.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp, %.thread.i
  %.sroa.762.06672.i = phi ptr [ %.sroa.762.0.ph.i, %.thread.i ], [ %.sroa.762.0.i, %bb.bp ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.762.06672.i) ]
  br label %bb.bu

bb.br:                                            ; preds = %bb.bp
  br i1 %.sroa.5.0.i, label %bb.bs, label %.sink.split.i

bb.bs:                                            ; preds = %bb.br
  %i.on = invoke fastcc noundef align 8 ptr @"_ZN3csv6writer15Writer$LT$W$GT$16write_terminator17heac787a3a1bb20a0E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %0)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !100834 ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %.not.i = icmp eq ptr %i.on, null
  br i1 %.not.i, label %.sink.split.i, label %bb.bu

bb.bu:                                            ; preds = %bb.by, %bb.bw, %.thread73.i, %bb.bt, %bb.bq
  %.sroa.0.0.i = phi ptr [ %.sroa.762.06672.i, %bb.bq ], [ %i.ol, %bb.bw ], [ %i.on, %bb.bt ], [ %i.op, %bb.by ], [ %.sroa.0.0.i.i.i.ph.i, %.thread73.i ]
  %i.oo = icmp eq i64 %.sroa.07.0.copyload, 0
  br i1 %i.oo, label %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17hd9d4f056df5237cfE.exit", label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload, i64 noundef %.sroa.07.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !100960
  br label %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17hd9d4f056df5237cfE.exit"

.thread73.i:                                      ; preds = %.noexc58.i, %.noexc57.i, %.noexc46.i, %.loopexit119.i.i.i.i.i.i.invoke.i, %.noexc35.i, %"_ZN99_$LT$$RF$mut$u20$csv..serializer..SeRecord$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he3ce48dc5446a87cE.exit.i.i.i.i"
  %.sroa.0.0.i.i.i.ph.i = phi ptr [ %i.lt, %.noexc46.i ], [ %i.lr, %.loopexit119.i.i.i.i.i.i.invoke.i ], [ %i.iw, %.noexc35.i ], [ %i.ir, %"_ZN99_$LT$$RF$mut$u20$csv..serializer..SeRecord$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he3ce48dc5446a87cE.exit.i.i.i.i" ], [ %i.oj, %.noexc57.i ], [ %i.ok, %.noexc58.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !100909
  br label %bb.bu

bb.bw:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !100909
  %.not13.i = icmp eq ptr %i.ol, null
  br i1 %.not13.i, label %bb.bx, label %bb.bu

bb.bx:                                            ; preds = %bb.bw
  %i.op = invoke fastcc noundef align 8 ptr @"_ZN3csv6writer15Writer$LT$W$GT$16write_terminator17heac787a3a1bb20a0E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %0)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !100834 ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %.not14.i = icmp eq ptr %i.op, null
  br i1 %.not14.i, label %bb.bz, label %bb.bu

bb.bz:                                            ; preds = %bb.by
  %i.oq = icmp eq i64 %.sroa.07.0.copyload, 0
  br i1 %i.oq, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload, i64 noundef %.sroa.07.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !100961
  br label %bb.cb

"_ZN4core3ptr45drop_in_place$LT$nls..trace..CsvTraceItem$GT$17haa8d4a7e5bed2199E.exit.i": ; preds = %bb.bo, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17hd9d4f056df5237cfE.exit": ; preds = %bb.bu, %bb.bv
  %i.or = call fastcc noundef nonnull ptr @"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17h31890de8827fa45bE"(ptr noalias noundef nonnull align 8 %.sroa.0.0.i)
  br label %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17habd6f160333656e8E.exit"

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.os = call fastcc noundef ptr @"_ZN3csv6writer15Writer$LT$W$GT$5flush17hf4d12ce0941ff234E"(ptr noalias noundef align 8 dereferenceable(384) %0) ; 2 uses
  %.not.i2 = icmp eq ptr %i.os, null
  br i1 %.not.i2, label %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17habd6f160333656e8E.exit", label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ot = call fastcc noundef nonnull ptr @"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17hc19674e3eddfbe51E"(ptr noundef nonnull %i.os)
  br label %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17habd6f160333656e8E.exit"

"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17habd6f160333656e8E.exit": ; preds = %bb.cc, %bb.cb, %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17hd9d4f056df5237cfE.exit"
  %.sroa.0.0 = phi ptr [ %i.or, %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17hd9d4f056df5237cfE.exit" ], [ %i.ot, %bb.cc ], [ null, %bb.cb ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @"_ZN67_$LT$csv..writer..Writer$LT$W$GT$$u20$as$u20$nls..trace..Writer$GT$5flush17hf4f5c05e04df2563E"(ptr noalias noundef align 8 dereferenceable(384) initializes((25, 26)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef ptr @"_ZN3csv6writer15Writer$LT$W$GT$5flush17hf4d12ce0941ff234E"(ptr noalias noundef align 8 dereferenceable(384) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17habd6f160333656e8E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef nonnull ptr @"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17hc19674e3eddfbe51E"(ptr noundef nonnull %i.a)
  br label %"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17habd6f160333656e8E.exit"

"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17habd6f160333656e8E.exit": ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$lsp_server..msg..ResponseError$u20$as$u20$core..fmt..Debug$GT$3fmt17hbd8e18f5e74feff9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1669, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @269, i64 noundef 4, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1667, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @272, i64 noundef 7, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1358, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @275, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1668)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$nickel_lang_core..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb9a2dc8b10953e2aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = load i64, ptr %0, align 8, !range !151, !noundef !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  switch i64 %i.h, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %i.j = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1671, i64 noundef 9, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1670)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1673, i64 noundef 14, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1672)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.i, ptr %i.e, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1675, i64 noundef 11, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1674)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %i.m = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1677, i64 noundef 11, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1676)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8
  %i.n = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1679, i64 noundef 11, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1678)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8
  %i.o = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1681, i64 noundef 7, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1680)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %i.p = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1683, i64 noundef 9, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1682)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.j, %bb.b ], [ %i.k, %bb.c ], [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.n, %bb.f ], [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3a87f33f6dad506E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1705, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @201, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1704)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101008)
  %i.a = load i64, ptr %0, align 8, !range !48, !alias.scope !101007, !noalias !101008, !noundef !44 ; 5 uses
  %i.b = icmp ne i64 %i.a, 12
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -3
  %i.d = icmp samesign ugt i64 %i.a, 2
  %i.e = select i1 %i.d, i64 %i.c, i64 9          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !48, !alias.scope !101008, !noalias !101007, !noundef !44 ; 4 uses
  %i.g = icmp ne i64 %i.f, 12
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -3
  %i.i = icmp samesign ugt i64 %i.f, 2
  %i.j = select i1 %i.i, i64 %i.h, i64 9
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h20381827cbb9dd66E.exit.thread" [
    i64 6, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h20381827cbb9dd66E.exit"
    i64 7, label %bb.c
    i64 8, label %.split18
    i64 9, label %bb.d
    i64 10, label %bb.f
    i64 11, label %bb.m
    i64 12, label %bb.q
    i64 13, label %.split11
    i64 14, label %.split19
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101010)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !101009, !noalias !101010, !nonnull !44, !align !50, !noundef !44
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !101010, !noalias !101009, !nonnull !44, !align !50, !noundef !44
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.o), !noalias !101011, !inline_history !100968
  br i1 %i.p, label %.split20, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

.split20:                                         ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101013)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !101012, !noalias !101013, !nonnull !44, !align !50, !noundef !44
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !101013, !noalias !101012, !nonnull !44, !align !50, !noundef !44
  %i.u = tail call fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t), !noalias !101014, !inline_history !100968
  br i1 %i.u, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h20381827cbb9dd66E.exit.thread", label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

.split18:                                         ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 8, !alias.scope !101007, !noalias !101008, !noundef !44
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !101008, !noalias !101007, !noundef !44
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h20381827cbb9dd66E.exit.thread", label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !101007, !noalias !101008, !noundef !44
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !101008, !noalias !101007, !noundef !44
  %i.ag = icmp eq i32 %i.ad, %i.af
  %i.ah = icmp eq i64 %i.a, %i.f
  %or.cond = and i1 %i.ah, %i.ag
  br i1 %or.cond, label %bb.e, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.e:                                             ; preds = %bb.d
  %i.ai = icmp eq i64 %i.a, 0
  br i1 %i.ai, label %.split17, label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit"

"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit": ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = tail call fastcc noundef zeroext i1 @"_ZN90_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc8a2fca2b1318dfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak)
  br i1 %i.al, label %.split17, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

end_hunk_16
begin_hunk_17_@_ZN6anyhow5error23object_reallocate_boxed17h89a763942c25cda3E:bb.a
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @1755, 1
  ret { ptr, ptr } %i.j

bb.g:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.e, %bb.c ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #66
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17h9fb98d997dd3f10cE(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !44, !align !57, !noundef !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !noundef !44
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.e = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #66 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.d, !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h291a0f84765ec089E"(ptr noalias noundef align 8 dereferenceable(48) %i.h) #77
          to label %bb.h unwind label %bb.g

bb.d:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.e, align 8, !noalias !101589
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h291a0f84765ec089E"(ptr noalias noundef align 8 dereferenceable(48) %i.j)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 72, i64 noundef 8) #66
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @1759, 1
  ret { ptr, ptr } %i.m

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.g, %bb.c ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 72, i64 noundef 8) #66
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17hd15c12149345d51fE(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !range !116, !noundef !44
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.c = tail call noundef dereferenceable_or_null(1) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #66 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.d, !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 1) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h291a0f84765ec089E"(ptr noalias noundef align 8 dereferenceable(48) %i.f) #77
          to label %bb.h unwind label %bb.g

bb.d:                                             ; preds = %bb.a
  store i8 %i.b, ptr %i.c, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h291a0f84765ec089E"(ptr noalias noundef align 8 dereferenceable(48) %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #66
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @1753, 1
  ret { ptr, ptr } %i.j

bb.g:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.e, %bb.c ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #66
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17hf24d36e1821c1f5fE(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101598
  %i.b = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101598 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e, !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.e, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !101599
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h291a0f84765ec089E"(ptr noalias noundef align 8 dereferenceable(48) %i.f) #77
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx6, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h291a0f84765ec089E"(ptr noalias noundef align 8 dereferenceable(48) %i.g)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #66
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @1747, 1
  ret { ptr, ptr } %i.j

bb.h:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.i:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.d, %.body ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #66
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17ha5d6103d42da2310E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h45e8e7a104f28ba3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17hb3cac43196ebc144E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$20construct_from_adhoc17hbb266e2edf83bb13E.exit" unwind label %bb.b

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$20construct_from_adhoc17hbb266e2edf83bb13E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hf3593a8ee570b098E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !101604)
  call void @llvm.experimental.noalias.scope.decl(metadata !101605)
  %.val.i.i = load i64, ptr %0, align 8, !range !74, !alias.scope !101606, !noundef !44 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !101606, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !101606
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h09551b622000ced4E"(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1795, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101609
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101609 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h00d59d016d9abc23E.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr77drop_in_place$LT$anyhow..error..ErrorImpl$LT$serde_json..error..Error$GT$$GT$17h46d28ccc58f2497dE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #77
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h00d59d016d9abc23E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h107ed4d4102a8f26E"(i1 noundef zeroext %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1797, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.d = zext i1 %0 to i8
  store i8 %i.d, ptr %i.c, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101612
  %i.e = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101612 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha25e4af82a4f2a71E.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h291a0f84765ec089E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr92drop_in_place$LT$anyhow..error..ErrorImpl$LT$nickel_lang_core..cache..FileCloseError$GT$$GT$17hcfb985f0bde6fcfcE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

"_ZN4core3ptr92drop_in_place$LT$anyhow..error..ErrorImpl$LT$nickel_lang_core..cache..FileCloseError$GT$$GT$17hcfb985f0bde6fcfcE.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.g

"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha25e4af82a4f2a71E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h2adfeb2ae81581ccE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1801, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101615
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101615 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf3fabd71d6e4e334E.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h291a0f84765ec089E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr71drop_in_place$LT$anyhow..error..ErrorImpl$LT$glob..PatternError$GT$$GT$17h4c2fe2e4e7bb6e2fE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

"_ZN4core3ptr71drop_in_place$LT$anyhow..error..ErrorImpl$LT$glob..PatternError$GT$$GT$17h4c2fe2e4e7bb6e2fE.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf3fabd71d6e4e334E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h3db1145641af0d59E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1799, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101618
  %i.d = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101618 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf932f0cbb8e994b0E.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 88) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr85drop_in_place$LT$anyhow..error..ErrorImpl$LT$lsp_server..error..ProtocolError$GT$$GT$17he7e71e3b02eab40aE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #77
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf932f0cbb8e994b0E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h413489e1b66adf20E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1807, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101621
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101621 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h1245c96c38a2451bE.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr119drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$$RF$str$C$std..io..error..Error$GT$$GT$$GT$17h46e2db250d299d73E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #77
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h1245c96c38a2451bE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h45e8e7a104f28ba3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1805, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %1, ptr %i.d, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101624
  %i.e = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101624 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h80bc582bc5e8f104E.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h291a0f84765ec089E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$$RF$str$GT$$GT$$GT$17h17da60a430f76d1bE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$$RF$str$GT$$GT$$GT$17h17da60a430f76d1bE.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.g

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h80bc582bc5e8f104E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h488b0dab17967afcE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1800, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101627
  %i.d = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101627 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc6fc7fa0e91bb6e9E.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 88) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr80drop_in_place$LT$anyhow..error..ErrorImpl$LT$bincode..error..DecodeError$GT$$GT$17hfa37b9fa2288a8aaE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #77
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc6fc7fa0e91bb6e9E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h681b652c6d4fbf4aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1808, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101630
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101630 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17he558f737a1d89d52E.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr115drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$$RF$str$C$csv..error..Error$GT$$GT$$GT$17h1d2a07716597c4b0E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #77
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17he558f737a1d89d52E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h9158ab982b620b2bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1794, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 112, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101633
  %i.d = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101633 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hb8f4ad279fbca6f6E.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 168) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$anyhow..error..ErrorImpl$LT$nls..error..Error$GT$$GT$17hab5b891b9a7af27dE"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.a) #77
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hb8f4ad279fbca6f6E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.d, ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h9913c6ffc22e9c8bE"(i8 noundef range(i8 0, 5) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1804, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %0, ptr %i.c, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101636
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101636 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h13f397f4cbd589c1E.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h291a0f84765ec089E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$anyhow..error..ErrorImpl$LT$core..num..error..ParseIntError$GT$$GT$17he6b9eb300593dea8E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

"_ZN4core3ptr84drop_in_place$LT$anyhow..error..ErrorImpl$LT$core..num..error..ParseIntError$GT$$GT$17he6b9eb300593dea8E.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h13f397f4cbd589c1E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17ha55a607e9255be16E"(i1 noundef zeroext %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1803, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.d = zext i1 %0 to i8
  store i8 %i.d, ptr %i.c, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101639
  %i.e = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101639 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h1057f33a7b536e7cE.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h291a0f84765ec089E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr93drop_in_place$LT$anyhow..error..ErrorImpl$LT$crossbeam_channel..err..RecvTimeoutError$GT$$GT$17h30496cfdb711ae85E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

"_ZN4core3ptr93drop_in_place$LT$anyhow..error..ErrorImpl$LT$crossbeam_channel..err..RecvTimeoutError$GT$$GT$17h30496cfdb711ae85E.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.g

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h1057f33a7b536e7cE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17ha67ffff5b9ce72d1E"(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1802, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101642
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101642 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3f8486e7b102cafbE.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$anyhow..error..ErrorImpl$LT$std..io..error..Error$GT$$GT$17ha1c2aaa4f64c97eaE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #77
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3f8486e7b102cafbE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17he46983f4cca6a678E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1798, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101645
  %i.d = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101645 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h1c35fcb7555980e0E.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 88) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr80drop_in_place$LT$anyhow..error..ErrorImpl$LT$bincode..error..EncodeError$GT$$GT$17h02bcdbf11f76abebE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #77
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h1c35fcb7555980e0E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hf08b7a241d43f0f6E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1796, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101648
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101648 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf94ad85c6c48036bE.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr71drop_in_place$LT$anyhow..error..ErrorImpl$LT$std..env..VarError$GT$$GT$17hd469076316cccd7dE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #77
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf94ad85c6c48036bE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hf3593a8ee570b098E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1806, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101651
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !101651 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha44b348fb7005d16E.exit", !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr111drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$17h728de62ef2b4bf31E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #77
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha44b348fb7005d16E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h4b565f8c34fa1123E"(i8 noundef range(i8 0, 5) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h9913c6ffc22e9c8bE"(i8 noundef range(i8 0, 5) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h4db3f88b61cfdf7aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h459008e89cc0dddbE.exit" unwind label %bb.b

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h459008e89cc0dddbE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hf08b7a241d43f0f6E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17hbfe2a32151b78a5cE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !101656)
  %i.e = load i64, ptr %0, align 8, !range !70, !alias.scope !101656, !noundef !44 ; 2 uses
  %switch.i = icmp sgt i64 %i.e, 0
  br i1 %switch.i, label %bb.c, label %"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17hbfe2a32151b78a5cE.exit"

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !101656, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !101657
  br label %"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17hbfe2a32151b78a5cE.exit"
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h5388d31d1e5b195dE"(ptr noundef nonnull %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17he30fe0645ae3bd5cE.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17he30fe0645ae3bd5cE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17ha67ffff5b9ce72d1E"(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h0c80501cefa94e37E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #77
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h5a3e962d8d0a7941E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h87184ba48e563c91E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h87184ba48e563c91E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h488b0dab17967afcE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr48drop_in_place$LT$bincode..error..DecodeError$GT$17h2e580a7252fc3504E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) #77
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h6271a1618db0bd06E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h8608c80cf3bbe68eE.exit" unwind label %bb.b

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h8608c80cf3bbe68eE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h3db1145641af0d59E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

"_ZN4core3ptr53drop_in_place$LT$lsp_server..error..ProtocolError$GT$17h7353063279ce9915E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !101664)
  call void @llvm.experimental.noalias.scope.decl(metadata !101665)
  call void @llvm.experimental.noalias.scope.decl(metadata !101666)
  %.val.i.i.i = load i64, ptr %0, align 8, !range !74, !alias.scope !101667, !noundef !44 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.e, label %"_ZN4core3ptr53drop_in_place$LT$lsp_server..error..ProtocolError$GT$17h7353063279ce9915E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !101667, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !101667
  br label %"_ZN4core3ptr53drop_in_place$LT$lsp_server..error..ProtocolError$GT$17h7353063279ce9915E.exit"
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h6730b7a100d20e92E"(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h3781df9b96b141aeE.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h3781df9b96b141aeE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h09551b622000ced4E"(ptr noalias noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb7a4e037a5b65337E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #77
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h845e0578e0924d2dE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(112) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h13d399dfc319505cE.exit" unwind label %bb.b

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h13d399dfc319505cE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h9158ab982b620b2bE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr38drop_in_place$LT$nls..error..Error$GT$17h720c23c31a986ec2E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %0) #77
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha7ce3d76f375f68bE"(i1 noundef zeroext %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17ha55a607e9255be16E"(i1 noundef zeroext %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha8a58e644adfbb41E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h584108db35753d51E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h584108db35753d51E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17he46983f4cca6a678E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr48drop_in_place$LT$bincode..error..EncodeError$GT$17h7f74efc4fa84e0f2E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) #77
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hf3ef8b45bdd1736bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h2adfeb2ae81581ccE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hf8ff3b461863fcf0E"(i1 noundef zeroext %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h107ed4d4102a8f26E"(i1 noundef zeroext %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN6anyhow7context87_$LT$impl$u20$core..fmt..Debug$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17h684ca78b8e245caeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @355, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @700, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1809)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @271, i64 noundef 6, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1810)
  %i.f = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN6anyhow7context87_$LT$impl$u20$core..fmt..Debug$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17h8db7a8ace0f8ee0aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @355, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @700, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1809)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @271, i64 noundef 6, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1327)
  %i.f = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN6anyhow7context89_$LT$impl$u20$core..error..Error$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$6source17h1aaff55c1a106867E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #31 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @1812, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN6anyhow7context89_$LT$impl$u20$core..error..Error$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$6source17had2a9e5edcb04823E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #31 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @1757, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN6anyhow7context89_$LT$impl$u20$core..fmt..Display$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17h3ba139c28ef5c62eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101671)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !101671, !noalias !101672, !nonnull !44, !align !57, !noundef !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !101671, !noalias !101672, !noundef !44
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !101671
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN6anyhow7context89_$LT$impl$u20$core..fmt..Display$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17hbcb8519df91f3d03E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101676)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !101676, !noalias !101677, !nonnull !44, !align !57, !noundef !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !101676, !noalias !101677, !noundef !44
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !101676
  ret i1 %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN6anyhow9__private10format_err17hed671fa8c37bdbceE(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !44 ; 2 uses
  switch i64 %i.e, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h383352e61efed687E.exit" [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h383352e61efed687E.exit"

bb.c:                                             ; preds = %bb.b, %bb.e
  %.sroa.6.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.b ]
  %.sroa.01.0 = phi ptr [ %i.k, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.i = tail call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17ha5d6103d42da2310E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.6.0)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %bb.e, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h383352e61efed687E.exit"

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !nonnull !44, !align !57, !noundef !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !44
  br label %bb.c

bb.f:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h383352e61efed687E.exit", %bb.c
  %.sroa.0.0 = phi ptr [ %i.n, %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h383352e61efed687E.exit" ], [ %i.i, %bb.c ]
  ret ptr %.sroa.0.0

"_ZN4core6option15Option$LT$T$GT$11map_or_else17h383352e61efed687E.exit": ; preds = %bb.d, %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  %i.n = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17hb3cac43196ebc144E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN6base646engine6Engine6encode17had0383c642470a45E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(323) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101702)
  %.val.i = load i8, ptr %1, align 1, !range !45, !alias.scope !101702, !noalias !101703, !noundef !44
  %i.c = trunc nuw i8 %.val.i to i1               ; 2 uses
  %i.d = urem i64 %3, 3                           ; 2 uses
  %i.e = udiv i64 %3, 3
  %i.f = shl i64 %i.e, 2                          ; 4 uses
  %i.g = icmp ugt i64 %3, -4611686018427387905
  br i1 %i.g, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread38.i, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.d, 1
  %..i.i = select i1 %i.h, i64 2, i64 3
  %i.i = or disjoint i64 %..i.i, %i.f
  br label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i

_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i: ; preds = %bb.c
  %.not.i = icmp eq i64 %i.f, -4
  %i.j = add nuw i64 %i.f, 4
  br i1 %.not.i, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread38.i, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i, !prof !61

_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i: ; preds = %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i, %bb.d, %bb.b
  %.sroa.7.1.i35.i = phi i64 [ %i.j, %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i ], [ %i.i, %bb.d ], [ %i.f, %bb.b ] ; 16 uses
  %i.k = icmp slt i64 %.sroa.7.1.i35.i, 0
  br i1 %i.k, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i
  %i.l = icmp eq i64 %.sroa.7.1.i35.i, 0          ; 3 uses
  br i1 %i.l, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h35696b1975e4f09cE.exit.i", label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101704
  %i.m = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.7.1.i35.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !101704 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %i.m to i64
  br label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h35696b1975e4f09cE.exit.i"

bb.g:                                             ; preds = %bb.e, %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.e ], [ 0, %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.7.1.i35.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1824) #75, !noalias !101705
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h35696b1975e4f09cE.exit.i": ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi i64 [ %i.o, %bb.f ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ] ; 2 uses
  %i.p = inttoptr i64 %.sroa.10.0.i.i to ptr      ; 6 uses
  %i.q = invoke noundef i64 @"_ZN90_$LT$base64..engine..general_purpose..GeneralPurpose$u20$as$u20$base64..engine..Engine$GT$15internal_encode17hb38d5503517c65f5E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(323) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull align 1 %i.p, i64 noundef %.sroa.7.1.i35.i)
          to label %.noexc.i unwind label %bb.s, !noalias !101701 ; 6 uses

.noexc.i:                                         ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h35696b1975e4f09cE.exit.i"
  br i1 %i.c, label %bb.h, label %_ZN6base646encode19encode_with_padding17h73fa2f19e0a3cea1E.exit.i

bb.h:                                             ; preds = %.noexc.i
  %i.r = icmp ugt i64 %i.q, %.sroa.7.1.i35.i
  br i1 %i.r, label %bb.j, label %bb.i, !prof !49

bb.i:                                             ; preds = %bb.h
  %i.s = sub nuw nsw i64 %.sroa.7.1.i35.i, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.u = invoke noundef i64 @_ZN6base646encode11add_padding17h4b530db523f4f20eE(i64 noundef %i.q, ptr noalias noundef nonnull align 1 %i.t, i64 noundef %i.s)
          to label %.noexc5.i unwind label %bb.s, !noalias !101701

.noexc5.i:                                        ; preds = %bb.i
  %i.v = xor i64 %i.q, -1
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %bb.k, label %_ZN6base646encode19encode_with_padding17h73fa2f19e0a3cea1E.exit.i, !prof !101706

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.q, i64 noundef %.sroa.7.1.i35.i, i64 noundef %.sroa.7.1.i35.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1816) #75
          to label %.noexc6.i unwind label %bb.s, !noalias !101701

.noexc6.i:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc5.i
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1813, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1815) #75
          to label %.noexc7.i unwind label %bb.s, !noalias !101701

.noexc7.i:                                        ; preds = %bb.k
  unreachable

_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread38.i: ; preds = %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1822, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1823) #75, !noalias !101707
  unreachable

_ZN6base646encode19encode_with_padding17h73fa2f19e0a3cea1E.exit.i: ; preds = %.noexc5.i, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101708
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.p, i64 noundef %.sroa.7.1.i35.i)
          to label %bb.n unwind label %bb.l, !noalias !101709

bb.l:                                             ; preds = %_ZN6base646encode19encode_with_padding17h73fa2f19e0a3cea1E.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.l, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd7cc45108439bf84E.exit.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %.sroa.7.1.i35.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !101710
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd7cc45108439bf84E.exit.i"

bb.n:                                             ; preds = %_ZN6base646encode19encode_with_padding17h73fa2f19e0a3cea1E.exit.i
  %i.y = load i64, ptr %i.b, align 8, !range !60, !noalias !101708, !noundef !44
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.o, label %_ZN6base646engine6Engine6encode5inner17h477c7d978080b318E.exit

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = inttoptr i64 %.sroa.7.1.i35.i to ptr
  %.sroa.6.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx15.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx15.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ac = load <2 x i64>, ptr %i.aa, align 8, !noalias !101708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101708
  call void @llvm.experimental.noalias.scope.decl(metadata !101711)
  call void @llvm.experimental.noalias.scope.decl(metadata !101712)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101713
  store i64 %.sroa.7.1.i35.i, ptr %i.a, align 8, !noalias !101714
  store i64 %.sroa.10.0.i.i, ptr %.sroa.6.0..sroa_idx15.i, align 8, !noalias !101714
  store ptr %i.ab, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx15.sroa_idx.i, align 8, !noalias !101714
  store <2 x i64> %i.ac, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx15.sroa_idx.i, align 8, !noalias !101714
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1825, i64 noundef 12, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1326, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1826) #75
          to label %bb.r unwind label %bb.p, !noalias !101715

bb.p:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101716)
  call void @llvm.experimental.noalias.scope.decl(metadata !101717)
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !range !74, !alias.scope !101718, !noalias !101713, !noundef !44 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ae, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd7cc45108439bf84E.exit.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx15.i, align 8, !alias.scope !101718, !noalias !101713, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !101719
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd7cc45108439bf84E.exit.i"

bb.r:                                             ; preds = %bb.o
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd7cc45108439bf84E.exit.i": ; preds = %bb.t, %bb.s, %bb.q, %bb.p, %bb.m, %bb.l
end_hunk_17
