inline.NumInlined: 105
inline.NumDeleted: 33
begin_hunk_0_@LzmaEnc_CodeOneBlock:bb.a
  %i.un = load i8, ptr %i.um, align 1, !tbaa !21
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uj, i64 %indvars.iv.i.i261
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !21
  %i.uq = icmp eq i8 %i.un, %i.up
  br i1 %i.uq, label %bb.ca, label %.critedge.loopexit.split.loop.exit.i.i262

bb.ca:                                            ; preds = %.lr.ph.i.i260
  %indvars.iv.next.i.i263 = add nuw nsw i64 %indvars.iv.i.i261, 1 ; 2 uses
  %lftr.wideiv.i.i264 = trunc i64 %indvars.iv.next.i.i263 to i32
  %exitcond.not.i.i265 = icmp eq i32 %spec.store.select.i.i258, %lftr.wideiv.i.i264
  br i1 %exitcond.not.i.i265, label %ReadMatchDistances.exit.i256, label %.lr.ph.i.i260, !llvm.loop !140

.critedge.loopexit.split.loop.exit.i.i262:        ; preds = %.lr.ph.i.i260
  %i.ur = trunc nuw i64 %indvars.iv.i.i261 to i32
  br label %ReadMatchDistances.exit.i256

ReadMatchDistances.exit.i256:                     ; preds = %bb.ca, %.critedge.loopexit.split.loop.exit.i.i262, %bb.bz, %bb.by, %bb.bx
  %.1.i.i257 = phi i32 [ 0, %bb.bx ], [ %i.tu, %bb.by ], [ %i.tu, %bb.bz ], [ %i.ur, %.critedge.loopexit.split.loop.exit.i.i262 ], [ %spec.store.select.i.i258, %bb.ca ]
  %i.us = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.ut = add i32 %i.us, 1
  store i32 %i.ut, ptr %i.dj, align 4, !tbaa !89
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bw
  %i.uu = load i32, ptr %i.dk, align 8, !tbaa !141
  %i.uv = load i32, ptr %i.dl, align 4, !tbaa !142
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %ReadMatchDistances.exit.i256
  %.0901.i = phi i32 [ %i.tq, %ReadMatchDistances.exit.i256 ], [ %i.uv, %bb.cb ] ; 2 uses
  %.0696.i = phi i32 [ %.1.i.i257, %ReadMatchDistances.exit.i256 ], [ %i.uu, %bb.cb ] ; 6 uses
  %i.uw = load i32, ptr %i.dm, align 8, !tbaa !135 ; 3 uses
  %i.ux = icmp ult i32 %i.uw, 2
  br i1 %i.ux, label %GetOptimum.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.uy = load ptr, ptr %i.dq, align 8, !tbaa !122
  %i.uz = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.va = tail call ptr %i.uy(ptr noundef %i.uz) #14, !inline_history !152 ; 6 uses
  %i.vb = getelementptr inbounds i8, ptr %i.va, i64 -1 ; 10 uses
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !21  ; 6 uses
  %.not1060.i = icmp eq i32 %i.uw, 2              ; 4 uses
  %i.vd = tail call i32 @llvm.umax.i32(i32 %i.uw, i32 3)
  %umax.i231 = tail call i32 @llvm.umin.i32(i32 %i.vd, i32 273) ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.dr, i64 16, i1 false), !tbaa !4
  %i.ve = load i32, ptr %i.dr, align 8, !tbaa !4
  %i.vf = add i32 %i.ve, 1
  %i.vg = zext i32 %i.vf to i64
  %i.vh = sub nsw i64 0, %i.vg
  %i.vi = getelementptr inbounds i8, ptr %i.vb, i64 %i.vh ; 3 uses
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !21
  %.not830.i = icmp eq i8 %i.vc, %i.vj
  br i1 %.not830.i, label %bb.ce, label %.critedge.i

bb.ce:                                            ; preds = %bb.cd
  %i.vk = load i8, ptr %i.va, align 1, !tbaa !21
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 1
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !21
  %.not831.i = icmp ne i8 %i.vk, %i.vm            ; 2 uses
  %brmerge.i = or i1 %.not1060.i, %.not831.i
  %.mux.i = select i1 %.not831.i, i32 0, i32 2
  br i1 %brmerge.i, label %.critedge.i, label %.lr.ph.preheader.i248

.lr.ph.preheader.i248:                            ; preds = %bb.ce
  %wide.trip.count.i249 = zext nneg i32 %umax.i231 to i64
  br label %.lr.ph.i250

.lr.ph.i250:                                      ; preds = %bb.cf, %.lr.ph.preheader.i248
  %indvars.iv.i251 = phi i64 [ 2, %.lr.ph.preheader.i248 ], [ %indvars.iv.next.i253, %bb.cf ] ; 4 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv.i251
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !21
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vi, i64 %indvars.iv.i251
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !21
  %i.vr = icmp eq i8 %i.vo, %i.vq
  br i1 %i.vr, label %bb.cf, label %.critedge.loopexit.split.loop.exit.i252

bb.cf:                                            ; preds = %.lr.ph.i250
  %indvars.iv.next.i253 = add nuw nsw i64 %indvars.iv.i251, 1 ; 2 uses
  %exitcond.not.i254 = icmp eq i64 %indvars.iv.next.i253, %wide.trip.count.i249
  br i1 %exitcond.not.i254, label %.critedge.i, label %.lr.ph.i250, !llvm.loop !153

.critedge.loopexit.split.loop.exit.i252:          ; preds = %.lr.ph.i250
  %i.vs = trunc nuw nsw i64 %indvars.iv.i251 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.cf, %.critedge.loopexit.split.loop.exit.i252, %bb.ce, %bb.cd
  %storemerge1220.i = phi i32 [ 0, %bb.cd ], [ %.mux.i, %bb.ce ], [ %i.vs, %.critedge.loopexit.split.loop.exit.i252 ], [ %umax.i231, %bb.cf ] ; 5 uses
  store i32 %storemerge1220.i, ptr %i.b, align 16, !tbaa !4
  %i.vt = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.vu = add i32 %i.vt, 1
  %i.vv = zext i32 %i.vu to i64
  %i.vw = sub nsw i64 0, %i.vv
  %i.vx = getelementptr inbounds i8, ptr %i.vb, i64 %i.vw ; 3 uses
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !21
  %.not830.1.i = icmp eq i8 %i.vc, %i.vy
  br i1 %.not830.1.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.critedge.i
  %i.vz = load i8, ptr %i.va, align 1, !tbaa !21
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 1
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !21
  %.not831.1.i = icmp eq i8 %i.vz, %i.wb
  br i1 %.not831.1.i, label %.preheader973.1.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.critedge.i
  store i32 0, ptr %i.ea, align 4, !tbaa !4
  br label %bb.cj

.preheader973.1.i:                                ; preds = %bb.cg
  br i1 %.not1060.i, label %.critedge.1.i, label %.lr.ph.preheader.1.i

.lr.ph.preheader.1.i:                             ; preds = %.preheader973.1.i
  %wide.trip.count.1.i244 = zext nneg i32 %umax.i231 to i64
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.ci, %.lr.ph.preheader.1.i
  %indvars.iv.1.i245 = phi i64 [ 2, %.lr.ph.preheader.1.i ], [ %indvars.iv.next.1.i246, %bb.ci ] ; 4 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv.1.i245
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !21
  %i.we = getelementptr inbounds nuw i8, ptr %i.vx, i64 %indvars.iv.1.i245
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !21
  %i.wg = icmp eq i8 %i.wd, %i.wf
  br i1 %i.wg, label %bb.ci, label %.critedge.1.loopexit.split.loop.exit1246.i

bb.ci:                                            ; preds = %.lr.ph.1.i
  %indvars.iv.next.1.i246 = add nuw nsw i64 %indvars.iv.1.i245, 1 ; 2 uses
  %exitcond.1.not.i247 = icmp eq i64 %indvars.iv.next.1.i246, %wide.trip.count.1.i244
  br i1 %exitcond.1.not.i247, label %.critedge.1.i, label %.lr.ph.1.i, !llvm.loop !153

.critedge.1.loopexit.split.loop.exit1246.i:       ; preds = %.lr.ph.1.i
  %i.wh = trunc nuw nsw i64 %indvars.iv.1.i245 to i32
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.ci, %.critedge.1.loopexit.split.loop.exit1246.i, %.preheader973.1.i
  %.0730.lcssa.1.i = phi i32 [ 2, %.preheader973.1.i ], [ %i.wh, %.critedge.1.loopexit.split.loop.exit1246.i ], [ %umax.i231, %bb.ci ] ; 3 uses
  store i32 %.0730.lcssa.1.i, ptr %i.ea, align 4, !tbaa !4
  %i.wi = icmp ugt i32 %.0730.lcssa.1.i, %storemerge1220.i
  %spec.select.1.i = zext i1 %i.wi to i32
  br label %bb.cj

bb.cj:                                            ; preds = %.critedge.1.i, %bb.ch
  %i.wj = phi i32 [ 0, %bb.ch ], [ %.0730.lcssa.1.i, %.critedge.1.i ] ; 2 uses
  %.2699.1.i = phi i32 [ 0, %bb.ch ], [ %spec.select.1.i, %.critedge.1.i ] ; 3 uses
  %i.wk = load i32, ptr %i.dt, align 8, !tbaa !4
  %i.wl = add i32 %i.wk, 1
  %i.wm = zext i32 %i.wl to i64
  %i.wn = sub nsw i64 0, %i.wm
  %i.wo = getelementptr inbounds i8, ptr %i.vb, i64 %i.wn ; 3 uses
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !21
  %.not830.2.i = icmp eq i8 %i.vc, %i.wp
  br i1 %.not830.2.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.wq = load i8, ptr %i.va, align 1, !tbaa !21
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 1
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !21
  %.not831.2.i = icmp eq i8 %i.wq, %i.ws
  br i1 %.not831.2.i, label %.preheader973.2.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  store i32 0, ptr %i.eb, align 8, !tbaa !4
  br label %bb.cn

.preheader973.2.i:                                ; preds = %bb.ck
  br i1 %.not1060.i, label %.critedge.2.i, label %.lr.ph.preheader.2.i

.lr.ph.preheader.2.i:                             ; preds = %.preheader973.2.i
  %wide.trip.count.2.i240 = zext nneg i32 %umax.i231 to i64
  br label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %bb.cm, %.lr.ph.preheader.2.i
  %indvars.iv.2.i241 = phi i64 [ 2, %.lr.ph.preheader.2.i ], [ %indvars.iv.next.2.i242, %bb.cm ] ; 4 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv.2.i241
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !21
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wo, i64 %indvars.iv.2.i241
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !21
  %i.wx = icmp eq i8 %i.wu, %i.ww
  br i1 %i.wx, label %bb.cm, label %.critedge.2.loopexit.split.loop.exit1248.i

bb.cm:                                            ; preds = %.lr.ph.2.i
  %indvars.iv.next.2.i242 = add nuw nsw i64 %indvars.iv.2.i241, 1 ; 2 uses
  %exitcond.2.not.i243 = icmp eq i64 %indvars.iv.next.2.i242, %wide.trip.count.2.i240
  br i1 %exitcond.2.not.i243, label %.critedge.2.i, label %.lr.ph.2.i, !llvm.loop !153

.critedge.2.loopexit.split.loop.exit1248.i:       ; preds = %.lr.ph.2.i
  %i.wy = trunc nuw nsw i64 %indvars.iv.2.i241 to i32
  br label %.critedge.2.i

.critedge.2.i:                                    ; preds = %bb.cm, %.critedge.2.loopexit.split.loop.exit1248.i, %.preheader973.2.i
  %.0730.lcssa.2.i = phi i32 [ 2, %.preheader973.2.i ], [ %i.wy, %.critedge.2.loopexit.split.loop.exit1248.i ], [ %umax.i231, %bb.cm ] ; 3 uses
  store i32 %.0730.lcssa.2.i, ptr %i.eb, align 8, !tbaa !4
  %i.wz = zext nneg i32 %.2699.1.i to i64
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.wz
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !4
  %i.xc = icmp ugt i32 %.0730.lcssa.2.i, %i.xb
  %spec.select.2.i = select i1 %i.xc, i32 2, i32 %.2699.1.i
  br label %bb.cn

bb.cn:                                            ; preds = %.critedge.2.i, %bb.cl
  %i.xd = phi i32 [ 0, %bb.cl ], [ %.0730.lcssa.2.i, %.critedge.2.i ] ; 2 uses
  %.2699.2.i = phi i32 [ %.2699.1.i, %bb.cl ], [ %spec.select.2.i, %.critedge.2.i ] ; 3 uses
  %i.xe = load i32, ptr %i.du, align 4, !tbaa !4
  %i.xf = add i32 %i.xe, 1
  %i.xg = zext i32 %i.xf to i64
  %i.xh = sub nsw i64 0, %i.xg
  %i.xi = getelementptr inbounds i8, ptr %i.vb, i64 %i.xh ; 3 uses
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !21
  %.not830.3.i = icmp eq i8 %i.vc, %i.xj
  br i1 %.not830.3.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.xk = load i8, ptr %i.va, align 1, !tbaa !21
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xi, i64 1
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !21
  %.not831.3.i = icmp eq i8 %i.xk, %i.xm
  br i1 %.not831.3.i, label %.preheader973.3.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  store i32 0, ptr %i.ec, align 4, !tbaa !4
  br label %bb.cr

.preheader973.3.i:                                ; preds = %bb.co
  br i1 %.not1060.i, label %.critedge.3.i, label %.lr.ph.preheader.3.i

.lr.ph.preheader.3.i:                             ; preds = %.preheader973.3.i
  %wide.trip.count.3.i236 = zext nneg i32 %umax.i231 to i64
  br label %.lr.ph.3.i

.lr.ph.3.i:                                       ; preds = %bb.cq, %.lr.ph.preheader.3.i
  %indvars.iv.3.i237 = phi i64 [ 2, %.lr.ph.preheader.3.i ], [ %indvars.iv.next.3.i238, %bb.cq ] ; 4 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv.3.i237
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !21
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xi, i64 %indvars.iv.3.i237
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !21
  %i.xr = icmp eq i8 %i.xo, %i.xq
  br i1 %i.xr, label %bb.cq, label %.critedge.3.loopexit.split.loop.exit1250.i

bb.cq:                                            ; preds = %.lr.ph.3.i
  %indvars.iv.next.3.i238 = add nuw nsw i64 %indvars.iv.3.i237, 1 ; 2 uses
  %exitcond.3.not.i239 = icmp eq i64 %indvars.iv.next.3.i238, %wide.trip.count.3.i236
  br i1 %exitcond.3.not.i239, label %.critedge.3.i, label %.lr.ph.3.i, !llvm.loop !153

.critedge.3.loopexit.split.loop.exit1250.i:       ; preds = %.lr.ph.3.i
  %i.xs = trunc nuw nsw i64 %indvars.iv.3.i237 to i32
  br label %.critedge.3.i

.critedge.3.i:                                    ; preds = %bb.cq, %.critedge.3.loopexit.split.loop.exit1250.i, %.preheader973.3.i
  %.0730.lcssa.3.i = phi i32 [ 2, %.preheader973.3.i ], [ %i.xs, %.critedge.3.loopexit.split.loop.exit1250.i ], [ %umax.i231, %bb.cq ] ; 3 uses
  store i32 %.0730.lcssa.3.i, ptr %i.ec, align 4, !tbaa !4
  %i.xt = zext nneg i32 %.2699.2.i to i64
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.xt
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !4
  %i.xw = icmp ugt i32 %.0730.lcssa.3.i, %i.xv
  %spec.select.3.i = select i1 %i.xw, i32 3, i32 %.2699.2.i
  br label %bb.cr

bb.cr:                                            ; preds = %.critedge.3.i, %bb.cp
  %i.xx = phi i32 [ 0, %bb.cp ], [ %.0730.lcssa.3.i, %.critedge.3.i ] ; 2 uses
  %.2699.3.i.a = phi i32 [ %.2699.2.i, %bb.cp ], [ %spec.select.3.i, %.critedge.3.i ] ; 3 uses
  %4 = zext nneg i32 %.2699.3.i.a to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !4        ; 5 uses
  %i.xy = load i32, ptr %i.dp, align 8, !tbaa !52 ; 2 uses
  %.not806.i = icmp ult i32 %6, %i.xy
  br i1 %.not806.i, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.xz = add i32 %6, -1                          ; 3 uses
  %.not.i841.i = icmp eq i32 %i.xz, 0
  br i1 %.not.i841.i, label %GetOptimum.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ya = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.yb = add i32 %i.ya, %i.xz
  store i32 %i.yb, ptr %i.dj, align 4, !tbaa !89
  %i.yc = load ptr, ptr %i.dw, align 8, !tbaa !147
  %i.yd = load ptr, ptr %i.df, align 8, !tbaa !116
  tail call void %i.yc(ptr noundef %i.yd, i32 noundef %i.xz) #14, !inline_history !154
  br label %GetOptimum.exit

bb.cu:                                            ; preds = %bb.cr
  %.not807.i = icmp ult i32 %.0696.i, %i.xy
  br i1 %.not807.i, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ye = add i32 %.0901.i, -1
  %i.yf = zext i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.yf
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !4
  %i.yi = add i32 %i.yh, 4                        ; 2 uses
  %i.yj = add i32 %.0696.i, -1                    ; 3 uses
  %.not.i842.i = icmp eq i32 %i.yj, 0
  br i1 %.not.i842.i, label %GetOptimum.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.yk = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.yl = add i32 %i.yk, %i.yj
  store i32 %i.yl, ptr %i.dj, align 4, !tbaa !89
  %i.ym = load ptr, ptr %i.dw, align 8, !tbaa !147
  %i.yn = load ptr, ptr %i.df, align 8, !tbaa !116
  tail call void %i.ym(ptr noundef %i.yn, i32 noundef %i.yj) #14, !inline_history !154
  br label %GetOptimum.exit

bb.cx:                                            ; preds = %bb.cu
  %i.yo = load i32, ptr %i.a, align 16, !tbaa !4  ; 2 uses
  %i.yp = add i32 %i.yo, 1
  %i.yq = zext i32 %i.yp to i64
  %i.yr = sub nsw i64 0, %i.yq
  %i.ys = getelementptr inbounds i8, ptr %i.vb, i64 %i.yr
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !21  ; 2 uses
  %.not808.i = icmp ne i8 %i.vc, %i.yt            ; 2 uses
  %i.yu = or i32 %6, %.0696.i
  %i.yv = icmp ult i32 %i.yu, 2
  %or.cond832.i = select i1 %i.yv, i1 %.not808.i, i1 false
  br i1 %or.cond832.i, label %GetOptimum.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.yw = load i32, ptr %i.ed, align 8, !tbaa !25 ; 3 uses
  store i32 %i.yw, ptr %i.ee, align 8, !tbaa !155
  %i.yx = load i32, ptr %i.dv, align 4, !tbaa !90
  %i.yy = and i32 %i.yx, %.2199
  %i.yz = load ptr, ptr %i.ef, align 8, !tbaa !48
  %i.za = load i32, ptr %i.eg, align 8, !tbaa !91
  %i.zb = and i32 %i.za, %.2199
  %i.zc = load i32, ptr %i.eh, align 4, !tbaa !53 ; 2 uses
  %i.zd = shl i32 %i.zb, %i.zc
  %i.ze = getelementptr inbounds i8, ptr %i.va, i64 -2
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !21
  %i.zg = zext i8 %i.zf to i32
  %i.zh = sub i32 8, %i.zc
  %i.zi = lshr i32 %i.zg, %i.zh
  %i.zj = add i32 %i.zi, %i.zd
  %i.zk = mul i32 %i.zj, 768
  %i.zl = zext i32 %i.zk to i64
  %i.zm = getelementptr inbounds nuw [2 x i8], ptr %i.yz, i64 %i.zl ; 2 uses
  %i.zn = zext i32 %i.yw to i64                   ; 14 uses
  %i.zo = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.zn
  %i.zp = zext i32 %i.yy to i64                   ; 5 uses
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %i.zo, i64 %i.zp
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !23
  %i.zs = lshr i16 %i.zr, 4                       ; 2 uses
  %i.zt = zext nneg i16 %i.zs to i64
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.zt
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !4
  %i.zw = icmp ult i32 %i.yw, 7
  %i.zx = zext i8 %i.vc to i32                    ; 2 uses
  br i1 %i.zw, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zy = zext i8 %i.yt to i32
  %i.zz = tail call fastcc i32 @LitEnc_GetPriceMatched(ptr noundef %i.zm, i32 noundef %i.zx, i32 noundef %i.zy, ptr noundef nonnull %i.ei)
  br label %LitEnc_GetPrice.exit.i

bb.da:                                            ; preds = %bb.cy
  %i.aaa = or disjoint i32 %i.zx, 256
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %bb.da
  %.08.i.i = phi i32 [ %i.aaa, %bb.da ], [ %i.aam, %bb.db ] ; 4 uses
  %.0.i.i235 = phi i32 [ 0, %bb.da ], [ %i.aal, %bb.db ]
  %i.aab = lshr i32 %.08.i.i, 8
  %i.aac = zext nneg i32 %i.aab to i64
  %i.aad = getelementptr inbounds nuw [2 x i8], ptr %i.zm, i64 %i.aac
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !23
  %i.aaf = zext i16 %i.aae to i64
  %.mask.i.i = and i32 %.08.i.i, 128
  %isneg.not.i.i = icmp eq i32 %.mask.i.i, 0
  %i.aag = select i1 %isneg.not.i.i, i64 0, i64 2032
  %i.aah = xor i64 %i.aag, %i.aaf
  %i.aai = lshr i64 %i.aah, 4
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.aai
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !4
  %i.aal = add i32 %i.aak, %.0.i.i235             ; 2 uses
  %i.aam = shl nuw nsw i32 %.08.i.i, 1
  %i.aan = icmp samesign ult i32 %.08.i.i, 32768
  br i1 %i.aan, label %bb.db, label %LitEnc_GetPrice.exit.i, !llvm.loop !156

LitEnc_GetPrice.exit.i:                           ; preds = %bb.db, %bb.cz
  %i.aao = phi i32 [ %i.zz, %bb.cz ], [ %i.aal, %bb.db ]
  %i.aap = add i32 %i.aao, %i.zv                  ; 2 uses
  store i32 %i.aap, ptr %i.ek, align 4, !tbaa !157
  store i32 -1, ptr %i.el, align 8, !tbaa !150
  store i32 0, ptr %i.em, align 4, !tbaa !158
  %i.aaq = xor i16 %i.zs, 127
  %i.aar = zext nneg i16 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.aar
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !4 ; 2 uses
  %i.aau = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.zn
  %i.aav = load i16, ptr %i.aau, align 2, !tbaa !23
  %i.aaw = lshr i16 %i.aav, 4                     ; 2 uses
  %i.aax = xor i16 %i.aaw, 127
  %i.aay = zext nneg i16 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.aay
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !4
  %i.abb = add i32 %i.aba, %i.aat                 ; 5 uses
  br i1 %.not808.i, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %LitEnc_GetPrice.exit.i
  %i.abc = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.zn
  %i.abd = load i16, ptr %i.abc, align 2, !tbaa !23
  %i.abe = lshr i16 %i.abd, 4
  %i.abf = zext nneg i16 %i.abe to i64
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.abf
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !4
  %i.abi = getelementptr inbounds nuw [32 x i8], ptr %i.ep, i64 %i.zn
  %i.abj = getelementptr inbounds nuw [2 x i8], ptr %i.abi, i64 %i.zp
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !23
  %i.abl = lshr i16 %i.abk, 4
  %i.abm = zext nneg i16 %i.abl to i64
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.abm
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !4
  %i.abp = add i32 %i.abh, %i.abb
  %i.abq = add i32 %i.abp, %i.abo                 ; 2 uses
  %i.abr = icmp ult i32 %i.abq, %i.aap
  br i1 %i.abr, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 %i.abq, ptr %i.ek, align 4, !tbaa !157
  store i32 0, ptr %i.el, align 8, !tbaa !150
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %LitEnc_GetPrice.exit.i
  %i.abs = phi i32 [ -1, %bb.dc ], [ 0, %bb.dd ], [ -1, %LitEnc_GetPrice.exit.i ]
  %..0696.i = tail call i32 @llvm.umax.i32(i32 %.0696.i, i32 %6) ; 7 uses
  %i.abt = icmp ult i32 %..0696.i, 2
  br i1 %i.abt, label %GetOptimum.exit, label %.preheader972.preheader.i

.preheader972.preheader.i:                        ; preds = %bb.de
  store i32 0, ptr %i.eq, align 4, !tbaa !148
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.er, ptr noundef nonnull align 4 dereferenceable(16) %i.dr, i64 16, i1 false)
  %umax1090.i = zext i32 %..0696.i to i64         ; 2 uses
  %i.abu = add i32 %..0696.i, 3
  %i.abv = add i32 %..0696.i, -2
  %xtraiter = and i32 %i.abu, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader972.i.prol.loopexit, label %.preheader972.i.prol

.preheader972.i.prol:                             ; preds = %.preheader972.preheader.i, %.preheader972.i.prol
  %indvars.iv1091.i.prol = phi i64 [ %indvars.iv.next1092.i.prol, %.preheader972.i.prol ], [ %umax1090.i, %.preheader972.preheader.i ] ; 2 uses
  %.0708.i.prol = phi i32 [ %i.abw, %.preheader972.i.prol ], [ %..0696.i, %.preheader972.preheader.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader972.i.prol ], [ 0, %.preheader972.preheader.i ]
  %i.abw = add i32 %.0708.i.prol, -1              ; 2 uses
  %i.abx = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv1091.i.prol
  store i32 1073741824, ptr %i.abx, align 4, !tbaa !157
  %indvars.iv.next1092.i.prol = add nsw i64 %indvars.iv1091.i.prol, -1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader972.i.prol.loopexit, label %.preheader972.i.prol, !llvm.loop !159

.preheader972.i.prol.loopexit:                    ; preds = %.preheader972.i.prol, %.preheader972.preheader.i
  %indvars.iv1091.i.unr = phi i64 [ %umax1090.i, %.preheader972.preheader.i ], [ %indvars.iv.next1092.i.prol, %.preheader972.i.prol ]
  %.0708.i.unr = phi i32 [ %..0696.i, %.preheader972.preheader.i ], [ %i.abw, %.preheader972.i.prol ]
  %i.aby = icmp ult i32 %i.abv, 3
  br i1 %i.aby, label %.preheader971.i, label %.preheader972.i

.preheader972.i:                                  ; preds = %.preheader972.i.prol.loopexit, %.preheader972.i
  %indvars.iv1091.i = phi i64 [ %indvars.iv.next1092.i.3, %.preheader972.i ], [ %indvars.iv1091.i.unr, %.preheader972.i.prol.loopexit ] ; 5 uses
  %.0708.i = phi i32 [ %i.ace, %.preheader972.i ], [ %.0708.i.unr, %.preheader972.i.prol.loopexit ]
  %i.abz = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv1091.i
  store i32 1073741824, ptr %i.abz, align 4, !tbaa !157
  %i.aca = getelementptr [48 x i8], ptr %i.dz, i64 %indvars.iv1091.i
  %i.acb = getelementptr i8, ptr %i.aca, i64 -48
  store i32 1073741824, ptr %i.acb, align 4, !tbaa !157
  %i.acc = getelementptr [48 x i8], ptr %i.dz, i64 %indvars.iv1091.i
  %i.acd = getelementptr i8, ptr %i.acc, i64 -96
  store i32 1073741824, ptr %i.acd, align 4, !tbaa !157
  %i.ace = add i32 %.0708.i, -4                   ; 2 uses
  %i.acf = getelementptr [48 x i8], ptr %i.dz, i64 %indvars.iv1091.i
  %i.acg = getelementptr i8, ptr %i.acf, i64 -144
  store i32 1073741824, ptr %i.acg, align 4, !tbaa !157
  %i.ach = icmp ugt i32 %i.ace, 1
  %indvars.iv.next1092.i.3 = add nsw i64 %indvars.iv1091.i, -4
  br i1 %i.ach, label %.preheader972.i, label %.preheader971.i, !llvm.loop !161

.preheader971.i:                                  ; preds = %.preheader972.i, %.preheader972.i.prol.loopexit
  %i.aci = getelementptr inbounds nuw [1088 x i8], ptr %i.eu, i64 %i.zp ; 4 uses
  %i.acj = icmp ult i32 %storemerge1220.i, 2
  br i1 %i.acj, label %.loopexit970.i, label %GetPureRepPrice.exit.i

GetPureRepPrice.exit.i:                           ; preds = %.preheader971.i
  %invariant.gep.i = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.zp
  %gep.i = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep.i, i64 %i.zn
  %i.ack = load i16, ptr %gep.i, align 2, !tbaa !23
  %i.acl = lshr i16 %i.ack, 4
  %i.acm = xor i16 %i.acl, 127
  %i.acn = zext nneg i16 %i.acm to i64
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.acn
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !4
  %i.acq = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.zn
  %i.acr = load i16, ptr %i.acq, align 2, !tbaa !23
  %i.acs = lshr i16 %i.acr, 4
  %i.act = zext nneg i16 %i.acs to i64
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.act
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !4
  %i.acw = add i32 %i.acp, %i.abb
  %i.acx = add i32 %i.acw, %i.acv
  %i.acy = zext i32 %storemerge1220.i to i64
  br label %bb.df

bb.df:                                            ; preds = %bb.dh, %GetPureRepPrice.exit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.dh ], [ %i.acy, %GetPureRepPrice.exit.i ] ; 3 uses
  %i.acz = getelementptr [4 x i8], ptr %i.aci, i64 %indvars.iv
  %i.ada = getelementptr i8, ptr %i.acz, i64 -8
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !4
  %i.adc = add i32 %i.acx, %i.adb                 ; 2 uses
  %i.add = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv ; 5 uses
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !157
  %i.adf = icmp ult i32 %i.adc, %i.ade
  br i1 %i.adf, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 %i.adc, ptr %i.add, align 4, !tbaa !157
  %i.adg = getelementptr inbounds nuw i8, ptr %i.add, i64 24
  store i32 0, ptr %i.adg, align 4, !tbaa !148
  %i.adh = getelementptr inbounds nuw i8, ptr %i.add, i64 28
  store i32 0, ptr %i.adh, align 4, !tbaa !150
  %i.adi = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  store i32 0, ptr %i.adi, align 4, !tbaa !158
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.adj = and i64 %indvars.iv.next, 4294967294
  %.not562 = icmp eq i64 %i.adj, 0
  br i1 %.not562, label %.loopexit970.i, label %bb.df, !llvm.loop !162

.loopexit970.i:                                   ; preds = %bb.dh, %.preheader971.i
  %i.adk = icmp ult i32 %i.wj, 2
  br i1 %i.adk, label %.loopexit970.1.i, label %GetPureRepPrice.exit.1.i

GetPureRepPrice.exit.1.i:                         ; preds = %.loopexit970.i
  %i.adl = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.zn
  %i.adm = load i16, ptr %i.adl, align 2, !tbaa !23
  %i.adn = lshr i16 %i.adm, 4
  %i.ado = zext nneg i16 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ado
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !4
  %i.adr = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.zn
  %i.ads = load i16, ptr %i.adr, align 2, !tbaa !23
  %i.adt = lshr i16 %i.ads, 4
  %i.adu = xor i16 %i.adt, 127
  %i.adv = zext nneg i16 %i.adu to i64
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.adv
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !4
  %i.ady = add i32 %i.adq, %i.abb
  %i.adz = add i32 %i.ady, %i.adx
  %i.aea = zext i32 %i.wj to i64
  br label %bb.di

bb.di:                                            ; preds = %bb.dk, %GetPureRepPrice.exit.1.i
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %bb.dk ], [ %i.aea, %GetPureRepPrice.exit.1.i ] ; 3 uses
  %i.aeb = getelementptr [4 x i8], ptr %i.aci, i64 %indvars.iv431
  %i.aec = getelementptr i8, ptr %i.aeb, i64 -8
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !4
  %i.aee = add i32 %i.adz, %i.aed                 ; 2 uses
  %i.aef = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv431 ; 5 uses
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !157
  %i.aeh = icmp ult i32 %i.aee, %i.aeg
  br i1 %i.aeh, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i32 %i.aee, ptr %i.aef, align 4, !tbaa !157
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aef, i64 24
  store i32 0, ptr %i.aei, align 4, !tbaa !148
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aef, i64 28
  store i32 1, ptr %i.aej, align 4, !tbaa !150
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  store i32 0, ptr %i.aek, align 4, !tbaa !158
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %indvars.iv.next432 = add nsw i64 %indvars.iv431, -1 ; 2 uses
  %i.ael = and i64 %indvars.iv.next432, 4294967294
  %.not563 = icmp eq i64 %i.ael, 0
  br i1 %.not563, label %.loopexit970.1.i, label %bb.di, !llvm.loop !162

.loopexit970.1.i:                                 ; preds = %bb.dk, %.loopexit970.i
  %i.aem = icmp ult i32 %i.xd, 2
  br i1 %i.aem, label %.loopexit970.2.i, label %GetPureRepPrice.exit.2.i

GetPureRepPrice.exit.2.i:                         ; preds = %.loopexit970.1.i
  %i.aen = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.zn
  %i.aeo = load i16, ptr %i.aen, align 2, !tbaa !23
  %i.aep = lshr i16 %i.aeo, 4
  %i.aeq = xor i16 %i.aep, 127
  %i.aer = zext nneg i16 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.aer
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !4
  %i.aeu = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.zn
  %i.aev = load i16, ptr %i.aeu, align 2, !tbaa !23
  %i.aew = lshr i16 %i.aev, 4
  %i.aex = xor i16 %i.aew, 127
  %i.aey = zext nneg i16 %i.aex to i64
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.aey
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !4
  %i.afb = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %i.zn
  %i.afc = load i16, ptr %i.afb, align 2, !tbaa !23
  %i.afd = lshr i16 %i.afc, 4
  %i.afe = zext nneg i16 %i.afd to i64
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.afe
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !4
  %i.afh = add i32 %i.aet, %i.abb
  %i.afi = add i32 %i.afh, %i.afa
  %i.afj = add i32 %i.afi, %i.afg
  %i.afk = zext i32 %i.xd to i64
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dn, %GetPureRepPrice.exit.2.i
  %indvars.iv435 = phi i64 [ %indvars.iv.next436, %bb.dn ], [ %i.afk, %GetPureRepPrice.exit.2.i ] ; 3 uses
  %i.afl = getelementptr [4 x i8], ptr %i.aci, i64 %indvars.iv435
  %i.afm = getelementptr i8, ptr %i.afl, i64 -8
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !4
  %i.afo = add i32 %i.afj, %i.afn                 ; 2 uses
  %i.afp = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv435 ; 5 uses
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !157
  %i.afr = icmp ult i32 %i.afo, %i.afq
  br i1 %i.afr, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  store i32 %i.afo, ptr %i.afp, align 4, !tbaa !157
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afp, i64 24
  store i32 0, ptr %i.afs, align 4, !tbaa !148
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afp, i64 28
  store i32 2, ptr %i.aft, align 4, !tbaa !150
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afp, i64 8
  store i32 0, ptr %i.afu, align 4, !tbaa !158
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %indvars.iv.next436 = add nsw i64 %indvars.iv435, -1 ; 2 uses
  %i.afv = and i64 %indvars.iv.next436, 4294967294
  %.not564 = icmp eq i64 %i.afv, 0
  br i1 %.not564, label %.loopexit970.2.i, label %bb.dl, !llvm.loop !162

.loopexit970.2.i:                                 ; preds = %bb.dn, %.loopexit970.1.i
  %i.afw = icmp ult i32 %i.xx, 2
  br i1 %i.afw, label %.loopexit970.3.i, label %GetPureRepPrice.exit.3.i

GetPureRepPrice.exit.3.i:                         ; preds = %.loopexit970.2.i
  %i.afx = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.zn
  %i.afy = load i16, ptr %i.afx, align 2, !tbaa !23
  %i.afz = lshr i16 %i.afy, 4
  %i.aga = xor i16 %i.afz, 127
  %i.agb = zext nneg i16 %i.aga to i64
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.agb
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !4
  %i.age = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.zn
  %i.agf = load i16, ptr %i.age, align 2, !tbaa !23
  %i.agg = lshr i16 %i.agf, 4
  %i.agh = xor i16 %i.agg, 127
  %i.agi = zext nneg i16 %i.agh to i64
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.agi
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !4
  %i.agl = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %i.zn
  %i.agm = load i16, ptr %i.agl, align 2, !tbaa !23
  %i.agn = lshr i16 %i.agm, 4
  %i.ago = xor i16 %i.agn, 127
  %i.agp = zext nneg i16 %i.ago to i64
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.agp
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !4
  %i.ags = add i32 %i.agd, %i.abb
  %i.agt = add i32 %i.ags, %i.agk
  %i.agu = add i32 %i.agt, %i.agr
  %i.agv = zext i32 %i.xx to i64
  br label %bb.do

bb.do:                                            ; preds = %bb.dq, %GetPureRepPrice.exit.3.i
  %indvars.iv439 = phi i64 [ %indvars.iv.next440, %bb.dq ], [ %i.agv, %GetPureRepPrice.exit.3.i ] ; 3 uses
  %i.agw = getelementptr [4 x i8], ptr %i.aci, i64 %indvars.iv439
  %i.agx = getelementptr i8, ptr %i.agw, i64 -8
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !4
  %i.agz = add i32 %i.agu, %i.agy                 ; 2 uses
  %i.aha = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv439 ; 5 uses
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !157
  %i.ahc = icmp ult i32 %i.agz, %i.ahb
  br i1 %i.ahc, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  store i32 %i.agz, ptr %i.aha, align 4, !tbaa !157
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  store i32 0, ptr %i.ahd, align 4, !tbaa !148
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.aha, i64 28
  store i32 3, ptr %i.ahe, align 4, !tbaa !150
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  store i32 0, ptr %i.ahf, align 4, !tbaa !158
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %indvars.iv.next440 = add nsw i64 %indvars.iv439, -1 ; 2 uses
  %i.ahg = and i64 %indvars.iv.next440, 4294967294
  %.not565 = icmp eq i64 %i.ahg, 0
  br i1 %.not565, label %.loopexit970.3.i, label %bb.do, !llvm.loop !162

.loopexit970.3.i:                                 ; preds = %bb.dq, %.loopexit970.2.i
  %i.ahh = zext nneg i16 %i.aaw to i64
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ahh
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !4
  %i.ahk = add i32 %i.ahj, %i.aat
  %i.ahl = tail call i32 @llvm.umax.i32(i32 %storemerge1220.i, i32 1)
  %i.ahm = add i32 %i.ahl, 1                      ; 3 uses
  %.not810.i = icmp ugt i32 %i.ahm, %.0696.i
  br i1 %.not810.i, label %.lr.ph1057.i.preheader, label %.preheader969.i

.lr.ph1057.i.preheader:                           ; preds = %bb.dw, %.loopexit970.3.i
  br label %.lr.ph1057.i

.preheader969.i:                                  ; preds = %.loopexit970.3.i, %.preheader969.i
  %.0732.i = phi i32 [ %i.ahr, %.preheader969.i ], [ 0, %.loopexit970.3.i ] ; 3 uses
  %i.ahn = zext i32 %.0732.i to i64
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ahn
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !4
  %i.ahq = icmp ugt i32 %i.ahm, %i.ahp
  %i.ahr = add i32 %.0732.i, 2
  br i1 %i.ahq, label %.preheader969.i, label %.preheader967.i, !llvm.loop !163

.preheader967.i:                                  ; preds = %.preheader969.i
  %i.ahs = getelementptr inbounds nuw [1088 x i8], ptr %i.ev, i64 %i.zp
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dx, %.preheader967.i
  %.1733.i = phi i32 [ %.3735.i, %bb.dx ], [ %.0732.i, %.preheader967.i ] ; 4 uses
  %.1709.i = phi i32 [ %i.ajq, %bb.dx ], [ %i.ahm, %.preheader967.i ] ; 5 uses
  %i.aht = add i32 %.1733.i, 1
  %i.ahu = zext i32 %i.aht to i64
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ahu
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !4 ; 6 uses
  %i.ahx = add i32 %.1709.i, -2                   ; 2 uses
  %i.ahy = zext i32 %i.ahx to i64
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %i.ahy
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !4
  %i.aib = add i32 %i.ahk, %i.aia
  %i.aic = icmp ult i32 %.1709.i, 5
  %i.aid = select i1 %i.aic, i32 %i.ahx, i32 3    ; 2 uses
  %i.aie = icmp ult i32 %i.ahw, 128
  br i1 %i.aie, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.aif = zext i32 %i.aid to i64
  %i.aig = getelementptr inbounds nuw [512 x i8], ptr %i.ez, i64 %i.aif
  %i.aih = zext nneg i32 %i.ahw to i64
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %i.aih
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !4
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %notsub.i = add i32 %i.ahw, -524288
  %isneg.inv.i = icmp slt i32 %notsub.i, 0
  %i.aik = select i1 %isneg.inv.i, i32 6, i32 18  ; 2 uses
  %i.ail = lshr i32 %i.ahw, %i.aik
  %i.aim = zext nneg i32 %i.ail to i64
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.aim
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !21
  %i.aip = zext i8 %i.aio to i32
  %i.aiq = shl nuw nsw i32 %i.aik, 1
  %i.air = add nuw nsw i32 %i.aiq, %i.aip
  %i.ais = and i32 %i.ahw, 15
  %i.ait = zext nneg i32 %i.ais to i64
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ait
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !4
  %i.aiw = zext i32 %i.aid to i64
  %i.aix = getelementptr inbounds nuw [256 x i8], ptr %i.ey, i64 %i.aiw
  %i.aiy = zext nneg i32 %i.air to i64
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %i.aiy
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !4
  %i.ajb = add i32 %i.aja, %i.aiv
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.pn.i = phi i32 [ %i.aij, %bb.ds ], [ %i.ajb, %bb.dt ]
  %.0736.i = add i32 %i.aib, %.pn.i               ; 2 uses
  %i.ajc = zext i32 %.1709.i to i64
  %i.ajd = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.ajc ; 5 uses
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !157
  %i.ajf = icmp ult i32 %.0736.i, %i.aje
  br i1 %i.ajf, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 %.0736.i, ptr %i.ajd, align 4, !tbaa !157
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajd, i64 24
  store i32 0, ptr %i.ajg, align 4, !tbaa !148
  %i.ajh = add i32 %i.ahw, 4
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajd, i64 28
  store i32 %i.ajh, ptr %i.aji, align 4, !tbaa !150
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajd, i64 8
  store i32 0, ptr %i.ajj, align 4, !tbaa !158
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.ajk = zext i32 %.1733.i to i64
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ajk
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !4
  %i.ajn = icmp ne i32 %.1709.i, %i.ajm           ; 2 uses
  %i.ajo = add i32 %.1733.i, 2                    ; 2 uses
  %i.ajp = icmp ne i32 %i.ajo, %.0901.i
  %.not960.i = select i1 %i.ajn, i1 true, i1 %i.ajp
  br i1 %.not960.i, label %bb.dx, label %.lr.ph1057.i.preheader

bb.dx:                                            ; preds = %bb.dw
  %.3735.i = select i1 %i.ajn, i32 %.1733.i, i32 %i.ajo
  %i.ajq = add i32 %.1709.i, 1
  br label %bb.dr

._crit_edge1058.i:                                ; preds = %.thread946.i
  %i.ajr = zext i32 %.16.i to i64
  %i.ajs = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.ajr ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 24
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !148
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajs, i64 28
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !150
  store i32 %.16.i, ptr %i.dx, align 8, !tbaa !87
  br label %bb.dy

bb.dy:                                            ; preds = %bb.eb, %._crit_edge1058.i
  %.046.i.i = phi i32 [ %i.ajw, %._crit_edge1058.i ], [ %i.akm, %bb.eb ]
  %.045.i.i = phi i32 [ %i.aju, %._crit_edge1058.i ], [ %i.akl, %bb.eb ] ; 4 uses
  %.0.i845.i = phi i32 [ %.16.i, %._crit_edge1058.i ], [ %.045.i.i, %bb.eb ] ; 2 uses
  %i.ajx = zext i32 %.0.i845.i to i64
  %i.ajy = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.ajx ; 3 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 8
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !158
  %.not.i846.i = icmp eq i32 %i.aka, 0
  %.phi.trans.insert.i.i = zext i32 %.045.i.i to i64
  %.phi.trans.insert49.i.i = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %.phi.trans.insert.i.i ; 4 uses
  %.phi.trans.insert50.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i.i, i64 28 ; 2 uses
  br i1 %.not.i846.i, label %._crit_edge.i.i, label %bb.dz

._crit_edge.i.i:                                  ; preds = %bb.dy
  %.pre.i.i = load i32, ptr %.phi.trans.insert50.i.i, align 4, !tbaa !150
  %.phi.trans.insert53.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i.i, i64 24
  %.pre54.i.i = load i32, ptr %.phi.trans.insert53.i.i, align 4, !tbaa !148
  br label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %i.akb = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i.i, i64 8
  store i32 0, ptr %i.akb, align 4, !tbaa !158
  %i.akc = add i32 %.045.i.i, -1                  ; 3 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajy, i64 12
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !164
  %.not47.i.i = icmp eq i32 %i.ake, 0
  br i1 %.not47.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.akf = zext i32 %i.akc to i64
  %i.akg = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.akf ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 8
  store i32 0, ptr %i.akh, align 4, !tbaa !158
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajy, i64 16
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akg, i64 24
  %i.akk = load <2 x i32>, ptr %i.aki, align 4, !tbaa !4
  store <2 x i32> %i.akk, ptr %i.akj, align 4, !tbaa !4
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %._crit_edge.i.i
  %i.akl = phi i32 [ %.pre54.i.i, %._crit_edge.i.i ], [ %i.akc, %bb.dz ], [ %i.akc, %bb.ea ]
  %i.akm = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ -1, %bb.dz ], [ -1, %bb.ea ]
  %i.akn = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i.i, i64 24
  store i32 %.046.i.i, ptr %.phi.trans.insert50.i.i, align 4, !tbaa !150
  store i32 %.0.i845.i, ptr %i.akn, align 4, !tbaa !148
  %.not48.i.i = icmp eq i32 %.045.i.i, 0
  br i1 %.not48.i.i, label %Backward.exit.i, label %bb.dy, !llvm.loop !165

Backward.exit.i:                                  ; preds = %bb.eb
  %i.ako = load i32, ptr %i.fc, align 8, !tbaa !150
  %i.akp = load i32, ptr %i.fd, align 4, !tbaa !148 ; 2 uses
end_hunk_0
begin_hunk_1_@LzmaEnc_CodeOneBlock:bb.a
  %i.bly = load i8, ptr %i.blx, align 1, !tbaa !21
  %i.blz = zext i8 %i.bly to i32
  %i.bma = getelementptr inbounds nuw i8, ptr %i.bkj, i64 %i.blw
  %i.bmb = load i8, ptr %i.bma, align 1, !tbaa !21
  %i.bmc = zext i8 %i.bmb to i32
  %i.bmd = or disjoint i32 %i.blz, 256
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gm, %bb.gl
  %.017.i889.i = phi i32 [ %i.bmc, %bb.gl ], [ %i.bme, %bb.gm ]
  %.016.i890.i = phi i32 [ %i.bmd, %bb.gl ], [ %i.bmt, %bb.gm ] ; 4 uses
  %.015.i891.i = phi i32 [ 0, %bb.gl ], [ %i.bms, %bb.gm ]
  %.0.i892.i = phi i32 [ 256, %bb.gl ], [ %i.bmw, %bb.gm ] ; 3 uses
  %i.bme = shl i32 %.017.i889.i, 1                ; 3 uses
  %i.bmf = and i32 %.0.i892.i, %i.bme
  %i.bmg = lshr i32 %.016.i890.i, 8
  %i.bmh = add nuw nsw i32 %.0.i892.i, %i.bmg
  %i.bmi = add nuw nsw i32 %i.bmh, %i.bmf
  %i.bmj = zext nneg i32 %i.bmi to i64
  %i.bmk = getelementptr inbounds nuw [2 x i8], ptr %i.blv, i64 %i.bmj
  %i.bml = load i16, ptr %i.bmk, align 2, !tbaa !23
  %i.bmm = zext i16 %i.bml to i64
  %.mask.i893.i = and i32 %.016.i890.i, 128
  %isneg.not.i894.i = icmp eq i32 %.mask.i893.i, 0
  %i.bmn = select i1 %isneg.not.i894.i, i64 0, i64 2032
  %i.bmo = xor i64 %i.bmn, %i.bmm
  %i.bmp = lshr i64 %i.bmo, 4
  %i.bmq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.bmp
  %i.bmr = load i32, ptr %i.bmq, align 4, !tbaa !4
  %i.bms = add i32 %i.bmr, %.015.i891.i           ; 2 uses
  %i.bmt = shl nuw nsw i32 %.016.i890.i, 1        ; 2 uses
  %i.bmu = xor i32 %i.bme, %i.bmt
  %i.bmv = xor i32 %i.bmu, -1
  %i.bmw = and i32 %.0.i892.i, %i.bmv
  %i.bmx = icmp samesign ult i32 %.016.i890.i, 32768
  br i1 %i.bmx, label %bb.gm, label %LitEnc_GetPriceMatched.exit895.i, !llvm.loop !168

LitEnc_GetPriceMatched.exit895.i:                 ; preds = %bb.gm
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr @kLiteralNextStates, i64 %i.bkz
  %i.bmz = load i32, ptr %i.bmy, align 4, !tbaa !4
  %i.bna = add i32 %i.bky, 1
  %i.bnb = and i32 %i.bna, %i.bkx
  %i.bnc = zext i32 %i.bmz to i64                 ; 4 uses
  %i.bnd = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.bnc
  %i.bne = zext i32 %i.bnb to i64                 ; 3 uses
  %i.bnf = getelementptr inbounds nuw [2 x i8], ptr %i.bnd, i64 %i.bne
  %i.bng = load i16, ptr %i.bnf, align 2, !tbaa !23
  %i.bnh = lshr i16 %i.bng, 4
  %i.bni = xor i16 %i.bnh, 127
  %i.bnj = zext nneg i16 %i.bni to i64
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.bnj
  %i.bnl = load i32, ptr %i.bnk, align 4, !tbaa !4
  %i.bnm = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.bnc
  %i.bnn = load i16, ptr %i.bnm, align 2, !tbaa !23
  %i.bno = lshr i16 %i.bnn, 4
  %i.bnp = xor i16 %i.bno, 127
  %i.bnq = zext nneg i16 %i.bnp to i64
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.bnq
  %i.bns = load i32, ptr %i.bnr, align 4, !tbaa !4
  %i.bnt = add i32 %i.bjt, 1                      ; 2 uses
  %i.bnu = add i32 %i.bkt, %i.bnt                 ; 2 uses
  %i.bnv = icmp ult i32 %.10.i, %i.bnu
  br i1 %i.bnv, label %.lr.ph1047.preheader.i, label %._crit_edge1048.i

.lr.ph1047.preheader.i:                           ; preds = %LitEnc_GetPriceMatched.exit895.i
  %i.bnw = zext i32 %.10.i to i64                 ; 4 uses
  %i.bnx = add i32 %.0704.lcssa.i, %i.akr         ; 3 uses
  %wide.trip.count1165.i = zext i32 %i.bnx to i64 ; 3 uses
  %i.bny = sub nsw i64 %wide.trip.count1165.i, %i.bnw
  %xtraiter673 = and i64 %i.bny, 3                ; 2 uses
  %lcmp.mod674.not = icmp eq i64 %xtraiter673, 0
  br i1 %lcmp.mod674.not, label %.lr.ph1047.i.prol.loopexit, label %.lr.ph1047.i.prol

.lr.ph1047.i.prol:                                ; preds = %.lr.ph1047.preheader.i, %.lr.ph1047.i.prol
  %indvars.iv1161.i.prol = phi i64 [ %indvars.iv.next1162.i.prol, %.lr.ph1047.i.prol ], [ %i.bnw, %.lr.ph1047.preheader.i ]
  %prol.iter675 = phi i64 [ %prol.iter675.next, %.lr.ph1047.i.prol ], [ 0, %.lr.ph1047.preheader.i ]
  %indvars.iv.next1162.i.prol = add nuw nsw i64 %indvars.iv1161.i.prol, 1 ; 3 uses
  %i.bnz = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv.next1162.i.prol
  store i32 1073741824, ptr %i.bnz, align 4, !tbaa !157
  %prol.iter675.next = add i64 %prol.iter675, 1   ; 2 uses
  %prol.iter675.cmp.not = icmp eq i64 %prol.iter675.next, %xtraiter673
  br i1 %prol.iter675.cmp.not, label %.lr.ph1047.i.prol.loopexit, label %.lr.ph1047.i.prol, !llvm.loop !185

.lr.ph1047.i.prol.loopexit:                       ; preds = %.lr.ph1047.i.prol, %.lr.ph1047.preheader.i
  %indvars.iv1161.i.unr = phi i64 [ %i.bnw, %.lr.ph1047.preheader.i ], [ %indvars.iv.next1162.i.prol, %.lr.ph1047.i.prol ]
  %i.boa = sub nsw i64 %i.bnw, %wide.trip.count1165.i
  %i.bob = icmp ugt i64 %i.boa, -4
  br i1 %i.bob, label %._crit_edge1048.i, label %.lr.ph1047.i

.lr.ph1047.i:                                     ; preds = %.lr.ph1047.i.prol.loopexit, %.lr.ph1047.i
  %indvars.iv1161.i = phi i64 [ %indvars.iv.next1162.i.3, %.lr.ph1047.i ], [ %indvars.iv1161.i.unr, %.lr.ph1047.i.prol.loopexit ] ; 4 uses
  %i.boc = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv1161.i
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 48
  store i32 1073741824, ptr %i.bod, align 4, !tbaa !157
  %i.boe = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv1161.i
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boe, i64 96
  store i32 1073741824, ptr %i.bof, align 4, !tbaa !157
  %i.bog = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv1161.i
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 144
  store i32 1073741824, ptr %i.boh, align 4, !tbaa !157
  %indvars.iv.next1162.i.3 = add nuw nsw i64 %indvars.iv1161.i, 4 ; 3 uses
  %i.boi = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv.next1162.i.3
  store i32 1073741824, ptr %i.boi, align 4, !tbaa !157
  %exitcond1166.not.i.3 = icmp eq i64 %indvars.iv.next1162.i.3, %wide.trip.count1165.i
  br i1 %exitcond1166.not.i.3, label %._crit_edge1048.i, label %.lr.ph1047.i, !llvm.loop !186

._crit_edge1048.i:                                ; preds = %.lr.ph1047.i.prol.loopexit, %.lr.ph1047.i, %LitEnc_GetPriceMatched.exit895.i
  %.11.lcssa.i = phi i32 [ %.10.i, %LitEnc_GetPriceMatched.exit895.i ], [ %i.bnx, %.lr.ph1047.i ], [ %i.bnx, %.lr.ph1047.i.prol.loopexit ] ; 2 uses
  %i.boj = getelementptr inbounds nuw [1088 x i8], ptr %i.eu, i64 %i.bne
  %i.bok = add i32 %i.bkt, -2
  %i.bol = zext i32 %i.bok to i64
  %i.bom = getelementptr inbounds nuw [4 x i8], ptr %i.boj, i64 %i.bol
  %i.bon = load i32, ptr %i.bom, align 4, !tbaa !4
  %i.boo = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.bnc
  %i.bop = load i16, ptr %i.boo, align 2, !tbaa !23
  %i.boq = lshr i16 %i.bop, 4
  %i.bor = zext nneg i16 %i.boq to i64
  %i.bos = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.bor
  %i.bot = load i32, ptr %i.bos, align 4, !tbaa !4
  %i.bou = getelementptr inbounds nuw [32 x i8], ptr %i.ep, i64 %i.bnc
  %i.bov = getelementptr inbounds nuw [2 x i8], ptr %i.bou, i64 %i.bne
  %i.bow = load i16, ptr %i.bov, align 2, !tbaa !23
  %i.box = lshr i16 %i.bow, 4
  %i.boy = xor i16 %i.box, 127
  %i.boz = zext nneg i16 %i.boy to i64
  %i.bpa = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.boz
  %i.bpb = load i32, ptr %i.bpa, align 4, !tbaa !4
  %i.bpc = add i32 %i.blh, %.0711.i
  %i.bpd = add i32 %i.bpc, %i.bms
  %i.bpe = add i32 %i.bpd, %i.bnl
  %i.bpf = add i32 %i.bpe, %i.bns
  %i.bpg = add i32 %i.bpf, %i.bon
  %i.bph = add i32 %i.bpg, %i.bot
  %i.bpi = add i32 %i.bph, %i.bpb                 ; 2 uses
  %i.bpj = zext i32 %i.bnu to i64
  %i.bpk = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.bpj ; 8 uses
  %i.bpl = load i32, ptr %i.bpk, align 4, !tbaa !157
  %i.bpm = icmp ult i32 %i.bpi, %i.bpl
  br i1 %i.bpm, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %._crit_edge1048.i
  store i32 %i.bpi, ptr %i.bpk, align 4, !tbaa !157
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpk, i64 24
  store i32 %i.bnt, ptr %i.bpn, align 4, !tbaa !148
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpk, i64 28
  store i32 0, ptr %i.bpo, align 4, !tbaa !150
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpk, i64 8
  store i32 1, ptr %i.bpp, align 4, !tbaa !158
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpk, i64 12
  store i32 1, ptr %i.bpq, align 4, !tbaa !164
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpk, i64 16
  store i32 %i.akr, ptr %i.bpr, align 4, !tbaa !166
  %i.bps = add i32 %.0722.i, 4
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bpk, i64 20
  store i32 %i.bps, ptr %i.bpt, align 4, !tbaa !167
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %._crit_edge1048.i, %.critedge8.i
  %.12.i = phi i32 [ %.10.i, %.critedge8.i ], [ %.11.lcssa.i, %bb.gn ], [ %.11.lcssa.i, %._crit_edge1048.i ] ; 3 uses
  %i.bpu = add i32 %.1727.i, 2                    ; 3 uses
  %.not827.i = icmp eq i32 %i.bpu, %.0900.i
  br i1 %.not827.i, label %.thread946.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.bpv = add i32 %.1727.i, 3
  %i.bpw = zext i32 %i.bpv to i64
  %i.bpx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.bpw
  %i.bpy = load i32, ptr %i.bpx, align 4, !tbaa !4 ; 5 uses
  %i.bpz = icmp ugt i32 %i.bpy, 127
  br i1 %i.bpz, label %bb.gq, label %.thread929.i

bb.gq:                                            ; preds = %bb.gp
  %notsub825.i = add i32 %i.bpy, -524288
  %isneg.inv826.i = icmp slt i32 %notsub825.i, 0
  %i.bqa = select i1 %isneg.inv826.i, i32 6, i32 18 ; 2 uses
  %i.bqb = lshr i32 %i.bpy, %i.bqa
  %i.bqc = zext nneg i32 %i.bqb to i64
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.bqc
  %i.bqe = load i8, ptr %i.bqd, align 1, !tbaa !21
  %i.bqf = zext i8 %i.bqe to i32
  %i.bqg = shl nuw nsw i32 %i.bqa, 1
  %i.bqh = add nuw nsw i32 %i.bqg, %i.bqf
  br label %.thread929.i

.thread929.i:                                     ; preds = %bb.gi, %bb.gq, %bb.gp
  %.14938.i = phi i32 [ %.12.i, %bb.gp ], [ %.12.i, %bb.gq ], [ %.10.i, %bb.gi ]
  %.4721937.i = phi i32 [ %.0717.i, %bb.gp ], [ %i.bqh, %bb.gq ], [ %.0717.i, %bb.gi ]
  %.3725936.i = phi i32 [ %i.bpy, %bb.gp ], [ %i.bpy, %bb.gq ], [ %.0722.i, %bb.gi ]
  %.3729935.i = phi i32 [ %i.bpu, %bb.gp ], [ %i.bpu, %bb.gq ], [ %.1727.i, %bb.gi ]
  %indvars.iv.next459 = add i32 %indvars.iv458, 1
  br label %bb.gd

.thread946.i:                                     ; preds = %bb.go, %bb.fz, %bb.fb
  %.16.i = phi i32 [ %.8.i, %bb.fz ], [ %.07051054.i, %bb.fb ], [ %.12.i, %bb.go ] ; 5 uses
  %i.bqi = add i32 %i.akr, 1                      ; 2 uses
  %i.bqj = icmp eq i32 %i.bqi, %.16.i
  %indvars.iv.next444 = add i32 %indvars.iv443, -1
  br i1 %i.bqj, label %._crit_edge1058.i, label %.lr.ph1057.i

GetOptimum.exit:                                  ; preds = %bb.de, %bb.cx, %bb.cc, %bb.bv, %bb.cs, %bb.ct, %bb.cv, %bb.cw, %Backward.exit.i, %Backward.exit871.i
  %.3343 = phi i32 [ %i.ti, %bb.bv ], [ -1, %bb.cc ], [ -1, %bb.cx ], [ %i.ako, %Backward.exit.i ], [ %i.ana, %Backward.exit871.i ], [ %i.yi, %bb.cv ], [ %i.yi, %bb.cw ], [ %.2699.3.i.a, %bb.cs ], [ %.2699.3.i.a, %bb.ct ], [ %i.abs, %bb.de ]
  %.2.i = phi i32 [ %i.tg, %bb.bv ], [ 1, %bb.cc ], [ 1, %bb.cx ], [ %i.akp, %Backward.exit.i ], [ %i.anb, %Backward.exit871.i ], [ 1, %bb.cv ], [ %.0696.i, %bb.cw ], [ 1, %bb.cs ], [ %6, %bb.ct ], [ 1, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %GetOptimumFast.exit

GetOptimumFast.exit.thread:                       ; preds = %.split255.us.i, %.split232.us.i
  %.0.ph = phi i32 [ %.us-phi.i, %.split232.us.i ], [ %i.su, %.split255.us.i ]
  %i.bqk = phi i1 [ true, %.split232.us.i ], [ false, %.split255.us.i ]
  %.0205.ph = phi i32 [ 1, %.split232.us.i ], [ 2, %.split255.us.i ]
  %i.bql = load i32, ptr %i.dv, align 4, !tbaa !90
  %i.bqm = and i32 %i.bql, %.2199
  br label %bb.hf

GetOptimumFast.exit:                              ; preds = %bb.bj, %bb.bl, %bb.bn, %bb.bp, %MovePos.exit.sink.split.i, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bg, %bb.bf, %bb.be, %bb.az, %bb.aq, %bb.x, %GetOptimum.exit
  %.0 = phi i32 [ %.3343, %GetOptimum.exit ], [ -1, %bb.x ], [ %.1341, %MovePos.exit.sink.split.i ], [ -1, %bb.az ], [ -1, %bb.bl ], [ -1, %bb.bn ], [ -1, %bb.bp ], [ -1, %bb.bg ], [ %i.ly, %bb.aq ], [ -1, %bb.bq ], [ -1, %bb.br ], [ -1, %bb.bs ], [ -1, %bb.bt ], [ -1, %bb.be ], [ -1, %bb.bf ], [ -1, %bb.bj ] ; 2 uses
  %.0205 = phi i32 [ %.2.i, %GetOptimum.exit ], [ 1, %bb.x ], [ %.6.ph.i, %MovePos.exit.sink.split.i ], [ 1, %bb.az ], [ 1, %bb.bl ], [ 1, %bb.bn ], [ 1, %bb.bp ], [ 1, %bb.bg ], [ 1, %bb.aq ], [ 1, %bb.bq ], [ 1, %bb.br ], [ 1, %bb.bs ], [ 1, %bb.bt ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 1, %bb.bj ] ; 2 uses
  %i.bqn = load i32, ptr %i.dv, align 4, !tbaa !90
  %i.bqo = and i32 %i.bqn, %.2199                 ; 2 uses
  %i.bqp = icmp eq i32 %.0205, 1                  ; 2 uses
  %i.bqq = icmp eq i32 %.0, -1
  %or.cond = select i1 %i.bqp, i1 %i.bqq, i1 false
  br i1 %or.cond, label %bb.gr, label %bb.hf

bb.gr:                                            ; preds = %GetOptimumFast.exit
  %i.bqr = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.bqs = zext i32 %i.bqr to i64
  %i.bqt = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.bqs
  %i.bqu = zext i32 %i.bqo to i64
  %i.bqv = getelementptr inbounds nuw [2 x i8], ptr %i.bqt, i64 %i.bqu ; 2 uses
  %i.bqw = load i16, ptr %i.bqv, align 2, !tbaa !23 ; 2 uses
  %i.bqx = zext i16 %i.bqw to i32                 ; 2 uses
  %i.bqy = load i32, ptr %i.fe, align 8, !tbaa !76
  %i.bqz = lshr i32 %i.bqy, 11
  %i.bra = mul i32 %i.bqz, %i.bqx                 ; 3 uses
  %i.brb = sub nsw i32 2048, %i.bqx
  %i.brc = lshr i32 %i.brb, 5
  store i32 %i.bra, ptr %i.fe, align 8, !tbaa !76
  %i.brd = trunc i32 %i.brc to i16
  %i.bre = add i16 %i.bqw, %i.brd
  store i16 %i.bre, ptr %i.bqv, align 2, !tbaa !23
  %i.brf = icmp ult i32 %i.bra, 16777216
  br i1 %i.brf, label %bb.gs, label %RangeEnc_EncodeBit.exit267

bb.gs:                                            ; preds = %bb.gr
  %i.brg = shl nuw i32 %i.bra, 8
  store i32 %i.brg, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit267

RangeEnc_EncodeBit.exit267:                       ; preds = %bb.gr, %bb.gs
  %i.brh = load ptr, ptr %i.dq, align 8, !tbaa !122
  %i.bri = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.brj = tail call ptr %i.brh(ptr noundef %i.bri) #14
  %i.brk = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.brl = zext i32 %i.brk to i64
  %i.brm = sub nsw i64 0, %i.brl
  %i.brn = getelementptr inbounds i8, ptr %i.brj, i64 %i.brm ; 3 uses
  %i.bro = load i8, ptr %i.brn, align 1, !tbaa !21
  %i.brp = load ptr, ptr %i.ef, align 8, !tbaa !48
  %i.brq = load i32, ptr %i.eg, align 8, !tbaa !91
  %i.brr = and i32 %i.brq, %.2199
  %i.brs = load i32, ptr %i.eh, align 4, !tbaa !53 ; 2 uses
  %i.brt = shl i32 %i.brr, %i.brs
  %i.bru = getelementptr inbounds i8, ptr %i.brn, i64 -1
  %i.brv = load i8, ptr %i.bru, align 1, !tbaa !21
  %i.brw = zext i8 %i.brv to i32
  %i.brx = sub i32 8, %i.brs
  %i.bry = lshr i32 %i.brw, %i.brx
  %i.brz = add i32 %i.bry, %i.brt
  %i.bsa = mul i32 %i.brz, 768
  %i.bsb = zext i32 %i.bsa to i64
  %i.bsc = getelementptr inbounds nuw [2 x i8], ptr %i.brp, i64 %i.bsb ; 2 uses
  %i.bsd = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.bse = icmp ult i32 %i.bsd, 7
  %i.bsf = zext i8 %i.bro to i32                  ; 2 uses
  br i1 %i.bse, label %bb.gt, label %bb.gz

bb.gt:                                            ; preds = %RangeEnc_EncodeBit.exit267
  %i.bsg = or disjoint i32 %i.bsf, 256
  br label %bb.gu

bb.gu:                                            ; preds = %RangeEnc_EncodeBit.exit.i271, %bb.gt
  %.0.i268 = phi i32 [ %i.bsg, %bb.gt ], [ %i.btd, %RangeEnc_EncodeBit.exit.i271 ] ; 4 uses
  %i.bsh = lshr i32 %.0.i268, 8
  %i.bsi = zext nneg i32 %i.bsh to i64
  %i.bsj = getelementptr inbounds nuw [2 x i8], ptr %i.bsc, i64 %i.bsi ; 2 uses
  %i.bsk = load i16, ptr %i.bsj, align 2, !tbaa !23
  %i.bsl = zext i16 %i.bsk to i32                 ; 5 uses
  %i.bsm = load i32, ptr %i.fe, align 8, !tbaa !76 ; 2 uses
  %i.bsn = lshr i32 %i.bsm, 11
  %i.bso = mul i32 %i.bsn, %i.bsl                 ; 3 uses
  %i.bsp = and i32 %.0.i268, 128
  %i.bsq = icmp eq i32 %i.bsp, 0
  br i1 %i.bsq, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.bsr = sub nsw i32 2048, %i.bsl
  %i.bss = lshr i32 %i.bsr, 5
  %i.bst = add nuw nsw i32 %i.bss, %i.bsl
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gu
  %i.bsu = zext i32 %i.bso to i64
  %i.bsv = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.bsw = add i64 %i.bsv, %i.bsu
  store i64 %i.bsw, ptr %i.ff, align 8, !tbaa !75
  %i.bsx = sub i32 %i.bsm, %i.bso
  %i.bsy = lshr i32 %i.bsl, 5
  %i.bsz = sub nsw i32 %i.bsl, %i.bsy
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.sink.i.i269 = phi i32 [ %i.bso, %bb.gv ], [ %i.bsx, %bb.gw ] ; 3 uses
  %.0.i.i270 = phi i32 [ %i.bst, %bb.gv ], [ %i.bsz, %bb.gw ]
  store i32 %.sink.i.i269, ptr %i.fe, align 8, !tbaa !76
  %i.bta = trunc i32 %.0.i.i270 to i16
  store i16 %i.bta, ptr %i.bsj, align 2, !tbaa !23
  %i.btb = icmp ult i32 %.sink.i.i269, 16777216
  br i1 %i.btb, label %bb.gy, label %RangeEnc_EncodeBit.exit.i271

bb.gy:                                            ; preds = %bb.gx
  %i.btc = shl nuw i32 %.sink.i.i269, 8
  store i32 %i.btc, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit.i271

RangeEnc_EncodeBit.exit.i271:                     ; preds = %bb.gy, %bb.gx
  %i.btd = shl nuw nsw i32 %.0.i268, 1
  %i.bte = icmp samesign ult i32 %.0.i268, 32768
  br i1 %i.bte, label %bb.gu, label %LitEnc_Encode.exit272, !llvm.loop !138

bb.gz:                                            ; preds = %RangeEnc_EncodeBit.exit267
  %i.btf = load i32, ptr %i.dr, align 8, !tbaa !4
  %i.btg = zext i32 %i.btf to i64
  %i.bth = sub nsw i64 0, %i.btg
  %i.bti = getelementptr inbounds i8, ptr %i.brn, i64 %i.bth
  %i.btj = getelementptr inbounds i8, ptr %i.bti, i64 -1
  %i.btk = load i8, ptr %i.btj, align 1, !tbaa !21
  %i.btl = zext i8 %i.btk to i32
  %i.btm = or disjoint i32 %i.bsf, 256
  br label %bb.ha

bb.ha:                                            ; preds = %RangeEnc_EncodeBit.exit.i276, %bb.gz
  %.014.i = phi i32 [ %i.btm, %bb.gz ], [ %i.bun, %RangeEnc_EncodeBit.exit.i276 ] ; 4 uses
  %.013.i = phi i32 [ %i.btl, %bb.gz ], [ %i.btn, %RangeEnc_EncodeBit.exit.i276 ]
  %.0.i273 = phi i32 [ 256, %bb.gz ], [ %i.buq, %RangeEnc_EncodeBit.exit.i276 ] ; 3 uses
  %i.btn = shl i32 %.013.i, 1                     ; 3 uses
  %i.bto = and i32 %i.btn, %.0.i273
  %i.btp = lshr i32 %.014.i, 8
  %i.btq = add nuw nsw i32 %.0.i273, %i.btp
  %i.btr = add nuw nsw i32 %i.btq, %i.bto
  %i.bts = zext nneg i32 %i.btr to i64
  %i.btt = getelementptr inbounds nuw [2 x i8], ptr %i.bsc, i64 %i.bts ; 2 uses
  %i.btu = load i16, ptr %i.btt, align 2, !tbaa !23
  %i.btv = zext i16 %i.btu to i32                 ; 5 uses
  %i.btw = load i32, ptr %i.fe, align 8, !tbaa !76 ; 2 uses
  %i.btx = lshr i32 %i.btw, 11
  %i.bty = mul i32 %i.btx, %i.btv                 ; 3 uses
  %i.btz = and i32 %.014.i, 128
  %i.bua = icmp eq i32 %i.btz, 0
  br i1 %i.bua, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.bub = sub nsw i32 2048, %i.btv
  %i.buc = lshr i32 %i.bub, 5
  %i.bud = add nuw nsw i32 %i.buc, %i.btv
  br label %bb.hd

bb.hc:                                            ; preds = %bb.ha
  %i.bue = zext i32 %i.bty to i64
  %i.buf = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.bug = add i64 %i.buf, %i.bue
  store i64 %i.bug, ptr %i.ff, align 8, !tbaa !75
  %i.buh = sub i32 %i.btw, %i.bty
  %i.bui = lshr i32 %i.btv, 5
  %i.buj = sub nsw i32 %i.btv, %i.bui
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.sink.i.i274 = phi i32 [ %i.bty, %bb.hb ], [ %i.buh, %bb.hc ] ; 3 uses
  %.0.i.i275 = phi i32 [ %i.bud, %bb.hb ], [ %i.buj, %bb.hc ]
  store i32 %.sink.i.i274, ptr %i.fe, align 8, !tbaa !76
  %i.buk = trunc i32 %.0.i.i275 to i16
  store i16 %i.buk, ptr %i.btt, align 2, !tbaa !23
  %i.bul = icmp ult i32 %.sink.i.i274, 16777216
  br i1 %i.bul, label %bb.he, label %RangeEnc_EncodeBit.exit.i276

bb.he:                                            ; preds = %bb.hd
  %i.bum = shl nuw i32 %.sink.i.i274, 8
  store i32 %i.bum, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit.i276

RangeEnc_EncodeBit.exit.i276:                     ; preds = %bb.he, %bb.hd
  %i.bun = shl nuw nsw i32 %.014.i, 1             ; 2 uses
  %i.buo = xor i32 %i.bun, %i.btn
  %i.bup = xor i32 %i.buo, -1
  %i.buq = and i32 %.0.i273, %i.bup
  %i.bur = icmp samesign ult i32 %.014.i, 32768
  br i1 %i.bur, label %bb.ha, label %LitEnc_Encode.exit272, !llvm.loop !187

end_hunk_1
