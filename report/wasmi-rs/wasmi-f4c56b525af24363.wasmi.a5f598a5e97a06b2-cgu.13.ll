Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.13?download=true
inline.NumInlined: 466
inline.NumDeleted: 255
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB12_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB31_8BTreeMapBX_B1y_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtB43_8adapters12GenericShuntINtNtB4X_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5K_4core7exports6ExportENCNvMNtB1C_6parserNtB7i_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1E_5error5ErrorEEE0E0EB1E_:bb.a
  %i.bs = lshr i64 %i.br, 1                       ; 8 uses
  %i.bt = lshr i64 %.sroa.023.164, 1              ; 6 uses
  %i.bu = add nuw i64 %i.bs, %i.bt                ; 4 uses
  %i.bv = sub i64 %.sroa.09.0, %i.bu
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bv ; 6 uses
  %i.bx = icmp samesign ugt i64 %i.bu, %3
  %i.by = trunc i64 %.sroa.023.164 to i1
  %i.bz = or i64 %i.br, %.sroa.023.164
  %i.ca = trunc i64 %i.bz to i1
  %or.cond3.i = or i1 %i.bx, %i.ca
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = trunc i64 %i.br to i1
  br i1 %i.cb, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cc = shl nuw nsw i64 %i.bu, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1c_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3c_8BTreeMapB17_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4f_8adapters12GenericShuntINtNtB5a_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5X_4core7exports6ExportENCNvMNtB1M_6parserNtB7v_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1O_5error5ErrorEEE0E0EB1O_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.by, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cd = or i64 %i.bs, 1
  %i.ce = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1b_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3b_8BTreeMapB16_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4e_8adapters12GenericShuntINtNtB59_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5W_4core7exports6ExportENCNvMNtB1L_6parserNtB7u_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1N_5error5ErrorEEE0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %i.bw, i64 noundef range(i64 0, 384307168202282326) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !432
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.bs
  %i.cj = or i64 %i.bt, 1
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1b_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3b_8BTreeMapB16_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4e_8adapters12GenericShuntINtNtB59_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5W_4core7exports6ExportENCNvMNtB1L_6parserNtB7u_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1N_5error5ErrorEEE0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 384307168202282326) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !432
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.co = icmp eq i64 %i.bs, 0
  %i.cp = icmp eq i64 %i.bt, 0
  %or.cond.i = or i1 %i.cp, %i.co
  br i1 %or.cond.i, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB13_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB32_8BTreeMapBY_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Y_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5L_4core7exports6ExportENCNvMNtB1D_6parserNtB7j_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1F_5error5ErrorEEE0E0EB1F_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 range(i64 0, -9223372036854775808) %i.bs) ; 2 uses
  %i.cq = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cq, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB13_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB32_8BTreeMapBY_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Y_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5L_4core7exports6ExportENCNvMNtB1D_6parserNtB7j_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1F_5error5ErrorEEE0E0EB1F_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.bs ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bs, %i.bt  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cr, ptr %i.bw
  %i.cs = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cs, i1 false), !alias.scope !458
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cu = phi ptr [ %i.di, %.preheader.i ], [ %i.ct, %.critedge.i ] ; 2 uses
  %i.cv = phi ptr [ %i.dh, %.preheader.i ], [ %i.cr, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.cy, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -24 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 -24 ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !457, !noalias !459, !nonnull !4, !noundef !4
  %i.cz = getelementptr i8, ptr %i.cu, i64 -16
  %.val12.i.i = load i64, ptr %i.cz, align 8, !alias.scope !457, !noalias !459, !noundef !4 ; 2 uses
  %.val13.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !456, !noalias !460, !nonnull !4, !noundef !4
  %i.da = getelementptr i8, ptr %i.cv, i64 -16
  %.val14.i.i = load i64, ptr %i.da, align 8, !alias.scope !456, !noalias !460, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val14.i.i)
  %i.db = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val13.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !461, !noalias !462 ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp eq i32 %i.db, 0
  %i.de = sub i64 %.val12.i.i, %.val14.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.dd, i64 %i.de, i64 %i.dc ; 2 uses
  %i.df = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i17.i = select i1 %i.df, ptr %i.cx, ptr %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %..i17.i, i64 24, i1 false), !alias.scope !458, !noalias !463
  %i.dg = zext i1 %i.df to i64
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.dg ; 3 uses
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %spec.select.i.i.i.i.lobit.i.i ; 3 uses
  %i.dj = icmp eq ptr %i.dh, %i.bw
  %i.dk = icmp eq ptr %i.di, %2
  %or.cond.i.i = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB3t_8BTreeMapB1b_B1M_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtB4w_8adapters12GenericShuntINtNtB5r_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6e_4core7exports6ExportENCNvMNtB1Q_6parserNtB7M_12ModuleParser15process_exports0EINtNtBb_6result6ResultzNtNtB1S_5error5ErrorEEE0E0EB1S_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dl = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.bw, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %i.cr, %.critedge.i ] ; 4 uses
  %i.dm = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !456, !noalias !464, !nonnull !4, !noundef !4
  %i.dn = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dn, align 8, !alias.scope !456, !noalias !464, !noundef !4 ; 2 uses
  %.val.i19.i = load ptr, ptr %i.dm, align 8, !alias.scope !457, !noalias !465, !nonnull !4, !noundef !4
  %i.do = getelementptr i8, ptr %i.dm, i64 8
  %.val7.i.i = load i64, ptr %i.do, align 8, !alias.scope !457, !noalias !465, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.dp = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i.i, ptr nonnull readonly %.val.i19.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !466, !noalias !467 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp eq i32 %i.dp, 0
  %i.ds = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.dr, i64 %i.ds, i64 %i.dq ; 2 uses
  %i.dt = icmp sgt i64 %spec.select.i.i.i.i.i21.i, -1 ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.dt, ptr %i.dm, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i.i, i64 24, i1 false), !alias.scope !458, !noalias !468
  %i.du = zext i1 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.du ; 3 uses
  %spec.select.i.i.i.i.lobit.i22.i = lshr i64 %spec.select.i.i.i.i.i21.i, 63
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %spec.select.i.i.i.i.lobit.i22.i ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  %i.dy = icmp ne ptr %i.dv, %i.ct
  %i.dz = icmp ne ptr %i.dw, %i.m
  %or.cond.i23.i = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB3t_8BTreeMapB1b_B1M_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtB4w_8adapters12GenericShuntINtNtB5r_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6e_4core7exports6ExportENCNvMNtB1Q_6parserNtB7M_12ModuleParser15process_exports0EINtNtBb_6result6ResultzNtNtB1S_5error5ErrorEEE0E0EB1S_.exit.i

_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB3t_8BTreeMapB1b_B1M_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtB4w_8adapters12GenericShuntINtNtB5r_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6e_4core7exports6ExportENCNvMNtB1Q_6parserNtB7M_12ModuleParser15process_exports0EINtNtBb_6result6ResultzNtNtB1S_5error5ErrorEEE0E0EB1S_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dh, %.preheader.i ], [ %i.dx, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.di, %.preheader.i ], [ %i.ct, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dv, %.lr.ph.i.i ] ; 2 uses
  %i.ea = ptrtoint ptr %.sroa.7.0.i to i64
  %i.eb = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ec = sub nuw i64 %i.ea, %i.eb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ec, i1 false), !alias.scope !458, !noalias !469
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB13_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB32_8BTreeMapBY_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Y_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5L_4core7exports6ExportENCNvMNtB1D_6parserNtB7j_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1F_5error5ErrorEEE0E0EB1F_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB13_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB32_8BTreeMapBY_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Y_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5L_4core7exports6ExportENCNvMNtB1D_6parserNtB7j_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1F_5error5ErrorEEE0E0EB1F_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB3t_8BTreeMapB1b_B1M_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtB4w_8adapters12GenericShuntINtNtB5r_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6e_4core7exports6ExportENCNvMNtB1Q_6parserNtB7M_12ModuleParser15process_exports0EINtNtBb_6result6ResultzNtNtB1S_5error5ErrorEEE0E0EB1S_.exit.i
  %i.ed = shl nuw nsw i64 %i.bu, 1
  %i.ee = or disjoint i64 %i.ed, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1c_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3c_8BTreeMapB17_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4f_8adapters12GenericShuntINtNtB5a_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5X_4core7exports6ExportENCNvMNtB1M_6parserNtB7v_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1O_5error5ErrorEEE0E0EB1O_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1c_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3c_8BTreeMapB17_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4f_8adapters12GenericShuntINtNtB5a_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5X_4core7exports6ExportENCNvMNtB1M_6parserNtB7v_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1O_5error5ErrorEEE0E0EB1O_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB13_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB32_8BTreeMapBY_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Y_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5L_4core7exports6ExportENCNvMNtB1D_6parserNtB7j_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1F_5error5ErrorEEE0E0EB1F_.exit
  %.sroa.0.0.i = phi i64 [ %i.ee, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB13_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB32_8BTreeMapBY_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Y_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5L_4core7exports6ExportENCNvMNtB1D_6parserNtB7j_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1F_5error5ErrorEEE0E0EB1F_.exit ], [ %i.cc, %bb.u ] ; 2 uses
  %i.ef = icmp ugt i64 %i.bl, 1
  br i1 %i.ef, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eg = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.018.0, 1
  %i.ei = add nuw i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ej, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = or i64 %1, 1
  %i.el = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1b_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3b_8BTreeMapB16_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4e_8adapters12GenericShuntINtNtB59_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5W_4core7exports6ExportENCNvMNtB1L_6parserNtB7u_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1N_5error5ErrorEEE0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !432
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1b_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3b_8BTreeMapB16_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4e_8adapters12GenericShuntINtNtB59_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5W_4core7exports6ExportENCNvMNtB1L_6parserNtB7u_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1N_5error5ErrorEEE0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph114 = phi ptr [ %i.gx, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph113 = phi i64 [ %i.gi, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph112 = phi i32 [ %i.ct, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph111 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph114, i64 8
  %i.d = ptrtoint ptr %.sroa.0.0.ph114 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph111, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph111, i64 8
  %i.f = icmp eq i32 %.sroa.025.0.ph112, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph260

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE12split_at_mutB1c_.exit
  %i.g = icmp eq i32 %i.ct, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph260

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE12split_at_mutB1c_.exit, %bb.a
  %.sroa.0.0.ph.lcssa105 = phi ptr [ %.sroa.0.0.ph114, %_RNvMNtCskKLDkoKarTP_4core5sliceSTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE12split_at_mutB1c_.exit ], [ %0, %bb.a ], [ %i.gx, %.outer ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE12split_at_mutB1c_.exit ], [ %1, %bb.a ], [ %i.gi, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.h = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.h, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1y_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1y_11collections5btree3mapINtB3y_8BTreeMapB1t_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtB4B_8adapters12GenericShuntINtNtB5w_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6j_4core7exports6ExportENCNvMNtB28_6parserNtB7R_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB2a_5error5ErrorEEE0E0EB2a_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.i = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.j = icmp samesign ult i64 %3, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i64 %.sroa.16.0.lcssa, 1            ; 6 uses
  %i.l = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph.lcssa105, i64 %i.k ; 3 uses
  %i.n = getelementptr [24 x i8], ptr %2, i64 %i.k ; 8 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort4_stableTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1f_5sliceSB19_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3f_8BTreeMapB1a_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtB4i_8adapters12GenericShuntINtNtB5d_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB60_4core7exports6ExportENCNvMNtB1P_6parserNtB7y_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1R_5error5ErrorEEE0E0EB1R_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa105, ptr noundef nonnull align 8 %2)
  call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort4_stableTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1f_5sliceSB19_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3f_8BTreeMapB1a_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtB4i_8adapters12GenericShuntINtNtB5d_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB60_4core7exports6ExportENCNvMNtB1P_6parserNtB7y_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1R_5error5ErrorEEE0E0EB1R_(ptr noundef %i.m, ptr noundef %i.n)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.ph.lcssa105, i64 24, i1 false), !alias.scope !540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !alias.scope !540
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.o = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.k  ; 2 uses
  %i.p = icmp samesign ult i64 %.sroa.0.0.i, %i.k
  br i1 %i.p, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit.i, %bb.h
  %i.q = icmp samesign ult i64 %.sroa.0.0.i, %i.o
  br i1 %i.q, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.ak, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.05.08.1.i
  %.idx278 = mul nuw nsw i64 %.sroa.05.08.1.i, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx278 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !alias.scope !540
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24 ; 3 uses
  %.val11.i.1.i = load ptr, ptr %i.s, align 8, !alias.scope !539, !noalias !538, !nonnull !4, !noundef !4 ; 3 uses
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val12.i.1.i = load i64, ptr %i.u, align 8, !alias.scope !539, !noalias !538, !noundef !4 ; 5 uses
  %.val13.i.1.i = load ptr, ptr %i.t, align 8, !alias.scope !539, !noalias !538, !nonnull !4, !noundef !4
  %i.v = getelementptr i8, ptr %i.s, i64 -16
  %.val14.i.1.i = load i64, ptr %i.v, align 8, !alias.scope !539, !noalias !538, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i30.1.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i, i64 %.val14.i.1.i)
  %i.w = call i32 @memcmp(ptr nonnull readonly %.val11.i.1.i, ptr nonnull readonly %.val13.i.1.i, i64 %spec.store.select.i.i.i.i.i30.1.i), !alias.scope !541, !noalias !540 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub i64 %.val12.i.1.i, %.val14.i.1.i
  %spec.select.i.i.i.i.i31.1.i = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = icmp slt i64 %spec.select.i.i.i.i.i31.1.i, 0
  br i1 %i.aa, label %bb.i, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit.1.i

bb.i:                                             ; preds = %.lr.ph.1.i
  %.sroa.512.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.512.0.copyload.i.1.i = load i64, ptr %.sroa.512.0..sroa_idx.i.1.i, align 8, !alias.scope !539, !noalias !538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !alias.scope !539, !noalias !538
  %i.ab = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.ab, label %._crit_edge274, label %.lr.ph273

bb.j:                                             ; preds = %.lr.ph273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i32.1.i271, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !alias.scope !539, !noalias !538
  %i.ac = icmp eq ptr %i.ad, %i.n
  br i1 %i.ac, label %._crit_edge274, label %.lr.ph273

.lr.ph273:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i32.1.i271 = phi ptr [ %i.ad, %bb.j ], [ %i.t, %bb.i ] ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.0.0.i32.1.i271, i64 -24 ; 4 uses
  %.val9.i.1.i = load ptr, ptr %i.ad, align 8, !alias.scope !539, !noalias !538, !nonnull !4, !noundef !4
  %i.ae = getelementptr i8, ptr %.sroa.0.0.i32.1.i271, i64 -16
  %.val10.i.1.i = load i64, ptr %i.ae, align 8, !alias.scope !539, !noalias !538, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i15.i.1.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i, i64 %.val10.i.1.i)
  %i.af = call i32 @memcmp(ptr nonnull readonly %.val11.i.1.i, ptr nonnull readonly %.val9.i.1.i, i64 %spec.store.select.i.i.i.i15.i.1.i), !alias.scope !542, !noalias !540 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %.val12.i.1.i, %.val10.i.1.i
  %spec.select.i.i.i.i16.i.1.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = icmp slt i64 %spec.select.i.i.i.i16.i.1.i, 0
  br i1 %i.aj, label %bb.j, label %._crit_edge274

._crit_edge274:                                   ; preds = %bb.j, %.lr.ph273, %bb.i
  %.sroa.0.0.i32.lcssa.1.i = phi ptr [ %i.n, %bb.i ], [ %i.n, %bb.j ], [ %.sroa.0.0.i32.1.i271, %.lr.ph273 ] ; 3 uses
  store ptr %.val11.i.1.i, ptr %.sroa.0.0.i32.lcssa.1.i, align 8, !alias.scope !539, !noalias !543
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.lcssa.1.i, i64 8
  store i64 %.val12.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !539, !noalias !543
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.lcssa.1.i, i64 16
  store i64 %.sroa.512.0.copyload.i.1.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !539, !noalias !543
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit.1.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit.1.i: ; preds = %._crit_edge274, %.lr.ph.1.i
  %i.ak = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ak, %i.o
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.al = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph.lcssa105, i64 %i.al
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.n, i64 -24
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ap = getelementptr i8, ptr %i.bn, i64 24     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.bm, i64 24
  %i.ar = and i64 %.sroa.16.0.lcssa, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.be, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa105, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.at, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.bd, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.n, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %i.ao, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %i.an, %.loopexit.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.bo, %.lr.ph.i.i ], [ %i.am, %.loopexit.1.i ] ; 2 uses
  %i.at = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load ptr, ptr %.sroa.011.07.i.i, align 8, !alias.scope !545, !noalias !538, !nonnull !4, !noundef !4
  %i.au = getelementptr i8, ptr %.sroa.011.07.i.i, i64 8
  %.sroa.011.0.val22.i.i = load i64, ptr %i.au, align 8, !alias.scope !545, !noalias !538, !noundef !4 ; 2 uses
  %.sroa.06.0.val.i.i = load ptr, ptr %.sroa.06.08.i.i, align 8, !alias.scope !545, !noalias !538, !nonnull !4, !noundef !4
  %i.av = getelementptr i8, ptr %.sroa.06.08.i.i, i64 8
  %.sroa.06.0.val23.i.i = load i64, ptr %i.av, align 8, !alias.scope !545, !noalias !538, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.011.0.val22.i.i, i64 %.sroa.06.0.val23.i.i)
  %i.aw = call i32 @memcmp(ptr nonnull readonly %.sroa.011.0.val.i.i, ptr nonnull readonly %.sroa.06.0.val.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !546, !noalias !547 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp eq i32 %i.aw, 0
  %i.az = sub i64 %.sroa.011.0.val22.i.i, %.sroa.06.0.val23.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.ay, i64 %i.az, i64 %i.ax ; 2 uses
  %i.ba = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i21.i.i = select i1 %i.ba, ptr %.sroa.06.08.i.i, ptr %.sroa.011.07.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i21.i.i, i64 24, i1 false), !alias.scope !540, !noalias !548
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.07.i.i, i64 %spec.select.i.i.i.i.lobit.i.i ; 4 uses
  %i.bc = zext i1 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.06.08.i.i, i64 %i.bc ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 24 ; 2 uses
  %.sroa.017.0.val.i.i = load ptr, ptr %.sroa.017.05.i.i, align 8, !alias.scope !545, !noalias !538, !nonnull !4, !noundef !4
  %i.bf = getelementptr i8, ptr %.sroa.017.05.i.i, i64 8
  %.sroa.017.0.val24.i.i = load i64, ptr %i.bf, align 8, !alias.scope !545, !noalias !538, !noundef !4 ; 2 uses
  %.sroa.015.0.val.i.i = load ptr, ptr %.sroa.015.06.i.i, align 8, !alias.scope !545, !noalias !538, !nonnull !4, !noundef !4
  %i.bg = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val25.i.i = load i64, ptr %i.bg, align 8, !alias.scope !545, !noalias !538, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i26.i.i = call i64 @llvm.umin.i64(i64 %.sroa.017.0.val24.i.i, i64 %.sroa.015.0.val25.i.i)
  %i.bh = call i32 @memcmp(ptr nonnull readonly %.sroa.017.0.val.i.i, ptr nonnull readonly %.sroa.015.0.val.i.i, i64 %spec.store.select.i.i.i.i26.i.i), !alias.scope !549, !noalias !547 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp eq i32 %i.bh, 0
  %i.bk = sub i64 %.sroa.017.0.val24.i.i, %.sroa.015.0.val25.i.i
  %spec.select.i.i.i.i27.i.i = select i1 %i.bj, i64 %i.bk, i64 %i.bi ; 2 uses
  %i.bl = icmp sgt i64 %spec.select.i.i.i.i27.i.i, -1 ; 2 uses
  %..i.i.i = select i1 %i.bl, ptr %.sroa.017.05.i.i, ptr %.sroa.015.06.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i.i, i64 24, i1 false), !alias.scope !540, !noalias !550
  %.neg.i.i.i = sext i1 %i.bl to i64
  %i.bm = getelementptr [24 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %spec.select.i.i.i.i27.lobit.i.i = ashr i64 %spec.select.i.i.i.i27.i.i, 63
  %i.bn = getelementptr [24 x i8], ptr %.sroa.015.06.i.i, i64 %spec.select.i.i.i.i27.lobit.i.i ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -24
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.k
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bp = icmp ult ptr %i.bd, %i.ap               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.bp, ptr %i.bd, ptr %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0..sroa.011.0.i.i, i64 24, i1 false), !alias.scope !540
  %i.bq = zext i1 %i.bp to i64
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bq
  %i.bs = xor i1 %i.bp, true
  %i.bt = zext i1 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.bt
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.bb, %._crit_edge.i.i ], [ %i.bu, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.bd, %._crit_edge.i.i ], [ %i.br, %bb.k ]
  %i.bv = icmp ne ptr %.sroa.06.1.i.i, %i.ap
  %i.bw = icmp ne ptr %.sroa.011.1.i.i, %i.aq
  %or.cond.i.i = select i1 %i.bv, i1 true, i1 %i.bw, !prof !13
  br i1 %or.cond.i.i, label %bb.m, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1y_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1y_11collections5btree3mapINtB3y_8BTreeMapB1t_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtB4B_8adapters12GenericShuntINtNtB5w_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6j_4core7exports6ExportENCNvMNtB28_6parserNtB7R_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB2a_5error5ErrorEEE0E0EB2a_.exit, !prof !13

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #30
          to label %.noexc.i unwind label %bb.n, !noalias !540

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = mul nuw nsw i64 %.sroa.16.0.lcssa, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa105, ptr nonnull align 8 %2, i64 %i.by, i1 false), !alias.scope !540, !noalias !551
  resume { ptr, i32 } %i.bx

.lr.ph.i:                                         ; preds = %bb.h, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.cs, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit.i ], [ %.sroa.0.0.i, %bb.h ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph.lcssa105, i64 %.sroa.05.08.i
  %.idx = mul nuw nsw i64 %.sroa.05.08.i, 24
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false), !alias.scope !540
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -24 ; 3 uses
  %.val11.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !539, !noalias !538, !nonnull !4, !noundef !4 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.ca, i64 8
  %.val12.i.i = load i64, ptr %i.cc, align 8, !alias.scope !539, !noalias !538, !noundef !4 ; 5 uses
  %.val13.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !539, !noalias !538, !nonnull !4, !noundef !4
  %i.cd = getelementptr i8, ptr %i.ca, i64 -16
  %.val14.i.i = load i64, ptr %i.cd, align 8, !alias.scope !539, !noalias !538, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i30.i = call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val14.i.i)
  %i.ce = call i32 @memcmp(ptr nonnull readonly %.val11.i.i, ptr nonnull readonly %.val13.i.i, i64 %spec.store.select.i.i.i.i.i30.i), !alias.scope !541, !noalias !540 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp eq i32 %i.ce, 0
  %i.ch = sub i64 %.val12.i.i, %.val14.i.i
  %spec.select.i.i.i.i.i31.i = select i1 %i.cg, i64 %i.ch, i64 %i.cf
  %i.ci = icmp slt i64 %spec.select.i.i.i.i.i31.i, 0
  br i1 %i.ci, label %bb.o, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.512.0.copyload.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !alias.scope !539, !noalias !538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false), !alias.scope !539, !noalias !538
  %i.cj = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.cj, label %._crit_edge267, label %.lr.ph266

bb.p:                                             ; preds = %.lr.ph266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i32.i264, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !alias.scope !539, !noalias !538
  %i.ck = icmp eq ptr %i.cl, %2
  br i1 %i.ck, label %._crit_edge267, label %.lr.ph266

.lr.ph266:                                        ; preds = %bb.o, %bb.p
  %.sroa.0.0.i32.i264 = phi ptr [ %i.cl, %bb.p ], [ %i.cb, %bb.o ] ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.0.i32.i264, i64 -24 ; 4 uses
  %.val9.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !539, !noalias !538, !nonnull !4, !noundef !4
  %i.cm = getelementptr i8, ptr %.sroa.0.0.i32.i264, i64 -16
  %.val10.i.i = load i64, ptr %i.cm, align 8, !alias.scope !539, !noalias !538, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i15.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val10.i.i)
  %i.cn = call i32 @memcmp(ptr nonnull readonly %.val11.i.i, ptr nonnull readonly %.val9.i.i, i64 %spec.store.select.i.i.i.i15.i.i), !alias.scope !542, !noalias !540 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp eq i32 %i.cn, 0
  %i.cq = sub i64 %.val12.i.i, %.val10.i.i
  %spec.select.i.i.i.i16.i.i = select i1 %i.cp, i64 %i.cq, i64 %i.co
  %i.cr = icmp slt i64 %spec.select.i.i.i.i16.i.i, 0
  br i1 %i.cr, label %bb.p, label %._crit_edge267

._crit_edge267:                                   ; preds = %bb.p, %.lr.ph266, %bb.o
  %.sroa.0.0.i32.lcssa.i = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i32.i264, %.lr.ph266 ] ; 3 uses
  store ptr %.val11.i.i, ptr %.sroa.0.0.i32.lcssa.i, align 8, !alias.scope !539, !noalias !543
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.lcssa.i, i64 8
  store i64 %.val12.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !539, !noalias !543
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.lcssa.i, i64 16
  store i64 %.sroa.512.0.copyload.i.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !539, !noalias !543
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit.i: ; preds = %._crit_edge267, %.lr.ph.i
  %i.cs = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cs, %i.k
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0107.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph113, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB12_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB31_8BTreeMapBX_B1y_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtB43_8adapters12GenericShuntINtNtB4X_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5K_4core7exports6ExportENCNvMNtB1C_6parserNtB7i_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1E_5error5ErrorEEE0E0EB1E_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph114, i64 noundef %.sroa.16.0107.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1y_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1y_11collections5btree3mapINtB3y_8BTreeMapB1t_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtB4B_8adapters12GenericShuntINtNtB5w_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6j_4core7exports6ExportENCNvMNtB28_6parserNtB7R_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB2a_5error5ErrorEEE0E0EB2a_.exit

.lr.ph260:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0106259 = phi i32 [ %i.ct, %bb.b ], [ %.sroa.025.0.ph112, %.lr.ph ]
  %.sroa.16.0107258 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph113, %.lr.ph ] ; 21 uses
  %i.ct = add i32 %.sroa.025.0106259, -1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.cu = lshr i64 %.sroa.16.0107258, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.cu, 96
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph114, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.cu, 168
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph114, i64 %.idx2.i ; 4 uses
  %i.cx = icmp samesign ult i64 %.sroa.16.0107258, 64
  br i1 %i.cx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph260
  %i.cy = call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1a_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3a_8BTreeMapB15_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtB4d_8adapters12GenericShuntINtNtB58_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5V_4core7exports6ExportENCNvMNtB1K_6parserNtB7t_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1M_5error5ErrorEEE0E0EB1M_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph114, ptr noundef readonly %i.cv, ptr noundef readonly %i.cw, i64 noundef %i.cu)
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph260
  %.val10.i = load ptr, ptr %.sroa.0.0.ph114, align 8, !alias.scope !552, !nonnull !4, !noundef !4 ; 2 uses
  %.val11.i = load i64, ptr %i.c, align 8, !alias.scope !552, !noundef !4 ; 4 uses
  %.val12.i = load ptr, ptr %i.cv, align 8, !alias.scope !552, !nonnull !4, !noundef !4 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cv, i64 8
  %.val13.i = load i64, ptr %i.cz, align 8, !alias.scope !552, !noundef !4 ; 4 uses
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.da = call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !553, !noalias !552 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp eq i32 %i.da, 0
  %i.dd = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i = select i1 %i.dc, i64 %i.dd, i64 %i.db ; 2 uses
  %.val8.i = load ptr, ptr %i.cw, align 8, !alias.scope !552, !nonnull !4, !noundef !4 ; 2 uses
  %i.de = getelementptr i8, ptr %i.cw, i64 8
  %.val9.i = load i64, ptr %i.de, align 8, !alias.scope !552, !noundef !4 ; 4 uses
  %spec.store.select.i.i.i.i14.i = call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val9.i)
  %i.df = call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i14.i), !alias.scope !554, !noalias !552 ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp eq i32 %i.df, 0
  %i.di = sub i64 %.val11.i, %.val9.i
  %spec.select.i.i.i.i15.i = select i1 %i.dh, i64 %i.di, i64 %i.dg
  %i.dj = xor i64 %spec.select.i.i.i.i15.i, %spec.select.i.i.i.i.i
  %i.dk = icmp slt i64 %i.dj, 0
  br i1 %i.dk, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %spec.store.select.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val9.i)
  %i.dl = call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i16.i), !alias.scope !555, !noalias !552 ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp eq i32 %i.dl, 0
  %i.do = sub i64 %.val13.i, %.val9.i
  %spec.select.i.i.i.i17.i = select i1 %i.dn, i64 %i.do, i64 %i.dm
  %i.dp = xor i64 %spec.select.i.i.i.i17.i, %spec.select.i.i.i.i.i
  %i.dq = icmp slt i64 %i.dp, 0
  %..i.i = select i1 %i.dq, ptr %i.cw, ptr %i.cv
  br label %bb.t

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1y_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1y_11collections5btree3mapINtB3y_8BTreeMapB1t_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtB4B_8adapters12GenericShuntINtNtB5w_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6j_4core7exports6ExportENCNvMNtB28_6parserNtB7R_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB2a_5error5ErrorEEE0E0EB2a_.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.0.0.i.sink.i = phi ptr [ %i.cy, %bb.q ], [ %.sroa.0.0.ph114, %bb.r ], [ %..i.i, %bb.s ]
  %i.dr = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ds = sub nuw i64 %i.dr, %i.d                 ; 2 uses
  %.sroa.0.0.i39 = udiv exact i64 %i.ds, 24       ; 3 uses
  %i.dt = icmp samesign ult i64 %.sroa.0.0.i39, %.sroa.16.0107258
  call void @llvm.assume(i1 %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph114, i64 %i.ds ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.du, i64 24, i1 false)
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.028.0.val = load ptr, ptr %.sroa.028.0.ph111, align 8, !nonnull !4, !noundef !4
  %.sroa.028.0.val37 = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %i.du, align 8, !nonnull !4, !noundef !4
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %.val38 = load i64, ptr %i.dv, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.028.0.val37, i64 %.val38)
  %i.dw = call i32 @memcmp(ptr nonnull readonly %.sroa.028.0.val, ptr nonnull readonly %.val, i64 %spec.store.select.i.i.i.i), !alias.scope !556 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp eq i32 %i.dw, 0
  %i.dz = sub i64 %.sroa.028.0.val37, %.val38
  %spec.select.i.i.i.i = select i1 %i.dy, i64 %i.dz, i64 %i.dx
  %i.ea = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.ea, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %.not76 = icmp samesign ult i64 %3, %.sroa.16.0107258
  br i1 %.not76, label %bb.x, label %bb.w, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.eb = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.0107258 ; 4 uses
  %i.ec = getelementptr i8, ptr %i.du, i64 8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.aa, %bb.w
  %.sroa.19.0.i = phi ptr [ %i.eb, %bb.w ], [ %i.er, %bb.aa ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.w ], [ %.sroa.11.1.lcssa.i, %bb.aa ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph114, %bb.w ], [ %i.et, %bb.aa ] ; 3 uses
  %.sroa.0.0.i40 = phi i64 [ %.sroa.0.0.i39, %bb.w ], [ %.sroa.16.0107258, %bb.aa ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph114, i64 %.sroa.0.0.i40 ; 2 uses
  %i.ee = icmp ult ptr %.sroa.5.0.i, %i.ed
  br i1 %i.ee, label %.lr.ph.i42, label %._crit_edge.i

.lr.ph.i42:                                       ; preds = %bb.y
  %.val13.i43 = load ptr, ptr %i.du, align 8, !alias.scope !557, !noalias !558, !nonnull !4, !noundef !4
  br label %bb.z

._crit_edge.i:                                    ; preds = %bb.z, %bb.y
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.y ], [ %i.em, %bb.z ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.y ], [ %i.eo, %bb.z ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.y ], [ %i.ep, %bb.z ] ; 2 uses
  %i.ef = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0107258
  br i1 %i.ef, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph.i42
  %.sroa.5.111.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i42 ], [ %i.ep, %bb.z ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i42 ], [ %i.eo, %bb.z ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i42 ], [ %i.em, %bb.z ]
  %.val.i = load ptr, ptr %.sroa.5.111.i, align 8, !alias.scope !557, !noalias !558, !nonnull !4, !noundef !4
  %i.eg = getelementptr i8, ptr %.sroa.5.111.i, i64 8
  %.val12.i44 = load i64, ptr %i.eg, align 8, !alias.scope !557, !noalias !558, !noundef !4 ; 2 uses
  %.val14.i = load i64, ptr %i.ec, align 8, !alias.scope !557, !noalias !558, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i45 = call i64 @llvm.umin.i64(i64 %.val12.i44, i64 %.val14.i)
  %i.eh = call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val13.i43, i64 %spec.store.select.i.i.i.i.i45), !alias.scope !559, !noalias !560 ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp eq i32 %i.eh, 0
  %i.ek = sub i64 %.val12.i44, %.val14.i
  %spec.select.i.i.i.i.i46 = select i1 %i.ej, i64 %i.ek, i64 %i.ei ; 2 uses
  %i.el = icmp slt i64 %spec.select.i.i.i.i.i46, 0
  %i.em = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -24 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.el, ptr %2, ptr %i.em
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i, i64 24, i1 false), !alias.scope !560, !noalias !561
  %spec.select.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i46, 63
  %i.eo = add i64 %spec.select.i.i.i.i.lobit.i, %.sroa.11.110.i ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 24 ; 3 uses
  %i.eq = icmp ult ptr %i.ep, %i.ed
  br i1 %i.eq, label %bb.z, label %._crit_edge.i

bb.aa:                                            ; preds = %._crit_edge.i
  %i.er = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -24 ; 2 uses
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !560, !noalias !562
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 24
  br label %bb.y

bb.ab:                                            ; preds = %._crit_edge.i
  %i.eu = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph114, ptr nonnull align 8 %2, i64 %i.eu, i1 false), !alias.scope !560
  %i.ev = sub i64 %.sroa.16.0107258, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.0107258, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.ab
  %i.ew = getelementptr [24 x i8], ptr %.sroa.0.0.ph114, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.ev, 1
  %i.ex = icmp eq i64 %.sroa.16.0107258, %.neg
  br i1 %i.ex, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.ev, -2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.fb, %bb.ac ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.ac ]
  %i.ey = xor i64 %.sroa.06.014.i, -1
  %i.ez = getelementptr [24 x i8], ptr %i.eb, i64 %i.ey
  %i.fa = getelementptr [24 x i8], ptr %i.ew, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i64 24, i1 false), !alias.scope !560
  %i.fb = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.fc = xor i64 %.sroa.06.014.i, -2
  %i.fd = getelementptr [24 x i8], ptr %i.eb, i64 %i.fc
  %i.fe = getelementptr [24 x i8], ptr %i.ew, i64 %.sroa.06.014.i
  %i.ff = getelementptr i8, ptr %i.fe, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i64 24, i1 false), !alias.scope !560
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ac

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!339 = distinct !{!339, !338, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core9func_type13FuncTypeInnerECsefoF4u9kbII_5wasmi: argument 0"}
!340 = distinct !{!340, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEECsefoF4u9kbII_5wasmi"}
!341 = distinct !{!341, !340, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEECsefoF4u9kbII_5wasmi: argument 0"}
!342 = distinct !{!342, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsefoF4u9kbII_5wasmi"}
!343 = distinct !{!343, !342, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsefoF4u9kbII_5wasmi: argument 0"}
!344 = !{!337}
!345 = !{!339}
!346 = !{!339, !337}
!347 = !{!341}
!348 = !{!343}
!349 = !{!343, !341, !339, !337}
!350 = distinct !{!350, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!351 = distinct !{!351, !350, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!352 = distinct !{!352, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!353 = distinct !{!353, !352, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!354 = !{!351}
!355 = !{!353}
!356 = distinct !{!356, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_"}
!357 = distinct !{!357, !356, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_: argument 0"}
!358 = distinct !{!358, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core9func_type8FuncTypeECsefoF4u9kbII_5wasmi"}
!359 = distinct !{!359, !358, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core9func_type8FuncTypeECsefoF4u9kbII_5wasmi: argument 0"}
!360 = distinct !{!360, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core9func_type13FuncTypeInnerECsefoF4u9kbII_5wasmi"}
!361 = distinct !{!361, !360, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core9func_type13FuncTypeInnerECsefoF4u9kbII_5wasmi: argument 0"}
!362 = distinct !{!362, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEECsefoF4u9kbII_5wasmi"}
!363 = distinct !{!363, !362, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEECsefoF4u9kbII_5wasmi: argument 0"}
!364 = distinct !{!364, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsefoF4u9kbII_5wasmi"}
!365 = distinct !{!365, !364, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsefoF4u9kbII_5wasmi: argument 0"}
!366 = !{!357}
!367 = !{!359}
!368 = !{!361}
!369 = !{!361, !359, !357}
!370 = !{!363}
!371 = !{!365}
!372 = !{!365, !363, !361, !359, !357}
!373 = distinct !{!373, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!374 = distinct !{!374, !373, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!375 = distinct !{!375, !373, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!376 = distinct !{!376, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!377 = distinct !{!377, !376, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!378 = distinct !{!378, !376, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!379 = distinct !{!379, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!380 = distinct !{!380, !379, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!381 = distinct !{!381, !379, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!382 = !{!375, !374}
!383 = !{!378, !377}
!384 = !{!381, !380}
!385 = distinct !{!385, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!386 = distinct !{!386, !385, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!387 = distinct !{!387, !385, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!388 = distinct !{!388, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!389 = distinct !{!389, !388, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!390 = distinct !{!390, !388, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!391 = distinct !{!391, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!392 = distinct !{!392, !391, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!393 = distinct !{!393, !391, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!394 = distinct !{!394, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!395 = distinct !{!395, !394, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!396 = distinct !{!396, !394, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!397 = distinct !{!397, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!398 = distinct !{!398, !397, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!399 = distinct !{!399, !397, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!400 = !{!387, !386}
!401 = !{!390, !389}
!402 = !{!393, !392}
!403 = !{!396, !395}
!404 = !{!399, !398}
!405 = distinct !{!405, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!406 = distinct !{!406, !405, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!407 = distinct !{!407, !405, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!408 = distinct !{!408, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!409 = distinct !{!409, !408, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!410 = distinct !{!410, !408, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!411 = distinct !{!411, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB2b_"}
!412 = distinct !{!412, !411, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB2b_: argument 0"}
!413 = distinct !{!413, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtBd_3ops4drop4Drop4dropB1Y_"}
!414 = distinct !{!414, !413, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtBd_3ops4drop4Drop4dropB1Y_: argument 0"}
!415 = !{!407, !406}
!416 = !{!410, !409}
!417 = !{!414, !412}
!418 = distinct !{!418, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB19_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB39_8BTreeMapB14_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4c_8adapters12GenericShuntINtNtB57_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5U_4core7exports6ExportENCNvMNtB1J_6parserNtB7s_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1L_5error5ErrorEEE0E0EB1L_"}
!419 = distinct !{!419, !418, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB19_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB39_8BTreeMapB14_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4c_8adapters12GenericShuntINtNtB57_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5U_4core7exports6ExportENCNvMNtB1J_6parserNtB7s_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1L_5error5ErrorEEE0E0EB1L_: argument 0"}
!420 = distinct !{!420, !418, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB19_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB39_8BTreeMapB14_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4c_8adapters12GenericShuntINtNtB57_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5U_4core7exports6ExportENCNvMNtB1J_6parserNtB7s_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1L_5error5ErrorEEE0E0EB1L_: argument 2"}
!421 = distinct !{!421, !418, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB19_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB39_8BTreeMapB14_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4c_8adapters12GenericShuntINtNtB57_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5U_4core7exports6ExportENCNvMNtB1J_6parserNtB7s_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1L_5error5ErrorEEE0E0EB1L_: argument 1"}
!422 = distinct !{!422, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!423 = distinct !{!423, !422, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!424 = distinct !{!424, !422, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!425 = distinct !{!425, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!426 = distinct !{!426, !425, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!427 = distinct !{!427, !425, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!428 = distinct !{!428, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!429 = distinct !{!429, !428, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!430 = distinct !{!430, !428, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!431 = distinct !{null}
!432 = distinct !{null}
!433 = distinct !{!433, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB13_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB32_8BTreeMapBY_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Y_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5L_4core7exports6ExportENCNvMNtB1D_6parserNtB7j_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1F_5error5ErrorEEE0E0EB1F_"}
!434 = distinct !{!434, !433, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB13_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB32_8BTreeMapBY_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Y_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5L_4core7exports6ExportENCNvMNtB1D_6parserNtB7j_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1F_5error5ErrorEEE0E0EB1F_: argument 0"}
!435 = distinct !{!435, !433, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB13_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB32_8BTreeMapBY_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Y_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5L_4core7exports6ExportENCNvMNtB1D_6parserNtB7j_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1F_5error5ErrorEEE0E0EB1F_: argument 1"}
!436 = distinct !{!436, !"_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB3t_8BTreeMapB1b_B1M_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtB4w_8adapters12GenericShuntINtNtB5r_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6e_4core7exports6ExportENCNvMNtB1Q_6parserNtB7M_12ModuleParser15process_exports0EINtNtBb_6result6ResultzNtNtB1S_5error5ErrorEEE0E0EB1S_"}
!437 = distinct !{!437, !436, !"_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB3t_8BTreeMapB1b_B1M_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtB4w_8adapters12GenericShuntINtNtB5r_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6e_4core7exports6ExportENCNvMNtB1Q_6parserNtB7M_12ModuleParser15process_exports0EINtNtBb_6result6ResultzNtNtB1S_5error5ErrorEEE0E0EB1S_: argument 0"}
!438 = distinct !{!438, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!439 = distinct !{!439, !438, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!440 = distinct !{!440, !438, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!441 = distinct !{!441, !"_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE8merge_upNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB3q_8BTreeMapB1b_B1M_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtB4t_8adapters12GenericShuntINtNtB5o_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6b_4core7exports6ExportENCNvMNtB1Q_6parserNtB7J_12ModuleParser15process_exports0EINtNtBb_6result6ResultzNtNtB1S_5error5ErrorEEE0E0EB1S_"}
!442 = distinct !{!442, !441, !"_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE8merge_upNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB3q_8BTreeMapB1b_B1M_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtB4t_8adapters12GenericShuntINtNtB5o_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6b_4core7exports6ExportENCNvMNtB1Q_6parserNtB7J_12ModuleParser15process_exports0EINtNtBb_6result6ResultzNtNtB1S_5error5ErrorEEE0E0EB1S_: argument 0"}
!443 = distinct !{!443, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!444 = distinct !{!444, !443, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!445 = distinct !{!445, !443, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!446 = distinct !{!446, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB27_"}
!447 = distinct !{!447, !446, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB27_: argument 0"}
!448 = distinct !{!448, !"_RNvXs_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB4_10MergeStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtBc_3ops4drop4Drop4dropB1T_"}
!449 = distinct !{!449, !448, !"_RNvXs_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB4_10MergeStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtBc_3ops4drop4Drop4dropB1T_: argument 0"}
!450 = !{!419}
!451 = !{!421, !420}
!452 = !{!424, !423}
!453 = !{!419, !421, !420}
!454 = !{!427, !426}
!455 = !{!430, !429}
!456 = !{!434}
!457 = !{!435}
!458 = !{!434, !435}
!459 = !{!437, !434}
!460 = !{!437, !435}
!461 = !{!440, !439}
!462 = !{!437, !434, !435}
!463 = !{!437}
!464 = !{!442, !435}
!465 = !{!442, !434}
!466 = !{!445, !444}
!467 = !{!442, !434, !435}
!468 = !{!442}
!469 = !{!449, !447}
!470 = distinct !{!470, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1y_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1y_11collections5btree3mapINtB3y_8BTreeMapB1t_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtB4B_8adapters12GenericShuntINtNtB5w_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6j_4core7exports6ExportENCNvMNtB28_6parserNtB7R_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB2a_5error5ErrorEEE0E0EB2a_"}
!471 = distinct !{!471, !470, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1y_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1y_11collections5btree3mapINtB3y_8BTreeMapB1t_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtB4B_8adapters12GenericShuntINtNtB5w_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6j_4core7exports6ExportENCNvMNtB28_6parserNtB7R_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB2a_5error5ErrorEEE0E0EB2a_: argument 0"}
!472 = distinct !{!472, !470, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1y_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1y_11collections5btree3mapINtB3y_8BTreeMapB1t_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtB4B_8adapters12GenericShuntINtNtB5w_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6j_4core7exports6ExportENCNvMNtB28_6parserNtB7R_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB2a_5error5ErrorEEE0E0EB2a_: argument 1"}
!473 = distinct !{!473, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!474 = distinct !{!474, !473, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!475 = distinct !{!475, !473, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!476 = distinct !{!476, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!477 = distinct !{!477, !476, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!478 = distinct !{!478, !476, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!479 = distinct !{!479, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB2b_"}
!480 = distinct !{!480, !479, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB2b_: argument 0"}
!481 = distinct !{!481, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtBd_3ops4drop4Drop4dropB1Y_"}
!482 = distinct !{!482, !481, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtBd_3ops4drop4Drop4dropB1Y_: argument 0"}
!483 = distinct !{!483, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1m_5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB1m_11collections5btree3mapINtB3m_8BTreeMapB1h_B1S_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtB4p_8adapters12GenericShuntINtNtB5k_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB67_4core7exports6ExportENCNvMNtB1W_6parserNtB7F_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Y_5error5ErrorEEE0E0EB1Y_"}
!484 = distinct !{!484, !483, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1m_5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB1m_11collections5btree3mapINtB3m_8BTreeMapB1h_B1S_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtB4p_8adapters12GenericShuntINtNtB5k_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB67_4core7exports6ExportENCNvMNtB1W_6parserNtB7F_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Y_5error5ErrorEEE0E0EB1Y_: argument 0"}
!485 = distinct !{!485, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!486 = distinct !{!486, !485, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!487 = distinct !{!487, !485, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!488 = distinct !{!488, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1a_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3a_8BTreeMapB15_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtB4d_8adapters12GenericShuntINtNtB58_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5V_4core7exports6ExportENCNvMNtB1K_6parserNtB7t_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1M_5error5ErrorEEE0E0EB1M_"}
!489 = distinct !{!489, !488, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1a_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3a_8BTreeMapB15_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtB4d_8adapters12GenericShuntINtNtB58_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5V_4core7exports6ExportENCNvMNtB1K_6parserNtB7t_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1M_5error5ErrorEEE0E0EB1M_: argument 1"}
!490 = distinct !{!490, !488, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1a_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3a_8BTreeMapB15_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtB4d_8adapters12GenericShuntINtNtB58_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5V_4core7exports6ExportENCNvMNtB1K_6parserNtB7t_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1M_5error5ErrorEEE0E0EB1M_: argument 0"}
!491 = distinct !{!491, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!492 = distinct !{!492, !491, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!493 = distinct !{!493, !491, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!494 = distinct !{!494, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1d_5sliceSB17_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3d_8BTreeMapB18_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtB4g_8adapters12GenericShuntINtNtB5b_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Y_4core7exports6ExportENCNvMNtB1N_6parserNtB7w_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1P_5error5ErrorEEE0E0EB1P_"}
!495 = distinct !{!495, !494, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1d_5sliceSB17_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3d_8BTreeMapB18_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtB4g_8adapters12GenericShuntINtNtB5b_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Y_4core7exports6ExportENCNvMNtB1N_6parserNtB7w_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1P_5error5ErrorEEE0E0EB1P_: argument 1"}
!496 = distinct !{!496, !494, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1d_5sliceSB17_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3d_8BTreeMapB18_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtB4g_8adapters12GenericShuntINtNtB5b_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Y_4core7exports6ExportENCNvMNtB1N_6parserNtB7w_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1P_5error5ErrorEEE0E0EB1P_: argument 0"}
!497 = distinct !{!497, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB2b_"}
!498 = distinct !{!498, !497, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB2b_: argument 0"}
!499 = distinct !{!499, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtBd_3ops4drop4Drop4dropB1Y_"}
!500 = distinct !{!500, !499, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtBd_3ops4drop4Drop4dropB1Y_: argument 0"}
!501 = distinct !{!501, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1b_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3b_8BTreeMapB16_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4e_8adapters12GenericShuntINtNtB59_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5W_4core7exports6ExportENCNvMNtB1L_6parserNtB7u_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1N_5error5ErrorEEE0E0EB1N_"}
!502 = distinct !{!502, !501, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1b_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3b_8BTreeMapB16_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4e_8adapters12GenericShuntINtNtB59_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5W_4core7exports6ExportENCNvMNtB1L_6parserNtB7u_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1N_5error5ErrorEEE0E0EB1N_: argument 0"}
!503 = distinct !{!503, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!504 = distinct !{!504, !503, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!505 = distinct !{!505, !503, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!506 = distinct !{!506, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!507 = distinct !{!507, !506, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!508 = distinct !{!508, !506, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!509 = distinct !{!509, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!510 = distinct !{!510, !509, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!511 = distinct !{!511, !509, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!512 = distinct !{!512, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!513 = distinct !{!513, !512, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!514 = distinct !{!514, !512, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!515 = distinct !{!515, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1j_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB3j_8BTreeMapB1e_B1P_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtB4m_8adapters12GenericShuntINtNtB5h_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB64_4core7exports6ExportENCNvMNtB1T_6parserNtB7C_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1V_5error5ErrorEEE0E0EB1V_"}
!516 = distinct !{!516, !515, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1j_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB3j_8BTreeMapB1e_B1P_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtB4m_8adapters12GenericShuntINtNtB5h_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB64_4core7exports6ExportENCNvMNtB1T_6parserNtB7C_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1V_5error5ErrorEEE0E0EB1V_: argument 0"}
!517 = distinct !{!517, !515, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1j_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB3j_8BTreeMapB1e_B1P_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtB4m_8adapters12GenericShuntINtNtB5h_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB64_4core7exports6ExportENCNvMNtB1T_6parserNtB7C_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1V_5error5ErrorEEE0E0EB1V_: argument 1"}
!518 = distinct !{!518, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!519 = distinct !{!519, !518, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!520 = distinct !{!520, !518, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!521 = distinct !{!521, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE13partition_oneB1Z_"}
!522 = distinct !{!522, !521, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE13partition_oneB1Z_: argument 0"}
!523 = distinct !{!523, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE13partition_oneB1Z_"}
!524 = distinct !{!524, !523, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE13partition_oneB1Z_: argument 0"}
!525 = distinct !{!525, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE12split_at_mutB1c_"}
!526 = distinct !{!526, !525, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE12split_at_mutB1c_: argument 1"}
!527 = distinct !{!527, !525, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE12split_at_mutB1c_: argument 0"}
!528 = distinct !{!528, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvB2_9quicksortB1d_NCINvMNtB1j_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB3F_8BTreeMapB1e_B1P_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtB4I_8adapters12GenericShuntINtNtB5D_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6q_4core7exports6ExportENCNvMNtB1T_6parserNtB7Y_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1V_5error5ErrorEEE0E0E0EB1V_"}
!529 = distinct !{!529, !528, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvB2_9quicksortB1d_NCINvMNtB1j_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB3F_8BTreeMapB1e_B1P_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtB4I_8adapters12GenericShuntINtNtB5D_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6q_4core7exports6ExportENCNvMNtB1T_6parserNtB7Y_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1V_5error5ErrorEEE0E0E0EB1V_: argument 0"}
!530 = distinct !{!530, !528, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvB2_9quicksortB1d_NCINvMNtB1j_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB3F_8BTreeMapB1e_B1P_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtB4I_8adapters12GenericShuntINtNtB5D_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6q_4core7exports6ExportENCNvMNtB1T_6parserNtB7Y_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1V_5error5ErrorEEE0E0E0EB1V_: argument 1"}
!531 = distinct !{!531, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!532 = distinct !{!532, !531, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!533 = distinct !{!533, !531, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!534 = distinct !{!534, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE13partition_oneB1Z_"}
!535 = distinct !{!535, !534, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE13partition_oneB1Z_: argument 0"}
!536 = distinct !{!536, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE13partition_oneB1Z_"}
!537 = distinct !{!537, !536, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE13partition_oneB1Z_: argument 0"}
!538 = !{!471}
!539 = !{!472}
!540 = !{!471, !472}
!541 = !{!475, !474}
!542 = !{!478, !477}
!543 = !{!482, !480, !471}
!544 = !{!484}
!545 = !{!484, !472}
!546 = !{!487, !486}
!547 = !{!484, !471, !472}
!548 = !{!490, !489}
!549 = !{!493, !492}
!550 = !{!496, !495}
!551 = !{!500, !498}
!552 = !{!502}
!553 = !{!505, !504}
!554 = !{!508, !507}
!555 = !{!511, !510}
!556 = !{!514, !513}
!557 = !{!516}
!558 = !{!517}
!559 = !{!520, !519}
!560 = !{!516, !517}
!561 = !{!522}
!562 = !{!524}
!563 = !{!527, !526}
!564 = !{!529}
!565 = !{!530}
!566 = !{!533, !532}
!567 = !{!529, !530}
!568 = !{!535}
!569 = !{!537}
!570 = distinct !{!570, !"_RINvXsy_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index10GlobalAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1u_"}
!571 = distinct !{!571, !570, !"_RINvXsy_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index10GlobalAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1u_: argument 1"}
!572 = distinct !{!572, !570, !"_RINvXsy_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index10GlobalAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1u_: argument 0"}
!573 = !{!572, !571}
!574 = distinct !{!574, !"_RINvXsz_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index10MemoryAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1u_"}
!575 = distinct !{!575, !574, !"_RINvXsz_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index10MemoryAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1u_: argument 1"}
!576 = distinct !{!576, !574, !"_RINvXsz_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index10MemoryAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1u_: argument 0"}
!577 = !{!576, !575}
!578 = distinct !{!578, !"_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index12InternalFuncNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1w_"}
!579 = distinct !{!579, !578, !"_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index12InternalFuncNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1w_: argument 1"}
!580 = distinct !{!580, !578, !"_RINvXsw_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index12InternalFuncNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1w_: argument 0"}
!581 = !{!580, !579}
!582 = distinct !{!582, !"_RINvXs5_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index4SlotNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1n_"}
!583 = distinct !{!583, !582, !"_RINvXs5_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index4SlotNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1n_: argument 1"}
!584 = distinct !{!584, !582, !"_RINvXs5_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index4SlotNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1n_: argument 0"}
!585 = !{!584, !583}
!586 = distinct !{!586, !"_RINvXsB_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index8DataAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1r_"}
!587 = distinct !{!587, !586, !"_RINvXsB_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index8DataAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1r_: argument 1"}
!588 = distinct !{!588, !586, !"_RINvXsB_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index8DataAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1r_: argument 0"}
!589 = !{!588, !587}
!590 = distinct !{!590, !"_RINvXsC_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index8ElemAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1r_"}
!591 = distinct !{!591, !590, !"_RINvXsC_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index8ElemAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1r_: argument 1"}
!592 = distinct !{!592, !590, !"_RINvXsC_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index8ElemAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1r_: argument 0"}
!593 = !{!592, !591}
!594 = distinct !{!594, !"_RINvXsx_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index8FuncAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1r_"}
!595 = distinct !{!595, !594, !"_RINvXsx_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index8FuncAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1r_: argument 1"}
!596 = distinct !{!596, !594, !"_RINvXsx_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index8FuncAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1r_: argument 0"}
!597 = !{!596, !595}
!598 = distinct !{!598, !"_RINvXsv_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index8FuncTypeNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1r_"}
!599 = distinct !{!599, !598, !"_RINvXsv_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index8FuncTypeNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1r_: argument 1"}
!600 = distinct !{!600, !598, !"_RINvXsv_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index8FuncTypeNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1r_: argument 0"}
!601 = !{!600, !599}
!602 = distinct !{!602, !"_RINvXsA_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index9TableAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1s_"}
!603 = distinct !{!603, !602, !"_RINvXsA_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index9TableAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1s_: argument 1"}
!604 = distinct !{!604, !602, !"_RINvXsA_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtB8_5index9TableAddrNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1s_: argument 0"}
!605 = !{!604, !603}
!606 = distinct !{!606, !"_RINvXsJ_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtCs5zeGauAcNNa_10wasmi_core4trap8TrapCodeNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1N_"}
!607 = distinct !{!607, !606, !"_RINvXsJ_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtCs5zeGauAcNNa_10wasmi_core4trap8TrapCodeNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1N_: argument 1"}
!608 = distinct !{!608, !606, !"_RINvXsJ_NtCs6kx5fqqPdgs_8wasmi_ir6encodeNtNtCs5zeGauAcNNa_10wasmi_core4trap8TrapCodeNtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1N_: argument 0"}
!609 = !{!608, !607}
!610 = distinct !{!610, !"_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_10ImportNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!611 = distinct !{!611, !610, !"_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_10ImportNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!612 = distinct !{!612, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!613 = distinct !{!613, !612, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!614 = distinct !{!614, !"_RNvXsi_NtNtCsefoF4u9kbII_5wasmi8instance7exportsNtB5_10ExternTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!615 = distinct !{!615, !614, !"_RNvXsi_NtNtCsefoF4u9kbII_5wasmi8instance7exportsNtB5_10ExternTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!616 = distinct !{!616, !614, !"_RNvXsi_NtNtCsefoF4u9kbII_5wasmi8instance7exportsNtB5_10ExternTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 1"}
!617 = !{!611}
!618 = !{!613, !611}
!619 = !{!615}
!620 = !{!616}
!621 = !{!615, !616}
!622 = distinct !{!622, !"_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_10ImportNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!623 = distinct !{!623, !622, !"_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_10ImportNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!624 = distinct !{!624, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!625 = distinct !{!625, !624, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!626 = distinct !{!626, !"_RNvXsi_NtNtCsefoF4u9kbII_5wasmi8instance7exportsNtB5_10ExternTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!627 = distinct !{!627, !626, !"_RNvXsi_NtNtCsefoF4u9kbII_5wasmi8instance7exportsNtB5_10ExternTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!628 = distinct !{!628, !626, !"_RNvXsi_NtNtCsefoF4u9kbII_5wasmi8instance7exportsNtB5_10ExternTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 1"}
!629 = distinct !{!629, !"_RNvXsi_NtNtCsefoF4u9kbII_5wasmi8instance7exportsNtB5_10ExternTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!630 = distinct !{!630, !629, !"_RNvXsi_NtNtCsefoF4u9kbII_5wasmi8instance7exportsNtB5_10ExternTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!631 = distinct !{!631, !629, !"_RNvXsi_NtNtCsefoF4u9kbII_5wasmi8instance7exportsNtB5_10ExternTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 1"}
!632 = !{!623}
!633 = !{!625, !623}
!634 = !{!627}
!635 = !{!628}
!636 = !{!627, !628}
!637 = !{!630}
!638 = !{!631}
!639 = !{!630, !631}
!640 = distinct !{!640, !"_RNvMNtNtCs5zeGauAcNNa_10wasmi_core5table2tyNtB2_9TableType13is_subtype_of"}
!641 = distinct !{!641, !640, !"_RNvMNtNtCs5zeGauAcNNa_10wasmi_core5table2tyNtB2_9TableType13is_subtype_of: argument 0"}
!642 = distinct !{!642, !640, !"_RNvMNtNtCs5zeGauAcNNa_10wasmi_core5table2tyNtB2_9TableType13is_subtype_of: argument 1"}
!643 = !{!641}
!644 = !{!642}
!645 = distinct !{!645, !"_RNvMs1_NtNtCs5zeGauAcNNa_10wasmi_core6memory2tyNtB5_10MemoryType13is_subtype_of"}
!646 = distinct !{!646, !645, !"_RNvMs1_NtNtCs5zeGauAcNNa_10wasmi_core6memory2tyNtB5_10MemoryType13is_subtype_of: argument 0"}
!647 = distinct !{!647, !645, !"_RNvMs1_NtNtCs5zeGauAcNNa_10wasmi_core6memory2tyNtB5_10MemoryType13is_subtype_of: argument 1"}
!648 = !{!646}
!649 = !{!647}
!650 = distinct !{!650, !"_RNvMs_NtNtCsefoF4u9kbII_5wasmi6memory2tyNtB4_17MemoryTypeBuilder5build"}
!651 = distinct !{!651, !650, !"_RNvMs_NtNtCsefoF4u9kbII_5wasmi6memory2tyNtB4_17MemoryTypeBuilder5build: argument 1"}
!652 = distinct !{!652, !650, !"_RNvMs_NtNtCsefoF4u9kbII_5wasmi6memory2tyNtB4_17MemoryTypeBuilder5build: argument 0"}
!653 = distinct !{!653, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCsefoF4u9kbII_5wasmi6memory2ty10MemoryTypeNtNtNtCs5zeGauAcNNa_10wasmi_core6memory5error11MemoryErrorE6unwrapBN_"}
!654 = distinct !{!654, !653, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCsefoF4u9kbII_5wasmi6memory2ty10MemoryTypeNtNtNtCs5zeGauAcNNa_10wasmi_core6memory5error11MemoryErrorE6unwrapBN_: argument 2"}
!655 = distinct !{!655, !653, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCsefoF4u9kbII_5wasmi6memory2ty10MemoryTypeNtNtNtCs5zeGauAcNNa_10wasmi_core6memory5error11MemoryErrorE6unwrapBN_: argument 1"}
!656 = distinct !{!656, !653, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCsefoF4u9kbII_5wasmi6memory2ty10MemoryTypeNtNtNtCs5zeGauAcNNa_10wasmi_core6memory5error11MemoryErrorE6unwrapBN_: argument 0"}
!657 = !{!652, !651}
!658 = !{!652}
!659 = !{!656, !655, !654}
!660 = !{!656, !655}
!661 = !{!656}
!662 = !{!655}
!663 = !{!654}
!664 = distinct !{!664, !"_RNvMs_NtNtCsefoF4u9kbII_5wasmi6memory2tyNtB4_17MemoryTypeBuilder5build"}
!665 = distinct !{!665, !664, !"_RNvMs_NtNtCsefoF4u9kbII_5wasmi6memory2tyNtB4_17MemoryTypeBuilder5build: argument 1"}
!666 = distinct !{!666, !664, !"_RNvMs_NtNtCsefoF4u9kbII_5wasmi6memory2tyNtB4_17MemoryTypeBuilder5build: argument 0"}
!667 = distinct !{!667, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCsefoF4u9kbII_5wasmi6memory2ty10MemoryTypeNtNtNtCs5zeGauAcNNa_10wasmi_core6memory5error11MemoryErrorE6unwrapBN_"}
!668 = distinct !{!668, !667, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCsefoF4u9kbII_5wasmi6memory2ty10MemoryTypeNtNtNtCs5zeGauAcNNa_10wasmi_core6memory5error11MemoryErrorE6unwrapBN_: argument 2"}
!669 = distinct !{!669, !667, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCsefoF4u9kbII_5wasmi6memory2ty10MemoryTypeNtNtNtCs5zeGauAcNNa_10wasmi_core6memory5error11MemoryErrorE6unwrapBN_: argument 1"}
!670 = distinct !{!670, !667, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCsefoF4u9kbII_5wasmi6memory2ty10MemoryTypeNtNtNtCs5zeGauAcNNa_10wasmi_core6memory5error11MemoryErrorE6unwrapBN_: argument 0"}
!671 = !{!666, !665}
!672 = !{!666}
!673 = !{!670, !669, !668}
!674 = !{!670, !669}
!675 = !{!670}
!676 = !{!669}
!677 = !{!668}
!678 = distinct !{!678, !"_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_10ImportNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!679 = distinct !{!679, !678, !"_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_10ImportNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!680 = distinct !{!680, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!681 = distinct !{!681, !680, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!682 = !{!679}
!683 = !{!681, !679}
!684 = distinct !{!684, !"_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_10ImportNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!685 = distinct !{!685, !684, !"_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_10ImportNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!686 = distinct !{!686, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!687 = distinct !{!687, !686, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!688 = !{!685}
!689 = !{!687, !685}
!690 = distinct !{!690, !"_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_10ImportNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!691 = distinct !{!691, !690, !"_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_10ImportNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!692 = distinct !{!692, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!693 = distinct !{!693, !692, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!694 = !{!691}
!695 = !{!693, !691}
!696 = distinct !{!696, !"_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_10ImportNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!697 = distinct !{!697, !696, !"_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_10ImportNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!698 = distinct !{!698, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!699 = distinct !{!699, !698, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!700 = distinct !{!700, !"_RNvXsi_NtNtCsefoF4u9kbII_5wasmi8instance7exportsNtB5_10ExternTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!701 = distinct !{!701, !700, !"_RNvXsi_NtNtCsefoF4u9kbII_5wasmi8instance7exportsNtB5_10ExternTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!702 = distinct !{!702, !700, !"_RNvXsi_NtNtCsefoF4u9kbII_5wasmi8instance7exportsNtB5_10ExternTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 1"}
!703 = !{!697}
!704 = !{!699, !697}
!705 = !{!701}
!706 = !{!702}
!707 = !{!701, !702}
!708 = distinct !{!708, !"_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_10ImportNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!709 = distinct !{!709, !708, !"_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_10ImportNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!710 = distinct !{!710, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!711 = distinct !{!711, !710, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!712 = !{!709}
!713 = !{!711, !709}
!714 = distinct !{!714, !5}
!715 = distinct !{!715, !"_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB19_4LeafE16push_with_handleB1P_"}
!716 = distinct !{!716, !715, !"_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB19_4LeafE16push_with_handleB1P_: argument 2"}
!717 = distinct !{!717, !715, !"_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB19_4LeafE16push_with_handleB1P_: argument 1"}
!718 = distinct !{!718, !715, !"_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB19_4LeafE16push_with_handleB1P_: argument 0"}
!719 = distinct !{!719, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!720 = distinct !{!720, !719, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!721 = distinct !{!721, !"_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1X_E12insert_entry0EB23_"}
!722 = distinct !{!722, !721, !"_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1X_E12insert_entry0EB23_: argument 3"}
!723 = distinct !{!723, !721, !"_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1X_E12insert_entry0EB23_: argument 2"}
!724 = distinct !{!724, !721, !"_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1X_E12insert_entry0EB23_: argument 1"}
!725 = distinct !{!725, !721, !"_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1X_E12insert_entry0EB23_: argument 0"}
!726 = distinct !{!726, !"_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_"}
!727 = distinct !{!727, !726, !"_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_: argument 3"}
!728 = distinct !{!728, !726, !"_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_: argument 2"}
!729 = distinct !{!729, !726, !"_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_: argument 1"}
!730 = distinct !{!730, !726, !"_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB23_: argument 0"}
!731 = distinct !{!731, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtB8_5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!732 = distinct !{!732, !731, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtB8_5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!733 = distinct !{!733, !"_RNvMsJ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1m_4LeafENtB1m_4EdgeE10insert_fitB22_"}
!734 = distinct !{!734, !733, !"_RNvMsJ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1m_4LeafENtB1m_4EdgeE10insert_fitB22_: argument 3"}
!735 = distinct !{!735, !733, !"_RNvMsJ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1m_4LeafENtB1m_4EdgeE10insert_fitB22_: argument 2"}
!736 = distinct !{!736, !733, !"_RNvMsJ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1m_4LeafENtB1m_4EdgeE10insert_fitB22_: argument 1"}
!737 = distinct !{!737, !733, !"_RNvMsJ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1m_4LeafENtB1m_4EdgeE10insert_fitB22_: argument 0"}
!738 = distinct !{!738, !731, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtB8_5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 1"}
!739 = distinct !{!739, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEB1a_"}
!740 = distinct !{!740, !739, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEB1a_: argument 1"}
!741 = distinct !{!741, !739, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEB1a_: argument 0"}
!742 = distinct !{!742, !"_RINvMsV_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB23_"}
!743 = distinct !{!743, !742, !"_RINvMsV_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB23_: argument 1"}
!744 = distinct !{!744, !742, !"_RINvMsV_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB23_: argument 0"}
!745 = distinct !{!745, !"_RNvMsU_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1m_4LeafENtB1m_2KVE15split_leaf_dataB22_"}
!746 = distinct !{!746, !745, !"_RNvMsU_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1m_4LeafENtB1m_2KVE15split_leaf_dataB22_: argument 1"}
!747 = distinct !{!747, !745, !"_RNvMsU_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1m_4LeafENtB1m_2KVE15split_leaf_dataB22_: argument 0"}
end_hunk_1
