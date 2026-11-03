Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/autocfg-67f8d07d0b0c6a91.autocfg.fb268b452581180-cgu.1?download=true
inline.NumInlined: 69
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_inCs1lymFvuhrhY_7autocfg:bb.a
bb.g:                                             ; preds = %bb.d
  %i.t = load i8, ptr %0, align 1
  %i.u = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCs1lymFvuhrhY_7autocfg(i8 %i.t, ptr %2, i64 %3)
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = icmp eq i64 %i.v, 1
  br label %bb.c

bb.h:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containsCs1lymFvuhrhY_7autocfg.exit, %bb.f
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.m, ptr %2, i64 %3, ptr %0, i64 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.x = load i64, ptr %i.m, align 8, !noalias !30
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 6 uses
  br i1 %i.y, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.am = load i64, ptr %i.al, align 8, !noalias !30
  %i.an = icmp eq i64 %i.am, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !30 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !30 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !noalias !30 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.av = load i64, ptr %i.au, align 8, !noalias !30 ; 7 uses
  br i1 %i.an, label %bb.aa, label %bb.al

bb.j:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.i, %.preheader.i
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !30
  %i.aw = load i64, ptr %i.m, align 8, !noalias !32
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.ah, align 8, !noalias !32
  %i.az = load i64, ptr %i.ad, align 8, !noalias !32 ; 2 uses
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.thread.i, label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.bb = load i8, ptr %i.aa, align 2, !noalias !32
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = load i8, ptr %i.ab, align 8, !noalias !32 ; 2 uses
  %i.be = trunc nuw i8 %i.bd to i1                ; 2 uses
  %i.bf = and i8 %i.bd, 1
  %i.bg = xor i8 %i.bf, 1
  store i8 %i.bg, ptr %i.ab, align 8, !noalias !32
  %i.bh = load i64, ptr %i.z, align 8, !noalias !32 ; 3 uses
  %i.bi = load ptr, ptr %i.ac, align 8, !noalias !32 ; 2 uses
  %i.bj = load i64, ptr %i.ad, align 8, !noalias !32 ; 3 uses
  %i.bk = call { ptr, i64 } @_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs1lymFvuhrhY_7autocfg(i64 %i.bh, ptr %i.bi, i64 %i.bj), !noalias !32 ; 2 uses
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0      ; 3 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store ptr %i.bl, ptr %i.k, align 8, !noalias !32
  store ptr %i.bn, ptr %i.ae, align 8, !noalias !32
  %i.bo = call { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1lymFvuhrhY_7autocfg(ptr nonnull align 8 %i.k), !noalias !32 ; 2 uses
  %i.bp = extractvalue { i32, i32 } %i.bo, 0
  %i.bq = extractvalue { i32, i32 } %i.bo, 1      ; 3 uses
  %i.br = trunc i32 %i.bp to i1
  br i1 %i.br, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr %i.bi, i64 %i.bj, i64 %i.bh, i64 %i.bj, ptr nonnull align 8 @86) #24, !noalias !32
  unreachable

bb.p:                                             ; preds = %bb.n
  br i1 %i.be, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.thread1.i, label %bb.r

bb.q:                                             ; preds = %bb.n
  br i1 %i.be, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.thread1.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.thread.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.thread1.i: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !30
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs1lymFvuhrhY_7autocfg.exit

bb.r:                                             ; preds = %bb.p
  %i.bs = icmp ult i32 %i.bq, 128
  br i1 %i.bs, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = icmp ult i32 %i.bq, 2048
  br i1 %i.bt, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = icmp ult i32 %i.bq, 65536
  %..i.i = select i1 %i.bu, i64 3, i64 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.01.0.i.i = phi i64 [ 2, %bb.s ], [ %..i.i, %bb.t ], [ 1, %bb.r ]
  %i.bv = load i64, ptr %i.z, align 8, !noalias !32
  %i.bw = add i64 %i.bv, %.sroa.01.0.i.i          ; 2 uses
  store i64 %i.bw, ptr %i.z, align 8, !noalias !32
  store i64 %i.bh, ptr %i.af, align 8, !alias.scope !31, !noalias !30
  store i64 %i.bw, ptr %i.ag, align 8, !alias.scope !31, !noalias !30
  store i64 1, ptr %i.l, align 8, !alias.scope !31, !noalias !30
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.i

bb.v:                                             ; preds = %bb.k
  %i.bx = load i64, ptr %i.ai, align 8, !noalias !32
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = load ptr, ptr %i.ac, align 8, !noalias !32
  %i.ca = load ptr, ptr %i.aj, align 8, !noalias !32
  %i.cb = load i64, ptr %i.ak, align 8, !noalias !32
  call void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs1lymFvuhrhY_7autocfg(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull align 8 %i.z, ptr %i.bz, i64 %i.az, ptr %i.ca, i64 %i.cb, i1 zeroext %i.by), !noalias !30
  %i.cc = load i64, ptr %i.l, align 8, !noalias !30 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.w, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.i

bb.w:                                             ; preds = %bb.v
  %i.ce = load i64, ptr %i.ag, align 8, !alias.scope !31, !noalias !30 ; 2 uses
  %i.cf = load ptr, ptr %i.ac, align 8, !noalias !32
  %i.cg = load i64, ptr %i.ad, align 8, !noalias !32 ; 3 uses
  %i.ch = icmp eq i64 %i.ce, 0
  br i1 %i.ch, label %.split._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.y
  %.sroa.02.015.i.i = phi i64 [ %i.co, %bb.y ], [ %i.ce, %bb.w ] ; 5 uses
  %.not14.i.i = icmp ult i64 %.sroa.02.015.i.i, %i.cg
  br i1 %.not14.i.i, label %bb.x, label %.split.i.i

.split._crit_edge.i.i:                            ; preds = %bb.y, %bb.x, %.split.i.i, %bb.w
  %.sroa.02.0.lcssa.i.i = phi i64 [ 0, %bb.w ], [ %i.cg, %.split.i.i ], [ 0, %bb.y ], [ %.sroa.02.015.i.i, %bb.x ] ; 2 uses
  %i.ci = load i64, ptr %i.ah, align 8, !noalias !32
  %i.cj = call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxCs1lymFvuhrhY_7autocfg(i64 %.sroa.02.0.lcssa.i.i, i64 %i.ci), !noalias !32
  store i64 %i.cj, ptr %i.ah, align 8, !noalias !32
  store i64 %.sroa.02.0.lcssa.i.i, ptr %i.ag, align 8, !alias.scope !31, !noalias !30
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.ck = icmp eq i64 %.sroa.02.015.i.i, %i.cg
  br i1 %i.ck, label %.split._crit_edge.i.i, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.02.015.i.i
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !32
  %i.cn = icmp sgt i8 %i.cm, -65
  br i1 %i.cn, label %.split._crit_edge.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %.split.i.i
  %i.co = add i64 %.sroa.02.015.i.i, 1            ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.split._crit_edge.i.i, label %.lr.ph.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.thread.i: ; preds = %bb.l, %bb.k, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !30
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs1lymFvuhrhY_7autocfg.exit

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.i: ; preds = %.split._crit_edge.i.i, %bb.v, %bb.u
  %i.cq = phi i64 [ %i.cc, %bb.v ], [ 1, %.split._crit_edge.i.i ], [ 1, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !30
  switch i64 %i.cq, label %bb.z [
    i64 0, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs1lymFvuhrhY_7autocfg.exit
    i64 1, label %bb.j
    i64 2, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs1lymFvuhrhY_7autocfg.exit.loopexit152
  ]

bb.z:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.i
  unreachable

bb.aa:                                            ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.cs = add i64 %i.av, -1                       ; 2 uses
  %i.ct = load i64, ptr %i.cr, align 8            ; 2 uses
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ar
  br i1 %i.cv, label %.lr.ph.i6, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs1lymFvuhrhY_7autocfg.exit

.lr.ph.i6:                                        ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.cy = load i64, ptr %i.cw, align 8
  %i.cz = load i64, ptr %i.z, align 8             ; 8 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %i.cz, i64 %i.av)
  %i.da = load i64, ptr %i.cx, align 8
  %i.db = add i64 %i.cz, -1
  %.first_iter = icmp ult i64 %i.db, %i.av
  %exitcond.not.i131.not = icmp ult i64 %i.cz, %i.av
  %.not133 = icmp eq i64 %i.cz, 0
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %.lr.ph.i6
  %i.dc = phi i64 [ %i.ct, %.lr.ph.i6 ], [ %.sink, %bb.ad ] ; 6 uses
  %i.dd = phi i64 [ %i.cu, %.lr.ph.i6 ], [ %i.dm, %bb.ad ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = and i8 %i.df, 63
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = and i64 %i.di, %i.cy
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %bb.ac, label %.preheader36.preheader

.preheader36.preheader:                           ; preds = %bb.ab
  br i1 %exitcond.not.i131.not, label %.lr.ph.a, label %.preheader.preheader

bb.ac:                                            ; preds = %bb.ab
  %i.dl = add i64 %i.dc, %i.av
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ak, %bb.ah, %bb.ac
  %.sink = phi i64 [ %i.ec, %bb.ak ], [ %i.du, %bb.ah ], [ %i.dl, %bb.ac ] ; 3 uses
  store i64 %.sink, ptr %i.cr, align 8
  %i.dm = add i64 %.sink, %i.cs                   ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.ar
  br i1 %i.dn, label %bb.ab, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs1lymFvuhrhY_7autocfg.exit

.preheader36:                                     ; preds = %bb.ai
  %exitcond.not.i = icmp eq i64 %i.dv, %umax.i
  br i1 %exitcond.not.i, label %.preheader.preheader, label %.lr.ph.a

.preheader.preheader:                             ; preds = %.preheader36, %.preheader36.preheader
  br i1 %.not133, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs1lymFvuhrhY_7autocfg.exit, label %.lr.ph135

.lr.ph.a:                                         ; preds = %.preheader36.preheader, %.preheader36
  %.sroa.02.0.i132 = phi i64 [ %i.dv, %.preheader36 ], [ %i.cz, %.preheader36.preheader ] ; 3 uses
  %4 = add i64 %i.dc, %.sroa.02.0.i132            ; 2 uses
  %5 = icmp ult i64 %4, %i.ar
  br i1 %5, label %bb.ai, label %bb.aj

.preheader:                                       ; preds = %bb.af
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs1lymFvuhrhY_7autocfg.exit, label %.lr.ph135

.lr.ph135:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i134 = phi i64 [ %6, %.preheader ], [ %i.cz, %.preheader.preheader ]
  %6 = add i64 %.sroa.2.0.i134, -1                ; 5 uses
  br i1 %.first_iter, label %bb.ae, label %7

bb.ae:                                            ; preds = %.lr.ph135
  %i.do = add i64 %i.dc, %6                       ; 3 uses
  %i.dp = icmp ult i64 %i.do, %i.ar
  br i1 %i.dp, label %bb.af, label %bb.ag

7:                                                ; preds = %.lr.ph135
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %6, i64 %i.av, ptr nonnull align 8 @7) #24
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.dq = getelementptr inbounds nuw i8, ptr %i.at, i64 %6
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.do
  %i.dt = load i8, ptr %i.ds, align 1
  %.not.i7 = icmp eq i8 %i.dr, %i.dt
  br i1 %.not.i7, label %.preheader, label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.do, i64 %i.ar, ptr nonnull align 8 @8) #24
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.du = add i64 %i.da, %i.dc
  br label %bb.ad

bb.ai:                                            ; preds = %.lr.ph.a
  %i.dv = add nuw i64 %.sroa.02.0.i132, 1         ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.02.0.i132
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ap, i64 %4
  %i.dz = load i8, ptr %i.dy, align 1
  %.not21.i = icmp eq i8 %i.dx, %i.dz
  br i1 %.not21.i, label %.preheader36, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.a
  %i.ea = add i64 %i.cz, %i.dc
  %umax = call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.ea)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %umax, i64 %i.ar, ptr nonnull align 8 @9) #24
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.eb = sub i64 %i.dv, %i.cz
  %i.ec = add i64 %i.eb, %i.dc
  br label %bb.ad

bb.al:                                            ; preds = %bb.i
  call void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1lymFvuhrhY_7autocfg(ptr nonnull sret([24 x i8]) align 8 %i.n, ptr nonnull align 8 %i.z, ptr %i.ap, i64 %i.ar, ptr %i.at, i64 %i.av, i1 zeroext false)
  %.pre = load i64, ptr %i.n, align 8
  %i.ed = icmp eq i64 %.pre, 1
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs1lymFvuhrhY_7autocfg.exit

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs1lymFvuhrhY_7autocfg.exit.loopexit152: ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.i
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs1lymFvuhrhY_7autocfg.exit

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs1lymFvuhrhY_7autocfg.exit: ; preds = %bb.ad, %.preheader.preheader, %.preheader, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.i, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs1lymFvuhrhY_7autocfg.exit.loopexit152, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.thread.i, %bb.aa, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.thread1.i, %bb.al
  %8 = phi i1 [ %i.ed, %bb.al ], [ false, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs1lymFvuhrhY_7autocfg.exit.loopexit152 ], [ true, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.thread1.i ], [ true, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.i ], [ false, %bb.aa ], [ false, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs1lymFvuhrhY_7autocfg.exit.thread.i ], [ true, %.preheader ], [ false, %bb.ad ], [ true, %.preheader.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.c

bb.am:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %0, ptr %i.j, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %1, ptr %i.ee, align 8
  %i.ef = load i8, ptr %0, align 1                ; 2 uses
  store i8 %i.ef, ptr %i.i, align 1
  %i.eg = add nsw i64 %1, -1                      ; 2 uses
  %i.eh = icmp eq i64 %1, 2
  br i1 %i.eh, label %.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ei = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4)
  store i64 %i.ei, ptr %i.h, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %1, ptr %i.ej, align 8
  store ptr %0, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.ek = call { i64, i64 } @_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs1lymFvuhrhY_7autocfg(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.e) ; 2 uses
  %i.el = extractvalue { i64, i64 } %i.ek, 0
  %i.em = trunc nuw i64 %i.el to i1
  br i1 %i.em, label %bb.ao, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containsCs1lymFvuhrhY_7autocfg.exit

bb.ao:                                            ; preds = %bb.an
  %i.en = extractvalue { i64, i64 } %i.ek, 1      ; 3 uses
  %i.eo = add nuw nsw i64 %1, 15
  %i.ep = icmp ult i64 %3, %i.eo
  br i1 %i.ep, label %bb.ba, label %bb.ap

.thread.i:                                        ; preds = %bb.am
  %i.eq = icmp ult i64 %3, 17
  br i1 %i.eq, label %bb.ba, label %.thread76.i

.thread76.i:                                      ; preds = %.thread.i
  %i.er = insertelement <16 x i8> poison, i8 %i.ef, i64 0
  %i.es = shufflevector <16 x i8> %i.er, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.et = load i8, ptr %i.i, align 1
  %i.eu = insertelement <16 x i8> poison, i8 %i.et, i64 0
  %i.ev = shufflevector <16 x i8> %i.eu, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ew = icmp ult i64 %i.en, %1
  br i1 %i.ew, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %.thread76.i
  %i.ex = phi <16 x i8> [ %i.es, %.thread76.i ], [ %i.ev, %bb.ap ] ; 6 uses
  %storemerge7578.i = phi i64 [ 1, %.thread76.i ], [ %i.en, %bb.ap ] ; 7 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %storemerge7578.i
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = insertelement <16 x i8> poison, i8 %i.ez, i64 0
  %i.fb = shufflevector <16 x i8> %i.fa, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %2, ptr %i.f, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %3, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.fc, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.eg, ptr %i.ff, align 8
  %i.fg = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.fg, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i4

bb.ar:                                            ; preds = %bb.ap
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.en, i64 range(i64 2, 33) %1, ptr nonnull align 8 @54) #24
  unreachable

.preheader.i4:                                    ; preds = %bb.av, %bb.aq
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.aq ], [ %i.hk, %bb.av ] ; 2 uses
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.aq ], [ %.sroa.014.2.3.i, %bb.av ] ; 2 uses
  %i.fh = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.fi = add i64 %.sroa.06.0.lcssa.i, %i.fh
  %i.fj = icmp uge i64 %i.fi, %3
  %i.fk = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond385.i = select i1 %i.fj, i1 true, i1 %i.fk
  br i1 %or.cond385.i, label %._crit_edge.i, label %.lr.ph87.i

.lr.ph.i:                                         ; preds = %bb.aq, %bb.av
  %.sroa.06.083.i = phi i64 [ %i.hk, %bb.av ], [ 0, %bb.aq ] ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.083.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.fl, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %storemerge7578.i
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.fm, align 1
  %i.fn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ex
  %i.fo = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.fb
  %i.fp = and <16 x i1> %i.fn, %i.fo
  %i.fq = sext <16 x i1> %i.fp to <16 x i8>
  store <16 x i8> %i.fq, ptr %i.c, align 16
  %i.fr = call i64 @_RNvMs0_NtNtCs4NRVxsYgnAr_4core9core_simd5masksINtB5_4MaskaKj10_E10to_bitmaskCs1lymFvuhrhY_7autocfg(ptr nonnull align 16 %i.c)
  %i.fs = trunc i64 %i.fr to i16                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.ft, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %storemerge7578.i
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.fu, align 1
  %i.fv = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ex
  %i.fw = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.fb
  %i.fx = and <16 x i1> %i.fv, %i.fw
  %i.fy = sext <16 x i1> %i.fx to <16 x i8>
  store <16 x i8> %i.fy, ptr %i.c, align 16
  %i.fz = call i64 @_RNvMs0_NtNtCs4NRVxsYgnAr_4core9core_simd5masksINtB5_4MaskaKj10_E10to_bitmaskCs1lymFvuhrhY_7autocfg(ptr nonnull align 16 %i.c)
  %i.ga = trunc i64 %i.fz to i16                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.gb, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %storemerge7578.i
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.gc, align 1
  %i.gd = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ex
  %i.ge = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.fb
  %i.gf = and <16 x i1> %i.gd, %i.ge
  %i.gg = sext <16 x i1> %i.gf to <16 x i8>
  store <16 x i8> %i.gg, ptr %i.c, align 16
  %i.gh = call i64 @_RNvMs0_NtNtCs4NRVxsYgnAr_4core9core_simd5masksINtB5_4MaskaKj10_E10to_bitmaskCs1lymFvuhrhY_7autocfg(ptr nonnull align 16 %i.c)
  %i.gi = trunc i64 %i.gh to i16                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fl, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.gj, align 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %storemerge7578.i
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.gk, align 1
  %i.gl = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ex
  %i.gm = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.fb
  %i.gn = and <16 x i1> %i.gl, %i.gm
  %i.go = sext <16 x i1> %i.gn to <16 x i8>
  store <16 x i8> %i.go, ptr %i.c, align 16
  %i.gp = call i64 @_RNvMs0_NtNtCs4NRVxsYgnAr_4core9core_simd5masksINtB5_4MaskaKj10_E10to_bitmaskCs1lymFvuhrhY_7autocfg(ptr nonnull align 16 %i.c)
  %i.gq = trunc i64 %i.gp to i16                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gr = icmp eq i16 %i.fs, 0
  br i1 %i.gr, label %.preheader79.1.i, label %bb.aw

.preheader79.1.i:                                 ; preds = %bb.aw, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.hp, %bb.aw ] ; 3 uses
  %i.gs = icmp eq i16 %i.ga, 0
  br i1 %i.gs, label %.preheader79.2.i, label %bb.as

bb.as:                                            ; preds = %.preheader79.1.i
  %i.gt = or disjoint i64 %.sroa.06.083.i, 16
  %i.gu = trunc nuw i8 %.sroa.014.2.i to i1
  %i.gv = call zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs1lymFvuhrhY_7autocfg(ptr nonnull align 8 %i.f, i64 %i.gt, i16 %i.ga, i1 zeroext %i.gu)
  %i.gw = zext i1 %i.gv to i8
  %i.gx = or i8 %.sroa.014.2.i, %i.gw
  br label %.preheader79.2.i

.preheader79.2.i:                                 ; preds = %bb.as, %.preheader79.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader79.1.i ], [ %i.gx, %bb.as ] ; 3 uses
  %i.gy = icmp eq i16 %i.gi, 0
  br i1 %i.gy, label %.preheader79.3.i, label %bb.at

bb.at:                                            ; preds = %.preheader79.2.i
  %i.gz = or disjoint i64 %.sroa.06.083.i, 32
  %i.ha = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.hb = call zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs1lymFvuhrhY_7autocfg(ptr nonnull align 8 %i.f, i64 %i.gz, i16 %i.gi, i1 zeroext %i.ha)
  %i.hc = zext i1 %i.hb to i8
  %i.hd = or i8 %.sroa.014.2.1.i, %i.hc
  br label %.preheader79.3.i

.preheader79.3.i:                                 ; preds = %bb.at, %.preheader79.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader79.2.i ], [ %i.hd, %bb.at ] ; 3 uses
  %i.he = icmp eq i16 %i.gq, 0
  br i1 %i.he, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.preheader79.3.i
  %i.hf = or disjoint i64 %.sroa.06.083.i, 48
  %i.hg = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.hh = call zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs1lymFvuhrhY_7autocfg(ptr nonnull align 8 %i.f, i64 %i.hf, i16 %i.gq, i1 zeroext %i.hg)
  %i.hi = zext i1 %i.hh to i8
  %i.hj = or i8 %.sroa.014.2.2.i, %i.hi
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.preheader79.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader79.3.i ], [ %i.hj, %bb.au ] ; 2 uses
  %i.hk = add i64 %.sroa.06.083.i, 64             ; 3 uses
  %i.hl = add i64 %i.hk, %i.fg
  %i.hm = icmp uge i64 %i.hl, %3
  %i.hn = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.hm, i1 true, i1 %i.hn
  br i1 %or.cond.i, label %.preheader.i4, label %.lr.ph.i

bb.aw:                                            ; preds = %.lr.ph.i
  %i.ho = call zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs1lymFvuhrhY_7autocfg(ptr nonnull align 8 %i.f, i64 %.sroa.06.083.i, i16 %i.fs, i1 zeroext false)
  %i.hp = zext i1 %i.ho to i8
  br label %.preheader79.1.i

end_hunk_0
