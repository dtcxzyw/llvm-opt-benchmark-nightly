Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/find_msvc_tools-762109e8b810eaf1.find_msvc_tools.2d7dcf19d5894587-cgu.0?download=true
inline.NumInlined: 322
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs3U9i7nQCKwt_15find_msvc_tools:bb.a
    i64 1, label %bb.t
    i64 0, label %.preheader48
  ]

.preheader48:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !noalias !92
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph185

.lr.ph185:                                        ; preds = %.preheader48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !noalias !92 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i64, ptr %i.i, align 8, !noalias !92 ; 9 uses
  %.not43.i = icmp eq ptr %i.h, null              ; 2 uses
  %.promoted = load i8, ptr %i.f, align 8, !noalias !92
  %.promoted186 = load i64, ptr %i.b, align 8, !noalias !92
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

.loopexit:                                        ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.01.0.i = phi i64 [ 2, %bb.r ], [ %..i, %bb.s ], [ 1, %bb.q ]
  %i.k = add i64 %.sroa.01.0.i, %i.l              ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !noalias !92
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %.lr.ph185
  %i.l = phi i64 [ %.promoted186, %.lr.ph185 ], [ %i.k, %.loopexit ] ; 12 uses
  %i.m = phi i8 [ %.promoted, %.lr.ph185 ], [ %i.p, %.loopexit ] ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %i.o = and i8 %i.m, 1
  %i.p = xor i8 %i.o, 1                           ; 2 uses
  store i8 %i.p, ptr %i.f, align 8, !noalias !92
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp ult i64 %i.l, %i.j
  br i1 %.not.i.i, label %bb.e, label %.split.i.i

.split.i.i:                                       ; preds = %bb.d
  %i.r = icmp ne i64 %i.l, %i.j
  %or.cond.i = select i1 %i.r, i1 true, i1 %.not43.i
  br i1 %or.cond.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread92.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.t = load i8, ptr %i.s, align 1, !noalias !92
  %i.u = icmp sgt i8 %i.t, -65
  br i1 %i.u, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread92.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.c
  br i1 %.not43.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread92.i

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread92.i: ; preds = %bb.e, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.i, %.split.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l ; 4 uses
  %i.w = icmp samesign eq i64 %i.l, %i.j
  br i1 %i.w, label %bb.o, label %bb.f

bb.f:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread92.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.y = load i8, ptr %i.v, align 1, !noalias !92 ; 5 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = and i8 %i.y, 31
  %i.ab = zext nneg i8 %i.aa to i32               ; 3 uses
  %i.ac = add nuw nsw i64 %i.l, 1
  %i.ad = icmp samesign eq i64 %i.ac, %i.j
  br i1 %i.ad, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit15.thread.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ae = zext nneg i8 %i.y to i32
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ag = load i8, ptr %i.x, align 1, !noalias !92
  %i.ah = shl nuw nsw i32 %i.ab, 6
  %i.ai = and i8 %i.ag, 63
  %i.aj = zext nneg i8 %i.ai to i32               ; 2 uses
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = icmp samesign ugt i8 %i.y, -33
  br i1 %i.al, label %bb.j, label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit15.thread.i.i: ; preds = %bb.g
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 @5) #39, !noalias !92
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.am = add nuw nsw i64 %i.l, 2
  %i.an = icmp samesign eq i64 %i.am, %i.j
  br i1 %i.an, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit17.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.ap = load i8, ptr %i.af, align 1, !noalias !92
  %i.aq = shl nuw nsw i32 %i.aj, 6
  %i.ar = and i8 %i.ap, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as            ; 2 uses
  %i.au = shl nuw nsw i32 %i.ab, 12
  %i.av = or disjoint i32 %i.at, %i.au
  %i.aw = icmp samesign ugt i8 %i.y, -17
  br i1 %i.aw, label %bb.l, label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit17.thread.i.i: ; preds = %bb.j
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 @6) #39, !noalias !92
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ax = add nuw nsw i64 %i.l, 3
  %i.ay = icmp samesign eq i64 %i.ax, %i.j
  br i1 %i.ay, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit19.thread.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load i8, ptr %i.ao, align 1, !noalias !92
  %i.ba = shl nuw nsw i32 %i.ab, 18
  %i.bb = and i32 %i.ba, 1835008
  %i.bc = shl nuw nsw i32 %i.at, 6
  %i.bd = and i8 %i.az, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.bb
  br label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit19.thread.i.i: ; preds = %bb.l
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 @7) #39, !noalias !92
  unreachable

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i: ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.i, %bb.e, %.split.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr %i.h, i64 %i.j, i64 %i.l, i64 %i.j, ptr nonnull align 8 @32) #33, !noalias !92
  unreachable

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.i, %bb.h
  %.sroa.4.0.i.ph.i = phi i32 [ %i.ak, %bb.i ], [ %i.av, %bb.k ], [ %i.bg, %bb.m ], [ %i.ae, %bb.h ] ; 3 uses
  br i1 %i.n, label %.loopexit50, label %bb.q

bb.o:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread92.i
  br i1 %i.n, label %.loopexit50, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.c, align 2, !noalias !92
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.q:                                             ; preds = %bb.n
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 128
  br i1 %i.bh, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 2048
  br i1 %i.bi, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 65536
  %..i = select i1 %i.bj, i64 3, i64 4
  br label %.loopexit

bb.t:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bl = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8            ; 4 uses
  %.not = icmp ult i64 %i.bn, %i.bl
  br i1 %.not, label %bb.v, label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.u:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp eq i64 %i.bq, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8            ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bv = load i64, ptr %i.bu, align 8            ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bx = load ptr, ptr %i.bw, align 8            ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bz = load i64, ptr %i.by, align 8            ; 14 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.cb = add i64 %i.bz, -1                       ; 3 uses
  %.promoted.i13 = load i64, ptr %i.ca, align 8   ; 3 uses
  %i.cc = add i64 %i.cb, %.promoted.i13           ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %i.bv               ; 2 uses
  br i1 %i.br, label %bb.ag, label %bb.x

.loopexit50:                                      ; preds = %bb.n, %bb.o
  %.sroa.2.1.ph = phi i64 [ %i.j, %bb.o ], [ %i.l, %bb.n ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.1.ph, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.2.1.ph, ptr %i.cf, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.p, %.preheader48, %bb.am, %._crit_edge.i14, %.preheader45.preheader._crit_edge, %._crit_edge.i, %bb.t, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread, %.loopexit50
  %storemerge.i.sink = phi i64 [ 0, %bb.t ], [ 1, %.preheader45.preheader._crit_edge ], [ 1, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38 ], [ 0, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread ], [ 1, %.loopexit50 ], [ 1, %bb.am ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i14 ], [ 0, %.preheader48 ], [ 0, %bb.p ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.v:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cj = load i8, ptr %i.ci, align 8             ; 2 uses
  %i.ck = sub nuw i64 %i.bl, %i.bn                ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bn ; 2 uses
  %i.cm = icmp ult i64 %i.ck, 16
  br i1 %i.cm, label %.lr.ph.i, label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit

.lr.ph.i:                                         ; preds = %bb.v, %bb.w
  %.sroa.04.09.i = phi i64 [ %i.cq, %bb.w ], [ 0, %bb.v ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sroa.04.09.i
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.co, %i.cj
  br i1 %i.cp, label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.cq = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %exitcond.not.i5 = icmp eq i64 %i.cq, %i.ck
  br i1 %exitcond.not.i5, label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread, label %.lr.ph.i

_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.v
  %i.cr = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 %i.cj, ptr %i.cl, i64 %i.ck) ; 2 uses
  %i.cs = extractvalue { i64, i64 } %i.cr, 0
  %i.ct = trunc nuw i64 %i.cs to i1
  br i1 %i.ct, label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit._RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38_crit_edge, label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread

_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit._RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38_crit_edge: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit
  %i.cu = extractvalue { i64, i64 } %i.cr, 1
  %.pre = load i64, ptr %i.bm, align 8
  br label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38

_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38: ; preds = %.lr.ph.i, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit._RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38_crit_edge
  %i.cv = phi i64 [ %.pre, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit._RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38_crit_edge ], [ %i.bn, %.lr.ph.i ]
  %.sroa.5.1.i41 = phi i64 [ %i.cu, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit._RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38_crit_edge ], [ %.sroa.04.09.i, %.lr.ph.i ]
  %i.cw = add i64 %i.cv, %.sroa.5.1.i41           ; 2 uses
  %i.cx = add i64 %i.cw, 1                        ; 2 uses
  store i64 %i.cx, ptr %i.bm, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cw, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cx, ptr %i.cz, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread: ; preds = %bb.w, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit
  store i64 %i.bl, ptr %i.bm, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.x:                                             ; preds = %bb.u
  br i1 %i.cd, label %.lr.ph.i6, label %._crit_edge.i

.lr.ph.i6:                                        ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.y

._crit_edge.i:                                    ; preds = %.sink.split.i, %bb.x
  store i64 %i.bv, ptr %i.ca, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.y:                                             ; preds = %.sink.split.i, %.lr.ph.i6
  %i.dd = phi i64 [ %i.bq, %.lr.ph.i6 ], [ %.sink.i12, %.sink.split.i ] ; 3 uses
  %i.de = phi i64 [ %i.cc, %.lr.ph.i6 ], [ %i.dp, %.sink.split.i ]
  %i.df = phi i64 [ %.promoted.i13, %.lr.ph.i6 ], [ %.ph.i, %.sink.split.i ] ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = and i8 %i.dh, 63
  %i.dj = zext nneg i8 %i.di to i64
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.db
  %.not.i7 = icmp eq i64 %i.dl, 0
  br i1 %.not.i7, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dm = add i64 %i.df, %i.bz                    ; 2 uses
  store i64 %i.dm, ptr %i.ca, align 8
  br label %.sink.split.i

bb.aa:                                            ; preds = %bb.y
  %i.dn = load i64, ptr %i.bo, align 8            ; 4 uses
  %.sroa.0.0.sroa.speculated.i.i8 = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 %i.dn) ; 3 uses
  %i.do = getelementptr i8, ptr %i.bt, i64 %i.df  ; 2 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.sroa.speculated.i.i8, i64 %i.bz)
  %exitcond.not.i11317.not = icmp ult i64 %.sroa.0.0.sroa.speculated.i.i8, %i.bz
  br i1 %exitcond.not.i11317.not, label %.lr.ph, label %.preheader45.preheader

.sink.split.i:                                    ; preds = %bb.af, %bb.ae, %bb.z
  %.sink.i12 = phi i64 [ 0, %bb.af ], [ %i.ef, %bb.ae ], [ 0, %bb.z ] ; 2 uses
  %.ph.i = phi i64 [ %i.em, %bb.af ], [ %i.ee, %bb.ae ], [ %i.dm, %bb.z ] ; 2 uses
  store i64 %.sink.i12, ptr %i.bp, align 8
  %i.dp = add i64 %.ph.i, %i.cb                   ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.bv
  br i1 %i.dq, label %bb.y, label %._crit_edge.i

bb.ab:                                            ; preds = %.lr.ph
  %i.dr = add nuw i64 %.sroa.02.0.i10318, 1       ; 2 uses
  %exitcond.not.i11 = icmp eq i64 %i.dr, %umax.i
  br i1 %exitcond.not.i11, label %.preheader45.preheader, label %.lr.ph

.preheader45.preheader:                           ; preds = %bb.ab, %bb.aa
  %i.ds = icmp ult i64 %i.dd, %i.dn
  br i1 %i.ds, label %.lr.ph320, label %.preheader45.preheader._crit_edge

.preheader45:                                     ; preds = %bb.ac
  %i.dt = icmp ult i64 %i.dd, %i.dx
  br i1 %i.dt, label %.lr.ph320, label %.preheader45.preheader._crit_edge

.preheader45.preheader._crit_edge:                ; preds = %.preheader45.preheader, %.preheader45
  %i.du = add i64 %i.df, %i.bz                    ; 2 uses
  store i64 %i.du, ptr %i.ca, align 8
  store i64 0, ptr %i.bp, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.df, ptr %i.dv, align 8, !alias.scope !93
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.du, ptr %i.dw, align 8, !alias.scope !93
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

.lr.ph320:                                        ; preds = %.preheader45.preheader, %.preheader45
  %.sroa.2.0.i319 = phi i64 [ %i.dx, %.preheader45 ], [ %i.dn, %.preheader45.preheader ]
  %i.dx = add i64 %.sroa.2.0.i319, -1             ; 6 uses
  %i.dy = icmp ult i64 %i.dx, %i.bz
  br i1 %i.dy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph320
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.dx
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = getelementptr i8, ptr %i.do, i64 %i.dx
  %i.ec = load i8, ptr %i.eb, align 1
  %.not17.i = icmp eq i8 %i.ea, %i.ec
  br i1 %.not17.i, label %.preheader45, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph320
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.dx, i64 %i.bz, ptr nonnull align 8 @3) #33
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ed = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.ee = add i64 %i.ed, %i.df                    ; 2 uses
  store i64 %i.ee, ptr %i.ca, align 8
  %i.ef = sub i64 %i.bz, %i.ed
  br label %.sink.split.i

.lr.ph:                                           ; preds = %bb.aa, %bb.ab
  %.sroa.02.0.i10318 = phi i64 [ %i.dr, %bb.ab ], [ %.sroa.0.0.sroa.speculated.i.i8, %bb.aa ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.02.0.i10318
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = getelementptr i8, ptr %i.do, i64 %.sroa.02.0.i10318
  %i.ej = load i8, ptr %i.ei, align 1
  %.not18.i = icmp eq i8 %i.eh, %i.ej
  br i1 %.not18.i, label %bb.ab, label %bb.af

bb.af:                                            ; preds = %.lr.ph
  %i.ek = add i64 %i.df, 1
  %i.el = sub i64 %i.ek, %i.dn
  %i.em = add i64 %i.el, %.sroa.02.0.i10318       ; 2 uses
  store i64 %i.em, ptr %i.ca, align 8
  br label %.sink.split.i

bb.ag:                                            ; preds = %bb.u
  br i1 %i.cd, label %.lr.ph.i16, label %._crit_edge.i14

.lr.ph.i16:                                       ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.ah

._crit_edge.i14:                                  ; preds = %bb.ak, %bb.ag
  store i64 %i.bv, ptr %i.ca, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.ah:                                            ; preds = %bb.ak, %.lr.ph.i16
  %i.eq = phi i64 [ %i.cc, %.lr.ph.i16 ], [ %i.fb, %bb.ak ]
  %i.er = phi i64 [ %.promoted.i13, %.lr.ph.i16 ], [ %.sink, %bb.ak ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.eq
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = and i8 %i.et, 63
  %i.ev = zext nneg i8 %i.eu to i64
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = and i64 %i.ew, %i.eo
  %.not.i17 = icmp eq i64 %i.ex, 0
  br i1 %.not.i17, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ey = add i64 %i.er, %i.bz
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ez = load i64, ptr %i.bo, align 8            ; 7 uses
  %i.fa = getelementptr i8, ptr %i.bt, i64 %i.er  ; 2 uses
  %umax.i19 = tail call i64 @llvm.umax.i64(i64 %i.ez, i64 %i.bz)
  %exitcond.not.i21322.not = icmp ult i64 %i.ez, %i.bz
  br i1 %exitcond.not.i21322.not, label %.lr.ph324, label %.preheader.preheader

bb.ak:                                            ; preds = %bb.ao, %.lr.ph327, %bb.ai
  %.sink = phi i64 [ %i.fp, %bb.ao ], [ %i.fh, %.lr.ph327 ], [ %i.ey, %bb.ai ] ; 3 uses
  store i64 %.sink, ptr %i.ca, align 8
  %i.fb = add i64 %.sink, %i.cb                   ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.bv
  br i1 %i.fc, label %bb.ah, label %._crit_edge.i14

bb.al:                                            ; preds = %.lr.ph324
  %i.fd = add nuw i64 %.sroa.02.0.i20323, 1       ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %i.fd, %umax.i19
  br i1 %exitcond.not.i21, label %.preheader.preheader, label %.lr.ph324

.preheader.preheader:                             ; preds = %bb.al, %bb.aj
  %i.fe = add i64 %i.ez, -1                       ; 2 uses
  %.first_iter = icmp ult i64 %i.fe, %i.bz
  %.first_iter.fr = freeze i1 %.first_iter
  %.not42325 = icmp eq i64 %i.ez, 0               ; 2 uses
  br i1 %.first_iter.fr, label %.preheader.us.preheader, label %.preheader.preheader.split

.preheader.us.preheader:                          ; preds = %.preheader.preheader
  br i1 %.not42325, label %bb.am, label %.preheader.preheader._crit_edge

.preheader:                                       ; preds = %.preheader.preheader._crit_edge
  %.not42 = icmp eq i64 %2, 0
  br i1 %.not42, label %bb.am, label %.preheader.preheader._crit_edge

.preheader.preheader._crit_edge:                  ; preds = %.preheader.us.preheader, %.preheader
  %.sroa.2.0.i23.us338 = phi i64 [ %2, %.preheader ], [ %i.ez, %.preheader.us.preheader ]
  %2 = add i64 %.sroa.2.0.i23.us338, -1           ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bx, i64 %2
  %3 = load i8, ptr %i.ff, align 1
  %i.fg = getelementptr i8, ptr %i.fa, i64 %2
  %4 = load i8, ptr %i.fg, align 1
  %.not17.i24.us = icmp eq i8 %3, %4
  br i1 %.not17.i24.us, label %.preheader, label %.lr.ph327

.lr.ph327:                                        ; preds = %.preheader.preheader._crit_edge
  %5 = load i64, ptr %i.ep, align 8
  %i.fh = add i64 %5, %i.er
  br label %bb.ak

.preheader.preheader.split:                       ; preds = %.preheader.preheader
  br i1 %.not42325, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.preheader.us.preheader, %.preheader, %.preheader.preheader.split
  %6 = add i64 %i.er, %i.bz                       ; 2 uses
  store i64 %6, ptr %i.ca, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.er, ptr %i.fi, align 8, !alias.scope !94
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %6, ptr %7, align 8, !alias.scope !94
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.an:                                            ; preds = %.preheader.preheader.split
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.fe, i64 %i.bz, ptr nonnull align 8 @3) #33
  unreachable

.lr.ph324:                                        ; preds = %bb.aj, %bb.al
  %.sroa.02.0.i20323 = phi i64 [ %i.fd, %bb.al ], [ %i.ez, %bb.aj ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.02.0.i20323
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = getelementptr i8, ptr %i.fa, i64 %.sroa.02.0.i20323
  %i.fm = load i8, ptr %i.fl, align 1
  %.not18.i22 = icmp eq i8 %i.fk, %i.fm
  br i1 %.not18.i22, label %bb.al, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph324
  %i.fn = add i64 %i.er, 1
  %i.fo = sub i64 %i.fn, %i.ez
  %i.fp = add i64 %i.fo, %.sroa.02.0.i20323
  br label %bb.ak
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.c, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EENtNtNtB1U_3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %0)
  %i.c = load ptr, ptr %i.b, align 8
  %.not1 = icmp eq ptr %i.c, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  call void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %0)
  %i.d = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  invoke void @_RNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.b)
          to label %bb.b unwind label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr %0, ptr %i.a, align 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2s_ENtNtBQ_5alloc6GlobalEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a) #35
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsz_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtNtB7_3ffi6os_str5OsStrE4fromCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmXY8IYACQt_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %2, i1 zeroext false, i64 1, i64 1)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.e, i64 %i.g) #37
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr readonly align 1 %1, i64 %2, i1 false)
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit

_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i, %bb.c
  store i64 %i.e, ptr %0, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.36.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  ret i64 %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3maxCs3U9i7nQCKwt_15find_msvc_tools(i64 %0, i64 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3minCs3U9i7nQCKwt_15find_msvc_tools(i64 %0, i64 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #19

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsaDvkSoazevh_14rustc_demangle(ptr align 8, ptr align 8) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path5__join(ptr sret([24 x i8]) align 8, ptr, i64, ptr, i64) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr align 8) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCsaL1QbXo9JQH_3std3sys7process3envNtB4_10CommandEnv3set(ptr align 8, ptr, i64, ptr, i64) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6commonNtB4_7Command3new(ptr sret([200 x i8]) align 8, ptr, i64) unnamed_addr #4

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64, i64, ptr align 8) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr align 8) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6common13cstring_arrayNtB5_12CStringArrayNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr align 8) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs8metadata(ptr sret([176 x i8]) align 8, ptr, i64) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsaL1QbXo9JQH_3std3env3var5inner(ptr sret([32 x i8]) align 8, ptr, i64) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys3env4unix6getenv(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtCsaL1QbXo9JQH_3std3envNtB5_10SplitPathsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr sret([24 x i8]) align 8, ptr, ptr) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #23

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmXY8IYACQt_5gimli(ptr sret([24 x i8]) align 8, i64, i1 zeroext, i64, i64) unnamed_addr #4

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64, i64) unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #26

end_hunk_0
