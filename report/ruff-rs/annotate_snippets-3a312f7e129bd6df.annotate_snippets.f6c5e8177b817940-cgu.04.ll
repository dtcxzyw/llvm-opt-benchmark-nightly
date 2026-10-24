Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/annotate_snippets-3a312f7e129bd6df.annotate_snippets.f6c5e8177b817940-cgu.04?download=true
inline.NumInlined: 63
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_BY_NtBY_10DisplaySet11format_lines0_0E0EB12_:bb.a
  %i.ak = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.al = getelementptr [88 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslbzaBBLIgs6_17annotate_snippets(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 11)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationEB16_.exit.i.i.i unwind label %bb.q, !noalias !15

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #9, !noalias !15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationEB16_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotation7reverseBA_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B15_NtB15_10DisplaySet11format_lines0_0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotation7reverseBA_.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotation7reverseBA_.exit.i ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ao = lshr i64 %.sroa.023.0, 1
  %i.ap = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aq = sub nsw i64 %factor, %i.ao
  %i.ar = add nuw i64 %i.ap, %factor
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = xor i64 %i.at, %i.as
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines0_0E0EB1c_.exit
  %.sroa.02.138 = phi i64 [ %i.ax, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines0_0E0EB1c_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines0_0E0EB1c_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines0_0E0EB1c_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines0_0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines0_0E0EB1c_.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !3 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.bh ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.023.137 to i1
  %i.bl = or i64 %i.bd, %.sroa.023.137
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bo = shl nuw nsw i64 %i.bg, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines0_0E0EB1c_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B17_NtB17_10DisplaySet11format_lines0_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 104811045873349726) %i.be, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_BZ_NtBZ_10DisplaySet11format_lines0_0E0EB13_(ptr noalias noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 104811045873349726) %i.bg, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i64 noundef %i.be, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.bu = shl nuw nsw i64 %i.bg, 1
  %i.bv = or disjoint i64 %i.bu, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines0_0E0EB1c_.exit

bb.x:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw [88 x i8], ptr %i.bi, i64 %i.be
  %i.bx = or i64 %i.bf, 1
  %i.by = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B17_NtB17_10DisplaySet11format_lines0_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.bw, i64 noundef range(i64 0, 104811045873349726) %i.bf, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.cb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines0_0E0EB1c_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.bv, %bb.w ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw i64 %i.ce, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cg = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cg, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = or i64 %1, 1
  %i.ci = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B17_NtB17_10DisplaySet11format_lines0_0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B11_NtB11_10DisplaySet11format_lines5_0E0EB15_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef range(i64 0, 576460752303423488) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dy, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dw, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines5_0E0EB1c_.exit
  %.sroa.021.0 = phi i8 [ %i.cp, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines5_0E0EB1c_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines5_0E0EB1c_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs2_B17_NtB17_10DisplaySet11format_lines5_0E0EB1b_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 24
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !25, !nonnull !3, !align !26, !noundef !3 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %.val11.i = load ptr, ptr %i.q, align 8, !alias.scope !25, !nonnull !3, !align !26, !noundef !3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val10.i, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 72
  %i.t = load i64, ptr %i.s, align 8, !noalias !27, !noundef !3 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !noalias !27, !noundef !3 ; 3 uses
  %i.v = sub nsw i64 %i.t, %i.u
  %.sroa.0.0.i.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.v, i1 true)
  %i.w = getelementptr inbounds nuw i8, ptr %.val11.i, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %.val11.i, i64 72
  %i.y = load i64, ptr %i.x, align 8, !noalias !27, !noundef !3
  %i.z = load i64, ptr %i.w, align 8, !noalias !27, !noundef !3
  %i.aa = sub nsw i64 %i.y, %i.z
  %.sroa.0.0.i5.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.aa, i1 true)
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i5.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not37.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ab, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %.preheader26.i, %bb.l
  %i.ac = phi i64 [ %i.aj, %bb.l ], [ %i.u, %.preheader26.i ]
  %i.ad = phi i64 [ %i.ai, %bb.l ], [ %i.t, %.preheader26.i ]
  %.sroa.01.0.i28.i = phi i64 [ %i.an, %bb.l ], [ 2, %.preheader26.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i28.i
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val8.i = load ptr, ptr %i.af, align 8, !alias.scope !25, !nonnull !3, !align !26, !noundef !3 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %.val8.i, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !27, !noundef !3 ; 2 uses
  %i.aj = load i64, ptr %i.ag, align 8, !noalias !27, !noundef !3 ; 2 uses
  %i.ak = sub nsw i64 %i.ai, %i.aj
  %.sroa.0.0.i.i12.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.ak, i1 true)
  %i.al = sub nsw i64 %i.ad, %i.ac
  %.sroa.0.0.i5.i13.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.al, i1 true)
  %i.am = icmp samesign ult i64 %.sroa.0.0.i5.i13.i, %.sroa.0.0.i.i12.i
  br i1 %i.am, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs2_B17_NtB17_10DisplaySet11format_lines5_0E0EB1b_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.an = add nuw nsw i64 %.sroa.01.0.i28.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.an, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs2_B17_NtB17_10DisplaySet11format_lines5_0E0EB1b_.exit.i, label %.lr.ph.i

.lr.ph32.i:                                       ; preds = %.preheader.i, %bb.m
  %i.ao = phi i64 [ %i.av, %bb.m ], [ %i.u, %.preheader.i ]
  %i.ap = phi i64 [ %i.au, %bb.m ], [ %i.t, %.preheader.i ]
  %.sroa.01.1.i31.i = phi i64 [ %i.az, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i31.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val.i = load ptr, ptr %i.ar, align 8, !alias.scope !25, !nonnull !3, !align !26, !noundef !3 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 72
  %i.au = load i64, ptr %i.at, align 8, !noalias !27, !noundef !3 ; 2 uses
  %i.av = load i64, ptr %i.as, align 8, !noalias !27, !noundef !3 ; 2 uses
  %i.aw = sub nsw i64 %i.au, %i.av
  %.sroa.0.0.i.i14.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.aw, i1 true)
  %i.ax = sub nsw i64 %i.ap, %i.ao
  %.sroa.0.0.i5.i15.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.ax, i1 true)
  %i.ay = icmp samesign ult i64 %.sroa.0.0.i5.i15.i, %.sroa.0.0.i.i14.i
  br i1 %i.ay, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs2_B17_NtB17_10DisplaySet11format_lines5_0E0EB1b_.exit.i

bb.m:                                             ; preds = %.lr.ph32.i
  %i.az = add nuw nsw i64 %.sroa.01.1.i31.i, 1    ; 2 uses
  %exitcond40.not.i = icmp eq i64 %i.az, %i.m
  br i1 %exitcond40.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs2_B17_NtB17_10DisplaySet11format_lines5_0E0EB1b_.exit.i, label %.lr.ph32.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs2_B17_NtB17_10DisplaySet11format_lines5_0E0EB1b_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph32.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i31.i, %.lr.ph32.i ], [ %.sroa.01.0.i28.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.ba = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ba)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs2_B17_NtB17_10DisplaySet11format_lines5_0E0EB1b_.exit.i
  br i1 %i.ab, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i16.i = tail call noundef range(i64 0, 576460752303423488) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.bb = shl nuw nsw i64 %.sroa.0.0.i16.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines5_0E0EB1c_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i17.i = tail call noundef range(i64 0, 576460752303423488) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B1a_NtB1a_10DisplaySet11format_lines5_0E0EB1e_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i17.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.bc = shl nuw nsw i64 %.sroa.0.0.i17.i, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines5_0E0EB1c_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.i.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i.loopexit.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i ], [ %i.cg, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod58 = trunc i64 %i.bo to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.be = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 3 uses
  %i.bg = getelementptr [16 x i8], ptr %i.bp, i64 %i.be ; 3 uses
  %i.bh = load i64, ptr %i.bf, align 8, !alias.scope !28, !noundef !3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !28, !nonnull !3, !align !26, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !alias.scope !29
  store i64 %i.bh, ptr %i.bg, align 8, !alias.scope !30
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !alias.scope !30
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.i.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i.loopexit.unr-lcssa, %.preheader26.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i23.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader26.i ], [ %.sroa.0.0.i606771.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i606771.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.i.i.i.epil.preheader ]
  %i.bl = shl nuw nsw i64 %.sroa.0.0.i23.i, 1
  %i.bm = or disjoint i64 %i.bl, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines5_0E0EB1c_.exit

bb.q:                                             ; preds = %bb.n
  %i.bn = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %.not.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bo = phi i64 [ %i.bn, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i606771.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i606771.i ; 3 uses
  %xtraiter = and i64 %i.bo, 1
  %i.bq = icmp eq i64 %i.bo, 1
  br i1 %i.bq, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.bo, 9223372036854775806
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i.new ], [ %i.cg, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.i.i.i ]
  %i.br = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 3 uses
  %i.bt = getelementptr [16 x i8], ptr %i.bp, i64 %i.br ; 3 uses
  %i.bu = load i64, ptr %i.bs, align 8, !alias.scope !28, !noundef !3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !28, !nonnull !3, !align !26, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !alias.scope !29
  store i64 %i.bu, ptr %i.bt, align 8, !alias.scope !30
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !alias.scope !30
  %i.by = xor i64 %.sroa.0.016.i.i.i, -2
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cb = getelementptr [16 x i8], ptr %i.bp, i64 %i.by ; 3 uses
  %i.cc = load i64, ptr %i.ca, align 8, !alias.scope !28, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !28, !nonnull !3, !align !26, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !alias.scope !29
  store i64 %i.cc, ptr %i.cb, align 8, !alias.scope !30
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.ce, ptr %i.cf, align 8, !alias.scope !30
  %i.cg = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE12split_at_mutBD_.exit11.i.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines5_0E0EB1c_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.bm, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_.exit.i ], [ %i.bd, %bb.p ], [ %i.bb, %bb.o ] ; 2 uses
  %i.ch = lshr i64 %.sroa.023.0, 1
  %i.ci = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cj = sub nsw i64 %factor, %i.ch
  %i.ck = add nuw nsw i64 %i.ci, %factor
  %i.cl = mul i64 %i.cj, %.sroa.0.0
  %i.cm = mul i64 %i.ck, %.sroa.0.0
  %i.cn = xor i64 %i.cm, %i.cl
  %i.co = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cn, i1 false)
  %i.cp = trunc nuw nsw i64 %i.co to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B1b_NtB1b_10DisplaySet11format_lines5_0E0EB1f_.exit
  %.sroa.02.138 = phi i64 [ %i.cq, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B1b_NtB1b_10DisplaySet11format_lines5_0E0EB1f_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B1b_NtB1b_10DisplaySet11format_lines5_0E0EB1f_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.cq = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.cs, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B1b_NtB1b_10DisplaySet11format_lines5_0E0EB1f_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B1b_NtB1b_10DisplaySet11format_lines5_0E0EB1f_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B1b_NtB1b_10DisplaySet11format_lines5_0E0EB1f_.exit ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cu, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cq
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !3 ; 3 uses
  %i.cx = lshr i64 %i.cw, 1                       ; 5 uses
  %i.cy = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.cz = add nuw i64 %i.cx, %i.cy                ; 5 uses
  %i.da = sub i64 %.sroa.09.0, %i.cz
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.da ; 3 uses
  %i.dc = icmp samesign ugt i64 %i.cz, %3
  %i.dd = trunc i64 %.sroa.023.137 to i1
  %i.de = or i64 %i.cw, %.sroa.023.137
  %i.df = trunc i64 %i.de to i1
  %or.cond3.i = or i1 %i.dc, %i.df
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dg = trunc i64 %i.cw to i1
  br i1 %i.dg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dh = shl nuw nsw i64 %i.cz, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B1b_NtB1b_10DisplaySet11format_lines5_0E0EB1f_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.dd, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.di = or i64 %i.cx, 1
  %i.dj = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B1a_NtB1a_10DisplaySet11format_lines5_0E0EB1e_(ptr noalias noundef nonnull align 8 %i.db, i64 noundef range(i64 0, 576460752303423488) %i.cx, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B12_NtB12_10DisplaySet11format_lines5_0E0EB16_(ptr noalias noundef nonnull align 8 %i.db, i64 noundef range(i64 0, 576460752303423488) %i.cz, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.cx, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.dn = shl nuw nsw i64 %i.cz, 1
  %i.do = or disjoint i64 %i.dn, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B1b_NtB1b_10DisplaySet11format_lines5_0E0EB1f_.exit

bb.x:                                             ; preds = %bb.u
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.cx
  %i.dq = or i64 %i.cy, 1
  %i.dr = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dq, i1 true)
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 1
  %i.du = xor i32 %i.dt, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B1a_NtB1a_10DisplaySet11format_lines5_0E0EB1e_(ptr noalias noundef nonnull align 8 %i.dp, i64 noundef range(i64 0, 576460752303423488) %i.cy, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.du, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B1b_NtB1b_10DisplaySet11format_lines5_0E0EB1f_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.do, %bb.w ], [ %i.dh, %bb.t ] ; 2 uses
  %i.dv = icmp ugt i64 %i.cq, 1
  br i1 %i.dv, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dw = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dx = lshr i64 %.sroa.018.0, 1
  %i.dy = add nuw i64 %i.dx, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dz = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dz, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ea = or i64 %1, 1
  %i.eb = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B1a_NtB1a_10DisplaySet11format_lines5_0E0EB1e_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ee, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
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
declare void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCslbzaBBLIgs6_17annotate_snippets7snippet10AnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyjNCNvNtNtB19_8renderer12display_list11format_bodys1_0E0EB19_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B17_NtB17_10DisplaySet11format_lines0_0E0EB1b_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726), i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B1a_NtB1a_10DisplaySet11format_lines5_0E0EB1e_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtCslbzaBBLIgs6_17annotate_snippets7snippet10AnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyjNCNvNtNtB11_8renderer12display_list11format_bodys1_0E0EB11_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_BZ_NtBZ_10DisplaySet11format_lines0_0E0EB13_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B12_NtB12_10DisplaySet11format_lines5_0E0EB16_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslbzaBBLIgs6_17annotate_snippets(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

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
!4 = distinct !{!4, i1 true, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCslbzaBBLIgs6_17annotate_snippets7snippet10AnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvNtNtB17_8renderer12display_list11format_bodys1_0E0EB17_"}
!5 = distinct !{!5, !4, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCslbzaBBLIgs6_17annotate_snippets7snippet10AnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvNtNtB17_8renderer12display_list11format_bodys1_0E0EB17_: argument 0"}
!6 = distinct !{!6, !4, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCslbzaBBLIgs6_17annotate_snippets7snippet10AnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvNtNtB17_8renderer12display_list11format_bodys1_0E0EB17_: argument 2"}
!7 = distinct !{!7, !4, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCslbzaBBLIgs6_17annotate_snippets7snippet10AnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCNvNtNtB17_8renderer12display_list11format_bodys1_0E0EB17_: argument 1"}
!8 = !{!5}
!9 = !{!7, !6}
!10 = distinct !{!10, i1 true, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B15_NtB15_10DisplaySet11format_lines0_0E0EB19_"}
!11 = distinct !{!11, !10, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B15_NtB15_10DisplaySet11format_lines0_0E0EB19_: argument 0"}
!12 = distinct !{!12, !10, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B15_NtB15_10DisplaySet11format_lines0_0E0EB19_: argument 2"}
!13 = distinct !{!13, !10, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B15_NtB15_10DisplaySet11format_lines0_0E0EB19_: argument 1"}
!14 = !{!11}
!15 = !{!13, !12}
!16 = distinct !{!16, i1 true, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines5_0E0EB1c_"}
!17 = distinct !{!17, !16, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines5_0E0EB1c_: argument 0"}
!18 = distinct !{!18, !16, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines5_0E0EB1c_: argument 2"}
!19 = distinct !{!19, !16, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs2_B18_NtB18_10DisplaySet11format_lines5_0E0EB1c_: argument 1"}
!20 = distinct !{!20, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_"}
!21 = distinct !{!21, !20, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationE7reverseBD_: argument 0"}
!22 = distinct !{!22, i1 true, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationEEBX_"}
!23 = distinct !{!23, !22, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationEEBX_: argument 0"}
!24 = distinct !{!24, !22, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTjRNtNtNtCslbzaBBLIgs6_17annotate_snippets8renderer12display_list23DisplaySourceAnnotationEEBX_: argument 1"}
!25 = !{!17}
!26 = !{i64 8}
!27 = !{!17, !19, !18}
!28 = !{!23, !21, !17}
!29 = !{!23, !24, !21, !17}
!30 = !{!24, !21, !17}
!31 = !{!23}
!32 = !{!24}
end_hunk_0
