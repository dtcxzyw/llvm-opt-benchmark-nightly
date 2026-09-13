Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4530
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4anki6search6parser15unescape_quotes17hab20e82f19d1eab4E:bb.a
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit": ; preds = %.preheader.i.i, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ %i.j, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i ], [ inttoptr (i64 1 to ptr), %.preheader.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !8606
  store i64 %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hb872c913c7d4b976E.exit.thread2": ; preds = %.lr.ph.i.i, %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hb872c913c7d4b976E.exit"
  tail call fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h2f33350fb87dce09E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @436, i64 noundef 2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @437, i64 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hb872c913c7d4b976E.exit.thread2", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4anki6search6parser16parse_prop_rated17ha139a65aefc957e7E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.g = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef %i.d), !noalias !8614
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
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !8615, !noalias !8614, !noundef !6
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
  %.mux140.le = select i1 %i.v, i64 %i.t, i64 %2
  br label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i"

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i": ; preds = %bb.d, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.split.loop.exit"
  %.pre.i2.i70 = phi i64 [ %.mux.le, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.split.loop.exit" ], [ 0, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.w = phi i1 [ %not..le, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.split.loop.exit" ], [ true, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i ], [ true, %bb.d ] ; 2 uses
  %.sroa.4.1.i = phi i64 [ %.mux140.le, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.split.loop.exit" ], [ %2, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i ], [ %2, %bb.d ]
  call fastcc void @_ZN4anki6search6parser18parse_negative_i3217h127febe50bcca8deE(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %.sroa.4.1.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.x = load i64, ptr %i.b, align 8, !range !8, !noundef !6 ; 2 uses
  %.not57 = icmp eq i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  br i1 %.not57, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h3eeced1669e1669fE.exit92", label %bb.f

bb.f:                                             ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i"
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.343.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.640.0..sroa_idx, i64 68, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.x, ptr %0, align 8
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.z, ptr %.sroa.242.0..sroa_idx, align 8
  br label %bb.i

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h3eeced1669e1669fE.exit92": ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aa = sub nuw i64 %2, %.pre.i2.i70
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.pre.i2.i70
  %.sroa.620.0 = select i1 %i.w, i64 undef, i64 %i.aa
  %.sroa.019.0 = select i1 %i.w, ptr null, ptr %i.ab
  call fastcc void @_ZN4anki6search6parser19parse_answer_button17h5e1c3b59b689e65bE(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef readonly align 1 captures(address, read_provenance) %.sroa.019.0, i64 %.sroa.620.0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.ac = load i64, ptr %i.a, align 8, !range !8, !noundef !6 ; 2 uses
  %.not58 = icmp eq i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load i8, ptr %i.ad, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  br i1 %.not58, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h3eeced1669e1669fE.exit92"
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

bb.h:                                             ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h3eeced1669e1669fE.exit92"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775802, ptr %i.ah, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.z, ptr %.sroa.425.0..sroa_idx, align 8
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
define internal fastcc void @_ZN4anki6search6parser18parse_negative_i3217h127febe50bcca8deE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread"
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !alias.scope !8641, !noundef !6 ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread"
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !8641
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.c = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.b, %bb.b ]
  switch i8 %i.c, label %bb.i [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.e = add i64 %2, -1                           ; 3 uses
  %i.f = icmp ult i64 %2, 9
  br i1 %i.f, label %.preheader.i, label %.preheader105.i

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.h = add i64 %2, -1                           ; 3 uses
  %i.i = icmp ult i64 %2, 9
  br i1 %i.i, label %.preheader108.i, label %.lr.ph.a

.preheader108.i:                                  ; preds = %bb.e
  %.not94121.i = icmp eq i64 %i.h, 0
  br i1 %.not94121.i, label %.loopexit.i, label %.lr.ph.i

bb.f:                                             ; preds = %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i91, i64 1
  %i.k = add i64 %.sroa.27.0.i90, -1              ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.ar, 0        ; 2 uses
  %.not95.i = icmp eq i64 %i.k, 0
  br i1 %.not95.i, label %.loopexit.i, label %.lr.ph92

.preheader111.i:                                  ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i87, i64 1
  %i.n = add i64 %.sroa.27.2.i86, -1              ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.y, 0         ; 2 uses
  %.not93.i = icmp eq i64 %i.n, 0
  br i1 %.not93.i, label %.loopexit.i, label %.lr.ph.a

.loopexit.i:                                      ; preds = %.preheader111.i, %bb.h, %bb.f, %bb.k, %.preheader105.i, %.preheader.i, %.preheader108.i
  %.sroa.072.3.i = phi i32 [ %i.ai, %bb.h ], [ %i.ba, %bb.k ], [ %i.l, %bb.f ], [ 0, %.preheader.i ], [ 0, %.preheader108.i ], [ 0, %.preheader105.i ], [ %i.o, %.preheader111.i ]
  %i.p = zext i32 %.sroa.072.3.i to i64
  %i.q = shl nuw i64 %i.p, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit"

.lr.ph.a:                                         ; preds = %bb.e, %.preheader111.i
  %.sroa.0.2.i87 = phi ptr [ %i.m, %.preheader111.i ], [ %i.g, %bb.e ] ; 2 uses
  %.sroa.27.2.i86 = phi i64 [ %i.n, %.preheader111.i ], [ %i.h, %bb.e ]
  %.sroa.072.2.i85 = phi i32 [ %i.o, %.preheader111.i ], [ 0, %bb.e ]
  %i.r = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.072.2.i85, i32 10) ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.r, 1
  %i.t = load i8, ptr %.sroa.0.2.i87, align 1, !alias.scope !8641, !noundef !6
  %i.u = zext i8 %i.t to i32
  %i.v = add nsw i32 %i.u, -48                    ; 2 uses
  %i.w = icmp ugt i32 %i.v, 9                     ; 2 uses
  %brmerge.i = select i1 %i.w, i1 true, i1 %i.s
  br i1 %brmerge.i, label %.loopexit113.split.loop.exit119.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.a
  %i.x = extractvalue { i32, i1 } %i.r, 0
  %i.y = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.x, i32 %i.v) ; 2 uses
  %i.z = extractvalue { i32, i1 } %i.y, 1
  br i1 %i.z, label %.loopexit104.i, label %.preheader111.i

.loopexit107.split.loop.exit125.i:                ; preds = %.lr.ph92
  %.mux100.le.i = select i1 %i.ap, i64 256, i64 512
  br label %.loopexit104.i

.loopexit113.split.loop.exit119.i:                ; preds = %.lr.ph.a
  %.mux.le.i = select i1 %i.w, i64 256, i64 768
  br label %.loopexit104.i

.loopexit104.i:                                   ; preds = %bb.g, %.lr.ph.i, %bb.j, %.lr.ph132.i, %.loopexit113.split.loop.exit119.i, %.loopexit107.split.loop.exit125.i
  %.sroa.12.2.i = phi i64 [ 256, %.lr.ph132.i ], [ 512, %bb.j ], [ 256, %.lr.ph.i ], [ %.mux100.le.i, %.loopexit107.split.loop.exit125.i ], [ %.mux.le.i, %.loopexit113.split.loop.exit119.i ], [ 768, %bb.g ]
  %i.aa = or disjoint i64 %.sroa.12.2.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit"

.lr.ph.i:                                         ; preds = %.preheader108.i, %bb.h
  %.sroa.0.3124.i = phi ptr [ %i.ah, %bb.h ], [ %i.g, %.preheader108.i ] ; 2 uses
  %.sroa.27.3123.i = phi i64 [ %i.ag, %bb.h ], [ %i.h, %.preheader108.i ]
  %.sroa.072.4122.i = phi i32 [ %i.ai, %bb.h ], [ 0, %.preheader108.i ]
  %i.ab = load i8, ptr %.sroa.0.3124.i, align 1, !alias.scope !8641, !noundef !6
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -48                  ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 10
  br i1 %i.ae, label %bb.h, label %.loopexit104.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.af = mul i32 %.sroa.072.4122.i, 10
  %i.ag = add nsw i64 %.sroa.27.3123.i, -1        ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.3124.i, i64 1
  %i.ai = sub i32 %i.af, %i.ad                    ; 2 uses
  %.not94.i = icmp eq i64 %i.ag, 0
  br i1 %.not94.i, label %.loopexit.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.c
  %i.aj = icmp ult i64 %2, 8
  br i1 %i.aj, label %.lr.ph132.i.preheader, label %.preheader105.i

.lr.ph132.i.preheader:                            ; preds = %.preheader.i, %bb.i
  %.sroa.0.1131.i.ph = phi ptr [ %1, %bb.i ], [ %i.d, %.preheader.i ]
  %.sroa.27.1130.i.ph = phi i64 [ %2, %bb.i ], [ %i.e, %.preheader.i ]
  br label %.lr.ph132.i

.preheader105.i:                                  ; preds = %bb.i, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %2, %bb.i ], [ %i.e, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %1, %bb.i ], [ %i.d, %bb.d ]
  %.not95.i88 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not95.i88, label %.loopexit.i, label %.lr.ph92

.preheader.i:                                     ; preds = %bb.d
  %.not96128.i = icmp eq i64 %i.e, 0
  br i1 %.not96128.i, label %.loopexit.i, label %.lr.ph132.i.preheader

.lr.ph92:                                         ; preds = %.preheader105.i, %bb.f
  %.sroa.0.0.i91 = phi ptr [ %i.j, %bb.f ], [ %.sroa.0.0.ph.i, %.preheader105.i ] ; 2 uses
  %.sroa.27.0.i90 = phi i64 [ %i.k, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader105.i ]
  %.sroa.072.0.i89 = phi i32 [ %i.l, %bb.f ], [ 0, %.preheader105.i ]
  %i.ak = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.072.0.i89, i32 10) ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 1
  %i.am = load i8, ptr %.sroa.0.0.i91, align 1, !alias.scope !8641, !noundef !6
  %i.an = zext i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, -48                  ; 2 uses
  %i.ap = icmp ugt i32 %i.ao, 9                   ; 2 uses
  %brmerge99.i = select i1 %i.ap, i1 true, i1 %i.al
  br i1 %brmerge99.i, label %.loopexit107.split.loop.exit125.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph92
  %i.aq = extractvalue { i32, i1 } %i.ak, 0
  %i.ar = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.aq, i32 %i.ao) ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.ar, 1
  br i1 %i.as, label %.loopexit104.i, label %bb.f

.lr.ph132.i:                                      ; preds = %.lr.ph132.i.preheader, %bb.k
  %.sroa.0.1131.i = phi ptr [ %i.az, %bb.k ], [ %.sroa.0.1131.i.ph, %.lr.ph132.i.preheader ] ; 2 uses
  %.sroa.27.1130.i = phi i64 [ %i.ay, %bb.k ], [ %.sroa.27.1130.i.ph, %.lr.ph132.i.preheader ]
  %.sroa.072.1129.i = phi i32 [ %i.ba, %bb.k ], [ 0, %.lr.ph132.i.preheader ]
  %i.at = load i8, ptr %.sroa.0.1131.i, align 1, !alias.scope !8641, !noundef !6
  %i.au = zext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.k, label %.loopexit104.i

bb.k:                                             ; preds = %.lr.ph132.i
  %i.ax = mul i32 %.sroa.072.1129.i, 10
  %i.ay = add nsw i64 %.sroa.27.1130.i, -1        ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.1131.i, i64 1
  %i.ba = add i32 %i.av, %i.ax                    ; 2 uses
  %.not96.i = icmp eq i64 %i.ay, 0
  br i1 %.not96.i, label %.loopexit.i, label %.lr.ph132.i

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit": ; preds = %.loopexit.i, %.loopexit104.i
  %.sroa.12.0.insert.insert.i = phi i64 [ %i.aa, %.loopexit104.i ], [ %i.q, %.loopexit.i ] ; 2 uses
  %.sroa.56.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i, 32
  %.sroa.56.0.extract.trunc = trunc nuw i64 %.sroa.56.0.extract.shift to i32 ; 2 uses
  %i.bb = trunc i64 %.sroa.12.0.insert.insert.i to i1
  %i.bc = icmp sgt i32 %.sroa.56.0.extract.trunc, 0
  %or.cond = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread", label %bb.l

bb.l:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit"
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.56.0.extract.trunc, ptr %i.bd, align 8
  store i64 3, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %"_ZN4anki6search6parser18parse_negative_i3228_$u7b$$u7b$closure$u7d$$u7d$17hf3792df6e9d84abfE.exit", %bb.l
  ret void

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread": ; preds = %bb.b, %bb.b, %bb.a, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8642
  %i.be = icmp slt i64 %4, 0
  br i1 %i.be, label %bb.o, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i: ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread"
  %i.bf = icmp eq i64 %4, 0
  br i1 %i.bf, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i", label %bb.n

bb.n:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !8643
  %i.bg = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !8643 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.o, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"

bb.o:                                             ; preds = %bb.n, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread"
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.n ], [ 0, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread" ]
  tail call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %4) #50, !noalias !8644
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i": ; preds = %bb.n, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i ], [ %i.bg, %bb.n ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !noalias !8645
  store i64 %4, ptr %i.a, align 8, !noalias !8642
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !8642
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %4, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !8642
  %i.bi = icmp slt i64 %2, 0
  br i1 %i.bi, label %bb.q, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i: ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"
  %i.bj = icmp eq i64 %2, 0
  br i1 %i.bj, label %"_ZN4anki6search6parser18parse_negative_i3228_$u7b$$u7b$closure$u7d$$u7d$17hf3792df6e9d84abfE.exit", label %bb.p

bb.p:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !8646
  %i.bk = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !8646 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.q, label %"_ZN4anki6search6parser18parse_negative_i3228_$u7b$$u7b$closure$u7d$$u7d$17hf3792df6e9d84abfE.exit"

bb.q:                                             ; preds = %bb.p, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"
  %.sroa.4.0.ph.i.i9.i = phi i64 [ 1, %bb.p ], [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i9.i, i64 %2) #50
          to label %.noexc.i unwind label %bb.r, !noalias !8642

.noexc.i:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.u unwind label %bb.s, !noalias !8642

bb.s:                                             ; preds = %bb.r
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !8647, !noalias !8642 ; 2 uses
  %i.bo = icmp eq i64 %.val2.i.i, 0
  br i1 %i.bo, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val3.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !8648, !noalias !8642, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !8649
  br label %.body

bb.u:                                             ; preds = %bb.r
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !8647, !noalias !8642 ; 2 uses
  %i.bp = icmp eq i64 %.val.i.i, 0
  br i1 %i.bp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !8648, !noalias !8642, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !8650
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

.body:                                            ; preds = %bb.s, %bb.t
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !8642
  unreachable
end_hunk_0
begin_hunk_1_@_ZN4anki6search6parser8unescape17he9a65ea1c1757e10E:bb.a
  %i.eq = icmp sgt i8 %i.ep, -65
  br i1 %i.eq, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br, %.split.i144.i, %bb.bp
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.019.0.i
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly %i.er, ptr noundef nonnull readonly %i.es)
          to label %bb.bu unwind label %bb.bo, !noalias !8997

bb.bt:                                            ; preds = %bb.br, %.split.i144.i
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.019.0.i, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @594) #50
          to label %bb.z unwind label %bb.bo, !noalias !8997

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !8998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8999
  br label %_ZN5regex5regex6string5Regex8replacen17hcfe91f311fc69ff3E.exit

bb.bv:                                            ; preds = %bb.ad, %bb.y
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..enumerate..Enumerate$LT$regex..regex..string..CaptureMatches$GT$$GT$$GT$17h06c3ae20ede78e7eE"(ptr noalias noundef align 8 dereferenceable(248) %i.i) #51
          to label %common.resume unwind label %bb.aa, !noalias !8997

_ZN5regex5regex6string5Regex8replacen17hcfe91f311fc69ff3E.exit: ; preds = %bb.ae, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8999
  call void @"_ZN98_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$4from17hc4f0dec27fe0e762E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN5regex5regex6string5Regex8replacen17hcfe91f311fc69ff3E.exit, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit"
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4anki6search6parser9parse_f3217hf0513a010ab3e63cE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = tail call i64 @"_ZN4core3num7dec2flt60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$f32$GT$8from_str17h8efc34ae092255f4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9055
  %i.d = icmp slt i64 %4, 0
  br i1 %i.d, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i: ; preds = %bb.b
  %i.e = icmp eq i64 %4, 0
  br i1 %i.e, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !9056
  %i.f = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9056 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %4) #50, !noalias !9057
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i ], [ %i.f, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !noalias !9058
  store i64 %4, ptr %i.a, align 8, !noalias !9055
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !9055
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %4, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !9055
  %i.h = icmp slt i64 %2, 0
  br i1 %i.h, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i: ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %"_ZN4anki6search6parser9parse_f3228_$u7b$$u7b$closure$u7d$$u7d$17h2c04cc31e82b7026E.exit", label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !9059
  %i.j = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9059 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %"_ZN4anki6search6parser9parse_f3228_$u7b$$u7b$closure$u7d$$u7d$17h2c04cc31e82b7026E.exit"

bb.f:                                             ; preds = %bb.e, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"
  %.sroa.4.0.ph.i.i9.i = phi i64 [ 1, %bb.e ], [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i9.i, i64 %2) #50
          to label %.noexc.i unwind label %bb.g, !noalias !9055

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.h, !noalias !9055

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !9060, !noalias !9055 ; 2 uses
  %i.n = icmp eq i64 %.val2.i.i, 0
  br i1 %i.n, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val3.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !9061, !noalias !9055, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9062
  br label %.body

bb.j:                                             ; preds = %bb.g
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !9060, !noalias !9055 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i, 0
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !9061, !noalias !9055, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9063
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

.body:                                            ; preds = %bb.h, %bb.i
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !9055
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.l

"_ZN4anki6search6parser9parse_f3228_$u7b$$u7b$closure$u7d$$u7d$17h2c04cc31e82b7026E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i, %bb.e
  %.sroa.10.0.i.i8.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i ], [ %i.j, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i8.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !9064
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9055
  store i64 2, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.i.i8.i, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %4, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %.sroa.6.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0.extract.trunc, ptr %i.p, align 8
  store i64 3, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %"_ZN4anki6search6parser9parse_f3228_$u7b$$u7b$closure$u7d$$u7d$17h2c04cc31e82b7026E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4anki6search6parser9parse_i3217h0bfdf0c5d9cbef26E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread"
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !alias.scope !9090, !noundef !6 ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread"
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !9090
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.c = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.b, %bb.b ]
  switch i8 %i.c, label %bb.i [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.e = add i64 %2, -1                           ; 3 uses
  %i.f = icmp ult i64 %2, 9
  br i1 %i.f, label %.preheader.i, label %.preheader105.i

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.h = add i64 %2, -1                           ; 3 uses
  %i.i = icmp ult i64 %2, 9
  br i1 %i.i, label %.preheader108.i, label %.lr.ph.a

.preheader108.i:                                  ; preds = %bb.e
  %.not94121.i = icmp eq i64 %i.h, 0
  br i1 %.not94121.i, label %.loopexit.i, label %.lr.ph.i

bb.f:                                             ; preds = %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i88, i64 1
  %i.k = add i64 %.sroa.27.0.i87, -1              ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.ar, 0        ; 2 uses
  %.not95.i = icmp eq i64 %i.k, 0
  br i1 %.not95.i, label %.loopexit.i, label %.lr.ph89

.preheader111.i:                                  ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i84, i64 1
  %i.n = add i64 %.sroa.27.2.i83, -1              ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.y, 0         ; 2 uses
  %.not93.i = icmp eq i64 %i.n, 0
  br i1 %.not93.i, label %.loopexit.i, label %.lr.ph.a

.loopexit.i:                                      ; preds = %.preheader111.i, %bb.h, %bb.f, %bb.k, %.preheader105.i, %.preheader.i, %.preheader108.i
  %.sroa.072.3.i = phi i32 [ %i.ai, %bb.h ], [ %i.ba, %bb.k ], [ %i.l, %bb.f ], [ 0, %.preheader.i ], [ 0, %.preheader108.i ], [ 0, %.preheader105.i ], [ %i.o, %.preheader111.i ]
  %i.p = zext i32 %.sroa.072.3.i to i64
  %i.q = shl nuw i64 %i.p, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit"

.lr.ph.a:                                         ; preds = %bb.e, %.preheader111.i
  %.sroa.0.2.i84 = phi ptr [ %i.m, %.preheader111.i ], [ %i.g, %bb.e ] ; 2 uses
  %.sroa.27.2.i83 = phi i64 [ %i.n, %.preheader111.i ], [ %i.h, %bb.e ]
  %.sroa.072.2.i82 = phi i32 [ %i.o, %.preheader111.i ], [ 0, %bb.e ]
  %i.r = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.072.2.i82, i32 10) ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.r, 1
  %i.t = load i8, ptr %.sroa.0.2.i84, align 1, !alias.scope !9090, !noundef !6
  %i.u = zext i8 %i.t to i32
  %i.v = add nsw i32 %i.u, -48                    ; 2 uses
  %i.w = icmp ugt i32 %i.v, 9                     ; 2 uses
  %brmerge.i = select i1 %i.w, i1 true, i1 %i.s
  br i1 %brmerge.i, label %.loopexit113.split.loop.exit119.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.a
  %i.x = extractvalue { i32, i1 } %i.r, 0
  %i.y = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.x, i32 %i.v) ; 2 uses
  %i.z = extractvalue { i32, i1 } %i.y, 1
  br i1 %i.z, label %.loopexit104.i, label %.preheader111.i

.loopexit107.split.loop.exit125.i:                ; preds = %.lr.ph89
  %.mux100.le.i = select i1 %i.ap, i64 256, i64 512
  br label %.loopexit104.i

.loopexit113.split.loop.exit119.i:                ; preds = %.lr.ph.a
  %.mux.le.i = select i1 %i.w, i64 256, i64 768
  br label %.loopexit104.i

.loopexit104.i:                                   ; preds = %bb.g, %.lr.ph.i, %bb.j, %.lr.ph132.i, %.loopexit113.split.loop.exit119.i, %.loopexit107.split.loop.exit125.i
  %.sroa.12.2.i = phi i64 [ 256, %.lr.ph132.i ], [ 512, %bb.j ], [ 256, %.lr.ph.i ], [ %.mux100.le.i, %.loopexit107.split.loop.exit125.i ], [ %.mux.le.i, %.loopexit113.split.loop.exit119.i ], [ 768, %bb.g ]
  %i.aa = or disjoint i64 %.sroa.12.2.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit"

.lr.ph.i:                                         ; preds = %.preheader108.i, %bb.h
  %.sroa.0.3124.i = phi ptr [ %i.ah, %bb.h ], [ %i.g, %.preheader108.i ] ; 2 uses
  %.sroa.27.3123.i = phi i64 [ %i.ag, %bb.h ], [ %i.h, %.preheader108.i ]
  %.sroa.072.4122.i = phi i32 [ %i.ai, %bb.h ], [ 0, %.preheader108.i ]
  %i.ab = load i8, ptr %.sroa.0.3124.i, align 1, !alias.scope !9090, !noundef !6
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -48                  ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 10
  br i1 %i.ae, label %bb.h, label %.loopexit104.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.af = mul i32 %.sroa.072.4122.i, 10
  %i.ag = add nsw i64 %.sroa.27.3123.i, -1        ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.3124.i, i64 1
  %i.ai = sub i32 %i.af, %i.ad                    ; 2 uses
  %.not94.i = icmp eq i64 %i.ag, 0
  br i1 %.not94.i, label %.loopexit.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.c
  %i.aj = icmp ult i64 %2, 8
  br i1 %i.aj, label %.lr.ph132.i.preheader, label %.preheader105.i

.lr.ph132.i.preheader:                            ; preds = %.preheader.i, %bb.i
  %.sroa.0.1131.i.ph = phi ptr [ %1, %bb.i ], [ %i.d, %.preheader.i ]
  %.sroa.27.1130.i.ph = phi i64 [ %2, %bb.i ], [ %i.e, %.preheader.i ]
  br label %.lr.ph132.i

.preheader105.i:                                  ; preds = %bb.i, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %2, %bb.i ], [ %i.e, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %1, %bb.i ], [ %i.d, %bb.d ]
  %.not95.i85 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not95.i85, label %.loopexit.i, label %.lr.ph89

.preheader.i:                                     ; preds = %bb.d
  %.not96128.i = icmp eq i64 %i.e, 0
  br i1 %.not96128.i, label %.loopexit.i, label %.lr.ph132.i.preheader

.lr.ph89:                                         ; preds = %.preheader105.i, %bb.f
  %.sroa.0.0.i88 = phi ptr [ %i.j, %bb.f ], [ %.sroa.0.0.ph.i, %.preheader105.i ] ; 2 uses
  %.sroa.27.0.i87 = phi i64 [ %i.k, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader105.i ]
  %.sroa.072.0.i86 = phi i32 [ %i.l, %bb.f ], [ 0, %.preheader105.i ]
  %i.ak = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.072.0.i86, i32 10) ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 1
  %i.am = load i8, ptr %.sroa.0.0.i88, align 1, !alias.scope !9090, !noundef !6
  %i.an = zext i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, -48                  ; 2 uses
  %i.ap = icmp ugt i32 %i.ao, 9                   ; 2 uses
  %brmerge99.i = select i1 %i.ap, i1 true, i1 %i.al
  br i1 %brmerge99.i, label %.loopexit107.split.loop.exit125.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph89
  %i.aq = extractvalue { i32, i1 } %i.ak, 0
  %i.ar = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.aq, i32 %i.ao) ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.ar, 1
  br i1 %i.as, label %.loopexit104.i, label %bb.f

.lr.ph132.i:                                      ; preds = %.lr.ph132.i.preheader, %bb.k
  %.sroa.0.1131.i = phi ptr [ %i.az, %bb.k ], [ %.sroa.0.1131.i.ph, %.lr.ph132.i.preheader ] ; 2 uses
  %.sroa.27.1130.i = phi i64 [ %i.ay, %bb.k ], [ %.sroa.27.1130.i.ph, %.lr.ph132.i.preheader ]
  %.sroa.072.1129.i = phi i32 [ %i.ba, %bb.k ], [ 0, %.lr.ph132.i.preheader ]
  %i.at = load i8, ptr %.sroa.0.1131.i, align 1, !alias.scope !9090, !noundef !6
  %i.au = zext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.k, label %.loopexit104.i

bb.k:                                             ; preds = %.lr.ph132.i
  %i.ax = mul i32 %.sroa.072.1129.i, 10
  %i.ay = add nsw i64 %.sroa.27.1130.i, -1        ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.1131.i, i64 1
  %i.ba = add i32 %i.av, %i.ax                    ; 2 uses
  %.not96.i = icmp eq i64 %i.ay, 0
  br i1 %.not96.i, label %.loopexit.i, label %.lr.ph132.i

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit": ; preds = %.loopexit.i, %.loopexit104.i
  %.sroa.12.0.insert.insert.i = phi i64 [ %i.aa, %.loopexit104.i ], [ %i.q, %.loopexit.i ] ; 2 uses
  %i.bb = trunc i64 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.bb, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread", label %bb.u

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread": ; preds = %bb.b, %bb.b, %bb.a, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9091
  %i.bc = icmp slt i64 %4, 0
  br i1 %i.bc, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i: ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread"
  %i.bd = icmp eq i64 %4, 0
  br i1 %i.bd, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i", label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !9092
  %i.be = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9092 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"

bb.m:                                             ; preds = %bb.l, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread"
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.l ], [ 0, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit.thread" ]
  tail call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %4) #50, !noalias !9093
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i": ; preds = %bb.l, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i ], [ %i.be, %bb.l ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !noalias !9094
  store i64 %4, ptr %i.a, align 8, !noalias !9091
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !9091
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %4, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !9091
  %i.bg = icmp slt i64 %2, 0
  br i1 %i.bg, label %bb.o, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i: ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"
  %i.bh = icmp eq i64 %2, 0
  br i1 %i.bh, label %"_ZN4anki6search6parser9parse_i3228_$u7b$$u7b$closure$u7d$$u7d$17hdda1b3bee21f739fE.exit", label %bb.n

bb.n:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !9095
  %i.bi = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9095 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.o, label %"_ZN4anki6search6parser9parse_i3228_$u7b$$u7b$closure$u7d$$u7d$17hdda1b3bee21f739fE.exit"

bb.o:                                             ; preds = %bb.n, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"
  %.sroa.4.0.ph.i.i9.i = phi i64 [ 1, %bb.n ], [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i9.i, i64 %2) #50
          to label %.noexc.i unwind label %bb.p, !noalias !9091

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.s unwind label %bb.q, !noalias !9091

bb.q:                                             ; preds = %bb.p
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !9096, !noalias !9091 ; 2 uses
  %i.bm = icmp eq i64 %.val2.i.i, 0
  br i1 %i.bm, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val3.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !9097, !noalias !9091, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9098
  br label %.body

bb.s:                                             ; preds = %bb.p
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !9096, !noalias !9091 ; 2 uses
  %i.bn = icmp eq i64 %.val.i.i, 0
  br i1 %i.bn, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val1.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !9097, !noalias !9091, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9099
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

.body:                                            ; preds = %bb.q, %bb.r
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !9091
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %bb.t, %bb.s
  resume { ptr, i32 } %i.bk

"_ZN4anki6search6parser9parse_i3228_$u7b$$u7b$closure$u7d$$u7d$17hdda1b3bee21f739fE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i, %bb.n
  %.sroa.10.0.i.i8.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i ], [ %i.bi, %bb.n ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i8.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !9100
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9091
  store i64 2, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 14, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.i.i8.i, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %4, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.v

bb.u:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit"
  %.sroa.6.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0.extract.trunc, ptr %i.bo, align 8
  store i64 3, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %"_ZN4anki6search6parser9parse_i3228_$u7b$$u7b$closure$u7d$$u7d$17hdda1b3bee21f739fE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4anki6search6parser9parse_i6417hdfd6d919fdf5d460E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !alias.scope !9127, !noalias !9128, !noundef !6 ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !9127, !noalias !9128
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.c = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.b, %bb.b ]
  switch i8 %i.c, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.e = add i64 %2, -1                           ; 3 uses
  %i.f = icmp ult i64 %2, 17
  br i1 %i.f, label %.preheader.i, label %.preheader98.i

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.h = add i64 %2, -1                           ; 3 uses
  %i.i = icmp ult i64 %2, 17
  br i1 %i.i, label %.preheader100.i, label %.lr.ph.a

.preheader100.i:                                  ; preds = %bb.e
  %.not92112.i = icmp eq i64 %i.h, 0
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.l
  %i.j = extractvalue { i64, i1 } %i.ar, 0        ; 2 uses
  %.not93.i = icmp eq i64 %i.ai, 0
  br i1 %.not93.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph64

.preheader102.i:                                  ; preds = %bb.h
  %i.k = extractvalue { i64, i1 } %i.v, 0         ; 2 uses
  %.not91.i = icmp eq i64 %i.m, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.e, %.preheader102.i
  %.sroa.0.2.i59 = phi ptr [ %i.l, %.preheader102.i ], [ %i.g, %bb.e ] ; 2 uses
  %.sroa.27.2.i58 = phi i64 [ %i.m, %.preheader102.i ], [ %i.h, %bb.e ]
  %.sroa.070.2.i57 = phi i64 [ %i.k, %.preheader102.i ], [ 0, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i59, i64 1
  %i.m = add i64 %.sroa.27.2.i58, -1              ; 2 uses
  %i.n = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i57, i64 10) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 0
  %i.p = load i8, ptr %.sroa.0.2.i59, align 1, !alias.scope !9127, !noalias !9128, !noundef !6
  %i.q = zext i8 %i.p to i32
  %i.r = add nsw i32 %i.q, -48                    ; 2 uses
  %i.s = icmp ult i32 %i.r, 10
  br i1 %i.s, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.a
  %i.t = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.t, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = zext nneg i32 %i.r to i64
  %i.v = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.o, i64 %i.u) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.w, label %.loopexit, label %.preheader102.i

.lr.ph.i:                                         ; preds = %.preheader100.i, %bb.i
  %.sroa.0.3115.i = phi ptr [ %i.ad, %bb.i ], [ %i.g, %.preheader100.i ] ; 2 uses
  %.sroa.27.3114.i = phi i64 [ %i.ac, %bb.i ], [ %i.h, %.preheader100.i ]
  %.sroa.070.4113.i = phi i64 [ %i.af, %bb.i ], [ 0, %.preheader100.i ]
  %i.x = load i8, ptr %.sroa.0.3115.i, align 1, !alias.scope !9127, !noalias !9128, !noundef !6
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.y, -48                    ; 2 uses
  %i.aa = icmp ult i32 %i.z, 10
  br i1 %i.aa, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.ab = mul i64 %.sroa.070.4113.i, 10
  %i.ac = add nsw i64 %.sroa.27.3114.i, -1        ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i, i64 1
  %i.ae = zext nneg i32 %i.z to i64
  %i.af = sub i64 %i.ab, %i.ae                    ; 2 uses
  %.not92.i = icmp eq i64 %i.ac, 0
  br i1 %.not92.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.j:                                             ; preds = %bb.c
  %i.ag = icmp ult i64 %2, 16
  br i1 %i.ag, label %.lr.ph120.i.preheader, label %.preheader98.i

.lr.ph120.i.preheader:                            ; preds = %.preheader.i, %bb.j
  %.sroa.0.1119.i.ph = phi ptr [ %1, %bb.j ], [ %i.d, %.preheader.i ]
  %.sroa.27.1118.i.ph = phi i64 [ %2, %bb.j ], [ %i.e, %.preheader.i ]
  br label %.lr.ph120.i

.preheader98.i:                                   ; preds = %bb.j, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %2, %bb.j ], [ %i.e, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %1, %bb.j ], [ %i.d, %bb.d ]
  %.not93.i60 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not93.i60, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph64

.preheader.i:                                     ; preds = %bb.d
  %.not94116.i = icmp eq i64 %i.e, 0
  br i1 %.not94116.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i.preheader

.lr.ph64:                                         ; preds = %.preheader98.i, %bb.f
  %.sroa.0.0.i63 = phi ptr [ %i.ah, %bb.f ], [ %.sroa.0.0.ph.i, %.preheader98.i ] ; 2 uses
  %.sroa.27.0.i62 = phi i64 [ %i.ai, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader98.i ]
  %.sroa.070.0.i61 = phi i64 [ %i.j, %bb.f ], [ 0, %.preheader98.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i63, i64 1
  %i.ai = add i64 %.sroa.27.0.i62, -1             ; 2 uses
  %i.aj = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i61, i64 10) ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 0
  %i.al = load i8, ptr %.sroa.0.0.i63, align 1, !alias.scope !9127, !noalias !9128, !noundef !6
  %i.am = zext i8 %i.al to i32
  %i.an = add nsw i32 %i.am, -48                  ; 2 uses
  %i.ao = icmp ult i32 %i.an, 10
  br i1 %i.ao, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph64
  %i.ap = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ap, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = zext nneg i32 %i.an to i64
  %i.ar = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ak, i64 %i.aq) ; 2 uses
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  br i1 %i.as, label %.loopexit, label %bb.f

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %bb.m
  %.sroa.0.1119.i = phi ptr [ %i.az, %bb.m ], [ %.sroa.0.1119.i.ph, %.lr.ph120.i.preheader ] ; 2 uses
  %.sroa.27.1118.i = phi i64 [ %i.ay, %bb.m ], [ %.sroa.27.1118.i.ph, %.lr.ph120.i.preheader ]
  %.sroa.070.1117.i = phi i64 [ %i.bb, %bb.m ], [ 0, %.lr.ph120.i.preheader ]
  %i.at = load i8, ptr %.sroa.0.1119.i, align 1, !alias.scope !9127, !noalias !9128, !noundef !6
  %i.au = zext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph120.i
  %i.ax = mul i64 %.sroa.070.1117.i, 10
  %i.ay = add nsw i64 %.sroa.27.1118.i, -1        ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i, i64 1
  %i.ba = zext nneg i32 %i.av to i64
  %i.bb = add i64 %i.ax, %i.ba                    ; 2 uses
  %.not94.i = icmp eq i64 %i.ay, 0
  br i1 %.not94.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i

.loopexit:                                        ; preds = %bb.h, %bb.g, %.lr.ph.a, %.lr.ph.i, %.lr.ph64, %bb.k, %bb.l, %.lr.ph120.i, %bb.b, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9129
  %i.bc = icmp slt i64 %4, 0
  br i1 %i.bc, label %bb.o, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i: ; preds = %.loopexit
  %i.bd = icmp eq i64 %4, 0
  br i1 %i.bd, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i", label %bb.n

bb.n:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !9130
  %i.be = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9130 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.o, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"

bb.o:                                             ; preds = %bb.n, %.loopexit
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.n ], [ 0, %.loopexit ]
  tail call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %4) #50, !noalias !9131
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i": ; preds = %bb.n, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i ], [ %i.be, %bb.n ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !noalias !9132
  store i64 %4, ptr %i.a, align 8, !noalias !9129
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !9129
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %4, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !9129
  %i.bg = icmp slt i64 %2, 0
  br i1 %i.bg, label %bb.q, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i: ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"
  %i.bh = icmp eq i64 %2, 0
  br i1 %i.bh, label %"_ZN4anki6search6parser9parse_i6428_$u7b$$u7b$closure$u7d$$u7d$17hd8bd33b3592fef44E.exit", label %bb.p

bb.p:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !9133
  %i.bi = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9133 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.q, label %"_ZN4anki6search6parser9parse_i6428_$u7b$$u7b$closure$u7d$$u7d$17hd8bd33b3592fef44E.exit"

bb.q:                                             ; preds = %bb.p, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"
  %.sroa.4.0.ph.i.i9.i = phi i64 [ 1, %bb.p ], [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i9.i, i64 %2) #50
          to label %.noexc.i unwind label %bb.r, !noalias !9129

.noexc.i:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.u unwind label %bb.s, !noalias !9129

bb.s:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !9134, !noalias !9129 ; 2 uses
  %i.bm = icmp eq i64 %.val2.i.i, 0
  br i1 %i.bm, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val3.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !9135, !noalias !9129, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9136
  br label %.body

bb.u:                                             ; preds = %bb.r
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !9134, !noalias !9129 ; 2 uses
  %i.bn = icmp eq i64 %.val.i.i, 0
  br i1 %i.bn, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !9135, !noalias !9129, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9137
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

.body:                                            ; preds = %bb.s, %bb.t
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !9129
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %bb.v, %bb.u
  resume { ptr, i32 } %i.bk

"_ZN4anki6search6parser9parse_i6428_$u7b$$u7b$closure$u7d$$u7d$17hd8bd33b3592fef44E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i, %bb.p
  %.sroa.10.0.i.i8.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i ], [ %i.bi, %bb.p ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i8.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !9138
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9129
  store i64 2, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 14, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.i.i8.i, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %4, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.w

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit": ; preds = %.preheader102.i, %bb.i, %bb.f, %bb.m, %.preheader98.i, %.preheader.i, %.preheader100.i
  %.sroa.151.0 = phi i64 [ %i.bb, %bb.m ], [ %i.j, %bb.f ], [ %i.af, %bb.i ], [ 0, %.preheader.i ], [ 0, %.preheader100.i ], [ 0, %.preheader98.i ], [ %i.k, %.preheader102.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.151.0, ptr %i.bo, align 8
  store i64 3, ptr %0, align 8
  br label %bb.w

bb.w:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", %"_ZN4anki6search6parser9parse_i6428_$u7b$$u7b$closure$u7d$$u7d$17hd8bd33b3592fef44E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4anki6search6parser9parse_u3217h9664bc866f554bebE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  switch i64 %2, label %bb.c [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.thread"
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !alias.scope !9164, !noundef !6
  switch i8 %i.b, label %.lr.ph.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.thread"
  ]

.lr.ph.i.preheader:                               ; preds = %bb.d, %bb.f, %bb.b
  %.sroa.0.186.i.ph = phi ptr [ %i.c, %bb.d ], [ %1, %bb.f ], [ %1, %bb.b ]
  %.sroa.16.185.i.ph = phi i64 [ %i.d, %bb.d ], [ %2, %bb.f ], [ 1, %bb.b ]
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !9164
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = add i64 %2, -1                           ; 2 uses
  %i.e = icmp ult i64 %2, 10
  br i1 %i.e, label %.lr.ph.i.preheader, label %.preheader75.i

.preheader75.i:                                   ; preds = %bb.f, %bb.d
  %.sroa.16.0.ph.i = phi i64 [ %2, %bb.f ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %1, %bb.f ], [ %i.c, %bb.d ]
  %.not69.i40 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not69.i40, label %.loopexit.i, label %.lr.ph

bb.e:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i43, i64 1
  %i.g = add i64 %.sroa.16.0.i42, -1              ; 2 uses
  %.not69.i = icmp eq i64 %i.g, 0
  br i1 %.not69.i, label %.loopexit.i, label %.lr.ph

bb.f:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %2, 9
  br i1 %i.h, label %.lr.ph.i.preheader, label %.preheader75.i

.loopexit.i:                                      ; preds = %bb.e, %bb.i, %.preheader75.i
  %.sroa.054.2.i = phi i32 [ %i.ac, %bb.i ], [ 0, %.preheader75.i ], [ %i.r, %bb.e ]
  %i.i = zext i32 %.sroa.054.2.i to i64
  %i.j = shl nuw i64 %i.i, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit"

.lr.ph:                                           ; preds = %.preheader75.i, %bb.e
  %.sroa.0.0.i43 = phi ptr [ %i.f, %bb.e ], [ %.sroa.0.0.ph.i, %.preheader75.i ] ; 3 uses
  %.sroa.16.0.i42 = phi i64 [ %i.g, %bb.e ], [ %.sroa.16.0.ph.i, %.preheader75.i ]
  %.sroa.054.0.i41 = phi i32 [ %i.r, %bb.e ], [ 0, %.preheader75.i ]
  %i.k = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.054.0.i41, i32 10) ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.g, !prof !14

bb.g:                                             ; preds = %.lr.ph
  %i.m = extractvalue { i32, i1 } %i.k, 0         ; 2 uses
  %i.n = load i8, ptr %.sroa.0.0.i43, align 1, !alias.scope !9164, !noundef !6
  %i.o = zext i8 %i.n to i32
  %i.p = add nsw i32 %i.o, -48                    ; 2 uses
  %i.q = icmp ugt i32 %i.p, 9
  %i.r = add i32 %i.p, %i.m                       ; 3 uses
  %.not70.i = icmp ult i32 %i.r, %i.m
  %or.cond = select i1 %i.q, i1 true, i1 %.not70.i
  br i1 %or.cond, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.thread", label %bb.e

bb.h:                                             ; preds = %.lr.ph
  %i.s = load i8, ptr %.sroa.0.0.i43, align 1, !alias.scope !9164, !noundef !6
  %i.t = add i8 %i.s, -48
  %i.u = icmp ult i8 %i.t, 10
  %spec.select.i = select i1 %i.u, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit"

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.i
  %.sroa.0.186.i = phi ptr [ %i.ab, %bb.i ], [ %.sroa.0.186.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.16.185.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.16.185.i.ph, %.lr.ph.i.preheader ]
  %.sroa.054.184.i = phi i32 [ %i.ac, %bb.i ], [ 0, %.lr.ph.i.preheader ]
  %i.v = load i8, ptr %.sroa.0.186.i, align 1, !alias.scope !9164, !noundef !6
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -48                    ; 2 uses
  %i.y = icmp ult i32 %i.x, 10
  br i1 %i.y, label %bb.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.thread"

bb.i:                                             ; preds = %.lr.ph.i
  %i.z = mul i32 %.sroa.054.184.i, 10
  %i.aa = add nsw i64 %.sroa.16.185.i, -1         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.186.i, i64 1
  %i.ac = add i32 %i.x, %i.z                      ; 2 uses
  %.not71.i = icmp eq i64 %i.aa, 0
  br i1 %.not71.i, label %.loopexit.i, label %.lr.ph.i

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit": ; preds = %.loopexit.i, %bb.h
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %bb.h ], [ %i.j, %.loopexit.i ] ; 2 uses
  %i.ad = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.ad, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.thread", label %bb.s

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.thread": ; preds = %bb.g, %.lr.ph.i, %bb.a, %bb.b, %bb.b, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9165
  %i.ae = icmp slt i64 %4, 0
  br i1 %i.ae, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i: ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.thread"
  %i.af = icmp eq i64 %4, 0
  br i1 %i.af, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i", label %bb.j

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !9166
  %i.ag = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9166 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"

bb.k:                                             ; preds = %bb.j, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.thread"
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.j ], [ 0, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.thread" ]
  tail call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %4) #50, !noalias !9167
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i": ; preds = %bb.j, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i ], [ %i.ag, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !noalias !9168
  store i64 %4, ptr %i.a, align 8, !noalias !9165
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !9165
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %4, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !9165
  %i.ai = icmp slt i64 %2, 0
  br i1 %i.ai, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i: ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"
  %i.aj = icmp eq i64 %2, 0
  br i1 %i.aj, label %"_ZN4anki6search6parser9parse_u3228_$u7b$$u7b$closure$u7d$$u7d$17h4c275bd326e5913fE.exit", label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !9169
  %i.ak = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9169 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.m, label %"_ZN4anki6search6parser9parse_u3228_$u7b$$u7b$closure$u7d$$u7d$17h4c275bd326e5913fE.exit"

bb.m:                                             ; preds = %bb.l, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"
  %.sroa.4.0.ph.i.i9.i = phi i64 [ 1, %bb.l ], [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i9.i, i64 %2) #50
          to label %.noexc.i unwind label %bb.n, !noalias !9165

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.q unwind label %bb.o, !noalias !9165

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !9170, !noalias !9165 ; 2 uses
  %i.ao = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ao, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val3.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !9171, !noalias !9165, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9172
  br label %.body

bb.q:                                             ; preds = %bb.n
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !9170, !noalias !9165 ; 2 uses
  %i.ap = icmp eq i64 %.val.i.i, 0
  br i1 %i.ap, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val1.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !9171, !noalias !9165, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !9173
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

.body:                                            ; preds = %bb.o, %bb.p
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !9165
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.am

"_ZN4anki6search6parser9parse_u3228_$u7b$$u7b$closure$u7d$$u7d$17h4c275bd326e5913fE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i, %bb.l
  %.sroa.10.0.i.i8.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i7.i ], [ %i.ak, %bb.l ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i8.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !9174
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_1
begin_hunk_2_@"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hb5cca97a5d64b7e6E":bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h79a531b6317cbca9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #51
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.i
  %.pn5 = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %.pn5

bb.i:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #51
          to label %bb.h unwind label %bb.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN63_$LT$anki..error..db..DbError$u20$as$u20$core..fmt..Display$GT$3fmt17h1f4b90329167e729E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5448c5cb1ddefc89E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f5bc7605bd58edE", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @607, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.k, align 8
  %.val = load ptr, ptr %1, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val7, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN63_$LT$std..time..SystemTimeError$u20$as$u20$core..fmt..Debug$GT$3fmt17h09ed436fc1baaeadE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @609, i64 noundef 15, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @608)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN64_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h88aaf8e1e405639aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e650b66fbb4b18aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6475642d147e9cf1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !7, !noundef !6
  %.not = icmp eq i64 %i.a, -9223372036854775808
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 8 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i: ; preds = %bb.b
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he71820a9e78aaaecE.exit", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !15659
  %i.h = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !15659 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he71820a9e78aaaecE.exit"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.e) #50, !noalias !15660
  unreachable

"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he71820a9e78aaaecE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.c, i64 %i.e, i1 false), !noalias !15661
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.k, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he71820a9e78aaaecE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h29872b8389ba5952E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @"_ZN66_$LT$anki..notes..NoteId$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h7b02dc8d8ab673f3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #18 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !15665, !noalias !15666, !noundef !6 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !15665, !noalias !15666
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = add i64 %2, -1                           ; 3 uses
  %i.e = icmp ult i64 %2, 17
  br i1 %i.e, label %.preheader.i, label %.preheader98.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = add i64 %2, -1                           ; 3 uses
  %i.h = icmp ult i64 %2, 17
  br i1 %i.h, label %.preheader100.i, label %.lr.ph.a

.preheader100.i:                                  ; preds = %bb.e
  %.not92112.i = icmp eq i64 %i.g, 0
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.l
  %i.i = extractvalue { i64, i1 } %i.aq, 0        ; 2 uses
  %.not93.i = icmp eq i64 %i.ah, 0
  br i1 %.not93.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader102.i:                                  ; preds = %bb.h
  %i.j = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %.not91.i = icmp eq i64 %i.l, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.e, %.preheader102.i
  %.sroa.0.2.i57 = phi ptr [ %i.k, %.preheader102.i ], [ %i.f, %bb.e ] ; 2 uses
  %.sroa.27.2.i56 = phi i64 [ %i.l, %.preheader102.i ], [ %i.g, %bb.e ]
  %.sroa.070.2.i55 = phi i64 [ %i.j, %.preheader102.i ], [ 0, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i57, i64 1
  %i.l = add i64 %.sroa.27.2.i56, -1              ; 2 uses
  %i.m = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i55, i64 10) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0
  %i.o = load i8, ptr %.sroa.0.2.i57, align 1, !alias.scope !15665, !noalias !15666, !noundef !6
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.a
  %i.s = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.s, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %i.q to i64
  %i.u = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.n, i64 %i.t) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %.loopexit, label %.preheader102.i

.lr.ph.i:                                         ; preds = %.preheader100.i, %bb.i
  %.sroa.0.3115.i = phi ptr [ %i.ac, %bb.i ], [ %i.f, %.preheader100.i ] ; 2 uses
  %.sroa.27.3114.i = phi i64 [ %i.ab, %bb.i ], [ %i.g, %.preheader100.i ]
  %.sroa.070.4113.i = phi i64 [ %i.ae, %bb.i ], [ 0, %.preheader100.i ]
  %i.w = load i8, ptr %.sroa.0.3115.i, align 1, !alias.scope !15665, !noalias !15666, !noundef !6
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -48                    ; 2 uses
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.aa = mul i64 %.sroa.070.4113.i, 10
  %i.ab = add nsw i64 %.sroa.27.3114.i, -1        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i, i64 1
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = sub i64 %i.aa, %i.ad                    ; 2 uses
  %.not92.i = icmp eq i64 %i.ab, 0
  br i1 %.not92.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.j:                                             ; preds = %bb.c
  %i.af = icmp ult i64 %2, 16
  br i1 %i.af, label %.lr.ph120.i.preheader, label %.preheader98.i

.lr.ph120.i.preheader:                            ; preds = %.preheader.i, %bb.j
  %.sroa.0.1119.i.ph = phi ptr [ %1, %bb.j ], [ %i.c, %.preheader.i ]
  %.sroa.27.1118.i.ph = phi i64 [ %2, %bb.j ], [ %i.d, %.preheader.i ]
  br label %.lr.ph120.i

.preheader98.i:                                   ; preds = %bb.j, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %2, %bb.j ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %1, %bb.j ], [ %i.c, %bb.d ]
  %.not93.i58 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not93.i58, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader.i:                                     ; preds = %bb.d
  %.not94116.i = icmp eq i64 %i.d, 0
  br i1 %.not94116.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i.preheader

.lr.ph62:                                         ; preds = %.preheader98.i, %bb.f
  %.sroa.0.0.i61 = phi ptr [ %i.ag, %bb.f ], [ %.sroa.0.0.ph.i, %.preheader98.i ] ; 2 uses
  %.sroa.27.0.i60 = phi i64 [ %i.ah, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader98.i ]
  %.sroa.070.0.i59 = phi i64 [ %i.i, %bb.f ], [ 0, %.preheader98.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 1
  %i.ah = add i64 %.sroa.27.0.i60, -1             ; 2 uses
  %i.ai = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i59, i64 10) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 0
  %i.ak = load i8, ptr %.sroa.0.0.i61, align 1, !alias.scope !15665, !noalias !15666, !noundef !6
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph62
  %i.ao = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.ao, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aj, i64 %i.ap) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %.loopexit, label %bb.f

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %bb.m
  %.sroa.0.1119.i = phi ptr [ %i.ay, %bb.m ], [ %.sroa.0.1119.i.ph, %.lr.ph120.i.preheader ] ; 2 uses
  %.sroa.27.1118.i = phi i64 [ %i.ax, %bb.m ], [ %.sroa.27.1118.i.ph, %.lr.ph120.i.preheader ]
  %.sroa.070.1117.i = phi i64 [ %i.ba, %bb.m ], [ 0, %.lr.ph120.i.preheader ]
  %i.as = load i8, ptr %.sroa.0.1119.i, align 1, !alias.scope !15665, !noalias !15666, !noundef !6
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph120.i
  %i.aw = mul i64 %.sroa.070.1117.i, 10
  %i.ax = add nsw i64 %.sroa.27.1118.i, -1        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i, i64 1
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = add i64 %i.aw, %i.az                    ; 2 uses
  %.not94.i = icmp eq i64 %i.ax, 0
  br i1 %.not94.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i

.loopexit:                                        ; preds = %bb.h, %bb.g, %.lr.ph.a, %.lr.ph.i, %.lr.ph62, %bb.k, %bb.l, %.lr.ph120.i, %bb.b, %bb.b, %bb.a
  %.sroa.4.0.ph = phi i8 [ 1, %bb.b ], [ 1, %bb.b ], [ 0, %bb.a ], [ 2, %bb.k ], [ 1, %.lr.ph.i ], [ 1, %.lr.ph120.i ], [ 2, %bb.l ], [ 1, %.lr.ph62 ], [ 1, %.lr.ph.a ], [ 3, %bb.h ], [ 3, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.ph, ptr %i.bb, align 1
  br label %bb.n

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit": ; preds = %.preheader102.i, %bb.i, %bb.f, %bb.m, %.preheader98.i, %.preheader.i, %.preheader100.i
  %.sroa.151.0 = phi i64 [ %i.ba, %bb.m ], [ %i.i, %bb.f ], [ %i.ae, %bb.i ], [ 0, %.preheader.i ], [ 0, %.preheader100.i ], [ 0, %.preheader98.i ], [ %i.j, %.preheader102.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.151.0, ptr %i.bc, align 8
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", %.loopexit
  %storemerge = phi i8 [ 0, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit" ], [ 1, %.loopexit ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN67_$LT$anki..search..parser..Node$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6da4cb8ad8844399E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #28 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !45, !noundef !6 ; 3 uses
  %i.b = add nsw i64 %i.a, 9223372036854775782
  %i.c = icmp ugt i64 %i.a, -9223372036854775783
  %i.d = select i1 %i.c, i64 %i.b, i64 4          ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !45, !noundef !6 ; 3 uses
  %i.f = add nsw i64 %i.e, 9223372036854775782
  %i.g = icmp ugt i64 %i.e, -9223372036854775783
  %i.h = select i1 %i.g, i64 %i.f, i64 4
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %.lr.ph, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.j = phi i64 [ %i.u, %tailrecurse ], [ %i.e, %bb.a ] ; 3 uses
  %i.k = phi i64 [ %i.t, %tailrecurse ], [ %i.d, %bb.a ]
  %i.l = phi i64 [ %i.q, %tailrecurse ], [ %i.a, %bb.a ] ; 3 uses
  %.tr216 = phi ptr [ %i.p, %tailrecurse ], [ %1, %bb.a ] ; 55 uses
  %.tr15 = phi ptr [ %i.n, %tailrecurse ], [ %0, %bb.a ] ; 55 uses
  switch i64 %i.k, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit" [
    i64 2, label %tailrecurse
    i64 3, label %bb.b
    i64 4, label %bb.c
  ]

"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit": ; preds = %tailrecurse, %.lr.ph, %.lr.ph19, %bb.a, %.preheader.split, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit119.i", %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit103.i", %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit83.i", %bb.i, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit79.i", %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.cj, %bb.p ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit83.i" ], [ false, %bb.bb ], [ false, %bb.f ], [ false, %bb.a ], [ %i.ct, %bb.s ], [ %i.cy, %bb.u ], [ false, %bb.b ], [ %i.ay, %bb.g ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit119.i" ], [ false, %bb.c ], [ %i.bn, %bb.j ], [ true, %bb.d ], [ %i.bs, %bb.k ], [ %i.bx, %bb.l ], [ false, %bb.h ], [ %i.co, %bb.q ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit79.i" ], [ false, %bb.o ], [ false, %bb.r ], [ %i.dd, %bb.v ], [ %i.di, %bb.w ], [ %i.dn, %bb.x ], [ false, %bb.t ], [ %i.ei, %bb.ad ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.m ], [ %i.es, %bb.af ], [ true, %bb.ac ], [ false, %bb.i ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit103.i" ], [ %i.fh, %bb.aj ], [ %i.fm, %bb.ak ], [ false, %bb.ah ], [ false, %bb.al ], [ %i.ge, %bb.aq ], [ false, %bb.ag ], [ false, %bb.ae ], [ false, %bb.ar ], [ false, %bb.at ], [ false, %bb.av ], [ false, %bb.ax ], [ false, %bb.az ], [ false, %bb.ap ], [ %i.hi, %bb.bc ], [ %i.hd, %bb.ba ], [ %i.gy, %bb.ay ], [ %i.gt, %bb.aw ], [ %i.go, %bb.au ], [ %i.gj, %bb.as ], [ false, %bb.an ], [ %i.fw, %bb.ao ], [ %i.fr, %bb.am ], [ %i.fc, %bb.ai ], [ false, %bb.y ], [ %i.ds, %bb.z ], [ true, %.preheader.split ], [ %i.aj, %.lr.ph19 ], [ true, %.lr.ph ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

tailrecurse:                                      ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr15, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.tr216, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.q = load i64, ptr %i.n, align 8, !range !45, !noundef !6 ; 3 uses
  %i.r = add nsw i64 %i.q, 9223372036854775782
  %i.s = icmp ugt i64 %i.q, -9223372036854775783
  %i.t = select i1 %i.s, i64 %i.r, i64 4          ; 2 uses
  %i.u = load i64, ptr %i.p, align 8, !range !45, !noundef !6 ; 3 uses
  %i.v = add nsw i64 %i.u, 9223372036854775782
  %i.w = icmp ugt i64 %i.u, -9223372036854775783
  %i.x = select i1 %i.w, i64 %i.v, i64 4
  %i.y = icmp eq i64 %i.t, %i.x
  br i1 %i.y, label %.lr.ph, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15729)
  %i.z = getelementptr inbounds nuw i8, ptr %.tr15, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !15728, !noalias !15729, !nonnull !6, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr15, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !15728, !noalias !15729, !noundef !6 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr216, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !15729, !noalias !15728, !nonnull !6, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %.tr216, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !15729, !noalias !15728, !noundef !6
  %.not.i = icmp eq i64 %i.ac, %i.ag
  br i1 %.not.i, label %.preheader.split, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

.preheader.split:                                 ; preds = %bb.b
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit", label %.lr.ph19

.lr.ph19:                                         ; preds = %.preheader.split, %.lr.ph19
  %.sroa.01.0.i18 = phi i64 [ %i.ak, %.lr.ph19 ], [ 0, %.preheader.split ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [72 x i8], ptr %i.aa, i64 %.sroa.01.0.i18
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.ae, i64 %.sroa.01.0.i18
  %i.aj = tail call fastcc noundef zeroext i1 @"_ZN67_$LT$anki..search..parser..Node$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6da4cb8ad8844399E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ai), !noalias !15730, !inline_history !15670 ; 2 uses
  %i.ak = add nuw i64 %.sroa.01.0.i18, 1          ; 2 uses
  %exitcond.not = icmp ne i64 %i.ak, %i.ac
  %or.cond.not = select i1 %i.aj, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph19, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15732)
  %i.al = icmp ne i64 %i.l, -9223372036854775790
  tail call void @llvm.assume(i1 %i.al)
  %i.am = xor i64 %i.l, -9223372036854775808
  %i.an = icmp slt i64 %i.l, 0
  %i.ao = select i1 %i.an, i64 %i.am, i64 18      ; 2 uses
  %i.ap = icmp ne i64 %i.j, -9223372036854775790
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = xor i64 %i.j, -9223372036854775808
  %i.ar = icmp slt i64 %i.j, 0
  %i.as = select i1 %i.ar, i64 %i.aq, i64 18
  %i.at = icmp eq i64 %i.ao, %i.as
  br i1 %i.at, label %bb.d, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.d:                                             ; preds = %bb.c
  switch i64 %i.ao, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.h
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 4, label %bb.m
    i64 5, label %bb.r
    i64 6, label %bb.t
    i64 7, label %bb.v
    i64 8, label %bb.w
    i64 9, label %bb.x
    i64 10, label %bb.y
    i64 11, label %bb.aa
    i64 12, label %bb.ae
    i64 13, label %bb.ag
    i64 14, label %bb.aj
    i64 15, label %bb.ak
    i64 16, label %bb.al
    i64 17, label %bb.an
    i64 18, label %bb.ap
    i64 20, label %bb.ar
    i64 21, label %bb.at
    i64 22, label %bb.av
    i64 23, label %bb.ax
    i64 24, label %bb.az
    i64 25, label %bb.bb
    i64 19, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.tr15, i64 24
  %.val73.i = load i64, ptr %i.au, align 8, !alias.scope !15731, !noalias !15732, !noundef !6 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.tr216, i64 24
  %.val75.i = load i64, ptr %i.av, align 8, !alias.scope !15732, !noalias !15731, !noundef !6
  %.not.i.i.i = icmp eq i64 %.val73.i, %.val75.i
  br i1 %.not.i.i.i, label %bb.g, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.tr216, i64 16
  %.val74.i = load ptr, ptr %i.aw, align 8, !alias.scope !15732, !noalias !15731, !nonnull !6, !noundef !6
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr15, i64 16
  %.val72.i = load ptr, ptr %i.ax, align 8, !alias.scope !15731, !noalias !15732, !nonnull !6, !noundef !6
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val72.i, ptr nonnull readonly align 1 %.val74.i, i64 %.val73.i), !alias.scope !15733
  %i.ay = icmp eq i32 %bcmp.i.i.i, 0
  br label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.h:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %.tr15, i64 24
  %.val69.i = load i64, ptr %i.az, align 8, !alias.scope !15731, !noalias !15732, !noundef !6 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr216, i64 24
  %.val71.i = load i64, ptr %i.ba, align 8, !alias.scope !15732, !noalias !15731, !noundef !6
  %.not.i.i76.i = icmp eq i64 %.val69.i, %.val71.i
  br i1 %.not.i.i76.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit79.i", label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit79.i": ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr216, i64 16
  %.val70.i = load ptr, ptr %i.bb, align 8, !alias.scope !15732, !noalias !15731, !nonnull !6, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr15, i64 16
  %.val68.i = load ptr, ptr %i.bc, align 8, !alias.scope !15731, !noalias !15732, !nonnull !6, !noundef !6
  %bcmp.i.i78.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val68.i, ptr nonnull readonly align 1 %.val70.i, i64 %.val69.i), !alias.scope !15734
  %i.bd = icmp eq i32 %bcmp.i.i78.i, 0
  br i1 %i.bd, label %bb.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.i:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit79.i"
  %i.be = getelementptr inbounds nuw i8, ptr %.tr15, i64 48
  %.val65.i = load i64, ptr %i.be, align 8, !alias.scope !15731, !noalias !15732, !noundef !6 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.tr216, i64 48
  %.val67.i = load i64, ptr %i.bf, align 8, !alias.scope !15732, !noalias !15731, !noundef !6
  %.not.i.i80.i = icmp eq i64 %.val65.i, %.val67.i
  br i1 %.not.i.i80.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit83.i", label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit83.i": ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr216, i64 40
  %.val66.i = load ptr, ptr %i.bg, align 8, !alias.scope !15732, !noalias !15731, !nonnull !6, !noundef !6
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr15, i64 40
  %.val64.i = load ptr, ptr %i.bh, align 8, !alias.scope !15731, !noalias !15732, !nonnull !6, !noundef !6
  %bcmp.i.i82.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val64.i, ptr nonnull readonly align 1 %.val66.i, i64 %.val65.i), !alias.scope !15735
  %i.bi = icmp eq i32 %bcmp.i.i82.i, 0
  br i1 %i.bi, label %bb.j, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.j:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit83.i"
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr15, i64 56
  %i.bk = load i8, ptr %i.bj, align 8, !range !26, !alias.scope !15731, !noalias !15732, !noundef !6
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr216, i64 56
  %i.bm = load i8, ptr %i.bl, align 8, !range !26, !alias.scope !15732, !noalias !15731, !noundef !6
  %i.bn = icmp eq i8 %i.bk, %i.bm
  br label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.k:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr15, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !alias.scope !15731, !noalias !15732, !noundef !6
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr216, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !alias.scope !15732, !noalias !15731, !noundef !6
  %i.bs = icmp eq i32 %i.bp, %i.br
  br label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

end_hunk_2
