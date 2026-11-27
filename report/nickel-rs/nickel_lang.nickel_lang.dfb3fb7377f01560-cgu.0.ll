Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang.nickel_lang.dfb3fb7377f01560-cgu.0?download=true
inline.NumInlined: 7487
inline.NumDeleted: 3530
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN16nickel_lang_core5cache9TermCache9closurize17hefc9c31aab8ff2b7E:bb.a
  br i1 %i.dj, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h6c0f3f6568975cc5E.exit.i", label %bb.h

bb.h:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h5d32aa452300f036E.exit.i.i.i"
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !16037, !noundef !13
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.dk, align 8, !alias.scope !16037
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h6c0f3f6568975cc5E.exit.i"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h6c0f3f6568975cc5E.exit.i": ; preds = %bb.h, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h5d32aa452300f036E.exit.i.i.i"
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ -1, %bb.h ], [ -128, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h5d32aa452300f036E.exit.i.i.i" ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.de, align 1, !noalias !16038
  %i.dn = getelementptr i8, ptr %i.db, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.dn, align 1, !noalias !16038
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !16037, !noundef !13
  %i.dq = add i64 %i.dp, -1
  store i64 %i.dq, ptr %i.do, align 8, !alias.scope !16037
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.co, i64 -32
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !16039
  %.not.i = icmp eq i64 %.sroa.3.0.copyload.i, 8
  br i1 %.not.i, label %.loopexit, label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dr, align 8
  store i64 9, ptr %0, align 8
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd45bb5bc141bd7c8E.exit32"

bb.j:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h6c0f3f6568975cc5E.exit.i"
  %.sroa.5.8..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds i8, ptr %i.co, i64 -16
  %.sroa.5.8.copyload = load ptr, ptr %.sroa.5.8..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !noalias !16019, !nonnull !13, !noundef !13 ; 2 uses
  %.sroa.6.8..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds i8, ptr %i.co, i64 -8
  %.sroa.6.8.copyload = load i8, ptr %.sroa.6.8..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !noalias !16019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %.sroa.5.8.copyload, ptr %i.g, align 8
  %i.ds = invoke fastcc ptr @"_ZN100_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..default..Default$GT$7default17h33ee393ac24803acE"()
          to label %._crit_edge137 unwind label %bb.ag

.loopexit:                                        ; preds = %._crit_edge.i.i.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h6c0f3f6568975cc5E.exit.i"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @322) #41
  unreachable

._crit_edge137:                                   ; preds = %bb.j
  %i.dt = tail call fastcc noundef nonnull ptr @"_ZN101_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$18closurize_as_btype17h254c10ece6235347E"(ptr noundef nonnull %.sroa.5.8.copyload, ptr noalias noundef nonnull align 1 %2, ptr noundef nonnull %i.ds, ptr noundef null, i64 noundef 0, ptr undef)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.dt, ptr %i.du, align 8
  store i64 7, ptr %i.f, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 %.sroa.6.8.copyload, ptr %i.dv, align 8
  call void @_ZN16nickel_lang_core5cache9TermCache6insert17hf8a879e66c400394E(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_ZN16nickel_lang_core5cache10ImportData7imports17ha3c674b4a077615fE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %3, i32 noundef %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !16040)
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !alias.scope !16040
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !16040 ; 7 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !16040 ; 3 uses
  %.sroa.6.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i23, align 8, !alias.scope !16040 ; 5 uses
  %.sroa.71.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.71.0.copyload.i = load <16 x i1>, ptr %.sroa.71.0..sroa_idx.i, align 8, !alias.scope !16040 ; 5 uses
  %.sroa.82.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.82.0.copyload.i = load i64, ptr %.sroa.82.0..sroa_idx.i, align 8, !alias.scope !16040 ; 6 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !16040 ; 4 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !16040 ; 3 uses
  %.sroa.113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.113.0.copyload.i = load i16, ptr %.sroa.113.0..sroa_idx.i, align 8, !alias.scope !16040 ; 3 uses
  %.sroa.124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.124.0.copyload.i = load i64, ptr %.sroa.124.0..sroa_idx.i, align 8, !alias.scope !16040 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16041
  %.fr54.i.i.i.i.i.i = freeze i64 %.sroa.0.0.copyload.i
  %i.dw = trunc i64 %.fr54.i.i.i.i.i.i to i1      ; 3 uses
  %.not.i.us.peel.i.i.i.i.i.i = icmp eq ptr %.sroa.5.0.copyload.i, null ; 2 uses
  br i1 %i.dw, label %.split.us.preheader.i.i.i.i.i.i, label %.split.i.i.i.i.i.i

.split.us.preheader.i.i.i.i.i.i:                  ; preds = %._crit_edge137
  %i.dx = icmp eq i64 %.sroa.82.0.copyload.i, 0
  %or.cond.i.i = select i1 %.not.i.us.peel.i.i.i.i.i.i, i1 true, i1 %i.dx
  br i1 %or.cond.i.i, label %bb.k, label %.split49.us.i.i.i.i.i.i

bb.k:                                             ; preds = %.split.us.preheader.i.i.i.i.i.i
  %.not.i.i.us.peel.i.i.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload.i, null
  br i1 %.not.i.i.us.peel.i.i.i.i.i.i, label %.split53.us.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !16042), !noalias !16043
  call void @llvm.experimental.noalias.scope.decl(metadata !16044), !noalias !16043
  %i.dy = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !alias.scope !16045, !noalias !16046, !nonnull !13, !noundef !13 ; 3 uses
  %.val13.i.i.i.i.i.us.peel.i.i.i.i.i.i = load <16 x i8>, ptr %i.dy, align 16, !noalias !16047
  %i.dz = icmp sgt <16 x i8> %.val13.i.i.i.i.i.us.peel.i.i.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !16045, !noalias !16046, !noundef !13 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split53.us.i.i.i.i.i.i, label %.split49.us.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %._crit_edge137
  br i1 %.not.i.us.peel.i.i.i.i.i.i, label %.split53.us.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.split.i.i.i.i.i.i
  %i.ee = icmp eq i64 %.sroa.82.0.copyload.i, 0
  br i1 %i.ee, label %.split53.us.i.i.i.i.i.i, label %.split49.us.i.i.i.i.i.i

.split49.us.i.i.i.i.i.i:                          ; preds = %bb.m, %bb.l, %.split.us.preheader.i.i.i.i.i.i
  %.sroa.17.0.i.i = phi <16 x i1> [ %i.dz, %bb.l ], [ %.sroa.71.0.copyload.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.71.0.copyload.i, %bb.m ]
  %.sroa.12.0.i.i = phi ptr [ %i.ea, %bb.l ], [ %.sroa.6.0.copyload.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.6.0.copyload.i, %bb.m ] ; 2 uses
  %.val.i.i.i.i31.i.i.i = phi ptr [ null, %bb.l ], [ %.sroa.4.0.copyload.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i, %bb.m ]
  %.us-phi50.i.i.i.i.i.i = phi ptr [ %i.dy, %bb.l ], [ %.sroa.5.0.copyload.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i, %bb.m ] ; 2 uses
  %.us-phi51.i.i.i.i.i.i = phi i64 [ %i.ec, %bb.l ], [ %.sroa.82.0.copyload.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.82.0.copyload.i, %bb.m ]
  %i.ef = bitcast <16 x i1> %.sroa.17.0.i.i to i16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ef, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.split49.us.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.eg = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.12.0.i.i, %.split49.us.i.i.i.i.i.i ] ; 2 uses
  %i.eh = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.us-phi50.i.i.i.i.i.i, %.split49.us.i.i.i.i.i.i ]
  %.val911.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.eg, align 16, !noalias !16048
  %i.ei = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -128 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ei to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.split49.us.i.i.i.i.i.i
  %.sroa.12.1.i.i = phi ptr [ %.sroa.12.0.i.i, %.split49.us.i.i.i.i.i.i ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.el = phi ptr [ %.us-phi50.i.i.i.i.i.i, %.split49.us.i.i.i.i.i.i ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ef, %.split49.us.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.em = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.en = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = and i16 %i.em, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.eq = bitcast i16 %i.ep to <16 x i1>
  %i.er = sub nsw i64 0, %i.eo
  %i.es = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.er
  %i.et = add i64 %.us-phi51.i.i.i.i.i.i, -1
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb44005811fbd0798E.exit.i.i.i.i"

.split53.us.i.i.i.i.i.i:                          ; preds = %bb.m, %.split.i.i.i.i.i.i, %bb.l, %bb.k
  %.sroa.17.1.i.i = phi <16 x i1> [ %.sroa.71.0.copyload.i, %bb.k ], [ %.sroa.71.0.copyload.i, %bb.m ], [ %.sroa.71.0.copyload.i, %.split.i.i.i.i.i.i ], [ %i.dz, %bb.l ]
  %.sroa.12.2.i.i = phi ptr [ %.sroa.6.0.copyload.i, %bb.k ], [ %.sroa.6.0.copyload.i, %bb.m ], [ %.sroa.6.0.copyload.i, %.split.i.i.i.i.i.i ], [ %i.ea, %bb.l ]
  %.val.i.i.i.i30.i.i.i = phi ptr [ null, %bb.k ], [ %.sroa.4.0.copyload.i, %bb.m ], [ %.sroa.4.0.copyload.i, %.split.i.i.i.i.i.i ], [ null, %bb.l ]
  %.val.i.i.i.i.i26.i.i.i = phi i64 [ %.sroa.82.0.copyload.i, %bb.k ], [ 0, %bb.m ], [ %.sroa.82.0.copyload.i, %.split.i.i.i.i.i.i ], [ 0, %bb.l ]
  %.not.i2.i.i.i.i.i.i = icmp eq ptr %.sroa.9.0.copyload.i, null
  %i.eu = icmp eq i64 %.sroa.124.0.copyload.i, 0
  %or.cond7.i.i = select i1 %.not.i2.i.i.i.i.i.i, i1 true, i1 %i.eu
  br i1 %or.cond7.i.i, label %._crit_edge.thread, label %bb.n

bb.n:                                             ; preds = %.split53.us.i.i.i.i.i.i
  %.not13.i.i.i.i.i3.i.i.i.i.i.i = icmp eq i16 %.sroa.113.0.copyload.i, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i.i.i.i:                    ; preds = %bb.n, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i
  %i.ev = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ], [ %.sroa.10.0.copyload.i, %bb.n ] ; 2 uses
  %i.ew = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ], [ %.sroa.9.0.copyload.i, %bb.n ]
  %.val911.i.i.i.i.i9.i.i.i.i.i.i = load <16 x i8>, ptr %i.ev, align 16, !noalias !16049
  %i.ex = icmp sgt <16 x i8> %.val911.i.i.i.i.i9.i.i.i.i.i.i, splat (i8 -1)
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -128 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i.i.i.i = bitcast <16 x i1> %i.ex to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, %bb.n
  %.sroa.27.0.i.i = phi ptr [ %.sroa.10.0.copyload.i, %bb.n ], [ %i.ez, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ]
  %i.fa = phi ptr [ %.sroa.9.0.copyload.i, %bb.n ], [ %i.ey, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i.i.i.i = phi i16 [ %.sroa.113.0.copyload.i, %bb.n ], [ %.cast.i.i.i.i.i10.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ] ; 3 uses
  %i.fb = add i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i.i, -1
  %i.fc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i.i, i1 true)
  %i.fd = zext nneg i16 %i.fc to i64
  %i.fe = and i16 %i.fb, %.lcssa.i.i.i.i.i5.i.i.i.i.i.i
  %i.ff = sub nsw i64 0, %i.fd
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.ff
  %i.fh = add i64 %.sroa.124.0.copyload.i, -1
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb44005811fbd0798E.exit.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb44005811fbd0798E.exit.i.i.i.i": ; preds = %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i
  %.sroa.304.0.i.i = phi i16 [ %i.fe, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i ], [ %.sroa.113.0.copyload.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.27.1.i.i = phi ptr [ %.sroa.27.0.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i ], [ %.sroa.10.0.copyload.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.17.2.i.i = phi <16 x i1> [ %.sroa.17.1.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i ], [ %i.eq, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.12.3.i.i = phi ptr [ %.sroa.12.2.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i ], [ %.sroa.12.1.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i ] ; 5 uses
  %.val.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i30.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i ], [ %.val.i.i.i.i31.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i ] ; 7 uses
  %.val.i57.i.i.i.i.i.i.i = phi i64 [ %i.fh, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i ], [ %.sroa.124.0.copyload.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i ] ; 4 uses
  %i.fi = phi ptr [ %i.fa, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i ], [ %.sroa.9.0.copyload.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i ] ; 4 uses
  %.val.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i26.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i ], [ %i.et, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i ] ; 7 uses
  %i.fj = phi ptr [ null, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i ], [ %i.el, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i ] ; 3 uses
  %.pn.i.i.i.i24 = phi ptr [ %i.fg, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i ], [ %i.es, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i25 = getelementptr inbounds i8, ptr %.pn.i.i.i.i24, i64 -8
  %.val.i2.i.i.i = load i32, ptr %.sroa.0.0.i.i.i.i.i.i25, align 4, !noalias !16050, !noundef !13
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fj, null   ; 3 uses
  %.not51.i.i.i.i.i.i.i = icmp eq ptr %i.fi, null ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i = select i1 %.not51.i.i.i.i.i.i.i, i64 0, i64 %.val.i57.i.i.i.i.i.i.i ; 2 uses
  %i.fk = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i)
  %i.fl = select i1 %.not.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i, i64 %i.fk ; 2 uses
  %i.fm = call i64 @llvm.uadd.sat.i64(i64 %i.fl, i64 1)
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.fm, i64 4) ; 3 uses
  %i.fn = shl i64 %.sroa.0.0.i.i.i.i.i, 2         ; 4 uses
  %i.fo = icmp ugt i64 %i.fl, 4611686018427387902
  %i.fp = icmp ugt i64 %i.fn, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i = or i1 %i.fo, %i.fp
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.o, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb44005811fbd0798E.exit.i.i.i.i"
  %5 = icmp eq i64 %i.fn, 0
  br i1 %5, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !16051
  %i.fq = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.fn, i64 noundef range(i64 1, 9) 4) #40, !noalias !16051 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.o, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i.i"

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb44005811fbd0798E.exit.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb44005811fbd0798E.exit.i.i.i.i" ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.fn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @411) #41, !noalias !16041
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.fq, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.a ] ; 4 uses
  %6 = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %6)
  store i32 %.val.i2.i.i.i, ptr %.sroa.10.0.i.i.i.i.i, align 4, !noalias !16041
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.a, align 8, !noalias !16041
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !16041
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !16041
  call void @llvm.experimental.noalias.scope.decl(metadata !16052)
  call void @llvm.experimental.noalias.scope.decl(metadata !16053)
  br i1 %i.dw, label %.split.us.preheader.i.i.i47.i.i.i.i, label %.split.i.i.i16.i.i.i.i

.split.us.preheader.i.i.i47.i.i.i.i:              ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i.i"
  %i.fs = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %i.fs
  br i1 %or.cond.i.i.i.i, label %bb.p, label %.split49.us.i.i.i18.i.i.i.i

bb.p:                                             ; preds = %.split.us.preheader.i.i.i47.i.i.i.i
  %.not.i.i.us.peel.i.i.i49.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.us.peel.i.i.i49.i.i.i.i, label %.split53.us.i.i.i36.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !16054), !noalias !16055
  call void @llvm.experimental.noalias.scope.decl(metadata !16056), !noalias !16055
  %i.ft = load ptr, ptr %.val.i.i.i.i.i.i.i, align 8, !alias.scope !16057, !noalias !16058, !nonnull !13, !noundef !13 ; 3 uses
  %.val13.i.i.i.i.i.us.peel.i.i.i50.i.i.i.i = load <16 x i8>, ptr %i.ft, align 16, !noalias !16059
  %i.fu = icmp sgt <16 x i8> %.val13.i.i.i.i.i.us.peel.i.i.i50.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 24
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !16057, !noalias !16058, !noundef !13 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %.split53.us.i.i.i36.i.i.i.i, label %.split49.us.i.i.i18.i.i.i.i

.split.i.i.i16.i.i.i.i:                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i, label %.split53.us.i.i.i36.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.split.i.i.i16.i.i.i.i
  %i.fz = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.fz, label %.split53.us.i.i.i36.i.i.i.i, label %.split49.us.i.i.i18.i.i.i.i

.split49.us.i.i.i18.i.i.i.i:                      ; preds = %bb.r, %bb.q, %.split.us.preheader.i.i.i47.i.i.i.i
  %.sroa.53.0.i.i.i.i = phi ptr [ null, %bb.q ], [ %.val.i.i.i.i.i.i.i, %.split.us.preheader.i.i.i47.i.i.i.i ], [ %.val.i.i.i.i.i.i.i, %bb.r ]
  %.sroa.11.1.i.i.i.i = phi ptr [ %i.ft, %bb.q ], [ %i.fj, %.split.us.preheader.i.i.i47.i.i.i.i ], [ %i.fj, %bb.r ] ; 2 uses
  %.sroa.30.0.i.i.i.i = phi <16 x i1> [ %i.fu, %bb.q ], [ %.sroa.17.2.i.i, %.split.us.preheader.i.i.i47.i.i.i.i ], [ %.sroa.17.2.i.i, %bb.r ]
  %.sroa.22.0.i.i.i.i = phi ptr [ %i.fv, %bb.q ], [ %.sroa.12.3.i.i, %.split.us.preheader.i.i.i47.i.i.i.i ], [ %.sroa.12.3.i.i, %bb.r ] ; 2 uses
  %.us-phi51.i.i.i20.i.i.i.i = phi i64 [ %i.fx, %bb.q ], [ %.val.i.i.i.i.i.i.i.i, %.split.us.preheader.i.i.i47.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i, %bb.r ]
  %i.ga = bitcast <16 x i1> %.sroa.30.0.i.i.i.i to i16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i21.i.i.i.i = icmp eq i16 %i.ga, 0
  br i1 %.not13.i.i.i.i.i.i.i.i21.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i22.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i:                 ; preds = %.split49.us.i.i.i18.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i
  %i.gb = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i ], [ %.sroa.22.0.i.i.i.i, %.split49.us.i.i.i18.i.i.i.i ] ; 2 uses
  %i.gc = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i ], [ %.sroa.11.1.i.i.i.i, %.split49.us.i.i.i18.i.i.i.i ]
  %.val911.i.i.i.i.i.i.i.i32.i.i.i.i = load <16 x i8>, ptr %i.gb, align 16, !noalias !16060
  %i.gd = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i32.i.i.i.i, splat (i8 -1)
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 -128 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i33.i.i.i.i = bitcast <16 x i1> %i.gd to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i34.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i33.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i34.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i22.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i, %.split49.us.i.i.i18.i.i.i.i
  %.sroa.22.1.i.i.i.i = phi ptr [ %.sroa.22.0.i.i.i.i, %.split49.us.i.i.i18.i.i.i.i ], [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i ]
  %i.gg = phi ptr [ %.sroa.11.1.i.i.i.i, %.split49.us.i.i.i18.i.i.i.i ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i23.i.i.i.i = phi i16 [ %i.ga, %.split49.us.i.i.i18.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i33.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i.i ] ; 3 uses
  %i.gh = add i16 %.lcssa.i.i.i.i.i.i.i.i23.i.i.i.i, -1
  %i.gi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i23.i.i.i.i, i1 true)
  %i.gj = zext nneg i16 %i.gi to i64
  %i.gk = and i16 %i.gh, %.lcssa.i.i.i.i.i.i.i.i23.i.i.i.i
  %i.gl = bitcast i16 %i.gk to <16 x i1>
  %i.gm = sub nsw i64 0, %i.gj
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gm
  %i.go = add i64 %.us-phi51.i.i.i20.i.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i.preheader

.split53.us.i.i.i36.i.i.i.i:                      ; preds = %bb.r, %.split.i.i.i16.i.i.i.i, %bb.q, %bb.p
  %.sroa.53.1.i.i.i.i = phi ptr [ null, %bb.p ], [ %.val.i.i.i.i.i.i.i, %bb.r ], [ %.val.i.i.i.i.i.i.i, %.split.i.i.i16.i.i.i.i ], [ null, %bb.q ]
  %.sroa.367.0.i.i.i.i = phi i64 [ %.val.i.i.i.i.i.i.i.i, %bb.p ], [ 0, %bb.r ], [ %.val.i.i.i.i.i.i.i.i, %.split.i.i.i16.i.i.i.i ], [ 0, %bb.q ]
  %.sroa.30.1.i.i.i.i = phi <16 x i1> [ %.sroa.17.2.i.i, %bb.p ], [ %.sroa.17.2.i.i, %bb.r ], [ %.sroa.17.2.i.i, %.split.i.i.i16.i.i.i.i ], [ %i.fu, %bb.q ]
  %.sroa.22.2.i.i.i.i = phi ptr [ %.sroa.12.3.i.i, %bb.p ], [ %.sroa.12.3.i.i, %bb.r ], [ %.sroa.12.3.i.i, %.split.i.i.i16.i.i.i.i ], [ %i.fv, %bb.q ]
  %i.gp = icmp eq i64 %.val.i57.i.i.i.i.i.i.i, 0
  %or.cond38.i.i.i.i = select i1 %.not51.i.i.i.i.i.i.i, i1 true, i1 %i.gp
  br i1 %or.cond38.i.i.i.i, label %.lr.ph.preheader, label %bb.s

bb.s:                                             ; preds = %.split53.us.i.i.i36.i.i.i.i
  %.not13.i.i.i.i.i3.i.i.i38.i.i.i.i = icmp eq i16 %.sroa.304.0.i.i, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i38.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i39.i.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i:                ; preds = %bb.s, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i
  %i.gq = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i ], [ %.sroa.27.1.i.i, %bb.s ] ; 2 uses
  %i.gr = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i ], [ %i.fi, %bb.s ]
  %.val911.i.i.i.i.i9.i.i.i43.i.i.i.i = load <16 x i8>, ptr %i.gq, align 16, !noalias !16061
  %i.gs = icmp sgt <16 x i8> %.val911.i.i.i.i.i9.i.i.i43.i.i.i.i, splat (i8 -1)
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 -128 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i44.i.i.i.i = bitcast <16 x i1> %i.gs to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i45.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i44.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i45.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i39.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i39.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i, %bb.s
  %.sroa.50.0.i.i.i.i = phi ptr [ %.sroa.27.1.i.i, %bb.s ], [ %i.gu, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i ]
  %.sroa.43.0.i.i.i.i = phi ptr [ %i.fi, %bb.s ], [ %i.gt, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i.i = phi i16 [ %.sroa.304.0.i.i, %bb.s ], [ %.cast.i.i.i.i.i10.i.i.i44.i.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i.i ] ; 3 uses
  %i.gv = add i16 %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i.i, -1
  %i.gw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i.i, i1 true)
  %i.gx = zext nneg i16 %i.gw to i64
  %i.gy = and i16 %i.gv, %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i.i
  %i.gz = sub nsw i64 0, %i.gx
  %i.ha = getelementptr inbounds [8 x i8], ptr %.sroa.43.0.i.i.i.i, i64 %i.gz
  %i.hb = add i64 %.val.i57.i.i.i.i.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i39.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i22.i.i.i.i
  %.sroa.53.4.i.i.i.i.ph = phi ptr [ %.sroa.53.1.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i39.i.i.i.i ], [ %.sroa.53.0.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i22.i.i.i.i ]
  %.sroa.11.6.i.i.i.i.ph = phi ptr [ null, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i39.i.i.i.i ], [ %i.gg, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i22.i.i.i.i ]
  %.sroa.5812.2.i.i.i.i.ph = phi i64 [ %i.hb, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i39.i.i.i.i ], [ %.val.i57.i.i.i.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i22.i.i.i.i ]
  %.sroa.5410.2.i.i.i.i.ph = phi i16 [ %i.gy, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i39.i.i.i.i ], [ %.sroa.304.0.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i22.i.i.i.i ]
  %.sroa.50.3.i.i.i.i.ph = phi ptr [ %.sroa.50.0.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i39.i.i.i.i ], [ %.sroa.27.1.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i22.i.i.i.i ]
  %.sroa.43.3.i.i.i.i.ph = phi ptr [ %.sroa.43.0.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i39.i.i.i.i ], [ %i.fi, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i22.i.i.i.i ]
  %.sroa.367.3.i.i.i.i.ph = phi i64 [ %.sroa.367.0.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i39.i.i.i.i ], [ %i.go, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i22.i.i.i.i ]
  %.sroa.30.4.i.i.i.i.ph = phi <16 x i1> [ %.sroa.30.1.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i39.i.i.i.i ], [ %i.gl, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i22.i.i.i.i ]
  %.sroa.22.5.i.i.i.i.ph = phi ptr [ %.sroa.22.2.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i39.i.i.i.i ], [ %.sroa.22.1.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i22.i.i.i.i ]
  %.pn.i25.pn.i.i.i.i.ph = phi ptr [ %i.ha, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i39.i.i.i.i ], [ %i.gn, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i22.i.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i.i.i.outer:                         ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i
  %.ph = phi ptr [ %.sroa.10.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.hk, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i ]
  %.sroa.53.4.i.i.i.i.ph157 = phi ptr [ %.sroa.53.4.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.53.6.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i ]
  %.sroa.11.6.i.i.i.i.ph158 = phi ptr [ %.sroa.11.6.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ null, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i ]
  %.sroa.5812.2.i.i.i.i.ph159 = phi i64 [ %.sroa.5812.2.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ix, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5410.2.i.i.i.i.ph160 = phi i16 [ %.sroa.5410.2.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.iu, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.50.3.i.i.i.i.ph161 = phi ptr [ %.sroa.50.3.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.50.4.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.43.3.i.i.i.i.ph162 = phi ptr [ %.sroa.43.3.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.43.4.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.367.3.i.i.i.i.ph163 = phi i64 [ %.sroa.367.3.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.367.4.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i ]
  %.sroa.30.4.i.i.i.i.ph164 = phi <16 x i1> [ %.sroa.30.4.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.30.6.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i ]
  %.sroa.22.5.i.i.i.i.ph165 = phi ptr [ %.sroa.22.5.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.22.8.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i ]
  %.ph166 = phi i64 [ %.sroa.4.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.hl, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i ]
  %.ph167 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.hn, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i ]
  %.pn.i25.pn.i.i.i.i.ph168 = phi ptr [ %.pn.i25.pn.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.iw, %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i ]
  %.not51.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.43.3.i.i.i.i.ph162, null
  %.sroa.8.0.i.i.i.i.i.i.i.i.i = select i1 %.not51.i.i.i.i.i.i.i.i.i, i64 0, i64 %.sroa.5812.2.i.i.i.i.ph159 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.outer, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i.i
  %i.hc = phi ptr [ %i.hk, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.outer ]
  %.sroa.53.4.i.i.i.i = phi ptr [ %.sroa.53.5.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i.i ], [ %.sroa.53.4.i.i.i.i.ph157, %.lr.ph.i.i.i.i.i.i.outer ] ; 7 uses
  %.sroa.11.6.i.i.i.i = phi ptr [ %i.ic, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i.i ], [ %.sroa.11.6.i.i.i.i.ph158, %.lr.ph.i.i.i.i.i.i.outer ] ; 4 uses
  %.sroa.367.3.i.i.i.i = phi i64 [ %i.ik, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i.i ], [ %.sroa.367.3.i.i.i.i.ph163, %.lr.ph.i.i.i.i.i.i.outer ] ; 7 uses
  %.sroa.30.4.i.i.i.i = phi <16 x i1> [ %i.ih, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i.i ], [ %.sroa.30.4.i.i.i.i.ph164, %.lr.ph.i.i.i.i.i.i.outer ] ; 5 uses
  %.sroa.22.5.i.i.i.i = phi ptr [ %.sroa.22.7.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i.i ], [ %.sroa.22.5.i.i.i.i.ph165, %.lr.ph.i.i.i.i.i.i.outer ] ; 5 uses
  %i.hd = phi i64 [ %i.hl, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i.i ], [ %.ph166, %.lr.ph.i.i.i.i.i.i.outer ] ; 3 uses
  %i.he = phi i64 [ %i.hn, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i.i ], [ %.ph167, %.lr.ph.i.i.i.i.i.i.outer ] ; 4 uses
  %.pn.i25.pn.i.i.i.i = phi ptr [ %i.ij, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i.i ], [ %.pn.i25.pn.i.i.i.i.ph168, %.lr.ph.i.i.i.i.i.i.outer ]
  %.val.i27.pn.in.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i25.pn.i.i.i.i, i64 -8
  %.val.i27.pn.i.i.i.i = load i32, ptr %.val.i27.pn.in.i.i.i.i, align 4, !noalias !16062, !noundef !13
  %i.hf = icmp samesign ult i64 %i.he, 2305843009213693952
  call void @llvm.assume(i1 %i.hf)
  %i.hg = icmp eq i64 %i.he, %i.hd
  br i1 %i.hg, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb44005811fbd0798E.exit.i.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1ed592b05ee199cfE.exit.i.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb44005811fbd0798E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.6.i.i.i.i, null
  %i.hh = call i64 @llvm.uadd.sat.i64(i64 %.sroa.367.3.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i)
  %i.hi = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i, i64 %i.hh
  %i.hj = call i64 @llvm.uadd.sat.i64(i64 %i.hi, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h279fd94cb63c36d9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.hd, i64 noundef range(i64 1, 0) %i.hj, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i unwind label %bb.x, !noalias !16063

.noexc.i.i.i.i:                                   ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb44005811fbd0798E.exit.i.i.i.i.i.i"
  %.pre1.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !36, !alias.scope !16055, !noalias !16041
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !16055, !noalias !16041
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1ed592b05ee199cfE.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1ed592b05ee199cfE.exit.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.hk = phi ptr [ %.pre.i.i.i.i, %.noexc.i.i.i.i ], [ %i.hc, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.hl = phi i64 [ %.pre1.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %i.hd, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.he
  store i32 %.val.i27.pn.i.i.i.i, ptr %i.hm, align 4, !noalias !16064
  %i.hn = add nuw nsw i64 %i.he, 1                ; 4 uses
  store i64 %i.hn, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !16055, !noalias !16041
  %.not.i.us.peel.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.6.i.i.i.i, null ; 2 uses
  br i1 %i.dw, label %.split.us.preheader.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i

.split.us.preheader.i.i.i.i.i.i.i:                ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1ed592b05ee199cfE.exit.i.i.i.i.i.i"
  %i.ho = icmp eq i64 %.sroa.367.3.i.i.i.i, 0
  %or.cond37.i.i.i.i = select i1 %.not.i.us.peel.i.i.i.i.i.i.i, i1 true, i1 %i.ho
  br i1 %or.cond37.i.i.i.i, label %bb.t, label %.split49.us.i.i.i.i.i.i.i

bb.t:                                             ; preds = %.split.us.preheader.i.i.i.i.i.i.i
  %.not.i.i.us.peel.i.i.i.i.i.i.i = icmp eq ptr %.sroa.53.4.i.i.i.i, null
  br i1 %.not.i.i.us.peel.i.i.i.i.i.i.i, label %.split53.us.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !16065), !noalias !16055
  call void @llvm.experimental.noalias.scope.decl(metadata !16066), !noalias !16055
  %i.hp = load ptr, ptr %.sroa.53.4.i.i.i.i, align 8, !alias.scope !16067, !noalias !16068, !nonnull !13, !noundef !13 ; 3 uses
  %.val13.i.i.i.i.i.us.peel.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hp, align 16, !noalias !16069
  %i.hq = icmp sgt <16 x i8> %.val13.i.i.i.i.i.us.peel.i.i.i.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.53.4.i.i.i.i, i64 24
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !16067, !noalias !16068, !noundef !13 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %.split53.us.i.i.i.i.i.i.i, label %.split49.us.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1ed592b05ee199cfE.exit.i.i.i.i.i.i"
  br i1 %.not.i.us.peel.i.i.i.i.i.i.i, label %.split53.us.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.split.i.i.i.i.i.i.i
  %i.hv = icmp eq i64 %.sroa.367.3.i.i.i.i, 0
  br i1 %i.hv, label %.split53.us.i.i.i.i.i.i.i, label %.split49.us.i.i.i.i.i.i.i

.split49.us.i.i.i.i.i.i.i:                        ; preds = %bb.v, %bb.u, %.split.us.preheader.i.i.i.i.i.i.i
  %.sroa.53.5.i.i.i.i = phi ptr [ null, %bb.u ], [ %.sroa.53.4.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i ], [ %.sroa.53.4.i.i.i.i, %bb.v ]
  %.sroa.11.8.i.i.i.i = phi ptr [ %i.hp, %bb.u ], [ %.sroa.11.6.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i ], [ %.sroa.11.6.i.i.i.i, %bb.v ] ; 2 uses
  %.sroa.30.5.i.i.i.i = phi <16 x i1> [ %i.hq, %bb.u ], [ %.sroa.30.4.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i ], [ %.sroa.30.4.i.i.i.i, %bb.v ]
  %.sroa.22.6.i.i.i.i = phi ptr [ %i.hr, %bb.u ], [ %.sroa.22.5.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i ], [ %.sroa.22.5.i.i.i.i, %bb.v ] ; 2 uses
  %.us-phi51.i.i.i.i.i.i.i = phi i64 [ %i.ht, %bb.u ], [ %.sroa.367.3.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i ], [ %.sroa.367.3.i.i.i.i, %bb.v ]
  %i.hw = bitcast <16 x i1> %.sroa.30.5.i.i.i.i to i16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hw, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.split49.us.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hx = phi ptr [ %i.ib, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.22.6.i.i.i.i, %.split49.us.i.i.i.i.i.i.i ] ; 2 uses
  %i.hy = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.8.i.i.i.i, %.split49.us.i.i.i.i.i.i.i ]
  %.val911.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hx, align 16, !noalias !16070
  %i.hz = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ia = getelementptr inbounds i8, ptr %i.hy, i64 -128 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.hz to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h074852d5412b29f1E.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.split49.us.i.i.i.i.i.i.i
  %.sroa.22.7.i.i.i.i = phi ptr [ %.sroa.22.6.i.i.i.i, %.split49.us.i.i.i.i.i.i.i ], [ %i.ib, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ic = phi ptr [ %.sroa.11.8.i.i.i.i, %.split49.us.i.i.i.i.i.i.i ], [ %i.ia, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.hw, %.split49.us.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.id = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ie = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.if = zext nneg i16 %i.ie to i64
  %i.ig = and i16 %i.id, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ih = bitcast i16 %i.ig to <16 x i1>
  %i.ii = sub nsw i64 0, %i.if
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.ii
  %i.ik = add i64 %.us-phi51.i.i.i.i.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i

.split53.us.i.i.i.i.i.i.i:                        ; preds = %bb.v, %.split.i.i.i.i.i.i.i, %bb.u, %bb.t
  %.sroa.53.6.i.i.i.i = phi ptr [ null, %bb.t ], [ %.sroa.53.4.i.i.i.i, %bb.v ], [ %.sroa.53.4.i.i.i.i, %.split.i.i.i.i.i.i.i ], [ null, %bb.u ]
  %.sroa.367.4.i.i.i.i = phi i64 [ %.sroa.367.3.i.i.i.i, %bb.t ], [ 0, %bb.v ], [ %.sroa.367.3.i.i.i.i, %.split.i.i.i.i.i.i.i ], [ 0, %bb.u ]
  %.sroa.30.6.i.i.i.i = phi <16 x i1> [ %.sroa.30.4.i.i.i.i, %bb.t ], [ %.sroa.30.4.i.i.i.i, %bb.v ], [ %.sroa.30.4.i.i.i.i, %.split.i.i.i.i.i.i.i ], [ %i.hq, %bb.u ]
  %.sroa.22.8.i.i.i.i = phi ptr [ %.sroa.22.5.i.i.i.i, %bb.t ], [ %.sroa.22.5.i.i.i.i, %bb.v ], [ %.sroa.22.5.i.i.i.i, %.split.i.i.i.i.i.i.i ], [ %i.hr, %bb.u ]
  %.not.i2.i.i.i.i.i.i.i = icmp eq ptr %.sroa.43.3.i.i.i.i.ph162, null
  %i.il = icmp eq i64 %.sroa.5812.2.i.i.i.i.ph159, 0
  %or.cond39.i.i.i.i = select i1 %.not.i2.i.i.i.i.i.i.i, i1 true, i1 %i.il
  br i1 %or.cond39.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hcf07d62bdeec85e7E.exit.i.i.i.i.loopexit", label %bb.w

bb.w:                                             ; preds = %.split53.us.i.i.i.i.i.i.i
  %.not13.i.i.i.i.i3.i.i.i.i.i.i.i = icmp eq i16 %.sroa.5410.2.i.i.i.i.ph160, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i:                  ; preds = %bb.w, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i
  %i.im = phi ptr [ %i.iq, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i ], [ %.sroa.50.3.i.i.i.i.ph161, %bb.w ] ; 2 uses
  %i.in = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i ], [ %.sroa.43.3.i.i.i.i.ph162, %bb.w ]
  %.val911.i.i.i.i.i9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.im, align 16, !noalias !16071
  %i.io = icmp sgt <16 x i8> %.val911.i.i.i.i.i9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ip = getelementptr inbounds i8, ptr %i.in, i64 -128 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i.i.i.i.i = bitcast <16 x i1> %i.io to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h68e1f72dd5c449a9E.exit.i4.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i, %bb.w
  %.sroa.50.4.i.i.i.i = phi ptr [ %.sroa.50.3.i.i.i.i.ph161, %bb.w ], [ %i.iq, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i ]
  %.sroa.43.4.i.i.i.i = phi ptr [ %.sroa.43.3.i.i.i.i.ph162, %bb.w ], [ %i.ip, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i.i.i.i.i = phi i16 [ %.sroa.5410.2.i.i.i.i.ph160, %bb.w ], [ %.cast.i.i.i.i.i10.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i.i ] ; 3 uses
  %i.ir = add i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i.i.i, -1
  %i.is = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i.i.i, i1 true)
  %i.it = zext nneg i16 %i.is to i64
  %i.iu = and i16 %i.ir, %.lcssa.i.i.i.i.i5.i.i.i.i.i.i.i
  %i.iv = sub nsw i64 0, %i.it
  %i.iw = getelementptr inbounds [8 x i8], ptr %.sroa.43.4.i.i.i.i, i64 %i.iv
  %i.ix = add i64 %.sroa.5812.2.i.i.i.i.ph159, -1
  br label %.lr.ph.i.i.i.i.i.i.outer

bb.x:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb44005811fbd0798E.exit.i.i.i.i.i.i"
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !16041 ; 2 uses
  %i.iz = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.iz, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !16041, !nonnull !13, !noundef !13
  br label %common.resume.sink.split

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hcf07d62bdeec85e7E.exit.i.i.i.i.loopexit": ; preds = %.split53.us.i.i.i.i.i.i.i
  %.sroa.034.0.copyload.pre = load i64, ptr %i.a, align 8, !noalias !16072
  %.sroa.3.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !16072
  br label %.lr.ph.preheader

common.resume.sink.split:                         ; preds = %bb.z, %bb.y
  %.sroa.034.0.ph.sink = phi i64 [ %.val.i.i.i.i, %bb.y ], [ %.sroa.034.0.ph, %bb.z ]
  %.sroa.3.0.ph.sink = phi ptr [ %.val7.i.i.i.i, %bb.y ], [ %.sroa.3.0.ph, %bb.z ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.iy, %bb.y ], [ %i.jd, %bb.z ]
  %i.ja = shl nuw i64 %.sroa.034.0.ph.sink, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.ph.sink, i64 noundef %i.ja, i64 noundef range(i64 1, -9223372036854775807) 4) #40, !noalias !13
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.ag, %bb.z, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.iy, %bb.x ], [ %i.js, %bb.ag ], [ %i.jd, %bb.z ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

._crit_edge.thread:                               ; preds = %.split53.us.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd45bb5bc141bd7c8E.exit31"

.lr.ph.preheader:                                 ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hcf07d62bdeec85e7E.exit.i.i.i.i.loopexit", %.split53.us.i.i.i36.i.i.i.i
  %.sroa.535.0.ph = phi i64 [ 1, %.split53.us.i.i.i36.i.i.i.i ], [ %i.hn, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hcf07d62bdeec85e7E.exit.i.i.i.i.loopexit" ] ; 2 uses
  %.sroa.3.0.ph = phi ptr [ %.sroa.10.0.i.i.i.i.i, %.split53.us.i.i.i36.i.i.i.i ], [ %.sroa.3.0.copyload.pre, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hcf07d62bdeec85e7E.exit.i.i.i.i.loopexit" ] ; 6 uses
  %.sroa.034.0.ph = phi i64 [ %.sroa.4.0.i.i.i.i.i, %.split53.us.i.i.i36.i.i.i.i ], [ %.sroa.034.0.copyload.pre, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hcf07d62bdeec85e7E.exit.i.i.i.i.loopexit" ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.jb = icmp samesign ult i64 %.sroa.535.0.ph, 2305843009213693952
  call void @llvm.assume(i1 %i.jb)
  %.idx112 = shl nuw nsw i64 %.sroa.535.0.ph, 2
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.3.0.ph, i64 %.idx112
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.ph) ]
  br label %.lr.ph

bb.z:                                             ; preds = %.lr.ph
  %i.jd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.je = icmp eq i64 %.sroa.034.0.ph, 0
  br i1 %i.je, label %common.resume, label %common.resume.sink.split

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ae
  %.sroa.741.071 = phi ptr [ %i.jf, %bb.ae ], [ %.sroa.3.0.ph, %.lr.ph.preheader ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.741.071, i64 4 ; 2 uses
  %i.jg = load i32, ptr %.sroa.741.071, align 4, !noalias !16073, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_ZN16nickel_lang_core5cache9TermCache9closurize17hefc9c31aab8ff2b7E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %3, i32 noundef %i.jg)
          to label %bb.ab unwind label %bb.z

._crit_edge:                                      ; preds = %bb.ae
  %i.jh = icmp eq i64 %.sroa.034.0.ph, 0
  br i1 %i.jh, label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd45bb5bc141bd7c8E.exit31", label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.ji = shl nuw i64 %.sroa.034.0.ph, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.ph, i64 noundef %i.ji, i64 noundef range(i64 1, -9223372036854775807) 4) #40, !noalias !16074
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd45bb5bc141bd7c8E.exit31"

"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd45bb5bc141bd7c8E.exit31": ; preds = %._crit_edge.thread, %._crit_edge, %bb.aa
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.jj, align 8
  store i64 9, ptr %0, align 8
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd45bb5bc141bd7c8E.exit32"

bb.ab:                                            ; preds = %.lr.ph
  %i.jk = load i64, ptr %i.d, align 8, !range !54, !noundef !13 ; 2 uses
  %.not16 = icmp eq i64 %i.jk, 9
  br i1 %.not16, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jm = load i64, ptr %i.jl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.jk, ptr %0, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.jm, ptr %i.jn, align 8
  %i.jo = icmp eq i64 %.sroa.034.0.ph, 0
  br i1 %i.jo, label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd45bb5bc141bd7c8E.exit32", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jp = shl nuw i64 %.sroa.034.0.ph, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.ph, i64 noundef %i.jp, i64 noundef range(i64 1, -9223372036854775807) 4) #40, !noalias !16075
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd45bb5bc141bd7c8E.exit32"

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.jq = icmp eq ptr %i.jf, %i.jc
  br i1 %i.jq, label %._crit_edge, label %.lr.ph

"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd45bb5bc141bd7c8E.exit32": ; preds = %bb.ad, %bb.ac, %bb.c, %bb.i, %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd45bb5bc141bd7c8E.exit31"
  ret void

bb.af:                                            ; preds = %bb.ag
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.ag:                                            ; preds = %bb.j
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #43
          to label %common.resume unwind label %bb.af
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN16nickel_lang_core5label5Label17get_evaluated_arg17h434ff33598c7e8f0E(ptr %.88.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !16094 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.not = icmp eq ptr %.88.val, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %.88.val to i64
  %i.e = and i64 %i.d, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !18

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = load i64, ptr %.88.val, align 8, !noundef !13 ; 3 uses
  %i.g = and i64 %i.f, 72057594037927935          ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  %i.j = and i64 %i.f, 1080863910568919040
  %i.k = icmp ult i64 %i.f, 864691128455135232
  tail call void @llvm.assume(i1 %i.k)
  %i.l = or i64 %i.i, %i.j
  store i64 %i.l, ptr %.88.val, align 8
  %i.m = icmp eq i64 %i.g, 72057594037927935
  br i1 %i.m, label %bb.e, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !19

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @746, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.q, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3get17h703ae53d8d3e4236E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %.88.val)
  %i.r = load ptr, ptr %i.c, align 8, !nonnull !13, !noundef !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16097)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !16098, !nonnull !13, !noundef !13 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noalias !16098, !noundef !13
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.t, align 8, !noalias !16098
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i"

bb.f:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16099)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !16100, !noundef !13 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17h03f24ac721a0ad63E.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.z, align 8, !noalias !16101, !noundef !13
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !noalias !16101
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17h03f24ac721a0ad63E.exit.i"

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17h03f24ac721a0ad63E.exit.i" unwind label %bb.l

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i": ; preds = %bb.f, %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16102)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !16103, !noundef !13 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i"
  %i.ah = load i64, ptr %i.af, align 8, !noalias !16104, !noundef !13
  %i.ai = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.af, align 8, !noalias !16104
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit"

bb.k:                                             ; preds = %bb.j
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit"

bb.l:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17h03f24ac721a0ad63E.exit.i": ; preds = %bb.i, %bb.h, %bb.g
  resume { ptr, i32 } %i.x

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit": ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i", %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit"
end_hunk_0
begin_hunk_1_@"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$4push17h616706a00fe2ce4fE":bb.a
  %indvars.iv57 = phi i64 [ %i.ay, %.lr.ph ], [ %indvars.iv.next, %.lr.ph.i5 ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr48.i58, i64 8 ; 2 uses
  %.pn.in = shl nuw nsw i64 %indvars.iv57, 1
  %.pn = and i64 %.pn.in, 62
  %.in = lshr i64 %i.as, %.pn
  %i.ca = and i64 %.in, 3                         ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr48.i58, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !17107, !noundef !13
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr48.i58, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !17107, !noundef !13 ; 2 uses
  %i.cf = sub i64 %i.cc, %i.ce                    ; 2 uses
  %.not10.i = icmp ugt i64 %i.ca, %i.cf
  br i1 %.not10.i, label %bb.aa, label %bb.ab, !prof !19

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @345, i64 noundef 46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @346) #41, !noalias !17107, !inline_history !17089
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cg = icmp ult i64 %i.ca, %i.cf
  br i1 %i.cg, label %tailrecurse.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ch = trunc nuw i64 %indvars.iv57 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.sroa.0.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %1, i64 20, i1 false), !noalias !17104
  %.not54.i = icmp eq i64 %indvars.iv57, 1
  br i1 %.not54.i, label %._crit_edge.i, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false), !noalias !17114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17114
  store i64 1, ptr %i.b, align 8, !noalias !17114
  store i64 1, ptr %i.cj, align 8, !noalias !17114
  store i64 0, ptr %i.ck, align 8, !noalias !17114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.429.0..sroa_idx.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %1, i64 20, i1 false), !noalias !17104
  %.sroa.429.sroa.8.0..sroa.429.0..sroa_idx.sroa_idx77.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  store i64 0, ptr %.sroa.429.sroa.8.0..sroa.429.0..sroa_idx.sroa_idx77.i, align 8, !noalias !17114
  %.sroa.429.sroa.10.0..sroa.429.0..sroa_idx.sroa_idx79.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  store i64 1, ptr %.sroa.429.sroa.10.0..sroa.429.0..sroa_idx.sroa_idx79.i, align 8, !noalias !17114
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !17115, !inline_history !17089
  %i.cl = tail call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !17115, !inline_history !17089 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %.loopexit.i, label %bb.ad, !prof !16

bb.ad:                                            ; preds = %.lr.ph52.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cl, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !noalias !17107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17114
  invoke fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h7af1ec534c1545b9E"(ptr noalias noundef align 8 dereferenceable(48) %i.d, ptr noundef nonnull %i.cl)
          to label %bb.ae unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17107, !inline_history !17089

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !17114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17114
  %exitcond.peel.not.i = icmp eq i64 %indvars.iv57, 2
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i

._crit_edge.i:                                    ; preds = %bb.am, %bb.ae, %bb.ac
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.ac ], [ 1, %bb.ae ], [ 1, %bb.am ]
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.431.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.sroa.0.i, i64 80, i1 false), !noalias !17114
  store i64 1, ptr %i.c, align 8, !noalias !17114
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.cn, align 8, !noalias !17114
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.0.0.lcssa.i, ptr %i.co, align 8, !noalias !17114
  %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i64 0, ptr %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx.i, align 8, !noalias !17114
  %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 1, ptr %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx.i, align 8, !noalias !17114
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !17116, !inline_history !17089
  %i.cp = tail call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !17116, !inline_history !17089 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.af, label %bb.ak, !prof !16

bb.af:                                            ; preds = %._crit_edge.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 120) #41
          to label %.noexc23.i unwind label %bb.ag, !noalias !17116, !inline_history !17089

.noexc23.i:                                       ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$alloc..rc..RcInner$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$$GT$17h3c6896f0943e2d5eE"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.c) #43
          to label %common.resume unwind label %bb.ah, !noalias !17107, !inline_history !17089

bb.ah:                                            ; preds = %bb.ag
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !17107, !inline_history !17089
  unreachable

.peel.next.i:                                     ; preds = %bb.ae, %bb.am
  %.sroa.04.051.i = phi i8 [ %i.ct, %bb.am ], [ 2, %bb.ae ]
  %i.ct = add nuw i8 %.sroa.04.051.i, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false), !noalias !17114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17114
  store i64 1, ptr %i.b, align 8, !noalias !17114
  store i64 1, ptr %i.cj, align 8, !noalias !17114
  store i64 1, ptr %i.ck, align 8, !noalias !17114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.429.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.sroa.0.i, i64 80, i1 false), !noalias !17114
  store i64 0, ptr %.sroa.429.sroa.8.0..sroa.429.0..sroa_idx.sroa_idx77.i, align 8, !noalias !17114
  store i64 1, ptr %.sroa.429.sroa.10.0..sroa.429.0..sroa_idx.sroa_idx79.i, align 8, !noalias !17114
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !17115, !inline_history !17089
  %i.cu = tail call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !17115, !inline_history !17089 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.loopexit.i, label %bb.al, !prof !16

.loopexit.i:                                      ; preds = %.peel.next.i, %.lr.ph52.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 120) #41
          to label %.noexc24.i unwind label %bb.ai, !noalias !17115, !inline_history !17089

.noexc24.i:                                       ; preds = %.loopexit.i
  unreachable

bb.ai:                                            ; preds = %.loopexit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$alloc..rc..RcInner$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$$GT$17h3c6896f0943e2d5eE"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.b) #43
          to label %.body.i unwind label %bb.aj, !noalias !17107, !inline_history !17089

bb.aj:                                            ; preds = %bb.ai
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !17107, !inline_history !17089
  unreachable

bb.ak:                                            ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cp, ptr noundef nonnull align 8 dereferenceable(120) %i.c, i64 120, i1 false), !noalias !17107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17114
  tail call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h7af1ec534c1545b9E"(ptr noalias noundef align 8 dereferenceable(48) %i.bz, ptr noundef nonnull %i.cp), !noalias !17107, !inline_history !17089
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0.i)
  br label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$3set17hb8c1b9270bd3f0f5E.exit"

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.ad
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cw, %bb.ai ], [ %lpad.loopexit.split-lp60, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr185drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$$C$4_usize$GT$$GT$17he1150e648efc4e0cE"(ptr noalias noundef align 8 dereferenceable(48) %i.d) #43
          to label %common.resume unwind label %bb.an, !noalias !17107, !inline_history !17089

bb.al:                                            ; preds = %.peel.next.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cu, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !noalias !17107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17114
  invoke fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h7af1ec534c1545b9E"(ptr noalias noundef align 8 dereferenceable(48) %i.d, ptr noundef nonnull %i.cu)
          to label %bb.am unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17107, !inline_history !17089

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !17114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17114
  %exitcond.not.i = icmp eq i8 %i.ct, %i.ch
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !17097

bb.an:                                            ; preds = %.body.i
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !17107, !inline_history !17089
  unreachable

tailrecurse.i:                                    ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ce
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ca
  %i.db = tail call fastcc noundef align 8 dereferenceable(104) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h83abddeba3443e6fE"(ptr noalias noundef align 8 dereferenceable(8) %i.da), !noalias !17107, !inline_history !17089 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !range !27, !noalias !17107, !noundef !13
  %i.dd = trunc nuw i64 %i.dc to i1
  br i1 %i.dd, label %.lr.ph.i5, label %tailrecurse._crit_edge.i

"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$3set17hb8c1b9270bd3f0f5E.exit": ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf472be4187ca08c9E.exit.i", %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$3set17h0cc53f035f8127b4E.exit.i", %bb.ak
  %i.de = load i64, ptr %i.ar, align 8, !noundef !13
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.ar, align 8
  ret void

bb.ao:                                            ; preds = %"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17hf6a7d09f4efe1d8aE.exit"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$8truncate17h57560199bad50acaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !17128 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !13
  %.not = icmp ult i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 33
  br i1 %i.d, label %_ZN18nickel_lang_vector6vector17height_for_length17h7d9f11569d510a00E.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %2 = add i64 %1, -1
  %i.e = lshr i64 %2, 5
  %.not12.i.i.i = icmp ult i64 %1, 1025
  br i1 %.not12.i.i.i, label %_ZN18nickel_lang_vector6vector17height_for_length17h7d9f11569d510a00E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.sroa.01.014.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i ], [ 1, %.preheader.i.i.i ]
  %.sroa.03.013.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ 32, %.preheader.i.i.i ]
  %i.f = add i32 %.sroa.01.014.i.i.i, 1           ; 3 uses
  %i.g = shl nuw i64 %.sroa.03.013.i.i.i, 5       ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i", label %.lr.ph.i.i.i

"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i": ; preds = %.lr.ph.i.i.i
  %i.h = icmp ugt i32 %i.f, 255
  %i.i = trunc nuw i32 %i.f to i8
  br i1 %i.h, label %bb.c, label %_ZN18nickel_lang_vector6vector17height_for_length17h7d9f11569d510a00E.exit, !prof !17129

bb.c:                                             ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i"
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @414, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @349) #41
  unreachable

_ZN18nickel_lang_vector6vector17height_for_length17h7d9f11569d510a00E.exit: ; preds = %bb.b, %.preheader.i.i.i, %"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i"
  %.sroa.5.04.i = phi i8 [ %i.i, %"_ZN4core3num23_$LT$impl$u20$usize$GT$4ilog17h70ec386623d077b7E.exit.i" ], [ 1, %.preheader.i.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !noundef !13 ; 2 uses
  %i.l = icmp ult i8 %.sroa.5.04.i, %i.k
  %i.m = load ptr, ptr %0, align 8
  %.not10 = icmp eq ptr %i.m, null                ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN18nickel_lang_vector6vector17height_for_length17h7d9f11569d510a00E.exit
  br i1 %.not10, label %bb.f, label %.lr.ph, !prof !19

bb.e:                                             ; preds = %_ZN18nickel_lang_vector6vector17height_for_length17h7d9f11569d510a00E.exit
  br i1 %.not10, label %bb.v, label %bb.k, !prof !17130

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #41
  unreachable

._crit_edge:                                      ; preds = %bb.aa
  %i.n = load ptr, ptr %i.bv, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %.val.i = load i64, ptr %i.n, align 8, !noundef !13 ; 2 uses
  %i.o = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.p, ptr %i.n, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hba6eeaba05ea951bE.exit, !prof !19

bb.g:                                             ; preds = %._crit_edge
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hba6eeaba05ea951bE.exit: ; preds = %._crit_edge
  %i.r = load ptr, ptr %i.bv, align 8, !nonnull !13, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17131)
  %i.s = load ptr, ptr %0, align 8, !alias.scope !17131, !noundef !13 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hba6eeaba05ea951bE.exit
  %i.u = load i64, ptr %i.s, align 8, !noalias !17132, !noundef !13
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.s, align 8, !noalias !17132
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %.thread unwind label %bb.j

.lr.ph:                                           ; preds = %bb.d, %bb.aa
  %.sroa.0.032 = phi ptr [ %i.bv, %bb.aa ], [ %0, %bb.d ]
  %.sroa.05.031 = phi i8 [ %i.x, %bb.aa ], [ %.sroa.5.04.i, %bb.d ]
  %i.x = add nuw i8 %.sroa.05.031, 1              ; 2 uses
  %i.y = load ptr, ptr %.sroa.0.032, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !27, !noundef !13
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.x, label %bb.y, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %0, align 8
  resume { ptr, i32 } %i.ac

.thread:                                          ; preds = %bb.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hba6eeaba05ea951bE.exit, %bb.h
  store ptr %i.r, ptr %0, align 8
  store i8 %.sroa.5.04.i, ptr %i.j, align 8
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.e
  %i.ad = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h1aaffa52882a84d0E"(ptr noalias noundef align 8 dereferenceable(8) %0) ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !27, !alias.scope !17133, !noundef !13
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i.preheader, label %tailrecurse._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.k
  %i.ag = load i8, ptr %i.j, align 8, !noundef !13
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %tailrecurse.i
  %.tr824.i = phi i64 [ %i.bc, %tailrecurse.i ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.tr723.i = phi i8 [ %i.bn, %tailrecurse.i ], [ %i.ag, %.lr.ph.i.preheader ] ; 3 uses
  %.tr22.i = phi ptr [ %i.bm, %tailrecurse.i ], [ %i.ad, %.lr.ph.i.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr22.i, i64 8 ; 3 uses
  %i.ai = icmp eq i8 %.tr723.i, 0
  br i1 %i.ai, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i", label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.aj = zext i8 %.tr723.i to i32
  br label %.preheader22.i.i

.preheader22.i.i:                                 ; preds = %bb.l, %bb.n
  %.sroa.016.0.i.i = phi i64 [ %.sroa.016.1.i.i, %bb.n ], [ 1, %bb.l ] ; 2 uses
  %.sroa.09.0.i.i = phi i64 [ %i.ao, %bb.n ], [ 32, %bb.l ] ; 3 uses
  %.sroa.0.0.i.i = phi i32 [ %i.an, %bb.n ], [ %i.aj, %bb.l ] ; 3 uses
  %i.ak = and i32 %.sroa.0.0.i.i, 1
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader22.i.i
  %i.al = mul i64 %.sroa.09.0.i.i, %.sroa.016.0.i.i ; 3 uses
  %i.am = icmp eq i32 %.sroa.0.0.i.i, 1
  br i1 %i.am, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i", label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader22.i.i
  %.sroa.016.1.i.i = phi i64 [ %i.al, %bb.m ], [ %.sroa.016.0.i.i, %.preheader22.i.i ]
  %i.an = lshr i32 %.sroa.0.0.i.i, 1
  %i.ao = mul i64 %.sroa.09.0.i.i, %.sroa.09.0.i.i
  br label %.preheader22.i.i

"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i": ; preds = %bb.m
  %i.ap = icmp eq i64 %i.al, 0
  br i1 %i.ap, label %bb.r, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i"

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.k
  %.tr.lcssa.i = phi ptr [ %i.ad, %bb.k ], [ %i.bm, %tailrecurse.i ] ; 3 uses
  %.tr8.lcssa.i = phi i64 [ %1, %bb.k ], [ %i.bc, %tailrecurse.i ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17134)
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 272 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !17134, !noundef !13
  %i.at = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 264
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !17134, !noundef !13 ; 3 uses
  %i.av = sub i64 %i.as, %i.au                    ; 5 uses
  %.not.i4.i = icmp eq i64 %.tr8.lcssa.i, %i.av
  br i1 %.not.i4.i, label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$8truncate17h4a3aeff3ce2c9c21E.exit", label %bb.o

bb.o:                                             ; preds = %tailrecurse._crit_edge.i
  %i.aw = icmp ugt i64 %.tr8.lcssa.i, %i.av
  br i1 %i.aw, label %bb.q, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.ay = sub nuw i64 %i.av, %.tr8.lcssa.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.tr8.lcssa.i
  tail call fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17ha9e0e5728520a3b9E"(ptr noalias noundef nonnull align 8 %i.az, i64 noundef %i.ay), !inline_history !17127
  %i.ba = add i64 %i.au, %.tr8.lcssa.i
  store i64 %i.ba, ptr %i.ar, align 8, !alias.scope !17134
  br label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$8truncate17h4a3aeff3ce2c9c21E.exit"

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.tr8.lcssa.i, i64 noundef %i.av, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329) #41, !noalias !17134, !inline_history !17127
  unreachable

"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i": ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i", %.lr.ph.i
  %.sroa.08.0.i6.i = phi i64 [ %i.al, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i" ], [ 1, %.lr.ph.i ] ; 2 uses
  %i.bb = udiv i64 %.tr824.i, %.sroa.08.0.i6.i    ; 5 uses
  %i.bc = urem i64 %.tr824.i, %.sroa.08.0.i6.i    ; 3 uses
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %bb.s, label %bb.t

bb.r:                                             ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.i"
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #41, !inline_history !17127
  unreachable

bb.s:                                             ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i"
  tail call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$10drop_right17h98525e5d15ac4c5cE"(ptr noalias noundef align 8 dereferenceable(272) %i.ah, i64 noundef %i.bb), !inline_history !17127
  br label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$8truncate17h4a3aeff3ce2c9c21E.exit"

bb.t:                                             ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread.i"
  %i.bd = add i64 %i.bb, 1
  tail call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$10drop_right17h98525e5d15ac4c5cE"(ptr noalias noundef align 8 dereferenceable(272) %i.ah, i64 noundef %i.bd), !inline_history !17127
  %i.be = getelementptr inbounds nuw i8, ptr %.tr22.i, i64 264
  %i.bf = load i64, ptr %i.be, align 8, !noundef !13 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr22.i, i64 272
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !13
  %i.bi = sub i64 %i.bh, %i.bf                    ; 2 uses
  %i.bj = icmp ult i64 %i.bb, %i.bi
  br i1 %i.bj, label %tailrecurse.i, label %bb.u

tailrecurse.i:                                    ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bf
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bb
  %i.bm = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h1aaffa52882a84d0E"(ptr noalias noundef align 8 dereferenceable(8) %i.bl), !inline_history !17127 ; 3 uses
  %i.bn = add i8 %.tr723.i, -1
  %i.bo = load i64, ptr %i.bm, align 8, !range !27, !noundef !13
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %.lr.ph.i, label %tailrecurse._crit_edge.i
end_hunk_1
