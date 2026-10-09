Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_pickle?download=true
inline.NumInlined: 778
inline.NumDeleted: 166
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 38
begin_hunk_0_@load:bb.a

bb.ga:                                            ; preds = %bb.fz
  %i.tk = load ptr, ptr %i.w, align 8, !tbaa !134 ; 3 uses
  %i.tl = getelementptr i8, ptr %i.tk, i64 16     ; 3 uses
  %.val9.i.i303 = load i64, ptr %i.tl, align 8, !tbaa !44 ; 5 uses
  %i.tm = getelementptr i8, ptr %i.tk, i64 48     ; 2 uses
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !132
  %i.to = icmp eq i64 %.val9.i.i303, %i.tn
  %i.tp = getelementptr i8, ptr %i.tk, i64 24     ; 2 uses
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !133 ; 2 uses
  br i1 %i.to, label %bb.gb, label %load_unicode.exit

bb.gb:                                            ; preds = %bb.ga
  %i.tr = lshr i64 %.val9.i.i303, 3
  %i.ts = add nuw nsw i64 %i.tr, 6                ; 2 uses
  %i.tt = sub i64 9223372036854775807, %.val9.i.i303
  %i.tu = icmp ugt i64 %i.ts, %i.tt
  br i1 %i.tu, label %bb.ge, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.tv = add i64 %i.ts, %.val9.i.i303            ; 3 uses
  %i.tw = icmp ugt i64 %i.tv, 1152921504606846975
  br i1 %i.tw, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.tx = shl nuw nsw i64 %i.tv, 3
  %i.ty = call ptr @PyMem_Realloc(ptr noundef %i.tq, i64 noundef %i.tx) #14 ; 3 uses
  %i.tz = icmp eq ptr %i.ty, null
  br i1 %i.tz, label %bb.ge, label %Pdata_grow.exit.i.i307

Pdata_grow.exit.i.i307:                           ; preds = %bb.gd
  store ptr %i.ty, ptr %i.tp, align 8, !tbaa !133
  store i64 %i.tv, ptr %i.tm, align 8, !tbaa !132
  %.val8.pre.i.i308 = load i64, ptr %i.tl, align 8, !tbaa !44
  br label %load_unicode.exit

bb.ge:                                            ; preds = %bb.gd, %bb.gc, %bb.gb
  %i.ua = call ptr @PyErr_NoMemory() #14          ; 0 uses
  br label %load_unicode.exit.thread

load_unicode.exit.thread:                         ; preds = %bb.fz, %bb.fw, %bb.fy, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  br label %load_binint.exit.thread

load_unicode.exit:                                ; preds = %bb.ga, %Pdata_grow.exit.i.i307
  %.val8.i.i305 = phi i64 [ %.val8.pre.i.i308, %Pdata_grow.exit.i.i307 ], [ %.val9.i.i303, %bb.ga ] ; 2 uses
  %i.ub = phi ptr [ %i.ty, %Pdata_grow.exit.i.i307 ], [ %i.tq, %bb.ga ]
  %i.uc = getelementptr [8 x i8], ptr %i.ub, i64 %.val8.i.i305
  store ptr %i.ti, ptr %i.uc, align 8, !tbaa !45
  %i.ud = add i64 %.val8.i.i305, 1
  store i64 %i.ud, ptr %i.tl, align 8, !tbaa !44
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
  %i.us = load i64, ptr %i.v, align 8, !tbaa !234 ; 2 uses
  %i.ut = icmp slt i64 %i.us, 1
  br i1 %i.ut, label %marker.exit.thread.i, label %bb.gn

marker.exit.thread.i:                             ; preds = %bb.gm
  %i.uu = load ptr, ptr %i.av, align 8, !tbaa !26
  call void @PyErr_SetString(ptr noundef %i.uu, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.gn:                                            ; preds = %bb.gm
  %i.uv = load ptr, ptr %i.aw, align 8, !tbaa !140
  %i.uw = add nsw i64 %i.us, -1                   ; 3 uses
  store i64 %i.uw, ptr %i.v, align 8, !tbaa !234
  %i.ux = getelementptr [8 x i8], ptr %i.uv, i64 %i.uw ; 2 uses
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !65 ; 2 uses
  %i.uz = icmp ne i64 %i.uw, 0                    ; 2 uses
  %i.va = zext i1 %i.uz to i32
  %i.vb = load ptr, ptr %i.w, align 8, !tbaa !134 ; 3 uses
  %i.vc = getelementptr i8, ptr %i.vb, i64 32
  store i32 %i.va, ptr %i.vc, align 8, !tbaa !130
  br i1 %i.uz, label %bb.go, label %marker.exit.i

bb.go:                                            ; preds = %bb.gn
  %i.vd = getelementptr i8, ptr %i.ux, i64 -8
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !65
  br label %marker.exit.i

marker.exit.i:                                    ; preds = %bb.go, %bb.gn
  %i.vf = phi i64 [ %i.ve, %bb.go ], [ 0, %bb.gn ]
  %i.vg = getelementptr i8, ptr %i.vb, i64 40
  store i64 %i.vf, ptr %i.vg, align 8, !tbaa !131
  %i.vh = icmp slt i64 %i.uy, 0
  br i1 %i.vh, label %load_binint.exit.thread, label %load_tuple.exit

load_tuple.exit:                                  ; preds = %marker.exit.i
  %i.vi = getelementptr i8, ptr %i.vb, i64 16
  %.val.i310 = load i64, ptr %i.vi, align 8, !tbaa !44
  %i.vj = sub i64 %.val.i310, %i.uy
  %i.vk = call fastcc i32 @load_counted_tuple(ptr noundef readonly %0, ptr noundef nonnull %1, i64 noundef %i.vj)
  %i.vl = icmp slt i32 %i.vk, 0
  br i1 %i.vl, label %load_binint.exit.thread, label %.backedge.backedge

bb.gp:                                            ; preds = %bb.o
  %i.vm = call ptr @PyList_New(i64 noundef 0) #14 ; 2 uses
  %i.vn = icmp eq ptr %i.vm, null
  br i1 %i.vn, label %load_binint.exit.thread, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.vo = load ptr, ptr %i.w, align 8, !tbaa !134 ; 3 uses
  %i.vp = getelementptr i8, ptr %i.vo, i64 16     ; 3 uses
  %.val9.i.i312 = load i64, ptr %i.vp, align 8, !tbaa !44 ; 5 uses
  %i.vq = getelementptr i8, ptr %i.vo, i64 48     ; 2 uses
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !132
  %i.vs = icmp eq i64 %.val9.i.i312, %i.vr
  %i.vt = getelementptr i8, ptr %i.vo, i64 24     ; 2 uses
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !133 ; 2 uses
  br i1 %i.vs, label %bb.gr, label %load_empty_list.exit

bb.gr:                                            ; preds = %bb.gq
  %i.vv = lshr i64 %.val9.i.i312, 3
  %i.vw = add nuw nsw i64 %i.vv, 6                ; 2 uses
  %i.vx = sub i64 9223372036854775807, %.val9.i.i312
  %i.vy = icmp ugt i64 %i.vw, %i.vx
  br i1 %i.vy, label %bb.gu, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.vz = add i64 %i.vw, %.val9.i.i312            ; 3 uses
  %i.wa = icmp ugt i64 %i.vz, 1152921504606846975
  br i1 %i.wa, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.wb = shl nuw nsw i64 %i.vz, 3
  %i.wc = call ptr @PyMem_Realloc(ptr noundef %i.vu, i64 noundef %i.wb) #14 ; 3 uses
  %i.wd = icmp eq ptr %i.wc, null
  br i1 %i.wd, label %bb.gu, label %Pdata_grow.exit.i.i316

Pdata_grow.exit.i.i316:                           ; preds = %bb.gt
  store ptr %i.wc, ptr %i.vt, align 8, !tbaa !133
  store i64 %i.vz, ptr %i.vq, align 8, !tbaa !132
  %.val8.pre.i.i317 = load i64, ptr %i.vp, align 8, !tbaa !44
  br label %load_empty_list.exit

bb.gu:                                            ; preds = %bb.gt, %bb.gs, %bb.gr
  %i.we = call ptr @PyErr_NoMemory() #14          ; 0 uses
  br label %load_binint.exit.thread

load_empty_list.exit:                             ; preds = %bb.gq, %Pdata_grow.exit.i.i316
  %.val8.i.i314 = phi i64 [ %.val8.pre.i.i317, %Pdata_grow.exit.i.i316 ], [ %.val9.i.i312, %bb.gq ] ; 2 uses
  %i.wf = phi ptr [ %i.wc, %Pdata_grow.exit.i.i316 ], [ %i.vu, %bb.gq ]
  %i.wg = getelementptr [8 x i8], ptr %i.wf, i64 %.val8.i.i314
  store ptr %i.vm, ptr %i.wg, align 8, !tbaa !45
  %i.wh = add i64 %.val8.i.i314, 1
  store i64 %i.wh, ptr %i.vp, align 8, !tbaa !44
  br label %.backedge.backedge

bb.gv:                                            ; preds = %bb.o
  %i.wi = load i64, ptr %i.v, align 8, !tbaa !234 ; 2 uses
  %i.wj = icmp slt i64 %i.wi, 1
  br i1 %i.wj, label %marker.exit.thread.i326, label %bb.gw

marker.exit.thread.i326:                          ; preds = %bb.gv
  %i.wk = load ptr, ptr %i.av, align 8, !tbaa !26
  call void @PyErr_SetString(ptr noundef %i.wk, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.gw:                                            ; preds = %bb.gv
  %i.wl = load ptr, ptr %i.aw, align 8, !tbaa !140
  %i.wm = add nsw i64 %i.wi, -1                   ; 3 uses
  store i64 %i.wm, ptr %i.v, align 8, !tbaa !234
  %i.wn = getelementptr [8 x i8], ptr %i.wl, i64 %i.wm ; 2 uses
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !65 ; 10 uses
  %i.wp = icmp ne i64 %i.wm, 0                    ; 2 uses
  %i.wq = zext i1 %i.wp to i32
  %i.wr = load ptr, ptr %i.w, align 8, !tbaa !134 ; 4 uses
  %i.ws = getelementptr i8, ptr %i.wr, i64 32
  store i32 %i.wq, ptr %i.ws, align 8, !tbaa !130
  br i1 %i.wp, label %bb.gx, label %marker.exit.i318

bb.gx:                                            ; preds = %bb.gw
  %i.wt = getelementptr i8, ptr %i.wn, i64 -8
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !65
  br label %marker.exit.i318

marker.exit.i318:                                 ; preds = %bb.gx, %bb.gw
  %i.wv = phi i64 [ %i.wu, %bb.gx ], [ 0, %bb.gw ]
  %i.ww = getelementptr i8, ptr %i.wr, i64 40
  store i64 %i.wv, ptr %i.ww, align 8, !tbaa !131
  %i.wx = icmp slt i64 %i.wo, 0
  br i1 %i.wx, label %load_binint.exit.thread, label %bb.gy

bb.gy:                                            ; preds = %marker.exit.i318
  %i.wy = getelementptr i8, ptr %i.wr, i64 16     ; 2 uses
  %.val.i.i319 = load i64, ptr %i.wy, align 8, !tbaa !44 ; 3 uses
  %i.wz = sub i64 %.val.i.i319, %i.wo             ; 6 uses
  %i.xa = call ptr @PyList_New(i64 noundef %i.wz) #14 ; 3 uses
  %i.xb = icmp eq ptr %i.xa, null
  br i1 %i.xb, label %load_binint.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.gy
  %i.xc = icmp sgt i64 %i.wz, 0
  br i1 %i.xc, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.xd = getelementptr i8, ptr %i.wr, i64 24
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !133 ; 7 uses
  %i.xf = getelementptr i8, ptr %i.xa, i64 24
  %.val19.i.i = load ptr, ptr %i.xf, align 8, !tbaa !127 ; 7 uses
  %min.iters.check = icmp ult i64 %i.wz, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val19.i.i1976 = ptrtoaddr ptr %.val19.i.i to i64
  %i.xg = ptrtoaddr ptr %i.xe to i64
  %i.xh = shl i64 %i.wo, 3
  %i.xi = add i64 %i.xh, %i.xg
  %i.xj = sub i64 %i.xi, %.val19.i.i1976
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
  %wide.load = load <2 x ptr>, ptr %i.xm, align 8, !tbaa !45
  %wide.load1977 = load <2 x ptr>, ptr %i.xn, align 8, !tbaa !45
  %i.xo = getelementptr [8 x i8], ptr %.val19.i.i, i64 %index ; 2 uses
  %i.xp = getelementptr i8, ptr %i.xo, i64 16
  store <2 x ptr> %wide.load, ptr %i.xo, align 8, !tbaa !45
  store <2 x ptr> %wide.load1977, ptr %i.xp, align 8, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.xq = icmp eq i64 %index.next, %n.vec
  br i1 %i.xq, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.wz, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.021.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.01620.i.i.ph = phi i64 [ %i.wo, %vector.memcheck ], [ %i.wo, %.lr.ph.i.i ], [ %i.xk, %middle.block ] ; 2 uses
  %2 = sub i64 %.val.i.i319, %i.wo
  %xtraiter2245 = and i64 %2, 3                   ; 2 uses
  %lcmp.mod2246.not = icmp eq i64 %xtraiter2245, 0
  br i1 %lcmp.mod2246.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.021.i.i.prol = phi i64 [ %i.xv, %scalar.ph.prol ], [ %.021.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.01620.i.i.prol = phi i64 [ %i.xu, %scalar.ph.prol ], [ %.01620.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter2247 = phi i64 [ %prol.iter2247.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.xr = getelementptr [8 x i8], ptr %i.xe, i64 %.01620.i.i.prol
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !45
  %i.xt = getelementptr [8 x i8], ptr %.val19.i.i, i64 %.021.i.i.prol
  store ptr %i.xs, ptr %i.xt, align 8, !tbaa !45
  %i.xu = add i64 %.01620.i.i.prol, 1             ; 2 uses
  %i.xv = add nuw nsw i64 %.021.i.i.prol, 1       ; 2 uses
  %prol.iter2247.next = add i64 %prol.iter2247, 1 ; 2 uses
  %prol.iter2247.cmp.not = icmp eq i64 %prol.iter2247.next, %xtraiter2245
  br i1 %prol.iter2247.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !217

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.021.i.i.unr = phi i64 [ %.021.i.i.ph, %scalar.ph.preheader ], [ %i.xv, %scalar.ph.prol ]
  %.01620.i.i.unr = phi i64 [ %.01620.i.i.ph, %scalar.ph.preheader ], [ %i.xu, %scalar.ph.prol ]
  %i.xw = sub i64 %.021.i.i.ph, %.val.i.i319
  %i.xx = add i64 %i.xw, %i.wo
  %i.xy = icmp ugt i64 %i.xx, -4
  br i1 %i.xy, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.021.i.i = phi i64 [ %i.ys, %scalar.ph ], [ %.021.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01620.i.i = phi i64 [ %i.yr, %scalar.ph ], [ %.01620.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.xz = getelementptr [8 x i8], ptr %i.xe, i64 %.01620.i.i
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !45
  %i.yb = getelementptr [8 x i8], ptr %.val19.i.i, i64 %.021.i.i
  store ptr %i.ya, ptr %i.yb, align 8, !tbaa !45
  %i.yc = getelementptr [8 x i8], ptr %i.xe, i64 %.01620.i.i
  %i.yd = getelementptr i8, ptr %i.yc, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !45
  %i.yf = getelementptr [8 x i8], ptr %.val19.i.i, i64 %.021.i.i
  %i.yg = getelementptr i8, ptr %i.yf, i64 8
  store ptr %i.ye, ptr %i.yg, align 8, !tbaa !45
  %i.yh = getelementptr [8 x i8], ptr %i.xe, i64 %.01620.i.i
  %i.yi = getelementptr i8, ptr %i.yh, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !45
  %i.yk = getelementptr [8 x i8], ptr %.val19.i.i, i64 %.021.i.i
  %i.yl = getelementptr i8, ptr %i.yk, i64 16
  store ptr %i.yj, ptr %i.yl, align 8, !tbaa !45
  %i.ym = getelementptr [8 x i8], ptr %i.xe, i64 %.01620.i.i
  %i.yn = getelementptr i8, ptr %i.ym, i64 24
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !45
  %i.yp = getelementptr [8 x i8], ptr %.val19.i.i, i64 %.021.i.i
  %i.yq = getelementptr i8, ptr %i.yp, i64 24
  store ptr %i.yo, ptr %i.yq, align 8, !tbaa !45
  %i.yr = add i64 %.01620.i.i, 4
  %i.ys = add nuw nsw i64 %.021.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ys, %i.wz
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %scalar.ph, !llvm.loop !218

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i.i
  store i64 %i.wo, ptr %i.wy, align 8, !tbaa !44
  %i.yt = load ptr, ptr %i.w, align 8, !tbaa !134 ; 3 uses
  %i.yu = getelementptr i8, ptr %i.yt, i64 16     ; 3 uses
  %.val9.i.i320 = load i64, ptr %i.yu, align 8, !tbaa !44 ; 5 uses
  %i.yv = getelementptr i8, ptr %i.yt, i64 48     ; 2 uses
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !132
  %i.yx = icmp eq i64 %.val9.i.i320, %i.yw
  %i.yy = getelementptr i8, ptr %i.yt, i64 24     ; 2 uses
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !133 ; 2 uses
  br i1 %i.yx, label %bb.gz, label %load_list.exit

bb.gz:                                            ; preds = %.loopexit.i
  %i.za = lshr i64 %.val9.i.i320, 3
  %i.zb = add nuw nsw i64 %i.za, 6                ; 2 uses
  %i.zc = sub i64 9223372036854775807, %.val9.i.i320
  %i.zd = icmp ugt i64 %i.zb, %i.zc
  br i1 %i.zd, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ze = add i64 %i.zb, %.val9.i.i320            ; 3 uses
  %i.zf = icmp ugt i64 %i.ze, 1152921504606846975
  br i1 %i.zf, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.zg = shl nuw nsw i64 %i.ze, 3
  %i.zh = call ptr @PyMem_Realloc(ptr noundef %i.yz, i64 noundef %i.zg) #14 ; 3 uses
  %i.zi = icmp eq ptr %i.zh, null
  br i1 %i.zi, label %bb.hc, label %Pdata_grow.exit.i.i324

Pdata_grow.exit.i.i324:                           ; preds = %bb.hb
  store ptr %i.zh, ptr %i.yy, align 8, !tbaa !133
  store i64 %i.ze, ptr %i.yv, align 8, !tbaa !132
  %.val8.pre.i.i325 = load i64, ptr %i.yu, align 8, !tbaa !44
  br label %load_list.exit

bb.hc:                                            ; preds = %bb.hb, %bb.ha, %bb.gz
  %i.zj = call ptr @PyErr_NoMemory() #14          ; 0 uses
  br label %load_binint.exit.thread

load_list.exit:                                   ; preds = %.loopexit.i, %Pdata_grow.exit.i.i324
  %.val8.i.i322 = phi i64 [ %.val8.pre.i.i325, %Pdata_grow.exit.i.i324 ], [ %.val9.i.i320, %.loopexit.i ] ; 2 uses
  %i.zk = phi ptr [ %i.zh, %Pdata_grow.exit.i.i324 ], [ %i.yz, %.loopexit.i ]
  %i.zl = getelementptr [8 x i8], ptr %i.zk, i64 %.val8.i.i322
  store ptr %i.xa, ptr %i.zl, align 8, !tbaa !45
  %i.zm = add i64 %.val8.i.i322, 1
  store i64 %i.zm, ptr %i.yu, align 8, !tbaa !44
  br label %.backedge.backedge

bb.hd:                                            ; preds = %bb.o
  %i.zn = call ptr @PyDict_New() #14              ; 2 uses
  %i.zo = icmp eq ptr %i.zn, null
  br i1 %i.zo, label %load_binint.exit.thread, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.zp = load ptr, ptr %i.w, align 8, !tbaa !134 ; 3 uses
  %i.zq = getelementptr i8, ptr %i.zp, i64 16     ; 3 uses
  %.val9.i.i327 = load i64, ptr %i.zq, align 8, !tbaa !44 ; 5 uses
  %i.zr = getelementptr i8, ptr %i.zp, i64 48     ; 2 uses
  %i.zs = load i64, ptr %i.zr, align 8, !tbaa !132
  %i.zt = icmp eq i64 %.val9.i.i327, %i.zs
  %i.zu = getelementptr i8, ptr %i.zp, i64 24     ; 2 uses
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !133 ; 2 uses
  br i1 %i.zt, label %bb.hf, label %load_empty_dict.exit

bb.hf:                                            ; preds = %bb.he
  %i.zw = lshr i64 %.val9.i.i327, 3
  %i.zx = add nuw nsw i64 %i.zw, 6                ; 2 uses
  %i.zy = sub i64 9223372036854775807, %.val9.i.i327
  %i.zz = icmp ugt i64 %i.zx, %i.zy
  br i1 %i.zz, label %bb.hi, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aaa = add i64 %i.zx, %.val9.i.i327           ; 3 uses
  %i.aab = icmp ugt i64 %i.aaa, 1152921504606846975
  br i1 %i.aab, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aac = shl nuw nsw i64 %i.aaa, 3
  %i.aad = call ptr @PyMem_Realloc(ptr noundef %i.zv, i64 noundef %i.aac) #14 ; 3 uses
  %i.aae = icmp eq ptr %i.aad, null
  br i1 %i.aae, label %bb.hi, label %Pdata_grow.exit.i.i331

Pdata_grow.exit.i.i331:                           ; preds = %bb.hh
  store ptr %i.aad, ptr %i.zu, align 8, !tbaa !133
  store i64 %i.aaa, ptr %i.zr, align 8, !tbaa !132
  %.val8.pre.i.i332 = load i64, ptr %i.zq, align 8, !tbaa !44
  br label %load_empty_dict.exit

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.hf
  %i.aaf = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_binint.exit.thread

load_empty_dict.exit:                             ; preds = %bb.he, %Pdata_grow.exit.i.i331
  %.val8.i.i329 = phi i64 [ %.val8.pre.i.i332, %Pdata_grow.exit.i.i331 ], [ %.val9.i.i327, %bb.he ] ; 2 uses
  %i.aag = phi ptr [ %i.aad, %Pdata_grow.exit.i.i331 ], [ %i.zv, %bb.he ]
  %i.aah = getelementptr [8 x i8], ptr %i.aag, i64 %.val8.i.i329
  store ptr %i.zn, ptr %i.aah, align 8, !tbaa !45
  %i.aai = add i64 %.val8.i.i329, 1
  store i64 %i.aai, ptr %i.zq, align 8, !tbaa !44
  br label %.backedge.backedge

bb.hj:                                            ; preds = %bb.o
  %i.aaj = load i64, ptr %i.v, align 8, !tbaa !234 ; 2 uses
  %i.aak = icmp slt i64 %i.aaj, 1
  br i1 %i.aak, label %marker.exit.thread.i345, label %bb.hk

marker.exit.thread.i345:                          ; preds = %bb.hj
  %i.aal = load ptr, ptr %i.av, align 8, !tbaa !26
  call void @PyErr_SetString(ptr noundef %i.aal, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.hk:                                            ; preds = %bb.hj
  %i.aam = load ptr, ptr %i.aw, align 8, !tbaa !140
  %i.aan = add nsw i64 %i.aaj, -1                 ; 3 uses
  store i64 %i.aan, ptr %i.v, align 8, !tbaa !234
  %i.aao = getelementptr [8 x i8], ptr %i.aam, i64 %i.aan ; 2 uses
  %i.aap = load i64, ptr %i.aao, align 8, !tbaa !65 ; 6 uses
  %i.aaq = icmp ne i64 %i.aan, 0                  ; 2 uses
  %i.aar = zext i1 %i.aaq to i32
  %i.aas = load ptr, ptr %i.w, align 8, !tbaa !134 ; 3 uses
  %i.aat = getelementptr i8, ptr %i.aas, i64 32
  store i32 %i.aar, ptr %i.aat, align 8, !tbaa !130
  br i1 %i.aaq, label %bb.hl, label %marker.exit.i333

bb.hl:                                            ; preds = %bb.hk
  %i.aau = getelementptr i8, ptr %i.aao, i64 -8
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !65
  br label %marker.exit.i333

marker.exit.i333:                                 ; preds = %bb.hl, %bb.hk
  %i.aaw = phi i64 [ %i.aav, %bb.hl ], [ 0, %bb.hk ]
  %i.aax = getelementptr i8, ptr %i.aas, i64 40
  store i64 %i.aaw, ptr %i.aax, align 8, !tbaa !131
  %i.aay = icmp slt i64 %i.aap, 0
  br i1 %i.aay, label %load_binint.exit.thread, label %bb.hm

bb.hm:                                            ; preds = %marker.exit.i333
  %i.aaz = getelementptr i8, ptr %i.aas, i64 16
  %.val.i334 = load i64, ptr %i.aaz, align 8, !tbaa !44 ; 3 uses
  %i.aba = call ptr @PyDict_New() #14             ; 9 uses
  %i.abb = icmp eq ptr %i.aba, null
  br i1 %i.abb, label %load_binint.exit.thread, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
end_hunk_0
begin_hunk_1_@load:bb.a
  %i.abi = add nuw i64 %i.aap, 1                  ; 2 uses
  %i.abj = icmp slt i64 %i.abi, %.val.i334
  br i1 %i.abj, label %.lr.ph.i, label %._crit_edge.i336

bb.hs:                                            ; preds = %.lr.ph.i
  %i.abk = add i64 %.034.i, 2                     ; 2 uses
  %i.abl = icmp slt i64 %i.abk, %.val.i334
  br i1 %i.abl, label %.lr.ph.i, label %._crit_edge.i336, !llvm.loop !219

.lr.ph.i:                                         ; preds = %bb.hr, %bb.hs
  %.034.i = phi i64 [ %i.abk, %bb.hs ], [ %i.abi, %bb.hr ] ; 2 uses
  %i.abm = load ptr, ptr %i.w, align 8, !tbaa !134
  %i.abn = getelementptr i8, ptr %i.abm, i64 24
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !133
  %i.abp = getelementptr [8 x i8], ptr %i.abo, i64 %.034.i ; 2 uses
  %i.abq = getelementptr i8, ptr %i.abp, i64 -8
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !45
  %i.abs = load ptr, ptr %i.abp, align 8, !tbaa !45
  %i.abt = call i32 @PyDict_SetItem(ptr noundef nonnull %i.aba, ptr noundef %i.abr, ptr noundef %i.abs) #14
  %i.abu = icmp slt i32 %i.abt, 0
  br i1 %i.abu, label %bb.ht, label %bb.hs

bb.ht:                                            ; preds = %.lr.ph.i
  %i.abv = load i32, ptr %i.aba, align 8, !tbaa !51 ; 2 uses
  %.not.i.i344 = icmp sgt i32 %i.abv, -1
  br i1 %.not.i.i344, label %bb.hu, label %load_binint.exit.thread

bb.hu:                                            ; preds = %bb.ht
  %i.abw = add nsw i32 %i.abv, -1                 ; 2 uses
  store i32 %i.abw, ptr %i.aba, align 8, !tbaa !51
  %i.abx = icmp eq i32 %i.abw, 0
  br i1 %i.abx, label %bb.hv, label %load_binint.exit.thread

bb.hv:                                            ; preds = %bb.hu
  call void @_Py_Dealloc(ptr noundef nonnull %i.aba) #14
  br label %load_binint.exit.thread

._crit_edge.i336:                                 ; preds = %bb.hs, %bb.hr
  %i.aby = load ptr, ptr %i.w, align 8, !tbaa !134 ; 3 uses
  %i.abz = getelementptr i8, ptr %i.aby, i64 16   ; 2 uses
  %.val.i.i337 = load i64, ptr %i.abz, align 8, !tbaa !44 ; 3 uses
  %.not.i29.i = icmp slt i64 %i.aap, %.val.i.i337
  br i1 %.not.i29.i, label %.preheader.i.i343, label %Pdata_clear.exit.i

.preheader.i.i343:                                ; preds = %._crit_edge.i336
  %i.aca = getelementptr i8, ptr %i.aby, i64 24
  br label %bb.hw

bb.hw:                                            ; preds = %Py_DECREF.exit.i.i, %.preheader.i.i343
  %.in.i = phi i64 [ %.val.i.i337, %.preheader.i.i343 ], [ %i.acb, %Py_DECREF.exit.i.i ]
  %i.acb = add nsw i64 %.in.i, -1                 ; 3 uses
  %i.acc = load ptr, ptr %i.aca, align 8, !tbaa !133
  %i.acd = getelementptr [8 x i8], ptr %i.acc, i64 %i.acb ; 2 uses
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !45 ; 4 uses
  %.not19.i.i = icmp eq ptr %i.ace, null
  br i1 %.not19.i.i, label %Py_DECREF.exit.i.i, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  store ptr null, ptr %i.acd, align 8, !tbaa !45
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.acf, -1
  br i1 %.not.i.i.i, label %bb.hy, label %Py_DECREF.exit.i.i

bb.hy:                                            ; preds = %bb.hx
  %i.acg = add nsw i32 %i.acf, -1                 ; 2 uses
  store i32 %i.acg, ptr %i.ace, align 8, !tbaa !51
  %i.ach = icmp eq i32 %i.acg, 0
  br i1 %i.ach, label %bb.hz, label %Py_DECREF.exit.i.i

bb.hz:                                            ; preds = %bb.hy
  call void @_Py_Dealloc(ptr noundef nonnull %i.ace) #14
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.hz, %bb.hy, %bb.hx, %bb.hw
  %.not18.i.not.i = icmp sgt i64 %i.acb, %i.aap
  br i1 %.not18.i.not.i, label %bb.hw, label %._crit_edge.i.i, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %Py_DECREF.exit.i.i
  store i64 %i.aap, ptr %i.abz, align 8, !tbaa !44
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !134 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 16
  %.val9.i.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !44
  br label %Pdata_clear.exit.i

Pdata_clear.exit.i:                               ; preds = %._crit_edge.i.i, %._crit_edge.i336
  %.val9.i.i338 = phi i64 [ %.val.i.i337, %._crit_edge.i336 ], [ %.val9.i.pre.i, %._crit_edge.i.i ] ; 5 uses
  %i.aci = phi ptr [ %i.aby, %._crit_edge.i336 ], [ %.pre.i, %._crit_edge.i.i ] ; 3 uses
  %i.acj = getelementptr i8, ptr %i.aci, i64 16   ; 2 uses
  %i.ack = getelementptr i8, ptr %i.aci, i64 48   ; 2 uses
  %i.acl = load i64, ptr %i.ack, align 8, !tbaa !132
  %i.acm = icmp eq i64 %.val9.i.i338, %i.acl
  %i.acn = getelementptr i8, ptr %i.aci, i64 24   ; 2 uses
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !133 ; 2 uses
  br i1 %i.acm, label %bb.ia, label %load_dict.exit

bb.ia:                                            ; preds = %Pdata_clear.exit.i
  %i.acp = lshr i64 %.val9.i.i338, 3
  %i.acq = add nuw nsw i64 %i.acp, 6              ; 2 uses
  %i.acr = sub i64 9223372036854775807, %.val9.i.i338
  %i.acs = icmp ugt i64 %i.acq, %i.acr
  br i1 %i.acs, label %bb.id, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.act = add i64 %i.acq, %.val9.i.i338          ; 3 uses
  %i.acu = icmp ugt i64 %i.act, 1152921504606846975
  br i1 %i.acu, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.acv = shl nuw nsw i64 %i.act, 3
  %i.acw = call ptr @PyMem_Realloc(ptr noundef %i.aco, i64 noundef %i.acv) #14 ; 3 uses
  %i.acx = icmp eq ptr %i.acw, null
  br i1 %i.acx, label %bb.id, label %Pdata_grow.exit.i.i341

Pdata_grow.exit.i.i341:                           ; preds = %bb.ic
  store ptr %i.acw, ptr %i.acn, align 8, !tbaa !133
  store i64 %i.act, ptr %i.ack, align 8, !tbaa !132
  %.val8.pre.i.i342 = load i64, ptr %i.acj, align 8, !tbaa !44
  br label %load_dict.exit

bb.id:                                            ; preds = %bb.ic, %bb.ib, %bb.ia
  %i.acy = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_binint.exit.thread

load_dict.exit:                                   ; preds = %Pdata_clear.exit.i, %Pdata_grow.exit.i.i341
  %.val8.i.i340 = phi i64 [ %.val8.pre.i.i342, %Pdata_grow.exit.i.i341 ], [ %.val9.i.i338, %Pdata_clear.exit.i ] ; 2 uses
  %i.acz = phi ptr [ %i.acw, %Pdata_grow.exit.i.i341 ], [ %i.aco, %Pdata_clear.exit.i ]
  %i.ada = getelementptr [8 x i8], ptr %i.acz, i64 %.val8.i.i340
  store ptr %i.aba, ptr %i.ada, align 8, !tbaa !45
  %i.adb = add i64 %.val8.i.i340, 1
  store i64 %i.adb, ptr %i.acj, align 8, !tbaa !44
  br label %.backedge.backedge

bb.ie:                                            ; preds = %bb.o
  %i.adc = call ptr @PySet_New(ptr noundef null) #14 ; 2 uses
  %i.add = icmp eq ptr %i.adc, null
  br i1 %i.add, label %load_binint.exit.thread, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.ade = load ptr, ptr %i.w, align 8, !tbaa !134 ; 3 uses
  %i.adf = getelementptr i8, ptr %i.ade, i64 16   ; 3 uses
  %.val9.i.i346 = load i64, ptr %i.adf, align 8, !tbaa !44 ; 5 uses
  %i.adg = getelementptr i8, ptr %i.ade, i64 48   ; 2 uses
  %i.adh = load i64, ptr %i.adg, align 8, !tbaa !132
  %i.adi = icmp eq i64 %.val9.i.i346, %i.adh
  %i.adj = getelementptr i8, ptr %i.ade, i64 24   ; 2 uses
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !133 ; 2 uses
  br i1 %i.adi, label %bb.ig, label %load_empty_set.exit

bb.ig:                                            ; preds = %bb.if
  %i.adl = lshr i64 %.val9.i.i346, 3
  %i.adm = add nuw nsw i64 %i.adl, 6              ; 2 uses
  %i.adn = sub i64 9223372036854775807, %.val9.i.i346
  %i.ado = icmp ugt i64 %i.adm, %i.adn
  br i1 %i.ado, label %bb.ij, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.adp = add i64 %i.adm, %.val9.i.i346          ; 3 uses
  %i.adq = icmp ugt i64 %i.adp, 1152921504606846975
  br i1 %i.adq, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.adr = shl nuw nsw i64 %i.adp, 3
  %i.ads = call ptr @PyMem_Realloc(ptr noundef %i.adk, i64 noundef %i.adr) #14 ; 3 uses
  %i.adt = icmp eq ptr %i.ads, null
  br i1 %i.adt, label %bb.ij, label %Pdata_grow.exit.i.i350

Pdata_grow.exit.i.i350:                           ; preds = %bb.ii
  store ptr %i.ads, ptr %i.adj, align 8, !tbaa !133
  store i64 %i.adp, ptr %i.adg, align 8, !tbaa !132
  %.val8.pre.i.i351 = load i64, ptr %i.adf, align 8, !tbaa !44
  br label %load_empty_set.exit

bb.ij:                                            ; preds = %bb.ii, %bb.ih, %bb.ig
  %i.adu = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_binint.exit.thread

load_empty_set.exit:                              ; preds = %bb.if, %Pdata_grow.exit.i.i350
  %.val8.i.i348 = phi i64 [ %.val8.pre.i.i351, %Pdata_grow.exit.i.i350 ], [ %.val9.i.i346, %bb.if ] ; 2 uses
  %i.adv = phi ptr [ %i.ads, %Pdata_grow.exit.i.i350 ], [ %i.adk, %bb.if ]
  %i.adw = getelementptr [8 x i8], ptr %i.adv, i64 %.val8.i.i348
  store ptr %i.adc, ptr %i.adw, align 8, !tbaa !45
  %i.adx = add i64 %.val8.i.i348, 1
  store i64 %i.adx, ptr %i.adf, align 8, !tbaa !44
  br label %.backedge.backedge

bb.ik:                                            ; preds = %bb.o
  %i.ady = load i64, ptr %i.v, align 8, !tbaa !234 ; 2 uses
  %i.adz = icmp slt i64 %i.ady, 1
  br i1 %i.adz, label %marker.exit.thread.i370, label %bb.il

marker.exit.thread.i370:                          ; preds = %bb.ik
  %i.aea = load ptr, ptr %i.av, align 8, !tbaa !26
  call void @PyErr_SetString(ptr noundef %i.aea, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.il:                                            ; preds = %bb.ik
  %i.aeb = load ptr, ptr %i.aw, align 8, !tbaa !140
  %i.aec = add nsw i64 %i.ady, -1                 ; 3 uses
  store i64 %i.aec, ptr %i.v, align 8, !tbaa !234
  %i.aed = getelementptr [8 x i8], ptr %i.aeb, i64 %i.aec ; 2 uses
  %i.aee = load i64, ptr %i.aed, align 8, !tbaa !65 ; 18 uses
  %i.aef = icmp ne i64 %i.aec, 0                  ; 3 uses
  %i.aeg = zext i1 %i.aef to i32
  %i.aeh = load ptr, ptr %i.w, align 8, !tbaa !134 ; 5 uses
  %i.aei = getelementptr i8, ptr %i.aeh, i64 32
  store i32 %i.aeg, ptr %i.aei, align 8, !tbaa !130
  br i1 %i.aef, label %bb.im, label %marker.exit.i352

bb.im:                                            ; preds = %bb.il
  %i.aej = getelementptr i8, ptr %i.aed, i64 -8
  %i.aek = load i64, ptr %i.aej, align 8, !tbaa !65
  br label %marker.exit.i352

marker.exit.i352:                                 ; preds = %bb.im, %bb.il
  %i.ael = phi i64 [ %i.aek, %bb.im ], [ 0, %bb.il ] ; 2 uses
  %i.aem = getelementptr i8, ptr %i.aeh, i64 40
  store i64 %i.ael, ptr %i.aem, align 8, !tbaa !131
  %i.aen = icmp slt i64 %i.aee, 0
  br i1 %i.aen, label %load_binint.exit.thread, label %bb.in

bb.in:                                            ; preds = %marker.exit.i352
  %i.aeo = getelementptr i8, ptr %i.aeh, i64 16
  %.val66.i = load i64, ptr %i.aeo, align 8, !tbaa !44 ; 4 uses
  %i.aep = icmp sle i64 %i.aee, %.val66.i
  %.not.i353 = icmp sgt i64 %i.aee, %i.ael
  %or.cond.i = select i1 %i.aep, i1 %.not.i353, i1 false
  br i1 %or.cond.i, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %.val67.i = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.aeq = select i1 %i.aef, ptr @.str.102, ptr @.str.103
  call void @PyErr_SetString(ptr noundef %.val67.i, ptr noundef nonnull %i.aeq) #14
  br label %load_binint.exit.thread

bb.ip:                                            ; preds = %bb.in
  %i.aer = getelementptr i8, ptr %i.aeh, i64 24
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !133
  %i.aet = getelementptr [8 x i8], ptr %i.aes, i64 %i.aee
  %i.aeu = getelementptr i8, ptr %i.aet, i64 -8
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !45 ; 3 uses
  %i.aew = getelementptr i8, ptr %i.aev, i64 8
  %.val65.i = load ptr, ptr %i.aew, align 8, !tbaa !57 ; 2 uses
  %.not80.i = icmp eq ptr %.val65.i, @PySet_Type
  br i1 %.not80.i, label %.thread.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.aex = call i32 @PyType_IsSubtype(ptr noundef %.val65.i, ptr noundef nonnull @PySet_Type) #14
  %.not54.i = icmp eq i32 %i.aex, 0
  br i1 %.not54.i, label %bb.iv, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %.pre85.i = load ptr, ptr %i.w, align 8, !tbaa !134 ; 4 uses
  %.phi.trans.insert.i354 = getelementptr i8, ptr %.pre85.i, i64 40
  %.pre86.i = load i64, ptr %.phi.trans.insert.i354, align 8, !tbaa !131
  %i.aey = icmp slt i64 %i.aee, %.pre86.i
  br i1 %i.aey, label %bb.is, label %..thread.i_crit_edge

..thread.i_crit_edge:                             ; preds = %bb.ir
  %.phi.trans.insert = getelementptr i8, ptr %.pre85.i, i64 16
  %.val.i.i355.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !44
  br label %.thread.i

bb.is:                                            ; preds = %bb.ir
  %.val24.i.i = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.aez = getelementptr i8, ptr %.pre85.i, i64 32
  %.val25.i.i = load i32, ptr %i.aez, align 8, !tbaa !130
  %.not.i.i.i360 = icmp eq i32 %.val25.i.i, 0
  %i.afa = select i1 %.not.i.i.i360, ptr @.str.103, ptr @.str.102
  call void @PyErr_SetString(ptr noundef %.val24.i.i, ptr noundef nonnull %i.afa) #14
  br label %load_binint.exit.thread

.thread.i:                                        ; preds = %..thread.i_crit_edge, %bb.ip
  %.val.i.i355 = phi i64 [ %.val.i.i355.pre, %..thread.i_crit_edge ], [ %.val66.i, %bb.ip ] ; 3 uses
  %i.afb = phi ptr [ %.pre85.i, %..thread.i_crit_edge ], [ %i.aeh, %bb.ip ] ; 2 uses
  %i.afc = getelementptr i8, ptr %i.afb, i64 16
  %i.afd = sub i64 %.val.i.i355, %i.aee           ; 6 uses
  %i.afe = call ptr @PyTuple_New(i64 noundef %i.afd) #14 ; 7 uses
  %i.aff = ptrtoaddr ptr %i.afe to i64
  %i.afg = icmp eq ptr %i.afe, null
  br i1 %i.afg, label %load_binint.exit.thread, label %.preheader.i.i356

.preheader.i.i356:                                ; preds = %.thread.i
  %i.afh = icmp sgt i64 %i.afd, 0
  br i1 %i.afh, label %.lr.ph.i.i358, label %.loopexit.i357

.lr.ph.i.i358:                                    ; preds = %.preheader.i.i356
  %i.afi = getelementptr i8, ptr %i.afb, i64 24
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !133 ; 7 uses
  %i.afk = getelementptr i8, ptr %i.afe, i64 32   ; 6 uses
  %min.iters.check1982 = icmp ult i64 %i.afd, 6
  br i1 %min.iters.check1982, label %scalar.ph1981.preheader, label %vector.memcheck1979

vector.memcheck1979:                              ; preds = %.lr.ph.i.i358
  %i.afl = ptrtoaddr ptr %i.afj to i64
  %i.afm = shl i64 %i.aee, 3
  %i.afn = add i64 %i.afm, %i.afl
  %i.afo = sub i64 %i.aff, %i.afn
  %diff.check1980 = icmp ugt i64 %i.afo, -32
  br i1 %diff.check1980, label %scalar.ph1981.preheader, label %vector.ph1983

vector.ph1983:                                    ; preds = %vector.memcheck1979
  %n.vec1984 = and i64 %i.afd, 9223372036854775804 ; 4 uses
  %i.afp = add nuw i64 %i.aee, %n.vec1984
  %i.afq = getelementptr [8 x i8], ptr %i.afj, i64 %i.aee
  br label %vector.body1985

vector.body1985:                                  ; preds = %vector.body1985, %vector.ph1983
  %index1986 = phi i64 [ 0, %vector.ph1983 ], [ %index.next1989, %vector.body1985 ] ; 3 uses
  %i.afr = getelementptr [8 x i8], ptr %i.afq, i64 %index1986 ; 2 uses
  %i.afs = getelementptr i8, ptr %i.afr, i64 16
  %wide.load1987 = load <2 x ptr>, ptr %i.afr, align 8, !tbaa !45
  %wide.load1988 = load <2 x ptr>, ptr %i.afs, align 8, !tbaa !45
  %i.aft = getelementptr [8 x i8], ptr %i.afk, i64 %index1986 ; 2 uses
  %i.afu = getelementptr i8, ptr %i.aft, i64 16
  store <2 x ptr> %wide.load1987, ptr %i.aft, align 8, !tbaa !45
  store <2 x ptr> %wide.load1988, ptr %i.afu, align 8, !tbaa !45
  %index.next1989 = add nuw i64 %index1986, 4     ; 2 uses
  %i.afv = icmp eq i64 %index.next1989, %n.vec1984
  br i1 %i.afv, label %middle.block1990, label %vector.body1985, !llvm.loop !220

middle.block1990:                                 ; preds = %vector.body1985
  %cmp.n1991 = icmp eq i64 %i.afd, %n.vec1984
  br i1 %cmp.n1991, label %.loopexit.i357, label %scalar.ph1981.preheader

scalar.ph1981.preheader:                          ; preds = %vector.memcheck1979, %.lr.ph.i.i358, %middle.block1990
  %.027.i.i.ph = phi i64 [ 0, %vector.memcheck1979 ], [ 0, %.lr.ph.i.i358 ], [ %n.vec1984, %middle.block1990 ] ; 3 uses
  %.02026.i.i.ph = phi i64 [ %i.aee, %vector.memcheck1979 ], [ %i.aee, %.lr.ph.i.i358 ], [ %i.afp, %middle.block1990 ] ; 2 uses
  %3 = sub i64 %.val.i.i355, %i.aee
  %xtraiter2242 = and i64 %3, 3                   ; 2 uses
  %lcmp.mod2243.not = icmp eq i64 %xtraiter2242, 0
  br i1 %lcmp.mod2243.not, label %scalar.ph1981.prol.loopexit, label %scalar.ph1981.prol

scalar.ph1981.prol:                               ; preds = %scalar.ph1981.preheader, %scalar.ph1981.prol
  %.027.i.i.prol = phi i64 [ %i.aga, %scalar.ph1981.prol ], [ %.027.i.i.ph, %scalar.ph1981.preheader ] ; 2 uses
  %.02026.i.i.prol = phi i64 [ %i.afz, %scalar.ph1981.prol ], [ %.02026.i.i.ph, %scalar.ph1981.preheader ] ; 2 uses
  %prol.iter2244 = phi i64 [ %prol.iter2244.next, %scalar.ph1981.prol ], [ 0, %scalar.ph1981.preheader ]
  %i.afw = getelementptr [8 x i8], ptr %i.afj, i64 %.02026.i.i.prol
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !45
  %i.afy = getelementptr [8 x i8], ptr %i.afk, i64 %.027.i.i.prol
  store ptr %i.afx, ptr %i.afy, align 8, !tbaa !45
  %i.afz = add i64 %.02026.i.i.prol, 1            ; 2 uses
  %i.aga = add nuw nsw i64 %.027.i.i.prol, 1      ; 2 uses
  %prol.iter2244.next = add i64 %prol.iter2244, 1 ; 2 uses
  %prol.iter2244.cmp.not = icmp eq i64 %prol.iter2244.next, %xtraiter2242
  br i1 %prol.iter2244.cmp.not, label %scalar.ph1981.prol.loopexit, label %scalar.ph1981.prol, !llvm.loop !221

scalar.ph1981.prol.loopexit:                      ; preds = %scalar.ph1981.prol, %scalar.ph1981.preheader
  %.027.i.i.unr = phi i64 [ %.027.i.i.ph, %scalar.ph1981.preheader ], [ %i.aga, %scalar.ph1981.prol ]
  %.02026.i.i.unr = phi i64 [ %.02026.i.i.ph, %scalar.ph1981.preheader ], [ %i.afz, %scalar.ph1981.prol ]
  %i.agb = sub i64 %.027.i.i.ph, %.val.i.i355
  %i.agc = add i64 %i.agb, %i.aee
  %i.agd = icmp ugt i64 %i.agc, -4
  br i1 %i.agd, label %.loopexit.i357, label %scalar.ph1981

scalar.ph1981:                                    ; preds = %scalar.ph1981.prol.loopexit, %scalar.ph1981
  %.027.i.i = phi i64 [ %i.agx, %scalar.ph1981 ], [ %.027.i.i.unr, %scalar.ph1981.prol.loopexit ] ; 5 uses
  %.02026.i.i = phi i64 [ %i.agw, %scalar.ph1981 ], [ %.02026.i.i.unr, %scalar.ph1981.prol.loopexit ] ; 5 uses
  %i.age = getelementptr [8 x i8], ptr %i.afj, i64 %.02026.i.i
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !45
  %i.agg = getelementptr [8 x i8], ptr %i.afk, i64 %.027.i.i
  store ptr %i.agf, ptr %i.agg, align 8, !tbaa !45
  %i.agh = getelementptr [8 x i8], ptr %i.afj, i64 %.02026.i.i
  %i.agi = getelementptr i8, ptr %i.agh, i64 8
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !45
  %i.agk = getelementptr [8 x i8], ptr %i.afk, i64 %.027.i.i
  %i.agl = getelementptr i8, ptr %i.agk, i64 8
  store ptr %i.agj, ptr %i.agl, align 8, !tbaa !45
  %i.agm = getelementptr [8 x i8], ptr %i.afj, i64 %.02026.i.i
  %i.agn = getelementptr i8, ptr %i.agm, i64 16
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !45
  %i.agp = getelementptr [8 x i8], ptr %i.afk, i64 %.027.i.i
  %i.agq = getelementptr i8, ptr %i.agp, i64 16
  store ptr %i.ago, ptr %i.agq, align 8, !tbaa !45
  %i.agr = getelementptr [8 x i8], ptr %i.afj, i64 %.02026.i.i
  %i.ags = getelementptr i8, ptr %i.agr, i64 24
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !45
  %i.agu = getelementptr [8 x i8], ptr %i.afk, i64 %.027.i.i
  %i.agv = getelementptr i8, ptr %i.agu, i64 24
  store ptr %i.agt, ptr %i.agv, align 8, !tbaa !45
  %i.agw = add i64 %.02026.i.i, 4
  %i.agx = add nuw nsw i64 %.027.i.i, 4           ; 2 uses
  %exitcond.not.i.i359.3 = icmp eq i64 %i.agx, %i.afd
  br i1 %exitcond.not.i.i359.3, label %.loopexit.i357, label %scalar.ph1981, !llvm.loop !222

.loopexit.i357:                                   ; preds = %scalar.ph1981.prol.loopexit, %scalar.ph1981, %middle.block1990, %.preheader.i.i356
  store i64 %i.aee, ptr %i.afc, align 8, !tbaa !44
  %i.agy = call i32 @_PySet_Update(ptr noundef nonnull %i.aev, ptr noundef nonnull %i.afe) #14
  %i.agz = load i32, ptr %i.afe, align 8, !tbaa !51 ; 2 uses
  %.not.i60.i = icmp sgt i32 %i.agz, -1
  br i1 %.not.i60.i, label %bb.it, label %load_additems.exit

bb.it:                                            ; preds = %.loopexit.i357
  %i.aha = add nsw i32 %i.agz, -1                 ; 2 uses
  store i32 %i.aha, ptr %i.afe, align 8, !tbaa !51
  %i.ahb = icmp eq i32 %i.aha, 0
  br i1 %i.ahb, label %bb.iu, label %load_additems.exit

bb.iu:                                            ; preds = %bb.it
  call void @_Py_Dealloc(ptr noundef nonnull %i.afe) #14
  br label %load_additems.exit

bb.iv:                                            ; preds = %bb.iq
  %i.ahc = call ptr @PyObject_GetAttr(ptr noundef nonnull %i.aev, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 74160)) #14 ; 8 uses
  %i.ahd = icmp eq ptr %i.ahc, null
  br i1 %i.ahd, label %load_binint.exit.thread, label %.preheader.i361

.preheader.i361:                                  ; preds = %bb.iv
  %i.ahe = icmp samesign ult i64 %i.aee, %.val66.i
  br i1 %i.ahe, label %.lr.ph.i364, label %._crit_edge.i362

.lr.ph.i364:                                      ; preds = %.preheader.i361, %Py_DECREF.exit59.thread.i
  %.04582.i = phi i64 [ %i.aij, %Py_DECREF.exit59.thread.i ], [ %i.aee, %.preheader.i361 ] ; 4 uses
  %i.ahf = load ptr, ptr %i.w, align 8, !tbaa !134
  %i.ahg = getelementptr i8, ptr %i.ahf, i64 24
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !133
  %i.ahi = getelementptr [8 x i8], ptr %i.ahh, i64 %.04582.i
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !45 ; 4 uses
  %i.ahk = call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.ahc, ptr noundef %i.ahj) #14 ; 4 uses
  %i.ahl = load i32, ptr %i.ahj, align 8, !tbaa !51 ; 2 uses
  %.not.i.i70.i = icmp sgt i32 %i.ahl, -1
  br i1 %.not.i.i70.i, label %bb.iw, label %_Pickle_FastCall.exit.i

bb.iw:                                            ; preds = %.lr.ph.i364
  %i.ahm = add nsw i32 %i.ahl, -1                 ; 2 uses
  store i32 %i.ahm, ptr %i.ahj, align 8, !tbaa !51
  %i.ahn = icmp eq i32 %i.ahm, 0
  br i1 %i.ahn, label %bb.ix, label %_Pickle_FastCall.exit.i

bb.ix:                                            ; preds = %bb.iw
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahj) #14
  br label %_Pickle_FastCall.exit.i

_Pickle_FastCall.exit.i:                          ; preds = %bb.ix, %bb.iw, %.lr.ph.i364
  %.not55.i = icmp eq ptr %i.ahk, null
  br i1 %.not55.i, label %bb.iy, label %bb.jf

bb.iy:                                            ; preds = %_Pickle_FastCall.exit.i
  %i.aho = load ptr, ptr %i.w, align 8, !tbaa !134 ; 3 uses
  %i.ahp = add nuw nsw i64 %.04582.i, 1           ; 2 uses
  %i.ahq = getelementptr i8, ptr %i.aho, i64 16   ; 2 uses
  %.val.i71.i = load i64, ptr %i.ahq, align 8, !tbaa !44 ; 2 uses
  %.not.i72.i = icmp slt i64 %i.ahp, %.val.i71.i
  br i1 %.not.i72.i, label %.preheader.i73.i, label %Pdata_clear.exit.i365

.preheader.i73.i:                                 ; preds = %bb.iy
  %i.ahr = add nsw i64 %.val.i71.i, -1
  %i.ahs = getelementptr i8, ptr %i.aho, i64 24
  br label %bb.iz

bb.iz:                                            ; preds = %Py_DECREF.exit.i.i367, %.preheader.i73.i
  %i.aht = phi i64 [ %i.ahr, %.preheader.i73.i ], [ %i.aia, %Py_DECREF.exit.i.i367 ] ; 2 uses
  %i.ahu = load ptr, ptr %i.ahs, align 8, !tbaa !133
  %i.ahv = getelementptr [8 x i8], ptr %i.ahu, i64 %i.aht ; 2 uses
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !45 ; 4 uses
  %.not19.i.i366 = icmp eq ptr %i.ahw, null
  br i1 %.not19.i.i366, label %Py_DECREF.exit.i.i367, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  store ptr null, ptr %i.ahv, align 8, !tbaa !45
  %i.ahx = load i32, ptr %i.ahw, align 8, !tbaa !51 ; 2 uses
  %.not.i.i75.i = icmp sgt i32 %i.ahx, -1
  br i1 %.not.i.i75.i, label %bb.jb, label %Py_DECREF.exit.i.i367

bb.jb:                                            ; preds = %bb.ja
  %i.ahy = add nsw i32 %i.ahx, -1                 ; 2 uses
  store i32 %i.ahy, ptr %i.ahw, align 8, !tbaa !51
  %i.ahz = icmp eq i32 %i.ahy, 0
  br i1 %i.ahz, label %bb.jc, label %Py_DECREF.exit.i.i367

bb.jc:                                            ; preds = %bb.jb
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahw) #14
  br label %Py_DECREF.exit.i.i367

Py_DECREF.exit.i.i367:                            ; preds = %bb.jc, %bb.jb, %bb.ja, %bb.iz
  %i.aia = add i64 %i.aht, -1                     ; 2 uses
  %.not18.i.not.i368 = icmp sgt i64 %i.aia, %.04582.i
  br i1 %.not18.i.not.i368, label %bb.iz, label %._crit_edge.i76.i, !llvm.loop !1

._crit_edge.i76.i:                                ; preds = %Py_DECREF.exit.i.i367
  store i64 %i.ahp, ptr %i.ahq, align 8, !tbaa !44
  %.pre.i369 = load ptr, ptr %i.w, align 8, !tbaa !134
  br label %Pdata_clear.exit.i365

Pdata_clear.exit.i365:                            ; preds = %._crit_edge.i76.i, %bb.iy
  %i.aib = phi ptr [ %i.aho, %bb.iy ], [ %.pre.i369, %._crit_edge.i76.i ]
  %i.aic = getelementptr i8, ptr %i.aib, i64 16
  store i64 %i.aee, ptr %i.aic, align 8, !tbaa !44
  %i.aid = load i32, ptr %i.ahc, align 8, !tbaa !51 ; 2 uses
  %.not.i58.i = icmp sgt i32 %i.aid, -1
  br i1 %.not.i58.i, label %bb.jd, label %load_binint.exit.thread

bb.jd:                                            ; preds = %Pdata_clear.exit.i365
  %i.aie = add nsw i32 %i.aid, -1                 ; 2 uses
  store i32 %i.aie, ptr %i.ahc, align 8, !tbaa !51
  %i.aif = icmp eq i32 %i.aie, 0
  br i1 %i.aif, label %bb.je, label %load_binint.exit.thread

bb.je:                                            ; preds = %bb.jd
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahc) #14
  br label %load_binint.exit.thread

bb.jf:                                            ; preds = %_Pickle_FastCall.exit.i
  %i.aig = load i32, ptr %i.ahk, align 8, !tbaa !51 ; 2 uses
  %.not.i56.i = icmp sgt i32 %i.aig, -1
  br i1 %.not.i56.i, label %bb.jg, label %Py_DECREF.exit59.thread.i

bb.jg:                                            ; preds = %bb.jf
  %i.aih = add nsw i32 %i.aig, -1                 ; 2 uses
  store i32 %i.aih, ptr %i.ahk, align 8, !tbaa !51
  %i.aii = icmp eq i32 %i.aih, 0
  br i1 %i.aii, label %bb.jh, label %Py_DECREF.exit59.thread.i

bb.jh:                                            ; preds = %bb.jg
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahk) #14
  br label %Py_DECREF.exit59.thread.i

Py_DECREF.exit59.thread.i:                        ; preds = %bb.jh, %bb.jg, %bb.jf
  %i.aij = add i64 %.04582.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aij, %.val66.i
  br i1 %exitcond.not.i, label %._crit_edge.i362, label %.lr.ph.i364, !llvm.loop !223

._crit_edge.i362:                                 ; preds = %Py_DECREF.exit59.thread.i, %.preheader.i361
  %i.aik = load ptr, ptr %i.w, align 8, !tbaa !134
  %i.ail = getelementptr i8, ptr %i.aik, i64 16
  store i64 %i.aee, ptr %i.ail, align 8, !tbaa !44
  %i.aim = load i32, ptr %i.ahc, align 8, !tbaa !51 ; 2 uses
  %.not.i.i363 = icmp sgt i32 %i.aim, -1
  br i1 %.not.i.i363, label %bb.ji, label %.backedge.backedge

bb.ji:                                            ; preds = %._crit_edge.i362
  %i.ain = add nsw i32 %i.aim, -1                 ; 2 uses
  store i32 %i.ain, ptr %i.ahc, align 8, !tbaa !51
  %i.aio = icmp eq i32 %i.ain, 0
  br i1 %i.aio, label %bb.jj, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ji, %bb.jj, %._crit_edge.i362, %load_build.exit.thread1574, %._crit_edge.i.i602, %bb.tt, %Py_DECREF.exit.i590, %bb.tl, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.cj, %bb.ck, %bb.do, %bb.dp, %bb.dq, %bb.ff, %bb.fg, %bb.gf, %bb.gg, %bb.gh, %bb.gi, %bb.gj, %bb.gk, %bb.gl, %load_tuple.exit, %load_additems.exit, %bb.md, %bb.me, %load_append.exit, %load_appends.exit, %load_build.exit, %load_binput.exit, %load_long_binput.exit, %load_put.exit, %load_memoize.exit, %bb.ty, %load_setitems.exit, %bb.wm, %bb.wn, %bb.wo, %load_none.exit, %load_binint.exit, %load_binint1.exit, %load_binint2.exit, %load_int.exit, %load_long.exit, %load_float.exit, %load_binfloat.exit, %load_counted_bytearray.exit, %load_next_buffer.exit, %load_string.exit, %load_unicode.exit, %load_empty_list.exit, %load_list.exit, %load_empty_dict.exit, %load_dict.exit, %load_empty_set.exit, %load_frozenset.exit, %load_obj.exit, %load_inst.exit, %load_global.exit, %load_stack_global.exit, %load_dup.exit, %load_binget.exit, %load_long_binget.exit, %load_get.exit, %load_mark.exit, %load_persid.exit, %load_binpersid.exit, %load_reduce.exit, %load_proto.exit, %load_frame.exit, %load_bool.exit, %load_bool.exit679
  br label %.backedge

bb.jj:                                            ; preds = %bb.ji
  call void @_Py_Dealloc(ptr noundef nonnull %i.ahc) #14
  br label %.backedge.backedge

load_additems.exit:                               ; preds = %.loopexit.i357, %bb.it, %bb.iu
  %i.aip = icmp slt i32 %i.agy, 0
  br i1 %i.aip, label %load_binint.exit.thread, label %.backedge.backedge

bb.jk:                                            ; preds = %bb.o
  %i.aiq = load i64, ptr %i.v, align 8, !tbaa !234 ; 2 uses
  %i.air = icmp slt i64 %i.aiq, 1
  br i1 %i.air, label %marker.exit.thread.i388, label %bb.jl

marker.exit.thread.i388:                          ; preds = %bb.jk
  %i.ais = load ptr, ptr %i.av, align 8, !tbaa !26
  call void @PyErr_SetString(ptr noundef %i.ais, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.jl:                                            ; preds = %bb.jk
  %i.ait = load ptr, ptr %i.aw, align 8, !tbaa !140
  %i.aiu = add nsw i64 %i.aiq, -1                 ; 3 uses
  store i64 %i.aiu, ptr %i.v, align 8, !tbaa !234
  %i.aiv = getelementptr [8 x i8], ptr %i.ait, i64 %i.aiu ; 2 uses
  %i.aiw = load i64, ptr %i.aiv, align 8, !tbaa !65 ; 11 uses
  %i.aix = icmp ne i64 %i.aiu, 0                  ; 3 uses
  %i.aiy = zext i1 %i.aix to i32
  %i.aiz = load ptr, ptr %i.w, align 8, !tbaa !134 ; 4 uses
  %i.aja = getelementptr i8, ptr %i.aiz, i64 32
  store i32 %i.aiy, ptr %i.aja, align 8, !tbaa !130
  br i1 %i.aix, label %bb.jm, label %marker.exit.i371

bb.jm:                                            ; preds = %bb.jl
  %i.ajb = getelementptr i8, ptr %i.aiv, i64 -8
  %i.ajc = load i64, ptr %i.ajb, align 8, !tbaa !65
  br label %marker.exit.i371

marker.exit.i371:                                 ; preds = %bb.jm, %bb.jl
  %i.ajd = phi i64 [ %i.ajc, %bb.jm ], [ 0, %bb.jl ] ; 2 uses
  %i.aje = getelementptr i8, ptr %i.aiz, i64 40
  store i64 %i.ajd, ptr %i.aje, align 8, !tbaa !131
  %i.ajf = icmp slt i64 %i.aiw, 0
  br i1 %i.ajf, label %load_binint.exit.thread, label %bb.jn

bb.jn:                                            ; preds = %marker.exit.i371
  %i.ajg = icmp slt i64 %i.aiw, %i.ajd
  br i1 %i.ajg, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %.val24.i.i387 = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.ajh = select i1 %i.aix, ptr @.str.102, ptr @.str.103
  call void @PyErr_SetString(ptr noundef %.val24.i.i387, ptr noundef nonnull %i.ajh) #14
  br label %load_binint.exit.thread

bb.jp:                                            ; preds = %bb.jn
  %i.aji = getelementptr i8, ptr %i.aiz, i64 16   ; 2 uses
  %.val.i.i372 = load i64, ptr %i.aji, align 8, !tbaa !44 ; 3 uses
  %i.ajj = sub i64 %.val.i.i372, %i.aiw           ; 6 uses
  %i.ajk = call ptr @PyTuple_New(i64 noundef %i.ajj) #14 ; 7 uses
  %i.ajl = ptrtoaddr ptr %i.ajk to i64
  %i.ajm = icmp eq ptr %i.ajk, null
  br i1 %i.ajm, label %load_binint.exit.thread, label %.preheader.i.i373

.preheader.i.i373:                                ; preds = %bb.jp
  %i.ajn = icmp sgt i64 %i.ajj, 0
  br i1 %i.ajn, label %.lr.ph.i.i383, label %.loopexit.i374

.lr.ph.i.i383:                                    ; preds = %.preheader.i.i373
  %i.ajo = getelementptr i8, ptr %i.aiz, i64 24
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !133 ; 7 uses
  %i.ajq = getelementptr i8, ptr %i.ajk, i64 32   ; 6 uses
  %min.iters.check1997 = icmp ult i64 %i.ajj, 6
  br i1 %min.iters.check1997, label %scalar.ph1996.preheader, label %vector.memcheck1994

vector.memcheck1994:                              ; preds = %.lr.ph.i.i383
  %i.ajr = ptrtoaddr ptr %i.ajp to i64
  %i.ajs = shl i64 %i.aiw, 3
  %i.ajt = add i64 %i.ajs, %i.ajr
  %i.aju = sub i64 %i.ajl, %i.ajt
  %diff.check1995 = icmp ugt i64 %i.aju, -32
  br i1 %diff.check1995, label %scalar.ph1996.preheader, label %vector.ph1998

vector.ph1998:                                    ; preds = %vector.memcheck1994
  %n.vec1999 = and i64 %i.ajj, 9223372036854775804 ; 4 uses
  %i.ajv = add nuw i64 %i.aiw, %n.vec1999
  %i.ajw = getelementptr [8 x i8], ptr %i.ajp, i64 %i.aiw
  br label %vector.body2000

vector.body2000:                                  ; preds = %vector.body2000, %vector.ph1998
  %index2001 = phi i64 [ 0, %vector.ph1998 ], [ %index.next2004, %vector.body2000 ] ; 3 uses
  %i.ajx = getelementptr [8 x i8], ptr %i.ajw, i64 %index2001 ; 2 uses
  %i.ajy = getelementptr i8, ptr %i.ajx, i64 16
  %wide.load2002 = load <2 x ptr>, ptr %i.ajx, align 8, !tbaa !45
  %wide.load2003 = load <2 x ptr>, ptr %i.ajy, align 8, !tbaa !45
  %i.ajz = getelementptr [8 x i8], ptr %i.ajq, i64 %index2001 ; 2 uses
  %i.aka = getelementptr i8, ptr %i.ajz, i64 16
  store <2 x ptr> %wide.load2002, ptr %i.ajz, align 8, !tbaa !45
  store <2 x ptr> %wide.load2003, ptr %i.aka, align 8, !tbaa !45
  %index.next2004 = add nuw i64 %index2001, 4     ; 2 uses
  %i.akb = icmp eq i64 %index.next2004, %n.vec1999
  br i1 %i.akb, label %middle.block2005, label %vector.body2000, !llvm.loop !224

middle.block2005:                                 ; preds = %vector.body2000
  %cmp.n2006 = icmp eq i64 %i.ajj, %n.vec1999
  br i1 %cmp.n2006, label %.loopexit.i374, label %scalar.ph1996.preheader

scalar.ph1996.preheader:                          ; preds = %vector.memcheck1994, %.lr.ph.i.i383, %middle.block2005
  %.027.i.i384.ph = phi i64 [ 0, %vector.memcheck1994 ], [ 0, %.lr.ph.i.i383 ], [ %n.vec1999, %middle.block2005 ] ; 3 uses
  %.02026.i.i385.ph = phi i64 [ %i.aiw, %vector.memcheck1994 ], [ %i.aiw, %.lr.ph.i.i383 ], [ %i.ajv, %middle.block2005 ] ; 2 uses
  %4 = sub i64 %.val.i.i372, %i.aiw
  %xtraiter2239 = and i64 %4, 3                   ; 2 uses
  %lcmp.mod2240.not = icmp eq i64 %xtraiter2239, 0
  br i1 %lcmp.mod2240.not, label %scalar.ph1996.prol.loopexit, label %scalar.ph1996.prol

scalar.ph1996.prol:                               ; preds = %scalar.ph1996.preheader, %scalar.ph1996.prol
  %.027.i.i384.prol = phi i64 [ %i.akg, %scalar.ph1996.prol ], [ %.027.i.i384.ph, %scalar.ph1996.preheader ] ; 2 uses
  %.02026.i.i385.prol = phi i64 [ %i.akf, %scalar.ph1996.prol ], [ %.02026.i.i385.ph, %scalar.ph1996.preheader ] ; 2 uses
  %prol.iter2241 = phi i64 [ %prol.iter2241.next, %scalar.ph1996.prol ], [ 0, %scalar.ph1996.preheader ]
  %i.akc = getelementptr [8 x i8], ptr %i.ajp, i64 %.02026.i.i385.prol
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !45
  %i.ake = getelementptr [8 x i8], ptr %i.ajq, i64 %.027.i.i384.prol
  store ptr %i.akd, ptr %i.ake, align 8, !tbaa !45
  %i.akf = add i64 %.02026.i.i385.prol, 1         ; 2 uses
  %i.akg = add nuw nsw i64 %.027.i.i384.prol, 1   ; 2 uses
  %prol.iter2241.next = add i64 %prol.iter2241, 1 ; 2 uses
  %prol.iter2241.cmp.not = icmp eq i64 %prol.iter2241.next, %xtraiter2239
  br i1 %prol.iter2241.cmp.not, label %scalar.ph1996.prol.loopexit, label %scalar.ph1996.prol, !llvm.loop !225

scalar.ph1996.prol.loopexit:                      ; preds = %scalar.ph1996.prol, %scalar.ph1996.preheader
  %.027.i.i384.unr = phi i64 [ %.027.i.i384.ph, %scalar.ph1996.preheader ], [ %i.akg, %scalar.ph1996.prol ]
  %.02026.i.i385.unr = phi i64 [ %.02026.i.i385.ph, %scalar.ph1996.preheader ], [ %i.akf, %scalar.ph1996.prol ]
  %i.akh = sub i64 %.027.i.i384.ph, %.val.i.i372
  %i.aki = add i64 %i.akh, %i.aiw
  %i.akj = icmp ugt i64 %i.aki, -4
  br i1 %i.akj, label %.loopexit.i374, label %scalar.ph1996

scalar.ph1996:                                    ; preds = %scalar.ph1996.prol.loopexit, %scalar.ph1996
  %.027.i.i384 = phi i64 [ %i.ald, %scalar.ph1996 ], [ %.027.i.i384.unr, %scalar.ph1996.prol.loopexit ] ; 5 uses
  %.02026.i.i385 = phi i64 [ %i.alc, %scalar.ph1996 ], [ %.02026.i.i385.unr, %scalar.ph1996.prol.loopexit ] ; 5 uses
  %i.akk = getelementptr [8 x i8], ptr %i.ajp, i64 %.02026.i.i385
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !45
  %i.akm = getelementptr [8 x i8], ptr %i.ajq, i64 %.027.i.i384
  store ptr %i.akl, ptr %i.akm, align 8, !tbaa !45
  %i.akn = getelementptr [8 x i8], ptr %i.ajp, i64 %.02026.i.i385
  %i.ako = getelementptr i8, ptr %i.akn, i64 8
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !45
  %i.akq = getelementptr [8 x i8], ptr %i.ajq, i64 %.027.i.i384
  %i.akr = getelementptr i8, ptr %i.akq, i64 8
  store ptr %i.akp, ptr %i.akr, align 8, !tbaa !45
  %i.aks = getelementptr [8 x i8], ptr %i.ajp, i64 %.02026.i.i385
  %i.akt = getelementptr i8, ptr %i.aks, i64 16
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !45
  %i.akv = getelementptr [8 x i8], ptr %i.ajq, i64 %.027.i.i384
  %i.akw = getelementptr i8, ptr %i.akv, i64 16
  store ptr %i.aku, ptr %i.akw, align 8, !tbaa !45
  %i.akx = getelementptr [8 x i8], ptr %i.ajp, i64 %.02026.i.i385
  %i.aky = getelementptr i8, ptr %i.akx, i64 24
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !45
  %i.ala = getelementptr [8 x i8], ptr %i.ajq, i64 %.027.i.i384
  %i.alb = getelementptr i8, ptr %i.ala, i64 24
  store ptr %i.akz, ptr %i.alb, align 8, !tbaa !45
  %i.alc = add i64 %.02026.i.i385, 4
  %i.ald = add nuw nsw i64 %.027.i.i384, 4        ; 2 uses
  %exitcond.not.i.i386.3 = icmp eq i64 %i.ald, %i.ajj
  br i1 %exitcond.not.i.i386.3, label %.loopexit.i374, label %scalar.ph1996, !llvm.loop !226

.loopexit.i374:                                   ; preds = %scalar.ph1996.prol.loopexit, %scalar.ph1996, %middle.block2005, %.preheader.i.i373
  store i64 %i.aiw, ptr %i.aji, align 8, !tbaa !44
  %i.ale = call ptr @PyFrozenSet_New(ptr noundef nonnull %i.ajk) #14 ; 2 uses
  %i.alf = load i32, ptr %i.ajk, align 8, !tbaa !51 ; 2 uses
  %.not.i.i375 = icmp sgt i32 %i.alf, -1
  br i1 %.not.i.i375, label %bb.jq, label %Py_DECREF.exit.i376

bb.jq:                                            ; preds = %.loopexit.i374
  %i.alg = add nsw i32 %i.alf, -1                 ; 2 uses
  store i32 %i.alg, ptr %i.ajk, align 8, !tbaa !51
  %i.alh = icmp eq i32 %i.alg, 0
  br i1 %i.alh, label %bb.jr, label %Py_DECREF.exit.i376

bb.jr:                                            ; preds = %bb.jq
  call void @_Py_Dealloc(ptr noundef nonnull %i.ajk) #14
  br label %Py_DECREF.exit.i376

Py_DECREF.exit.i376:                              ; preds = %bb.jr, %bb.jq, %.loopexit.i374
  %i.ali = icmp eq ptr %i.ale, null
  br i1 %i.ali, label %load_binint.exit.thread, label %bb.js

bb.js:                                            ; preds = %Py_DECREF.exit.i376
  %i.alj = load ptr, ptr %i.w, align 8, !tbaa !134 ; 3 uses
  %i.alk = getelementptr i8, ptr %i.alj, i64 16   ; 3 uses
  %.val9.i.i377 = load i64, ptr %i.alk, align 8, !tbaa !44 ; 5 uses
  %i.all = getelementptr i8, ptr %i.alj, i64 48   ; 2 uses
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !132
  %i.aln = icmp eq i64 %.val9.i.i377, %i.alm
  %i.alo = getelementptr i8, ptr %i.alj, i64 24   ; 2 uses
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !133 ; 2 uses
  br i1 %i.aln, label %bb.jt, label %load_frozenset.exit

bb.jt:                                            ; preds = %bb.js
  %i.alq = lshr i64 %.val9.i.i377, 3
  %i.alr = add nuw nsw i64 %i.alq, 6              ; 2 uses
  %i.als = sub i64 9223372036854775807, %.val9.i.i377
  %i.alt = icmp ugt i64 %i.alr, %i.als
  br i1 %i.alt, label %bb.jw, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.alu = add i64 %i.alr, %.val9.i.i377          ; 3 uses
  %i.alv = icmp ugt i64 %i.alu, 1152921504606846975
  br i1 %i.alv, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.alw = shl nuw nsw i64 %i.alu, 3
  %i.alx = call ptr @PyMem_Realloc(ptr noundef %i.alp, i64 noundef %i.alw) #14 ; 3 uses
  %i.aly = icmp eq ptr %i.alx, null
  br i1 %i.aly, label %bb.jw, label %Pdata_grow.exit.i.i381

Pdata_grow.exit.i.i381:                           ; preds = %bb.jv
  store ptr %i.alx, ptr %i.alo, align 8, !tbaa !133
  store i64 %i.alu, ptr %i.all, align 8, !tbaa !132
  %.val8.pre.i.i382 = load i64, ptr %i.alk, align 8, !tbaa !44
  br label %load_frozenset.exit

bb.jw:                                            ; preds = %bb.jv, %bb.ju, %bb.jt
  %i.alz = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_binint.exit.thread

load_frozenset.exit:                              ; preds = %bb.js, %Pdata_grow.exit.i.i381
  %.val8.i.i379 = phi i64 [ %.val8.pre.i.i382, %Pdata_grow.exit.i.i381 ], [ %.val9.i.i377, %bb.js ] ; 2 uses
  %i.ama = phi ptr [ %i.alx, %Pdata_grow.exit.i.i381 ], [ %i.alp, %bb.js ]
  %i.amb = getelementptr [8 x i8], ptr %i.ama, i64 %.val8.i.i379
  store ptr %i.ale, ptr %i.amb, align 8, !tbaa !45
  %i.amc = add i64 %.val8.i.i379, 1
  store i64 %i.amc, ptr %i.alk, align 8, !tbaa !44
  br label %.backedge.backedge

bb.jx:                                            ; preds = %bb.o
  %i.amd = load i64, ptr %i.v, align 8, !tbaa !234 ; 2 uses
  %i.ame = icmp slt i64 %i.amd, 1
  br i1 %i.ame, label %marker.exit.thread.i408, label %bb.jy

marker.exit.thread.i408:                          ; preds = %bb.jx
  %i.amf = load ptr, ptr %i.av, align 8, !tbaa !26
  call void @PyErr_SetString(ptr noundef %i.amf, ptr noundef nonnull @.str.108) #14
  br label %load_binint.exit.thread

bb.jy:                                            ; preds = %bb.jx
  %i.amg = load ptr, ptr %i.aw, align 8, !tbaa !140
  %i.amh = add nsw i64 %i.amd, -1                 ; 3 uses
  store i64 %i.amh, ptr %i.v, align 8, !tbaa !234
  %i.ami = getelementptr [8 x i8], ptr %i.amg, i64 %i.amh ; 2 uses
  %i.amj = load i64, ptr %i.ami, align 8, !tbaa !65 ; 4 uses
  %i.amk = icmp ne i64 %i.amh, 0                  ; 4 uses
  %i.aml = zext i1 %i.amk to i32
  %i.amm = load ptr, ptr %i.w, align 8, !tbaa !134 ; 4 uses
  %i.amn = getelementptr i8, ptr %i.amm, i64 32
  store i32 %i.aml, ptr %i.amn, align 8, !tbaa !130
  br i1 %i.amk, label %bb.jz, label %marker.exit.i389

bb.jz:                                            ; preds = %bb.jy
  %i.amo = getelementptr i8, ptr %i.ami, i64 -8
  %i.amp = load i64, ptr %i.amo, align 8, !tbaa !65
  br label %marker.exit.i389

marker.exit.i389:                                 ; preds = %bb.jz, %bb.jy
  %i.amq = phi i64 [ %i.amp, %bb.jz ], [ 0, %bb.jy ] ; 2 uses
  %i.amr = getelementptr i8, ptr %i.amm, i64 40
  store i64 %i.amq, ptr %i.amr, align 8, !tbaa !131
  %i.ams = icmp slt i64 %i.amj, 0
  br i1 %i.ams, label %load_binint.exit.thread, label %bb.ka

bb.ka:                                            ; preds = %marker.exit.i389
  %i.amt = getelementptr i8, ptr %i.amm, i64 16   ; 2 uses
  %.val.i390 = load i64, ptr %i.amt, align 8, !tbaa !44 ; 2 uses
  %i.amu = sub i64 %.val.i390, %i.amj
  %i.amv = icmp slt i64 %i.amu, 1
  br i1 %i.amv, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %.val27.i = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.amw = select i1 %i.amk, ptr @.str.102, ptr @.str.103
  call void @PyErr_SetString(ptr noundef %.val27.i, ptr noundef nonnull %i.amw) #14
  br label %load_binint.exit.thread

bb.kc:                                            ; preds = %bb.ka
  %i.amx = add nuw i64 %i.amj, 1                  ; 7 uses
  %i.amy = icmp slt i64 %i.amx, %i.amq
  br i1 %i.amy, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %.val24.i.i407 = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.amz = select i1 %i.amk, ptr @.str.102, ptr @.str.103
  call void @PyErr_SetString(ptr noundef %.val24.i.i407, ptr noundef nonnull %i.amz) #14
  br label %load_binint.exit.thread

bb.ke:                                            ; preds = %bb.kc
  %i.ana = sub i64 %.val.i390, %i.amx             ; 6 uses
  %i.anb = call ptr @PyTuple_New(i64 noundef %i.ana) #14 ; 8 uses
  %i.anc = ptrtoaddr ptr %i.anb to i64
  %i.and = icmp eq ptr %i.anb, null
  br i1 %i.and, label %load_binint.exit.thread, label %.preheader.i.i391

.preheader.i.i391:                                ; preds = %bb.ke
  %i.ane = icmp sgt i64 %i.ana, 0
  br i1 %i.ane, label %.lr.ph.i.i403, label %.loopexit.i392

.lr.ph.i.i403:                                    ; preds = %.preheader.i.i391
  %i.anf = getelementptr i8, ptr %i.amm, i64 24
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !133 ; 3 uses
  %i.anh = getelementptr i8, ptr %i.anb, i64 32   ; 2 uses
  %min.iters.check2012 = icmp ult i64 %i.ana, 6
  br i1 %min.iters.check2012, label %scalar.ph2011.preheader, label %vector.memcheck2009
end_hunk_1
begin_hunk_2_@load:bb.a
vector.body2015:                                  ; preds = %vector.body2015, %vector.ph2013
  %index2016 = phi i64 [ 0, %vector.ph2013 ], [ %index.next2019, %vector.body2015 ] ; 3 uses
  %i.anp = getelementptr [8 x i8], ptr %i.ano, i64 %index2016 ; 2 uses
  %i.anq = getelementptr i8, ptr %i.anp, i64 16
  %wide.load2017 = load <2 x ptr>, ptr %i.anp, align 8, !tbaa !45
  %wide.load2018 = load <2 x ptr>, ptr %i.anq, align 8, !tbaa !45
  %i.anr = getelementptr [8 x i8], ptr %i.anh, i64 %index2016 ; 2 uses
  %i.ans = getelementptr i8, ptr %i.anr, i64 16
  store <2 x ptr> %wide.load2017, ptr %i.anr, align 8, !tbaa !45
  store <2 x ptr> %wide.load2018, ptr %i.ans, align 8, !tbaa !45
  %index.next2019 = add nuw i64 %index2016, 4     ; 2 uses
  %i.ant = icmp eq i64 %index.next2019, %n.vec2014
  br i1 %i.ant, label %middle.block2020, label %vector.body2015, !llvm.loop !227

middle.block2020:                                 ; preds = %vector.body2015
  %cmp.n2021 = icmp eq i64 %i.ana, %n.vec2014
  br i1 %cmp.n2021, label %.loopexit.i392, label %scalar.ph2011.preheader

scalar.ph2011.preheader:                          ; preds = %vector.memcheck2009, %.lr.ph.i.i403, %middle.block2020
  %.027.i.i404.ph = phi i64 [ 0, %vector.memcheck2009 ], [ 0, %.lr.ph.i.i403 ], [ %n.vec2014, %middle.block2020 ]
  %.02026.i.i405.ph = phi i64 [ %i.amx, %vector.memcheck2009 ], [ %i.amx, %.lr.ph.i.i403 ], [ %i.ann, %middle.block2020 ]
  br label %scalar.ph2011

scalar.ph2011:                                    ; preds = %scalar.ph2011.preheader, %scalar.ph2011
  %.027.i.i404 = phi i64 [ %i.any, %scalar.ph2011 ], [ %.027.i.i404.ph, %scalar.ph2011.preheader ] ; 2 uses
  %.02026.i.i405 = phi i64 [ %i.anx, %scalar.ph2011 ], [ %.02026.i.i405.ph, %scalar.ph2011.preheader ] ; 2 uses
  %i.anu = getelementptr [8 x i8], ptr %i.ang, i64 %.02026.i.i405
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !45
  %i.anw = getelementptr [8 x i8], ptr %i.anh, i64 %.027.i.i404
  store ptr %i.anv, ptr %i.anw, align 8, !tbaa !45
  %i.anx = add i64 %.02026.i.i405, 1
  %i.any = add nuw nsw i64 %.027.i.i404, 1        ; 2 uses
  %exitcond.not.i.i406 = icmp eq i64 %i.any, %i.ana
  br i1 %exitcond.not.i.i406, label %.loopexit.i392, label %scalar.ph2011, !llvm.loop !228

.loopexit.i392:                                   ; preds = %scalar.ph2011, %middle.block2020, %.preheader.i.i391
  store i64 %i.amx, ptr %i.amt, align 8, !tbaa !44
  %i.anz = load ptr, ptr %i.w, align 8, !tbaa !134 ; 4 uses
  %i.aoa = getelementptr i8, ptr %i.anz, i64 16   ; 2 uses
  %.val10.i.i = load i64, ptr %i.aoa, align 8, !tbaa !44 ; 2 uses
  %i.aob = getelementptr i8, ptr %i.anz, i64 40
  %i.aoc = load i64, ptr %i.aob, align 8, !tbaa !131
  %.not.i30.i = icmp sgt i64 %.val10.i.i, %i.aoc
  br i1 %.not.i30.i, label %Pdata_pop.exit.i, label %Pdata_pop.exit.thread.i

Pdata_pop.exit.thread.i:                          ; preds = %.loopexit.i392
  %.val11.i.i = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.aod = getelementptr i8, ptr %i.anz, i64 32
  %.val12.i.i = load i32, ptr %i.aod, align 8, !tbaa !130
  %.not.i.i31.i = icmp eq i32 %.val12.i.i, 0
  %i.aoe = select i1 %.not.i.i31.i, ptr @.str.103, ptr @.str.102
  call void @PyErr_SetString(ptr noundef %.val11.i.i, ptr noundef nonnull %i.aoe) #14
  br label %Py_DECREF.exit25.i

Pdata_pop.exit.i:                                 ; preds = %.loopexit.i392
  %i.aof = add nsw i64 %.val10.i.i, -1            ; 2 uses
  store i64 %i.aof, ptr %i.aoa, align 8, !tbaa !44
  %i.aog = getelementptr i8, ptr %i.anz, i64 24
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !133
  %i.aoi = getelementptr [8 x i8], ptr %i.aoh, i64 %i.aof
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !45 ; 9 uses
  %.not.i401 = icmp eq ptr %i.aoj, null
  br i1 %.not.i401, label %Py_DECREF.exit25.i, label %bb.kf

bb.kf:                                            ; preds = %Pdata_pop.exit.i
  %i.aok = getelementptr i8, ptr %i.anb, i64 16
  %.val.i33.i = load i64, ptr %i.aok, align 8, !tbaa !44
  %.not.i34.i = icmp eq i64 %.val.i33.i, 0
  br i1 %.not.i34.i, label %bb.kg, label %bb.kk

bb.kg:                                            ; preds = %bb.kf
  %i.aol = getelementptr i8, ptr %i.aoj, i64 8
  %.val14.i.i = load ptr, ptr %i.aol, align 8, !tbaa !57
  %i.aom = getelementptr i8, ptr %.val14.i.i, i64 168
  %.val14.val.i.i = load i64, ptr %i.aom, align 8, !tbaa !64
  %i.aon = and i64 %.val14.val.i.i, 2147483648
  %.not17.i.i = icmp eq i64 %i.aon, 0
  br i1 %.not17.i.i, label %bb.kk, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.aoo = call i32 @PyObject_HasAttrWithError(ptr noundef nonnull %i.aoj, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65312)) #14 ; 2 uses
  %i.aop = icmp slt i32 %i.aoo, 0
  br i1 %i.aop, label %instantiate.exit.i, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %.not13.i.i = icmp eq i32 %i.aoo, 0
  br i1 %.not13.i.i, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  store ptr %i.aoj, ptr %i.n, align 16, !tbaa !45
  store ptr %i.aoj, ptr %i.ba, align 8, !tbaa !45
  %i.aoq = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68016), ptr noundef nonnull %i.n, i64 noundef -9223372036854775806, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  br label %instantiate.exit.i

bb.kk:                                            ; preds = %bb.ki, %bb.kg, %bb.kf
  %i.aor = call ptr @PyObject_CallObject(ptr noundef nonnull %i.aoj, ptr noundef nonnull %i.anb) #14
  br label %instantiate.exit.i

instantiate.exit.i:                               ; preds = %bb.kk, %bb.kj, %bb.kh
  %.1.i.i = phi ptr [ %i.aor, %bb.kk ], [ null, %bb.kh ], [ %i.aoq, %bb.kj ] ; 3 uses
  %i.aos = load i32, ptr %i.aoj, align 8, !tbaa !51 ; 2 uses
  %.not.i24.i402 = icmp sgt i32 %i.aos, -1
  br i1 %.not.i24.i402, label %bb.kl, label %Py_DECREF.exit25.i

bb.kl:                                            ; preds = %instantiate.exit.i
  %i.aot = add nsw i32 %i.aos, -1                 ; 2 uses
  store i32 %i.aot, ptr %i.aoj, align 8, !tbaa !51
  %i.aou = icmp eq i32 %i.aot, 0
  br i1 %i.aou, label %bb.km, label %Py_DECREF.exit25.i

bb.km:                                            ; preds = %bb.kl
  call void @_Py_Dealloc(ptr noundef nonnull %i.aoj) #14
  br label %Py_DECREF.exit25.i

Py_DECREF.exit25.i:                               ; preds = %bb.km, %bb.kl, %instantiate.exit.i, %Pdata_pop.exit.i, %Pdata_pop.exit.thread.i
  %.0.i393 = phi ptr [ null, %Pdata_pop.exit.thread.i ], [ null, %Pdata_pop.exit.i ], [ %.1.i.i, %instantiate.exit.i ], [ %.1.i.i, %bb.kl ], [ %.1.i.i, %bb.km ] ; 2 uses
  %i.aov = load i32, ptr %i.anb, align 8, !tbaa !51 ; 2 uses
  %.not.i.i394 = icmp sgt i32 %i.aov, -1
  br i1 %.not.i.i394, label %bb.kn, label %Py_DECREF.exit.i395

bb.kn:                                            ; preds = %Py_DECREF.exit25.i
  %i.aow = add nsw i32 %i.aov, -1                 ; 2 uses
  store i32 %i.aow, ptr %i.anb, align 8, !tbaa !51
  %i.aox = icmp eq i32 %i.aow, 0
  br i1 %i.aox, label %bb.ko, label %Py_DECREF.exit.i395

bb.ko:                                            ; preds = %bb.kn
  call void @_Py_Dealloc(ptr noundef nonnull %i.anb) #14
  br label %Py_DECREF.exit.i395

Py_DECREF.exit.i395:                              ; preds = %bb.ko, %bb.kn, %Py_DECREF.exit25.i
  %i.aoy = icmp eq ptr %.0.i393, null
  br i1 %i.aoy, label %load_binint.exit.thread, label %bb.kp

bb.kp:                                            ; preds = %Py_DECREF.exit.i395
  %i.aoz = load ptr, ptr %i.w, align 8, !tbaa !134 ; 3 uses
  %i.apa = getelementptr i8, ptr %i.aoz, i64 16   ; 3 uses
  %.val9.i.i396 = load i64, ptr %i.apa, align 8, !tbaa !44 ; 5 uses
  %i.apb = getelementptr i8, ptr %i.aoz, i64 48   ; 2 uses
  %i.apc = load i64, ptr %i.apb, align 8, !tbaa !132
  %i.apd = icmp eq i64 %.val9.i.i396, %i.apc
  %i.ape = getelementptr i8, ptr %i.aoz, i64 24   ; 2 uses
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !133 ; 2 uses
  br i1 %i.apd, label %bb.kq, label %load_obj.exit

bb.kq:                                            ; preds = %bb.kp
  %i.apg = lshr i64 %.val9.i.i396, 3
  %i.aph = add nuw nsw i64 %i.apg, 6              ; 2 uses
  %i.api = sub i64 9223372036854775807, %.val9.i.i396
  %i.apj = icmp ugt i64 %i.aph, %i.api
  br i1 %i.apj, label %bb.kt, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.apk = add i64 %i.aph, %.val9.i.i396          ; 3 uses
  %i.apl = icmp ugt i64 %i.apk, 1152921504606846975
  br i1 %i.apl, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.apm = shl nuw nsw i64 %i.apk, 3
  %i.apn = call ptr @PyMem_Realloc(ptr noundef %i.apf, i64 noundef %i.apm) #14 ; 3 uses
  %i.apo = icmp eq ptr %i.apn, null
  br i1 %i.apo, label %bb.kt, label %Pdata_grow.exit.i.i399

Pdata_grow.exit.i.i399:                           ; preds = %bb.ks
  store ptr %i.apn, ptr %i.ape, align 8, !tbaa !133
  store i64 %i.apk, ptr %i.apb, align 8, !tbaa !132
  %.val8.pre.i.i400 = load i64, ptr %i.apa, align 8, !tbaa !44
  br label %load_obj.exit

bb.kt:                                            ; preds = %bb.ks, %bb.kr, %bb.kq
  %i.app = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_binint.exit.thread

load_obj.exit:                                    ; preds = %bb.kp, %Pdata_grow.exit.i.i399
  %.val8.i.i398 = phi i64 [ %.val8.pre.i.i400, %Pdata_grow.exit.i.i399 ], [ %.val9.i.i396, %bb.kp ] ; 2 uses
  %i.apq = phi ptr [ %i.apn, %Pdata_grow.exit.i.i399 ], [ %i.apf, %bb.kp ]
  %i.apr = getelementptr [8 x i8], ptr %i.apq, i64 %.val8.i.i398
  store ptr %.0.i393, ptr %i.apr, align 8, !tbaa !45
  %i.aps = add i64 %.val8.i.i398, 1
  store i64 %i.aps, ptr %i.apa, align 8, !tbaa !44
  br label %.backedge.backedge

bb.ku:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  %i.apt = load i64, ptr %i.v, align 8, !tbaa !234 ; 2 uses
  %i.apu = icmp slt i64 %i.apt, 1
  br i1 %i.apu, label %marker.exit.thread.i436, label %bb.kv

marker.exit.thread.i436:                          ; preds = %bb.ku
  %i.apv = load ptr, ptr %i.av, align 8, !tbaa !26
  call void @PyErr_SetString(ptr noundef %i.apv, ptr noundef nonnull @.str.108) #14
  br label %load_inst.exit.thread

bb.kv:                                            ; preds = %bb.ku
  %i.apw = load ptr, ptr %i.aw, align 8, !tbaa !140
  %i.apx = add nsw i64 %i.apt, -1                 ; 3 uses
  store i64 %i.apx, ptr %i.v, align 8, !tbaa !234
  %i.apy = getelementptr [8 x i8], ptr %i.apw, i64 %i.apx ; 2 uses
  %i.apz = load i64, ptr %i.apy, align 8, !tbaa !65 ; 11 uses
  %i.aqa = icmp ne i64 %i.apx, 0                  ; 2 uses
  %i.aqb = zext i1 %i.aqa to i32
  %i.aqc = load ptr, ptr %i.w, align 8, !tbaa !134 ; 2 uses
  %i.aqd = getelementptr i8, ptr %i.aqc, i64 32
  store i32 %i.aqb, ptr %i.aqd, align 8, !tbaa !130
  br i1 %i.aqa, label %bb.kw, label %marker.exit.i409

bb.kw:                                            ; preds = %bb.kv
  %i.aqe = getelementptr i8, ptr %i.apy, i64 -8
  %i.aqf = load i64, ptr %i.aqe, align 8, !tbaa !65
  br label %marker.exit.i409

marker.exit.i409:                                 ; preds = %bb.kw, %bb.kv
  %i.aqg = phi i64 [ %i.aqf, %bb.kw ], [ 0, %bb.kv ]
  %i.aqh = getelementptr i8, ptr %i.aqc, i64 40
  store i64 %i.aqg, ptr %i.aqh, align 8, !tbaa !131
  %i.aqi = icmp slt i64 %i.apz, 0
  br i1 %i.aqi, label %load_inst.exit.thread, label %bb.kx

bb.kx:                                            ; preds = %marker.exit.i409
  %i.aqj = call fastcc i64 @_Unpickler_Readline(ptr noundef readonly %0, ptr noundef nonnull %1, ptr noundef %i.m) ; 3 uses
  %i.aqk = icmp slt i64 %i.aqj, 0
  br i1 %i.aqk, label %load_inst.exit.thread, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.aql = icmp samesign ult i64 %i.aqj, 2
  br i1 %i.aql, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %.val52.i = load ptr, ptr %i.av, align 8, !tbaa !26
  call void @PyErr_SetString(ptr noundef %.val52.i, ptr noundef nonnull @.str.92) #14
  br label %load_inst.exit.thread

bb.la:                                            ; preds = %bb.ky
  %i.aqm = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.aqn = add nsw i64 %i.aqj, -1
  %i.aqo = call ptr @PyUnicode_DecodeASCII(ptr noundef %i.aqm, i64 noundef %i.aqn, ptr noundef nonnull @.str.28) #14 ; 8 uses
  %i.aqp = icmp eq ptr %i.aqo, null
  br i1 %i.aqp, label %load_inst.exit.thread, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.aqq = call fastcc i64 @_Unpickler_Readline(ptr noundef readonly %0, ptr noundef nonnull %1, ptr noundef %i.m) ; 3 uses
  %i.aqr = icmp sgt i64 %i.aqq, -1
  br i1 %i.aqr, label %bb.lc, label %Py_DECREF.exit45.i

bb.lc:                                            ; preds = %bb.lb
  %i.aqs = icmp samesign ult i64 %i.aqq, 2
  br i1 %i.aqs, label %bb.ld, label %bb.lg

bb.ld:                                            ; preds = %bb.lc
  %i.aqt = load i32, ptr %i.aqo, align 8, !tbaa !51 ; 2 uses
  %.not.i46.i = icmp sgt i32 %i.aqt, -1
  br i1 %.not.i46.i, label %bb.le, label %Py_DECREF.exit47.i

bb.le:                                            ; preds = %bb.ld
  %i.aqu = add nsw i32 %i.aqt, -1                 ; 2 uses
  store i32 %i.aqu, ptr %i.aqo, align 8, !tbaa !51
  %i.aqv = icmp eq i32 %i.aqu, 0
  br i1 %i.aqv, label %bb.lf, label %Py_DECREF.exit47.i

bb.lf:                                            ; preds = %bb.le
  call void @_Py_Dealloc(ptr noundef nonnull %i.aqo) #14
  br label %Py_DECREF.exit47.i

Py_DECREF.exit47.i:                               ; preds = %bb.lf, %bb.le, %bb.ld
  %.val.i435 = load ptr, ptr %i.av, align 8, !tbaa !26
  call void @PyErr_SetString(ptr noundef %.val.i435, ptr noundef nonnull @.str.92) #14
  br label %load_inst.exit.thread

bb.lg:                                            ; preds = %bb.lc
  %i.aqw = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.aqx = add nsw i64 %i.aqq, -1
  %i.aqy = call ptr @PyUnicode_DecodeASCII(ptr noundef %i.aqw, i64 noundef %i.aqx, ptr noundef nonnull @.str.28) #14 ; 5 uses
  %.not.i434 = icmp eq ptr %i.aqy, null
  br i1 %.not.i434, label %Py_DECREF.exit45.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.aqz = call ptr (ptr, ptr, ...) @PyObject_CallMethodObjArgs(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 84296), ptr noundef nonnull %i.aqo, ptr noundef nonnull %i.aqy, ptr noundef null) #14 ; 3 uses
  %i.ara = load i32, ptr %i.aqy, align 8, !tbaa !51 ; 2 uses
  %.not.i44.i = icmp sgt i32 %i.ara, -1
  br i1 %.not.i44.i, label %bb.li, label %Py_DECREF.exit45.i

bb.li:                                            ; preds = %bb.lh
  %i.arb = add nsw i32 %i.ara, -1                 ; 2 uses
  store i32 %i.arb, ptr %i.aqy, align 8, !tbaa !51
  %i.arc = icmp eq i32 %i.arb, 0
  br i1 %i.arc, label %bb.lj, label %Py_DECREF.exit45.i

bb.lj:                                            ; preds = %bb.li
  call void @_Py_Dealloc(ptr noundef nonnull %i.aqy) #14
  br label %Py_DECREF.exit45.i

Py_DECREF.exit45.i:                               ; preds = %bb.lj, %bb.li, %bb.lh, %bb.lg, %bb.lb
  %.031.i = phi ptr [ null, %bb.lb ], [ null, %bb.lg ], [ %i.aqz, %bb.lh ], [ %i.aqz, %bb.li ], [ %i.aqz, %bb.lj ] ; 9 uses
  %i.ard = load i32, ptr %i.aqo, align 8, !tbaa !51 ; 2 uses
  %.not.i42.i = icmp sgt i32 %i.ard, -1
  br i1 %.not.i42.i, label %bb.lk, label %Py_DECREF.exit43.i

bb.lk:                                            ; preds = %Py_DECREF.exit45.i
  %i.are = add nsw i32 %i.ard, -1                 ; 2 uses
  store i32 %i.are, ptr %i.aqo, align 8, !tbaa !51
  %i.arf = icmp eq i32 %i.are, 0
  br i1 %i.arf, label %bb.ll, label %Py_DECREF.exit43.i

bb.ll:                                            ; preds = %bb.lk
  call void @_Py_Dealloc(ptr noundef nonnull %i.aqo) #14
  br label %Py_DECREF.exit43.i

Py_DECREF.exit43.i:                               ; preds = %bb.ll, %bb.lk, %Py_DECREF.exit45.i
  %i.arg = icmp eq ptr %.031.i, null
  br i1 %i.arg, label %load_inst.exit.thread, label %bb.lm

bb.lm:                                            ; preds = %Py_DECREF.exit43.i
  %i.arh = load ptr, ptr %i.w, align 8, !tbaa !134 ; 4 uses
  %i.ari = getelementptr i8, ptr %i.arh, i64 40
  %i.arj = load i64, ptr %i.ari, align 8, !tbaa !131
  %i.ark = icmp slt i64 %i.apz, %i.arj
  br i1 %i.ark, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %.val24.i.i431 = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.arl = getelementptr i8, ptr %i.arh, i64 32
  %.val25.i.i432 = load i32, ptr %i.arl, align 8, !tbaa !130
  %.not.i.i.i433 = icmp eq i32 %.val25.i.i432, 0
  %i.arm = select i1 %.not.i.i.i433, ptr @.str.103, ptr @.str.102
  call void @PyErr_SetString(ptr noundef %.val24.i.i431, ptr noundef nonnull %i.arm) #14
  br label %Py_DECREF.exit41.i

bb.lo:                                            ; preds = %bb.lm
  %i.arn = getelementptr i8, ptr %i.arh, i64 16   ; 2 uses
  %.val.i.i410 = load i64, ptr %i.arn, align 8, !tbaa !44 ; 3 uses
  %i.aro = sub i64 %.val.i.i410, %i.apz           ; 6 uses
  %i.arp = call ptr @PyTuple_New(i64 noundef %i.aro) #14 ; 8 uses
  %i.arq = ptrtoaddr ptr %i.arp to i64
  %i.arr = icmp eq ptr %i.arp, null
  br i1 %i.arr, label %Py_DECREF.exit41.i, label %.preheader.i.i411

.preheader.i.i411:                                ; preds = %bb.lo
  %i.ars = icmp sgt i64 %i.aro, 0
  br i1 %i.ars, label %.lr.ph.i.i427, label %.loopexit.i412

.lr.ph.i.i427:                                    ; preds = %.preheader.i.i411
  %i.art = getelementptr i8, ptr %i.arh, i64 24
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !133 ; 7 uses
  %i.arv = getelementptr i8, ptr %i.arp, i64 32   ; 6 uses
  %min.iters.check2027 = icmp ult i64 %i.aro, 6
  br i1 %min.iters.check2027, label %scalar.ph2026.preheader, label %vector.memcheck2024

vector.memcheck2024:                              ; preds = %.lr.ph.i.i427
  %i.arw = ptrtoaddr ptr %i.aru to i64
  %i.arx = shl i64 %i.apz, 3
  %i.ary = add i64 %i.arx, %i.arw
  %i.arz = sub i64 %i.arq, %i.ary
  %diff.check2025 = icmp ugt i64 %i.arz, -32
  br i1 %diff.check2025, label %scalar.ph2026.preheader, label %vector.ph2028

vector.ph2028:                                    ; preds = %vector.memcheck2024
  %n.vec2029 = and i64 %i.aro, 9223372036854775804 ; 4 uses
  %i.asa = add nuw i64 %i.apz, %n.vec2029
  %i.asb = getelementptr [8 x i8], ptr %i.aru, i64 %i.apz
  br label %vector.body2030

vector.body2030:                                  ; preds = %vector.body2030, %vector.ph2028
  %index2031 = phi i64 [ 0, %vector.ph2028 ], [ %index.next2034, %vector.body2030 ] ; 3 uses
  %i.asc = getelementptr [8 x i8], ptr %i.asb, i64 %index2031 ; 2 uses
  %i.asd = getelementptr i8, ptr %i.asc, i64 16
  %wide.load2032 = load <2 x ptr>, ptr %i.asc, align 8, !tbaa !45
  %wide.load2033 = load <2 x ptr>, ptr %i.asd, align 8, !tbaa !45
  %i.ase = getelementptr [8 x i8], ptr %i.arv, i64 %index2031 ; 2 uses
  %i.asf = getelementptr i8, ptr %i.ase, i64 16
  store <2 x ptr> %wide.load2032, ptr %i.ase, align 8, !tbaa !45
  store <2 x ptr> %wide.load2033, ptr %i.asf, align 8, !tbaa !45
  %index.next2034 = add nuw i64 %index2031, 4     ; 2 uses
  %i.asg = icmp eq i64 %index.next2034, %n.vec2029
  br i1 %i.asg, label %middle.block2035, label %vector.body2030, !llvm.loop !229

middle.block2035:                                 ; preds = %vector.body2030
  %cmp.n2036 = icmp eq i64 %i.aro, %n.vec2029
  br i1 %cmp.n2036, label %.loopexit.i412, label %scalar.ph2026.preheader

scalar.ph2026.preheader:                          ; preds = %vector.memcheck2024, %.lr.ph.i.i427, %middle.block2035
  %.027.i.i428.ph = phi i64 [ 0, %vector.memcheck2024 ], [ 0, %.lr.ph.i.i427 ], [ %n.vec2029, %middle.block2035 ] ; 3 uses
  %.02026.i.i429.ph = phi i64 [ %i.apz, %vector.memcheck2024 ], [ %i.apz, %.lr.ph.i.i427 ], [ %i.asa, %middle.block2035 ] ; 2 uses
  %5 = sub i64 %.val.i.i410, %i.apz
  %xtraiter = and i64 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph2026.prol.loopexit, label %scalar.ph2026.prol

scalar.ph2026.prol:                               ; preds = %scalar.ph2026.preheader, %scalar.ph2026.prol
  %.027.i.i428.prol = phi i64 [ %i.asl, %scalar.ph2026.prol ], [ %.027.i.i428.ph, %scalar.ph2026.preheader ] ; 2 uses
  %.02026.i.i429.prol = phi i64 [ %i.ask, %scalar.ph2026.prol ], [ %.02026.i.i429.ph, %scalar.ph2026.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph2026.prol ], [ 0, %scalar.ph2026.preheader ]
  %i.ash = getelementptr [8 x i8], ptr %i.aru, i64 %.02026.i.i429.prol
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !45
  %i.asj = getelementptr [8 x i8], ptr %i.arv, i64 %.027.i.i428.prol
  store ptr %i.asi, ptr %i.asj, align 8, !tbaa !45
  %i.ask = add i64 %.02026.i.i429.prol, 1         ; 2 uses
  %i.asl = add nuw nsw i64 %.027.i.i428.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph2026.prol.loopexit, label %scalar.ph2026.prol, !llvm.loop !230

scalar.ph2026.prol.loopexit:                      ; preds = %scalar.ph2026.prol, %scalar.ph2026.preheader
  %.027.i.i428.unr = phi i64 [ %.027.i.i428.ph, %scalar.ph2026.preheader ], [ %i.asl, %scalar.ph2026.prol ]
  %.02026.i.i429.unr = phi i64 [ %.02026.i.i429.ph, %scalar.ph2026.preheader ], [ %i.ask, %scalar.ph2026.prol ]
  %i.asm = sub i64 %.027.i.i428.ph, %.val.i.i410
  %i.asn = add i64 %i.asm, %i.apz
  %i.aso = icmp ugt i64 %i.asn, -4
  br i1 %i.aso, label %.loopexit.i412, label %scalar.ph2026

scalar.ph2026:                                    ; preds = %scalar.ph2026.prol.loopexit, %scalar.ph2026
  %.027.i.i428 = phi i64 [ %i.ati, %scalar.ph2026 ], [ %.027.i.i428.unr, %scalar.ph2026.prol.loopexit ] ; 5 uses
  %.02026.i.i429 = phi i64 [ %i.ath, %scalar.ph2026 ], [ %.02026.i.i429.unr, %scalar.ph2026.prol.loopexit ] ; 5 uses
  %i.asp = getelementptr [8 x i8], ptr %i.aru, i64 %.02026.i.i429
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !45
  %i.asr = getelementptr [8 x i8], ptr %i.arv, i64 %.027.i.i428
  store ptr %i.asq, ptr %i.asr, align 8, !tbaa !45
  %i.ass = getelementptr [8 x i8], ptr %i.aru, i64 %.02026.i.i429
  %i.ast = getelementptr i8, ptr %i.ass, i64 8
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !45
  %i.asv = getelementptr [8 x i8], ptr %i.arv, i64 %.027.i.i428
  %i.asw = getelementptr i8, ptr %i.asv, i64 8
  store ptr %i.asu, ptr %i.asw, align 8, !tbaa !45
  %i.asx = getelementptr [8 x i8], ptr %i.aru, i64 %.02026.i.i429
  %i.asy = getelementptr i8, ptr %i.asx, i64 16
  %i.asz = load ptr, ptr %i.asy, align 8, !tbaa !45
  %i.ata = getelementptr [8 x i8], ptr %i.arv, i64 %.027.i.i428
  %i.atb = getelementptr i8, ptr %i.ata, i64 16
  store ptr %i.asz, ptr %i.atb, align 8, !tbaa !45
  %i.atc = getelementptr [8 x i8], ptr %i.aru, i64 %.02026.i.i429
  %i.atd = getelementptr i8, ptr %i.atc, i64 24
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !45
  %i.atf = getelementptr [8 x i8], ptr %i.arv, i64 %.027.i.i428
  %i.atg = getelementptr i8, ptr %i.atf, i64 24
  store ptr %i.ate, ptr %i.atg, align 8, !tbaa !45
  %i.ath = add i64 %.02026.i.i429, 4
  %i.ati = add nuw nsw i64 %.027.i.i428, 4        ; 2 uses
  %exitcond.not.i.i430.3 = icmp eq i64 %i.ati, %i.aro
  br i1 %exitcond.not.i.i430.3, label %.loopexit.i412, label %scalar.ph2026, !llvm.loop !231

.loopexit.i412:                                   ; preds = %scalar.ph2026.prol.loopexit, %scalar.ph2026, %middle.block2035, %.preheader.i.i411
  store i64 %i.apz, ptr %i.arn, align 8, !tbaa !44
  %i.atj = getelementptr i8, ptr %i.arp, i64 16
  %.val.i53.i = load i64, ptr %i.atj, align 8, !tbaa !44
  %.not.i54.i = icmp eq i64 %.val.i53.i, 0
  br i1 %.not.i54.i, label %bb.lp, label %bb.lt

bb.lp:                                            ; preds = %.loopexit.i412
  %i.atk = getelementptr i8, ptr %.031.i, i64 8
  %.val14.i.i423 = load ptr, ptr %i.atk, align 8, !tbaa !57
  %i.atl = getelementptr i8, ptr %.val14.i.i423, i64 168
  %.val14.val.i.i424 = load i64, ptr %i.atl, align 8, !tbaa !64
  %i.atm = and i64 %.val14.val.i.i424, 2147483648
  %.not17.i.i425 = icmp eq i64 %i.atm, 0
  br i1 %.not17.i.i425, label %bb.lt, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.atn = call i32 @PyObject_HasAttrWithError(ptr noundef nonnull %.031.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65312)) #14 ; 2 uses
  %i.ato = icmp slt i32 %i.atn, 0
  br i1 %i.ato, label %instantiate.exit.i413, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %.not13.i.i426 = icmp eq i32 %i.atn, 0
  br i1 %.not13.i.i426, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store ptr %.031.i, ptr %i.l, align 16, !tbaa !45
  store ptr %.031.i, ptr %i.az, align 8, !tbaa !45
  %i.atp = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68016), ptr noundef nonnull %i.l, i64 noundef -9223372036854775806, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  br label %instantiate.exit.i413

bb.lt:                                            ; preds = %bb.lr, %bb.lp, %.loopexit.i412
  %i.atq = call ptr @PyObject_CallObject(ptr noundef nonnull %.031.i, ptr noundef nonnull %i.arp) #14
  br label %instantiate.exit.i413

instantiate.exit.i413:                            ; preds = %bb.lt, %bb.ls, %bb.lq
  %.1.i.i414 = phi ptr [ %i.atq, %bb.lt ], [ null, %bb.lq ], [ %i.atp, %bb.ls ] ; 3 uses
  %i.atr = load i32, ptr %i.arp, align 8, !tbaa !51 ; 2 uses
  %.not.i40.i = icmp sgt i32 %i.atr, -1
  br i1 %.not.i40.i, label %bb.lu, label %Py_DECREF.exit41.i

bb.lu:                                            ; preds = %instantiate.exit.i413
  %i.ats = add nsw i32 %i.atr, -1                 ; 2 uses
  store i32 %i.ats, ptr %i.arp, align 8, !tbaa !51
  %i.att = icmp eq i32 %i.ats, 0
  br i1 %i.att, label %bb.lv, label %Py_DECREF.exit41.i

bb.lv:                                            ; preds = %bb.lu
  call void @_Py_Dealloc(ptr noundef nonnull %i.arp) #14
  br label %Py_DECREF.exit41.i

Py_DECREF.exit41.i:                               ; preds = %bb.lv, %bb.lu, %instantiate.exit.i413, %bb.lo, %bb.ln
  %.0.i415 = phi ptr [ %.1.i.i414, %bb.lv ], [ %.1.i.i414, %instantiate.exit.i413 ], [ %.1.i.i414, %bb.lu ], [ null, %bb.ln ], [ null, %bb.lo ] ; 2 uses
  %i.atu = load i32, ptr %.031.i, align 8, !tbaa !51 ; 2 uses
  %.not.i.i416 = icmp sgt i32 %i.atu, -1
  br i1 %.not.i.i416, label %bb.lw, label %Py_DECREF.exit.i417

bb.lw:                                            ; preds = %Py_DECREF.exit41.i
  %i.atv = add nsw i32 %i.atu, -1                 ; 2 uses
  store i32 %i.atv, ptr %.031.i, align 8, !tbaa !51
  %i.atw = icmp eq i32 %i.atv, 0
  br i1 %i.atw, label %bb.lx, label %Py_DECREF.exit.i417

bb.lx:                                            ; preds = %bb.lw
  call void @_Py_Dealloc(ptr noundef nonnull %.031.i) #14
  br label %Py_DECREF.exit.i417

Py_DECREF.exit.i417:                              ; preds = %bb.lx, %bb.lw, %Py_DECREF.exit41.i
  %i.atx = icmp eq ptr %.0.i415, null
  br i1 %i.atx, label %load_inst.exit.thread, label %bb.ly

bb.ly:                                            ; preds = %Py_DECREF.exit.i417
  %i.aty = load ptr, ptr %i.w, align 8, !tbaa !134 ; 3 uses
  %i.atz = getelementptr i8, ptr %i.aty, i64 16   ; 3 uses
  %.val9.i.i418 = load i64, ptr %i.atz, align 8, !tbaa !44 ; 5 uses
  %i.aua = getelementptr i8, ptr %i.aty, i64 48   ; 2 uses
  %i.aub = load i64, ptr %i.aua, align 8, !tbaa !132
  %i.auc = icmp eq i64 %.val9.i.i418, %i.aub
  %i.aud = getelementptr i8, ptr %i.aty, i64 24   ; 2 uses
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !133 ; 2 uses
  br i1 %i.auc, label %bb.lz, label %load_inst.exit

bb.lz:                                            ; preds = %bb.ly
  %i.auf = lshr i64 %.val9.i.i418, 3
  %i.aug = add nuw nsw i64 %i.auf, 6              ; 2 uses
  %i.auh = sub i64 9223372036854775807, %.val9.i.i418
  %i.aui = icmp ugt i64 %i.aug, %i.auh
  br i1 %i.aui, label %bb.mc, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.auj = add i64 %i.aug, %.val9.i.i418          ; 3 uses
  %i.auk = icmp ugt i64 %i.auj, 1152921504606846975
  br i1 %i.auk, label %bb.mc, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.aul = shl nuw nsw i64 %i.auj, 3
  %i.aum = call ptr @PyMem_Realloc(ptr noundef %i.aue, i64 noundef %i.aul) #14 ; 3 uses
  %i.aun = icmp eq ptr %i.aum, null
  br i1 %i.aun, label %bb.mc, label %Pdata_grow.exit.i.i421

Pdata_grow.exit.i.i421:                           ; preds = %bb.mb
  store ptr %i.aum, ptr %i.aud, align 8, !tbaa !133
  store i64 %i.auj, ptr %i.aua, align 8, !tbaa !132
  %.val8.pre.i.i422 = load i64, ptr %i.atz, align 8, !tbaa !44
  br label %load_inst.exit

bb.mc:                                            ; preds = %bb.mb, %bb.ma, %bb.lz
  %i.auo = call ptr @PyErr_NoMemory() #14         ; 0 uses
  br label %load_inst.exit.thread

load_inst.exit.thread:                            ; preds = %Py_DECREF.exit.i417, %marker.exit.i409, %bb.kx, %bb.la, %Py_DECREF.exit43.i, %bb.kz, %Py_DECREF.exit47.i, %marker.exit.thread.i436, %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  br label %load_binint.exit.thread

load_inst.exit:                                   ; preds = %bb.ly, %Pdata_grow.exit.i.i421
  %.val8.i.i420 = phi i64 [ %.val8.pre.i.i422, %Pdata_grow.exit.i.i421 ], [ %.val9.i.i418, %bb.ly ] ; 2 uses
  %i.aup = phi ptr [ %i.aum, %Pdata_grow.exit.i.i421 ], [ %i.aue, %bb.ly ]
  %i.auq = getelementptr [8 x i8], ptr %i.aup, i64 %.val8.i.i420
  store ptr %.0.i415, ptr %i.auq, align 8, !tbaa !45
  %i.aur = add i64 %.val8.i.i420, 1
  store i64 %i.aur, ptr %i.atz, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  br label %.backedge.backedge

bb.md:                                            ; preds = %bb.o
  %i.aus = call fastcc i32 @load_newobj(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  %i.aut = icmp slt i32 %i.aus, 0
  br i1 %i.aut, label %load_binint.exit.thread, label %.backedge.backedge

bb.me:                                            ; preds = %bb.o
  %i.auu = call fastcc i32 @load_newobj(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1)
  %i.auv = icmp slt i32 %i.auu, 0
  br i1 %i.auv, label %load_binint.exit.thread, label %.backedge.backedge

bb.mf:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.auw = call fastcc i64 @_Unpickler_Readline(ptr noundef readonly %0, ptr noundef nonnull %1, ptr noundef %i.k) ; 3 uses
  %i.aux = icmp slt i64 %i.auw, 0
  br i1 %i.aux, label %load_global.exit.thread, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.auy = icmp samesign ult i64 %i.auw, 2
  br i1 %i.auy, label %bb.mh, label %bb.mi
end_hunk_2
begin_hunk_3_@_Unpickler_Readline:bb.a
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.y = getelementptr i8, ptr %0, i64 16
  %.val34 = load ptr, ptr %i.y, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %.val34, ptr noundef nonnull @.str.92) #14
  br label %_Unpickler_CopyLine.exit

bb.h:                                             ; preds = %._crit_edge
  %i.z = tail call fastcc i64 @_Unpickler_ReadFromFile(ptr noundef %0, ptr noundef nonnull %1, i64 noundef -1) ; 8 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %_Unpickler_CopyLine.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %1, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.z
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !51
  %.not33 = icmp eq i8 %i.ag, 10
  br i1 %.not33, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ah = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.ah, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %.val, ptr noundef nonnull @.str.92) #14
  br label %_Unpickler_CopyLine.exit

bb.l:                                             ; preds = %bb.j
  store i64 %i.z, ptr %i.a, align 8, !tbaa !79
  %i.ai = getelementptr i8, ptr %1, i64 160       ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !149
  %i.ak = add nuw i64 %i.z, 1
  %i.al = tail call ptr @PyMem_Realloc(ptr noundef %i.aj, i64 noundef %i.ak) #14 ; 5 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = tail call ptr @PyErr_NoMemory() #14     ; 0 uses
  br label %_Unpickler_CopyLine.exit

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.ad, i64 %i.z, i1 false)
  %i.ao = getelementptr i8, ptr %i.al, i64 %i.z
  store i8 0, ptr %i.ao, align 1, !tbaa !51
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !149
  store ptr %i.al, ptr %2, align 8, !tbaa !96
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr i8, ptr %1, i64 176        ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !79   ; 3 uses
  %i.e = sub i64 %i.b, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @llvm.smin.i64(i64 %i.e, i64 %3) ; 4 uses
  %i.h = getelementptr i8, ptr %1, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.j = getelementptr i8, ptr %i.i, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %i.j, i64 %i.g, i1 false)
  %i.k = load i64, ptr %i.c, align 8, !tbaa !79
  %i.l = add i64 %i.k, %i.g                       ; 2 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !79
  %i.m = getelementptr i8, ptr %2, i64 %i.g
  %i.n = sub i64 %3, %i.g                         ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %_Unpickler_SkipConsumed.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i64 [ %i.l, %bb.b ], [ %i.d, %bb.a ]
  %.028 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ]
  %.027 = phi i64 [ %i.n, %bb.b ], [ %3, %bb.a ]
  %i.p = getelementptr i8, ptr %1, i64 192
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !138  ; 2 uses
  %.not31 = icmp eq ptr %i.q, null
  br i1 %.not31, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.r, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %.val, ptr noundef nonnull @.str.92) #14
  br label %_Unpickler_SkipConsumed.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %1, i64 184        ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !80
  %i.u = sub i64 %i.o, %i.t                       ; 2 uses
  %i.v = icmp slt i64 %i.u, 1
  br i1 %i.v, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.128, i64 noundef %i.u) #14 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_Unpickler_SkipConsumed.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.w, align 8, !tbaa !51   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i.i, label %bb.h, label %Py_DECREF.exit.i

bb.h:                                             ; preds = %bb.g
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.w, align 8, !tbaa !51
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %Py_DECREF.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.w) #14
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.i, %bb.h, %bb.g
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !79
  store i64 %i.ab, ptr %i.s, align 8, !tbaa !80
  br label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit.i, %bb.e
  %i.ac = tail call fastcc i64 @_Unpickler_ReadIntoFromFile(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.028, i64 noundef %.027)
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134  ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %.val82 = load i64, ptr %i.d, align 8, !tbaa !44 ; 6 uses
  %i.e = icmp sgt i64 %2, %.val82
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !131
  %.not = icmp sgt i64 %2, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val83 = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr i8, ptr %i.c, i64 32
  %.val84 = load i32, ptr %i.i, align 8, !tbaa !130
  %.not.i86 = icmp eq i32 %.val84, 0
  %i.j = select i1 %.not.i86, ptr @.str.103, ptr @.str.102
  tail call void @PyErr_SetString(ptr noundef %.val83, ptr noundef nonnull %i.j) #14
  br label %Py_DECREF.exit75

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %2
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val = load ptr, ptr %i.p, align 8, !tbaa !57
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
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !133  ; 7 uses
  %i.v = getelementptr i8, ptr %i.r, i64 24
  %.val19.i = load ptr, ptr %i.v, align 8, !tbaa !127 ; 7 uses
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
  %n.vec133 = and i64 %i.q, 9223372036854775804   ; 4 uses
  %i.aa = add i64 %2, %n.vec133
  %i.ab = getelementptr [8 x i8], ptr %i.u, i64 %2
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next138, %vector.body134 ] ; 3 uses
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %index135 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %wide.load136 = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !45
  %wide.load137 = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !45
  %i.ae = getelementptr [8 x i8], ptr %.val19.i, i64 %index135 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  store <2 x ptr> %wide.load136, ptr %i.ae, align 8, !tbaa !45
  store <2 x ptr> %wide.load137, ptr %i.af, align 8, !tbaa !45
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.ag, label %middle.block139, label %vector.body134, !llvm.loop !242

middle.block139:                                  ; preds = %vector.body134
  %cmp.n140 = icmp eq i64 %i.q, %n.vec133
  br i1 %cmp.n140, label %.loopexit, label %scalar.ph130.preheader

scalar.ph130.preheader:                           ; preds = %vector.memcheck127, %.lr.ph.i, %middle.block139
  %.021.i.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %.lr.ph.i ], [ %n.vec133, %middle.block139 ] ; 3 uses
  %.01620.i.ph = phi i64 [ %2, %vector.memcheck127 ], [ %2, %.lr.ph.i ], [ %i.aa, %middle.block139 ] ; 2 uses
  %3 = sub i64 %.val82, %2
  %xtraiter144 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol

scalar.ph130.prol:                                ; preds = %scalar.ph130.preheader, %scalar.ph130.prol
  %.021.i.prol = phi i64 [ %i.al, %scalar.ph130.prol ], [ %.021.i.ph, %scalar.ph130.preheader ] ; 2 uses
  %.01620.i.prol = phi i64 [ %i.ak, %scalar.ph130.prol ], [ %.01620.i.ph, %scalar.ph130.preheader ] ; 2 uses
  %prol.iter146 = phi i64 [ %prol.iter146.next, %scalar.ph130.prol ], [ 0, %scalar.ph130.preheader ]
  %i.ah = getelementptr [8 x i8], ptr %i.u, i64 %.01620.i.prol
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45
  %i.aj = getelementptr [8 x i8], ptr %.val19.i, i64 %.021.i.prol
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !45
  %i.ak = add i64 %.01620.i.prol, 1               ; 2 uses
  %i.al = add nuw nsw i64 %.021.i.prol, 1         ; 2 uses
  %prol.iter146.next = add i64 %prol.iter146, 1   ; 2 uses
  %prol.iter146.cmp.not = icmp eq i64 %prol.iter146.next, %xtraiter144
  br i1 %prol.iter146.cmp.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol, !llvm.loop !243

scalar.ph130.prol.loopexit:                       ; preds = %scalar.ph130.prol, %scalar.ph130.preheader
  %.021.i.unr = phi i64 [ %.021.i.ph, %scalar.ph130.preheader ], [ %i.al, %scalar.ph130.prol ]
  %.01620.i.unr = phi i64 [ %.01620.i.ph, %scalar.ph130.preheader ], [ %i.ak, %scalar.ph130.prol ]
  %i.am = sub i64 %.021.i.ph, %.val82
  %i.an = add i64 %i.am, %2
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %.loopexit, label %scalar.ph130

scalar.ph130:                                     ; preds = %scalar.ph130.prol.loopexit, %scalar.ph130
  %.021.i = phi i64 [ %i.bi, %scalar.ph130 ], [ %.021.i.unr, %scalar.ph130.prol.loopexit ] ; 5 uses
  %.01620.i = phi i64 [ %i.bh, %scalar.ph130 ], [ %.01620.i.unr, %scalar.ph130.prol.loopexit ] ; 5 uses
  %i.ap = getelementptr [8 x i8], ptr %i.u, i64 %.01620.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45
  %i.ar = getelementptr [8 x i8], ptr %.val19.i, i64 %.021.i
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !45
  %i.as = getelementptr [8 x i8], ptr %i.u, i64 %.01620.i
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !45
  %i.av = getelementptr [8 x i8], ptr %.val19.i, i64 %.021.i
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !45
  %i.ax = getelementptr [8 x i8], ptr %i.u, i64 %.01620.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !45
  %i.ba = getelementptr [8 x i8], ptr %.val19.i, i64 %.021.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !45
  %i.bc = getelementptr [8 x i8], ptr %i.u, i64 %.01620.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !45
  %i.bf = getelementptr [8 x i8], ptr %.val19.i, i64 %.021.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 24
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !45
  %i.bh = add i64 %.01620.i, 4
  %i.bi = add nuw nsw i64 %.021.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bi, %i.q
  br i1 %exitcond.not.i.3, label %.loopexit, label %scalar.ph130, !llvm.loop !244

.loopexit:                                        ; preds = %scalar.ph130.prol.loopexit, %scalar.ph130, %middle.block139, %.preheader.i
  store i64 %2, ptr %i.d, align 8, !tbaa !44
  %i.bj = getelementptr i8, ptr %i.o, i64 16
  %.val85 = load i64, ptr %i.bj, align 8, !tbaa !44 ; 2 uses
  %i.bk = tail call i32 @PyList_SetSlice(ptr noundef nonnull %i.o, i64 noundef %.val85, i64 noundef %.val85, ptr noundef nonnull %i.r) #14 ; 3 uses
  %i.bl = load i32, ptr %i.r, align 8, !tbaa !51  ; 2 uses
  %.not.i74 = icmp sgt i32 %i.bl, -1
  br i1 %.not.i74, label %bb.f, label %Py_DECREF.exit75

bb.f:                                             ; preds = %.loopexit
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.r, align 8, !tbaa !51
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %Py_DECREF.exit75

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #14
  br label %Py_DECREF.exit75

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bo = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %i.o, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 83184), ptr noundef nonnull %i.a) #14
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %Py_DECREF.exit73.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !45
  %.not61 = icmp eq ptr %i.bq, null
  br i1 %.not61, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !134 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 16     ; 2 uses
  %.val.i87 = load i64, ptr %i.bs, align 8, !tbaa !44 ; 3 uses
  %i.bt = sub i64 %.val.i87, %2                   ; 6 uses
  %i.bu = call ptr @PyList_New(i64 noundef %i.bt) #14 ; 6 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.k, label %.preheader.i88

.preheader.i88:                                   ; preds = %bb.j
  %i.bw = icmp sgt i64 %i.bt, 0
  br i1 %i.bw, label %.lr.ph.i90, label %.loopexit100

.lr.ph.i90:                                       ; preds = %.preheader.i88
  %i.bx = getelementptr i8, ptr %i.br, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !133 ; 7 uses
  %i.bz = getelementptr i8, ptr %i.bu, i64 24
  %.val19.i91 = load ptr, ptr %i.bz, align 8, !tbaa !127 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bt, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i90
  %.val19.i91124 = ptrtoaddr ptr %.val19.i91 to i64
  %i.ca = ptrtoaddr ptr %i.by to i64
  %i.cb = shl i64 %2, 3
  %i.cc = add i64 %i.cb, %i.ca
  %i.cd = sub i64 %i.cc, %.val19.i91124
  %diff.check = icmp ugt i64 %i.cd, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bt, 9223372036854775804     ; 4 uses
  %i.ce = add i64 %2, %n.vec
  %i.cf = getelementptr [8 x i8], ptr %i.by, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cg = getelementptr [8 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  %wide.load = load <2 x ptr>, ptr %i.cg, align 8, !tbaa !45
  %wide.load125 = load <2 x ptr>, ptr %i.ch, align 8, !tbaa !45
  %i.ci = getelementptr [8 x i8], ptr %.val19.i91, i64 %index ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store <2 x ptr> %wide.load, ptr %i.ci, align 8, !tbaa !45
  store <2 x ptr> %wide.load125, ptr %i.cj, align 8, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !245

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit100, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i90, %middle.block
  %.021.i92.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i90 ], [ %n.vec, %middle.block ] ; 3 uses
  %.01620.i93.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.i90 ], [ %i.ce, %middle.block ] ; 2 uses
  %4 = sub i64 %.val.i87, %2
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.021.i92.prol = phi i64 [ %i.cp, %scalar.ph.prol ], [ %.021.i92.ph, %scalar.ph.preheader ] ; 2 uses
  %.01620.i93.prol = phi i64 [ %i.co, %scalar.ph.prol ], [ %.01620.i93.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cl = getelementptr [8 x i8], ptr %i.by, i64 %.01620.i93.prol
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !45
  %i.cn = getelementptr [8 x i8], ptr %.val19.i91, i64 %.021.i92.prol
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !45
  %i.co = add i64 %.01620.i93.prol, 1             ; 2 uses
  %i.cp = add nuw nsw i64 %.021.i92.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !246

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.021.i92.unr = phi i64 [ %.021.i92.ph, %scalar.ph.preheader ], [ %i.cp, %scalar.ph.prol ]
  %.01620.i93.unr = phi i64 [ %.01620.i93.ph, %scalar.ph.preheader ], [ %i.co, %scalar.ph.prol ]
  %i.cq = sub i64 %.021.i92.ph, %.val.i87
  %i.cr = add i64 %i.cq, %2
  %i.cs = icmp ugt i64 %i.cr, -4
  br i1 %i.cs, label %.loopexit100, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.021.i92 = phi i64 [ %i.dm, %scalar.ph ], [ %.021.i92.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01620.i93 = phi i64 [ %i.dl, %scalar.ph ], [ %.01620.i93.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ct = getelementptr [8 x i8], ptr %i.by, i64 %.01620.i93
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !45
  %i.cv = getelementptr [8 x i8], ptr %.val19.i91, i64 %.021.i92
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !45
  %i.cw = getelementptr [8 x i8], ptr %i.by, i64 %.01620.i93
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !45
  %i.cz = getelementptr [8 x i8], ptr %.val19.i91, i64 %.021.i92
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !45
  %i.db = getelementptr [8 x i8], ptr %i.by, i64 %.01620.i93
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !45
  %i.de = getelementptr [8 x i8], ptr %.val19.i91, i64 %.021.i92
  %i.df = getelementptr i8, ptr %i.de, i64 16
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !45
  %i.dg = getelementptr [8 x i8], ptr %i.by, i64 %.01620.i93
  %i.dh = getelementptr i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !45
  %i.dj = getelementptr [8 x i8], ptr %.val19.i91, i64 %.021.i92
  %i.dk = getelementptr i8, ptr %i.dj, i64 24
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !45
  %i.dl = add i64 %.01620.i93, 4
  %i.dm = add nuw nsw i64 %.021.i92, 4            ; 2 uses
  %exitcond.not.i94.3 = icmp eq i64 %i.dm, %i.bt
  br i1 %exitcond.not.i94.3, label %.loopexit100, label %scalar.ph, !llvm.loop !247

bb.k:                                             ; preds = %bb.j
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !51 ; 2 uses
  %.not.i72 = icmp sgt i32 %i.do, -1
  br i1 %.not.i72, label %bb.l, label %Py_DECREF.exit73.thread

bb.l:                                             ; preds = %bb.k
  %i.dp = add nsw i32 %i.do, -1                   ; 2 uses
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !51
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %Py_DECREF.exit73.thread.sink.split, label %Py_DECREF.exit73.thread

.loopexit100:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i88
  store i64 %2, ptr %i.bs, align 8, !tbaa !44
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.ds = call ptr @PyObject_CallOneArg(ptr noundef %i.dr, ptr noundef nonnull %i.bu) #14 ; 4 uses
  %i.dt = load i32, ptr %i.bu, align 8, !tbaa !51 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.dt, -1
  br i1 %.not.i.i, label %bb.m, label %_Pickle_FastCall.exit

bb.m:                                             ; preds = %.loopexit100
  %i.du = add nsw i32 %i.dt, -1                   ; 2 uses
  store i32 %i.du, ptr %i.bu, align 8, !tbaa !51
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.n, label %_Pickle_FastCall.exit

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.bu) #14
  br label %_Pickle_FastCall.exit

_Pickle_FastCall.exit:                            ; preds = %.loopexit100, %bb.m, %bb.n
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !51 ; 2 uses
  %.not.i70 = icmp sgt i32 %i.dx, -1
  br i1 %.not.i70, label %bb.o, label %Py_DECREF.exit71

bb.o:                                             ; preds = %_Pickle_FastCall.exit
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.dy, ptr %i.dw, align 8, !tbaa !51
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.p, label %Py_DECREF.exit71

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.dw) #14
  br label %Py_DECREF.exit71

Py_DECREF.exit71:                                 ; preds = %_Pickle_FastCall.exit, %bb.o, %bb.p
  %i.ea = icmp eq ptr %i.ds, null
  br i1 %i.ea, label %Py_DECREF.exit73.thread, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit71
  %i.eb = load i32, ptr %i.ds, align 8, !tbaa !51 ; 2 uses
  %.not.i68 = icmp sgt i32 %i.eb, -1
  br i1 %.not.i68, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.ec = add nsw i32 %i.eb, -1                   ; 2 uses
  store i32 %i.ec, ptr %i.ds, align 8, !tbaa !51
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %.sink.split, label %bb.ab

bb.s:                                             ; preds = %bb.i
  %i.ee = call ptr @PyObject_GetAttr(ptr noundef nonnull %i.o, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 74736)) #14 ; 8 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %Py_DECREF.exit73.thread, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.eg = icmp slt i64 %2, %.val82
  br i1 %i.eg, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %Py_DECREF.exit65
  %.050102 = phi i64 [ %i.fb, %Py_DECREF.exit65 ], [ %2, %.preheader ] ; 3 uses
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.ei = getelementptr i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !133
  %i.ek = getelementptr [8 x i8], ptr %i.ej, i64 %.050102
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !45 ; 4 uses
  %i.em = call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.ee, ptr noundef %i.el) #14 ; 4 uses
  %i.en = load i32, ptr %i.el, align 8, !tbaa !51 ; 2 uses
  %.not.i.i96 = icmp sgt i32 %i.en, -1
  br i1 %.not.i.i96, label %bb.t, label %_Pickle_FastCall.exit97

bb.t:                                             ; preds = %.lr.ph
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr %i.el, align 8, !tbaa !51
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.u, label %_Pickle_FastCall.exit97

bb.u:                                             ; preds = %bb.t
  call void @_Py_Dealloc(ptr noundef nonnull %i.el) #14
  br label %_Pickle_FastCall.exit97

_Pickle_FastCall.exit97:                          ; preds = %.lr.ph, %bb.t, %bb.u
  %i.eq = icmp eq ptr %i.em, null
  br i1 %i.eq, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_Pickle_FastCall.exit97
  %i.er = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.es = add nsw i64 %.050102, 1
  call fastcc void @Pdata_clear(ptr noundef %i.er, i64 noundef %i.es)
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.eu = getelementptr i8, ptr %i.et, i64 16
  store i64 %2, ptr %i.eu, align 8, !tbaa !44
  %i.ev = load i32, ptr %i.ee, align 8, !tbaa !51 ; 2 uses
  %.not.i66 = icmp sgt i32 %i.ev, -1
  br i1 %.not.i66, label %bb.w, label %Py_DECREF.exit73.thread

bb.w:                                             ; preds = %bb.v
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.ee, align 8, !tbaa !51
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %Py_DECREF.exit73.thread.sink.split, label %Py_DECREF.exit73.thread

bb.x:                                             ; preds = %_Pickle_FastCall.exit97
  %i.ey = load i32, ptr %i.em, align 8, !tbaa !51 ; 2 uses
  %.not.i64 = icmp sgt i32 %i.ey, -1
  br i1 %.not.i64, label %bb.y, label %Py_DECREF.exit65

bb.y:                                             ; preds = %bb.x
  %i.ez = add nsw i32 %i.ey, -1                   ; 2 uses
  store i32 %i.ez, ptr %i.em, align 8, !tbaa !51
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.z, label %Py_DECREF.exit65

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.em) #14
  br label %Py_DECREF.exit65

Py_DECREF.exit65:                                 ; preds = %bb.x, %bb.y, %bb.z
  %i.fb = add i64 %.050102, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.fb, %.val82
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !248

.critedge:                                        ; preds = %Py_DECREF.exit65, %.preheader
  %i.fc = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.fd = getelementptr i8, ptr %i.fc, i64 16
  store i64 %2, ptr %i.fd, align 8, !tbaa !44
  %i.fe = load i32, ptr %i.ee, align 8, !tbaa !51 ; 2 uses
  %.not.i = icmp sgt i32 %i.fe, -1
  br i1 %.not.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge
  %i.ff = add nsw i32 %i.fe, -1                   ; 2 uses
  store i32 %i.ff, ptr %i.ee, align 8, !tbaa !51
  %i.fg = icmp eq i32 %i.ff, 0
end_hunk_3
