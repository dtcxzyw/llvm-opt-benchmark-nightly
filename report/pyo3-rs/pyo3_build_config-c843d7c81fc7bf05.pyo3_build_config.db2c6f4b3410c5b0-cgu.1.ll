Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_build_config-c843d7c81fc7bf05.pyo3_build_config.db2c6f4b3410c5b0-cgu.1?download=true
inline.NumInlined: 48
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsiOEEQt9hBE2_17pyo3_build_config:bb.a
bb.f:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.d, align 8, !noalias !16
  %i.w = load i64, ptr %i.f, align 8, !noalias !16 ; 2 uses
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread, label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.l, align 8, !noalias !16 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %i.aa = and i8 %i.y, 1
  %i.ab = xor i8 %i.aa, 1
  store i8 %i.ab, ptr %i.l, align 8, !noalias !16
  %i.ac = load i64, ptr %i.g, align 8, !noalias !16 ; 7 uses
  %i.ad = load ptr, ptr %i.e, align 8, !noalias !16 ; 2 uses
  %i.ae = load i64, ptr %i.f, align 8, !noalias !16 ; 3 uses
  %i.af = call { ptr, i64 } @_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsiOEEQt9hBE2_17pyo3_build_config(i64 %i.ac, ptr %i.ad, i64 %i.ae) #22, !noalias !16 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0      ; 3 uses
  %.not43.i = icmp eq ptr %i.ag, null
  br i1 %.not43.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  store ptr %i.ag, ptr %i.a, align 8, !noalias !16
  store ptr %i.ai, ptr %i.o, align 8, !noalias !16
  %i.aj = call { i32, i32 } @_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.a) #22, !noalias !16 ; 2 uses
  %i.ak = extractvalue { i32, i32 } %i.aj, 0
  %i.al = extractvalue { i32, i32 } %i.aj, 1      ; 3 uses
  %i.am = trunc i32 %i.ak to i1
  br i1 %i.am, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr %i.ad, i64 %i.ae, i64 %i.ac, i64 %i.ae, ptr nonnull align 8 @13) #25, !noalias !16
  unreachable

bb.j:                                             ; preds = %bb.h
  br i1 %i.z, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread21, label %bb.m

bb.k:                                             ; preds = %bb.h
  br i1 %i.z, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread21, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.n, align 2, !noalias !16
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.an = icmp ult i32 %i.al, 128
  br i1 %i.an, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = icmp ult i32 %i.al, 2048
  br i1 %i.ao, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = icmp ult i32 %i.al, 65536
  %..i = select i1 %i.ap, i64 3, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.01.0.i = phi i64 [ 2, %bb.n ], [ %..i, %bb.o ], [ 1, %bb.m ]
  %i.aq = load i64, ptr %i.g, align 8, !noalias !16
  %i.ar = add i64 %i.aq, %.sroa.01.0.i
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread23

bb.q:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.at = load i8, ptr %i.as, align 1, !noalias !16
  %i.au = load i8, ptr %i.l, align 8, !noalias !16
  %i.av = icmp eq i8 %i.at, %i.au
  %i.aw = add nuw i64 %i.u, 1                     ; 4 uses
  br i1 %i.av, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not41.i = icmp ult i64 %i.aw, %i.t
  br i1 %.not41.i, label %.preheader.split.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread23

bb.s:                                             ; preds = %bb.q
  store i64 %i.aw, ptr %i.g, align 8, !noalias !16
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread21

.preheader.split.i:                               ; preds = %bb.r, %bb.t
  %.sroa.08.0.i = phi i64 [ %i.ba, %bb.t ], [ %i.aw, %bb.r ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.08.0.i
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !16
  %i.az = icmp sgt i8 %i.ay, -65
  br i1 %i.az, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread23, label %bb.t

bb.t:                                             ; preds = %.preheader.split.i
  %i.ba = add nuw i64 %.sroa.08.0.i, 1            ; 2 uses
  %exitcond48.not.i = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond48.not.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread23, label %.preheader.split.i

bb.u:                                             ; preds = %bb.f
  %i.bb = load i64, ptr %i.h, align 8, !noalias !16
  %i.bc = icmp eq i64 %i.bb, -1
  %i.bd = load ptr, ptr %i.e, align 8, !noalias !16
  %i.be = load ptr, ptr %i.i, align 8, !noalias !16
  %i.bf = load i64, ptr %i.j, align 8, !noalias !16
  call void @_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.g, ptr %i.bd, i64 %i.w, ptr %i.be, i64 %i.bf, i1 zeroext %i.bc) #22
  %i.bg = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.v, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit

bb.v:                                             ; preds = %bb.u
  %i.bi = load i64, ptr %i.k, align 8, !alias.scope !16 ; 2 uses
  %i.bj = load ptr, ptr %i.e, align 8, !noalias !16
  %i.bk = load i64, ptr %i.f, align 8, !noalias !16 ; 4 uses
  %.not.i = icmp ult i64 %i.bi, %i.bk
  br i1 %.not.i, label %.preheader44.split.i, label %.loopexit45.i

.preheader44.split.i:                             ; preds = %bb.v, %bb.w
  %.sroa.013.0.i = phi i64 [ %i.bq, %bb.w ], [ %i.bi, %bb.v ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.013.0.i
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !16
  %i.bn = icmp sgt i8 %i.bm, -65
  br i1 %i.bn, label %.loopexit45.i, label %bb.w

.loopexit45.i:                                    ; preds = %bb.w, %.preheader44.split.i, %bb.v
  %.sroa.018.0.i = phi i64 [ %i.bk, %bb.v ], [ %.sroa.013.0.i, %.preheader44.split.i ], [ %i.bk, %bb.w ] ; 2 uses
  %i.bo = load i64, ptr %i.d, align 8, !noalias !16
  %i.bp = call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCsiOEEQt9hBE2_17pyo3_build_config(i64 %.sroa.018.0.i, i64 %i.bo) #22, !noalias !16
  store i64 %i.bp, ptr %i.d, align 8, !noalias !16
  store i64 %.sroa.018.0.i, ptr %i.k, align 8, !alias.scope !16
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit

bb.w:                                             ; preds = %.preheader44.split.i
  %i.bq = add nuw i64 %.sroa.013.0.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bq, %i.bk
  br i1 %exitcond.not.i, label %.loopexit45.i, label %.preheader44.split.i

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread21: ; preds = %bb.j, %bb.k, %bb.s
  %storemerge109.a = phi i64 [ %i.u, %bb.s ], [ %i.ac, %bb.k ], [ %i.ac, %bb.j ]
  %storemerge108 = phi i64 [ %i.aw, %bb.s ], [ %i.ac, %bb.k ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit26

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread23: ; preds = %.preheader.split.i, %bb.t, %bb.r, %bb.p
  %storemerge106 = phi i64 [ %i.ac, %bb.p ], [ %i.u, %bb.r ], [ %i.u, %bb.t ], [ %i.u, %.preheader.split.i ]
  %storemerge = phi i64 [ %i.ar, %bb.p ], [ %i.t, %bb.r ], [ %.sroa.08.0.i, %.preheader.split.i ], [ %i.t, %bb.t ] ; 2 uses
  store i64 %storemerge, ptr %i.g, align 8, !noalias !16
  store i64 %storemerge106, ptr %i.m, align 8, !alias.scope !16
  store i64 %storemerge, ptr %i.k, align 8, !alias.scope !16
  store i64 1, ptr %i.b, align 8, !alias.scope !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %thread-pre-split

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %bb.u, %.loopexit45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  switch i64 %i.bg, label %.loopexit [
    i64 0, label %.loopexit26.loopexit
    i64 1, label %thread-pre-split
    i64 2, label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit
  ]

bb.x:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bs = load i64, ptr %i.br, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 8            ; 3 uses
  %.not = icmp ult i64 %i.bu, %i.bs
  br i1 %.not, label %bb.z, label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.y:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8            ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8            ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8            ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8            ; 14 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 12 uses
  %i.ci = add i64 %i.cg, -1                       ; 3 uses
  %i.cj = load i64, ptr %i.ch, align 8            ; 3 uses
  %i.ck = add i64 %i.ci, %i.cj                    ; 3 uses
  %i.cl = icmp ult i64 %i.ck, %i.cc               ; 2 uses
  br i1 %i.by, label %bb.am, label %bb.ac

.loopexit26.loopexit:                             ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit
  %.pre = load i64, ptr %i.m, align 8
  %.pre82 = load i64, ptr %i.k, align 8
  br label %.loopexit26

.loopexit26:                                      ; preds = %.loopexit26.loopexit, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread21
  %i.cm = phi i64 [ %.pre82, %.loopexit26.loopexit ], [ %storemerge108, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread21 ]
  %i.cn = phi i64 [ %.pre, %.loopexit26.loopexit ], [ %storemerge109.a, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread21 ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cn, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cm, ptr %i.cp, align 8
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread, %.preheader29.preheader._crit_edge, %._crit_edge.i7, %._crit_edge163, %._crit_edge.i, %bb.x, %bb.aa, %bb.ab, %.loopexit26
  %storemerge.i.sink = phi i64 [ 0, %bb.x ], [ 1, %._crit_edge163 ], [ 1, %bb.aa ], [ 0, %bb.ab ], [ 1, %.loopexit26 ], [ 1, %.preheader29.preheader._crit_edge ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i7 ], [ 0, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread ], [ 0, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.z:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = load i8, ptr %i.cs, align 8
  %i.cu = sub nuw i64 %i.bs, %i.bu
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.bu
  %i.cw = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchrCsiOEEQt9hBE2_17pyo3_build_config(i8 %i.ct, ptr %i.cv, i64 %i.cu) #22 ; 2 uses
  %i.cx = extractvalue { i64, i64 } %i.cw, 0
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cz = extractvalue { i64, i64 } %i.cw, 1
  %i.da = load i64, ptr %i.bt, align 8
  %i.db = add i64 %i.da, %i.cz                    ; 2 uses
  %i.dc = add i64 %i.db, 1                        ; 2 uses
  store i64 %i.dc, ptr %i.bt, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.db, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dc, ptr %i.de, align 8
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.ab:                                            ; preds = %bb.z
  store i64 %i.bs, ptr %i.bt, align 8
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.ac:                                            ; preds = %bb.y
  br i1 %i.cl, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ac
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.ad

._crit_edge.i:                                    ; preds = %.sink.split.i, %bb.ac
  store i64 %i.cc, ptr %i.ch, align 8
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.ad:                                            ; preds = %.sink.split.i, %.lr.ph.i
  %i.dh = phi i64 [ %i.bx, %.lr.ph.i ], [ %.sink.i, %.sink.split.i ]
  %i.di = phi i64 [ %i.ck, %.lr.ph.i ], [ %i.dw, %.sink.split.i ]
  %i.dj = phi i64 [ %i.cj, %.lr.ph.i ], [ %.ph.i, %.sink.split.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.di
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = load i64, ptr %i.df, align 8
  %i.dn = and i8 %i.dl, 63
  %i.do = zext nneg i8 %i.dn to i64
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dp, %i.dm
  %.not.i3 = icmp eq i64 %i.dq, 0
  br i1 %.not.i3, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dr = add i64 %i.dj, %i.cg                    ; 2 uses
  store i64 %i.dr, ptr %i.ch, align 8
  br label %.sink.split.i

bb.af:                                            ; preds = %bb.ad
  %i.ds = load i64, ptr %i.bv, align 8
  %i.dt = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCsiOEEQt9hBE2_17pyo3_build_config(i64 %i.ds, i64 %i.dh) #22 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 %i.cg)
  %exitcond.not.i6158.not = icmp ult i64 %i.dt, %i.cg
  br i1 %exitcond.not.i6158.not, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.af
  %i.du = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.dv = getelementptr i8, ptr %i.ca, i64 %i.du
  br label %.lr.ph

.sink.split.i:                                    ; preds = %bb.al, %bb.ak, %bb.ae
  %.sink.i = phi i64 [ 0, %bb.al ], [ %i.eq, %bb.ak ], [ 0, %bb.ae ] ; 2 uses
  %.ph.i = phi i64 [ %i.ey, %bb.al ], [ %i.ep, %bb.ak ], [ %i.dr, %bb.ae ] ; 2 uses
  store i64 %.sink.i, ptr %i.bw, align 8
  %i.dw = add i64 %.ph.i, %i.ci                   ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.cc
  br i1 %i.dx, label %bb.ad, label %._crit_edge.i

bb.ag:                                            ; preds = %.lr.ph
  %exitcond.not.i6 = icmp eq i64 %i.er, %umax.i
  br i1 %exitcond.not.i6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ag, %bb.af
  %i.dy = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.dz = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.ea = icmp ult i64 %i.dy, %i.dz
  br i1 %i.ea, label %.lr.ph162, label %._crit_edge163

bb.ah:                                            ; preds = %bb.ai
  %i.eb = icmp ult i64 %i.dy, %i.eg
  br i1 %i.eb, label %.lr.ph162, label %._crit_edge163

._crit_edge163:                                   ; preds = %._crit_edge, %bb.ah
  %i.ec = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.ed = add i64 %i.ec, %i.cg                    ; 2 uses
  store i64 %i.ed, ptr %i.ch, align 8
  store i64 0, ptr %i.bw, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ec, ptr %i.ee, align 8, !alias.scope !17
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ed, ptr %i.ef, align 8, !alias.scope !17
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

.lr.ph162:                                        ; preds = %._crit_edge, %bb.ah
  %.sroa.2.0.i160 = phi i64 [ %i.eg, %bb.ah ], [ %i.dz, %._crit_edge ]
  %i.eg = add i64 %.sroa.2.0.i160, -1             ; 6 uses
  %i.eh = icmp ult i64 %i.eg, %i.cg
  br i1 %i.eh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph162
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.eg
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.el = getelementptr i8, ptr %i.ca, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 %i.eg
  %i.en = load i8, ptr %i.em, align 1
  %.not17.i = icmp eq i8 %i.ej, %i.en
  br i1 %.not17.i, label %bb.ah, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph162
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.eg, i64 %i.cg, ptr nonnull align 8 @4) #25
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.eo = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.ep = add i64 %i.eo, %i.ek                    ; 2 uses
  store i64 %i.ep, ptr %i.ch, align 8
  %i.eq = sub i64 %i.cg, %i.eo
  br label %.sink.split.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ag
  %.sroa.02.0.i5159 = phi i64 [ %i.er, %bb.ag ], [ %i.dt, %.lr.ph.preheader ] ; 3 uses
  %i.er = add nuw i64 %.sroa.02.0.i5159, 1        ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.02.0.i5159
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = getelementptr i8, ptr %i.dv, i64 %.sroa.02.0.i5159
  %i.ev = load i8, ptr %i.eu, align 1
  %.not18.i = icmp eq i8 %i.et, %i.ev
  br i1 %.not18.i, label %bb.ag, label %bb.al

bb.al:                                            ; preds = %.lr.ph
  %i.ew = load i64, ptr %i.bv, align 8
  %i.ex = add i64 %i.du, %i.er
  %i.ey = sub i64 %i.ex, %i.ew                    ; 2 uses
  store i64 %i.ey, ptr %i.ch, align 8
  br label %.sink.split.i

bb.am:                                            ; preds = %bb.y
  br i1 %i.cl, label %.lr.ph.i9, label %._crit_edge.i7

.lr.ph.i9:                                        ; preds = %bb.am
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fb = load i64, ptr %i.ez, align 8
  br label %bb.an

._crit_edge.i7:                                   ; preds = %bb.aq, %bb.am
  store i64 %i.cc, ptr %i.ch, align 8
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.an:                                            ; preds = %bb.aq, %.lr.ph.i9
  %i.fc = phi i64 [ %i.ck, %.lr.ph.i9 ], [ %i.fn, %bb.aq ]
  %i.fd = phi i64 [ %i.cj, %.lr.ph.i9 ], [ %.sink, %bb.aq ] ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fc
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = and i8 %i.ff, 63
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = and i64 %i.fi, %i.fb
  %.not.i10 = icmp eq i64 %i.fj, 0
  br i1 %.not.i10, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fk = add i64 %i.fd, %i.cg
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.fl = load i64, ptr %i.bv, align 8            ; 7 uses
  %umax.i12 = tail call i64 @llvm.umax.i64(i64 %i.fl, i64 %i.cg)
  %i.fm = getelementptr i8, ptr %i.ca, i64 %i.fd
  %exitcond.not.i14165.not = icmp ult i64 %i.fl, %i.cg
  br i1 %exitcond.not.i14165.not, label %.lr.ph168, label %.preheader29.preheader

bb.aq:                                            ; preds = %bb.au, %7, %bb.ao
  %.sink = phi i64 [ %i.ga, %bb.au ], [ %9, %7 ], [ %i.fk, %bb.ao ] ; 3 uses
  store i64 %.sink, ptr %i.ch, align 8
  %i.fn = add i64 %.sink, %i.ci                   ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.cc
  br i1 %i.fo, label %bb.an, label %._crit_edge.i7

bb.ar:                                            ; preds = %.lr.ph168
  %exitcond.not.i14 = icmp eq i64 %i.fu, %umax.i12
  br i1 %exitcond.not.i14, label %.preheader29.preheader, label %.lr.ph168

.preheader29.preheader:                           ; preds = %bb.ar, %bb.ap
  %i.fp = add i64 %i.fl, -1
  %.first_iter = icmp ult i64 %i.fp, %i.cg
  %2 = getelementptr i8, ptr %i.ca, i64 %i.fd
  %.not24169 = icmp eq i64 %i.fl, 0
  br i1 %.not24169, label %.preheader29.preheader._crit_edge, label %.lr.ph171

.preheader29:                                     ; preds = %bb.as
  %.not24.a = icmp eq i64 %i.fs, 0
  br i1 %.not24.a, label %.preheader29.preheader._crit_edge, label %.lr.ph171

.preheader29.preheader._crit_edge:                ; preds = %.preheader29.preheader, %.preheader29
  %3 = add i64 %i.fd, %i.cg                       ; 2 uses
  store i64 %3, ptr %i.ch, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fd, ptr %i.fq, align 8, !alias.scope !18
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.fr, align 8, !alias.scope !18
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

.lr.ph171:                                        ; preds = %.preheader29.preheader, %.preheader29
  %.sroa.2.0.i16170 = phi i64 [ %i.fs, %.preheader29 ], [ %i.fl, %.preheader29.preheader ]
  %i.fs = add i64 %.sroa.2.0.i16170, -1           ; 5 uses
  br i1 %.first_iter, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph171
  %4 = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.fs
  %5 = load i8, ptr %4, align 1
  %i.ft = getelementptr i8, ptr %2, i64 %i.fs
  %6 = load i8, ptr %i.ft, align 1
  %.not17.i17 = icmp eq i8 %5, %6
  br i1 %.not17.i17, label %.preheader29, label %7

bb.at:                                            ; preds = %.lr.ph171
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.fs, i64 %i.cg, ptr nonnull align 8 @4) #25
  unreachable

7:                                                ; preds = %bb.as
  %8 = load i64, ptr %i.fa, align 8
  %9 = add i64 %8, %i.fd
  br label %bb.aq

.lr.ph168:                                        ; preds = %bb.ap, %bb.ar
  %.sroa.02.0.i13166 = phi i64 [ %i.fu, %bb.ar ], [ %i.fl, %bb.ap ] ; 3 uses
  %i.fu = add nuw i64 %.sroa.02.0.i13166, 1       ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.02.0.i13166
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = getelementptr i8, ptr %i.fm, i64 %.sroa.02.0.i13166
  %i.fy = load i8, ptr %i.fx, align 1
  %.not18.i15 = icmp eq i8 %i.fw, %i.fy
  br i1 %.not18.i15, label %bb.ar, label %bb.au

bb.au:                                            ; preds = %.lr.ph168
  %i.fz = sub i64 %i.fu, %i.fl
  %i.ga = add i64 %i.fz, %i.fd
  br label %bb.aq
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher8haystackCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvYINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @_RNvMs4_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments23as_statically_known_strCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a) #22 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 4 uses
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs73YwgZoc6jV_9addr2line(ptr align 8 %0, i64 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not.i.i.i.i = icmp samesign eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsiOEEQt9hBE2_17pyo3_build_config.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull readonly align 1 %i.d, i64 %i.e, i1 false)
  br label %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsiOEEQt9hBE2_17pyo3_build_config.exit

_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %bb.b, %bb.c
  %i.k = load i64, ptr %i.f, align 8
  %i.l = add i64 %i.k, %i.e
  store i64 %i.l, ptr %i.f, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = call ptr @_RINvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, ptr %i.m, ptr %i.n)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsiOEEQt9hBE2_17pyo3_build_config.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsiOEEQt9hBE2_17pyo3_build_config.exit ], [ %i.o, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsiOEEQt9hBE2_17pyo3_build_config.exit, %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = tail call { i64, i32 } @_RNvXs4_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a) #22 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %.not.i = icmp eq i32 %i.g, -1
  br i1 %.not.i, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsiOEEQt9hBE2_17pyo3_build_config.exit.thread, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsiOEEQt9hBE2_17pyo3_build_config.exit

_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = tail call zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.c, i32 %i.g) #22
  br i1 %i.j, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsiOEEQt9hBE2_17pyo3_build_config.exit
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = extractvalue { i64, i32 } %i.f, 0        ; 2 uses
  %i.p = add i64 %i.o, %i.m
  %i.q = add i64 %i.n, %i.l
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8
  br label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsiOEEQt9hBE2_17pyo3_build_config.exit.thread

_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsiOEEQt9hBE2_17pyo3_build_config.exit.thread: ; preds = %bb.b, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit, %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = tail call { i64, i32 } @_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a) #22 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %.not.i = icmp eq i32 %i.g, -1
  br i1 %.not.i, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit

_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = tail call zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.c, i32 %i.g) #22
  br i1 %i.j, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = extractvalue { i64, i32 } %i.f, 0        ; 2 uses
  %i.p = add i64 %i.o, %i.m
  %i.q = add i64 %i.n, %i.l
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8
  br label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread

_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread: ; preds = %bb.b, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCsexYYUdYSQU6_5alloc3vecINtBJ_3VecppE8dedup_by13FillGapOnDropNtNtCsG258MDvU3F_3std4path7PathBufNtNtBL_5alloc6GlobalEECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCsG258MDvU3F_3std4path7PathBufENCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_22find_all_sysconfigdatas_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCsG258MDvU3F_3std4path7PathBufENCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_22find_all_sysconfigdatas_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2f_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCsG258MDvU3F_3std4path7PathBufENCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirB1N_Es0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2t_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCsG258MDvU3F_3std4path7PathBufENCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirB1N_Es0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2t_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCsG258MDvU3F_3std4path7PathBufENCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirRB1N_Es0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2t_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCsG258MDvU3F_3std4path7PathBufENCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirRB1N_Es0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2t_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_0
