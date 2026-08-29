Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.03?download=true
inline.NumInlined: 488
inline.NumDeleted: 273
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17a3a53b8c0b3cc2E":bb.a
  br i1 %i.ak, label %._crit_edge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.al, %i.ac
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.d
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.ah, %._crit_edge.i.i.i.i ], [ %i.af, %bb.d ] ; 2 uses
  %i.am = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i.i
  %i.ao = extractvalue { i64, i64 } %.merged.i.i.i.i, 1
  %i.ap = add i64 %i.ab, 1
  %i.aq = add i64 %i.ap, %i.ao                    ; 7 uses
  store i64 %i.aq, ptr %i.q, align 8, !alias.scope !17, !noalias !18
  %.not13.i.i.i = icmp ult i64 %i.aq, %i.x
  %.not14.i.i.i = icmp ugt i64 %i.aq, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not13.i.i.i, %.not14.i.i.i
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i.i
  store i64 %i.s, ptr %i.q, align 8, !alias.scope !17, !noalias !18
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h518530a569386498E.exit.i.i"

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.ar = icmp ult i64 %i.s, %i.aq
  br i1 %i.ar, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h518530a569386498E.exit.i.i", label %bb.c

bb.i:                                             ; preds = %bb.f
  %i.as = sub nuw i64 %i.aq, %i.x                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.as
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.at, ptr nonnull %i.u, i64 %i.x), !noalias !18
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.au, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.i", label %bb.h

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.i": ; preds = %bb.i
  %i.av = load i64, ptr %1, align 8, !alias.scope !11, !noundef !12 ; 2 uses
  %i.aw = sub nuw i64 %i.as, %i.av
  store i64 %i.aq, ptr %1, align 8, !alias.scope !11
  br label %select.unfold

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h518530a569386498E.exit.i.i": ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i, %bb.b
  store i8 1, ptr %i.l, align 1, !alias.scope !24
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ay = load i8, ptr %i.ax, align 8, !range !10, !alias.scope !24, !noundef !12
  %i.az = trunc nuw i8 %i.ay to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !24 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !24 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.az, i1 true, i1 %.not.i3.i.i
  %i.ba = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %bb.bi

select.unfold:                                    ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h518530a569386498E.exit.i.i", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.i"
  %.sroa.4.1.i.i = phi i64 [ %i.aw, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.i" ], [ %i.ba, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h518530a569386498E.exit.i.i" ] ; 12 uses
  %.pn = phi i64 [ %i.av, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit.i.i" ], [ %.pre.i2.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h518530a569386498E.exit.i.i" ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 %.sroa.4.1.i.i ; 8 uses
  br label %bb.j

bb.j:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i", %select.unfold
  %i.bc = phi ptr [ %i.cl, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i" ], [ %.sroa.0.1.i.i, %select.unfold ] ; 6 uses
  %.not.i.i.i3 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i.i.i3, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 3 uses
  %i.be = load i8, ptr %i.bc, align 1, !alias.scope !30, !noalias !32, !noundef !12 ; 5 uses
  %i.bf = icmp sgt i8 %i.be, -1
  br i1 %i.bf, label %bb.l, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i": ; preds = %bb.k
  %i.bg = and i8 %i.be, 31
  %i.bh = zext nneg i8 %i.bg to i32               ; 3 uses
  %i.bi = icmp ne ptr %i.bd, %i.bb
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 3 uses
  %i.bk = load i8, ptr %i.bd, align 1, !alias.scope !30, !noalias !32, !noundef !12
  %i.bl = shl nuw nsw i32 %i.bh, 6
  %i.bm = and i8 %i.bk, 63
  %i.bn = zext nneg i8 %i.bm to i32               ; 2 uses
  %i.bo = or disjoint i32 %i.bl, %i.bn
  %i.bp = icmp samesign ugt i8 %i.be, -33
  br i1 %i.bp, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i"

bb.l:                                             ; preds = %bb.k
  %i.bq = zext nneg i8 %i.be to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i"
  %i.br = icmp ne ptr %i.bj, %i.bb
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 3 ; 3 uses
  %i.bt = load i8, ptr %i.bj, align 1, !alias.scope !30, !noalias !32, !noundef !12
  %i.bu = shl nuw nsw i32 %i.bn, 6
  %i.bv = and i8 %i.bt, 63
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.bu, %i.bw            ; 2 uses
  %i.by = shl nuw nsw i32 %i.bh, 12
  %i.bz = or disjoint i32 %i.bx, %i.by
  %i.ca = icmp samesign ugt i8 %i.be, -17
  br i1 %i.ca, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i"
  %i.cb = icmp ne ptr %i.bs, %i.bb
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.cd = load i8, ptr %i.bs, align 1, !alias.scope !30, !noalias !32, !noundef !12
  %i.ce = shl nuw nsw i32 %i.bh, 18
  %i.cf = and i32 %i.ce, 1835008
  %i.cg = shl nuw nsw i32 %i.bx, 6
  %i.ch = and i8 %i.cd, 63
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cg, %i.ci
  %i.ck = or disjoint i32 %i.cj, %i.cf            ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.ck, 1114112
  br i1 %.not.not.i.i, label %bb.n, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i", %bb.l, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i"
  %i.cl = phi ptr [ %i.cc, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i" ], [ %i.bs, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i" ], [ %i.bj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i" ], [ %i.bd, %bb.l ]
  %spec.select.i8.i.i = phi i32 [ %i.ck, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i" ], [ %i.bz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i" ], [ %i.bo, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i" ], [ %i.bq, %bb.l ]
  %i.cm = add nsw i32 %spec.select.i8.i.i, -58
  %.sroa.0.0.i.i.i.i = icmp ult i32 %i.cm, -10
  br i1 %.sroa.0.0.i.i.i.i, label %bb.m, label %bb.j

bb.m:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !39
  store i64 0, ptr %i.j, align 8, !noalias !39
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !39
  store i64 0, ptr %i.i, align 8, !noalias !39
  %.sroa.3.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx13.i, align 8, !noalias !39
  %.sroa.415.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.415.0..sroa_idx16.i, align 8, !noalias !39
  %i.cn = icmp samesign eq i64 %.sroa.4.1.i.i, 0
  br i1 %i.cn, label %._crit_edge.thread.i, label %.lr.ph.i

bb.n:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i", %bb.j
  switch i64 %.sroa.4.1.i.i, label %bb.p [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i"
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.co = load i8, ptr %.sroa.0.1.i.i, align 1, !alias.scope !40, !noalias !27, !noundef !12
  switch i8 %i.co, label %.lr.ph.i.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i"
  ]

.lr.ph.i.i.preheader:                             ; preds = %bb.s, %bb.q, %bb.o
  %.sroa.0.186.i.i.ph = phi ptr [ %i.cp, %bb.q ], [ %.sroa.0.1.i.i, %bb.s ], [ %.sroa.0.1.i.i, %bb.o ]
  %.sroa.16.185.i.i.ph = phi i64 [ %i.cq, %bb.q ], [ %.sroa.4.1.i.i, %bb.s ], [ 1, %bb.o ]
  br label %.lr.ph.i.i

bb.p:                                             ; preds = %bb.n
  %.pr.i.i = load i8, ptr %.sroa.0.1.i.i, align 1, !alias.scope !40, !noalias !27
  %cond.i.i = icmp eq i8 %.pr.i.i, 43
  br i1 %cond.i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  %i.cq = add i64 %.sroa.4.1.i.i, -1              ; 2 uses
  %i.cr = icmp ult i64 %.sroa.4.1.i.i, 10
  br i1 %i.cr, label %.lr.ph.i.i.preheader, label %.preheader75.i.i

.preheader75.i.i:                                 ; preds = %bb.s, %bb.q
  %.sroa.16.0.ph.i.i = phi i64 [ %.sroa.4.1.i.i, %bb.s ], [ %i.cq, %bb.q ] ; 2 uses
  %.sroa.0.0.ph.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.s ], [ %i.cp, %bb.q ]
  %.not69.i.i100 = icmp eq i64 %.sroa.16.0.ph.i.i, 0
  br i1 %.not69.i.i100, label %.loopexit.i.i, label %.lr.ph104

bb.r:                                             ; preds = %bb.v
  %.not69.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not69.i.i, label %.loopexit.i.i, label %.lr.ph104

bb.s:                                             ; preds = %bb.p
  %i.cs = icmp ult i64 %.sroa.4.1.i.i, 9
  br i1 %i.cs, label %.lr.ph.i.i.preheader, label %.preheader75.i.i

.loopexit.i.i:                                    ; preds = %bb.r, %bb.w, %.preheader75.i.i
  %.sroa.054.2.i.i = phi i32 [ %i.dl, %bb.w ], [ 0, %.preheader75.i.i ], [ %i.dd, %bb.r ]
  %i.ct = zext i32 %.sroa.054.2.i.i to i64
  %i.cu = shl nuw i64 %i.ct, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i"

.lr.ph104:                                        ; preds = %.preheader75.i.i, %bb.r
  %.sroa.0.0.i.i103 = phi ptr [ %i.cv, %bb.r ], [ %.sroa.0.0.ph.i.i, %.preheader75.i.i ] ; 2 uses
  %.sroa.16.0.i.i102 = phi i64 [ %i.cw, %bb.r ], [ %.sroa.16.0.ph.i.i, %.preheader75.i.i ]
  %.sroa.054.0.i.i101 = phi i32 [ %i.dd, %bb.r ], [ 0, %.preheader75.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i103, i64 1
  %i.cw = add i64 %.sroa.16.0.i.i102, -1          ; 2 uses
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.054.0.i.i101, i32 10) ; 2 uses
  %3 = extractvalue { i32, i1 } %2, 0             ; 2 uses
  %4 = extractvalue { i32, i1 } %2, 1
  %i.cx = load i8, ptr %.sroa.0.0.i.i103, align 1, !alias.scope !40, !noalias !27, !noundef !12 ; 2 uses
  br i1 %4, label %bb.u, label %bb.t, !prof !43

bb.t:                                             ; preds = %.lr.ph104
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nsw i32 %i.cy, -48                  ; 2 uses
  %i.da = icmp ult i32 %i.cz, 10
  br i1 %i.da, label %bb.v, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i"

bb.u:                                             ; preds = %.lr.ph104
  %i.db = add i8 %i.cx, -48
  %i.dc = icmp ult i8 %i.db, 10
  %spec.select.i.i = select i1 %i.dc, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i"

bb.v:                                             ; preds = %bb.t
  %i.dd = add i32 %i.cz, %3                       ; 3 uses
  %.not70.i.i = icmp ult i32 %i.dd, %3
  br i1 %.not70.i.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i", label %bb.r

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.w
  %.sroa.0.186.i.i = phi ptr [ %i.dk, %bb.w ], [ %.sroa.0.186.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.16.185.i.i = phi i64 [ %i.dj, %bb.w ], [ %.sroa.16.185.i.i.ph, %.lr.ph.i.i.preheader ]
  %.sroa.054.184.i.i = phi i32 [ %i.dl, %bb.w ], [ 0, %.lr.ph.i.i.preheader ]
  %i.de = load i8, ptr %.sroa.0.186.i.i, align 1, !alias.scope !40, !noalias !27, !noundef !12
  %i.df = zext i8 %i.de to i32
  %i.dg = add nsw i32 %i.df, -48                  ; 2 uses
  %i.dh = icmp ult i32 %i.dg, 10
  br i1 %i.dh, label %bb.w, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i"

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.di = mul i32 %.sroa.054.184.i.i, 10
  %i.dj = add nsw i64 %.sroa.16.185.i.i, -1       ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.186.i.i, i64 1
  %i.dl = add i32 %i.dg, %i.di                    ; 2 uses
  %.not71.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not71.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i": ; preds = %bb.v, %bb.t, %.lr.ph.i.i, %bb.u, %.loopexit.i.i, %bb.o, %bb.o, %bb.n
  %.sroa.8.0.insert.insert.i.i = phi i64 [ 257, %bb.o ], [ %i.cu, %.loopexit.i.i ], [ 1, %bb.n ], [ 257, %bb.o ], [ 257, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.u ], [ 257, %bb.t ], [ 513, %bb.v ] ; 2 uses
  %i.dm = trunc i64 %.sroa.8.0.insert.insert.i.i to i1
  %.sroa.534.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i.i, 32
  %.sroa.534.0.extract.trunc.i = trunc nuw i64 %.sroa.534.0.extract.shift.i to i32
  %.sroa.0.0.i = select i1 %i.dm, i32 0, i32 %.sroa.534.0.extract.trunc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !39
  %i.dn = call { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0f70d812c187c805E"(i32 noundef %.sroa.0.0.i, ptr noalias noundef nonnull align 1 %i.f, i64 noundef 10), !noalias !39 ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dn, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.do, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !44
  %i.dp = load i64, ptr %i.d, align 8, !range !48, !noalias !44, !noundef !12
  %i.dq = trunc nuw i64 %i.dp to i1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !range !49, !noalias !44, !noundef !12 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.dq, label %bb.x, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E.exit.i", !prof !43

bb.x:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i"
  %i.du = load i64, ptr %i.dt, align 8, !noalias !44
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ds, i64 %i.du) #16, !noalias !44
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E.exit.i": ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i"
  %i.dv = extractvalue { ptr, i64 } %i.dn, 0
  %i.dw = load ptr, ptr %i.dt, align 8, !noalias !44, !nonnull !12, !noundef !12 ; 2 uses
  %i.dx = icmp ule i64 %i.do, %i.ds
  call void @llvm.assume(i1 %i.dx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr nonnull readonly align 1 %i.dv, i64 %i.do, i1 false), !noalias !50
  store i64 %i.ds, ptr %i.k, align 8, !alias.scope !27, !noalias !30
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.dw, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !27, !noalias !30
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.do, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !27, !noalias !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !39
  br label %"_ZN9configure6python17normalize_version28_$u7b$$u7b$closure$u7d$$u7d$17ha42a7410e7ff5bdfE.exit"

.lr.ph.i:                                         ; preds = %bb.m, %bb.bh
  %.sroa.05.034.i = phi i1 [ %or.cond2.i, %bb.bh ], [ false, %bb.m ]
  %.sroa.01.033.i = phi ptr [ %.sroa.01.1.ph.i, %bb.bh ], [ %.sroa.0.1.i.i, %bb.m ] ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.01.033.i, i64 1 ; 3 uses
  %i.dz = load i8, ptr %.sroa.01.033.i, align 1, !alias.scope !30, !noalias !51, !noundef !12 ; 5 uses
  %i.ea = icmp sgt i8 %i.dz, -1
  br i1 %i.ea, label %bb.y, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i": ; preds = %.lr.ph.i
  %i.eb = and i8 %i.dz, 31
  %i.ec = zext nneg i8 %i.eb to i32               ; 3 uses
  %i.ed = icmp ne ptr %i.dy, %i.bb
  call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.01.033.i, i64 2 ; 3 uses
  %i.ef = load i8, ptr %i.dy, align 1, !alias.scope !30, !noalias !51, !noundef !12
  %i.eg = shl nuw nsw i32 %i.ec, 6
  %i.eh = and i8 %i.ef, 63
  %i.ei = zext nneg i8 %i.eh to i32               ; 2 uses
  %i.ej = or disjoint i32 %i.eg, %i.ei
  %i.ek = icmp samesign ugt i8 %i.dz, -33
  br i1 %i.ek, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i", label %bb.z

bb.y:                                             ; preds = %.lr.ph.i
  %i.el = zext nneg i8 %i.dz to i32
  br label %bb.z

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i"
  %i.em = icmp ne ptr %i.ee, %i.bb
  call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.01.033.i, i64 3 ; 3 uses
  %i.eo = load i8, ptr %i.ee, align 1, !alias.scope !30, !noalias !51, !noundef !12
  %i.ep = shl nuw nsw i32 %i.ei, 6
  %i.eq = and i8 %i.eo, 63
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = or disjoint i32 %i.ep, %i.er            ; 2 uses
  %i.et = shl nuw nsw i32 %i.ec, 12
  %i.eu = or disjoint i32 %i.es, %i.et
  %i.ev = icmp samesign ugt i8 %i.dz, -17
  br i1 %i.ev, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i", label %bb.z

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i"
  %i.ew = icmp ne ptr %i.en, %i.bb
  call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.01.033.i, i64 4
  %i.ey = load i8, ptr %i.en, align 1, !alias.scope !30, !noalias !51, !noundef !12
  %i.ez = shl nuw nsw i32 %i.ec, 18
  %i.fa = and i32 %i.ez, 1835008
  %i.fb = shl nuw nsw i32 %i.es, 6
  %i.fc = and i8 %i.ey, 63
  %i.fd = zext nneg i8 %i.fc to i32
  %i.fe = or disjoint i32 %i.fb, %i.fd
  %i.ff = or disjoint i32 %i.fe, %i.fa
  br label %bb.z

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit72.i": ; preds = %bb.aq, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.hg, %bb.aq ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i" unwind label %bb.at, !noalias !39

.loopexit.i:                                      ; preds = %bb.bg, %bb.ay
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit72.i"

.loopexit.split-lp.i:                             ; preds = %bb.ar, %bb.an, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i", %.invoke.i, %._crit_edge.thread.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit72.i"

bb.z:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i", %bb.y, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i"
  %.sroa.01.1.ph.i = phi ptr [ %i.ee, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i" ], [ %i.en, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i" ], [ %i.ex, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i" ], [ %i.dy, %bb.y ] ; 2 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.ej, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i" ], [ %i.eu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i" ], [ %i.ff, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i" ], [ %i.el, %bb.y ] ; 13 uses
  %i.fg = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.fg)
  %i.fh = add nsw i32 %.sroa.4.0.i.ph.i, -58
  %or.cond.i = icmp ult i32 %i.fh, -10
  %or.cond2.i = or i1 %.sroa.05.034.i, %or.cond.i ; 2 uses
  br i1 %or.cond2.i, label %bb.au, label %bb.bf

._crit_edge.i:                                    ; preds = %bb.bh
  %.pre.i = load i64, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !39 ; 8 uses
  %i.fi = icmp sgt i64 %.pre.i, -1
  call void @llvm.assume(i1 %i.fi)
  %i.fj = icmp eq i64 %.pre.i, 0
  br i1 %i.fj, label %._crit_edge.thread.i, label %bb.ab

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !54
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %.sroa.4.1.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !39

.noexc.i:                                         ; preds = %._crit_edge.thread.i
  %i.fk = load i64, ptr %i.c, align 8, !range !48, !noalias !54, !noundef !12
  %i.fl = trunc nuw i64 %i.fk to i1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !range !49, !noalias !54, !noundef !12 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.fl, label %bb.aa, label %bb.al, !prof !43

bb.aa:                                            ; preds = %.noexc.i
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !54
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ao, %bb.aa
  %i.fq = phi i64 [ %i.fn, %bb.aa ], [ %i.ha, %bb.ao ]
  %i.fr = phi i64 [ %i.fp, %bb.aa ], [ %i.hc, %bb.ao ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.fq, i64 %i.fr) #16
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !39

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ab:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !39
  %i.fs = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !39, !nonnull !12, !noundef !12 ; 5 uses
  %cond.i = icmp eq i64 %.pre.i, 1
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !58, !noalias !39 ; 2 uses
  br i1 %cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  switch i8 %i.ft, label %.lr.ph.i44.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i"
  ]

.lr.ph.i44.i.preheader:                           ; preds = %bb.ag, %bb.ae, %bb.ac
  %.sroa.0.186.i45.i.ph = phi ptr [ %i.fu, %bb.ae ], [ %i.fs, %bb.ag ], [ %i.fs, %bb.ac ]
  %.sroa.16.185.i46.i.ph = phi i64 [ %i.fv, %bb.ae ], [ %.pre.i, %bb.ag ], [ 1, %bb.ac ]
  br label %.lr.ph.i44.i

bb.ad:                                            ; preds = %bb.ab
  %cond.i52.i = icmp eq i8 %i.ft, 43
  br i1 %cond.i52.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 1 ; 2 uses
  %i.fv = add nsw i64 %.pre.i, -1                 ; 2 uses
  %i.fw = icmp samesign ult i64 %.pre.i, 10
  br i1 %i.fw, label %.lr.ph.i44.i.preheader, label %.preheader75.i53.i

.preheader75.i53.i:                               ; preds = %bb.ag, %bb.ae
  %.sroa.16.0.ph.i54.i = phi i64 [ %.pre.i, %bb.ag ], [ %i.fv, %bb.ae ] ; 2 uses
  %.sroa.0.0.ph.i55.i = phi ptr [ %i.fs, %bb.ag ], [ %i.fu, %bb.ae ]
  %.not69.i59.i96 = icmp eq i64 %.sroa.16.0.ph.i54.i, 0
  br i1 %.not69.i59.i96, label %.loopexit.i49.i, label %.lr.ph

bb.af:                                            ; preds = %bb.aj
  %.not69.i59.i = icmp eq i64 %i.gb, 0
  br i1 %.not69.i59.i, label %.loopexit.i49.i, label %.lr.ph

bb.ag:                                            ; preds = %bb.ad
  %i.fx = icmp samesign ult i64 %.pre.i, 9
  br i1 %i.fx, label %.lr.ph.i44.i.preheader, label %.preheader75.i53.i

.loopexit.i49.i:                                  ; preds = %bb.af, %bb.ak, %.preheader75.i53.i
  %.sroa.054.2.i50.i = phi i32 [ %i.gq, %bb.ak ], [ 0, %.preheader75.i53.i ], [ %i.gi, %bb.af ]
  %i.fy = zext i32 %.sroa.054.2.i50.i to i64
  %i.fz = shl nuw i64 %i.fy, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i"

.lr.ph:                                           ; preds = %.preheader75.i53.i, %bb.af
  %.sroa.0.0.i58.i99 = phi ptr [ %i.ga, %bb.af ], [ %.sroa.0.0.ph.i55.i, %.preheader75.i53.i ] ; 2 uses
  %.sroa.16.0.i57.i98 = phi i64 [ %i.gb, %bb.af ], [ %.sroa.16.0.ph.i54.i, %.preheader75.i53.i ]
  %.sroa.054.0.i56.i97 = phi i32 [ %i.gi, %bb.af ], [ 0, %.preheader75.i53.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i58.i99, i64 1
  %i.gb = add nsw i64 %.sroa.16.0.i57.i98, -1     ; 2 uses
  %5 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.054.0.i56.i97, i32 10) ; 2 uses
  %6 = extractvalue { i32, i1 } %5, 0             ; 2 uses
  %7 = extractvalue { i32, i1 } %5, 1
  %i.gc = load i8, ptr %.sroa.0.0.i58.i99, align 1, !alias.scope !58, !noalias !39, !noundef !12 ; 2 uses
  br i1 %7, label %bb.ai, label %bb.ah, !prof !43

bb.ah:                                            ; preds = %.lr.ph
  %i.gd = zext i8 %i.gc to i32
  %i.ge = add nsw i32 %i.gd, -48                  ; 2 uses
  %i.gf = icmp ult i32 %i.ge, 10
  br i1 %i.gf, label %bb.aj, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i"

bb.ai:                                            ; preds = %.lr.ph
  %i.gg = add i8 %i.gc, -48
  %i.gh = icmp ult i8 %i.gg, 10
  %spec.select.i61.i = select i1 %i.gh, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i"

bb.aj:                                            ; preds = %bb.ah
  %i.gi = add i32 %i.ge, %6                       ; 3 uses
  %.not70.i60.i = icmp ult i32 %i.gi, %6
  br i1 %.not70.i60.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i", label %bb.af

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i.preheader, %bb.ak
  %.sroa.0.186.i45.i = phi ptr [ %i.gp, %bb.ak ], [ %.sroa.0.186.i45.i.ph, %.lr.ph.i44.i.preheader ] ; 2 uses
  %.sroa.16.185.i46.i = phi i64 [ %i.go, %bb.ak ], [ %.sroa.16.185.i46.i.ph, %.lr.ph.i44.i.preheader ]
  %.sroa.054.184.i47.i = phi i32 [ %i.gq, %bb.ak ], [ 0, %.lr.ph.i44.i.preheader ]
  %i.gj = load i8, ptr %.sroa.0.186.i45.i, align 1, !alias.scope !58, !noalias !39, !noundef !12
  %i.gk = zext i8 %i.gj to i32
  %i.gl = add nsw i32 %i.gk, -48                  ; 2 uses
  %i.gm = icmp ult i32 %i.gl, 10
  br i1 %i.gm, label %bb.ak, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i"

bb.ak:                                            ; preds = %.lr.ph.i44.i
  %i.gn = mul i32 %.sroa.054.184.i47.i, 10
  %i.go = add nsw i64 %.sroa.16.185.i46.i, -1     ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.186.i45.i, i64 1
  %i.gq = add i32 %i.gl, %i.gn                    ; 2 uses
  %.not71.i48.i = icmp eq i64 %i.go, 0
  br i1 %.not71.i48.i, label %.loopexit.i49.i, label %.lr.ph.i44.i

bb.al:                                            ; preds = %.noexc.i
  %i.gr = load ptr, ptr %i.fo, align 8, !noalias !54, !nonnull !12, !noundef !12 ; 2 uses
  %i.gs = icmp ule i64 %.sroa.4.1.i.i, %i.fn
  call void @llvm.assume(i1 %i.gs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !54
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gr, ptr nonnull readonly align 1 %.sroa.0.1.i.i, i64 %.sroa.4.1.i.i, i1 false), !noalias !61
  store i64 %i.fn, ptr %i.k, align 8, !alias.scope !27, !noalias !30
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.gr, ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !27, !noalias !30
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.4.1.i.i, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !27, !noalias !30
  br label %bb.am

bb.am:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit74.i", %bb.al
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit66.i" unwind label %bb.as, !noalias !39

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i": ; preds = %bb.aj, %bb.ah, %.lr.ph.i44.i, %bb.ai, %.loopexit.i49.i, %bb.ac, %bb.ac
  %.sroa.8.0.insert.insert.i40.i = phi i64 [ 257, %bb.ac ], [ %i.fz, %.loopexit.i49.i ], [ %spec.select.i61.i, %bb.ai ], [ 257, %bb.ac ], [ 257, %.lr.ph.i44.i ], [ 257, %bb.ah ], [ 513, %bb.aj ] ; 2 uses
  %i.gt = trunc i64 %.sroa.8.0.insert.insert.i40.i to i1
  %.sroa.531.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i40.i, 32
  %.sroa.531.0.extract.trunc.i = trunc nuw i64 %.sroa.531.0.extract.shift.i to i32
  %.sroa.07.0.i = select i1 %i.gt, i32 0, i32 %.sroa.531.0.extract.trunc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !39
  %i.gu = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0f70d812c187c805E"(i32 noundef %.sroa.07.0.i, ptr noalias noundef nonnull align 1 %i.e, i64 noundef 10)
          to label %bb.an unwind label %.loopexit.split-lp.i, !noalias !39 ; 2 uses

bb.an:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i"
  %i.gv = extractvalue { ptr, i64 } %i.gu, 0
  %i.gw = extractvalue { ptr, i64 } %i.gu, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.gw, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc67.i unwind label %.loopexit.split-lp.i, !noalias !39

.noexc67.i:                                       ; preds = %bb.an
  %i.gx = load i64, ptr %i.b, align 8, !range !48, !noalias !62, !noundef !12
  %i.gy = trunc nuw i64 %i.gx to i1
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !range !49, !noalias !62, !noundef !12 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.gy, label %bb.ao, label %bb.ap, !prof !43

bb.ao:                                            ; preds = %.noexc67.i
  %i.hc = load i64, ptr %i.hb, align 8, !noalias !62
  br label %.invoke.i

bb.ap:                                            ; preds = %.noexc67.i
  %i.hd = load ptr, ptr %i.hb, align 8, !noalias !62, !nonnull !12, !noundef !12 ; 2 uses
  %i.he = icmp ule i64 %i.gw, %i.ha
  call void @llvm.assume(i1 %i.he)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hd, ptr nonnull readonly align 1 %i.gv, i64 %i.gw, i1 false), !noalias !66
  store i64 %i.ha, ptr %i.h, align 8, !noalias !39
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.hd, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.gw, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !39
  store ptr %i.h, ptr %i.g, align 8, !noalias !39
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !39
  %i.hf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.hf, align 8, !noalias !39
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !67
  store ptr @6, ptr %i.a, align 8, !noalias !74
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !74
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !74
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !74
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !74
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.ar unwind label %bb.aq, !noalias !30

bb.aq:                                            ; preds = %bb.ap
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit72.i" unwind label %bb.at, !noalias !39

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !39
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit74.i" unwind label %.loopexit.split-lp.i, !noalias !39

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit74.i": ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !39
  br label %bb.am

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i": ; preds = %bb.as, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit72.i"
  %.pn.pn.i = phi { ptr, i32 } [ %i.hh, %bb.as ], [ %.pn.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit72.i" ]
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit76.i" unwind label %bb.at, !noalias !39

bb.as:                                            ; preds = %bb.am
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit66.i": ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !39
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !39
  br label %"_ZN9configure6python17normalize_version28_$u7b$$u7b$closure$u7d$$u7d$17ha42a7410e7ff5bdfE.exit"

bb.at:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i", %bb.aq, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit72.i"
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !39
  unreachable

bb.au:                                            ; preds = %bb.z
  %i.hj = load i64, ptr %.sroa.415.0..sroa_idx16.i, align 8, !alias.scope !75, !noalias !39, !noundef !12 ; 5 uses
  %i.hk = icmp sgt i64 %i.hj, -1
  call void @llvm.assume(i1 %i.hk)
  %i.hl = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 128 ; 2 uses
  br i1 %i.hl, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hm = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 2048
  br i1 %i.hm, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hn = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 65536
  %..i.i = select i1 %i.hn, i64 3, i64 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.sroa.0.0.i77.i = phi i64 [ 2, %bb.av ], [ %..i.i, %bb.aw ], [ 1, %bb.au ] ; 3 uses
  %i.ho = load i64, ptr %i.i, align 8, !range !78, !alias.scope !79, !noalias !39, !noundef !12
  %i.hp = sub nsw i64 %i.ho, %i.hj
  %i.hq = icmp ugt i64 %.sroa.0.0.i77.i, %i.hp
  br i1 %i.hq, label %bb.ay, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha7cd6537f4988333E.exit.i.i", !prof !43

bb.ay:                                            ; preds = %bb.ax
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h74db381d5ce3a673E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.hj, i64 noundef %.sroa.0.0.i77.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc78.i unwind label %.loopexit.i, !noalias !39

.noexc78.i:                                       ; preds = %bb.ay
  %.pre.i.i = load i64, ptr %.sroa.415.0..sroa_idx16.i, align 8, !alias.scope !75, !noalias !39
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha7cd6537f4988333E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha7cd6537f4988333E.exit.i.i": ; preds = %.noexc78.i, %bb.ax
  %i.hr = phi i64 [ %i.hj, %bb.ax ], [ %.pre.i.i, %.noexc78.i ] ; 2 uses
  %i.hs = load ptr, ptr %.sroa.3.0..sroa_idx13.i, align 8, !alias.scope !75, !noalias !39, !nonnull !12, !noundef !12
  %i.ht = icmp sgt i64 %i.hr, -1
  call void @llvm.assume(i1 %i.ht)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hr ; 10 uses
  br i1 %i.hl, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha7cd6537f4988333E.exit.i.i"
  %i.hv = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 2048
  %i.hw = trunc i32 %.sroa.4.0.i.ph.i to i8
  %i.hx = and i8 %i.hw, 63
  %i.hy = or disjoint i8 %i.hx, -128              ; 3 uses
  %i.hz = lshr i32 %.sroa.4.0.i.ph.i, 6
  %i.ia = trunc i32 %i.hz to i8                   ; 2 uses
  %i.ib = and i8 %i.ia, 63
  %i.ic = or disjoint i8 %i.ib, -128              ; 2 uses
  %i.id = lshr i32 %.sroa.4.0.i.ph.i, 12
  %i.ie = trunc i32 %i.id to i8                   ; 2 uses
  %i.if = and i8 %i.ie, 63
  %i.ig = or disjoint i8 %i.if, -128
  %i.ih = lshr i32 %.sroa.4.0.i.ph.i, 18
  %i.ii = trunc nuw nsw i32 %i.ih to i8
  %i.ij = or disjoint i8 %i.ii, -16
  br i1 %i.hv, label %bb.bb, label %bb.bc

bb.ba:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha7cd6537f4988333E.exit.i.i"
  %i.ik = trunc nuw nsw i32 %.sroa.4.0.i.ph.i to i8
  store i8 %i.ik, ptr %i.hu, align 1, !noalias !39
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit.i

bb.bb:                                            ; preds = %bb.az
end_hunk_0
begin_hunk_1_@"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hd98e97ef2a7c1533E":bb.a

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h4ff81fe6003740b3E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9fdc24564c3b7904E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1148
  br label %bb.p

bb.r:                                             ; preds = %bb.p
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !1148
  %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !noalias !1106
  invoke void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h95008cf94ef88fb5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.s unwind label %bb.q, !noalias !1175

bb.s:                                             ; preds = %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1148
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.cy = load i64, ptr %i.cx, align 8, !range !48, !alias.scope !1146, !noalias !1147, !noundef !12
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %bb.t, label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h9c87ff3474b17bd5E.exit"

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false), !noalias !1106
  call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1201
  store ptr %i.da, ptr %i.b, align 8, !noalias !1201
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 2, ptr %i.db, align 8, !noalias !1201
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.dc, align 8, !noalias !1201
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.dd = load i64, ptr %i.f, align 8, !alias.scope !1209, !noalias !1210, !noundef !12 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !1209, !noalias !1210, !noundef !12 ; 3 uses
  %i.dg = icmp ule i64 %i.dd, %i.df
  call void @llvm.assume(i1 %i.dg)
  %.not2.i.i.i11.i.i.i.i.i.i.i = icmp eq i64 %i.dd, %i.df
  br i1 %.not2.i.i.i11.i.i.i.i.i.i.i, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9fdc24564c3b7904E.exit.i19.i.i.i.i.i.i.i", label %.lr.ph.i.i.i12.i.i.i.i.i.i.i

.lr.ph.i.i.i12.i.i.i.i.i.i.i:                     ; preds = %bb.t, %.noexc.i.i14.i.i.i.i.i.i.i
  %i.dh = phi i64 [ %i.di, %.noexc.i.i14.i.i.i.i.i.i.i ], [ %i.dd, %bb.t ] ; 3 uses
  %i.di = add nuw i64 %i.dh, 1                    ; 3 uses
  store i64 %i.di, ptr %i.f, align 8, !alias.scope !1209, !noalias !1210
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.dj = load ptr, ptr %i.b, align 8, !alias.scope !1214, !noalias !1215, !nonnull !12, !align !804, !noundef !12
  %i.dk = load i64, ptr %i.db, align 8, !alias.scope !1214, !noalias !1215, !noundef !12
  %i.dl = icmp ult i64 %i.dh, %i.dk
  call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %i.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !1220
  invoke void @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hb5ccb4ca33002fb2E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.i.i14.i.i.i.i.i.i.i unwind label %bb.u, !noalias !1175

.noexc.i.i14.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i12.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1216
  %.not.i.i.i15.i.i.i.i.i.i.i = icmp eq i64 %i.di, %i.df
  br i1 %.not.i.i.i15.i.i.i.i.i.i.i, label %"_ZN93_$LT$core..ops..index_range..IndexRange$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9291c776e78e3f76E.exit.loopexit.i.i16.i.i.i.i.i.i.i", label %.lr.ph.i.i.i12.i.i.i.i.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i12.i.i.i.i.i.i.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load i64, ptr %i.f, align 8, !alias.scope !1221, !noalias !1230, !noundef !12
  %i.dp = load i64, ptr %i.de, align 8, !alias.scope !1221, !noalias !1230, !noundef !12
  invoke void @"_ZN129_$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u3b$$u20$N$u5d$$u20$as$u20$core..array..iter..iter_inner..PartialDrop$GT$12partial_drop17he0f58374af050f56E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.da, i64 noundef %i.do, i64 noundef %i.dp)
          to label %.thread28.i.i.i.i.i.i.i unwind label %bb.v, !noalias !1175

.thread28.i.i.i.i.i.i.i:                          ; preds = %bb.u
  %.val931.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1144, !noalias !1231, !nonnull !12, !align !804, !noundef !12
  %.val1032.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1144, !noalias !1231, !noundef !12
  store i64 %.val1032.i.i.i.i.i.i.i, ptr %.val931.i.i.i.i.i.i.i, align 8, !noalias !1175
  br label %.body.i

"_ZN93_$LT$core..ops..index_range..IndexRange$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9291c776e78e3f76E.exit.loopexit.i.i16.i.i.i.i.i.i.i": ; preds = %.noexc.i.i14.i.i.i.i.i.i.i
  %.pre.i.i17.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1232, !noalias !1230
  %.pre2.i.i18.i.i.i.i.i.i.i = load i64, ptr %i.de, align 8, !alias.scope !1232, !noalias !1230
  br label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9fdc24564c3b7904E.exit.i19.i.i.i.i.i.i.i"

bb.v:                                             ; preds = %bb.u
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !1175
  unreachable

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9fdc24564c3b7904E.exit.i19.i.i.i.i.i.i.i": ; preds = %"_ZN93_$LT$core..ops..index_range..IndexRange$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9291c776e78e3f76E.exit.loopexit.i.i16.i.i.i.i.i.i.i", %bb.t
  %i.dr = phi i64 [ %.pre2.i.i18.i.i.i.i.i.i.i, %"_ZN93_$LT$core..ops..index_range..IndexRange$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9291c776e78e3f76E.exit.loopexit.i.i16.i.i.i.i.i.i.i" ], [ %i.dd, %bb.t ]
  %i.ds = phi i64 [ %.pre.i.i17.i.i.i.i.i.i.i, %"_ZN93_$LT$core..ops..index_range..IndexRange$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9291c776e78e3f76E.exit.loopexit.i.i16.i.i.i.i.i.i.i" ], [ %i.dd, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1201
  invoke void @"_ZN129_$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u3b$$u20$N$u5d$$u20$as$u20$core..array..iter..iter_inner..PartialDrop$GT$12partial_drop17he0f58374af050f56E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.da, i64 noundef %i.ds, i64 noundef %i.dr)
          to label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h4ff81fe6003740b3E.exit23.i.i.i.i.i.i.i" unwind label %bb.q, !noalias !1175

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h4ff81fe6003740b3E.exit23.i.i.i.i.i.i.i": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9fdc24564c3b7904E.exit.i19.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1148
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h9c87ff3474b17bd5E.exit"

bb.w:                                             ; preds = %bb.y
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !1241
  unreachable

bb.x:                                             ; preds = %bb.q, %bb.n
  %.sroa.04.0.lpad-body.i.i.i.i.i.i.i = phi i1 [ true, %bb.n ], [ %.sroa.04.0.i.i.i.i.i.i.i, %bb.q ]
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.co, %bb.n ], [ %i.cv, %bb.q ] ; 2 uses
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1144, !noalias !1231, !nonnull !12, !align !804, !noundef !12
  %.val10.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1144, !noalias !1231, !noundef !12
  store i64 %.val10.i.i.i.i.i.i.i, ptr %.val9.i.i.i.i.i.i.i, align 8, !noalias !1175
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.dv = load i64, ptr %i.du, align 8, !range !48, !alias.scope !1146, !noalias !1147, !noundef !12
  %i.dw = icmp ne i64 %i.dv, 0
  %or.cond.i.i.i.i.i.i.i = and i1 %.sroa.04.0.lpad-body.i.i.i.i.i.i.i, %i.dw
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.y, label %.body.i

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.dz = load i64, ptr %i.dx, align 8, !alias.scope !1242, !noalias !1147, !noundef !12
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !1242, !noalias !1147, !noundef !12
  invoke void @"_ZN129_$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u3b$$u20$N$u5d$$u20$as$u20$core..array..iter..iter_inner..PartialDrop$GT$12partial_drop17he0f58374af050f56E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dy, i64 noundef %i.dz, i64 noundef %i.eb)
          to label %.body.i unwind label %bb.w, !noalias !1241

bb.z:                                             ; preds = %bb.l
  unreachable

bb.aa:                                            ; preds = %bb.l, %bb.k
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr328drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$alloc..string..String$GT$$C$$u5b$alloc..string..String$u3b$$u20$2$u5d$$C$$LT$ninja_gen..node..GenTypescriptProto$u20$as$u20$ninja_gen..action..BuildAction$GT$..files$LT$ninja_gen..build..BuildStatement$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hfbe7a2f944e69e62E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.l) #18
          to label %.body.i unwind label %bb.ab, !noalias !1096

bb.ab:                                            ; preds = %bb.aa
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !1096
  unreachable

.body.i:                                          ; preds = %bb.aa, %bb.y, %bb.x, %.thread28.i.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i, %bb.x ], [ %i.ec, %bb.aa ], [ %eh.lpad-body.i.i.i.i.i.i.i, %bb.y ], [ %i.dn, %.thread28.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #18
          to label %bb.ae unwind label %bb.ac, !noalias !1096

bb.ac:                                            ; preds = %bb.af, %.body.i
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !1106
  unreachable

bb.ad:                                            ; preds = %bb.f
  unreachable

bb.ae:                                            ; preds = %bb.af, %.body.i
  %.pn6.i = phi { ptr, i32 } [ %i.ef, %bb.af ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn6.i

bb.af:                                            ; preds = %bb.f, %bb.e, %bb.d
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr328drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$alloc..string..String$GT$$C$$u5b$alloc..string..String$u3b$$u20$2$u5d$$C$$LT$ninja_gen..node..GenTypescriptProto$u20$as$u20$ninja_gen..action..BuildAction$GT$..files$LT$ninja_gen..build..BuildStatement$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hfbe7a2f944e69e62E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %1) #18
          to label %bb.ae unwind label %bb.ac, !noalias !1106

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h9c87ff3474b17bd5E.exit": ; preds = %bb.s, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h4ff81fe6003740b3E.exit23.i.i.i.i.i.i.i"
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1144, !noalias !1231, !nonnull !12, !align !804, !noundef !12
  %.val8.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1144, !noalias !1231, !noundef !12
  store i64 %.val8.i.i.i.i.i.i.i, ptr %.val.i.i.i.i.i.i.i, align 8, !noalias !1175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !1093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1096
  ret void
}

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN129_$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u3b$$u20$N$u5d$$u20$as$u20$core..array..iter..iter_inner..PartialDrop$GT$12partial_drop17he0f58374af050f56E"(ptr noalias noundef align 8 dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$8as_slice17he1330ca99a62f935E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hb5ccb4ca33002fb2E"(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17ha174f149f43012c6E"(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hf45432c021a3b659E"(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacf87f6daaa1781eE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf82344e1a6be84dE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcfd8ed4231926af8E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h250495e46417481dE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b87d9d24edef06cE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haa4157e659d71d23E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdee9968663235285E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb1b2b6d38c1ce9f8E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b78abe370e97a15E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha86766fe95ee8582E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ed191e0d8f0b049E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h033c9ce35d6b13e0E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1bb978114bdbf1f7E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0130920552988785E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4c72d244e62c00ecE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc3a507ddadc41060E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77c3e2cfc43545b6E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b293d94613ecc39E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9b215add247d83f9E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfde563b067990868E"(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h00abca4eb5a6e8f2E"(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h69efc0fe08c53c5aE"(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf262fa5bbbb9b06cE"(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha722a9d0a6e692a1E"(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h34f646641df72b65E"(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h953ffefb4285f1a9E"(ptr noundef nonnull, ptr noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h0454e4fcb086a018E"(ptr noundef nonnull, ptr noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hcd6b56bb318cb371E"(ptr noundef nonnull, ptr noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h71c8c03d11fea936E"(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hec708247493f445bE"(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he5e312ea25282a78E"(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb0d3894e68abcb63E"(ptr noundef nonnull, ptr noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf7813b89bcb2920aE"(ptr noundef nonnull, ptr noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h95008cf94ef88fb5E"(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h56348c5b3e46491cE"(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb3977cc8cb0bf04bE"(ptr noundef nonnull, ptr noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h74db381d5ce3a673E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17he239672b1742d56bE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h18a6ab46e8032e8cE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h73cdacab2bdb1899E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5bf34e1b72e6d218E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf9f89352961c4d9aE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0f70d812c187c805E"(i32 noundef, ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { noreturn }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { cold }
attributes #19 = { nounwind }
end_hunk_1
