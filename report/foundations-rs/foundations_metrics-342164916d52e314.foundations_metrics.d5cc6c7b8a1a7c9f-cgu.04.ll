Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_metrics-342164916d52e314.foundations_metrics.d5cc6c7b8a1a7c9f-cgu.04?download=true
inline.NumInlined: 166
inline.NumDeleted: 58
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics:bb.a
  %i.ay = xor i64 %index, -1, !dbg !1124
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index, !dbg !1125 ; 4 uses
  %i.ba = getelementptr [8 x i8], ptr %i.ax, i64 %i.ay, !dbg !1126 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !1127
  %wide.load = load <2 x double>, ptr %i.az, align 8, !dbg !1127, !alias.scope !1028, !noalias !1029
  %wide.load94 = load <2 x double>, ptr %i.bb, align 8, !dbg !1127, !alias.scope !1028, !noalias !1029
  %i.bc = getelementptr i8, ptr %i.ba, i64 -8, !dbg !1127
  %i.bd = getelementptr i8, ptr %i.ba, i64 -24, !dbg !1127
  %wide.load95 = load <2 x i64>, ptr %i.bc, align 8, !dbg !1127, !alias.scope !1030, !noalias !1031
  %wide.load96 = load <2 x i64>, ptr %i.bd, align 8, !dbg !1127, !alias.scope !1030, !noalias !1031
  %reverse = shufflevector <2 x i64> %wide.load95, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !1127
  %reverse97 = shufflevector <2 x i64> %wide.load96, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !1127
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !1127
  store <2 x i64> %reverse, ptr %i.az, align 8, !dbg !1127, !alias.scope !1028, !noalias !1029
  store <2 x i64> %reverse97, ptr %i.be, align 8, !dbg !1127, !alias.scope !1028, !noalias !1029
  %i.bf = getelementptr i8, ptr %i.ba, i64 -8, !dbg !1127
  %i.bg = getelementptr i8, ptr %i.ba, i64 -24, !dbg !1127
  %reverse98 = shufflevector <2 x double> %wide.load, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !1127
  %reverse99 = shufflevector <2 x double> %wide.load94, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !1127
  store <2 x double> %reverse98, ptr %i.bf, align 8, !dbg !1127, !alias.scope !1030, !noalias !1031
  store <2 x double> %reverse99, ptr %i.bg, align 8, !dbg !1127, !alias.scope !1030, !noalias !1031
  %index.next = add nuw i64 %index, 4, !dbg !1123 ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec, !dbg !1121
  br i1 %i.bh, label %middle.block, label %vector.body, !dbg !1121, !llvm.loop !958

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec, !dbg !1121
  br i1 %cmp.n, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.preheader, !dbg !1121

_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i, !dbg !1121

_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bn, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.preheader ] ; 3 uses
  %i.bi = xor i64 %.sroa.0.016.i.i, -1, !dbg !1124
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i, !dbg !1125 ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.ax, i64 %i.bi, !dbg !1126 ; 2 uses
  %i.bl = load double, ptr %i.bj, align 8, !dbg !1127, !alias.scope !1028, !noalias !1029, !noundef !39
  %i.bm = load i64, ptr %i.bk, align 8, !dbg !1127, !alias.scope !1030, !noalias !1031
  store i64 %i.bm, ptr %i.bj, align 8, !dbg !1127, !alias.scope !1028, !noalias !1029
  store double %i.bl, ptr %i.bk, align 8, !dbg !1127, !alias.scope !1030, !noalias !1031
  %i.bn = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !1123 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.aw, !dbg !1121
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i, !dbg !1121, !llvm.loop !959

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit
  %.sroa.0.0.i32 = phi i64 [ %i.au, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit ], [ %i.as, %bb.p ], [ %i.aq, %bb.o ], !dbg !1128 ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1, !dbg !1129
  %i.bp = lshr i64 %.sroa.0.0.i32, 1, !dbg !1130
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !1131 ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo, !dbg !1131
  %i.br = add nuw nsw i64 %i.bp, %factor, !dbg !1132
  %i.bs = mul i64 %i.bq, %.sroa.0.0, !dbg !1133
  %i.bt = mul i64 %i.br, %.sroa.0.0, !dbg !1134
  %i.bu = xor i64 %i.bt, %i.bs, !dbg !1135
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false), !dbg !1136
  %i.bw = trunc nuw nsw i64 %i.bv to i8, !dbg !1135
  br label %bb.g, !dbg !1137

.lr.ph55:                                         ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit
  %.sroa.02.154 = phi i64 [ %i.bx, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.153 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bx = add i64 %.sroa.02.154, -1, !dbg !1138   ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx, !dbg !1139
  %i.bz = load i8, ptr %i.by, align 1, !dbg !1140, !noundef !39
  %.not28 = icmp ult i8 %i.bz, %.sroa.021.0, !dbg !1140
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !1140

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, %.lr.ph55, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.153, %.lr.ph55 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], !dbg !1062 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.154, %.lr.ph55 ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], !dbg !1064 ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !1141
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8, !dbg !1142
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !1143
  store i8 %.sroa.021.0, ptr %i.cb, align 1, !dbg !1144
  br i1 %i.k, label %bb.y, label %bb.z, !dbg !1145

bb.r:                                             ; preds = %.lr.ph55
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx, !dbg !1146
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !1147, !noundef !39 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1, !dbg !1148           ; 5 uses
  %i.cf = lshr i64 %.sroa.023.153, 1, !dbg !1149  ; 3 uses
  %i.cg = add nuw i64 %i.ce, %i.cf, !dbg !1150    ; 5 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg, !dbg !1151
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ch, !dbg !1152 ; 3 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3, !dbg !1153
  %i.ck = trunc i64 %.sroa.023.153 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.153, !dbg !1154
  %i.cm = trunc i64 %i.cl to i1, !dbg !1154
  %or.cond3.i = or i1 %i.cj, %i.cm, !dbg !1154
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !1154

bb.s:                                             ; preds = %bb.r
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.u, label %bb.v, !dbg !1155

bb.t:                                             ; preds = %bb.r
  %i.co = shl nuw nsw i64 %i.cg, 1, !dbg !1156
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !1157

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ck, label %bb.x, label %bb.w, !dbg !1158

bb.v:                                             ; preds = %bb.s
  %i.cp = or i64 %i.ce, 1, !dbg !1159
  %i.cq = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true), !dbg !1160
  %i.cr = trunc nuw nsw i64 %i.cq to i32, !dbg !1160
  %i.cs = shl nuw nsw i32 %i.cr, 1, !dbg !1161
  %i.ct = xor i32 %i.cs, 126, !dbg !1161
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 1152921504606846976) %i.ce, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !1162, !inline_history !993
  br label %bb.u, !dbg !1163

bb.w:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ce, !dbg !1164
  %i.cv = or i64 %i.cf, 1, !dbg !1165
  %i.cw = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true), !dbg !1166
  %i.cx = trunc nuw nsw i64 %i.cw to i32, !dbg !1166
  %i.cy = shl nuw nsw i32 %i.cx, 1, !dbg !1167
  %i.cz = xor i32 %i.cy, 126, !dbg !1167
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef range(i64 0, 1152921504606846976) %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !1168, !inline_history !993
  br label %bb.x, !dbg !1169

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 1152921504606846976) %i.cg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !1170
  %i.da = shl nuw nsw i64 %i.cg, 1, !dbg !1171
  %i.db = or disjoint i64 %i.da, 1, !dbg !1171
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !1157

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.db, %bb.x ], [ %i.co, %bb.t ], !dbg !1172 ; 2 uses
  %i.dc = icmp ugt i64 %i.bx, 1, !dbg !1067
  br i1 %i.dc, label %.lr.ph55, label %._crit_edge, !dbg !1067

bb.y:                                             ; preds = %._crit_edge
  %i.dd = add i64 %.sroa.02.1.lcssa, 1, !dbg !1173
  %i.de = lshr i64 %.sroa.018.0, 1, !dbg !1174
  %i.df = add nuw i64 %i.de, %.sroa.09.0, !dbg !1175
  br label %bb.f, !dbg !1061

bb.z:                                             ; preds = %._crit_edge
  %i.dg = and i64 %.sroa.023.1.lcssa, 1, !dbg !1176
  %.not30 = icmp eq i64 %i.dg, 0, !dbg !1176
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !1177

bb.aa:                                            ; preds = %bb.z
  %i.dh = or i64 %1, 1, !dbg !1178
  %i.di = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true), !dbg !1179
  %i.dj = trunc nuw nsw i64 %i.di to i32, !dbg !1179
  %i.dk = shl nuw nsw i32 %i.dj, 1, !dbg !1180
  %i.dl = xor i32 %i.dk, 126, !dbg !1180
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !1181, !inline_history !993
  br label %bb.ab, !dbg !1182

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1184
  br label %bb.ac, !dbg !1185

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !1185
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2x_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr nofree noundef readonly align 8 captures(address) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #2 !dbg !1186 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 17, !dbg !1500
  br i1 %i.a, label %.outer._crit_edge, label %.lr.ph, !dbg !1500

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph120 = phi ptr [ %i.gp, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph119 = phi i64 [ %i.ga, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph118 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph117 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.ph120 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph117, null
  %i.c = icmp eq i32 %.sroa.025.0.ph118, 0, !dbg !1501
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph267, !dbg !1501

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit
  %i.d = icmp eq i32 %i.f, 0, !dbg !1501
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph267, !dbg !1501

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit, %bb.a
  %.sroa.0.0.ph.lcssa111 = phi ptr [ %.sroa.0.0.ph120, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit ], [ %0, %bb.a ], [ %i.gp, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit ], [ %1, %bb.a ], [ %i.ga, %.outer ] ; 2 uses
  %i.e = icmp samesign ugt i64 %.sroa.16.0.lcssa, 1, !dbg !1502
  br i1 %i.e, label %bb.c, label %_RINvXNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortTdINtNtNtBb_4sync6atomic6AtomicyEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB33_13TimeHistogram3newINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtB9_4iter4IterdEEEs_0E0EB37_.exit, !dbg !1502

bb.c:                                             ; preds = %.outer._crit_edge
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2O_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2S_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa111, i64 noundef range(i64 0, 17) %.sroa.16.0.lcssa, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !1503
  br label %_RINvXNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortTdINtNtNtBb_4sync6atomic6AtomicyEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB33_13TimeHistogram3newINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtB9_4iter4IterdEEEs_0E0EB37_.exit, !dbg !1503

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0113.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2n_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2r_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph120, i64 noundef %.sroa.16.0113.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !1504
  br label %_RINvXNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortTdINtNtNtBb_4sync6atomic6AtomicyEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB33_13TimeHistogram3newINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtB9_4iter4IterdEEEs_0E0EB37_.exit, !dbg !1505

.lr.ph267:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0112266 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph118, %.lr.ph ]
  %.sroa.16.0113265 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.0112266, -1, !dbg !1506 ; 4 uses
  %i.g = lshr i64 %.sroa.16.0113265, 3, !dbg !1507 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 6, !dbg !1508
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx.i, !dbg !1508 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 112, !dbg !1509
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx2.i, !dbg !1509 ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0113265, 64, !dbg !1510
  br i1 %i.j, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2q_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2u_.exit.i, label %bb.d, !dbg !1510

bb.d:                                             ; preds = %.lr.ph267
  %i.k = tail call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2w_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2A_(ptr noundef nonnull align 8 %.sroa.0.0.ph120, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !1511
  br label %bb.e, !dbg !1512

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2q_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2u_.exit.i: ; preds = %.lr.ph267
  %.val6.i = load i64, ptr %.sroa.0.0.ph120, align 8, !dbg !1513, !noalias !1475, !noundef !39 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !dbg !1513, !noalias !1475, !noundef !39 ; 2 uses
  %i.l = ashr i64 %.val6.i, 63, !dbg !1514
  %i.m = lshr i64 %i.l, 1, !dbg !1515
  %i.n = xor i64 %i.m, %.val6.i, !dbg !1516       ; 2 uses
  %i.o = ashr i64 %.val7.i, 63, !dbg !1517
  %i.p = lshr i64 %i.o, 1, !dbg !1518
  %i.q = xor i64 %i.p, %.val7.i, !dbg !1519       ; 2 uses
  %i.r = icmp slt i64 %i.n, %i.q, !dbg !1520      ; 2 uses
  %.val5.i = load i64, ptr %i.i, align 8, !dbg !1521, !noalias !1475, !noundef !39 ; 2 uses
  %i.s = ashr i64 %.val5.i, 63, !dbg !1522
  %i.t = lshr i64 %i.s, 1, !dbg !1523
  %i.u = xor i64 %i.t, %.val5.i, !dbg !1524       ; 2 uses
  %i.v = icmp slt i64 %i.n, %i.u, !dbg !1525
  %i.w = xor i1 %i.r, %i.v, !dbg !1526
  %i.x = icmp slt i64 %i.q, %i.u, !dbg !1526
  %i.y = xor i1 %i.r, %i.x, !dbg !1526
  %..i.i = select i1 %i.y, ptr %i.i, ptr %i.h, !dbg !1526
  %.sroa.0.0.i.i = select i1 %i.w, ptr %.sroa.0.0.ph120, ptr %..i.i, !dbg !1526
  br label %bb.e, !dbg !1512

_RINvXNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortTdINtNtNtBb_4sync6atomic6AtomicyEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB33_13TimeHistogram3newINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtB9_4iter4IterdEEEs_0E0EB37_.exit: ; preds = %bb.v, %bb.c, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void, !dbg !1527

bb.e:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2q_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2u_.exit.i, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2q_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2u_.exit.i ], [ %i.k, %bb.d ]
  %i.z = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !1528
  %i.aa = sub nuw i64 %i.z, %i.b, !dbg !1528      ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.aa, 4, !dbg !1528 ; 3 uses
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0113265, !dbg !1529
  tail call void @llvm.assume(i1 %i.ab), !dbg !1530
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %i.aa, !dbg !1531 ; 7 uses
  br i1 %.not, label %bb.g, label %bb.f, !dbg !1532

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i64, ptr %.sroa.028.0.ph117, align 8, !dbg !1533, !noundef !39 ; 2 uses
  %.val = load i64, ptr %i.ac, align 8, !dbg !1533, !noundef !39 ; 2 uses
  %i.ad = ashr i64 %.sroa.028.0.val, 63, !dbg !1534
  %i.ae = lshr i64 %i.ad, 1, !dbg !1535
  %i.af = xor i64 %i.ae, %.sroa.028.0.val, !dbg !1536
  %i.ag = ashr i64 %.val, 63, !dbg !1537
  %i.ah = lshr i64 %i.ag, 1, !dbg !1538
  %i.ai = xor i64 %i.ah, %.val, !dbg !1539
  %i.aj = icmp slt i64 %i.af, %i.ai, !dbg !1540
  br i1 %i.aj, label %bb.g, label %.thread, !dbg !1541

bb.g:                                             ; preds = %bb.e, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476), !dbg !1542
  %.not81 = icmp samesign ult i64 %3, %.sroa.16.0113265, !dbg !1543
  br i1 %.not81, label %bb.i, label %bb.h, !dbg !1543, !prof !128

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0113265, !dbg !1544 ; 4 uses
  br label %bb.j, !dbg !1545

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap(), !dbg !1546
  unreachable, !dbg !1546

bb.j:                                             ; preds = %bb.l, %bb.h
  %.sroa.43.0.i = phi ptr [ %i.ak, %bb.h ], [ %i.cs, %bb.l ], !dbg !1547 ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.27.2.lcssa.i, %bb.l ], !dbg !1547 ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph120, %bb.h ], [ %i.cu, %bb.l ], !dbg !1547 ; 3 uses
  %.sroa.06.0.i = phi ptr [ null, %bb.h ], [ %i.ct, %bb.l ], !dbg !1548
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.0113265, %bb.l ] ; 3 uses
  %i.al = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3), !dbg !1549
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph120, i64 %i.al, !dbg !1550 ; 2 uses
  %i.an = icmp ult ptr %.sroa.9.0.i, %i.am, !dbg !1551
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !dbg !1551

.lr.ph.i:                                         ; preds = %bb.j
  %.val22.i = load i64, ptr %i.ac, align 8, !alias.scope !1477, !noalias !1476, !noundef !39 ; 2 uses
  %i.ao = ashr i64 %.val22.i, 63
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = xor i64 %i.ap, %.val22.i                ; 4 uses
  br label %bb.k, !dbg !1551

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.ca, %bb.k ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.bz, %bb.k ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.bw, %bb.k ] ; 4 uses
  %.val21.i = load i64, ptr %.sroa.9.131.i, align 8, !dbg !1552, !alias.scope !1477, !noalias !1476, !noundef !39 ; 2 uses
  %i.ar = ashr i64 %.val21.i, 63, !dbg !1553
  %i.as = lshr i64 %i.ar, 1, !dbg !1554
  %i.at = xor i64 %i.as, %.val21.i, !dbg !1555
  %i.au = icmp slt i64 %i.at, %i.aq, !dbg !1556   ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16, !dbg !1557
  %.sroa.01.0.i.i = select i1 %i.au, ptr %2, ptr %i.av, !dbg !1558
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i, !dbg !1559
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !dbg !1560, !alias.scope !1478, !noalias !1479
  %i.ax = zext i1 %i.au to i64, !dbg !1561
  %i.ay = add i64 %.sroa.27.130.i, %i.ax, !dbg !1562 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16, !dbg !1563 ; 2 uses
  %.val19.i = load i64, ptr %i.az, align 8, !dbg !1564, !alias.scope !1477, !noalias !1476, !noundef !39 ; 2 uses
  %i.ba = ashr i64 %.val19.i, 63, !dbg !1565
  %i.bb = lshr i64 %i.ba, 1, !dbg !1566
  %i.bc = xor i64 %i.bb, %.val19.i, !dbg !1567
  %i.bd = icmp slt i64 %i.bc, %i.aq, !dbg !1568   ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32, !dbg !1569
  %.sroa.01.0.i23.i = select i1 %i.bd, ptr %2, ptr %i.be, !dbg !1570
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.ay, !dbg !1571
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !dbg !1572, !alias.scope !1478, !noalias !1480
  %i.bg = zext i1 %i.bd to i64, !dbg !1573
  %i.bh = add i64 %i.ay, %i.bg, !dbg !1574        ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32, !dbg !1575 ; 2 uses
  %.val17.i = load i64, ptr %i.bi, align 8, !dbg !1576, !alias.scope !1477, !noalias !1476, !noundef !39 ; 2 uses
  %i.bj = ashr i64 %.val17.i, 63, !dbg !1577
  %i.bk = lshr i64 %i.bj, 1, !dbg !1578
  %i.bl = xor i64 %i.bk, %.val17.i, !dbg !1579
  %i.bm = icmp slt i64 %i.bl, %i.aq, !dbg !1580   ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48, !dbg !1581
  %.sroa.01.0.i24.i = select i1 %i.bm, ptr %2, ptr %i.bn, !dbg !1582
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.bh, !dbg !1583
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !dbg !1584, !alias.scope !1478, !noalias !1481
  %i.bp = zext i1 %i.bm to i64, !dbg !1585
  %i.bq = add i64 %i.bh, %i.bp, !dbg !1586        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48, !dbg !1587 ; 2 uses
  %.val15.i = load i64, ptr %i.br, align 8, !dbg !1588, !alias.scope !1477, !noalias !1476, !noundef !39 ; 2 uses
  %i.bs = ashr i64 %.val15.i, 63, !dbg !1589
  %i.bt = lshr i64 %i.bs, 1, !dbg !1590
  %i.bu = xor i64 %i.bt, %.val15.i, !dbg !1591
  %i.bv = icmp slt i64 %i.bu, %i.aq, !dbg !1592   ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64, !dbg !1593 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.bv, ptr %2, ptr %i.bw, !dbg !1594
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.bq, !dbg !1595
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !dbg !1596, !alias.scope !1478, !noalias !1482
  %i.by = zext i1 %i.bv to i64, !dbg !1597
  %i.bz = add i64 %i.bq, %i.by, !dbg !1598        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64, !dbg !1599 ; 3 uses
  %i.cb = icmp ult ptr %i.ca, %i.am, !dbg !1551
  br i1 %i.cb, label %bb.k, label %._crit_edge.i, !dbg !1551

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.j ], [ %i.bw, %bb.k ], !dbg !1547 ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.j ], [ %i.bz, %bb.k ], !dbg !1547 ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.j ], [ %i.ca, %bb.k ], !dbg !1547 ; 3 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.0.0.i37, !dbg !1600 ; 2 uses
  %i.cd = icmp ult ptr %.sroa.9.1.lcssa.i, %i.cc, !dbg !1601
  br i1 %i.cd, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !1601

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.cm, %.lr.ph38.i ], !dbg !1547
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.cp, %.lr.ph38.i ], !dbg !1547 ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.cq, %.lr.ph38.i ], !dbg !1547 ; 2 uses
  %i.ce = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0113265, !dbg !1602
  br i1 %i.ce, label %bb.m, label %bb.l, !dbg !1602

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.cq, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.cp, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.cm, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i64, ptr %.sroa.9.236.i, align 8, !dbg !1603, !alias.scope !1477, !noalias !1476, !noundef !39 ; 2 uses
  %.val14.i = load i64, ptr %i.ac, align 8, !dbg !1603, !alias.scope !1477, !noalias !1476, !noundef !39 ; 2 uses
  %i.cf = ashr i64 %.val.i, 63, !dbg !1604
  %i.cg = lshr i64 %i.cf, 1, !dbg !1605
  %i.ch = xor i64 %i.cg, %.val.i, !dbg !1606
  %i.ci = ashr i64 %.val14.i, 63, !dbg !1607
  %i.cj = lshr i64 %i.ci, 1, !dbg !1608
  %i.ck = xor i64 %i.cj, %.val14.i, !dbg !1609
  %i.cl = icmp slt i64 %i.ch, %i.ck, !dbg !1610   ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16, !dbg !1611 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.cl, ptr %2, ptr %i.cm, !dbg !1612
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i, !dbg !1613
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !dbg !1614, !alias.scope !1478, !noalias !1483
  %i.co = zext i1 %i.cl to i64, !dbg !1615
  %i.cp = add i64 %.sroa.27.235.i, %i.co, !dbg !1616 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16, !dbg !1617 ; 3 uses
  %i.cr = icmp ult ptr %i.cq, %i.cc, !dbg !1601
  br i1 %i.cr, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !1601

bb.l:                                             ; preds = %._crit_edge39.i
  %i.cs = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16, !dbg !1618 ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %.sroa.27.2.lcssa.i, !dbg !1619 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !dbg !1620, !alias.scope !1478, !noalias !1484
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16, !dbg !1621
  br label %bb.j, !dbg !1545

bb.m:                                             ; preds = %._crit_edge39.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !dbg !1622, !alias.scope !1478
  %i.cv = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 4, !dbg !1623
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph120, ptr nonnull align 8 %2, i64 %i.cv, i1 false), !dbg !1623, !alias.scope !1478
  %i.cw = sub i64 %.sroa.16.0113265, %.sroa.27.2.lcssa.i, !dbg !1624 ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0113265, %.sroa.27.2.lcssa.i, !dbg !1625
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !1626

.lr.ph45.i:                                       ; preds = %bb.m
  %i.cx = getelementptr [16 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1, !dbg !1626
  %xtraiter = and i64 %i.cw, 1, !dbg !1626
  %i.cy = icmp eq i64 %.sroa.16.0113265, %.neg, !dbg !1626
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph45.i.new, !dbg !1626

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.cw, -2, !dbg !1626
  br label %bb.n, !dbg !1626

bb.n:                                             ; preds = %bb.n, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.dc, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.n ]
  %i.cz = xor i64 %.sroa.07.043.i, -1, !dbg !1627
  %i.da = getelementptr [16 x i8], ptr %i.ak, i64 %i.cz, !dbg !1628
  %i.db = getelementptr [16 x i8], ptr %i.cx, i64 %.sroa.07.043.i, !dbg !1629
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false), !dbg !1630, !alias.scope !1478
  %i.dc = add nuw i64 %.sroa.07.043.i, 2, !dbg !1631 ; 2 uses
  %i.dd = xor i64 %.sroa.07.043.i, -2, !dbg !1627
  %i.de = getelementptr [16 x i8], ptr %i.ak, i64 %i.dd, !dbg !1628
  %i.df = getelementptr [16 x i8], ptr %i.cx, i64 %.sroa.07.043.i, !dbg !1629
  %i.dg = getelementptr i8, ptr %i.df, i64 16, !dbg !1629
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !dbg !1630, !alias.scope !1478
  %niter.next.1 = add i64 %niter, 2, !dbg !1626   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1626
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !dbg !1626

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1626
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader, !dbg !1626

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.dc, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod331 = trunc i64 %i.cw to i1, !dbg !1626
  tail call void @llvm.assume(i1 %lcmp.mod331), !dbg !1626
  %i.dh = xor i64 %.sroa.07.043.i.epil.init, -1, !dbg !1627
  %i.di = getelementptr [16 x i8], ptr %i.ak, i64 %i.dh, !dbg !1628
  %i.dj = getelementptr [16 x i8], ptr %i.cx, i64 %.sroa.07.043.i.epil.init, !dbg !1629
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false), !dbg !1630, !alias.scope !1478
  br label %.loopexit, !dbg !1632

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.m
  %i.dk = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !1632
  br i1 %i.dk, label %.thread, label %bb.o, !dbg !1633

bb.o:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0113265, !dbg !1634
  br i1 %.not.i38, label %bb.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit, !dbg !1634, !prof !138

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !1635, !noalias !1486
  unreachable, !dbg !1635

_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i, !dbg !1636
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph120) ]
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2x_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %i.dl, i64 noundef %i.cw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #12, !dbg !1637
  %i.dm = icmp ult i64 %.sroa.27.2.lcssa.i, 17, !dbg !1500
  br i1 %i.dm, label %.outer._crit_edge, label %bb.b, !dbg !1500

.thread:                                          ; preds = %bb.f, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487), !dbg !1638
  %.not82 = icmp samesign ult i64 %3, %.sroa.16.0113265, !dbg !1639
  br i1 %.not82, label %bb.r, label %bb.q, !dbg !1639, !prof !128

bb.q:                                             ; preds = %.thread
  %i.dn = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0113265, !dbg !1640 ; 4 uses
  br label %bb.s, !dbg !1641

bb.r:                                             ; preds = %.thread
  tail call void @llvm.trap(), !dbg !1642
  unreachable, !dbg !1642

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i41 = phi ptr [ %i.dn, %bb.q ], [ %i.fv, %bb.u ], !dbg !1643 ; 2 uses
  %.sroa.27.0.i42 = phi i64 [ 0, %bb.q ], [ %i.fx, %bb.u ], !dbg !1643 ; 2 uses
  %.sroa.9.0.i43 = phi ptr [ %.sroa.0.0.ph120, %bb.q ], [ %i.fy, %bb.u ], !dbg !1643 ; 3 uses
  %.sroa.06.0.i44 = phi ptr [ null, %bb.q ], [ %i.fw, %bb.u ], !dbg !1644
  %.sroa.0.0.i45 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0113265, %bb.u ] ; 3 uses
  %i.do = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i45, i64 3), !dbg !1645
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph120, i64 %i.do, !dbg !1646 ; 2 uses
  %i.dq = icmp ult ptr %.sroa.9.0.i43, %i.dp, !dbg !1647
  br i1 %i.dq, label %.lr.ph.i65, label %._crit_edge.i46, !dbg !1647

.lr.ph.i65:                                       ; preds = %bb.s
  %.val22.i66 = load i64, ptr %i.ac, align 8, !alias.scope !1488, !noalias !1487, !noundef !39 ; 2 uses
  %i.dr = ashr i64 %.val22.i66, 63
  %i.ds = lshr i64 %i.dr, 1
  %i.dt = xor i64 %i.ds, %.val22.i66              ; 4 uses
  br label %bb.t, !dbg !1647

bb.t:                                             ; preds = %bb.t, %.lr.ph.i65
  %.sroa.9.131.i67 = phi ptr [ %.sroa.9.0.i43, %.lr.ph.i65 ], [ %i.fd, %bb.t ] ; 6 uses
  %.sroa.27.130.i68 = phi i64 [ %.sroa.27.0.i42, %.lr.ph.i65 ], [ %i.fc, %bb.t ] ; 2 uses
  %.sroa.43.129.i69 = phi ptr [ %.sroa.43.0.i41, %.lr.ph.i65 ], [ %i.ez, %bb.t ] ; 4 uses
  %.val21.i70 = load i64, ptr %.sroa.9.131.i67, align 8, !dbg !1648, !alias.scope !1488, !noalias !1487, !noundef !39 ; 2 uses
  %i.du = ashr i64 %.val21.i70, 63, !dbg !1649
  %i.dv = lshr i64 %i.du, 1, !dbg !1650
  %i.dw = xor i64 %i.dv, %.val21.i70, !dbg !1651
  %i.dx = icmp sge i64 %i.dt, %i.dw, !dbg !1652   ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -16, !dbg !1653
  %.sroa.01.0.i.i71 = select i1 %i.dx, ptr %2, ptr %i.dy, !dbg !1654
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i71, i64 %.sroa.27.130.i68, !dbg !1655
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i67, i64 16, i1 false), !dbg !1656, !alias.scope !1489, !noalias !1490
  %i.ea = zext i1 %i.dx to i64, !dbg !1657
  %i.eb = add i64 %.sroa.27.130.i68, %i.ea, !dbg !1658 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 16, !dbg !1659 ; 2 uses
  %.val19.i72 = load i64, ptr %i.ec, align 8, !dbg !1660, !alias.scope !1488, !noalias !1487, !noundef !39 ; 2 uses
  %i.ed = ashr i64 %.val19.i72, 63, !dbg !1661
  %i.ee = lshr i64 %i.ed, 1, !dbg !1662
  %i.ef = xor i64 %i.ee, %.val19.i72, !dbg !1663
  %i.eg = icmp sge i64 %i.dt, %i.ef, !dbg !1664   ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -32, !dbg !1665
  %.sroa.01.0.i23.i73 = select i1 %i.eg, ptr %2, ptr %i.eh, !dbg !1666
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i73, i64 %i.eb, !dbg !1667
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i64 16, i1 false), !dbg !1668, !alias.scope !1489, !noalias !1491
  %i.ej = zext i1 %i.eg to i64, !dbg !1669
  %i.ek = add i64 %i.eb, %i.ej, !dbg !1670        ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 32, !dbg !1671 ; 2 uses
  %.val17.i74 = load i64, ptr %i.el, align 8, !dbg !1672, !alias.scope !1488, !noalias !1487, !noundef !39 ; 2 uses
  %i.em = ashr i64 %.val17.i74, 63, !dbg !1673
  %i.en = lshr i64 %i.em, 1, !dbg !1674
  %i.eo = xor i64 %i.en, %.val17.i74, !dbg !1675
  %i.ep = icmp sge i64 %i.dt, %i.eo, !dbg !1676   ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -48, !dbg !1677
  %.sroa.01.0.i24.i75 = select i1 %i.ep, ptr %2, ptr %i.eq, !dbg !1678
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i75, i64 %i.ek, !dbg !1679
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !dbg !1680, !alias.scope !1489, !noalias !1492
  %i.es = zext i1 %i.ep to i64, !dbg !1681
  %i.et = add i64 %i.ek, %i.es, !dbg !1682        ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 48, !dbg !1683 ; 2 uses
  %.val15.i76 = load i64, ptr %i.eu, align 8, !dbg !1684, !alias.scope !1488, !noalias !1487, !noundef !39 ; 2 uses
  %i.ev = ashr i64 %.val15.i76, 63, !dbg !1685
  %i.ew = lshr i64 %i.ev, 1, !dbg !1686
  %i.ex = xor i64 %i.ew, %.val15.i76, !dbg !1687
  %i.ey = icmp sge i64 %i.dt, %i.ex, !dbg !1688   ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -64, !dbg !1689 ; 3 uses
  %.sroa.01.0.i25.i77 = select i1 %i.ey, ptr %2, ptr %i.ez, !dbg !1690
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i77, i64 %i.et, !dbg !1691
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i64 16, i1 false), !dbg !1692, !alias.scope !1489, !noalias !1493
  %i.fb = zext i1 %i.ey to i64, !dbg !1693
  %i.fc = add i64 %i.et, %i.fb, !dbg !1694        ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 64, !dbg !1695 ; 3 uses
  %i.fe = icmp ult ptr %i.fd, %i.dp, !dbg !1647
  br i1 %i.fe, label %bb.t, label %._crit_edge.i46, !dbg !1647

._crit_edge.i46:                                  ; preds = %bb.t, %bb.s
  %.sroa.43.1.lcssa.i47 = phi ptr [ %.sroa.43.0.i41, %bb.s ], [ %i.ez, %bb.t ], !dbg !1643 ; 2 uses
  %.sroa.27.1.lcssa.i48 = phi i64 [ %.sroa.27.0.i42, %bb.s ], [ %i.fc, %bb.t ], !dbg !1643 ; 2 uses
  %.sroa.9.1.lcssa.i49 = phi ptr [ %.sroa.9.0.i43, %bb.s ], [ %i.fd, %bb.t ], !dbg !1643 ; 3 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.0.0.i45, !dbg !1696 ; 2 uses
  %i.fg = icmp ult ptr %.sroa.9.1.lcssa.i49, %i.ff, !dbg !1697
  br i1 %i.fg, label %.lr.ph38.i58, label %._crit_edge39.i50, !dbg !1697

._crit_edge39.i50:                                ; preds = %.lr.ph38.i58, %._crit_edge.i46
  %.sroa.43.2.lcssa.i51 = phi ptr [ %.sroa.43.1.lcssa.i47, %._crit_edge.i46 ], [ %i.fp, %.lr.ph38.i58 ], !dbg !1643
  %.sroa.27.2.lcssa.i52 = phi i64 [ %.sroa.27.1.lcssa.i48, %._crit_edge.i46 ], [ %i.fs, %.lr.ph38.i58 ], !dbg !1643 ; 10 uses
  %.sroa.9.2.lcssa.i53 = phi ptr [ %.sroa.9.1.lcssa.i49, %._crit_edge.i46 ], [ %i.ft, %.lr.ph38.i58 ], !dbg !1643 ; 2 uses
  %i.fh = icmp eq i64 %.sroa.0.0.i45, %.sroa.16.0113265, !dbg !1698
  br i1 %i.fh, label %bb.v, label %bb.u, !dbg !1698

.lr.ph38.i58:                                     ; preds = %._crit_edge.i46, %.lr.ph38.i58
  %.sroa.9.236.i59 = phi ptr [ %i.ft, %.lr.ph38.i58 ], [ %.sroa.9.1.lcssa.i49, %._crit_edge.i46 ] ; 3 uses
  %.sroa.27.235.i60 = phi i64 [ %i.fs, %.lr.ph38.i58 ], [ %.sroa.27.1.lcssa.i48, %._crit_edge.i46 ] ; 2 uses
  %.sroa.43.234.i61 = phi ptr [ %i.fp, %.lr.ph38.i58 ], [ %.sroa.43.1.lcssa.i47, %._crit_edge.i46 ]
  %.val.i62 = load i64, ptr %.sroa.9.236.i59, align 8, !dbg !1699, !alias.scope !1488, !noalias !1487, !noundef !39 ; 2 uses
  %.val14.i63 = load i64, ptr %i.ac, align 8, !dbg !1699, !alias.scope !1488, !noalias !1487, !noundef !39 ; 2 uses
  %i.fi = ashr i64 %.val14.i63, 63, !dbg !1700
  %i.fj = lshr i64 %i.fi, 1, !dbg !1701
  %i.fk = xor i64 %i.fj, %.val14.i63, !dbg !1702
  %i.fl = ashr i64 %.val.i62, 63, !dbg !1703
  %i.fm = lshr i64 %i.fl, 1, !dbg !1704
  %i.fn = xor i64 %i.fm, %.val.i62, !dbg !1705
  %i.fo = icmp sge i64 %i.fk, %i.fn, !dbg !1706   ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %.sroa.43.234.i61, i64 -16, !dbg !1707 ; 3 uses
  %.sroa.01.0.i26.i64 = select i1 %i.fo, ptr %2, ptr %i.fp, !dbg !1708
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i64, i64 %.sroa.27.235.i60, !dbg !1709
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i59, i64 16, i1 false), !dbg !1710, !alias.scope !1489, !noalias !1494
  %i.fr = zext i1 %i.fo to i64, !dbg !1711
  %i.fs = add i64 %.sroa.27.235.i60, %i.fr, !dbg !1712 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i59, i64 16, !dbg !1713 ; 3 uses
  %i.fu = icmp ult ptr %i.ft, %i.ff, !dbg !1697
  br i1 %i.fu, label %.lr.ph38.i58, label %._crit_edge39.i50, !dbg !1697

bb.u:                                             ; preds = %._crit_edge39.i50
  %i.fv = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i51, i64 -16, !dbg !1714
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i52, !dbg !1715 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i53, i64 16, i1 false), !dbg !1716, !alias.scope !1489, !noalias !1495
  %i.fx = add i64 %.sroa.27.2.lcssa.i52, 1, !dbg !1717
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i53, i64 16, !dbg !1718
  br label %bb.s, !dbg !1641

bb.v:                                             ; preds = %._crit_edge39.i50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0.i44, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !dbg !1719, !alias.scope !1489
  %i.fz = shl nuw nsw i64 %.sroa.27.2.lcssa.i52, 4, !dbg !1720
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph120, ptr nonnull align 8 %2, i64 %i.fz, i1 false), !dbg !1720, !alias.scope !1489
  %i.ga = sub i64 %.sroa.16.0113265, %.sroa.27.2.lcssa.i52, !dbg !1721 ; 6 uses
  %.not47.i54 = icmp eq i64 %.sroa.16.0113265, %.sroa.27.2.lcssa.i52, !dbg !1722
  br i1 %.not47.i54, label %_RINvXNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortTdINtNtNtBb_4sync6atomic6AtomicyEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB33_13TimeHistogram3newINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtB9_4iter4IterdEEEs_0E0EB37_.exit, label %.lr.ph45.i55, !dbg !1723

.lr.ph45.i55:                                     ; preds = %bb.v
  %i.gb = getelementptr [16 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i52 ; 3 uses
  %.neg344 = add i64 %.sroa.27.2.lcssa.i52, 1, !dbg !1723
  %xtraiter339 = and i64 %i.ga, 1, !dbg !1723
  %i.gc = icmp eq i64 %.sroa.16.0113265, %.neg344, !dbg !1723
  br i1 %i.gc, label %.epil.preheader332, label %.lr.ph45.i55.new, !dbg !1723

.lr.ph45.i55.new:                                 ; preds = %.lr.ph45.i55
  %unroll_iter342 = and i64 %i.ga, -2, !dbg !1723
  br label %bb.w, !dbg !1723

bb.w:                                             ; preds = %bb.w, %.lr.ph45.i55.new
  %.sroa.07.043.i56 = phi i64 [ 0, %.lr.ph45.i55.new ], [ %i.gg, %bb.w ] ; 5 uses
  %niter343 = phi i64 [ 0, %.lr.ph45.i55.new ], [ %niter343.next.1, %bb.w ]
  %i.gd = xor i64 %.sroa.07.043.i56, -1, !dbg !1724
  %i.ge = getelementptr [16 x i8], ptr %i.dn, i64 %i.gd, !dbg !1725
  %i.gf = getelementptr [16 x i8], ptr %i.gb, i64 %.sroa.07.043.i56, !dbg !1726
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i64 16, i1 false), !dbg !1727, !alias.scope !1489
  %i.gg = add nuw i64 %.sroa.07.043.i56, 2, !dbg !1728 ; 2 uses
  %i.gh = xor i64 %.sroa.07.043.i56, -2, !dbg !1724
  %i.gi = getelementptr [16 x i8], ptr %i.dn, i64 %i.gh, !dbg !1725
  %i.gj = getelementptr [16 x i8], ptr %i.gb, i64 %.sroa.07.043.i56, !dbg !1726
  %i.gk = getelementptr i8, ptr %i.gj, i64 16, !dbg !1726
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false), !dbg !1727, !alias.scope !1489
  %niter343.next.1 = add i64 %niter343, 2, !dbg !1723 ; 2 uses
  %niter343.ncmp.1 = icmp eq i64 %niter343.next.1, %unroll_iter342, !dbg !1723
  br i1 %niter343.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit.unr-lcssa, label %bb.w, !dbg !1723

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0, !dbg !1723
  br i1 %lcmp.mod340.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit, label %.epil.preheader332, !dbg !1723

.epil.preheader332:                               ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit.unr-lcssa, %.lr.ph45.i55
  %.sroa.07.043.i56.epil.init = phi i64 [ 0, %.lr.ph45.i55 ], [ %i.gg, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod341 = trunc i64 %i.ga to i1, !dbg !1723
  tail call void @llvm.assume(i1 %lcmp.mod341), !dbg !1723
  %i.gl = xor i64 %.sroa.07.043.i56.epil.init, -1, !dbg !1724
  %i.gm = getelementptr [16 x i8], ptr %i.dn, i64 %i.gl, !dbg !1725
  %i.gn = getelementptr [16 x i8], ptr %i.gb, i64 %.sroa.07.043.i56.epil.init, !dbg !1726
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i64 16, i1 false), !dbg !1727, !alias.scope !1489
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit, !dbg !1729

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit.unr-lcssa, %.epil.preheader332
  %i.go = icmp ugt i64 %.sroa.27.2.lcssa.i52, %.sroa.16.0113265, !dbg !1729
  br i1 %i.go, label %bb.x, label %.outer, !dbg !1729, !prof !138

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i52, !dbg !1730 ; 2 uses
  %i.gq = icmp ult i64 %i.ga, 17, !dbg !1500
  br i1 %i.gq, label %.outer._crit_edge, label %.lr.ph, !dbg !1500

bb.x:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i52, i64 noundef %.sroa.16.0113265, i64 noundef %.sroa.16.0113265, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !1731
  unreachable, !dbg !1731
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB20_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB24_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #2 !dbg !1732 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !2047
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !2047

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph, !dbg !2047

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph119 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.gu, %.outer ] ; 22 uses
  %.sroa.16.0.ph118 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.gf, %.outer ] ; 2 uses
  %.sroa.025.0.ph117 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.g, %.outer ] ; 2 uses
  %.sroa.028.0.ph116 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph119 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph116, null
  %i.e = icmp eq i32 %.sroa.025.0.ph117, 0, !dbg !2048
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph264, !dbg !2048

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit
  %i.f = icmp eq i32 %i.g, 0, !dbg !2048
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph264, !dbg !2048

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa110 = phi ptr [ %i.gg, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph119, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit ], [ %i.gu, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit ], [ %i.gf, %.outer ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2n_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2r_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa110, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !2049
  br label %bb.d, !dbg !2050

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0112.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1Q_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB1U_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph119, i64 noundef %.sroa.16.0112.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !2051
  br label %bb.d, !dbg !2050

.lr.ph264:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0111263 = phi i32 [ %i.g, %bb.b ], [ %.sroa.025.0.ph117, %.lr.ph ]
  %.sroa.16.0112262 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ] ; 21 uses
  %i.g = add i32 %.sroa.025.0111263, -1, !dbg !2052 ; 4 uses
  %i.h = lshr i64 %.sroa.16.0112262, 3, !dbg !2053 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.h, 6, !dbg !2054
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx.i, !dbg !2054 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.h, 112, !dbg !2055
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx2.i, !dbg !2055 ; 3 uses
  %i.k = icmp samesign ult i64 %.sroa.16.0112262, 64, !dbg !2056
  br i1 %i.k, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1T_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB1X_.exit.i, label %bb.c, !dbg !2056

bb.c:                                             ; preds = %.lr.ph264
  %i.l = call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1Z_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB23_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph119, ptr noundef nonnull readonly %i.i, ptr noundef nonnull readonly %i.j, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !2057
  br label %bb.e, !dbg !2058

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1T_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB1X_.exit.i: ; preds = %.lr.ph264
  %.val6.i = load i64, ptr %.sroa.0.0.ph119, align 8, !dbg !2059, !alias.scope !2020, !noalias !2021, !noundef !39 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !2059, !alias.scope !2020, !noalias !2021, !noundef !39 ; 2 uses
  %i.m = ashr i64 %.val6.i, 63, !dbg !2060
  %i.n = lshr i64 %i.m, 1, !dbg !2061
  %i.o = xor i64 %i.n, %.val6.i, !dbg !2062       ; 2 uses
  %i.p = ashr i64 %.val7.i, 63, !dbg !2063
  %i.q = lshr i64 %i.p, 1, !dbg !2064
  %i.r = xor i64 %i.q, %.val7.i, !dbg !2065       ; 2 uses
  %i.s = icmp slt i64 %i.o, %i.r, !dbg !2066      ; 2 uses
  %.val5.i = load i64, ptr %i.j, align 8, !dbg !2067, !alias.scope !2020, !noalias !2021, !noundef !39 ; 2 uses
  %i.t = ashr i64 %.val5.i, 63, !dbg !2068
  %i.u = lshr i64 %i.t, 1, !dbg !2069
  %i.v = xor i64 %i.u, %.val5.i, !dbg !2070       ; 2 uses
  %i.w = icmp slt i64 %i.o, %i.v, !dbg !2071
  %i.x = xor i1 %i.s, %i.w, !dbg !2072
  %i.y = icmp slt i64 %i.r, %i.v, !dbg !2072
  %i.z = xor i1 %i.s, %i.y, !dbg !2072
  %..i.i = select i1 %i.z, ptr %i.j, ptr %i.i, !dbg !2072
  %.sroa.0.0.i.i = select i1 %i.x, ptr %.sroa.0.0.ph119, ptr %..i.i, !dbg !2072
  br label %bb.e, !dbg !2058

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void, !dbg !2073

bb.e:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1T_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB1X_.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1T_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB1X_.exit.i ], [ %i.l, %bb.c ]
  %i.aa = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !2074
  %i.ab = sub nuw i64 %i.aa, %i.d, !dbg !2074     ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.ab, 4, !dbg !2074 ; 3 uses
  %i.ac = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0112262, !dbg !2075
  call void @llvm.assume(i1 %i.ac), !dbg !2076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2077
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %i.ab, !dbg !2078 ; 6 uses
  %i.ae = load double, ptr %i.ad, align 8, !dbg !2079 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !2079
  %i.ag = load i64, ptr %i.af, align 8, !dbg !2079
  store double %i.ae, ptr %i.a, align 8, !dbg !2079
  store i64 %i.ag, ptr %i.c, align 8, !dbg !2079
  br i1 %.not, label %bb.g, label %bb.f, !dbg !2080

bb.f:                                             ; preds = %bb.e
  %i.ah = bitcast double %i.ae to i64, !dbg !2080 ; 2 uses
  %.sroa.028.0.val = load i64, ptr %.sroa.028.0.ph116, align 8, !dbg !2081, !noundef !39 ; 2 uses
  %i.ai = ashr i64 %.sroa.028.0.val, 63, !dbg !2082
  %i.aj = lshr i64 %i.ai, 1, !dbg !2083
  %i.ak = xor i64 %i.aj, %.sroa.028.0.val, !dbg !2084
  %i.al = ashr i64 %i.ah, 63, !dbg !2085
  %i.am = lshr i64 %i.al, 1, !dbg !2086
  %i.an = xor i64 %i.am, %i.ah, !dbg !2087
  %i.ao = icmp slt i64 %i.ak, %i.an, !dbg !2088
  br i1 %i.ao, label %bb.g, label %.thread, !dbg !2089

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !2023), !dbg !2090
  %.not80 = icmp samesign ult i64 %3, %.sroa.16.0112262, !dbg !2091
  br i1 %.not80, label %bb.i, label %bb.h, !dbg !2091, !prof !128

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0112262, !dbg !2092 ; 4 uses
  br label %bb.j, !dbg !2093

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap(), !dbg !2094
  unreachable, !dbg !2094

bb.j:                                             ; preds = %bb.l, %bb.h
  %.sroa.43.0.i = phi ptr [ %i.ap, %bb.h ], [ %i.cx, %bb.l ], !dbg !2095 ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.27.2.lcssa.i, %bb.l ], !dbg !2095 ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph119, %bb.h ], [ %i.cz, %bb.l ], !dbg !2095 ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.0112262, %bb.l ] ; 3 uses
  %i.aq = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3), !dbg !2096
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %i.aq, !dbg !2097 ; 2 uses
  %i.as = icmp ult ptr %.sroa.9.0.i, %i.ar, !dbg !2098
  br i1 %i.as, label %.lr.ph.i, label %._crit_edge.i, !dbg !2098

.lr.ph.i:                                         ; preds = %bb.j
  %.val22.i = load i64, ptr %i.ad, align 8, !alias.scope !2024, !noalias !2023, !noundef !39 ; 2 uses
  %i.at = ashr i64 %.val22.i, 63
  %i.au = lshr i64 %i.at, 1
  %i.av = xor i64 %i.au, %.val22.i                ; 4 uses
  br label %bb.k, !dbg !2098

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.cf, %bb.k ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.ce, %bb.k ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.cb, %bb.k ] ; 4 uses
  %.val21.i = load i64, ptr %.sroa.9.131.i, align 8, !dbg !2099, !alias.scope !2024, !noalias !2023, !noundef !39 ; 2 uses
  %i.aw = ashr i64 %.val21.i, 63, !dbg !2100
  %i.ax = lshr i64 %i.aw, 1, !dbg !2101
  %i.ay = xor i64 %i.ax, %.val21.i, !dbg !2102
  %i.az = icmp slt i64 %i.ay, %i.av, !dbg !2103   ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16, !dbg !2104
  %.sroa.01.0.i.i = select i1 %i.az, ptr %2, ptr %i.ba, !dbg !2105
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i, !dbg !2106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !dbg !2107, !alias.scope !2025, !noalias !2026
  %i.bc = zext i1 %i.az to i64, !dbg !2108
  %i.bd = add i64 %.sroa.27.130.i, %i.bc, !dbg !2109 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16, !dbg !2110 ; 2 uses
  %.val19.i = load i64, ptr %i.be, align 8, !dbg !2111, !alias.scope !2024, !noalias !2023, !noundef !39 ; 2 uses
  %i.bf = ashr i64 %.val19.i, 63, !dbg !2112
  %i.bg = lshr i64 %i.bf, 1, !dbg !2113
  %i.bh = xor i64 %i.bg, %.val19.i, !dbg !2114
  %i.bi = icmp slt i64 %i.bh, %i.av, !dbg !2115   ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32, !dbg !2116
  %.sroa.01.0.i23.i = select i1 %i.bi, ptr %2, ptr %i.bj, !dbg !2117
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.bd, !dbg !2118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !dbg !2119, !alias.scope !2025, !noalias !2027
  %i.bl = zext i1 %i.bi to i64, !dbg !2120
  %i.bm = add i64 %i.bd, %i.bl, !dbg !2121        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32, !dbg !2122 ; 2 uses
  %.val17.i = load i64, ptr %i.bn, align 8, !dbg !2123, !alias.scope !2024, !noalias !2023, !noundef !39 ; 2 uses
  %i.bo = ashr i64 %.val17.i, 63, !dbg !2124
  %i.bp = lshr i64 %i.bo, 1, !dbg !2125
  %i.bq = xor i64 %i.bp, %.val17.i, !dbg !2126
  %i.br = icmp slt i64 %i.bq, %i.av, !dbg !2127   ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48, !dbg !2128
  %.sroa.01.0.i24.i = select i1 %i.br, ptr %2, ptr %i.bs, !dbg !2129
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.bm, !dbg !2130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !dbg !2131, !alias.scope !2025, !noalias !2028
  %i.bu = zext i1 %i.br to i64, !dbg !2132
  %i.bv = add i64 %i.bm, %i.bu, !dbg !2133        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48, !dbg !2134 ; 2 uses
  %.val15.i = load i64, ptr %i.bw, align 8, !dbg !2135, !alias.scope !2024, !noalias !2023, !noundef !39 ; 2 uses
  %i.bx = ashr i64 %.val15.i, 63, !dbg !2136
  %i.by = lshr i64 %i.bx, 1, !dbg !2137
  %i.bz = xor i64 %i.by, %.val15.i, !dbg !2138
  %i.ca = icmp slt i64 %i.bz, %i.av, !dbg !2139   ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64, !dbg !2140 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.ca, ptr %2, ptr %i.cb, !dbg !2141
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.bv, !dbg !2142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !dbg !2143, !alias.scope !2025, !noalias !2029
  %i.cd = zext i1 %i.ca to i64, !dbg !2144
  %i.ce = add i64 %i.bv, %i.cd, !dbg !2145        ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64, !dbg !2146 ; 3 uses
  %i.cg = icmp ult ptr %i.cf, %i.ar, !dbg !2098
  br i1 %i.cg, label %bb.k, label %._crit_edge.i, !dbg !2098

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.j ], [ %i.cb, %bb.k ], !dbg !2095 ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.j ], [ %i.ce, %bb.k ], !dbg !2095 ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.j ], [ %i.cf, %bb.k ], !dbg !2095 ; 3 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.0.0.i37, !dbg !2147 ; 2 uses
  %i.ci = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ch, !dbg !2148
  br i1 %i.ci, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !2148

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.cr, %.lr.ph38.i ], !dbg !2095
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.cu, %.lr.ph38.i ], !dbg !2095 ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.cv, %.lr.ph38.i ], !dbg !2095 ; 2 uses
  %i.cj = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0112262, !dbg !2149
  br i1 %i.cj, label %bb.m, label %bb.l, !dbg !2149

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.cv, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.cu, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.cr, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i64, ptr %.sroa.9.236.i, align 8, !dbg !2150, !alias.scope !2024, !noalias !2023, !noundef !39 ; 2 uses
  %.val14.i = load i64, ptr %i.ad, align 8, !dbg !2150, !alias.scope !2024, !noalias !2023, !noundef !39 ; 2 uses
  %i.ck = ashr i64 %.val.i, 63, !dbg !2151
  %i.cl = lshr i64 %i.ck, 1, !dbg !2152
  %i.cm = xor i64 %i.cl, %.val.i, !dbg !2153
  %i.cn = ashr i64 %.val14.i, 63, !dbg !2154
  %i.co = lshr i64 %i.cn, 1, !dbg !2155
  %i.cp = xor i64 %i.co, %.val14.i, !dbg !2156
  %i.cq = icmp slt i64 %i.cm, %i.cp, !dbg !2157   ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16, !dbg !2158 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.cq, ptr %2, ptr %i.cr, !dbg !2159
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i, !dbg !2160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !dbg !2161, !alias.scope !2025, !noalias !2030
  %i.ct = zext i1 %i.cq to i64, !dbg !2162
  %i.cu = add i64 %.sroa.27.235.i, %i.ct, !dbg !2163 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16, !dbg !2164 ; 3 uses
  %i.cw = icmp ult ptr %i.cv, %i.ch, !dbg !2148
  br i1 %i.cw, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !2148

bb.l:                                             ; preds = %._crit_edge39.i
  %i.cx = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16, !dbg !2165 ; 2 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.27.2.lcssa.i, !dbg !2166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !dbg !2167, !alias.scope !2025, !noalias !2031
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16, !dbg !2168
  br label %bb.j, !dbg !2093

bb.m:                                             ; preds = %._crit_edge39.i
  %i.da = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 4, !dbg !2169
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph119, ptr nonnull align 8 %2, i64 %i.da, i1 false), !dbg !2169, !alias.scope !2025
  %i.db = sub i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i, !dbg !2170 ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i, !dbg !2171
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !2172

.lr.ph45.i:                                       ; preds = %bb.m
  %i.dc = getelementptr [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1, !dbg !2172
  %xtraiter = and i64 %i.db, 1, !dbg !2172
  %i.dd = icmp eq i64 %.sroa.16.0112262, %.neg, !dbg !2172
  br i1 %i.dd, label %.epil.preheader, label %.lr.ph45.i.new, !dbg !2172

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.db, -2, !dbg !2172
  br label %bb.n, !dbg !2172

bb.n:                                             ; preds = %bb.n, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.dh, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.n ]
  %i.de = xor i64 %.sroa.07.043.i, -1, !dbg !2173
  %i.df = getelementptr [16 x i8], ptr %i.ap, i64 %i.de, !dbg !2174
  %i.dg = getelementptr [16 x i8], ptr %i.dc, i64 %.sroa.07.043.i, !dbg !2175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !dbg !2176, !alias.scope !2025
  %i.dh = add nuw i64 %.sroa.07.043.i, 2, !dbg !2177 ; 2 uses
  %i.di = xor i64 %.sroa.07.043.i, -2, !dbg !2173
  %i.dj = getelementptr [16 x i8], ptr %i.ap, i64 %i.di, !dbg !2174
  %i.dk = getelementptr [16 x i8], ptr %i.dc, i64 %.sroa.07.043.i, !dbg !2175
  %i.dl = getelementptr i8, ptr %i.dk, i64 16, !dbg !2175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false), !dbg !2176, !alias.scope !2025
  %niter.next.1 = add i64 %niter, 2, !dbg !2172   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2172
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !dbg !2172

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2172
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader, !dbg !2172

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.dh, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod331 = trunc i64 %i.db to i1, !dbg !2172
  call void @llvm.assume(i1 %lcmp.mod331), !dbg !2172
  %i.dm = xor i64 %.sroa.07.043.i.epil.init, -1, !dbg !2173
  %i.dn = getelementptr [16 x i8], ptr %i.ap, i64 %i.dm, !dbg !2174
  %i.do = getelementptr [16 x i8], ptr %i.dc, i64 %.sroa.07.043.i.epil.init, !dbg !2175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !dbg !2176, !alias.scope !2025
  br label %.loopexit, !dbg !2178

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.m
  %i.dp = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !2178
  br i1 %i.dp, label %.thread, label %bb.o, !dbg !2179

bb.o:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0112262, !dbg !2180
  br i1 %.not.i38, label %bb.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit, !dbg !2180, !prof !138

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !2181, !noalias !2033
  unreachable, !dbg !2181

_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %bb.o
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i, !dbg !2182
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph119) ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB20_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB24_(ptr noalias nofree noundef nonnull align 8 %i.dq, i64 noundef %i.db, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #12, !dbg !2183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2184
  %i.dr = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !2047
  br i1 %i.dr, label %.outer._crit_edge, label %bb.b, !dbg !2047

.thread:                                          ; preds = %bb.f, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !2034), !dbg !2185
  %.not81 = icmp samesign ult i64 %3, %.sroa.16.0112262, !dbg !2186
  br i1 %.not81, label %bb.r, label %bb.q, !dbg !2186, !prof !128

bb.q:                                             ; preds = %.thread
  %i.ds = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0112262, !dbg !2187 ; 4 uses
  br label %bb.s, !dbg !2188

bb.r:                                             ; preds = %.thread
  call void @llvm.trap(), !dbg !2189
  unreachable, !dbg !2189

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i41 = phi ptr [ %i.ds, %bb.q ], [ %i.ga, %bb.u ], !dbg !2190 ; 2 uses
  %.sroa.27.0.i42 = phi i64 [ 0, %bb.q ], [ %i.gc, %bb.u ], !dbg !2190 ; 2 uses
  %.sroa.9.0.i43 = phi ptr [ %.sroa.0.0.ph119, %bb.q ], [ %i.gd, %bb.u ], !dbg !2190 ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0112262, %bb.u ] ; 3 uses
  %i.dt = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i44, i64 3), !dbg !2191
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %i.dt, !dbg !2192 ; 2 uses
  %i.dv = icmp ult ptr %.sroa.9.0.i43, %i.du, !dbg !2193
  br i1 %i.dv, label %.lr.ph.i64, label %._crit_edge.i45, !dbg !2193

.lr.ph.i64:                                       ; preds = %bb.s
  %.val22.i65 = load i64, ptr %i.ad, align 8, !alias.scope !2035, !noalias !2034, !noundef !39 ; 2 uses
  %i.dw = ashr i64 %.val22.i65, 63
  %i.dx = lshr i64 %i.dw, 1
  %i.dy = xor i64 %i.dx, %.val22.i65              ; 4 uses
  br label %bb.t, !dbg !2193

bb.t:                                             ; preds = %bb.t, %.lr.ph.i64
  %.sroa.9.131.i66 = phi ptr [ %.sroa.9.0.i43, %.lr.ph.i64 ], [ %i.fi, %bb.t ] ; 6 uses
  %.sroa.27.130.i67 = phi i64 [ %.sroa.27.0.i42, %.lr.ph.i64 ], [ %i.fh, %bb.t ] ; 2 uses
  %.sroa.43.129.i68 = phi ptr [ %.sroa.43.0.i41, %.lr.ph.i64 ], [ %i.fe, %bb.t ] ; 4 uses
  %.val21.i69 = load i64, ptr %.sroa.9.131.i66, align 8, !dbg !2194, !alias.scope !2035, !noalias !2034, !noundef !39 ; 2 uses
  %i.dz = ashr i64 %.val21.i69, 63, !dbg !2195
  %i.ea = lshr i64 %i.dz, 1, !dbg !2196
  %i.eb = xor i64 %i.ea, %.val21.i69, !dbg !2197
  %i.ec = icmp sge i64 %i.dy, %i.eb, !dbg !2198   ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -16, !dbg !2199
  %.sroa.01.0.i.i70 = select i1 %i.ec, ptr %2, ptr %i.ed, !dbg !2200
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i70, i64 %.sroa.27.130.i67, !dbg !2201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i66, i64 16, i1 false), !dbg !2202, !alias.scope !2036, !noalias !2037
  %i.ef = zext i1 %i.ec to i64, !dbg !2203
  %i.eg = add i64 %.sroa.27.130.i67, %i.ef, !dbg !2204 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 16, !dbg !2205 ; 2 uses
  %.val19.i71 = load i64, ptr %i.eh, align 8, !dbg !2206, !alias.scope !2035, !noalias !2034, !noundef !39 ; 2 uses
  %i.ei = ashr i64 %.val19.i71, 63, !dbg !2207
  %i.ej = lshr i64 %i.ei, 1, !dbg !2208
  %i.ek = xor i64 %i.ej, %.val19.i71, !dbg !2209
  %i.el = icmp sge i64 %i.dy, %i.ek, !dbg !2210   ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -32, !dbg !2211
  %.sroa.01.0.i23.i72 = select i1 %i.el, ptr %2, ptr %i.em, !dbg !2212
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i72, i64 %i.eg, !dbg !2213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i64 16, i1 false), !dbg !2214, !alias.scope !2036, !noalias !2038
  %i.eo = zext i1 %i.el to i64, !dbg !2215
  %i.ep = add i64 %i.eg, %i.eo, !dbg !2216        ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 32, !dbg !2217 ; 2 uses
  %.val17.i73 = load i64, ptr %i.eq, align 8, !dbg !2218, !alias.scope !2035, !noalias !2034, !noundef !39 ; 2 uses
  %i.er = ashr i64 %.val17.i73, 63, !dbg !2219
  %i.es = lshr i64 %i.er, 1, !dbg !2220
  %i.et = xor i64 %i.es, %.val17.i73, !dbg !2221
  %i.eu = icmp sge i64 %i.dy, %i.et, !dbg !2222   ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -48, !dbg !2223
  %.sroa.01.0.i24.i74 = select i1 %i.eu, ptr %2, ptr %i.ev, !dbg !2224
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i74, i64 %i.ep, !dbg !2225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 16, i1 false), !dbg !2226, !alias.scope !2036, !noalias !2039
  %i.ex = zext i1 %i.eu to i64, !dbg !2227
  %i.ey = add i64 %i.ep, %i.ex, !dbg !2228        ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 48, !dbg !2229 ; 2 uses
  %.val15.i75 = load i64, ptr %i.ez, align 8, !dbg !2230, !alias.scope !2035, !noalias !2034, !noundef !39 ; 2 uses
  %i.fa = ashr i64 %.val15.i75, 63, !dbg !2231
  %i.fb = lshr i64 %i.fa, 1, !dbg !2232
  %i.fc = xor i64 %i.fb, %.val15.i75, !dbg !2233
  %i.fd = icmp sge i64 %i.dy, %i.fc, !dbg !2234   ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -64, !dbg !2235 ; 3 uses
  %.sroa.01.0.i25.i76 = select i1 %i.fd, ptr %2, ptr %i.fe, !dbg !2236
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i76, i64 %i.ey, !dbg !2237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i64 16, i1 false), !dbg !2238, !alias.scope !2036, !noalias !2040
  %i.fg = zext i1 %i.fd to i64, !dbg !2239
  %i.fh = add i64 %i.ey, %i.fg, !dbg !2240        ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 64, !dbg !2241 ; 3 uses
  %i.fj = icmp ult ptr %i.fi, %i.du, !dbg !2193
  br i1 %i.fj, label %bb.t, label %._crit_edge.i45, !dbg !2193

._crit_edge.i45:                                  ; preds = %bb.t, %bb.s
  %.sroa.43.1.lcssa.i46 = phi ptr [ %.sroa.43.0.i41, %bb.s ], [ %i.fe, %bb.t ], !dbg !2190 ; 2 uses
  %.sroa.27.1.lcssa.i47 = phi i64 [ %.sroa.27.0.i42, %bb.s ], [ %i.fh, %bb.t ], !dbg !2190 ; 2 uses
  %.sroa.9.1.lcssa.i48 = phi ptr [ %.sroa.9.0.i43, %bb.s ], [ %i.fi, %bb.t ], !dbg !2190 ; 3 uses
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.0.0.i44, !dbg !2242 ; 2 uses
  %i.fl = icmp ult ptr %.sroa.9.1.lcssa.i48, %i.fk, !dbg !2243
  br i1 %i.fl, label %.lr.ph38.i57, label %._crit_edge39.i49, !dbg !2243

._crit_edge39.i49:                                ; preds = %.lr.ph38.i57, %._crit_edge.i45
  %.sroa.43.2.lcssa.i50 = phi ptr [ %.sroa.43.1.lcssa.i46, %._crit_edge.i45 ], [ %i.fu, %.lr.ph38.i57 ], !dbg !2190
  %.sroa.27.2.lcssa.i51 = phi i64 [ %.sroa.27.1.lcssa.i47, %._crit_edge.i45 ], [ %i.fx, %.lr.ph38.i57 ], !dbg !2190 ; 10 uses
  %.sroa.9.2.lcssa.i52 = phi ptr [ %.sroa.9.1.lcssa.i48, %._crit_edge.i45 ], [ %i.fy, %.lr.ph38.i57 ], !dbg !2190 ; 2 uses
  %i.fm = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.0112262, !dbg !2244
  br i1 %i.fm, label %bb.v, label %bb.u, !dbg !2244

.lr.ph38.i57:                                     ; preds = %._crit_edge.i45, %.lr.ph38.i57
  %.sroa.9.236.i58 = phi ptr [ %i.fy, %.lr.ph38.i57 ], [ %.sroa.9.1.lcssa.i48, %._crit_edge.i45 ] ; 3 uses
  %.sroa.27.235.i59 = phi i64 [ %i.fx, %.lr.ph38.i57 ], [ %.sroa.27.1.lcssa.i47, %._crit_edge.i45 ] ; 2 uses
  %.sroa.43.234.i60 = phi ptr [ %i.fu, %.lr.ph38.i57 ], [ %.sroa.43.1.lcssa.i46, %._crit_edge.i45 ]
  %.val.i61 = load i64, ptr %.sroa.9.236.i58, align 8, !dbg !2245, !alias.scope !2035, !noalias !2034, !noundef !39 ; 2 uses
  %.val14.i62 = load i64, ptr %i.ad, align 8, !dbg !2245, !alias.scope !2035, !noalias !2034, !noundef !39 ; 2 uses
  %i.fn = ashr i64 %.val14.i62, 63, !dbg !2246
  %i.fo = lshr i64 %i.fn, 1, !dbg !2247
  %i.fp = xor i64 %i.fo, %.val14.i62, !dbg !2248
  %i.fq = ashr i64 %.val.i61, 63, !dbg !2249
  %i.fr = lshr i64 %i.fq, 1, !dbg !2250
  %i.fs = xor i64 %i.fr, %.val.i61, !dbg !2251
  %i.ft = icmp sge i64 %i.fp, %i.fs, !dbg !2252   ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %.sroa.43.234.i60, i64 -16, !dbg !2253 ; 3 uses
  %.sroa.01.0.i26.i63 = select i1 %i.ft, ptr %2, ptr %i.fu, !dbg !2254
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i63, i64 %.sroa.27.235.i59, !dbg !2255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i58, i64 16, i1 false), !dbg !2256, !alias.scope !2036, !noalias !2041
  %i.fw = zext i1 %i.ft to i64, !dbg !2257
  %i.fx = add i64 %.sroa.27.235.i59, %i.fw, !dbg !2258 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i58, i64 16, !dbg !2259 ; 3 uses
  %i.fz = icmp ult ptr %i.fy, %i.fk, !dbg !2243
  br i1 %i.fz, label %.lr.ph38.i57, label %._crit_edge39.i49, !dbg !2243

bb.u:                                             ; preds = %._crit_edge39.i49
  %i.ga = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i50, i64 -16, !dbg !2260
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i51, !dbg !2261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i52, i64 16, i1 false), !dbg !2262, !alias.scope !2036, !noalias !2042
  %i.gc = add i64 %.sroa.27.2.lcssa.i51, 1, !dbg !2263
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i52, i64 16, !dbg !2264
  br label %bb.s, !dbg !2188

bb.v:                                             ; preds = %._crit_edge39.i49
  %i.ge = shl nuw nsw i64 %.sroa.27.2.lcssa.i51, 4, !dbg !2265
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph119, ptr nonnull align 8 %2, i64 %i.ge, i1 false), !dbg !2265, !alias.scope !2036
  %i.gf = sub i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i51, !dbg !2266 ; 6 uses
  %.not47.i53 = icmp eq i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i51, !dbg !2267
  %i.gg = getelementptr [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i51 ; 4 uses
  br i1 %.not47.i53, label %.outer.thread, label %.lr.ph45.i54.preheader, !dbg !2268

.lr.ph45.i54.preheader:                           ; preds = %bb.v
  %.neg343 = add i64 %.sroa.27.2.lcssa.i51, 1, !dbg !2268
  %xtraiter338 = and i64 %i.gf, 1, !dbg !2268
  %i.gh = icmp eq i64 %.sroa.16.0112262, %.neg343, !dbg !2268
  br i1 %i.gh, label %.lr.ph45.i54.epil.preheader, label %.lr.ph45.i54.preheader.new, !dbg !2268

.lr.ph45.i54.preheader.new:                       ; preds = %.lr.ph45.i54.preheader
  %unroll_iter341 = and i64 %i.gf, -2, !dbg !2268
  br label %.lr.ph45.i54, !dbg !2268

.lr.ph45.i54:                                     ; preds = %.lr.ph45.i54, %.lr.ph45.i54.preheader.new
  %.sroa.07.043.i55 = phi i64 [ 0, %.lr.ph45.i54.preheader.new ], [ %i.gl, %.lr.ph45.i54 ] ; 5 uses
  %niter342 = phi i64 [ 0, %.lr.ph45.i54.preheader.new ], [ %niter342.next.1, %.lr.ph45.i54 ]
  %i.gi = xor i64 %.sroa.07.043.i55, -1, !dbg !2269
  %i.gj = getelementptr [16 x i8], ptr %i.ds, i64 %i.gi, !dbg !2270
  %i.gk = getelementptr [16 x i8], ptr %i.gg, i64 %.sroa.07.043.i55, !dbg !2271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i64 16, i1 false), !dbg !2272, !alias.scope !2036
  %i.gl = add nuw i64 %.sroa.07.043.i55, 2, !dbg !2273 ; 2 uses
  %i.gm = xor i64 %.sroa.07.043.i55, -2, !dbg !2269
  %i.gn = getelementptr [16 x i8], ptr %i.ds, i64 %i.gm, !dbg !2270
  %i.go = getelementptr [16 x i8], ptr %i.gg, i64 %.sroa.07.043.i55, !dbg !2271
  %i.gp = getelementptr i8, ptr %i.go, i64 16, !dbg !2271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i64 16, i1 false), !dbg !2272, !alias.scope !2036
  %niter342.next.1 = add i64 %niter342, 2, !dbg !2268 ; 2 uses
  %niter342.ncmp.1 = icmp eq i64 %niter342.next.1, %unroll_iter341, !dbg !2268
  br i1 %niter342.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit.unr-lcssa, label %.lr.ph45.i54, !dbg !2268

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit.unr-lcssa: ; preds = %.lr.ph45.i54
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0, !dbg !2268
  br i1 %lcmp.mod339.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit, label %.lr.ph45.i54.epil.preheader, !dbg !2268

.lr.ph45.i54.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit.unr-lcssa, %.lr.ph45.i54.preheader
  %.sroa.07.043.i55.epil.init = phi i64 [ 0, %.lr.ph45.i54.preheader ], [ %i.gl, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod340 = trunc i64 %i.gf to i1, !dbg !2268
  call void @llvm.assume(i1 %lcmp.mod340), !dbg !2268
  %i.gq = xor i64 %.sroa.07.043.i55.epil.init, -1, !dbg !2269
  %i.gr = getelementptr [16 x i8], ptr %i.ds, i64 %i.gq, !dbg !2270
  %i.gs = getelementptr [16 x i8], ptr %i.gg, i64 %.sroa.07.043.i55.epil.init, !dbg !2271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 16, i1 false), !dbg !2272, !alias.scope !2036
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit, !dbg !2274

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit.unr-lcssa, %.lr.ph45.i54.epil.preheader
  %i.gt = icmp ugt i64 %.sroa.27.2.lcssa.i51, %.sroa.16.0112262, !dbg !2274
  br i1 %i.gt, label %bb.w, label %.outer, !dbg !2274, !prof !138

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2184
  br label %.outer._crit_edge, !dbg !2047

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i51, !dbg !2275 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2184
  %i.gv = icmp ult i64 %i.gf, 33, !dbg !2047
  br i1 %i.gv, label %.outer._crit_edge, label %.lr.ph, !dbg !2047

bb.w:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i51, i64 noundef %.sroa.16.0112262, i64 noundef %.sroa.16.0112262, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !2276
  unreachable, !dbg !2276
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #2 !dbg !2277 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !2598
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !2598

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph119 = phi ptr [ %i.gt, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph118 = phi i64 [ %i.ge, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph117 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph116 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph119 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph116, null
  %i.d = icmp eq i32 %.sroa.025.0.ph117, 0, !dbg !2599
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph264, !dbg !2599

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit
  %i.e = icmp eq i32 %i.f, 0, !dbg !2599
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph264, !dbg !2599

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa110 = phi ptr [ %i.gf, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph119, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit ], [ %i.gt, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit ], [ %i.ge, %.outer ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa110, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !2600
  br label %bb.d, !dbg !2601

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0112.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph119, i64 noundef %.sroa.16.0112.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !2602
  br label %bb.d, !dbg !2601

.lr.ph264:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0111263 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph117, %.lr.ph ]
  %.sroa.16.0112262 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ] ; 19 uses
  %i.f = add i32 %.sroa.025.0111263, -1, !dbg !2603 ; 4 uses
  %i.g = lshr i64 %.sroa.16.0112262, 3, !dbg !2604 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 5, !dbg !2605
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx.i, !dbg !2605 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 56, !dbg !2606
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx2.i, !dbg !2606 ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0112262, 64, !dbg !2607
  br i1 %i.j, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3dNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i, label %bb.c, !dbg !2607

bb.c:                                             ; preds = %.lr.ph264
  %i.k = call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph119, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !2608
  br label %bb.e, !dbg !2609

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3dNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i: ; preds = %.lr.ph264
  %.val6.i = load i64, ptr %.sroa.0.0.ph119, align 8, !dbg !2610, !alias.scope !2569, !noalias !2570, !noundef !39 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !dbg !2610, !alias.scope !2569, !noalias !2570, !noundef !39 ; 2 uses
  %i.l = ashr i64 %.val6.i, 63, !dbg !2611
  %i.m = lshr i64 %i.l, 1, !dbg !2612
  %i.n = xor i64 %i.m, %.val6.i, !dbg !2613       ; 2 uses
  %i.o = ashr i64 %.val7.i, 63, !dbg !2614
  %i.p = lshr i64 %i.o, 1, !dbg !2615
  %i.q = xor i64 %i.p, %.val7.i, !dbg !2616       ; 2 uses
  %i.r = icmp slt i64 %i.n, %i.q, !dbg !2617      ; 2 uses
  %.val5.i = load i64, ptr %i.i, align 8, !dbg !2618, !alias.scope !2569, !noalias !2570, !noundef !39 ; 2 uses
  %i.s = ashr i64 %.val5.i, 63, !dbg !2619
  %i.t = lshr i64 %i.s, 1, !dbg !2620
  %i.u = xor i64 %i.t, %.val5.i, !dbg !2621       ; 2 uses
  %i.v = icmp slt i64 %i.n, %i.u, !dbg !2622
  %i.w = xor i1 %i.r, %i.v, !dbg !2623
  %i.x = icmp slt i64 %i.q, %i.u, !dbg !2623
  %i.y = xor i1 %i.r, %i.x, !dbg !2623
  %..i.i = select i1 %i.y, ptr %i.i, ptr %i.h, !dbg !2623
  %.sroa.0.0.i.i = select i1 %i.w, ptr %.sroa.0.0.ph119, ptr %..i.i, !dbg !2623
  br label %bb.e, !dbg !2609

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void, !dbg !2624

bb.e:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3dNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3dNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i ], [ %i.k, %bb.c ]
  %i.z = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !2625
  %i.aa = sub nuw i64 %i.z, %i.c, !dbg !2625      ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.aa, 3, !dbg !2625 ; 3 uses
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0112262, !dbg !2626
  call void @llvm.assume(i1 %i.ab), !dbg !2627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2628
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %i.aa, !dbg !2629 ; 5 uses
  %i.ad = load double, ptr %i.ac, align 8, !dbg !2630 ; 2 uses
  store double %i.ad, ptr %i.a, align 8, !dbg !2630
  br i1 %.not, label %bb.g, label %bb.f, !dbg !2631

bb.f:                                             ; preds = %bb.e
  %i.ae = bitcast double %i.ad to i64, !dbg !2631 ; 2 uses
  %.sroa.028.0.val = load i64, ptr %.sroa.028.0.ph116, align 8, !dbg !2632, !noundef !39 ; 2 uses
  %i.af = ashr i64 %.sroa.028.0.val, 63, !dbg !2633
  %i.ag = lshr i64 %i.af, 1, !dbg !2634
  %i.ah = xor i64 %i.ag, %.sroa.028.0.val, !dbg !2635
  %i.ai = ashr i64 %i.ae, 63, !dbg !2636
  %i.aj = lshr i64 %i.ai, 1, !dbg !2637
  %i.ak = xor i64 %i.aj, %i.ae, !dbg !2638
  %i.al = icmp slt i64 %i.ah, %i.ak, !dbg !2639
  br i1 %i.al, label %bb.g, label %.thread, !dbg !2640

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !2572), !dbg !2641
  call void @llvm.experimental.noalias.scope.decl(metadata !2573), !dbg !2641
  %.not80 = icmp samesign ult i64 %3, %.sroa.16.0112262, !dbg !2642
  br i1 %.not80, label %bb.i, label %bb.h, !dbg !2642, !prof !128

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0112262, !dbg !2643 ; 3 uses
  br label %bb.j, !dbg !2644

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap(), !dbg !2645
  unreachable, !dbg !2645

bb.j:                                             ; preds = %bb.l, %bb.h
  %.sroa.43.0.i = phi ptr [ %i.am, %bb.h ], [ %i.cu, %bb.l ], !dbg !2646 ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.27.2.lcssa.i, %bb.l ], !dbg !2646 ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph119, %bb.h ], [ %i.cx, %bb.l ], !dbg !2646 ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.0112262, %bb.l ] ; 3 uses
  %i.an = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3), !dbg !2647
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph119, i64 %i.an, !dbg !2648 ; 2 uses
  %i.ap = icmp ult ptr %.sroa.9.0.i, %i.ao, !dbg !2649
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i, !dbg !2649

.lr.ph.i:                                         ; preds = %bb.j
  %.val22.i = load i64, ptr %i.ac, align 8, !alias.scope !2572, !noalias !2573, !noundef !39 ; 2 uses
  %i.aq = ashr i64 %.val22.i, 63
  %i.ar = lshr i64 %i.aq, 1
  %i.as = xor i64 %i.ar, %.val22.i                ; 4 uses
  br label %bb.k, !dbg !2649

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.cc, %bb.k ] ; 5 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.by, %bb.k ] ; 4 uses
  %.val21.i = load i64, ptr %.sroa.9.131.i, align 8, !dbg !2650, !alias.scope !2572, !noalias !2573, !noundef !39 ; 3 uses
  %i.at = ashr i64 %.val21.i, 63, !dbg !2651
  %i.au = lshr i64 %i.at, 1, !dbg !2652
  %i.av = xor i64 %i.au, %.val21.i, !dbg !2653
  %i.aw = icmp slt i64 %i.av, %i.as, !dbg !2654   ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8, !dbg !2655
  %.sroa.01.0.i.i = select i1 %i.aw, ptr %2, ptr %i.ax, !dbg !2656
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i, !dbg !2657
  store i64 %.val21.i, ptr %i.ay, align 8, !dbg !2658, !alias.scope !2573, !noalias !2574
  %i.az = zext i1 %i.aw to i64, !dbg !2659
  %i.ba = add i64 %.sroa.27.130.i, %i.az, !dbg !2660 ; 2 uses
end_hunk_0
