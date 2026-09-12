Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31028
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h73a4c340827f0e4eE":bb.a
    i32 0, label %bb.p
    i32 22, label %bb.n
    i32 32, label %bb.q
    i32 48, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.cr = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i.i.i, 5760
  %i.cs = zext i1 %i.cr to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i.i.i.i.i.i.i.i"

bb.o:                                             ; preds = %bb.m
  %i.ct = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i.i.i, 12288
  %i.cu = zext i1 %i.ct to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.m
  %i.cv = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i.i.i, 255
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !111037, !noundef !21
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i.i.i.i.i.i.i.i"

bb.q:                                             ; preds = %bb.m
  %i.cz = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i.i.i, 255
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !noalias !111037, !noundef !21
  %i.dd = lshr i8 %i.dc, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.cu, %bb.o ], [ %i.cy, %bb.p ], [ %i.cs, %bb.n ], [ %i.dd, %bb.q ]
  %i.de = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.de, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h716513c86f782278E.exit.i.i.i.i.i.i.i.i.i", label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2291c4dc823e7218E.exit.i.i.i.i.i.i.i"

"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h716513c86f782278E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i.i.i.i.i.i.i.i", %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.df = icmp eq ptr %.sroa.4.0.i.i.i.i.i.i.i, %i.ay
  br i1 %i.df, label %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.thread.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h716513c86f782278E.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !111038
  br label %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hc688b59a5d4ba6adE.exit.thread.i.i.i.i"

"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2291c4dc823e7218E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i.i.i.i.i.i.i.i", %bb.m, %bb.l, %bb.i
  %.sroa.4.121.i.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.i ], [ %.sroa.4.0.i.i.i.i.i.i.i, %bb.l ], [ %.sroa.4.0.i.i.i.i.i.i.i, %bb.m ], [ %.sroa.4.0.i.i.i.i.i.i.i, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.18.019.i.i.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.co, %bb.l ], [ %i.co, %bb.m ], [ %i.co, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.i259.i.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.ba, %bb.l ], [ %i.ba, %bb.m ], [ %i.ba, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.dg = icmp eq ptr %.sroa.4.121.i.i.i.i.i.i.i, %i.ay
  br i1 %i.dg, label %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.i.i.i.i.i.i", label %.lr.ph.i.i4.i.i.i.i.i.i.i

.lr.ph.i.i4.i.i.i.i.i.i.i:                        ; preds = %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2291c4dc823e7218E.exit.i.i.i.i.i.i.i", %bb.ab
  %i.dh = phi ptr [ %i.er, %bb.ab ], [ %i.ay, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2291c4dc823e7218E.exit.i.i.i.i.i.i.i" ] ; 5 uses
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -1 ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !111035, !noalias !111039, !noundef !21 ; 3 uses
  %i.dk = icmp sgt i8 %i.dj, -1
  br i1 %i.dk, label %bb.r, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit17.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit17.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i4.i.i.i.i.i.i.i
  %i.dl = icmp ne ptr %.sroa.4.121.i.i.i.i.i.i.i, %i.di
  call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds i8, ptr %i.dh, i64 -2 ; 3 uses
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !111035, !noalias !111039, !noundef !21 ; 3 uses
  %i.do = and i8 %i.dn, 31
  %i.dp = zext nneg i8 %i.do to i32
  %i.dq = icmp slt i8 %i.dn, -64
  br i1 %i.dq, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit19.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i4.i.i.i.i.i.i.i
  %i.dr = zext nneg i8 %i.dj to i32
  br label %bb.u

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit19.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit17.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ds = icmp ne ptr %.sroa.4.121.i.i.i.i.i.i.i, %i.dm
  call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds i8, ptr %i.dh, i64 -3 ; 3 uses
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !111035, !noalias !111039, !noundef !21 ; 3 uses
  %i.dv = and i8 %i.du, 15
  %i.dw = zext nneg i8 %i.dv to i32
  %i.dx = icmp slt i8 %i.du, -64
  br i1 %i.dx, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit21.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.t

bb.s:                                             ; preds = %bb.t, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit17.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dy = phi ptr [ %i.em, %bb.t ], [ %i.dm, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit17.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.eq, %bb.t ], [ %i.dp, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit17.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.dz = shl nuw nsw i32 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.ea = and i8 %i.dj, 63
  %i.eb = zext nneg i8 %i.ea to i32
  %i.ec = or disjoint i32 %i.dz, %i.eb
  br label %bb.u

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit21.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit19.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ed = icmp ne ptr %.sroa.4.121.i.i.i.i.i.i.i, %i.dt
  call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds i8, ptr %i.dh, i64 -4 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !111035, !noalias !111039, !noundef !21
  %i.eg = and i8 %i.ef, 7
  %i.eh = zext nneg i8 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 6
  %i.ej = and i8 %i.du, 63
  %i.ek = zext nneg i8 %i.ej to i32
  %i.el = or disjoint i32 %i.ei, %i.ek
  br label %bb.t

bb.t:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit21.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit19.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.em = phi ptr [ %i.ee, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit21.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.dt, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit19.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.04.1.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.el, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit21.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.dw, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h77477cb12afda662E.exit19.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.en = shl nuw nsw i32 %.sroa.04.1.i.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.eo = and i8 %i.dn, 63
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = or disjoint i32 %i.en, %i.ep
  br label %bb.s

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.er = phi ptr [ %i.di, %bb.r ], [ %i.dy, %bb.s ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dr, %bb.r ], [ %i.ec, %bb.s ] ; 8 uses
  %i.es = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.es)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i.i.i.i, label %bb.v [
    i32 32, label %bb.ab
    i32 13, label %bb.ab
    i32 12, label %bb.ab
    i32 11, label %bb.ab
    i32 10, label %bb.ab
    i32 9, label %bb.ab
  ]

bb.v:                                             ; preds = %bb.u
  %i.et = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i.i.i.i, 127
  br i1 %i.et, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.eu = lshr i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i.i.i.i, 8
  switch i32 %i.eu, label %bb.ac [
    i32 0, label %bb.z
    i32 22, label %bb.x
    i32 32, label %bb.aa
    i32 48, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.ev = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i.i.i.i, 5760
  %i.ew = zext i1 %i.ev to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i6.i.i.i.i.i.i.i"

bb.y:                                             ; preds = %bb.w
  %i.ex = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i.i.i.i, 12288
  %i.ey = zext i1 %i.ex to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i6.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %bb.w
  %i.ez = and i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i.i.i.i, 255
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !111040, !noundef !21
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i6.i.i.i.i.i.i.i"

bb.aa:                                            ; preds = %bb.w
  %i.fd = and i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i.i.i.i, 255
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !noalias !111040, !noundef !21
  %i.fh = lshr i8 %i.fg, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i6.i.i.i.i.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i6.i.i.i.i.i.i.i": ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %.sroa.0.0.i.i.i.i.i.i.i7.i.i.i.i.i.i.i = phi i8 [ %i.ey, %bb.y ], [ %i.fc, %bb.z ], [ %i.ew, %bb.x ], [ %i.fh, %bb.aa ]
  %i.fi = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7.i.i.i.i.i.i.i to i1
  br i1 %i.fi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i6.i.i.i.i.i.i.i", %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  %i.fj = icmp eq ptr %.sroa.4.121.i.i.i.i.i.i.i, %i.er
  br i1 %i.fj, label %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.i.i.i.i.i.i", label %.lr.ph.i.i4.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he730e7d18cb4200fE.exit.i.i.i6.i.i.i.i.i.i.i", %bb.w, %bb.v
  %i.fk = ptrtoint ptr %i.dh to i64
  %i.fl = ptrtoint ptr %.sroa.4.121.i.i.i.i.i.i.i to i64
  %i.fm = sub i64 %.sroa.18.019.i.i.i.i.i.i.i, %i.fl
  %i.fn = add i64 %i.fm, %i.fk
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.i.i.i.i.i.i"

"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.i.i.i.i.i.i": ; preds = %bb.ab, %bb.ac, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2291c4dc823e7218E.exit.i.i.i.i.i.i.i"
  %.sroa.01.1.i.i.i.i.i.i.i = phi i64 [ %i.fn, %bb.ac ], [ %.sroa.18.019.i.i.i.i.i.i.i, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2291c4dc823e7218E.exit.i.i.i.i.i.i.i" ], [ %.sroa.18.019.i.i.i.i.i.i.i, %bb.ab ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.0.0.i259.i.i.i.i.i.i ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.01.1.i.i.i.i.i.i.i ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !111038
  %i.fq = icmp eq i64 %.sroa.01.1.i.i.i.i.i.i.i, %.sroa.0.0.i259.i.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 1 ; 3 uses
  br i1 %i.fq, label %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hc688b59a5d4ba6adE.exit.thread.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.i.i.i.i.i.i"
  %i.fs = load i8, ptr %i.fo, align 1, !alias.scope !111041, !noalias !111042, !noundef !21 ; 2 uses
  %i.ft = add i8 %i.fs, -48                       ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp ult i8 %i.ft, 10
  br i1 %or.cond.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fu = call noundef i32 @_ZN9byte_unit6common19get_char_from_bytes17h3278923d4ab29cc8E(i8 noundef %i.fs, ptr noundef nonnull readonly %i.fr, ptr noundef nonnull readonly %i.fp), !noalias !111042 ; 2 uses
  %.sroa.22.sroa.0.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i32 %i.fu to i8
  %.sroa.22.sroa.0.sroa.10.0.extract.shift.i.i.i.i.i = lshr i32 %i.fu, 8
  br label %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hc688b59a5d4ba6adE.exit.thread.i.i.i.i"

bb.af:                                            ; preds = %bb.ad
  %i.fv = zext nneg i8 %i.ft to i32
  store i32 0, ptr %i.v, align 8, !noalias !111038
  %i.fw = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  store i32 0, ptr %i.fw, align 4, !noalias !111038
  %i.fx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  store i32 %i.fv, ptr %i.fx, align 8, !noalias !111038
  %i.fy = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 3 uses
  store i32 0, ptr %i.fy, align 4, !noalias !111038
  %i.fz = add nuw nsw i64 %.sroa.0.0.i259.i.i.i.i.i.i, 1
  %i.ga = icmp samesign ne i64 %i.fz, %.sroa.01.1.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.2.idx602.i.i.i.i.i.i = zext i1 %i.ga to i64
  %.sroa.0.2603.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.0.2.idx602.i.i.i.i.i.i ; 2 uses
  br i1 %i.ga, label %.lr.ph.i.i3.i.i.i.i, label %.thread.i.i.i.i.i.i

.lr.ph.i.i3.i.i.i.i:                              ; preds = %bb.af
  %.sroa.5460.0..sroa_idx461.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 3 uses
  %.sroa.6463.0..sroa_idx464.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %.sroa.9466.0..sroa_idx467.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.sroa.10469.0..sroa_idx470.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 13 uses
  %.sroa.4.0..sroa_idx.i220.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 12 uses
  %.sroa.57.0..sroa_idx.i221.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 12 uses
  %.sroa.6.0..sroa_idx.i222.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 10 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.et, %.lr.ph.i.i3.i.i.i.i
  %.sroa.0.2605.i.i.i.i.i.i = phi ptr [ %.sroa.0.2603.i.i.i.i.i.i, %.lr.ph.i.i3.i.i.i.i ], [ %.sroa.0.2.i.i.i.i.i.i, %bb.et ] ; 8 uses
  %.sroa.0.1604.i.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i3.i.i.i.i ], [ %.sroa.0.2605.i.i.i.i.i.i, %bb.et ]
  %i.gg = load i8, ptr %.sroa.0.1604.i.i.i.i.i.i, align 1, !alias.scope !111041, !noalias !111042, !noundef !21 ; 3 uses
  %i.gh = add i8 %i.gg, -48                       ; 5 uses
  %or.cond1.i.i.i.i.i.i = icmp ult i8 %i.gh, 10
  br i1 %or.cond1.i.i.i.i.i.i, label %bb.ai, label %bb.ah

.thread.i.i.i.i.i.i:                              ; preds = %bb.et, %bb.bb, %.preheader574.i.i.i.i.i.i, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.thread.i.i.i.i.i.i", %bb.ba, %.preheader.i.i.i.i.i.i, %bb.az, %bb.ah, %bb.af
  %.sroa.12.0.i.i.i.i.i.i = phi i8 [ undef, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.thread.i.i.i.i.i.i" ], [ %i.gg, %bb.ah ], [ undef, %.preheader574.i.i.i.i.i.i ], [ %i.ik, %bb.az ], [ %i.ir, %bb.ba ], [ undef, %bb.af ], [ undef, %.preheader.i.i.i.i.i.i ], [ %i.ix, %bb.bb ], [ undef, %bb.et ]
  %.sroa.032.0.i.i.i.i.i.i = phi i1 [ false, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.thread.i.i.i.i.i.i" ], [ true, %bb.ah ], [ %i.ij, %bb.bb ], [ true, %bb.az ], [ %i.iq, %bb.ba ], [ false, %bb.af ], [ %i.iq, %.preheader.i.i.i.i.i.i ], [ %i.ij, %.preheader574.i.i.i.i.i.i ], [ false, %bb.et ]
  %.sroa.0.3.i.i.i.i.i.i = phi ptr [ %.sroa.0.6.i.i.i.i.i.i, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.thread.i.i.i.i.i.i" ], [ %.sroa.0.2605.i.i.i.i.i.i, %bb.ah ], [ %.sroa.0.10.i.i.i.i.i.i, %bb.bb ], [ %.sroa.0.6610.i.i.i.i.i.i, %bb.az ], [ %.sroa.0.9.i.i.i.i.i.i, %bb.ba ], [ %.sroa.0.2603.i.i.i.i.i.i, %bb.af ], [ %.sroa.0.9.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %.sroa.0.10.i.i.i.i.i.i, %.preheader574.i.i.i.i.i.i ], [ %.sroa.0.2.i.i.i.i.i.i, %bb.et ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !111038
  call void @_ZN9byte_unit4unit5parse8read_xib17h2d84fa7f2a734216E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, i1 noundef zeroext %.sroa.032.0.i.i.i.i.i.i, i8 %.sroa.12.0.i.i.i.i.i.i, ptr noundef nonnull %.sroa.0.3.i.i.i.i.i.i, ptr noundef nonnull readonly %i.fp, i1 noundef zeroext false, i1 noundef zeroext true), !noalias !111042
  %i.gi = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.gj = load i32, ptr %i.gi, align 8, !range !111043, !noalias !111038, !noundef !21 ; 2 uses
  %.not206.i.i.i.i.i.i = icmp eq i32 %i.gj, 1114112
  %i.gk = load i8, ptr %i.t, align 8, !noalias !111038 ; 2 uses
  br i1 %.not206.i.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.ah:                                            ; preds = %bb.ag
  switch i8 %i.gg, label %.thread.i.i.i.i.i.i [
    i8 46, label %.preheader573.i.i.i.i.i.i
    i8 32, label %.preheader574.i.i.i.i.i.i
  ]

.preheader573.i.i.i.i.i.i:                        ; preds = %bb.ah
  %i.gl = icmp ne ptr %.sroa.0.2605.i.i.i.i.i.i, %i.fp ; 2 uses
  %.sroa.0.6.idx606.i.i.i.i.i.i = zext i1 %i.gl to i64
  %.sroa.0.6607.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.2605.i.i.i.i.i.i, i64 %.sroa.0.6.idx606.i.i.i.i.i.i ; 2 uses
  br i1 %i.gl, label %.lr.ph611.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i.i

.lr.ph611.i.i.i.i.i.i:                            ; preds = %.preheader573.i.i.i.i.i.i
  %.sroa.768.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  br label %bb.av

bb.ai:                                            ; preds = %bb.ag
  %.sroa.0327.0.copyload.i.i.i.i.i.i = load i32, ptr %i.v, align 8, !noalias !111038 ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i32, ptr %i.fw, align 4, !noalias !111038 ; 3 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i32, ptr %i.fx, align 8, !noalias !111038 ; 2 uses
  %.sroa.14.0.copyload.i.i.i.i.i.i = load i32, ptr %i.fy, align 4, !noalias !111038 ; 2 uses
  %i.gm = or i32 %.sroa.14.0.copyload.i.i.i.i.i.i, %.sroa.5.0.copyload.i.i.i.i.i.i ; 2 uses
  %i.gn = or i32 %i.gm, %.sroa.10.0.copyload.i.i.i.i.i.i
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread.i.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gp = lshr i32 %.sroa.0327.0.copyload.i.i.i.i.i.i, 16
  %i.gq = and i32 %i.gp, 255                      ; 7 uses
  %i.gr = icmp eq i32 %i.gm, 0
  %i.gs = zext i32 %.sroa.10.0.copyload.i.i.i.i.i.i to i64
  %i.gt = mul nuw nsw i64 %i.gs, 10               ; 5 uses
  br i1 %i.gr, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.gu = icmp samesign ugt i32 %i.gq, 28
  br i1 %i.gu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gv = icmp samesign ugt i32 %i.gq, 47
  br i1 %i.gv, label %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread.i.i.i.i.i.i, label %bb.an

bb.am:                                            ; preds = %bb.aq, %bb.ao, %bb.ak
  %.sroa.08.0.i.i.i.i.i.i.i = phi i64 [ %i.gt, %bb.ak ], [ %i.hi, %bb.ao ], [ %spec.select.i.i.i.i.i.i.i, %bb.aq ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi i32 [ %i.gq, %bb.ak ], [ 28, %bb.ao ], [ 28, %bb.aq ]
  %i.gw = trunc i64 %.sroa.08.0.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.gx = lshr i64 %.sroa.08.0.i.i.i.i.i.i.i, 32  ; 2 uses
  %i.gy = trunc nuw nsw i64 %i.gx to i32
  %i.gz = icmp eq i32 %i.gw, 0
  %i.ha = icmp eq i64 %i.gx, 0
  %or.cond.i.i.i.i.i.i.i = and i1 %i.gz, %i.ha
  %.lobit.i246.i.i.i.i.i.i = and i32 %.sroa.0327.0.copyload.i.i.i.i.i.i, -2147483648
  %.sroa.071.0.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i, i32 0, i32 %.lobit.i246.i.i.i.i.i.i
  %i.hb = shl nuw nsw i32 %.sroa.0.0.i.i.i.i.i.i.i, 16
  %i.hc = or disjoint i32 %.sroa.071.0.i.i.i.i.i.i.i, %i.hb
  br label %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.hd = zext nneg i32 %i.gq to i64
  %i.he = getelementptr [8 x i8], ptr @243, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 -232
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !111044, !noundef !21 ; 5 uses
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hi = udiv i64 %i.gt, %i.hg                   ; 4 uses
  %i.hj = mul i64 %i.hi, %i.hg                    ; 0 uses
  %.recomposed = urem i64 %i.gt, %i.hg            ; 2 uses
  %i.hk = lshr i64 %i.hg, 1                       ; 2 uses
  %.not84.i.i.i.i.i.i.i = icmp ult i64 %.recomposed, %i.hk
  br i1 %.not84.i.i.i.i.i.i.i, label %bb.am, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #41, !noalias !111045
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.hl = icmp ugt i64 %.recomposed, %i.hk
  %.not85.i.i.i.i.i.i.i = trunc i64 %i.hi to i1
  %or.cond86.i.not.i.i.i.i.i.i = or i1 %i.hl, %.not85.i.i.i.i.i.i.i
  %i.hm = zext i1 %or.cond86.i.not.i.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i.i.i = add nuw nsw i64 %i.hi, %i.hm
  br label %bb.am

bb.ar:                                            ; preds = %bb.aj
  %i.hn = trunc i64 %i.gt to i32                  ; 3 uses
  %i.ho = zext i32 %.sroa.14.0.copyload.i.i.i.i.i.i to i64
  %i.hp = mul nuw nsw i64 %i.ho, 10
  %i.hq = lshr i64 %i.gt, 32
  %i.hr = add nuw nsw i64 %i.hp, %i.hq            ; 2 uses
  %i.hs = trunc i64 %i.hr to i32                  ; 4 uses
  %i.ht = lshr i64 %i.hr, 32                      ; 2 uses
  %.not.i.i245.i.i.i.i.i.i = icmp eq i32 %.sroa.5.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i245.i.i.i.i.i.i, label %.thread692.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hu = zext i32 %.sroa.5.0.copyload.i.i.i.i.i.i to i64
  %i.hv = mul nuw nsw i64 %i.hu, 10
  %i.hw = add nuw nsw i64 %i.ht, %i.hv            ; 3 uses
  %i.hx = icmp samesign ugt i64 %i.hw, 4294967295
  br i1 %i.hx, label %bb.at, label %.thread692.i.i.i.i.i.i

.thread692.i.i.i.i.i.i:                           ; preds = %bb.as, %bb.ar
  %.sroa.6463.0.in.ph.i.i.i.i.i.i = phi i64 [ %i.hw, %bb.as ], [ %i.ht, %bb.ar ] ; 2 uses
  %.sroa.6463.0695.i.i.i.i.i.i = trunc nuw i64 %.sroa.6463.0.in.ph.i.i.i.i.i.i to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !111044
  store i32 %i.hn, ptr %i.p, align 4, !noalias !111044
  store i32 %i.hs, ptr %.sroa.5460.0..sroa_idx461.i.i.i.i.i.i, align 4, !noalias !111044
  store i32 %.sroa.6463.0695.i.i.i.i.i.i, ptr %.sroa.6463.0..sroa_idx464.i.i.i.i.i.i, align 4, !noalias !111044
  store i32 0, ptr %.sroa.9466.0..sroa_idx467.i.i.i.i.i.i, align 4, !noalias !111044
  store i64 0, ptr %.sroa.10469.0..sroa_idx470.i.i.i.i.i.i, align 4, !noalias !111044
  %.not3.i267.i.i.i.i.i.i = icmp eq i64 %.sroa.6463.0.in.ph.i.i.i.i.i.i, 0
  %.not4.i268.i.i.i.i.i.i = icmp ne i32 %i.hs, 0
  %..i269.i.i.i.i.i.i = zext i1 %.not4.i268.i.i.i.i.i.i to i64
  %.sroa.0.0.i264.i.i.i.i.i.i = select i1 %.not3.i267.i.i.i.i.i.i, i64 %..i269.i.i.i.i.i.i, i64 2
  %i.hy = icmp samesign ugt i32 %i.gq, 28
  br i1 %i.hy, label %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit270.thread.i.i.i.i.i.i, label %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread498.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !111044
  store i32 %i.hn, ptr %i.p, align 4, !noalias !111044
  store i32 %i.hs, ptr %.sroa.5460.0..sroa_idx461.i.i.i.i.i.i, align 4, !noalias !111044
  store i64 %i.hw, ptr %.sroa.6463.0..sroa_idx464.i.i.i.i.i.i, align 4, !noalias !111044
  store i64 0, ptr %.sroa.10469.0..sroa_idx470.i.i.i.i.i.i, align 4, !noalias !111044
  br label %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit270.thread.i.i.i.i.i.i

_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit270.thread.i.i.i.i.i.i: ; preds = %bb.at, %.thread692.i.i.i.i.i.i
  %.sroa.0.0.i264485.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i264.i.i.i.i.i.i, %.thread692.i.i.i.i.i.i ], [ 3, %bb.at ]
  %i.hz = call { i32, i32 } @_ZN12rust_decimal3ops6common5Buf247rescale17h791a5a9326c14080E(ptr noalias noundef nonnull align 4 dereferenceable(24) %i.p, i64 noundef %.sroa.0.0.i264485.i.i.i.i.i.i, i32 noundef range(i32 0, 511) %i.gq), !noalias !111046 ; 2 uses
  %i.ia = extractvalue { i32, i32 } %i.hz, 0
  %i.ib = trunc i32 %i.ia to i1
  br i1 %i.ib, label %bb.au, label %bb.dk

_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread498.i.i.i.i.i.i: ; preds = %bb.au, %.thread692.i.i.i.i.i.i
  %i.ic = phi i32 [ %.pre645.i.i.i.i.i.i, %bb.au ], [ %.sroa.6463.0695.i.i.i.i.i.i, %.thread692.i.i.i.i.i.i ]
  %i.id = phi i32 [ %.pre644.i.i.i.i.i.i, %bb.au ], [ %i.hs, %.thread692.i.i.i.i.i.i ]
  %i.ie = phi i32 [ %.pre.i.i.i.i.i.i, %bb.au ], [ %i.hn, %.thread692.i.i.i.i.i.i ]
  %.sroa.0.0.i88.i.i.i.i.i.i.i = phi i32 [ %i.ii, %bb.au ], [ %i.gq, %.thread692.i.i.i.i.i.i ]
  %i.if = shl i32 %.sroa.0.0.i88.i.i.i.i.i.i.i, 16
  %i.ig = and i32 %.sroa.0327.0.copyload.i.i.i.i.i.i, -2147483648
  %i.ih = or i32 %i.if, %i.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !111044
  br label %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread.i.i.i.i.i.i

bb.au:                                            ; preds = %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit270.thread.i.i.i.i.i.i
  %i.ii = extractvalue { i32, i32 } %i.hz, 1
  %.pre.i.i.i.i.i.i = load i32, ptr %i.p, align 4, !alias.scope !111047, !noalias !111048
  %.pre644.i.i.i.i.i.i = load i32, ptr %.sroa.5460.0..sroa_idx461.i.i.i.i.i.i, align 4, !alias.scope !111047, !noalias !111048
  %.pre645.i.i.i.i.i.i = load i32, ptr %.sroa.6463.0..sroa_idx464.i.i.i.i.i.i, align 4, !alias.scope !111047, !noalias !111048
  br label %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread498.i.i.i.i.i.i

.preheader574.i.i.i.i.i.i:                        ; preds = %bb.ah, %bb.bb
  %.sroa.0.4.i.i.i.i.i.i = phi ptr [ %.sroa.0.10.i.i.i.i.i.i, %bb.bb ], [ %.sroa.0.2605.i.i.i.i.i.i, %bb.ah ] ; 3 uses
  %i.ij = icmp ne ptr %.sroa.0.4.i.i.i.i.i.i, %i.fp ; 4 uses
  %.sroa.0.10.idx.i.i.i.i.i.i = zext i1 %i.ij to i64
  %.sroa.0.10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.4.i.i.i.i.i.i, i64 %.sroa.0.10.idx.i.i.i.i.i.i ; 3 uses
  br i1 %i.ij, label %bb.bb, label %.thread.i.i.i.i.i.i

bb.av:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.thread.i.i.i.i.i.i", %.lr.ph611.i.i.i.i.i.i
  %.sroa.0.6610.i.i.i.i.i.i = phi ptr [ %.sroa.0.6607.i.i.i.i.i.i, %.lr.ph611.i.i.i.i.i.i ], [ %.sroa.0.6.i.i.i.i.i.i, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.thread.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.0.5609.i.i.i.i.i.i = phi ptr [ %.sroa.0.2605.i.i.i.i.i.i, %.lr.ph611.i.i.i.i.i.i ], [ %.sroa.0.6610.i.i.i.i.i.i, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.thread.i.i.i.i.i.i" ]
  %.sroa.060.0608.i.i.i.i.i.i = phi i32 [ 1, %.lr.ph611.i.i.i.i.i.i ], [ %i.iv, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.thread.i.i.i.i.i.i" ] ; 4 uses
  %i.ik = load i8, ptr %.sroa.0.5609.i.i.i.i.i.i, align 1, !alias.scope !111041, !noalias !111042, !noundef !21 ; 4 uses
  %i.il = add i8 %i.ik, -48                       ; 2 uses
  %or.cond2.i.i.i.i.i.i = icmp ult i8 %i.il, 10
  br i1 %or.cond2.i.i.i.i.i.i, label %bb.ax, label %bb.aw

._crit_edge.thread.i.i.i.i.i.i:                   ; preds = %.preheader573.i.i.i.i.i.i
  %i.im = call noundef i32 @_ZN9byte_unit6common19get_char_from_bytes17h3278923d4ab29cc8E(i8 noundef 46, ptr noundef nonnull %.sroa.0.6607.i.i.i.i.i.i, ptr noundef nonnull readonly %i.fp), !noalias !111042 ; 2 uses
  %.sroa.22.sroa.0.sroa.0.0.extract.trunc12.i.i.i.i.i = trunc i32 %i.im to i8
  %.sroa.22.sroa.0.sroa.10.0.extract.shift19.i.i.i.i.i = lshr i32 %i.im, 8
  br label %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hc688b59a5d4ba6adE.exit.thread.i.i.i.i"

bb.aw:                                            ; preds = %bb.av
  %i.in = icmp eq i32 %.sroa.060.0608.i.i.i.i.i.i, 1
  br i1 %i.in, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !111038
  %exitcond.i.i.i.i.i.i = icmp eq i32 %.sroa.060.0608.i.i.i.i.i.i, 29
  br i1 %exitcond.i.i.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.i.i.i.i.i.i", label %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.thread.i.i.i.i.i.i"

bb.ay:                                            ; preds = %bb.aw
  %i.io = call noundef i32 @_ZN9byte_unit6common19get_char_from_bytes17h3278923d4ab29cc8E(i8 noundef %i.ik, ptr noundef nonnull %.sroa.0.6610.i.i.i.i.i.i, ptr noundef nonnull readonly %i.fp), !noalias !111042 ; 2 uses
  %.sroa.22.sroa.0.sroa.0.0.extract.trunc13.i.i.i.i.i = trunc i32 %i.io to i8
  %.sroa.22.sroa.0.sroa.10.0.extract.shift21.i.i.i.i.i = lshr i32 %i.io, 8
  br label %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hc688b59a5d4ba6adE.exit.thread.i.i.i.i"

bb.az:                                            ; preds = %bb.aw
  %i.ip = icmp eq i8 %i.ik, 32
  br i1 %i.ip, label %.preheader.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.az, %bb.ba
  %.sroa.0.8.i.i.i.i.i.i = phi ptr [ %.sroa.0.9.i.i.i.i.i.i, %bb.ba ], [ %.sroa.0.6610.i.i.i.i.i.i, %bb.az ] ; 3 uses
  %i.iq = icmp ne ptr %.sroa.0.8.i.i.i.i.i.i, %i.fp ; 4 uses
  %.sroa.0.9.idx.i.i.i.i.i.i = zext i1 %i.iq to i64
  %.sroa.0.9.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.8.i.i.i.i.i.i, i64 %.sroa.0.9.idx.i.i.i.i.i.i ; 3 uses
  br i1 %i.iq, label %bb.ba, label %.thread.i.i.i.i.i.i

bb.ba:                                            ; preds = %.preheader.i.i.i.i.i.i
  %i.ir = load i8, ptr %.sroa.0.8.i.i.i.i.i.i, align 1, !alias.scope !111041, !noalias !111042, !noundef !21 ; 2 uses
  %i.is = icmp eq i8 %i.ir, 32
  br i1 %i.is, label %.preheader.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i

"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.i.i.i.i.i.i": ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !111038
  br label %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hc688b59a5d4ba6adE.exit.thread.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.thread.i.i.i.i.i.i": ; preds = %bb.ax
  %i.it = shl nuw nsw i32 %.sroa.060.0608.i.i.i.i.i.i, 16
  %i.iu = zext nneg i8 %i.il to i32
  store i32 %i.it, ptr %i.u, align 4, !noalias !111038
  store i32 0, ptr %.sroa.768.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !111038
  store i32 %i.iu, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !111038
  store i32 0, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !111038
  call void @"_ZN78_$LT$rust_decimal..decimal..Decimal$u20$as$u20$core..ops..arith..AddAssign$GT$10add_assign17h830300418ac00dd0E"(ptr noalias noundef nonnull align 4 dereferenceable(16) %i.v, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.u), !noalias !111042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !111038
  %i.iv = add nuw nsw i32 %.sroa.060.0608.i.i.i.i.i.i, 1
  %i.iw = icmp ne ptr %.sroa.0.6610.i.i.i.i.i.i, %i.fp ; 2 uses
  %.sroa.0.6.idx.i.i.i.i.i.i = zext i1 %i.iw to i64
  %.sroa.0.6.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.6610.i.i.i.i.i.i, i64 %.sroa.0.6.idx.i.i.i.i.i.i ; 2 uses
  br i1 %i.iw, label %bb.av, label %.thread.i.i.i.i.i.i

bb.bb:                                            ; preds = %.preheader574.i.i.i.i.i.i
  %i.ix = load i8, ptr %.sroa.0.4.i.i.i.i.i.i, align 1, !alias.scope !111041, !noalias !111042, !noundef !21 ; 2 uses
  %i.iy = icmp eq i8 %i.ix, 32
  br i1 %i.iy, label %.preheader574.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i

bb.bc:                                            ; preds = %.thread.i.i.i.i.i.i
  %.sroa.4177.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.22.sroa.0.sroa.10.sroa.0.0.copyload.i.i.i.i.i = load i24, ptr %.sroa.4177.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !111049
  %.sroa.22.sroa.11.1..sroa.4177.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.22.sroa.11.1.copyload.i.i.i.i.i = load i32, ptr %.sroa.22.sroa.11.1..sroa.4177.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 4, !noalias !111049
  %.sroa.30.9..sroa.4177.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.30.9.copyload.i.i.i.i.i = load i64, ptr %.sroa.30.9..sroa.4177.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8, !noalias !111049
  %.sroa.6179.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.6179.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.6179.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !111038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !111038
  %2 = zext i24 %.sroa.22.sroa.0.sroa.10.sroa.0.0.copyload.i.i.i.i.i to i32
  %i.iz = zext i32 %.sroa.22.sroa.11.1.copyload.i.i.i.i.i to i64
  br label %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hc688b59a5d4ba6adE.exit.thread.i.i.i.i"

bb.bd:                                            ; preds = %.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !111038
  %.sroa.0360.0.copyload.i.i.i.i.i.i = load i32, ptr %i.v, align 8, !noalias !111038 ; 8 uses
  %.sroa.6362.0.copyload.i.i.i.i.i.i = load i32, ptr %i.fw, align 4, !noalias !111038 ; 8 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load i32, ptr %i.fx, align 8, !noalias !111038 ; 5 uses
  %.sroa.10368.0.copyload.i.i.i.i.i.i = load i32, ptr %i.fy, align 4, !noalias !111038 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !111050
  switch i8 %i.gk, label %default.unreachable.i.i.i.i.i.i [
    i8 0, label %bb.cb
    i8 1, label %bb.cj
    i8 25, label %bb.ca
    i8 24, label %bb.bz
    i8 2, label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i
    i8 3, label %bb.be
    i8 4, label %bb.bf
    i8 5, label %bb.bg
    i8 6, label %bb.bh
    i8 7, label %bb.bi
    i8 8, label %bb.bj
    i8 9, label %bb.bk
    i8 10, label %bb.bl
    i8 11, label %bb.bm
    i8 12, label %bb.bn
    i8 13, label %bb.bo
    i8 14, label %bb.bp
    i8 15, label %bb.bq
    i8 16, label %bb.br
    i8 17, label %bb.bs
    i8 18, label %bb.bt
    i8 19, label %bb.bu
    i8 20, label %bb.bv
    i8 21, label %bb.bw
    i8 22, label %bb.bx
    i8 23, label %bb.by
  ]

default.unreachable.i.i.i.i.i.i:                  ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bs:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.by:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %bb.bd
  br label %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !111050
  call void @llvm.experimental.noalias.scope.decl(metadata !111051)
  %i.ja = or i32 %.sroa.10368.0.copyload.i.i.i.i.i.i, %.sroa.6362.0.copyload.i.i.i.i.i.i
  %i.jb = or i32 %i.ja, %.sroa.8.0.copyload.i.i.i.i.i.i
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %"_ZN12rust_decimal16arithmetic_impls86_$LT$impl$u20$core..ops..arith..Div$u20$for$u20$$RF$rust_decimal..decimal..Decimal$GT$3div17h133e03a251003460E.exit.i.i.i.i.i.i.i", label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jd = lshr i32 %.sroa.0360.0.copyload.i.i.i.i.i.i, 16
  %i.je = and i32 %i.jd, 255                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !111052
  store i32 %.sroa.8.0.copyload.i.i.i.i.i.i, ptr %i.h, align 4, !noalias !111052
  %.sroa.422.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store i32 %.sroa.10368.0.copyload.i.i.i.i.i.i, ptr %.sroa.422.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !noalias !111052
  %.sroa.523.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %.sroa.6362.0.copyload.i.i.i.i.i.i, ptr %.sroa.523.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !noalias !111052
  %i.jf = call noundef i32 @"_ZN12rust_decimal3ops3div50_$LT$impl$u20$rust_decimal..ops..common..Buf12$GT$5div3217h697e7af0f2f3338aE"(ptr noalias noundef nonnull align 4 dereferenceable(12) %i.h, i32 noundef 8), !noalias !111053 ; 2 uses
  %.not.i283.i.i.i.i.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not.i283.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !111052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !111052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !noalias !111052
  call void @_ZN12rust_decimal3ops3div16div_remainder_3217h1ac37f62dcf9e246E(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.g, i32 noundef %i.jf, i32 noundef 8, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.f, i32 noundef %i.je), !noalias !111053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !111052
  %i.jg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.jh = load i8, ptr %i.jg, align 4, !range !30, !noalias !111052, !noundef !21 ; 2 uses
  %i.ji = icmp eq i8 %i.jh, 2
  br i1 %i.ji, label %bb.ci, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !noalias !111052
  %i.jj = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.jk = load i32, ptr %i.jj, align 4, !noalias !111052, !noundef !21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !111052
  %i.jl = trunc nuw i8 %i.jh to i1
  br i1 %i.jl, label %bb.cf, label %.thread.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.cf, %bb.ce, %bb.cc
  %.sroa.0.3.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jn, %bb.cf ], [ %i.jk, %bb.ce ], [ %i.je, %bb.cc ] ; 2 uses
  %i.jm = icmp ult i32 %.sroa.0.3.i.i.i.i.i.i.i.i.i, 29
  br i1 %i.jm, label %bb.ch, label %bb.cg, !prof !26

bb.cf:                                            ; preds = %bb.ce
  %i.jn = call noundef i32 @_ZN12rust_decimal3ops3div7unscale17h1431c54183d3b973E(ptr noalias noundef nonnull align 4 dereferenceable(12) %i.h, i32 noundef %i.jk), !noalias !111053
  br label %.thread.i.i.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !111052
  store ptr @240, ptr %i.e, align 8, !noalias !111052
  %i.jo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.jo, align 8, !noalias !111052
  %i.jp = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.jp, align 8, !noalias !111052
  %i.jq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.jq, align 8, !noalias !111052
  %i.jr = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.jr, align 8, !noalias !111052
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #41, !noalias !111053
  unreachable

bb.ch:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i
  %i.js = load i32, ptr %.sroa.523.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !noalias !111052, !noundef !21 ; 2 uses
  %i.jt = load i32, ptr %.sroa.422.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !noalias !111052, !noundef !21 ; 2 uses
  %i.ju = load i32, ptr %i.h, align 4, !noalias !111052, !noundef !21 ; 2 uses
  %i.jv = or i32 %i.jt, %i.js
  %i.jw = or i32 %i.jv, %i.ju
  %or.cond1.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.jw, 0
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %.sroa.0360.0.copyload.i.i.i.i.i.i, -2147483648
  %.sroa.034.0.i.i.i.i.i.i.i.i.i = select i1 %or.cond1.i.i.i.i.i.i.i.i.i, i32 0, i32 %.lobit.i.i.i.i.i.i.i.i.i
  %i.jx = shl nuw nsw i32 %.sroa.0.3.i.i.i.i.i.i.i.i.i, 16
  %i.jy = or disjoint i32 %.sroa.034.0.i.i.i.i.i.i.i.i.i, %i.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !111052
  br label %"_ZN12rust_decimal16arithmetic_impls86_$LT$impl$u20$core..ops..arith..Div$u20$for$u20$$RF$rust_decimal..decimal..Decimal$GT$3div17h133e03a251003460E.exit.i.i.i.i.i.i.i"

bb.ci:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !111052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !111052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !111054
  store ptr @234, ptr %i.i, align 8, !noalias !111054
  %i.jz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.jz, align 8, !noalias !111054
  %i.ka = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.ka, align 8, !noalias !111054
  %i.kb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.kb, align 8, !noalias !111054
  %i.kc = getelementptr inbounds nuw i8, ptr %i.i, i64 24
end_hunk_0
begin_hunk_1_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h73a4c340827f0e4eE":bb.a
  %.sroa.697.0.in.ph.i.i.i.i.i.i.i = phi i64 [ %i.mj, %bb.cy ], [ %i.mg, %bb.cx ] ; 2 uses
  %.sroa.697.0153.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.697.0.in.ph.i.i.i.i.i.i.i to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !111058
  store i32 %i.ko, ptr %i.k, align 4, !noalias !111058
  %.sroa.594.0..sroa_idx95154.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store i32 %i.mf, ptr %.sroa.594.0..sroa_idx95154.i.i.i.i.i.i.i, align 4, !noalias !111058
  %.sroa.697.0..sroa_idx98155.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i32 %.sroa.697.0153.i.i.i.i.i.i.i, ptr %.sroa.697.0..sroa_idx98155.i.i.i.i.i.i.i, align 4, !noalias !111058
  %.sroa.9100.0..sroa_idx101156.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %.sroa.9100.0..sroa_idx101156.i.i.i.i.i.i.i, align 4, !noalias !111058
  %.sroa.10103.0..sroa_idx104157.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.10103.0..sroa_idx104157.i.i.i.i.i.i.i, align 4, !noalias !111058
  %.not3.i17.i.i.i.i.i.i.i = icmp eq i64 %.sroa.697.0.in.ph.i.i.i.i.i.i.i, 0
  %.not4.i18.i.i.i.i.i.i.i = icmp ne i32 %i.mf, 0
  %..i19.i.i.i.i.i.i.i = zext i1 %.not4.i18.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i14.i.i.i.i.i.i.i = select i1 %.not3.i17.i.i.i.i.i.i.i, i64 %..i19.i.i.i.i.i.i.i, i64 2
  %i.ml = icmp samesign ugt i32 %i.kk, 28
  br i1 %i.ml, label %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit20.thread.i.i.i.i.i.i.i, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !111058
  store i32 %i.ko, ptr %i.k, align 4, !noalias !111058
  %.sroa.594.0..sroa_idx95.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store i32 %i.mf, ptr %.sroa.594.0..sroa_idx95.i.i.i.i.i.i.i, align 4, !noalias !111058
  %.sroa.697.0..sroa_idx98.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 %i.mj, ptr %.sroa.697.0..sroa_idx98.i.i.i.i.i.i.i, align 4, !noalias !111058
  %.sroa.10103.0..sroa_idx104.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.10103.0..sroa_idx104.i.i.i.i.i.i.i, align 4, !noalias !111058
  br label %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit20.thread.i.i.i.i.i.i.i

_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit20.thread.i.i.i.i.i.i.i: ; preds = %bb.cz, %.thread.i.i.i.i.i.i.i
  %.sroa.697.0..sroa_idx98162.i.i.i.i.i.i.i = phi ptr [ %.sroa.697.0..sroa_idx98155.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %.sroa.697.0..sroa_idx98.i.i.i.i.i.i.i, %bb.cz ]
  %.sroa.594.0..sroa_idx95160.i.i.i.i.i.i.i = phi ptr [ %.sroa.594.0..sroa_idx95154.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %.sroa.594.0..sroa_idx95.i.i.i.i.i.i.i, %bb.cz ]
  %.sroa.0.0.i14121.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i14.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ 3, %bb.cz ]
  %i.mm = call { i32, i32 } @_ZN12rust_decimal3ops6common5Buf247rescale17h791a5a9326c14080E(ptr noalias noundef nonnull align 4 dereferenceable(24) %i.k, i64 noundef %.sroa.0.0.i14121.i.i.i.i.i.i.i, i32 noundef range(i32 0, 511) %i.kk), !noalias !111063 ; 2 uses
  %i.mn = extractvalue { i32, i32 } %i.mm, 0
  %i.mo = trunc i32 %i.mn to i1
  br i1 %i.mo, label %bb.db, label %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit93.i.i.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.db, %.thread.i.i.i.i.i.i.i
  %i.mp = phi i32 [ %.pre140.i.i.i.i.i.i.i, %bb.db ], [ %.sroa.697.0153.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ]
  %i.mq = phi i32 [ %.pre139.i.i.i.i.i.i.i, %bb.db ], [ %i.mf, %.thread.i.i.i.i.i.i.i ]
  %i.mr = phi i32 [ %.pre138.i.i.i.i.i.i.i, %bb.db ], [ %i.ko, %.thread.i.i.i.i.i.i.i ]
  %.sroa.0.0.i88.i.i.i.i.i.i.i.i = phi i32 [ %i.mv, %bb.db ], [ %i.kk, %.thread.i.i.i.i.i.i.i ]
  %i.ms = shl i32 %.sroa.0.0.i88.i.i.i.i.i.i.i.i, 16
  %i.mt = and i32 %.sroa.0360.0.copyload.i.i.i.i.i.i, -2147483648
  %i.mu = or i32 %i.ms, %i.mt
  br label %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit93.i.i.i.i.i.i.i.i

bb.db:                                            ; preds = %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit20.thread.i.i.i.i.i.i.i
  %i.mv = extractvalue { i32, i32 } %i.mm, 1
  %.pre138.i.i.i.i.i.i.i = load i32, ptr %i.k, align 4, !alias.scope !111064, !noalias !111065
  %.pre139.i.i.i.i.i.i.i = load i32, ptr %.sroa.594.0..sroa_idx95160.i.i.i.i.i.i.i, align 4, !alias.scope !111064, !noalias !111065
  %.pre140.i.i.i.i.i.i.i = load i32, ptr %.sroa.697.0..sroa_idx98162.i.i.i.i.i.i.i, align 4, !alias.scope !111064, !noalias !111065
  br label %bb.da

_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit93.i.i.i.i.i.i.i.i: ; preds = %bb.da, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit20.thread.i.i.i.i.i.i.i
  %.sroa.24.1.i.i.i.i.i.i.i = phi i32 [ %i.mq, %bb.da ], [ undef, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit20.thread.i.i.i.i.i.i.i ]
  %.sroa.20.1.i.i.i.i.i.i.i = phi i32 [ %i.mr, %bb.da ], [ undef, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit20.thread.i.i.i.i.i.i.i ]
  %.sroa.1661.1.i.i.i.i.i.i.i = phi i32 [ %i.mp, %bb.da ], [ undef, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit20.thread.i.i.i.i.i.i.i ]
  %.sroa.9.1.i.i.i.i.i.i.i = phi i32 [ %i.mu, %bb.da ], [ undef, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit20.thread.i.i.i.i.i.i.i ]
  %storemerge.i92.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.da ], [ 1, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit20.thread.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !111058
  br label %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.i.i.i.i.i.i.i

bb.dc:                                            ; preds = %bb.cn
  %i.mw = mul nuw nsw i64 %.sroa.0.0.i7.off35.i.i.i.i.i.i.i, %i.km
  %i.mx = lshr i64 %i.kn, 32
  %i.my = zext i32 %.sroa.10368.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %i.mz = mul nuw i64 %.sroa.0.0.i7.off3.i.i.i.i.i.i.i, %i.my
  %i.na = add nuw i64 %i.mx, %i.mz
  %i.nb = add nuw i64 %i.na, %i.mw                ; 2 uses
  %i.nc = trunc i64 %i.nb to i32                  ; 3 uses
  %i.nd = lshr i64 %i.nb, 32
  %i.ne = mul nuw nsw i64 %.sroa.0.0.i7.off35.i.i.i.i.i.i.i, %i.my
  %i.nf = add nuw nsw i64 %i.nd, %i.ne            ; 3 uses
  %.not.i.i284.i.i.i.i.i.i = icmp eq i32 %.sroa.6362.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i284.i.i.i.i.i.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ng = lshr i64 %i.nf, 32
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.nh = zext i32 %.sroa.6362.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %i.ni = mul nuw i64 %.sroa.0.0.i7.off3.i.i.i.i.i.i.i, %i.nh
  %i.nj = add nuw i64 %i.nf, %i.ni                ; 2 uses
  %i.nk = lshr i64 %i.nj, 32
  %i.nl = mul nuw nsw i64 %.sroa.0.0.i7.off35.i.i.i.i.i.i.i, %i.nh
  %i.nm = add nuw nsw i64 %i.nk, %i.nl            ; 2 uses
  %i.nn = lshr i64 %i.nm, 32
  %i.no = trunc nuw nsw i64 %i.nn to i32
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.sroa.10.0.i.i.i.i.i.i.i.i = phi i32 [ %i.no, %bb.de ], [ 0, %bb.dd ] ; 2 uses
  %.sroa.8.0.in.i.i.i.i.i.i.i.i = phi i64 [ %i.nm, %bb.de ], [ %i.ng, %bb.dd ]
  %.sroa.625.0.in.i.i.i.i.i.i.i.i = phi i64 [ %i.nj, %bb.de ], [ %i.nf, %bb.dd ]
  %.sroa.625.0.i.i.i.i.i.i.i.i = trunc i64 %.sroa.625.0.in.i.i.i.i.i.i.i.i to i32 ; 3 uses
  %.sroa.8.0.i.i.i.i.i.i.i.i = trunc i64 %.sroa.8.0.in.i.i.i.i.i.i.i.i to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !111058
  store i32 %i.ko, ptr %i.j, align 4, !noalias !111058
  %.sroa.522.0..sroa_idx23.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store i32 %i.nc, ptr %.sroa.522.0..sroa_idx23.i.i.i.i.i.i.i.i, align 4, !noalias !111058
  %.sroa.625.0..sroa_idx26.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %.sroa.625.0.i.i.i.i.i.i.i.i, ptr %.sroa.625.0..sroa_idx26.i.i.i.i.i.i.i.i, align 4, !noalias !111058
  %.sroa.8.0..sroa_idx28.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %.sroa.8.0.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx28.i.i.i.i.i.i.i.i, align 4, !noalias !111058
  %.sroa.10.0..sroa_idx30.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %.sroa.10.0.i.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx30.i.i.i.i.i.i.i.i, align 4, !noalias !111058
  %.sroa.11.0..sroa_idx32.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 0, ptr %.sroa.11.0..sroa_idx32.i.i.i.i.i.i.i.i, align 4, !noalias !111058
  %.not1.i23.i.i.i.i.i.i.i = icmp eq i32 %.sroa.10.0.i.i.i.i.i.i.i.i, 0
  br i1 %.not1.i23.i.i.i.i.i.i.i, label %bb.dg, label %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.thread.i.i.i.i.i.i.i

bb.dg:                                            ; preds = %bb.df
  %.not2.i24.i.i.i.i.i.i.i = icmp eq i32 %.sroa.8.0.i.i.i.i.i.i.i.i, 0
  br i1 %.not2.i24.i.i.i.i.i.i.i, label %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.i.i.i.i.i.i.i, label %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.thread.i.i.i.i.i.i.i

_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.i.i.i.i.i.i.i: ; preds = %bb.dg
  %.not3.i25.i.i.i.i.i.i.i = icmp eq i32 %.sroa.625.0.i.i.i.i.i.i.i.i, 0
  %.not4.i26.i.i.i.i.i.i.i = icmp ne i32 %i.nc, 0
  %..i27.i.i.i.i.i.i.i = zext i1 %.not4.i26.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i22.i.i.i.i.i.i.i = select i1 %.not3.i25.i.i.i.i.i.i.i, i64 %..i27.i.i.i.i.i.i.i, i64 2
  %i.np = icmp samesign ugt i32 %i.kk, 28
  br i1 %i.np, label %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.thread.i.i.i.i.i.i.i, label %bb.dh

_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.thread.i.i.i.i.i.i.i: ; preds = %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.i.i.i.i.i.i.i, %bb.dg, %bb.df
  %.sroa.0.0.i22124.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i22.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.i.i.i.i.i.i.i ], [ 3, %bb.dg ], [ 4, %bb.df ]
  %i.nq = call { i32, i32 } @_ZN12rust_decimal3ops6common5Buf247rescale17h791a5a9326c14080E(ptr noalias noundef nonnull align 4 dereferenceable(24) %i.j, i64 noundef %.sroa.0.0.i22124.i.i.i.i.i.i.i, i32 noundef range(i32 0, 511) %i.kk), !noalias !111066 ; 2 uses
  %i.nr = extractvalue { i32, i32 } %i.nq, 0
  %i.ns = trunc i32 %i.nr to i1
  br i1 %i.ns, label %bb.di, label %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit.i.i.i.i.i.i.i.i

bb.dh:                                            ; preds = %bb.di, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.i.i.i.i.i.i.i
  %i.nt = phi i32 [ %.pre137.i.i.i.i.i.i.i, %bb.di ], [ %.sroa.625.0.i.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.i.i.i.i.i.i.i ]
  %i.nu = phi i32 [ %.pre136.i.i.i.i.i.i.i, %bb.di ], [ %i.nc, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.i.i.i.i.i.i.i ]
  %i.nv = phi i32 [ %.pre.i.i.i.i.i.i.i, %bb.di ], [ %i.ko, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.nz, %bb.di ], [ %i.kk, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.i.i.i.i.i.i.i ]
  %i.nw = shl i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 16
  %i.nx = and i32 %.sroa.0360.0.copyload.i.i.i.i.i.i, -2147483648
  %i.ny = or i32 %i.nw, %i.nx
  br label %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit.i.i.i.i.i.i.i.i

bb.di:                                            ; preds = %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.thread.i.i.i.i.i.i.i
  %i.nz = extractvalue { i32, i32 } %i.nq, 1
  %.pre.i.i.i.i.i.i.i = load i32, ptr %i.j, align 4, !alias.scope !111067, !noalias !111068
  %.pre136.i.i.i.i.i.i.i = load i32, ptr %.sroa.522.0..sroa_idx23.i.i.i.i.i.i.i.i, align 4, !alias.scope !111067, !noalias !111068
  %.pre137.i.i.i.i.i.i.i = load i32, ptr %.sroa.625.0..sroa_idx26.i.i.i.i.i.i.i.i, align 4, !alias.scope !111067, !noalias !111068
  br label %bb.dh

_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dh, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.thread.i.i.i.i.i.i.i
  %.sroa.24.0.i.i.i.i.i.i.i = phi i32 [ %i.nu, %bb.dh ], [ undef, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.thread.i.i.i.i.i.i.i ]
  %.sroa.20.0.i.i.i.i.i.i.i = phi i32 [ %i.nv, %bb.dh ], [ undef, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.thread.i.i.i.i.i.i.i ]
  %.sroa.1661.0.i.i.i.i.i.i.i = phi i32 [ %i.nt, %bb.dh ], [ undef, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.thread.i.i.i.i.i.i.i ]
  %.sroa.9.0.i.i.i.i.i.i.i = phi i32 [ %i.ny, %bb.dh ], [ undef, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.thread.i.i.i.i.i.i.i ]
  %storemerge.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.dh ], [ 1, %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit28.thread.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !111058
  br label %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.i.i.i.i.i.i.i

_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.i.i.i.i.i.i.i: ; preds = %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit.i.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit93.i.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit100.i.i.i.i.i.i.i.i
  %.sroa.24.4.i.i.i.i.i.i.i = phi i32 [ %.sroa.24.0.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.24.1.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit93.i.i.i.i.i.i.i.i ], [ %.sroa.24.2.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit100.i.i.i.i.i.i.i.i ]
  %.sroa.20.4.i.i.i.i.i.i.i = phi i32 [ %.sroa.20.0.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.20.1.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit93.i.i.i.i.i.i.i.i ], [ %.sroa.20.2.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit100.i.i.i.i.i.i.i.i ]
  %.sroa.1661.4.i.i.i.i.i.i.i = phi i32 [ %.sroa.1661.0.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.1661.1.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit93.i.i.i.i.i.i.i.i ], [ %.sroa.1661.2.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit100.i.i.i.i.i.i.i.i ]
  %.sroa.9.4.i.i.i.i.i.i.i = phi i32 [ %.sroa.9.0.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.9.1.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit93.i.i.i.i.i.i.i.i ], [ %.sroa.9.2.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit100.i.i.i.i.i.i.i.i ]
  %.sroa.058.0.i.i.i.i.i.i.i = phi i32 [ %storemerge.i.i.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit.i.i.i.i.i.i.i.i ], [ %storemerge.i92.i.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit93.i.i.i.i.i.i.i.i ], [ %storemerge.i99.i.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul10finish_mul17h1f493b7597abaad2E.exit100.i.i.i.i.i.i.i.i ]
  %i.oa = icmp eq i32 %.sroa.058.0.i.i.i.i.i.i.i, 0
  br i1 %i.oa, label %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i

_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.i.i.i.i.i.i.i, %bb.cs, %bb.cr, %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i
  %.sroa.9.4133.i.i.i.i.i.i.i = phi i32 [ %.sroa.9.4.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.i.i.i.i.i.i.i ], [ 0, %bb.cr ], [ %i.lq, %bb.cs ], [ 0, %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i ]
  %.sroa.1661.4132.i.i.i.i.i.i.i = phi i32 [ %.sroa.1661.4.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.i.i.i.i.i.i.i ], [ 0, %bb.cr ], [ 0, %bb.cs ], [ 0, %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i ]
  %.sroa.20.4131.i.i.i.i.i.i.i = phi i32 [ %.sroa.20.4.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.i.i.i.i.i.i.i ], [ 0, %bb.cr ], [ %i.lk, %bb.cs ], [ 0, %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i ]
  %.sroa.24.4130.i.i.i.i.i.i.i = phi i32 [ %.sroa.24.4.i.i.i.i.i.i.i, %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.i.i.i.i.i.i.i ], [ 0, %bb.cr ], [ %i.lm, %bb.cs ], [ 0, %_ZN9byte_unit4unit4Unit12as_bits_u12817h6601fabf9f72303eE.exit.i.i.i.i.i.i.i ]
  store i32 %.sroa.9.4133.i.i.i.i.i.i.i, ptr %i.o, align 4, !noalias !111050
  %.sroa.4.0..sroa_idx.i285.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %.sroa.1661.4132.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i285.i.i.i.i.i.i, align 4, !noalias !111050
  %.sroa.576.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %.sroa.20.4131.i.i.i.i.i.i.i, ptr %.sroa.576.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !111050
  %.sroa.677.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %.sroa.24.4130.i.i.i.i.i.i.i, ptr %.sroa.677.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !111050
  br label %bb.ck

"_ZN9byte_unit4byte7decimal39_$LT$impl$u20$byte_unit..byte..Byte$GT$22from_decimal_with_unit17h40034aba9ccb11c4E.exit.i.i.i.i.i.i": ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !111069
  call void @_ZN12rust_decimal7decimal7Decimal4ceil17h0de2e8be52f0bddeE(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.m), !noalias !111057
  %i.ob = call { i64, i64 } @"_ZN80_$LT$rust_decimal..decimal..Decimal$u20$as$u20$num_traits..cast..ToPrimitive$GT$6to_u6417h3f45ba8693bae9d2E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d), !noalias !111057 ; 2 uses
  %i.oc = extractvalue { i64, i64 } %i.ob, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !111069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !111050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !111050
  %i.od = trunc nuw i64 %i.oc to i1
  br i1 %i.od, label %bb.ew, label %bb.dj

.sink.split.i.i.i.i.i.i:                          ; preds = %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.i.i.i.i.i.i.i, %"_ZN9byte_unit4byte7decimal39_$LT$impl$u20$byte_unit..byte..Byte$GT$22from_decimal_with_unit17h40034aba9ccb11c4E.exit.thread524.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !111050
  br label %bb.dj

bb.dj:                                            ; preds = %.sink.split.i.i.i.i.i.i, %"_ZN9byte_unit4byte7decimal39_$LT$impl$u20$byte_unit..byte..Byte$GT$22from_decimal_with_unit17h40034aba9ccb11c4E.exit.i.i.i.i.i.i"
  %.sroa.22.8.copyload.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !111049 ; 3 uses
  %.sroa.22.sroa.0.0.extract.trunc5.i.i.i.i.i = trunc i64 %.sroa.22.8.copyload.i.i.i.i.i to i32
  %.sroa.22.sroa.0.sroa.0.0.extract.trunc18.i.i.i.i.i = trunc i64 %.sroa.22.8.copyload.i.i.i.i.i to i8
  %.sroa.22.sroa.0.sroa.10.0.extract.shift29.i.i.i.i.i = lshr i32 %.sroa.22.sroa.0.0.extract.trunc5.i.i.i.i.i, 8
  %.sroa.22.sroa.11.0.extract.shift10.i.i.i.i.i = lshr i64 %.sroa.22.8.copyload.i.i.i.i.i, 32
  %.sroa.30.8.copyload.i.i.i.i.i = load i64, ptr %i.fx, align 8, !noalias !111049
  br label %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hc688b59a5d4ba6adE.exit.thread.i.i.i.i"

bb.dk:                                            ; preds = %_ZN12rust_decimal3ops6common5Buf2410upper_word17h900fc3546bbc9e17E.exit270.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !111044
  br label %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hc688b59a5d4ba6adE.exit.thread.i.i.i.i"

_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread.i.i.i.i.i.i: ; preds = %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread498.i.i.i.i.i.i, %bb.am, %bb.al, %bb.ai
  %.sroa.651.sroa.0.0540.ph.i.i.i.i.i.i = phi i32 [ %i.ih, %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread498.i.i.i.i.i.i ], [ %i.hc, %bb.am ], [ 0, %bb.ai ], [ 0, %bb.al ] ; 12 uses
  %.sroa.651.sroa.5.0538.ph.i.i.i.i.i.i = phi i32 [ %i.ic, %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread498.i.i.i.i.i.i ], [ 0, %bb.am ], [ 0, %bb.ai ], [ 0, %bb.al ] ; 10 uses
  %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i = phi i32 [ %i.ie, %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread498.i.i.i.i.i.i ], [ %i.gw, %bb.am ], [ 0, %bb.ai ], [ 0, %bb.al ] ; 17 uses
  %.sroa.651.sroa.7.0534.ph.i.i.i.i.i.i = phi i32 [ %i.id, %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread498.i.i.i.i.i.i ], [ %i.gy, %bb.am ], [ 0, %bb.ai ], [ 0, %bb.al ] ; 4 uses
  %i.oe = zext nneg i8 %i.gh to i32               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !111038
  call void @llvm.experimental.noalias.scope.decl(metadata !111070)
  call void @llvm.experimental.noalias.scope.decl(metadata !111071)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !111038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !111038
  %i.of = icmp slt i32 %.sroa.651.sroa.0.0540.ph.i.i.i.i.i.i, 0 ; 6 uses
  %i.og = and i32 %.sroa.651.sroa.0.0540.ph.i.i.i.i.i.i, 16711680 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.og, 0      ; 2 uses
  %i.oh = or i32 %.sroa.651.sroa.7.0534.ph.i.i.i.i.i.i, %.sroa.651.sroa.5.0538.ph.i.i.i.i.i.i ; 2 uses
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %bb.dl, label %.critedge.i.i.i.i.i.i.i

bb.dl:                                            ; preds = %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread.i.i.i.i.i.i
  %i.oj = icmp eq i32 %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i, 0
  br i1 %i.oj, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  store i32 0, ptr %i.gb, align 4, !alias.scope !111070, !noalias !111072
  store i32 0, ptr %.sroa.4.0..sroa_idx.i220.i.i.i.i.i.i, align 4, !noalias !111072
  store i32 %i.oe, ptr %.sroa.57.0..sroa_idx.i221.i.i.i.i.i.i, align 4, !noalias !111072
  store i32 0, ptr %.sroa.6.0..sroa_idx.i222.i.i.i.i.i.i, align 4, !noalias !111072
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.ok = icmp eq i8 %i.gh, 0
  br i1 %i.ok, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i32 %.sroa.651.sroa.0.0540.ph.i.i.i.i.i.i, ptr %i.gb, align 4, !alias.scope !111073, !noalias !111074
  store i32 %.sroa.651.sroa.5.0538.ph.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i220.i.i.i.i.i.i, align 4, !alias.scope !111073, !noalias !111074
  store i32 %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i221.i.i.i.i.i.i, align 4, !alias.scope !111073, !noalias !111074
  store i32 %.sroa.651.sroa.7.0534.ph.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i222.i.i.i.i.i.i, align 4, !alias.scope !111073, !noalias !111074
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.dn
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dq, label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.of, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ol = add i32 %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i, %i.oe ; 2 uses
  %i.om = icmp ult i32 %i.ol, %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i
  %..i.i.i.i.i.i.i = zext i1 %i.om to i32
  store i32 %.sroa.651.sroa.0.0540.ph.i.i.i.i.i.i, ptr %i.gb, align 4, !alias.scope !111075, !noalias !111072
  store i32 0, ptr %.sroa.4.0..sroa_idx.i220.i.i.i.i.i.i, align 4, !alias.scope !111075, !noalias !111072
  store i32 %i.ol, ptr %.sroa.57.0..sroa_idx.i221.i.i.i.i.i.i, align 4, !alias.scope !111075, !noalias !111072
  store i32 %..i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i222.i.i.i.i.i.i, align 4, !alias.scope !111075, !noalias !111072
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i

bb.ds:                                            ; preds = %bb.dq
  %i.on = icmp ult i32 %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i, %i.oe
  br i1 %i.on, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.oo = sub nuw i32 %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i, %i.oe
  %i.op = icmp eq i32 %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i, %i.oe
  %.sroa.01.0.i.i.i.i.i.i.i = select i1 %i.op, i32 0, i32 %.sroa.651.sroa.0.0540.ph.i.i.i.i.i.i
  store i32 %.sroa.01.0.i.i.i.i.i.i.i, ptr %i.gb, align 4, !alias.scope !111075, !noalias !111072
  store i32 0, ptr %.sroa.4.0..sroa_idx.i220.i.i.i.i.i.i, align 4, !alias.scope !111075, !noalias !111072
  store i32 %i.oo, ptr %.sroa.57.0..sroa_idx.i221.i.i.i.i.i.i, align 4, !alias.scope !111075, !noalias !111072
  store i32 0, ptr %.sroa.6.0..sroa_idx.i222.i.i.i.i.i.i, align 4, !alias.scope !111075, !noalias !111072
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i

bb.du:                                            ; preds = %bb.ds
  %i.oq = sub nuw nsw i32 %i.oe, %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i
  %i.or = and i32 %.sroa.651.sroa.0.0540.ph.i.i.i.i.i.i, 2130771967
  store i32 %i.or, ptr %i.gb, align 4, !alias.scope !111075, !noalias !111072
  store i32 0, ptr %.sroa.4.0..sroa_idx.i220.i.i.i.i.i.i, align 4, !alias.scope !111075, !noalias !111072
  store i32 %i.oq, ptr %.sroa.57.0..sroa_idx.i221.i.i.i.i.i.i, align 4, !alias.scope !111075, !noalias !111072
  store i32 0, ptr %.sroa.6.0..sroa_idx.i222.i.i.i.i.i.i, align 4, !alias.scope !111075, !noalias !111072
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dp
  %i.os = sub nsw i32 0, %i.og
  %i.ot = ashr exact i32 %i.os, 16                ; 2 uses
  %i.ou = icmp samesign ult i32 %i.ot, -9
  br i1 %i.ou, label %.critedge.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ov = sub nsw i32 0, %i.ot
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr @237, i64 %i.ow
  %i.oy = load i32, ptr %i.ox, align 4, !noalias !111076, !noundef !21
  %i.oz = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.oe, i32 %i.oy) ; 2 uses
  %i.pa = extractvalue { i32, i1 } %i.oz, 0       ; 5 uses
  %i.pb = extractvalue { i32, i1 } %i.oz, 1
  br i1 %i.pb, label %.critedge.i.i.i.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  br i1 %i.of, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pc = add i32 %i.pa, %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i ; 2 uses
  %i.pd = icmp ult i32 %i.pc, %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i
  %..i219.i.i.i.i.i.i = zext i1 %i.pd to i32
  store i32 %.sroa.651.sroa.0.0540.ph.i.i.i.i.i.i, ptr %i.gb, align 4, !alias.scope !111077, !noalias !111072
  store i32 0, ptr %.sroa.4.0..sroa_idx.i220.i.i.i.i.i.i, align 4, !alias.scope !111077, !noalias !111072
  store i32 %i.pc, ptr %.sroa.57.0..sroa_idx.i221.i.i.i.i.i.i, align 4, !alias.scope !111077, !noalias !111072
  store i32 %..i219.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i222.i.i.i.i.i.i, align 4, !alias.scope !111077, !noalias !111072
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i

bb.dz:                                            ; preds = %bb.dx
  %i.pe = icmp ult i32 %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i, %i.pa
  br i1 %i.pe, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.pf = sub nuw i32 %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i, %i.pa
  %i.pg = icmp eq i32 %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i, %i.pa
  %.sroa.01.0.i223.i.i.i.i.i.i = select i1 %i.pg, i32 %i.og, i32 %.sroa.651.sroa.0.0540.ph.i.i.i.i.i.i
  store i32 %.sroa.01.0.i223.i.i.i.i.i.i, ptr %i.gb, align 4, !alias.scope !111077, !noalias !111072
  store i32 0, ptr %.sroa.4.0..sroa_idx.i220.i.i.i.i.i.i, align 4, !alias.scope !111077, !noalias !111072
  store i32 %i.pf, ptr %.sroa.57.0..sroa_idx.i221.i.i.i.i.i.i, align 4, !alias.scope !111077, !noalias !111072
  store i32 0, ptr %.sroa.6.0..sroa_idx.i222.i.i.i.i.i.i, align 4, !alias.scope !111077, !noalias !111072
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i

bb.eb:                                            ; preds = %bb.dz
  %i.ph = sub nuw i32 %i.pa, %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i
  %i.pi = and i32 %.sroa.651.sroa.0.0540.ph.i.i.i.i.i.i, 2147483647
  store i32 %i.pi, ptr %i.gb, align 4, !alias.scope !111077, !noalias !111072
  store i32 0, ptr %.sroa.4.0..sroa_idx.i220.i.i.i.i.i.i, align 4, !alias.scope !111077, !noalias !111072
  store i32 %i.ph, ptr %.sroa.57.0..sroa_idx.i221.i.i.i.i.i.i, align 4, !alias.scope !111077, !noalias !111072
  store i32 0, ptr %.sroa.6.0..sroa_idx.i222.i.i.i.i.i.i, align 4, !alias.scope !111077, !noalias !111072
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %bb.dw, %bb.dv, %_ZN12rust_decimal3ops3mul8mul_impl17h083449b747a98fefE.exit.thread.i.i.i.i.i.i
  %i.pj = or i32 %i.oh, %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i
  %i.pk = icmp eq i32 %i.pj, 0
  br i1 %i.pk, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %.critedge.i.i.i.i.i.i.i
  store i32 0, ptr %i.gb, align 4, !alias.scope !111070, !noalias !111072
  store i32 0, ptr %.sroa.4.0..sroa_idx.i220.i.i.i.i.i.i, align 4, !noalias !111072
  store i32 %i.oe, ptr %.sroa.57.0..sroa_idx.i221.i.i.i.i.i.i, align 4, !noalias !111072
  store i32 0, ptr %.sroa.6.0..sroa_idx.i222.i.i.i.i.i.i, align 4, !noalias !111072
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i

bb.ed:                                            ; preds = %.critedge.i.i.i.i.i.i.i
  %i.pl = icmp eq i8 %i.gh, 0
  br i1 %i.pl, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store i32 %.sroa.651.sroa.0.0540.ph.i.i.i.i.i.i, ptr %i.gb, align 4, !alias.scope !111073, !noalias !111074
  store i32 %.sroa.651.sroa.5.0538.ph.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i220.i.i.i.i.i.i, align 4, !alias.scope !111073, !noalias !111074
  store i32 %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i221.i.i.i.i.i.i, align 4, !alias.scope !111073, !noalias !111074
  store i32 %.sroa.651.sroa.7.0534.ph.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i222.i.i.i.i.i.i, align 4, !alias.scope !111073, !noalias !111074
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i

bb.ef:                                            ; preds = %bb.ed
  %i.pm = lshr i32 %.sroa.651.sroa.0.0540.ph.i.i.i.i.i.i, 16
  %i.pn = and i32 %i.pm, 255                      ; 7 uses
  %i.po = zext i32 %.sroa.651.sroa.7.0534.ph.i.i.i.i.i.i to i64
  %i.pp = shl nuw i64 %i.po, 32
  %i.pq = zext i32 %.sroa.651.sroa.6.0536.ph.i.i.i.i.i.i to i64
  %i.pr = or disjoint i64 %i.pp, %i.pq            ; 5 uses
  %.lobit.i.i.i.i.i.i.i = lshr i32 %.sroa.651.sroa.0.0540.ph.i.i.i.i.i.i, 31
  %i.ps = trunc nuw nsw i32 %.lobit.i.i.i.i.i.i.i to i8
  store i8 %i.ps, ptr %i.gc, align 8, !noalias !111076
  store i32 %i.pn, ptr %i.gd, align 8, !noalias !111076
  store i32 %.sroa.651.sroa.5.0538.ph.i.i.i.i.i.i, ptr %i.ge, align 4, !noalias !111076
  store i64 %i.pr, ptr %i.r, align 8, !noalias !111076
  %i.pt = zext nneg i8 %i.gh to i64               ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gf, i8 0, i64 9, i1 false), !noalias !111038
  store i64 %i.pt, ptr %i.q, align 8, !noalias !111076
  br i1 %.not.i.i.i.i.i.i.i, label %bb.eg, label %bb.eq

bb.eg:                                            ; preds = %bb.ef
  br i1 %i.of, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.pu = add i64 %i.pr, %i.pt                    ; 6 uses
  %i.pv = icmp ult i64 %i.pu, %i.pr
  br i1 %i.pv, label %bb.ej, label %_ZN12rust_decimal3ops3add12reduce_scale17h38e79fa23ffa2597E.exit304.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.pw = sub i64 %i.pr, %i.pt                    ; 3 uses
  %i.px = icmp ult i64 %i.pr, %i.pt
  br i1 %i.px, label %bb.en, label %bb.eo

bb.ej:                                            ; preds = %bb.eh
  %i.py = add nuw i32 %.sroa.651.sroa.5.0538.ph.i.i.i.i.i.i, 1
  %.not.i.i.not.i.i.i.i.i.i = icmp eq i32 %.sroa.651.sroa.5.0538.ph.i.i.i.i.i.i, -1
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %bb.ek, label %_ZN12rust_decimal3ops3add12reduce_scale17h38e79fa23ffa2597E.exit304.i.i.i.i.i.i

_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread557.i.i.i.i.i.i: ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !111038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !111038
  br label %.loopexit.i.i.i.i.i.i

_ZN12rust_decimal3ops3add12reduce_scale17h38e79fa23ffa2597E.exit304.i.i.i.i.i.i: ; preds = %bb.em, %bb.el, %bb.ej, %bb.eh
  %.sroa.0426.0.i.i.i.i.i.i = phi i64 [ %i.pu, %bb.ej ], [ %i.pu, %bb.eh ], [ %i.ql, %bb.el ], [ %spec.select.i.i.i.i.i.i, %bb.em ]
  %.sroa.9429.0.i.i.i.i.i.i = phi i32 [ %i.pn, %bb.ej ], [ %i.pn, %bb.eh ], [ -1, %bb.el ], [ -1, %bb.em ]
  %.sroa.17434.0.i.i.i.i.i.i = phi i32 [ %i.py, %bb.ej ], [ %.sroa.651.sroa.5.0538.ph.i.i.i.i.i.i, %bb.eh ], [ 429496729, %bb.el ], [ 429496729, %bb.em ]
  %i.pz = shl nuw nsw i32 %.sroa.9429.0.i.i.i.i.i.i, 16
  store i32 %i.pz, ptr %i.gb, align 4, !noalias !111078
  store i32 %.sroa.17434.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i220.i.i.i.i.i.i, align 4, !noalias !111078
  store i64 %.sroa.0426.0.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i221.i.i.i.i.i.i, align 4, !noalias !111078
  store i32 0, ptr %i.s, align 4, !alias.scope !111079, !noalias !111078
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i

bb.ek:                                            ; preds = %bb.ej
  %i.qa = icmp eq i32 %i.pn, 0
  br i1 %i.qa, label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread557.i.i.i.i.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.qb = call i64 @llvm.fshl.i64(i64 1844674400499007494, i64 %i.pu, i64 32) ; 2 uses
  %i.qc = udiv i64 %i.qb, 10                      ; 2 uses
  %.neg22.i296.i.i.i.i.i.i = mul nuw i64 %i.qc, 4294967286
  %i.qd = add i64 %.neg22.i296.i.i.i.i.i.i, %i.qb
  %i.qe = shl i64 %i.qd, 32
  %i.qf = and i64 %i.pu, 4294967294
  %i.qg = or disjoint i64 %i.qe, %i.qf
  %i.qh = shl nuw i64 %i.qc, 32
  %i.qi = udiv i64 %i.qg, 10                      ; 3 uses
  %i.qj = trunc i64 %i.qi to i32
  %i.qk = and i64 %i.qi, 4294967295
  %i.ql = or disjoint i64 %i.qk, %i.qh            ; 2 uses
  %i.qm = trunc i64 %i.pu to i32
  %.neg23.i297.i.i.i.i.i.i = mul i32 %i.qj, -10
  %i.qn = add i32 %.neg23.i297.i.i.i.i.i.i, %i.qm ; 2 uses
  %i.qo = icmp ugt i32 %i.qn, 4
  br i1 %i.qo, label %bb.em, label %_ZN12rust_decimal3ops3add12reduce_scale17h38e79fa23ffa2597E.exit304.i.i.i.i.i.i

bb.em:                                            ; preds = %bb.el
  %.not.i300.i.i.i.i.i.i = icmp ne i32 %i.qn, 5
  %.not24.i301.i.i.i.i.i.i = trunc i64 %i.qi to i1
  %or.cond.i302.not.i.i.i.i.i.i = or i1 %.not.i300.i.i.i.i.i.i, %.not24.i301.i.i.i.i.i.i
  %i.qp = zext i1 %or.cond.i302.not.i.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i.i = add nuw nsw i64 %i.ql, %i.qp
  br label %_ZN12rust_decimal3ops3add12reduce_scale17h38e79fa23ffa2597E.exit304.i.i.i.i.i.i

bb.en:                                            ; preds = %bb.ei
  %i.qq = add i32 %.sroa.651.sroa.5.0538.ph.i.i.i.i.i.i, -1
  %.not3.i.i.not.i.i.i.i.i.i = icmp eq i32 %.sroa.651.sroa.5.0538.ph.i.i.i.i.i.i, 0
  br i1 %.not3.i.i.not.i.i.i.i.i.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.ep, %bb.en, %bb.ei
  %.sroa.0417.0.i.i.i.i.i.i = phi i64 [ %i.pw, %bb.en ], [ %i.qw, %bb.ep ], [ %i.pw, %bb.ei ] ; 3 uses
  %.sroa.8419.0.i.i.i.i.i.i = phi i32 [ %i.qq, %bb.en ], [ 0, %bb.ep ], [ %.sroa.651.sroa.5.0538.ph.i.i.i.i.i.i, %bb.ei ] ; 2 uses
  %.sroa.14421.0.i.i.i.i.i.i = phi i1 [ true, %bb.en ], [ false, %bb.ep ], [ true, %bb.ei ]
  %i.qr = trunc i64 %.sroa.0417.0.i.i.i.i.i.i to i32
  %i.qs = icmp ugt i64 %.sroa.0417.0.i.i.i.i.i.i, 4294967295
  %i.qt = or i32 %.sroa.8419.0.i.i.i.i.i.i, %i.qr
  %i.qu = icmp ne i32 %i.qt, 0
  %.not572.i.i.i.i.i.i = or i1 %i.qs, %i.qu
  %i.qv = select i1 %.sroa.14421.0.i.i.i.i.i.i, i1 %.not572.i.i.i.i.i.i, i1 false
  %.sroa.01.0.i253.i.i.i.i.i.i = select i1 %i.qv, i32 -2147483648, i32 0
  store i32 %.sroa.01.0.i253.i.i.i.i.i.i, ptr %i.gb, align 4, !noalias !111078
  store i32 %.sroa.8419.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i220.i.i.i.i.i.i, align 4, !noalias !111078
  store i64 %.sroa.0417.0.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i221.i.i.i.i.i.i, align 4, !noalias !111078
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i

bb.ep:                                            ; preds = %bb.en
  %i.qw = sub i64 0, %i.pw
  br label %bb.eo

bb.eq:                                            ; preds = %bb.ef
  %.not.i.i.i.i.i.i = icmp eq i32 %i.pn, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  call void @_ZN12rust_decimal3ops3add13unaligned_add17h5453f7c561988ab5E(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, i1 noundef zeroext %i.of, i32 noundef 0, i32 noundef 0, i1 noundef zeroext %i.of), !noalias !111080
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.i.i.i.i.i.i

bb.es:                                            ; preds = %bb.eq
  call void @_ZN12rust_decimal3ops3add13unaligned_add17h5453f7c561988ab5E(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r, i1 noundef zeroext false, i32 noundef %i.pn, i32 noundef %i.pn, i1 noundef zeroext %i.of), !noalias !111080
  br label %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.i.i.i.i.i.i

_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i: ; preds = %bb.eo, %_ZN12rust_decimal3ops3add12reduce_scale17h38e79fa23ffa2597E.exit304.i.i.i.i.i.i, %bb.ee, %bb.ec, %bb.eb, %bb.ea, %bb.dy, %bb.du, %bb.dt, %bb.dr, %bb.do, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !111038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !111038
  br label %bb.et

_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.i.i.i.i.i.i: ; preds = %bb.es, %bb.er
  %.pr.i.i.i.i.i.i = load i32, ptr %i.s, align 4, !noalias !111038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !111038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !111038
  %.not210.i.i.i.i.i.i = icmp eq i32 %.pr.i.i.i.i.i.i, 0
  br i1 %.not210.i.i.i.i.i.i, label %bb.et, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.i.i.i.i.i.i, %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread557.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !111038
  br label %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hc688b59a5d4ba6adE.exit.thread.i.i.i.i"

bb.et:                                            ; preds = %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.i.i.i.i.i.i, %_ZN12rust_decimal3ops3add16add_sub_internal17h93db5b54d1d6f0f3E.exit.thread.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.gb, i64 16, i1 false), !noalias !111038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !111038
  %i.qx = icmp ne ptr %.sroa.0.2605.i.i.i.i.i.i, %i.fp ; 2 uses
  %.sroa.0.2.idx.i.i.i.i.i.i = zext i1 %i.qx to i64
  %.sroa.0.2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.2605.i.i.i.i.i.i, i64 %.sroa.0.2.idx.i.i.i.i.i.i ; 2 uses
  br i1 %i.qx, label %bb.ag, label %.thread.i.i.i.i.i.i

"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hc688b59a5d4ba6adE.exit.thread.i.i.i.i": ; preds = %.loopexit.i.i.i.i.i.i, %bb.dk, %bb.dj, %bb.bc, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.i.i.i.i.i.i", %bb.ay, %._crit_edge.thread.i.i.i.i.i.i, %bb.ae, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.i.i.i.i.i.i", %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.thread.i.i.i.i.i.i"
  %.sroa.22.sroa.0.sroa.10.sroa.0.0.ph.i.i.i.i.i = phi i32 [ 0, %bb.dk ], [ 0, %.loopexit.i.i.i.i.i.i ], [ 0, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.i.i.i.i.i.i" ], [ %.sroa.22.sroa.0.sroa.10.0.extract.shift19.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i.i ], [ %.sroa.22.sroa.0.sroa.10.0.extract.shift21.i.i.i.i.i, %bb.ay ], [ 0, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.i.i.i.i.i.i" ], [ 0, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.thread.i.i.i.i.i.i" ], [ %2, %bb.bc ], [ %.sroa.22.sroa.0.sroa.10.0.extract.shift29.i.i.i.i.i, %bb.dj ], [ %.sroa.22.sroa.0.sroa.10.0.extract.shift.i.i.i.i.i, %bb.ae ]
  %.sroa.22.sroa.0.sroa.0.0.ph.i.i.i.i.i = phi i8 [ undef, %bb.dk ], [ undef, %.loopexit.i.i.i.i.i.i ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.i.i.i.i.i.i" ], [ %.sroa.22.sroa.0.sroa.0.0.extract.trunc12.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i.i ], [ %.sroa.22.sroa.0.sroa.0.0.extract.trunc13.i.i.i.i.i, %bb.ay ], [ undef, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.i.i.i.i.i.i" ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.thread.i.i.i.i.i.i" ], [ %i.gk, %bb.bc ], [ %.sroa.22.sroa.0.sroa.0.0.extract.trunc18.i.i.i.i.i, %bb.dj ], [ %.sroa.22.sroa.0.sroa.0.0.extract.trunc.i.i.i.i.i, %bb.ae ]
  %.sroa.22.sroa.11.0.ph.i.i.i.i.i = phi i64 [ 0, %bb.dk ], [ 0, %.loopexit.i.i.i.i.i.i ], [ 0, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.i.i.i.i.i.i" ], [ 0, %._crit_edge.thread.i.i.i.i.i.i ], [ 0, %bb.ay ], [ 0, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.i.i.i.i.i.i" ], [ 0, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.thread.i.i.i.i.i.i" ], [ %i.iz, %bb.bc ], [ %.sroa.22.sroa.11.0.extract.shift10.i.i.i.i.i, %bb.dj ], [ 0, %bb.ae ]
  %.sroa.31.0.ph.i.i.i.i.i = phi i32 [ undef, %bb.dk ], [ undef, %.loopexit.i.i.i.i.i.i ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.i.i.i.i.i.i" ], [ undef, %._crit_edge.thread.i.i.i.i.i.i ], [ undef, %bb.ay ], [ undef, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.i.i.i.i.i.i" ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.thread.i.i.i.i.i.i" ], [ %.sroa.6179.0.copyload.i.i.i.i.i.i, %bb.bc ], [ undef, %bb.dj ], [ undef, %bb.ae ]
  %.sroa.301.0.ph.i.i.i.i.i = phi i32 [ undef, %bb.dk ], [ undef, %.loopexit.i.i.i.i.i.i ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.i.i.i.i.i.i" ], [ undef, %._crit_edge.thread.i.i.i.i.i.i ], [ undef, %bb.ay ], [ undef, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.i.i.i.i.i.i" ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.thread.i.i.i.i.i.i" ], [ %i.gj, %bb.bc ], [ undef, %bb.dj ], [ undef, %bb.ae ]
  %.sroa.30.0.ph.i.i.i.i.i = phi i64 [ undef, %bb.dk ], [ undef, %.loopexit.i.i.i.i.i.i ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.i.i.i.i.i.i" ], [ undef, %._crit_edge.thread.i.i.i.i.i.i ], [ undef, %bb.ay ], [ undef, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.i.i.i.i.i.i" ], [ undef, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.thread.i.i.i.i.i.i" ], [ %.sroa.30.9.copyload.i.i.i.i.i, %bb.bc ], [ %.sroa.30.8.copyload.i.i.i.i.i, %bb.dj ], [ undef, %bb.ae ]
  %i.qy = phi <2 x i32> [ <i32 0, i32 3>, %bb.dk ], [ <i32 0, i32 3>, %.loopexit.i.i.i.i.i.i ], [ <i32 0, i32 2>, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.i.i.i.i.i.i" ], [ <i32 0, i32 1>, %._crit_edge.thread.i.i.i.i.i.i ], [ <i32 0, i32 1>, %bb.ay ], [ <i32 0, i32 3>, %"_ZN4core3ptr47drop_in_place$LT$rust_decimal..error..Error$GT$17h1b327bc4e2396823E.exit.i.i.i.i.i.i" ], [ <i32 0, i32 2>, %"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h8ba599445a8af807E.exit.thread.i.i.i.i.i.i" ], [ <i32 1, i32 undef>, %bb.bc ], [ zeroinitializer, %bb.dj ], [ <i32 0, i32 1>, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !111038
  store <2 x i32> %i.qy, ptr %i.w, align 8, !noalias !111081
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.22.sroa.0.sroa.10.0.insert.shift.i.i.i.i.i = shl nuw i32 %.sroa.22.sroa.0.sroa.10.sroa.0.0.ph.i.i.i.i.i, 8
  %.sroa.22.sroa.0.sroa.0.0.insert.ext.i.i.i.i.i = zext i8 %.sroa.22.sroa.0.sroa.0.0.ph.i.i.i.i.i to i32
  %.sroa.22.sroa.0.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i32 %.sroa.22.sroa.0.sroa.10.0.insert.shift.i.i.i.i.i, %.sroa.22.sroa.0.sroa.0.0.insert.ext.i.i.i.i.i
  %.sroa.22.sroa.11.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.22.sroa.11.0.ph.i.i.i.i.i, 32
  %.sroa.22.sroa.0.0.insert.ext.i.i.i.i.i = zext i32 %.sroa.22.sroa.0.sroa.0.0.insert.insert.i.i.i.i.i to i64
  %.sroa.22.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.22.sroa.11.0.insert.shift.i.i.i.i.i, %.sroa.22.sroa.0.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.22.sroa.0.0.insert.insert.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !noalias !111081
  %.sroa.30.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.30.0.ph.i.i.i.i.i, ptr %.sroa.30.0..sroa_idx.i.i.i.i.i, align 8, !noalias !111081
  %.sroa.301.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i32 %.sroa.301.0.ph.i.i.i.i.i, ptr %.sroa.301.0..sroa_idx.i.i.i.i.i, align 8, !noalias !111081
  %.sroa.31.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store i32 %.sroa.31.0.ph.i.i.i.i.i, ptr %.sroa.31.0..sroa_idx.i.i.i.i.i, align 4, !noalias !111081
  %i.qz = call fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17he94e059fd3321c88E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.w), !noalias !111028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !111032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !111027
  br label %bb.eu

bb.eu:                                            ; preds = %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hc688b59a5d4ba6adE.exit.thread.i.i.i.i", %bb.g
  %.sroa.10.0.i.i.i.i.i = phi ptr [ %i.qz, %"_ZN177_$LT$byte_unit..byte..serde_traits..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$byte_unit..byte..Byte$GT$..deserialize..MyVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hc688b59a5d4ba6adE.exit.thread.i.i.i.i" ], [ %i.ax, %bb.g ]
  %i.ra = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h07299f01aaf065d0E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1), !noalias !111028
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.h, %.loopexit.i.i.i.i.i
  %.sroa.7.1.in.i.i.ph.i.i.i = phi ptr [ %i.ra, %bb.eu ], [ %i.aw, %bb.h ], [ %i.aq, %.loopexit.i.i.i.i.i ]
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.1.in.i.i.ph.i.i.i, ptr %i.rb, align 8, !alias.scope !111028, !noalias !111082
  store i64 2, ptr %0, align 8, !alias.scope !111028, !noalias !111082
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h195759e412cb28f8E.exit"

bb.ew:                                            ; preds = %"_ZN9byte_unit4byte7decimal39_$LT$impl$u20$byte_unit..byte..Byte$GT$22from_decimal_with_unit17h40034aba9ccb11c4E.exit.i.i.i.i.i.i"
  %i.rc = extractvalue { i64, i64 } %i.ob, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !111038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !111032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !111027
  store i64 1, ptr %0, align 8, !alias.scope !111028, !noalias !111082
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.rc, ptr %i.rd, align 8, !alias.scope !111028, !noalias !111082
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h195759e412cb28f8E.exit"

bb.ex:                                            ; preds = %bb.b
  %i.re = add i64 %i.af, 1                        ; 4 uses
  store i64 %i.re, ptr %i.z, align 8, !alias.scope !111083, !noalias !111084
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111085)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.re, i64 %i.ab) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111087)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.re, %i.ab
  br i1 %exitcond.not.i9.not.i.i, label %bb.ey, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i"

bb.ey:                                            ; preds = %bb.ex
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.re
  %i.rg = load i8, ptr %i.rf, align 1, !noalias !111088, !noundef !21
  %i.rh = add i64 %i.af, 2                        ; 3 uses
  store i64 %i.rh, ptr %i.z, align 8, !alias.scope !111089, !noalias !111090
  %.not.i.i.i = icmp eq i8 %i.rg, 117
  br i1 %.not.i.i.i, label %bb.ez, label %bb.fd, !prof !57

bb.ez:                                            ; preds = %bb.ey
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111092)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.rh, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i", label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !noalias !111093, !noundef !21
  %i.rk = add i64 %i.af, 3                        ; 3 uses
  store i64 %i.rk, ptr %i.z, align 8, !alias.scope !111094, !noalias !111090
  %.not.i.1.i.i = icmp eq i8 %i.rj, 108
  br i1 %.not.i.1.i.i, label %bb.fb, label %bb.fd, !prof !57

bb.fb:                                            ; preds = %bb.fa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111096)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.rk, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i", label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !noalias !111097, !noundef !21
  %i.rn = add i64 %i.af, 4
  store i64 %i.rn, ptr %i.z, align 8, !alias.scope !111098, !noalias !111090
  %.not.i.2.i.i = icmp eq i8 %i.rm, 108
  br i1 %.not.i.2.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h9b99725beda83431E.exit.i.i", label %bb.fd, !prof !57

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i": ; preds = %bb.fb, %bb.ez, %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !111099
  store i64 5, ptr %i.c, align 8, !noalias !111099
  %i.ro = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !111100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !111099
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fc, %bb.fa, %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !111099
  store i64 9, ptr %i.b, align 8, !noalias !111099
  %i.rp = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !111100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !111099
  br label %bb.fe

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h9b99725beda83431E.exit.i.i": ; preds = %bb.fc
  store i64 0, ptr %0, align 8, !alias.scope !111101, !noalias !111102
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h195759e412cb28f8E.exit"

bb.fe:                                            ; preds = %bb.fd, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i"
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.ro, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i" ], [ %i.rp, %bb.fd ]
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.rq, align 8, !alias.scope !111084, !noalias !111102
  store i64 2, ptr %0, align 8, !alias.scope !111084, !noalias !111102
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h195759e412cb28f8E.exit"

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h195759e412cb28f8E.exit": ; preds = %bb.ev, %bb.ew, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h9b99725beda83431E.exit.i.i", %bb.fe
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h74563b9ee6ee587fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 15 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [96 x i8], align 8                ; 14 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [96 x i8], align 8                ; 9 uses
  %i.j = alloca [48 x i8], align 8                ; 12 uses
  %.sroa.0182.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 12 uses
  %.sroa.017.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %.sroa.822.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 6 uses
  %.sroa.03.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.7.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 5 uses
  %.sroa.10.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 15 uses
  %i.m = alloca [16 x i8], align 8                ; 11 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = alloca [32 x i8], align 8                ; 15 uses
  %i.q = alloca [16 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4.i.i.i.i.i.i.i.i.i.i = alloca i8, align 1 ; 6 uses
  %.sroa.7.i.i.i.i.i.i.i.i.i.i = alloca i8, align 2 ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 10 uses
  %i.z = alloca [56 x i8], align 8                ; 8 uses
  %i.aa = alloca [48 x i8], align 8               ; 9 uses
  %i.ab = alloca [56 x i8], align 8               ; 8 uses
  %.sroa.18.i.i.i.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 10 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [48 x i8], align 8               ; 8 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 10 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.7.i.sroa.0.i.i.i.i.i = alloca [6 x i8], align 2 ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [48 x i8], align 8               ; 6 uses
  %i.an = alloca [48 x i8], align 8               ; 13 uses
  %i.ao = alloca [16 x i8], align 8               ; 11 uses
  %i.ap = alloca [24 x i8], align 8               ; 9 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.4.i.i.i = alloca i8, align 1             ; 6 uses
  %.sroa.7.i.i.i = alloca i8, align 2             ; 5 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [40 x i8], align 8               ; 11 uses
  %.sroa.937.i.i = alloca [16 x i8], align 8      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111465)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h5b7cd31f5905735dE.exit.i.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h5b7cd31f5905735dE.exit.i.i.i": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h5b7cd31f5905735dE.exit.i.i.i.backedge", %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111467)
  %i.be = load i8, ptr %i.av, align 8, !range !42, !alias.scope !111468, !noalias !111469, !noundef !21
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h5b7cd31f5905735dE.exit.i.i.i"
  %i.bg = load i8, ptr %i.aw, align 1, !alias.scope !111468, !noalias !111469, !noundef !21
  br label %"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a4e062a7614a580E.exit.sink.split.i.i.i.i"
end_hunk_1
