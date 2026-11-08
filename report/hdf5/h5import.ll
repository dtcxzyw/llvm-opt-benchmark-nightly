Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5import?download=true
inline.NumInlined: 47
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@main:bb.a
  %.169108.i.i.i = phi ptr [ %i.tw, %bb.cy ], [ %i.tn, %.preheader84.i.i.i ] ; 2 uses
  %i.tt = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.je, ptr noundef nonnull @.str.497, ptr noundef %.169108.i.i.i) #20
  %.not78.i.i.i = icmp eq i32 %i.tt, 1
  br i1 %.not78.i.i.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph110.i.i.i
  %i.tu = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite79.i.i.i = call i64 @fwrite(ptr nonnull @.str.495, i64 37, i64 1, ptr %i.tu) ; 0 uses
  br label %bb.dl

bb.cy:                                            ; preds = %.lr.ph110.i.i.i
  %i.tv = add nuw i64 %.1109.i.i.i, 1             ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.169108.i.i.i, i64 4
  %exitcond130.not.i.i.i = icmp eq i64 %i.tv, %.063.lcssa.i.i.i
  br i1 %exitcond130.not.i.i.i, label %readFloatData.exit.thread.i.i, label %.lr.ph110.i.i.i, !llvm.loop !65

.lr.ph107.i.i.i:                                  ; preds = %.preheader86.i.i.i, %bb.da
  %.2106.i.i.i = phi i64 [ %i.ua, %bb.da ], [ 0, %.preheader86.i.i.i ]
  %.067105.i.i.i = phi ptr [ %i.ub, %bb.da ], [ %i.tn, %.preheader86.i.i.i ] ; 2 uses
  %i.tx = call i64 @fread(ptr noundef nonnull %i.t, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.je)
  %.not76.i.i.i = icmp eq i64 %i.tx, 1
  br i1 %.not76.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph107.i.i.i
  %i.ty = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite77.i.i.i = call i64 @fwrite(ptr nonnull @.str.495, i64 37, i64 1, ptr %i.ty) ; 0 uses
  br label %bb.dl

bb.da:                                            ; preds = %.lr.ph107.i.i.i
  %i.tz = load i32, ptr %i.t, align 4, !tbaa !15
  store i32 %i.tz, ptr %.067105.i.i.i, align 4, !tbaa !15
  %i.ua = add nuw i64 %.2106.i.i.i, 1             ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.067105.i.i.i, i64 4
  %exitcond129.not.i.i.i = icmp eq i64 %i.ua, %.063.lcssa.i.i.i
  br i1 %exitcond129.not.i.i.i, label %readFloatData.exit.thread.i.i, label %.lr.ph107.i.i.i, !llvm.loop !66

bb.db:                                            ; preds = %bb.cu
  %i.uc = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite82.i.i.i = call i64 @fwrite(ptr nonnull @.str.487, i64 31, i64 1, ptr %i.uc) ; 0 uses
  br label %bb.dl

bb.dc:                                            ; preds = %._crit_edge.i67.i.i
  %i.ud = getelementptr inbounds nuw i8, ptr %i.is, i64 5696
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !103 ; 3 uses
  %i.uf = load i32, ptr %i.jc, align 4, !tbaa !20
  switch i32 %i.uf, label %bb.dj [
    i32 1, label %.preheader88.i.i.i
    i32 2, label %.preheader90.i.i.i
    i32 3, label %.preheader92.i.i.i
  ]

.preheader92.i.i.i:                               ; preds = %bb.dc
  %.not114.i.i.i = icmp eq i64 %.063.lcssa.i.i.i, 0
  br i1 %.not114.i.i.i, label %readFloatData.exit.thread.i.i, label %.lr.ph98.i.i.i

.preheader90.i.i.i:                               ; preds = %bb.dc
  %.not115.i.i.i = icmp eq i64 %.063.lcssa.i.i.i, 0
  br i1 %.not115.i.i.i, label %readFloatData.exit.thread.i.i, label %.lr.ph101.i.i.i

.preheader88.i.i.i:                               ; preds = %bb.dc
  %.not116.i.i.i = icmp eq i64 %.063.lcssa.i.i.i, 0
  br i1 %.not116.i.i.i, label %readFloatData.exit.thread.i.i, label %.lr.ph104.i.i.i

.lr.ph104.i.i.i:                                  ; preds = %.preheader88.i.i.i, %bb.de
  %.3103.i.i.i = phi i64 [ %i.ui, %bb.de ], [ 0, %.preheader88.i.i.i ]
  %.065102.i.i.i = phi ptr [ %i.uj, %bb.de ], [ %i.ue, %.preheader88.i.i.i ] ; 2 uses
  %i.ug = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.je, ptr noundef nonnull @.str.498, ptr noundef %.065102.i.i.i) #20
  %.not73.i.i.i = icmp eq i32 %i.ug, 1
  br i1 %.not73.i.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph104.i.i.i
  %i.uh = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite74.i.i.i = call i64 @fwrite(ptr nonnull @.str.495, i64 37, i64 1, ptr %i.uh) ; 0 uses
  br label %bb.dl

bb.de:                                            ; preds = %.lr.ph104.i.i.i
  %i.ui = add nuw i64 %.3103.i.i.i, 1             ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.065102.i.i.i, i64 8
  %exitcond128.not.i.i.i = icmp eq i64 %i.ui, %.063.lcssa.i.i.i
  br i1 %exitcond128.not.i.i.i, label %readFloatData.exit.thread.i.i, label %.lr.ph104.i.i.i, !llvm.loop !67

.lr.ph101.i.i.i:                                  ; preds = %.preheader90.i.i.i, %bb.dg
  %.4100.i.i.i = phi i64 [ %i.um, %bb.dg ], [ 0, %.preheader90.i.i.i ]
  %.16699.i.i.i = phi ptr [ %i.un, %bb.dg ], [ %i.ue, %.preheader90.i.i.i ] ; 2 uses
  %i.uk = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.je, ptr noundef nonnull @.str.498, ptr noundef %.16699.i.i.i) #20
  %.not71.i.i.i = icmp eq i32 %i.uk, 1
  br i1 %.not71.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.lr.ph101.i.i.i
  %i.ul = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite72.i.i.i = call i64 @fwrite(ptr nonnull @.str.495, i64 37, i64 1, ptr %i.ul) ; 0 uses
  br label %bb.dl

bb.dg:                                            ; preds = %.lr.ph101.i.i.i
  %i.um = add nuw i64 %.4100.i.i.i, 1             ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.16699.i.i.i, i64 8
  %exitcond127.not.i.i.i = icmp eq i64 %i.um, %.063.lcssa.i.i.i
  br i1 %exitcond127.not.i.i.i, label %readFloatData.exit.thread.i.i, label %.lr.ph101.i.i.i, !llvm.loop !68

.lr.ph98.i.i.i:                                   ; preds = %.preheader92.i.i.i, %bb.di
  %.597.i.i.i = phi i64 [ %i.ur, %bb.di ], [ 0, %.preheader92.i.i.i ]
  %.06496.i.i.i = phi ptr [ %i.us, %bb.di ], [ %i.ue, %.preheader92.i.i.i ] ; 2 uses
  %i.uo = call i64 @fread(ptr noundef nonnull %i.u, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %i.je)
  %.not.i68.i.i = icmp eq i64 %i.uo, 1
  br i1 %.not.i68.i.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph98.i.i.i
  %i.up = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite.i69.i.i = call i64 @fwrite(ptr nonnull @.str.495, i64 37, i64 1, ptr %i.up) ; 0 uses
  br label %bb.dl

bb.di:                                            ; preds = %.lr.ph98.i.i.i
  %i.uq = load i64, ptr %i.u, align 8, !tbaa !32
  store i64 %i.uq, ptr %.06496.i.i.i, align 8, !tbaa !32
  %i.ur = add nuw i64 %.597.i.i.i, 1              ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.06496.i.i.i, i64 8
  %exitcond126.not.i.i.i = icmp eq i64 %i.ur, %.063.lcssa.i.i.i
  br i1 %exitcond126.not.i.i.i, label %readFloatData.exit.thread.i.i, label %.lr.ph98.i.i.i, !llvm.loop !69

bb.dj:                                            ; preds = %bb.dc
  %i.ut = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite75.i.i.i = call i64 @fwrite(ptr nonnull @.str.487, i64 31, i64 1, ptr %i.ut) ; 0 uses
  br label %bb.dl

bb.dk:                                            ; preds = %._crit_edge.i67.i.i
  %i.uu = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite83.i.i.i = call i64 @fwrite(ptr nonnull @.str.496, i64 25, i64 1, ptr %i.uu) ; 0 uses
  br label %readFloatData.exit.thread.i.i

readFloatData.exit.thread.i.i:                    ; preds = %bb.di, %bb.dg, %bb.de, %bb.da, %bb.cy, %bb.cw, %bb.dk, %.preheader88.i.i.i, %.preheader90.i.i.i, %.preheader92.i.i.i, %.preheader.i70.i.i, %.preheader84.i.i.i, %.preheader86.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #20
  br label %bb.hd

bb.dl:                                            ; preds = %bb.dj, %bb.dh, %bb.df, %bb.dd, %bb.db, %bb.cz, %bb.cx, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #20
  %i.uv = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %i.uw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.uv, ptr noundef nonnull @.str.484, ptr noundef nonnull %i.is) #20 ; 0 uses
  br label %processDataFile.exit.thread138.i

bb.dm:                                            ; preds = %bb.ax
  %i.ux = load i32, ptr %i.it, align 8, !tbaa !19
  %.not.i.i = icmp eq i32 %i.ux, 0
  br i1 %.not.i.i, label %bb.eq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  store ptr null, ptr %i.l, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.m, i8 0, i64 1024, i1 false)
  %i.uy = load i8, ptr @H5_libinit_g, align 1, !tbaa !37, !range !38, !noundef !39
  %i.uz = trunc nuw i8 %i.uy to i1
  %i.va = load i8, ptr @H5_libterm_g, align 1, !range !38
  %i.vb = trunc nuw i8 %i.va to i1
  %i.vc = select i1 %i.uz, i1 true, i1 %i.vb
  br i1 %i.vc, label %bb.dp, label %bb.do, !prof !40

bb.do:                                            ; preds = %bb.dn
  %i.vd = call i32 @H5open() #20                  ; 0 uses
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.ve = load i64, ptr @H5T_C_S1_g, align 8, !tbaa !32
  %i.vf = call i64 @H5Tcopy(i64 noundef %i.ve) #20 ; 6 uses
  %i.vg = icmp slt i64 %i.vf, 0
  br i1 %i.vg, label %.loopexit162.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.vh = call i32 @H5Tset_size(i64 noundef %i.vf, i64 noundef -1) #20
  %i.vi = icmp slt i32 %i.vh, 0
  br i1 %i.vi, label %.loopexit162.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #20
  %i.vj = call i32 @H5Eauto_is_v2(i64 noundef 0, ptr noundef nonnull %i.n) #20 ; 0 uses
  %i.vk = load i32, ptr %i.n, align 4, !tbaa !15
  %.not.i76.i.i = icmp eq i32 %i.vk, 0
  br i1 %.not.i76.i.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.vl = call i32 @H5Eget_auto2(i64 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %i.o) #20 ; 0 uses
  %i.vm = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %i.vn = call i32 @H5Eget_auto1(ptr noundef nonnull %3, ptr noundef nonnull %i.o) #20 ; 0 uses
  %i.vo = call i32 @H5Eset_auto1(ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.vp = getelementptr inbounds nuw i8, ptr %i.is, i64 516 ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.is, i64 5616 ; 4 uses
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !26
  %i.vs = icmp sgt i32 %i.vr, 1
  br i1 %i.vs, label %.lr.ph.i82.i.i, label %.loopexit.i.i.i

.lr.ph.i82.i.i:                                   ; preds = %bb.du, %bb.dw
  %indvars.iv106.i.i.i = phi i64 [ %indvars.iv.next107.i.i.i, %bb.dw ], [ 1, %bb.du ] ; 2 uses
  %indvars.iv.i83.i.i = phi i64 [ %indvars.iv.next.i84.i.i, %bb.dw ], [ 0, %bb.du ] ; 3 uses
  %.05485.i.i.i = phi i64 [ %i.vu, %bb.dw ], [ %.0115.i, %bb.du ] ; 2 uses
  %i.vt = getelementptr inbounds nuw [255 x i8], ptr %i.vp, i64 %indvars.iv.i83.i.i ; 2 uses
  %i.vu = call i64 @H5Gopen2(i64 noundef %.05485.i.i.i, ptr noundef nonnull %i.vt, i64 noundef 0) #20 ; 3 uses
  %i.vv = icmp slt i64 %i.vu, 0
  br i1 %i.vv, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %.lr.ph.i82.i.i
  %i.vw = trunc nuw nsw i64 %indvars.iv.i83.i.i to i32
  %i.vx = call i64 @H5Gcreate2(i64 noundef %.05485.i.i.i, ptr noundef nonnull %i.vt, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20 ; 2 uses
  %.15288.i.i.i = add nuw nsw i32 %i.vw, 1        ; 2 uses
  %i.vy = load i32, ptr %i.vq, align 8, !tbaa !26
  %i.vz = add nsw i32 %i.vy, -1
  %i.wa = icmp slt i32 %.15288.i.i.i, %i.vz
  br i1 %i.wa, label %.lr.ph91.i.i.i, label %.loopexit.i.i.i

.lr.ph91.i.i.i:                                   ; preds = %bb.dv, %.lr.ph91.i.i.i
  %indvars.iv109.i.i.i = phi i64 [ %indvars.iv.next110.i.i.i, %.lr.ph91.i.i.i ], [ %indvars.iv106.i.i.i, %bb.dv ] ; 2 uses
  %.05989.i.i.i = phi i64 [ %i.wc, %.lr.ph91.i.i.i ], [ %i.vx, %bb.dv ]
  %i.wb = getelementptr inbounds nuw [255 x i8], ptr %i.vp, i64 %indvars.iv109.i.i.i
  %i.wc = call i64 @H5Gcreate2(i64 noundef %.05989.i.i.i, ptr noundef nonnull %i.wb, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20 ; 2 uses
  %indvars.iv.next110.i.i.i = add nuw nsw i64 %indvars.iv109.i.i.i, 1 ; 3 uses
  %i.wd = load i32, ptr %i.vq, align 8, !tbaa !26
  %i.we = add nsw i32 %i.wd, -1
  %i.wf = sext i32 %i.we to i64
  %i.wg = icmp slt i64 %indvars.iv.next110.i.i.i, %i.wf
  br i1 %i.wg, label %.lr.ph91.i.i.i, label %.loopexit.loopexit.i.i.i, !llvm.loop !70

bb.dw:                                            ; preds = %.lr.ph.i82.i.i
  %indvars.iv.next.i84.i.i = add nuw nsw i64 %indvars.iv.i83.i.i, 1 ; 3 uses
  %i.wh = load i32, ptr %i.vq, align 8, !tbaa !26
  %i.wi = add nsw i32 %i.wh, -1
  %i.wj = sext i32 %i.wi to i64
  %i.wk = icmp slt i64 %indvars.iv.next.i84.i.i, %i.wj
  %indvars.iv.next107.i.i.i = add nuw nsw i64 %indvars.iv106.i.i.i, 1
  br i1 %i.wk, label %.lr.ph.i82.i.i, label %.loopexit.loopexit97.i.i.i, !llvm.loop !71

.loopexit.loopexit.i.i.i:                         ; preds = %.lr.ph91.i.i.i
  %i.wl = trunc nuw nsw i64 %indvars.iv.next110.i.i.i to i32
  br label %.loopexit.i.i.i

.loopexit.loopexit97.i.i.i:                       ; preds = %bb.dw
  %i.wm = trunc nuw nsw i64 %indvars.iv.next.i84.i.i to i32
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit97.i.i.i, %.loopexit.loopexit.i.i.i, %bb.dv, %bb.du
  %.155.i.i.i = phi i64 [ %.0115.i, %bb.du ], [ %i.wc, %.loopexit.loopexit.i.i.i ], [ %i.vx, %bb.dv ], [ %i.vu, %.loopexit.loopexit97.i.i.i ]
  %.253.i.i.i = phi i32 [ 0, %bb.du ], [ %i.wl, %.loopexit.loopexit.i.i.i ], [ %.15288.i.i.i, %bb.dv ], [ %i.wm, %.loopexit.loopexit97.i.i.i ]
  %i.wn = load i32, ptr %i.n, align 4, !tbaa !15
  %.not72.i.i.i = icmp eq i32 %i.wn, 0
  %i.wo = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.wp = load ptr, ptr %i.o, align 8, !tbaa !101 ; 2 uses
  br i1 %.not72.i.i.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.loopexit.i.i.i
  %i.wq = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef %i.wo, ptr noundef %i.wp) #20 ; 0 uses
  br label %bb.dz

bb.dy:                                            ; preds = %.loopexit.i.i.i
  %i.wr = call i32 @H5Eset_auto1(ptr noundef %i.wo, ptr noundef %i.wp) #20 ; 0 uses
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #20
  %i.ws = getelementptr inbounds nuw i8, ptr %i.is, i64 5636
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !25
  %i.wu = getelementptr inbounds nuw i8, ptr %i.is, i64 5640
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !30
  %i.ww = call i64 @H5Screate_simple(i32 noundef %i.wt, ptr noundef %i.wv, ptr noundef null) #20 ; 7 uses
  %i.wx = icmp slt i64 %i.ww, 0
  br i1 %i.wx, label %.loopexit162.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.wy = call i64 @H5Screate(i32 noundef 0) #20  ; 6 uses
  %i.wz = icmp slt i64 %i.wy, 0
  br i1 %i.wz, label %.loopexit162.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %8 = sext i32 %.253.i.i.i to i64
  %i.xa = getelementptr inbounds [255 x i8], ptr %i.vp, i64 %8
  %i.xb = call i64 @H5Dcreate2(i64 noundef %.155.i.i.i, ptr noundef nonnull %i.xa, i64 noundef %i.vf, i64 noundef %i.ww, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20 ; 6 uses
  %i.xc = icmp slt i64 %i.xb, 0
  br i1 %i.xc, label %.loopexit162.i, label %.preheader.i77.i.i

.preheader.i77.i.i:                               ; preds = %bb.eb
  %i.xd = call ptr @fgets(ptr noundef nonnull %i.m, i32 noundef 1024, ptr noundef nonnull %i.je)
  %.not7394.i.i.i = icmp eq ptr %i.xd, null
  br i1 %.not7394.i.i.i, label %processStrHDFData.exit.i.i, label %.lr.ph96.i.i.i

.lr.ph96.i.i.i:                                   ; preds = %.preheader.i77.i.i, %bb.ej
  %.05095.i.i.i = phi i64 [ %.2.i.i.i, %bb.ej ], [ 0, %.preheader.i77.i.i ] ; 5 uses
  %i.xe = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.m, i32 noundef 34) #23 ; 3 uses
  store ptr %i.xe, ptr %i.l, align 8, !tbaa !13
  %.not74.i.i.i = icmp eq ptr %i.xe, null
  br i1 %.not74.i.i.i, label %bb.ej, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph96.i.i.i
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 1 ; 2 uses
  store ptr %i.xf, ptr %i.l, align 8, !tbaa !13
  %i.xg = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.xf, i32 noundef 34) #23 ; 2 uses
  %.not75.i.i.i = icmp eq ptr %i.xg, null
  br i1 %.not75.i.i.i, label %bb.ej, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  store i8 0, ptr %i.xg, align 1, !tbaa !14
  %i.xh = load ptr, ptr %i.l, align 8, !tbaa !13
  %char0.i.i.i = load i8, ptr %i.xh, align 1
  %.not76.i78.i.i = icmp eq i8 %char0.i.i.i, 0
  br i1 %.not76.i78.i.i, label %bb.ej, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #20
  store i64 1, ptr %i.q, align 8
  %i.xi = call i64 @H5Dget_space(i64 noundef %i.xb) #20 ; 4 uses
  %i.xj = icmp slt i64 %i.xi, 0
  br i1 %i.xj, label %.thread.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.xk = add i64 %.05095.i.i.i, 1
  store i64 %.05095.i.i.i, ptr %i.p, align 8, !tbaa !32
  %i.xl = call i32 @H5Sselect_hyperslab(i64 noundef %i.xi, i32 noundef 0, ptr noundef nonnull %i.p, ptr noundef null, ptr noundef nonnull %i.q, ptr noundef null) #20
  %i.xm = icmp slt i32 %i.xl, 0
  br i1 %i.xm, label %.thread.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.xn = call i32 @H5Dwrite(i64 noundef %i.xb, i64 noundef %i.vf, i64 noundef %i.wy, i64 noundef %i.xi, i64 noundef 0, ptr noundef nonnull %i.l) #20
  %i.xo = icmp slt i32 %i.xn, 0
  br i1 %i.xo, label %.thread.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.xp = call i32 @H5Sclose(i64 noundef %i.xi) #20
  %i.xq = icmp slt i32 %i.xp, 0
  br i1 %i.xq, label %.thread.i.i.i, label %bb.ei

.thread.i.i.i:                                    ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #20
  br label %.loopexit162.i

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #20
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.ed, %bb.ec, %.lr.ph96.i.i.i
  %.2.i.i.i = phi i64 [ %i.xk, %bb.ei ], [ %.05095.i.i.i, %bb.ed ], [ %.05095.i.i.i, %bb.ec ], [ %.05095.i.i.i, %.lr.ph96.i.i.i ]
  store i8 0, ptr %i.m, align 16, !tbaa !14
  %i.xr = call ptr @fgets(ptr noundef nonnull %i.m, i32 noundef 1024, ptr noundef nonnull %i.je)
  %.not73.i79.i.i = icmp eq ptr %i.xr, null
  br i1 %.not73.i79.i.i, label %processStrHDFData.exit.i.i, label %.lr.ph96.i.i.i, !llvm.loop !72

.loopexit162.i:                                   ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dq, %bb.dp, %.thread.i.i.i
  %.058.i.i.i = phi i64 [ %i.xb, %.thread.i.i.i ], [ -1, %bb.dp ], [ -1, %bb.dq ], [ -1, %bb.dz ], [ -1, %bb.ea ], [ %i.xb, %bb.eb ]
  %.057.i.i.i = phi i64 [ %i.ww, %.thread.i.i.i ], [ -1, %bb.dp ], [ -1, %bb.dq ], [ %i.ww, %bb.dz ], [ %i.ww, %bb.ea ], [ %i.ww, %bb.eb ]
  %.056.i.i.i = phi i64 [ %i.wy, %.thread.i.i.i ], [ -1, %bb.dp ], [ -1, %bb.dq ], [ -1, %bb.dz ], [ %i.wy, %bb.ea ], [ %i.wy, %bb.eb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #20
  %i.xs = call i32 @H5Eauto_is_v2(i64 noundef 0, ptr noundef nonnull %i.r) #20 ; 0 uses
  %i.xt = load i32, ptr %i.r, align 4, !tbaa !15
  %.not77.i.i.i = icmp eq i32 %i.xt, 0
  br i1 %.not77.i.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %.loopexit162.i
  %i.xu = call i32 @H5Eget_auto2(i64 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %i.s) #20 ; 0 uses
  %i.xv = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.em

bb.el:                                            ; preds = %.loopexit162.i
  %i.xw = call i32 @H5Eget_auto1(ptr noundef nonnull %4, ptr noundef nonnull %i.s) #20 ; 0 uses
  %i.xx = call i32 @H5Eset_auto1(ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.xy = call i32 @H5Dclose(i64 noundef %.058.i.i.i) #20 ; 0 uses
  %i.xz = call i32 @H5Sclose(i64 noundef %.057.i.i.i) #20 ; 0 uses
  %i.ya = call i32 @H5Sclose(i64 noundef %.056.i.i.i) #20 ; 0 uses
  %i.yb = call i32 @H5Tclose(i64 noundef %i.vf) #20 ; 0 uses
  %i.yc = load i32, ptr %i.r, align 4, !tbaa !15
  %.not78.i81.i.i = icmp eq i32 %i.yc, 0
  %i.yd = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ye = load ptr, ptr %i.s, align 8, !tbaa !101 ; 2 uses
  br i1 %.not78.i81.i.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.yf = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef %i.yd, ptr noundef %i.ye) #20 ; 0 uses
  br label %bb.ep

bb.eo:                                            ; preds = %bb.em
  %i.yg = call i32 @H5Eset_auto1(ptr noundef %i.yd, ptr noundef %i.ye) #20 ; 0 uses
  br label %bb.ep

processStrHDFData.exit.i.i:                       ; preds = %bb.ej, %.preheader.i77.i.i
  %i.yh = call i32 @H5Dclose(i64 noundef %i.xb) #20 ; 0 uses
  %i.yi = call i32 @H5Sclose(i64 noundef %i.ww) #20 ; 0 uses
  %i.yj = call i32 @H5Sclose(i64 noundef %i.wy) #20 ; 0 uses
  %i.yk = call i32 @H5Tclose(i64 noundef %i.vf) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  br label %bb.hd

bb.ep:                                            ; preds = %bb.eo, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  %i.yl = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %i.ym = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yl, ptr noundef nonnull @.str.488, ptr noundef nonnull %i.is) #20 ; 0 uses
  br label %processDataFile.exit.thread138.i

bb.eq:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  br label %.outer1268

.outer1268:                                       ; preds = %bb.es, %bb.eq
  %.052.i.i.i.ph = phi i64 [ %i.yo, %bb.es ], [ 0, %bb.eq ] ; 3 uses
  br label %bb.er

bb.er:                                            ; preds = %.outer1268, %bb.er
  %i.yn = call i32 @fgetc(ptr noundef nonnull %i.je)
  switch i32 %i.yn, label %bb.er [
    i32 -1, label %bb.et
    i32 10, label %bb.es
  ], !llvm.loop !73

bb.es:                                            ; preds = %bb.er
  %i.yo = add i64 %.052.i.i.i.ph, 1
  br label %.outer1268, !llvm.loop !73

bb.et:                                            ; preds = %bb.er
  %.not72.i85.i.i = icmp eq i64 %.052.i.i.i.ph, 0
  br i1 %.not72.i85.i.i, label %processStrData.exit.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  store i64 %.052.i.i.i.ph, ptr %i.e, align 8, !tbaa !32
  %i.yp = call i32 @fseeko64(ptr noundef nonnull %i.je, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.yq = load i8, ptr @H5_libinit_g, align 1, !tbaa !37, !range !38, !noundef !39
  %i.yr = trunc nuw i8 %i.yq to i1
  %i.ys = load i8, ptr @H5_libterm_g, align 1, !range !38
  %i.yt = trunc nuw i8 %i.ys to i1
  %i.yu = select i1 %i.yr, i1 true, i1 %i.yt
  br i1 %i.yu, label %bb.ew, label %bb.ev, !prof !40

bb.ev:                                            ; preds = %bb.eu
  %i.yv = call i32 @H5open() #20                  ; 0 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.yw = load i64, ptr @H5T_C_S1_g, align 8, !tbaa !32
  %i.yx = call i64 @H5Tcopy(i64 noundef %i.yw) #20 ; 5 uses
  %i.yy = icmp slt i64 %i.yx, 0
  br i1 %i.yy, label %.loopexit163.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.yz = call i32 @H5Tset_size(i64 noundef %i.yx, i64 noundef -1) #20
  %i.za = icmp slt i32 %i.yz, 0
  br i1 %i.za, label %.loopexit163.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.zb = call i32 @H5Eauto_is_v2(i64 noundef 0, ptr noundef nonnull %i.g) #20 ; 0 uses
  %i.zc = load i32, ptr %i.g, align 4, !tbaa !15
  %.not73.i86.i.i = icmp eq i32 %i.zc, 0
  br i1 %.not73.i86.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.zd = call i32 @H5Eget_auto2(i64 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %i.h) #20 ; 0 uses
  %i.ze = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  %i.zf = call i32 @H5Eget_auto1(ptr noundef nonnull %2, ptr noundef nonnull %i.h) #20 ; 0 uses
  %i.zg = call i32 @H5Eset_auto1(ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.zh = getelementptr inbounds nuw i8, ptr %i.is, i64 516 ; 3 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.is, i64 5616 ; 4 uses
  %i.zj = load i32, ptr %i.zi, align 8, !tbaa !26
  %i.zk = icmp sgt i32 %i.zj, 1
  br i1 %i.zk, label %.lr.ph.i94.i.i, label %.loopexit.i87.i.i

.lr.ph.i94.i.i:                                   ; preds = %bb.fb, %bb.fd
  %indvars.iv105.i.i.i = phi i64 [ %indvars.iv.next106.i.i.i, %bb.fd ], [ 1, %bb.fb ] ; 2 uses
  %indvars.iv.i95.i.i = phi i64 [ %indvars.iv.next.i96.i.i, %bb.fd ], [ 0, %bb.fb ] ; 3 uses
  %.06083.i.i.i = phi i64 [ %i.zm, %bb.fd ], [ %.0115.i, %bb.fb ] ; 2 uses
  %i.zl = getelementptr inbounds nuw [255 x i8], ptr %i.zh, i64 %indvars.iv.i95.i.i ; 2 uses
  %i.zm = call i64 @H5Gopen2(i64 noundef %.06083.i.i.i, ptr noundef nonnull %i.zl, i64 noundef 0) #20 ; 3 uses
  %i.zn = icmp slt i64 %i.zm, 0
  br i1 %i.zn, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.lr.ph.i94.i.i
  %i.zo = trunc nuw nsw i64 %indvars.iv.i95.i.i to i32
  %i.zp = call i64 @H5Gcreate2(i64 noundef %.06083.i.i.i, ptr noundef nonnull %i.zl, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20 ; 2 uses
  %.15586.i.i.i = add nuw nsw i32 %i.zo, 1        ; 2 uses
  %i.zq = load i32, ptr %i.zi, align 8, !tbaa !26
  %i.zr = add nsw i32 %i.zq, -1
  %i.zs = icmp slt i32 %.15586.i.i.i, %i.zr
  br i1 %i.zs, label %.lr.ph89.i.i.i, label %.loopexit.i87.i.i

.lr.ph89.i.i.i:                                   ; preds = %bb.fc, %.lr.ph89.i.i.i
  %indvars.iv108.i.i.i = phi i64 [ %indvars.iv.next109.i.i.i, %.lr.ph89.i.i.i ], [ %indvars.iv105.i.i.i, %bb.fc ] ; 2 uses
  %.06287.i.i.i = phi i64 [ %i.zu, %.lr.ph89.i.i.i ], [ %i.zp, %bb.fc ]
  %i.zt = getelementptr inbounds nuw [255 x i8], ptr %i.zh, i64 %indvars.iv108.i.i.i
  %i.zu = call i64 @H5Gcreate2(i64 noundef %.06287.i.i.i, ptr noundef nonnull %i.zt, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20 ; 2 uses
  %indvars.iv.next109.i.i.i = add nuw nsw i64 %indvars.iv108.i.i.i, 1 ; 3 uses
  %i.zv = load i32, ptr %i.zi, align 8, !tbaa !26
  %i.zw = add nsw i32 %i.zv, -1
  %i.zx = sext i32 %i.zw to i64
  %i.zy = icmp slt i64 %indvars.iv.next109.i.i.i, %i.zx
  br i1 %i.zy, label %.lr.ph89.i.i.i, label %.loopexit.loopexit.i97.i.i, !llvm.loop !74

bb.fd:                                            ; preds = %.lr.ph.i94.i.i
  %indvars.iv.next.i96.i.i = add nuw nsw i64 %indvars.iv.i95.i.i, 1 ; 3 uses
  %i.zz = load i32, ptr %i.zi, align 8, !tbaa !26
  %i.aaa = add nsw i32 %i.zz, -1
  %i.aab = sext i32 %i.aaa to i64
  %i.aac = icmp slt i64 %indvars.iv.next.i96.i.i, %i.aab
  %indvars.iv.next106.i.i.i = add nuw nsw i64 %indvars.iv105.i.i.i, 1
  br i1 %i.aac, label %.lr.ph.i94.i.i, label %.loopexit.loopexit96.i.i.i, !llvm.loop !75

.loopexit.loopexit.i97.i.i:                       ; preds = %.lr.ph89.i.i.i
  %i.aad = trunc nuw nsw i64 %indvars.iv.next109.i.i.i to i32
  br label %.loopexit.i87.i.i

.loopexit.loopexit96.i.i.i:                       ; preds = %bb.fd
  %i.aae = trunc nuw nsw i64 %indvars.iv.next.i96.i.i to i32
  br label %.loopexit.i87.i.i

.loopexit.i87.i.i:                                ; preds = %.loopexit.loopexit96.i.i.i, %.loopexit.loopexit.i97.i.i, %bb.fc, %bb.fb
  %.161.i.i.i = phi i64 [ %.0115.i, %bb.fb ], [ %i.zu, %.loopexit.loopexit.i97.i.i ], [ %i.zp, %bb.fc ], [ %i.zm, %.loopexit.loopexit96.i.i.i ]
  %.256.i.i.i = phi i32 [ 0, %bb.fb ], [ %i.aad, %.loopexit.loopexit.i97.i.i ], [ %.15586.i.i.i, %bb.fc ], [ %i.aae, %.loopexit.loopexit96.i.i.i ]
  %i.aaf = load i32, ptr %i.g, align 4, !tbaa !15
  %.not74.i88.i.i = icmp eq i32 %i.aaf, 0
  %i.aag = load ptr, ptr %2, align 8, !tbaa !14   ; 2 uses
  %i.aah = load ptr, ptr %i.h, align 8, !tbaa !101 ; 2 uses
  br i1 %.not74.i88.i.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.loopexit.i87.i.i
  %i.aai = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef %i.aag, ptr noundef %i.aah) #20 ; 0 uses
  br label %bb.fg

bb.ff:                                            ; preds = %.loopexit.i87.i.i
  %i.aaj = call i32 @H5Eset_auto1(ptr noundef %i.aag, ptr noundef %i.aah) #20 ; 0 uses
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.aak = call i64 @H5Screate_simple(i32 noundef 1, ptr noundef nonnull %i.e, ptr noundef null) #20 ; 3 uses
  %i.aal = icmp slt i64 %i.aak, 0
  br i1 %i.aal, label %.loopexit163.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aam = call i64 @H5Screate(i32 noundef 0) #20 ; 3 uses
  %i.aan = icmp slt i64 %i.aam, 0
  br i1 %i.aan, label %.loopexit163.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %9 = sext i32 %.256.i.i.i to i64
  %i.aao = getelementptr inbounds [255 x i8], ptr %i.zh, i64 %9
  %i.aap = call i64 @H5Dcreate2(i64 noundef %.161.i.i.i, ptr noundef nonnull %i.aao, i64 noundef %i.yx, i64 noundef %i.aak, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20 ; 4 uses
  %i.aaq = icmp slt i64 %i.aap, 0
  br i1 %i.aaq, label %.loopexit163.i, label %.preheader.i89.i.i

.preheader.i89.i.i:                               ; preds = %bb.fi
  %i.aar = call i32 @fgetc(ptr noundef nonnull %i.je) ; 2 uses
  %.not7592.i.i.i = icmp eq i32 %i.aar, -1
  br i1 %.not7592.i.i.i, label %._crit_edge.i92.i.i, label %.lr.ph95.i.i.i

.lr.ph95.i.i.i:                                   ; preds = %.preheader.i89.i.i, %bb.fo
  %i.aas = phi i32 [ %i.abh, %bb.fo ], [ %i.aar, %.preheader.i89.i.i ] ; 2 uses
  %.05194.i.i.i = phi i64 [ %.2.i90.i.i, %bb.fo ], [ 0, %.preheader.i89.i.i ] ; 3 uses
  %.05793.i.i.i = phi i32 [ %.259.i.i.i, %bb.fo ], [ 0, %.preheader.i89.i.i ] ; 2 uses
  %i.aat = trunc i32 %i.aas to i8
  %i.aau = sext i32 %.05793.i.i.i to i64
  %i.aav = getelementptr inbounds i8, ptr %i.f, i64 %i.aau ; 2 uses
  store i8 %i.aat, ptr %i.aav, align 1, !tbaa !14
  %i.aaw = add nsw i32 %.05793.i.i.i, 1
  %i.aax = icmp eq i32 %i.aas, 10
  br i1 %i.aax, label %bb.fj, label %bb.fo

bb.fj:                                            ; preds = %.lr.ph95.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store ptr %i.f, ptr %i.i, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  store i64 1, ptr %i.k, align 8
  store i8 0, ptr %i.aav, align 1, !tbaa !14
  %i.aay = call i64 @H5Dget_space(i64 noundef %i.aap) #20 ; 4 uses
  %i.aaz = icmp slt i64 %i.aay, 0
  br i1 %i.aaz, label %.thread.i93.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aba = add i64 %.05194.i.i.i, 1
  store i64 %.05194.i.i.i, ptr %i.j, align 8, !tbaa !32
  %i.abb = call i32 @H5Sselect_hyperslab(i64 noundef %i.aay, i32 noundef 0, ptr noundef nonnull %i.j, ptr noundef null, ptr noundef nonnull %i.k, ptr noundef null) #20
  %i.abc = icmp slt i32 %i.abb, 0
  br i1 %i.abc, label %.thread.i93.i.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.abd = call i32 @H5Dwrite(i64 noundef %i.aap, i64 noundef %i.yx, i64 noundef %i.aam, i64 noundef %i.aay, i64 noundef 0, ptr noundef nonnull %i.i) #20
  %i.abe = icmp slt i32 %i.abd, 0
  br i1 %i.abe, label %.thread.i93.i.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.abf = call i32 @H5Sclose(i64 noundef %i.aay) #20
  %i.abg = icmp slt i32 %i.abf, 0
  br i1 %i.abg, label %.thread.i93.i.i, label %bb.fn

.thread.i93.i.i:                                  ; preds = %bb.fm, %bb.fl, %bb.fk, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %.loopexit163.i

bb.fn:                                            ; preds = %bb.fm
  store i8 0, ptr %i.f, align 16, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %.lr.ph95.i.i.i
  %.259.i.i.i = phi i32 [ 0, %bb.fn ], [ %i.aaw, %.lr.ph95.i.i.i ]
  %.2.i90.i.i = phi i64 [ %i.aba, %bb.fn ], [ %.05194.i.i.i, %.lr.ph95.i.i.i ]
  %i.abh = call i32 @fgetc(ptr noundef nonnull %i.je) ; 2 uses
  %.not75.i91.i.i = icmp eq i32 %i.abh, -1
  br i1 %.not75.i91.i.i, label %._crit_edge.i92.i.i, label %.lr.ph95.i.i.i, !llvm.loop !76

._crit_edge.i92.i.i:                              ; preds = %bb.fo, %.preheader.i89.i.i
  %i.abi = call i32 @H5Dclose(i64 noundef %i.aap) #20 ; 0 uses
  %i.abj = call i32 @H5Sclose(i64 noundef %i.aak) #20 ; 0 uses
  %i.abk = call i32 @H5Sclose(i64 noundef %i.aam) #20 ; 0 uses
  %i.abl = call i32 @H5Tclose(i64 noundef %i.yx) #20 ; 0 uses
  br label %processStrData.exit.i.i

processStrData.exit.i.i:                          ; preds = %._crit_edge.i92.i.i, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.hd

.loopexit163.i:                                   ; preds = %bb.fi, %bb.fh, %bb.fg, %bb.ex, %bb.ew, %.thread.i93.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.abm = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %i.abn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abm, ptr noundef nonnull @.str.488, ptr noundef nonnull %i.is) #20 ; 0 uses
  br label %processDataFile.exit.thread138.i

bb.fp:                                            ; preds = %bb.ax, %bb.ax
  %i.abo = getelementptr inbounds nuw i8, ptr %i.is, i64 5636 ; 2 uses
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !25 ; 7 uses
  %i.abq = icmp sgt i32 %i.abp, 0
  br i1 %i.abq, label %.lr.ph.i107.i.i, label %._crit_edge.i98.i.i

.lr.ph.i107.i.i:                                  ; preds = %bb.fp
  %i.abr = getelementptr inbounds nuw i8, ptr %i.is, i64 5640
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !30 ; 9 uses
  %wide.trip.count.i108.i.i = zext nneg i32 %i.abp to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i108.i.i, 7 ; 3 uses
  %i.abt = icmp ult i32 %i.abp, 8
  br i1 %i.abt, label %.epil.preheader, label %.lr.ph.i107.i.i.new

.lr.ph.i107.i.i.new:                              ; preds = %.lr.ph.i107.i.i
  %unroll_iter = and i64 %wide.trip.count.i108.i.i, 2147483640
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fq, %.lr.ph.i107.i.i.new
  %indvars.iv.i109.i.i = phi i64 [ 0, %.lr.ph.i107.i.i.new ], [ %indvars.iv.next.i111.i.i.7, %bb.fq ] ; 9 uses
  %.02026.i110.i.i = phi i64 [ 1, %.lr.ph.i107.i.i.new ], [ %i.acy, %bb.fq ]
  %niter = phi i64 [ 0, %.lr.ph.i107.i.i.new ], [ %niter.next.7, %bb.fq ]
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.i109.i.i
  %i.abv = load i64, ptr %i.abu, align 8, !tbaa !32
  %i.abw = mul i64 %i.abv, %.02026.i110.i.i
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.i109.i.i
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  %i.abz = load i64, ptr %i.aby, align 8, !tbaa !32
  %i.aca = mul i64 %i.abz, %i.abw
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.i109.i.i
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !32
  %i.ace = mul i64 %i.acd, %i.aca
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.i109.i.i
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 24
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !32
  %i.aci = mul i64 %i.ach, %i.ace
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.i109.i.i
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 32
  %i.acl = load i64, ptr %i.ack, align 8, !tbaa !32
  %i.acm = mul i64 %i.acl, %i.aci
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.i109.i.i
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 40
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !32
  %i.acq = mul i64 %i.acp, %i.acm
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.i109.i.i
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 48
  %i.act = load i64, ptr %i.acs, align 8, !tbaa !32
  %i.acu = mul i64 %i.act, %i.acq
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.i109.i.i
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 56
  %i.acx = load i64, ptr %i.acw, align 8, !tbaa !32
  %i.acy = mul i64 %i.acx, %i.acu                 ; 3 uses
  %indvars.iv.next.i111.i.i.7 = add nuw nsw i64 %indvars.iv.i109.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i98.i.i.loopexit.unr-lcssa, label %bb.fq, !llvm.loop !77

._crit_edge.i98.i.i.loopexit.unr-lcssa:           ; preds = %bb.fq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i98.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i98.i.i.loopexit.unr-lcssa, %.lr.ph.i107.i.i
  %indvars.iv.i109.i.i.epil.init = phi i64 [ 0, %.lr.ph.i107.i.i ], [ %indvars.iv.next.i111.i.i.7, %._crit_edge.i98.i.i.loopexit.unr-lcssa ]
  %.02026.i110.i.i.epil.init = phi i64 [ 1, %.lr.ph.i107.i.i ], [ %i.acy, %._crit_edge.i98.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1527 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1527)
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fr, %.epil.preheader
  %indvars.iv.i109.i.i.epil = phi i64 [ %indvars.iv.i109.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i111.i.i.epil, %bb.fr ] ; 2 uses
  %.02026.i110.i.i.epil = phi i64 [ %.02026.i110.i.i.epil.init, %.epil.preheader ], [ %i.adb, %bb.fr ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.fr ]
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.i109.i.i.epil
  %i.ada = load i64, ptr %i.acz, align 8, !tbaa !32
  %i.adb = mul i64 %i.ada, %.02026.i110.i.i.epil  ; 2 uses
  %indvars.iv.next.i111.i.i.epil = add nuw nsw i64 %indvars.iv.i109.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i98.i.i, label %bb.fr, !llvm.loop !78

._crit_edge.i98.i.i:                              ; preds = %._crit_edge.i98.i.i.loopexit.unr-lcssa, %bb.fr, %bb.fp
  %.020.lcssa.i99.i.i = phi i64 [ 1, %bb.fp ], [ %i.acy, %._crit_edge.i98.i.i.loopexit.unr-lcssa ], [ %i.adb, %bb.fr ] ; 4 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.is, i64 5624 ; 2 uses
  %i.add = load i32, ptr %i.adc, align 8, !tbaa !21 ; 2 uses
  %i.ade = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.add)
  %i.adf = icmp eq i32 %i.ade, 1
  br i1 %i.adf, label %.split.i102.i.i, label %bb.fw

.split.i102.i.i:                                  ; preds = %._crit_edge.i98.i.i
  %i.adg = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.add, i1 true)
  switch i32 %i.adg, label %bb.fw [
    i32 3, label %bb.fs
    i32 4, label %bb.ft
    i32 5, label %bb.fu
    i32 6, label %bb.fv
  ]

bb.fs:                                            ; preds = %.split.i102.i.i
  %i.adh = call noalias ptr @malloc(i64 noundef %.020.lcssa.i99.i.i) #24 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.is, i64 5696
  store ptr %i.adh, ptr %i.adi, align 8, !tbaa !103
  %i.adj = icmp eq ptr %i.adh, null
  br i1 %i.adj, label %allocateUIntegerStorage.exit.i.i, label %bb.fx

bb.ft:                                            ; preds = %.split.i102.i.i
  %i.adk = shl i64 %.020.lcssa.i99.i.i, 1
  %i.adl = call noalias ptr @malloc(i64 noundef %i.adk) #24 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.is, i64 5696
  store ptr %i.adl, ptr %i.adm, align 8, !tbaa !103
  %i.adn = icmp eq ptr %i.adl, null
  br i1 %i.adn, label %allocateUIntegerStorage.exit.i.i, label %bb.fx
end_hunk_0
begin_hunk_1_@main:bb.a

.preheader114.i.i.i:                              ; preds = %bb.gu
  %.not147.i119.i.i = icmp eq i64 %.078.lcssa.i.i.i, 0
  br i1 %.not147.i119.i.i, label %readUIntegerData.exit.thread.i.i, label %.lr.ph125.i.i.i

.lr.ph125.i.i.i:                                  ; preds = %.preheader114.i.i.i, %bb.gw
  %.6124.i.i.i = phi i64 [ %i.aho, %bb.gw ], [ 0, %.preheader114.i.i.i ]
  %.079123.i.i.i = phi ptr [ %i.ahp, %bb.gw ], [ %i.ahi, %.preheader114.i.i.i ] ; 2 uses
  %i.ahk = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.je, ptr noundef nonnull @.str.493, ptr noundef nonnull %i.d) #20
  %i.ahl = icmp slt i32 %i.ahk, 1
  br i1 %i.ahl, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %.lr.ph125.i.i.i
  %i.ahm = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite88.i.i.i = call i64 @fwrite(ptr nonnull @.str.500, i64 48, i64 1, ptr %i.ahm) ; 0 uses
  br label %bb.hb

bb.gw:                                            ; preds = %.lr.ph125.i.i.i
  %i.ahn = call i64 @__isoc23_strtoll(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 10) #20
  store i64 %i.ahn, ptr %.079123.i.i.i, align 8, !tbaa !35
  %i.aho = add nuw i64 %.6124.i.i.i, 1            ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %.079123.i.i.i, i64 8
  %exitcond163.not.i120.i.i = icmp eq i64 %i.aho, %.078.lcssa.i.i.i
  br i1 %exitcond163.not.i120.i.i, label %readUIntegerData.exit.thread.i.i, label %.lr.ph125.i.i.i, !llvm.loop !87

.lr.ph122.i.i.i:                                  ; preds = %.preheader116.i.i.i, %bb.gy
  %.7121.i.i.i = phi i64 [ %i.aht, %bb.gy ], [ 0, %.preheader116.i.i.i ]
  %.180120.i.i.i = phi ptr [ %i.ahu, %bb.gy ], [ %i.ahi, %.preheader116.i.i.i ] ; 2 uses
  %i.ahq = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %i.je)
  %.not.i117.i.i = icmp eq i64 %i.ahq, 1
  br i1 %.not.i117.i.i, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %.lr.ph122.i.i.i
  %i.ahr = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite.i118.i.i = call i64 @fwrite(ptr nonnull @.str.500, i64 48, i64 1, ptr %i.ahr) ; 0 uses
  br label %bb.hb

bb.gy:                                            ; preds = %.lr.ph122.i.i.i
  %i.ahs = load i64, ptr %i.c, align 8, !tbaa !35
  store i64 %i.ahs, ptr %.180120.i.i.i, align 8, !tbaa !35
  %i.aht = add nuw i64 %.7121.i.i.i, 1            ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.180120.i.i.i, i64 8
  %exitcond162.not.i.i.i = icmp eq i64 %i.aht, %.078.lcssa.i.i.i
  br i1 %exitcond162.not.i.i.i, label %readUIntegerData.exit.thread.i.i, label %.lr.ph122.i.i.i, !llvm.loop !88

bb.gz:                                            ; preds = %bb.gu
  %i.ahv = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite89.i121.i.i = call i64 @fwrite(ptr nonnull @.str.487, i64 31, i64 1, ptr %i.ahv) ; 0 uses
  br label %bb.hb

bb.ha:                                            ; preds = %.split.i116.i.i, %._crit_edge.i113.i.i
  %i.ahw = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite105.i114.i.i = call i64 @fwrite(ptr nonnull @.str.491, i64 20, i64 1, ptr %i.ahw) ; 0 uses
  br label %readUIntegerData.exit.thread.i.i

readUIntegerData.exit.thread.i.i:                 ; preds = %bb.gy, %bb.gw, %bb.gs, %bb.gq, %bb.gm, %bb.gk, %bb.gg, %bb.gd, %bb.ha, %.preheader114.i.i.i, %.preheader116.i.i.i, %.preheader110.i.i.i, %.preheader112.i.i.i, %.preheader.i129.i.i, %.preheader108.i.i.i, %bb.ge, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.hd

bb.hb:                                            ; preds = %bb.gz, %bb.gx, %bb.gv, %bb.gt, %bb.gr, %bb.gp, %bb.gn, %bb.gl, %bb.gj, %bb.gh, %bb.gf, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ahx = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %i.ahy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahx, ptr noundef nonnull @.str.486, ptr noundef nonnull %i.is) #20 ; 0 uses
  br label %processDataFile.exit.thread138.i

bb.hc:                                            ; preds = %bb.ax
  %i.ahz = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.487, i64 31, i64 1, ptr %i.ahz) ; 0 uses
  br label %processDataFile.exit.thread138.i

processDataFile.exit.thread138.i:                 ; preds = %bb.hc, %bb.hb, %allocateUIntegerStorage.exit.i.i, %.loopexit163.i, %bb.ep, %bb.dl, %allocateFloatStorage.exit.i.i, %bb.ck, %allocateIntegerStorage.exit.i.i
  %i.aia = call i32 @fclose(ptr noundef nonnull %i.je) ; 0 uses
  br label %processDataFile.exit.thread.i

processDataFile.exit.thread.i:                    ; preds = %processDataFile.exit.thread138.i, %bb.aw, %bb.au
  %i.aib = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %i.aic = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aib, ptr noundef nonnull @.str.314, ptr noundef nonnull %i.is) #20 ; 0 uses
  br label %process.exit.thread

bb.hd:                                            ; preds = %readUIntegerData.exit.thread.i.i, %processStrData.exit.i.i, %processStrHDFData.exit.i.i, %readFloatData.exit.thread.i.i, %readIntegerData.exit.thread.i.i
  %i.aid = call i32 @fclose(ptr noundef nonnull %i.je) ; 0 uses
  %i.aie = load i32, ptr %i.jc, align 4, !tbaa !20
  %.not127.i = icmp eq i32 %i.aie, 5
  br i1 %.not127.i, label %bb.ik, label %.preheader142.i

.preheader142.i:                                  ; preds = %bb.hd
  %i.aif = getelementptr inbounds nuw i8, ptr %i.is, i64 5636 ; 3 uses
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !25 ; 3 uses
  %i.aih = icmp sgt i32 %i.aig, 0
  br i1 %i.aih, label %.lr.ph.i168, label %._crit_edge.i

.lr.ph.i168:                                      ; preds = %.preheader142.i
  %i.aii = getelementptr inbounds nuw i8, ptr %i.is, i64 5640
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !30 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.aig to i64 ; 2 uses
  %xtraiter1569 = and i64 %wide.trip.count.i, 7   ; 3 uses
  %i.aik = icmp ult i32 %i.aig, 8
  br i1 %i.aik, label %.epil.preheader1568, label %.lr.ph.i168.new

.lr.ph.i168.new:                                  ; preds = %.lr.ph.i168
  %unroll_iter1574 = and i64 %wide.trip.count.i, 2147483640
  br label %bb.he

bb.he:                                            ; preds = %bb.he, %.lr.ph.i168.new
  %indvars.iv.i169 = phi i64 [ 0, %.lr.ph.i168.new ], [ %indvars.iv.next.i170.7, %bb.he ] ; 9 uses
  %.1107338.i = phi i64 [ %.0106353.i, %.lr.ph.i168.new ], [ %i.ajp, %bb.he ]
  %niter1575 = phi i64 [ 0, %.lr.ph.i168.new ], [ %niter1575.next.7, %bb.he ]
  %i.ail = getelementptr inbounds nuw [8 x i8], ptr %i.aij, i64 %indvars.iv.i169
  %i.aim = load i64, ptr %i.ail, align 8, !tbaa !32
  %i.ain = mul i64 %i.aim, %.1107338.i
  %i.aio = getelementptr inbounds nuw [8 x i8], ptr %i.aij, i64 %indvars.iv.i169
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  %i.aiq = load i64, ptr %i.aip, align 8, !tbaa !32
  %i.air = mul i64 %i.aiq, %i.ain
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.aij, i64 %indvars.iv.i169
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 16
  %i.aiu = load i64, ptr %i.ait, align 8, !tbaa !32
  %i.aiv = mul i64 %i.aiu, %i.air
  %i.aiw = getelementptr inbounds nuw [8 x i8], ptr %i.aij, i64 %indvars.iv.i169
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 24
  %i.aiy = load i64, ptr %i.aix, align 8, !tbaa !32
  %i.aiz = mul i64 %i.aiy, %i.aiv
  %i.aja = getelementptr inbounds nuw [8 x i8], ptr %i.aij, i64 %indvars.iv.i169
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 32
  %i.ajc = load i64, ptr %i.ajb, align 8, !tbaa !32
  %i.ajd = mul i64 %i.ajc, %i.aiz
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %i.aij, i64 %indvars.iv.i169
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 40
  %i.ajg = load i64, ptr %i.ajf, align 8, !tbaa !32
  %i.ajh = mul i64 %i.ajg, %i.ajd
  %i.aji = getelementptr inbounds nuw [8 x i8], ptr %i.aij, i64 %indvars.iv.i169
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 48
  %i.ajk = load i64, ptr %i.ajj, align 8, !tbaa !32
  %i.ajl = mul i64 %i.ajk, %i.ajh
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr %i.aij, i64 %indvars.iv.i169
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 56
  %i.ajo = load i64, ptr %i.ajn, align 8, !tbaa !32
  %i.ajp = mul i64 %i.ajo, %i.ajl                 ; 3 uses
  %indvars.iv.next.i170.7 = add nuw nsw i64 %indvars.iv.i169, 8 ; 2 uses
  %niter1575.next.7 = add i64 %niter1575, 8       ; 2 uses
  %niter1575.ncmp.7 = icmp eq i64 %niter1575.next.7, %unroll_iter1574
  br i1 %niter1575.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.he, !llvm.loop !89

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.he
  %lcmp.mod1571.not = icmp eq i64 %xtraiter1569, 0
  br i1 %lcmp.mod1571.not, label %._crit_edge.i, label %.epil.preheader1568

.epil.preheader1568:                              ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i168
  %indvars.iv.i169.epil.init = phi i64 [ 0, %.lr.ph.i168 ], [ %indvars.iv.next.i170.7, %._crit_edge.i.loopexit.unr-lcssa ]
  %.1107338.i.epil.init = phi i64 [ %.0106353.i, %.lr.ph.i168 ], [ %i.ajp, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod1573 = icmp ne i64 %xtraiter1569, 0
  call void @llvm.assume(i1 %lcmp.mod1573)
  br label %bb.hf

bb.hf:                                            ; preds = %bb.hf, %.epil.preheader1568
  %indvars.iv.i169.epil = phi i64 [ %indvars.iv.i169.epil.init, %.epil.preheader1568 ], [ %indvars.iv.next.i170.epil, %bb.hf ] ; 2 uses
  %.1107338.i.epil = phi i64 [ %.1107338.i.epil.init, %.epil.preheader1568 ], [ %i.ajs, %bb.hf ]
  %epil.iter1570 = phi i64 [ 0, %.epil.preheader1568 ], [ %epil.iter1570.next, %bb.hf ]
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %i.aij, i64 %indvars.iv.i169.epil
  %i.ajr = load i64, ptr %i.ajq, align 8, !tbaa !32
  %i.ajs = mul i64 %i.ajr, %.1107338.i.epil       ; 2 uses
  %indvars.iv.next.i170.epil = add nuw nsw i64 %indvars.iv.i169.epil, 1
  %epil.iter1570.next = add i64 %epil.iter1570, 1 ; 2 uses
  %epil.iter1570.cmp.not = icmp eq i64 %epil.iter1570.next, %xtraiter1569
  br i1 %epil.iter1570.cmp.not, label %._crit_edge.i, label %bb.hf, !llvm.loop !90

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.hf, %.preheader142.i
  %.1107.lcssa.i = phi i64 [ %.0106353.i, %.preheader142.i ], [ %i.ajp, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ajs, %bb.hf ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #20
  %i.ajt = call i32 @H5Eauto_is_v2(i64 noundef 0, ptr noundef nonnull %i.ab) #20 ; 0 uses
  %i.aju = load i32, ptr %i.ab, align 4, !tbaa !15
  %.not128.i = icmp eq i32 %i.aju, 0
  br i1 %.not128.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %._crit_edge.i
  %i.ajv = call i32 @H5Eget_auto2(i64 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %i.ac) #20 ; 0 uses
  %i.ajw = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.hi

bb.hh:                                            ; preds = %._crit_edge.i
  %i.ajx = call i32 @H5Eget_auto1(ptr noundef nonnull %6, ptr noundef nonnull %i.ac) #20 ; 0 uses
  %i.ajy = call i32 @H5Eset_auto1(ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.is, i64 516 ; 3 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.is, i64 5616 ; 4 uses
  %i.akb = load i32, ptr %i.aka, align 8, !tbaa !26
  %i.akc = icmp sgt i32 %i.akb, 1
  br i1 %i.akc, label %.lr.ph342.i, label %.loopexit.i

.lr.ph342.i:                                      ; preds = %bb.hi, %bb.hk
  %indvars.iv563.i = phi i64 [ %indvars.iv.next564.i, %bb.hk ], [ 1, %bb.hi ] ; 2 uses
  %indvars.iv560.i = phi i64 [ %indvars.iv.next561.i, %bb.hk ], [ 0, %bb.hi ] ; 3 uses
  %.0112340.i = phi i64 [ %i.ake, %bb.hk ], [ %.0115.i, %bb.hi ] ; 2 uses
  %i.akd = getelementptr inbounds nuw [255 x i8], ptr %i.ajz, i64 %indvars.iv560.i ; 2 uses
  %i.ake = call i64 @H5Gopen2(i64 noundef %.0112340.i, ptr noundef nonnull %i.akd, i64 noundef 0) #20 ; 3 uses
  %i.akf = icmp slt i64 %i.ake, 0
  br i1 %i.akf, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %.lr.ph342.i
  %i.akg = trunc nuw nsw i64 %indvars.iv560.i to i32
  %i.akh = call i64 @H5Gcreate2(i64 noundef %.0112340.i, ptr noundef nonnull %i.akd, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20 ; 2 uses
  %.2345.i = add nuw nsw i32 %i.akg, 1            ; 2 uses
  %i.aki = load i32, ptr %i.aka, align 8, !tbaa !26
  %i.akj = add nsw i32 %i.aki, -1
  %i.akk = icmp slt i32 %.2345.i, %i.akj
  br i1 %i.akk, label %.lr.ph349.i, label %.loopexit.i

.lr.ph349.i:                                      ; preds = %bb.hj, %.lr.ph349.i
  %indvars.iv566.i = phi i64 [ %indvars.iv.next567.i, %.lr.ph349.i ], [ %indvars.iv563.i, %bb.hj ] ; 2 uses
  %.0114346.i = phi i64 [ %i.akm, %.lr.ph349.i ], [ %i.akh, %bb.hj ]
  %i.akl = getelementptr inbounds nuw [255 x i8], ptr %i.ajz, i64 %indvars.iv566.i
  %i.akm = call i64 @H5Gcreate2(i64 noundef %.0114346.i, ptr noundef nonnull %i.akl, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20 ; 2 uses
  %indvars.iv.next567.i = add nuw nsw i64 %indvars.iv566.i, 1 ; 3 uses
  %i.akn = load i32, ptr %i.aka, align 8, !tbaa !26
  %i.ako = add nsw i32 %i.akn, -1
  %i.akp = sext i32 %i.ako to i64
  %i.akq = icmp slt i64 %indvars.iv.next567.i, %i.akp
  br i1 %i.akq, label %.lr.ph349.i, label %.loopexit.loopexit.i, !llvm.loop !91

bb.hk:                                            ; preds = %.lr.ph342.i
  %indvars.iv.next561.i = add nuw nsw i64 %indvars.iv560.i, 1 ; 3 uses
  %i.akr = load i32, ptr %i.aka, align 8, !tbaa !26
  %i.aks = add nsw i32 %i.akr, -1
  %i.akt = sext i32 %i.aks to i64
  %i.aku = icmp slt i64 %indvars.iv.next561.i, %i.akt
  %indvars.iv.next564.i = add nuw nsw i64 %indvars.iv563.i, 1
  br i1 %i.aku, label %.lr.ph342.i, label %.loopexit.loopexit358.i, !llvm.loop !92

.loopexit.loopexit.i:                             ; preds = %.lr.ph349.i
  %i.akv = trunc nuw nsw i64 %indvars.iv.next567.i to i32
  br label %.loopexit.i

.loopexit.loopexit358.i:                          ; preds = %bb.hk
  %i.akw = trunc nuw nsw i64 %indvars.iv.next561.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit358.i, %.loopexit.loopexit.i, %bb.hj, %bb.hi
  %.1113.i = phi i64 [ %.0115.i, %bb.hi ], [ %i.akm, %.loopexit.loopexit.i ], [ %i.akh, %bb.hj ], [ %i.ake, %.loopexit.loopexit358.i ]
  %.3.i = phi i32 [ 0, %bb.hi ], [ %i.akv, %.loopexit.loopexit.i ], [ %.2345.i, %bb.hj ], [ %i.akw, %.loopexit.loopexit358.i ]
  %i.akx = load i32, ptr %i.ab, align 4, !tbaa !15
  %.not129.i = icmp eq i32 %i.akx, 0
  %i.aky = load ptr, ptr %6, align 8, !tbaa !14   ; 2 uses
  %i.akz = load ptr, ptr %i.ac, align 8, !tbaa !101 ; 2 uses
  br i1 %.not129.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %.loopexit.i
  %i.ala = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef %i.aky, ptr noundef %i.akz) #20 ; 0 uses
  br label %bb.hn

bb.hm:                                            ; preds = %.loopexit.i
  %i.alb = call i32 @H5Eset_auto1(ptr noundef %i.aky, ptr noundef %i.akz) #20 ; 0 uses
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #20
  %i.alc = call i64 @createInputDataType(ptr noundef nonnull %i.it)
  %i.ald = call i64 @createOutputDataType(ptr noundef nonnull %i.it)
  %i.ale = load i8, ptr @H5_libinit_g, align 1, !tbaa !37, !range !38, !noundef !39
  %i.alf = trunc nuw i8 %i.ale to i1
  %i.alg = load i8, ptr @H5_libterm_g, align 1, !range !38
  %i.alh = trunc nuw i8 %i.alg to i1
  %i.ali = select i1 %i.alf, i1 true, i1 %i.alh
  br i1 %i.ali, label %bb.hp, label %bb.ho, !prof !40

bb.ho:                                            ; preds = %bb.hn
  %i.alj = call i32 @H5open() #20                 ; 0 uses
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.alk = load i64, ptr @H5P_CLS_DATASET_CREATE_ID_g, align 8, !tbaa !32
  %i.all = call i64 @H5Pcreate(i64 noundef %i.alk) #20 ; 9 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.is, i64 5740
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !15
  %i.alo = icmp eq i32 %i.aln, 1
  br i1 %i.alo, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.alp = call i32 @H5Pset_layout(i64 noundef %i.all, i32 noundef 2) #20 ; 0 uses
  %i.alq = load i32, ptr %i.aif, align 4, !tbaa !25
  %i.alr = getelementptr inbounds nuw i8, ptr %i.is, i64 5664
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !41
  %i.alt = call i32 @H5Pset_chunk(i64 noundef %i.all, i32 noundef %i.alq, ptr noundef %i.als) #20 ; 0 uses
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.alu = getelementptr inbounds nuw i8, ptr %i.is, i64 5744
  %i.alv = load i32, ptr %i.alu, align 8, !tbaa !15
  %i.alw = icmp eq i32 %i.alv, 1
  br i1 %i.alw, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.alx = getelementptr inbounds nuw i8, ptr %i.is, i64 5684
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !42
  %i.alz = call i32 @H5Pset_deflate(i64 noundef %i.all, i32 noundef %i.aly) #20 ; 0 uses
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.ama = getelementptr inbounds nuw i8, ptr %i.is, i64 5752
  %i.amb = load i32, ptr %i.ama, align 8, !tbaa !15
  %i.amc = icmp eq i32 %i.amb, 1
  br i1 %i.amc, label %bb.hu, label %bb.hx

bb.hu:                                            ; preds = %bb.ht
  %i.amd = getelementptr inbounds nuw i8, ptr %i.is, i64 5688 ; 2 uses
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !43
  %i.amf = call noalias ptr @fopen64(ptr noundef %i.ame, ptr noundef nonnull @.str.318) ; 2 uses
  %i.amg = icmp eq ptr %i.amf, null
  br i1 %i.amg, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.amh = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite133.i = call i64 @fwrite(ptr nonnull @.str.315, i64 44, i64 1, ptr %i.amh) ; 0 uses
  %i.ami = call i32 @H5Pclose(i64 noundef %i.all) #20 ; 0 uses
  %i.amj = call i32 @H5Sclose(i64 noundef %.0109352.i) #20 ; 0 uses
  %i.amk = call i32 @H5Fclose(i64 noundef %.0115.i) #20 ; 0 uses
  br label %process.exit.thread

bb.hw:                                            ; preds = %bb.hu
  %i.aml = call i32 @fclose(ptr noundef nonnull %i.amf) ; 0 uses
  %i.amm = load ptr, ptr %i.amd, align 8, !tbaa !43
  %i.amn = getelementptr inbounds nuw i8, ptr %i.is, i64 5624
  %i.amo = load i32, ptr %i.amn, align 8, !tbaa !21
  %i.amp = sext i32 %i.amo to i64
  %i.amq = mul i64 %.1107.lcssa.i, %i.amp
  %i.amr = lshr i64 %i.amq, 3
  %i.ams = call i32 @H5Pset_external(i64 noundef %i.all, ptr noundef %i.amm, i64 noundef 0, i64 noundef %i.amr) #20 ; 0 uses
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.ht
  %i.amt = getelementptr inbounds nuw i8, ptr %i.is, i64 5756
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !15
  %i.amv = icmp eq i32 %i.amu, 1
  %i.amw = load i32, ptr %i.aif, align 4, !tbaa !25
  %i.amx = getelementptr inbounds nuw i8, ptr %i.is, i64 5640
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !30
  br i1 %i.amv, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.amz = getelementptr inbounds nuw i8, ptr %i.is, i64 5672
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !44
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %.sink.i = phi ptr [ %i.ana, %bb.hy ], [ null, %bb.hx ]
  %i.anb = call i64 @H5Screate_simple(i32 noundef %i.amw, ptr noundef %i.amy, ptr noundef %.sink.i) #20 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #20
  %i.anc = call i32 @H5Eauto_is_v2(i64 noundef 0, ptr noundef nonnull %i.ad) #20 ; 0 uses
  %i.and = load i32, ptr %i.ad, align 4, !tbaa !15
  %.not130.i = icmp eq i32 %i.and, 0
  br i1 %.not130.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.ane = call i32 @H5Eget_auto2(i64 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %i.ae) #20 ; 0 uses
  %i.anf = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.ic

bb.ib:                                            ; preds = %bb.hz
  %i.ang = call i32 @H5Eget_auto1(ptr noundef nonnull %7, ptr noundef nonnull %i.ae) #20 ; 0 uses
  %i.anh = call i32 @H5Eset_auto1(ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %10 = sext i32 %.3.i to i64
  %i.ani = getelementptr inbounds [255 x i8], ptr %i.ajz, i64 %10
  %i.anj = call i64 @H5Dcreate2(i64 noundef %.1113.i, ptr noundef nonnull %i.ani, i64 noundef %i.ald, i64 noundef %i.anb, i64 noundef 0, i64 noundef %i.all, i64 noundef 0) #20 ; 4 uses
  %i.ank = icmp sgt i64 %i.anj, -1
  br i1 %i.ank, label %bb.id, label %bb.ig

bb.id:                                            ; preds = %bb.ic
  %i.anl = load i32, ptr %i.ad, align 4, !tbaa !15
  %.not131.i = icmp eq i32 %i.anl, 0
  %i.anm = load ptr, ptr %7, align 8, !tbaa !14   ; 2 uses
  %i.ann = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 2 uses
  br i1 %.not131.i, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.ano = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef %i.anm, ptr noundef %i.ann) #20 ; 0 uses
  br label %bb.ih

bb.if:                                            ; preds = %bb.id
  %i.anp = call i32 @H5Eset_auto1(ptr noundef %i.anm, ptr noundef %i.ann) #20 ; 0 uses
  br label %bb.ih

bb.ig:                                            ; preds = %bb.ic
  %i.anq = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite.i167 = call i64 @fwrite(ptr nonnull @.str.316, i64 98, i64 1, ptr %i.anq) ; 0 uses
  %i.anr = call i32 @H5Pclose(i64 noundef %i.all) #20 ; 0 uses
  %i.ans = call i32 @H5Sclose(i64 noundef %i.anb) #20 ; 0 uses
  %i.ant = call i32 @H5Fclose(i64 noundef %.0115.i) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #20
  br label %process.exit.thread

bb.ih:                                            ; preds = %bb.if, %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #20
  %i.anu = getelementptr inbounds nuw i8, ptr %i.is, i64 5696
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !103
  %i.anw = call i32 @H5Dwrite(i64 noundef %i.anj, i64 noundef %i.alc, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %i.anv) #20
  %i.anx = icmp slt i32 %i.anw, 0
  br i1 %i.anx, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.any = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite132.i = call i64 @fwrite(ptr nonnull @.str.317, i64 38, i64 1, ptr %i.any) ; 0 uses
  %i.anz = call i32 @H5Dclose(i64 noundef %i.anj) #20 ; 0 uses
  %i.aoa = call i32 @H5Pclose(i64 noundef %i.all) #20 ; 0 uses
  %i.aob = call i32 @H5Sclose(i64 noundef %i.anb) #20 ; 0 uses
  %i.aoc = call i32 @H5Fclose(i64 noundef %.0115.i) #20 ; 0 uses
  br label %process.exit.thread

bb.ij:                                            ; preds = %bb.ih
  %i.aod = call i32 @H5Dclose(i64 noundef %i.anj) #20 ; 0 uses
  %i.aoe = call i32 @H5Pclose(i64 noundef %i.all) #20 ; 0 uses
  %i.aof = call i32 @H5Sclose(i64 noundef %i.anb) #20 ; 0 uses
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.hd
  %.2111.i = phi i64 [ %i.anb, %bb.ij ], [ %.0109352.i, %bb.hd ]
  %.2108.i = phi i64 [ %.1107.lcssa.i, %bb.ij ], [ %.0106353.i, %bb.hd ]
  %indvars.iv.next570.i = add nuw nsw i64 %indvars.iv569.i, 1 ; 2 uses
  %i.aog = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.aoh = sext i32 %i.aog to i64
  %i.aoi = icmp slt i64 %indvars.iv.next570.i, %i.aoh
  br i1 %i.aoi, label %.lr.ph356.i, label %process.exit, !llvm.loop !93

process.exit:                                     ; preds = %bb.ik, %bb.ap
  %i.aoj = call i32 @H5Fclose(i64 noundef %.0115.i) #20 ; 0 uses
  %i.aok = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.aol = icmp sgt i32 %i.aok, 0
  br i1 %i.aol, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %process.exit, %bb.iu
  %indvars.iv653 = phi i64 [ %indvars.iv.next654, %bb.iu ], [ 0, %process.exit ] ; 2 uses
  %i.aom = getelementptr inbounds nuw [5776 x i8], ptr %i.am, i64 %indvars.iv653 ; 5 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 5640
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !30 ; 2 uses
  %.not151 = icmp eq ptr %i.aoo, null
  br i1 %.not151, label %bb.im, label %bb.il

bb.il:                                            ; preds = %.lr.ph
  call void @free(ptr noundef nonnull %i.aoo) #20
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %.lr.ph
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aom, i64 5664
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !41 ; 2 uses
  %.not152 = icmp eq ptr %i.aoq, null
  br i1 %.not152, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @free(ptr noundef nonnull %i.aoq) #20
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aom, i64 5672
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !44 ; 2 uses
  %.not153 = icmp eq ptr %i.aos, null
  br i1 %.not153, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @free(ptr noundef nonnull %i.aos) #20
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aom, i64 5688
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !43 ; 2 uses
  %.not154 = icmp eq ptr %i.aou, null
  br i1 %.not154, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void @free(ptr noundef nonnull %i.aou) #20
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aom, i64 5696
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !103 ; 2 uses
  %.not155 = icmp eq ptr %i.aow, null
  br i1 %.not155, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  call void @free(ptr noundef nonnull %i.aow) #20
  br label %bb.iu

bb.iu:                                            ; preds = %bb.is, %bb.it
  %indvars.iv.next654 = add nuw nsw i64 %indvars.iv653, 1 ; 2 uses
  %i.aox = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.aoy = sext i32 %i.aox to i64
  %i.aoz = icmp slt i64 %indvars.iv.next654, %i.aoy
  br i1 %i.aoz, label %.lr.ph, label %._crit_edge, !llvm.loop !94

process.exit.thread:                              ; preds = %.thread.i171, %bb.ig, %bb.ii, %bb.hv, %processDataFile.exit.thread.i, %bb.ar, %bb.a, %bb.ah, %.loopexit1510, %bb.aa, %bb.u, %bb.t, %bb.s, %.loopexit1518, %bb.m, %bb.l, %bb.j, %.loopexit1509, %bb.e
  %i.apa = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %fwrite157 = call i64 @fwrite(ptr nonnull @.str.3, i64 17, i64 1, ptr %i.apa) ; 0 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.am, i64 173536 ; 2 uses
  %i.apc = load i32, ptr %i.apb, align 8, !tbaa !97
  %i.apd = icmp sgt i32 %i.apc, 0
  br i1 %i.apd, label %.lr.ph421, label %._crit_edge

.lr.ph421:                                        ; preds = %process.exit.thread, %bb.je
  %indvars.iv656 = phi i64 [ %indvars.iv.next657, %bb.je ], [ 0, %process.exit.thread ] ; 2 uses
  %i.ape = getelementptr inbounds nuw [5776 x i8], ptr %i.am, i64 %indvars.iv656 ; 5 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 5640
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !30 ; 2 uses
  %.not158 = icmp eq ptr %i.apg, null
  br i1 %.not158, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %.lr.ph421
  call void @free(ptr noundef nonnull %i.apg) #20
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %.lr.ph421
  %i.aph = getelementptr inbounds nuw i8, ptr %i.ape, i64 5664
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !41 ; 2 uses
  %.not159 = icmp eq ptr %i.api, null
  br i1 %.not159, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  call void @free(ptr noundef nonnull %i.api) #20
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %i.apj = getelementptr inbounds nuw i8, ptr %i.ape, i64 5672
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !44 ; 2 uses
  %.not160 = icmp eq ptr %i.apk, null
  br i1 %.not160, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  call void @free(ptr noundef nonnull %i.apk) #20
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %i.apl = getelementptr inbounds nuw i8, ptr %i.ape, i64 5688
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !43 ; 2 uses
  %.not161 = icmp eq ptr %i.apm, null
  br i1 %.not161, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  call void @free(ptr noundef nonnull %i.apm) #20
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %i.apn = getelementptr inbounds nuw i8, ptr %i.ape, i64 5696
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !103 ; 2 uses
  %.not162 = icmp eq ptr %i.apo, null
  br i1 %.not162, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  call void @free(ptr noundef nonnull %i.apo) #20
  br label %bb.je

bb.je:                                            ; preds = %bb.jc, %bb.jd
  %indvars.iv.next657 = add nuw nsw i64 %indvars.iv656, 1 ; 2 uses
  %i.app = load i32, ptr %i.apb, align 8, !tbaa !97
  %i.apq = sext i32 %i.app to i64
  %i.apr = icmp slt i64 %indvars.iv.next657, %i.apq
  br i1 %i.apr, label %.lr.ph421, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %bb.iu, %bb.je, %process.exit.thread, %process.exit
  %.0131 = phi i32 [ 0, %process.exit ], [ 1, %bb.je ], [ 1, %process.exit.thread ], [ 0, %bb.iu ]
  call void @free(ptr noundef nonnull %i.am) #20
  ret i32 %.0131
end_hunk_1
