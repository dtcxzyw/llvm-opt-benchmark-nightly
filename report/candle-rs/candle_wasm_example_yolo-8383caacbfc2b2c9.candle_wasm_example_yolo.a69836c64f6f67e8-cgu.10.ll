Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_yolo-8383caacbfc2b2c9.candle_wasm_example_yolo.a69836c64f6f67e8-cgu.10?download=true
inline.NumInlined: 294
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvBY_23non_maximum_suppression0E0EB10_:bb.a
  %i.do = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dp = sub nuw i64 %i.dn, %i.do
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dp, i1 false), !alias.scope !397, !noalias !404
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvBZ_23non_maximum_suppression0E0EB11_.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %bb.ad ], [ %.sroa.13.1.i, %bb.ae ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %bb.ad ], [ %i.cq, %bb.ae ]
  %.sroa.0.2.i = phi ptr [ %2, %bb.ad ], [ %.sroa.0.0.i34, %bb.ae ] ; 2 uses
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = ptrtoint ptr %.sroa.7.1.i to i64
  %i.ds = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dt = sub nuw i64 %i.dr, %i.ds
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dt, i1 false), !alias.scope !397, !noalias !405
  resume { ptr, i32 } %i.dq

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvBZ_23non_maximum_suppression0E0EB11_.exit: ; preds = %bb.ab, %bb.ac, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCNvB1c_23non_maximum_suppression0E0EB1e_.exit.i
  %i.du = shl nuw nsw i64 %i.bq, 1
  %i.dv = or disjoint i64 %i.du, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvB18_23non_maximum_suppression0E0EB1a_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvB18_23non_maximum_suppression0E0EB1a_.exit: ; preds = %bb.x, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvBZ_23non_maximum_suppression0E0EB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.dv, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvBZ_23non_maximum_suppression0E0EB11_.exit ], [ %i.by, %bb.x ] ; 2 uses
  %i.dw = icmp ugt i64 %i.bh, 1
  br i1 %i.dw, label %bb.u, label %._crit_edge

bb.ag:                                            ; preds = %._crit_edge
  %i.dx = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dy = lshr i64 %.sroa.018.0, 1
  %i.dz = add nuw i64 %i.dy, %.sroa.09.0
  br label %bb.f

bb.ah:                                            ; preds = %._crit_edge
  %i.ea = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ea, 0
  br i1 %.not30, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eb = or i64 %1, 1
  %i.ec = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.eb, i1 true)
  %i.ed = trunc nuw nsw i64 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 1
  %i.ef = xor i32 %i.ee, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvB17_23non_maximum_suppression0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.ef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #24, !inline_history !366
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.aj
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvB17_23non_maximum_suppression0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(48) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph120 = phi ptr [ %i.cj, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph119 = phi i64 [ %i.bu, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph118 = phi i32 [ %i.h, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph117 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph120, i64 40
  %i.d = ptrtoint ptr %.sroa.0.0.ph120 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph117, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph117, i64 40
  %i.f = icmp eq i32 %.sroa.025.0.ph118, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph308

bb.b:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit
  %i.g = icmp eq i32 %i.h, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph308

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa111 = phi ptr [ %i.bv, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph120, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit ], [ %i.cj, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit ], [ %i.bu, %.outer ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCNvB1u_23non_maximum_suppression0E0EB1w_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa111, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0113.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvBY_23non_maximum_suppression0E0EB10_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph120, i64 noundef %.sroa.16.0113.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %bb.i

.lr.ph308:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0112307 = phi i32 [ %i.h, %bb.b ], [ %.sroa.025.0.ph118, %.lr.ph ]
  %.sroa.16.0113306 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ] ; 21 uses
  %i.h = add i32 %.sroa.025.0112307, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.i = lshr i64 %.sroa.16.0113306, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.i, 192
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.i, 336
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx2.i ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.16.0113306, 64
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph308
  %i.m = call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_7sort_byNCNvB16_23non_maximum_suppression0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph120, ptr noundef readonly %i.j, ptr noundef readonly %i.k, i64 noundef %i.i)
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph308
  %.val6.i = load float, ptr %i.c, align 8, !alias.scope !425, !noundef !4 ; 4 uses
  %i.n = getelementptr i8, ptr %i.j, i64 40
  %.val7.i = load float, ptr %i.n, align 8, !alias.scope !425, !noundef !4 ; 4 uses
  %brmerge.not.i.i = fcmp uno float %.val7.i, %.val6.i
  br i1 %brmerge.not.i.i, label %bb.e, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i, !prof !12

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !425
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i: ; preds = %bb.d
  %.mux.i.i = fcmp olt float %.val7.i, %.val6.i   ; 2 uses
  %i.o = getelementptr i8, ptr %i.k, i64 40
  %.val5.i = load float, ptr %i.o, align 8, !alias.scope !425, !noundef !4 ; 4 uses
  %brmerge.not.i8.i = fcmp uno float %.val5.i, %.val6.i
  br i1 %brmerge.not.i8.i, label %bb.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit10.i, !prof !12

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !425
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit10.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i
  %.mux.i9.i = fcmp olt float %.val5.i, %.val6.i
  %i.p = xor i1 %.mux.i.i, %.mux.i9.i
  br i1 %i.p, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit10.i
  %brmerge.not.i11.i = fcmp uno float %.val5.i, %.val7.i
  br i1 %brmerge.not.i11.i, label %bb.h, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit13.i, !prof !12

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !425
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit13.i: ; preds = %bb.g
  %.mux.i12.i = fcmp olt float %.val5.i, %.val7.i
  %i.q = xor i1 %.mux.i.i, %.mux.i12.i
  %..i.i = select i1 %i.q, ptr %i.k, ptr %i.j
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.j:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit13.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit10.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.m, %bb.c ], [ %.sroa.0.0.ph120, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit10.i ], [ %..i.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit13.i ]
  %i.r = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.s = sub nuw i64 %i.r, %i.d                   ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.s, 48          ; 3 uses
  %i.t = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0113306
  call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %i.s ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false)
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.028.0.val = load float, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 40
  %.val = load float, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %brmerge.not.i = fcmp uno float %.val, %.sroa.028.0.val
  br i1 %brmerge.not.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit, !prof !12

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit: ; preds = %bb.k
  %.mux.i = fcmp olt float %.val, %.sroa.028.0.val
  br i1 %.mux.i, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.j, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %.not66 = icmp samesign ult i64 %3, %.sroa.16.0113306
  br i1 %.not66, label %bb.o, label %bb.n, !prof !428

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr [48 x i8], ptr %2, i64 %.sroa.16.0113306 ; 4 uses
  %i.x = getelementptr i8, ptr %i.u, i64 40
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.r, %bb.n
  %.sroa.19.0.i = phi ptr [ %i.w, %bb.n ], [ %i.ai, %bb.r ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.n ], [ %.sroa.11.1.lcssa.i, %bb.r ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph120, %bb.n ], [ %i.ak, %bb.r ] ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.n ], [ %.sroa.16.0113306, %bb.r ] ; 2 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.0.0.i37 ; 2 uses
  %i.z = icmp ult ptr %.sroa.5.0.i, %i.y
  br i1 %i.z, label %.lr.ph.i.a, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i39, %bb.p
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.p ], [ %i.ac, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i39 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.p ], [ %i.af, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i39 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.p ], [ %i.ag, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i39 ] ; 2 uses
  %i.aa = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0113306
  br i1 %i.aa, label %bb.s, label %bb.r

.lr.ph.i.a:                                       ; preds = %bb.p, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i39
  %.sroa.5.114.i = phi ptr [ %i.ag, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i39 ], [ %.sroa.5.0.i, %bb.p ] ; 3 uses
  %.sroa.11.113.i = phi i64 [ %i.af, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i39 ], [ %.sroa.11.0.i, %bb.p ] ; 2 uses
  %.sroa.19.112.i = phi ptr [ %i.ac, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i39 ], [ %.sroa.19.0.i, %bb.p ]
  %i.ab = getelementptr i8, ptr %.sroa.5.114.i, i64 40
  %.val.i = load float, ptr %i.ab, align 8, !alias.scope !426, !noalias !427, !noundef !4 ; 2 uses
  %.val12.i.a = load float, ptr %i.x, align 8, !alias.scope !426, !noalias !427, !noundef !4 ; 2 uses
  %brmerge.not.i.i38 = fcmp uno float %.val12.i.a, %.val.i
  br i1 %brmerge.not.i.i38, label %bb.q, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i39, !prof !12

bb.q:                                             ; preds = %.lr.ph.i.a
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !429
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i39: ; preds = %.lr.ph.i.a
  %.mux.i.i40 = fcmp olt float %.val12.i.a, %.val.i ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.19.112.i, i64 -48 ; 3 uses
  %.sroa.01.0.i.i = select i1 %.mux.i.i40, ptr %2, ptr %i.ac
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.113.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.114.i, i64 48, i1 false), !alias.scope !429, !noalias !430
  %i.ae = zext i1 %.mux.i.i40 to i64
  %i.af = add i64 %.sroa.11.113.i, %i.ae          ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.5.114.i, i64 48 ; 3 uses
  %i.ah = icmp ult ptr %i.ag, %i.y
  br i1 %i.ah, label %.lr.ph.i.a, label %._crit_edge.i

bb.r:                                             ; preds = %._crit_edge.i
  %i.ai = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -48 ; 2 uses
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.ai, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.1.lcssa.i, i64 48, i1 false), !alias.scope !429, !noalias !431
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 48
  br label %bb.p

bb.s:                                             ; preds = %._crit_edge.i
  %i.al = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph120, ptr nonnull align 8 %2, i64 %i.al, i1 false), !alias.scope !429
  %i.am = sub i64 %.sroa.16.0113306, %.sroa.11.1.lcssa.i ; 4 uses
  %.not21.i = icmp eq i64 %.sroa.16.0113306, %.sroa.11.1.lcssa.i
  br i1 %.not21.i, label %.loopexit, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %bb.s
  %i.an = getelementptr [48 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.am, 1
  %i.ao = icmp eq i64 %.sroa.16.0113306, %.neg
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph19.i.new

.lr.ph19.i.new:                                   ; preds = %.lr.ph19.i
  %unroll_iter = and i64 %i.am, -2
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph19.i.new
  %.sroa.06.017.i = phi i64 [ 0, %.lr.ph19.i.new ], [ %i.as, %bb.t ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph19.i.new ], [ %niter.next.1, %bb.t ]
  %i.ap = xor i64 %.sroa.06.017.i, -1
  %i.aq = getelementptr [48 x i8], ptr %i.w, i64 %i.ap
  %i.ar = getelementptr [48 x i8], ptr %i.an, i64 %.sroa.06.017.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i64 48, i1 false), !alias.scope !429
  %i.as = add nuw i64 %.sroa.06.017.i, 2          ; 2 uses
  %i.at = xor i64 %.sroa.06.017.i, -2
  %i.au = getelementptr [48 x i8], ptr %i.w, i64 %i.at
  %i.av = getelementptr [48 x i8], ptr %i.an, i64 %.sroa.06.017.i
  %i.aw = getelementptr i8, ptr %i.av, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %i.au, i64 48, i1 false), !alias.scope !429
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.t

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph19.i
  %.sroa.06.017.i.epil.init = phi i64 [ 0, %.lr.ph19.i ], [ %i.as, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod396 = trunc i64 %i.am to i1
  call void @llvm.assume(i1 %lcmp.mod396)
  %i.ax = xor i64 %.sroa.06.017.i.epil.init, -1
  %i.ay = getelementptr [48 x i8], ptr %i.w, i64 %i.ax
  %i.az = getelementptr [48 x i8], ptr %i.an, i64 %.sroa.06.017.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false), !alias.scope !429
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.s
  %i.ba = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ba, label %.thread, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0113306
  br i1 %.not.i41, label %bb.v, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit, !prof !6

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !432
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit: ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph120) ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvB17_23non_maximum_suppression0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.bb, i64 noundef %i.am, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bc = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.bc, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %.not67 = icmp samesign ult i64 %3, %.sroa.16.0113306
  br i1 %.not67, label %bb.x, label %bb.w, !prof !428

bb.w:                                             ; preds = %.thread
  %i.bd = getelementptr [48 x i8], ptr %2, i64 %.sroa.16.0113306 ; 4 uses
  %i.be = getelementptr i8, ptr %i.u, i64 40
  br label %bb.y

bb.x:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.aa, %bb.w
  %.sroa.19.0.i44 = phi ptr [ %i.bd, %bb.w ], [ %i.bp, %bb.aa ] ; 2 uses
  %.sroa.11.0.i45 = phi i64 [ 0, %bb.w ], [ %i.br, %bb.aa ] ; 2 uses
  %.sroa.5.0.i46 = phi ptr [ %.sroa.0.0.ph120, %bb.w ], [ %i.bs, %bb.aa ] ; 3 uses
  %.sroa.0.0.i47 = phi i64 [ %.sroa.0.0.i, %bb.w ], [ %.sroa.16.0113306, %bb.aa ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.0.0.i47 ; 2 uses
  %i.bg = icmp ult ptr %.sroa.5.0.i46, %i.bf
  br i1 %i.bg, label %.lr.ph.i56.a, label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvB19_23non_maximum_suppression0E0E0B1b_.exit.i, %bb.y
  %.sroa.19.1.lcssa.i49 = phi ptr [ %.sroa.19.0.i44, %bb.y ], [ %i.bj, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvB19_23non_maximum_suppression0E0E0B1b_.exit.i ]
  %.sroa.11.1.lcssa.i50 = phi i64 [ %.sroa.11.0.i45, %bb.y ], [ %i.bm, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvB19_23non_maximum_suppression0E0E0B1b_.exit.i ] ; 10 uses
  %.sroa.5.1.lcssa.i51 = phi ptr [ %.sroa.5.0.i46, %bb.y ], [ %i.bn, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvB19_23non_maximum_suppression0E0E0B1b_.exit.i ] ; 2 uses
  %i.bh = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0113306
  br i1 %i.bh, label %bb.ab, label %bb.aa

.lr.ph.i56.a:                                     ; preds = %bb.y, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvB19_23non_maximum_suppression0E0E0B1b_.exit.i
  %.sroa.5.114.i57 = phi ptr [ %i.bn, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvB19_23non_maximum_suppression0E0E0B1b_.exit.i ], [ %.sroa.5.0.i46, %bb.y ] ; 3 uses
  %.sroa.11.113.i58 = phi i64 [ %i.bm, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvB19_23non_maximum_suppression0E0E0B1b_.exit.i ], [ %.sroa.11.0.i45, %bb.y ] ; 2 uses
  %.sroa.19.112.i59 = phi ptr [ %i.bj, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvB19_23non_maximum_suppression0E0E0B1b_.exit.i ], [ %.sroa.19.0.i44, %bb.y ]
  %i.bi = getelementptr i8, ptr %.sroa.5.114.i57, i64 40
  %.val.i60 = load float, ptr %i.bi, align 8, !alias.scope !433, !noalias !434, !noundef !4 ; 2 uses
  %.val12.i61 = load float, ptr %i.be, align 8, !alias.scope !433, !noalias !434, !noundef !4 ; 2 uses
  %brmerge.not.i.i.i = fcmp uno float %.val.i60, %.val12.i61
  br i1 %brmerge.not.i.i.i, label %bb.z, label %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvB19_23non_maximum_suppression0E0E0B1b_.exit.i, !prof !12

bb.z:                                             ; preds = %.lr.ph.i56.a
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !435
  unreachable

_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvB19_23non_maximum_suppression0E0E0B1b_.exit.i: ; preds = %.lr.ph.i56.a
  %.mux.i.i.i = fcmp uge float %.val.i60, %.val12.i61 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.19.112.i59, i64 -48 ; 3 uses
  %.sroa.01.0.i.i62 = select i1 %.mux.i.i.i, ptr %2, ptr %i.bj
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i62, i64 %.sroa.11.113.i58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.114.i57, i64 48, i1 false), !alias.scope !435, !noalias !436
  %i.bl = zext i1 %.mux.i.i.i to i64
  %i.bm = add i64 %.sroa.11.113.i58, %i.bl        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.5.114.i57, i64 48 ; 3 uses
  %i.bo = icmp ult ptr %i.bn, %i.bf
  br i1 %i.bo, label %.lr.ph.i56.a, label %._crit_edge.i48

bb.aa:                                            ; preds = %._crit_edge.i48
  %i.bp = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i49, i64 -48
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.1.lcssa.i51, i64 48, i1 false), !alias.scope !435, !noalias !437
  %i.br = add i64 %.sroa.11.1.lcssa.i50, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i51, i64 48
  br label %bb.y

bb.ab:                                            ; preds = %._crit_edge.i48
  %i.bt = mul nuw nsw i64 %.sroa.11.1.lcssa.i50, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph120, ptr nonnull align 8 %2, i64 %i.bt, i1 false), !alias.scope !435
  %i.bu = sub i64 %.sroa.16.0113306, %.sroa.11.1.lcssa.i50 ; 6 uses
  %.not21.i52 = icmp eq i64 %.sroa.16.0113306, %.sroa.11.1.lcssa.i50
  %i.bv = getelementptr [48 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.11.1.lcssa.i50 ; 4 uses
  br i1 %.not21.i52, label %.outer.thread, label %.lr.ph19.i53.preheader

.lr.ph19.i53.preheader:                           ; preds = %bb.ab
  %.neg412 = add i64 %.sroa.11.1.lcssa.i50, 1
  %xtraiter407 = and i64 %i.bu, 1
  %i.bw = icmp eq i64 %.sroa.16.0113306, %.neg412
  br i1 %i.bw, label %.lr.ph19.i53.epil.preheader, label %.lr.ph19.i53.preheader.new

.lr.ph19.i53.preheader.new:                       ; preds = %.lr.ph19.i53.preheader
  %unroll_iter410 = and i64 %i.bu, -2
  br label %.lr.ph19.i53

.lr.ph19.i53:                                     ; preds = %.lr.ph19.i53, %.lr.ph19.i53.preheader.new
  %.sroa.06.017.i54 = phi i64 [ 0, %.lr.ph19.i53.preheader.new ], [ %i.ca, %.lr.ph19.i53 ] ; 5 uses
  %niter411 = phi i64 [ 0, %.lr.ph19.i53.preheader.new ], [ %niter411.next.1, %.lr.ph19.i53 ]
  %i.bx = xor i64 %.sroa.06.017.i54, -1
  %i.by = getelementptr [48 x i8], ptr %i.bd, i64 %i.bx
  %i.bz = getelementptr [48 x i8], ptr %i.bv, i64 %.sroa.06.017.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noundef nonnull align 8 dereferenceable(48) %i.by, i64 48, i1 false), !alias.scope !435
  %i.ca = add nuw i64 %.sroa.06.017.i54, 2        ; 2 uses
  %i.cb = xor i64 %.sroa.06.017.i54, -2
  %i.cc = getelementptr [48 x i8], ptr %i.bd, i64 %i.cb
  %i.cd = getelementptr [48 x i8], ptr %i.bv, i64 %.sroa.06.017.i54
  %i.ce = getelementptr i8, ptr %i.cd, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ce, ptr noundef nonnull align 8 dereferenceable(48) %i.cc, i64 48, i1 false), !alias.scope !435
  %niter411.next.1 = add i64 %niter411, 2         ; 2 uses
  %niter411.ncmp.1 = icmp eq i64 %niter411.next.1, %unroll_iter410
  br i1 %niter411.ncmp.1, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvB1f_23non_maximum_suppression0E0E0EB1h_.exit.unr-lcssa, label %.lr.ph19.i53

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvB1f_23non_maximum_suppression0E0E0EB1h_.exit.unr-lcssa: ; preds = %.lr.ph19.i53
  %lcmp.mod408.not = icmp eq i64 %xtraiter407, 0
  br i1 %lcmp.mod408.not, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvB1f_23non_maximum_suppression0E0E0EB1h_.exit, label %.lr.ph19.i53.epil.preheader

.lr.ph19.i53.epil.preheader:                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvB1f_23non_maximum_suppression0E0E0EB1h_.exit.unr-lcssa, %.lr.ph19.i53.preheader
  %.sroa.06.017.i54.epil.init = phi i64 [ 0, %.lr.ph19.i53.preheader ], [ %i.ca, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvB1f_23non_maximum_suppression0E0E0EB1h_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod409 = trunc i64 %i.bu to i1
  call void @llvm.assume(i1 %lcmp.mod409)
  %i.cf = xor i64 %.sroa.06.017.i54.epil.init, -1
  %i.cg = getelementptr [48 x i8], ptr %i.bd, i64 %i.cf
  %i.ch = getelementptr [48 x i8], ptr %i.bv, i64 %.sroa.06.017.i54.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %i.cg, i64 48, i1 false), !alias.scope !435
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvB1f_23non_maximum_suppression0E0E0EB1h_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvB1f_23non_maximum_suppression0E0E0EB1h_.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvB1f_23non_maximum_suppression0E0E0EB1h_.exit.unr-lcssa, %.lr.ph19.i53.epil.preheader
  %i.ci = icmp ugt i64 %.sroa.11.1.lcssa.i50, %.sroa.16.0113306
  br i1 %i.ci, label %bb.ac, label %.outer, !prof !6

.outer.thread:                                    ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvB1f_23non_maximum_suppression0E0E0EB1h_.exit
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.11.1.lcssa.i50 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ck = icmp ult i64 %i.bu, 33
  br i1 %i.ck, label %.outer._crit_edge, label %.lr.ph

bb.ac:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvB1f_23non_maximum_suppression0E0E0EB1h_.exit
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i50, i64 noundef %.sroa.16.0113306, i64 noundef %.sroa.16.0113306, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtCsltEA4u8Pgfu_11candle_core5errorINtNtCsf3Ta7LF998c_4core6option6OptionRjEINtB6_7ContextB1h_zE7contextReECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB5_5Error3msgReECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1r_hEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -40
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !8, !noundef !4
  %i.f = tail call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB24_3raw12TypeIdHasherEE0E0CseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.f = tail call noundef i64 @_RINvYINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtNtCsjJ6wem5K4Ki_7anymap23raw12TypeIdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !8, !noundef !4
  %i.f = tail call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
  ret i64 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1y_hEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE11rustc_entryCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = tail call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.c = lshr i64 %i.b, 57
  %i.d = trunc nuw nsw i64 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !451, !noalias !452, !noundef !4 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !451, !noalias !452, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val1.i.i.i = load i128, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.z, %bb.d ]
  %.pn.i = phi i64 [ %i.b, %bb.a ], [ %i.aa, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.f          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.j, align 1, !noalias !453 ; 2 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.i
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.l, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i31.i = phi i16 [ %i.y, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.01.0.i.i, %i.n
  %i.p = and i64 %i.o, %i.f
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [40 x i8], ptr %i.g, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -40
  %.val2.i.i = load i128, ptr %i.s, align 8, !noalias !454
  %i.t = icmp eq i128 %.val2.i.i, %.val1.i.i.i
  br i1 %i.t, label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1p_hEEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1o_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE11rustc_entry0ECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.c, !prof !5

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.u = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.e, !prof !6

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = add i16 %.sroa.06.0.i31.i, -1
  %i.y = and i16 %i.x, %.sroa.06.0.i31.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.y, 0
end_hunk_0
