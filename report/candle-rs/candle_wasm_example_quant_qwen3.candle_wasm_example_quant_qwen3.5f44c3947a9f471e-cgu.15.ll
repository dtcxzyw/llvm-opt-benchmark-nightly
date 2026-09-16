Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_quant_qwen3.candle_wasm_example_quant_qwen3.5f44c3947a9f471e-cgu.15?download=true
inline.NumInlined: 318
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCNvMB1b_NtB1b_8Profiler11get_entriess_0E0EB1d_:bb.a
  %brmerge.not.i16 = fcmp uno double %.val3, %.val2
  br i1 %brmerge.not.i16, label %bb.e, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit18, !prof !15

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit15
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit18: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit15
  %.mux.i14 = fcmp olt double %.val5, %.val4      ; 3 uses
  %.mux.i17 = fcmp olt double %.val3, %.val2      ; 3 uses
  %i.r = select i1 %.mux.i17, ptr %i.k, ptr %i.i, !unpredictable !4
  %i.s = select i1 %.mux.i14, ptr %i.f, ptr %i.r, !unpredictable !4 ; 3 uses
  %i.t = select i1 %.mux.i14, ptr %i.i, ptr %i.k, !unpredictable !4
  %i.u = select i1 %.mux.i17, ptr %i.m, ptr %i.t, !unpredictable !4 ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 32
  %.val = load double, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.w = getelementptr i8, ptr %i.s, i64 32
  %.val1 = load double, ptr %i.w, align 8, !noundef !4 ; 2 uses
  %brmerge.not.i19 = fcmp uno double %.val1, %.val
  br i1 %brmerge.not.i19, label %bb.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit21, !prof !15

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit18
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit21: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit18
  %i.x = select i1 %.mux.i17, ptr %i.i, ptr %i.m, !unpredictable !4
  %i.y = select i1 %.mux.i14, ptr %i.k, ptr %i.f, !unpredictable !4
  %.mux.i20 = fcmp olt double %.val1, %.val       ; 2 uses
  %i.z = select i1 %.mux.i20, ptr %i.u, ptr %i.s, !unpredictable !4
  %i.aa = select i1 %.mux.i20, ptr %i.s, ptr %i.u, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 72, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %i.z, i64 72, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.x, i64 72, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_7sort_byNCNvMB1o_NtB1o_8Profiler11get_entriess_0E0EB1q_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 128102389400760776) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [32 x i8], align 8          ; 5 uses
  %.sroa.6.i = alloca [32 x i8], align 8          ; 5 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %1
  %.not7 = icmp samesign eq i64 %2, %1
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit
  %.sroa.0.08 = phi ptr [ %i.j, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit ], [ %i.c, %.lr.ph.preheader ] ; 9 uses
  %i.d = getelementptr i8, ptr %.sroa.0.08, i64 32
  %.val9.i = load double, ptr %i.d, align 8, !noundef !4 ; 6 uses
  %i.e = getelementptr i8, ptr %.sroa.0.08, i64 -40
  %.val10.i = load double, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %brmerge.not.i.i = fcmp uno double %.val10.i, %.val9.i
  br i1 %brmerge.not.i.i, label %bb.d, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i, !prof !15

bb.d:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i: ; preds = %.lr.ph
  %.mux.i.i = fcmp olt double %.val10.i, %.val9.i
  br i1 %.mux.i.i, label %bb.e, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.08, i64 32, i1 false)
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.510.0..sroa_idx.i, i64 32, i1 false)
  %.sroa.0.0.i25 = getelementptr inbounds i8, ptr %.sroa.0.08, i64 -72 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.08, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.i25, i64 72, i1 false)
  %i.f = icmp eq ptr %.sroa.0.0.i25, %0
  br i1 %i.f, label %._crit_edge30, label %.lr.ph29

bb.f:                                             ; preds = %bb.h
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i27, i64 -72 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.i27, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.i, i64 72, i1 false)
  %i.g = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.g, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.e, %bb.f
  %.sroa.0.0.i27 = phi ptr [ %.sroa.0.0.i, %bb.f ], [ %.sroa.0.0.i25, %bb.e ] ; 6 uses
  %.sroa.5.0.i26 = phi ptr [ %.sroa.0.0.i27, %bb.f ], [ %.sroa.0.08, %bb.e ] ; 4 uses
  %i.h = getelementptr i8, ptr %.sroa.5.0.i26, i64 -112
  %.val8.i = load double, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %brmerge.not.i11.i = fcmp uno double %.val8.i, %.val9.i
  br i1 %brmerge.not.i11.i, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %.lr.ph29
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.lr.ph29
  %.mux.i12.i = fcmp olt double %.val8.i, %.val9.i
  br i1 %.mux.i12.i, label %bb.f, label %._crit_edge30

._crit_edge30:                                    ; preds = %bb.f, %bb.h, %bb.e
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.08, %bb.e ], [ %.sroa.0.0.i27, %bb.f ], [ %.sroa.5.0.i26, %bb.h ] ; 2 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.e ], [ %0, %bb.f ], [ %.sroa.0.0.i27, %bb.h ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, i64 32, i1 false), !noalias !344
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -40
  store double %.val9.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !344
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i27, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, i64 32, i1 false), !noalias !345
  %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i26, i64 -40
  store double %.val9.i, ptr %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !345
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i26, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !345
  resume { ptr, i32 } %i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i, %._crit_edge30
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvMBY_NtBY_8Profiler11get_entriess_0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 128102389400760776) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not3.i119 = icmp ugt i64 %.sroa.01.0, 2
  %.not3.i124 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ag, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ag ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.ag ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.ag ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvMB15_NtB15_8Profiler11get_entriess_0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.ax, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvMB15_NtB15_8Profiler11get_entriess_0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvMB15_NtB15_8Profiler11get_entriess_0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph77, label %._crit_edge

.lr.ph77:                                         ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i.thread122, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.s, label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7reverseBy_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr i8, ptr %i.p, i64 104
  %.val7.i = load double, ptr %i.r, align 8, !alias.scope !367, !noalias !368, !noundef !4 ; 4 uses
  %i.s = getelementptr i8, ptr %i.p, i64 32
  %.val8.i = load double, ptr %i.s, align 8, !alias.scope !367, !noalias !368, !noundef !4 ; 2 uses
  %brmerge.not.i40 = fcmp uno double %.val8.i, %.val7.i
  br i1 %brmerge.not.i40, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit42, !prof !15

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !369
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit42: ; preds = %bb.k
  %.mux.i41 = fcmp uge double %.val8.i, %.val7.i  ; 2 uses
  %.not84 = icmp eq i64 %i.o, 2                   ; 2 uses
  br i1 %.mux.i41, label %.preheader52, label %.preheader

.preheader52:                                     ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit42
  br i1 %.not84, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit42
  br i1 %.not84, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i.thread122, label %.lr.ph72

.lr.ph:                                           ; preds = %.preheader52, %bb.n
  %.val6.i = phi double [ %.val5.i, %bb.n ], [ %.val7.i, %.preheader52 ] ; 2 uses
  %.sroa.01.0.i.i69 = phi i64 [ %i.v, %bb.n ], [ 2, %.preheader52 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.01.0.i.i69
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %.val5.i = load double, ptr %i.u, align 8, !alias.scope !367, !noalias !368, !noundef !4 ; 3 uses
  %brmerge.not.i37 = fcmp uno double %.val6.i, %.val5.i
  br i1 %brmerge.not.i37, label %bb.m, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit39, !prof !15

bb.m:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !369
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit39: ; preds = %.lr.ph
  %.mux.i38 = fcmp olt double %.val6.i, %.val5.i
  br i1 %.mux.i38, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit39
  %i.v = add nuw i64 %.sroa.01.0.i.i69, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.o
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i, label %.lr.ph

.lr.ph72:                                         ; preds = %.preheader, %bb.p
  %.val4.i = phi double [ %.val.i, %bb.p ], [ %.val7.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i71 = phi i64 [ %i.y, %bb.p ], [ 2, %.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.01.1.i.i71
  %i.x = getelementptr i8, ptr %i.w, i64 32
  %.val.i = load double, ptr %i.x, align 8, !alias.scope !367, !noalias !368, !noundef !4 ; 3 uses
  %brmerge.not.i = fcmp uno double %.val4.i, %.val.i
  br i1 %brmerge.not.i, label %bb.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit, !prof !15

bb.o:                                             ; preds = %.lr.ph72
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !369
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit: ; preds = %.lr.ph72
  %.mux.i = fcmp olt double %.val4.i, %.val.i
  br i1 %.mux.i, label %bb.p, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i

bb.p:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit
  %i.y = add nuw i64 %.sroa.01.1.i.i71, 1         ; 2 uses
  %exitcond97.not = icmp eq i64 %i.y, %i.o
  br i1 %exitcond97.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i, label %.lr.ph72

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i: ; preds = %bb.p, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit, %bb.n, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit39
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i69, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit39 ], [ %i.o, %bb.n ], [ %.sroa.01.1.i.i71, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit ], [ %i.o, %bb.p ] ; 5 uses
  %i.z = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.z)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.q

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i.thread122: ; preds = %.preheader
  br i1 %.not3.i124, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i.thread: ; preds = %.preheader52
  br i1 %.not3.i119, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7reverseBy_.exit

bb.q:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i
  %i.aa = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.aa, 0
  %or.cond = or i1 %.mux.i41, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7reverseBy_.exit, label %.lr.ph.preheader.i.i

bb.r:                                             ; preds = %bb.i
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 128102389400760776) %i.o)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvMB15_NtB15_8Profiler11get_entriess_0E0EB17_.exit

bb.s:                                             ; preds = %bb.i
  %i.ad = tail call i64 @llvm.umin.i64(i64 range(i64 0, 128102389400760776) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvMB17_NtB17_8Profiler11get_entriess_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.ad, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #22, !inline_history !350
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvMB15_NtB15_8Profiler11get_entriess_0E0EB17_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7reverseBy_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryEB14_.exit.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i.thread, %bb.j, %bb.q
  %.sroa.0.0.i.i4750 = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i.thread ], [ %.sroa.0.0.i.i120127131, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryEB14_.exit.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i4750, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvMB15_NtB15_8Profiler11get_entriess_0E0EB17_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.q, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i.thread122
  %i.ai = phi i64 [ %i.aa, %bb.q ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i.thread122 ]
  %.sroa.0.0.i.i120127131 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_8Profiler11get_entriess_0E0EB16_.exit.i.thread122 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.0.0.i.i120127131
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ao, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.017.i.i, -1
  %i.al = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.0.017.i.i
  %i.am = getelementptr [72 x i8], ptr %i.aj, i64 %i.ak
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, i64 noundef 9)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryEB14_.exit.i.i unwind label %bb.t, !noalias !368

bb.t:                                             ; preds = %.lr.ph.i.i36
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24, !noalias !368
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryEB14_.exit.i.i: ; preds = %.lr.ph.i.i36
  %i.ao = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7reverseBy_.exit, label %.lr.ph.i.i36

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvMB15_NtB15_8Profiler11get_entriess_0E0EB17_.exit: ; preds = %bb.r, %bb.s, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7reverseBy_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7reverseBy_.exit ], [ %i.af, %bb.s ], [ %i.ac, %bb.r ] ; 2 uses
  %i.ap = lshr i64 %.sroa.023.0, 1
  %i.aq = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ar = sub nsw i64 %factor, %i.ap
  %i.as = add nuw nsw i64 %i.aq, %factor
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = xor i64 %i.au, %i.at
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  br label %bb.g

bb.u:                                             ; preds = %.lr.ph77, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_8Profiler11get_entriess_0E0EB1a_.exit
  %.sroa.02.176 = phi i64 [ %.sroa.02.0, %.lr.ph77 ], [ %i.ay, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_8Profiler11get_entriess_0E0EB1a_.exit ] ; 2 uses
  %.sroa.023.175 = phi i64 [ %.sroa.023.0, %.lr.ph77 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_8Profiler11get_entriess_0E0EB1a_.exit ] ; 4 uses
  %i.ay = add i64 %.sroa.02.176, -1               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.ba, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_8Profiler11get_entriess_0E0EB1a_.exit, %bb.u, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.175, %bb.u ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_8Profiler11get_entriess_0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.176, %bb.u ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_8Profiler11get_entriess_0E0EB1a_.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bc, align 1
  br i1 %i.l, label %bb.ag, label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !noundef !4 ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 8 uses
  %i.bg = lshr i64 %.sroa.023.175, 1              ; 6 uses
  %i.bh = add nuw i64 %i.bf, %i.bg                ; 4 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh
  %i.bj = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.bi ; 6 uses
  %i.bk = icmp samesign ugt i64 %i.bh, %3
  %i.bl = trunc i64 %.sroa.023.175 to i1
  %i.bm = or i64 %i.be, %.sroa.023.175
  %i.bn = trunc i64 %i.bm to i1
  %or.cond3.i = or i1 %i.bk, %i.bn
  br i1 %or.cond3.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bp = shl nuw nsw i64 %i.bh, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_8Profiler11get_entriess_0E0EB1a_.exit

bb.y:                                             ; preds = %bb.z, %bb.w
  br i1 %i.bl, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.bq = or i64 %i.bf, 1
  %i.br = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = xor i32 %i.bt, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvMB17_NtB17_8Profiler11get_entriess_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.bj, i64 noundef range(i64 0, 128102389400760776) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #22, !inline_history !351
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw [72 x i8], ptr %i.bj, i64 %i.bf
  %i.bw = or i64 %i.bg, 1
  %i.bx = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvMB17_NtB17_8Profiler11get_entriess_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 128102389400760776) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #22, !inline_history !351
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.cb = icmp eq i64 %i.bf, 0
  %i.cc = icmp eq i64 %i.bg, 0
  %or.cond.i = or i1 %i.cc, %i.cb
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvMBZ_NtBZ_8Profiler11get_entriess_0E0EB11_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cd = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bf, i64 %i.bg) ; 2 uses
  %i.ce = icmp samesign ult i64 %3, %i.cd
  br i1 %i.ce, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvMBZ_NtBZ_8Profiler11get_entriess_0E0EB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ac
  %i.cf = getelementptr inbounds nuw [72 x i8], ptr %i.bj, i64 %i.bf ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bf, %i.bg  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cf, ptr %i.bj
  %i.cg = mul nuw nsw i64 %i.cd, 72               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cg, i1 false), !alias.scope !372
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %i.cg ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i.i
  %.sroa.13.0.i = phi ptr [ %i.cp, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i.i ], [ %i.cf, %.critedge.i ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.cr, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i.i ], [ %i.ch, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.cm, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i.i ], [ %i.n, %.critedge.i ]
  %i.ci = getelementptr i8, ptr %.sroa.7.0.i, i64 -40
  %.val.i.i = load double, ptr %i.ci, align 8, !alias.scope !371, !noalias !373, !noundef !4 ; 2 uses
  %i.cj = getelementptr i8, ptr %.sroa.13.0.i, i64 -40
  %.val12.i.i = load double, ptr %i.cj, align 8, !alias.scope !370, !noalias !374, !noundef !4 ; 2 uses
  %brmerge.not.i.i.i = fcmp uno double %.val12.i.i, %.val.i.i
  br i1 %brmerge.not.i.i.i, label %bb.ad, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i.i, !prof !15

bb.ad:                                            ; preds = %.preheader.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26
          to label %.noexc.i unwind label %bb.af, !noalias !372

.noexc.i:                                         ; preds = %bb.ad
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i.i: ; preds = %.preheader.i
  %i.ck = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -72 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -72 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -72 ; 2 uses
  %.mux.i.i.i = fcmp olt double %.val12.i.i, %.val.i.i ; 3 uses
  %..i.i = select i1 %.mux.i.i.i, ptr %i.ck, ptr %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cm, ptr noundef nonnull align 8 dereferenceable(72) %..i.i, i64 72, i1 false), !alias.scope !372, !noalias !375
  %i.cn = xor i1 %.mux.i.i.i, true
  %i.co = zext i1 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [72 x i8], ptr %i.ck, i64 %i.co ; 3 uses
  %i.cq = zext i1 %.mux.i.i.i to i64
  %i.cr = getelementptr inbounds nuw [72 x i8], ptr %i.cl, i64 %i.cq ; 3 uses
  %i.cs = icmp eq ptr %i.cp, %i.bj
  %i.ct = icmp eq ptr %i.cr, %2
  %or.cond.i.i = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCNvMB1c_NtB1c_8Profiler11get_entriess_0E0EB1e_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i20.i
  %.sroa.13.1.i = phi ptr [ %i.db, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i20.i ], [ %i.bj, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.cy, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i20.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.da, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i20.i ], [ %i.cf, %.critedge.i ] ; 3 uses
  %i.cu = getelementptr i8, ptr %.sroa.0.02.i.i, i64 32
  %.sroa.0.0.val.i.i = load double, ptr %i.cu, align 8, !alias.scope !370, !noalias !376, !noundef !4 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8sequences1_1__NtB39_12SequenceTypeNtB22_11Deserialize11deserialize9___VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8sequences2_1__NtB38_20SequenceDeserializerNtB22_11Deserialize11deserialize9___VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers11normalizers4bert1__NtB3b_14BertNormalizerNtB22_11Deserialize11deserialize9___VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers11normalizers4bert1__NtB25_14BertNormalizerNtBW_11Deserialize11deserialize9___VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders3bpe1__NtB3b_10BPEDecoderNtB22_11Deserialize11deserialize9___VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders3bpe1__NtB25_10BPEDecoderNtBW_11Deserialize11deserialize9___VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabularys1_1__NtB2r_16AddedTokenWithIdNtB1l_11Deserialize11deserialize9___VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXNvNtNtCsiOg657KYfD4_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8sequences1_1__NtB3e_12SequenceTypeNtB28_11Deserialize11deserialize9___VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCseZbltJ5Yqe_10serde_core7private6string15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvYNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error15unknown_variantCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCseZbltJ5Yqe_10serde_core2deReNtB5_8Expected3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXsO_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de13VariantAccess12unit_variantCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB6_7HashSetNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2V_8adapters6cloned6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesmBO_EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysmNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENtNtNtB8_6traits8iterator8Iterator4nextCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysmNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENtNtNtB9_6traits8iterator8Iterator4foldmNvYmNtNtBb_3cmp3Ord3maxECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXsN_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de10EnumAccess12variant_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8sequences1_1__NtB3I_12SequenceTypeNtB1Z_11Deserialize11deserialize7___FieldEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvXs1_NtCshBhMCGs0DAb_10tokenizers6modelsNtB5_12ModelWrapperNtNtB7_9tokenizer5Model11token_to_id(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentNtNtCsgCecv3eZDcN_5alloc6string6StringE10equivalentCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtBM_3fmt5Debug3fmtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringmEE14insert_no_growCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEE14insert_no_growCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsgdREh4IfnNf_5ahash12random_stateNtB5_11RandomState9from_keys(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueE8grow_oneCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCskNPKTEkpOem_12aho_corasick4util5error9ErrorKindNtB6_5Debug3fmtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCskNPKTEkpOem_12aho_corasick11ahocorasick11AcAutomatonEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvMNvNtNtCshBhMCGs0DAb_10tokenizers10processors8sequences0_1__NtB7_11SequenceDef11deserializeNtB2_14___FieldVisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8sequences1_1__NtB7_12SequenceTypeNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1n_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8sequences2_1__NtB7_20SequenceDeserializerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1v_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8sequences2_1__NtBa_20SequenceDeserializerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1y_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCshBhMCGs0DAb_10tokenizers11normalizers4bert1__NtB7_14BertNormalizerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1j_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCshBhMCGs0DAb_10tokenizers11normalizers4bert1__NtBa_14BertNormalizerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1m_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders3bpe1__NtB7_10BPEDecoderNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1a_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders3bpe1__NtBa_10BPEDecoderNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1d_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabularys1_1__NtBa_16AddedTokenWithIdNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1B_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabularys_1__NtB7_10AddedTokenNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1r_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { noinline }
attributes #23 = { inlinehint }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { cold }
attributes #26 = { noinline noreturn }
attributes #27 = { noreturn }
attributes #28 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i8 0, i8 2}
!8 = !{i64 8}
!9 = !{i64 0, i64 -9223372036854775808}
!10 = !{i64 0, i64 2}
!11 = !{i64 -1, i64 -9223372036854775808}
!12 = !{i64 -1, i64 -9223372036854775764}
!13 = !{i8 0, i8 13}
!14 = !{i64 0, i64 -9223372036854775807}
!15 = !{!"branch_weights", i32 1, i32 4001}
!16 = distinct !{!16, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!17 = distinct !{!17, !16, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!18 = distinct !{!18, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!19 = distinct !{!19, !18, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!20 = distinct !{!20, !18, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!21 = distinct !{!21, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!22 = distinct !{!22, !21, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!23 = distinct !{!23, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Cs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!24 = distinct !{!24, !23, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Cs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!25 = !{!17}
!26 = !{!19}
!27 = !{!19, !17}
!28 = !{!20}
!29 = !{!22, !19, !20, !17}
!30 = !{!24, !19, !20, !17}
!31 = distinct !{!31, !"_RINvXsc_NtCsgdREh4IfnNf_5ahash8hash_setINtB6_8AHashSetNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB28_8adapters6cloned6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesmBQ_EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!32 = distinct !{!32, !31, !"_RINvXsc_NtCsgdREh4IfnNf_5ahash8hash_setINtB6_8AHashSetNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB28_8adapters6cloned6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesmBQ_EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 1"}
!33 = distinct !{!33, !31, !"_RINvXsc_NtCsgdREh4IfnNf_5ahash8hash_setINtB6_8AHashSetNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB28_8adapters6cloned6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesmBQ_EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!34 = distinct !{!34, !"_RNvMs1_NtCsgdREh4IfnNf_5ahash12random_stateNtB5_11RandomState3new"}
!35 = distinct !{!35, !34, !"_RNvMs1_NtCsgdREh4IfnNf_5ahash12random_stateNtB5_11RandomState3new: argument 0"}
!36 = distinct !{null, null}
!37 = distinct !{!37, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenE8push_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!38 = distinct !{!38, !37, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenE8push_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!39 = distinct !{!39, !37, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenE8push_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 1"}
!40 = distinct !{!40, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied6CopiedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysmNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENtNtNtBa_6traits8iterator8Iterator6reduceNvYmNtNtBc_3cmp3Ord3maxECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!41 = distinct !{!41, !40, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied6CopiedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysmNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENtNtNtBa_6traits8iterator8Iterator6reduceNvYmNtNtBc_3cmp3Ord3maxECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!42 = distinct !{!42, !"_RINvMs1_NtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabularyNtB6_15AddedVocabulary20refresh_added_tokensNtNtBa_11normalizers17NormalizerWrapperNtNtBa_6models12ModelWrapperECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!43 = distinct !{!43, !42, !"_RINvMs1_NtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabularyNtB6_15AddedVocabulary20refresh_added_tokensNtNtBa_11normalizers17NormalizerWrapperNtNtBa_6models12ModelWrapperECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!44 = distinct !{!44, !42, !"_RINvMs1_NtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabularyNtB6_15AddedVocabulary20refresh_added_tokensNtNtBa_11normalizers17NormalizerWrapperNtNtBa_6models12ModelWrapperECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 1"}
!45 = distinct !{!45, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCskNPKTEkpOem_12aho_corasick11ahocorasick11AhoCorasickNtNtNtBL_4util5error10BuildErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!46 = distinct !{!46, !45, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCskNPKTEkpOem_12aho_corasick11ahocorasick11AhoCorasickNtNtNtBL_4util5error10BuildErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!47 = distinct !{!47, !45, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCskNPKTEkpOem_12aho_corasick11ahocorasick11AhoCorasickNtNtNtBL_4util5error10BuildErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 1"}
!48 = distinct !{!48, !45, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCskNPKTEkpOem_12aho_corasick11ahocorasick11AhoCorasickNtNtNtBL_4util5error10BuildErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 3"}
!49 = distinct !{!49, !45, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCskNPKTEkpOem_12aho_corasick11ahocorasick11AhoCorasickNtNtNtBL_4util5error10BuildErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 2"}
!50 = distinct !{!50, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCskNPKTEkpOem_12aho_corasick11ahocorasick11AhoCorasickNtNtNtBL_4util5error10BuildErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!51 = distinct !{!51, !50, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCskNPKTEkpOem_12aho_corasick11ahocorasick11AhoCorasickNtNtNtBL_4util5error10BuildErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!52 = distinct !{!52, !50, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCskNPKTEkpOem_12aho_corasick11ahocorasick11AhoCorasickNtNtNtBL_4util5error10BuildErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 1"}
!53 = distinct !{!53, !50, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCskNPKTEkpOem_12aho_corasick11ahocorasick11AhoCorasickNtNtNtBL_4util5error10BuildErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 3"}
!54 = distinct !{!54, !50, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCskNPKTEkpOem_12aho_corasick11ahocorasick11AhoCorasickNtNtNtBL_4util5error10BuildErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 2"}
!55 = distinct !{!55, !"_RNvMs19_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_5EntryNtNtCsgCecv3eZDcN_5alloc6string6StringmE10or_defaultCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!56 = distinct !{!56, !55, !"_RNvMs19_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_5EntryNtNtCsgCecv3eZDcN_5alloc6string6StringmE10or_defaultCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!57 = distinct !{!57, !"_RNvMs19_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_5EntrymNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenE10or_defaultCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!58 = distinct !{!58, !57, !"_RNvMs19_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_5EntrymNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenE10or_defaultCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!59 = distinct !{!59, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenE8push_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!60 = distinct !{!60, !59, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenE8push_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!61 = distinct !{!61, !59, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenE8push_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 1"}
!62 = !{!33, !32}
!63 = !{!35, !33, !32}
!64 = !{!33}
!65 = !{!32}
!66 = !{!38}
!67 = !{!39}
!68 = !{!41}
!69 = !{!43}
!70 = !{!43, !44}
!71 = !{!44}
!72 = !{!46}
!73 = !{!47}
!74 = !{!46, !49, !48, !43, !44}
!75 = !{!46, !47, !49, !48, !43, !44}
!76 = !{!46, !47}
!77 = !{!49, !48, !43, !44}
!78 = !{!51}
!79 = !{!52}
!80 = !{!51, !54, !53, !43, !44}
!81 = !{!51, !52, !54, !53, !43, !44}
!82 = !{!51, !52}
!83 = !{!54, !53, !43, !44}
!84 = !{!56}
!85 = !{!58}
!86 = !{!60}
!87 = !{!61}
!88 = distinct !{!88, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE3geteECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!89 = distinct !{!89, !88, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE3geteECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!90 = distinct !{!90, !88, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE3geteECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 1"}
!91 = distinct !{!91, !"_RINvXs3_NtCsgdREh4IfnNf_5ahash12random_stateNtB6_11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneReECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!92 = distinct !{!92, !91, !"_RINvXs3_NtCsgdREh4IfnNf_5ahash12random_stateNtB6_11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneReECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!93 = distinct !{!93, !91, !"_RINvXs3_NtCsgdREh4IfnNf_5ahash12random_stateNtB6_11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneReECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 1"}
!94 = distinct !{!94, !"_RINvMs1_NtCsgdREh4IfnNf_5ahash12random_stateNtB6_11RandomState8hash_oneReECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!95 = distinct !{!95, !94, !"_RINvMs1_NtCsgdREh4IfnNf_5ahash12random_stateNtB6_11RandomState8hash_oneReECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!96 = distinct !{!96, !94, !"_RINvMs1_NtCsgdREh4IfnNf_5ahash12random_stateNtB6_11RandomState8hash_oneReECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 1"}
!97 = distinct !{!97, !"_RINvXNtCsgdREh4IfnNf_5ahash10specializeReNtB3_10CallHasher8get_hashBB_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!98 = distinct !{!98, !97, !"_RINvXNtCsgdREh4IfnNf_5ahash10specializeReNtB3_10CallHasher8get_hashBB_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!99 = distinct !{!99, !"_RNvYNtNtCsgdREh4IfnNf_5ahash13fallback_hash7AHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher9write_strCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!100 = distinct !{!100, !99, !"_RNvYNtNtCsgdREh4IfnNf_5ahash13fallback_hash7AHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher9write_strCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 1"}
!101 = distinct !{!101, !"_RNvXs_NtCsgdREh4IfnNf_5ahash13fallback_hashNtB4_7AHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher5write"}
!102 = distinct !{!102, !101, !"_RNvXs_NtCsgdREh4IfnNf_5ahash13fallback_hashNtB4_7AHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher5write: argument 1"}
!103 = distinct !{!103, !"_RNvNtCsgdREh4IfnNf_5ahash10operations10read_small"}
!104 = distinct !{!104, !103, !"_RNvNtCsgdREh4IfnNf_5ahash10operations10read_small: argument 1"}
!105 = distinct !{!105, !99, !"_RNvYNtNtCsgdREh4IfnNf_5ahash13fallback_hash7AHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher9write_strCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!106 = distinct !{!106, !101, !"_RNvXs_NtCsgdREh4IfnNf_5ahash13fallback_hashNtB4_7AHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher5write: argument 0"}
!107 = distinct !{!107, !103, !"_RNvNtCsgdREh4IfnNf_5ahash10operations10read_small: argument 0"}
!108 = distinct !{!108, !"_RNvXNtCsgdREh4IfnNf_5ahash7convertShNtB2_13ReadFromSlice8read_u16"}
!109 = distinct !{!109, !108, !"_RNvXNtCsgdREh4IfnNf_5ahash7convertShNtB2_13ReadFromSlice8read_u16: argument 0"}
!110 = distinct !{!110, !"_RNvXNtCsgdREh4IfnNf_5ahash7convertShNtB2_13ReadFromSlice8read_u32"}
!111 = distinct !{!111, !110, !"_RNvXNtCsgdREh4IfnNf_5ahash7convertShNtB2_13ReadFromSlice8read_u32: argument 0"}
!112 = distinct !{!112, !"_RNvXNtCsgdREh4IfnNf_5ahash7convertShNtB2_13ReadFromSlice8read_u64"}
!113 = distinct !{!113, !112, !"_RNvXNtCsgdREh4IfnNf_5ahash7convertShNtB2_13ReadFromSlice8read_u64: argument 0"}
!114 = distinct !{!114, !"_RNvXNtCsgdREh4IfnNf_5ahash7convertShNtB2_13ReadFromSlice9read_u128"}
!115 = distinct !{!115, !114, !"_RNvXNtCsgdREh4IfnNf_5ahash7convertShNtB2_13ReadFromSlice9read_u128: argument 0"}
!116 = distinct !{!116, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringmEE4findNCINvNtB8_3map14equivalent_keyeBQ_mE0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!117 = distinct !{!117, !116, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringmEE4findNCINvNtB8_3map14equivalent_keyeBQ_mE0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!118 = distinct !{!118, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!119 = distinct !{!119, !118, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!120 = distinct !{!120, !118, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!121 = distinct !{!121, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!122 = distinct !{!122, !121, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!123 = distinct !{!123, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringmEE4findNCINvNtBa_3map14equivalent_keyeBS_mE0E0Cs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!124 = distinct !{!124, !123, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringmEE4findNCINvNtBa_3map14equivalent_keyeBS_mE0E0Cs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!125 = !{!89}
!126 = !{!90}
!127 = !{!92}
!128 = !{!93}
!129 = !{!95}
!130 = !{!96}
!131 = !{!98}
!132 = !{!98, !95, !92, !89}
!133 = !{!96, !93, !90}
!134 = !{!104, !102, !100, !96, !93, !90}
!135 = !{!107, !106, !105, !98, !95, !92, !89}
!136 = !{!102, !100, !96, !93, !90}
!137 = !{!109, !107, !106, !105, !98, !95, !92, !89}
!138 = !{!111, !107, !106, !105, !98, !95, !92, !89}
!139 = !{!113, !106, !105, !98, !95, !92, !89}
!140 = !{!106, !105, !98, !95, !92, !89}
!141 = !{!115, !106, !105, !98, !95, !92, !89}
!142 = !{!117}
!143 = !{!119}
!144 = !{!119, !117, !89}
!145 = !{!120, !90}
!146 = !{!122, !119, !120, !117, !89}
!147 = !{!124, !119, !120, !117, !89}
!148 = distinct !{!148, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1D_4SyncEL_EE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!149 = distinct !{!149, !148, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1D_4SyncEL_EE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!150 = distinct !{!150, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1D_4SyncEL_EE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!151 = distinct !{!151, !150, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1D_4SyncEL_EE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!152 = !{!149}
!153 = !{!151}
!154 = distinct !{!154, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCsf0ob09goflS_9byteorder2io12ReadBytesExt7read_u8Cs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!155 = distinct !{!155, !154, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCsf0ob09goflS_9byteorder2io12ReadBytesExt7read_u8Cs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 1"}
!156 = distinct !{!156, !154, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCsf0ob09goflS_9byteorder2io12ReadBytesExt7read_u8Cs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!157 = distinct !{!157, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCsf0ob09goflS_9byteorder2io12ReadBytesExt7read_i8Cs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!158 = distinct !{!158, !157, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCsf0ob09goflS_9byteorder2io12ReadBytesExt7read_i8Cs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 1"}
!159 = distinct !{!159, !157, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCsf0ob09goflS_9byteorder2io12ReadBytesExt7read_i8Cs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!160 = distinct !{!160, !"_RINvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCsf0ob09goflS_9byteorder2io12ReadBytesExt8read_u16NtB1o_12LittleEndianECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!161 = distinct !{!161, !160, !"_RINvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCsf0ob09goflS_9byteorder2io12ReadBytesExt8read_u16NtB1o_12LittleEndianECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 1"}
!162 = distinct !{!162, !160, !"_RINvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCsf0ob09goflS_9byteorder2io12ReadBytesExt8read_u16NtB1o_12LittleEndianECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 0"}
!163 = distinct !{!163, !"_RINvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCsf0ob09goflS_9byteorder2io12ReadBytesExt8read_i16NtB1o_12LittleEndianECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3"}
!164 = distinct !{!164, !163, !"_RINvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCsf0ob09goflS_9byteorder2io12ReadBytesExt8read_i16NtB1o_12LittleEndianECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3: argument 1"}
end_hunk_1
