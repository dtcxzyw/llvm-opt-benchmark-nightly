Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/annotate_snippets-47999b4434a88afd.annotate_snippets.1c99614a877f4187-cgu.05?download=true
inline.NumInlined: 120
inline.NumDeleted: 63
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvBY_18render_source_line0E0EB12_:bb.a
  %i.ax = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ax, %i.ar
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotation7reverseBA_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB15_18render_source_line0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotation7reverseBA_.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.aq, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotation7reverseBA_.exit.i ], [ %i.ao, %bb.p ], [ %i.am, %bb.o ] ; 2 uses
  %i.ay = lshr i64 %.sroa.023.0, 1
  %i.az = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ba = sub nsw i64 %factor, %i.ay
  %i.bb = add nuw nsw i64 %i.az, %factor
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB18_18render_source_line0E0EB1c_.exit
  %.sroa.02.138 = phi i64 [ %i.bh, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB18_18render_source_line0E0EB1c_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB18_18render_source_line0E0EB1c_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bh = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.bj, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB18_18render_source_line0E0EB1c_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB18_18render_source_line0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB18_18render_source_line0E0EB1c_.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bl, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !3 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 5 uses
  %i.bp = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 5 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %i.br ; 3 uses
  %i.bt = icmp samesign ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.023.137 to i1
  %i.bv = or i64 %i.bn, %.sroa.023.137
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.by = shl nuw nsw i64 %i.bq, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB18_18render_source_line0E0EB1c_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bu, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bz = or i64 %i.bo, 1
  %i.ca = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB17_18render_source_line0E0EB1b_(ptr noalias noundef nonnull align 8 %i.bs, i64 noundef range(i64 0, 82351536043346213) %i.bo, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i32 noundef %i.cd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(112) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvBZ_18render_source_line0E0EB13_(ptr noalias noundef nonnull align 8 %i.bs, i64 noundef range(i64 0, 82351536043346213) %i.bq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i64 noundef %i.bo, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.ce = shl nuw nsw i64 %i.bq, 1
  %i.cf = or disjoint i64 %i.ce, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB18_18render_source_line0E0EB1c_.exit

bb.x:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw [112 x i8], ptr %i.bs, i64 %i.bo
  %i.ch = or i64 %i.bp, 1
  %i.ci = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB17_18render_source_line0E0EB1b_(ptr noalias noundef nonnull align 8 %i.cg, i64 noundef range(i64 0, 82351536043346213) %i.bp, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i32 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(112) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB18_18render_source_line0E0EB1c_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cf, %bb.w ], [ %i.by, %bb.t ] ; 2 uses
  %i.cm = icmp ugt i64 %i.bh, 1
  br i1 %i.cm, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cn = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.co = lshr i64 %.sroa.018.0, 1
  %i.cp = add nuw i64 %i.co, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cq = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cq, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cr = or i64 %1, 1
  %i.cs = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = xor i32 %i.cu, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB17_18render_source_line0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 82351536043346213) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i32 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(112) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB11_18render_source_lines2_0E0EB15_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [66 x i8], align 1                ; 4 uses
  %i.h = alloca [528 x i8], align 8               ; 4 uses
  %i.i = icmp samesign ult i64 %1, 2
  br i1 %i.i, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = udiv i64 4611686018427387904, %1
  %i.k = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.k, 0
  %i.l = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.j, %i.l         ; 2 uses
  %i.m = icmp samesign ult i64 %1, 4097
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %1, 1
  %i.p = sub nuw nsw i64 %1, %i.o
  %.sroa.0.0.i32 = tail call noundef range(i64 0, 576460752303423488) i64 @llvm.umin.i64(i64 %i.p, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.n, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fz, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fx, %bb.y ] ; 3 uses
  %i.w = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB18_18render_source_lines2_0E0EB1c_.exit
  %.sroa.021.0 = phi i8 [ %i.eq, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB18_18render_source_lines2_0E0EB1c_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB18_18render_source_lines2_0E0EB1c_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.x = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.x, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.y = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %.not.i33 = icmp ult i64 %i.y, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyTINtNtB8_3cmp7ReversejEbENCNvB17_18render_source_lines2_0E0EB1b_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp samesign ult i64 %i.y, 2
  br i1 %i.aa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %i.z, i64 24
  %.val10.i = load ptr, ptr %i.ab, align 8, !alias.scope !43, !nonnull !3, !align !44, !noundef !3 ; 5 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val11.i = load ptr, ptr %i.ac, align 8, !alias.scope !43, !nonnull !3, !align !44, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !45
  %i.ad = getelementptr inbounds nuw i8, ptr %.val10.i, i64 88
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !45, !noundef !3 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val10.i, i64 56
  %i.ag = load i64, ptr %i.af, align 8, !noalias !45, !noundef !3 ; 3 uses
  %6 = icmp ult i64 %i.ae, %i.ag
  %7 = sub nuw i64 %i.ag, %i.ae
  %i.ah = sub nuw i64 %i.ae, %i.ag
  %.sroa.0.0.i.i.i = select i1 %6, i64 %7, i64 %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %.val10.i, i64 105
  %i.aj = load i8, ptr %i.ai, align 1, !range !46, !noalias !45, !noundef !3
  %i.ak = icmp eq i8 %i.aj, 0                     ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.f, align 8, !noalias !45
  %i.al = zext i1 %i.ak to i8
  store i8 %i.al, ptr %i.q, align 8, !noalias !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !45
  %i.am = getelementptr inbounds nuw i8, ptr %.val11.i, i64 88
  %i.an = load i64, ptr %i.am, align 8, !noalias !45, !noundef !3 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val11.i, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !45, !noundef !3 ; 3 uses
  %8 = icmp ult i64 %i.an, %i.ap
  %9 = sub nuw i64 %i.ap, %i.an
  %i.aq = sub nuw i64 %i.an, %i.ap
  %.sroa.0.0.i3.i.i = select i1 %8, i64 %9, i64 %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %.val11.i, i64 105
  %i.as = load i8, ptr %i.ar, align 1, !range !46, !noalias !45, !noundef !3
  %i.at = icmp eq i8 %i.as, 0                     ; 2 uses
  store i64 %.sroa.0.0.i3.i.i, ptr %i.e, align 8, !noalias !45
  %i.au = zext i1 %i.at to i8
  store i8 %i.au, ptr %i.r, align 8, !noalias !45
  %i.av = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_ltECs2sepWsjoOnX_17annotate_snippets(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e), !noalias !45 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.av, 2
  br i1 %.not.i.i.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.k
  %i.aw = trunc nuw i8 %i.av to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !45
  br i1 %i.aw, label %.preheader.i, label %.preheader37.i

.preheader.i:                                     ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit.i, %.split.i
  %.not48.i = icmp eq i64 %i.y, 2
  br i1 %.not48.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyTINtNtB8_3cmp7ReversejEbENCNvB17_18render_source_lines2_0E0EB1b_.exit.i, label %.lr.ph43.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit.i: ; preds = %bb.k
  %i.ax = xor i1 %i.ak, true
  %i.ay = and i1 %i.at, %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !45
  br i1 %i.ay, label %.preheader.i, label %.preheader37.i

.preheader37.i:                                   ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit.i, %.split.i
  %.not47.i = icmp eq i64 %i.y, 2
  br i1 %.not47.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyTINtNtB8_3cmp7ReversejEbENCNvB17_18render_source_lines2_0E0EB1b_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader37.i, %bb.l
  %.val9.i = phi ptr [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader37.i ] ; 3 uses
  %.sroa.01.0.i39.i = phi i64 [ %i.bz, %bb.l ], [ 2, %.preheader37.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.01.0.i39.i
  %i.ba = add nsw i64 %.sroa.01.0.i39.i, -1
  %i.bb = icmp samesign ult i64 %i.ba, %i.y
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr i8, ptr %i.az, i64 8
  %.val8.i = load ptr, ptr %i.bc, align 8, !alias.scope !43, !nonnull !3, !align !44, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !45
  %i.bd = getelementptr inbounds nuw i8, ptr %.val8.i, i64 88
  %i.be = load i64, ptr %i.bd, align 8, !noalias !45, !noundef !3 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val8.i, i64 56
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !45, !noundef !3 ; 3 uses
  %10 = icmp ult i64 %i.be, %i.bg
  %11 = sub nuw i64 %i.bg, %i.be
  %i.bh = sub nuw i64 %i.be, %i.bg
  %.sroa.0.0.i.i12.i = select i1 %10, i64 %11, i64 %i.bh
  %i.bi = getelementptr inbounds nuw i8, ptr %.val8.i, i64 105
  %i.bj = load i8, ptr %i.bi, align 1, !range !46, !noalias !45, !noundef !3
  %i.bk = icmp eq i8 %i.bj, 0                     ; 2 uses
  store i64 %.sroa.0.0.i.i12.i, ptr %i.d, align 8, !noalias !45
  %i.bl = zext i1 %i.bk to i8
  store i8 %i.bl, ptr %i.s, align 8, !noalias !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45
  %i.bm = getelementptr inbounds nuw i8, ptr %.val9.i, i64 88
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !45, !noundef !3 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val9.i, i64 56
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !45, !noundef !3 ; 3 uses
  %12 = icmp ult i64 %i.bn, %i.bp
  %13 = sub nuw i64 %i.bp, %i.bn
  %i.bq = sub nuw i64 %i.bn, %i.bp
  %.sroa.0.0.i3.i13.i = select i1 %12, i64 %13, i64 %i.bq
  %i.br = getelementptr inbounds nuw i8, ptr %.val9.i, i64 105
  %i.bs = load i8, ptr %i.br, align 1, !range !46, !noalias !45, !noundef !3
  %i.bt = icmp eq i8 %i.bs, 0                     ; 2 uses
  store i64 %.sroa.0.0.i3.i13.i, ptr %i.c, align 8, !noalias !45
  %i.bu = zext i1 %i.bt to i8
  store i8 %i.bu, ptr %i.t, align 8, !noalias !45
  %i.bv = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_ltECs2sepWsjoOnX_17annotate_snippets(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !45 ; 2 uses
  %.not.i.i14.i = icmp eq i8 %i.bv, 2
  br i1 %.not.i.i14.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit16.i, label %.split27.i

.split27.i:                                       ; preds = %.lr.ph.i
  %i.bw = trunc nuw i8 %i.bv to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45
  br i1 %i.bw, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyTINtNtB8_3cmp7ReversejEbENCNvB17_18render_source_lines2_0E0EB1b_.exit.i, label %bb.l

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit16.i: ; preds = %.lr.ph.i
  %i.bx = xor i1 %i.bk, true
  %i.by = and i1 %i.bt, %i.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45
  br i1 %i.by, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyTINtNtB8_3cmp7ReversejEbENCNvB17_18render_source_lines2_0E0EB1b_.exit.i, label %bb.l

bb.l:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit16.i, %.split27.i
  %i.bz = add nuw nsw i64 %.sroa.01.0.i39.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bz, %i.y
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyTINtNtB8_3cmp7ReversejEbENCNvB17_18render_source_lines2_0E0EB1b_.exit.i, label %.lr.ph.i

.lr.ph43.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi ptr [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ] ; 3 uses
  %.sroa.01.1.i42.i = phi i64 [ %i.da, %bb.m ], [ 2, %.preheader.i ] ; 5 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.01.1.i42.i
  %i.cb = add nsw i64 %.sroa.01.1.i42.i, -1
  %i.cc = icmp samesign ult i64 %i.cb, %i.y
  call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr i8, ptr %i.ca, i64 8
  %.val.i = load ptr, ptr %i.cd, align 8, !alias.scope !43, !nonnull !3, !align !44, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i, i64 88
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !45, !noundef !3 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !45, !noundef !3 ; 3 uses
  %14 = icmp ult i64 %i.cf, %i.ch
  %15 = sub nuw i64 %i.ch, %i.cf
  %i.ci = sub nuw i64 %i.cf, %i.ch
  %.sroa.0.0.i.i17.i = select i1 %14, i64 %15, i64 %i.ci
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i, i64 105
  %i.ck = load i8, ptr %i.cj, align 1, !range !46, !noalias !45, !noundef !3
  %i.cl = icmp eq i8 %i.ck, 0                     ; 2 uses
  store i64 %.sroa.0.0.i.i17.i, ptr %i.b, align 8, !noalias !45
  %i.cm = zext i1 %i.cl to i8
  store i8 %i.cm, ptr %i.u, align 8, !noalias !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45
  %i.cn = getelementptr inbounds nuw i8, ptr %.val7.i, i64 88
  %i.co = load i64, ptr %i.cn, align 8, !noalias !45, !noundef !3 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val7.i, i64 56
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !45, !noundef !3 ; 3 uses
  %16 = icmp ult i64 %i.co, %i.cq
  %17 = sub nuw i64 %i.cq, %i.co
  %i.cr = sub nuw i64 %i.co, %i.cq
  %.sroa.0.0.i3.i18.i = select i1 %16, i64 %17, i64 %i.cr
  %i.cs = getelementptr inbounds nuw i8, ptr %.val7.i, i64 105
  %i.ct = load i8, ptr %i.cs, align 1, !range !46, !noalias !45, !noundef !3
  %i.cu = icmp eq i8 %i.ct, 0                     ; 2 uses
  store i64 %.sroa.0.0.i3.i18.i, ptr %i.a, align 8, !noalias !45
  %i.cv = zext i1 %i.cu to i8
  store i8 %i.cv, ptr %i.v, align 8, !noalias !45
  %i.cw = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_ltECs2sepWsjoOnX_17annotate_snippets(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !45 ; 2 uses
  %.not.i.i19.i = icmp eq i8 %i.cw, 2
  br i1 %.not.i.i19.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit21.i, label %.split28.i

.split28.i:                                       ; preds = %.lr.ph43.i
  %i.cx = trunc nuw i8 %i.cw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45
  br i1 %i.cx, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyTINtNtB8_3cmp7ReversejEbENCNvB17_18render_source_lines2_0E0EB1b_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit21.i: ; preds = %.lr.ph43.i
  %i.cy = xor i1 %i.cl, true
  %i.cz = and i1 %i.cu, %i.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45
  br i1 %i.cz, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyTINtNtB8_3cmp7ReversejEbENCNvB17_18render_source_lines2_0E0EB1b_.exit.i

bb.m:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit21.i, %.split28.i
  %i.da = add nuw nsw i64 %.sroa.01.1.i42.i, 1    ; 2 uses
  %exitcond52.not.i = icmp eq i64 %i.da, %i.y
  br i1 %exitcond52.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyTINtNtB8_3cmp7ReversejEbENCNvB17_18render_source_lines2_0E0EB1b_.exit.i, label %.lr.ph43.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyTINtNtB8_3cmp7ReversejEbENCNvB17_18render_source_lines2_0E0EB1b_.exit.i: ; preds = %bb.l, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit16.i, %.split27.i, %bb.m, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit21.i, %.split28.i, %.preheader37.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader.i ], [ false, %.preheader37.i ], [ true, %bb.m ], [ true, %.split28.i ], [ true, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit21.i ], [ false, %.split27.i ], [ false, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit16.i ], [ false, %bb.l ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader.i ], [ 2, %.preheader37.i ], [ %i.y, %bb.m ], [ %.sroa.01.1.i42.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit21.i ], [ %.sroa.01.1.i42.i, %.split28.i ], [ %i.y, %bb.l ], [ %.sroa.01.0.i39.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE11sort_by_keyTINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEbENCNvBC_18render_source_lines2_0E0BG_.exit16.i ], [ %.sroa.01.0.i39.i, %.split27.i ] ; 9 uses
  %i.db = icmp samesign ule i64 %.sroa.0.0.i.i, %i.y
  call void @llvm.assume(i1 %i.db)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyTINtNtB8_3cmp7ReversejEbENCNvB17_18render_source_lines2_0E0EB1b_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i22.i = call noundef range(i64 0, 576460752303423488) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.y, i64 %.sroa.01.0)
  %i.dc = shl nuw nsw i64 %.sroa.0.0.i22.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB18_18render_source_lines2_0E0EB1c_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i23.i = call noundef range(i64 0, 576460752303423488) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.y, i64 32) ; 2 uses
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB1a_18render_source_lines2_0E0EB1e_(ptr noalias noundef nonnull align 8 %i.z, i64 noundef %.sroa.0.0.i23.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.dd = shl nuw nsw i64 %.sroa.0.0.i23.i, 1
  %i.de = or disjoint i64 %i.dd, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB18_18render_source_lines2_0E0EB1c_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.i.i.i
  %i.df = and i64 %.sroa.0.0.i.i, 2
  %lcmp.mod.not = icmp eq i64 %i.df, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.i.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_.exit.i.loopexit.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i ], [ %i.eh, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod61 = trunc i64 %i.dp to i1
  call void @llvm.assume(i1 %lcmp.mod61)
  %i.dg = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.0.016.i.i.i.epil.init ; 3 uses
  %i.di = getelementptr [16 x i8], ptr %i.dq, i64 %i.dg ; 3 uses
  %i.dj = load i64, ptr %i.dh, align 8, !alias.scope !47, !noundef !3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !47, !nonnull !3, !align !44, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false), !alias.scope !48
  store i64 %i.dj, ptr %i.di, align 8, !alias.scope !49
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dl, ptr %i.dm, align 8, !alias.scope !49
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_.exit.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.i.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_.exit.i.loopexit.unr-lcssa, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i34.i = phi i64 [ %i.y, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.i.i.i.epil.preheader ]
  %i.dn = shl nuw nsw i64 %.sroa.0.0.i34.i, 1
  %i.do = or disjoint i64 %i.dn, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB18_18render_source_lines2_0E0EB1c_.exit

bb.q:                                             ; preds = %bb.n
  %i.dp = lshr i64 %.sroa.0.0.i.i, 1              ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %.not.i.i24.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i24.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i: ; preds = %bb.q
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.0.0.i.i ; 3 uses
  %i.dr = icmp eq i64 %i.dp, 1
  br i1 %i.dr, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.dp, 9223372036854775806
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i.new ], [ %i.eh, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.i.i.i ]
  %i.ds = xor i64 %.sroa.0.016.i.i.i, -1
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.0.016.i.i.i ; 3 uses
  %i.du = getelementptr [16 x i8], ptr %i.dq, i64 %i.ds ; 3 uses
  %i.dv = load i64, ptr %i.dt, align 8, !alias.scope !47, !noundef !3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !47, !nonnull !3, !align !44, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 16, i1 false), !alias.scope !48
  store i64 %i.dv, ptr %i.du, align 8, !alias.scope !49
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dx, ptr %i.dy, align 8, !alias.scope !49
  %i.dz = xor i64 %.sroa.0.016.i.i.i, -2
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ec = getelementptr [16 x i8], ptr %i.dq, i64 %i.dz ; 3 uses
  %i.ed = load i64, ptr %i.eb, align 8, !alias.scope !47, !noundef !3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !47, !nonnull !3, !align !44, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i64 16, i1 false), !alias.scope !48
  store i64 %i.ed, ptr %i.ec, align 8, !alias.scope !49
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.ef, ptr %i.eg, align 8, !alias.scope !49
  %i.eh = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_.exit.i.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE12split_at_mutBD_.exit11.i.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB18_18render_source_lines2_0E0EB1c_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.do, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_.exit.i ], [ %i.de, %bb.p ], [ %i.dc, %bb.o ] ; 2 uses
  %i.ei = lshr i64 %.sroa.023.0, 1
  %i.ej = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ek = sub nsw i64 %factor, %i.ei
  %i.el = add nuw nsw i64 %i.ej, %factor
  %i.em = mul i64 %i.ek, %.sroa.0.0
  %i.en = mul i64 %i.el, %.sroa.0.0
  %i.eo = xor i64 %i.en, %i.em
  %i.ep = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eo, i1 false)
  %i.eq = trunc nuw nsw i64 %i.ep to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB1b_18render_source_lines2_0E0EB1f_.exit
  %.sroa.02.138 = phi i64 [ %i.er, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB1b_18render_source_lines2_0E0EB1f_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB1b_18render_source_lines2_0E0EB1f_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.er = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.et, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB1b_18render_source_lines2_0E0EB1f_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB1b_18render_source_lines2_0E0EB1f_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB1b_18render_source_lines2_0E0EB1f_.exit ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ev, align 1
  br i1 %i.w, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.er
  %i.ex = load i64, ptr %i.ew, align 8, !noundef !3 ; 3 uses
  %i.ey = lshr i64 %i.ex, 1                       ; 5 uses
  %i.ez = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.fa = add nuw i64 %i.ey, %i.ez                ; 5 uses
  %i.fb = sub i64 %.sroa.09.0, %i.fa
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.fb ; 3 uses
  %i.fd = icmp samesign ugt i64 %i.fa, %3
  %i.fe = trunc i64 %.sroa.023.137 to i1
  %i.ff = or i64 %i.ex, %.sroa.023.137
  %i.fg = trunc i64 %i.ff to i1
  %or.cond3.i = or i1 %i.fd, %i.fg
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fh = trunc i64 %i.ex to i1
  br i1 %i.fh, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.fi = shl nuw nsw i64 %i.fa, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB1b_18render_source_lines2_0E0EB1f_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.fe, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.fj = or i64 %i.ey, 1
  %i.fk = call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.fj, i1 true)
  %i.fl = trunc nuw nsw i64 %i.fk to i32
  %i.fm = shl nuw nsw i32 %i.fl, 1
  %i.fn = xor i32 %i.fm, 126
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB1a_18render_source_lines2_0E0EB1e_(ptr noalias noundef nonnull align 8 %i.fc, i64 noundef range(i64 0, 576460752303423488) %i.ey, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.fn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB12_18render_source_lines2_0E0EB16_(ptr noalias noundef nonnull align 8 %i.fc, i64 noundef range(i64 0, 576460752303423488) %i.fa, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.ey, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.fo = shl nuw nsw i64 %i.fa, 1
  %i.fp = or disjoint i64 %i.fo, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB1b_18render_source_lines2_0E0EB1f_.exit

bb.x:                                             ; preds = %bb.u
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.ey
  %i.fr = or i64 %i.ez, 1
  %i.fs = call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.fr, i1 true)
  %i.ft = trunc nuw nsw i64 %i.fs to i32
  %i.fu = shl nuw nsw i32 %i.ft, 1
  %i.fv = xor i32 %i.fu, 126
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB1a_18render_source_lines2_0E0EB1e_(ptr noalias noundef nonnull align 8 %i.fq, i64 noundef range(i64 0, 576460752303423488) %i.ez, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.fv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB1b_18render_source_lines2_0E0EB1f_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.fp, %bb.w ], [ %i.fi, %bb.t ] ; 2 uses
  %i.fw = icmp ugt i64 %i.er, 1
  br i1 %i.fw, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.fx = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fy = lshr i64 %.sroa.018.0, 1
  %i.fz = add nuw i64 %i.fy, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.ga = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ga, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gb = or i64 %1, 1
  %i.gc = call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.gb, i1 true)
  %i.gd = trunc nuw nsw i64 %i.gc to i32
  %i.ge = shl nuw nsw i32 %i.gd, 1
  %i.gf = xor i32 %i.ge, 126
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB1a_18render_source_lines2_0E0EB1e_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.gf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs2sepWsjoOnX_17annotate_snippets7snippet5PatchNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyjNCNvMNtNtB19_8renderer10source_mapNtB2P_9SourceMap12splice_liness_0E0EB19_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyjNCNvMB17_NtB17_9SourceMap22add_annotation_to_files0_0E0EB1b_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyjNCNvMB17_NtB17_9SourceMap9keep_lines0_0E0EB1b_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map19MultilineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyTjjENCNvMB17_NtB17_9SourceMap15annotated_liness0_0E0EB1b_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 88686269585142076), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 88686269585142076), i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB17_18render_source_line0E0EB1b_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 82351536043346213), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 82351536043346213), i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(112), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB1a_18render_source_lines2_0E0EB1e_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtCs2sepWsjoOnX_17annotate_snippets7snippet5PatchNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyjNCNvMNtNtB11_8renderer10source_mapNtB2G_9SourceMap12splice_liness_0E0EB11_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyjNCNvMBZ_NtBZ_9SourceMap22add_annotation_to_files0_0E0EB13_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyjNCNvMBZ_NtBZ_9SourceMap9keep_lines0_0E0EB13_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map19MultilineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyTjjENCNvMBZ_NtBZ_9SourceMap15annotated_liness0_0E0EB13_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 88686269585142076), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 88686269585142076), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvBZ_18render_source_line0E0EB13_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 82351536043346213), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 82351536043346213), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB12_18render_source_lines2_0E0EB16_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2sepWsjoOnX_17annotate_snippets(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_ltECs2sepWsjoOnX_17annotate_snippets(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = distinct !{!4, i1 true, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs2sepWsjoOnX_17annotate_snippets7snippet5PatchNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvMNtNtB17_8renderer10source_mapNtB2N_9SourceMap12splice_liness_0E0EB17_"}
!5 = distinct !{!5, !4, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs2sepWsjoOnX_17annotate_snippets7snippet5PatchNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvMNtNtB17_8renderer10source_mapNtB2N_9SourceMap12splice_liness_0E0EB17_: argument 0"}
!6 = distinct !{!6, !4, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs2sepWsjoOnX_17annotate_snippets7snippet5PatchNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvMNtNtB17_8renderer10source_mapNtB2N_9SourceMap12splice_liness_0E0EB17_: argument 2"}
!7 = distinct !{!7, !4, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs2sepWsjoOnX_17annotate_snippets7snippet5PatchNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvMNtNtB17_8renderer10source_mapNtB2N_9SourceMap12splice_liness_0E0EB17_: argument 1"}
!8 = !{!5}
!9 = !{!7, !6}
!10 = distinct !{!10, i1 true, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvMB15_NtB15_9SourceMap22add_annotation_to_files0_0E0EB19_"}
!11 = distinct !{!11, !10, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvMB15_NtB15_9SourceMap22add_annotation_to_files0_0E0EB19_: argument 0"}
!12 = distinct !{!12, !10, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvMB15_NtB15_9SourceMap22add_annotation_to_files0_0E0EB19_: argument 2"}
!13 = distinct !{!13, !10, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvMB15_NtB15_9SourceMap22add_annotation_to_files0_0E0EB19_: argument 1"}
!14 = !{!11}
!15 = !{!13, !12}
!16 = distinct !{!16, i1 true, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvMB15_NtB15_9SourceMap9keep_lines0_0E0EB19_"}
!17 = distinct !{!17, !16, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvMB15_NtB15_9SourceMap9keep_lines0_0E0EB19_: argument 0"}
!18 = distinct !{!18, !16, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvMB15_NtB15_9SourceMap9keep_lines0_0E0EB19_: argument 2"}
!19 = distinct !{!19, !16, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map17AnnotatedLineInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvMB15_NtB15_9SourceMap9keep_lines0_0E0EB19_: argument 1"}
!20 = !{!17}
!21 = !{!19, !18}
!22 = distinct !{!22, i1 true, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map19MultilineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTjjENCNvMB15_NtB15_9SourceMap15annotated_liness0_0E0EB19_"}
!23 = distinct !{!23, !22, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map19MultilineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTjjENCNvMB15_NtB15_9SourceMap15annotated_liness0_0E0EB19_: argument 0"}
!24 = distinct !{!24, !22, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map19MultilineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTjjENCNvMB15_NtB15_9SourceMap15annotated_liness0_0E0EB19_: argument 2"}
!25 = distinct !{!25, !22, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer10source_map19MultilineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTjjENCNvMB15_NtB15_9SourceMap15annotated_liness0_0E0EB19_: argument 1"}
!26 = !{!23}
!27 = !{!25, !24}
!28 = distinct !{!28, i1 true, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB15_18render_source_line0E0EB19_"}
!29 = distinct !{!29, !28, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB15_18render_source_line0E0EB19_: argument 0"}
!30 = distinct !{!30, !28, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB15_18render_source_line0E0EB19_: argument 2"}
!31 = distinct !{!31, !28, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseTjjEENCNvB15_18render_source_line0E0EB19_: argument 1"}
!32 = !{!29}
!33 = !{!31, !30}
!34 = distinct !{!34, i1 true, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB18_18render_source_lines2_0E0EB1c_"}
!35 = distinct !{!35, !34, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB18_18render_source_lines2_0E0EB1c_: argument 0"}
!36 = distinct !{!36, !34, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB18_18render_source_lines2_0E0EB1c_: argument 2"}
!37 = distinct !{!37, !34, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTINtNtBa_3cmp7ReversejEbENCNvB18_18render_source_lines2_0E0EB1c_: argument 1"}
!38 = distinct !{!38, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_"}
!39 = distinct !{!39, !38, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationE7reverseBD_: argument 0"}
!40 = distinct !{!40, i1 true, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationEEBX_"}
!41 = distinct !{!41, !40, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationEEBX_: argument 0"}
!42 = distinct !{!42, !40, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTjRNtNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render14LineAnnotationEEBX_: argument 1"}
!43 = !{!35}
!44 = !{i64 8}
!45 = !{!35, !37, !36}
!46 = !{i8 0, i8 3}
!47 = !{!41, !39, !35}
!48 = !{!41, !42, !39, !35}
!49 = !{!42, !39, !35}
!50 = !{!41}
!51 = !{!42}
end_hunk_0
