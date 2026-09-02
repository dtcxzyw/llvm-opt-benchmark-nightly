Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.3?download=true
inline.NumInlined: 72
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern12is_suffix_ofCsiHivYpkJ4Hu_2cc:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcherCsiHivYpkJ4Hu_2cc(ptr sret([104 x i8]) align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr sret([104 x i8]) align 8 %0, ptr %3, i64 %4, ptr %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15as_utf8_patternCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15strip_prefix_ofCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #3 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs1OFHugREOcC_9addr2line(ptr %2, i64 %3, ptr %0, i64 %1) ; 2 uses
  %i.b = sub nuw i64 %3, %1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.sroa.3.0 = select i1 %i.a, i64 %i.b, i64 undef
  %.sroa.0.0 = select i1 %i.a, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15strip_suffix_ofCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #3 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs1OFHugREOcC_9addr2line(ptr %2, i64 %3, ptr %0, i64 %1) ; 2 uses
  %i.b = sub i64 %3, %1
  %.sroa.3.0 = select i1 %i.a, i64 %i.b, i64 undef
  %.sroa.0.0 = select i1 %i.a, ptr %2, ptr null
  %i.c = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8
  switch i64 %i.c, label %.loopexit [
    i64 0, label %.preheader
    i64 1, label %bb.z
    i64 2, label %bb.aa
  ]

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

.loopexit:                                        ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit, %bb.a
  unreachable

thread-pre-split:                                 ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit
  %.pr = load i64, ptr %1, align 8, !noalias !30
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %thread-pre-split
  %i.p = phi i64 [ %.pr, %thread-pre-split ], [ 0, %.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.p, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.n, align 2, !noalias !30
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.sink.split.i, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.e, align 8, !noalias !30 ; 2 uses
  %i.t = load i64, ptr %i.f, align 8, !noalias !30 ; 5 uses
  %i.u = load i64, ptr %i.g, align 8, !noalias !30 ; 5 uses
  %.not40.i = icmp ult i64 %i.u, %i.t
  br i1 %.not40.i, label %bb.s, label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.d, align 8, !noalias !30
  %i.w = load i64, ptr %i.f, align 8, !noalias !30 ; 2 uses
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %.sink.split.i, label %bb.w

bb.g:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.m, align 8, !noalias !30 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %i.aa = and i8 %i.y, 1
  %i.ab = xor i8 %i.aa, 1
  store i8 %i.ab, ptr %i.m, align 8, !noalias !30
  %i.ac = load i64, ptr %i.g, align 8, !noalias !30 ; 9 uses
  %i.ad = load ptr, ptr %i.e, align 8, !noalias !30 ; 8 uses
  %i.ae = load i64, ptr %i.f, align 8, !noalias !30 ; 5 uses
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsiHivYpkJ4Hu_2cc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp ult i64 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.ag = icmp ne i64 %i.ac, %i.ae
  %.not43.i = icmp eq ptr %i.ad, null
  %or.cond.i = select i1 %i.ag, i1 true, i1 %.not43.i
  br i1 %or.cond.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsiHivYpkJ4Hu_2cc.exit.thread.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !30
  %i.aj = icmp slt i8 %i.ai, -64
  %.not43.old.i = icmp eq ptr %i.ad, null
  %or.cond47.i = select i1 %i.aj, i1 true, i1 %.not43.old.i
  br i1 %or.cond47.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsiHivYpkJ4Hu_2cc.exit.thread.i, label %bb.j

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsiHivYpkJ4Hu_2cc.exit.i: ; preds = %bb.g
  %.not43.old.old.i = icmp eq ptr %i.ad, null
  br i1 %.not43.old.old.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsiHivYpkJ4Hu_2cc.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsiHivYpkJ4Hu_2cc.exit.i, %bb.i, %.split.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store ptr %i.ak, ptr %i.a, align 8, !noalias !30
  store ptr %i.al, ptr %i.o, align 8, !noalias !30
  %i.am = call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a) #23, !noalias !30 ; 2 uses
  %i.an = extractvalue { i32, i32 } %i.am, 0
  %i.ao = extractvalue { i32, i32 } %i.am, 1      ; 3 uses
  %i.ap = trunc i32 %i.an to i1
  br i1 %i.ap, label %bb.k, label %bb.l

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsiHivYpkJ4Hu_2cc.exit.thread.i: ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsiHivYpkJ4Hu_2cc.exit.i, %bb.i, %.split.i.i
  %.lcssa5 = phi ptr [ null, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsiHivYpkJ4Hu_2cc.exit.i ], [ %i.ad, %bb.i ], [ %i.ad, %.split.i.i ]
  call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr %.lcssa5, i64 %i.ae, i64 %i.ac, i64 %i.ae, ptr nonnull align 8 @542) #24, !noalias !30
  unreachable

bb.k:                                             ; preds = %bb.j
  br i1 %i.z, label %bb.n, label %bb.o

bb.l:                                             ; preds = %bb.j
  br i1 %i.z, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.n, align 2, !noalias !30
  br label %.sink.split.i

bb.n:                                             ; preds = %bb.l, %bb.k
  store i64 %i.ac, ptr %i.k, align 8, !alias.scope !30
  store i64 %i.ac, ptr %i.l, align 8, !alias.scope !30
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.k
  %i.aq = icmp ult i32 %i.ao, 128
  br i1 %i.aq, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = icmp ult i32 %i.ao, 2048
  br i1 %i.ar, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = icmp ult i32 %i.ao, 65536
  %..i = select i1 %i.as, i64 3, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.01.0.i = phi i64 [ 2, %bb.p ], [ %..i, %bb.q ], [ 1, %bb.o ]
  %i.at = load i64, ptr %i.g, align 8, !noalias !30
  %i.au = add i64 %i.at, %.sroa.01.0.i            ; 2 uses
  store i64 %i.au, ptr %i.g, align 8, !noalias !30
  store i64 %i.ac, ptr %i.k, align 8, !alias.scope !30
  store i64 %i.au, ptr %i.l, align 8, !alias.scope !30
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.loopexit49.i, %.preheader.preheader.i, %bb.u, %bb.r, %bb.n, %bb.m, %bb.f, %bb.e, %bb.d
  %.sink.i = phi i64 [ 1, %.loopexit49.i ], [ 0, %bb.u ], [ 1, %.preheader.preheader.i ], [ 2, %bb.m ], [ 0, %bb.n ], [ 1, %bb.r ], [ 2, %bb.e ], [ 2, %bb.f ], [ 2, %bb.d ] ; 2 uses
  store i64 %.sink.i, ptr %i.b, align 8, !alias.scope !30
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit

bb.s:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.aw = load i8, ptr %i.av, align 1, !noalias !30
  %i.ax = load i8, ptr %i.m, align 8, !noalias !30
  %i.ay = icmp eq i8 %i.aw, %i.ax
  %i.az = add nuw i64 %i.u, 1                     ; 4 uses
  br i1 %i.ay, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not41.i = icmp ult i64 %i.az, %i.t
  br i1 %.not41.i, label %.loopexit.i.a, label %.preheader.preheader.i

bb.u:                                             ; preds = %bb.s
  store i64 %i.az, ptr %i.g, align 8, !noalias !30
  store i64 %i.u, ptr %i.k, align 8, !alias.scope !30
  store i64 %i.az, ptr %i.l, align 8, !alias.scope !30
  br label %.sink.split.i

.loopexit.i.a:                                    ; preds = %bb.t, %bb.v
  %.sroa.08.0.i = phi i64 [ %i.ba, %bb.v ], [ %i.az, %bb.t ] ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.08.0.i
  %3 = load i8, ptr %2, align 1, !noalias !30
  %4 = icmp sgt i8 %3, -65
  br i1 %4, label %.preheader.preheader.i, label %bb.v

.preheader.preheader.i:                           ; preds = %bb.v, %.loopexit.i.a, %bb.t
  %.sroa.02.0.i = phi i64 [ %i.t, %bb.t ], [ %.sroa.08.0.i, %.loopexit.i.a ], [ %i.t, %bb.v ] ; 2 uses
  store i64 %.sroa.02.0.i, ptr %i.g, align 8, !noalias !30
  store i64 %i.u, ptr %i.k, align 8, !alias.scope !30
  store i64 %.sroa.02.0.i, ptr %i.l, align 8, !alias.scope !30
  br label %.sink.split.i

bb.v:                                             ; preds = %.loopexit.i.a
  %i.ba = add i64 %.sroa.08.0.i, 1                ; 2 uses
  %exitcond54.not.i = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond54.not.i, label %.preheader.preheader.i, label %.loopexit.i.a

bb.w:                                             ; preds = %bb.f
  %i.bb = load i64, ptr %i.h, align 8, !noalias !30
  %i.bc = icmp eq i64 %i.bb, -1
  %i.bd = load ptr, ptr %i.e, align 8, !noalias !30
  %i.be = load ptr, ptr %i.i, align 8, !noalias !30
  %i.bf = load i64, ptr %i.j, align 8, !noalias !30
  call void @_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.g, ptr %i.bd, i64 %i.w, ptr %i.be, i64 %i.bf, i1 zeroext %i.bc) #23
  %i.bg = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.x, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit

bb.x:                                             ; preds = %bb.w
  %i.bi = load i64, ptr %i.k, align 8, !alias.scope !30
  %i.bj = load i64, ptr %i.l, align 8, !alias.scope !30 ; 2 uses
  %i.bk = load ptr, ptr %i.e, align 8, !noalias !30
  %i.bl = load i64, ptr %i.f, align 8, !noalias !30 ; 4 uses
  %.not.i = icmp ult i64 %i.bj, %i.bl
  br i1 %.not.i, label %.preheader48.split.i, label %.loopexit49.i

.preheader48.split.i:                             ; preds = %bb.x, %bb.y
  %.sroa.013.0.i = phi i64 [ %i.bo, %bb.y ], [ %i.bj, %bb.x ] ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.013.0.i
  %6 = load i8, ptr %5, align 1
  %7 = icmp sgt i8 %6, -65
  br i1 %7, label %.loopexit49.i, label %bb.y

.loopexit49.i:                                    ; preds = %bb.y, %.preheader48.split.i, %bb.x
  %.sroa.018.0.i = phi i64 [ %i.bl, %bb.x ], [ %.sroa.013.0.i, %.preheader48.split.i ], [ %i.bl, %bb.y ] ; 2 uses
  %i.bm = load i64, ptr %i.d, align 8, !noalias !30
  %i.bn = call i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3maxCs3U9i7nQCKwt_15find_msvc_tools(i64 %.sroa.018.0.i, i64 %i.bm) #23
  store i64 %i.bn, ptr %i.d, align 8, !noalias !30
  store i64 %i.bi, ptr %i.k, align 8, !alias.scope !30
  store i64 %.sroa.018.0.i, ptr %i.l, align 8, !alias.scope !30
  br label %.sink.split.i

bb.y:                                             ; preds = %.preheader48.split.i
  %i.bo = add i64 %.sroa.013.0.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bo, %i.bl
  br i1 %exitcond.not.i, label %.loopexit49.i, label %.preheader48.split.i

_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit: ; preds = %.sink.split.i, %bb.w
  %i.bp = phi i64 [ %.sink.i, %.sink.split.i ], [ %i.bg, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  switch i64 %i.bp, label %.loopexit [
    i64 0, label %bb.ab
    i64 1, label %thread-pre-split
    i64 2, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.br = load i64, ptr %i.bq, align 8            ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8            ; 3 uses
  %.not = icmp ult i64 %i.bt, %i.br
  br i1 %.not, label %bb.af, label %bb.ae

bb.aa:                                            ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = icmp eq i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cf = load i64, ptr %i.ce, align 8            ; 2 uses
  br i1 %i.bx, label %bb.aj, label %bb.ai

bb.ab:                                            ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load <2 x i64>, ptr %i.k, align 8
  store <2 x i64> %i.ch, ptr %i.cg, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit
  store i64 0, ptr %0, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ai, %bb.aj, %bb.ag, %bb.ah, %bb.ab, %bb.ac, %bb.ae
  ret void

bb.ae:                                            ; preds = %bb.z
  store i64 0, ptr %0, align 8
  br label %bb.ad

bb.af:                                            ; preds = %bb.z
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load i8, ptr %i.ck, align 8
  %i.cm = sub nuw i64 %i.br, %i.bt
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.bt
  %i.co = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCsiHivYpkJ4Hu_2cc(i8 %i.cl, ptr %i.cn, i64 %i.cm) #23 ; 2 uses
  %i.cp = extractvalue { i64, i64 } %i.co, 0
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cr = extractvalue { i64, i64 } %i.co, 1
  %i.cs = load i64, ptr %i.bs, align 8
  %i.ct = add i64 %i.cs, %i.cr                    ; 2 uses
  %i.cu = add i64 %i.ct, 1                        ; 2 uses
  store i64 %i.cu, ptr %i.bs, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ct, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cu, ptr %i.cw, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ad

bb.ah:                                            ; preds = %bb.af
  store i64 %i.br, ptr %i.bs, align 8
  store i64 0, ptr %0, align 8
  br label %bb.ad

bb.ai:                                            ; preds = %bb.aa
  tail call void @_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.bu, ptr %i.bz, i64 %i.cb, ptr %i.cd, i64 %i.cf, i1 zeroext false) #23
  br label %bb.ad

bb.aj:                                            ; preds = %bb.aa
  tail call void @_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.bu, ptr %i.bz, i64 %i.cb, ptr %i.cd, i64 %i.cf, i1 zeroext true) #23
  br label %bb.ad
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher8haystackCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvYAcj2_NtNtNtCs3oUPovFnLWP_4core3str7pattern7Pattern15as_utf8_patternCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readnone align 4 captures(none) %1) unnamed_addr #12 {
bb.a:
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherAcj2_ENtB5_8Searcher10next_matchCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  call void @_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1) #23
  %i.b = load i64, ptr %i.a, align 8
  switch i64 %i.b, label %bb.c [
    i64 0, label %bb.d
    i64 2, label %.loopexit
    i64 1, label %bb.b
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x i64>, ptr %i.c, align 8
  store <2 x i64> %i.e, ptr %i.d, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %storemerge = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher10next_matchCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit, %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = tail call { i64, i32 } @_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a) #23 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %.not.i = icmp eq i32 %i.g, -1
  br i1 %.not.i, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit.thread, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit

_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = tail call zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsiHivYpkJ4Hu_2cc(ptr nonnull %i.c, i32 %i.g) #23
  br i1 %i.j, label %bb.c, label %bb.b

bb.c:                                             ; preds = %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit
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
  br label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit.thread

_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit.thread: ; preds = %bb.b, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsiHivYpkJ4Hu_2cc.exit, %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = tail call { i64, i32 } @_RNvXs4_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a) #23 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %.not.i = icmp eq i32 %i.g, -1
  br i1 %.not.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsiHivYpkJ4Hu_2cc.exit.thread, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsiHivYpkJ4Hu_2cc.exit

end_hunk_0
