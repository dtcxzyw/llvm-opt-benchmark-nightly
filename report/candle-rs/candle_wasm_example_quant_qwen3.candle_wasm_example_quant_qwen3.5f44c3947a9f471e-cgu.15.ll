Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_quant_qwen3.candle_wasm_example_quant_qwen3.5f44c3947a9f471e-cgu.15?download=true
inline.NumInlined: 318
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvMBY_NtBY_8Profiler11get_entriess_0E0EB10_:bb.a
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
  %i.cv = getelementptr i8, ptr %.sroa.0.0.i34, i64 32
  %.val.i18.i = load double, ptr %i.cv, align 8, !alias.scope !371, !noalias !377, !noundef !4 ; 2 uses
  %brmerge.not.i.i19.i = fcmp uno double %.val.i18.i, %.sroa.0.0.val.i.i
  br i1 %brmerge.not.i.i19.i, label %bb.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i20.i, !prof !15

bb.ae:                                            ; preds = %.lr.ph.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26
          to label %.noexc23.i unwind label %bb.af, !noalias !372

.noexc23.i:                                       ; preds = %bb.ae
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i20.i: ; preds = %.lr.ph.i.i
  %.mux.i.i21.i = fcmp olt double %.val.i18.i, %.sroa.0.0.val.i.i ; 3 uses
  %i.cw = xor i1 %.mux.i.i21.i, true
  %.sroa.05.0.i.i = select i1 %.mux.i.i21.i, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.05.0.i.i, i64 72, i1 false), !alias.scope !372, !noalias !378
  %i.cx = zext i1 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.0.i34, i64 %i.cx ; 3 uses
  %i.cz = zext i1 %.mux.i.i21.i to i64
  %i.da = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.02.i.i, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 72 ; 2 uses
  %i.dc = icmp ne ptr %i.cy, %i.ch
  %i.dd = icmp ne ptr %i.da, %i.n
  %or.cond.i22.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond.i22.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCNvMB1c_NtB1c_8Profiler11get_entriess_0E0EB1e_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCNvMB1c_NtB1c_8Profiler11get_entriess_0E0EB1e_.exit.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i20.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i.i
  %.sroa.13.4.i = phi ptr [ %i.cp, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i.i ], [ %i.db, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i20.i ]
  %.sroa.7.2.i = phi ptr [ %i.cr, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i.i ], [ %i.ch, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i.i ], [ %i.cy, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i20.i ] ; 2 uses
  %i.de = ptrtoint ptr %.sroa.7.2.i to i64
  %i.df = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dg = sub nuw i64 %i.de, %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dg, i1 false), !alias.scope !372, !noalias !379
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvMBZ_NtBZ_8Profiler11get_entriess_0E0EB11_.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %bb.ad ], [ %.sroa.13.1.i, %bb.ae ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %bb.ad ], [ %i.ch, %bb.ae ]
  %.sroa.0.2.i = phi ptr [ %2, %bb.ad ], [ %.sroa.0.0.i34, %bb.ae ] ; 2 uses
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dj = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dk, i1 false), !alias.scope !372, !noalias !380
  resume { ptr, i32 } %i.dh

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvMBZ_NtBZ_8Profiler11get_entriess_0E0EB11_.exit: ; preds = %bb.ab, %bb.ac, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCNvMB1c_NtB1c_8Profiler11get_entriess_0E0EB1e_.exit.i
  %i.dl = shl nuw nsw i64 %i.bh, 1
  %i.dm = or disjoint i64 %i.dl, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_8Profiler11get_entriess_0E0EB1a_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_8Profiler11get_entriess_0E0EB1a_.exit: ; preds = %bb.x, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvMBZ_NtBZ_8Profiler11get_entriess_0E0EB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.dm, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvMBZ_NtBZ_8Profiler11get_entriess_0E0EB11_.exit ], [ %i.bp, %bb.x ] ; 2 uses
  %i.dn = icmp ugt i64 %i.ay, 1
  br i1 %i.dn, label %bb.u, label %._crit_edge

bb.ag:                                            ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dp = lshr i64 %.sroa.018.0, 1
  %i.dq = add nuw nsw i64 %i.dp, %.sroa.09.0
  br label %bb.f

bb.ah:                                            ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dr, 0
  br i1 %.not30, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ds = or i64 %1, 1
  %i.dt = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvMB17_NtB17_8Profiler11get_entriess_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 128102389400760776) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef %i.dw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #22, !inline_history !351
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.aj
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvMB17_NtB17_8Profiler11get_entriess_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 128102389400760776) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(72) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i = alloca [32 x i8], align 8        ; 7 uses
  %.sroa.6.i.i = alloca [32 x i8], align 8        ; 7 uses
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph140 = phi ptr [ %i.et, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph139 = phi i64 [ %i.ee, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph138 = phi i32 [ %i.br, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph137 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph140, i64 32
  %i.d = ptrtoint ptr %.sroa.0.0.ph140 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph137, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph137, i64 32
  %i.f = icmp eq i32 %.sroa.025.0.ph138, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph383

bb.b:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry12split_at_mutBy_.exit
  %i.g = icmp eq i32 %i.br, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph383

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry12split_at_mutBy_.exit, %bb.a
  %.sroa.0.0.ph.lcssa131 = phi ptr [ %.sroa.0.0.ph140, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry12split_at_mutBy_.exit ], [ %0, %bb.a ], [ %i.et, %.outer ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry12split_at_mutBy_.exit ], [ %1, %bb.a ], [ %i.ee, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.h = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.h, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCNvMB1u_NtB1u_8Profiler11get_entriess_0E0EB1w_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.i = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.j = icmp samesign ult i64 %3, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i64 %.sroa.16.0.lcssa, 1            ; 6 uses
  %i.l = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.0.ph.lcssa131, i64 %i.k ; 3 uses
  %i.n = getelementptr [72 x i8], ptr %2, i64 %i.k ; 8 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCNvMB1b_NtB1b_8Profiler11get_entriess_0E0EB1d_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa131, ptr noundef nonnull align 8 %2)
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCNvMB1b_NtB1b_8Profiler11get_entriess_0E0EB1d_(ptr noundef %i.m, ptr noundef %i.n)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.ph.lcssa131, i64 72, i1 false), !alias.scope !425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false), !alias.scope !425
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.o = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.k  ; 2 uses
  %i.p = icmp samesign ult i64 %.sroa.0.0.i, %i.k
  br i1 %i.p, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit.i, %bb.h
  %i.q = icmp samesign ult i64 %.sroa.0.0.i, %i.o
  br i1 %i.q, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit.1.i
  %.sroa.05.011.1.i = phi i64 [ %i.z, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %.sroa.05.011.1.i ; 4 uses
  %.idx409 = mul nuw nsw i64 %.sroa.05.011.1.i, 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx409 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !alias.scope !425
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %.val9.i.1.i = load double, ptr %i.t, align 8, !alias.scope !424, !noalias !423, !noundef !4 ; 6 uses
  %i.u = getelementptr i8, ptr %i.s, i64 -40
  %.val10.i.1.i = load double, ptr %i.u, align 8, !alias.scope !424, !noalias !423, !noundef !4 ; 2 uses
  %brmerge.not.i.i28.1.i = fcmp uno double %.val10.i.1.i, %.val9.i.1.i
  br i1 %brmerge.not.i.i28.1.i, label %.noexc32.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i29.1.i, !prof !15

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i29.1.i: ; preds = %.lr.ph.1.i
  %.mux.i.i30.1.i = fcmp olt double %.val10.i.1.i, %.val9.i.1.i
  br i1 %.mux.i.i30.1.i, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit.1.i

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i29.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !424
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !424
  %.sroa.0.0.i31.1.i398 = getelementptr inbounds i8, ptr %i.s, i64 -72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.i31.1.i398, i64 72, i1 false), !alias.scope !424, !noalias !423
  %i.w = icmp eq i64 %.sroa.05.011.1.i, 1
  br i1 %i.w, label %._crit_edge403, label %.lr.ph402

bb.j:                                             ; preds = %bb.k
  %.sroa.0.0.i31.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i31.1.i400, i64 -72 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.i31.1.i400, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.i31.1.i, i64 72, i1 false), !alias.scope !424, !noalias !423
  %i.x = icmp eq ptr %.sroa.0.0.i31.1.i, %i.n
  br i1 %i.x, label %._crit_edge403, label %.lr.ph402

.lr.ph402:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i31.1.i400 = phi ptr [ %.sroa.0.0.i31.1.i, %bb.j ], [ %.sroa.0.0.i31.1.i398, %bb.i ] ; 6 uses
  %.sroa.5.0.i.1.i399 = phi ptr [ %.sroa.0.0.i31.1.i400, %bb.j ], [ %i.s, %bb.i ] ; 3 uses
  %i.y = getelementptr i8, ptr %.sroa.5.0.i.1.i399, i64 -112
  %.val8.i.1.i = load double, ptr %i.y, align 8, !alias.scope !424, !noalias !423, !noundef !4 ; 2 uses
  %brmerge.not.i11.i.1.i = fcmp uno double %.val8.i.1.i, %.val9.i.1.i
  br i1 %brmerge.not.i11.i.1.i, label %.loopexit26.i, label %bb.k, !prof !15

bb.k:                                             ; preds = %.lr.ph402
  %.mux.i12.i.1.i = fcmp olt double %.val8.i.1.i, %.val9.i.1.i
  br i1 %.mux.i12.i.1.i, label %bb.j, label %._crit_edge403

._crit_edge403:                                   ; preds = %bb.j, %bb.k, %bb.i
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.s, %bb.i ], [ %.sroa.0.0.i31.1.i400, %bb.j ], [ %.sroa.5.0.i.1.i399, %bb.k ] ; 2 uses
  %.sroa.0.0.i31.lcssa.1.i = phi ptr [ %i.n, %bb.i ], [ %i.n, %bb.j ], [ %.sroa.0.0.i31.1.i400, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i31.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !alias.scope !425
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -40
  store double %.val9.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !424, !noalias !426
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !alias.scope !425
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit.1.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit.1.i: ; preds = %._crit_edge403, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i29.1.i
  %i.z = add nuw nsw i64 %.sroa.05.011.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.z, %i.o
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvMB1a_NtB1a_8Profiler11get_entriess_0E0EB1c_.exit.1.i, %.loopexit.i
  %i.aa = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.ab = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.0.ph.lcssa131, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %2, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.n, i64 -72
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit24.i.i
  %i.ae = getelementptr i8, ptr %i.av, i64 72     ; 2 uses
  %i.af = getelementptr i8, ptr %i.au, i64 72
  %i.ag = and i64 %.sroa.16.0.lcssa, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bb.l

.lr.ph.i.i:                                       ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit24.i.i, %.loopexit.1.i
  %.sroa.0.020.i.i = phi ptr [ %i.an, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit24.i.i ], [ %.sroa.0.0.ph.lcssa131, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.019.i.i = phi i64 [ %i.ai, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit24.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.018.i.i = phi ptr [ %i.aq, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit24.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.017.i.i = phi ptr [ %i.as, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit24.i.i ], [ %i.n, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.016.i.i = phi ptr [ %i.av, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit24.i.i ], [ %i.ad, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.015.i.i = phi ptr [ %i.au, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit24.i.i ], [ %i.ac, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.014.i.i = phi ptr [ %i.aw, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit24.i.i ], [ %i.ab, %.loopexit.1.i ] ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.04.019.i.i, 1    ; 2 uses
  %i.aj = getelementptr i8, ptr %.sroa.011.017.i.i, i64 32
  %.sroa.011.0.val.i.i = load double, ptr %i.aj, align 8, !alias.scope !427, !noalias !423, !noundef !4 ; 2 uses
  %i.ak = getelementptr i8, ptr %.sroa.06.018.i.i, i64 32
  %.sroa.06.0.val.i.i = load double, ptr %i.ak, align 8, !alias.scope !427, !noalias !423, !noundef !4 ; 2 uses
  %brmerge.not.i.i.i = fcmp uno double %.sroa.06.0.val.i.i, %.sroa.011.0.val.i.i
  br i1 %brmerge.not.i.i.i, label %.invoke.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i.i, !prof !15

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit.i.i: ; preds = %.lr.ph.i.i
  %.mux.i.i.i = fcmp olt double %.sroa.06.0.val.i.i, %.sroa.011.0.val.i.i ; 3 uses
  %..i21.i.i = select i1 %.mux.i.i.i, ptr %.sroa.011.017.i.i, ptr %.sroa.06.018.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.020.i.i, ptr noundef nonnull align 8 dereferenceable(72) %..i21.i.i, i64 72, i1 false), !alias.scope !425, !noalias !428
  %i.al = getelementptr i8, ptr %.sroa.017.015.i.i, i64 32
  %.sroa.017.0.val.i.i = load double, ptr %i.al, align 8, !alias.scope !427, !noalias !423, !noundef !4 ; 2 uses
  %i.am = getelementptr i8, ptr %.sroa.015.016.i.i, i64 32
  %.sroa.015.0.val.i.i = load double, ptr %i.am, align 8, !alias.scope !427, !noalias !423, !noundef !4 ; 2 uses
  %brmerge.not.i22.i.i = fcmp uno double %.sroa.015.0.val.i.i, %.sroa.017.0.val.i.i
  br i1 %brmerge.not.i22.i.i, label %.invoke.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntry7sort_byNCNvMBA_NtBA_8Profiler11get_entriess_0E0BC_.exit24.i.i, !prof !15

end_hunk_0
