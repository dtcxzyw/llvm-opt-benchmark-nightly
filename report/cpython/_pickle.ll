inline.NumInlined: 778
inline.NumDeleted: 166
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 38
begin_hunk_0_@load:bb.a
  %i.uc = getelementptr [8 x i8], ptr %i.ub, i64 %.val8.i.i305
  store ptr %i.ti, ptr %i.uc, align 8, !tbaa !40
  %i.ud = add i64 %.val8.i.i305, 1
  store i64 %i.ud, ptr %i.tl, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  br label %.backedge.backedge

bb.gf:                                            ; preds = %bb.o
  %i.ue = call fastcc i32 @load_counted_binunicode(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1)
  %i.uf = icmp slt i32 %i.ue, 0
  br i1 %i.uf, label %load_binint.exit.thread, label %.backedge.backedge

bb.gg:                                            ; preds = %bb.o
  %i.ug = call fastcc i32 @load_counted_binunicode(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 4)
  %i.uh = icmp slt i32 %i.ug, 0
  br i1 %i.uh, label %load_binint.exit.thread, label %.backedge.backedge

bb.gh:                                            ; preds = %bb.o
  %i.ui = call fastcc i32 @load_counted_binunicode(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 8)
  %i.uj = icmp slt i32 %i.ui, 0
  br i1 %i.uj, label %load_binint.exit.thread, label %.backedge.backedge

bb.gi:                                            ; preds = %bb.o
  %i.uk = call fastcc i32 @load_counted_tuple(ptr noundef %0, ptr noundef nonnull %1, i64 noundef 0)
  %i.ul = icmp slt i32 %i.uk, 0
  br i1 %i.ul, label %load_binint.exit.thread, label %.backedge.backedge

bb.gj:                                            ; preds = %bb.o
  %i.um = call fastcc i32 @load_counted_tuple(ptr noundef %0, ptr noundef nonnull %1, i64 noundef 1)
  %i.un = icmp slt i32 %i.um, 0
  br i1 %i.un, label %load_binint.exit.thread, label %.backedge.backedge

bb.gk:                                            ; preds = %bb.o
  %i.uo = call fastcc i32 @load_counted_tuple(ptr noundef %0, ptr noundef nonnull %1, i64 noundef 2)
  %i.up = icmp slt i32 %i.uo, 0
  br i1 %i.up, label %load_binint.exit.thread, label %.backedge.backedge

bb.gl:                                            ; preds = %bb.o
  %i.uq = call fastcc i32 @load_counted_tuple(ptr noundef %0, ptr noundef nonnull %1, i64 noundef 3)
  %i.ur = icmp slt i32 %i.uq, 0
  br i1 %i.ur, label %load_binint.exit.thread, label %.backedge.backedge

bb.gm:                                            ; preds = %bb.o
  %i.us = load i64, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.ut = icmp slt i64 %i.us, 1
  br i1 %i.ut, label %marker.exit.thread.i, label %bb.gn

marker.exit.thread.i:                             ; preds = %bb.gm
  %i.uu = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.uu, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.gn:                                            ; preds = %bb.gm
  %i.uv = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.uw = add nsw i64 %i.us, -1                   ; 4 uses
  store i64 %i.uw, ptr %i.v, align 8, !tbaa !178
  %i.ux = getelementptr [8 x i8], ptr %i.uv, i64 %i.uw ; 2 uses
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !60 ; 2 uses
  %i.uz = icmp ne i64 %i.uw, 0
  %i.va = zext i1 %i.uz to i32
  %i.vb = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.vc = getelementptr i8, ptr %i.vb, i64 32
  store i32 %i.va, ptr %i.vc, align 8, !tbaa !168
  %.not.i.i310 = icmp eq i64 %i.uw, 0
  br i1 %.not.i.i310, label %marker.exit.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.vd = getelementptr i8, ptr %i.ux, i64 -8
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !60
  br label %marker.exit.i

marker.exit.i:                                    ; preds = %bb.go, %bb.gn
  %i.vf = phi i64 [ %i.ve, %bb.go ], [ 0, %bb.gn ]
  %i.vg = getelementptr i8, ptr %i.vb, i64 40
  store i64 %i.vf, ptr %i.vg, align 8, !tbaa !170
  %i.vh = icmp slt i64 %i.uy, 0
  br i1 %i.vh, label %load_binint.exit.thread, label %load_tuple.exit

load_tuple.exit:                                  ; preds = %marker.exit.i
  %i.vi = getelementptr i8, ptr %i.vb, i64 16
  %.val.i311 = load i64, ptr %i.vi, align 8, !tbaa !38
  %i.vj = sub i64 %.val.i311, %i.uy
  %i.vk = call fastcc i32 @load_counted_tuple(ptr noundef readonly %0, ptr noundef nonnull %1, i64 noundef %i.vj)
  %i.vl = icmp slt i32 %i.vk, 0
  br i1 %i.vl, label %load_binint.exit.thread, label %.backedge.backedge

bb.gp:                                            ; preds = %bb.o
  %i.vm = call ptr @PyList_New(i64 noundef 0) #14 ; 2 uses
  %i.vn = icmp eq ptr %i.vm, null
  br i1 %i.vn, label %load_binint.exit.thread, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.vo = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.vp = getelementptr i8, ptr %i.vo, i64 16     ; 3 uses
  %.val9.i.i313 = load i64, ptr %i.vp, align 8, !tbaa !38 ; 5 uses
  %i.vq = getelementptr i8, ptr %i.vo, i64 48     ; 2 uses
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !171
  %i.vs = icmp eq i64 %.val9.i.i313, %i.vr
  %i.vt = getelementptr i8, ptr %i.vo, i64 24     ; 2 uses
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !172 ; 2 uses
  br i1 %i.vs, label %bb.gr, label %load_empty_list.exit

bb.gr:                                            ; preds = %bb.gq
  %i.vv = lshr i64 %.val9.i.i313, 3
  %i.vw = add nuw nsw i64 %i.vv, 6                ; 2 uses
  %i.vx = sub i64 9223372036854775807, %.val9.i.i313
  %i.vy = icmp ugt i64 %i.vw, %i.vx
  br i1 %i.vy, label %bb.gu, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.vz = add i64 %i.vw, %.val9.i.i313            ; 3 uses
  %i.wa = icmp ugt i64 %i.vz, 1152921504606846975
  br i1 %i.wa, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.wb = shl nuw nsw i64 %i.vz, 3
  %i.wc = call ptr @PyMem_Realloc(ptr noundef %i.vu, i64 noundef %i.wb) #14 ; 3 uses
  %i.wd = icmp eq ptr %i.wc, null
  br i1 %i.wd, label %bb.gu, label %Pdata_grow.exit.i.i317

Pdata_grow.exit.i.i317:                           ; preds = %bb.gt
  store ptr %i.wc, ptr %i.vt, align 8, !tbaa !172
  store i64 %i.vz, ptr %i.vq, align 8, !tbaa !171
  %.val8.pre.i.i318 = load i64, ptr %i.vp, align 8, !tbaa !38
  br label %load_empty_list.exit

bb.gu:                                            ; preds = %bb.gt, %bb.gs, %bb.gr
  %i.we = call ptr @PyErr_NoMemory() #14          ; 0 uses
  br label %load_binint.exit.thread

load_empty_list.exit:                             ; preds = %bb.gq, %Pdata_grow.exit.i.i317
  %.val8.i.i315 = phi i64 [ %.val8.pre.i.i318, %Pdata_grow.exit.i.i317 ], [ %.val9.i.i313, %bb.gq ] ; 2 uses
  %i.wf = phi ptr [ %i.wc, %Pdata_grow.exit.i.i317 ], [ %i.vu, %bb.gq ]
  %i.wg = getelementptr [8 x i8], ptr %i.wf, i64 %.val8.i.i315
  store ptr %i.vm, ptr %i.wg, align 8, !tbaa !40
  %i.wh = add i64 %.val8.i.i315, 1
  store i64 %i.wh, ptr %i.vp, align 8, !tbaa !38
  br label %.backedge.backedge

bb.gv:                                            ; preds = %bb.o
  %i.wi = load i64, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.wj = icmp slt i64 %i.wi, 1
  br i1 %i.wj, label %marker.exit.thread.i328, label %bb.gw

marker.exit.thread.i328:                          ; preds = %bb.gv
  %i.wk = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.wk, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.gw:                                            ; preds = %bb.gv
  %i.wl = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.wm = add nsw i64 %i.wi, -1                   ; 4 uses
  store i64 %i.wm, ptr %i.v, align 8, !tbaa !178
  %i.wn = getelementptr [8 x i8], ptr %i.wl, i64 %i.wm ; 2 uses
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !60 ; 10 uses
  %i.wp = icmp ne i64 %i.wm, 0
  %i.wq = zext i1 %i.wp to i32
  %i.wr = load ptr, ptr %i.w, align 8, !tbaa !173 ; 4 uses
  %i.ws = getelementptr i8, ptr %i.wr, i64 32
  store i32 %i.wq, ptr %i.ws, align 8, !tbaa !168
  %.not.i.i319 = icmp eq i64 %i.wm, 0
  br i1 %.not.i.i319, label %marker.exit.i320, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.wt = getelementptr i8, ptr %i.wn, i64 -8
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !60
  br label %marker.exit.i320

marker.exit.i320:                                 ; preds = %bb.gx, %bb.gw
  %i.wv = phi i64 [ %i.wu, %bb.gx ], [ 0, %bb.gw ]
  %i.ww = getelementptr i8, ptr %i.wr, i64 40
  store i64 %i.wv, ptr %i.ww, align 8, !tbaa !170
  %i.wx = icmp slt i64 %i.wo, 0
  br i1 %i.wx, label %load_binint.exit.thread, label %bb.gy

bb.gy:                                            ; preds = %marker.exit.i320
  %i.wy = getelementptr i8, ptr %i.wr, i64 16     ; 2 uses
  %.val.i.i321 = load i64, ptr %i.wy, align 8, !tbaa !38 ; 3 uses
  %i.wz = sub i64 %.val.i.i321, %i.wo             ; 6 uses
  %i.xa = call ptr @PyList_New(i64 noundef %i.wz) #14 ; 3 uses
  %i.xb = icmp eq ptr %i.xa, null
  br i1 %i.xb, label %load_binint.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.gy
  %i.xc = icmp sgt i64 %i.wz, 0
  br i1 %i.xc, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.xd = getelementptr i8, ptr %i.wr, i64 24
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !172 ; 7 uses
  %i.xf = getelementptr i8, ptr %i.xa, i64 24
  %.val19.i.i = load ptr, ptr %i.xf, align 8, !tbaa !149 ; 7 uses
  %min.iters.check = icmp ult i64 %i.wz, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val19.i.i1979 = ptrtoaddr ptr %.val19.i.i to i64
  %i.xg = ptrtoaddr ptr %i.xe to i64
  %i.xh = shl i64 %i.wo, 3
  %i.xi = add i64 %i.xh, %i.xg
  %i.xj = sub i64 %i.xi, %.val19.i.i1979
  %diff.check = icmp ugt i64 %i.xj, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.wz, 9223372036854775804     ; 4 uses
  %i.xk = add nuw i64 %i.wo, %n.vec
  %i.xl = getelementptr [8 x i8], ptr %i.xe, i64 %i.wo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.xm = getelementptr [8 x i8], ptr %i.xl, i64 %index ; 2 uses
  %i.xn = getelementptr i8, ptr %i.xm, i64 16
  %wide.load = load <2 x ptr>, ptr %i.xm, align 8, !tbaa !40
  %wide.load1980 = load <2 x ptr>, ptr %i.xn, align 8, !tbaa !40
  %i.xo = getelementptr [8 x i8], ptr %.val19.i.i, i64 %index ; 2 uses
  %i.xp = getelementptr i8, ptr %i.xo, i64 16
  store <2 x ptr> %wide.load, ptr %i.xo, align 8, !tbaa !40
  store <2 x ptr> %wide.load1980, ptr %i.xp, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.xq = icmp eq i64 %index.next, %n.vec
  br i1 %i.xq, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.wz, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.021.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.01620.i.i.ph = phi i64 [ %i.wo, %vector.memcheck ], [ %i.wo, %.lr.ph.i.i ], [ %i.xk, %middle.block ] ; 2 uses
  %i.xr = sub i64 %.val.i.i321, %i.wo
  %xtraiter2252 = and i64 %i.xr, 3                ; 2 uses
  %lcmp.mod2253.not = icmp eq i64 %xtraiter2252, 0
  br i1 %lcmp.mod2253.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.021.i.i.prol = phi i64 [ %i.xw, %scalar.ph.prol ], [ %.021.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.01620.i.i.prol = phi i64 [ %i.xv, %scalar.ph.prol ], [ %.01620.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter2254 = phi i64 [ %prol.iter2254.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.xs = getelementptr [8 x i8], ptr %i.xe, i64 %.01620.i.i.prol
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !40
  %i.xu = getelementptr [8 x i8], ptr %.val19.i.i, i64 %.021.i.i.prol
  store ptr %i.xt, ptr %i.xu, align 8, !tbaa !40
  %i.xv = add i64 %.01620.i.i.prol, 1             ; 2 uses
  %i.xw = add nuw nsw i64 %.021.i.i.prol, 1       ; 2 uses
  %prol.iter2254.next = add i64 %prol.iter2254, 1 ; 2 uses
  %prol.iter2254.cmp.not = icmp eq i64 %prol.iter2254.next, %xtraiter2252
  br i1 %prol.iter2254.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !185

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.021.i.i.unr = phi i64 [ %.021.i.i.ph, %scalar.ph.preheader ], [ %i.xw, %scalar.ph.prol ]
  %.01620.i.i.unr = phi i64 [ %.01620.i.i.ph, %scalar.ph.preheader ], [ %i.xv, %scalar.ph.prol ]
  %i.xx = sub i64 %.021.i.i.ph, %.val.i.i321
  %i.xy = add i64 %i.xx, %i.wo
  %i.xz = icmp ugt i64 %i.xy, -4
  br i1 %i.xz, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.021.i.i = phi i64 [ %i.yt, %scalar.ph ], [ %.021.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01620.i.i = phi i64 [ %i.ys, %scalar.ph ], [ %.01620.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ya = getelementptr [8 x i8], ptr %i.xe, i64 %.01620.i.i
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !40
  %i.yc = getelementptr [8 x i8], ptr %.val19.i.i, i64 %.021.i.i
  store ptr %i.yb, ptr %i.yc, align 8, !tbaa !40
  %i.yd = getelementptr [8 x i8], ptr %i.xe, i64 %.01620.i.i
  %i.ye = getelementptr i8, ptr %i.yd, i64 8
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !40
  %i.yg = getelementptr [8 x i8], ptr %.val19.i.i, i64 %.021.i.i
  %i.yh = getelementptr i8, ptr %i.yg, i64 8
  store ptr %i.yf, ptr %i.yh, align 8, !tbaa !40
  %i.yi = getelementptr [8 x i8], ptr %i.xe, i64 %.01620.i.i
  %i.yj = getelementptr i8, ptr %i.yi, i64 16
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !40
  %i.yl = getelementptr [8 x i8], ptr %.val19.i.i, i64 %.021.i.i
  %i.ym = getelementptr i8, ptr %i.yl, i64 16
  store ptr %i.yk, ptr %i.ym, align 8, !tbaa !40
  %i.yn = getelementptr [8 x i8], ptr %i.xe, i64 %.01620.i.i
  %i.yo = getelementptr i8, ptr %i.yn, i64 24
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !40
  %i.yq = getelementptr [8 x i8], ptr %.val19.i.i, i64 %.021.i.i
  %i.yr = getelementptr i8, ptr %i.yq, i64 24
  store ptr %i.yp, ptr %i.yr, align 8, !tbaa !40
  %i.ys = add i64 %.01620.i.i, 4
  %i.yt = add nuw nsw i64 %.021.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.yt, %i.wz
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %scalar.ph, !llvm.loop !187

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i.i
  store i64 %i.wo, ptr %i.wy, align 8, !tbaa !38
  %i.yu = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.yv = getelementptr i8, ptr %i.yu, i64 16     ; 3 uses
  %.val9.i.i322 = load i64, ptr %i.yv, align 8, !tbaa !38 ; 5 uses
  %i.yw = getelementptr i8, ptr %i.yu, i64 48     ; 2 uses
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !171
  %i.yy = icmp eq i64 %.val9.i.i322, %i.yx
  %i.yz = getelementptr i8, ptr %i.yu, i64 24     ; 2 uses
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !172 ; 2 uses
  br i1 %i.yy, label %bb.gz, label %load_list.exit

bb.gz:                                            ; preds = %.loopexit.i
  %i.zb = lshr i64 %.val9.i.i322, 3
  %i.zc = add nuw nsw i64 %i.zb, 6                ; 2 uses
  %i.zd = sub i64 9223372036854775807, %.val9.i.i322
  %i.ze = icmp ugt i64 %i.zc, %i.zd
  br i1 %i.ze, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.zf = add i64 %i.zc, %.val9.i.i322            ; 3 uses
  %i.zg = icmp ugt i64 %i.zf, 1152921504606846975
  br i1 %i.zg, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.zh = shl nuw nsw i64 %i.zf, 3
  %i.zi = call ptr @PyMem_Realloc(ptr noundef %i.za, i64 noundef %i.zh) #14 ; 3 uses
  %i.zj = icmp eq ptr %i.zi, null
  br i1 %i.zj, label %bb.hc, label %Pdata_grow.exit.i.i326

Pdata_grow.exit.i.i326:                           ; preds = %bb.hb
  store ptr %i.zi, ptr %i.yz, align 8, !tbaa !172
  store i64 %i.zf, ptr %i.yw, align 8, !tbaa !171
  %.val8.pre.i.i327 = load i64, ptr %i.yv, align 8, !tbaa !38
  br label %load_list.exit

bb.hc:                                            ; preds = %bb.hb, %bb.ha, %bb.gz
  %i.zk = call ptr @PyErr_NoMemory() #14          ; 0 uses
  br label %load_binint.exit.thread

load_list.exit:                                   ; preds = %.loopexit.i, %Pdata_grow.exit.i.i326
  %.val8.i.i324 = phi i64 [ %.val8.pre.i.i327, %Pdata_grow.exit.i.i326 ], [ %.val9.i.i322, %.loopexit.i ] ; 2 uses
  %i.zl = phi ptr [ %i.zi, %Pdata_grow.exit.i.i326 ], [ %i.za, %.loopexit.i ]
  %i.zm = getelementptr [8 x i8], ptr %i.zl, i64 %.val8.i.i324
  store ptr %i.xa, ptr %i.zm, align 8, !tbaa !40
  %i.zn = add i64 %.val8.i.i324, 1
  store i64 %i.zn, ptr %i.yv, align 8, !tbaa !38
  br label %.backedge.backedge

bb.hd:                                            ; preds = %bb.o
  %i.zo = call ptr @PyDict_New() #14              ; 2 uses
  %i.zp = icmp eq ptr %i.zo, null
  br i1 %i.zp, label %load_binint.exit.thread, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.zq = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.zr = getelementptr i8, ptr %i.zq, i64 16     ; 3 uses
  %.val9.i.i329 = load i64, ptr %i.zr, align 8, !tbaa !38 ; 5 uses
  %i.zs = getelementptr i8, ptr %i.zq, i64 48     ; 2 uses
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !171
  %i.zu = icmp eq i64 %.val9.i.i329, %i.zt
  %i.zv = getelementptr i8, ptr %i.zq, i64 24     ; 2 uses
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !172 ; 2 uses
  br i1 %i.zu, label %bb.hf, label %load_empty_dict.exit

bb.hf:                                            ; preds = %bb.he
  %i.zx = lshr i64 %.val9.i.i329, 3
  %i.zy = add nuw nsw i64 %i.zx, 6                ; 2 uses
  %i.zz = sub i64 9223372036854775807, %.val9.i.i329
  %i.aaa = icmp ugt i64 %i.zy, %i.zz
  br i1 %i.aaa, label %bb.hi, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aab = add i64 %i.zy, %.val9.i.i329           ; 3 uses
  %i.aac = icmp ugt i64 %i.aab, 1152921504606846975
  br i1 %i.aac, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aad = shl nuw nsw i64 %i.aab, 3
  %i.aae = call ptr @PyMem_Realloc(ptr noundef %i.zw, i64 noundef %i.aad) #14 ; 3 uses
  %i.aaf = icmp eq ptr %i.aae, null
  br i1 %i.aaf, label %bb.hi, label %Pdata_grow.exit.i.i333

Pdata_grow.exit.i.i333:                           ; preds = %bb.hh
  store ptr %i.aae, ptr %i.zv, align 8, !tbaa !172
  store i64 %i.aab, ptr %i.zs, align 8, !tbaa !171
  %.val8.pre.i.i334 = load i64, ptr %i.zr, align 8, !tbaa !38
  br label %load_empty_dict.exit

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.hf
  %i.aag = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_binint.exit.thread

load_empty_dict.exit:                             ; preds = %bb.he, %Pdata_grow.exit.i.i333
  %.val8.i.i331 = phi i64 [ %.val8.pre.i.i334, %Pdata_grow.exit.i.i333 ], [ %.val9.i.i329, %bb.he ] ; 2 uses
  %i.aah = phi ptr [ %i.aae, %Pdata_grow.exit.i.i333 ], [ %i.zw, %bb.he ]
  %i.aai = getelementptr [8 x i8], ptr %i.aah, i64 %.val8.i.i331
  store ptr %i.zo, ptr %i.aai, align 8, !tbaa !40
  %i.aaj = add i64 %.val8.i.i331, 1
  store i64 %i.aaj, ptr %i.zr, align 8, !tbaa !38
  br label %.backedge.backedge

bb.hj:                                            ; preds = %bb.o
  %i.aak = load i64, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.aal = icmp slt i64 %i.aak, 1
  br i1 %i.aal, label %marker.exit.thread.i347, label %bb.hk

marker.exit.thread.i347:                          ; preds = %bb.hj
  %i.aam = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.aam, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.hk:                                            ; preds = %bb.hj
  %i.aan = load ptr, ptr %i.aw, align 8, !tbaa !181
end_hunk_0
begin_hunk_1_@load:bb.a
  %i.acn = icmp eq i64 %.val9.i.i340, %i.acm
  %i.aco = getelementptr i8, ptr %i.acj, i64 24   ; 2 uses
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !172 ; 2 uses
  br i1 %i.acn, label %bb.ia, label %load_dict.exit

bb.ia:                                            ; preds = %Pdata_clear.exit.i
  %i.acq = lshr i64 %.val9.i.i340, 3
  %i.acr = add nuw nsw i64 %i.acq, 6              ; 2 uses
  %i.acs = sub i64 9223372036854775807, %.val9.i.i340
  %i.act = icmp ugt i64 %i.acr, %i.acs
  br i1 %i.act, label %bb.id, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.acu = add i64 %i.acr, %.val9.i.i340          ; 3 uses
  %i.acv = icmp ugt i64 %i.acu, 1152921504606846975
  br i1 %i.acv, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.acw = shl nuw nsw i64 %i.acu, 3
  %i.acx = call ptr @PyMem_Realloc(ptr noundef %i.acp, i64 noundef %i.acw) #14 ; 3 uses
  %i.acy = icmp eq ptr %i.acx, null
  br i1 %i.acy, label %bb.id, label %Pdata_grow.exit.i.i343

Pdata_grow.exit.i.i343:                           ; preds = %bb.ic
  store ptr %i.acx, ptr %i.aco, align 8, !tbaa !172
  store i64 %i.acu, ptr %i.acl, align 8, !tbaa !171
  %.val8.pre.i.i344 = load i64, ptr %i.ack, align 8, !tbaa !38
  br label %load_dict.exit

bb.id:                                            ; preds = %bb.ic, %bb.ib, %bb.ia
  %i.acz = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_binint.exit.thread

load_dict.exit:                                   ; preds = %Pdata_clear.exit.i, %Pdata_grow.exit.i.i343
  %.val8.i.i342 = phi i64 [ %.val8.pre.i.i344, %Pdata_grow.exit.i.i343 ], [ %.val9.i.i340, %Pdata_clear.exit.i ] ; 2 uses
  %i.ada = phi ptr [ %i.acx, %Pdata_grow.exit.i.i343 ], [ %i.acp, %Pdata_clear.exit.i ]
  %i.adb = getelementptr [8 x i8], ptr %i.ada, i64 %.val8.i.i342
  store ptr %i.abb, ptr %i.adb, align 8, !tbaa !40
  %i.adc = add i64 %.val8.i.i342, 1
  store i64 %i.adc, ptr %i.ack, align 8, !tbaa !38
  br label %.backedge.backedge

bb.ie:                                            ; preds = %bb.o
  %i.add = call ptr @PySet_New(ptr noundef null) #14 ; 2 uses
  %i.ade = icmp eq ptr %i.add, null
  br i1 %i.ade, label %load_binint.exit.thread, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.adf = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.adg = getelementptr i8, ptr %i.adf, i64 16   ; 3 uses
  %.val9.i.i348 = load i64, ptr %i.adg, align 8, !tbaa !38 ; 5 uses
  %i.adh = getelementptr i8, ptr %i.adf, i64 48   ; 2 uses
  %i.adi = load i64, ptr %i.adh, align 8, !tbaa !171
  %i.adj = icmp eq i64 %.val9.i.i348, %i.adi
  %i.adk = getelementptr i8, ptr %i.adf, i64 24   ; 2 uses
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !172 ; 2 uses
  br i1 %i.adj, label %bb.ig, label %load_empty_set.exit

bb.ig:                                            ; preds = %bb.if
  %i.adm = lshr i64 %.val9.i.i348, 3
  %i.adn = add nuw nsw i64 %i.adm, 6              ; 2 uses
  %i.ado = sub i64 9223372036854775807, %.val9.i.i348
  %i.adp = icmp ugt i64 %i.adn, %i.ado
  br i1 %i.adp, label %bb.ij, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.adq = add i64 %i.adn, %.val9.i.i348          ; 3 uses
  %i.adr = icmp ugt i64 %i.adq, 1152921504606846975
  br i1 %i.adr, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.ads = shl nuw nsw i64 %i.adq, 3
  %i.adt = call ptr @PyMem_Realloc(ptr noundef %i.adl, i64 noundef %i.ads) #14 ; 3 uses
  %i.adu = icmp eq ptr %i.adt, null
  br i1 %i.adu, label %bb.ij, label %Pdata_grow.exit.i.i352

Pdata_grow.exit.i.i352:                           ; preds = %bb.ii
  store ptr %i.adt, ptr %i.adk, align 8, !tbaa !172
  store i64 %i.adq, ptr %i.adh, align 8, !tbaa !171
  %.val8.pre.i.i353 = load i64, ptr %i.adg, align 8, !tbaa !38
  br label %load_empty_set.exit

bb.ij:                                            ; preds = %bb.ii, %bb.ih, %bb.ig
  %i.adv = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_binint.exit.thread

load_empty_set.exit:                              ; preds = %bb.if, %Pdata_grow.exit.i.i352
  %.val8.i.i350 = phi i64 [ %.val8.pre.i.i353, %Pdata_grow.exit.i.i352 ], [ %.val9.i.i348, %bb.if ] ; 2 uses
  %i.adw = phi ptr [ %i.adt, %Pdata_grow.exit.i.i352 ], [ %i.adl, %bb.if ]
  %i.adx = getelementptr [8 x i8], ptr %i.adw, i64 %.val8.i.i350
  store ptr %i.add, ptr %i.adx, align 8, !tbaa !40
  %i.ady = add i64 %.val8.i.i350, 1
  store i64 %i.ady, ptr %i.adg, align 8, !tbaa !38
  br label %.backedge.backedge

bb.ik:                                            ; preds = %bb.o
  %i.adz = load i64, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.aea = icmp slt i64 %i.adz, 1
  br i1 %i.aea, label %marker.exit.thread.i372, label %bb.il

marker.exit.thread.i372:                          ; preds = %bb.ik
  %i.aeb = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.aeb, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.il:                                            ; preds = %bb.ik
  %i.aec = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.aed = add nsw i64 %i.adz, -1                 ; 4 uses
  store i64 %i.aed, ptr %i.v, align 8, !tbaa !178
  %i.aee = getelementptr [8 x i8], ptr %i.aec, i64 %i.aed ; 2 uses
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !60 ; 18 uses
  %i.aeg = icmp ne i64 %i.aed, 0                  ; 2 uses
  %i.aeh = zext i1 %i.aeg to i32
  %i.aei = load ptr, ptr %i.w, align 8, !tbaa !173 ; 5 uses
  %i.aej = getelementptr i8, ptr %i.aei, i64 32
  store i32 %i.aeh, ptr %i.aej, align 8, !tbaa !168
  %.not.i69.i = icmp eq i64 %i.aed, 0
  br i1 %.not.i69.i, label %marker.exit.i354, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.aek = getelementptr i8, ptr %i.aee, i64 -8
  %i.ael = load i64, ptr %i.aek, align 8, !tbaa !60
  br label %marker.exit.i354

marker.exit.i354:                                 ; preds = %bb.im, %bb.il
  %i.aem = phi i64 [ %i.ael, %bb.im ], [ 0, %bb.il ] ; 2 uses
  %i.aen = getelementptr i8, ptr %i.aei, i64 40
  store i64 %i.aem, ptr %i.aen, align 8, !tbaa !170
  %i.aeo = icmp slt i64 %i.aef, 0
  br i1 %i.aeo, label %load_binint.exit.thread, label %bb.in

bb.in:                                            ; preds = %marker.exit.i354
  %i.aep = getelementptr i8, ptr %i.aei, i64 16
  %.val66.i = load i64, ptr %i.aep, align 8, !tbaa !38 ; 4 uses
  %i.aeq = icmp sle i64 %i.aef, %.val66.i
  %.not.i355 = icmp sgt i64 %i.aef, %i.aem
  %or.cond.i = select i1 %i.aeq, i1 %.not.i355, i1 false
  br i1 %or.cond.i, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %.val67.i = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.aer = select i1 %i.aeg, ptr @.str.102, ptr @.str.103
  call void @PyErr_SetString(ptr noundef %.val67.i, ptr noundef nonnull %i.aer) #14
  br label %load_binint.exit.thread

bb.ip:                                            ; preds = %bb.in
  %i.aes = getelementptr i8, ptr %i.aei, i64 24
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !172
  %i.aeu = getelementptr [8 x i8], ptr %i.aet, i64 %i.aef
  %i.aev = getelementptr i8, ptr %i.aeu, i64 -8
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !40 ; 3 uses
  %i.aex = getelementptr i8, ptr %i.aew, i64 8
  %.val65.i = load ptr, ptr %i.aex, align 8, !tbaa !52 ; 2 uses
  %.not81.i = icmp eq ptr %.val65.i, @PySet_Type
  br i1 %.not81.i, label %.thread.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.aey = call i32 @PyType_IsSubtype(ptr noundef %.val65.i, ptr noundef nonnull @PySet_Type) #14
  %.not54.i = icmp eq i32 %i.aey, 0
  br i1 %.not54.i, label %bb.iv, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %.pre86.i = load ptr, ptr %i.w, align 8, !tbaa !173 ; 4 uses
  %.phi.trans.insert.i356 = getelementptr i8, ptr %.pre86.i, i64 40
  %.pre87.i = load i64, ptr %.phi.trans.insert.i356, align 8, !tbaa !170
  %i.aez = icmp slt i64 %i.aef, %.pre87.i
  br i1 %i.aez, label %bb.is, label %..thread.i_crit_edge

..thread.i_crit_edge:                             ; preds = %bb.ir
  %.phi.trans.insert = getelementptr i8, ptr %.pre86.i, i64 16
  %.val.i.i357.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %.thread.i

bb.is:                                            ; preds = %bb.ir
  %.val24.i.i = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.afa = getelementptr i8, ptr %.pre86.i, i64 32
  %.val25.i.i = load i32, ptr %i.afa, align 8, !tbaa !168
  %.not.i.i.i362 = icmp eq i32 %.val25.i.i, 0
  %i.afb = select i1 %.not.i.i.i362, ptr @.str.103, ptr @.str.102
  call void @PyErr_SetString(ptr noundef %.val24.i.i, ptr noundef nonnull %i.afb) #14
  br label %load_binint.exit.thread

.thread.i:                                        ; preds = %..thread.i_crit_edge, %bb.ip
  %.val.i.i357 = phi i64 [ %.val.i.i357.pre, %..thread.i_crit_edge ], [ %.val66.i, %bb.ip ] ; 3 uses
  %i.afc = phi ptr [ %.pre86.i, %..thread.i_crit_edge ], [ %i.aei, %bb.ip ] ; 2 uses
  %i.afd = getelementptr i8, ptr %i.afc, i64 16
  %i.afe = sub i64 %.val.i.i357, %i.aef           ; 6 uses
  %i.aff = call ptr @PyTuple_New(i64 noundef %i.afe) #14 ; 7 uses
  %i.afg = ptrtoaddr ptr %i.aff to i64
  %i.afh = icmp eq ptr %i.aff, null
  br i1 %i.afh, label %load_binint.exit.thread, label %.preheader.i.i358

.preheader.i.i358:                                ; preds = %.thread.i
  %i.afi = icmp sgt i64 %i.afe, 0
  br i1 %i.afi, label %.lr.ph.i.i360, label %.loopexit.i359

.lr.ph.i.i360:                                    ; preds = %.preheader.i.i358
  %i.afj = getelementptr i8, ptr %i.afc, i64 24
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !172 ; 7 uses
  %i.afl = getelementptr i8, ptr %i.aff, i64 32   ; 6 uses
  %min.iters.check1985 = icmp ult i64 %i.afe, 6
  br i1 %min.iters.check1985, label %scalar.ph1984.preheader, label %vector.memcheck1982

vector.memcheck1982:                              ; preds = %.lr.ph.i.i360
  %i.afm = ptrtoaddr ptr %i.afk to i64
  %i.afn = shl i64 %i.aef, 3
  %i.afo = add i64 %i.afn, %i.afm
  %i.afp = sub i64 %i.afg, %i.afo
  %diff.check1983 = icmp ugt i64 %i.afp, -32
  br i1 %diff.check1983, label %scalar.ph1984.preheader, label %vector.ph1986

vector.ph1986:                                    ; preds = %vector.memcheck1982
  %n.vec1988 = and i64 %i.afe, 9223372036854775804 ; 4 uses
  %i.afq = add nuw i64 %i.aef, %n.vec1988
  %i.afr = getelementptr [8 x i8], ptr %i.afk, i64 %i.aef
  br label %vector.body1989

vector.body1989:                                  ; preds = %vector.body1989, %vector.ph1986
  %index1990 = phi i64 [ 0, %vector.ph1986 ], [ %index.next1993, %vector.body1989 ] ; 3 uses
  %i.afs = getelementptr [8 x i8], ptr %i.afr, i64 %index1990 ; 2 uses
  %i.aft = getelementptr i8, ptr %i.afs, i64 16
  %wide.load1991 = load <2 x ptr>, ptr %i.afs, align 8, !tbaa !40
  %wide.load1992 = load <2 x ptr>, ptr %i.aft, align 8, !tbaa !40
  %i.afu = getelementptr [8 x i8], ptr %i.afl, i64 %index1990 ; 2 uses
  %i.afv = getelementptr i8, ptr %i.afu, i64 16
  store <2 x ptr> %wide.load1991, ptr %i.afu, align 8, !tbaa !40
  store <2 x ptr> %wide.load1992, ptr %i.afv, align 8, !tbaa !40
  %index.next1993 = add nuw i64 %index1990, 4     ; 2 uses
  %i.afw = icmp eq i64 %index.next1993, %n.vec1988
  br i1 %i.afw, label %middle.block1994, label %vector.body1989, !llvm.loop !189

middle.block1994:                                 ; preds = %vector.body1989
  %cmp.n1995 = icmp eq i64 %i.afe, %n.vec1988
  br i1 %cmp.n1995, label %.loopexit.i359, label %scalar.ph1984.preheader

scalar.ph1984.preheader:                          ; preds = %vector.memcheck1982, %.lr.ph.i.i360, %middle.block1994
  %.027.i.i.ph = phi i64 [ 0, %vector.memcheck1982 ], [ 0, %.lr.ph.i.i360 ], [ %n.vec1988, %middle.block1994 ] ; 3 uses
  %.02026.i.i.ph = phi i64 [ %i.aef, %vector.memcheck1982 ], [ %i.aef, %.lr.ph.i.i360 ], [ %i.afq, %middle.block1994 ] ; 2 uses
  %i.afx = sub i64 %.val.i.i357, %i.aef
  %xtraiter2249 = and i64 %i.afx, 3               ; 2 uses
  %lcmp.mod2250.not = icmp eq i64 %xtraiter2249, 0
  br i1 %lcmp.mod2250.not, label %scalar.ph1984.prol.loopexit, label %scalar.ph1984.prol

scalar.ph1984.prol:                               ; preds = %scalar.ph1984.preheader, %scalar.ph1984.prol
  %.027.i.i.prol = phi i64 [ %i.agc, %scalar.ph1984.prol ], [ %.027.i.i.ph, %scalar.ph1984.preheader ] ; 2 uses
  %.02026.i.i.prol = phi i64 [ %i.agb, %scalar.ph1984.prol ], [ %.02026.i.i.ph, %scalar.ph1984.preheader ] ; 2 uses
  %prol.iter2251 = phi i64 [ %prol.iter2251.next, %scalar.ph1984.prol ], [ 0, %scalar.ph1984.preheader ]
  %i.afy = getelementptr [8 x i8], ptr %i.afk, i64 %.02026.i.i.prol
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !40
  %i.aga = getelementptr [8 x i8], ptr %i.afl, i64 %.027.i.i.prol
  store ptr %i.afz, ptr %i.aga, align 8, !tbaa !40
  %i.agb = add i64 %.02026.i.i.prol, 1            ; 2 uses
  %i.agc = add nuw nsw i64 %.027.i.i.prol, 1      ; 2 uses
  %prol.iter2251.next = add i64 %prol.iter2251, 1 ; 2 uses
  %prol.iter2251.cmp.not = icmp eq i64 %prol.iter2251.next, %xtraiter2249
  br i1 %prol.iter2251.cmp.not, label %scalar.ph1984.prol.loopexit, label %scalar.ph1984.prol, !llvm.loop !190

scalar.ph1984.prol.loopexit:                      ; preds = %scalar.ph1984.prol, %scalar.ph1984.preheader
  %.027.i.i.unr = phi i64 [ %.027.i.i.ph, %scalar.ph1984.preheader ], [ %i.agc, %scalar.ph1984.prol ]
  %.02026.i.i.unr = phi i64 [ %.02026.i.i.ph, %scalar.ph1984.preheader ], [ %i.agb, %scalar.ph1984.prol ]
  %i.agd = sub i64 %.027.i.i.ph, %.val.i.i357
  %i.age = add i64 %i.agd, %i.aef
  %i.agf = icmp ugt i64 %i.age, -4
  br i1 %i.agf, label %.loopexit.i359, label %scalar.ph1984

scalar.ph1984:                                    ; preds = %scalar.ph1984.prol.loopexit, %scalar.ph1984
  %.027.i.i = phi i64 [ %i.agz, %scalar.ph1984 ], [ %.027.i.i.unr, %scalar.ph1984.prol.loopexit ] ; 5 uses
  %.02026.i.i = phi i64 [ %i.agy, %scalar.ph1984 ], [ %.02026.i.i.unr, %scalar.ph1984.prol.loopexit ] ; 5 uses
  %i.agg = getelementptr [8 x i8], ptr %i.afk, i64 %.02026.i.i
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !40
  %i.agi = getelementptr [8 x i8], ptr %i.afl, i64 %.027.i.i
  store ptr %i.agh, ptr %i.agi, align 8, !tbaa !40
  %i.agj = getelementptr [8 x i8], ptr %i.afk, i64 %.02026.i.i
  %i.agk = getelementptr i8, ptr %i.agj, i64 8
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !40
  %i.agm = getelementptr [8 x i8], ptr %i.afl, i64 %.027.i.i
  %i.agn = getelementptr i8, ptr %i.agm, i64 8
  store ptr %i.agl, ptr %i.agn, align 8, !tbaa !40
  %i.ago = getelementptr [8 x i8], ptr %i.afk, i64 %.02026.i.i
  %i.agp = getelementptr i8, ptr %i.ago, i64 16
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !40
  %i.agr = getelementptr [8 x i8], ptr %i.afl, i64 %.027.i.i
  %i.ags = getelementptr i8, ptr %i.agr, i64 16
  store ptr %i.agq, ptr %i.ags, align 8, !tbaa !40
  %i.agt = getelementptr [8 x i8], ptr %i.afk, i64 %.02026.i.i
  %i.agu = getelementptr i8, ptr %i.agt, i64 24
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !40
  %i.agw = getelementptr [8 x i8], ptr %i.afl, i64 %.027.i.i
  %i.agx = getelementptr i8, ptr %i.agw, i64 24
  store ptr %i.agv, ptr %i.agx, align 8, !tbaa !40
  %i.agy = add i64 %.02026.i.i, 4
  %i.agz = add nuw nsw i64 %.027.i.i, 4           ; 2 uses
  %exitcond.not.i.i361.3 = icmp eq i64 %i.agz, %i.afe
  br i1 %exitcond.not.i.i361.3, label %.loopexit.i359, label %scalar.ph1984, !llvm.loop !191

.loopexit.i359:                                   ; preds = %scalar.ph1984.prol.loopexit, %scalar.ph1984, %middle.block1994, %.preheader.i.i358
  store i64 %i.aef, ptr %i.afd, align 8, !tbaa !38
  %i.aha = call i32 @_PySet_Update(ptr noundef nonnull %i.aew, ptr noundef nonnull %i.aff) #14
  %i.ahb = load i32, ptr %i.aff, align 8, !tbaa !46 ; 2 uses
  %.not.i60.i = icmp sgt i32 %i.ahb, -1
  br i1 %.not.i60.i, label %bb.it, label %load_additems.exit

bb.it:                                            ; preds = %.loopexit.i359
  %i.ahc = add nsw i32 %i.ahb, -1                 ; 2 uses
  store i32 %i.ahc, ptr %i.aff, align 8, !tbaa !46
  %i.ahd = icmp eq i32 %i.ahc, 0
  br i1 %i.ahd, label %bb.iu, label %load_additems.exit

bb.iu:                                            ; preds = %bb.it
  call void @_Py_Dealloc(ptr noundef nonnull %i.aff) #14
  br label %load_additems.exit

bb.iv:                                            ; preds = %bb.iq
  %i.ahe = call ptr @PyObject_GetAttr(ptr noundef nonnull %i.aew, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 74160)) #14 ; 8 uses
  %i.ahf = icmp eq ptr %i.ahe, null
  br i1 %i.ahf, label %load_binint.exit.thread, label %.preheader.i363

.preheader.i363:                                  ; preds = %bb.iv
  %i.ahg = icmp samesign ult i64 %i.aef, %.val66.i
  br i1 %i.ahg, label %.lr.ph.i366, label %._crit_edge.i364

.lr.ph.i366:                                      ; preds = %.preheader.i363, %Py_DECREF.exit59.thread.i
  %.04583.i = phi i64 [ %i.ail, %Py_DECREF.exit59.thread.i ], [ %i.aef, %.preheader.i363 ] ; 4 uses
  %i.ahh = load ptr, ptr %i.w, align 8, !tbaa !173
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 24
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !172
  %i.ahk = getelementptr [8 x i8], ptr %i.ahj, i64 %.04583.i
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !40 ; 4 uses
  %i.ahm = call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.ahe, ptr noundef %i.ahl) #14 ; 4 uses
  %i.ahn = load i32, ptr %i.ahl, align 8, !tbaa !46 ; 2 uses
  %.not.i.i71.i = icmp sgt i32 %i.ahn, -1
  br i1 %.not.i.i71.i, label %bb.iw, label %_Pickle_FastCall.exit.i

bb.iw:                                            ; preds = %.lr.ph.i366
  %i.aho = add nsw i32 %i.ahn, -1                 ; 2 uses
  store i32 %i.aho, ptr %i.ahl, align 8, !tbaa !46
  %i.ahp = icmp eq i32 %i.aho, 0
  br i1 %i.ahp, label %bb.ix, label %_Pickle_FastCall.exit.i

bb.ix:                                            ; preds = %bb.iw
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahl) #14
  br label %_Pickle_FastCall.exit.i

_Pickle_FastCall.exit.i:                          ; preds = %bb.ix, %bb.iw, %.lr.ph.i366
  %.not55.i = icmp eq ptr %i.ahm, null
  br i1 %.not55.i, label %bb.iy, label %bb.jf

bb.iy:                                            ; preds = %_Pickle_FastCall.exit.i
  %i.ahq = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.ahr = add nuw nsw i64 %.04583.i, 1           ; 2 uses
  %i.ahs = getelementptr i8, ptr %i.ahq, i64 16   ; 2 uses
  %.val.i72.i = load i64, ptr %i.ahs, align 8, !tbaa !38 ; 2 uses
  %.not.i73.i = icmp slt i64 %i.ahr, %.val.i72.i
  br i1 %.not.i73.i, label %.preheader.i74.i, label %Pdata_clear.exit.i367

.preheader.i74.i:                                 ; preds = %bb.iy
  %i.aht = add nsw i64 %.val.i72.i, -1
  %i.ahu = getelementptr i8, ptr %i.ahq, i64 24
  br label %bb.iz

bb.iz:                                            ; preds = %Py_DECREF.exit.i.i369, %.preheader.i74.i
  %i.ahv = phi i64 [ %i.aht, %.preheader.i74.i ], [ %i.aic, %Py_DECREF.exit.i.i369 ] ; 2 uses
  %i.ahw = load ptr, ptr %i.ahu, align 8, !tbaa !172
  %i.ahx = getelementptr [8 x i8], ptr %i.ahw, i64 %i.ahv ; 2 uses
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !40 ; 4 uses
  %.not18.i.i368 = icmp eq ptr %i.ahy, null
  br i1 %.not18.i.i368, label %Py_DECREF.exit.i.i369, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  store ptr null, ptr %i.ahx, align 8, !tbaa !40
  %i.ahz = load i32, ptr %i.ahy, align 8, !tbaa !46 ; 2 uses
  %.not.i.i76.i = icmp sgt i32 %i.ahz, -1
  br i1 %.not.i.i76.i, label %bb.jb, label %Py_DECREF.exit.i.i369

bb.jb:                                            ; preds = %bb.ja
  %i.aia = add nsw i32 %i.ahz, -1                 ; 2 uses
  store i32 %i.aia, ptr %i.ahy, align 8, !tbaa !46
  %i.aib = icmp eq i32 %i.aia, 0
  br i1 %i.aib, label %bb.jc, label %Py_DECREF.exit.i.i369

bb.jc:                                            ; preds = %bb.jb
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahy) #14
  br label %Py_DECREF.exit.i.i369

Py_DECREF.exit.i.i369:                            ; preds = %bb.jc, %bb.jb, %bb.ja, %bb.iz
  %i.aic = add i64 %i.ahv, -1                     ; 2 uses
  %.not17.i.not.i370 = icmp sgt i64 %i.aic, %.04583.i
  br i1 %.not17.i.not.i370, label %bb.iz, label %._crit_edge.i77.i, !llvm.loop !180

._crit_edge.i77.i:                                ; preds = %Py_DECREF.exit.i.i369
  store i64 %i.ahr, ptr %i.ahs, align 8, !tbaa !38
  %.pre.i371 = load ptr, ptr %i.w, align 8, !tbaa !173
  br label %Pdata_clear.exit.i367

Pdata_clear.exit.i367:                            ; preds = %._crit_edge.i77.i, %bb.iy
  %i.aid = phi ptr [ %i.ahq, %bb.iy ], [ %.pre.i371, %._crit_edge.i77.i ]
  %i.aie = getelementptr i8, ptr %i.aid, i64 16
  store i64 %i.aef, ptr %i.aie, align 8, !tbaa !38
  %i.aif = load i32, ptr %i.ahe, align 8, !tbaa !46 ; 2 uses
  %.not.i58.i = icmp sgt i32 %i.aif, -1
  br i1 %.not.i58.i, label %bb.jd, label %load_binint.exit.thread

bb.jd:                                            ; preds = %Pdata_clear.exit.i367
  %i.aig = add nsw i32 %i.aif, -1                 ; 2 uses
  store i32 %i.aig, ptr %i.ahe, align 8, !tbaa !46
  %i.aih = icmp eq i32 %i.aig, 0
  br i1 %i.aih, label %bb.je, label %load_binint.exit.thread

bb.je:                                            ; preds = %bb.jd
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahe) #14
  br label %load_binint.exit.thread

bb.jf:                                            ; preds = %_Pickle_FastCall.exit.i
  %i.aii = load i32, ptr %i.ahm, align 8, !tbaa !46 ; 2 uses
  %.not.i56.i = icmp sgt i32 %i.aii, -1
  br i1 %.not.i56.i, label %bb.jg, label %Py_DECREF.exit59.thread.i

bb.jg:                                            ; preds = %bb.jf
  %i.aij = add nsw i32 %i.aii, -1                 ; 2 uses
  store i32 %i.aij, ptr %i.ahm, align 8, !tbaa !46
  %i.aik = icmp eq i32 %i.aij, 0
  br i1 %i.aik, label %bb.jh, label %Py_DECREF.exit59.thread.i

bb.jh:                                            ; preds = %bb.jg
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahm) #14
  br label %Py_DECREF.exit59.thread.i

Py_DECREF.exit59.thread.i:                        ; preds = %bb.jh, %bb.jg, %bb.jf
  %i.ail = add i64 %.04583.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ail, %.val66.i
  br i1 %exitcond.not.i, label %._crit_edge.i364, label %.lr.ph.i366, !llvm.loop !192

._crit_edge.i364:                                 ; preds = %Py_DECREF.exit59.thread.i, %.preheader.i363
  %i.aim = load ptr, ptr %i.w, align 8, !tbaa !173
  %i.ain = getelementptr i8, ptr %i.aim, i64 16
  store i64 %i.aef, ptr %i.ain, align 8, !tbaa !38
  %i.aio = load i32, ptr %i.ahe, align 8, !tbaa !46 ; 2 uses
  %.not.i.i365 = icmp sgt i32 %i.aio, -1
  br i1 %.not.i.i365, label %bb.ji, label %.backedge.backedge

bb.ji:                                            ; preds = %._crit_edge.i364
  %i.aip = add nsw i32 %i.aio, -1                 ; 2 uses
  store i32 %i.aip, ptr %i.ahe, align 8, !tbaa !46
  %i.aiq = icmp eq i32 %i.aip, 0
  br i1 %i.aiq, label %bb.jj, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ji, %bb.jj, %._crit_edge.i364, %load_build.exit.thread1577, %._crit_edge.i.i604, %bb.tt, %Py_DECREF.exit.i592, %bb.tl, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.cj, %bb.ck, %bb.do, %bb.dp, %bb.dq, %bb.ff, %bb.fg, %bb.gf, %bb.gg, %bb.gh, %bb.gi, %bb.gj, %bb.gk, %bb.gl, %load_tuple.exit, %load_additems.exit, %bb.md, %bb.me, %load_append.exit, %load_appends.exit, %load_build.exit, %load_binput.exit, %load_long_binput.exit, %load_put.exit, %load_memoize.exit, %bb.ty, %load_setitems.exit, %bb.wm, %bb.wn, %bb.wo, %load_none.exit, %load_binint.exit, %load_binint1.exit, %load_binint2.exit, %load_int.exit, %load_long.exit, %load_float.exit, %load_binfloat.exit, %load_counted_bytearray.exit, %load_next_buffer.exit, %load_string.exit, %load_unicode.exit, %load_empty_list.exit, %load_list.exit, %load_empty_dict.exit, %load_dict.exit, %load_empty_set.exit, %load_frozenset.exit, %load_obj.exit, %load_inst.exit, %load_global.exit, %load_stack_global.exit, %load_dup.exit, %load_binget.exit, %load_long_binget.exit, %load_get.exit, %load_mark.exit, %load_persid.exit, %load_binpersid.exit, %load_reduce.exit, %load_proto.exit, %load_frame.exit, %load_bool.exit, %load_bool.exit682
  br label %.backedge

bb.jj:                                            ; preds = %bb.ji
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahe) #14
  br label %.backedge.backedge

load_additems.exit:                               ; preds = %.loopexit.i359, %bb.it, %bb.iu
  %i.air = icmp slt i32 %i.aha, 0
  br i1 %i.air, label %load_binint.exit.thread, label %.backedge.backedge

bb.jk:                                            ; preds = %bb.o
  %i.ais = load i64, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.ait = icmp slt i64 %i.ais, 1
  br i1 %i.ait, label %marker.exit.thread.i390, label %bb.jl

marker.exit.thread.i390:                          ; preds = %bb.jk
  %i.aiu = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.aiu, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.jl:                                            ; preds = %bb.jk
  %i.aiv = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.aiw = add nsw i64 %i.ais, -1                 ; 4 uses
  store i64 %i.aiw, ptr %i.v, align 8, !tbaa !178
  %i.aix = getelementptr [8 x i8], ptr %i.aiv, i64 %i.aiw ; 2 uses
  %i.aiy = load i64, ptr %i.aix, align 8, !tbaa !60 ; 11 uses
  %i.aiz = icmp ne i64 %i.aiw, 0                  ; 2 uses
  %i.aja = zext i1 %i.aiz to i32
  %i.ajb = load ptr, ptr %i.w, align 8, !tbaa !173 ; 4 uses
  %i.ajc = getelementptr i8, ptr %i.ajb, i64 32
  store i32 %i.aja, ptr %i.ajc, align 8, !tbaa !168
  %.not.i14.i = icmp eq i64 %i.aiw, 0
  br i1 %.not.i14.i, label %marker.exit.i373, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.ajd = getelementptr i8, ptr %i.aix, i64 -8
  %i.aje = load i64, ptr %i.ajd, align 8, !tbaa !60
  br label %marker.exit.i373

marker.exit.i373:                                 ; preds = %bb.jm, %bb.jl
  %i.ajf = phi i64 [ %i.aje, %bb.jm ], [ 0, %bb.jl ] ; 2 uses
  %i.ajg = getelementptr i8, ptr %i.ajb, i64 40
  store i64 %i.ajf, ptr %i.ajg, align 8, !tbaa !170
  %i.ajh = icmp slt i64 %i.aiy, 0
  br i1 %i.ajh, label %load_binint.exit.thread, label %bb.jn

bb.jn:                                            ; preds = %marker.exit.i373
  %i.aji = icmp slt i64 %i.aiy, %i.ajf
  br i1 %i.aji, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %.val24.i.i389 = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.ajj = select i1 %i.aiz, ptr @.str.102, ptr @.str.103
  call void @PyErr_SetString(ptr noundef %.val24.i.i389, ptr noundef nonnull %i.ajj) #14
  br label %load_binint.exit.thread

bb.jp:                                            ; preds = %bb.jn
  %i.ajk = getelementptr i8, ptr %i.ajb, i64 16   ; 2 uses
  %.val.i.i374 = load i64, ptr %i.ajk, align 8, !tbaa !38 ; 3 uses
  %i.ajl = sub i64 %.val.i.i374, %i.aiy           ; 6 uses
  %i.ajm = call ptr @PyTuple_New(i64 noundef %i.ajl) #14 ; 7 uses
  %i.ajn = ptrtoaddr ptr %i.ajm to i64
  %i.ajo = icmp eq ptr %i.ajm, null
  br i1 %i.ajo, label %load_binint.exit.thread, label %.preheader.i.i375

.preheader.i.i375:                                ; preds = %bb.jp
  %i.ajp = icmp sgt i64 %i.ajl, 0
  br i1 %i.ajp, label %.lr.ph.i.i385, label %.loopexit.i376

.lr.ph.i.i385:                                    ; preds = %.preheader.i.i375
  %i.ajq = getelementptr i8, ptr %i.ajb, i64 24
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !172 ; 7 uses
  %i.ajs = getelementptr i8, ptr %i.ajm, i64 32   ; 6 uses
  %min.iters.check2001 = icmp ult i64 %i.ajl, 6
  br i1 %min.iters.check2001, label %scalar.ph2000.preheader, label %vector.memcheck1998

vector.memcheck1998:                              ; preds = %.lr.ph.i.i385
  %i.ajt = ptrtoaddr ptr %i.ajr to i64
  %i.aju = shl i64 %i.aiy, 3
  %i.ajv = add i64 %i.aju, %i.ajt
  %i.ajw = sub i64 %i.ajn, %i.ajv
  %diff.check1999 = icmp ugt i64 %i.ajw, -32
  br i1 %diff.check1999, label %scalar.ph2000.preheader, label %vector.ph2002

vector.ph2002:                                    ; preds = %vector.memcheck1998
  %n.vec2004 = and i64 %i.ajl, 9223372036854775804 ; 4 uses
  %i.ajx = add nuw i64 %i.aiy, %n.vec2004
  %i.ajy = getelementptr [8 x i8], ptr %i.ajr, i64 %i.aiy
  br label %vector.body2005

vector.body2005:                                  ; preds = %vector.body2005, %vector.ph2002
  %index2006 = phi i64 [ 0, %vector.ph2002 ], [ %index.next2009, %vector.body2005 ] ; 3 uses
  %i.ajz = getelementptr [8 x i8], ptr %i.ajy, i64 %index2006 ; 2 uses
  %i.aka = getelementptr i8, ptr %i.ajz, i64 16
  %wide.load2007 = load <2 x ptr>, ptr %i.ajz, align 8, !tbaa !40
  %wide.load2008 = load <2 x ptr>, ptr %i.aka, align 8, !tbaa !40
  %i.akb = getelementptr [8 x i8], ptr %i.ajs, i64 %index2006 ; 2 uses
  %i.akc = getelementptr i8, ptr %i.akb, i64 16
  store <2 x ptr> %wide.load2007, ptr %i.akb, align 8, !tbaa !40
  store <2 x ptr> %wide.load2008, ptr %i.akc, align 8, !tbaa !40
  %index.next2009 = add nuw i64 %index2006, 4     ; 2 uses
  %i.akd = icmp eq i64 %index.next2009, %n.vec2004
  br i1 %i.akd, label %middle.block2010, label %vector.body2005, !llvm.loop !193

middle.block2010:                                 ; preds = %vector.body2005
  %cmp.n2011 = icmp eq i64 %i.ajl, %n.vec2004
  br i1 %cmp.n2011, label %.loopexit.i376, label %scalar.ph2000.preheader

scalar.ph2000.preheader:                          ; preds = %vector.memcheck1998, %.lr.ph.i.i385, %middle.block2010
  %.027.i.i386.ph = phi i64 [ 0, %vector.memcheck1998 ], [ 0, %.lr.ph.i.i385 ], [ %n.vec2004, %middle.block2010 ] ; 3 uses
  %.02026.i.i387.ph = phi i64 [ %i.aiy, %vector.memcheck1998 ], [ %i.aiy, %.lr.ph.i.i385 ], [ %i.ajx, %middle.block2010 ] ; 2 uses
  %i.ake = sub i64 %.val.i.i374, %i.aiy
  %xtraiter2246 = and i64 %i.ake, 3               ; 2 uses
  %lcmp.mod2247.not = icmp eq i64 %xtraiter2246, 0
  br i1 %lcmp.mod2247.not, label %scalar.ph2000.prol.loopexit, label %scalar.ph2000.prol

scalar.ph2000.prol:                               ; preds = %scalar.ph2000.preheader, %scalar.ph2000.prol
  %.027.i.i386.prol = phi i64 [ %i.akj, %scalar.ph2000.prol ], [ %.027.i.i386.ph, %scalar.ph2000.preheader ] ; 2 uses
  %.02026.i.i387.prol = phi i64 [ %i.aki, %scalar.ph2000.prol ], [ %.02026.i.i387.ph, %scalar.ph2000.preheader ] ; 2 uses
  %prol.iter2248 = phi i64 [ %prol.iter2248.next, %scalar.ph2000.prol ], [ 0, %scalar.ph2000.preheader ]
  %i.akf = getelementptr [8 x i8], ptr %i.ajr, i64 %.02026.i.i387.prol
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !40
  %i.akh = getelementptr [8 x i8], ptr %i.ajs, i64 %.027.i.i386.prol
  store ptr %i.akg, ptr %i.akh, align 8, !tbaa !40
  %i.aki = add i64 %.02026.i.i387.prol, 1         ; 2 uses
  %i.akj = add nuw nsw i64 %.027.i.i386.prol, 1   ; 2 uses
  %prol.iter2248.next = add i64 %prol.iter2248, 1 ; 2 uses
  %prol.iter2248.cmp.not = icmp eq i64 %prol.iter2248.next, %xtraiter2246
  br i1 %prol.iter2248.cmp.not, label %scalar.ph2000.prol.loopexit, label %scalar.ph2000.prol, !llvm.loop !194

scalar.ph2000.prol.loopexit:                      ; preds = %scalar.ph2000.prol, %scalar.ph2000.preheader
  %.027.i.i386.unr = phi i64 [ %.027.i.i386.ph, %scalar.ph2000.preheader ], [ %i.akj, %scalar.ph2000.prol ]
  %.02026.i.i387.unr = phi i64 [ %.02026.i.i387.ph, %scalar.ph2000.preheader ], [ %i.aki, %scalar.ph2000.prol ]
  %i.akk = sub i64 %.027.i.i386.ph, %.val.i.i374
  %i.akl = add i64 %i.akk, %i.aiy
  %i.akm = icmp ugt i64 %i.akl, -4
  br i1 %i.akm, label %.loopexit.i376, label %scalar.ph2000

scalar.ph2000:                                    ; preds = %scalar.ph2000.prol.loopexit, %scalar.ph2000
  %.027.i.i386 = phi i64 [ %i.alg, %scalar.ph2000 ], [ %.027.i.i386.unr, %scalar.ph2000.prol.loopexit ] ; 5 uses
  %.02026.i.i387 = phi i64 [ %i.alf, %scalar.ph2000 ], [ %.02026.i.i387.unr, %scalar.ph2000.prol.loopexit ] ; 5 uses
  %i.akn = getelementptr [8 x i8], ptr %i.ajr, i64 %.02026.i.i387
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !40
  %i.akp = getelementptr [8 x i8], ptr %i.ajs, i64 %.027.i.i386
  store ptr %i.ako, ptr %i.akp, align 8, !tbaa !40
  %i.akq = getelementptr [8 x i8], ptr %i.ajr, i64 %.02026.i.i387
  %i.akr = getelementptr i8, ptr %i.akq, i64 8
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !40
  %i.akt = getelementptr [8 x i8], ptr %i.ajs, i64 %.027.i.i386
  %i.aku = getelementptr i8, ptr %i.akt, i64 8
  store ptr %i.aks, ptr %i.aku, align 8, !tbaa !40
  %i.akv = getelementptr [8 x i8], ptr %i.ajr, i64 %.02026.i.i387
  %i.akw = getelementptr i8, ptr %i.akv, i64 16
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !40
  %i.aky = getelementptr [8 x i8], ptr %i.ajs, i64 %.027.i.i386
  %i.akz = getelementptr i8, ptr %i.aky, i64 16
  store ptr %i.akx, ptr %i.akz, align 8, !tbaa !40
  %i.ala = getelementptr [8 x i8], ptr %i.ajr, i64 %.02026.i.i387
  %i.alb = getelementptr i8, ptr %i.ala, i64 24
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !40
  %i.ald = getelementptr [8 x i8], ptr %i.ajs, i64 %.027.i.i386
  %i.ale = getelementptr i8, ptr %i.ald, i64 24
  store ptr %i.alc, ptr %i.ale, align 8, !tbaa !40
  %i.alf = add i64 %.02026.i.i387, 4
  %i.alg = add nuw nsw i64 %.027.i.i386, 4        ; 2 uses
  %exitcond.not.i.i388.3 = icmp eq i64 %i.alg, %i.ajl
  br i1 %exitcond.not.i.i388.3, label %.loopexit.i376, label %scalar.ph2000, !llvm.loop !195

.loopexit.i376:                                   ; preds = %scalar.ph2000.prol.loopexit, %scalar.ph2000, %middle.block2010, %.preheader.i.i375
  store i64 %i.aiy, ptr %i.ajk, align 8, !tbaa !38
  %i.alh = call ptr @PyFrozenSet_New(ptr noundef nonnull %i.ajm) #14 ; 2 uses
  %i.ali = load i32, ptr %i.ajm, align 8, !tbaa !46 ; 2 uses
  %.not.i.i377 = icmp sgt i32 %i.ali, -1
  br i1 %.not.i.i377, label %bb.jq, label %Py_DECREF.exit.i378

bb.jq:                                            ; preds = %.loopexit.i376
  %i.alj = add nsw i32 %i.ali, -1                 ; 2 uses
  store i32 %i.alj, ptr %i.ajm, align 8, !tbaa !46
  %i.alk = icmp eq i32 %i.alj, 0
  br i1 %i.alk, label %bb.jr, label %Py_DECREF.exit.i378

bb.jr:                                            ; preds = %bb.jq
  call void @_Py_Dealloc(ptr noundef nonnull %i.ajm) #14
  br label %Py_DECREF.exit.i378

Py_DECREF.exit.i378:                              ; preds = %bb.jr, %bb.jq, %.loopexit.i376
  %i.all = icmp eq ptr %i.alh, null
  br i1 %i.all, label %load_binint.exit.thread, label %bb.js

bb.js:                                            ; preds = %Py_DECREF.exit.i378
  %i.alm = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.aln = getelementptr i8, ptr %i.alm, i64 16   ; 3 uses
  %.val9.i.i379 = load i64, ptr %i.aln, align 8, !tbaa !38 ; 5 uses
  %i.alo = getelementptr i8, ptr %i.alm, i64 48   ; 2 uses
  %i.alp = load i64, ptr %i.alo, align 8, !tbaa !171
  %i.alq = icmp eq i64 %.val9.i.i379, %i.alp
  %i.alr = getelementptr i8, ptr %i.alm, i64 24   ; 2 uses
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !172 ; 2 uses
  br i1 %i.alq, label %bb.jt, label %load_frozenset.exit

bb.jt:                                            ; preds = %bb.js
  %i.alt = lshr i64 %.val9.i.i379, 3
  %i.alu = add nuw nsw i64 %i.alt, 6              ; 2 uses
  %i.alv = sub i64 9223372036854775807, %.val9.i.i379
  %i.alw = icmp ugt i64 %i.alu, %i.alv
  br i1 %i.alw, label %bb.jw, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.alx = add i64 %i.alu, %.val9.i.i379          ; 3 uses
  %i.aly = icmp ugt i64 %i.alx, 1152921504606846975
  br i1 %i.aly, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.alz = shl nuw nsw i64 %i.alx, 3
  %i.ama = call ptr @PyMem_Realloc(ptr noundef %i.als, i64 noundef %i.alz) #14 ; 3 uses
  %i.amb = icmp eq ptr %i.ama, null
  br i1 %i.amb, label %bb.jw, label %Pdata_grow.exit.i.i383

Pdata_grow.exit.i.i383:                           ; preds = %bb.jv
  store ptr %i.ama, ptr %i.alr, align 8, !tbaa !172
  store i64 %i.alx, ptr %i.alo, align 8, !tbaa !171
  %.val8.pre.i.i384 = load i64, ptr %i.aln, align 8, !tbaa !38
  br label %load_frozenset.exit

bb.jw:                                            ; preds = %bb.jv, %bb.ju, %bb.jt
  %i.amc = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_binint.exit.thread

load_frozenset.exit:                              ; preds = %bb.js, %Pdata_grow.exit.i.i383
  %.val8.i.i381 = phi i64 [ %.val8.pre.i.i384, %Pdata_grow.exit.i.i383 ], [ %.val9.i.i379, %bb.js ] ; 2 uses
  %i.amd = phi ptr [ %i.ama, %Pdata_grow.exit.i.i383 ], [ %i.als, %bb.js ]
  %i.ame = getelementptr [8 x i8], ptr %i.amd, i64 %.val8.i.i381
  store ptr %i.alh, ptr %i.ame, align 8, !tbaa !40
  %i.amf = add i64 %.val8.i.i381, 1
  store i64 %i.amf, ptr %i.aln, align 8, !tbaa !38
  br label %.backedge.backedge

bb.jx:                                            ; preds = %bb.o
  %i.amg = load i64, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.amh = icmp slt i64 %i.amg, 1
  br i1 %i.amh, label %marker.exit.thread.i411, label %bb.jy

marker.exit.thread.i411:                          ; preds = %bb.jx
  %i.ami = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.ami, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.jy:                                            ; preds = %bb.jx
  %i.amj = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.amk = add nsw i64 %i.amg, -1                 ; 4 uses
  store i64 %i.amk, ptr %i.v, align 8, !tbaa !178
  %i.aml = getelementptr [8 x i8], ptr %i.amj, i64 %i.amk ; 2 uses
  %i.amm = load i64, ptr %i.aml, align 8, !tbaa !60 ; 4 uses
  %i.amn = icmp ne i64 %i.amk, 0                  ; 3 uses
  %i.amo = zext i1 %i.amn to i32
  %i.amp = load ptr, ptr %i.w, align 8, !tbaa !173 ; 4 uses
  %i.amq = getelementptr i8, ptr %i.amp, i64 32
  store i32 %i.amo, ptr %i.amq, align 8, !tbaa !168
  %.not.i29.i391 = icmp eq i64 %i.amk, 0
  br i1 %.not.i29.i391, label %marker.exit.i392, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.amr = getelementptr i8, ptr %i.aml, i64 -8
  %i.ams = load i64, ptr %i.amr, align 8, !tbaa !60
  br label %marker.exit.i392

marker.exit.i392:                                 ; preds = %bb.jz, %bb.jy
  %i.amt = phi i64 [ %i.ams, %bb.jz ], [ 0, %bb.jy ] ; 2 uses
  %i.amu = getelementptr i8, ptr %i.amp, i64 40
  store i64 %i.amt, ptr %i.amu, align 8, !tbaa !170
  %i.amv = icmp slt i64 %i.amm, 0
  br i1 %i.amv, label %load_binint.exit.thread, label %bb.ka

bb.ka:                                            ; preds = %marker.exit.i392
  %i.amw = getelementptr i8, ptr %i.amp, i64 16   ; 2 uses
  %.val.i393 = load i64, ptr %i.amw, align 8, !tbaa !38 ; 2 uses
  %i.amx = sub i64 %.val.i393, %i.amm
  %i.amy = icmp slt i64 %i.amx, 1
  br i1 %i.amy, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %.val27.i = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.amz = select i1 %i.amn, ptr @.str.102, ptr @.str.103
  call void @PyErr_SetString(ptr noundef %.val27.i, ptr noundef nonnull %i.amz) #14
  br label %load_binint.exit.thread

bb.kc:                                            ; preds = %bb.ka
  %i.ana = add nuw i64 %i.amm, 1                  ; 7 uses
  %i.anb = icmp slt i64 %i.ana, %i.amt
  br i1 %i.anb, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %.val24.i.i410 = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.anc = select i1 %i.amn, ptr @.str.102, ptr @.str.103
  call void @PyErr_SetString(ptr noundef %.val24.i.i410, ptr noundef nonnull %i.anc) #14
  br label %load_binint.exit.thread

bb.ke:                                            ; preds = %bb.kc
  %i.and = sub i64 %.val.i393, %i.ana             ; 6 uses
  %i.ane = call ptr @PyTuple_New(i64 noundef %i.and) #14 ; 8 uses
  %i.anf = ptrtoaddr ptr %i.ane to i64
  %i.ang = icmp eq ptr %i.ane, null
  br i1 %i.ang, label %load_binint.exit.thread, label %.preheader.i.i394

.preheader.i.i394:                                ; preds = %bb.ke
  %i.anh = icmp sgt i64 %i.and, 0
  br i1 %i.anh, label %.lr.ph.i.i406, label %.loopexit.i395

.lr.ph.i.i406:                                    ; preds = %.preheader.i.i394
  %i.ani = getelementptr i8, ptr %i.amp, i64 24
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !172 ; 3 uses
  %i.ank = getelementptr i8, ptr %i.ane, i64 32   ; 2 uses
  %min.iters.check2017 = icmp ult i64 %i.and, 6
  br i1 %min.iters.check2017, label %scalar.ph2016.preheader, label %vector.memcheck2014

vector.memcheck2014:                              ; preds = %.lr.ph.i.i406
  %i.anl = ptrtoaddr ptr %i.anj to i64
  %i.anm = shl i64 %i.amm, 3
  %i.ann = add i64 %i.anm, %i.anl
  %i.ano = sub i64 %i.anf, %i.ann
  %2 = add i64 %i.ano, 23
  %diff.check2015 = icmp ult i64 %2, 31
  br i1 %diff.check2015, label %scalar.ph2016.preheader, label %vector.ph2018

vector.ph2018:                                    ; preds = %vector.memcheck2014
  %n.vec2020 = and i64 %i.and, 9223372036854775804 ; 4 uses
  %i.anp = add i64 %i.ana, %n.vec2020
  %i.anq = getelementptr [8 x i8], ptr %i.anj, i64 %i.ana
  br label %vector.body2021

vector.body2021:                                  ; preds = %vector.body2021, %vector.ph2018
  %index2022 = phi i64 [ 0, %vector.ph2018 ], [ %index.next2025, %vector.body2021 ] ; 3 uses
  %i.anr = getelementptr [8 x i8], ptr %i.anq, i64 %index2022 ; 2 uses
  %i.ans = getelementptr i8, ptr %i.anr, i64 16
  %wide.load2023 = load <2 x ptr>, ptr %i.anr, align 8, !tbaa !40
  %wide.load2024 = load <2 x ptr>, ptr %i.ans, align 8, !tbaa !40
  %i.ant = getelementptr [8 x i8], ptr %i.ank, i64 %index2022 ; 2 uses
  %i.anu = getelementptr i8, ptr %i.ant, i64 16
  store <2 x ptr> %wide.load2023, ptr %i.ant, align 8, !tbaa !40
  store <2 x ptr> %wide.load2024, ptr %i.anu, align 8, !tbaa !40
  %index.next2025 = add nuw i64 %index2022, 4     ; 2 uses
  %i.anv = icmp eq i64 %index.next2025, %n.vec2020
  br i1 %i.anv, label %middle.block2026, label %vector.body2021, !llvm.loop !196

middle.block2026:                                 ; preds = %vector.body2021
  %cmp.n2027 = icmp eq i64 %i.and, %n.vec2020
  br i1 %cmp.n2027, label %.loopexit.i395, label %scalar.ph2016.preheader

scalar.ph2016.preheader:                          ; preds = %vector.memcheck2014, %.lr.ph.i.i406, %middle.block2026
  %.027.i.i407.ph = phi i64 [ 0, %vector.memcheck2014 ], [ 0, %.lr.ph.i.i406 ], [ %n.vec2020, %middle.block2026 ]
  %.02026.i.i408.ph = phi i64 [ %i.ana, %vector.memcheck2014 ], [ %i.ana, %.lr.ph.i.i406 ], [ %i.anp, %middle.block2026 ]
  br label %scalar.ph2016

scalar.ph2016:                                    ; preds = %scalar.ph2016.preheader, %scalar.ph2016
  %.027.i.i407 = phi i64 [ %i.aoa, %scalar.ph2016 ], [ %.027.i.i407.ph, %scalar.ph2016.preheader ] ; 2 uses
  %.02026.i.i408 = phi i64 [ %i.anz, %scalar.ph2016 ], [ %.02026.i.i408.ph, %scalar.ph2016.preheader ] ; 2 uses
  %i.anw = getelementptr [8 x i8], ptr %i.anj, i64 %.02026.i.i408
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !40
  %i.any = getelementptr [8 x i8], ptr %i.ank, i64 %.027.i.i407
  store ptr %i.anx, ptr %i.any, align 8, !tbaa !40
  %i.anz = add i64 %.02026.i.i408, 1
  %i.aoa = add nuw nsw i64 %.027.i.i407, 1        ; 2 uses
  %exitcond.not.i.i409 = icmp eq i64 %i.aoa, %i.and
  br i1 %exitcond.not.i.i409, label %.loopexit.i395, label %scalar.ph2016, !llvm.loop !197

.loopexit.i395:                                   ; preds = %scalar.ph2016, %middle.block2026, %.preheader.i.i394
  store i64 %i.ana, ptr %i.amw, align 8, !tbaa !38
  %i.aob = load ptr, ptr %i.w, align 8, !tbaa !173 ; 4 uses
  %i.aoc = getelementptr i8, ptr %i.aob, i64 16   ; 2 uses
  %.val10.i.i = load i64, ptr %i.aoc, align 8, !tbaa !38 ; 2 uses
  %i.aod = getelementptr i8, ptr %i.aob, i64 40
  %i.aoe = load i64, ptr %i.aod, align 8, !tbaa !170
  %.not.i31.i = icmp sgt i64 %.val10.i.i, %i.aoe
  br i1 %.not.i31.i, label %Pdata_pop.exit.i, label %Pdata_pop.exit.thread.i

Pdata_pop.exit.thread.i:                          ; preds = %.loopexit.i395
  %.val11.i.i = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.aof = getelementptr i8, ptr %i.aob, i64 32
  %.val12.i.i = load i32, ptr %i.aof, align 8, !tbaa !168
  %.not.i.i32.i = icmp eq i32 %.val12.i.i, 0
  %i.aog = select i1 %.not.i.i32.i, ptr @.str.103, ptr @.str.102
  call void @PyErr_SetString(ptr noundef %.val11.i.i, ptr noundef nonnull %i.aog) #14
  br label %Py_DECREF.exit25.i

Pdata_pop.exit.i:                                 ; preds = %.loopexit.i395
  %i.aoh = add nsw i64 %.val10.i.i, -1            ; 2 uses
  store i64 %i.aoh, ptr %i.aoc, align 8, !tbaa !38
  %i.aoi = getelementptr i8, ptr %i.aob, i64 24
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !172
  %i.aok = getelementptr [8 x i8], ptr %i.aoj, i64 %i.aoh
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !40 ; 9 uses
  %.not.i404 = icmp eq ptr %i.aol, null
  br i1 %.not.i404, label %Py_DECREF.exit25.i, label %bb.kf

bb.kf:                                            ; preds = %Pdata_pop.exit.i
  %i.aom = getelementptr i8, ptr %i.ane, i64 16
  %.val.i34.i = load i64, ptr %i.aom, align 8, !tbaa !38
  %.not.i35.i = icmp eq i64 %.val.i34.i, 0
  br i1 %.not.i35.i, label %bb.kg, label %bb.kk

bb.kg:                                            ; preds = %bb.kf
  %i.aon = getelementptr i8, ptr %i.aol, i64 8
  %.val14.i.i = load ptr, ptr %i.aon, align 8, !tbaa !52
  %i.aoo = getelementptr i8, ptr %.val14.i.i, i64 168
  %.val14.val.i.i = load i64, ptr %i.aoo, align 8, !tbaa !53
  %i.aop = and i64 %.val14.val.i.i, 2147483648
  %.not17.i.i = icmp eq i64 %i.aop, 0
  br i1 %.not17.i.i, label %bb.kk, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.aoq = call i32 @PyObject_HasAttrWithError(ptr noundef nonnull %i.aol, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65312)) #14 ; 2 uses
  %i.aor = icmp slt i32 %i.aoq, 0
  br i1 %i.aor, label %instantiate.exit.i, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %.not13.i.i = icmp eq i32 %i.aoq, 0
  br i1 %.not13.i.i, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  store ptr %i.aol, ptr %i.n, align 16, !tbaa !40
  store ptr %i.aol, ptr %i.ba, align 8, !tbaa !40
  %i.aos = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68016), ptr noundef nonnull %i.n, i64 noundef -9223372036854775806, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  br label %instantiate.exit.i

bb.kk:                                            ; preds = %bb.ki, %bb.kg, %bb.kf
  %i.aot = call ptr @PyObject_CallObject(ptr noundef nonnull %i.aol, ptr noundef nonnull %i.ane) #14
  br label %instantiate.exit.i

instantiate.exit.i:                               ; preds = %bb.kk, %bb.kj, %bb.kh
  %.1.i.i = phi ptr [ %i.aot, %bb.kk ], [ null, %bb.kh ], [ %i.aos, %bb.kj ] ; 3 uses
  %i.aou = load i32, ptr %i.aol, align 8, !tbaa !46 ; 2 uses
  %.not.i24.i405 = icmp sgt i32 %i.aou, -1
  br i1 %.not.i24.i405, label %bb.kl, label %Py_DECREF.exit25.i

bb.kl:                                            ; preds = %instantiate.exit.i
  %i.aov = add nsw i32 %i.aou, -1                 ; 2 uses
  store i32 %i.aov, ptr %i.aol, align 8, !tbaa !46
  %i.aow = icmp eq i32 %i.aov, 0
  br i1 %i.aow, label %bb.km, label %Py_DECREF.exit25.i

bb.km:                                            ; preds = %bb.kl
  call void @_Py_Dealloc(ptr noundef nonnull %i.aol) #14
  br label %Py_DECREF.exit25.i

Py_DECREF.exit25.i:                               ; preds = %bb.km, %bb.kl, %instantiate.exit.i, %Pdata_pop.exit.i, %Pdata_pop.exit.thread.i
  %.020.i = phi ptr [ null, %Pdata_pop.exit.thread.i ], [ null, %Pdata_pop.exit.i ], [ %.1.i.i, %instantiate.exit.i ], [ %.1.i.i, %bb.kl ], [ %.1.i.i, %bb.km ] ; 2 uses
  %i.aox = load i32, ptr %i.ane, align 8, !tbaa !46 ; 2 uses
  %.not.i.i396 = icmp sgt i32 %i.aox, -1
  br i1 %.not.i.i396, label %bb.kn, label %Py_DECREF.exit.i397

bb.kn:                                            ; preds = %Py_DECREF.exit25.i
  %i.aoy = add nsw i32 %i.aox, -1                 ; 2 uses
  store i32 %i.aoy, ptr %i.ane, align 8, !tbaa !46
  %i.aoz = icmp eq i32 %i.aoy, 0
  br i1 %i.aoz, label %bb.ko, label %Py_DECREF.exit.i397

bb.ko:                                            ; preds = %bb.kn
  call void @_Py_Dealloc(ptr noundef nonnull %i.ane) #14
  br label %Py_DECREF.exit.i397

Py_DECREF.exit.i397:                              ; preds = %bb.ko, %bb.kn, %Py_DECREF.exit25.i
  %i.apa = icmp eq ptr %.020.i, null
  br i1 %i.apa, label %load_binint.exit.thread, label %bb.kp

bb.kp:                                            ; preds = %Py_DECREF.exit.i397
  %i.apb = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.apc = getelementptr i8, ptr %i.apb, i64 16   ; 3 uses
  %.val9.i.i398 = load i64, ptr %i.apc, align 8, !tbaa !38 ; 5 uses
  %i.apd = getelementptr i8, ptr %i.apb, i64 48   ; 2 uses
  %i.ape = load i64, ptr %i.apd, align 8, !tbaa !171
  %i.apf = icmp eq i64 %.val9.i.i398, %i.ape
  %i.apg = getelementptr i8, ptr %i.apb, i64 24   ; 2 uses
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !172 ; 2 uses
  br i1 %i.apf, label %bb.kq, label %load_obj.exit

bb.kq:                                            ; preds = %bb.kp
  %i.api = lshr i64 %.val9.i.i398, 3
  %i.apj = add nuw nsw i64 %i.api, 6              ; 2 uses
  %i.apk = sub i64 9223372036854775807, %.val9.i.i398
  %i.apl = icmp ugt i64 %i.apj, %i.apk
  br i1 %i.apl, label %bb.kt, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.apm = add i64 %i.apj, %.val9.i.i398          ; 3 uses
  %i.apn = icmp ugt i64 %i.apm, 1152921504606846975
  br i1 %i.apn, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.apo = shl nuw nsw i64 %i.apm, 3
  %i.app = call ptr @PyMem_Realloc(ptr noundef %i.aph, i64 noundef %i.apo) #14 ; 3 uses
  %i.apq = icmp eq ptr %i.app, null
  br i1 %i.apq, label %bb.kt, label %Pdata_grow.exit.i.i402

Pdata_grow.exit.i.i402:                           ; preds = %bb.ks
  store ptr %i.app, ptr %i.apg, align 8, !tbaa !172
  store i64 %i.apm, ptr %i.apd, align 8, !tbaa !171
  %.val8.pre.i.i403 = load i64, ptr %i.apc, align 8, !tbaa !38
  br label %load_obj.exit

bb.kt:                                            ; preds = %bb.ks, %bb.kr, %bb.kq
  %i.apr = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_binint.exit.thread

load_obj.exit:                                    ; preds = %bb.kp, %Pdata_grow.exit.i.i402
  %.val8.i.i400 = phi i64 [ %.val8.pre.i.i403, %Pdata_grow.exit.i.i402 ], [ %.val9.i.i398, %bb.kp ] ; 2 uses
  %i.aps = phi ptr [ %i.app, %Pdata_grow.exit.i.i402 ], [ %i.aph, %bb.kp ]
  %i.apt = getelementptr [8 x i8], ptr %i.aps, i64 %.val8.i.i400
  store ptr %.020.i, ptr %i.apt, align 8, !tbaa !40
  %i.apu = add i64 %.val8.i.i400, 1
  store i64 %i.apu, ptr %i.apc, align 8, !tbaa !38
  br label %.backedge.backedge

bb.ku:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  %i.apv = load i64, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.apw = icmp slt i64 %i.apv, 1
  br i1 %i.apw, label %marker.exit.thread.i439, label %bb.kv

marker.exit.thread.i439:                          ; preds = %bb.ku
  %i.apx = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.apx, ptr noundef nonnull @.str.108) #14
  br label %load_inst.exit.thread

bb.kv:                                            ; preds = %bb.ku
  %i.apy = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.apz = add nsw i64 %i.apv, -1                 ; 4 uses
  store i64 %i.apz, ptr %i.v, align 8, !tbaa !178
  %i.aqa = getelementptr [8 x i8], ptr %i.apy, i64 %i.apz ; 2 uses
  %i.aqb = load i64, ptr %i.aqa, align 8, !tbaa !60 ; 11 uses
  %i.aqc = icmp ne i64 %i.apz, 0
  %i.aqd = zext i1 %i.aqc to i32
  %i.aqe = load ptr, ptr %i.w, align 8, !tbaa !173 ; 2 uses
  %i.aqf = getelementptr i8, ptr %i.aqe, i64 32
  store i32 %i.aqd, ptr %i.aqf, align 8, !tbaa !168
  %.not.i53.i = icmp eq i64 %i.apz, 0
  br i1 %.not.i53.i, label %marker.exit.i412, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.aqg = getelementptr i8, ptr %i.aqa, i64 -8
  %i.aqh = load i64, ptr %i.aqg, align 8, !tbaa !60
  br label %marker.exit.i412

marker.exit.i412:                                 ; preds = %bb.kw, %bb.kv
  %i.aqi = phi i64 [ %i.aqh, %bb.kw ], [ 0, %bb.kv ]
  %i.aqj = getelementptr i8, ptr %i.aqe, i64 40
  store i64 %i.aqi, ptr %i.aqj, align 8, !tbaa !170
  %i.aqk = icmp slt i64 %i.aqb, 0
  br i1 %i.aqk, label %load_inst.exit.thread, label %bb.kx

bb.kx:                                            ; preds = %marker.exit.i412
  %i.aql = call fastcc i64 @_Unpickler_Readline(ptr noundef readonly %0, ptr noundef nonnull %1, ptr noundef %i.m) ; 3 uses
  %i.aqm = icmp slt i64 %i.aql, 0
  br i1 %i.aqm, label %load_inst.exit.thread, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.aqn = icmp samesign ult i64 %i.aql, 2
  br i1 %i.aqn, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %.val52.i = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %.val52.i, ptr noundef nonnull @.str.92) #14
  br label %load_inst.exit.thread

bb.la:                                            ; preds = %bb.ky
  %i.aqo = load ptr, ptr %i.m, align 8, !tbaa !102
  %i.aqp = add nsw i64 %i.aql, -1
  %i.aqq = call ptr @PyUnicode_DecodeASCII(ptr noundef %i.aqo, i64 noundef %i.aqp, ptr noundef nonnull @.str.28) #14 ; 8 uses
  %i.aqr = icmp eq ptr %i.aqq, null
  br i1 %i.aqr, label %load_inst.exit.thread, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.aqs = call fastcc i64 @_Unpickler_Readline(ptr noundef readonly %0, ptr noundef nonnull %1, ptr noundef %i.m) ; 3 uses
  %i.aqt = icmp sgt i64 %i.aqs, -1
  br i1 %i.aqt, label %bb.lc, label %Py_DECREF.exit45.i

bb.lc:                                            ; preds = %bb.lb
  %i.aqu = icmp samesign ult i64 %i.aqs, 2
  br i1 %i.aqu, label %bb.ld, label %bb.lg

bb.ld:                                            ; preds = %bb.lc
  %i.aqv = load i32, ptr %i.aqq, align 8, !tbaa !46 ; 2 uses
  %.not.i46.i = icmp sgt i32 %i.aqv, -1
  br i1 %.not.i46.i, label %bb.le, label %Py_DECREF.exit47.i

bb.le:                                            ; preds = %bb.ld
  %i.aqw = add nsw i32 %i.aqv, -1                 ; 2 uses
  store i32 %i.aqw, ptr %i.aqq, align 8, !tbaa !46
  %i.aqx = icmp eq i32 %i.aqw, 0
  br i1 %i.aqx, label %bb.lf, label %Py_DECREF.exit47.i

bb.lf:                                            ; preds = %bb.le
  call void @_Py_Dealloc(ptr noundef nonnull %i.aqq) #14
  br label %Py_DECREF.exit47.i

Py_DECREF.exit47.i:                               ; preds = %bb.lf, %bb.le, %bb.ld
  %.val.i438 = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %.val.i438, ptr noundef nonnull @.str.92) #14
  br label %load_inst.exit.thread

bb.lg:                                            ; preds = %bb.lc
  %i.aqy = load ptr, ptr %i.m, align 8, !tbaa !102
  %i.aqz = add nsw i64 %i.aqs, -1
  %i.ara = call ptr @PyUnicode_DecodeASCII(ptr noundef %i.aqy, i64 noundef %i.aqz, ptr noundef nonnull @.str.28) #14 ; 5 uses
  %.not.i437 = icmp eq ptr %i.ara, null
  br i1 %.not.i437, label %Py_DECREF.exit45.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.arb = call ptr (ptr, ptr, ...) @PyObject_CallMethodObjArgs(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 84296), ptr noundef nonnull %i.aqq, ptr noundef nonnull %i.ara, ptr noundef null) #14 ; 3 uses
  %i.arc = load i32, ptr %i.ara, align 8, !tbaa !46 ; 2 uses
  %.not.i44.i = icmp sgt i32 %i.arc, -1
  br i1 %.not.i44.i, label %bb.li, label %Py_DECREF.exit45.i

bb.li:                                            ; preds = %bb.lh
  %i.ard = add nsw i32 %i.arc, -1                 ; 2 uses
  store i32 %i.ard, ptr %i.ara, align 8, !tbaa !46
  %i.are = icmp eq i32 %i.ard, 0
  br i1 %i.are, label %bb.lj, label %Py_DECREF.exit45.i

bb.lj:                                            ; preds = %bb.li
  call void @_Py_Dealloc(ptr noundef nonnull %i.ara) #14
  br label %Py_DECREF.exit45.i

Py_DECREF.exit45.i:                               ; preds = %bb.lj, %bb.li, %bb.lh, %bb.lg, %bb.lb
  %.031.i = phi ptr [ null, %bb.lb ], [ null, %bb.lg ], [ %i.arb, %bb.lh ], [ %i.arb, %bb.li ], [ %i.arb, %bb.lj ] ; 9 uses
  %i.arf = load i32, ptr %i.aqq, align 8, !tbaa !46 ; 2 uses
  %.not.i42.i = icmp sgt i32 %i.arf, -1
  br i1 %.not.i42.i, label %bb.lk, label %Py_DECREF.exit43.i

bb.lk:                                            ; preds = %Py_DECREF.exit45.i
  %i.arg = add nsw i32 %i.arf, -1                 ; 2 uses
  store i32 %i.arg, ptr %i.aqq, align 8, !tbaa !46
  %i.arh = icmp eq i32 %i.arg, 0
  br i1 %i.arh, label %bb.ll, label %Py_DECREF.exit43.i

bb.ll:                                            ; preds = %bb.lk
  call void @_Py_Dealloc(ptr noundef nonnull %i.aqq) #14
  br label %Py_DECREF.exit43.i

Py_DECREF.exit43.i:                               ; preds = %bb.ll, %bb.lk, %Py_DECREF.exit45.i
  %i.ari = icmp eq ptr %.031.i, null
  br i1 %i.ari, label %load_inst.exit.thread, label %bb.lm

bb.lm:                                            ; preds = %Py_DECREF.exit43.i
  %i.arj = load ptr, ptr %i.w, align 8, !tbaa !173 ; 4 uses
  %i.ark = getelementptr i8, ptr %i.arj, i64 40
  %i.arl = load i64, ptr %i.ark, align 8, !tbaa !170
  %i.arm = icmp slt i64 %i.aqb, %i.arl
  br i1 %i.arm, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %.val24.i.i434 = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.arn = getelementptr i8, ptr %i.arj, i64 32
  %.val25.i.i435 = load i32, ptr %i.arn, align 8, !tbaa !168
  %.not.i.i.i436 = icmp eq i32 %.val25.i.i435, 0
  %i.aro = select i1 %.not.i.i.i436, ptr @.str.103, ptr @.str.102
  call void @PyErr_SetString(ptr noundef %.val24.i.i434, ptr noundef nonnull %i.aro) #14
  br label %Py_DECREF.exit41.i

bb.lo:                                            ; preds = %bb.lm
  %i.arp = getelementptr i8, ptr %i.arj, i64 16   ; 2 uses
  %.val.i.i413 = load i64, ptr %i.arp, align 8, !tbaa !38 ; 3 uses
  %i.arq = sub i64 %.val.i.i413, %i.aqb           ; 6 uses
  %i.arr = call ptr @PyTuple_New(i64 noundef %i.arq) #14 ; 8 uses
  %i.ars = ptrtoaddr ptr %i.arr to i64
  %i.art = icmp eq ptr %i.arr, null
  br i1 %i.art, label %Py_DECREF.exit41.i, label %.preheader.i.i414

.preheader.i.i414:                                ; preds = %bb.lo
  %i.aru = icmp sgt i64 %i.arq, 0
  br i1 %i.aru, label %.lr.ph.i.i430, label %.loopexit.i415

.lr.ph.i.i430:                                    ; preds = %.preheader.i.i414
  %i.arv = getelementptr i8, ptr %i.arj, i64 24
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !172 ; 7 uses
  %i.arx = getelementptr i8, ptr %i.arr, i64 32   ; 6 uses
  %min.iters.check2033 = icmp ult i64 %i.arq, 6
  br i1 %min.iters.check2033, label %scalar.ph2032.preheader, label %vector.memcheck2030

vector.memcheck2030:                              ; preds = %.lr.ph.i.i430
  %i.ary = ptrtoaddr ptr %i.arw to i64
  %i.arz = shl i64 %i.aqb, 3
  %i.asa = add i64 %i.arz, %i.ary
  %i.asb = sub i64 %i.ars, %i.asa
  %diff.check2031 = icmp ugt i64 %i.asb, -32
  br i1 %diff.check2031, label %scalar.ph2032.preheader, label %vector.ph2034

vector.ph2034:                                    ; preds = %vector.memcheck2030
  %n.vec2036 = and i64 %i.arq, 9223372036854775804 ; 4 uses
  %i.asc = add nuw i64 %i.aqb, %n.vec2036
  %i.asd = getelementptr [8 x i8], ptr %i.arw, i64 %i.aqb
  br label %vector.body2037

vector.body2037:                                  ; preds = %vector.body2037, %vector.ph2034
  %index2038 = phi i64 [ 0, %vector.ph2034 ], [ %index.next2041, %vector.body2037 ] ; 3 uses
  %i.ase = getelementptr [8 x i8], ptr %i.asd, i64 %index2038 ; 2 uses
  %i.asf = getelementptr i8, ptr %i.ase, i64 16
  %wide.load2039 = load <2 x ptr>, ptr %i.ase, align 8, !tbaa !40
  %wide.load2040 = load <2 x ptr>, ptr %i.asf, align 8, !tbaa !40
  %i.asg = getelementptr [8 x i8], ptr %i.arx, i64 %index2038 ; 2 uses
  %i.ash = getelementptr i8, ptr %i.asg, i64 16
  store <2 x ptr> %wide.load2039, ptr %i.asg, align 8, !tbaa !40
  store <2 x ptr> %wide.load2040, ptr %i.ash, align 8, !tbaa !40
  %index.next2041 = add nuw i64 %index2038, 4     ; 2 uses
  %i.asi = icmp eq i64 %index.next2041, %n.vec2036
  br i1 %i.asi, label %middle.block2042, label %vector.body2037, !llvm.loop !198

middle.block2042:                                 ; preds = %vector.body2037
  %cmp.n2043 = icmp eq i64 %i.arq, %n.vec2036
  br i1 %cmp.n2043, label %.loopexit.i415, label %scalar.ph2032.preheader

scalar.ph2032.preheader:                          ; preds = %vector.memcheck2030, %.lr.ph.i.i430, %middle.block2042
  %.027.i.i431.ph = phi i64 [ 0, %vector.memcheck2030 ], [ 0, %.lr.ph.i.i430 ], [ %n.vec2036, %middle.block2042 ] ; 3 uses
  %.02026.i.i432.ph = phi i64 [ %i.aqb, %vector.memcheck2030 ], [ %i.aqb, %.lr.ph.i.i430 ], [ %i.asc, %middle.block2042 ] ; 2 uses
  %i.asj = sub i64 %.val.i.i413, %i.aqb
  %xtraiter = and i64 %i.asj, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph2032.prol.loopexit, label %scalar.ph2032.prol

scalar.ph2032.prol:                               ; preds = %scalar.ph2032.preheader, %scalar.ph2032.prol
  %.027.i.i431.prol = phi i64 [ %i.aso, %scalar.ph2032.prol ], [ %.027.i.i431.ph, %scalar.ph2032.preheader ] ; 2 uses
  %.02026.i.i432.prol = phi i64 [ %i.asn, %scalar.ph2032.prol ], [ %.02026.i.i432.ph, %scalar.ph2032.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph2032.prol ], [ 0, %scalar.ph2032.preheader ]
  %i.ask = getelementptr [8 x i8], ptr %i.arw, i64 %.02026.i.i432.prol
  %i.asl = load ptr, ptr %i.ask, align 8, !tbaa !40
  %i.asm = getelementptr [8 x i8], ptr %i.arx, i64 %.027.i.i431.prol
  store ptr %i.asl, ptr %i.asm, align 8, !tbaa !40
  %i.asn = add i64 %.02026.i.i432.prol, 1         ; 2 uses
  %i.aso = add nuw nsw i64 %.027.i.i431.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph2032.prol.loopexit, label %scalar.ph2032.prol, !llvm.loop !199

scalar.ph2032.prol.loopexit:                      ; preds = %scalar.ph2032.prol, %scalar.ph2032.preheader
  %.027.i.i431.unr = phi i64 [ %.027.i.i431.ph, %scalar.ph2032.preheader ], [ %i.aso, %scalar.ph2032.prol ]
  %.02026.i.i432.unr = phi i64 [ %.02026.i.i432.ph, %scalar.ph2032.preheader ], [ %i.asn, %scalar.ph2032.prol ]
  %i.asp = sub i64 %.027.i.i431.ph, %.val.i.i413
  %i.asq = add i64 %i.asp, %i.aqb
  %i.asr = icmp ugt i64 %i.asq, -4
  br i1 %i.asr, label %.loopexit.i415, label %scalar.ph2032

scalar.ph2032:                                    ; preds = %scalar.ph2032.prol.loopexit, %scalar.ph2032
  %.027.i.i431 = phi i64 [ %i.atl, %scalar.ph2032 ], [ %.027.i.i431.unr, %scalar.ph2032.prol.loopexit ] ; 5 uses
  %.02026.i.i432 = phi i64 [ %i.atk, %scalar.ph2032 ], [ %.02026.i.i432.unr, %scalar.ph2032.prol.loopexit ] ; 5 uses
  %i.ass = getelementptr [8 x i8], ptr %i.arw, i64 %.02026.i.i432
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !40
  %i.asu = getelementptr [8 x i8], ptr %i.arx, i64 %.027.i.i431
  store ptr %i.ast, ptr %i.asu, align 8, !tbaa !40
  %i.asv = getelementptr [8 x i8], ptr %i.arw, i64 %.02026.i.i432
  %i.asw = getelementptr i8, ptr %i.asv, i64 8
  %i.asx = load ptr, ptr %i.asw, align 8, !tbaa !40
  %i.asy = getelementptr [8 x i8], ptr %i.arx, i64 %.027.i.i431
  %i.asz = getelementptr i8, ptr %i.asy, i64 8
  store ptr %i.asx, ptr %i.asz, align 8, !tbaa !40
  %i.ata = getelementptr [8 x i8], ptr %i.arw, i64 %.02026.i.i432
  %i.atb = getelementptr i8, ptr %i.ata, i64 16
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !40
  %i.atd = getelementptr [8 x i8], ptr %i.arx, i64 %.027.i.i431
  %i.ate = getelementptr i8, ptr %i.atd, i64 16
  store ptr %i.atc, ptr %i.ate, align 8, !tbaa !40
  %i.atf = getelementptr [8 x i8], ptr %i.arw, i64 %.02026.i.i432
  %i.atg = getelementptr i8, ptr %i.atf, i64 24
  %i.ath = load ptr, ptr %i.atg, align 8, !tbaa !40
  %i.ati = getelementptr [8 x i8], ptr %i.arx, i64 %.027.i.i431
  %i.atj = getelementptr i8, ptr %i.ati, i64 24
  store ptr %i.ath, ptr %i.atj, align 8, !tbaa !40
  %i.atk = add i64 %.02026.i.i432, 4
  %i.atl = add nuw nsw i64 %.027.i.i431, 4        ; 2 uses
  %exitcond.not.i.i433.3 = icmp eq i64 %i.atl, %i.arq
  br i1 %exitcond.not.i.i433.3, label %.loopexit.i415, label %scalar.ph2032, !llvm.loop !200

.loopexit.i415:                                   ; preds = %scalar.ph2032.prol.loopexit, %scalar.ph2032, %middle.block2042, %.preheader.i.i414
  store i64 %i.aqb, ptr %i.arp, align 8, !tbaa !38
  %i.atm = getelementptr i8, ptr %i.arr, i64 16
  %.val.i54.i = load i64, ptr %i.atm, align 8, !tbaa !38
  %.not.i55.i = icmp eq i64 %.val.i54.i, 0
  br i1 %.not.i55.i, label %bb.lp, label %bb.lt

bb.lp:                                            ; preds = %.loopexit.i415
  %i.atn = getelementptr i8, ptr %.031.i, i64 8
  %.val14.i.i426 = load ptr, ptr %i.atn, align 8, !tbaa !52
  %i.ato = getelementptr i8, ptr %.val14.i.i426, i64 168
  %.val14.val.i.i427 = load i64, ptr %i.ato, align 8, !tbaa !53
  %i.atp = and i64 %.val14.val.i.i427, 2147483648
  %.not17.i.i428 = icmp eq i64 %i.atp, 0
  br i1 %.not17.i.i428, label %bb.lt, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.atq = call i32 @PyObject_HasAttrWithError(ptr noundef nonnull %.031.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65312)) #14 ; 2 uses
  %i.atr = icmp slt i32 %i.atq, 0
  br i1 %i.atr, label %instantiate.exit.i416, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %.not13.i.i429 = icmp eq i32 %i.atq, 0
  br i1 %.not13.i.i429, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store ptr %.031.i, ptr %i.l, align 16, !tbaa !40
  store ptr %.031.i, ptr %i.az, align 8, !tbaa !40
  %i.ats = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68016), ptr noundef nonnull %i.l, i64 noundef -9223372036854775806, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  br label %instantiate.exit.i416

bb.lt:                                            ; preds = %bb.lr, %bb.lp, %.loopexit.i415
  %i.att = call ptr @PyObject_CallObject(ptr noundef nonnull %.031.i, ptr noundef nonnull %i.arr) #14
  br label %instantiate.exit.i416

instantiate.exit.i416:                            ; preds = %bb.lt, %bb.ls, %bb.lq
  %.1.i.i417 = phi ptr [ %i.att, %bb.lt ], [ null, %bb.lq ], [ %i.ats, %bb.ls ] ; 3 uses
  %i.atu = load i32, ptr %i.arr, align 8, !tbaa !46 ; 2 uses
  %.not.i40.i = icmp sgt i32 %i.atu, -1
  br i1 %.not.i40.i, label %bb.lu, label %Py_DECREF.exit41.i

bb.lu:                                            ; preds = %instantiate.exit.i416
  %i.atv = add nsw i32 %i.atu, -1                 ; 2 uses
  store i32 %i.atv, ptr %i.arr, align 8, !tbaa !46
  %i.atw = icmp eq i32 %i.atv, 0
  br i1 %i.atw, label %bb.lv, label %Py_DECREF.exit41.i

bb.lv:                                            ; preds = %bb.lu
  call void @_Py_Dealloc(ptr noundef nonnull %i.arr) #14
  br label %Py_DECREF.exit41.i

Py_DECREF.exit41.i:                               ; preds = %bb.lv, %bb.lu, %instantiate.exit.i416, %bb.lo, %bb.ln
  %.032.i = phi ptr [ %.1.i.i417, %bb.lv ], [ %.1.i.i417, %instantiate.exit.i416 ], [ %.1.i.i417, %bb.lu ], [ null, %bb.ln ], [ null, %bb.lo ] ; 2 uses
  %i.atx = load i32, ptr %.031.i, align 8, !tbaa !46 ; 2 uses
  %.not.i.i418 = icmp sgt i32 %i.atx, -1
  br i1 %.not.i.i418, label %bb.lw, label %Py_DECREF.exit.i419

bb.lw:                                            ; preds = %Py_DECREF.exit41.i
  %i.aty = add nsw i32 %i.atx, -1                 ; 2 uses
  store i32 %i.aty, ptr %.031.i, align 8, !tbaa !46
  %i.atz = icmp eq i32 %i.aty, 0
  br i1 %i.atz, label %bb.lx, label %Py_DECREF.exit.i419

bb.lx:                                            ; preds = %bb.lw
  call void @_Py_Dealloc(ptr noundef nonnull %.031.i) #14
  br label %Py_DECREF.exit.i419

Py_DECREF.exit.i419:                              ; preds = %bb.lx, %bb.lw, %Py_DECREF.exit41.i
  %i.aua = icmp eq ptr %.032.i, null
  br i1 %i.aua, label %load_inst.exit.thread, label %bb.ly

bb.ly:                                            ; preds = %Py_DECREF.exit.i419
  %i.aub = load ptr, ptr %i.w, align 8, !tbaa !173 ; 3 uses
  %i.auc = getelementptr i8, ptr %i.aub, i64 16   ; 3 uses
  %.val9.i.i420 = load i64, ptr %i.auc, align 8, !tbaa !38 ; 5 uses
  %i.aud = getelementptr i8, ptr %i.aub, i64 48   ; 2 uses
  %i.aue = load i64, ptr %i.aud, align 8, !tbaa !171
  %i.auf = icmp eq i64 %.val9.i.i420, %i.aue
  %i.aug = getelementptr i8, ptr %i.aub, i64 24   ; 2 uses
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !172 ; 2 uses
  br i1 %i.auf, label %bb.lz, label %load_inst.exit

bb.lz:                                            ; preds = %bb.ly
  %i.aui = lshr i64 %.val9.i.i420, 3
  %i.auj = add nuw nsw i64 %i.aui, 6              ; 2 uses
  %i.auk = sub i64 9223372036854775807, %.val9.i.i420
  %i.aul = icmp ugt i64 %i.auj, %i.auk
  br i1 %i.aul, label %bb.mc, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.aum = add i64 %i.auj, %.val9.i.i420          ; 3 uses
  %i.aun = icmp ugt i64 %i.aum, 1152921504606846975
  br i1 %i.aun, label %bb.mc, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.auo = shl nuw nsw i64 %i.aum, 3
  %i.aup = call ptr @PyMem_Realloc(ptr noundef %i.auh, i64 noundef %i.auo) #14 ; 3 uses
  %i.auq = icmp eq ptr %i.aup, null
  br i1 %i.auq, label %bb.mc, label %Pdata_grow.exit.i.i424

Pdata_grow.exit.i.i424:                           ; preds = %bb.mb
  store ptr %i.aup, ptr %i.aug, align 8, !tbaa !172
  store i64 %i.aum, ptr %i.aud, align 8, !tbaa !171
  %.val8.pre.i.i425 = load i64, ptr %i.auc, align 8, !tbaa !38
  br label %load_inst.exit

bb.mc:                                            ; preds = %bb.mb, %bb.ma, %bb.lz
  %i.aur = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_inst.exit.thread

load_inst.exit.thread:                            ; preds = %Py_DECREF.exit.i419, %marker.exit.i412, %bb.kx, %bb.la, %Py_DECREF.exit43.i, %bb.kz, %Py_DECREF.exit47.i, %marker.exit.thread.i439, %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
end_hunk_1
begin_hunk_2_@load_counted_binunicode:bb.a
  %i.ay = shl nuw nsw i64 %i.ax, 40
  %i.az = or i64 %i.ay, %i.au                     ; 2 uses
  %exitcond.not.i.5 = icmp eq i32 %2, 6
  br i1 %exitcond.not.i.5, label %calc_binsize.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr i8, ptr %.041, i64 6
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !46
  %i.bc = zext i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 48
  %i.be = or i64 %i.bd, %i.az                     ; 2 uses
  %exitcond.not.i.6 = icmp eq i32 %2, 7
  br i1 %exitcond.not.i.6, label %calc_binsize.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr i8, ptr %.041, i64 7
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !46
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw i64 %i.bh, 56
  %i.bj = or i64 %i.bi, %i.be
  br label %calc_binsize.exit

calc_binsize.exit:                                ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.lcssa = phi i64 [ %i.aa, %bb.i ], [ %i.af, %bb.j ], [ %i.ak, %bb.k ], [ %i.ap, %bb.l ], [ %i.au, %bb.m ], [ %i.az, %bb.n ], [ %i.be, %bb.o ], [ %i.bj, %bb.p ] ; 3 uses
  %..0.i = tail call range(i64 -1, -9223372036854775808) i64 @llvm.smax.i64(i64 %.lcssa, i64 -1) ; 6 uses
  %i.bk = icmp slt i64 %.lcssa, 0
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %calc_binsize.exit
  %i.bl = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !40
  %i.bm = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bl, ptr noundef nonnull @.str.107, i64 noundef 9223372036854775807) #14 ; 0 uses
  br label %_Unpickler_ReadImpl.exit.thread

bb.r:                                             ; preds = %calc_binsize.exit
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !73
  %i.bo = sub i64 %i.bn, %i.y
  %.not31 = icmp sgt i64 %..0.i, %i.bo
  br i1 %.not31, label %bb.s, label %.critedge33

.critedge33:                                      ; preds = %bb.r
  %i.bp = getelementptr i8, ptr %i.x, i64 %i.y
  %i.bq = add i64 %i.y, %..0.i
  br label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.br = xor i64 %..0.i, 9223372036854775807
  %i.bs = icmp sgt i64 %i.y, %i.br
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %i.bu, ptr noundef nonnull @.str.91) #14
  br label %_Unpickler_ReadImpl.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.bv = getelementptr i8, ptr %1, i64 192
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !177
  %.not.i34 = icmp eq ptr %i.bw, null
  br i1 %.not.i34, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr i8, ptr %0, i64 16
  %.val20.i37 = load ptr, ptr %i.bx, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %.val20.i37, ptr noundef nonnull @.str.92) #14
  br label %_Unpickler_ReadImpl.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.by = tail call fastcc i64 @_Unpickler_ReadFromFile(ptr noundef readonly %0, ptr noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %..0.i) ; 2 uses
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %_Unpickler_ReadImpl.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = icmp samesign ugt i64 %.lcssa, %i.by
  br i1 %i.ca, label %bb.y, label %_Unpickler_ReadImpl.exit38

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr i8, ptr %0, i64 16
  %.val.i36 = load ptr, ptr %i.cb, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %.val.i36, ptr noundef nonnull @.str.92) #14
  br label %_Unpickler_ReadImpl.exit.thread

_Unpickler_ReadImpl.exit38:                       ; preds = %bb.x
  %i.cc = getelementptr i8, ptr %1, i64 152
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !71
  br label %bb.z

bb.z:                                             ; preds = %_Unpickler_ReadImpl.exit38, %.critedge33
  %storemerge47 = phi i64 [ %i.bq, %.critedge33 ], [ %..0.i, %_Unpickler_ReadImpl.exit38 ]
  %.1 = phi ptr [ %i.bp, %.critedge33 ], [ %i.cd, %_Unpickler_ReadImpl.exit38 ]
  store i64 %storemerge47, ptr %i.d, align 8, !tbaa !74
  %i.ce = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef %.1, i64 noundef %..0.i, ptr noundef nonnull @.str.33) #14 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_Unpickler_ReadImpl.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr i8, ptr %1, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !173 ; 3 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 16     ; 3 uses
  %.val9.i = load i64, ptr %i.ci, align 8, !tbaa !38 ; 5 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 48     ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !171
  %i.cl = icmp eq i64 %.val9.i, %i.ck
  %i.cm = getelementptr i8, ptr %i.ch, i64 24     ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !172 ; 2 uses
  br i1 %i.cl, label %bb.ab, label %Pdata_push.exit

bb.ab:                                            ; preds = %bb.aa
  %i.co = lshr i64 %.val9.i, 3
  %i.cp = add nuw nsw i64 %i.co, 6                ; 2 uses
  %i.cq = sub i64 9223372036854775807, %.val9.i
  %i.cr = icmp ugt i64 %i.cp, %i.cq
  br i1 %i.cr, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = add i64 %i.cp, %.val9.i                 ; 3 uses
  %i.ct = icmp ugt i64 %i.cs, 1152921504606846975
  br i1 %i.ct, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = shl nuw nsw i64 %i.cs, 3
  %i.cv = tail call ptr @PyMem_Realloc(ptr noundef %i.cn, i64 noundef %i.cu) #14 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.ae, label %Pdata_grow.exit.i

Pdata_grow.exit.i:                                ; preds = %bb.ad
  store ptr %i.cv, ptr %i.cm, align 8, !tbaa !172
  store i64 %i.cs, ptr %i.cj, align 8, !tbaa !171
  %.val8.pre.i = load i64, ptr %i.ci, align 8, !tbaa !38
  br label %Pdata_push.exit

Pdata_push.exit:                                  ; preds = %bb.aa, %Pdata_grow.exit.i
  %.val8.i = phi i64 [ %.val8.pre.i, %Pdata_grow.exit.i ], [ %.val9.i, %bb.aa ] ; 2 uses
  %i.cx = phi ptr [ %i.cv, %Pdata_grow.exit.i ], [ %i.cn, %bb.aa ]
  %i.cy = getelementptr [8 x i8], ptr %i.cx, i64 %.val8.i
  store ptr %i.ce, ptr %i.cy, align 8, !tbaa !40
  %i.cz = add i64 %.val8.i, 1
  store i64 %i.cz, ptr %i.ci, align 8, !tbaa !38
  br label %_Unpickler_ReadImpl.exit.thread

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.da = tail call ptr @PyErr_NoMemory() #14     ; 0 uses
  br label %_Unpickler_ReadImpl.exit.thread

_Unpickler_ReadImpl.exit.thread:                  ; preds = %bb.w, %bb.y, %bb.v, %bb.t, %bb.f, %bb.h, %bb.e, %bb.c, %bb.ae, %Pdata_push.exit, %bb.z, %bb.q
  %.0 = phi i32 [ -1, %bb.z ], [ -1, %bb.q ], [ 0, %Pdata_push.exit ], [ -1, %bb.f ], [ -1, %bb.ae ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.t ], [ -1, %bb.v ], [ -1, %bb.y ], [ -1, %bb.w ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @load_counted_tuple(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %.val13 = load i64, ptr %i.c, align 8, !tbaa !38 ; 3 uses
  %i.d = icmp slt i64 %.val13, %2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val14 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr i8, ptr %i.b, i64 32
  %.val15 = load i32, ptr %i.f, align 8, !tbaa !168
  %.not.i = icmp eq i32 %.val15, 0
  %i.g = select i1 %.not.i, ptr @.str.103, ptr @.str.102
  tail call void @PyErr_SetString(ptr noundef %.val14, ptr noundef nonnull %i.g) #14
  br label %Pdata_poptuple.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = sub i64 %.val13, %2                      ; 6 uses
  %i.i = getelementptr i8, ptr %i.b, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !170
  %i.k = icmp slt i64 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val24.i = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr i8, ptr %i.b, i64 32
  %.val25.i = load i32, ptr %i.m, align 8, !tbaa !168
  %.not.i.i = icmp eq i32 %.val25.i, 0
  %i.n = select i1 %.not.i.i, ptr @.str.103, ptr @.str.102
  tail call void @PyErr_SetString(ptr noundef %.val24.i, ptr noundef nonnull %i.n) #14
  br label %Pdata_poptuple.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.o = tail call ptr @PyTuple_New(i64 noundef %2) #14 ; 4 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %Pdata_poptuple.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.r = icmp sgt i64 %2, 0
  br i1 %i.r, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.s = getelementptr i8, ptr %i.b, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !172  ; 7 uses
  %i.u = getelementptr i8, ptr %i.o, i64 32       ; 6 uses
  %min.iters.check = icmp ult i64 %2, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.v = ptrtoaddr ptr %i.t to i64
  %i.w = shl i64 %.val13, 3
  %i.x = add i64 %i.w, %i.v
  %i.y = shl i64 %2, 3
  %.neg = sub i64 %i.y, %i.x
  %op.rdx = add i64 %.neg, 31
  %i.z = add i64 %op.rdx, %i.p
  %diff.check = icmp ult i64 %i.z, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, 9223372036854775804        ; 4 uses
  %i.aa = add i64 %i.h, %n.vec
  %i.ab = getelementptr [8 x i8], ptr %i.t, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !40
  %wide.load25 = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !40
  %i.ae = getelementptr [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  store <2 x ptr> %wide.load, ptr %i.ae, align 8, !tbaa !40
  store <2 x ptr> %wide.load25, ptr %i.af, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.027.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.02026.i.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i ], [ %i.aa, %middle.block ] ; 2 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.027.i.prol = phi i64 [ %i.al, %scalar.ph.prol ], [ %.027.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.02026.i.prol = phi i64 [ %i.ak, %scalar.ph.prol ], [ %.02026.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ah = getelementptr [8 x i8], ptr %i.t, i64 %.02026.i.prol
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.aj = getelementptr [8 x i8], ptr %i.u, i64 %.027.i.prol
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !40
  %i.ak = add i64 %.02026.i.prol, 1               ; 2 uses
  %i.al = add nuw nsw i64 %.027.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !208

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.027.i.unr = phi i64 [ %.027.i.ph, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %.02026.i.unr = phi i64 [ %.02026.i.ph, %scalar.ph.preheader ], [ %i.ak, %scalar.ph.prol ]
  %i.am = sub nsw i64 %.027.i.ph, %2
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.027.i = phi i64 [ %i.bh, %scalar.ph ], [ %.027.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.02026.i = phi i64 [ %i.bg, %scalar.ph ], [ %.02026.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ao = getelementptr [8 x i8], ptr %i.t, i64 %.02026.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.aq = getelementptr [8 x i8], ptr %i.u, i64 %.027.i
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !40
  %i.ar = getelementptr [8 x i8], ptr %i.t, i64 %.02026.i
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.au = getelementptr [8 x i8], ptr %i.u, i64 %.027.i
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store ptr %i.at, ptr %i.av, align 8, !tbaa !40
  %i.aw = getelementptr [8 x i8], ptr %i.t, i64 %.02026.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40
  %i.az = getelementptr [8 x i8], ptr %i.u, i64 %.027.i
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !40
  %i.bb = getelementptr [8 x i8], ptr %i.t, i64 %.02026.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40
  %i.be = getelementptr [8 x i8], ptr %i.u, i64 %.027.i
  %i.bf = getelementptr i8, ptr %i.be, i64 24
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !40
  %i.bg = add i64 %.02026.i, 4
  %i.bh = add nuw nsw i64 %.027.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bh, %2
  br i1 %exitcond.not.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !209

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i
  store i64 %i.h, ptr %i.c, align 8, !tbaa !38
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !173 ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16     ; 3 uses
  %.val9.i = load i64, ptr %i.bj, align 8, !tbaa !38 ; 5 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 48     ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !171
  %i.bm = icmp eq i64 %.val9.i, %i.bl
  %i.bn = getelementptr i8, ptr %i.bi, i64 24     ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !172 ; 2 uses
  br i1 %i.bm, label %bb.f, label %Pdata_push.exit

bb.f:                                             ; preds = %.loopexit
  %i.bp = lshr i64 %.val9.i, 3
  %i.bq = add nuw nsw i64 %i.bp, 6                ; 2 uses
  %i.br = sub i64 9223372036854775807, %.val9.i
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = add i64 %i.bq, %.val9.i                 ; 3 uses
  %i.bu = icmp ugt i64 %i.bt, 1152921504606846975
  br i1 %i.bu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = shl nuw nsw i64 %i.bt, 3
  %i.bw = tail call ptr @PyMem_Realloc(ptr noundef %i.bo, i64 noundef %i.bv) #14 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.i, label %Pdata_grow.exit.i

Pdata_grow.exit.i:                                ; preds = %bb.h
  store ptr %i.bw, ptr %i.bn, align 8, !tbaa !172
  store i64 %i.bt, ptr %i.bk, align 8, !tbaa !171
  %.val8.pre.i = load i64, ptr %i.bj, align 8, !tbaa !38
  br label %Pdata_push.exit

Pdata_push.exit:                                  ; preds = %.loopexit, %Pdata_grow.exit.i
  %.val8.i = phi i64 [ %.val8.pre.i, %Pdata_grow.exit.i ], [ %.val9.i, %.loopexit ] ; 2 uses
  %i.by = phi ptr [ %i.bw, %Pdata_grow.exit.i ], [ %i.bo, %.loopexit ]
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %.val8.i
  store ptr %i.o, ptr %i.bz, align 8, !tbaa !40
  %i.ca = add i64 %.val8.i, 1
  store i64 %i.ca, ptr %i.bj, align 8, !tbaa !38
  br label %Pdata_poptuple.exit.thread

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %i.cb = tail call ptr @PyErr_NoMemory() #14     ; 0 uses
  br label %Pdata_poptuple.exit.thread

Pdata_poptuple.exit.thread:                       ; preds = %bb.e, %bb.d, %bb.i, %Pdata_push.exit, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %Pdata_push.exit ], [ -1, %bb.i ], [ -1, %bb.d ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @load_newobj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 3 uses
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !173 ; 8 uses
  %.phi.trans.insert111 = getelementptr i8, ptr %.pre, i64 16 ; 2 uses
  %.val10.i76.pre = load i64, ptr %.phi.trans.insert111, align 8, !tbaa !38 ; 3 uses
  %.phi.trans.insert113 = getelementptr i8, ptr %.pre, i64 40
  %.pre114 = load i64, ptr %.phi.trans.insert113, align 8, !tbaa !170 ; 3 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i75 = icmp sgt i64 %.val10.i76.pre, %.pre114
  br i1 %.not.i75, label %Pdata_pop.exit, label %Pdata_pop.exit.thread

Pdata_pop.exit.thread:                            ; preds = %bb.b
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val11.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr i8, ptr %.pre, i64 32
  %.val12.i = load i32, ptr %i.b, align 8, !tbaa !168
  %.not.i.i = icmp eq i32 %.val12.i, 0
  %i.c = select i1 %.not.i.i, ptr @.str.103, ptr @.str.102
  tail call void @PyErr_SetString(ptr noundef %.val11.i, ptr noundef nonnull %i.c) #14
  br label %Py_XDECREF.exit

Pdata_pop.exit:                                   ; preds = %bb.b
  %i.d = add nsw i64 %.val10.i76.pre, -1          ; 3 uses
  store i64 %i.d, ptr %.phi.trans.insert111, align 8, !tbaa !38
  %i.e = getelementptr i8, ptr %.pre, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !172
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %Py_XDECREF.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %Pdata_pop.exit
  %.val10.i76 = phi i64 [ %i.d, %Pdata_pop.exit ], [ %.val10.i76.pre, %bb.a ] ; 3 uses
  %.043 = phi ptr [ %i.h, %Pdata_pop.exit ], [ null, %bb.a ] ; 18 uses
  %i.j = getelementptr i8, ptr %1, i64 16
  %i.k = getelementptr i8, ptr %.pre, i64 16      ; 2 uses
  %.not.i77 = icmp sgt i64 %.val10.i76, %.pre114
  br i1 %.not.i77, label %Pdata_pop.exit82, label %Pdata_pop.exit82.thread

Pdata_pop.exit82.thread:                          ; preds = %._crit_edge
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val11.i78 = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr i8, ptr %.pre, i64 32
  %.val12.i79 = load i32, ptr %i.m, align 8, !tbaa !168
  %.not.i.i80 = icmp eq i32 %.val12.i79, 0
  %i.n = select i1 %.not.i.i80, ptr @.str.103, ptr @.str.102
  tail call void @PyErr_SetString(ptr noundef %.val11.i78, ptr noundef nonnull %i.n) #14
  br label %bb.c

Pdata_pop.exit82:                                 ; preds = %._crit_edge
  %i.o = add nsw i64 %.val10.i76, -1              ; 3 uses
  store i64 %i.o, ptr %i.k, align 8, !tbaa !38
  %i.p = getelementptr i8, ptr %.pre, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !172  ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.o
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40   ; 12 uses
  %i.t = icmp eq ptr %i.s, null
end_hunk_2
begin_hunk_3_@_Unpickler_Readline:bb.a

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.ad, i64 %i.z, i1 false)
  %i.ao = getelementptr i8, ptr %i.al, i64 %i.z
  store i8 0, ptr %i.ao, align 1, !tbaa !46
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !214
  store ptr %i.al, ptr %2, align 8, !tbaa !102
  br label %_Unpickler_CopyLine.exit

_Unpickler_CopyLine.exit:                         ; preds = %bb.n, %bb.m, %bb.e, %bb.d, %bb.h, %bb.k, %bb.g
  %.0 = phi i64 [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.k ], [ %i.s, %bb.e ], [ -1, %bb.d ], [ -1, %bb.m ], [ %i.z, %bb.n ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

declare ptr @PyLong_FromString(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyBool_FromLong(i64 noundef) local_unnamed_addr #1

declare ptr @_PyLong_FromByteArray(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare double @PyOS_string_to_double(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #1

declare double @PyFloat_Unpack8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i64 @_Unpickler_ReadInto(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 168
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr i8, ptr %1, i64 176        ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74   ; 3 uses
  %i.e = sub i64 %i.b, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @llvm.smin.i64(i64 %i.e, i64 %3) ; 4 uses
  %i.h = getelementptr i8, ptr %1, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = getelementptr i8, ptr %i.i, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %i.j, i64 %i.g, i1 false)
  %i.k = load i64, ptr %i.c, align 8, !tbaa !74
  %i.l = add i64 %i.k, %i.g                       ; 2 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !74
  %i.m = getelementptr i8, ptr %2, i64 %i.g
  %i.n = sub i64 %3, %i.g                         ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %_Unpickler_SkipConsumed.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i64 [ %i.l, %bb.b ], [ %i.d, %bb.a ]
  %.029 = phi i64 [ %i.n, %bb.b ], [ %3, %bb.a ]
  %.028 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ]
  %i.p = getelementptr i8, ptr %1, i64 192
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !177  ; 2 uses
  %.not31 = icmp eq ptr %i.q, null
  br i1 %.not31, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.r, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %.val, ptr noundef nonnull @.str.92) #14
  br label %_Unpickler_SkipConsumed.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %1, i64 184        ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !75
  %i.u = sub i64 %i.o, %i.t                       ; 2 uses
  %i.v = icmp slt i64 %i.u, 1
  br i1 %i.v, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.128, i64 noundef %i.u) #14 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_Unpickler_SkipConsumed.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.w, align 8, !tbaa !46   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i.i, label %bb.h, label %Py_DECREF.exit.i

bb.h:                                             ; preds = %bb.g
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.w, align 8, !tbaa !46
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %Py_DECREF.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.w) #14
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.i, %bb.h, %bb.g
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !74
  store i64 %i.ab, ptr %i.s, align 8, !tbaa !75
  br label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit.i, %bb.e
  %i.ac = tail call fastcc i64 @_Unpickler_ReadIntoFromFile(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.028, i64 noundef %.029)
  br label %_Unpickler_SkipConsumed.exit

_Unpickler_SkipConsumed.exit:                     ; preds = %bb.f, %bb.b, %bb.j, %bb.d
  %.1 = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.j ], [ -1, %bb.d ], [ -1, %bb.f ]
  ret i64 %.1
}

declare ptr @PyByteArray_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyByteArray_Resize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyMemoryView_FromObject(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @PyUnicode_Decode(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyBytes_DecodeEscape(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromEncodedObject(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_DecodeRawUnicodeEscape(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_DecodeUTF8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare ptr @PySet_New(ptr noundef) local_unnamed_addr #1

declare i32 @_PySet_Update(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyFrozenSet_New(ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_HasAttrWithError(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_CallObject(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_DecodeASCII(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_CallMethodObjArgs(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_append(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = getelementptr i8, ptr %1, i64 16         ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173  ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %.val82 = load i64, ptr %i.d, align 8, !tbaa !38 ; 6 uses
  %i.e = icmp sgt i64 %2, %.val82
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !170
  %.not = icmp sgt i64 %2, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val83 = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr i8, ptr %i.c, i64 32
  %.val84 = load i32, ptr %i.i, align 8, !tbaa !168
  %.not.i86 = icmp eq i32 %.val84, 0
  %i.j = select i1 %.not.i86, ptr @.str.103, ptr @.str.102
  tail call void @PyErr_SetString(ptr noundef %.val83, ptr noundef nonnull %i.j) #14
  br label %Py_DECREF.exit75

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !172
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %2
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40   ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val = load ptr, ptr %i.p, align 8, !tbaa !52
  %.not99 = icmp eq ptr %.val, @PyList_Type
  br i1 %.not99, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = sub i64 %.val82, %2                      ; 6 uses
  %i.r = tail call ptr @PyList_New(i64 noundef %i.q) #14 ; 6 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %Py_DECREF.exit75, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.t = icmp sgt i64 %i.q, 0
  br i1 %i.t, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !172  ; 7 uses
  %i.v = getelementptr i8, ptr %i.r, i64 24
  %.val19.i = load ptr, ptr %i.v, align 8, !tbaa !149 ; 7 uses
  %min.iters.check131 = icmp ult i64 %i.q, 10
  br i1 %min.iters.check131, label %scalar.ph130.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %.lr.ph.i
  %.val19.i128 = ptrtoaddr ptr %.val19.i to i64
  %i.w = ptrtoaddr ptr %i.u to i64
  %i.x = shl i64 %2, 3
  %i.y = add i64 %i.x, %i.w
  %i.z = sub i64 %i.y, %.val19.i128
  %diff.check129 = icmp ugt i64 %i.z, -32
  br i1 %diff.check129, label %scalar.ph130.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck127
  %n.vec134 = and i64 %i.q, 9223372036854775804   ; 4 uses
  %i.aa = add i64 %2, %n.vec134
  %i.ab = getelementptr [8 x i8], ptr %i.u, i64 %2
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph132
  %index136 = phi i64 [ 0, %vector.ph132 ], [ %index.next139, %vector.body135 ] ; 3 uses
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %index136 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %wide.load137 = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !40
  %wide.load138 = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !40
  %i.ae = getelementptr [8 x i8], ptr %.val19.i, i64 %index136 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  store <2 x ptr> %wide.load137, ptr %i.ae, align 8, !tbaa !40
  store <2 x ptr> %wide.load138, ptr %i.af, align 8, !tbaa !40
  %index.next139 = add nuw i64 %index136, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.ag, label %middle.block140, label %vector.body135, !llvm.loop !216

middle.block140:                                  ; preds = %vector.body135
  %cmp.n141 = icmp eq i64 %i.q, %n.vec134
  br i1 %cmp.n141, label %.loopexit, label %scalar.ph130.preheader

scalar.ph130.preheader:                           ; preds = %vector.memcheck127, %.lr.ph.i, %middle.block140
  %.021.i.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %.lr.ph.i ], [ %n.vec134, %middle.block140 ] ; 3 uses
  %.01620.i.ph = phi i64 [ %2, %vector.memcheck127 ], [ %2, %.lr.ph.i ], [ %i.aa, %middle.block140 ] ; 2 uses
  %i.ah = sub i64 %.val82, %2
  %xtraiter145 = and i64 %i.ah, 3                 ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol

scalar.ph130.prol:                                ; preds = %scalar.ph130.preheader, %scalar.ph130.prol
  %.021.i.prol = phi i64 [ %i.am, %scalar.ph130.prol ], [ %.021.i.ph, %scalar.ph130.preheader ] ; 2 uses
  %.01620.i.prol = phi i64 [ %i.al, %scalar.ph130.prol ], [ %.01620.i.ph, %scalar.ph130.preheader ] ; 2 uses
  %prol.iter147 = phi i64 [ %prol.iter147.next, %scalar.ph130.prol ], [ 0, %scalar.ph130.preheader ]
  %i.ai = getelementptr [8 x i8], ptr %i.u, i64 %.01620.i.prol
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40
  %i.ak = getelementptr [8 x i8], ptr %.val19.i, i64 %.021.i.prol
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !40
  %i.al = add i64 %.01620.i.prol, 1               ; 2 uses
  %i.am = add nuw nsw i64 %.021.i.prol, 1         ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol, !llvm.loop !217

scalar.ph130.prol.loopexit:                       ; preds = %scalar.ph130.prol, %scalar.ph130.preheader
  %.021.i.unr = phi i64 [ %.021.i.ph, %scalar.ph130.preheader ], [ %i.am, %scalar.ph130.prol ]
  %.01620.i.unr = phi i64 [ %.01620.i.ph, %scalar.ph130.preheader ], [ %i.al, %scalar.ph130.prol ]
  %i.an = sub i64 %.021.i.ph, %.val82
  %i.ao = add i64 %i.an, %2
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %.loopexit, label %scalar.ph130

scalar.ph130:                                     ; preds = %scalar.ph130.prol.loopexit, %scalar.ph130
  %.021.i = phi i64 [ %i.bj, %scalar.ph130 ], [ %.021.i.unr, %scalar.ph130.prol.loopexit ] ; 5 uses
  %.01620.i = phi i64 [ %i.bi, %scalar.ph130 ], [ %.01620.i.unr, %scalar.ph130.prol.loopexit ] ; 5 uses
  %i.aq = getelementptr [8 x i8], ptr %i.u, i64 %.01620.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  %i.as = getelementptr [8 x i8], ptr %.val19.i, i64 %.021.i
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !40
  %i.at = getelementptr [8 x i8], ptr %i.u, i64 %.01620.i
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !40
  %i.aw = getelementptr [8 x i8], ptr %.val19.i, i64 %.021.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !40
  %i.ay = getelementptr [8 x i8], ptr %i.u, i64 %.01620.i
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40
  %i.bb = getelementptr [8 x i8], ptr %.val19.i, i64 %.021.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !40
  %i.bd = getelementptr [8 x i8], ptr %i.u, i64 %.01620.i
  %i.be = getelementptr i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.bg = getelementptr [8 x i8], ptr %.val19.i, i64 %.021.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 24
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !40
  %i.bi = add i64 %.01620.i, 4
  %i.bj = add nuw nsw i64 %.021.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bj, %i.q
  br i1 %exitcond.not.i.3, label %.loopexit, label %scalar.ph130, !llvm.loop !218

.loopexit:                                        ; preds = %scalar.ph130.prol.loopexit, %scalar.ph130, %middle.block140, %.preheader.i
  store i64 %2, ptr %i.d, align 8, !tbaa !38
  %i.bk = getelementptr i8, ptr %i.o, i64 16
  %.val85 = load i64, ptr %i.bk, align 8, !tbaa !38 ; 2 uses
  %i.bl = tail call i32 @PyList_SetSlice(ptr noundef nonnull %i.o, i64 noundef %.val85, i64 noundef %.val85, ptr noundef nonnull %i.r) #14 ; 3 uses
  %i.bm = load i32, ptr %i.r, align 8, !tbaa !46  ; 2 uses
  %.not.i74 = icmp sgt i32 %i.bm, -1
  br i1 %.not.i74, label %bb.f, label %Py_DECREF.exit75

bb.f:                                             ; preds = %.loopexit
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.r, align 8, !tbaa !46
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.g, label %Py_DECREF.exit75

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #14
  br label %Py_DECREF.exit75

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bp = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %i.o, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 83184), ptr noundef nonnull %i.a) #14
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %Py_DECREF.exit73.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !40
  %.not61 = icmp eq ptr %i.br, null
  br i1 %.not61, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !173 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 16     ; 2 uses
  %.val.i87 = load i64, ptr %i.bt, align 8, !tbaa !38 ; 3 uses
  %i.bu = sub i64 %.val.i87, %2                   ; 6 uses
  %i.bv = call ptr @PyList_New(i64 noundef %i.bu) #14 ; 6 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.k, label %.preheader.i88

.preheader.i88:                                   ; preds = %bb.j
  %i.bx = icmp sgt i64 %i.bu, 0
  br i1 %i.bx, label %.lr.ph.i90, label %.loopexit100

.lr.ph.i90:                                       ; preds = %.preheader.i88
  %i.by = getelementptr i8, ptr %i.bs, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !172 ; 7 uses
  %i.ca = getelementptr i8, ptr %i.bv, i64 24
  %.val19.i91 = load ptr, ptr %i.ca, align 8, !tbaa !149 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bu, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i90
  %.val19.i91124 = ptrtoaddr ptr %.val19.i91 to i64
  %i.cb = ptrtoaddr ptr %i.bz to i64
  %i.cc = shl i64 %2, 3
  %i.cd = add i64 %i.cc, %i.cb
  %i.ce = sub i64 %i.cd, %.val19.i91124
  %diff.check = icmp ugt i64 %i.ce, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bu, 9223372036854775804     ; 4 uses
  %i.cf = add i64 %2, %n.vec
  %i.cg = getelementptr [8 x i8], ptr %i.bz, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = getelementptr [8 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ch, align 8, !tbaa !40
  %wide.load125 = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !40
  %i.cj = getelementptr [8 x i8], ptr %.val19.i91, i64 %index ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  store <2 x ptr> %wide.load, ptr %i.cj, align 8, !tbaa !40
  store <2 x ptr> %wide.load125, ptr %i.ck, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %.loopexit100, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i90, %middle.block
  %.021.i92.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i90 ], [ %n.vec, %middle.block ] ; 3 uses
  %.01620.i93.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.i90 ], [ %i.cf, %middle.block ] ; 2 uses
  %i.cm = sub i64 %.val.i87, %2
  %xtraiter = and i64 %i.cm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.021.i92.prol = phi i64 [ %i.cr, %scalar.ph.prol ], [ %.021.i92.ph, %scalar.ph.preheader ] ; 2 uses
  %.01620.i93.prol = phi i64 [ %i.cq, %scalar.ph.prol ], [ %.01620.i93.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cn = getelementptr [8 x i8], ptr %i.bz, i64 %.01620.i93.prol
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !40
  %i.cp = getelementptr [8 x i8], ptr %.val19.i91, i64 %.021.i92.prol
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !40
  %i.cq = add i64 %.01620.i93.prol, 1             ; 2 uses
  %i.cr = add nuw nsw i64 %.021.i92.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !220

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.021.i92.unr = phi i64 [ %.021.i92.ph, %scalar.ph.preheader ], [ %i.cr, %scalar.ph.prol ]
  %.01620.i93.unr = phi i64 [ %.01620.i93.ph, %scalar.ph.preheader ], [ %i.cq, %scalar.ph.prol ]
  %i.cs = sub i64 %.021.i92.ph, %.val.i87
  %i.ct = add i64 %i.cs, %2
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %.loopexit100, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.021.i92 = phi i64 [ %i.do, %scalar.ph ], [ %.021.i92.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01620.i93 = phi i64 [ %i.dn, %scalar.ph ], [ %.01620.i93.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cv = getelementptr [8 x i8], ptr %i.bz, i64 %.01620.i93
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !40
  %i.cx = getelementptr [8 x i8], ptr %.val19.i91, i64 %.021.i92
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !40
  %i.cy = getelementptr [8 x i8], ptr %i.bz, i64 %.01620.i93
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40
  %i.db = getelementptr [8 x i8], ptr %.val19.i91, i64 %.021.i92
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !40
  %i.dd = getelementptr [8 x i8], ptr %i.bz, i64 %.01620.i93
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !40
  %i.dg = getelementptr [8 x i8], ptr %.val19.i91, i64 %.021.i92
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !40
  %i.di = getelementptr [8 x i8], ptr %i.bz, i64 %.01620.i93
  %i.dj = getelementptr i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !40
  %i.dl = getelementptr [8 x i8], ptr %.val19.i91, i64 %.021.i92
  %i.dm = getelementptr i8, ptr %i.dl, i64 24
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !40
  %i.dn = add i64 %.01620.i93, 4
  %i.do = add nuw nsw i64 %.021.i92, 4            ; 2 uses
  %exitcond.not.i94.3 = icmp eq i64 %i.do, %i.bu
  br i1 %exitcond.not.i94.3, label %.loopexit100, label %scalar.ph, !llvm.loop !221

bb.k:                                             ; preds = %bb.j
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !40  ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !46 ; 2 uses
  %.not.i72 = icmp sgt i32 %i.dq, -1
  br i1 %.not.i72, label %bb.l, label %Py_DECREF.exit73.thread

bb.l:                                             ; preds = %bb.k
  %i.dr = add nsw i32 %i.dq, -1                   ; 2 uses
  store i32 %i.dr, ptr %i.dp, align 8, !tbaa !46
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %Py_DECREF.exit73.thread.sink.split, label %Py_DECREF.exit73.thread

.loopexit100:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i88
  store i64 %2, ptr %i.bt, align 8, !tbaa !38
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.du = call ptr @PyObject_CallOneArg(ptr noundef %i.dt, ptr noundef nonnull %i.bv) #14 ; 4 uses
  %i.dv = load i32, ptr %i.bv, align 8, !tbaa !46 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.dv, -1
  br i1 %.not.i.i, label %bb.m, label %_Pickle_FastCall.exit

bb.m:                                             ; preds = %.loopexit100
  %i.dw = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dw, ptr %i.bv, align 8, !tbaa !46
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.n, label %_Pickle_FastCall.exit

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.bv) #14
  br label %_Pickle_FastCall.exit

_Pickle_FastCall.exit:                            ; preds = %.loopexit100, %bb.m, %bb.n
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !40  ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !46 ; 2 uses
  %.not.i70 = icmp sgt i32 %i.dz, -1
  br i1 %.not.i70, label %bb.o, label %Py_DECREF.exit71

bb.o:                                             ; preds = %_Pickle_FastCall.exit
  %i.ea = add nsw i32 %i.dz, -1                   ; 2 uses
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !46
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.p, label %Py_DECREF.exit71

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.dy) #14
  br label %Py_DECREF.exit71

Py_DECREF.exit71:                                 ; preds = %_Pickle_FastCall.exit, %bb.o, %bb.p
  %i.ec = icmp eq ptr %i.du, null
  br i1 %i.ec, label %Py_DECREF.exit73.thread, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit71
  %i.ed = load i32, ptr %i.du, align 8, !tbaa !46 ; 2 uses
  %.not.i68 = icmp sgt i32 %i.ed, -1
  br i1 %.not.i68, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.ee = add nsw i32 %i.ed, -1                   ; 2 uses
  store i32 %i.ee, ptr %i.du, align 8, !tbaa !46
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %.sink.split, label %bb.ab

bb.s:                                             ; preds = %bb.i
  %i.eg = call ptr @PyObject_GetAttr(ptr noundef nonnull %i.o, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 74736)) #14 ; 8 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %Py_DECREF.exit73.thread, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.ei = icmp slt i64 %2, %.val82
  br i1 %i.ei, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %Py_DECREF.exit65
  %.052102 = phi i64 [ %i.fd, %Py_DECREF.exit65 ], [ %2, %.preheader ] ; 3 uses
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !173
  %i.ek = getelementptr i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !172
  %i.em = getelementptr [8 x i8], ptr %i.el, i64 %.052102
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !40 ; 4 uses
  %i.eo = call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.eg, ptr noundef %i.en) #14 ; 4 uses
  %i.ep = load i32, ptr %i.en, align 8, !tbaa !46 ; 2 uses
  %.not.i.i96 = icmp sgt i32 %i.ep, -1
  br i1 %.not.i.i96, label %bb.t, label %_Pickle_FastCall.exit97

bb.t:                                             ; preds = %.lr.ph
  %i.eq = add nsw i32 %i.ep, -1                   ; 2 uses
  store i32 %i.eq, ptr %i.en, align 8, !tbaa !46
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.u, label %_Pickle_FastCall.exit97

bb.u:                                             ; preds = %bb.t
  call void @_Py_Dealloc(ptr noundef nonnull %i.en) #14
  br label %_Pickle_FastCall.exit97

_Pickle_FastCall.exit97:                          ; preds = %.lr.ph, %bb.t, %bb.u
  %i.es = icmp eq ptr %i.eo, null
  br i1 %i.es, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_Pickle_FastCall.exit97
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !173
  %i.eu = add nsw i64 %.052102, 1
  call fastcc void @Pdata_clear(ptr noundef %i.et, i64 noundef %i.eu)
  %i.ev = load ptr, ptr %i.b, align 8, !tbaa !173
  %i.ew = getelementptr i8, ptr %i.ev, i64 16
  store i64 %2, ptr %i.ew, align 8, !tbaa !38
  %i.ex = load i32, ptr %i.eg, align 8, !tbaa !46 ; 2 uses
  %.not.i66 = icmp sgt i32 %i.ex, -1
  br i1 %.not.i66, label %bb.w, label %Py_DECREF.exit73.thread

bb.w:                                             ; preds = %bb.v
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr %i.eg, align 8, !tbaa !46
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %Py_DECREF.exit73.thread.sink.split, label %Py_DECREF.exit73.thread

bb.x:                                             ; preds = %_Pickle_FastCall.exit97
end_hunk_3
