Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_metrics-342164916d52e314.foundations_metrics.d5cc6c7b8a1a7c9f-cgu.04?download=true
inline.NumInlined: 166
inline.NumDeleted: 58
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics:bb.a
  %i.ar = shl nuw nsw i64 %..i33, 1, !dbg !984
  %i.as = or disjoint i64 %i.ar, 1, !dbg !984
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !977

_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i, %middle.block, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i3942 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread ], [ %.sroa.0.0.i.i788589, %middle.block ], [ %.sroa.0.0.i.i788589, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i ]
  %i.at = shl nuw nsw i64 %.sroa.0.0.i.i3942, 1, !dbg !987
  %i.au = or disjoint i64 %i.at, 1, !dbg !987
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !989

bb.q:                                             ; preds = %bb.n
  %i.av = lshr i64 %.sroa.0.0.i.i, 1, !dbg !990   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !993), !dbg !996, !noalias !899
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000), !dbg !996, !noalias !899
  %.not.i.i = icmp eq i64 %i.av, 0, !dbg !1002
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i, !dbg !1002

_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread80, %bb.q
  %i.aw = phi i64 [ %i.av, %bb.q ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread80 ] ; 4 uses
  %.sroa.0.0.i.i788589 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread80 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i.i788589, !dbg !1008 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aw, 4, !dbg !1002
  br i1 %min.iters.check, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.preheader, label %vector.ph, !dbg !1002

vector.ph:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i
  %n.vec = and i64 %i.aw, 9223372036854775804     ; 3 uses
  br label %vector.body, !dbg !1002

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1014 ; 3 uses
  %i.ay = xor i64 %index, -1, !dbg !1015
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index, !dbg !1016 ; 4 uses
  %i.ba = getelementptr [8 x i8], ptr %i.ax, i64 %i.ay, !dbg !1017 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !1018
  %wide.load = load <2 x double>, ptr %i.az, align 8, !dbg !1018, !alias.scope !1021, !noalias !1024
  %wide.load94 = load <2 x double>, ptr %i.bb, align 8, !dbg !1018, !alias.scope !1021, !noalias !1024
  %i.bc = getelementptr i8, ptr %i.ba, i64 -8, !dbg !1018
  %i.bd = getelementptr i8, ptr %i.ba, i64 -24, !dbg !1018
  %wide.load95 = load <2 x i64>, ptr %i.bc, align 8, !dbg !1018, !alias.scope !1025, !noalias !1026
  %wide.load96 = load <2 x i64>, ptr %i.bd, align 8, !dbg !1018, !alias.scope !1025, !noalias !1026
  %reverse = shufflevector <2 x i64> %wide.load95, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !1018
  %reverse97 = shufflevector <2 x i64> %wide.load96, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !1018
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !1018
  store <2 x i64> %reverse, ptr %i.az, align 8, !dbg !1018, !alias.scope !1021, !noalias !1024
  store <2 x i64> %reverse97, ptr %i.be, align 8, !dbg !1018, !alias.scope !1021, !noalias !1024
  %i.bf = getelementptr i8, ptr %i.ba, i64 -8, !dbg !1018
  %i.bg = getelementptr i8, ptr %i.ba, i64 -24, !dbg !1018
  %reverse98 = shufflevector <2 x double> %wide.load, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !1018
  %reverse99 = shufflevector <2 x double> %wide.load94, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !1018
  store <2 x double> %reverse98, ptr %i.bf, align 8, !dbg !1018, !alias.scope !1025, !noalias !1026
  store <2 x double> %reverse99, ptr %i.bg, align 8, !dbg !1018, !alias.scope !1025, !noalias !1026
  %index.next = add nuw i64 %index, 4, !dbg !1014 ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec, !dbg !1002
  br i1 %i.bh, label %middle.block, label %vector.body, !dbg !1002, !llvm.loop !1027

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec, !dbg !1002
  br i1 %cmp.n, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.preheader, !dbg !1002

_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i, !dbg !1002

_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bn, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.preheader ] ; 3 uses
  %i.bi = xor i64 %.sroa.0.016.i.i, -1, !dbg !1015
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i, !dbg !1016 ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.ax, i64 %i.bi, !dbg !1017 ; 2 uses
  %i.bl = load double, ptr %i.bj, align 8, !dbg !1018, !alias.scope !1021, !noalias !1024, !noundef !14
  %i.bm = load i64, ptr %i.bk, align 8, !dbg !1018, !alias.scope !1025, !noalias !1026
  store i64 %i.bm, ptr %i.bj, align 8, !dbg !1018, !alias.scope !1021, !noalias !1024
  store double %i.bl, ptr %i.bk, align 8, !dbg !1018, !alias.scope !1025, !noalias !1026
  %i.bn = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !1014 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.aw, !dbg !1002
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i, !dbg !1002, !llvm.loop !1030

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit
  %.sroa.0.0.i32 = phi i64 [ %i.au, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit ], [ %i.as, %bb.p ], [ %i.aq, %bb.o ], !dbg !1031 ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1, !dbg !1032
  %i.bp = lshr i64 %.sroa.0.0.i32, 1, !dbg !1035
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !1037 ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo, !dbg !1037
  %i.br = add nuw nsw i64 %i.bp, %factor, !dbg !1040
  %i.bs = mul i64 %i.bq, %.sroa.0.0, !dbg !1042
  %i.bt = mul i64 %i.br, %.sroa.0.0, !dbg !1044
  %i.bu = xor i64 %i.bt, %i.bs, !dbg !1045
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false), !dbg !1046
  %i.bw = trunc nuw nsw i64 %i.bv to i8, !dbg !1045
  br label %bb.g, !dbg !1049

.lr.ph55:                                         ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit
  %.sroa.02.154 = phi i64 [ %i.bx, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.153 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bx = add i64 %.sroa.02.154, -1, !dbg !1050   ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx, !dbg !1051
  %i.bz = load i8, ptr %i.by, align 1, !dbg !1054, !noundef !14
  %.not28 = icmp ult i8 %i.bz, %.sroa.021.0, !dbg !1054
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !1054

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, %.lr.ph55, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.153, %.lr.ph55 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], !dbg !863 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.154, %.lr.ph55 ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], !dbg !865 ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !1055
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8, !dbg !1058
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !1059
  store i8 %.sroa.021.0, ptr %i.cb, align 1, !dbg !1061
  br i1 %i.k, label %bb.y, label %bb.z, !dbg !1062

bb.r:                                             ; preds = %.lr.ph55
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx, !dbg !1063
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !1065, !noundef !14 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1, !dbg !1066           ; 5 uses
  %i.cf = lshr i64 %.sroa.023.153, 1, !dbg !1069  ; 3 uses
  %i.cg = add nuw i64 %i.ce, %i.cf, !dbg !1071    ; 5 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg, !dbg !1072
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ch, !dbg !1074 ; 3 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3, !dbg !1083
  %i.ck = trunc i64 %.sroa.023.153 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.153, !dbg !1088
  %i.cm = trunc i64 %i.cl to i1, !dbg !1088
  %or.cond3.i = or i1 %i.cj, %i.cm, !dbg !1088
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !1088

bb.s:                                             ; preds = %bb.r
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.u, label %bb.v, !dbg !1090

bb.t:                                             ; preds = %bb.r
  %i.co = shl nuw nsw i64 %i.cg, 1, !dbg !1091
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !1094

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ck, label %bb.x, label %bb.w, !dbg !1095

bb.v:                                             ; preds = %bb.s
  %i.cp = or i64 %i.ce, 1, !dbg !1096
  %i.cq = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true), !dbg !1099
  %i.cr = trunc nuw nsw i64 %i.cq to i32, !dbg !1099
  %i.cs = shl nuw nsw i32 %i.cr, 1, !dbg !1110
  %i.ct = xor i32 %i.cs, 126, !dbg !1110
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 1152921504606846976) %i.ce, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !1111, !inline_history !1113
  br label %bb.u, !dbg !1114

bb.w:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ce, !dbg !1115
  %i.cv = or i64 %i.cf, 1, !dbg !1125
  %i.cw = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true), !dbg !1127
  %i.cx = trunc nuw nsw i64 %i.cw to i32, !dbg !1127
  %i.cy = shl nuw nsw i32 %i.cx, 1, !dbg !1132
  %i.cz = xor i32 %i.cy, 126, !dbg !1132
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef range(i64 0, 1152921504606846976) %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !1133, !inline_history !1113
  br label %bb.x, !dbg !1134

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 1152921504606846976) %i.cg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !1135
  %i.da = shl nuw nsw i64 %i.cg, 1, !dbg !1136
  %i.db = or disjoint i64 %i.da, 1, !dbg !1136
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !1094

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.db, %bb.x ], [ %i.co, %bb.t ], !dbg !1139 ; 2 uses
  %i.dc = icmp ugt i64 %i.bx, 1, !dbg !869
  br i1 %i.dc, label %.lr.ph55, label %._crit_edge, !dbg !869

bb.y:                                             ; preds = %._crit_edge
  %i.dd = add i64 %.sroa.02.1.lcssa, 1, !dbg !1140
  %i.de = lshr i64 %.sroa.018.0, 1, !dbg !1141
  %i.df = add nuw i64 %i.de, %.sroa.09.0, !dbg !1143
  br label %bb.f, !dbg !858

bb.z:                                             ; preds = %._crit_edge
  %i.dg = and i64 %.sroa.023.1.lcssa, 1, !dbg !1144
  %.not30 = icmp eq i64 %i.dg, 0, !dbg !1144
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !1147

bb.aa:                                            ; preds = %bb.z
  %i.dh = or i64 %1, 1, !dbg !1148
  %i.di = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true), !dbg !1150
  %i.dj = trunc nuw nsw i64 %i.di to i32, !dbg !1150
  %i.dk = shl nuw nsw i32 %i.dj, 1, !dbg !1155
  %i.dl = xor i32 %i.dk, 126, !dbg !1155
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !1156, !inline_history !1113
  br label %bb.ab, !dbg !1157

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1159
  br label %bb.ac, !dbg !1160

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !1160
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2x_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr nofree noundef readonly align 8 captures(address) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #2 !dbg !1161 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 17, !dbg !1164
  br i1 %i.a, label %.outer._crit_edge, label %.lr.ph, !dbg !1164

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph120 = phi ptr [ %i.gp, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph119 = phi i64 [ %i.ga, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph118 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph117 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.ph120 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph117, null
  %i.c = icmp eq i32 %.sroa.025.0.ph118, 0, !dbg !1166
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph267, !dbg !1166

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit
  %i.d = icmp eq i32 %i.f, 0, !dbg !1166
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph267, !dbg !1166

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit, %bb.a
  %.sroa.0.0.ph.lcssa111 = phi ptr [ %.sroa.0.0.ph120, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit ], [ %0, %bb.a ], [ %i.gp, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit ], [ %1, %bb.a ], [ %i.ga, %.outer ] ; 2 uses
  %i.e = icmp samesign ugt i64 %.sroa.16.0.lcssa, 1, !dbg !1167
  br i1 %i.e, label %bb.c, label %_RINvXNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortTdINtNtNtBb_4sync6atomic6AtomicyEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB33_13TimeHistogram3newINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtB9_4iter4IterdEEEs_0E0EB37_.exit, !dbg !1167

bb.c:                                             ; preds = %.outer._crit_edge
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2O_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2S_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa111, i64 noundef range(i64 0, 17) %.sroa.16.0.lcssa, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !1173
  br label %_RINvXNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortTdINtNtNtBb_4sync6atomic6AtomicyEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB33_13TimeHistogram3newINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtB9_4iter4IterdEEEs_0E0EB37_.exit, !dbg !1173

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0113.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2n_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2r_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph120, i64 noundef %.sroa.16.0113.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !1174
  br label %_RINvXNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortTdINtNtNtBb_4sync6atomic6AtomicyEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB33_13TimeHistogram3newINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtB9_4iter4IterdEEEs_0E0EB37_.exit, !dbg !1175

.lr.ph267:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0112266 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph118, %.lr.ph ]
  %.sroa.16.0113265 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.0112266, -1, !dbg !1178 ; 4 uses
  %i.g = lshr i64 %.sroa.16.0113265, 3, !dbg !1179 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 6, !dbg !1186
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx.i, !dbg !1186 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 112, !dbg !1194
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx2.i, !dbg !1194 ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0113265, 64, !dbg !1197
  br i1 %i.j, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2q_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2u_.exit.i, label %bb.d, !dbg !1197

bb.d:                                             ; preds = %.lr.ph267
  %i.k = tail call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2w_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2A_(ptr noundef nonnull align 8 %.sroa.0.0.ph120, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !1199
  br label %bb.e, !dbg !1200

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2q_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2u_.exit.i: ; preds = %.lr.ph267
  %.val6.i = load i64, ptr %.sroa.0.0.ph120, align 8, !dbg !1201, !noalias !1204, !noundef !14 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !dbg !1201, !noalias !1204, !noundef !14 ; 2 uses
  %i.l = ashr i64 %.val6.i, 63, !dbg !1207
  %i.m = lshr i64 %i.l, 1, !dbg !1211
  %i.n = xor i64 %i.m, %.val6.i, !dbg !1212       ; 2 uses
  %i.o = ashr i64 %.val7.i, 63, !dbg !1213
  %i.p = lshr i64 %i.o, 1, !dbg !1214
  %i.q = xor i64 %i.p, %.val7.i, !dbg !1215       ; 2 uses
  %i.r = icmp slt i64 %i.n, %i.q, !dbg !1216      ; 2 uses
  %.val5.i = load i64, ptr %i.i, align 8, !dbg !1218, !noalias !1204, !noundef !14 ; 2 uses
  %i.s = ashr i64 %.val5.i, 63, !dbg !1220
  %i.t = lshr i64 %i.s, 1, !dbg !1224
  %i.u = xor i64 %i.t, %.val5.i, !dbg !1225       ; 2 uses
  %i.v = icmp slt i64 %i.n, %i.u, !dbg !1226
  %i.w = xor i1 %i.r, %i.v, !dbg !1228
  %i.x = icmp slt i64 %i.q, %i.u, !dbg !1228
  %i.y = xor i1 %i.r, %i.x, !dbg !1228
  %..i.i = select i1 %i.y, ptr %i.i, ptr %i.h, !dbg !1228
  %.sroa.0.0.i.i = select i1 %i.w, ptr %.sroa.0.0.ph120, ptr %..i.i, !dbg !1228
  br label %bb.e, !dbg !1200

_RINvXNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortTdINtNtNtBb_4sync6atomic6AtomicyEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB33_13TimeHistogram3newINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtB9_4iter4IterdEEEs_0E0EB37_.exit: ; preds = %bb.v, %bb.c, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void, !dbg !1230

bb.e:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2q_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2u_.exit.i, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2q_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2u_.exit.i ], [ %i.k, %bb.d ]
  %i.z = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !1231
  %i.aa = sub nuw i64 %i.z, %i.b, !dbg !1231      ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.aa, 4, !dbg !1231 ; 3 uses
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0113265, !dbg !1234
  tail call void @llvm.assume(i1 %i.ab), !dbg !1236
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %i.aa, !dbg !1241 ; 7 uses
  br i1 %.not, label %bb.g, label %bb.f, !dbg !1243

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i64, ptr %.sroa.028.0.ph117, align 8, !dbg !1248, !noundef !14 ; 2 uses
  %.val = load i64, ptr %i.ac, align 8, !dbg !1248, !noundef !14 ; 2 uses
  %i.ad = ashr i64 %.sroa.028.0.val, 63, !dbg !1249
  %i.ae = lshr i64 %i.ad, 1, !dbg !1253
  %i.af = xor i64 %i.ae, %.sroa.028.0.val, !dbg !1254
  %i.ag = ashr i64 %.val, 63, !dbg !1255
  %i.ah = lshr i64 %i.ag, 1, !dbg !1256
  %i.ai = xor i64 %i.ah, %.val, !dbg !1257
  %i.aj = icmp slt i64 %i.af, %i.ai, !dbg !1258
  br i1 %i.aj, label %bb.g, label %.thread, !dbg !1260

bb.g:                                             ; preds = %bb.e, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262), !dbg !1265
  %.not81 = icmp samesign ult i64 %3, %.sroa.16.0113265, !dbg !1266
  br i1 %.not81, label %bb.i, label %bb.h, !dbg !1266, !prof !1270

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0113265, !dbg !1271 ; 4 uses
  br label %bb.j, !dbg !1280

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap(), !dbg !1284
  unreachable, !dbg !1284

bb.j:                                             ; preds = %bb.l, %bb.h
  %.sroa.43.0.i = phi ptr [ %i.ak, %bb.h ], [ %i.cs, %bb.l ], !dbg !1285 ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.27.2.lcssa.i, %bb.l ], !dbg !1285 ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph120, %bb.h ], [ %i.cu, %bb.l ], !dbg !1285 ; 3 uses
  %.sroa.06.0.i = phi ptr [ null, %bb.h ], [ %i.ct, %bb.l ], !dbg !1286
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.0113265, %bb.l ] ; 3 uses
  %i.al = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3), !dbg !1287
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph120, i64 %i.al, !dbg !1290 ; 2 uses
  %i.an = icmp ult ptr %.sroa.9.0.i, %i.am, !dbg !1293
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !dbg !1293

.lr.ph.i:                                         ; preds = %bb.j
  %.val22.i = load i64, ptr %i.ac, align 8, !alias.scope !1295, !noalias !1262, !noundef !14 ; 2 uses
  %i.ao = ashr i64 %.val22.i, 63
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = xor i64 %i.ap, %.val22.i                ; 4 uses
  br label %bb.k, !dbg !1293

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.ca, %bb.k ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.bz, %bb.k ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.bw, %bb.k ] ; 4 uses
  %.val21.i = load i64, ptr %.sroa.9.131.i, align 8, !dbg !1297, !alias.scope !1295, !noalias !1262, !noundef !14 ; 2 uses
  %i.ar = ashr i64 %.val21.i, 63, !dbg !1298
  %i.as = lshr i64 %i.ar, 1, !dbg !1302
  %i.at = xor i64 %i.as, %.val21.i, !dbg !1303
  %i.au = icmp slt i64 %i.at, %i.aq, !dbg !1304   ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16, !dbg !1306
  %.sroa.01.0.i.i = select i1 %i.au, ptr %2, ptr %i.av, !dbg !1311
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i, !dbg !1312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !dbg !1316, !alias.scope !1320, !noalias !1321
  %i.ax = zext i1 %i.au to i64, !dbg !1324
  %i.ay = add i64 %.sroa.27.130.i, %i.ax, !dbg !1325 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16, !dbg !1326 ; 2 uses
  %.val19.i = load i64, ptr %i.az, align 8, !dbg !1329, !alias.scope !1295, !noalias !1262, !noundef !14 ; 2 uses
  %i.ba = ashr i64 %.val19.i, 63, !dbg !1330
  %i.bb = lshr i64 %i.ba, 1, !dbg !1334
  %i.bc = xor i64 %i.bb, %.val19.i, !dbg !1335
  %i.bd = icmp slt i64 %i.bc, %i.aq, !dbg !1336   ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32, !dbg !1338
  %.sroa.01.0.i23.i = select i1 %i.bd, ptr %2, ptr %i.be, !dbg !1341
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.ay, !dbg !1342
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !dbg !1344, !alias.scope !1320, !noalias !1346
  %i.bg = zext i1 %i.bd to i64, !dbg !1349
  %i.bh = add i64 %i.ay, %i.bg, !dbg !1350        ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32, !dbg !1351 ; 2 uses
  %.val17.i = load i64, ptr %i.bi, align 8, !dbg !1353, !alias.scope !1295, !noalias !1262, !noundef !14 ; 2 uses
  %i.bj = ashr i64 %.val17.i, 63, !dbg !1354
  %i.bk = lshr i64 %i.bj, 1, !dbg !1358
  %i.bl = xor i64 %i.bk, %.val17.i, !dbg !1359
  %i.bm = icmp slt i64 %i.bl, %i.aq, !dbg !1360   ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48, !dbg !1362
  %.sroa.01.0.i24.i = select i1 %i.bm, ptr %2, ptr %i.bn, !dbg !1365
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.bh, !dbg !1366
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !dbg !1368, !alias.scope !1320, !noalias !1370
  %i.bp = zext i1 %i.bm to i64, !dbg !1373
  %i.bq = add i64 %i.bh, %i.bp, !dbg !1374        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48, !dbg !1375 ; 2 uses
  %.val15.i = load i64, ptr %i.br, align 8, !dbg !1377, !alias.scope !1295, !noalias !1262, !noundef !14 ; 2 uses
  %i.bs = ashr i64 %.val15.i, 63, !dbg !1378
  %i.bt = lshr i64 %i.bs, 1, !dbg !1382
  %i.bu = xor i64 %i.bt, %.val15.i, !dbg !1383
  %i.bv = icmp slt i64 %i.bu, %i.aq, !dbg !1384   ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64, !dbg !1386 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.bv, ptr %2, ptr %i.bw, !dbg !1389
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.bq, !dbg !1390
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !dbg !1392, !alias.scope !1320, !noalias !1394
  %i.by = zext i1 %i.bv to i64, !dbg !1397
  %i.bz = add i64 %i.bq, %i.by, !dbg !1398        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64, !dbg !1399 ; 3 uses
  %i.cb = icmp ult ptr %i.ca, %i.am, !dbg !1293
  br i1 %i.cb, label %bb.k, label %._crit_edge.i, !dbg !1293

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.j ], [ %i.bw, %bb.k ], !dbg !1285 ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.j ], [ %i.bz, %bb.k ], !dbg !1285 ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.j ], [ %i.ca, %bb.k ], !dbg !1285 ; 3 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.0.0.i37, !dbg !1401 ; 2 uses
  %i.cd = icmp ult ptr %.sroa.9.1.lcssa.i, %i.cc, !dbg !1403
  br i1 %i.cd, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !1403

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.cm, %.lr.ph38.i ], !dbg !1285
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.cp, %.lr.ph38.i ], !dbg !1285 ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.cq, %.lr.ph38.i ], !dbg !1285 ; 2 uses
  %i.ce = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0113265, !dbg !1405
  br i1 %i.ce, label %bb.m, label %bb.l, !dbg !1405

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.cq, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.cp, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.cm, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i64, ptr %.sroa.9.236.i, align 8, !dbg !1406, !alias.scope !1295, !noalias !1262, !noundef !14 ; 2 uses
  %.val14.i = load i64, ptr %i.ac, align 8, !dbg !1406, !alias.scope !1295, !noalias !1262, !noundef !14 ; 2 uses
  %i.cf = ashr i64 %.val.i, 63, !dbg !1407
  %i.cg = lshr i64 %i.cf, 1, !dbg !1411
  %i.ch = xor i64 %i.cg, %.val.i, !dbg !1412
  %i.ci = ashr i64 %.val14.i, 63, !dbg !1413
  %i.cj = lshr i64 %i.ci, 1, !dbg !1414
  %i.ck = xor i64 %i.cj, %.val14.i, !dbg !1415
  %i.cl = icmp slt i64 %i.ch, %i.ck, !dbg !1416   ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16, !dbg !1418 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.cl, ptr %2, ptr %i.cm, !dbg !1421
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i, !dbg !1422
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !dbg !1424, !alias.scope !1320, !noalias !1426
  %i.co = zext i1 %i.cl to i64, !dbg !1429
  %i.cp = add i64 %.sroa.27.235.i, %i.co, !dbg !1430 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16, !dbg !1431 ; 3 uses
  %i.cr = icmp ult ptr %i.cq, %i.cc, !dbg !1403
  br i1 %i.cr, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !1403

bb.l:                                             ; preds = %._crit_edge39.i
  %i.cs = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16, !dbg !1433 ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %.sroa.27.2.lcssa.i, !dbg !1436 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !dbg !1438, !alias.scope !1320, !noalias !1440
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16, !dbg !1443
  br label %bb.j, !dbg !1280

bb.m:                                             ; preds = %._crit_edge39.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !dbg !1445, !alias.scope !1320
  %i.cv = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 4, !dbg !1448
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph120, ptr nonnull align 8 %2, i64 %i.cv, i1 false), !dbg !1448, !alias.scope !1320
  %i.cw = sub i64 %.sroa.16.0113265, %.sroa.27.2.lcssa.i, !dbg !1451 ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0113265, %.sroa.27.2.lcssa.i, !dbg !1452
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !1468

.lr.ph45.i:                                       ; preds = %bb.m
  %i.cx = getelementptr [16 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1, !dbg !1468
  %xtraiter = and i64 %i.cw, 1, !dbg !1468
  %i.cy = icmp eq i64 %.sroa.16.0113265, %.neg, !dbg !1468
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph45.i.new, !dbg !1468

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.cw, -2, !dbg !1468
  br label %bb.n, !dbg !1468

bb.n:                                             ; preds = %bb.n, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.dc, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.n ]
  %i.cz = xor i64 %.sroa.07.043.i, -1, !dbg !1469
  %i.da = getelementptr [16 x i8], ptr %i.ak, i64 %i.cz, !dbg !1471
  %i.db = getelementptr [16 x i8], ptr %i.cx, i64 %.sroa.07.043.i, !dbg !1473
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false), !dbg !1475, !alias.scope !1320
  %i.dc = add nuw i64 %.sroa.07.043.i, 2, !dbg !1477 ; 2 uses
  %i.dd = xor i64 %.sroa.07.043.i, -2, !dbg !1469
  %i.de = getelementptr [16 x i8], ptr %i.ak, i64 %i.dd, !dbg !1471
  %i.df = getelementptr [16 x i8], ptr %i.cx, i64 %.sroa.07.043.i, !dbg !1473
  %i.dg = getelementptr i8, ptr %i.df, i64 16, !dbg !1473
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !dbg !1475, !alias.scope !1320
  %niter.next.1 = add i64 %niter, 2, !dbg !1468   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1468
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !dbg !1468

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1468
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader, !dbg !1468

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.dc, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod331 = trunc i64 %i.cw to i1, !dbg !1468
  tail call void @llvm.assume(i1 %lcmp.mod331), !dbg !1468
  %i.dh = xor i64 %.sroa.07.043.i.epil.init, -1, !dbg !1469
  %i.di = getelementptr [16 x i8], ptr %i.ak, i64 %i.dh, !dbg !1471
  %i.dj = getelementptr [16 x i8], ptr %i.cx, i64 %.sroa.07.043.i.epil.init, !dbg !1473
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false), !dbg !1475, !alias.scope !1320
  br label %.loopexit, !dbg !1484

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.m
  %i.dk = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !1484
  br i1 %i.dk, label %.thread, label %bb.o, !dbg !1485

bb.o:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0113265, !dbg !1486
  br i1 %.not.i38, label %bb.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit, !dbg !1486, !prof !1491

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !1492, !noalias !1493
  unreachable, !dbg !1492

_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i, !dbg !1497
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph120) ]
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2x_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %i.dl, i64 noundef %i.cw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #12, !dbg !1504
  %i.dm = icmp ult i64 %.sroa.27.2.lcssa.i, 17, !dbg !1164
  br i1 %i.dm, label %.outer._crit_edge, label %bb.b, !dbg !1164

.thread:                                          ; preds = %bb.f, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1506), !dbg !1509
  %.not82 = icmp samesign ult i64 %3, %.sroa.16.0113265, !dbg !1510
  br i1 %.not82, label %bb.r, label %bb.q, !dbg !1510, !prof !1270

bb.q:                                             ; preds = %.thread
  %i.dn = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0113265, !dbg !1514 ; 4 uses
  br label %bb.s, !dbg !1522

bb.r:                                             ; preds = %.thread
  tail call void @llvm.trap(), !dbg !1526
  unreachable, !dbg !1526

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i41 = phi ptr [ %i.dn, %bb.q ], [ %i.fv, %bb.u ], !dbg !1527 ; 2 uses
  %.sroa.27.0.i42 = phi i64 [ 0, %bb.q ], [ %i.fx, %bb.u ], !dbg !1527 ; 2 uses
  %.sroa.9.0.i43 = phi ptr [ %.sroa.0.0.ph120, %bb.q ], [ %i.fy, %bb.u ], !dbg !1527 ; 3 uses
  %.sroa.06.0.i44 = phi ptr [ null, %bb.q ], [ %i.fw, %bb.u ], !dbg !1528
  %.sroa.0.0.i45 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0113265, %bb.u ] ; 3 uses
  %i.do = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i45, i64 3), !dbg !1529
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph120, i64 %i.do, !dbg !1532 ; 2 uses
  %i.dq = icmp ult ptr %.sroa.9.0.i43, %i.dp, !dbg !1535
  br i1 %i.dq, label %.lr.ph.i65, label %._crit_edge.i46, !dbg !1535

.lr.ph.i65:                                       ; preds = %bb.s
  %.val22.i66 = load i64, ptr %i.ac, align 8, !alias.scope !1537, !noalias !1506, !noundef !14 ; 2 uses
  %i.dr = ashr i64 %.val22.i66, 63
  %i.ds = lshr i64 %i.dr, 1
  %i.dt = xor i64 %i.ds, %.val22.i66              ; 4 uses
  br label %bb.t, !dbg !1535

bb.t:                                             ; preds = %bb.t, %.lr.ph.i65
  %.sroa.9.131.i67 = phi ptr [ %.sroa.9.0.i43, %.lr.ph.i65 ], [ %i.fd, %bb.t ] ; 6 uses
  %.sroa.27.130.i68 = phi i64 [ %.sroa.27.0.i42, %.lr.ph.i65 ], [ %i.fc, %bb.t ] ; 2 uses
  %.sroa.43.129.i69 = phi ptr [ %.sroa.43.0.i41, %.lr.ph.i65 ], [ %i.ez, %bb.t ] ; 4 uses
  %.val21.i70 = load i64, ptr %.sroa.9.131.i67, align 8, !dbg !1539, !alias.scope !1537, !noalias !1506, !noundef !14 ; 2 uses
  %i.du = ashr i64 %.val21.i70, 63, !dbg !1540
  %i.dv = lshr i64 %i.du, 1, !dbg !1547
  %i.dw = xor i64 %i.dv, %.val21.i70, !dbg !1548
  %i.dx = icmp sge i64 %i.dt, %i.dw, !dbg !1549   ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -16, !dbg !1551
  %.sroa.01.0.i.i71 = select i1 %i.dx, ptr %2, ptr %i.dy, !dbg !1554
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i71, i64 %.sroa.27.130.i68, !dbg !1555
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i67, i64 16, i1 false), !dbg !1557, !alias.scope !1559, !noalias !1560
  %i.ea = zext i1 %i.dx to i64, !dbg !1563
  %i.eb = add i64 %.sroa.27.130.i68, %i.ea, !dbg !1564 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 16, !dbg !1565 ; 2 uses
  %.val19.i72 = load i64, ptr %i.ec, align 8, !dbg !1567, !alias.scope !1537, !noalias !1506, !noundef !14 ; 2 uses
  %i.ed = ashr i64 %.val19.i72, 63, !dbg !1568
  %i.ee = lshr i64 %i.ed, 1, !dbg !1573
  %i.ef = xor i64 %i.ee, %.val19.i72, !dbg !1574
  %i.eg = icmp sge i64 %i.dt, %i.ef, !dbg !1575   ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -32, !dbg !1577
  %.sroa.01.0.i23.i73 = select i1 %i.eg, ptr %2, ptr %i.eh, !dbg !1580
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i73, i64 %i.eb, !dbg !1581
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i64 16, i1 false), !dbg !1583, !alias.scope !1559, !noalias !1585
  %i.ej = zext i1 %i.eg to i64, !dbg !1588
  %i.ek = add i64 %i.eb, %i.ej, !dbg !1589        ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 32, !dbg !1590 ; 2 uses
  %.val17.i74 = load i64, ptr %i.el, align 8, !dbg !1592, !alias.scope !1537, !noalias !1506, !noundef !14 ; 2 uses
  %i.em = ashr i64 %.val17.i74, 63, !dbg !1593
  %i.en = lshr i64 %i.em, 1, !dbg !1598
  %i.eo = xor i64 %i.en, %.val17.i74, !dbg !1599
  %i.ep = icmp sge i64 %i.dt, %i.eo, !dbg !1600   ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -48, !dbg !1602
  %.sroa.01.0.i24.i75 = select i1 %i.ep, ptr %2, ptr %i.eq, !dbg !1605
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i75, i64 %i.ek, !dbg !1606
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !dbg !1608, !alias.scope !1559, !noalias !1610
  %i.es = zext i1 %i.ep to i64, !dbg !1613
  %i.et = add i64 %i.ek, %i.es, !dbg !1614        ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 48, !dbg !1615 ; 2 uses
  %.val15.i76 = load i64, ptr %i.eu, align 8, !dbg !1617, !alias.scope !1537, !noalias !1506, !noundef !14 ; 2 uses
  %i.ev = ashr i64 %.val15.i76, 63, !dbg !1618
  %i.ew = lshr i64 %i.ev, 1, !dbg !1623
  %i.ex = xor i64 %i.ew, %.val15.i76, !dbg !1624
  %i.ey = icmp sge i64 %i.dt, %i.ex, !dbg !1625   ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -64, !dbg !1627 ; 3 uses
  %.sroa.01.0.i25.i77 = select i1 %i.ey, ptr %2, ptr %i.ez, !dbg !1630
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i77, i64 %i.et, !dbg !1631
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i64 16, i1 false), !dbg !1633, !alias.scope !1559, !noalias !1635
  %i.fb = zext i1 %i.ey to i64, !dbg !1638
  %i.fc = add i64 %i.et, %i.fb, !dbg !1639        ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 64, !dbg !1640 ; 3 uses
  %i.fe = icmp ult ptr %i.fd, %i.dp, !dbg !1535
  br i1 %i.fe, label %bb.t, label %._crit_edge.i46, !dbg !1535

._crit_edge.i46:                                  ; preds = %bb.t, %bb.s
  %.sroa.43.1.lcssa.i47 = phi ptr [ %.sroa.43.0.i41, %bb.s ], [ %i.ez, %bb.t ], !dbg !1527 ; 2 uses
  %.sroa.27.1.lcssa.i48 = phi i64 [ %.sroa.27.0.i42, %bb.s ], [ %i.fc, %bb.t ], !dbg !1527 ; 2 uses
  %.sroa.9.1.lcssa.i49 = phi ptr [ %.sroa.9.0.i43, %bb.s ], [ %i.fd, %bb.t ], !dbg !1527 ; 3 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.0.0.i45, !dbg !1642 ; 2 uses
  %i.fg = icmp ult ptr %.sroa.9.1.lcssa.i49, %i.ff, !dbg !1644
  br i1 %i.fg, label %.lr.ph38.i58, label %._crit_edge39.i50, !dbg !1644

._crit_edge39.i50:                                ; preds = %.lr.ph38.i58, %._crit_edge.i46
  %.sroa.43.2.lcssa.i51 = phi ptr [ %.sroa.43.1.lcssa.i47, %._crit_edge.i46 ], [ %i.fp, %.lr.ph38.i58 ], !dbg !1527
  %.sroa.27.2.lcssa.i52 = phi i64 [ %.sroa.27.1.lcssa.i48, %._crit_edge.i46 ], [ %i.fs, %.lr.ph38.i58 ], !dbg !1527 ; 10 uses
  %.sroa.9.2.lcssa.i53 = phi ptr [ %.sroa.9.1.lcssa.i49, %._crit_edge.i46 ], [ %i.ft, %.lr.ph38.i58 ], !dbg !1527 ; 2 uses
  %i.fh = icmp eq i64 %.sroa.0.0.i45, %.sroa.16.0113265, !dbg !1646
  br i1 %i.fh, label %bb.v, label %bb.u, !dbg !1646

.lr.ph38.i58:                                     ; preds = %._crit_edge.i46, %.lr.ph38.i58
  %.sroa.9.236.i59 = phi ptr [ %i.ft, %.lr.ph38.i58 ], [ %.sroa.9.1.lcssa.i49, %._crit_edge.i46 ] ; 3 uses
  %.sroa.27.235.i60 = phi i64 [ %i.fs, %.lr.ph38.i58 ], [ %.sroa.27.1.lcssa.i48, %._crit_edge.i46 ] ; 2 uses
  %.sroa.43.234.i61 = phi ptr [ %i.fp, %.lr.ph38.i58 ], [ %.sroa.43.1.lcssa.i47, %._crit_edge.i46 ]
  %.val.i62 = load i64, ptr %.sroa.9.236.i59, align 8, !dbg !1647, !alias.scope !1537, !noalias !1506, !noundef !14 ; 2 uses
  %.val14.i63 = load i64, ptr %i.ac, align 8, !dbg !1647, !alias.scope !1537, !noalias !1506, !noundef !14 ; 2 uses
  %i.fi = ashr i64 %.val14.i63, 63, !dbg !1648
  %i.fj = lshr i64 %i.fi, 1, !dbg !1653
  %i.fk = xor i64 %i.fj, %.val14.i63, !dbg !1654
  %i.fl = ashr i64 %.val.i62, 63, !dbg !1655
  %i.fm = lshr i64 %i.fl, 1, !dbg !1656
  %i.fn = xor i64 %i.fm, %.val.i62, !dbg !1657
  %i.fo = icmp sge i64 %i.fk, %i.fn, !dbg !1658   ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %.sroa.43.234.i61, i64 -16, !dbg !1660 ; 3 uses
  %.sroa.01.0.i26.i64 = select i1 %i.fo, ptr %2, ptr %i.fp, !dbg !1663
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i64, i64 %.sroa.27.235.i60, !dbg !1664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i59, i64 16, i1 false), !dbg !1666, !alias.scope !1559, !noalias !1668
  %i.fr = zext i1 %i.fo to i64, !dbg !1671
  %i.fs = add i64 %.sroa.27.235.i60, %i.fr, !dbg !1672 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i59, i64 16, !dbg !1673 ; 3 uses
  %i.fu = icmp ult ptr %i.ft, %i.ff, !dbg !1644
  br i1 %i.fu, label %.lr.ph38.i58, label %._crit_edge39.i50, !dbg !1644

bb.u:                                             ; preds = %._crit_edge39.i50
  %i.fv = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i51, i64 -16, !dbg !1675
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i52, !dbg !1678 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i53, i64 16, i1 false), !dbg !1680, !alias.scope !1559, !noalias !1682
  %i.fx = add i64 %.sroa.27.2.lcssa.i52, 1, !dbg !1685
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i53, i64 16, !dbg !1686
  br label %bb.s, !dbg !1522

bb.v:                                             ; preds = %._crit_edge39.i50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0.i44, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !dbg !1688, !alias.scope !1559
  %i.fz = shl nuw nsw i64 %.sroa.27.2.lcssa.i52, 4, !dbg !1691
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph120, ptr nonnull align 8 %2, i64 %i.fz, i1 false), !dbg !1691, !alias.scope !1559
  %i.ga = sub i64 %.sroa.16.0113265, %.sroa.27.2.lcssa.i52, !dbg !1694 ; 6 uses
  %.not47.i54 = icmp eq i64 %.sroa.16.0113265, %.sroa.27.2.lcssa.i52, !dbg !1695
  br i1 %.not47.i54, label %_RINvXNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortTdINtNtNtBb_4sync6atomic6AtomicyEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB33_13TimeHistogram3newINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtB9_4iter4IterdEEEs_0E0EB37_.exit, label %.lr.ph45.i55, !dbg !1704

.lr.ph45.i55:                                     ; preds = %bb.v
  %i.gb = getelementptr [16 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i52 ; 3 uses
  %.neg344 = add i64 %.sroa.27.2.lcssa.i52, 1, !dbg !1704
  %xtraiter339 = and i64 %i.ga, 1, !dbg !1704
  %i.gc = icmp eq i64 %.sroa.16.0113265, %.neg344, !dbg !1704
  br i1 %i.gc, label %.epil.preheader332, label %.lr.ph45.i55.new, !dbg !1704

.lr.ph45.i55.new:                                 ; preds = %.lr.ph45.i55
  %unroll_iter342 = and i64 %i.ga, -2, !dbg !1704
  br label %bb.w, !dbg !1704

bb.w:                                             ; preds = %bb.w, %.lr.ph45.i55.new
  %.sroa.07.043.i56 = phi i64 [ 0, %.lr.ph45.i55.new ], [ %i.gg, %bb.w ] ; 5 uses
  %niter343 = phi i64 [ 0, %.lr.ph45.i55.new ], [ %niter343.next.1, %bb.w ]
  %i.gd = xor i64 %.sroa.07.043.i56, -1, !dbg !1705
  %i.ge = getelementptr [16 x i8], ptr %i.dn, i64 %i.gd, !dbg !1707
  %i.gf = getelementptr [16 x i8], ptr %i.gb, i64 %.sroa.07.043.i56, !dbg !1709
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i64 16, i1 false), !dbg !1711, !alias.scope !1559
  %i.gg = add nuw i64 %.sroa.07.043.i56, 2, !dbg !1713 ; 2 uses
  %i.gh = xor i64 %.sroa.07.043.i56, -2, !dbg !1705
  %i.gi = getelementptr [16 x i8], ptr %i.dn, i64 %i.gh, !dbg !1707
  %i.gj = getelementptr [16 x i8], ptr %i.gb, i64 %.sroa.07.043.i56, !dbg !1709
  %i.gk = getelementptr i8, ptr %i.gj, i64 16, !dbg !1709
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false), !dbg !1711, !alias.scope !1559
  %niter343.next.1 = add i64 %niter343, 2, !dbg !1704 ; 2 uses
  %niter343.ncmp.1 = icmp eq i64 %niter343.next.1, %unroll_iter342, !dbg !1704
  br i1 %niter343.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit.unr-lcssa, label %bb.w, !dbg !1704

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0, !dbg !1704
  br i1 %lcmp.mod340.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit, label %.epil.preheader332, !dbg !1704

.epil.preheader332:                               ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit.unr-lcssa, %.lr.ph45.i55
  %.sroa.07.043.i56.epil.init = phi i64 [ 0, %.lr.ph45.i55 ], [ %i.gg, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod341 = trunc i64 %i.ga to i1, !dbg !1704
  tail call void @llvm.assume(i1 %lcmp.mod341), !dbg !1704
  %i.gl = xor i64 %.sroa.07.043.i56.epil.init, -1, !dbg !1705
  %i.gm = getelementptr [16 x i8], ptr %i.dn, i64 %i.gl, !dbg !1707
  %i.gn = getelementptr [16 x i8], ptr %i.gb, i64 %.sroa.07.043.i56.epil.init, !dbg !1709
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i64 16, i1 false), !dbg !1711, !alias.scope !1559
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit, !dbg !1719

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit.unr-lcssa, %.epil.preheader332
  %i.go = icmp ugt i64 %.sroa.27.2.lcssa.i52, %.sroa.16.0113265, !dbg !1719
  br i1 %i.go, label %bb.x, label %.outer, !dbg !1719, !prof !1491

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i52, !dbg !1725 ; 2 uses
  %i.gq = icmp ult i64 %i.ga, 17, !dbg !1164
  br i1 %i.gq, label %.outer._crit_edge, label %.lr.ph, !dbg !1164

bb.x:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdINtNtNtBa_4sync6atomic6AtomicyEENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB31_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB35_.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i52, i64 noundef %.sroa.16.0113265, i64 noundef %.sroa.16.0113265, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !1730
  unreachable, !dbg !1730
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB20_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB24_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #2 !dbg !1731 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !1732
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !1732

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph, !dbg !1732

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph119 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.gu, %.outer ] ; 22 uses
  %.sroa.16.0.ph118 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.gf, %.outer ] ; 2 uses
  %.sroa.025.0.ph117 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.g, %.outer ] ; 2 uses
  %.sroa.028.0.ph116 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph119 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph116, null
  %i.e = icmp eq i32 %.sroa.025.0.ph117, 0, !dbg !1734
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph264, !dbg !1734

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit
  %i.f = icmp eq i32 %i.g, 0, !dbg !1734
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph264, !dbg !1734

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa110 = phi ptr [ %i.gg, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph119, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit ], [ %i.gu, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit ], [ %i.gf, %.outer ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2n_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2r_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa110, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !1735
  br label %bb.d, !dbg !1739

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0112.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1Q_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB1U_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph119, i64 noundef %.sroa.16.0112.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !1741
  br label %bb.d, !dbg !1739

.lr.ph264:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0111263 = phi i32 [ %i.g, %bb.b ], [ %.sroa.025.0.ph117, %.lr.ph ]
  %.sroa.16.0112262 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ] ; 21 uses
  %i.g = add i32 %.sroa.025.0111263, -1, !dbg !1742 ; 4 uses
  %i.h = lshr i64 %.sroa.16.0112262, 3, !dbg !1743 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.h, 6, !dbg !1748
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx.i, !dbg !1748 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.h, 112, !dbg !1753
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx2.i, !dbg !1753 ; 3 uses
  %i.k = icmp samesign ult i64 %.sroa.16.0112262, 64, !dbg !1756
  br i1 %i.k, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1T_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB1X_.exit.i, label %bb.c, !dbg !1756

bb.c:                                             ; preds = %.lr.ph264
  %i.l = call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1Z_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB23_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph119, ptr noundef nonnull readonly %i.i, ptr noundef nonnull readonly %i.j, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !1758
  br label %bb.e, !dbg !1759

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1T_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB1X_.exit.i: ; preds = %.lr.ph264
  %.val6.i = load i64, ptr %.sroa.0.0.ph119, align 8, !dbg !1760, !alias.scope !1763, !noalias !1766, !noundef !14 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !1760, !alias.scope !1763, !noalias !1766, !noundef !14 ; 2 uses
  %i.m = ashr i64 %.val6.i, 63, !dbg !1768
  %i.n = lshr i64 %i.m, 1, !dbg !1772
  %i.o = xor i64 %i.n, %.val6.i, !dbg !1773       ; 2 uses
  %i.p = ashr i64 %.val7.i, 63, !dbg !1774
  %i.q = lshr i64 %i.p, 1, !dbg !1775
  %i.r = xor i64 %i.q, %.val7.i, !dbg !1776       ; 2 uses
  %i.s = icmp slt i64 %i.o, %i.r, !dbg !1777      ; 2 uses
  %.val5.i = load i64, ptr %i.j, align 8, !dbg !1779, !alias.scope !1763, !noalias !1766, !noundef !14 ; 2 uses
  %i.t = ashr i64 %.val5.i, 63, !dbg !1781
  %i.u = lshr i64 %i.t, 1, !dbg !1785
  %i.v = xor i64 %i.u, %.val5.i, !dbg !1786       ; 2 uses
  %i.w = icmp slt i64 %i.o, %i.v, !dbg !1787
  %i.x = xor i1 %i.s, %i.w, !dbg !1789
  %i.y = icmp slt i64 %i.r, %i.v, !dbg !1789
  %i.z = xor i1 %i.s, %i.y, !dbg !1789
  %..i.i = select i1 %i.z, ptr %i.j, ptr %i.i, !dbg !1789
  %.sroa.0.0.i.i = select i1 %i.x, ptr %.sroa.0.0.ph119, ptr %..i.i, !dbg !1789
  br label %bb.e, !dbg !1759

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void, !dbg !1791

bb.e:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1T_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB1X_.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1T_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB1X_.exit.i ], [ %i.l, %bb.c ]
  %i.aa = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !1792
  %i.ab = sub nuw i64 %i.aa, %i.d, !dbg !1792     ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.ab, 4, !dbg !1792 ; 3 uses
  %i.ac = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0112262, !dbg !1795
  call void @llvm.assume(i1 %i.ac), !dbg !1797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1800
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %i.ab, !dbg !1802 ; 6 uses
  %i.ae = load double, ptr %i.ad, align 8, !dbg !1803 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !1803
  %i.ag = load i64, ptr %i.af, align 8, !dbg !1803
  store double %i.ae, ptr %i.a, align 8, !dbg !1803
  store i64 %i.ag, ptr %i.c, align 8, !dbg !1803
  br i1 %.not, label %bb.g, label %bb.f, !dbg !1806

bb.f:                                             ; preds = %bb.e
  %i.ah = bitcast double %i.ae to i64, !dbg !1806 ; 2 uses
  %.sroa.028.0.val = load i64, ptr %.sroa.028.0.ph116, align 8, !dbg !1811, !noundef !14 ; 2 uses
  %i.ai = ashr i64 %.sroa.028.0.val, 63, !dbg !1812
  %i.aj = lshr i64 %i.ai, 1, !dbg !1816
  %i.ak = xor i64 %i.aj, %.sroa.028.0.val, !dbg !1817
  %i.al = ashr i64 %i.ah, 63, !dbg !1818
  %i.am = lshr i64 %i.al, 1, !dbg !1819
  %i.an = xor i64 %i.am, %i.ah, !dbg !1820
  %i.ao = icmp slt i64 %i.ak, %i.an, !dbg !1821
  br i1 %i.ao, label %bb.g, label %.thread, !dbg !1823

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1825), !dbg !1828
  %.not80 = icmp samesign ult i64 %3, %.sroa.16.0112262, !dbg !1829
  br i1 %.not80, label %bb.i, label %bb.h, !dbg !1829, !prof !1270

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0112262, !dbg !1833 ; 4 uses
  br label %bb.j, !dbg !1841

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap(), !dbg !1845
  unreachable, !dbg !1845

bb.j:                                             ; preds = %bb.l, %bb.h
  %.sroa.43.0.i = phi ptr [ %i.ap, %bb.h ], [ %i.cx, %bb.l ], !dbg !1846 ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.27.2.lcssa.i, %bb.l ], !dbg !1846 ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph119, %bb.h ], [ %i.cz, %bb.l ], !dbg !1846 ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.0112262, %bb.l ] ; 3 uses
  %i.aq = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3), !dbg !1847
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %i.aq, !dbg !1850 ; 2 uses
  %i.as = icmp ult ptr %.sroa.9.0.i, %i.ar, !dbg !1853
  br i1 %i.as, label %.lr.ph.i, label %._crit_edge.i, !dbg !1853

.lr.ph.i:                                         ; preds = %bb.j
  %.val22.i = load i64, ptr %i.ad, align 8, !alias.scope !1855, !noalias !1825, !noundef !14 ; 2 uses
  %i.at = ashr i64 %.val22.i, 63
  %i.au = lshr i64 %i.at, 1
  %i.av = xor i64 %i.au, %.val22.i                ; 4 uses
  br label %bb.k, !dbg !1853

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.cf, %bb.k ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.ce, %bb.k ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.cb, %bb.k ] ; 4 uses
  %.val21.i = load i64, ptr %.sroa.9.131.i, align 8, !dbg !1857, !alias.scope !1855, !noalias !1825, !noundef !14 ; 2 uses
  %i.aw = ashr i64 %.val21.i, 63, !dbg !1858
  %i.ax = lshr i64 %i.aw, 1, !dbg !1862
  %i.ay = xor i64 %i.ax, %.val21.i, !dbg !1863
  %i.az = icmp slt i64 %i.ay, %i.av, !dbg !1864   ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16, !dbg !1866
  %.sroa.01.0.i.i = select i1 %i.az, ptr %2, ptr %i.ba, !dbg !1871
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i, !dbg !1872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !dbg !1876, !alias.scope !1880, !noalias !1881
  %i.bc = zext i1 %i.az to i64, !dbg !1884
  %i.bd = add i64 %.sroa.27.130.i, %i.bc, !dbg !1885 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16, !dbg !1886 ; 2 uses
  %.val19.i = load i64, ptr %i.be, align 8, !dbg !1889, !alias.scope !1855, !noalias !1825, !noundef !14 ; 2 uses
  %i.bf = ashr i64 %.val19.i, 63, !dbg !1890
  %i.bg = lshr i64 %i.bf, 1, !dbg !1894
  %i.bh = xor i64 %i.bg, %.val19.i, !dbg !1895
  %i.bi = icmp slt i64 %i.bh, %i.av, !dbg !1896   ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32, !dbg !1898
  %.sroa.01.0.i23.i = select i1 %i.bi, ptr %2, ptr %i.bj, !dbg !1901
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.bd, !dbg !1902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !dbg !1904, !alias.scope !1880, !noalias !1906
  %i.bl = zext i1 %i.bi to i64, !dbg !1909
  %i.bm = add i64 %i.bd, %i.bl, !dbg !1910        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32, !dbg !1911 ; 2 uses
  %.val17.i = load i64, ptr %i.bn, align 8, !dbg !1913, !alias.scope !1855, !noalias !1825, !noundef !14 ; 2 uses
  %i.bo = ashr i64 %.val17.i, 63, !dbg !1914
  %i.bp = lshr i64 %i.bo, 1, !dbg !1918
  %i.bq = xor i64 %i.bp, %.val17.i, !dbg !1919
  %i.br = icmp slt i64 %i.bq, %i.av, !dbg !1920   ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48, !dbg !1922
  %.sroa.01.0.i24.i = select i1 %i.br, ptr %2, ptr %i.bs, !dbg !1925
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.bm, !dbg !1926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !dbg !1928, !alias.scope !1880, !noalias !1930
  %i.bu = zext i1 %i.br to i64, !dbg !1933
  %i.bv = add i64 %i.bm, %i.bu, !dbg !1934        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48, !dbg !1935 ; 2 uses
  %.val15.i = load i64, ptr %i.bw, align 8, !dbg !1937, !alias.scope !1855, !noalias !1825, !noundef !14 ; 2 uses
  %i.bx = ashr i64 %.val15.i, 63, !dbg !1938
  %i.by = lshr i64 %i.bx, 1, !dbg !1942
  %i.bz = xor i64 %i.by, %.val15.i, !dbg !1943
  %i.ca = icmp slt i64 %i.bz, %i.av, !dbg !1944   ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64, !dbg !1946 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.ca, ptr %2, ptr %i.cb, !dbg !1949
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.bv, !dbg !1950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !dbg !1952, !alias.scope !1880, !noalias !1954
  %i.cd = zext i1 %i.ca to i64, !dbg !1957
  %i.ce = add i64 %i.bv, %i.cd, !dbg !1958        ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64, !dbg !1959 ; 3 uses
  %i.cg = icmp ult ptr %i.cf, %i.ar, !dbg !1853
  br i1 %i.cg, label %bb.k, label %._crit_edge.i, !dbg !1853

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.j ], [ %i.cb, %bb.k ], !dbg !1846 ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.j ], [ %i.ce, %bb.k ], !dbg !1846 ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.j ], [ %i.cf, %bb.k ], !dbg !1846 ; 3 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.0.0.i37, !dbg !1961 ; 2 uses
  %i.ci = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ch, !dbg !1963
  br i1 %i.ci, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !1963

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.cr, %.lr.ph38.i ], !dbg !1846
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.cu, %.lr.ph38.i ], !dbg !1846 ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.cv, %.lr.ph38.i ], !dbg !1846 ; 2 uses
  %i.cj = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0112262, !dbg !1965
  br i1 %i.cj, label %bb.m, label %bb.l, !dbg !1965

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.cv, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.cu, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.cr, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i64, ptr %.sroa.9.236.i, align 8, !dbg !1966, !alias.scope !1855, !noalias !1825, !noundef !14 ; 2 uses
  %.val14.i = load i64, ptr %i.ad, align 8, !dbg !1966, !alias.scope !1855, !noalias !1825, !noundef !14 ; 2 uses
  %i.ck = ashr i64 %.val.i, 63, !dbg !1967
  %i.cl = lshr i64 %i.ck, 1, !dbg !1971
  %i.cm = xor i64 %i.cl, %.val.i, !dbg !1972
  %i.cn = ashr i64 %.val14.i, 63, !dbg !1973
  %i.co = lshr i64 %i.cn, 1, !dbg !1974
  %i.cp = xor i64 %i.co, %.val14.i, !dbg !1975
  %i.cq = icmp slt i64 %i.cm, %i.cp, !dbg !1976   ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16, !dbg !1978 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.cq, ptr %2, ptr %i.cr, !dbg !1981
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i, !dbg !1982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !dbg !1984, !alias.scope !1880, !noalias !1986
  %i.ct = zext i1 %i.cq to i64, !dbg !1989
  %i.cu = add i64 %.sroa.27.235.i, %i.ct, !dbg !1990 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16, !dbg !1991 ; 3 uses
  %i.cw = icmp ult ptr %i.cv, %i.ch, !dbg !1963
  br i1 %i.cw, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !1963

bb.l:                                             ; preds = %._crit_edge39.i
  %i.cx = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16, !dbg !1993 ; 2 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.27.2.lcssa.i, !dbg !1996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !dbg !1998, !alias.scope !1880, !noalias !2000
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16, !dbg !2003
  br label %bb.j, !dbg !1841

bb.m:                                             ; preds = %._crit_edge39.i
  %i.da = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 4, !dbg !2005
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph119, ptr nonnull align 8 %2, i64 %i.da, i1 false), !dbg !2005, !alias.scope !1880
  %i.db = sub i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i, !dbg !2009 ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i, !dbg !2010
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !2019

.lr.ph45.i:                                       ; preds = %bb.m
  %i.dc = getelementptr [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1, !dbg !2019
  %xtraiter = and i64 %i.db, 1, !dbg !2019
  %i.dd = icmp eq i64 %.sroa.16.0112262, %.neg, !dbg !2019
  br i1 %i.dd, label %.epil.preheader, label %.lr.ph45.i.new, !dbg !2019

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.db, -2, !dbg !2019
  br label %bb.n, !dbg !2019

bb.n:                                             ; preds = %bb.n, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.dh, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.n ]
  %i.de = xor i64 %.sroa.07.043.i, -1, !dbg !2020
  %i.df = getelementptr [16 x i8], ptr %i.ap, i64 %i.de, !dbg !2022
  %i.dg = getelementptr [16 x i8], ptr %i.dc, i64 %.sroa.07.043.i, !dbg !2024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !dbg !2026, !alias.scope !1880
  %i.dh = add nuw i64 %.sroa.07.043.i, 2, !dbg !2028 ; 2 uses
  %i.di = xor i64 %.sroa.07.043.i, -2, !dbg !2020
  %i.dj = getelementptr [16 x i8], ptr %i.ap, i64 %i.di, !dbg !2022
  %i.dk = getelementptr [16 x i8], ptr %i.dc, i64 %.sroa.07.043.i, !dbg !2024
  %i.dl = getelementptr i8, ptr %i.dk, i64 16, !dbg !2024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false), !dbg !2026, !alias.scope !1880
  %niter.next.1 = add i64 %niter, 2, !dbg !2019   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2019
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !dbg !2019

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2019
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader, !dbg !2019

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.dh, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod331 = trunc i64 %i.db to i1, !dbg !2019
  call void @llvm.assume(i1 %lcmp.mod331), !dbg !2019
  %i.dm = xor i64 %.sroa.07.043.i.epil.init, -1, !dbg !2020
  %i.dn = getelementptr [16 x i8], ptr %i.ap, i64 %i.dm, !dbg !2022
  %i.do = getelementptr [16 x i8], ptr %i.dc, i64 %.sroa.07.043.i.epil.init, !dbg !2024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !dbg !2026, !alias.scope !1880
  br label %.loopexit, !dbg !2034

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.m
  %i.dp = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !2034
  br i1 %i.dp, label %.thread, label %bb.o, !dbg !2035

bb.o:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0112262, !dbg !2036
  br i1 %.not.i38, label %bb.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit, !dbg !2036, !prof !1491

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !2041, !noalias !2042
  unreachable, !dbg !2041

_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %bb.o
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i, !dbg !2046
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph119) ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB20_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB24_(ptr noalias nofree noundef nonnull align 8 %i.dq, i64 noundef %i.db, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #12, !dbg !2053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2055
  %i.dr = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !1732
  br i1 %i.dr, label %.outer._crit_edge, label %bb.b, !dbg !1732

.thread:                                          ; preds = %bb.f, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !2056), !dbg !2059
  %.not81 = icmp samesign ult i64 %3, %.sroa.16.0112262, !dbg !2060
  br i1 %.not81, label %bb.r, label %bb.q, !dbg !2060, !prof !1270

bb.q:                                             ; preds = %.thread
  %i.ds = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0112262, !dbg !2064 ; 4 uses
  br label %bb.s, !dbg !2072

bb.r:                                             ; preds = %.thread
  call void @llvm.trap(), !dbg !2076
  unreachable, !dbg !2076

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i41 = phi ptr [ %i.ds, %bb.q ], [ %i.ga, %bb.u ], !dbg !2077 ; 2 uses
  %.sroa.27.0.i42 = phi i64 [ 0, %bb.q ], [ %i.gc, %bb.u ], !dbg !2077 ; 2 uses
  %.sroa.9.0.i43 = phi ptr [ %.sroa.0.0.ph119, %bb.q ], [ %i.gd, %bb.u ], !dbg !2077 ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0112262, %bb.u ] ; 3 uses
  %i.dt = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i44, i64 3), !dbg !2078
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %i.dt, !dbg !2081 ; 2 uses
  %i.dv = icmp ult ptr %.sroa.9.0.i43, %i.du, !dbg !2084
  br i1 %i.dv, label %.lr.ph.i64, label %._crit_edge.i45, !dbg !2084

.lr.ph.i64:                                       ; preds = %bb.s
  %.val22.i65 = load i64, ptr %i.ad, align 8, !alias.scope !2086, !noalias !2056, !noundef !14 ; 2 uses
  %i.dw = ashr i64 %.val22.i65, 63
  %i.dx = lshr i64 %i.dw, 1
  %i.dy = xor i64 %i.dx, %.val22.i65              ; 4 uses
  br label %bb.t, !dbg !2084

bb.t:                                             ; preds = %bb.t, %.lr.ph.i64
  %.sroa.9.131.i66 = phi ptr [ %.sroa.9.0.i43, %.lr.ph.i64 ], [ %i.fi, %bb.t ] ; 6 uses
  %.sroa.27.130.i67 = phi i64 [ %.sroa.27.0.i42, %.lr.ph.i64 ], [ %i.fh, %bb.t ] ; 2 uses
  %.sroa.43.129.i68 = phi ptr [ %.sroa.43.0.i41, %.lr.ph.i64 ], [ %i.fe, %bb.t ] ; 4 uses
  %.val21.i69 = load i64, ptr %.sroa.9.131.i66, align 8, !dbg !2088, !alias.scope !2086, !noalias !2056, !noundef !14 ; 2 uses
  %i.dz = ashr i64 %.val21.i69, 63, !dbg !2089
  %i.ea = lshr i64 %i.dz, 1, !dbg !2095
  %i.eb = xor i64 %i.ea, %.val21.i69, !dbg !2096
  %i.ec = icmp sge i64 %i.dy, %i.eb, !dbg !2097   ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -16, !dbg !2099
  %.sroa.01.0.i.i70 = select i1 %i.ec, ptr %2, ptr %i.ed, !dbg !2102
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i70, i64 %.sroa.27.130.i67, !dbg !2103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i66, i64 16, i1 false), !dbg !2105, !alias.scope !2107, !noalias !2108
  %i.ef = zext i1 %i.ec to i64, !dbg !2111
  %i.eg = add i64 %.sroa.27.130.i67, %i.ef, !dbg !2112 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 16, !dbg !2113 ; 2 uses
  %.val19.i71 = load i64, ptr %i.eh, align 8, !dbg !2115, !alias.scope !2086, !noalias !2056, !noundef !14 ; 2 uses
  %i.ei = ashr i64 %.val19.i71, 63, !dbg !2116
  %i.ej = lshr i64 %i.ei, 1, !dbg !2121
  %i.ek = xor i64 %i.ej, %.val19.i71, !dbg !2122
  %i.el = icmp sge i64 %i.dy, %i.ek, !dbg !2123   ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -32, !dbg !2125
  %.sroa.01.0.i23.i72 = select i1 %i.el, ptr %2, ptr %i.em, !dbg !2128
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i72, i64 %i.eg, !dbg !2129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i64 16, i1 false), !dbg !2131, !alias.scope !2107, !noalias !2133
  %i.eo = zext i1 %i.el to i64, !dbg !2136
  %i.ep = add i64 %i.eg, %i.eo, !dbg !2137        ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 32, !dbg !2138 ; 2 uses
  %.val17.i73 = load i64, ptr %i.eq, align 8, !dbg !2140, !alias.scope !2086, !noalias !2056, !noundef !14 ; 2 uses
  %i.er = ashr i64 %.val17.i73, 63, !dbg !2141
  %i.es = lshr i64 %i.er, 1, !dbg !2146
  %i.et = xor i64 %i.es, %.val17.i73, !dbg !2147
  %i.eu = icmp sge i64 %i.dy, %i.et, !dbg !2148   ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -48, !dbg !2150
  %.sroa.01.0.i24.i74 = select i1 %i.eu, ptr %2, ptr %i.ev, !dbg !2153
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i74, i64 %i.ep, !dbg !2154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 16, i1 false), !dbg !2156, !alias.scope !2107, !noalias !2158
  %i.ex = zext i1 %i.eu to i64, !dbg !2161
  %i.ey = add i64 %i.ep, %i.ex, !dbg !2162        ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 48, !dbg !2163 ; 2 uses
  %.val15.i75 = load i64, ptr %i.ez, align 8, !dbg !2165, !alias.scope !2086, !noalias !2056, !noundef !14 ; 2 uses
  %i.fa = ashr i64 %.val15.i75, 63, !dbg !2166
  %i.fb = lshr i64 %i.fa, 1, !dbg !2171
  %i.fc = xor i64 %i.fb, %.val15.i75, !dbg !2172
  %i.fd = icmp sge i64 %i.dy, %i.fc, !dbg !2173   ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -64, !dbg !2175 ; 3 uses
  %.sroa.01.0.i25.i76 = select i1 %i.fd, ptr %2, ptr %i.fe, !dbg !2178
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i76, i64 %i.ey, !dbg !2179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i64 16, i1 false), !dbg !2181, !alias.scope !2107, !noalias !2183
  %i.fg = zext i1 %i.fd to i64, !dbg !2186
  %i.fh = add i64 %i.ey, %i.fg, !dbg !2187        ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 64, !dbg !2188 ; 3 uses
  %i.fj = icmp ult ptr %i.fi, %i.du, !dbg !2084
  br i1 %i.fj, label %bb.t, label %._crit_edge.i45, !dbg !2084

._crit_edge.i45:                                  ; preds = %bb.t, %bb.s
  %.sroa.43.1.lcssa.i46 = phi ptr [ %.sroa.43.0.i41, %bb.s ], [ %i.fe, %bb.t ], !dbg !2077 ; 2 uses
  %.sroa.27.1.lcssa.i47 = phi i64 [ %.sroa.27.0.i42, %bb.s ], [ %i.fh, %bb.t ], !dbg !2077 ; 2 uses
  %.sroa.9.1.lcssa.i48 = phi ptr [ %.sroa.9.0.i43, %bb.s ], [ %i.fi, %bb.t ], !dbg !2077 ; 3 uses
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.0.0.i44, !dbg !2190 ; 2 uses
  %i.fl = icmp ult ptr %.sroa.9.1.lcssa.i48, %i.fk, !dbg !2192
  br i1 %i.fl, label %.lr.ph38.i57, label %._crit_edge39.i49, !dbg !2192

._crit_edge39.i49:                                ; preds = %.lr.ph38.i57, %._crit_edge.i45
  %.sroa.43.2.lcssa.i50 = phi ptr [ %.sroa.43.1.lcssa.i46, %._crit_edge.i45 ], [ %i.fu, %.lr.ph38.i57 ], !dbg !2077
  %.sroa.27.2.lcssa.i51 = phi i64 [ %.sroa.27.1.lcssa.i47, %._crit_edge.i45 ], [ %i.fx, %.lr.ph38.i57 ], !dbg !2077 ; 10 uses
  %.sroa.9.2.lcssa.i52 = phi ptr [ %.sroa.9.1.lcssa.i48, %._crit_edge.i45 ], [ %i.fy, %.lr.ph38.i57 ], !dbg !2077 ; 2 uses
  %i.fm = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.0112262, !dbg !2194
  br i1 %i.fm, label %bb.v, label %bb.u, !dbg !2194

.lr.ph38.i57:                                     ; preds = %._crit_edge.i45, %.lr.ph38.i57
  %.sroa.9.236.i58 = phi ptr [ %i.fy, %.lr.ph38.i57 ], [ %.sroa.9.1.lcssa.i48, %._crit_edge.i45 ] ; 3 uses
  %.sroa.27.235.i59 = phi i64 [ %i.fx, %.lr.ph38.i57 ], [ %.sroa.27.1.lcssa.i47, %._crit_edge.i45 ] ; 2 uses
  %.sroa.43.234.i60 = phi ptr [ %i.fu, %.lr.ph38.i57 ], [ %.sroa.43.1.lcssa.i46, %._crit_edge.i45 ]
  %.val.i61 = load i64, ptr %.sroa.9.236.i58, align 8, !dbg !2195, !alias.scope !2086, !noalias !2056, !noundef !14 ; 2 uses
  %.val14.i62 = load i64, ptr %i.ad, align 8, !dbg !2195, !alias.scope !2086, !noalias !2056, !noundef !14 ; 2 uses
  %i.fn = ashr i64 %.val14.i62, 63, !dbg !2196
  %i.fo = lshr i64 %i.fn, 1, !dbg !2201
  %i.fp = xor i64 %i.fo, %.val14.i62, !dbg !2202
  %i.fq = ashr i64 %.val.i61, 63, !dbg !2203
  %i.fr = lshr i64 %i.fq, 1, !dbg !2204
  %i.fs = xor i64 %i.fr, %.val.i61, !dbg !2205
  %i.ft = icmp sge i64 %i.fp, %i.fs, !dbg !2206   ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %.sroa.43.234.i60, i64 -16, !dbg !2208 ; 3 uses
  %.sroa.01.0.i26.i63 = select i1 %i.ft, ptr %2, ptr %i.fu, !dbg !2211
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i63, i64 %.sroa.27.235.i59, !dbg !2212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i58, i64 16, i1 false), !dbg !2214, !alias.scope !2107, !noalias !2216
  %i.fw = zext i1 %i.ft to i64, !dbg !2219
  %i.fx = add i64 %.sroa.27.235.i59, %i.fw, !dbg !2220 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i58, i64 16, !dbg !2221 ; 3 uses
  %i.fz = icmp ult ptr %i.fy, %i.fk, !dbg !2192
  br i1 %i.fz, label %.lr.ph38.i57, label %._crit_edge39.i49, !dbg !2192

bb.u:                                             ; preds = %._crit_edge39.i49
  %i.ga = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i50, i64 -16, !dbg !2223
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i51, !dbg !2226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i52, i64 16, i1 false), !dbg !2228, !alias.scope !2107, !noalias !2230
  %i.gc = add i64 %.sroa.27.2.lcssa.i51, 1, !dbg !2233
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i52, i64 16, !dbg !2234
  br label %bb.s, !dbg !2072

bb.v:                                             ; preds = %._crit_edge39.i49
  %i.ge = shl nuw nsw i64 %.sroa.27.2.lcssa.i51, 4, !dbg !2236
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph119, ptr nonnull align 8 %2, i64 %i.ge, i1 false), !dbg !2236, !alias.scope !2107
  %i.gf = sub i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i51, !dbg !2240 ; 6 uses
  %.not47.i53 = icmp eq i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i51, !dbg !2241
  %i.gg = getelementptr [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i51 ; 4 uses
  br i1 %.not47.i53, label %.outer.thread, label %.lr.ph45.i54.preheader, !dbg !2250

.lr.ph45.i54.preheader:                           ; preds = %bb.v
  %.neg343 = add i64 %.sroa.27.2.lcssa.i51, 1, !dbg !2250
  %xtraiter338 = and i64 %i.gf, 1, !dbg !2250
  %i.gh = icmp eq i64 %.sroa.16.0112262, %.neg343, !dbg !2250
  br i1 %i.gh, label %.lr.ph45.i54.epil.preheader, label %.lr.ph45.i54.preheader.new, !dbg !2250

.lr.ph45.i54.preheader.new:                       ; preds = %.lr.ph45.i54.preheader
  %unroll_iter341 = and i64 %i.gf, -2, !dbg !2250
  br label %.lr.ph45.i54, !dbg !2250

.lr.ph45.i54:                                     ; preds = %.lr.ph45.i54, %.lr.ph45.i54.preheader.new
  %.sroa.07.043.i55 = phi i64 [ 0, %.lr.ph45.i54.preheader.new ], [ %i.gl, %.lr.ph45.i54 ] ; 5 uses
  %niter342 = phi i64 [ 0, %.lr.ph45.i54.preheader.new ], [ %niter342.next.1, %.lr.ph45.i54 ]
  %i.gi = xor i64 %.sroa.07.043.i55, -1, !dbg !2251
  %i.gj = getelementptr [16 x i8], ptr %i.ds, i64 %i.gi, !dbg !2253
  %i.gk = getelementptr [16 x i8], ptr %i.gg, i64 %.sroa.07.043.i55, !dbg !2255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i64 16, i1 false), !dbg !2257, !alias.scope !2107
  %i.gl = add nuw i64 %.sroa.07.043.i55, 2, !dbg !2259 ; 2 uses
  %i.gm = xor i64 %.sroa.07.043.i55, -2, !dbg !2251
  %i.gn = getelementptr [16 x i8], ptr %i.ds, i64 %i.gm, !dbg !2253
  %i.go = getelementptr [16 x i8], ptr %i.gg, i64 %.sroa.07.043.i55, !dbg !2255
  %i.gp = getelementptr i8, ptr %i.go, i64 16, !dbg !2255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i64 16, i1 false), !dbg !2257, !alias.scope !2107
  %niter342.next.1 = add i64 %niter342, 2, !dbg !2250 ; 2 uses
  %niter342.ncmp.1 = icmp eq i64 %niter342.next.1, %unroll_iter341, !dbg !2250
  br i1 %niter342.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit.unr-lcssa, label %.lr.ph45.i54, !dbg !2250

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit.unr-lcssa: ; preds = %.lr.ph45.i54
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0, !dbg !2250
  br i1 %lcmp.mod339.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit, label %.lr.ph45.i54.epil.preheader, !dbg !2250

.lr.ph45.i54.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit.unr-lcssa, %.lr.ph45.i54.preheader
  %.sroa.07.043.i55.epil.init = phi i64 [ 0, %.lr.ph45.i54.preheader ], [ %i.gl, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod340 = trunc i64 %i.gf to i1, !dbg !2250
  call void @llvm.assume(i1 %lcmp.mod340), !dbg !2250
  %i.gq = xor i64 %.sroa.07.043.i55.epil.init, -1, !dbg !2251
  %i.gr = getelementptr [16 x i8], ptr %i.ds, i64 %i.gq, !dbg !2253
  %i.gs = getelementptr [16 x i8], ptr %i.gg, i64 %.sroa.07.043.i55.epil.init, !dbg !2255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 16, i1 false), !dbg !2257, !alias.scope !2107
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit, !dbg !2265

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit.unr-lcssa, %.lr.ph45.i54.epil.preheader
  %i.gt = icmp ugt i64 %.sroa.27.2.lcssa.i51, %.sroa.16.0112262, !dbg !2265
  br i1 %i.gt, label %bb.w, label %.outer, !dbg !2265, !prof !1491

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2055
  br label %.outer._crit_edge, !dbg !1732

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i51, !dbg !2271 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2055
  %i.gv = icmp ult i64 %i.gf, 33, !dbg !1732
  br i1 %i.gv, label %.outer._crit_edge, label %.lr.ph, !dbg !1732

bb.w:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTdyENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0E0EB2y_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i51, i64 noundef %.sroa.16.0112262, i64 noundef %.sroa.16.0112262, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !2276
  unreachable, !dbg !2276
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #2 !dbg !2277 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !2278
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !2278

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph119 = phi ptr [ %i.gt, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph118 = phi i64 [ %i.ge, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph117 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph116 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph119 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph116, null
  %i.d = icmp eq i32 %.sroa.025.0.ph117, 0, !dbg !2280
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph264, !dbg !2280

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit
  %i.e = icmp eq i32 %i.f, 0, !dbg !2280
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph264, !dbg !2280

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa110 = phi ptr [ %i.gf, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph119, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit ], [ %i.gt, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit ], [ %i.ge, %.outer ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa110, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !2281
  br label %bb.d, !dbg !2284

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0112.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph119, i64 noundef %.sroa.16.0112.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !2286
  br label %bb.d, !dbg !2284

.lr.ph264:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0111263 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph117, %.lr.ph ]
  %.sroa.16.0112262 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ] ; 19 uses
  %i.f = add i32 %.sroa.025.0111263, -1, !dbg !2287 ; 4 uses
  %i.g = lshr i64 %.sroa.16.0112262, 3, !dbg !2288 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 5, !dbg !2293
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx.i, !dbg !2293 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 56, !dbg !2298
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx2.i, !dbg !2298 ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0112262, 64, !dbg !2301
  br i1 %i.j, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3dNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i, label %bb.c, !dbg !2301

bb.c:                                             ; preds = %.lr.ph264
  %i.k = call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph119, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !2303
  br label %bb.e, !dbg !2304

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3dNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i: ; preds = %.lr.ph264
  %.val6.i = load i64, ptr %.sroa.0.0.ph119, align 8, !dbg !2305, !alias.scope !2308, !noalias !2311, !noundef !14 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !dbg !2305, !alias.scope !2308, !noalias !2311, !noundef !14 ; 2 uses
  %i.l = ashr i64 %.val6.i, 63, !dbg !2313
  %i.m = lshr i64 %i.l, 1, !dbg !2317
  %i.n = xor i64 %i.m, %.val6.i, !dbg !2318       ; 2 uses
  %i.o = ashr i64 %.val7.i, 63, !dbg !2319
  %i.p = lshr i64 %i.o, 1, !dbg !2320
  %i.q = xor i64 %i.p, %.val7.i, !dbg !2321       ; 2 uses
  %i.r = icmp slt i64 %i.n, %i.q, !dbg !2322      ; 2 uses
  %.val5.i = load i64, ptr %i.i, align 8, !dbg !2324, !alias.scope !2308, !noalias !2311, !noundef !14 ; 2 uses
  %i.s = ashr i64 %.val5.i, 63, !dbg !2326
  %i.t = lshr i64 %i.s, 1, !dbg !2330
  %i.u = xor i64 %i.t, %.val5.i, !dbg !2331       ; 2 uses
  %i.v = icmp slt i64 %i.n, %i.u, !dbg !2332
  %i.w = xor i1 %i.r, %i.v, !dbg !2334
  %i.x = icmp slt i64 %i.q, %i.u, !dbg !2334
  %i.y = xor i1 %i.r, %i.x, !dbg !2334
  %..i.i = select i1 %i.y, ptr %i.i, ptr %i.h, !dbg !2334
  %.sroa.0.0.i.i = select i1 %i.w, ptr %.sroa.0.0.ph119, ptr %..i.i, !dbg !2334
  br label %bb.e, !dbg !2304

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void, !dbg !2336

bb.e:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3dNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3dNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i ], [ %i.k, %bb.c ]
  %i.z = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !2337
  %i.aa = sub nuw i64 %i.z, %i.c, !dbg !2337      ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.aa, 3, !dbg !2337 ; 3 uses
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0112262, !dbg !2340
  call void @llvm.assume(i1 %i.ab), !dbg !2342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2345
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %i.aa, !dbg !2347 ; 5 uses
  %i.ad = load double, ptr %i.ac, align 8, !dbg !2348 ; 2 uses
  store double %i.ad, ptr %i.a, align 8, !dbg !2348
  br i1 %.not, label %bb.g, label %bb.f, !dbg !2351

bb.f:                                             ; preds = %bb.e
  %i.ae = bitcast double %i.ad to i64, !dbg !2351 ; 2 uses
  %.sroa.028.0.val = load i64, ptr %.sroa.028.0.ph116, align 8, !dbg !2356, !noundef !14 ; 2 uses
  %i.af = ashr i64 %.sroa.028.0.val, 63, !dbg !2357
  %i.ag = lshr i64 %i.af, 1, !dbg !2361
  %i.ah = xor i64 %i.ag, %.sroa.028.0.val, !dbg !2362
  %i.ai = ashr i64 %i.ae, 63, !dbg !2363
  %i.aj = lshr i64 %i.ai, 1, !dbg !2364
  %i.ak = xor i64 %i.aj, %i.ae, !dbg !2365
  %i.al = icmp slt i64 %i.ah, %i.ak, !dbg !2366
  br i1 %i.al, label %bb.g, label %.thread, !dbg !2368

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !2370), !dbg !2373
  call void @llvm.experimental.noalias.scope.decl(metadata !2374), !dbg !2373
  %.not80 = icmp samesign ult i64 %3, %.sroa.16.0112262, !dbg !2376
  br i1 %.not80, label %bb.i, label %bb.h, !dbg !2376, !prof !1270

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0112262, !dbg !2380 ; 3 uses
  br label %bb.j, !dbg !2388

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap(), !dbg !2392
  unreachable, !dbg !2392

bb.j:                                             ; preds = %bb.l, %bb.h
  %.sroa.43.0.i = phi ptr [ %i.am, %bb.h ], [ %i.cu, %bb.l ], !dbg !2393 ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.27.2.lcssa.i, %bb.l ], !dbg !2393 ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph119, %bb.h ], [ %i.cx, %bb.l ], !dbg !2393 ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.0112262, %bb.l ] ; 3 uses
  %i.an = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3), !dbg !2394
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph119, i64 %i.an, !dbg !2397 ; 2 uses
  %i.ap = icmp ult ptr %.sroa.9.0.i, %i.ao, !dbg !2400
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i, !dbg !2400

.lr.ph.i:                                         ; preds = %bb.j
  %.val22.i = load i64, ptr %i.ac, align 8, !alias.scope !2370, !noalias !2374, !noundef !14 ; 2 uses
  %i.aq = ashr i64 %.val22.i, 63
  %i.ar = lshr i64 %i.aq, 1
  %i.as = xor i64 %i.ar, %.val22.i                ; 4 uses
  br label %bb.k, !dbg !2400

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.cc, %bb.k ] ; 5 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.by, %bb.k ] ; 4 uses
  %.val21.i = load i64, ptr %.sroa.9.131.i, align 8, !dbg !2402, !alias.scope !2370, !noalias !2374, !noundef !14 ; 3 uses
  %i.at = ashr i64 %.val21.i, 63, !dbg !2403
  %i.au = lshr i64 %i.at, 1, !dbg !2407
  %i.av = xor i64 %i.au, %.val21.i, !dbg !2408
  %i.aw = icmp slt i64 %i.av, %i.as, !dbg !2409   ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8, !dbg !2411
  %.sroa.01.0.i.i = select i1 %i.aw, ptr %2, ptr %i.ax, !dbg !2416
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i, !dbg !2417
  store i64 %.val21.i, ptr %i.ay, align 8, !dbg !2421, !alias.scope !2374, !noalias !2425
  %i.az = zext i1 %i.aw to i64, !dbg !2428
  %i.ba = add i64 %.sroa.27.130.i, %i.az, !dbg !2429 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8, !dbg !2430
  %.val19.i = load i64, ptr %i.bb, align 8, !dbg !2433, !alias.scope !2370, !noalias !2374, !noundef !14 ; 3 uses
  %i.bc = ashr i64 %.val19.i, 63, !dbg !2434
  %i.bd = lshr i64 %i.bc, 1, !dbg !2438
  %i.be = xor i64 %i.bd, %.val19.i, !dbg !2439
  %i.bf = icmp slt i64 %i.be, %i.as, !dbg !2440   ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16, !dbg !2442
  %.sroa.01.0.i23.i = select i1 %i.bf, ptr %2, ptr %i.bg, !dbg !2445
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i23.i, i64 %i.ba, !dbg !2446
  store i64 %.val19.i, ptr %i.bh, align 8, !dbg !2448, !alias.scope !2374, !noalias !2450
  %i.bi = zext i1 %i.bf to i64, !dbg !2453
  %i.bj = add i64 %i.ba, %i.bi, !dbg !2454        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16, !dbg !2455
  %.val17.i = load i64, ptr %i.bk, align 8, !dbg !2457, !alias.scope !2370, !noalias !2374, !noundef !14 ; 3 uses
  %i.bl = ashr i64 %.val17.i, 63, !dbg !2458
  %i.bm = lshr i64 %i.bl, 1, !dbg !2462
  %i.bn = xor i64 %i.bm, %.val17.i, !dbg !2463
  %i.bo = icmp slt i64 %i.bn, %i.as, !dbg !2464   ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24, !dbg !2466
  %.sroa.01.0.i24.i = select i1 %i.bo, ptr %2, ptr %i.bp, !dbg !2469
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i24.i, i64 %i.bj, !dbg !2470
  store i64 %.val17.i, ptr %i.bq, align 8, !dbg !2472, !alias.scope !2374, !noalias !2474
  %i.br = zext i1 %i.bo to i64, !dbg !2477
  %i.bs = add i64 %i.bj, %i.br, !dbg !2478        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24, !dbg !2479
  %.val15.i = load i64, ptr %i.bt, align 8, !dbg !2481, !alias.scope !2370, !noalias !2374, !noundef !14 ; 3 uses
  %i.bu = ashr i64 %.val15.i, 63, !dbg !2482
  %i.bv = lshr i64 %i.bu, 1, !dbg !2486
  %i.bw = xor i64 %i.bv, %.val15.i, !dbg !2487
  %i.bx = icmp slt i64 %i.bw, %i.as, !dbg !2488   ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32, !dbg !2490 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.bx, ptr %2, ptr %i.by, !dbg !2493
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i, i64 %i.bs, !dbg !2494
  store i64 %.val15.i, ptr %i.bz, align 8, !dbg !2496, !alias.scope !2374, !noalias !2498
  %i.ca = zext i1 %i.bx to i64, !dbg !2501
  %i.cb = add i64 %i.bs, %i.ca, !dbg !2502        ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32, !dbg !2503 ; 3 uses
  %i.cd = icmp ult ptr %i.cc, %i.ao, !dbg !2400
  br i1 %i.cd, label %bb.k, label %._crit_edge.i, !dbg !2400

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.j ], [ %i.by, %bb.k ], !dbg !2393 ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.j ], [ %i.cb, %bb.k ], !dbg !2393 ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.j ], [ %i.cc, %bb.k ], !dbg !2393 ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.0.0.i37, !dbg !2505 ; 2 uses
  %i.cf = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ce, !dbg !2507
  br i1 %i.cf, label %.lr.ph38.i.preheader, label %._crit_edge39.i, !dbg !2507

.lr.ph38.i.preheader:                             ; preds = %._crit_edge.i
  %.val14.i = load i64, ptr %i.ac, align 8, !alias.scope !2370, !noalias !2374, !noundef !14 ; 2 uses
  %i.cg = ashr i64 %.val14.i, 63
  %i.ch = lshr i64 %i.cg, 1
  %i.ci = xor i64 %i.ch, %.val14.i
  br label %.lr.ph38.i, !dbg !2507

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.co, %.lr.ph38.i ], !dbg !2393
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.cr, %.lr.ph38.i ], !dbg !2393 ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.cs, %.lr.ph38.i ], !dbg !2393 ; 2 uses
  %i.cj = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0112262, !dbg !2509
  br i1 %i.cj, label %bb.m, label %bb.l, !dbg !2509

.lr.ph38.i:                                       ; preds = %.lr.ph38.i.preheader, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.cs, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %.lr.ph38.i.preheader ] ; 2 uses
  %.sroa.27.235.i = phi i64 [ %i.cr, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %.lr.ph38.i.preheader ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.co, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %.lr.ph38.i.preheader ]
  %.val.i = load i64, ptr %.sroa.9.236.i, align 8, !dbg !2510, !alias.scope !2370, !noalias !2374, !noundef !14 ; 3 uses
  %i.ck = ashr i64 %.val.i, 63, !dbg !2511
  %i.cl = lshr i64 %i.ck, 1, !dbg !2515
  %i.cm = xor i64 %i.cl, %.val.i, !dbg !2516
  %i.cn = icmp slt i64 %i.cm, %i.ci, !dbg !2517   ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8, !dbg !2519 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.cn, ptr %2, ptr %i.co, !dbg !2522
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i, !dbg !2523
  store i64 %.val.i, ptr %i.cp, align 8, !dbg !2525, !alias.scope !2374, !noalias !2527
  %i.cq = zext i1 %i.cn to i64, !dbg !2530
  %i.cr = add i64 %.sroa.27.235.i, %i.cq, !dbg !2531 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8, !dbg !2532 ; 3 uses
  %i.ct = icmp ult ptr %i.cs, %i.ce, !dbg !2507
  br i1 %i.ct, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !2507

bb.l:                                             ; preds = %._crit_edge39.i
  %i.cu = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8, !dbg !2534 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.sroa.27.2.lcssa.i, !dbg !2537
  %i.cw = load i64, ptr %.sroa.9.2.lcssa.i, align 8, !dbg !2539, !alias.scope !2370, !noalias !2541
  store i64 %i.cw, ptr %i.cv, align 8, !dbg !2539, !alias.scope !2374, !noalias !2544
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8, !dbg !2545
  br label %bb.j, !dbg !2388

bb.m:                                             ; preds = %._crit_edge39.i
  %i.cy = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 3, !dbg !2547
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph119, ptr nonnull align 8 %2, i64 %i.cy, i1 false), !dbg !2547, !alias.scope !2551
  %i.cz = sub i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i, !dbg !2552 ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i, !dbg !2553
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !2562

.lr.ph45.i:                                       ; preds = %bb.m
  %i.da = getelementptr [8 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check271 = icmp ult i64 %i.cz, 4, !dbg !2562
  br i1 %min.iters.check271, label %scalar.ph270.preheader, label %vector.ph272, !dbg !2562

vector.ph272:                                     ; preds = %.lr.ph45.i
  %n.vec273 = and i64 %i.cz, -4                   ; 3 uses
  br label %vector.body274, !dbg !2562

vector.body274:                                   ; preds = %vector.body274, %vector.ph272
  %index275 = phi i64 [ 0, %vector.ph272 ], [ %index.next280, %vector.body274 ], !dbg !2563 ; 3 uses
  %i.db = xor i64 %index275, -1, !dbg !2569
  %i.dc = getelementptr [8 x i8], ptr %i.am, i64 %i.db, !dbg !2571 ; 2 uses
  %i.dd = getelementptr [8 x i8], ptr %i.da, i64 %index275, !dbg !2573 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dc, i64 -8, !dbg !2575
  %i.df = getelementptr i8, ptr %i.dc, i64 -24, !dbg !2575
  %wide.load276 = load <2 x i64>, ptr %i.de, align 8, !dbg !2575, !alias.scope !2374, !noalias !2370
  %wide.load277 = load <2 x i64>, ptr %i.df, align 8, !dbg !2575, !alias.scope !2374, !noalias !2370
  %reverse278 = shufflevector <2 x i64> %wide.load276, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !2575
  %reverse279 = shufflevector <2 x i64> %wide.load277, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !2575
  %i.dg = getelementptr i8, ptr %i.dd, i64 16, !dbg !2575
  store <2 x i64> %reverse278, ptr %i.dd, align 8, !dbg !2575, !alias.scope !2370, !noalias !2374
  store <2 x i64> %reverse279, ptr %i.dg, align 8, !dbg !2575, !alias.scope !2370, !noalias !2374
  %index.next280 = add nuw i64 %index275, 4, !dbg !2563 ; 2 uses
  %i.dh = icmp eq i64 %index.next280, %n.vec273, !dbg !2562
  br i1 %i.dh, label %middle.block281, label %vector.body274, !dbg !2562, !llvm.loop !2577

middle.block281:                                  ; preds = %vector.body274
  %cmp.n282 = icmp eq i64 %i.cz, %n.vec273, !dbg !2562
  br i1 %cmp.n282, label %.loopexit, label %scalar.ph270.preheader, !dbg !2562

scalar.ph270.preheader:                           ; preds = %.lr.ph45.i, %middle.block281
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec273, %middle.block281 ]
  br label %scalar.ph270, !dbg !2562

scalar.ph270:                                     ; preds = %scalar.ph270.preheader, %scalar.ph270
  %.sroa.07.043.i = phi i64 [ %i.di, %scalar.ph270 ], [ %.sroa.07.043.i.ph, %scalar.ph270.preheader ] ; 3 uses
  %i.di = add nuw i64 %.sroa.07.043.i, 1, !dbg !2563 ; 2 uses
  %i.dj = xor i64 %.sroa.07.043.i, -1, !dbg !2569
  %i.dk = getelementptr [8 x i8], ptr %i.am, i64 %i.dj, !dbg !2571
  %i.dl = getelementptr [8 x i8], ptr %i.da, i64 %.sroa.07.043.i, !dbg !2573
  %i.dm = load i64, ptr %i.dk, align 8, !dbg !2575, !alias.scope !2374, !noalias !2370
  store i64 %i.dm, ptr %i.dl, align 8, !dbg !2575, !alias.scope !2370, !noalias !2374
  %exitcond.not.i = icmp eq i64 %i.di, %i.cz, !dbg !2553
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph270, !dbg !2562, !llvm.loop !2578

.loopexit:                                        ; preds = %scalar.ph270, %middle.block281, %bb.m
  %i.dn = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !2579
  br i1 %i.dn, label %.thread, label %bb.n, !dbg !2580

bb.n:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0112262, !dbg !2581
  br i1 %.not.i38, label %bb.o, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit, !dbg !2581, !prof !1491

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !2586, !noalias !2587
  unreachable, !dbg !2586

_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %bb.n
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i, !dbg !2591
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph119) ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %i.do, i64 noundef %i.cz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #12, !dbg !2598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2600
  %i.dp = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !2278
  br i1 %i.dp, label %.outer._crit_edge, label %bb.b, !dbg !2278

.thread:                                          ; preds = %bb.f, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !2601), !dbg !2604
  call void @llvm.experimental.noalias.scope.decl(metadata !2605), !dbg !2604
  %.not81 = icmp samesign ult i64 %3, %.sroa.16.0112262, !dbg !2607
  br i1 %.not81, label %bb.q, label %bb.p, !dbg !2607, !prof !1270

bb.p:                                             ; preds = %.thread
  %i.dq = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0112262, !dbg !2611 ; 3 uses
  br label %bb.r, !dbg !2619

bb.q:                                             ; preds = %.thread
  call void @llvm.trap(), !dbg !2623
  unreachable, !dbg !2623

bb.r:                                             ; preds = %bb.t, %bb.p
  %.sroa.43.0.i41 = phi ptr [ %i.dq, %bb.p ], [ %i.fy, %bb.t ], !dbg !2624 ; 2 uses
  %.sroa.27.0.i42 = phi i64 [ 0, %bb.p ], [ %i.gb, %bb.t ], !dbg !2624 ; 2 uses
  %.sroa.9.0.i43 = phi ptr [ %.sroa.0.0.ph119, %bb.p ], [ %i.gc, %bb.t ], !dbg !2624 ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %.sroa.16.0112262, %bb.t ] ; 3 uses
  %i.dr = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i44, i64 3), !dbg !2625
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph119, i64 %i.dr, !dbg !2628 ; 2 uses
  %i.dt = icmp ult ptr %.sroa.9.0.i43, %i.ds, !dbg !2631
  br i1 %i.dt, label %.lr.ph.i64, label %._crit_edge.i45, !dbg !2631

.lr.ph.i64:                                       ; preds = %bb.r
  %.val22.i65 = load i64, ptr %i.ac, align 8, !alias.scope !2601, !noalias !2605, !noundef !14 ; 2 uses
  %i.du = ashr i64 %.val22.i65, 63
  %i.dv = lshr i64 %i.du, 1
  %i.dw = xor i64 %i.dv, %.val22.i65              ; 4 uses
  br label %bb.s, !dbg !2631

bb.s:                                             ; preds = %bb.s, %.lr.ph.i64
  %.sroa.9.131.i66 = phi ptr [ %.sroa.9.0.i43, %.lr.ph.i64 ], [ %i.fg, %bb.s ] ; 5 uses
  %.sroa.27.130.i67 = phi i64 [ %.sroa.27.0.i42, %.lr.ph.i64 ], [ %i.ff, %bb.s ] ; 2 uses
  %.sroa.43.129.i68 = phi ptr [ %.sroa.43.0.i41, %.lr.ph.i64 ], [ %i.fc, %bb.s ] ; 4 uses
  %.val21.i69 = load i64, ptr %.sroa.9.131.i66, align 8, !dbg !2633, !alias.scope !2601, !noalias !2605, !noundef !14 ; 3 uses
  %i.dx = ashr i64 %.val21.i69, 63, !dbg !2634
  %i.dy = lshr i64 %i.dx, 1, !dbg !2640
  %i.dz = xor i64 %i.dy, %.val21.i69, !dbg !2641
  %i.ea = icmp sge i64 %i.dw, %i.dz, !dbg !2642   ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -8, !dbg !2644
  %.sroa.01.0.i.i70 = select i1 %i.ea, ptr %2, ptr %i.eb, !dbg !2647
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i70, i64 %.sroa.27.130.i67, !dbg !2648
  store i64 %.val21.i69, ptr %i.ec, align 8, !dbg !2650, !alias.scope !2605, !noalias !2652
  %i.ed = zext i1 %i.ea to i64, !dbg !2655
  %i.ee = add i64 %.sroa.27.130.i67, %i.ed, !dbg !2656 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 8, !dbg !2657
  %.val19.i71 = load i64, ptr %i.ef, align 8, !dbg !2659, !alias.scope !2601, !noalias !2605, !noundef !14 ; 3 uses
  %i.eg = ashr i64 %.val19.i71, 63, !dbg !2660
  %i.eh = lshr i64 %i.eg, 1, !dbg !2665
  %i.ei = xor i64 %i.eh, %.val19.i71, !dbg !2666
  %i.ej = icmp sge i64 %i.dw, %i.ei, !dbg !2667   ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -16, !dbg !2669
  %.sroa.01.0.i23.i72 = select i1 %i.ej, ptr %2, ptr %i.ek, !dbg !2672
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i23.i72, i64 %i.ee, !dbg !2673
  store i64 %.val19.i71, ptr %i.el, align 8, !dbg !2675, !alias.scope !2605, !noalias !2677
  %i.em = zext i1 %i.ej to i64, !dbg !2680
  %i.en = add i64 %i.ee, %i.em, !dbg !2681        ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 16, !dbg !2682
  %.val17.i73 = load i64, ptr %i.eo, align 8, !dbg !2684, !alias.scope !2601, !noalias !2605, !noundef !14 ; 3 uses
  %i.ep = ashr i64 %.val17.i73, 63, !dbg !2685
  %i.eq = lshr i64 %i.ep, 1, !dbg !2690
  %i.er = xor i64 %i.eq, %.val17.i73, !dbg !2691
  %i.es = icmp sge i64 %i.dw, %i.er, !dbg !2692   ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -24, !dbg !2694
  %.sroa.01.0.i24.i74 = select i1 %i.es, ptr %2, ptr %i.et, !dbg !2697
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i24.i74, i64 %i.en, !dbg !2698
  store i64 %.val17.i73, ptr %i.eu, align 8, !dbg !2700, !alias.scope !2605, !noalias !2702
  %i.ev = zext i1 %i.es to i64, !dbg !2705
  %i.ew = add i64 %i.en, %i.ev, !dbg !2706        ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 24, !dbg !2707
  %.val15.i75 = load i64, ptr %i.ex, align 8, !dbg !2709, !alias.scope !2601, !noalias !2605, !noundef !14 ; 3 uses
  %i.ey = ashr i64 %.val15.i75, 63, !dbg !2710
  %i.ez = lshr i64 %i.ey, 1, !dbg !2715
  %i.fa = xor i64 %i.ez, %.val15.i75, !dbg !2716
  %i.fb = icmp sge i64 %i.dw, %i.fa, !dbg !2717   ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -32, !dbg !2719 ; 3 uses
  %.sroa.01.0.i25.i76 = select i1 %i.fb, ptr %2, ptr %i.fc, !dbg !2722
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i76, i64 %i.ew, !dbg !2723
  store i64 %.val15.i75, ptr %i.fd, align 8, !dbg !2725, !alias.scope !2605, !noalias !2727
  %i.fe = zext i1 %i.fb to i64, !dbg !2730
  %i.ff = add i64 %i.ew, %i.fe, !dbg !2731        ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 32, !dbg !2732 ; 3 uses
  %i.fh = icmp ult ptr %i.fg, %i.ds, !dbg !2631
  br i1 %i.fh, label %bb.s, label %._crit_edge.i45, !dbg !2631

._crit_edge.i45:                                  ; preds = %bb.s, %bb.r
  %.sroa.43.1.lcssa.i46 = phi ptr [ %.sroa.43.0.i41, %bb.r ], [ %i.fc, %bb.s ], !dbg !2624 ; 2 uses
  %.sroa.27.1.lcssa.i47 = phi i64 [ %.sroa.27.0.i42, %bb.r ], [ %i.ff, %bb.s ], !dbg !2624 ; 2 uses
  %.sroa.9.1.lcssa.i48 = phi ptr [ %.sroa.9.0.i43, %bb.r ], [ %i.fg, %bb.s ], !dbg !2624 ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.0.0.i44, !dbg !2734 ; 2 uses
  %i.fj = icmp ult ptr %.sroa.9.1.lcssa.i48, %i.fi, !dbg !2736
  br i1 %i.fj, label %.lr.ph38.i57.preheader, label %._crit_edge39.i49, !dbg !2736

.lr.ph38.i57.preheader:                           ; preds = %._crit_edge.i45
  %.val14.i62 = load i64, ptr %i.ac, align 8, !alias.scope !2601, !noalias !2605, !noundef !14 ; 2 uses
  %i.fk = ashr i64 %.val14.i62, 63
  %i.fl = lshr i64 %i.fk, 1
  %i.fm = xor i64 %i.fl, %.val14.i62
  br label %.lr.ph38.i57, !dbg !2736

._crit_edge39.i49:                                ; preds = %.lr.ph38.i57, %._crit_edge.i45
  %.sroa.43.2.lcssa.i50 = phi ptr [ %.sroa.43.1.lcssa.i46, %._crit_edge.i45 ], [ %i.fs, %.lr.ph38.i57 ], !dbg !2624
  %.sroa.27.2.lcssa.i51 = phi i64 [ %.sroa.27.1.lcssa.i47, %._crit_edge.i45 ], [ %i.fv, %.lr.ph38.i57 ], !dbg !2624 ; 9 uses
  %.sroa.9.2.lcssa.i52 = phi ptr [ %.sroa.9.1.lcssa.i48, %._crit_edge.i45 ], [ %i.fw, %.lr.ph38.i57 ], !dbg !2624 ; 2 uses
  %i.fn = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.0112262, !dbg !2738
  br i1 %i.fn, label %bb.u, label %bb.t, !dbg !2738

.lr.ph38.i57:                                     ; preds = %.lr.ph38.i57.preheader, %.lr.ph38.i57
  %.sroa.9.236.i58 = phi ptr [ %i.fw, %.lr.ph38.i57 ], [ %.sroa.9.1.lcssa.i48, %.lr.ph38.i57.preheader ] ; 2 uses
  %.sroa.27.235.i59 = phi i64 [ %i.fv, %.lr.ph38.i57 ], [ %.sroa.27.1.lcssa.i47, %.lr.ph38.i57.preheader ] ; 2 uses
  %.sroa.43.234.i60 = phi ptr [ %i.fs, %.lr.ph38.i57 ], [ %.sroa.43.1.lcssa.i46, %.lr.ph38.i57.preheader ]
  %.val.i61 = load i64, ptr %.sroa.9.236.i58, align 8, !dbg !2739, !alias.scope !2601, !noalias !2605, !noundef !14 ; 3 uses
  %i.fo = ashr i64 %.val.i61, 63, !dbg !2740
  %i.fp = lshr i64 %i.fo, 1, !dbg !2745
  %i.fq = xor i64 %i.fp, %.val.i61, !dbg !2746
  %i.fr = icmp sge i64 %i.fm, %i.fq, !dbg !2747   ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %.sroa.43.234.i60, i64 -8, !dbg !2749 ; 3 uses
  %.sroa.01.0.i26.i63 = select i1 %i.fr, ptr %2, ptr %i.fs, !dbg !2752
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i26.i63, i64 %.sroa.27.235.i59, !dbg !2753
  store i64 %.val.i61, ptr %i.ft, align 8, !dbg !2755, !alias.scope !2605, !noalias !2757
  %i.fu = zext i1 %i.fr to i64, !dbg !2760
  %i.fv = add i64 %.sroa.27.235.i59, %i.fu, !dbg !2761 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i58, i64 8, !dbg !2762 ; 3 uses
  %i.fx = icmp ult ptr %i.fw, %i.fi, !dbg !2736
  br i1 %i.fx, label %.lr.ph38.i57, label %._crit_edge39.i49, !dbg !2736

bb.t:                                             ; preds = %._crit_edge39.i49
  %i.fy = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i50, i64 -8, !dbg !2764
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i51, !dbg !2767
  %i.ga = load i64, ptr %.sroa.9.2.lcssa.i52, align 8, !dbg !2769, !alias.scope !2601, !noalias !2771
  store i64 %i.ga, ptr %i.fz, align 8, !dbg !2769, !alias.scope !2605, !noalias !2774
  %i.gb = add i64 %.sroa.27.2.lcssa.i51, 1, !dbg !2775
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i52, i64 8, !dbg !2776
  br label %bb.r, !dbg !2619

bb.u:                                             ; preds = %._crit_edge39.i49
  %i.gd = shl nuw nsw i64 %.sroa.27.2.lcssa.i51, 3, !dbg !2778
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph119, ptr nonnull align 8 %2, i64 %i.gd, i1 false), !dbg !2778, !alias.scope !2782
  %i.ge = sub i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i51, !dbg !2783 ; 7 uses
  %.not47.i53 = icmp eq i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i51, !dbg !2784
  %i.gf = getelementptr [8 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i51 ; 3 uses
  br i1 %.not47.i53, label %.outer.thread, label %.lr.ph45.i54, !dbg !2793

.lr.ph45.i54:                                     ; preds = %bb.u
  %min.iters.check = icmp ult i64 %i.ge, 4, !dbg !2793
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !2793

vector.ph:                                        ; preds = %.lr.ph45.i54
  %n.vec = and i64 %i.ge, -4                      ; 3 uses
  br label %vector.body, !dbg !2793

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !2794 ; 3 uses
  %i.gg = xor i64 %index, -1, !dbg !2800
  %i.gh = getelementptr [8 x i8], ptr %i.dq, i64 %i.gg, !dbg !2802 ; 2 uses
  %i.gi = getelementptr [8 x i8], ptr %i.gf, i64 %index, !dbg !2804 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gh, i64 -8, !dbg !2806
  %i.gk = getelementptr i8, ptr %i.gh, i64 -24, !dbg !2806
  %wide.load = load <2 x i64>, ptr %i.gj, align 8, !dbg !2806, !alias.scope !2605, !noalias !2601
  %wide.load268 = load <2 x i64>, ptr %i.gk, align 8, !dbg !2806, !alias.scope !2605, !noalias !2601
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !2806
  %reverse269 = shufflevector <2 x i64> %wide.load268, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !2806
  %i.gl = getelementptr i8, ptr %i.gi, i64 16, !dbg !2806
  store <2 x i64> %reverse, ptr %i.gi, align 8, !dbg !2806, !alias.scope !2601, !noalias !2605
  store <2 x i64> %reverse269, ptr %i.gl, align 8, !dbg !2806, !alias.scope !2601, !noalias !2605
  %index.next = add nuw i64 %index, 4, !dbg !2794 ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec, !dbg !2793
  br i1 %i.gm, label %middle.block, label %vector.body, !dbg !2793, !llvm.loop !2808

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ge, %n.vec, !dbg !2793
  br i1 %cmp.n, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitiondNCINvB2_9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0E0ECsim2LhUzKY4R_19foundations_metrics.exit, label %scalar.ph.preheader, !dbg !2793

scalar.ph.preheader:                              ; preds = %.lr.ph45.i54, %middle.block
  %.sroa.07.043.i55.ph = phi i64 [ 0, %.lr.ph45.i54 ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !2793

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i55 = phi i64 [ %i.gn, %scalar.ph ], [ %.sroa.07.043.i55.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gn = add nuw i64 %.sroa.07.043.i55, 1, !dbg !2794 ; 2 uses
  %i.go = xor i64 %.sroa.07.043.i55, -1, !dbg !2800
  %i.gp = getelementptr [8 x i8], ptr %i.dq, i64 %i.go, !dbg !2802
  %i.gq = getelementptr [8 x i8], ptr %i.gf, i64 %.sroa.07.043.i55, !dbg !2804
  %i.gr = load i64, ptr %i.gp, align 8, !dbg !2806, !alias.scope !2605, !noalias !2601
  store i64 %i.gr, ptr %i.gq, align 8, !dbg !2806, !alias.scope !2601, !noalias !2605
  %exitcond.not.i56 = icmp eq i64 %i.gn, %i.ge, !dbg !2784
  br i1 %exitcond.not.i56, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitiondNCINvB2_9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0E0ECsim2LhUzKY4R_19foundations_metrics.exit, label %scalar.ph, !dbg !2793, !llvm.loop !2809

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitiondNCINvB2_9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0E0ECsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %scalar.ph, %middle.block
  %i.gs = icmp ugt i64 %.sroa.27.2.lcssa.i51, %.sroa.16.0112262, !dbg !2810
  br i1 %i.gs, label %bb.v, label %.outer, !dbg !2810, !prof !1491

.outer.thread:                                    ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2600
end_hunk_0
