Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.3?download=true
inline.NumInlined: 72
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytesCsiHivYpkJ4Hu_2cc:bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.z = and i64 %2, 2
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.0.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.0.0.i ; 2 uses
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.ab, align 1
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.ac, align 1
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.ab, align 1
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.ac, align 1
  %i.ad = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ae = and i64 %2, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsiHivYpkJ4Hu_2cc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.1.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.0.1.i ; 2 uses
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.ag, align 1
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.ah, align 1
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.ag, align 1
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.ah, align 1
  br label %_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsiHivYpkJ4Hu_2cc.exit

_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.g, %bb.f, %_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsiHivYpkJ4Hu_2cc.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i32 } @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB8_3ops5range5RangelENtB2_12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(i32 %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { i32, i32 } poison, i32 %0, 0
  %i.b = insertvalue { i32, i32 } %i.a, i32 %1, 1
  ret { i32, i32 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_backCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = load i64, ptr %i.e, align 8              ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  %.not31 = icmp ugt i64 %i.g, %i.c
  %or.cond32 = select i1 %i.h, i1 true, i1 %.not31
  br i1 %or.cond32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.pre = load i8, ptr %i.j, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.k = phi i8 [ %.pre, %.lr.ph ], [ %i.z, %bb.e ]
  %i.l = phi i64 [ %i.g, %.lr.ph ], [ %i.y, %bb.e ]
  %i.m = phi i64 [ %i.f, %.lr.ph ], [ %i.x, %bb.e ] ; 2 uses
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  %i.p = zext i8 %i.k to i64
  %i.q = getelementptr i8, ptr %i.i, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr15memrchr_aligned(i8 %i.s, ptr %i.o, i64 %i.n) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = extractvalue { i64, i64 } %i.t, 1
  %i.x = load i64, ptr %i.d, align 8              ; 3 uses
  %i.y = add i64 %i.x, %i.w                       ; 6 uses
  %i.z = load i8, ptr %i.j, align 8               ; 3 uses
  %i.aa = zext i8 %i.z to i64                     ; 4 uses
  %i.ab = add nsw i64 %i.aa, -1                   ; 2 uses
  %.not15 = icmp ult i64 %i.y, %i.ab
  br i1 %.not15, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ac = load i64, ptr %i.d, align 8
  store i64 %i.ac, ptr %i.e, align 8
  br label %._crit_edge

bb.e:                                             ; preds = %bb.f, %bb.i, %bb.c
  store i64 %i.y, ptr %i.e, align 8
  %i.ad = icmp ult i64 %i.y, %i.x
  %.not = icmp ugt i64 %i.y, %i.c
  %or.cond = select i1 %i.ad, i1 true, i1 %.not
  br i1 %or.cond, label %._crit_edge, label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.ae = sub nuw i64 %i.y, %i.ab                 ; 5 uses
  %i.af = add i64 %i.ae, %i.aa                    ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %.not16 = icmp ugt i64 %i.af, %i.c
  %or.cond17 = select i1 %i.ag, i1 true, i1 %.not16
  br i1 %or.cond17, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp ult i8 %i.z, 5
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 0, i64 %i.aa, i64 4, ptr nonnull align 8 @532) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %bcmp = tail call i32 @bcmp(ptr %i.ai, ptr nonnull %i.i, i64 %i.aa)
  %i.aj = icmp eq i32 %bcmp, 0
  br i1 %i.aj, label %bb.j, label %bb.e

bb.j:                                             ; preds = %bb.i
  store i64 %i.ae, ptr %i.e, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.al, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.a, %bb.d, %bb.j
  %.sink = phi i64 [ 0, %bb.d ], [ 1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRbNtB6_5Debug3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXsg_NtCs3oUPovFnLWP_4core3fmtbNtB5_7Display3fmt(ptr %i.a, ptr align 8 %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRDNtB6_7DisplayEL_Bx_3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !29, !nonnull !29
  %i.f = tail call zeroext i1 %i.e(ptr %i.a, ptr align 8 %1) #23
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr align 8 %i.a, ptr align 8 %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRReNtB6_7Display3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsaDvkSoazevh_14rustc_demangle(ptr align 8 %i.a, ptr align 8 %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern12is_prefix_ofCsiHivYpkJ4Hu_2cc(i32 %0, ptr %1, i64 %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCsiHivYpkJ4Hu_2cc(i32 %0, ptr nonnull %i.a, i64 4) #23 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs1OFHugREOcC_9addr2line(ptr %1, i64 %2, ptr %i.c, i64 %i.d)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern12is_suffix_ofCsiHivYpkJ4Hu_2cc(i32 %0, ptr %1, i64 %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCsiHivYpkJ4Hu_2cc(i32 %0, ptr nonnull %i.a, i64 4) #23 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs1OFHugREOcC_9addr2line(ptr %1, i64 %2, ptr %i.c, i64 %i.d)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern13into_searcherCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 41)) %0, i32 %1, ptr %2, i64 %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %4 = freeze i32 %1                              ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCsiHivYpkJ4Hu_2cc(i32 %4, ptr nonnull %i.a, i64 4) #23
  %i.c = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %i.d = icmp ugt i64 %i.c, 255                   ; 2 uses
  %i.e = trunc nuw i64 %i.c to i8
  %.sroa.3.0 = select i1 %i.d, i8 2, i8 %i.e
  %i.f = call i8 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsiHivYpkJ4Hu_2cc(i1 zeroext %i.d, i8 %.sroa.3.0, ptr nonnull @533, i64 32, ptr nonnull align 8 @534) #23
  %.sroa.01.0.copyload = load i32, ptr %i.a, align 4
  store ptr %2, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.f, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = freeze i32 %.sroa.01.0.copyload
  %6 = zext i32 %5 to i64
  %7 = zext i32 %4 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or disjoint i64 %8, %6
  store i64 %9, ptr %i.k, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i32, i32 } @_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCsiHivYpkJ4Hu_2cc(ptr nofree align 4 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %0, align 4                ; 3 uses
  %i.c = load i32, ptr %i.a, align 4
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @_RNvXsI_NtNtCs3oUPovFnLWP_4core4iter5rangelNtB5_4Step17forward_uncheckedCsiHivYpkJ4Hu_2cc(i32 %i.b, i64 1) #23
  store i32 %i.e, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.g = insertvalue { i32, i32 } %i.f, i32 %i.b, 1
  ret { i32, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs4_NtNtCs3oUPovFnLWP_4core3str7patternAcj2_NtB5_11MultiCharEq7matchesCsiHivYpkJ4Hu_2cc(ptr align 4 %0, i32 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCs3oUPovFnLWP_4core5sliceSc12chunks_exactCsiHivYpkJ4Hu_2cc(ptr nonnull sret([40 x i8]) align 8 %i.c, ptr align 4 %0, i64 2, i64 16, ptr nonnull align 8 @538) #23
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.g = load i64, ptr %i.e, align 8              ; 2 uses
  %i.h = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.h, %i.g
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  store ptr %i.j, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.n, align 8
  %i.o = call zeroext i1 @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.b, ptr nonnull align 4 %i.d) #23
  br label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_containsCsiHivYpkJ4Hu_2cc.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.c, align 8
  call void @_RNvMNtCs3oUPovFnLWP_4core5sliceSc18split_at_uncheckedCsiHivYpkJ4Hu_2cc(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 4 %i.p, i64 %i.g, i64 %i.h, ptr nonnull align 8 @540) #23
  %.sroa.02.0.copyload.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  store ptr %.sroa.4.0.copyload.i, ptr %i.c, align 8, !captures !6
  store i64 %.sroa.5.0.copyload.i, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.02.0.copyload.i, i64 %.sroa.3.0.copyload.i
  %i.r = call zeroext i1 @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECsiHivYpkJ4Hu_2cc(ptr %.sroa.02.0.copyload.i, ptr %i.q, i1 zeroext false, ptr nonnull align 4 %i.d) #23
  br i1 %i.r, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_containsCsiHivYpkJ4Hu_2cc.exit, label %bb.b

_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_containsCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i1 [ %i.o, %bb.c ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i32, i32 } @_RNvXs4_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtNtNtB7_6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr nofree align 4 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %0, align 4                ; 3 uses
  %i.c = load i32, ptr %i.a, align 4
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @_RNvXsI_NtNtCs3oUPovFnLWP_4core4iter5rangelNtB5_4Step17forward_uncheckedCsiHivYpkJ4Hu_2cc(i32 %i.b, i64 1) #23
  store i32 %i.e, ptr %0, align 4
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCsiHivYpkJ4Hu_2cc.exit

_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.g = insertvalue { i32, i32 } %i.f, i32 %i.b, 1
  ret { i32, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs5_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE5indexCsiHivYpkJ4Hu_2cc(i64 %0, i64 %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE5indexCsiHivYpkJ4Hu_2cc(i64 %0, i64 %1, ptr %2, i64 %3, ptr align 8 %4) #23
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE9index_mutCsiHivYpkJ4Hu_2cc(i64 %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %0, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.b, 1
  ret { ptr, i64 } %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 %0, i64 %2, i64 %2, ptr align 8 %3) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs6_NtNtNtNtCs3oUPovFnLWP_4core4iter8adapters7step_by12step_by_specINtNtNtBd_3ops5range5RangejEINtB7_14SpecRangeSetupB16_E5setupCsiHivYpkJ4Hu_2cc(i64 %0, i64 %1, i64 %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.06.0 = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0) ; 2 uses
  %i.b = udiv i64 %.sroa.06.0, %2
  %i.c = urem i64 %.sroa.06.0, %2
  %.not = icmp ne i64 %i.c, 0
  %i.d = zext i1 %.not to i64
  %.sroa.05.0 = add i64 %i.b, %i.d
  %i.e = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %.sroa.05.0, 1
  ret { i64, i64 } %i.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_div_by_zero(ptr nonnull align 8 @536) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs7_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_18MultiCharEqPatternAcj2_ENtB5_7Pattern13into_searcherCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, i64 %1, ptr %2, i64 %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core3stre5charsCsiHivYpkJ4Hu_2cc(ptr %2, i64 %3) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  store i64 %1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs7_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_18MultiCharEqPatternNtB7_12IsWhitespaceENtB5_7Pattern13into_searcherCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core3stre5charsCsiHivYpkJ4Hu_2cc(ptr %1, i64 %2) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  store ptr %1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs7_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_7Pattern13into_searcherCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core3stre5charsCsiHivYpkJ4Hu_2cc(ptr %1, i64 %2) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  store ptr %1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
