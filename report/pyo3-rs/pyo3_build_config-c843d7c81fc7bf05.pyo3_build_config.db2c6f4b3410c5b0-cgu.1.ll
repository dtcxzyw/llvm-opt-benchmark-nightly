Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_build_config-c843d7c81fc7bf05.pyo3_build_config.db2c6f4b3410c5b0-cgu.1?download=true
inline.NumInlined: 48
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_inCsiOEEQt9hBE2_17pyo3_build_config:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.h

bb.x:                                             ; preds = %bb.w, %._crit_edge.i, %bb.v
  %.sroa.0.0.i.ph = phi i8 [ %i.ei, %bb.v ], [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.eo, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ep = trunc nuw i8 %.sroa.0.0.i.ph to i1
  br label %bb.c

bb.y:                                             ; preds = %bb.e
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1)
  %i.eq = icmp eq i32 %bcmp, 0
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15strip_suffix_ofCsiOEEQt9hBE2_17pyo3_build_config(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCs73YwgZoc6jV_9addr2line(ptr %2, i64 %3, ptr %0, i64 %1) ; 2 uses
  %i.b = sub i64 %3, %1
  %.sroa.3.0 = select i1 %i.a, i64 %i.b, i64 undef
  %.sroa.0.0 = select i1 %i.a, ptr %2, ptr null
  %i.c = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8
  switch i64 %i.c, label %.loopexit [
    i64 0, label %.preheader
    i64 1, label %bb.x
    i64 2, label %bb.y
  ]

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

.loopexit:                                        ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit, %bb.a
  unreachable

thread-pre-split:                                 ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread23, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit
  %.pr = load i64, ptr %1, align 8, !noalias !10
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %thread-pre-split
  %i.p = phi i64 [ %.pr, %thread-pre-split ], [ 0, %.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.p, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.n, align 2, !noalias !10
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.e, align 8, !noalias !10 ; 2 uses
  %i.t = load i64, ptr %i.f, align 8, !noalias !10 ; 5 uses
  %i.u = load i64, ptr %i.g, align 8, !noalias !10 ; 7 uses
  %.not40.i = icmp ult i64 %i.u, %i.t
  br i1 %.not40.i, label %bb.q, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.d, align 8, !noalias !10
  %i.w = load i64, ptr %i.f, align 8, !noalias !10 ; 2 uses
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread, label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.l, align 8, !noalias !10 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %i.aa = and i8 %i.y, 1
  %i.ab = xor i8 %i.aa, 1
  store i8 %i.ab, ptr %i.l, align 8, !noalias !10
  %i.ac = load i64, ptr %i.g, align 8, !noalias !10 ; 7 uses
  %i.ad = load ptr, ptr %i.e, align 8, !noalias !10 ; 2 uses
  %i.ae = load i64, ptr %i.f, align 8, !noalias !10 ; 3 uses
  %i.af = call { ptr, i64 } @_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsiOEEQt9hBE2_17pyo3_build_config(i64 %i.ac, ptr %i.ad, i64 %i.ae) #22, !noalias !10 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0      ; 3 uses
  %.not43.i = icmp eq ptr %i.ag, null
  br i1 %.not43.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  store ptr %i.ag, ptr %i.a, align 8, !noalias !10
  store ptr %i.ai, ptr %i.o, align 8, !noalias !10
  %i.aj = call { i32, i32 } @_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.a) #22, !noalias !10 ; 2 uses
  %i.ak = extractvalue { i32, i32 } %i.aj, 0
  %i.al = extractvalue { i32, i32 } %i.aj, 1      ; 3 uses
  %i.am = trunc i32 %i.ak to i1
  br i1 %i.am, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr %i.ad, i64 %i.ae, i64 %i.ac, i64 %i.ae, ptr nonnull align 8 @13) #25, !noalias !10
  unreachable

bb.j:                                             ; preds = %bb.h
  br i1 %i.z, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread21, label %bb.m

bb.k:                                             ; preds = %bb.h
  br i1 %i.z, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread21, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.n, align 2, !noalias !10
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
  %i.aq = load i64, ptr %i.g, align 8, !noalias !10
  %i.ar = add i64 %i.aq, %.sroa.01.0.i
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread23

bb.q:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.at = load i8, ptr %i.as, align 1, !noalias !10
  %i.au = load i8, ptr %i.l, align 8, !noalias !10
  %i.av = icmp eq i8 %i.at, %i.au
  %i.aw = add nuw i64 %i.u, 1                     ; 4 uses
  br i1 %i.av, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not41.i = icmp ult i64 %i.aw, %i.t
  br i1 %.not41.i, label %.preheader.preheader.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread23

bb.s:                                             ; preds = %bb.q
  store i64 %i.aw, ptr %i.g, align 8, !noalias !10
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread21

.preheader.preheader.i:                           ; preds = %bb.r, %bb.t
  %.sroa.08.0.i = phi i64 [ %i.ba, %bb.t ], [ %i.aw, %bb.r ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.08.0.i
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !10
  %i.az = icmp sgt i8 %i.ay, -65
  br i1 %i.az, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread23, label %bb.t

bb.t:                                             ; preds = %.preheader.preheader.i
  %i.ba = add i64 %.sroa.08.0.i, 1                ; 2 uses
  %exitcond50.not.i = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond50.not.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread23, label %.preheader.preheader.i

bb.u:                                             ; preds = %bb.f
  %i.bb = load i64, ptr %i.h, align 8, !noalias !10
  %i.bc = icmp eq i64 %i.bb, -1
  %i.bd = load ptr, ptr %i.e, align 8, !noalias !10
  %i.be = load ptr, ptr %i.i, align 8, !noalias !10
  %i.bf = load i64, ptr %i.j, align 8, !noalias !10
  call void @_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.g, ptr %i.bd, i64 %i.w, ptr %i.be, i64 %i.bf, i1 zeroext %i.bc) #22
  %i.bg = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.v, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit

bb.v:                                             ; preds = %bb.u
  %i.bi = load i64, ptr %i.k, align 8, !alias.scope !10 ; 2 uses
  %i.bj = load ptr, ptr %i.e, align 8, !noalias !10
  %i.bk = load i64, ptr %i.f, align 8, !noalias !10 ; 4 uses
  %.not.i = icmp ult i64 %i.bi, %i.bk
  br i1 %.not.i, label %.loopexit45.i.a, label %.preheader44.preheader.i

.loopexit45.i.a:                                  ; preds = %bb.v, %bb.w
  %.sroa.013.0.i = phi i64 [ %i.bl, %bb.w ], [ %i.bi, %bb.v ] ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.013.0.i
  %3 = load i8, ptr %2, align 1, !noalias !10
  %4 = icmp sgt i8 %3, -65
  br i1 %4, label %.preheader44.preheader.i, label %bb.w

.preheader44.preheader.i:                         ; preds = %bb.w, %.loopexit45.i.a, %bb.v
  %.sroa.018.0.i = phi i64 [ %i.bk, %bb.v ], [ %.sroa.013.0.i, %.loopexit45.i.a ], [ %i.bk, %bb.w ] ; 2 uses
  %5 = load i64, ptr %i.d, align 8, !noalias !10
  %6 = call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCsiOEEQt9hBE2_17pyo3_build_config(i64 %.sroa.018.0.i, i64 %5) #22, !noalias !10
  store i64 %6, ptr %i.d, align 8, !noalias !10
  store i64 %.sroa.018.0.i, ptr %i.k, align 8, !alias.scope !10
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit

bb.w:                                             ; preds = %.loopexit45.i.a
  %i.bl = add i64 %.sroa.013.0.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bl, %i.bk
  br i1 %exitcond.not.i, label %.preheader44.preheader.i, label %.loopexit45.i.a

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread21: ; preds = %bb.j, %bb.k, %bb.s
  %storemerge109 = phi i64 [ %i.u, %bb.s ], [ %i.ac, %bb.k ], [ %i.ac, %bb.j ]
  %storemerge108 = phi i64 [ %i.aw, %bb.s ], [ %i.ac, %bb.k ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit26

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread23: ; preds = %.preheader.preheader.i, %bb.t, %bb.r, %bb.p
  %storemerge106 = phi i64 [ %i.ac, %bb.p ], [ %i.u, %bb.r ], [ %i.u, %bb.t ], [ %i.u, %.preheader.preheader.i ]
  %storemerge = phi i64 [ %i.ar, %bb.p ], [ %i.t, %bb.r ], [ %.sroa.08.0.i, %.preheader.preheader.i ], [ %i.t, %bb.t ] ; 2 uses
  store i64 %storemerge, ptr %i.g, align 8, !noalias !10
  store i64 %storemerge106, ptr %i.m, align 8, !alias.scope !10
  store i64 %storemerge, ptr %i.k, align 8, !alias.scope !10
  store i64 1, ptr %i.b, align 8, !alias.scope !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %thread-pre-split

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %bb.u, %.preheader44.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  switch i64 %i.bg, label %.loopexit [
    i64 0, label %.loopexit26.loopexit
    i64 1, label %thread-pre-split
    i64 2, label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit
  ]

bb.x:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bn = load i64, ptr %i.bm, align 8            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8            ; 3 uses
  %.not = icmp ult i64 %i.bp, %i.bn
  br i1 %.not, label %bb.z, label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.y:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp eq i64 %i.bs, -1
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8            ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bx = load i64, ptr %i.bw, align 8            ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bz = load ptr, ptr %i.by, align 8            ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cb = load i64, ptr %i.ca, align 8            ; 14 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 12 uses
  %i.cd = add i64 %i.cb, -1                       ; 3 uses
  %i.ce = load i64, ptr %i.cc, align 8            ; 3 uses
  %i.cf = add i64 %i.cd, %i.ce                    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.bx               ; 2 uses
  br i1 %i.bt, label %bb.am, label %bb.ac

.loopexit26.loopexit:                             ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit
  %.pre = load i64, ptr %i.m, align 8
  %.pre82 = load i64, ptr %i.k, align 8
  br label %.loopexit26

.loopexit26:                                      ; preds = %.loopexit26.loopexit, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread21
  %i.ch = phi i64 [ %.pre82, %.loopexit26.loopexit ], [ %storemerge108, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread21 ]
  %i.ci = phi i64 [ %.pre, %.loopexit26.loopexit ], [ %storemerge109, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread21 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ch, ptr %i.ck, align 8
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread, %.preheader29.preheader._crit_edge, %._crit_edge.i7, %._crit_edge163, %._crit_edge.i, %bb.x, %bb.aa, %bb.ab, %.loopexit26
  %storemerge.i.sink = phi i64 [ 0, %bb.x ], [ 1, %._crit_edge163 ], [ 1, %bb.aa ], [ 0, %bb.ab ], [ 1, %.loopexit26 ], [ 1, %.preheader29.preheader._crit_edge ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i7 ], [ 0, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread ], [ 0, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiOEEQt9hBE2_17pyo3_build_config.exit ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.z:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.co = load i8, ptr %i.cn, align 8
  %i.cp = sub nuw i64 %i.bn, %i.bp
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.bp
  %i.cr = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchrCsiOEEQt9hBE2_17pyo3_build_config(i8 %i.co, ptr %i.cq, i64 %i.cp) #22 ; 2 uses
  %i.cs = extractvalue { i64, i64 } %i.cr, 0
  %i.ct = trunc nuw i64 %i.cs to i1
  br i1 %i.ct, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cu = extractvalue { i64, i64 } %i.cr, 1
  %i.cv = load i64, ptr %i.bo, align 8
  %i.cw = add i64 %i.cv, %i.cu                    ; 2 uses
  %i.cx = add i64 %i.cw, 1                        ; 2 uses
  store i64 %i.cx, ptr %i.bo, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cw, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cx, ptr %i.cz, align 8
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.ab:                                            ; preds = %bb.z
  store i64 %i.bn, ptr %i.bo, align 8
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.ac:                                            ; preds = %bb.y
  br i1 %i.cg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.ad

._crit_edge.i:                                    ; preds = %.sink.split.i, %bb.ac
  store i64 %i.bx, ptr %i.cc, align 8
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.ad:                                            ; preds = %.sink.split.i, %.lr.ph.i
  %i.dc = phi i64 [ %i.bs, %.lr.ph.i ], [ %.sink.i, %.sink.split.i ]
  %i.dd = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dr, %.sink.split.i ]
  %i.de = phi i64 [ %i.ce, %.lr.ph.i ], [ %.ph.i, %.sink.split.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = load i64, ptr %i.da, align 8
  %i.di = and i8 %i.dg, 63
  %i.dj = zext nneg i8 %i.di to i64
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.dh
  %.not.i3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i3, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dm = add i64 %i.de, %i.cb                    ; 2 uses
  store i64 %i.dm, ptr %i.cc, align 8
  br label %.sink.split.i

bb.af:                                            ; preds = %bb.ad
  %i.dn = load i64, ptr %i.bq, align 8
  %i.do = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCsiOEEQt9hBE2_17pyo3_build_config(i64 %i.dn, i64 %i.dc) #22 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.do, i64 %i.cb)
  %exitcond.not.i6158.not = icmp ult i64 %i.do, %i.cb
  br i1 %exitcond.not.i6158.not, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.af
  %i.dp = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.dq = getelementptr i8, ptr %i.bv, i64 %i.dp
  br label %.lr.ph

.sink.split.i:                                    ; preds = %bb.al, %bb.ak, %bb.ae
  %.sink.i = phi i64 [ 0, %bb.al ], [ %i.el, %bb.ak ], [ 0, %bb.ae ] ; 2 uses
  %.ph.i = phi i64 [ %i.et, %bb.al ], [ %i.ek, %bb.ak ], [ %i.dm, %bb.ae ] ; 2 uses
  store i64 %.sink.i, ptr %i.br, align 8
  %i.dr = add i64 %.ph.i, %i.cd                   ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.bx
  br i1 %i.ds, label %bb.ad, label %._crit_edge.i

bb.ag:                                            ; preds = %.lr.ph
  %exitcond.not.i6 = icmp eq i64 %i.em, %umax.i
  br i1 %exitcond.not.i6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ag, %bb.af
  %i.dt = load i64, ptr %i.br, align 8            ; 2 uses
  %i.du = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.dv = icmp ult i64 %i.dt, %i.du
  br i1 %i.dv, label %.lr.ph162, label %._crit_edge163

bb.ah:                                            ; preds = %bb.ai
  %i.dw = icmp ult i64 %i.dt, %i.eb
  br i1 %i.dw, label %.lr.ph162, label %._crit_edge163

._crit_edge163:                                   ; preds = %._crit_edge, %bb.ah
  %i.dx = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.dy = add i64 %i.dx, %i.cb                    ; 2 uses
  store i64 %i.dy, ptr %i.cc, align 8
  store i64 0, ptr %i.br, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dx, ptr %i.dz, align 8, !alias.scope !13
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dy, ptr %i.ea, align 8, !alias.scope !13
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiOEEQt9hBE2_17pyo3_build_config.exit

.lr.ph162:                                        ; preds = %._crit_edge, %bb.ah
  %.sroa.2.0.i160 = phi i64 [ %i.eb, %bb.ah ], [ %i.du, %._crit_edge ]
  %i.eb = add i64 %.sroa.2.0.i160, -1             ; 6 uses
  %i.ec = icmp ult i64 %i.eb, %i.cb
  br i1 %i.ec, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph162
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.eg = getelementptr i8, ptr %i.bv, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 %i.eb
  %i.ei = load i8, ptr %i.eh, align 1
  %.not17.i = icmp eq i8 %i.ee, %i.ei
  br i1 %.not17.i, label %bb.ah, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph162
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.eb, i64 %i.cb, ptr nonnull align 8 @4) #25
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ej = load i64, ptr %i.db, align 8            ; 2 uses
  %i.ek = add i64 %i.ej, %i.ef                    ; 2 uses
  store i64 %i.ek, ptr %i.cc, align 8
  %i.el = sub i64 %i.cb, %i.ej
  br label %.sink.split.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ag
  %.sroa.02.0.i5159 = phi i64 [ %i.em, %bb.ag ], [ %i.do, %.lr.ph.preheader ] ; 3 uses
  %i.em = add i64 %.sroa.02.0.i5159, 1            ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.02.0.i5159
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = getelementptr i8, ptr %i.dq, i64 %.sroa.02.0.i5159
  %i.eq = load i8, ptr %i.ep, align 1
  %.not18.i = icmp eq i8 %i.eo, %i.eq
  br i1 %.not18.i, label %bb.ag, label %bb.al

bb.al:                                            ; preds = %.lr.ph
  %i.er = load i64, ptr %i.bq, align 8
  %i.es = add i64 %i.dp, %i.em
  %i.et = sub i64 %i.es, %i.er                    ; 2 uses
  store i64 %i.et, ptr %i.cc, align 8
end_hunk_0
