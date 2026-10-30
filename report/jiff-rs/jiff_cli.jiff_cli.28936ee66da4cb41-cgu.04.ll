Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.04?download=true
inline.NumInlined: 78
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB6_8Captures7extractKj2_ECs3tZ2SXJA1qv_8jiff_cli:bb.a
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !67, !noalias !68, !noundef !5
  %i.aw = icmp sgt i8 %i.av, -65
  br i1 %i.aw, label %_RNvMs7_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_5Match6as_str.exit, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i, !prof !10

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.n, %bb.j
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al, i64 noundef %i.ah, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !noalias !68
  unreachable

_RNvMs7_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_5Match6as_str.exit: ; preds = %bb.k, %bb.m, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i
  %i.ax = sub nuw i64 %i.af, %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RINvMsm_NtCs3oUPovFnLWP_4core5arrayAlj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitReENCINvMBN_BK_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB22_8Captures7extractKBz_E0E0ECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.az, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
  store ptr %i.ay, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %i.ba, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.._crit_edge.split_crit_edge.i:                   ; preds = %bb.i, %.lr.ph.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #12
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyReNCNvB17_9configure0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(48) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph104 = phi ptr [ %i.ev, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph103 = phi i64 [ %i.eg, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph102 = phi i32 [ %i.h, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph101 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph104, i64 8
  %i.d = ptrtoint ptr %.sroa.0.0.ph104 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph101, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph101, i64 8
  %i.f = icmp eq i32 %.sroa.025.0.ph102, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph227

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage12split_at_mutBy_.exit
  %i.g = icmp eq i32 %i.h, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph227

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage12split_at_mutBy_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa95 = phi ptr [ %i.eh, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph104, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage12split_at_mutBy_.exit ], [ %i.ev, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage12split_at_mutBy_.exit ], [ %i.eg, %.outer ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_11sort_by_keyReNCNvB1u_9configure0E0EB1w_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa95, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.097.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph103, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyReNCNvBY_9configure0E0EB10_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph104, i64 noundef %.sroa.16.097.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph227:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.096226 = phi i32 [ %i.h, %bb.b ], [ %.sroa.025.0.ph102, %.lr.ph ]
  %.sroa.16.097225 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph103, %.lr.ph ] ; 21 uses
  %i.h = add i32 %.sroa.025.096226, -1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.i = lshr i64 %.sroa.16.097225, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.i, 192
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.i, 336
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %.idx2.i ; 4 uses
  %i.l = icmp samesign ult i64 %.sroa.16.097225, 64
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph227
  %i.m = call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_11sort_by_keyReNCNvB16_9configure0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph104, ptr noundef nonnull readonly %i.j, ptr noundef nonnull readonly %i.k, i64 noundef %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph227
  %.val10.i = load ptr, ptr %.sroa.0.0.ph104, align 8, !alias.scope !143, !nonnull !5, !noundef !5 ; 2 uses
  %.val11.i = load i64, ptr %i.c, align 8, !alias.scope !143, !noundef !5 ; 2 uses
  %.val12.i = load ptr, ptr %i.j, align 8, !alias.scope !143 ; 3 uses
  %i.n = getelementptr i8, ptr %i.j, i64 8
  %.val13.i = load i64, ptr %i.n, align 8, !alias.scope !143 ; 2 uses
  %i.o = call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val10.i, i64 %.val11.i) #13, !noalias !144 ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.o, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  %i.r = call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val12.i, i64 %.val13.i) #13, !noalias !144 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.r, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p), "nonnull"(ptr %i.s) ]
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.t)
  %i.u = call i32 @memcmp(ptr nonnull readonly %i.p, ptr nonnull readonly %i.s, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !145, !noalias !144 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %i.q, %i.t
  %spec.select.i.i.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.v ; 2 uses
  %.val8.i = load ptr, ptr %i.k, align 8, !alias.scope !143 ; 3 uses
  %i.y = getelementptr i8, ptr %i.k, i64 8
  %.val9.i = load i64, ptr %i.y, align 8, !alias.scope !143 ; 2 uses
  %i.z = call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val10.i, i64 %.val11.i) #13, !noalias !144 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.z, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  %i.ac = call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val8.i, i64 %.val9.i) #13, !noalias !144 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa), "nonnull"(ptr %i.ad) ]
  %spec.store.select.i.i.i.i.i14.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ae)
  %i.af = call i32 @memcmp(ptr nonnull readonly %i.aa, ptr nonnull readonly %i.ad, i64 %spec.store.select.i.i.i.i.i14.i), !alias.scope !146, !noalias !144 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %i.ab, %i.ae
  %spec.select.i.i.i.i.i15.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = xor i64 %spec.select.i.i.i.i.i15.i, %spec.select.i.i.i.i.i.i
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val12.i, i64 %.val13.i) #13, !noalias !144 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0      ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.al, 1      ; 2 uses
  %i.ao = call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val8.i, i64 %.val9.i) #13, !noalias !144 ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ao, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am), "nonnull"(ptr %i.ap) ]
  %spec.store.select.i.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.aq)
  %i.ar = call i32 @memcmp(ptr nonnull readonly %i.am, ptr nonnull readonly %i.ap, i64 %spec.store.select.i.i.i.i.i16.i), !alias.scope !147, !noalias !144 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp eq i32 %i.ar, 0
  %i.au = sub i64 %i.an, %i.aq
  %spec.select.i.i.i.i.i17.i = select i1 %i.at, i64 %i.au, i64 %i.as
  %i.av = xor i64 %spec.select.i.i.i.i.i17.i, %spec.select.i.i.i.i.i.i
  %i.aw = icmp slt i64 %i.av, 0
  %..i.i = select i1 %i.aw, ptr %i.k, ptr %i.j
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.m, %bb.c ], [ %.sroa.0.0.ph104, %bb.d ], [ %..i.i, %bb.e ]
  %i.ax = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ay = sub nuw i64 %i.ax, %i.d                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ay, 48         ; 3 uses
  %i.az = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.097225
  call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %i.ay ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.028.0.val = load ptr, ptr %.sroa.028.0.ph101, align 8, !nonnull !5, !noundef !5
  %.sroa.028.0.val37 = load i64, ptr %i.e, align 8, !noundef !5
  %.val = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val38 = load i64, ptr %i.bb, align 8
  %i.bc = call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.sroa.028.0.val, i64 %.sroa.028.0.val37) #13 ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0      ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bf = call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val, i64 %.val38) #13 ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0      ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bf, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd), "nonnull"(ptr %i.bg) ]
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.be, i64 %i.bh)
  %i.bi = call i32 @memcmp(ptr nonnull readonly %i.bd, ptr nonnull readonly %i.bg, i64 %spec.store.select.i.i.i.i.i), !alias.scope !148 ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp eq i32 %i.bi, 0
  %i.bl = sub i64 %i.be, %i.bh
  %spec.select.i.i.i.i.i = select i1 %i.bk, i64 %i.bl, i64 %i.bj
  %i.bm = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.bm, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %.not71 = icmp samesign ult i64 %3, %.sroa.16.097225
  br i1 %.not71, label %bb.k, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr [48 x i8], ptr %2, i64 %.sroa.16.097225 ; 4 uses
  %i.bo = getelementptr i8, ptr %i.ba, i64 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.n, %bb.j
  %.sroa.19.0.i = phi ptr [ %i.bn, %bb.j ], [ %i.cj, %bb.n ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.11.1.lcssa.i, %bb.n ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph104, %bb.j ], [ %i.cl, %bb.n ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.097225, %bb.n ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i39 ; 2 uses
  %i.bq = icmp ult ptr %.sroa.5.0.i, %i.bp
  br i1 %i.bq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l
  %.val13.i40 = load ptr, ptr %i.ba, align 8, !alias.scope !149 ; 2 uses
  br label %bb.m

._crit_edge.i:                                    ; preds = %bb.m, %bb.l
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.l ], [ %i.ce, %bb.m ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.l ], [ %i.cg, %bb.m ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.l ], [ %i.ch, %bb.m ] ; 2 uses
  %i.br = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.097225
  br i1 %i.br, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %.sroa.5.111.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.ch, %bb.m ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.cg, %bb.m ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.ce, %bb.m ]
  %.val.i = load ptr, ptr %.sroa.5.111.i, align 8, !alias.scope !149, !nonnull !5, !noundef !5
  %i.bs = getelementptr i8, ptr %.sroa.5.111.i, i64 8
  %.val12.i41 = load i64, ptr %i.bs, align 8, !alias.scope !149, !noundef !5
  %.val14.i.a = load i64, ptr %i.bo, align 8, !alias.scope !149
  %i.bt = call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val.i, i64 %.val12.i41) #13, !noalias !151 ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bt, 0      ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bt, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i40) ]
  %i.bw = call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val13.i40, i64 %.val14.i.a) #13, !noalias !151 ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0      ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu), "nonnull"(ptr %i.bx) ]
  %spec.store.select.i.i.i.i.i.i42 = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.by)
  %i.bz = call i32 @memcmp(ptr nonnull readonly %i.bu, ptr nonnull readonly %i.bx, i64 %spec.store.select.i.i.i.i.i.i42), !alias.scope !152, !noalias !151 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp eq i32 %i.bz, 0
  %i.cc = sub i64 %i.bv, %i.by
  %spec.select.i.i.i.i.i.i43 = select i1 %i.cb, i64 %i.cc, i64 %i.ca ; 2 uses
  %i.cd = icmp slt i64 %spec.select.i.i.i.i.i.i43, 0
  %i.ce = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -48 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.cd, ptr %2, ptr %i.ce
  %i.cf = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.111.i, i64 48, i1 false), !alias.scope !151, !noalias !153
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i43, 63
  %i.cg = add i64 %spec.select.i.i.i.i.i.lobit.i, %.sroa.11.110.i ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 48 ; 3 uses
  %i.ci = icmp ult ptr %i.ch, %i.bp
  br i1 %i.ci, label %bb.m, label %._crit_edge.i

bb.n:                                             ; preds = %._crit_edge.i
  %i.cj = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -48 ; 2 uses
  %i.ck = getelementptr inbounds nuw [48 x i8], ptr %i.cj, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.1.lcssa.i, i64 48, i1 false), !alias.scope !151, !noalias !154
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 48
  br label %bb.l

bb.o:                                             ; preds = %._crit_edge.i
  %i.cm = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.cm, i1 false), !alias.scope !151
  %i.cn = sub i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.o
  %i.co = getelementptr [48 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.cn, 1
  %i.cp = icmp eq i64 %.sroa.16.097225, %.neg
  br i1 %i.cp, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.cn, -2
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.ct, %bb.p ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.p ]
  %i.cq = xor i64 %.sroa.06.014.i, -1
  %i.cr = getelementptr [48 x i8], ptr %i.bn, i64 %i.cq
  %i.cs = getelementptr [48 x i8], ptr %i.co, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr noundef nonnull align 8 dereferenceable(48) %i.cr, i64 48, i1 false), !alias.scope !151
  %i.ct = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.cu = xor i64 %.sroa.06.014.i, -2
  %i.cv = getelementptr [48 x i8], ptr %i.bn, i64 %i.cu
  %i.cw = getelementptr [48 x i8], ptr %i.co, i64 %.sroa.06.014.i
  %i.cx = getelementptr i8, ptr %i.cw, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cx, ptr noundef nonnull align 8 dereferenceable(48) %i.cv, i64 48, i1 false), !alias.scope !151
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.p

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.ct, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod288 = trunc i64 %i.cn to i1
  call void @llvm.assume(i1 %lcmp.mod288)
  %i.cy = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.cz = getelementptr [48 x i8], ptr %i.bn, i64 %i.cy
  %i.da = getelementptr [48 x i8], ptr %i.co, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 8 dereferenceable(48) %i.cz, i64 48, i1 false), !alias.scope !151
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.o
  %i.db = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.db, label %.thread, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.097225
  br i1 %.not.i44, label %bb.r, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage12split_at_mutBy_.exit, !prof !12

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #12, !noalias !155
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage12split_at_mutBy_.exit: ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph104) ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyReNCNvB17_9configure0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.dc, i64 noundef %i.cn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dd = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.dd, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %.not72 = icmp samesign ult i64 %3, %.sroa.16.097225
  br i1 %.not72, label %bb.t, label %bb.s, !prof !11

bb.s:                                             ; preds = %.thread
  %i.de = getelementptr [48 x i8], ptr %2, i64 %.sroa.16.097225 ; 4 uses
  %i.df = getelementptr i8, ptr %i.ba, i64 8
  br label %bb.u

bb.t:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.w, %bb.s
  %.sroa.19.0.i47 = phi ptr [ %i.de, %bb.s ], [ %i.eb, %bb.w ] ; 2 uses
  %.sroa.11.0.i48 = phi i64 [ 0, %bb.s ], [ %i.ed, %bb.w ] ; 2 uses
  %.sroa.5.0.i49 = phi ptr [ %.sroa.0.0.ph104, %bb.s ], [ %i.ee, %bb.w ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i, %bb.s ], [ %.sroa.16.097225, %bb.w ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i50 ; 2 uses
  %i.dh = icmp ult ptr %.sroa.5.0.i49, %i.dg
  br i1 %i.dh, label %.lr.ph.i59, label %._crit_edge.i51

.lr.ph.i59:                                       ; preds = %bb.u
  %.val13.i60 = load ptr, ptr %i.ba, align 8, !alias.scope !156, !nonnull !5, !noundef !5
  br label %bb.v

._crit_edge.i51:                                  ; preds = %bb.v, %bb.u
  %.sroa.19.1.lcssa.i52 = phi ptr [ %.sroa.19.0.i47, %bb.u ], [ %i.dv, %bb.v ]
  %.sroa.11.1.lcssa.i53 = phi i64 [ %.sroa.11.0.i48, %bb.u ], [ %i.dy, %bb.v ] ; 10 uses
  %.sroa.5.1.lcssa.i54 = phi ptr [ %.sroa.5.0.i49, %bb.u ], [ %i.dz, %bb.v ] ; 2 uses
  %i.di = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.097225
  br i1 %i.di, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.v, %.lr.ph.i59
  %.sroa.5.111.i61 = phi ptr [ %.sroa.5.0.i49, %.lr.ph.i59 ], [ %i.dz, %bb.v ] ; 4 uses
  %.sroa.11.110.i62 = phi i64 [ %.sroa.11.0.i48, %.lr.ph.i59 ], [ %i.dy, %bb.v ] ; 2 uses
  %.sroa.19.19.i63 = phi ptr [ %.sroa.19.0.i47, %.lr.ph.i59 ], [ %i.dv, %bb.v ]
  %.val.i64 = load ptr, ptr %.sroa.5.111.i61, align 8, !alias.scope !156 ; 2 uses
  %i.dj = getelementptr i8, ptr %.sroa.5.111.i61, i64 8
  %.val12.i65 = load i64, ptr %i.dj, align 8, !alias.scope !156
  %.val14.i66 = load i64, ptr %i.df, align 8, !alias.scope !156, !noundef !5
  %i.dk = call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val13.i60, i64 %.val14.i66) #13, !noalias !158 ; 2 uses
  %i.dl = extractvalue { ptr, i64 } %i.dk, 0      ; 2 uses
  %i.dm = extractvalue { ptr, i64 } %i.dk, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i64) ]
  %i.dn = call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val.i64, i64 %.val12.i65) #13, !noalias !158 ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dn, 0      ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.dn, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl), "nonnull"(ptr %i.do) ]
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dm, i64 %i.dp)
  %i.dq = call i32 @memcmp(ptr nonnull readonly %i.dl, ptr nonnull readonly %i.do, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !159, !noalias !158 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp eq i32 %i.dq, 0
  %i.dt = sub i64 %i.dm, %i.dp
  %spec.select.i.i.i.i.i.i.i = select i1 %i.ds, i64 %i.dt, i64 %i.dr
  %i.du = icmp sgt i64 %spec.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.19.19.i63, i64 -48 ; 3 uses
  %.sroa.01.0.i.i67 = select i1 %i.du, ptr %2, ptr %i.dv
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i67, i64 %.sroa.11.110.i62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dw, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.111.i61, i64 48, i1 false), !alias.scope !158, !noalias !160
  %i.dx = zext i1 %i.du to i64
  %i.dy = add i64 %.sroa.11.110.i62, %i.dx        ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i61, i64 48 ; 3 uses
  %i.ea = icmp ult ptr %i.dz, %i.dg
  br i1 %i.ea, label %bb.v, label %._crit_edge.i51

bb.w:                                             ; preds = %._crit_edge.i51
  %i.eb = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i52, i64 -48
  %i.ec = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ec, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.1.lcssa.i54, i64 48, i1 false), !alias.scope !158, !noalias !161
  %i.ed = add i64 %.sroa.11.1.lcssa.i53, 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i54, i64 48
  br label %bb.u

bb.x:                                             ; preds = %._crit_edge.i51
  %i.ef = mul nuw nsw i64 %.sroa.11.1.lcssa.i53, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.ef, i1 false), !alias.scope !158
  %i.eg = sub i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i53 ; 6 uses
  %.not18.i55 = icmp eq i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i53
  %i.eh = getelementptr [48 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 4 uses
  br i1 %.not18.i55, label %.outer.thread, label %.lr.ph16.i56.preheader

.lr.ph16.i56.preheader:                           ; preds = %bb.x
  %.neg300 = add i64 %.sroa.11.1.lcssa.i53, 1
  %xtraiter295 = and i64 %i.eg, 1
  %i.ei = icmp eq i64 %.sroa.16.097225, %.neg300
  br i1 %i.ei, label %.lr.ph16.i56.epil.preheader, label %.lr.ph16.i56.preheader.new

.lr.ph16.i56.preheader.new:                       ; preds = %.lr.ph16.i56.preheader
  %unroll_iter298 = and i64 %i.eg, -2
  br label %.lr.ph16.i56

.lr.ph16.i56:                                     ; preds = %.lr.ph16.i56, %.lr.ph16.i56.preheader.new
  %.sroa.06.014.i57 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %i.em, %.lr.ph16.i56 ] ; 5 uses
  %niter299 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %niter299.next.1, %.lr.ph16.i56 ]
  %i.ej = xor i64 %.sroa.06.014.i57, -1
  %i.ek = getelementptr [48 x i8], ptr %i.de, i64 %i.ej
  %i.el = getelementptr [48 x i8], ptr %i.eh, i64 %.sroa.06.014.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.el, ptr noundef nonnull align 8 dereferenceable(48) %i.ek, i64 48, i1 false), !alias.scope !158
  %i.em = add nuw i64 %.sroa.06.014.i57, 2        ; 2 uses
  %i.en = xor i64 %.sroa.06.014.i57, -2
  %i.eo = getelementptr [48 x i8], ptr %i.de, i64 %i.en
  %i.ep = getelementptr [48 x i8], ptr %i.eh, i64 %.sroa.06.014.i57
  %i.eq = getelementptr i8, ptr %i.ep, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eq, ptr noundef nonnull align 8 dereferenceable(48) %i.eo, i64 48, i1 false), !alias.scope !158
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0E0EB1h_.exit.unr-lcssa, label %.lr.ph16.i56

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0E0EB1h_.exit.unr-lcssa: ; preds = %.lr.ph16.i56
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0E0EB1h_.exit, label %.lr.ph16.i56.epil.preheader

.lr.ph16.i56.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0E0EB1h_.exit.unr-lcssa, %.lr.ph16.i56.preheader
  %.sroa.06.014.i57.epil.init = phi i64 [ 0, %.lr.ph16.i56.preheader ], [ %i.em, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0E0EB1h_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod297 = trunc i64 %i.eg to i1
  call void @llvm.assume(i1 %lcmp.mod297)
  %i.er = xor i64 %.sroa.06.014.i57.epil.init, -1
  %i.es = getelementptr [48 x i8], ptr %i.de, i64 %i.er
  %i.et = getelementptr [48 x i8], ptr %i.eh, i64 %.sroa.06.014.i57.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.et, ptr noundef nonnull align 8 dereferenceable(48) %i.es, i64 48, i1 false), !alias.scope !158
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0E0EB1h_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0E0EB1h_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0E0EB1h_.exit.unr-lcssa, %.lr.ph16.i56.epil.preheader
  %i.eu = icmp ugt i64 %.sroa.11.1.lcssa.i53, %.sroa.16.097225
  br i1 %i.eu, label %bb.y, label %.outer, !prof !12

.outer.thread:                                    ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0E0EB1h_.exit
  %i.ev = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ew = icmp ult i64 %i.eg, 33
  br i1 %i.ew, label %.outer._crit_edge, label %.lr.ph

bb.y:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0E0EB1h_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i53, i64 noundef %.sroa.16.097225, i64 noundef %.sroa.16.097225, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #12
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph104 = phi ptr [ %i.di, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph103 = phi i64 [ %i.ct, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph102 = phi i32 [ %i.h, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph101 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph104, i64 8
  %i.d = ptrtoint ptr %.sroa.0.0.ph104 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph101, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph101, i64 8
  %i.f = icmp eq i32 %.sroa.025.0.ph102, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph229

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE12split_at_mutCs3tZ2SXJA1qv_8jiff_cli.exit
  %i.g = icmp eq i32 %i.h, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph229

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE12split_at_mutCs3tZ2SXJA1qv_8jiff_cli.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa95 = phi ptr [ %i.cu, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph104, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE12split_at_mutCs3tZ2SXJA1qv_8jiff_cli.exit ], [ %i.di, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE12split_at_mutCs3tZ2SXJA1qv_8jiff_cli.exit ], [ %i.ct, %.outer ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2Y_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa95, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.097.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph103, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2r_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph104, i64 noundef %.sroa.16.097.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.i

.lr.ph229:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.096228 = phi i32 [ %i.h, %bb.b ], [ %.sroa.025.0.ph102, %.lr.ph ]
  %.sroa.16.097227 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph103, %.lr.ph ] ; 21 uses
  %i.h = add i32 %.sroa.025.096228, -1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.i = lshr i64 %.sroa.16.097227, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.i, 96
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.i, 168
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %.idx2.i ; 4 uses
  %i.l = icmp samesign ult i64 %.sroa.16.097227, 64
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph229
  %i.m = call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2A_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph104, ptr noundef nonnull readonly %i.j, ptr noundef nonnull readonly %i.k, i64 noundef %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph229
  %.val10.i = load ptr, ptr %.sroa.0.0.ph104, align 8, !alias.scope !182 ; 4 uses
  %.val11.i = load i64, ptr %i.c, align 8, !alias.scope !182, !noundef !5 ; 6 uses
  %.val12.i = load ptr, ptr %i.j, align 8, !alias.scope !182 ; 4 uses
  %i.n = getelementptr i8, ptr %i.j, i64 8
  %.val13.i = load i64, ptr %i.n, align 8, !alias.scope !182, !noundef !5 ; 5 uses
  %i.o = icmp eq i64 %.val11.i, %.val13.i
  %i.p = icmp ult i64 %.val13.i, %.val11.i
  br i1 %i.o, label %bb.e, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i), "nonnull"(ptr %.val10.i) ]
  %i.q = call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %.val11.i), !noalias !183
  %i.r = icmp sgt i32 %i.q, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.01.0.neg.i.i.i = phi i1 [ %i.r, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %.val8.i = load ptr, ptr %i.k, align 8, !alias.scope !182 ; 4 uses
  %i.s = getelementptr i8, ptr %i.k, i64 8
  %.val9.i = load i64, ptr %i.s, align 8, !alias.scope !182, !noundef !5 ; 4 uses
  %i.t = icmp eq i64 %.val11.i, %.val9.i
  %i.u = icmp ult i64 %.val9.i, %.val11.i
  br i1 %i.t, label %bb.f, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit15.i

bb.f:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i), "nonnull"(ptr %.val10.i) ]
  %i.v = call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val8.i, i64 %.val11.i), !noalias !183
  %i.w = icmp sgt i32 %i.v, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit15.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit15.i: ; preds = %bb.f, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i
  %.sroa.01.0.neg.i.i14.i = phi i1 [ %i.w, %bb.f ], [ %i.u, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i ]
  %i.x = xor i1 %.sroa.01.0.neg.i.i.i, %.sroa.01.0.neg.i.i14.i
  br i1 %i.x, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit15.i
  %i.y = icmp eq i64 %.val13.i, %.val9.i
  %i.z = icmp ult i64 %.val9.i, %.val13.i
  br i1 %i.y, label %bb.h, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit17.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i), "nonnull"(ptr %.val12.i) ]
  %i.aa = call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val8.i, i64 %.val13.i), !noalias !183
  %i.ab = icmp sgt i32 %i.aa, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit17.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit17.i: ; preds = %bb.h, %bb.g
  %.sroa.01.0.neg.i.i16.i = phi i1 [ %i.ab, %bb.h ], [ %i.z, %bb.g ]
  %i.ac = xor i1 %.sroa.01.0.neg.i.i.i, %.sroa.01.0.neg.i.i16.i
  %..i.i = select i1 %i.ac, ptr %i.k, ptr %i.j
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.j:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit17.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit15.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.m, %bb.c ], [ %.sroa.0.0.ph104, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit15.i ], [ %..i.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit17.i ]
  %i.ad = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ae = sub nuw i64 %i.ad, %i.d                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ae, 24         ; 3 uses
  %i.af = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.097227
  call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %i.ae ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.028.0.val37 = load i64, ptr %i.e, align 8, !noundef !5 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val38 = load i64, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %i.ai = icmp eq i64 %.sroa.028.0.val37, %.val38
  br i1 %i.ai, label %.split, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit

.split:                                           ; preds = %bb.k
  %.val = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  %.sroa.028.0.val = load ptr, ptr %.sroa.028.0.ph101, align 8, !nonnull !5, !noundef !5
  %i.aj = call i32 @memcmp(ptr nonnull readonly %.sroa.028.0.val, ptr nonnull readonly %.val, i64 %.sroa.028.0.val37)
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %.thread

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit: ; preds = %bb.k
  %i.al = icmp ult i64 %.val38, %.sroa.028.0.val37
  br i1 %i.al, label %bb.l, label %.thread

bb.l:                                             ; preds = %.split, %bb.j, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %.not71 = icmp samesign ult i64 %3, %.sroa.16.097227
  br i1 %.not71, label %bb.n, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.097227 ; 4 uses
  %i.an = getelementptr i8, ptr %i.ag, i64 8
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.q, %bb.m
  %.sroa.19.0.i = phi ptr [ %i.am, %bb.m ], [ %i.bc, %bb.q ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.m ], [ %.sroa.11.1.lcssa.i, %bb.q ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph104, %bb.m ], [ %i.be, %bb.q ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.m ], [ %.sroa.16.097227, %bb.q ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i39 ; 2 uses
  %i.ap = icmp ult ptr %.sroa.5.0.i, %i.ao
  br i1 %i.ap, label %.lr.ph.i.a, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i41, %bb.o
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.o ], [ %i.aw, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i41 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.o ], [ %i.az, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i41 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.o ], [ %i.ba, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i41 ] ; 2 uses
  %i.aq = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.097227
  br i1 %i.aq, label %bb.r, label %bb.q

.lr.ph.i.a:                                       ; preds = %bb.o, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i41
  %.sroa.5.111.i = phi ptr [ %i.ba, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i41 ], [ %.sroa.5.0.i, %bb.o ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %i.az, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i41 ], [ %.sroa.11.0.i, %bb.o ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.aw, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i41 ], [ %.sroa.19.0.i, %bb.o ]
  %i.ar = getelementptr i8, ptr %.sroa.5.111.i, i64 8
  %.val12.i40 = load i64, ptr %i.ar, align 8, !alias.scope !184, !noundef !5 ; 3 uses
  %.val14.i.a = load i64, ptr %i.an, align 8, !alias.scope !184, !noundef !5 ; 2 uses
  %i.as = icmp eq i64 %.val12.i40, %.val14.i.a
  %i.at = icmp ult i64 %.val14.i.a, %.val12.i40
  br i1 %i.as, label %bb.p, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i41

bb.p:                                             ; preds = %.lr.ph.i.a
  %.val13.i43 = load ptr, ptr %i.ag, align 8, !alias.scope !184, !nonnull !5, !noundef !5
  %.val.i = load ptr, ptr %.sroa.5.111.i, align 8, !alias.scope !184, !nonnull !5, !noundef !5
  %i.au = call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val13.i43, i64 %.val12.i40), !noalias !186
  %i.av = icmp sgt i32 %i.au, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i41

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i41: ; preds = %bb.p, %.lr.ph.i.a
  %.sroa.01.0.neg.i.i.i42 = phi i1 [ %i.av, %bb.p ], [ %i.at, %.lr.ph.i.a ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -24 ; 3 uses
  %.sroa.01.0.i.i = select i1 %.sroa.01.0.neg.i.i.i42, ptr %2, ptr %i.aw
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i, i64 24, i1 false), !alias.scope !186, !noalias !187
  %i.ay = zext i1 %.sroa.01.0.neg.i.i.i42 to i64
  %i.az = add i64 %.sroa.11.110.i, %i.ay          ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 24 ; 3 uses
  %i.bb = icmp ult ptr %i.ba, %i.ao
  br i1 %i.bb, label %.lr.ph.i.a, label %._crit_edge.i

bb.q:                                             ; preds = %._crit_edge.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -24 ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !186, !noalias !188
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 24
  br label %bb.o

bb.r:                                             ; preds = %._crit_edge.i
  %i.bf = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.bf, i1 false), !alias.scope !186
  %i.bg = sub i64 %.sroa.16.097227, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.097227, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.r
  %i.bh = getelementptr [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.bg, 1
  %i.bi = icmp eq i64 %.sroa.16.097227, %.neg
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.bg, -2
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.bm, %bb.s ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.s ]
  %i.bj = xor i64 %.sroa.06.014.i, -1
  %i.bk = getelementptr [24 x i8], ptr %i.am, i64 %i.bj
  %i.bl = getelementptr [24 x i8], ptr %i.bh, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !alias.scope !186
  %i.bm = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.bn = xor i64 %.sroa.06.014.i, -2
  %i.bo = getelementptr [24 x i8], ptr %i.am, i64 %i.bn
  %i.bp = getelementptr [24 x i8], ptr %i.bh, i64 %.sroa.06.014.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !alias.scope !186
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.s

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.bm, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod290 = trunc i64 %i.bg to i1
  call void @llvm.assume(i1 %lcmp.mod290)
  %i.br = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.bs = getelementptr [24 x i8], ptr %i.am, i64 %i.br
  %i.bt = getelementptr [24 x i8], ptr %i.bh, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !alias.scope !186
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.r
  %i.bu = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.bu, label %.thread, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.097227
  br i1 %.not.i44, label %bb.u, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE12split_at_mutCs3tZ2SXJA1qv_8jiff_cli.exit, !prof !12

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #12, !noalias !189
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE12split_at_mutCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph104) ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bw = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.bw, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %.split, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %.not72 = icmp samesign ult i64 %3, %.sroa.16.097227
  br i1 %.not72, label %bb.w, label %bb.v, !prof !11

bb.v:                                             ; preds = %.thread
  %i.bx = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.097227 ; 4 uses
  %i.by = getelementptr i8, ptr %i.ag, i64 8
  br label %bb.x

bb.w:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.z, %bb.v
  %.sroa.19.0.i47 = phi ptr [ %i.bx, %bb.v ], [ %i.co, %bb.z ] ; 2 uses
  %.sroa.11.0.i48 = phi i64 [ 0, %bb.v ], [ %i.cq, %bb.z ] ; 2 uses
  %.sroa.5.0.i49 = phi ptr [ %.sroa.0.0.ph104, %bb.v ], [ %i.cr, %bb.z ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i, %bb.v ], [ %.sroa.16.097227, %bb.z ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i50 ; 2 uses
  %i.ca = icmp ult ptr %.sroa.5.0.i49, %i.bz
  br i1 %i.ca, label %.lr.ph.i59.a, label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i, %bb.x
  %.sroa.19.1.lcssa.i52 = phi ptr [ %.sroa.19.0.i47, %bb.x ], [ %i.ci, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i ]
  %.sroa.11.1.lcssa.i53 = phi i64 [ %.sroa.11.0.i48, %bb.x ], [ %i.cl, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i ] ; 10 uses
  %.sroa.5.1.lcssa.i54 = phi ptr [ %.sroa.5.0.i49, %bb.x ], [ %i.cm, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i ] ; 2 uses
  %i.cb = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.097227
  br i1 %i.cb, label %bb.aa, label %bb.z

.lr.ph.i59.a:                                     ; preds = %bb.x, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i
  %.sroa.5.111.i60 = phi ptr [ %i.cm, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i ], [ %.sroa.5.0.i49, %bb.x ] ; 4 uses
  %.sroa.11.110.i61 = phi i64 [ %i.cl, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i ], [ %.sroa.11.0.i48, %bb.x ] ; 2 uses
  %.sroa.19.19.i62 = phi ptr [ %i.ci, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i ], [ %.sroa.19.0.i47, %bb.x ]
  %i.cc = getelementptr i8, ptr %.sroa.5.111.i60, i64 8
  %.val12.i63 = load i64, ptr %i.cc, align 8, !alias.scope !190, !noundef !5 ; 3 uses
  %.val14.i64 = load i64, ptr %i.by, align 8, !alias.scope !190, !noundef !5 ; 2 uses
  %i.cd = icmp eq i64 %.val14.i64, %.val12.i63
  %i.ce = icmp ult i64 %.val12.i63, %.val14.i64
  br i1 %i.cd, label %bb.y, label %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i

bb.y:                                             ; preds = %.lr.ph.i59.a
  %.val13.i66 = load ptr, ptr %i.ag, align 8, !alias.scope !190, !nonnull !5, !noundef !5
  %.val.i67 = load ptr, ptr %.sroa.5.111.i60, align 8, !alias.scope !190, !nonnull !5, !noundef !5
  %i.cf = call i32 @memcmp(ptr nonnull readonly %.val13.i66, ptr nonnull readonly %.val.i67, i64 %.val12.i63), !noalias !192
  %i.cg = icmp sgt i32 %i.cf, 0
  br label %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i

_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i: ; preds = %bb.y, %.lr.ph.i59.a
  %.sroa.01.0.neg.i.i.i.i = phi i1 [ %i.cg, %bb.y ], [ %i.ce, %.lr.ph.i59.a ] ; 2 uses
  %i.ch = xor i1 %.sroa.01.0.neg.i.i.i.i, true
  %i.ci = getelementptr inbounds i8, ptr %.sroa.19.19.i62, i64 -24 ; 3 uses
  %.sroa.01.0.i.i65 = select i1 %.sroa.01.0.neg.i.i.i.i, ptr %i.ci, ptr %2
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i65, i64 %.sroa.11.110.i61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i60, i64 24, i1 false), !alias.scope !192, !noalias !193
  %i.ck = zext i1 %i.ch to i64
  %i.cl = add i64 %.sroa.11.110.i61, %i.ck        ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i60, i64 24 ; 3 uses
  %i.cn = icmp ult ptr %i.cm, %i.bz
  br i1 %i.cn, label %.lr.ph.i59.a, label %._crit_edge.i51

bb.z:                                             ; preds = %._crit_edge.i51
  %i.co = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i52, i64 -24
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i54, i64 24, i1 false), !alias.scope !192, !noalias !194
  %i.cq = add i64 %.sroa.11.1.lcssa.i53, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i54, i64 24
  br label %bb.x

bb.aa:                                            ; preds = %._crit_edge.i51
  %i.cs = mul nuw nsw i64 %.sroa.11.1.lcssa.i53, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.cs, i1 false), !alias.scope !192
  %i.ct = sub i64 %.sroa.16.097227, %.sroa.11.1.lcssa.i53 ; 6 uses
  %.not18.i55 = icmp eq i64 %.sroa.16.097227, %.sroa.11.1.lcssa.i53
  %i.cu = getelementptr [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 4 uses
  br i1 %.not18.i55, label %.outer.thread, label %.lr.ph16.i56.preheader

.lr.ph16.i56.preheader:                           ; preds = %bb.aa
  %.neg302 = add i64 %.sroa.11.1.lcssa.i53, 1
  %xtraiter297 = and i64 %i.ct, 1
  %i.cv = icmp eq i64 %.sroa.16.097227, %.neg302
  br i1 %i.cv, label %.lr.ph16.i56.epil.preheader, label %.lr.ph16.i56.preheader.new

.lr.ph16.i56.preheader.new:                       ; preds = %.lr.ph16.i56.preheader
  %unroll_iter300 = and i64 %i.ct, -2
  br label %.lr.ph16.i56

.lr.ph16.i56:                                     ; preds = %.lr.ph16.i56, %.lr.ph16.i56.preheader.new
  %.sroa.06.014.i57 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %i.cz, %.lr.ph16.i56 ] ; 5 uses
  %niter301 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %niter301.next.1, %.lr.ph16.i56 ]
  %i.cw = xor i64 %.sroa.06.014.i57, -1
  %i.cx = getelementptr [24 x i8], ptr %i.bx, i64 %i.cw
  %i.cy = getelementptr [24 x i8], ptr %i.cu, i64 %.sroa.06.014.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !alias.scope !192
  %i.cz = add nuw i64 %.sroa.06.014.i57, 2        ; 2 uses
  %i.da = xor i64 %.sroa.06.014.i57, -2
  %i.db = getelementptr [24 x i8], ptr %i.bx, i64 %i.da
  %i.dc = getelementptr [24 x i8], ptr %i.cu, i64 %.sroa.06.014.i57
  %i.dd = getelementptr i8, ptr %i.dc, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false), !alias.scope !192
  %niter301.next.1 = add i64 %niter301, 2         ; 2 uses
  %niter301.ncmp.1 = icmp eq i64 %niter301.next.1, %unroll_iter300
  br i1 %niter301.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit.unr-lcssa, label %.lr.ph16.i56

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit.unr-lcssa: ; preds = %.lr.ph16.i56
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  br i1 %lcmp.mod298.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit, label %.lr.ph16.i56.epil.preheader

.lr.ph16.i56.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit.unr-lcssa, %.lr.ph16.i56.preheader
  %.sroa.06.014.i57.epil.init = phi i64 [ 0, %.lr.ph16.i56.preheader ], [ %i.cz, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod299 = trunc i64 %i.ct to i1
  call void @llvm.assume(i1 %lcmp.mod299)
  %i.de = xor i64 %.sroa.06.014.i57.epil.init, -1
  %i.df = getelementptr [24 x i8], ptr %i.bx, i64 %i.de
  %i.dg = getelementptr [24 x i8], ptr %i.cu, i64 %.sroa.06.014.i57.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !alias.scope !192
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit.unr-lcssa, %.lr.ph16.i56.epil.preheader
  %i.dh = icmp ugt i64 %.sroa.11.1.lcssa.i53, %.sroa.16.097227
  br i1 %i.dh, label %bb.ab, label %.outer, !prof !12

.outer.thread:                                    ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dj = icmp ult i64 %i.ct, 33
  br i1 %i.dj, label %.outer._crit_edge, label %.lr.ph

bb.ab:                                            ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i53, i64 noundef %.sroa.16.097227, i64 noundef %.sroa.16.097227, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #12
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr nonnull %.0.val, i64 %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !222
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 2), !noalias !223
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.b = load i64, ptr %i.a, align 8, !range !225, !alias.scope !224, !noalias !222, !noundef !5
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %.preheader.i.i
    i64 1, label %bb.o
    i64 2, label %bb.p
  ]

.preheader.i.i:                                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.d = load i8, ptr %i.c, align 2, !range !226, !alias.scope !224, !noalias !222
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !224, !noalias !222, !nonnull !5 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !224, !noalias !222 ; 16 uses
  br i1 %i.e, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted206.i.i = load i8, ptr %i.j, align 8, !alias.scope !224, !noalias !222
  %.promoted157.i.i = load i64, ptr %i.k, align 8, !alias.scope !224, !noalias !222 ; 13 uses
  %i.l = trunc nuw i8 %.promoted206.i.i to i1     ; 2 uses
  %i.m = icmp eq i64 %.promoted157.i.i, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i
  %.not.i.i.us.i.peel.i = icmp ult i64 %.promoted157.i.i, %i.i
  br i1 %.not.i.i.us.i.peel.i, label %bb.c, label %.split.i.i.us.i.peel.i

.split.i.i.us.i.peel.i:                           ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted157.i.i, %i.i
  br i1 %i.n, label %bb.d, label %.split.us161.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %.promoted157.i.i
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !227, !noalias !228, !noundef !5
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.split.us161.i.i

bb.d:                                             ; preds = %bb.c, %.split.i.i.us.i.peel.i, %.lr.ph.preheader.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %.promoted157.i.i ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted157.i.i, %i.i
  br i1 %i.s, label %.split166.us.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !229, !noundef !5 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted157.i.i, 1
  %i.z = icmp samesign ne i64 %i.y, %i.i
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !229, !noundef !5
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i, label %bb.g

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted157.i.i, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.i
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !229, !noundef !5
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.peel.i, label %bb.g

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted157.i.i, 3
  %i.at = icmp samesign ne i64 %i.as, %i.i
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !229, !noundef !5
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.peel.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i
  %.sroa.4.0.i.ph.i.us.i.peel.i = phi i32 [ %i.ap, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i ], [ %i.bb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.peel.i ], [ %i.ae, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i ], [ %i.bc, %bb.f ] ; 4 uses
end_hunk_0
