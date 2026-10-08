Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.08?download=true
inline.NumInlined: 5641
inline.NumDeleted: 2214
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZN4axum7routing15Router$LT$S$GT$4nest17hf63abf428a387111E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.ay, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 84 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 4, !range !31, !alias.scope !2285, !noalias !2287, !noundef !14
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = invoke { ptr, i64 } @_ZN4axum7routing11path_router18validate_nest_path17heb7ac64c0a06fa63E(i1 noundef zeroext %i.br, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156)
          to label %bb.j unwind label %bb.bs, !noalias !2288 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2289
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !2286, !noalias !2290, !nonnull !14, !noundef !14
  store ptr %i.bw, ptr %i.al, align 8, !noalias !2289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2289
  invoke void @"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h03f1622c273670a0E"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.z)
          to label %bb.m unwind label %bb.l, !noalias !2291

"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit.i": ; preds = %.thread84.i, %bb.l
  %.pn19.i = phi { ptr, i32 } [ %i.ca, %bb.l ], [ %.pn16.pn.i, %.thread84.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  call void @llvm.experimental.noalias.scope.decl(metadata !2293)
  %i.bx = load ptr, ptr %i.al, align 8, !alias.scope !2294, !noalias !2289, !nonnull !14, !noundef !14
  %i.by = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !2295
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.k, label %.thread184

bb.k:                                             ; preds = %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hd92760864ab146ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %.thread184 unwind label %bb.bm, !noalias !2291

bb.l:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit48.i", %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.i", %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit.i"

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 64, i1 false), !noalias !2289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2289
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 15 uses
  %.promoted.i = load i64, ptr %i.cb, align 8, !alias.scope !2296, !noalias !2297 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.cc = icmp eq i64 %.promoted.i, 0
  br i1 %i.cc, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.i", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 15 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.av, i64 80 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.promoted136.i = load i16, ptr %i.ce, align 8, !alias.scope !2298, !noalias !2297
  %.promoted153.i = load ptr, ptr %i.cd, align 8, !noalias !2289
  %.promoted156.i = load ptr, ptr %i.cf, align 8, !noalias !2289
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i", %.lr.ph.i
  %.lcssa158.i = phi ptr [ %.promoted156.i, %.lr.ph.i ], [ %.lcssa157.i, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i" ] ; 2 uses
  %.lcssa113155.i = phi ptr [ %.promoted153.i, %.lr.ph.i ], [ %.lcssa113154.i, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i" ] ; 2 uses
  %i.ct = phi i16 [ %.promoted136.i, %.lr.ph.i ], [ %i.dd, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i" ] ; 2 uses
  %i.cu = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.dg, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2296)
  call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  %.not12.i.i.i = icmp eq i16 %i.ct, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.i"

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  store ptr %i.cz, ptr %i.cf, align 8, !alias.scope !2298, !noalias !2297
  store ptr %i.cy, ptr %i.cd, align 8, !alias.scope !2298, !noalias !2297
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.i"

.lr.ph.i.i.i:                                     ; preds = %bb.n, %.lr.ph.i.i.i
  %i.cv = phi ptr [ %i.cz, %.lr.ph.i.i.i ], [ %.lcssa158.i, %bb.n ] ; 2 uses
  %i.cw = phi ptr [ %i.cy, %.lr.ph.i.i.i ], [ %.lcssa113155.i, %bb.n ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.cv, align 16, !noalias !2300
  %i.cx = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 -4608 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.cx to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.thread84.i:                                      ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i", %bb.bq, %bb.bn, %bb.bi, %bb.be, %.body.i, %.body39.loopexit.split-lp.i, %.body39.loopexit.i, %bb.t
  %.pn16.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp111.i, %.body39.loopexit.split-lp.i ], [ %.pn.i, %bb.t ], [ %i.hi, %bb.bi ], [ %eh.lpad-body.i, %.body.i ], [ %i.he, %bb.be ], [ %lpad.loopexit110.i, %.body39.loopexit.i ], [ %.pn1687.i, %bb.bn ], [ %.pn1687.i, %bb.bq ], [ %.pn1687.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i" ]
  invoke void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1bae05e07c46b566E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ak)
          to label %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit.i" unwind label %bb.bm, !noalias !2291

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.i": ; preds = %._crit_edge.i.i.i, %bb.n
  %.lcssa157.i = phi ptr [ %i.cz, %._crit_edge.i.i.i ], [ %.lcssa158.i, %bb.n ]
  %.lcssa113154.i = phi ptr [ %i.cy, %._crit_edge.i.i.i ], [ %.lcssa113155.i, %bb.n ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.cast.i.i.i, %._crit_edge.i.i.i ], [ %i.ct, %bb.n ] ; 3 uses
  %i.da = add i16 %.lcssa.i.i.i, -1
  %i.db = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.dc = zext nneg i16 %i.db to i64
  %i.dd = and i16 %i.da, %.lcssa.i.i.i            ; 15 uses
  %i.de = sub nsw i64 0, %i.dc
  %i.df = getelementptr inbounds [288 x i8], ptr %.lcssa113154.i, i64 %i.de ; 3 uses
  %i.dg = add i64 %i.cu, -1                       ; 16 uses
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 -288
  %.sroa.0.0.copyload.i = load i32, ptr %i.dh, align 8, !noalias !2301 ; 2 uses
  %.sroa.656.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.df, i64 -280
  %.sroa.656.0.copyload.i = load i64, ptr %.sroa.656.0..sroa_idx.i, align 8, !noalias !2301 ; 4 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.df, i64 -272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.9.0..sroa_idx.i, i64 272, i1 false), !noalias !2301
  %.not.i = icmp eq i64 %.sroa.656.0.copyload.i, 4
  br i1 %.not.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.sink.split.i", label %bb.o

bb.o:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2289
  store i32 %.sroa.0.0.copyload.i, ptr %i.aj, align 4, !noalias !2289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2289
  store i64 %.sroa.656.0.copyload.i, ptr %i.ai, align 8, !noalias !2289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.9.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.9.i, i64 272, i1 false), !noalias !2289
  %i.di = load ptr, ptr %i.al, align 8, !noalias !2289, !nonnull !14, !noundef !14 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 152
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 176
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !2302, !noalias !2303, !noundef !14
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %select.unfold.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 184
  %i.do = invoke noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h05bb9f74ce1444f7E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.aj)
          to label %.noexc26.i unwind label %.body39.thread93.loopexit.i, !noalias !2291 ; 2 uses

.noexc26.i:                                       ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  call void @llvm.experimental.noalias.scope.decl(metadata !2305)
  %i.dp = lshr i64 %i.do, 57
  %i.dq = trunc nuw nsw i64 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 160
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !2306, !noalias !2307, !noundef !14 ; 2 uses
  %i.dt = load ptr, ptr %i.dj, align 8, !alias.scope !2306, !noalias !2307, !nonnull !14, !noundef !14 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.dq, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.noexc26.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc26.i ], [ %i.ek, %bb.s ]
  %.pn.i.i.i = phi i64 [ %i.do, %.noexc26.i ], [ %i.el, %bb.s ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.ds ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.du, align 1, !noalias !2308 ; 2 uses
  %i.dv = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.dw = bitcast <16 x i1> %i.dv to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.dw, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i25.i, label %.lr.ph.i.i24.i

.lr.ph.i.i24.i:                                   ; preds = %bb.q, %bb.r
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.ej, %bb.r ], [ %i.dw, %bb.q ] ; 3 uses
  %i.dx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = add i64 %.sroa.01.0.i.i.i.i, %i.dy
  %i.ea = and i64 %i.dz, %i.ds
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr inbounds [24 x i8], ptr %i.dt, i64 %i.eb ; 3 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -24
  %.val2.i.i.i.i = load i32, ptr %i.ed, align 4, !alias.scope !2309, !noalias !2310, !noundef !14
  %i.ee = icmp eq i32 %.sroa.0.0.copyload.i, %.val2.i.i.i.i
  br i1 %i.ee, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h739e4f62760a316aE.exit.i", label %bb.r, !prof !22

._crit_edge.i.i25.i:                              ; preds = %bb.r, %bb.q
  %i.ef = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.eg = bitcast <16 x i1> %i.ef to i16
  %i.eh = icmp eq i16 %i.eg, 0
  br i1 %i.eh, label %bb.s, label %select.unfold.i, !prof !16

bb.r:                                             ; preds = %.lr.ph.i.i24.i
  %i.ei = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.ej = and i16 %i.ei, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ej, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i25.i, label %.lr.ph.i.i24.i

bb.s:                                             ; preds = %._crit_edge.i.i25.i
  %i.ek = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.el = add i64 %.sroa.01.0.i.i.i.i, %i.ek
  br label %bb.q

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.sink.split.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i", %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.i"
  store i16 %i.dd, ptr %i.ce, align 8, !alias.scope !2298, !noalias !2297
  store i64 %i.dg, ptr %i.cb, align 8, !alias.scope !2296, !noalias !2297
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.i"

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.i": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.sink.split.i", %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  invoke void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1bae05e07c46b566E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ak)
          to label %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit28.i" unwind label %bb.l, !noalias !2291

"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit28.i": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2289
  call void @llvm.experimental.noalias.scope.decl(metadata !2311)
  call void @llvm.experimental.noalias.scope.decl(metadata !2312)
  %i.em = load ptr, ptr %i.al, align 8, !alias.scope !2313, !noalias !2289, !nonnull !14, !noundef !14
  %i.en = atomicrmw sub ptr %i.em, i64 1 release, align 8, !noalias !2314
  %i.eo = icmp eq i64 %i.en, 1
  br i1 %i.eo, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$axum..routing..path_router..Node$GT$$GT$17hd07876fb70519c95E.exit52.sink.split.i", label %.thread188

.thread188:                                       ; preds = %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit28.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.by

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$axum..routing..path_router..Node$GT$$GT$17hd07876fb70519c95E.exit52.sink.split.i": ; preds = %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit50.i", %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit28.i"
  %.sroa.8.1 = phi i64 [ undef, %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit28.i" ], [ %.sroa.8.0, %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit50.i" ]
  %.sroa.7.1 = phi ptr [ undef, %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit28.i" ], [ %.sroa.7.0, %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit50.i" ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit28.i" ], [ %.sroa.0.0157, %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit50.i" ] ; 2 uses
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hd92760864ab146ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.bw unwind label %bb.bv

bb.t:                                             ; preds = %"_ZN4core3ptr219drop_in_place$LT$tower_layer..layer_fn..LayerFn$LT$axum..routing..strip_prefix..StripPrefix$LT$axum..extract..nested_path..SetNestedPath$LT$axum..routing..route..Route$GT$$GT$..layer..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h897aec8892bd47ebE.exit.i"
  br i1 %.sroa.01.2.i, label %..body39.thread93.i_crit_edge, label %.thread84.i

..body39.thread93.i_crit_edge:                    ; preds = %bb.t
  %.pre = load i64, ptr %i.ai, align 8, !range !17, !alias.scope !2315, !noalias !2291
  br label %.body39.thread93.i

.body39.thread93.loopexit.i:                      ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h739e4f62760a316aE.exit.i", %bb.p
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i16 %i.dd, ptr %i.ce, align 8, !alias.scope !2298, !noalias !2297
  store i64 %i.dg, ptr %i.cb, align 8, !alias.scope !2296, !noalias !2297
  br label %.body39.thread93.i

.body39.thread93.loopexit.split-lp.i:             ; preds = %select.unfold.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body39.thread93.i

.body39.loopexit.i:                               ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i"
  %lpad.loopexit110.i = landingpad { ptr, i32 }
          cleanup
  store i16 %i.dd, ptr %i.ce, align 8, !alias.scope !2298, !noalias !2297
  store i64 %i.dg, ptr %i.cb, align 8, !alias.scope !2296, !noalias !2297
  br label %.thread84.i

.body39.loopexit.split-lp.i:                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i43.i"
  %lpad.loopexit.split-lp111.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread84.i

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h739e4f62760a316aE.exit.i": ; preds = %.lr.ph.i.i24.i
  %i.ep = getelementptr inbounds i8, ptr %i.ec, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2289
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !2291, !nonnull !14, !noundef !14
  %i.er = getelementptr inbounds i8, ptr %i.ec, i64 -8
  %i.es = load i64, ptr %i.er, align 8, !noalias !2291, !noundef !14
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  invoke void @_ZN4axum7routing11path_router21path_for_nested_route17h3c8e534755e5cef3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, i64 noundef %i.bu, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.et, i64 noundef %i.es)
          to label %bb.v unwind label %.body39.thread93.loopexit.i, !noalias !2291

select.unfold.i:                                  ; preds = %bb.o, %._crit_edge.i.i25.i
  store i16 %i.dd, ptr %i.ce, align 8, !alias.scope !2298, !noalias !2297
  store i64 %i.dg, ptr %i.cb, align 8, !alias.scope !2296, !noalias !2297
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 65, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #42
          to label %bb.u unwind label %.body39.thread93.loopexit.split-lp.i, !noalias !2291

bb.u:                                             ; preds = %select.unfold.i
  unreachable

bb.v:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h739e4f62760a316aE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2289
  %i.eu = invoke { ptr, i64 } @"_ZN5alloc4sync22Arc$LT$$u5b$T$u5d$$GT$15copy_from_slice17h12594155362f2ee1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, i64 noundef %i.bu)
          to label %bb.x unwind label %bb.w, !noalias !2291 ; 2 uses

"_ZN4core3ptr219drop_in_place$LT$tower_layer..layer_fn..LayerFn$LT$axum..routing..strip_prefix..StripPrefix$LT$axum..extract..nested_path..SetNestedPath$LT$axum..routing..route..Route$GT$$GT$..layer..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h897aec8892bd47ebE.exit.i": ; preds = %bb.z, %bb.y, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.ev, %bb.w ], [ %i.ez, %bb.z ], [ %i.ez, %bb.y ] ; 2 uses
  %.sroa.01.2.i = phi i1 [ %.sroa.01.3.i, %bb.w ], [ true, %bb.z ], [ true, %bb.y ]
  invoke void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah) #44
          to label %bb.t unwind label %bb.bm, !noalias !2291

bb.w:                                             ; preds = %bb.aa, %bb.v
  %.sroa.01.3.i = phi i1 [ false, %bb.aa ], [ true, %bb.v ]
  %i.ev = landingpad { ptr, i32 }
          cleanup
  store i16 %i.dd, ptr %i.ce, align 8, !alias.scope !2298, !noalias !2297
  store i64 %i.dg, ptr %i.cb, align 8, !alias.scope !2296, !noalias !2297
  br label %"_ZN4core3ptr219drop_in_place$LT$tower_layer..layer_fn..LayerFn$LT$axum..routing..strip_prefix..StripPrefix$LT$axum..extract..nested_path..SetNestedPath$LT$axum..routing..route..Route$GT$$GT$..layer..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h897aec8892bd47ebE.exit.i"

bb.x:                                             ; preds = %bb.v
  %i.ew = extractvalue { ptr, i64 } %i.eu, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ew) ]
  %i.ex = extractvalue { ptr, i64 } %i.eu, 1      ; 2 uses
  store ptr %i.ew, ptr %i.af, align 8, !noalias !2289
  store i64 %i.ex, ptr %i.cg, align 8, !noalias !2289
  %i.ey = invoke { ptr, i64 } @"_ZN5alloc4sync22Arc$LT$$u5b$T$u5d$$GT$15copy_from_slice17h12594155362f2ee1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %2)
          to label %bb.aa unwind label %bb.y, !noalias !2291 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i16 %i.dd, ptr %i.ce, align 8, !alias.scope !2298, !noalias !2297
  store i64 %i.dg, ptr %i.cb, align 8, !alias.scope !2296, !noalias !2297
  %i.fa = atomicrmw sub ptr %i.ew, i64 1 release, align 8, !noalias !2316
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.z, label %"_ZN4core3ptr219drop_in_place$LT$tower_layer..layer_fn..LayerFn$LT$axum..routing..strip_prefix..StripPrefix$LT$axum..extract..nested_path..SetNestedPath$LT$axum..routing..route..Route$GT$$GT$..layer..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h897aec8892bd47ebE.exit.i"

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hff598df8f1e7358cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %"_ZN4core3ptr219drop_in_place$LT$tower_layer..layer_fn..LayerFn$LT$axum..routing..strip_prefix..StripPrefix$LT$axum..extract..nested_path..SetNestedPath$LT$axum..routing..route..Route$GT$$GT$..layer..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h897aec8892bd47ebE.exit.i" unwind label %bb.bm, !noalias !2291

bb.aa:                                            ; preds = %bb.x
  %i.fc = extractvalue { ptr, i64 } %i.ey, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fc) ]
  %i.fd = extractvalue { ptr, i64 } %i.ey, 1
  store ptr %i.ew, ptr %i.ag, align 8, !noalias !2289
  store i64 %i.ex, ptr %i.ch, align 8, !noalias !2289
  store ptr %i.fc, ptr %i.ci, align 8, !noalias !2289
  store i64 %i.fd, ptr %i.cj, align 8, !noalias !2289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2289
  invoke fastcc void @"_ZN4axum7routing17Endpoint$LT$S$GT$5layer17hb1a2a0d30a2d60f5E"(ptr noalias noundef align 8 captures(address) dereferenceable(280) %i.ae, ptr noalias noundef readonly align 8 captures(address) dereferenceable(280) %i.ai, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ag)
          to label %bb.ab unwind label %bb.w, !noalias !2291

bb.ab:                                            ; preds = %bb.aa
  %i.fe = load i64, ptr %i.ae, align 8, !range !17, !noalias !2289, !noundef !14
  %i.ff = icmp eq i64 %i.fe, 3
  br i1 %i.ff, label %bb.ac, label %bb.ax

bb.ac:                                            ; preds = %bb.ab
  %i.fg = load ptr, ptr %i.cm, align 8, !noalias !2289, !nonnull !14, !align !23, !noundef !14 ; 4 uses
  %i.fh = load ptr, ptr %i.cn, align 8, !noalias !2289, !nonnull !14, !align !19, !noundef !14 ; 6 uses
  %i.fi = load ptr, ptr %i.ck, align 8, !noalias !2289, !nonnull !14 ; 2 uses
  %i.fj = load i64, ptr %i.cl, align 8, !noalias !2289 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2289
  store ptr %i.fg, ptr %i.co, align 8, !noalias !2289
  store ptr %i.fh, ptr %i.cp, align 8, !noalias !2289
  store i64 3, ptr %i.ab, align 8, !noalias !2289
  call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  %i.fk = load i8, ptr %i.bp, align 4, !range !31, !alias.scope !2318, !noalias !2319, !noundef !14
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = invoke { ptr, i64 } @_ZN4axum7routing11path_router13validate_path17h65cfa3552cf249c5E(i1 noundef zeroext %i.fl, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fi, i64 noundef %i.fj)
          to label %bb.ad unwind label %.loopexit.i, !noalias !2320 ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.fn = extractvalue { ptr, i64 } %i.fm, 0      ; 2 uses
  %.not.i34.i = icmp eq ptr %i.fn, null
  br i1 %.not.i34.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i16 %i.dd, ptr %i.ce, align 8, !alias.scope !2298, !noalias !2297
  store i64 %i.dg, ptr %i.cb, align 8, !alias.scope !2296, !noalias !2297
  %i.fo = extractvalue { ptr, i64 } %i.fm, 1
  br label %bb.ar

bb.af:                                            ; preds = %bb.ad
  %i.fp = load i32, ptr %i.cq, align 8, !alias.scope !2321, !noalias !2319, !noundef !14 ; 2 uses
  %i.fq = icmp eq i32 %i.fp, -1
  br i1 %i.fq, label %bb.ag, label %bb.ah, !prof !16

bb.ag:                                            ; preds = %bb.af
  store i16 %i.dd, ptr %i.ce, align 8, !alias.scope !2298, !noalias !2297
  store i64 %i.dg, ptr %i.cb, align 8, !alias.scope !2296, !noalias !2297
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 71, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #42
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i, !noalias !2320

.noexc.i.i:                                       ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.fr = add nuw i32 %i.fp, 1                    ; 3 uses
  store i32 %i.fr, ptr %i.cq, align 8, !alias.scope !2321, !noalias !2319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2322
  invoke fastcc void @"_ZN4axum7routing11path_router23PathRouter$LT$S$C$_$GT$8set_node17h0c234a9d12fb3189E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bo, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fi, i64 noundef %i.fj, i32 noundef %i.fr)
          to label %bb.ai unwind label %.loopexit.i, !noalias !2323

bb.ai:                                            ; preds = %bb.ah
  %i.fs = load i64, ptr %i.y, align 8, !range !37, !noalias !2322, !noundef !14 ; 2 uses
  %.not10.i.i = icmp eq i64 %i.fs, -9223372036854775808
  br i1 %.not10.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i16 %i.dd, ptr %i.ce, align 8, !alias.scope !2298, !noalias !2297
  store i64 %i.dg, ptr %i.cb, align 8, !alias.scope !2296, !noalias !2297
  %.sroa.8.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.8.0.copyload60.i = load ptr, ptr %.sroa.8.0..sroa_idx59.i, align 8, !noalias !2324
  %.sroa.961.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
end_hunk_0
begin_hunk_1_@"_ZN4axum7routing15Router$LT$S$GT$4nest17hf63abf428a387111E":bb.a

bb.ca:                                            ; preds = %bb.bz
  %i.it = extractvalue { ptr, i64 } %i.is, 0      ; 2 uses
  %i.iu = extractvalue { ptr, i64 } %i.is, 1      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 48, i1 false), !noalias !2350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2351
  %i.iv = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.iw = load ptr, ptr %i.iv, align 8, !alias.scope !2347, !noalias !2350, !nonnull !14, !noundef !14
  store ptr %i.iw, ptr %i.v, align 8, !noalias !2351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2351
  invoke void @"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h03f1622c273670a0E"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.j)
          to label %bb.cd unwind label %bb.cc, !noalias !2352

"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit.i52": ; preds = %.thread97.i, %bb.cc
  %.pn19.i53 = phi { ptr, i32 } [ %i.ja, %bb.cc ], [ %.pn16.pn.i64, %.thread97.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  call void @llvm.experimental.noalias.scope.decl(metadata !2354)
  %i.ix = load ptr, ptr %i.v, align 8, !alias.scope !2355, !noalias !2351, !nonnull !14, !noundef !14
  %i.iy = atomicrmw sub ptr %i.ix, i64 1 release, align 8, !noalias !2356
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %bb.cb, label %.thread184

bb.cb:                                            ; preds = %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit.i52"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hd92760864ab146ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.thread184 unwind label %bb.eu, !noalias !2352

bb.cc:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit51.i", %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.i97", %bb.ca
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit.i52"

bb.cd:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !noalias !2351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2351
  %i.jb = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 18 uses
  %.promoted.i54 = load i64, ptr %i.jb, align 8, !alias.scope !2357, !noalias !2358 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i49)
  %i.jc = icmp eq i64 %.promoted.i54, 0
  br i1 %i.jc, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.i97", label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %bb.cd
  %i.jd = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 18 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %.sroa.9.8..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.jj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.jk = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.jn = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.jo = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.jp = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.jq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.611.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.611.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.626.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.611.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.611.i.sroa.8.0..sroa.2.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %i.av, i64 144 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.promoted175.i = load i16, ptr %i.je, align 8, !alias.scope !2359, !noalias !2358
  %.promoted196.i = load ptr, ptr %i.jd, align 8, !noalias !2351
  %.promoted199.i = load ptr, ptr %i.jf, align 8, !noalias !2351
  br label %bb.ce

bb.ce:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i95", %.lr.ph.i55
  %.lcssa201.i = phi ptr [ %.promoted199.i, %.lr.ph.i55 ], [ %.lcssa200.i, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i95" ] ; 2 uses
  %.lcssa149198.i = phi ptr [ %.promoted196.i, %.lr.ph.i55 ], [ %.lcssa149197.i, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i95" ] ; 2 uses
  %i.jy = phi i16 [ %.promoted175.i, %.lr.ph.i55 ], [ %i.ki, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i95" ] ; 2 uses
  %i.jz = phi i64 [ %.promoted.i54, %.lr.ph.i55 ], [ %i.kl, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i95" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2357)
  call void @llvm.experimental.noalias.scope.decl(metadata !2360)
  %.not12.i.i.i57 = icmp eq i16 %i.jy, 0
  br i1 %.not12.i.i.i57, label %.lr.ph.i.i.i107, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.i58"

._crit_edge.i.i.i111:                             ; preds = %.lr.ph.i.i.i107
  store ptr %i.ke, ptr %i.jf, align 8, !alias.scope !2359, !noalias !2358
  store ptr %i.kd, ptr %i.jd, align 8, !alias.scope !2359, !noalias !2358
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.i58"

.lr.ph.i.i.i107:                                  ; preds = %bb.ce, %.lr.ph.i.i.i107
  %i.ka = phi ptr [ %i.ke, %.lr.ph.i.i.i107 ], [ %.lcssa201.i, %bb.ce ] ; 2 uses
  %i.kb = phi ptr [ %i.kd, %.lr.ph.i.i.i107 ], [ %.lcssa149198.i, %bb.ce ]
  %.val10.i.i.i108 = load <16 x i8>, ptr %i.ka, align 16, !noalias !2361
  %i.kc = icmp sgt <16 x i8> %.val10.i.i.i108, splat (i8 -1)
  %i.kd = getelementptr inbounds i8, ptr %i.kb, i64 -4608 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 3 uses
  %.cast.i.i.i109 = bitcast <16 x i1> %i.kc to i16 ; 2 uses
  %.not.i.i.i110 = icmp eq i16 %.cast.i.i.i109, 0
  br i1 %.not.i.i.i110, label %.lr.ph.i.i.i107, label %._crit_edge.i.i.i111

.thread97.i:                                      ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i139", %bb.ey, %bb.ev, %bb.ep, %bb.el, %.body.i85, %.body42.loopexit.split-lp.i, %.body42.loopexit.i, %bb.ck
  %.pn16.pn.i64 = phi { ptr, i32 } [ %lpad.loopexit.split-lp147.i, %.body42.loopexit.split-lp.i ], [ %.pn.i83, %bb.ck ], [ %i.rm, %bb.ep ], [ %eh.lpad-body.i86, %.body.i85 ], [ %i.ri, %bb.el ], [ %lpad.loopexit146.i, %.body42.loopexit.i ], [ %.pn16100.i, %bb.ev ], [ %.pn16100.i, %bb.ey ], [ %.pn16100.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i139" ]
  invoke void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1bae05e07c46b566E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit.i52" unwind label %bb.eu, !noalias !2352

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.i58": ; preds = %._crit_edge.i.i.i111, %bb.ce
  %.lcssa200.i = phi ptr [ %i.ke, %._crit_edge.i.i.i111 ], [ %.lcssa201.i, %bb.ce ]
  %.lcssa149197.i = phi ptr [ %i.kd, %._crit_edge.i.i.i111 ], [ %.lcssa149198.i, %bb.ce ] ; 2 uses
  %.lcssa.i.i.i59 = phi i16 [ %.cast.i.i.i109, %._crit_edge.i.i.i111 ], [ %i.jy, %bb.ce ] ; 3 uses
  %i.kf = add i16 %.lcssa.i.i.i59, -1
  %i.kg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i59, i1 true)
  %i.kh = zext nneg i16 %i.kg to i64
  %i.ki = and i16 %i.kf, %.lcssa.i.i.i59          ; 18 uses
  %i.kj = sub nsw i64 0, %i.kh
  %i.kk = getelementptr inbounds [288 x i8], ptr %.lcssa149197.i, i64 %i.kj ; 3 uses
  %i.kl = add i64 %i.jz, -1                       ; 19 uses
  %i.km = getelementptr inbounds i8, ptr %i.kk, i64 -288
  %.sroa.0.0.copyload.i60 = load i32, ptr %i.km, align 8, !noalias !2362 ; 2 uses
  %.sroa.659.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.kk, i64 -280
  %.sroa.659.0.copyload.i = load i64, ptr %.sroa.659.0..sroa_idx.i, align 8, !noalias !2362 ; 4 uses
  %.sroa.9.0..sroa_idx.i61 = getelementptr inbounds i8, ptr %i.kk, i64 -272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.9.i49, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.9.0..sroa_idx.i61, i64 272, i1 false), !noalias !2362
  %.not.i62 = icmp eq i64 %.sroa.659.0.copyload.i, 4
  br i1 %.not.i62, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.sink.split.i96", label %bb.cf

bb.cf:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.i58"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2351
  store i32 %.sroa.0.0.copyload.i60, ptr %i.t, align 4, !noalias !2351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2351
  store i64 %.sroa.659.0.copyload.i, ptr %i.s, align 8, !noalias !2351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.9.8..sroa_idx.i56, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.9.i49, i64 272, i1 false), !noalias !2351
  %i.kn = load ptr, ptr %i.v, align 8, !noalias !2351, !nonnull !14, !noundef !14 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 152
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 176
  %i.kq = load i64, ptr %i.kp, align 8, !alias.scope !2363, !noalias !2364, !noundef !14
  %i.kr = icmp eq i64 %i.kq, 0
  br i1 %i.kr, label %select.unfold.i78, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 184
  %i.kt = invoke noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h05bb9f74ce1444f7E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ks, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.t)
          to label %.noexc26.i65 unwind label %.body42.thread106.loopexit.i, !noalias !2352 ; 2 uses

.noexc26.i65:                                     ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !2365)
  call void @llvm.experimental.noalias.scope.decl(metadata !2366)
  %i.ku = lshr i64 %i.kt, 57
  %i.kv = trunc nuw nsw i64 %i.ku to i8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kn, i64 160
  %i.kx = load i64, ptr %i.kw, align 8, !alias.scope !2367, !noalias !2368, !noundef !14 ; 2 uses
  %i.ky = load ptr, ptr %i.ko, align 8, !alias.scope !2367, !noalias !2368, !nonnull !14, !noundef !14 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i66 = insertelement <16 x i8> poison, i8 %i.kv, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i67 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i66, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cj, %.noexc26.i65
  %.sroa.9.0.i.i.i.i68 = phi i64 [ 0, %.noexc26.i65 ], [ %i.lp, %bb.cj ]
  %.pn.i.i.i69 = phi i64 [ %i.kt, %.noexc26.i65 ], [ %i.lq, %bb.cj ]
  %.sroa.01.0.i.i.i.i70 = and i64 %.pn.i.i.i69, %i.kx ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.sroa.01.0.i.i.i.i70
  %.sroa.0.0.copyload.i26.i.i.i71 = load <16 x i8>, ptr %i.kz, align 1, !noalias !2369 ; 2 uses
  %i.la = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i71, %.sroa.0.15.vec.insert.i.i.i.i67
  %i.lb = bitcast <16 x i1> %i.la to i16          ; 2 uses
  %.not.i.not32.i.i.i72 = icmp eq i16 %i.lb, 0
  br i1 %.not.i.not32.i.i.i72, label %._crit_edge.i.i25.i77, label %.lr.ph.i.i24.i73

.lr.ph.i.i24.i73:                                 ; preds = %bb.ch, %bb.ci
  %.sroa.06.0.i33.i.i.i74 = phi i16 [ %i.lo, %bb.ci ], [ %i.lb, %bb.ch ] ; 3 uses
  %i.lc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i74, i1 true)
  %i.ld = zext nneg i16 %i.lc to i64
  %i.le = add i64 %.sroa.01.0.i.i.i.i70, %i.ld
  %i.lf = and i64 %i.le, %i.kx
  %i.lg = sub nsw i64 0, %i.lf
  %i.lh = getelementptr inbounds [24 x i8], ptr %i.ky, i64 %i.lg ; 3 uses
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -24
  %.val2.i.i.i.i75 = load i32, ptr %i.li, align 4, !alias.scope !2370, !noalias !2371, !noundef !14
  %i.lj = icmp eq i32 %.sroa.0.0.copyload.i60, %.val2.i.i.i.i75
  br i1 %i.lj, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h739e4f62760a316aE.exit.i80", label %bb.ci, !prof !22

._crit_edge.i.i25.i77:                            ; preds = %bb.ci, %bb.ch
  %i.lk = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i71, splat (i8 -1)
  %i.ll = bitcast <16 x i1> %i.lk to i16
  %i.lm = icmp eq i16 %i.ll, 0
  br i1 %i.lm, label %bb.cj, label %select.unfold.i78, !prof !16

bb.ci:                                            ; preds = %.lr.ph.i.i24.i73
  %i.ln = add i16 %.sroa.06.0.i33.i.i.i74, -1
  %i.lo = and i16 %i.ln, %.sroa.06.0.i33.i.i.i74  ; 2 uses
  %.not.i.not.i.i.i76 = icmp eq i16 %i.lo, 0
  br i1 %.not.i.not.i.i.i76, label %._crit_edge.i.i25.i77, label %.lr.ph.i.i24.i73

bb.cj:                                            ; preds = %._crit_edge.i.i25.i77
  %i.lp = add i64 %.sroa.9.0.i.i.i.i68, 16        ; 2 uses
  %i.lq = add i64 %.sroa.01.0.i.i.i.i70, %i.lp
  br label %bb.ch

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.sink.split.i96": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i95", %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.i58"
  store i16 %i.ki, ptr %i.je, align 8, !alias.scope !2359, !noalias !2358
  store i64 %i.kl, ptr %i.jb, align 8, !alias.scope !2357, !noalias !2358
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.i97"

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.i97": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.sink.split.i96", %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i49)
  invoke void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1bae05e07c46b566E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit28.i98" unwind label %bb.cc, !noalias !2352

"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit28.i98": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcd52ca46e5b79f1eE.exit.thread.i97"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2351
  call void @llvm.experimental.noalias.scope.decl(metadata !2372)
  call void @llvm.experimental.noalias.scope.decl(metadata !2373)
  %i.lr = load ptr, ptr %i.v, align 8, !alias.scope !2374, !noalias !2351, !nonnull !14, !noundef !14
  %i.ls = atomicrmw sub ptr %i.lr, i64 1 release, align 8, !noalias !2375
  %i.lt = icmp eq i64 %i.ls, 1
  br i1 %i.lt, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$axum..routing..path_router..Node$GT$$GT$17hd07876fb70519c95E.exit55.sink.split.i", label %.thread201

.thread201:                                       ; preds = %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit28.i98"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.fj

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$axum..routing..path_router..Node$GT$$GT$17hd07876fb70519c95E.exit55.sink.split.i": ; preds = %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit53.i", %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit28.i98"
  %.sroa.8154.1 = phi i64 [ undef, %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit28.i98" ], [ %.sroa.8154.0, %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit53.i" ]
  %.sroa.7151.1 = phi ptr [ undef, %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit28.i98" ], [ %.sroa.7151.0, %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit53.i" ]
  %.sroa.0149.1 = phi i64 [ -9223372036854775807, %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit28.i98" ], [ %.sroa.0149.0, %"_ZN4core3ptr183drop_in_place$LT$std..collections..hash..map..IntoIter$LT$axum..routing..RouteId$C$axum..routing..Endpoint$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$$GT$17h0849ce9354dd152eE.exit53.i" ] ; 2 uses
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hd92760864ab146ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.fh unwind label %bb.bv

bb.ck:                                            ; preds = %"_ZN4core3ptr219drop_in_place$LT$tower_layer..layer_fn..LayerFn$LT$axum..routing..strip_prefix..StripPrefix$LT$axum..extract..nested_path..SetNestedPath$LT$axum..routing..route..Route$GT$$GT$..layer..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h897aec8892bd47ebE.exit.i82"
  br i1 %.sroa.01.2.i84, label %..body42.thread106.i_crit_edge, label %.thread97.i

..body42.thread106.i_crit_edge:                   ; preds = %bb.ck
  %.pre539 = load i64, ptr %i.s, align 8, !range !17, !alias.scope !2376, !noalias !2352
  br label %.body42.thread106.i

.body42.thread106.loopexit.i:                     ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h739e4f62760a316aE.exit.i80", %bb.cg
  %lpad.loopexit.i63 = landingpad { ptr, i32 }
          cleanup
  store i16 %i.ki, ptr %i.je, align 8, !alias.scope !2359, !noalias !2358
  store i64 %i.kl, ptr %i.jb, align 8, !alias.scope !2357, !noalias !2358
  br label %.body42.thread106.i

.body42.thread106.loopexit.split-lp.i:            ; preds = %select.unfold.i78
  %lpad.loopexit.split-lp.i79 = landingpad { ptr, i32 }
          cleanup
  br label %.body42.thread106.i

.body42.loopexit.i:                               ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i94"
  %lpad.loopexit146.i = landingpad { ptr, i32 }
          cleanup
  store i16 %i.ki, ptr %i.je, align 8, !alias.scope !2359, !noalias !2358
  store i64 %i.kl, ptr %i.jb, align 8, !alias.scope !2357, !noalias !2358
  br label %.thread97.i

.body42.loopexit.split-lp.i:                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i46.i"
  %lpad.loopexit.split-lp147.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread97.i

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h739e4f62760a316aE.exit.i80": ; preds = %.lr.ph.i.i24.i73
  %i.lu = getelementptr inbounds i8, ptr %i.lh, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2351
  %i.lv = load ptr, ptr %i.lu, align 8, !noalias !2352, !nonnull !14, !noundef !14
  %i.lw = getelementptr inbounds i8, ptr %i.lh, i64 -8
  %i.lx = load i64, ptr %i.lw, align 8, !noalias !2352, !noundef !14
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  invoke void @_ZN4axum7routing11path_router21path_for_nested_route17h3c8e534755e5cef3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.it, i64 noundef %i.iu, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ly, i64 noundef %i.lx)
          to label %bb.cm unwind label %.body42.thread106.loopexit.i, !noalias !2352

select.unfold.i78:                                ; preds = %bb.cf, %._crit_edge.i.i25.i77
  store i16 %i.ki, ptr %i.je, align 8, !alias.scope !2359, !noalias !2358
  store i64 %i.kl, ptr %i.jb, align 8, !alias.scope !2357, !noalias !2358
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 65, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #42
          to label %bb.cl unwind label %.body42.thread106.loopexit.split-lp.i, !noalias !2352

bb.cl:                                            ; preds = %select.unfold.i78
  unreachable

bb.cm:                                            ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h739e4f62760a316aE.exit.i80"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2351
  %i.lz = invoke { ptr, i64 } @"_ZN5alloc4sync22Arc$LT$$u5b$T$u5d$$GT$15copy_from_slice17h12594155362f2ee1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.it, i64 noundef %i.iu)
          to label %bb.co unwind label %bb.cn, !noalias !2352 ; 2 uses

"_ZN4core3ptr219drop_in_place$LT$tower_layer..layer_fn..LayerFn$LT$axum..routing..strip_prefix..StripPrefix$LT$axum..extract..nested_path..SetNestedPath$LT$axum..routing..route..Route$GT$$GT$..layer..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h897aec8892bd47ebE.exit.i82": ; preds = %bb.cq, %bb.cp, %bb.cn
  %.pn.i83 = phi { ptr, i32 } [ %i.ma, %bb.cn ], [ %i.me, %bb.cq ], [ %i.me, %bb.cp ] ; 2 uses
  %.sroa.01.2.i84 = phi i1 [ %.sroa.01.3.i81, %bb.cn ], [ true, %bb.cq ], [ true, %bb.cp ]
  invoke void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #44
          to label %bb.ck unwind label %bb.eu, !noalias !2352

bb.cn:                                            ; preds = %bb.cr, %bb.cm
  %.sroa.01.3.i81 = phi i1 [ false, %bb.cr ], [ true, %bb.cm ]
  %i.ma = landingpad { ptr, i32 }
          cleanup
  store i16 %i.ki, ptr %i.je, align 8, !alias.scope !2359, !noalias !2358
  store i64 %i.kl, ptr %i.jb, align 8, !alias.scope !2357, !noalias !2358
  br label %"_ZN4core3ptr219drop_in_place$LT$tower_layer..layer_fn..LayerFn$LT$axum..routing..strip_prefix..StripPrefix$LT$axum..extract..nested_path..SetNestedPath$LT$axum..routing..route..Route$GT$$GT$..layer..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h897aec8892bd47ebE.exit.i82"

bb.co:                                            ; preds = %bb.cm
  %i.mb = extractvalue { ptr, i64 } %i.lz, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mb) ]
  %i.mc = extractvalue { ptr, i64 } %i.lz, 1      ; 2 uses
  store ptr %i.mb, ptr %i.p, align 8, !noalias !2351
  store i64 %i.mc, ptr %i.jg, align 8, !noalias !2351
  %i.md = invoke { ptr, i64 } @"_ZN5alloc4sync22Arc$LT$$u5b$T$u5d$$GT$15copy_from_slice17h12594155362f2ee1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %2)
          to label %bb.cr unwind label %bb.cp, !noalias !2352 ; 2 uses

bb.cp:                                            ; preds = %bb.co
  %i.me = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i16 %i.ki, ptr %i.je, align 8, !alias.scope !2359, !noalias !2358
  store i64 %i.kl, ptr %i.jb, align 8, !alias.scope !2357, !noalias !2358
  %i.mf = atomicrmw sub ptr %i.mb, i64 1 release, align 8, !noalias !2377
  %i.mg = icmp eq i64 %i.mf, 1
  br i1 %i.mg, label %bb.cq, label %"_ZN4core3ptr219drop_in_place$LT$tower_layer..layer_fn..LayerFn$LT$axum..routing..strip_prefix..StripPrefix$LT$axum..extract..nested_path..SetNestedPath$LT$axum..routing..route..Route$GT$$GT$..layer..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h897aec8892bd47ebE.exit.i82"

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hff598df8f1e7358cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %"_ZN4core3ptr219drop_in_place$LT$tower_layer..layer_fn..LayerFn$LT$axum..routing..strip_prefix..StripPrefix$LT$axum..extract..nested_path..SetNestedPath$LT$axum..routing..route..Route$GT$$GT$..layer..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h897aec8892bd47ebE.exit.i82" unwind label %bb.eu, !noalias !2352

bb.cr:                                            ; preds = %bb.co
  %i.mh = extractvalue { ptr, i64 } %i.md, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mh) ]
  %i.mi = extractvalue { ptr, i64 } %i.md, 1
  store ptr %i.mb, ptr %i.q, align 8, !noalias !2351
  store i64 %i.mc, ptr %i.jh, align 8, !noalias !2351
  store ptr %i.mh, ptr %i.ji, align 8, !noalias !2351
  store i64 %i.mi, ptr %i.jj, align 8, !noalias !2351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2351
  invoke fastcc void @"_ZN4axum7routing17Endpoint$LT$S$GT$5layer17hb1a2a0d30a2d60f5E"(ptr noalias noundef align 8 captures(address) dereferenceable(280) %i.o, ptr noalias noundef readonly align 8 captures(address) dereferenceable(280) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.q)
          to label %bb.cs unwind label %bb.cn, !noalias !2352

bb.cs:                                            ; preds = %bb.cr
  %i.mj = load i64, ptr %i.o, align 8, !range !17, !noalias !2351, !noundef !14
  %i.mk = icmp eq i64 %i.mj, 3
  br i1 %i.mk, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2351
  %i.ml = load ptr, ptr %i.jk, align 8, !noalias !2351, !nonnull !14
  %i.mm = load i64, ptr %i.jl, align 8, !noalias !2351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2351
  %i.mn = load <2 x ptr>, ptr %i.jw, align 8, !noalias !2351
  store <2 x ptr> %i.mn, ptr %i.jx, align 8, !noalias !2351
  store i64 3, ptr %i.l, align 8, !noalias !2351
  invoke fastcc void @"_ZN4axum7routing11path_router23PathRouter$LT$S$C$_$GT$14route_endpoint17h698424e42631bb16E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.io, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ml, i64 noundef %i.mm, ptr noalias noundef align 8 captures(address) dereferenceable(280) %i.l)
          to label %bb.er unwind label %.loopexit.i93, !noalias !2352

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.n, ptr noundef nonnull align 8 dereferenceable(280) %i.o, i64 280, i1 false), !noalias !2351
  %i.mo = load ptr, ptr %i.jk, align 8, !noalias !2351, !nonnull !14 ; 5 uses
  %i.mp = load i64, ptr %i.jl, align 8, !noalias !2351 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2351
  %i.mq = load i8, ptr %i.ip, align 4, !range !31, !alias.scope !2379, !noalias !2380, !noundef !14
  %i.mr = trunc nuw i8 %i.mq to i1
  %i.ms = invoke { ptr, i64 } @_ZN4axum7routing11path_router13validate_path17h65cfa3552cf249c5E(i1 noundef zeroext %i.mr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.mo, i64 noundef %i.mp)
          to label %bb.cv unwind label %.loopexit.split-lp.i.i, !noalias !2381 ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.mt = extractvalue { ptr, i64 } %i.ms, 0      ; 2 uses
  %.not.i34.i87 = icmp eq ptr %i.mt, null
  br i1 %.not.i34.i87, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i16 %i.ki, ptr %i.je, align 8, !alias.scope !2359, !noalias !2358
  store i64 %i.kl, ptr %i.jb, align 8, !alias.scope !2357, !noalias !2358
  invoke fastcc void @"_ZN4core3ptr133drop_in_place$LT$axum..routing..method_routing..MethodRouter$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$17h7743663c938eb60dE"(ptr noalias noundef nonnull align 8 dereferenceable(280) %i.n)
          to label %.thread115.i unwind label %.loopexit.split-lp.i88, !noalias !2352

.thread115.i:                                     ; preds = %bb.cw
  %i.mu = extractvalue { ptr, i64 } %i.ms, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2351
  br label %bb.en

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2382
  %i.mv = load ptr, ptr %i.jm, align 8, !alias.scope !2379, !noalias !2380, !nonnull !14, !noundef !14 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 200
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 224
  %i.my = load i64, ptr %i.mx, align 8, !alias.scope !2383, !noalias !2384, !noundef !14
  %i.mz = icmp eq i64 %i.my, 0
  br i1 %i.mz, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h81d2ee5fc804b16cE.exit.thread.i.i", label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 232
  %i.nb = invoke noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h8e2bf4bde0470109E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.na, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.mo, i64 noundef %i.mp)
          to label %.noexc.i.i89 unwind label %.loopexit.split-lp.i.i, !noalias !2385 ; 2 uses

.noexc.i.i89:                                     ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  call void @llvm.experimental.noalias.scope.decl(metadata !2387)
  %i.nc = lshr i64 %i.nb, 57
  %i.nd = trunc nuw nsw i64 %i.nc to i8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mv, i64 208
end_hunk_1
