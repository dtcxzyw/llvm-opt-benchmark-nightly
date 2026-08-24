Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/allpaths?download=true
inline.NumInlined: 95
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@set_rel_size:bb.a
  %i.ue = load ptr, ptr %i.ud, align 8            ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 72
  %i.ug = load ptr, ptr %i.uf, align 8
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.ui = load ptr, ptr %i.uh, align 8
  %i.uj = call ptr @make_tlist_from_pathtarget(ptr noundef %i.ui) #11
  %i.uk = call ptr @convert_subquery_pathkeys(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.ug, ptr noundef %i.uj) #11
  %i.ul = call ptr @create_subqueryscan_path(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.ue, i1 noundef zeroext %.3.i, ptr noundef %i.uk, ptr noundef null) #11
  call void @add_partial_path(ptr noundef nonnull %1, ptr noundef %i.ul) #11
  %indvars.iv.next221.i = add nuw nsw i64 %indvars.iv220.i, 1 ; 2 uses
  %i.um = load i32, ptr %i.ty, align 4
  %i.un = sext i32 %i.um to i64
  %i.uo = icmp slt i64 %indvars.iv.next221.i, %i.un
  br i1 %i.uo, label %.lr.ph212.i, label %set_subquery_pathlist.exit

set_subquery_pathlist.exit:                       ; preds = %.lr.ph212.i, %bb.cu, %.critedge152.i, %bb.dc, %.lr.ph209.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.dw

bb.dd:                                            ; preds = %bb.ao
  tail call void @set_function_size_estimates(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %bb.dw

bb.de:                                            ; preds = %bb.ao
  tail call void @set_tablefunc_size_estimates(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %bb.dw

bb.df:                                            ; preds = %bb.ao
  tail call void @set_values_size_estimates(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %bb.dw

bb.dg:                                            ; preds = %bb.ao
  %i.up = getelementptr inbounds nuw i8, ptr %3, i64 172
  %i.uq = load i8, ptr %i.up, align 4, !range !4, !noundef !5
  %i.ur = trunc nuw i8 %i.uq to i1
  %i.us = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.ut = load i32, ptr %i.us, align 8            ; 3 uses
  %i.uu = icmp eq i32 %i.ut, 0                    ; 2 uses
  br i1 %i.ur, label %bb.dh, label %.preheader

.preheader:                                       ; preds = %bb.dg
  br i1 %i.uu, label %._crit_edge, label %.lr.ph153

bb.dh:                                            ; preds = %bb.dg
  br i1 %i.uu, label %bb.di, label %.preheader.i50.preheader

.preheader.i50.preheader:                         ; preds = %bb.dh
  %.0.i51154 = add i32 %i.ut, -1                  ; 2 uses
  %.not.i52155 = icmp eq i32 %.0.i51154, 0
  br i1 %.not.i52155, label %.preheader.i50._crit_edge, label %.lr.ph158

bb.di:                                            ; preds = %bb.dh
  %i.uv = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.ux = load ptr, ptr %i.uw, align 8
  %i.uy = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, ptr noundef %i.ux) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3210, ptr noundef nonnull @__func__.set_worktable_pathlist) #11
  unreachable

.preheader.i50:                                   ; preds = %.lr.ph158
  %.0.i51 = add i32 %.0.i51157, -1                ; 2 uses
  %.not.i52 = icmp eq i32 %.0.i51, 0
  br i1 %.not.i52, label %.preheader.i50._crit_edge, label %.lr.ph158, !llvm.loop !25

.lr.ph158:                                        ; preds = %.preheader.i50.preheader, %.preheader.i50
  %.0.i51157 = phi i32 [ %.0.i51, %.preheader.i50 ], [ %.0.i51154, %.preheader.i50.preheader ]
  %.019.i156 = phi ptr [ %i.va, %.preheader.i50 ], [ %0, %.preheader.i50.preheader ]
  %i.uz = getelementptr inbounds nuw i8, ptr %.019.i156, i64 32
  %i.va = load ptr, ptr %i.uz, align 8            ; 3 uses
  %.not24.i = icmp eq ptr %i.va, null
  br i1 %.not24.i, label %bb.dj, label %.preheader.i50, !llvm.loop !25

bb.dj:                                            ; preds = %.lr.ph158
  %i.vb = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.vd = load ptr, ptr %i.vc, align 8
  %i.ve = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, ptr noundef %i.vd) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3217, ptr noundef nonnull @__func__.set_worktable_pathlist) #11
  unreachable

.preheader.i50._crit_edge:                        ; preds = %.preheader.i50, %.preheader.i50.preheader
  %.019.i.lcssa = phi ptr [ %0, %.preheader.i50.preheader ], [ %i.va, %.preheader.i50 ]
  %i.vf = getelementptr inbounds nuw i8, ptr %.019.i.lcssa, i64 680
  %i.vg = load ptr, ptr %i.vf, align 8            ; 2 uses
  %.not23.i = icmp eq ptr %i.vg, null
  br i1 %.not23.i, label %bb.dk, label %set_worktable_pathlist.exit

bb.dk:                                            ; preds = %.preheader.i50._crit_edge
  %i.vh = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.vj = load ptr, ptr %i.vi, align 8
  %i.vk = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6, ptr noundef %i.vj) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3221, ptr noundef nonnull @__func__.set_worktable_pathlist) #11
  unreachable

set_worktable_pathlist.exit:                      ; preds = %.preheader.i50._crit_edge
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vg, i64 40
  %i.vm = load double, ptr %i.vl, align 8
  tail call void @set_cte_size_estimates(ptr noundef %0, ptr noundef %1, double noundef %i.vm) #11
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.vo = load ptr, ptr %i.vn, align 8
  %i.vp = tail call ptr @create_worktablescan_path(ptr noundef %0, ptr noundef %1, ptr noundef %i.vo) #11
  tail call void @add_path(ptr noundef %1, ptr noundef %i.vp) #11
  br label %bb.dw

bb.dl:                                            ; preds = %.lr.ph153
  %i.vq = add i32 %.043.i152, -1                  ; 2 uses
  %.not.i53 = icmp eq i32 %i.vq, 0
  br i1 %.not.i53, label %._crit_edge, label %.lr.ph153, !llvm.loop !26

.lr.ph153:                                        ; preds = %.preheader, %bb.dl
  %.043.i152 = phi i32 [ %i.vq, %bb.dl ], [ %i.ut, %.preheader ]
  %.044.i151 = phi ptr [ %i.vs, %bb.dl ], [ %0, %.preheader ]
  %i.vr = getelementptr inbounds nuw i8, ptr %.044.i151, i64 32
  %i.vs = load ptr, ptr %i.vr, align 8            ; 3 uses
  %.not52.i = icmp eq ptr %i.vs, null
  br i1 %.not52.i, label %bb.dm, label %bb.dl, !llvm.loop !26

bb.dm:                                            ; preds = %.lr.ph153
  %i.vt = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.vv = load ptr, ptr %i.vu, align 8
  %i.vw = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, ptr noundef %i.vv) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3085, ptr noundef nonnull @__func__.set_cte_pathlist) #11
  unreachable

._crit_edge:                                      ; preds = %bb.dl, %.preheader
  %.044.i.lcssa = phi ptr [ %0, %.preheader ], [ %i.vs, %bb.dl ] ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.044.i.lcssa, i64 8
  %i.vy = load ptr, ptr %i.vx, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 72
  %i.wa = load ptr, ptr %i.vz, align 8            ; 3 uses
  %.not48.i = icmp eq ptr %i.wa, null
  br i1 %.not48.i, label %.thread58.i, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %._crit_edge
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 4
  %i.wc = load i32, ptr %i.wb, align 4            ; 2 uses
  %i.wd = icmp sgt i32 %i.wc, 0
  br i1 %i.wd, label %.lr.ph68.i, label %.thread58.i

.lr.ph68.i:                                       ; preds = %.lr.ph.i54
  %i.we = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %i.wg = load ptr, ptr %i.wf, align 8
  %i.wh = load ptr, ptr %i.we, align 8
  %wide.trip.count.i55 = zext nneg i32 %i.wc to i64
  br label %bb.dn

bb.dn:                                            ; preds = %bb.do, %.lr.ph68.i
  %indvars.iv.i56 = phi i64 [ 0, %.lr.ph68.i ], [ %indvars.iv.next.i57, %bb.do ] ; 4 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv.i56
  %i.wj = load ptr, ptr %i.wi, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8
  %i.wm = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.wl, ptr noundef nonnull dereferenceable(1) %i.wh) #13
  %.not50.i = icmp eq i32 %i.wm, 0
  br i1 %.not50.i, label %.split.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i57, %wide.trip.count.i55
  br i1 %exitcond.not.i58, label %.thread58.i, label %bb.dn

.thread58.i:                                      ; preds = %bb.do, %.lr.ph.i54, %._crit_edge
  %i.wn = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.wp = load ptr, ptr %i.wo, align 8
  %i.wq = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7, ptr noundef %i.wp) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3103, ptr noundef nonnull @__func__.set_cte_pathlist) #11
  unreachable

.split.i:                                         ; preds = %bb.dn
  %indvars71.le.i = trunc i64 %indvars.iv.i56 to i32
  %i.wr = getelementptr inbounds nuw i8, ptr %.044.i.lcssa, i64 168
  %i.ws = load ptr, ptr %i.wr, align 8            ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.ws, null
  br i1 %.not.i.i59, label %list_length.exit.i60, label %bb.dp

bb.dp:                                            ; preds = %.split.i
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 4
  %i.wu = load i32, ptr %i.wt, align 4
  br label %list_length.exit.i60

list_length.exit.i60:                             ; preds = %bb.dp, %.split.i
  %i.wv = phi i32 [ %i.wu, %bb.dp ], [ 0, %.split.i ]
  %.not51.i = icmp sgt i32 %i.wv, %indvars71.le.i
  br i1 %.not51.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %list_length.exit.i60
  %i.ww = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.wx = load ptr, ptr %i.we, align 8
  %i.wy = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8, ptr noundef %i.wx) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3105, ptr noundef nonnull @__func__.set_cte_pathlist) #11
  unreachable

bb.dr:                                            ; preds = %list_length.exit.i60
  %i.wz = getelementptr i8, ptr %i.ws, i64 16
  %.val54.i = load ptr, ptr %i.wz, align 8
  %9 = and i64 %indvars.iv.i56, 4294967295
  %10 = getelementptr inbounds nuw [8 x i8], ptr %.val54.i, i64 %9
  %i.xa = load i32, ptr %10, align 8              ; 2 uses
  %i.xb = icmp slt i32 %i.xa, 1
  br i1 %i.xb, label %bb.ds, label %set_cte_pathlist.exit

bb.ds:                                            ; preds = %bb.dr
  %i.xc = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.xd = load ptr, ptr %i.we, align 8
  %i.xe = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, ptr noundef %i.xd) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3108, ptr noundef nonnull @__func__.set_cte_pathlist) #11
  unreachable

set_cte_pathlist.exit:                            ; preds = %bb.dr
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xg = load ptr, ptr %i.xf, align 8            ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 24
  %i.xi = load ptr, ptr %i.xh, align 8
  %i.xj = add nsw i32 %i.xa, -1
  %i.xk = getelementptr i8, ptr %i.xi, i64 16
  %.val53.i = load ptr, ptr %i.xk, align 8
  %i.xl = zext nneg i32 %i.xj to i64              ; 2 uses
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %.val53.i, i64 %i.xl
  %i.xn = load ptr, ptr %i.xm, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  %i.xp = load ptr, ptr %i.xo, align 8
  %i.xq = getelementptr i8, ptr %i.xp, i64 16
  %.val.i = load ptr, ptr %i.xq, align 8
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.xl
  %i.xs = load ptr, ptr %i.xr, align 8            ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  %i.xu = load double, ptr %i.xt, align 8
  tail call void @set_cte_size_estimates(ptr noundef %0, ptr noundef %1, double noundef %i.xu) #11
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xn, i64 72
  %i.xw = load ptr, ptr %i.xv, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xs, i64 48
  %i.xy = load ptr, ptr %i.xx, align 8
  %i.xz = tail call ptr @convert_subquery_pathkeys(ptr noundef %0, ptr noundef %1, ptr noundef %i.xw, ptr noundef %i.xy) #11
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.yb = load ptr, ptr %i.ya, align 8
  %i.yc = tail call ptr @create_ctescan_path(ptr noundef %0, ptr noundef %1, ptr noundef %i.xz, ptr noundef %i.yb) #11
  tail call void @add_path(ptr noundef %1, ptr noundef %i.yc) #11
  br label %bb.dw

bb.dt:                                            ; preds = %bb.ao
  tail call void @set_namedtuplestore_size_estimates(ptr noundef %0, ptr noundef nonnull %1) #11
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ye = load ptr, ptr %i.yd, align 8
  %i.yf = tail call ptr @create_namedtuplestorescan_path(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.ye) #11
  tail call void @add_path(ptr noundef nonnull %1, ptr noundef %i.yf) #11
  br label %bb.dw

bb.du:                                            ; preds = %bb.ao
  tail call void @set_result_size_estimates(ptr noundef %0, ptr noundef nonnull %1) #11
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.yh = load ptr, ptr %i.yg, align 8
  %i.yi = tail call ptr @create_resultscan_path(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.yh) #11
  tail call void @add_path(ptr noundef nonnull %1, ptr noundef %i.yi) #11
  br label %bb.dw

bb.dv:                                            ; preds = %bb.ao
  %i.yj = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.yk = load i32, ptr %i.is, align 8
  %i.yl = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.yk) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 504, ptr noundef nonnull @__func__.set_rel_size) #11
  unreachable

bb.dw:                                            ; preds = %set_append_rel_size.exit, %set_worktable_pathlist.exit, %set_cte_pathlist.exit, %bb.aq, %bb.at, %bb.au, %bb.ar, %bb.du, %bb.dt, %bb.df, %bb.de, %bb.dd, %set_subquery_pathlist.exit, %bb.c
  ret void
}

declare signext i8 @get_rel_persistence(i32 noundef) local_unnamed_addr #2

declare signext i8 @func_parallel(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @is_parallel_safe(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @limit_needed(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @relation_excluded_by_constraints(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @set_dummy_rel_pathlist(ptr noundef initializes((16, 24), (48, 56), (64, 72)) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.AppendPathInput, align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 0.000000e+00, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @create_append_path(ptr noundef null, ptr noundef %0, ptr noundef nonnull byval(%struct.AppendPathInput) align 8 %1, ptr noundef null, ptr noundef %i.h, i32 noundef 0, i1 noundef zeroext false, double noundef -1.000000e+00) #11
  tail call void @add_path(ptr noundef %0, ptr noundef %i.i) #11
  tail call void @set_cheapest(ptr noundef %0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_foreign_size(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  tail call void @set_foreign_size_estimates(ptr noundef %0, ptr noundef %1) #11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.f = load i32, ptr %i.e, align 4
  tail call void %i.d(ptr noundef %0, ptr noundef %1, i32 noundef %i.f) #11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load double, ptr %i.g, align 8
  %i.i = tail call double @clamp_row_est(double noundef %i.h) #11 ; 3 uses
  store double %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.k = load double, ptr %i.j, align 8           ; 2 uses
  %i.l = fcmp ogt double %i.k, %i.i
  %. = select i1 %i.l, double %i.k, double %i.i
  store double %., ptr %i.j, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_tablesample_rel_size(ptr noundef %0, ptr noundef %1, ptr nofree readonly captures(none) %.48.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  tail call void @check_index_predicates(ptr noundef %0, ptr noundef %1) #11
  %i.c = getelementptr inbounds nuw i8, ptr %.48.val, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = tail call ptr @GetTsmRoutine(i32 noundef %i.d) #11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.48.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.g(ptr noundef %0, ptr noundef %1, ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %i.j = load i32, ptr %i.a, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i32 %i.j, ptr %i.k, align 8
  %i.l = load double, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 200
  store double %i.l, ptr %i.m, align 8
  call void @set_baserel_size_estimates(ptr noundef %0, ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare void @set_function_size_estimates(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @set_tablefunc_size_estimates(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @set_values_size_estimates(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bms_overlap(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @adjust_appendrel_attrs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @has_useful_pathkeys(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @add_child_rel_equivalences(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @get_typavgwidth(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @exprType(ptr noundef) local_unnamed_addr #2

declare i32 @exprTypmod(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #6

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare void @set_foreign_size_estimates(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @clamp_row_est(double noundef) local_unnamed_addr #2

declare void @check_index_predicates(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetTsmRoutine(i32 noundef) local_unnamed_addr #2

declare void @set_baserel_size_estimates(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @copyObjectImpl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @subquery_is_pushdown_safe(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
end_hunk_0
