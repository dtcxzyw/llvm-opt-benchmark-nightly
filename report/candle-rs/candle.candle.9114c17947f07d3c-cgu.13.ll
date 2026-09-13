Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle.candle.9114c17947f07d3c-cgu.13?download=true
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB12_5sliceSBW_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBX_B1A_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBY_B1B_EE0E0ECscsgjCEAuSgO_6candle:bb.a
bb.r:                                             ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dn
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !4 ; 3 uses
  %i.du = lshr i64 %i.dt, 1                       ; 8 uses
  %i.dv = lshr i64 %.sroa.023.150, 1              ; 6 uses
  %i.dw = add nuw i64 %i.du, %i.dv                ; 4 uses
  %i.dx = sub i64 %.sroa.09.0, %i.dw
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.dx ; 6 uses
  %i.dz = icmp samesign ugt i64 %i.dw, %3
  %i.ea = trunc i64 %.sroa.023.150 to i1
  %i.eb = or i64 %i.dt, %.sroa.023.150
  %i.ec = trunc i64 %i.eb to i1
  %or.cond3.i = or i1 %i.dz, %i.ec
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ed = trunc i64 %i.dt to i1
  br i1 %i.ed, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ee = shl nuw nsw i64 %i.dw, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1c_5sliceSB16_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB17_B1K_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB18_B1L_EE0E0ECscsgjCEAuSgO_6candle.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ea, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ef = or i64 %i.du, 1
  %i.eg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = xor i32 %i.ei, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1b_5sliceSB15_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB16_B1J_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB17_B1K_EE0E0ECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 %i.dy, i64 noundef range(i64 0, 576460752303423488) %i.du, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #22
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.du
  %i.el = or i64 %i.dv, 1
  %i.em = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.el, i1 true)
  %i.en = trunc nuw nsw i64 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.en, 1
  %i.ep = xor i32 %i.eo, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1b_5sliceSB15_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB16_B1J_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB17_B1K_EE0E0ECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 %i.ek, i64 noundef range(i64 0, 576460752303423488) %i.dv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.eq = icmp eq i64 %i.du, 0
  %i.er = icmp eq i64 %i.dv, 0
  %or.cond.i = or i1 %i.er, %i.eq
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB13_5sliceSBX_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBY_B1B_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBZ_B1C_EE0E0ECscsgjCEAuSgO_6candle.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.es = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.du, i64 %i.dv) ; 2 uses
  %i.et = icmp samesign ult i64 %3, %i.es
  br i1 %i.et, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB13_5sliceSBX_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBY_B1B_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBZ_B1C_EE0E0ECscsgjCEAuSgO_6candle.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.du ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.du, %i.dv  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.eu, ptr %i.dy
  %i.ev = shl nuw nsw i64 %i.es, 4                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ev, i1 false), !alias.scope !252
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %i.ev ; 3 uses
  br i1 %.not.i33, label %.preheader.i35, label %.lr.ph.i.i

.preheader.i35:                                   ; preds = %.critedge.i, %.preheader.i35
  %i.ex = phi ptr [ %i.gc, %.preheader.i35 ], [ %i.ew, %.critedge.i ] ; 2 uses
  %i.ey = phi ptr [ %i.ga, %.preheader.i35 ], [ %i.eu, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i36 = phi ptr [ %i.fb, %.preheader.i35 ], [ %i.n, %.critedge.i ]
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -16 ; 3 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ex, i64 -16 ; 3 uses
  %i.fb = getelementptr inbounds i8, ptr %.sroa.0.0.i.i36, i64 -16 ; 2 uses
  %.val.i.i = load ptr, ptr %i.fa, align 8, !alias.scope !251, !noalias !253 ; 3 uses
  %i.fc = getelementptr i8, ptr %i.ex, i64 -8
  %.val12.i.i = load ptr, ptr %i.fc, align 8, !alias.scope !251, !noalias !253, !nonnull !4, !noundef !4
  %.val13.i.i = load ptr, ptr %i.ez, align 8, !alias.scope !250, !noalias !254 ; 3 uses
  %i.fd = getelementptr i8, ptr %i.ey, i64 -8
  %.val14.i.i = load ptr, ptr %i.fd, align 8, !alias.scope !250, !noalias !254, !nonnull !4, !align !10, !noundef !4
  %i.fe = load ptr, ptr %.val14.i.i, align 8, !noalias !255, !nonnull !4, !noundef !4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 146
  %i.fg = load i8, ptr %i.ff, align 2, !range !239, !noalias !255, !noundef !4
  %i.fh = zext nneg i8 %i.fg to i64
  %switch.gep106 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB12_5sliceSBW_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBX_B1A_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBY_B1B_EE0E0ECscsgjCEAuSgO_6candle.58, i64 %i.fh
  %switch.load107 = load i8, ptr %switch.gep106, align 1 ; 2 uses
  %i.fi = load ptr, ptr %.val12.i.i, align 8, !noalias !255, !nonnull !4, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 146
  %i.fk = load i8, ptr %i.fj, align 2, !range !239, !noalias !255, !noundef !4
  %i.fl = zext nneg i8 %i.fk to i64
  %switch.gep121 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB12_5sliceSBW_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBX_B1A_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBY_B1B_EE0E0ECscsgjCEAuSgO_6candle.58, i64 %i.fl
  %switch.load122 = load i8, ptr %switch.gep121, align 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i) ]
  %i.fm = getelementptr i8, ptr %.val.i.i, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.fm, align 8, !noalias !255, !nonnull !4, !noundef !4
  %i.fn = getelementptr i8, ptr %.val.i.i, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.fn, align 8, !noalias !255, !noundef !4 ; 2 uses
  %i.fo = getelementptr i8, ptr %.val13.i.i, i64 8
  %.val2.i.i.i.i.i = load ptr, ptr %i.fo, align 8, !noalias !255, !nonnull !4, !noundef !4
  %i.fp = getelementptr i8, ptr %.val13.i.i, i64 16
  %.val3.i.i.i.i.i = load i64, ptr %i.fp, align 8, !noalias !255, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i.i.i.i)
  %i.fq = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i), !alias.scope !256, !noalias !255 ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp eq i32 %i.fq, 0
  %i.ft = sub nsw i64 %.val1.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.fs, i64 %i.ft, i64 %i.fr
  %i.fu = icmp eq i8 %switch.load107, %switch.load122
  %i.fv = icmp slt i64 %spec.select.i.i.i.i.i.i.i.i, 0
  %i.fw = icmp samesign ult i8 %switch.load107, %switch.load122
  %i.fx = select i1 %i.fu, i1 %i.fv, i1 %i.fw     ; 3 uses
  %..i.i = select i1 %i.fx, ptr %i.ez, ptr %i.fa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !252, !noalias !257
  %i.fy = xor i1 %i.fx, true
  %i.fz = zext i1 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.fz ; 3 uses
  %i.gb = zext i1 %i.fx to i64
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %i.gb ; 3 uses
  %i.gd = icmp eq ptr %i.ga, %i.dy
  %i.ge = icmp eq ptr %i.gc, %2
  %or.cond.i.i = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB1b_B1O_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1c_B1P_EE0E0ECscsgjCEAuSgO_6candle.exit.i, label %.preheader.i35

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.gf = phi ptr [ %i.hi, %.lr.ph.i.i ], [ %i.dy, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.hh, %.lr.ph.i.i ], [ %i.eu, %.critedge.i ] ; 4 uses
  %i.gg = phi ptr [ %i.hf, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !250, !noalias !258 ; 3 uses
  %i.gh = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val6.i.i = load ptr, ptr %i.gh, align 8, !alias.scope !250, !noalias !258, !nonnull !4, !noundef !4
  %.val.i18.i = load ptr, ptr %i.gg, align 8, !alias.scope !251, !noalias !259 ; 3 uses
  %i.gi = getelementptr i8, ptr %i.gg, i64 8
  %.val7.i.i = load ptr, ptr %i.gi, align 8, !alias.scope !251, !noalias !259, !nonnull !4, !align !10, !noundef !4
  %i.gj = load ptr, ptr %.val7.i.i, align 8, !noalias !260, !nonnull !4, !noundef !4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 146
  %i.gl = load i8, ptr %i.gk, align 2, !range !239, !noalias !260, !noundef !4
  %i.gm = zext nneg i8 %i.gl to i64
  %switch.gep109 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB12_5sliceSBW_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBX_B1A_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBY_B1B_EE0E0ECscsgjCEAuSgO_6candle.58, i64 %i.gm
  %switch.load110 = load i8, ptr %switch.gep109, align 1 ; 2 uses
  %i.gn = load ptr, ptr %.sroa.0.0.val6.i.i, align 8, !noalias !260, !nonnull !4, !noundef !4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 146
  %i.gp = load i8, ptr %i.go, align 2, !range !239, !noalias !260, !noundef !4
  %i.gq = zext nneg i8 %i.gp to i64
  %switch.gep124 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB12_5sliceSBW_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBX_B1A_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBY_B1B_EE0E0ECscsgjCEAuSgO_6candle.58, i64 %i.gq
  %switch.load125 = load i8, ptr %switch.gep124, align 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.val.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i18.i) ]
  %i.gr = getelementptr i8, ptr %.sroa.0.0.val.i.i, i64 8
  %.val.i.i.i.i23.i = load ptr, ptr %i.gr, align 8, !noalias !260, !nonnull !4, !noundef !4
  %i.gs = getelementptr i8, ptr %.sroa.0.0.val.i.i, i64 16
  %.val1.i.i.i.i24.i = load i64, ptr %i.gs, align 8, !noalias !260, !noundef !4 ; 2 uses
  %i.gt = getelementptr i8, ptr %.val.i18.i, i64 8
  %.val2.i.i.i.i25.i = load ptr, ptr %i.gt, align 8, !noalias !260, !nonnull !4, !noundef !4
  %i.gu = getelementptr i8, ptr %.val.i18.i, i64 16
  %.val3.i.i.i.i26.i = load i64, ptr %i.gu, align 8, !noalias !260, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i27.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i.i.i24.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i.i.i26.i)
  %i.gv = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i.i23.i, ptr nonnull readonly %.val2.i.i.i.i25.i, i64 %spec.store.select.i.i.i.i.i.i.i27.i), !alias.scope !261, !noalias !260 ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp eq i32 %i.gv, 0
  %i.gy = sub nsw i64 %.val1.i.i.i.i24.i, %.val3.i.i.i.i26.i
  %spec.select.i.i.i.i.i.i.i28.i = select i1 %i.gx, i64 %i.gy, i64 %i.gw
  %i.gz = icmp eq i8 %switch.load110, %switch.load125
  %i.ha = icmp slt i64 %spec.select.i.i.i.i.i.i.i28.i, 0
  %i.hb = icmp samesign ult i8 %switch.load110, %switch.load125
  %i.hc = select i1 %i.gz, i1 %i.ha, i1 %i.hb     ; 3 uses
  %i.hd = xor i1 %i.hc, true
  %.sroa.05.0.i.i = select i1 %i.hc, ptr %.sroa.0.02.i.i, ptr %i.gg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !252, !noalias !262
  %i.he = zext i1 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %i.he ; 3 uses
  %i.hg = zext i1 %i.hc to i64
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.hj = icmp ne ptr %i.hf, %i.ew
  %i.hk = icmp ne ptr %i.hh, %i.n
  %or.cond.i29.i = select i1 %i.hj, i1 %i.hk, i1 false
  br i1 %or.cond.i29.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB1b_B1O_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1c_B1P_EE0E0ECscsgjCEAuSgO_6candle.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB1b_B1O_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1c_B1P_EE0E0ECscsgjCEAuSgO_6candle.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i35
  %.sroa.13.1.i = phi ptr [ %i.ga, %.preheader.i35 ], [ %i.hi, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.gc, %.preheader.i35 ], [ %i.ew, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i35 ], [ %i.hf, %.lr.ph.i.i ] ; 2 uses
  %i.hl = ptrtoint ptr %.sroa.7.0.i to i64
  %i.hm = ptrtoint ptr %.sroa.0.1.i to i64
  %i.hn = sub nuw i64 %i.hl, %i.hm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.hn, i1 false), !alias.scope !252, !noalias !263
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB13_5sliceSBX_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBY_B1B_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBZ_B1C_EE0E0ECscsgjCEAuSgO_6candle.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB13_5sliceSBX_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBY_B1B_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBZ_B1C_EE0E0ECscsgjCEAuSgO_6candle.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB1b_B1O_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1c_B1P_EE0E0ECscsgjCEAuSgO_6candle.exit.i
  %i.ho = shl nuw nsw i64 %i.dw, 1
  %i.hp = or disjoint i64 %i.ho, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1c_5sliceSB16_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB17_B1K_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB18_B1L_EE0E0ECscsgjCEAuSgO_6candle.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1c_5sliceSB16_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB17_B1K_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB18_B1L_EE0E0ECscsgjCEAuSgO_6candle.exit: ; preds = %bb.t, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB13_5sliceSBX_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBY_B1B_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBZ_B1C_EE0E0ECscsgjCEAuSgO_6candle.exit
  %.sroa.0.0.i = phi i64 [ %i.hp, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB13_5sliceSBX_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBY_B1B_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBZ_B1C_EE0E0ECscsgjCEAuSgO_6candle.exit ], [ %i.ee, %bb.t ] ; 2 uses
  %i.hq = icmp ugt i64 %i.dn, 1
  br i1 %i.hq, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.hr = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.hs = lshr i64 %.sroa.018.0, 1
  %i.ht = add nuw nsw i64 %i.hs, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.hu = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.hu, 0
  br i1 %.not30, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hv = or i64 %1, 1
  %i.hw = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.hv, i1 true)
  %i.hx = trunc nuw nsw i64 %i.hw to i32
  %i.hy = shl nuw nsw i32 %i.hx, 1
  %i.hz = xor i32 %i.hy, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1b_5sliceSB15_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB16_B1J_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB17_B1K_EE0E0ECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.hz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNvMNtCsf3Ta7LF998c_4core5sliceSp7reverse7revswapmECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #2 {
bb.a:
  %.not.i = icmp samesign ugt i64 %4, %1
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #21, !noalias !272
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit: ; preds = %bb.a
  %.not.i7 = icmp samesign ugt i64 %4, %3
  br i1 %.not.i7, label %bb.c, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11.preheader.split, !prof !7

_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11.preheader.split: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11._crit_edge, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11.preheader.split
  %i.a = getelementptr [4 x i8], ptr %2, i64 %4   ; 2 uses
  %min.iters.check = icmp samesign ult i64 %4, 8
  br i1 %min.iters.check, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11.preheader23, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11.preheader
  %n.vec = and i64 %4, 9223372036854775800        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = xor i64 %index, -1
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.d = getelementptr [4 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.c, align 4
  %wide.load17 = load <4 x i32>, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %i.d, i64 -12      ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 -28      ; 2 uses
  %wide.load18 = load <4 x i32>, ptr %i.f, align 4
  %wide.load19 = load <4 x i32>, ptr %i.g, align 4
  %reverse = shufflevector <4 x i32> %wide.load18, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse20 = shufflevector <4 x i32> %wide.load19, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.c, align 4
  store <4 x i32> %reverse20, ptr %i.e, align 4
  %reverse21 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse22 = shufflevector <4 x i32> %wide.load17, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse21, ptr %i.f, align 4
  store <4 x i32> %reverse22, ptr %i.g, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !267

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11._crit_edge, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11.preheader23

_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11.preheader23: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11.preheader, %middle.block
  %.sroa.0.016.ph = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11.preheader ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11

bb.c:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21, !noalias !275
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11._crit_edge: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11, %middle.block, %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11.preheader.split
  ret void

_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11.preheader23, %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11
  %.sroa.0.016 = phi i64 [ %i.n, %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11 ], [ %.sroa.0.016.ph, %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11.preheader23 ] ; 3 uses
  %i.i = xor i64 %.sroa.0.016, -1
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.016 ; 2 uses
  %i.k = getelementptr [4 x i8], ptr %i.a, i64 %i.i ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !noundef !4
  %i.m = load i32, ptr %i.k, align 4
  store i32 %i.m, ptr %i.j, align 4
  store i32 %i.l, ptr %i.k, align 4
  %i.n = add nuw nsw i64 %.sroa.0.016, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %4
  br i1 %exitcond.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11._crit_edge, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCscsgjCEAuSgO_6candle.exit11, !llvm.loop !271
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !5, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !6, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs4dfyxXSEGwW_4pyo34sync9once_lockINtB5_10PyOnceLockINtNtB9_8instance2PyNtNtNtB9_5types10typeobject6PyTypeEE6importCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %3, ptr %i.f, align 8
  store ptr %4, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %5, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.h = tail call noundef align 8 ptr @_RNvMs4_NtCsgYbDhs8a4Ay_9once_cell4syncINtB5_8OnceCellINtNtCs4dfyxXSEGwW_4pyo38instance2PyNtNtNtBU_5types10typeobject6PyTypeEE3getCscsgjCEAuSgO_6candle(ptr noundef nonnull align 8 %1), !noalias !290 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !290
  store ptr %1, ptr %i.b, align 8, !noalias !290
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.i, align 8, !noalias !290
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.j, align 8, !noalias !289
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !289
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !289
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_RINvMNtNtCs4dfyxXSEGwW_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrECscsgjCEAuSgO_6candle.exit, label %_RINvMNtNtCs4dfyxXSEGwW_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrECscsgjCEAuSgO_6candle.exit.thread

_RINvMNtNtCs4dfyxXSEGwW_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrECscsgjCEAuSgO_6candle.exit.thread: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.k, align 8, !alias.scope !291, !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !290
  br label %bb.c

_RINvMNtNtCs4dfyxXSEGwW_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrECscsgjCEAuSgO_6candle.exit: ; preds = %bb.a
  call fastcc void @_RINvNtNtCs4dfyxXSEGwW_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2_INtB2_10PyOnceLockINtNtB6_8instance2PyNtNtNtB6_5types10typeobject6PyTypeEE6import0B1D_NtNtB6_3err5PyErrECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.j), !noalias !293
  %.pre = load i64, ptr %i.c, align 8, !range !5
  %i.l = trunc nuw i64 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !290
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvMNtNtCs4dfyxXSEGwW_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrECscsgjCEAuSgO_6candle.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_RINvMNtNtCs4dfyxXSEGwW_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrECscsgjCEAuSgO_6candle.exit.thread, %_RINvMNtNtCs4dfyxXSEGwW_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrECscsgjCEAuSgO_6candle.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !align !10, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_0
