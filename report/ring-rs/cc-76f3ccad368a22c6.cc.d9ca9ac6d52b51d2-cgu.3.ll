Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.3?download=true
inline.NumInlined: 72
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXss_NtNtCs3oUPovFnLWP_4core3str7patternRReNtB5_7Pattern15is_contained_inCsiHivYpkJ4Hu_2cc:bb.a
  br i1 %or.cond3.i.i, label %._crit_edge.i.i, label %.lr.ph60.i.i

bb.u:                                             ; preds = %.lr.ph60.i.i
  %i.cr = call zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.d, i64 %.sroa.06.159.i.i, i16 %i.cl, i1 zeroext false) #23
  %i.cs = zext i1 %i.cr to i8
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.ct = call zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.d, i64 %i.ci, i16 %i.cj, i1 zeroext %.lcssa.i.i) #23
  %i.cu = zext i1 %i.ct to i8
  %i.cv = or i8 %.sroa.014.3.lcssa.i.i, %i.cu
  br label %bb.x

bb.w:                                             ; preds = %bb.j
  store ptr %1, ptr %i.g, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.p, ptr %i.cx, align 8
  %i.cy = call zeroext i1 @_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.k) #23
  %i.cz = zext i1 %i.cy to i8
  store i8 %i.cz, ptr %i.a, align 1
  %i.da = call zeroext i1 @_RNvXs9_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB5_11ControlFlowuENtNtB9_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull %i.a, ptr nonnull @531) #23
  %i.db = zext i1 %i.da to i8
  br label %bb.x

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containsCsiHivYpkJ4Hu_2cc.exit.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.g

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i
  %.sroa.0.0.i.ph.i = phi i8 [ %i.cv, %bb.v ], [ %.sroa.014.3.lcssa.i.i, %._crit_edge.i.i ], [ %i.db, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dc = trunc nuw i8 %.sroa.0.0.i.ph.i to i1
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCsiHivYpkJ4Hu_2cc.exit

bb.y:                                             ; preds = %bb.d
  %bcmp.i = tail call i32 @bcmp(ptr %i.n, ptr %1, i64 %2)
  %i.dd = icmp eq i32 %bcmp.i, 0
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCsiHivYpkJ4Hu_2cc.exit

_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.d, %bb.f, %bb.g, %bb.x, %bb.y
  %.sroa.0.0.i = phi i1 [ true, %bb.a ], [ %i.v, %bb.f ], [ %i.dc, %bb.x ], [ %i.x, %bb.g ], [ %i.dd, %bb.y ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern12is_prefix_ofCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #3 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs1OFHugREOcC_9addr2line(ptr %2, i64 %3, ptr %0, i64 %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern12is_suffix_ofCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #3 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs1OFHugREOcC_9addr2line(ptr %2, i64 %3, ptr %0, i64 %1)
  ret i1 %i.a
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
  %.pr = load i64, ptr %1, align 8, !noalias !32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %thread-pre-split
  %i.p = phi i64 [ %.pr, %thread-pre-split ], [ 0, %.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.p, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.n, align 2, !noalias !32
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.sink.split.i, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.e, align 8, !noalias !32 ; 2 uses
  %i.t = load i64, ptr %i.f, align 8, !noalias !32 ; 5 uses
  %i.u = load i64, ptr %i.g, align 8, !noalias !32 ; 5 uses
  %.not40.i = icmp ult i64 %i.u, %i.t
  br i1 %.not40.i, label %bb.s, label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.d, align 8, !noalias !32
  %i.w = load i64, ptr %i.f, align 8, !noalias !32 ; 2 uses
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %.sink.split.i, label %bb.w

bb.g:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.m, align 8, !noalias !32 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %i.aa = and i8 %i.y, 1
  %i.ab = xor i8 %i.aa, 1
  store i8 %i.ab, ptr %i.m, align 8, !noalias !32
  %i.ac = load i64, ptr %i.g, align 8, !noalias !32 ; 9 uses
  %i.ad = load ptr, ptr %i.e, align 8, !noalias !32 ; 8 uses
  %i.ae = load i64, ptr %i.f, align 8, !noalias !32 ; 5 uses
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
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !32
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
  store ptr %i.ak, ptr %i.a, align 8, !noalias !32
  store ptr %i.al, ptr %i.o, align 8, !noalias !32
  %i.am = call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a) #23, !noalias !32 ; 2 uses
  %i.an = extractvalue { i32, i32 } %i.am, 0
  %i.ao = extractvalue { i32, i32 } %i.am, 1      ; 3 uses
  %i.ap = trunc i32 %i.an to i1
  br i1 %i.ap, label %bb.k, label %bb.l

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsiHivYpkJ4Hu_2cc.exit.thread.i: ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsiHivYpkJ4Hu_2cc.exit.i, %bb.i, %.split.i.i
  %.lcssa5 = phi ptr [ null, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsiHivYpkJ4Hu_2cc.exit.i ], [ %i.ad, %bb.i ], [ %i.ad, %.split.i.i ]
  call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr %.lcssa5, i64 %i.ae, i64 %i.ac, i64 %i.ae, ptr nonnull align 8 @542) #24, !noalias !32
  unreachable

bb.k:                                             ; preds = %bb.j
  br i1 %i.z, label %bb.n, label %bb.o

bb.l:                                             ; preds = %bb.j
  br i1 %i.z, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.n, align 2, !noalias !32
  br label %.sink.split.i

bb.n:                                             ; preds = %bb.l, %bb.k
  store i64 %i.ac, ptr %i.k, align 8, !alias.scope !32
  store i64 %i.ac, ptr %i.l, align 8, !alias.scope !32
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
  %i.at = load i64, ptr %i.g, align 8, !noalias !32
  %i.au = add i64 %i.at, %.sroa.01.0.i            ; 2 uses
  store i64 %i.au, ptr %i.g, align 8, !noalias !32
  store i64 %i.ac, ptr %i.k, align 8, !alias.scope !32
  store i64 %i.au, ptr %i.l, align 8, !alias.scope !32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.loopexit49.i, %.loopexit.i, %bb.u, %bb.r, %bb.n, %bb.m, %bb.f, %bb.e, %bb.d
  %.sink.i = phi i64 [ 1, %.loopexit49.i ], [ 0, %bb.u ], [ 1, %.loopexit.i ], [ 2, %bb.m ], [ 0, %bb.n ], [ 1, %bb.r ], [ 2, %bb.e ], [ 2, %bb.f ], [ 2, %bb.d ] ; 2 uses
  store i64 %.sink.i, ptr %i.b, align 8, !alias.scope !32
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit

bb.s:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.aw = load i8, ptr %i.av, align 1, !noalias !32
  %i.ax = load i8, ptr %i.m, align 8, !noalias !32
  %i.ay = icmp eq i8 %i.aw, %i.ax
  %i.az = add nuw i64 %i.u, 1                     ; 4 uses
  br i1 %i.ay, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not41.i = icmp ult i64 %i.az, %i.t
  br i1 %.not41.i, label %.preheader.split.i, label %.loopexit.i

bb.u:                                             ; preds = %bb.s
  store i64 %i.az, ptr %i.g, align 8, !noalias !32
  store i64 %i.u, ptr %i.k, align 8, !alias.scope !32
  store i64 %i.az, ptr %i.l, align 8, !alias.scope !32
  br label %.sink.split.i

.preheader.split.i:                               ; preds = %bb.t, %bb.v
  %.sroa.08.0.i = phi i64 [ %i.bd, %bb.v ], [ %i.az, %bb.t ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.08.0.i
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !32
  %i.bc = icmp sgt i8 %i.bb, -65
  br i1 %i.bc, label %.loopexit.i, label %bb.v

.loopexit.i:                                      ; preds = %bb.v, %.preheader.split.i, %bb.t
  %.sroa.02.0.i = phi i64 [ %i.t, %bb.t ], [ %.sroa.08.0.i, %.preheader.split.i ], [ %i.t, %bb.v ] ; 2 uses
  store i64 %.sroa.02.0.i, ptr %i.g, align 8, !noalias !32
  store i64 %i.u, ptr %i.k, align 8, !alias.scope !32
  store i64 %.sroa.02.0.i, ptr %i.l, align 8, !alias.scope !32
  br label %.sink.split.i

bb.v:                                             ; preds = %.preheader.split.i
  %i.bd = add i64 %.sroa.08.0.i, 1                ; 2 uses
  %exitcond52.not.i = icmp eq i64 %i.bd, %i.t
  br i1 %exitcond52.not.i, label %.loopexit.i, label %.preheader.split.i

bb.w:                                             ; preds = %bb.f
  %i.be = load i64, ptr %i.h, align 8, !noalias !32
  %i.bf = icmp eq i64 %i.be, -1
  %i.bg = load ptr, ptr %i.e, align 8, !noalias !32
  %i.bh = load ptr, ptr %i.i, align 8, !noalias !32
  %i.bi = load i64, ptr %i.j, align 8, !noalias !32
  call void @_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.g, ptr %i.bg, i64 %i.w, ptr %i.bh, i64 %i.bi, i1 zeroext %i.bf) #23
  %i.bj = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.x, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit

bb.x:                                             ; preds = %bb.w
  %i.bl = load i64, ptr %i.k, align 8, !alias.scope !32
  %i.bm = load i64, ptr %i.l, align 8, !alias.scope !32 ; 2 uses
  %i.bn = load ptr, ptr %i.e, align 8, !noalias !32
  %i.bo = load i64, ptr %i.f, align 8, !noalias !32 ; 4 uses
  %.not.i = icmp ult i64 %i.bm, %i.bo
  br i1 %.not.i, label %.preheader48.split.i, label %.loopexit49.i

.preheader48.split.i:                             ; preds = %bb.x, %bb.y
  %.sroa.013.0.i = phi i64 [ %i.bu, %bb.y ], [ %i.bm, %bb.x ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.013.0.i
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = icmp sgt i8 %i.bq, -65
  br i1 %i.br, label %.loopexit49.i, label %bb.y

.loopexit49.i:                                    ; preds = %bb.y, %.preheader48.split.i, %bb.x
  %.sroa.018.0.i = phi i64 [ %i.bo, %bb.x ], [ %.sroa.013.0.i, %.preheader48.split.i ], [ %i.bo, %bb.y ] ; 2 uses
  %i.bs = load i64, ptr %i.d, align 8, !noalias !32
  %i.bt = call i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3maxCs3U9i7nQCKwt_15find_msvc_tools(i64 %.sroa.018.0.i, i64 %i.bs) #23
  store i64 %i.bt, ptr %i.d, align 8, !noalias !32
  store i64 %i.bl, ptr %i.k, align 8, !alias.scope !32
  store i64 %.sroa.018.0.i, ptr %i.l, align 8, !alias.scope !32
  br label %.sink.split.i

bb.y:                                             ; preds = %.preheader48.split.i
  %i.bu = add i64 %.sroa.013.0.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, %i.bo
  br i1 %exitcond.not.i, label %.loopexit49.i, label %.preheader48.split.i

_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit: ; preds = %.sink.split.i, %bb.w
  %i.bv = phi i64 [ %.sink.i, %.sink.split.i ], [ %i.bj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  switch i64 %i.bv, label %.loopexit [
    i64 0, label %bb.ab
    i64 1, label %thread-pre-split
    i64 2, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bx = load i64, ptr %i.bw, align 8            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bz = load i64, ptr %i.by, align 8            ; 3 uses
  %.not = icmp ult i64 %i.bz, %i.bx
  br i1 %.not, label %bb.af, label %bb.ae

bb.aa:                                            ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = icmp eq i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ch = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  br i1 %i.cd, label %bb.aj, label %bb.ai

bb.ab:                                            ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsiHivYpkJ4Hu_2cc.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load <2 x i64>, ptr %i.k, align 8
  store <2 x i64> %i.cn, ptr %i.cm, align 8
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
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cr = load i8, ptr %i.cq, align 8
  %i.cs = sub nuw i64 %i.bx, %i.bz
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.bz
  %i.cu = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCsiHivYpkJ4Hu_2cc(i8 %i.cr, ptr %i.ct, i64 %i.cs) #23 ; 2 uses
  %i.cv = extractvalue { i64, i64 } %i.cu, 0
  %i.cw = trunc nuw i64 %i.cv to i1
  br i1 %i.cw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cx = extractvalue { i64, i64 } %i.cu, 1
  %i.cy = load i64, ptr %i.by, align 8
  %i.cz = add i64 %i.cy, %i.cx                    ; 2 uses
  %i.da = add i64 %i.cz, 1                        ; 2 uses
  store i64 %i.da, ptr %i.by, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cz, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.da, ptr %i.dc, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ad

bb.ah:                                            ; preds = %bb.af
  store i64 %i.bx, ptr %i.by, align 8
  store i64 0, ptr %0, align 8
  br label %bb.ad
end_hunk_0
