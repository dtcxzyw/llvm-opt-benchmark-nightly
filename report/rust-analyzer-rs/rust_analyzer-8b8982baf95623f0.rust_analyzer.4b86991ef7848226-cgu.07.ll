Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.07?download=true
inline.NumInlined: 3983
inline.NumDeleted: 1469
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyTNtBY_8PositionB2T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3h_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3j_:bb.a
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtB17_8PositionB33_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3s_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3u_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %..i11.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 29562089861714026) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(312) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #46
  %i.bm = shl nuw nsw i64 %..i11.i, 1
  %i.bn = or disjoint i64 %i.bm, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTNtB15_8PositionB31_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3q_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3s_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic7reverseCs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.s, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i445155.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i ]
  %i.bo = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.bp = or disjoint i64 %i.bo, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTNtB15_8PositionB31_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3q_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3s_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.bq = phi i64 [ %i.bk, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i445155.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw [312 x i8], ptr %i.t, i64 %.sroa.0.0.i445155.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bw, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bs = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bt = getelementptr inbounds nuw [312 x i8], ptr %i.t, i64 %.sroa.0.017.i.i.i
  %i.bu = getelementptr [312 x i8], ptr %i.br, i64 %i.bs
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bu, i64 noundef 39)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i unwind label %bb.q, !noalias !3338

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #44, !noalias !3338
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bw = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bw, %i.bq
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic7reverseCs6u1mgJOKDyY_13rust_analyzer.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTNtB15_8PositionB31_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3q_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3s_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic7reverseCs6u1mgJOKDyY_13rust_analyzer.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bp, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic7reverseCs6u1mgJOKDyY_13rust_analyzer.exit.i ], [ %i.bn, %bb.p ], [ %i.bl, %bb.o ] ; 2 uses
  %i.bx = lshr i64 %.sroa.023.0, 1
  %i.by = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bz = sub nsw i64 %factor, %i.bx
  %i.ca = add nuw nsw i64 %i.by, %factor
  %i.cb = mul i64 %i.bz, %.sroa.0.0
  %i.cc = mul i64 %i.ca, %.sroa.0.0
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cd, i1 false)
  %i.cf = trunc nuw nsw i64 %i.ce to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTNtB18_8PositionB34_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3t_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3v_.exit
  %.sroa.02.136 = phi i64 [ %i.cg, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTNtB18_8PositionB34_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3t_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3v_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTNtB18_8PositionB34_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3t_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3v_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.cg = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.ci, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTNtB18_8PositionB34_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3t_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3v_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTNtB18_8PositionB34_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3t_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3v_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTNtB18_8PositionB34_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3t_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3v_.exit ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ck, align 1
  br i1 %i.q, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cg
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !4 ; 3 uses
  %i.cn = lshr i64 %i.cm, 1                       ; 5 uses
  %i.co = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.cp = add nuw i64 %i.cn, %i.co                ; 5 uses
  %i.cq = sub i64 %.sroa.09.0, %i.cp
  %i.cr = getelementptr inbounds nuw [312 x i8], ptr %0, i64 %i.cq ; 3 uses
  %i.cs = icmp samesign ugt i64 %i.cp, %3
  %i.ct = trunc i64 %.sroa.023.135 to i1
  %i.cu = or i64 %i.cm, %.sroa.023.135
  %i.cv = trunc i64 %i.cu to i1
  %or.cond3.i = or i1 %i.cs, %i.cv
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cw = trunc i64 %i.cm to i1
  br i1 %i.cw, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cx = shl nuw nsw i64 %i.cp, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTNtB18_8PositionB34_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3t_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3v_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ct, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cy = or i64 %i.cn, 1
  %i.cz = call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, 1
  %i.dc = xor i32 %i.db, 126
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtB17_8PositionB33_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3s_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3u_(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 29562089861714026) %i.cn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 29562089861714026) %3, i32 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(312) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #46
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw [312 x i8], ptr %i.cr, i64 %i.cn
  %i.de = or i64 %i.co, 1
  %i.df = call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.de, i1 true)
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 1
  %i.di = xor i32 %i.dh, 126
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtB17_8PositionB33_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3s_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3u_(ptr noalias nofree noundef nonnull align 8 %i.dd, i64 noundef range(i64 0, 29562089861714026) %i.co, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 29562089861714026) %3, i32 noundef %i.di, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(312) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #46
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyTNtBZ_8PositionB2U_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3i_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3k_(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 29562089861714026) %i.cp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 29562089861714026) %3, i64 noundef %i.cn, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.dj = shl nuw nsw i64 %i.cp, 1
  %i.dk = or disjoint i64 %i.dj, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTNtB18_8PositionB34_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3t_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3v_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyTNtB18_8PositionB34_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3t_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3v_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.dk, %bb.x ], [ %i.cx, %bb.t ] ; 2 uses
  %i.dl = icmp ugt i64 %i.cg, 1
  br i1 %i.dl, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dm = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dn = lshr i64 %.sroa.018.0, 1
  %i.do = add nuw i64 %i.dn, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dp = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dp, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dq = or i64 %1, 1
  %i.dr = call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.dq, i1 true)
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 1
  %i.du = xor i32 %i.dt, 126
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtB17_8PositionB33_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3s_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3u_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 29562089861714026) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 29562089861714026) %3, i32 noundef %i.du, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(312) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #46
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB2Z_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 17468507645558288) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 17468507645558288) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.ab ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB37_.exit
  %.sroa.021.0 = phi i8 [ %i.cl, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB37_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB37_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 12 uses
  %i.n = getelementptr inbounds nuw [528 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3361)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB36_.exit.i, %bb.h
  br i1 %4, label %bb.r, label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7reverseCs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3365)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 600
  %i.q = load i64, ptr %i.p, align 8, !range !6, !alias.scope !3366, !noalias !3367, !noundef !4 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.q, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.s = load i64, ptr %i.r, align 8, !range !6, !alias.scope !3368, !noalias !3369, !noundef !4
  %.not7.i.i.not.i = icmp eq i64 %i.s, -1         ; 2 uses
  br i1 %.not.i.i.i, label %.split25.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not7.i.i.not.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit.preheader.i, label %.split.i

.split25.i:                                       ; preds = %bb.k
  br i1 %.not7.i.i.not.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit.preheader.i, label %.preheader.i

.preheader.i:                                     ; preds = %.split.i, %.split25.i
  %.not49.i = icmp eq i64 %i.m, 2
  br i1 %.not49.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB36_.exit.i, label %.lr.ph.i

.split.i:                                         ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 608
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3366, !noalias !3367, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 616
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3366, !noalias !3367, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !3368, !noalias !3369, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !3368, !noalias !3369, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.aa)
  %i.ab = tail call i32 @memcmp(ptr nonnull %i.u, ptr nonnull %i.y, i64 %spec.store.select.i.i.i), !noalias !3370 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %i.w, %i.aa
  %spec.select.i.i.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.af, label %.preheader.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit.preheader.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit.preheader.i: ; preds = %.split.i, %.split25.i, %bb.l
  %.not50.i = icmp eq i64 %i.m, 2
  br i1 %.not50.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB36_.exit.i, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit.preheader.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.thread.i
  %i.ag = phi i64 [ %i.aj, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.thread.i ], [ %i.q, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit.preheader.i ]
  %.sroa.01.0.i44.i = phi i64 [ %i.ax, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.thread.i ], [ 2, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit.preheader.i ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [528 x i8], ptr %i.n, i64 %.sroa.01.0.i44.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3374)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = load i64, ptr %i.ai, align 8, !range !6, !alias.scope !3375, !noalias !3376, !noundef !4 ; 2 uses
  %.not.i.i7.i = icmp eq i64 %i.aj, -1
  %.not7.i.i12.not.i = icmp eq i64 %i.ag, -1      ; 2 uses
  br i1 %.not.i.i7.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph45.i
  br i1 %.not7.i.i12.not.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.thread.i, label %.split27.i

.split27.i:                                       ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !3375, !noalias !3376, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !3375, !noalias !3376, !noundef !4 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ah, i64 -448
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !3377, !noalias !3378, !nonnull !4, !noundef !4
  %i.aq = getelementptr i8, ptr %i.ah, i64 -440
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !3377, !noalias !3378, !noundef !4 ; 2 uses
  %spec.store.select.i.i9.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ar)
  %i.as = tail call i32 @memcmp(ptr nonnull %i.al, ptr nonnull %i.ap, i64 %spec.store.select.i.i9.i), !noalias !3379 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %i.av = sub i64 %i.an, %i.ar
  %spec.select.i.i10.i = select i1 %i.au, i64 %i.av, i64 %i.at
  %i.aw = icmp slt i64 %spec.select.i.i10.i, 0
  br i1 %i.aw, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB36_.exit.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.thread.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.i: ; preds = %.lr.ph45.i
  br i1 %.not7.i.i12.not.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.thread.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB36_.exit.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.thread.i: ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.i, %.split27.i, %bb.m
  %i.ax = add nuw nsw i64 %.sroa.01.0.i44.i, 1    ; 2 uses
  %exitcond54.not.i = icmp eq i64 %i.ax, %i.m
  br i1 %exitcond54.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB36_.exit.i, label %.lr.ph45.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.o
  %i.ay = phi i64 [ %i.bb, %bb.o ], [ %i.q, %.preheader.i ]
  %.sroa.01.1.i39.i = phi i64 [ %i.bp, %bb.o ], [ 2, %.preheader.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw [528 x i8], ptr %i.n, i64 %.sroa.01.1.i39.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3383)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bb = load i64, ptr %i.ba, align 8, !range !6, !alias.scope !3384, !noalias !3385, !noundef !4 ; 2 uses
  %.not.i.i14.i = icmp eq i64 %i.bb, -1
  %.not7.i.i19.not.i = icmp eq i64 %i.ay, -1      ; 2 uses
  br i1 %.not.i.i14.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit20.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  br i1 %.not7.i.i19.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB36_.exit.i, label %.split29.i

.split29.i:                                       ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !3384, !noalias !3385, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !3384, !noalias !3385, !noundef !4 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.az, i64 -448
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !3386, !noalias !3387, !nonnull !4, !noundef !4
  %i.bi = getelementptr i8, ptr %i.az, i64 -440
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !3386, !noalias !3387, !noundef !4 ; 2 uses
  %spec.store.select.i.i16.i = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bj)
  %i.bk = tail call i32 @memcmp(ptr nonnull %i.bd, ptr nonnull %i.bh, i64 %spec.store.select.i.i16.i), !noalias !3388 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp eq i32 %i.bk, 0
  %i.bn = sub i64 %i.bf, %i.bj
  %spec.select.i.i17.i = select i1 %i.bm, i64 %i.bn, i64 %i.bl
  %i.bo = icmp slt i64 %spec.select.i.i17.i, 0
  br i1 %i.bo, label %bb.o, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB36_.exit.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit20.i: ; preds = %.lr.ph.i
  br i1 %.not7.i.i19.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB36_.exit.i, label %bb.o

bb.o:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit20.i, %.split29.i
  %i.bp = add nuw nsw i64 %.sroa.01.1.i39.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bp, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB36_.exit.i, label %.lr.ph.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB36_.exit.i: ; preds = %bb.o, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit20.i, %.split29.i, %bb.n, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.thread.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.i, %.split27.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit.preheader.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ false, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit.preheader.i ], [ true, %.preheader.i ], [ false, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.thread.i ], [ false, %.split27.i ], [ false, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.i ], [ true, %bb.n ], [ true, %.split29.i ], [ true, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit20.i ], [ true, %bb.o ]
  %.sroa.0.0.i.i = phi i64 [ 2, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit.preheader.i ], [ 2, %.preheader.i ], [ %i.m, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.thread.i ], [ %.sroa.01.0.i44.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit13.i ], [ %.sroa.01.0.i44.i, %.split27.i ], [ %.sroa.01.1.i39.i, %bb.n ], [ %i.m, %bb.o ], [ %.sroa.01.1.i39.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0B1Z_.exit20.i ], [ %.sroa.01.1.i39.i, %.split29.i ] ; 7 uses
  %i.bq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB36_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.s, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7reverseCs6u1mgJOKDyY_13rust_analyzer.exit.i

bb.q:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 17468507645558288) %i.m, i64 %.sroa.01.0)
  %i.br = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB37_.exit

bb.r:                                             ; preds = %bb.i
  %..i21.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 17468507645558288) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB39_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i21.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 17468507645558288) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(528) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #46
  %i.bs = shl nuw nsw i64 %..i21.i, 1
  %i.bt = or disjoint i64 %i.bs, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB37_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7reverseCs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, %bb.s, %bb.p, %bb.j
  %.sroa.0.0.i35.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.p ], [ %.sroa.0.0.i.i, %bb.s ], [ %.sroa.0.0.i.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i ]
  %i.bu = shl nuw nsw i64 %.sroa.0.0.i35.i, 1
  %i.bv = or disjoint i64 %i.bu, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB37_.exit

bb.s:                                             ; preds = %bb.p
  %i.bw = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i22.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i22.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7reverseCs6u1mgJOKDyY_13rust_analyzer.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw [528 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.cc, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.by = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bz = getelementptr inbounds nuw [528 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ca = getelementptr [528 x i8], ptr %i.bx, i64 %i.by
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.ca, i64 noundef 66)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i unwind label %bb.t, !noalias !3389

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #44, !noalias !3389
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cc = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cc, %i.bw
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7reverseCs6u1mgJOKDyY_13rust_analyzer.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB37_.exit: ; preds = %bb.q, %bb.r, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7reverseCs6u1mgJOKDyY_13rust_analyzer.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bv, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItem7reverseCs6u1mgJOKDyY_13rust_analyzer.exit.i ], [ %i.bt, %bb.r ], [ %i.br, %bb.q ] ; 2 uses
  %i.cd = lshr i64 %.sroa.023.0, 1
  %i.ce = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cf = sub nsw i64 %factor, %i.cd
  %i.cg = add nuw nsw i64 %i.ce, %factor
  %i.ch = mul i64 %i.cf, %.sroa.0.0
  %i.ci = mul i64 %i.cg, %.sroa.0.0
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cj, i1 false)
  %i.cl = trunc nuw nsw i64 %i.ck to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB3a_.exit
  %.sroa.02.136 = phi i64 [ %i.cm, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB3a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB3a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.cm = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.co, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.u

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB3a_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB3a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB3a_.exit ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cq, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.u:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cm
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !4 ; 3 uses
  %i.ct = lshr i64 %i.cs, 1                       ; 5 uses
  %i.cu = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.cv = add nuw i64 %i.ct, %i.cu                ; 5 uses
  %i.cw = sub i64 %.sroa.09.0, %i.cv
  %i.cx = getelementptr inbounds nuw [528 x i8], ptr %0, i64 %i.cw ; 3 uses
  %i.cy = icmp samesign ugt i64 %i.cv, %3
  %i.cz = trunc i64 %.sroa.023.135 to i1
  %i.da = or i64 %i.cs, %.sroa.023.135
  %i.db = trunc i64 %i.da to i1
  %or.cond3.i = or i1 %i.cy, %i.db
  br i1 %or.cond3.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dc = trunc i64 %i.cs to i1
  br i1 %i.dc, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.dd = shl nuw nsw i64 %i.cv, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB3a_.exit

bb.x:                                             ; preds = %bb.y, %bb.v
  br i1 %i.cz, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.de = or i64 %i.ct, 1
  %i.df = tail call range(i64 10, 64) i64 @llvm.ctlz.i64(i64 %i.de, i1 true)
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 1
  %i.di = xor i32 %i.dh, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB39_(ptr noalias nofree noundef nonnull align 8 %i.cx, i64 noundef range(i64 0, 17468507645558288) %i.ct, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 17468507645558288) %3, i32 noundef %i.di, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(528) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #46
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw [528 x i8], ptr %i.cx, i64 %i.ct
  %i.dk = or i64 %i.cu, 1
  %i.dl = tail call range(i64 10, 64) i64 @llvm.ctlz.i64(i64 %i.dk, i1 true)
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 1
  %i.do = xor i32 %i.dn, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB39_(ptr noalias nofree noundef nonnull align 8 %i.dj, i64 noundef range(i64 0, 17468507645558288) %i.cu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 17468507645558288) %3, i32 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(528) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #46
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB30_(ptr noalias nofree noundef nonnull align 8 %i.cx, i64 noundef range(i64 0, 17468507645558288) %i.cv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 17468507645558288) %3, i64 noundef %i.ct, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.dp = shl nuw nsw i64 %i.cv, 1
  %i.dq = or disjoint i64 %i.dp, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB3a_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB3a_.exit: ; preds = %bb.w, %bb.aa
  %.sroa.0.0.i = phi i64 [ %i.dq, %bb.aa ], [ %i.dd, %bb.w ] ; 2 uses
  %i.dr = icmp ugt i64 %i.cm, 1
  br i1 %i.dr, label %.lr.ph, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.ds = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dt = lshr i64 %.sroa.018.0, 1
  %i.du = add nuw i64 %i.dt, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.dv = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dv, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dw = or i64 %1, 1
  %i.dx = tail call range(i64 10, 64) i64 @llvm.ctlz.i64(i64 %i.dw, i1 true)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 1
  %i.ea = xor i32 %i.dz, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss0_0E0EB39_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 17468507645558288) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 17468507645558288) %3, i32 noundef %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(528) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #46
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyTNtBY_8PositionB2N_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp5utils22all_edits_are_disjoints0_0E0EB3e_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
end_hunk_0
