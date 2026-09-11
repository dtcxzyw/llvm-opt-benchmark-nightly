Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4530
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4anki6search6parser11group_inner17hec81ba9aaddd31beE:bb.a
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.ej, i64 noundef range(i64 1, -9223372036854775807) 4) #52, !noalias !8467
  br label %"_ZN4core3ptr66drop_in_place$LT$$LP$$RF$str$C$alloc..vec..Vec$LT$char$GT$$RP$$GT$17h9f2689d430056d60E.exit"

"_ZN4core3ptr66drop_in_place$LT$$LP$$RF$str$C$alloc..vec..Vec$LT$char$GT$$RP$$GT$17h9f2689d430056d60E.exit": ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dz, ptr %i.ek, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eb, ptr %.sroa.426.0..sroa_idx, align 8
  store i64 3, ptr %0, align 8
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$anki..search..parser..Node$GT$$GT$17hd1718668eb7947a9E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$anki..search..parser..Node$GT$$GT$17hd1718668eb7947a9E.exit": ; preds = %bb.bt, %bb.bs, %"_ZN4core3ptr66drop_in_place$LT$$LP$$RF$str$C$alloc..vec..Vec$LT$char$GT$$RP$$GT$17h9f2689d430056d60E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4anki6search6parser11parse_rated17h5f17ede029ad9effE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.split.i.i:
  %i.a = alloca [80 x i8], align 8                ; 8 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.split.i.i
  %i.c = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.r, %.backedge.backedge ] ; 5 uses
  %i.d = sub nuw i64 %2, %i.c                     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 2 uses
  %i.f = icmp ult i64 %i.d, 16
  br i1 %i.f, label %.preheader.i.i.i, label %bb.a

.preheader.i.i.i:                                 ; preds = %.backedge
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.a:                                             ; preds = %.backedge
  %i.g = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef %i.d), !noalias !8475
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.d, %bb.b ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.b ], [ 1, %.lr.ph.i.i.i ]
  %i.h = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.i = insertvalue { i64, i64 } %i.h, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.b
  %.sroa.01.05.i.i.i = phi i64 [ %i.m, %bb.b ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.05.i.i.i
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !8476, !noalias !8475, !noundef !6
  %i.l = icmp eq i8 %i.k, 58
  br i1 %i.l, label %._crit_edge.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.m = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.a
  %.merged.i.i.i = phi { i64, i64 } [ %i.i, %._crit_edge.i.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.n = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.c, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i"

bb.c:                                             ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i
  %i.p = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.q = add i64 %i.c, 1
  %i.r = add i64 %i.q, %i.p                       ; 3 uses
  %.not14.i.i = icmp ugt i64 %i.r, %2             ; 2 uses
  %i.s = add i64 %i.c, %i.p
  %or.cond.i.i.not = icmp ult i64 %i.s, %2
  br i1 %or.cond.i.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not14.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i", label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.d, %bb.e
  br label %.backedge

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %i.c, %i.p                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %lhsc = load i8, ptr %i.u, align 1
  %i.v = icmp eq i8 %lhsc, 58                     ; 4 uses
  %brmerge = or i1 %i.v, %.not14.i.i
  br i1 %brmerge, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.split.loop.exit", label %.backedge.backedge

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.split.loop.exit": ; preds = %bb.e
  %.mux.le = select i1 %i.v, i64 %i.r, i64 0
  %not..le = xor i1 %i.v, true
  %.mux141.le = select i1 %i.v, i64 %i.t, i64 %2
  br label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i"

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i": ; preds = %bb.d, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.split.loop.exit"
  %.pre.i2.i71 = phi i64 [ %.mux.le, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.split.loop.exit" ], [ 0, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.w = phi i1 [ %not..le, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.split.loop.exit" ], [ true, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i ], [ true, %bb.d ] ; 2 uses
  %.sroa.4.1.i = phi i64 [ %.mux141.le, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.split.loop.exit" ], [ %2, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i ], [ %2, %bb.d ]
  call fastcc void @_ZN4anki6search6parser9parse_u3217h9664bc866f554bebE(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %.sroa.4.1.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @414, i64 noundef 6)
  %i.x = load i64, ptr %i.b, align 8, !range !8, !noundef !6 ; 2 uses
  %.not57 = icmp eq i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  br i1 %.not57, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h3eeced1669e1669fE.exit93", label %bb.f

bb.f:                                             ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i"
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.343.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.640.0..sroa_idx, i64 68, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.x, ptr %0, align 8
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.z, ptr %.sroa.242.0..sroa_idx, align 8
  br label %bb.i

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h3eeced1669e1669fE.exit93": ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aa = sub nuw i64 %2, %.pre.i2.i71
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.pre.i2.i71
  %.sroa.620.0 = select i1 %i.w, i64 undef, i64 %i.aa
  %.sroa.019.0 = select i1 %i.w, ptr null, ptr %i.ab
  call fastcc void @_ZN4anki6search6parser19parse_answer_button17h5e1c3b59b689e65bE(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef readonly align 1 captures(address, read_provenance) %.sroa.019.0, i64 %.sroa.620.0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.ac = load i64, ptr %i.a, align 8, !range !8, !noundef !6 ; 2 uses
  %.not58 = icmp eq i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load i8, ptr %i.ad, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  br i1 %.not58, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h3eeced1669e1669fE.exit93"
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(70) %.sroa.455.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(70) %.sroa.751.0..sroa_idx, i64 70, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.ac, ptr %0, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ae, ptr %.sroa.253.0..sroa_idx, align 8
  %.sroa.354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.ag, ptr %.sroa.354.0..sroa_idx, align 1
  br label %bb.i

bb.h:                                             ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h3eeced1669e1669fE.exit93"
  %.sroa.0.0.i60 = tail call noundef i32 @llvm.umax.i32(i32 %i.z, i32 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775797, ptr %i.ah, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0.0.i60, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.ae, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.ag, ptr %.sroa.626.0..sroa_idx, align 1
  store i64 3, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4anki6search6parser11whitespace017h1826793af14a4371E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @422, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 4, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8514
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8515)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !8516
  %i.e = tail call noundef align 4 dereferenceable_or_null(16) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 4) #52, !noalias !8516 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %"_ZN77_$LT$nom..multi..Many0$LT$F$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17h737c3ca4d8451aa6E.exit.i"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef 4, i64 16) #50, !noalias !8517
  unreachable

"_ZN77_$LT$nom..multi..Many0$LT$F$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17h737c3ca4d8451aa6E.exit.i": ; preds = %bb.a
  store i64 4, ptr %i.b, align 8, !alias.scope !8515, !noalias !8514
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.g, align 8, !alias.scope !8515, !noalias !8514
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !8515, !noalias !8514
  %.not.i9.i.i53.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i9.i.i53.i, label %"_ZN77_$LT$nom..multi..Many0$LT$F$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17he8343064e0fa7dc2E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN77_$LT$nom..multi..Many0$LT$F$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17h737c3ca4d8451aa6E.exit.i"
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load i8, ptr %1, align 1, !alias.scope !8518, !noalias !8519
  br label %bb.c

.thread.loopexit.i:                               ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i"
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread.loopexit.split-lp.i:                      ; preds = %bb.j
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.split-lp.i, %.thread.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.thread.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.thread.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17hb213388ee098f5ceE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #51
          to label %common.resume.i unwind label %bb.p, !noalias !8512

bb.c:                                             ; preds = %bb.o, %.lr.ph.i
  %3 = phi i8 [ %.pre, %.lr.ph.i ], [ %i.aw, %bb.o ] ; 5 uses
  %.sroa.0.055.i = phi ptr [ %1, %.lr.ph.i ], [ %i.av, %bb.o ] ; 7 uses
  %.sroa.3.054.i = phi i64 [ %2, %.lr.ph.i ], [ %i.ay, %bb.o ] ; 9 uses
  %i.l = icmp sgt i8 %3, -1
  br i1 %i.l, label %bb.d, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i": ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.055.i, i64 1
  %i.n = and i8 %3, 31
  %i.o = zext nneg i8 %i.n to i32                 ; 3 uses
  %i.p = icmp samesign ne i64 %.sroa.3.054.i, 1
  call void @llvm.assume(i1 %i.p), !noalias !8520
  %i.q = load i8, ptr %i.m, align 1, !alias.scope !8518, !noalias !8519, !noundef !6
  %i.r = shl nuw nsw i32 %i.o, 6
  %i.s = and i8 %i.q, 63
  %i.t = zext nneg i8 %i.s to i32                 ; 2 uses
  %i.u = or disjoint i32 %i.r, %i.t
  %i.v = icmp samesign ugt i8 %3, -33
  br i1 %i.v, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.w = zext nneg i8 %3 to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.055.i, i64 2
  %i.y = icmp samesign ne i64 %.sroa.3.054.i, 2
  call void @llvm.assume(i1 %i.y), !noalias !8520
  %i.z = load i8, ptr %i.x, align 1, !alias.scope !8518, !noalias !8519, !noundef !6
  %i.aa = shl nuw nsw i32 %i.t, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.aa, %i.ac            ; 2 uses
  %i.ae = shl nuw nsw i32 %i.o, 12
  %i.af = or disjoint i32 %i.ad, %i.ae
  %i.ag = icmp samesign ugt i8 %3, -17
  br i1 %i.ag, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i"
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.055.i, i64 3
  %i.ai = icmp samesign ne i64 %.sroa.3.054.i, 3
  call void @llvm.assume(i1 %i.ai), !noalias !8520
  %i.aj = load i8, ptr %i.ah, align 1, !alias.scope !8518, !noalias !8519, !noundef !6
  %i.ak = shl nuw nsw i32 %i.o, 18
  %i.al = and i32 %i.ak, 1835008
  %i.am = shl nuw nsw i32 %i.ad, 6
  %i.an = and i8 %i.aj, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = or disjoint i32 %i.ap, %i.al            ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aq, 1114112
  br i1 %.not.i.i.i.i, label %"_ZN77_$LT$nom..multi..Many0$LT$F$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17he8343064e0fa7dc2E.exit", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i", %bb.d, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i"
  %spec.select.i27.i.i.i = phi i32 [ %i.aq, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i" ], [ %i.af, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i" ], [ %i.u, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i" ], [ %i.w, %bb.d ] ; 6 uses
  %i.ar = invoke noundef zeroext i1 @"_ZN62_$LT$$RF$str$u20$as$u20$nom..traits..FindToken$LT$char$GT$$GT$10find_token17h4291eeabee2f612eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i32 noundef range(i32 0, 1114112) %spec.select.i27.i.i.i)
          to label %.noexc.i unwind label %.thread.loopexit.i, !noalias !8521

.noexc.i:                                         ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i"
  br i1 %i.ar, label %bb.e, label %"_ZN77_$LT$nom..multi..Many0$LT$F$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17he8343064e0fa7dc2E.exit"

bb.e:                                             ; preds = %.noexc.i
  %i.as = icmp samesign ult i32 %spec.select.i27.i.i.i, 128
  br i1 %i.as, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = icmp samesign ult i32 %spec.select.i27.i.i.i, 2048
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = icmp samesign ult i32 %spec.select.i27.i.i.i, 65536
  %..i.i.i.i = select i1 %i.au, i64 3, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.012.0.i.i.i.i = phi i64 [ 2, %bb.f ], [ %..i.i.i.i, %bb.g ], [ 1, %bb.e ] ; 4 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %.sroa.012.0.i.i.i.i, %.sroa.3.054.i
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.055.i, i64 %.sroa.012.0.i.i.i.i ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !8522, !noalias !8523, !noundef !6 ; 2 uses
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.055.i, i64 noundef %.sroa.3.054.i, i64 noundef %.sroa.012.0.i.i.i.i, i64 noundef %.sroa.3.054.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #50
          to label %.noexc18.i unwind label %.thread.loopexit.split-lp.i, !noalias !8512

.noexc18.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ay = sub nuw i64 %.sroa.3.054.i, %.sroa.012.0.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !8514
  store i32 %spec.select.i27.i.i.i, ptr %i.i, align 8, !noalias !8524
  %i.az = load i64, ptr %i.j, align 8, !alias.scope !8525, !noalias !8526, !noundef !6 ; 3 uses
  %i.ba = load i64, ptr %i.a, align 8, !range !21, !alias.scope !8525, !noalias !8526, !noundef !6
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h811822469ebba9faE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.o unwind label %bb.m, !noalias !8527

bb.m:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17hb213388ee098f5ceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #51
          to label %common.resume.i unwind label %bb.n, !noalias !8527

bb.n:                                             ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !8527
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.be = load ptr, ptr %i.k, align 8, !alias.scope !8525, !noalias !8526, !nonnull !6, !noundef !6
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.az
  store i32 %spec.select.i27.i.i.i, ptr %i.bf, align 4, !noalias !8527
  %i.bg = add i64 %i.az, 1
  store i64 %i.bg, ptr %i.j, align 8, !alias.scope !8525, !noalias !8526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !8514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8524
  br label %bb.c

common.resume.i:                                  ; preds = %bb.m, %.thread.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bc, %bb.m ], [ %lpad.phi.i, %.thread.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.p:                                             ; preds = %.thread.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !8512
  unreachable

"_ZN77_$LT$nom..multi..Many0$LT$F$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17he8343064e0fa7dc2E.exit": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i", %.noexc.i, %"_ZN77_$LT$nom..multi..Many0$LT$F$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17h737c3ca4d8451aa6E.exit.i"
  %.sroa.3.0.lcssa.i = phi i64 [ 0, %"_ZN77_$LT$nom..multi..Many0$LT$F$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17h737c3ca4d8451aa6E.exit.i" ], [ %.sroa.3.054.i, %.noexc.i ], [ %.sroa.3.054.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i" ]
  %.sroa.0.0.lcssa.i = phi ptr [ %1, %"_ZN77_$LT$nom..multi..Many0$LT$F$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17h737c3ca4d8451aa6E.exit.i" ], [ %.sroa.0.055.i, %.noexc.i ], [ %.sroa.0.055.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i" ]
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !8528
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.lcssa.i, ptr %i.bi, align 8, !alias.scope !8512, !noalias !8528
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.lcssa.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8512, !noalias !8528
  store i64 3, ptr %0, align 8, !alias.scope !8512, !noalias !8528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4anki6search6parser13check_id_list17h5da715d0b9c224a7E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %4, ptr %i.i, align 8
  %i.j = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4anki6search6parser13check_id_list2RE17hd0010a01fdc7fb6dE, i64 32) acquire, align 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_ZN4anki6search6parser13check_id_list2RE17hd0010a01fdc7fb6dE, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @_ZN3std3sys4sync4once5futex4Once4call17h2423c0c333975c13E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN4anki6search6parser13check_id_list2RE17hd0010a01fdc7fb6dE, i64 32), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit

_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.f, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %2, ptr %.sroa.523.0..sroa_idx, align 8
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %.sroa.724.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %2, ptr %.sroa.9.0..sroa_idx25, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i8 1, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %_ZN4anki6search6parser13check_id_list2RE17hd0010a01fdc7fb6dE.val = load ptr, ptr @_ZN4anki6search6parser13check_id_list2RE17hd0010a01fdc7fb6dE, align 8, !nonnull !6, !noundef !6
  %_ZN4anki6search6parser13check_id_list2RE17hd0010a01fdc7fb6dE.val15 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4anki6search6parser13check_id_list2RE17hd0010a01fdc7fb6dE, i64 8), align 8
  call fastcc void @_ZN14regex_automata4meta5regex5Regex11search_half17h57ab8228b29dcbf1E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr nonnull %_ZN4anki6search6parser13check_id_list2RE17hd0010a01fdc7fb6dE.val, ptr %_ZN4anki6search6parser13check_id_list2RE17hd0010a01fdc7fb6dE.val15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f)
  %i.l = load i64, ptr %i.e, align 8, !range !5, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8536
  store ptr @426, ptr %i.a, align 8, !noalias !8537
  %.sroa.4.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx16, align 8, !noalias !8537
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !8537
  %.sroa.6.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx17, align 8, !noalias !8537
  %.sroa.7.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx18, align 8, !noalias !8537
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit, %bb.c
  %.sink27 = phi i64 [ 72, %bb.c ], [ 16, %_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit ]
  %.sink26 = phi i64 [ 2, %bb.c ], [ 3, %_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit ]
  %.sink = phi ptr [ inttoptr (i64 18 to ptr), %bb.c ], [ %1, %_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit ]
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink27
  store i64 %2, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 %.sink26, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4anki6search6parser14parse_template17hff5873c991104c6dE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.610.sroa.8 = alloca [14 x i8], align 2   ; 6 uses
  %.sroa.7 = alloca [14 x i8], align 2            ; 2 uses
  switch i64 %2, label %bb.c [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hcedcb3026160c69fE.exit.thread"
    i64 1, label %bb.b
  ]

.loopexit63.split.loop.exit66.i:                  ; preds = %.lr.ph
  %.mux.le.i = select i1 %i.p, i32 257, i32 513
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hcedcb3026160c69fE.exit"

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !alias.scope !8540, !noundef !6
  switch i8 %i.b, label %.lr.ph.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hcedcb3026160c69fE.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hcedcb3026160c69fE.exit.thread"
  ]

.lr.ph.i.preheader:                               ; preds = %bb.d, %bb.f, %bb.b
  %.sroa.0.171.i.ph = phi ptr [ %i.c, %bb.d ], [ %1, %bb.f ], [ %1, %bb.b ]
  %.sroa.16.170.i.ph = phi i64 [ %i.d, %bb.d ], [ %2, %bb.f ], [ 1, %bb.b ]
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !8540
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = add i64 %2, -1                           ; 2 uses
  %i.e = icmp ult i64 %2, 6
  br i1 %i.e, label %.lr.ph.i.preheader, label %.preheader61.i

.preheader61.i:                                   ; preds = %bb.f, %bb.d
  %.sroa.16.0.ph.i = phi i64 [ %2, %bb.f ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %1, %bb.f ], [ %i.c, %bb.d ]
  %.not55.i72 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not55.i72, label %.loopexit.i, label %.lr.ph

bb.e:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i75, i64 1
  %i.g = add i64 %.sroa.16.0.i74, -1              ; 2 uses
  %.not55.i = icmp eq i64 %i.g, 0
  br i1 %.not55.i, label %.loopexit.i, label %.lr.ph

bb.f:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %2, 5
  br i1 %i.h, label %.lr.ph.i.preheader, label %.preheader61.i

.loopexit.i:                                      ; preds = %bb.e, %bb.h, %.preheader61.i
  %.sroa.040.2.i = phi i16 [ %i.ab, %bb.h ], [ 0, %.preheader61.i ], [ %i.s, %bb.e ]
  %i.i = zext i16 %.sroa.040.2.i to i32
  %i.j = shl nuw i32 %i.i, 16
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hcedcb3026160c69fE.exit"

.lr.ph:                                           ; preds = %.preheader61.i, %bb.e
  %.sroa.0.0.i75 = phi ptr [ %i.f, %bb.e ], [ %.sroa.0.0.ph.i, %.preheader61.i ] ; 2 uses
  %.sroa.16.0.i74 = phi i64 [ %i.g, %bb.e ], [ %.sroa.16.0.ph.i, %.preheader61.i ]
  %.sroa.040.0.i73 = phi i16 [ %i.s, %bb.e ], [ 0, %.preheader61.i ]
  %i.k = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.040.0.i73, i16 10) ; 2 uses
  %i.l = extractvalue { i16, i1 } %i.k, 1
  %i.m = load i8, ptr %.sroa.0.0.i75, align 1, !alias.scope !8540, !noundef !6
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ugt i32 %i.o, 9                     ; 2 uses
  %brmerge.i = or i1 %i.l, %i.p
  br i1 %brmerge.i, label %.loopexit63.split.loop.exit66.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.q = extractvalue { i16, i1 } %i.k, 0         ; 2 uses
  %i.r = trunc nuw nsw i32 %i.o to i16
  %i.s = add i16 %i.q, %i.r                       ; 3 uses
  %.not56.i = icmp ult i16 %i.s, %i.q
  br i1 %.not56.i, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hcedcb3026160c69fE.exit.thread", label %bb.e

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.h
  %.sroa.0.171.i = phi ptr [ %i.z, %bb.h ], [ %.sroa.0.171.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.16.170.i = phi i64 [ %i.y, %bb.h ], [ %.sroa.16.170.i.ph, %.lr.ph.i.preheader ]
  %.sroa.040.169.i = phi i16 [ %i.ab, %bb.h ], [ 0, %.lr.ph.i.preheader ]
  %i.t = load i8, ptr %.sroa.0.171.i, align 1, !alias.scope !8540, !noundef !6
  %i.u = zext i8 %i.t to i32
  %i.v = add nsw i32 %i.u, -48                    ; 2 uses
  %i.w = icmp ult i32 %i.v, 10
  br i1 %i.w, label %bb.h, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hcedcb3026160c69fE.exit.thread"

bb.h:                                             ; preds = %.lr.ph.i
  %i.x = mul i16 %.sroa.040.169.i, 10
  %i.y = add nsw i64 %.sroa.16.170.i, -1          ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.171.i, i64 1
  %i.aa = trunc nuw nsw i32 %i.v to i16
  %i.ab = add i16 %i.x, %i.aa                     ; 2 uses
  %.not57.i = icmp eq i64 %i.y, 0
  br i1 %.not57.i, label %.loopexit.i, label %.lr.ph.i

"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hcedcb3026160c69fE.exit": ; preds = %.loopexit63.split.loop.exit66.i, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i32 [ %.mux.le.i, %.loopexit63.split.loop.exit66.i ], [ %i.j, %.loopexit.i ] ; 2 uses
end_hunk_0
