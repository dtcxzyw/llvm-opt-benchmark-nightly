Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_quant_qwen3.candle_wasm_example_quant_qwen3.5f44c3947a9f471e-cgu.15?download=true
inline.NumInlined: 318
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvMB17_NtB17_8Profiler11get_entriess_0E0EB19_:bb.a
  %i.bh = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.0.ph.lcssa131, i64 %.sroa.05.011.i ; 4 uses
  %.idx = mul nuw nsw i64 %.sroa.05.011.i, 72
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i64 72, i1 false), !alias.scope !425
  %i.bj = getelementptr i8, ptr %i.bi, i64 32
  %.val9.i.i = load double, ptr %i.bj, align 8, !alias.scope !424, !noalias !423, !noundef !4 ; 6 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 -40
  %.val10.i.i = load double, ptr %i.bk, align 8, !alias.scope !424, !noalias !423, !noundef !4 ; 2 uses
  %brmerge.not.i.i28.i = fcmp uno double %.val10.i.i, %.val9.i.i
  br i1 %brmerge.not.i.i28.i, label %.noexc32.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i29.i, !prof !15

.noexc32.i:                                       ; preds = %.lr.ph.i, %.lr.ph.1.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !425
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i29.i: ; preds = %.lr.ph.i
  %.mux.i.i30.i = fcmp olt double %.val10.i.i, %.val9.i.i
  br i1 %.mux.i.i30.i, label %bb.p, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit.i

bb.p:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i29.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !noalias !424
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !noalias !424
  %.sroa.0.0.i31.i387 = getelementptr inbounds i8, ptr %i.bi, i64 -72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.i31.i387, i64 72, i1 false), !alias.scope !424, !noalias !423
  %i.bm = icmp eq i64 %.sroa.05.011.i, 1
  br i1 %i.bm, label %._crit_edge392, label %.lr.ph391

bb.q:                                             ; preds = %bb.r
  %.sroa.0.0.i31.i = getelementptr inbounds i8, ptr %.sroa.0.0.i31.i389, i64 -72 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.i31.i389, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.i31.i, i64 72, i1 false), !alias.scope !424, !noalias !423
  %i.bn = icmp eq ptr %.sroa.0.0.i31.i, %2
  br i1 %i.bn, label %._crit_edge392, label %.lr.ph391

.lr.ph391:                                        ; preds = %bb.p, %bb.q
  %.sroa.0.0.i31.i389 = phi ptr [ %.sroa.0.0.i31.i, %bb.q ], [ %.sroa.0.0.i31.i387, %bb.p ] ; 6 uses
  %.sroa.5.0.i.i388 = phi ptr [ %.sroa.0.0.i31.i389, %bb.q ], [ %i.bi, %bb.p ] ; 3 uses
  %i.bo = getelementptr i8, ptr %.sroa.5.0.i.i388, i64 -112
  %.val8.i.i = load double, ptr %i.bo, align 8, !alias.scope !424, !noalias !423, !noundef !4 ; 2 uses
  %brmerge.not.i11.i.i = fcmp uno double %.val8.i.i, %.val9.i.i
  br i1 %brmerge.not.i11.i.i, label %.loopexit26.i, label %bb.r, !prof !15

.loopexit26.i:                                    ; preds = %.lr.ph391, %.lr.ph402
  %.val9.i.lcssa21.i = phi double [ %.val9.i.1.i, %.lr.ph402 ], [ %.val9.i.i, %.lr.ph391 ]
  %.sroa.5.0.i.lcssa20.i = phi ptr [ %.sroa.5.0.i.1.i399, %.lr.ph402 ], [ %.sroa.5.0.i.i388, %.lr.ph391 ] ; 2 uses
  %.sroa.0.0.i31.lcssa19.i = phi ptr [ %.sroa.0.0.i31.1.i400, %.lr.ph402 ], [ %.sroa.0.0.i31.i389, %.lr.ph391 ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26
          to label %.noexc.i.i unwind label %bb.s, !noalias !425

.noexc.i.i:                                       ; preds = %.loopexit26.i
  unreachable

bb.r:                                             ; preds = %.lr.ph391
  %.mux.i12.i.i = fcmp olt double %.val8.i.i, %.val9.i.i
  br i1 %.mux.i12.i.i, label %bb.q, label %._crit_edge392

._crit_edge392:                                   ; preds = %bb.q, %bb.r, %bb.p
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.bi, %bb.p ], [ %.sroa.0.0.i31.i389, %bb.q ], [ %.sroa.5.0.i.i388, %bb.r ] ; 2 uses
  %.sroa.0.0.i31.lcssa.i = phi ptr [ %2, %bb.p ], [ %2, %bb.q ], [ %.sroa.0.0.i31.i389, %bb.r ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i31.lcssa.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !alias.scope !425
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -40
  store double %.val9.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !424, !noalias !426
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !alias.scope !425
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit.i

bb.s:                                             ; preds = %.loopexit26.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i31.lcssa19.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i, i64 32, i1 false), !noalias !432
  %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa20.i, i64 -40
  store double %.val9.i.lcssa21.i, ptr %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i.i, align 8, !alias.scope !424, !noalias !432
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa20.i, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !noalias !432
  br label %.body.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit.i: ; preds = %._crit_edge392, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i29.i
  %i.bq = add nuw nsw i64 %.sroa.05.011.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bq, %i.k
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0133.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph139, %.lr.ph ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvMBY_NtBY_8Profiler11get_entriess_0E0EB10_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph140, i64 noundef %.sroa.16.0133.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCNvMB1u_NtB1u_8Profiler11get_entriess_0E0EB1w_.exit

.lr.ph383:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0132382 = phi i32 [ %i.br, %bb.b ], [ %.sroa.025.0.ph138, %.lr.ph ]
  %.sroa.16.0133381 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph139, %.lr.ph ] ; 21 uses
  %i.br = add i32 %.sroa.025.0132382, -1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.bs = lshr i64 %.sroa.16.0133381, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.bs, 288
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph140, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.bs, 504
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph140, i64 %.idx2.i ; 3 uses
  %i.bv = icmp samesign ult i64 %.sroa.16.0133381, 64
  br i1 %i.bv, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph383
  %i.bw = call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_7sort_byNCNvMB16_NtB16_8Profiler11get_entriess_0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph140, ptr noundef readonly %i.bt, ptr noundef readonly %i.bu, i64 noundef %i.bs)
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph383
  %.val6.i = load double, ptr %i.c, align 8, !alias.scope !433, !noundef !4 ; 4 uses
  %i.bx = getelementptr i8, ptr %i.bt, i64 32
  %.val7.i = load double, ptr %i.bx, align 8, !alias.scope !433, !noundef !4 ; 4 uses
  %brmerge.not.i.i = fcmp uno double %.val7.i, %.val6.i
  br i1 %brmerge.not.i.i, label %bb.v, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i, !prof !15

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !433
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i: ; preds = %bb.u
  %.mux.i.i = fcmp olt double %.val7.i, %.val6.i  ; 2 uses
  %i.by = getelementptr i8, ptr %i.bu, i64 32
  %.val5.i = load double, ptr %i.by, align 8, !alias.scope !433, !noundef !4 ; 4 uses
  %brmerge.not.i8.i = fcmp uno double %.val5.i, %.val6.i
  br i1 %brmerge.not.i8.i, label %bb.w, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit10.i, !prof !15

bb.w:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !433
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit10.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i
  %.mux.i9.i = fcmp olt double %.val5.i, %.val6.i
  %i.bz = xor i1 %.mux.i.i, %.mux.i9.i
  br i1 %i.bz, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit10.i
  %brmerge.not.i11.i = fcmp uno double %.val5.i, %.val7.i
  br i1 %brmerge.not.i11.i, label %bb.y, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit13.i, !prof !15

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !433
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit13.i: ; preds = %bb.x
  %.mux.i12.i = fcmp olt double %.val5.i, %.val7.i
  %i.ca = xor i1 %.mux.i.i, %.mux.i12.i
  %..i.i = select i1 %i.ca, ptr %i.bu, ptr %i.bt
  br label %bb.z

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCNvMB1u_NtB1u_8Profiler11get_entriess_0E0EB1w_.exit: ; preds = %.outer._crit_edge.thread, %bb.m, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.z:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit13.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit10.i, %bb.t
  %.sroa.0.0.i.sink.i = phi ptr [ %i.bw, %bb.t ], [ %.sroa.0.0.ph140, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit10.i ], [ %..i.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit13.i ]
  %i.cb = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.cc = sub nuw i64 %i.cb, %i.d                 ; 2 uses
  %.sroa.0.0.i37 = udiv exact i64 %i.cc, 72       ; 3 uses
  %i.cd = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0133381
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph140, i64 %i.cc ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.ce, i64 72, i1 false)
  br i1 %.not, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.028.0.val = load double, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 32
  %.val = load double, ptr %i.cf, align 8, !noundef !4 ; 2 uses
  %brmerge.not.i = fcmp uno double %.val, %.sroa.028.0.val
  br i1 %brmerge.not.i, label %bb.ab, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit, !prof !15

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit: ; preds = %bb.aa
  %.mux.i = fcmp olt double %.val, %.sroa.028.0.val
  br i1 %.mux.i, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.z, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %.not71 = icmp samesign ult i64 %3, %.sroa.16.0133381
  br i1 %.not71, label %bb.ae, label %bb.ad, !prof !430

bb.ad:                                            ; preds = %bb.ac
  %i.cg = getelementptr [72 x i8], ptr %2, i64 %.sroa.16.0133381 ; 4 uses
  %i.ch = getelementptr i8, ptr %i.ce, i64 32
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.ah, %bb.ad
  %.sroa.19.0.i = phi ptr [ %i.cg, %bb.ad ], [ %i.cs, %bb.ah ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.ad ], [ %.sroa.11.1.lcssa.i, %bb.ah ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph140, %bb.ad ], [ %i.cu, %bb.ah ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.ad ], [ %.sroa.16.0133381, %bb.ah ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.0.ph140, i64 %.sroa.0.0.i38 ; 2 uses
  %i.cj = icmp ult ptr %.sroa.5.0.i, %i.ci
  br i1 %i.cj, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.af
  %.val12.i = load double, ptr %i.ch, align 8, !alias.scope !434, !noalias !435, !noundef !4 ; 2 uses
  br label %.lr.ph.i40.a

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i42, %bb.af
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.af ], [ %i.cm, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i42 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.af ], [ %i.cp, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i42 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.af ], [ %i.cq, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i42 ] ; 2 uses
  %i.ck = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0133381
  br i1 %i.ck, label %bb.ai, label %bb.ah

.lr.ph.i40.a:                                     ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i42, %.lr.ph.i40
  %.sroa.5.114.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i40 ], [ %i.cq, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i42 ] ; 3 uses
  %.sroa.11.113.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i40 ], [ %i.cp, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i42 ] ; 2 uses
  %.sroa.19.112.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i40 ], [ %i.cm, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i42 ]
  %i.cl = getelementptr i8, ptr %.sroa.5.114.i, i64 32
  %.val12.i.a = load double, ptr %i.cl, align 8, !alias.scope !434, !noalias !435, !noundef !4 ; 2 uses
  %brmerge.not.i.i41 = fcmp uno double %.val12.i, %.val12.i.a
  br i1 %brmerge.not.i.i41, label %bb.ag, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i42, !prof !15

bb.ag:                                            ; preds = %.lr.ph.i40.a
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !436
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i42: ; preds = %.lr.ph.i40.a
  %.mux.i.i43 = fcmp olt double %.val12.i, %.val12.i.a ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.19.112.i, i64 -72 ; 3 uses
  %.sroa.01.0.i.i = select i1 %.mux.i.i43, ptr %2, ptr %i.cm
  %i.cn = getelementptr inbounds nuw [72 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.113.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.114.i, i64 72, i1 false), !alias.scope !436, !noalias !437
  %i.co = zext i1 %.mux.i.i43 to i64
  %i.cp = add i64 %.sroa.11.113.i, %i.co          ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.5.114.i, i64 72 ; 3 uses
  %i.cr = icmp ult ptr %i.cq, %i.ci
  br i1 %i.cr, label %.lr.ph.i40.a, label %._crit_edge.i

bb.ah:                                            ; preds = %._crit_edge.i
  %i.cs = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -72 ; 2 uses
  %i.ct = getelementptr inbounds nuw [72 x i8], ptr %i.cs, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ct, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.1.lcssa.i, i64 72, i1 false), !alias.scope !436, !noalias !438
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 72
  br label %bb.af

bb.ai:                                            ; preds = %._crit_edge.i
  %i.cv = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 72
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph140, ptr nonnull align 8 %2, i64 %i.cv, i1 false), !alias.scope !436
  %i.cw = sub i64 %.sroa.16.0133381, %.sroa.11.1.lcssa.i ; 4 uses
  %.not21.i = icmp eq i64 %.sroa.16.0133381, %.sroa.11.1.lcssa.i
  br i1 %.not21.i, label %.loopexit, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %bb.ai
  %i.cx = getelementptr [72 x i8], ptr %.sroa.0.0.ph140, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.cw, 1
  %i.cy = icmp eq i64 %.sroa.16.0133381, %.neg
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph19.i.new

.lr.ph19.i.new:                                   ; preds = %.lr.ph19.i
  %unroll_iter = and i64 %i.cw, -2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph19.i.new
  %.sroa.06.017.i = phi i64 [ 0, %.lr.ph19.i.new ], [ %i.dc, %bb.aj ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph19.i.new ], [ %niter.next.1, %bb.aj ]
  %i.cz = xor i64 %.sroa.06.017.i, -1
  %i.da = getelementptr [72 x i8], ptr %i.cg, i64 %i.cz
  %i.db = getelementptr [72 x i8], ptr %i.cx, i64 %.sroa.06.017.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.db, ptr noundef nonnull align 8 dereferenceable(72) %i.da, i64 72, i1 false), !alias.scope !436
  %i.dc = add nuw i64 %.sroa.06.017.i, 2          ; 2 uses
  %i.dd = xor i64 %.sroa.06.017.i, -2
  %i.de = getelementptr [72 x i8], ptr %i.cg, i64 %i.dd
  %i.df = getelementptr [72 x i8], ptr %i.cx, i64 %.sroa.06.017.i
  %i.dg = getelementptr i8, ptr %i.df, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dg, ptr noundef nonnull align 8 dereferenceable(72) %i.de, i64 72, i1 false), !alias.scope !436
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.aj

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.aj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph19.i
  %.sroa.06.017.i.epil.init = phi i64 [ 0, %.lr.ph19.i ], [ %i.dc, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod506 = trunc i64 %i.cw to i1
  call void @llvm.assume(i1 %lcmp.mod506)
  %i.dh = xor i64 %.sroa.06.017.i.epil.init, -1
  %i.di = getelementptr [72 x i8], ptr %i.cg, i64 %i.dh
  %i.dj = getelementptr [72 x i8], ptr %i.cx, i64 %.sroa.06.017.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dj, ptr noundef nonnull align 8 dereferenceable(72) %i.di, i64 72, i1 false), !alias.scope !436
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ai
  %i.dk = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.dk, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0133381
  br i1 %.not.i44, label %bb.al, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry12split_at_mutBy_.exit, !prof !6

bb.al:                                            ; preds = %bb.ak
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @57, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #26, !noalias !439
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry12split_at_mutBy_.exit: ; preds = %bb.ak
  %i.dl = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.0.ph140, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph140) ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvMB17_NtB17_8Profiler11get_entriess_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.dl, i64 noundef %i.cw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dm = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.dm, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %.not72 = icmp samesign ult i64 %3, %.sroa.16.0133381
  br i1 %.not72, label %bb.an, label %bb.am, !prof !430

bb.am:                                            ; preds = %.thread
  %i.dn = getelementptr [72 x i8], ptr %2, i64 %.sroa.16.0133381 ; 4 uses
  %i.do = getelementptr i8, ptr %i.ce, i64 32
  br label %bb.ao

bb.an:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ao:                                            ; preds = %bb.aq, %bb.am
  %.sroa.19.0.i47 = phi ptr [ %i.dn, %bb.am ], [ %i.dz, %bb.aq ] ; 2 uses
  %.sroa.11.0.i48 = phi i64 [ 0, %bb.am ], [ %i.eb, %bb.aq ] ; 2 uses
  %.sroa.5.0.i49 = phi ptr [ %.sroa.0.0.ph140, %bb.am ], [ %i.ec, %bb.aq ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i37, %bb.am ], [ %.sroa.16.0133381, %bb.aq ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.0.ph140, i64 %.sroa.0.0.i50 ; 2 uses
  %i.dq = icmp ult ptr %.sroa.5.0.i49, %i.dp
  br i1 %i.dq, label %.lr.ph.i59, label %._crit_edge.i51

.lr.ph.i59:                                       ; preds = %bb.ao
  %.val12.i60 = load double, ptr %i.do, align 8, !alias.scope !440, !noalias !441, !noundef !4 ; 2 uses
  br label %.lr.ph.i59.a

._crit_edge.i51:                                  ; preds = %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvMB19_NtB19_8Profiler11get_entriess_0E0E0B1b_.exit.i, %bb.ao
  %.sroa.19.1.lcssa.i52 = phi ptr [ %.sroa.19.0.i47, %bb.ao ], [ %i.dt, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvMB19_NtB19_8Profiler11get_entriess_0E0E0B1b_.exit.i ]
  %.sroa.11.1.lcssa.i53 = phi i64 [ %.sroa.11.0.i48, %bb.ao ], [ %i.dw, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvMB19_NtB19_8Profiler11get_entriess_0E0E0B1b_.exit.i ] ; 10 uses
  %.sroa.5.1.lcssa.i54 = phi ptr [ %.sroa.5.0.i49, %bb.ao ], [ %i.dx, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvMB19_NtB19_8Profiler11get_entriess_0E0E0B1b_.exit.i ] ; 2 uses
  %i.dr = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.0133381
  br i1 %i.dr, label %bb.ar, label %bb.aq

.lr.ph.i59.a:                                     ; preds = %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvMB19_NtB19_8Profiler11get_entriess_0E0E0B1b_.exit.i, %.lr.ph.i59
  %.sroa.5.114.i60 = phi ptr [ %.sroa.5.0.i49, %.lr.ph.i59 ], [ %i.dx, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvMB19_NtB19_8Profiler11get_entriess_0E0E0B1b_.exit.i ] ; 3 uses
  %.sroa.11.113.i61 = phi i64 [ %.sroa.11.0.i48, %.lr.ph.i59 ], [ %i.dw, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvMB19_NtB19_8Profiler11get_entriess_0E0E0B1b_.exit.i ] ; 2 uses
  %.sroa.19.112.i62 = phi ptr [ %.sroa.19.0.i47, %.lr.ph.i59 ], [ %i.dt, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvMB19_NtB19_8Profiler11get_entriess_0E0E0B1b_.exit.i ]
  %i.ds = getelementptr i8, ptr %.sroa.5.114.i60, i64 32
  %.val12.i64 = load double, ptr %i.ds, align 8, !alias.scope !440, !noalias !441, !noundef !4 ; 2 uses
  %brmerge.not.i.i.i65 = fcmp uno double %.val12.i64, %.val12.i60
  br i1 %brmerge.not.i.i.i65, label %bb.ap, label %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvMB19_NtB19_8Profiler11get_entriess_0E0E0B1b_.exit.i, !prof !15

bb.ap:                                            ; preds = %.lr.ph.i59.a
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !442
  unreachable

_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_7sort_byNCNvMB19_NtB19_8Profiler11get_entriess_0E0E0B1b_.exit.i: ; preds = %.lr.ph.i59.a
  %.mux.i.i.i66 = fcmp uge double %.val12.i64, %.val12.i60 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %.sroa.19.112.i62, i64 -72 ; 3 uses
  %.sroa.01.0.i.i67 = select i1 %.mux.i.i.i66, ptr %2, ptr %i.dt
  %i.du = getelementptr inbounds nuw [72 x i8], ptr %.sroa.01.0.i.i67, i64 %.sroa.11.113.i61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.du, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.114.i60, i64 72, i1 false), !alias.scope !442, !noalias !443
  %i.dv = zext i1 %.mux.i.i.i66 to i64
  %i.dw = add i64 %.sroa.11.113.i61, %i.dv        ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.5.114.i60, i64 72 ; 3 uses
  %i.dy = icmp ult ptr %i.dx, %i.dp
  br i1 %i.dy, label %.lr.ph.i59.a, label %._crit_edge.i51

bb.aq:                                            ; preds = %._crit_edge.i51
  %i.dz = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i52, i64 -72
  %i.ea = getelementptr inbounds nuw [72 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ea, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.1.lcssa.i54, i64 72, i1 false), !alias.scope !442, !noalias !444
  %i.eb = add i64 %.sroa.11.1.lcssa.i53, 1
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i54, i64 72
  br label %bb.ao

bb.ar:                                            ; preds = %._crit_edge.i51
  %i.ed = mul nuw nsw i64 %.sroa.11.1.lcssa.i53, 72
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph140, ptr nonnull align 8 %2, i64 %i.ed, i1 false), !alias.scope !442
  %i.ee = sub i64 %.sroa.16.0133381, %.sroa.11.1.lcssa.i53 ; 6 uses
  %.not21.i55 = icmp eq i64 %.sroa.16.0133381, %.sroa.11.1.lcssa.i53
  br i1 %.not21.i55, label %.outer._crit_edge.thread, label %.lr.ph19.i56

.lr.ph19.i56:                                     ; preds = %bb.ar
  %i.ef = getelementptr [72 x i8], ptr %.sroa.0.0.ph140, i64 %.sroa.11.1.lcssa.i53 ; 3 uses
  %.neg523 = add i64 %.sroa.11.1.lcssa.i53, 1
  %xtraiter518 = and i64 %i.ee, 1
  %i.eg = icmp eq i64 %.sroa.16.0133381, %.neg523
  br i1 %i.eg, label %.epil.preheader507, label %.lr.ph19.i56.new

.lr.ph19.i56.new:                                 ; preds = %.lr.ph19.i56
  %unroll_iter521 = and i64 %i.ee, -2
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph19.i56.new
  %.sroa.06.017.i57 = phi i64 [ 0, %.lr.ph19.i56.new ], [ %i.ek, %bb.as ] ; 5 uses
  %niter522 = phi i64 [ 0, %.lr.ph19.i56.new ], [ %niter522.next.1, %bb.as ]
  %i.eh = xor i64 %.sroa.06.017.i57, -1
  %i.ei = getelementptr [72 x i8], ptr %i.dn, i64 %i.eh
  %i.ej = getelementptr [72 x i8], ptr %i.ef, i64 %.sroa.06.017.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ej, ptr noundef nonnull align 8 dereferenceable(72) %i.ei, i64 72, i1 false), !alias.scope !442
  %i.ek = add nuw i64 %.sroa.06.017.i57, 2        ; 2 uses
  %i.el = xor i64 %.sroa.06.017.i57, -2
  %i.em = getelementptr [72 x i8], ptr %i.dn, i64 %i.el
  %i.en = getelementptr [72 x i8], ptr %i.ef, i64 %.sroa.06.017.i57
  %i.eo = getelementptr i8, ptr %i.en, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eo, ptr noundef nonnull align 8 dereferenceable(72) %i.em, i64 72, i1 false), !alias.scope !442
  %niter522.next.1 = add i64 %niter522, 2         ; 2 uses
  %niter522.ncmp.1 = icmp eq i64 %niter522.next.1, %unroll_iter521
  br i1 %niter522.ncmp.1, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvMB1f_NtB1f_8Profiler11get_entriess_0E0E0EB1h_.exit.unr-lcssa, label %bb.as

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvMB1f_NtB1f_8Profiler11get_entriess_0E0E0EB1h_.exit.unr-lcssa: ; preds = %bb.as
  %lcmp.mod519.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod519.not, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvMB1f_NtB1f_8Profiler11get_entriess_0E0E0EB1h_.exit, label %.epil.preheader507

.epil.preheader507:                               ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvMB1f_NtB1f_8Profiler11get_entriess_0E0E0EB1h_.exit.unr-lcssa, %.lr.ph19.i56
  %.sroa.06.017.i57.epil.init = phi i64 [ 0, %.lr.ph19.i56 ], [ %i.ek, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvMB1f_NtB1f_8Profiler11get_entriess_0E0E0EB1h_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod520 = trunc i64 %i.ee to i1
  call void @llvm.assume(i1 %lcmp.mod520)
  %i.ep = xor i64 %.sroa.06.017.i57.epil.init, -1
  %i.eq = getelementptr [72 x i8], ptr %i.dn, i64 %i.ep
  %i.er = getelementptr [72 x i8], ptr %i.ef, i64 %.sroa.06.017.i57.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.er, ptr noundef nonnull align 8 dereferenceable(72) %i.eq, i64 72, i1 false), !alias.scope !442
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvMB1f_NtB1f_8Profiler11get_entriess_0E0E0EB1h_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvMB1f_NtB1f_8Profiler11get_entriess_0E0E0EB1h_.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvMB1f_NtB1f_8Profiler11get_entriess_0E0E0EB1h_.exit.unr-lcssa, %.epil.preheader507
  %i.es = icmp ugt i64 %.sroa.11.1.lcssa.i53, %.sroa.16.0133381
  br i1 %i.es, label %bb.at, label %.outer, !prof !6

.outer._crit_edge.thread:                         ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCNvMB1u_NtB1u_8Profiler11get_entriess_0E0EB1w_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvMB1f_NtB1f_8Profiler11get_entriess_0E0E0EB1h_.exit
  %i.et = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.0.ph140, i64 %.sroa.11.1.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eu = icmp ult i64 %i.ee, 33
  br i1 %i.eu, label %.outer._crit_edge, label %.lr.ph

bb.at:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_7sort_byNCNvMB1f_NtB1f_8Profiler11get_entriess_0E0E0EB1h_.exit
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i53, i64 noundef %.sroa.16.0133381, i64 noundef %.sroa.16.0133381, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNvMNtCsf3Ta7LF998c_4core5sliceSp7reverse7revswapjECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 {
bb.a:
  %.not.i = icmp samesign ugt i64 %4, %1
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @57, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #26, !noalias !453
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.a
  %.not.i7 = icmp samesign ugt i64 %4, %3
  br i1 %.not.i7, label %bb.c, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11.preheader.split, !prof !6

_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11.preheader.split: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11._crit_edge, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11.preheader.split
  %i.a = getelementptr [8 x i8], ptr %2, i64 %4   ; 2 uses
  %min.iters.check = icmp samesign ult i64 %4, 4
  br i1 %min.iters.check, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11.preheader23, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11.preheader
  %n.vec = and i64 %4, 9223372036854775804        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = xor i64 %index, -1
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.d = getelementptr [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.c, align 8
  %wide.load17 = load <2 x i64>, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -8       ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 -24      ; 2 uses
  %wide.load18 = load <2 x i64>, ptr %i.f, align 8
  %wide.load19 = load <2 x i64>, ptr %i.g, align 8
  %reverse = shufflevector <2 x i64> %wide.load18, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse20 = shufflevector <2 x i64> %wide.load19, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.c, align 8
  store <2 x i64> %reverse20, ptr %i.e, align 8
  %reverse21 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse22 = shufflevector <2 x i64> %wide.load17, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse21, ptr %i.f, align 8
  store <2 x i64> %reverse22, ptr %i.g, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !448

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11._crit_edge, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11.preheader23

_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11.preheader23: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11.preheader, %middle.block
  %.sroa.0.016.ph = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11.preheader ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11

bb.c:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @57, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #26, !noalias !456
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11._crit_edge: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11, %middle.block, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11.preheader.split
  ret void

_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11.preheader23, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11
  %.sroa.0.016 = phi i64 [ %i.n, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11 ], [ %.sroa.0.016.ph, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11.preheader23 ] ; 3 uses
  %i.i = xor i64 %.sroa.0.016, -1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016 ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.a, i64 %i.i ; 2 uses
  %i.l = load i64, ptr %i.j, align 8, !noundef !4
  %i.m = load i64, ptr %i.k, align 8
  store i64 %i.m, ptr %i.j, align 8
  store i64 %i.l, ptr %i.k, align 8
  %i.n = add nuw nsw i64 %.sroa.0.016, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %4
  br i1 %exitcond.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11._crit_edge, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit11, !llvm.loop !452
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8sequences1_1__NtB5_12SequenceTypeNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeINtNtNtNtCsiOg657KYfD4_5serde7private2de7content22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8sequences1_1__NtB39_12SequenceTypeNtB22_11Deserialize11deserialize9___VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @42, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8sequences1_1__NtB5_12SequenceTypeNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeINtNvNtNtCsiOg657KYfD4_5serde7private2de13missing_field24MissingFieldDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXNvNtNtCsiOg657KYfD4_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8sequences1_1__NtB3e_12SequenceTypeNtB28_11Deserialize11deserialize9___VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8sequences_1__NtB5_8SequenceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeINtNtNtNtCsiOg657KYfD4_5serde7private2de7content22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8sequences2_1__NtB38_20SequenceDeserializerNtB22_11Deserialize11deserialize9___VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
end_hunk_0
