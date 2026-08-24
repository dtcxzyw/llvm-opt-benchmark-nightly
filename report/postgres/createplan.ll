Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/createplan?download=true
inline.NumInlined: 326
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@create_scan_plan:bb.a
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 80
  %i.sa = load ptr, ptr %i.rz, align 8
  %i.sb = add i32 %i.rs, -1
  %i.sc = getelementptr i8, ptr %i.sa, i64 16
  %.val.i160 = load ptr, ptr %i.sc, align 8
  %i.sd = sext i32 %i.sb to i64
  %i.se = getelementptr inbounds [8 x i8], ptr %.val.i160, i64 %i.sd
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.in.i156 = phi ptr [ %i.rw, %bb.bn ], [ %i.se, %bb.bo ]
  %i.sf = load ptr, ptr %.in.i156, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 152
  %i.sh = load ptr, ptr %i.sg, align 8            ; 2 uses
  %i.si = tail call fastcc ptr @order_qual_clauses(ptr noundef nonnull %0, ptr noundef %.1115)
  %i.sj = tail call ptr @extract_actual_clauses(ptr noundef %i.si, i1 noundef zeroext false) #10 ; 2 uses
  %i.sk = load ptr, ptr %i.m, align 8
  %.not23.i157 = icmp eq ptr %i.sk, null
  br i1 %.not23.i157, label %create_valuesscan_plan.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.sl = tail call ptr @replace_nestloop_params_mutator(ptr noundef %i.sj, ptr noundef nonnull %0)
  %i.sm = tail call ptr @replace_nestloop_params_mutator(ptr noundef %i.sh, ptr noundef nonnull %0)
  br label %create_valuesscan_plan.exit

create_valuesscan_plan.exit:                      ; preds = %bb.bp, %bb.bq
  %.021.i158 = phi ptr [ %i.sl, %bb.bq ], [ %i.sj, %bb.bp ]
  %.0.i159 = phi ptr [ %i.sm, %bb.bq ], [ %i.sh, %bb.bp ]
  %i.sn = tail call noundef ptr @palloc0(i64 noundef 120) #10 ; 14 uses
  store i32 367, ptr %i.sn, align 4
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 48
  store ptr %.0112, ptr %i.so, align 8
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 56
  store ptr %.021.i158, ptr %i.sp, align 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 64
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sq, i8 0, i64 16, i1 false)
  store i32 %i.rs, ptr %i.sr, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 112
  store ptr %.0.i159, ptr %i.ss, align 8
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.su = load i32, ptr %i.st, align 8
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  store i32 %i.su, ptr %i.sv, align 4
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.sx = load double, ptr %i.sw, align 8
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  store double %i.sx, ptr %i.sy, align 8
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ta = load double, ptr %i.sz, align 8
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  store double %i.ta, ptr %i.tb, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.td = load double, ptr %i.tc, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.sn, i64 24
  store double %i.td, ptr %i.te, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tg = load ptr, ptr %i.tf, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 40
  %i.ti = load i32, ptr %i.th, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sn, i64 32
  store i32 %i.ti, ptr %i.tj, align 8
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.tl = load i8, ptr %i.tk, align 8, !range !5, !noundef !6
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sn, i64 36
  store i8 %i.tl, ptr %i.tm, align 4
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.to = load i8, ptr %i.tn, align 1, !range !5, !noundef !6
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sn, i64 37
  store i8 %i.to, ptr %i.tp, align 1
  br label %create_foreignscan_plan.exit

bb.br:                                            ; preds = %bb.s
  %i.tq = load ptr, ptr %i.e, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 112
  %i.ts = load i32, ptr %i.tr, align 8            ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.tu = load ptr, ptr %i.tt, align 8            ; 2 uses
  %.not.i161 = icmp eq ptr %i.tu, null
  br i1 %.not.i161, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.tv = zext i32 %i.ts to i64
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %i.tv
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 80
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = add i32 %i.ts, -1
  %i.uc = getelementptr i8, ptr %i.ua, i64 16
  %.val80.i = load ptr, ptr %i.uc, align 8
  %i.ud = sext i32 %i.ub to i64
  %i.ue = getelementptr inbounds [8 x i8], ptr %.val80.i, i64 %i.ud
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.in.i162 = phi ptr [ %i.tw, %bb.bs ], [ %i.ue, %bb.bt ]
  %i.uf = load ptr, ptr %.in.i162, align 8        ; 4 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 168
  %i.uh = load i32, ptr %i.ug, align 8            ; 2 uses
  %.not71.i269 = icmp eq i32 %i.uh, 0
  br i1 %.not71.i269, label %._crit_edge, label %.lr.ph272

bb.bv:                                            ; preds = %.lr.ph272
  %i.ui = add i32 %.061.i271, -1                  ; 2 uses
  %.not71.i = icmp eq i32 %i.ui, 0
  br i1 %.not71.i, label %._crit_edge, label %.lr.ph272, !llvm.loop !32

.lr.ph272:                                        ; preds = %bb.bu, %bb.bv
  %.061.i271 = phi i32 [ %i.ui, %bb.bv ], [ %i.uh, %bb.bu ]
  %.062.i270 = phi ptr [ %i.uk, %bb.bv ], [ %0, %bb.bu ]
  %i.uj = getelementptr inbounds nuw i8, ptr %.062.i270, i64 32
  %i.uk = load ptr, ptr %i.uj, align 8            ; 3 uses
  %.not79.i = icmp eq ptr %i.uk, null
  br i1 %.not79.i, label %bb.bw, label %bb.bv, !llvm.loop !32

bb.bw:                                            ; preds = %.lr.ph272
  %i.ul = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.uf, i64 160
  %i.un = load ptr, ptr %i.um, align 8
  %i.uo = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7, ptr noundef %i.un) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3757, ptr noundef nonnull @__func__.create_ctescan_plan) #10
  unreachable

._crit_edge:                                      ; preds = %bb.bv, %bb.bu
  %.062.i.lcssa = phi ptr [ %0, %bb.bu ], [ %i.uk, %bb.bv ] ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.062.i.lcssa, i64 8
  %i.uq = load ptr, ptr %i.up, align 8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 72
  %i.us = load ptr, ptr %i.ur, align 8            ; 3 uses
  %.not72.i = icmp eq ptr %i.us, null
  br i1 %.not72.i, label %.thread85.i, label %.lr.ph.i163

.lr.ph.i163:                                      ; preds = %._crit_edge
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %i.uu = load i32, ptr %i.ut, align 4            ; 2 uses
  %i.uv = icmp sgt i32 %i.uu, 0
  br i1 %i.uv, label %.lr.ph103.i, label %.thread85.i

.lr.ph103.i:                                      ; preds = %.lr.ph.i163
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uf, i64 160 ; 4 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %i.uy = load ptr, ptr %i.ux, align 8
  %i.uz = load ptr, ptr %i.uw, align 8
  %wide.trip.count.i = zext nneg i32 %i.uu to i64
  br label %bb.bx

bb.bx:                                            ; preds = %bb.by, %.lr.ph103.i
  %indvars.iv.i164 = phi i64 [ 0, %.lr.ph103.i ], [ %indvars.iv.next.i165, %bb.by ] ; 4 uses
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %indvars.iv.i164
  %i.vb = load ptr, ptr %i.va, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vd = load ptr, ptr %i.vc, align 8
  %i.ve = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vd, ptr noundef nonnull dereferenceable(1) %i.uz) #12
  %.not74.i = icmp eq i32 %i.ve, 0
  br i1 %.not74.i, label %.split.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %indvars.iv.next.i165 = add nuw nsw i64 %indvars.iv.i164, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i165, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread85.i, label %bb.bx

.thread85.i:                                      ; preds = %bb.by, %.lr.ph.i163, %._crit_edge
  %i.vf = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uf, i64 160
  %i.vh = load ptr, ptr %i.vg, align 8
  %i.vi = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8, ptr noundef %i.vh) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3775, ptr noundef nonnull @__func__.create_ctescan_plan) #10
  unreachable

.split.i:                                         ; preds = %bb.bx
  %indvars115.le.i = trunc i64 %indvars.iv.i164 to i32
  %i.vj = getelementptr inbounds nuw i8, ptr %.062.i.lcssa, i64 168
  %i.vk = load ptr, ptr %i.vj, align 8            ; 3 uses
  %.not.i.i166 = icmp eq ptr %i.vk, null
  br i1 %.not.i.i166, label %list_length.exit.i167, label %bb.bz

bb.bz:                                            ; preds = %.split.i
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 4
  %i.vm = load i32, ptr %i.vl, align 4
  br label %list_length.exit.i167

list_length.exit.i167:                            ; preds = %bb.bz, %.split.i
  %i.vn = phi i32 [ %i.vm, %bb.bz ], [ 0, %.split.i ]
  %.not75.i = icmp sgt i32 %i.vn, %indvars115.le.i
  br i1 %.not75.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %list_length.exit.i167
  %i.vo = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.vp = load ptr, ptr %i.uw, align 8
  %i.vq = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, ptr noundef %i.vp) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3777, ptr noundef nonnull @__func__.create_ctescan_plan) #10
  unreachable

bb.cb:                                            ; preds = %list_length.exit.i167
  %i.vr = getelementptr i8, ptr %i.vk, i64 16
  %.val81.i = load ptr, ptr %i.vr, align 8
  %3 = and i64 %indvars.iv.i164, 4294967295
  %4 = getelementptr inbounds nuw [8 x i8], ptr %.val81.i, i64 %3
  %i.vs = load i32, ptr %4, align 8               ; 3 uses
  %i.vt = icmp slt i32 %i.vs, 1
  br i1 %i.vt, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.vu = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.vv = load ptr, ptr %i.uw, align 8
  %i.vw = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, ptr noundef %i.vv) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3780, ptr noundef nonnull @__func__.create_ctescan_plan) #10
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.vx = getelementptr inbounds nuw i8, ptr %.062.i.lcssa, i64 160
  %i.vy = load ptr, ptr %i.vx, align 8            ; 3 uses
  %.not76.i = icmp eq ptr %i.vy, null
  br i1 %.not76.i, label %.thread93.i, label %.lr.ph105.i

.lr.ph105.i:                                      ; preds = %bb.cd
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 4
  %i.wa = load i32, ptr %i.vz, align 4            ; 2 uses
  %i.wb = icmp sgt i32 %i.wa, 0
  br i1 %i.wb, label %.lr.ph111.i, label %.thread93.i

.lr.ph111.i:                                      ; preds = %.lr.ph105.i
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %i.wd = load ptr, ptr %i.wc, align 8
  %wide.trip.count121.i = zext nneg i32 %i.wa to i64
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cf
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 2 uses
  %exitcond122.not.i = icmp eq i64 %indvars.iv.next119.i, %wide.trip.count121.i
  br i1 %exitcond122.not.i, label %.thread93.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph111.i
  %indvars.iv118.i = phi i64 [ 0, %.lr.ph111.i ], [ %indvars.iv.next119.i, %bb.ce ] ; 2 uses
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.wd, i64 %indvars.iv118.i
  %i.wf = load ptr, ptr %i.we, align 8            ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 24
  %i.wh = load i32, ptr %i.wg, align 8
  %i.wi = icmp eq i32 %i.wh, %i.vs
  br i1 %i.wi, label %.split108.i, label %bb.ce

.thread93.i:                                      ; preds = %bb.ce, %.lr.ph105.i, %bb.cd
  %i.wj = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.wk = load ptr, ptr %i.uw, align 8
  %i.wl = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, ptr noundef %i.wk) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3788, ptr noundef nonnull @__func__.create_ctescan_plan) #10
  unreachable

.split108.i:                                      ; preds = %bb.cf
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wf, i64 56
  %i.wn = load ptr, ptr %i.wm, align 8
  %i.wo = getelementptr i8, ptr %i.wn, i64 16
  %.val.i168 = load ptr, ptr %i.wo, align 8
  %i.wp = load i32, ptr %.val.i168, align 8
  %i.wq = tail call fastcc ptr @order_qual_clauses(ptr noundef %0, ptr noundef %.1115)
  %i.wr = tail call ptr @extract_actual_clauses(ptr noundef %i.wq, i1 noundef zeroext false) #10 ; 2 uses
  %i.ws = load ptr, ptr %i.m, align 8
  %.not78.i = icmp eq ptr %i.ws, null
  br i1 %.not78.i, label %create_ctescan_plan.exit, label %bb.cg

bb.cg:                                            ; preds = %.split108.i
  %i.wt = tail call ptr @replace_nestloop_params_mutator(ptr noundef %i.wr, ptr noundef %0)
  br label %create_ctescan_plan.exit

create_ctescan_plan.exit:                         ; preds = %.split108.i, %bb.cg
  %.065.i = phi ptr [ %i.wt, %bb.cg ], [ %i.wr, %.split108.i ]
  %i.wu = tail call noundef ptr @palloc0(i64 noundef 120) #10 ; 15 uses
  store i32 369, ptr %i.wu, align 4
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 48
  store ptr %.0112, ptr %i.wv, align 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 56
  store ptr %.065.i, ptr %i.ww, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wu, i64 64
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wu, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wx, i8 0, i64 16, i1 false)
  store i32 %i.ts, ptr %i.wy, align 8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wu, i64 112
  store i32 %i.vs, ptr %i.wz, align 8
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wu, i64 116
  store i32 %i.wp, ptr %i.xa, align 4
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.xc = load i32, ptr %i.xb, align 8
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wu, i64 4
  store i32 %i.xc, ptr %i.xd, align 4
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.xf = load double, ptr %i.xe, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  store double %i.xf, ptr %i.xg, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.xi = load double, ptr %i.xh, align 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wu, i64 16
  store double %i.xi, ptr %i.xj, align 8
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.xl = load double, ptr %i.xk, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wu, i64 24
  store double %i.xl, ptr %i.xm, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xo = load ptr, ptr %i.xn, align 8
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 40
  %i.xq = load i32, ptr %i.xp, align 8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wu, i64 32
  store i32 %i.xq, ptr %i.xr, align 8
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.xt = load i8, ptr %i.xs, align 8, !range !5, !noundef !6
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wu, i64 36
  store i8 %i.xt, ptr %i.xu, align 4
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.xw = load i8, ptr %i.xv, align 1, !range !5, !noundef !6
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wu, i64 37
  store i8 %i.xw, ptr %i.xx, align 1
  br label %create_foreignscan_plan.exit

bb.ch:                                            ; preds = %bb.s
  %i.xy = load ptr, ptr %i.e, align 8
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 112
  %i.ya = load i32, ptr %i.xz, align 8            ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.yc = load ptr, ptr %i.yb, align 8            ; 2 uses
  %.not.i169 = icmp eq ptr %i.yc, null
  br i1 %.not.i169, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.yd = zext i32 %i.ya to i64
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %i.yd
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.yg = load ptr, ptr %i.yf, align 8
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 80
  %i.yi = load ptr, ptr %i.yh, align 8
  %i.yj = add i32 %i.ya, -1
  %i.yk = getelementptr i8, ptr %i.yi, i64 16
  %.val.i172 = load ptr, ptr %i.yk, align 8
  %i.yl = sext i32 %i.yj to i64
  %i.ym = getelementptr inbounds [8 x i8], ptr %.val.i172, i64 %i.yl
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.in.i170 = phi ptr [ %i.ye, %bb.ci ], [ %i.ym, %bb.cj ]
  %i.yn = load ptr, ptr %.in.i170, align 8
  %i.yo = tail call fastcc ptr @order_qual_clauses(ptr noundef nonnull %0, ptr noundef %.1115)
  %i.yp = tail call ptr @extract_actual_clauses(ptr noundef %i.yo, i1 noundef zeroext false) #10 ; 2 uses
  %i.yq = load ptr, ptr %i.m, align 8
  %.not19.i = icmp eq ptr %i.yq, null
  br i1 %.not19.i, label %create_namedtuplestorescan_plan.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.yr = tail call ptr @replace_nestloop_params_mutator(ptr noundef %i.yp, ptr noundef nonnull %0)
  br label %create_namedtuplestorescan_plan.exit

create_namedtuplestorescan_plan.exit:             ; preds = %bb.ck, %bb.cl
  %.0.i171 = phi ptr [ %i.yr, %bb.cl ], [ %i.yp, %bb.ck ]
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 200
  %i.yt = load ptr, ptr %i.ys, align 8
  %i.yu = tail call noundef ptr @palloc0(i64 noundef 120) #10 ; 14 uses
  store i32 370, ptr %i.yu, align 4
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 48
  store ptr %.0112, ptr %i.yv, align 8
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 56
  store ptr %.0.i171, ptr %i.yw, align 8
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 64
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yu, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yx, i8 0, i64 16, i1 false)
  store i32 %i.ya, ptr %i.yy, align 8
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yu, i64 112
  store ptr %i.yt, ptr %i.yz, align 8
  %i.za = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.zb = load i32, ptr %i.za, align 8
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yu, i64 4
  store i32 %i.zb, ptr %i.zc, align 4
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ze = load double, ptr %i.zd, align 8
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  store double %i.ze, ptr %i.zf, align 8
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.zh = load double, ptr %i.zg, align 8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  store double %i.zh, ptr %i.zi, align 8
  %i.zj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.zk = load double, ptr %i.zj, align 8
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yu, i64 24
  store double %i.zk, ptr %i.zl, align 8
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zn = load ptr, ptr %i.zm, align 8
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 40
  %i.zp = load i32, ptr %i.zo, align 8
  %i.zq = getelementptr inbounds nuw i8, ptr %i.yu, i64 32
  store i32 %i.zp, ptr %i.zq, align 8
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.zs = load i8, ptr %i.zr, align 8, !range !5, !noundef !6
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yu, i64 36
  store i8 %i.zs, ptr %i.zt, align 4
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.zv = load i8, ptr %i.zu, align 1, !range !5, !noundef !6
  %i.zw = getelementptr inbounds nuw i8, ptr %i.yu, i64 37
  store i8 %i.zv, ptr %i.zw, align 1
  br label %create_foreignscan_plan.exit
end_hunk_0
begin_hunk_1_@create_groupingsets_plan:bb.a
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 112
  store i32 %i.ht, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 120
  store ptr %i.hm, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 128
  store ptr %i.ia, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 136
  store ptr %i.ie, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 144
  store double %i.ih, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 152
  store i64 %i.ij, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 160
  store ptr null, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ik, i64 168
  store ptr %i.if, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ik, i64 176
  store ptr %.191, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  store ptr %i.hw, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  store ptr %i.hu, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
  store ptr %i.e, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ik, i64 72
  store ptr null, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jb = load i32, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  store i32 %i.jb, ptr %i.jc, align 4
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.je = load double, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store double %i.je, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.jh = load double, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store double %i.jh, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jk = load double, ptr %i.jj, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  store double %i.jk, ptr %i.jl, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.jp = load i32, ptr %i.jo, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  store i32 %i.jp, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.js = load i8, ptr %i.jr, align 8, !range !5, !noundef !6
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ik, i64 36
  store i8 %i.js, ptr %i.jt, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.jv = load i8, ptr %i.ju, align 1, !range !5, !noundef !6
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ik, i64 37
  store i8 %i.jv, ptr %i.jw, align 1
  ret ptr %i.ik
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @create_agg_plan(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call fastcc ptr @create_plan_recurse(ptr noundef %0, ptr noundef %i.b, i32 noundef 4) ; 2 uses
  %i.d = tail call fastcc ptr @build_path_tlist(ptr noundef %0, ptr noundef %1)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call fastcc ptr @order_qual_clauses(ptr noundef %0, ptr noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = load <2 x i32>, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %list_length.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.a, %bb.b
  %i.n = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr @extract_grouping_cols(ptr noundef %i.k, ptr noundef %i.p) #10
  %i.r = load ptr, ptr %i.j, align 8
  %i.s = tail call ptr @extract_grouping_ops(ptr noundef %i.r) #10
  %i.t = load ptr, ptr %i.j, align 8
  %i.u = load ptr, ptr %i.o, align 8
  %i.v = tail call ptr @extract_grouping_collations(ptr noundef %i.t, ptr noundef %i.u) #10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = load double, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = tail call noundef ptr @palloc0(i64 noundef 184) #10 ; 21 uses
  store i32 383, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  store <2 x i32> %i.i, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store i32 %i.n, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  store ptr %i.q, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  store ptr %i.s, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  store ptr %i.v, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  store double %i.x, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  store i64 %i.z, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  store ptr %i.g, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.d, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr %i.c, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ar = load double, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store double %i.ar, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load double, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store double %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load double, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store double %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i32 %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = load i8, ptr %i.be, align 8, !range !5, !noundef !6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  store i8 %i.bf, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.bi = load i8, ptr %i.bh, align 1, !range !5, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 37
  store i8 %i.bi, ptr %i.bj, align 1
  ret ptr %i.aa
}

declare ptr @list_concat_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @use_physical_tlist(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 16) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = and i32 %2, 3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.critedge112

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.e = load i32, ptr %i.d, align 8
  switch i32 %i.e, label %.critedge112 [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %.not97 = icmp eq i32 %i.g, 0
  br i1 %.not97, label %bb.d, label %.critedge112

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %1, align 8
  switch i32 %i.h, label %bb.f [
    i32 306, label %.critedge112
    i32 299, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.critedge112, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.o = load i16, ptr %i.n, align 4              ; 2 uses
  %3 = sext i16 %i.o to i32                       ; 2 uses
  %i.p = icmp slt i16 %i.o, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.r = load ptr, ptr %i.q, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %4 = add nsw i32 %.076123, 1
  %exitcond.not = icmp eq i32 %.076123, 0
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !39

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %.076123 = phi i32 [ %3, %.lr.ph ], [ %4, %bb.g ] ; 3 uses
  %5 = sub nsw i32 %.076123, %3
  %6 = zext nneg i32 %5 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %6
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %.critedge112

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not98 = icmp eq ptr %i.w, null
  br i1 %.not98, label %.critedge108, label %.lr.ph126

.lr.ph126:                                        ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.x, align 4
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph129, label %.critedge108

.lr.ph129:                                        ; preds = %.lr.ph126, %.critedge
  %indvars.iv159.a = phi i64 [ %indvars.iv.next160.a, %.critedge ], [ 0, %.lr.ph126 ] ; 2 uses
  %i.ac = load ptr, ptr %i.y, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv159.a
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.z, align 8
  %i.ai = tail call zeroext i1 @bms_nonempty_difference(ptr noundef %i.ag, ptr noundef %i.ah) #10
  br i1 %i.ai, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph129
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.z, align 8
  %i.am = tail call zeroext i1 @bms_is_subset(ptr noundef %i.ak, ptr noundef %i.al) #10
  br i1 %i.am, label %.critedge112, label %.critedge

.critedge:                                        ; preds = %bb.i, %.lr.ph129
  %indvars.iv.next160.a = add nuw nsw i64 %indvars.iv159.a, 1 ; 2 uses
  %i.an = load i32, ptr %i.x, align 4
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next160.a, %i.ao
  br i1 %i.ap, label %.lr.ph129, label %.critedge108

.critedge108:                                     ; preds = %.critedge, %.lr.ph126, %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp eq i32 %i.ar, 360
  br i1 %i.as, label %bb.j, label %.critedge110

bb.j:                                             ; preds = %.critedge108
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %.not100130 = icmp sgt i32 %i.aw, 0
  br i1 %.not100130, label %.lr.ph133, label %.critedge110

.lr.ph133:                                        ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8
  %wide.trip.count = zext nneg i32 %i.aw to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count
  br i1 %exitcond165.not, label %.critedge110, label %bb.l, !llvm.loop !40

bb.l:                                             ; preds = %.lr.ph133, %bb.k
  %indvars.iv162 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next163, %bb.k ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv162
  %i.ba = load i8, ptr %i.az, align 1, !range !5, !noundef !6
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %.critedge112

.critedge110:                                     ; preds = %bb.k, %bb.j, %.critedge108
  %i.bc = and i32 %2, 4
  %.not101 = icmp eq i32 %i.bc, 0
  br i1 %.not101, label %.critedge112, label %bb.m

bb.m:                                             ; preds = %.critedge110
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not102 = icmp eq ptr %i.bg, null
  br i1 %.not102, label %.critedge112, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %.not103 = icmp eq ptr %i.bi, null
  br i1 %.not103, label %.critedge112, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bl = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph154, label %.critedge112

.lr.ph154:                                        ; preds = %.lr.ph138, %bb.s
  %i.bn = phi i32 [ %i.ce, %bb.s ], [ %i.bl, %.lr.ph138 ]
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %bb.s ], [ 0, %.lr.ph138 ] ; 3 uses
  %.0135152 = phi ptr [ %.2, %bb.s ], [ null, %.lr.ph138 ] ; 3 uses
  %i.bo = load ptr, ptr %i.bk, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv166
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.br = load ptr, ptr %i.bd, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv166
  %i.bv = load i32, ptr %i.bu, align 4
  %.not105 = icmp eq i32 %i.bv, 0
  br i1 %.not105, label %bb.s, label %bb.o

bb.o:                                             ; preds = %.lr.ph154
  %.not106 = icmp eq ptr %i.bq, null
  br i1 %.not106, label %.critedge112, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = load i32, ptr %i.bq, align 4
  %i.bx = icmp eq i32 %i.bw, 6
  br i1 %i.bx, label %bb.q, label %.critedge112

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bz = load i16, ptr %i.by, align 8
  %i.ca = sext i16 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, 7                    ; 2 uses
  %i.cc = tail call zeroext i1 @bms_is_member(i32 noundef %i.cb, ptr noundef %.0135152) #10
  br i1 %i.cc, label %.critedge112, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = tail call ptr @bms_add_member(ptr noundef %.0135152, i32 noundef %i.cb) #10
  %.pre = load i32, ptr %i.bj, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph154
  %i.ce = phi i32 [ %.pre, %bb.r ], [ %i.bn, %.lr.ph154 ] ; 2 uses
  %.2 = phi ptr [ %i.cd, %bb.r ], [ %.0135152, %.lr.ph154 ]
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next167, %i.cf
  br i1 %i.cg, label %.lr.ph154, label %.critedge112

.critedge112:                                     ; preds = %bb.h, %bb.i, %bb.l, %bb.s, %bb.p, %bb.o, %bb.q, %bb.n, %.lr.ph138, %.critedge110, %bb.m, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.10 = phi i1 [ false, %bb.i ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.q ], [ false, %bb.l ], [ true, %.critedge110 ], [ true, %bb.m ], [ true, %bb.n ], [ true, %.lr.ph138 ], [ false, %bb.o ], [ false, %bb.p ], [ true, %bb.s ], [ false, %bb.h ]
  ret i1 %.10
}

declare ptr @copyObjectImpl(ptr noundef) local_unnamed_addr #2

declare void @apply_pathtarget_labeling_to_tlist(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @build_physical_tlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @build_path_tlist(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %.fr = freeze ptr %i.d                          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.not26 = icmp eq ptr %.fr, null
  %i.j = load i32, ptr %i.g, align 4
  %i.k = icmp sgt i32 %i.j, 0                     ; 2 uses
  br i1 %.not26, label %.lr.ph.split.us.split, label %.lr.ph.split.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph
  br i1 %i.k, label %.lr.ph51, label %.critedge

.lr.ph51:                                         ; preds = %.lr.ph.split.us.split, %bb.c
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.c ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  %.02127.us50 = phi ptr [ %i.s, %bb.c ], [ null, %.lr.ph.split.us.split ]
  %.02028.us49 = phi i32 [ %i.t, %bb.c ], [ 1, %.lr.ph.split.us.split ] ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv60
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.i, align 8
  %.not25.us = icmp eq ptr %i.o, null
  br i1 %.not25.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph51
  %i.p = tail call ptr @replace_nestloop_params_mutator(ptr noundef %i.n, ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph51
  %.0.us = phi ptr [ %i.p, %bb.b ], [ %i.n, %.lr.ph51 ]
  %i.q = trunc i32 %.02028.us49 to i16
end_hunk_1
