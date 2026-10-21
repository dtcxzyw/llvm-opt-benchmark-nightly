Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/test_utils-9d32ebcaa21d2f38.test_utils.8b5a28f38d52371b-cgu.3?download=true
inline.NumInlined: 180
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB24_5sliceSBW_11sort_by_keyTNtNtB11_4size8TextSizeB3e_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3J_:bb.a
  %.sroa.0.0.i29.i = phi i64 [ %i.s, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader32.i ], [ %.sroa.0.0.i556266.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEEECsbXLDOPgjE5X_10test_utils.exit.i.i.i ]
  %i.bc = shl nuw nsw i64 %.sroa.0.0.i29.i, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2b_5sliceSB13_11sort_by_keyTNtNtB18_4size8TextSizeB3m_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3R_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.be = phi i64 [ %i.ay, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i556266.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.0.0.i556266.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEEECsbXLDOPgjE5X_10test_utils.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bk, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEEECsbXLDOPgjE5X_10test_utils.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bg = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.0.017.i.i.i
  %i.bi = getelementptr [32 x i8], ptr %i.bf, i64 %i.bg
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbXLDOPgjE5X_10test_utils(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bi, i64 noundef 4)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEEECsbXLDOPgjE5X_10test_utils.exit.i.i.i unwind label %bb.q, !noalias !20

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #17, !noalias !20
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEEECsbXLDOPgjE5X_10test_utils.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bk = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bk, %i.be
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEE7reverseCsbXLDOPgjE5X_10test_utils.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2b_5sliceSB13_11sort_by_keyTNtNtB18_4size8TextSizeB3m_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3R_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEE7reverseCsbXLDOPgjE5X_10test_utils.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bd, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEE7reverseCsbXLDOPgjE5X_10test_utils.exit.i ], [ %i.bb, %bb.p ], [ %i.az, %bb.o ] ; 2 uses
  %i.bl = lshr i64 %.sroa.023.0, 1
  %i.bm = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bn = sub nsw i64 %factor, %i.bl
  %i.bo = add nuw nsw i64 %i.bm, %factor
  %i.bp = mul i64 %i.bn, %.sroa.0.0
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 false)
  %i.bt = trunc nuw nsw i64 %i.bs to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2e_5sliceSB16_11sort_by_keyTNtNtB1b_4size8TextSizeB3p_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3U_.exit
  %.sroa.02.136 = phi i64 [ %i.bu, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2e_5sliceSB16_11sort_by_keyTNtNtB1b_4size8TextSizeB3p_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3U_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2e_5sliceSB16_11sort_by_keyTNtNtB1b_4size8TextSizeB3p_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3U_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bu = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bw, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2e_5sliceSB16_11sort_by_keyTNtNtB1b_4size8TextSizeB3p_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3U_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2e_5sliceSB16_11sort_by_keyTNtNtB1b_4size8TextSizeB3p_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3U_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2e_5sliceSB16_11sort_by_keyTNtNtB1b_4size8TextSizeB3p_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3U_.exit ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.by, align 1
  br i1 %i.q, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bu
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !4 ; 3 uses
  %i.cb = lshr i64 %i.ca, 1                       ; 5 uses
  %i.cc = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.cd = add nuw i64 %i.cb, %i.cc                ; 5 uses
  %i.ce = sub i64 %.sroa.09.0, %i.cd
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ce ; 3 uses
  %i.cg = icmp samesign ugt i64 %i.cd, %3
  %i.ch = trunc i64 %.sroa.023.135 to i1
  %i.ci = or i64 %i.ca, %.sroa.023.135
  %i.cj = trunc i64 %i.ci to i1
  %or.cond3.i = or i1 %i.cg, %i.cj
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ck = trunc i64 %i.ca to i1
  br i1 %i.ck, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cl = shl nuw nsw i64 %i.cd, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2e_5sliceSB16_11sort_by_keyTNtNtB1b_4size8TextSizeB3p_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3U_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ch, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cm = or i64 %i.cb, 1
  %i.cn = call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2d_5sliceSB15_11sort_by_keyTNtNtB1a_4size8TextSizeB3o_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3T_(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 288230376151711744) %i.cb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %i.cb
  %i.cs = or i64 %i.cc, 1
  %i.ct = call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2d_5sliceSB15_11sort_by_keyTNtNtB1a_4size8TextSizeB3o_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3T_(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 288230376151711744) %i.cc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB25_5sliceSBX_11sort_by_keyTNtNtB12_4size8TextSizeB3f_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3K_(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 288230376151711744) %i.cd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %i.cb, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cx = shl nuw nsw i64 %i.cd, 1
  %i.cy = or disjoint i64 %i.cx, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2e_5sliceSB16_11sort_by_keyTNtNtB1b_4size8TextSizeB3p_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3U_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2e_5sliceSB16_11sort_by_keyTNtNtB1b_4size8TextSizeB3p_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3U_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cy, %bb.x ], [ %i.cl, %bb.t ] ; 2 uses
  %i.cz = icmp ugt i64 %i.bu, 1
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.da = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.db = lshr i64 %.sroa.018.0, 1
  %i.dc = add nuw i64 %i.db, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dd = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dd, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.de = or i64 %1, 1
  %i.df = call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.de, i1 true)
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 1
  %i.di = xor i32 %i.dh, 126
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2d_5sliceSB15_11sort_by_keyTNtNtB1a_4size8TextSizeB3o_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB3T_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.di, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvXs0_NtNtBa_8adapters9map_whileINtB2u_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEEB1s_8try_foldB1P_NCNvXs_NvB1s_10advance_byINtNtB2w_10skip_while9SkipWhileB2U_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB5b_8MiniCore11source_codes_0ENtB4d_13SpecAdvanceBy15spec_advance_by0IB3n_B1P_EE0INtNtNtBc_3ops12control_flow11ControlFlowB6U_B1P_EEB5d_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 11 uses
  %.val1 = load ptr, ptr %2, align 8, !alias.scope !42 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 65 ; 4 uses
  %.promoted.i.i = load i8, ptr %i.a, align 1, !alias.scope !44 ; 3 uses
  %.promoted17.i.i = load i64, ptr %.val, align 8, !alias.scope !43 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !43, !nonnull !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !43 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !43 ; 6 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.f, %.val1.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.i = load i8, ptr %i.h, align 8, !alias.scope !43 ; 2 uses
  %i.j = zext nneg i8 %i.i to i64                 ; 4 uses
  %i.k = icmp ult i8 %i.i, 5
  %i.l = getelementptr i8, ptr %i.g, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.o = load i8, ptr %i.n, align 8, !range !7, !alias.scope !43
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !43 ; 4 uses
  %.not.i.i.i.fr.i.i = freeze i1 %.not.i.i.i.i.i
  br i1 %.not.i.i.i.fr.i.i, label %.split.us.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.a
  %.promoted20.i.i = load i64, ptr %i.d, align 8, !alias.scope !43
  br label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.a
  %.not.i3.i.i.us.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.promoted17.i.i
  %or.cond.not.i.i.i.us.i.i = select i1 %i.p, i1 true, i1 %.not.i3.i.i.us.i.i
  %i.q = sub nuw i64 %.pre2.i.i.i.i.i, %.promoted17.i.i
  %.sroa.0.1.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.promoted17.i.i
  %or.cond.not.i.i.i.us.fr.i.i = freeze i1 %or.cond.not.i.i.i.us.i.i
  br i1 %or.cond.not.i.i.i.us.fr.i.i, label %.split.us.split.us.preheader.i.i, label %.split.us.split.i.i

.split.us.split.us.preheader.i.i:                 ; preds = %.split.us.i.i
  %i.r = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.r, label %_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_15IteratorRefSpec13spec_try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvXs0_NtNtBa_8adapters9map_whileINtB2I_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEENtB6_8Iterator8try_foldB23_NCNvXs_NvB43_10advance_byINtNtB2K_10skip_while9SkipWhileB38_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB5z_8MiniCore11source_codes_0ENtB4B_13SpecAdvanceBy15spec_advance_by0IB3B_B23_EE0INtNtNtBc_3ops12control_flow11ControlFlowB7i_B23_EEB5B_.exit, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.us.us.peel.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.us.us.peel.i.i: ; preds = %.split.us.split.us.preheader.i.i
  store i8 1, ptr %i.a, align 1, !alias.scope !45
  %i.s = tail call { ptr, i64 } %.val1(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i, i64 noundef %i.q), !noalias !46, !inline_history !36
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %.not.i.us.us.peel.i.i = icmp eq ptr %i.t, null ; 2 uses
  %i.u = add i64 %1, -1                           ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  %.sroa.4.0.i.us.us.peel.i.i = select i1 %.not.i.us.us.peel.i.i, i64 %1, i64 %i.u
  %narrow.i.us.us.peel.i.i = or i1 %i.v, %.not.i.us.us.peel.i.i
  br i1 %narrow.i.us.us.peel.i.i, label %_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_15IteratorRefSpec13spec_try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvXs0_NtNtBa_8adapters9map_whileINtB2I_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEENtB6_8Iterator8try_foldB23_NCNvXs_NvB43_10advance_byINtNtB2K_10skip_while9SkipWhileB38_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB5z_8MiniCore11source_codes_0ENtB4B_13SpecAdvanceBy15spec_advance_by0IB3B_B23_EE0INtNtNtBc_3ops12control_flow11ControlFlowB7i_B23_EEB5B_.exit, label %.split24.us.loopexit.loopexit.i.i

.split.us.split.i.i:                              ; preds = %.split.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.w = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.w, label %_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_15IteratorRefSpec13spec_try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvXs0_NtNtBa_8adapters9map_whileINtB2I_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEENtB6_8Iterator8try_foldB23_NCNvXs_NvB43_10advance_byINtNtB2K_10skip_while9SkipWhileB38_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB5z_8MiniCore11source_codes_0ENtB4B_13SpecAdvanceBy15spec_advance_by0IB3B_B23_EE0INtNtNtBc_3ops12control_flow11ControlFlowB7i_B23_EEB5B_.exit, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.us.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.us.i.i: ; preds = %.split.us.split.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  store i8 1, ptr %i.a, align 1, !alias.scope !50
  br label %_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_15IteratorRefSpec13spec_try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvXs0_NtNtBa_8adapters9map_whileINtB2I_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEENtB6_8Iterator8try_foldB23_NCNvXs_NvB43_10advance_byINtNtB2K_10skip_while9SkipWhileB38_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB5z_8MiniCore11source_codes_0ENtB4B_13SpecAdvanceBy15spec_advance_by0IB3B_B23_EE0INtNtNtBc_3ops12control_flow11ControlFlowB7i_B23_EEB5B_.exit

.split.i.i:                                       ; preds = %select.unfold.i.i, %.split.preheader.i.i
  %i.x = phi i64 [ %i.aw, %select.unfold.i.i ], [ %.promoted20.i.i, %.split.preheader.i.i ] ; 3 uses
  %.lcssa19.i.i = phi i64 [ %.lcssa18.i.i, %select.unfold.i.i ], [ %.promoted17.i.i, %.split.preheader.i.i ] ; 4 uses
  %i.y = phi i8 [ %i.ax, %select.unfold.i.i ], [ %.promoted.i.i, %.split.preheader.i.i ]
  %.sroa.01.0.i.i = phi i64 [ %i.ba, %select.unfold.i.i ], [ %1, %.split.preheader.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_15IteratorRefSpec13spec_try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvXs0_NtNtBa_8adapters9map_whileINtB2I_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEENtB6_8Iterator8try_foldB23_NCNvXs_NvB43_10advance_byINtNtB2K_10skip_while9SkipWhileB38_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB5z_8MiniCore11source_codes_0ENtB4B_13SpecAdvanceBy15spec_advance_by0IB3B_B23_EE0INtNtNtBc_3ops12control_flow11ControlFlowB7i_B23_EEB5B_.exit, label %bb.b

bb.b:                                             ; preds = %.split.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.aa = icmp ult i64 %i.f, %i.x
  br i1 %i.aa, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.k)
  %.pre.i.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !51 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i.i.i
  %i.ab = phi i64 [ %i.aq, %bb.f ], [ %i.x, %.lr.ph.split.preheader.i.i.i.i.i ] ; 3 uses
  %i.ac = sub nuw i64 %i.f, %i.ab                 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ab ; 2 uses
  %i.ae = icmp samesign ult i64 %i.ac, 16
  br i1 %i.ae, label %.preheader.i.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.af = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.ac), !noalias !52
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %bb.d ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.d ]
  %i.ag = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.ah = insertvalue { i64, i64 } %i.ag, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.al, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !53, !noalias !52, !noundef !4
  %i.ak = icmp eq i8 %i.aj, %.pre.i.i.i.i.i
  br i1 %i.ak, label %._crit_edge.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.al = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ac
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.c
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.ah, %._crit_edge.i.i.i.i.i.i ], [ %i.af, %bb.c ] ; 2 uses
  %i.am = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.e, label %.split.us.i.i.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.ao = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1
  %i.ap = add i64 %i.ab, 1
  %i.aq = add i64 %i.ap, %i.ao                    ; 11 uses
  store i64 %i.aq, ptr %i.d, align 8, !alias.scope !51
  %.not11.i.i.i.i.i = icmp ult i64 %i.aq, %i.j
  %.not12.i.i.i.i.i = icmp ugt i64 %i.aq, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i.i.i:                              ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i
  store i64 %i.f, ptr %i.d, align 8, !alias.scope !51
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ar = icmp ult i64 %i.f, %i.aq
  br i1 %i.ar, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.as = sub nuw i64 %i.aq, %i.j
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.as
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.at, ptr nonnull %i.g, i64 %i.j), !noalias !54
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.au, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, label %bb.f

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i: ; preds = %bb.g
  store i64 %i.aq, ptr %.val, align 8, !alias.scope !44
  br label %select.unfold.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i: ; preds = %bb.f, %.split.us.i.i.i.i.i, %bb.b
  %i.av = phi i64 [ %i.x, %bb.b ], [ %i.f, %.split.us.i.i.i.i.i ], [ %i.aq, %bb.f ]
  store i8 1, ptr %i.a, align 1, !alias.scope !50
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa19.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i3.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_15IteratorRefSpec13spec_try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvXs0_NtNtBa_8adapters9map_whileINtB2I_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEENtB6_8Iterator8try_foldB23_NCNvXs_NvB43_10advance_byINtNtB2K_10skip_while9SkipWhileB38_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB5z_8MiniCore11source_codes_0ENtB4B_13SpecAdvanceBy15spec_advance_by0IB3B_B23_EE0INtNtNtBc_3ops12control_flow11ControlFlowB7i_B23_EEB5B_.exit

select.unfold.i.i:                                ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i
  %i.aw = phi i64 [ %i.aq, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %i.av, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i ]
  %.lcssa18.i.i = phi i64 [ %i.aq, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.lcssa19.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i ]
  %i.ax = phi i8 [ 0, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ 1, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i ]
  %.pn.i.i = phi i64 [ %i.aq, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa19.i.i
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa19.i.i
  %i.ay = tail call { ptr, i64 } %.val1(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i), !noalias !46, !inline_history !36
  %i.az = extractvalue { ptr, i64 } %i.ay, 0
  %.not.i.i.i = icmp eq ptr %i.az, null           ; 2 uses
  %i.ba = add i64 %.sroa.01.0.i.i, -1             ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 0
  %narrow.i.i.i = or i1 %i.bb, %.not.i.i.i
  br i1 %narrow.i.i.i, label %.split24.us.loopexit.split.loop.exit.i.i, label %.split.i.i

.split24.us.loopexit.loopexit.i.i:                ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.us.us.peel.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  br label %_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_15IteratorRefSpec13spec_try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvXs0_NtNtBa_8adapters9map_whileINtB2I_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEENtB6_8Iterator8try_foldB23_NCNvXs_NvB43_10advance_byINtNtB2K_10skip_while9SkipWhileB38_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB5z_8MiniCore11source_codes_0ENtB4B_13SpecAdvanceBy15spec_advance_by0IB3B_B23_EE0INtNtNtBc_3ops12control_flow11ControlFlowB7i_B23_EEB5B_.exit

.split24.us.loopexit.split.loop.exit.i.i:         ; preds = %select.unfold.i.i
  %.sroa.4.0.i.le.i.i = select i1 %.not.i.i.i, i64 %.sroa.01.0.i.i, i64 %i.ba
  br label %_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_15IteratorRefSpec13spec_try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvXs0_NtNtBa_8adapters9map_whileINtB2I_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEENtB6_8Iterator8try_foldB23_NCNvXs_NvB43_10advance_byINtNtB2K_10skip_while9SkipWhileB38_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB5z_8MiniCore11source_codes_0ENtB4B_13SpecAdvanceBy15spec_advance_by0IB3B_B23_EE0INtNtNtBc_3ops12control_flow11ControlFlowB7i_B23_EEB5B_.exit

_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_15IteratorRefSpec13spec_try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvXs0_NtNtBa_8adapters9map_whileINtB2I_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEENtB6_8Iterator8try_foldB23_NCNvXs_NvB43_10advance_byINtNtB2K_10skip_while9SkipWhileB38_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB5z_8MiniCore11source_codes_0ENtB4B_13SpecAdvanceBy15spec_advance_by0IB3B_B23_EE0INtNtNtBc_3ops12control_flow11ControlFlowB7i_B23_EEB5B_.exit: ; preds = %.split.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i, %.split.us.split.us.preheader.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.us.us.peel.i.i, %.split.us.split.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.us.i.i, %.split24.us.loopexit.loopexit.i.i, %.split24.us.loopexit.split.loop.exit.i.i
  %.us-phi.i.i = phi i64 [ %1, %.split.us.split.i.i ], [ %1, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.us.i.i ], [ %i.u, %.split24.us.loopexit.loopexit.i.i ], [ %1, %.split.us.split.us.preheader.i.i ], [ %.sroa.4.0.i.us.us.peel.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.us.us.peel.i.i ], [ %.sroa.4.0.i.le.i.i, %.split24.us.loopexit.split.loop.exit.i.i ], [ %.sroa.01.0.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i ], [ %.sroa.01.0.i.i, %.split.i.i ]
  %.us-phi25.i.i = phi i64 [ 0, %.split.us.split.i.i ], [ 0, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.us.i.i ], [ 0, %.split24.us.loopexit.loopexit.i.i ], [ 0, %.split.us.split.us.preheader.i.i ], [ 1, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.us.us.peel.i.i ], [ 1, %.split24.us.loopexit.split.loop.exit.i.i ], [ 0, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i ], [ 0, %.split.i.i ]
  %i.bc = insertvalue { i64, i64 } poison, i64 %.us-phi25.i.i, 0
  %i.bd = insertvalue { i64, i64 } %i.bc, i64 %.us-phi.i.i, 1
  ret { i64, i64 } %i.bd
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_8Iterator8try_folduNCINvXs0_NtNtBa_8adapters9map_whileINtB1Z_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEEB1s_8try_folduNCINvNvB1s_4find5checkReNCINvNvXs0_NtB21_10skip_whileINtB47_9SkipWhileppEB1s_4next5checkB3U_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB59_8MiniCore11source_codes_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowB3U_EE0IB6j_B6i_EEB5b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !6, !noundef !4 ; 11 uses
  %.val1 = load ptr, ptr %2, align 8
  %.val2 = load ptr, ptr %3, align 8              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 65 ; 2 uses
  %.promoted.i.i = load i8, ptr %i.b, align 1, !alias.scope !94, !noalias !91
  %i.c = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.c, label %_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_15IteratorRefSpec13spec_try_folduNCINvXs0_NtNtBa_8adapters9map_whileINtB2d_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEENtB6_8Iterator8try_folduNCINvNvB3y_4find5checkReNCINvNvXs0_NtB2f_10skip_whileINtB4v_9SkipWhileppEB3y_4next5checkB4i_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB5x_8MiniCore11source_codes_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowB4i_EE0IB6H_B6G_EEB5z_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.promoted33.i.i = load i64, ptr %.val, align 8, !alias.scope !93, !noalias !91
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !94, !noalias !91, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !94, !noalias !91, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !95, !noalias !91, !noundef !4 ; 6 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.h, %.val1.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.k = load i8, ptr %i.j, align 8, !alias.scope !93, !noalias !91 ; 2 uses
  %i.l = zext nneg i8 %i.k to i64                 ; 4 uses
  %i.m = icmp ult i8 %i.k, 5
  %i.n = getelementptr i8, ptr %i.i, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.q = load i8, ptr %i.p, align 8, !range !7, !alias.scope !93, !noalias !91
  %i.r = trunc nuw i8 %i.q to i1
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !93, !noalias !91 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.promoted37.i.i = load i64, ptr %i.f, align 8, !alias.scope !95, !noalias !91
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %i.v = phi i64 [ %.promoted37.i.i, %.lr.ph.i.i ], [ %i.as, %.loopexit.i.i ] ; 3 uses
  %.lcssa3536.i.i = phi i64 [ %.promoted33.i.i, %.lr.ph.i.i ], [ %.lcssa34.i.i, %.loopexit.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.w = icmp ult i64 %i.h, %i.v
  %or.cond20.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.w
  br i1 %or.cond20.i.i.i.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.m)
  %.pre.i.i.i.i.i = load i8, ptr %i.o, align 1, !alias.scope !95, !noalias !91 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i.i.i
  %i.x = phi i64 [ %i.am, %bb.f ], [ %i.v, %.lr.ph.split.preheader.i.i.i.i.i ] ; 3 uses
  %i.y = sub nuw i64 %i.h, %i.x                   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.x ; 2 uses
  %i.aa = icmp samesign ult i64 %i.y, 16
  br i1 %i.aa, label %.preheader.i.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.ab = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef range(i64 0, -9223372036854775808) %i.y), !noalias !99
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %bb.d ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.d ]
  %i.ac = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.ad = insertvalue { i64, i64 } %i.ac, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.ah, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !100, !noalias !99, !noundef !4
  %i.ag = icmp eq i8 %i.af, %.pre.i.i.i.i.i
  br i1 %i.ag, label %._crit_edge.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ah = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ah, %i.y
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.c
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.ad, %._crit_edge.i.i.i.i.i.i ], [ %i.ab, %bb.c ] ; 2 uses
  %i.ai = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.e, label %.split.us.i.i.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.ak = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1
  %i.al = add i64 %i.x, 1
  %i.am = add i64 %i.al, %i.ak                    ; 11 uses
  store i64 %i.am, ptr %i.f, align 8, !alias.scope !95, !noalias !91
  %.not11.i.i.i.i.i = icmp ult i64 %i.am, %i.l
  %.not12.i.i.i.i.i = icmp ugt i64 %i.am, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i.i.i:                              ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !95, !noalias !91
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.an = icmp ult i64 %i.h, %i.am
  br i1 %i.an, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ao = sub nuw i64 %i.am, %i.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ao
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ap, ptr nonnull %i.i, i64 %i.l), !noalias !101
  %i.aq = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aq, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, label %bb.f

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i: ; preds = %bb.g
  store i64 %i.am, ptr %.val, align 8, !alias.scope !94, !noalias !91
  br label %select.unfold.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i: ; preds = %bb.f, %.split.us.i.i.i.i.i, %bb.b
  %i.ar = phi i64 [ %i.v, %bb.b ], [ %i.h, %.split.us.i.i.i.i.i ], [ %i.am, %bb.f ]
  store i8 1, ptr %i.b, align 1, !alias.scope !102, !noalias !91
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa3536.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.r, i1 true, i1 %.not.i3.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_15IteratorRefSpec13spec_try_folduNCINvXs0_NtNtBa_8adapters9map_whileINtB2d_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEENtB6_8Iterator8try_folduNCINvNvB3y_4find5checkReNCINvNvXs0_NtB2f_10skip_whileINtB4v_9SkipWhileppEB3y_4next5checkB4i_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB5x_8MiniCore11source_codes_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowB4i_EE0IB6H_B6G_EEB5z_.exit

select.unfold.i.i:                                ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i
  %i.as = phi i64 [ %i.am, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %i.ar, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i ]
  %.lcssa34.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.lcssa3536.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i ]
  %i.at = phi i1 [ false, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i ]
  %.pn40.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn40.i.i, %.lcssa3536.i.i
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa3536.i.i
  %i.au = tail call { ptr, i64 } %.val1(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i), !noalias !103, !inline_history !75 ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 0      ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %.loopexit21.i.i, label %bb.h

bb.h:                                             ; preds = %select.unfold.i.i
  %i.aw = extractvalue { ptr, i64 } %i.au, 1      ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.ax = load i8, ptr %.val2, align 1, !range !7, !noalias !105, !noundef !4
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkReNCINvNvXs0_NtNtBc_8adapters10skip_whileINtB1p_9SkipWhileppEB6_4next5checkB1c_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2A_8MiniCore11source_codes_0E0E0B2C_.exit.thread4.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.az = icmp ugt i64 %i.aw, 16
  br i1 %i.az, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = icmp eq i64 %i.aw, 16
  br i1 %i.ba, label %_RNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB6_8MiniCore11source_codes_0B8_.exit.i.i.i.i.i, label %.loopexit.i.i

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.bb = icmp ult i64 %i.aw, 31
  br i1 %i.bb, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i, label %bb.l

.lr.ph.split.us.i.i.i.i.i.i.i.i.i:                ; preds = %bb.k
  %i.bc = load i128, ptr %i.av, align 1
  %i.bd = icmp ne i128 %i.bc, 77694434701125410292360704408240092737
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkReNCINvNvXs0_NtNtBc_8adapters10skip_whileINtB1p_9SkipWhileppEB6_4next5checkB1c_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2A_8MiniCore11source_codes_0E0E0B2C_.exit.thread4.i.i.i, label %.split.us.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i.i.i.i.i.i.i.i
  %.in.i.i.i.i.i.i.i.i54 = phi i64 [ %i.bl, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i.i.i.i.i.i.i.i ], [ %i.aw, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i ]
  %.pn.i.i.i.i.i.i.i.i53 = phi ptr [ %i.bg, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i.i.i.i.i.i.i.i ], [ %i.av, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i53, i64 1 ; 2 uses
  %i.bh = load i128, ptr %i.bg, align 1
  %i.bi = icmp ne i128 %i.bh, 77694434701125410292360704408240092737
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkReNCINvNvXs0_NtNtBc_8adapters10skip_whileINtB1p_9SkipWhileppEB6_4next5checkB1c_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2A_8MiniCore11source_codes_0E0E0B2C_.exit.thread4.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i.i.i.i.i.i.i.i: ; preds = %.split.us.i.i.i.i.i.i.i.i.i
  %i.bl = add nsw i64 %.in.i.i.i.i.i.i.i.i54, -1  ; 2 uses
  %.not27.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bl, 16
  br i1 %.not27.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108
  store ptr %i.av, ptr %i.a, align 8, !noalias !108
  store i64 %i.aw, ptr %i.s, align 8, !noalias !108
  store ptr getelementptr inbounds nuw (i8, ptr @5, i64 1), ptr %i.t, align 8, !noalias !108
  store i64 15, ptr %i.u, align 8, !noalias !108
end_hunk_0
