Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mpmTruth?download=true
inline.NumInlined: 95
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Mpm_CutComputeTruth:bb.a
  %index.next189 = add nuw i64 %index186, 2       ; 2 uses
  %i.ut = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.ut, label %middle.block190, label %vector.body185, !llvm.loop !51

middle.block190:                                  ; preds = %vector.body185
  %cmp.n191 = icmp eq i64 %n.vec184, %wide.trip.count.i125.i
  br i1 %cmp.n191, label %Abc_TtAnd.exit.i, label %.lr.ph.i126.i.preheader

.lr.ph.i126.i.preheader:                          ; preds = %.lr.ph.preheader.i124.i, %middle.block190
  %indvars.iv.i127.i.ph = phi i64 [ 0, %.lr.ph.preheader.i124.i ], [ %n.vec184, %middle.block190 ]
  br label %.lr.ph.i126.i

.lr.ph.i126.i:                                    ; preds = %.lr.ph.i126.i.preheader, %.lr.ph.i126.i
  %indvars.iv.i127.i = phi i64 [ %indvars.iv.next.i128.i, %.lr.ph.i126.i ], [ %indvars.iv.i127.i.ph, %.lr.ph.i126.i.preheader ] ; 4 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.i127.i
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !22
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.i127.i
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !22
  %i.uy = xor i64 %i.ux, %i.uv
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %indvars.iv.i127.i
  store i64 %i.uy, ptr %i.uz, align 8, !tbaa !22
  %indvars.iv.next.i128.i = add nuw nsw i64 %indvars.iv.i127.i, 1 ; 2 uses
  %exitcond.not.i129.i = icmp eq i64 %indvars.iv.next.i128.i, %wide.trip.count.i125.i
  br i1 %exitcond.not.i129.i, label %Abc_TtAnd.exit.i, label %.lr.ph.i126.i, !llvm.loop !52

bb.ay:                                            ; preds = %Mpm_TruthStretch.exit117.i
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 6432 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.vc = load i32, ptr %i.iv, align 8, !tbaa !83 ; 3 uses
  %i.vd = icmp sgt i32 %i.vc, 0
  br i1 %i.vd, label %.lr.ph.preheader.i130.i, label %Abc_TtAnd.exit.i

.lr.ph.preheader.i130.i:                          ; preds = %bb.ay
  %wide.trip.count.i131.i = zext nneg i32 %i.vc to i64 ; 3 uses
  %min.iters.check169 = icmp eq i32 %i.vc, 1
  br i1 %min.iters.check169, label %.lr.ph.i132.i.preheader, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.preheader.i130.i
  %n.vec171 = and i64 %wide.trip.count.i131.i, 2147483646 ; 3 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next177, %vector.body172 ] ; 5 uses
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %index173
  %wide.load174 = load <2 x i64>, ptr %i.ve, align 8, !tbaa !22 ; 2 uses
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %index173
  %wide.load175 = load <2 x i64>, ptr %i.vf, align 8, !tbaa !22
  %i.vg = and <2 x i64> %wide.load175, %wide.load174
  %i.vh = xor <2 x i64> %wide.load174, splat (i64 -1)
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %index173
  %wide.load176 = load <2 x i64>, ptr %i.vi, align 8, !tbaa !22
  %i.vj = and <2 x i64> %wide.load176, %i.vh
  %i.vk = or <2 x i64> %i.vj, %i.vg
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %index173
  store <2 x i64> %i.vk, ptr %i.vl, align 8, !tbaa !22
  %index.next177 = add nuw i64 %index173, 2       ; 2 uses
  %i.vm = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.vm, label %middle.block178, label %vector.body172, !llvm.loop !53

middle.block178:                                  ; preds = %vector.body172
  %cmp.n179 = icmp eq i64 %n.vec171, %wide.trip.count.i131.i
  br i1 %cmp.n179, label %Abc_TtAnd.exit.i, label %.lr.ph.i132.i.preheader

.lr.ph.i132.i.preheader:                          ; preds = %.lr.ph.preheader.i130.i, %middle.block178
  %indvars.iv.i133.i.ph = phi i64 [ 0, %.lr.ph.preheader.i130.i ], [ %n.vec171, %middle.block178 ]
  br label %.lr.ph.i132.i

.lr.ph.i132.i:                                    ; preds = %.lr.ph.i132.i.preheader, %.lr.ph.i132.i
  %indvars.iv.i133.i = phi i64 [ %indvars.iv.next.i134.i, %.lr.ph.i132.i ], [ %indvars.iv.i133.i.ph, %.lr.ph.i132.i.preheader ] ; 5 uses
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %indvars.iv.i133.i
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !22 ; 2 uses
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.i133.i
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !22
  %i.vr = and i64 %i.vq, %i.vo
  %i.vs = xor i64 %i.vo, -1
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.i133.i
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !22
  %i.vv = and i64 %i.vu, %i.vs
  %i.vw = or i64 %i.vv, %i.vr
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %indvars.iv.i133.i
  store i64 %i.vw, ptr %i.vx, align 8, !tbaa !22
  %indvars.iv.next.i134.i = add nuw nsw i64 %indvars.iv.i133.i, 1 ; 2 uses
  %exitcond.not.i135.i = icmp eq i64 %indvars.iv.next.i134.i, %wide.trip.count.i131.i
  br i1 %exitcond.not.i135.i, label %Abc_TtAnd.exit.i, label %.lr.ph.i132.i, !llvm.loop !54

Abc_TtAnd.exit.i:                                 ; preds = %.lr.ph.i132.i, %.lr.ph.i126.i, %.lr.ph.i120.i, %middle.block178, %middle.block190, %middle.block202, %bb.ay, %bb.ax, %bb.aw, %Mpm_TruthStretch.exit117.i
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 6432 ; 13 uses
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !22
  %i.wa = and i64 %i.vz, 1
  %.not67.i = icmp eq i64 %i.wa, 0
  br i1 %.not67.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %Abc_TtAnd.exit.i
  %i.wb = load i32, ptr %i.iv, align 8, !tbaa !83 ; 3 uses
  %i.wc = icmp sgt i32 %i.wb, 0
  br i1 %i.wc, label %.lr.ph.preheader.i136.i, label %Abc_TtNot.exit.i

.lr.ph.preheader.i136.i:                          ; preds = %bb.az
  %wide.trip.count.i137.i = zext nneg i32 %i.wb to i64 ; 3 uses
  %min.iters.check206 = icmp ult i32 %i.wb, 4
  br i1 %min.iters.check206, label %.lr.ph.i138.i.preheader, label %vector.ph207

vector.ph207:                                     ; preds = %.lr.ph.preheader.i136.i
  %n.vec208 = and i64 %wide.trip.count.i137.i, 2147483644 ; 3 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next213, %vector.body209 ] ; 2 uses
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %index210 ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 16 ; 2 uses
  %wide.load211 = load <2 x i64>, ptr %i.wd, align 8, !tbaa !22
  %wide.load212 = load <2 x i64>, ptr %i.we, align 8, !tbaa !22
  %i.wf = xor <2 x i64> %wide.load211, splat (i64 -1)
  %i.wg = xor <2 x i64> %wide.load212, splat (i64 -1)
  store <2 x i64> %i.wf, ptr %i.wd, align 8, !tbaa !22
  store <2 x i64> %i.wg, ptr %i.we, align 8, !tbaa !22
  %index.next213 = add nuw i64 %index210, 4       ; 2 uses
  %i.wh = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.wh, label %middle.block214, label %vector.body209, !llvm.loop !55

middle.block214:                                  ; preds = %vector.body209
  %cmp.n215 = icmp eq i64 %n.vec208, %wide.trip.count.i137.i
  br i1 %cmp.n215, label %Abc_TtNot.exit.i, label %.lr.ph.i138.i.preheader

.lr.ph.i138.i.preheader:                          ; preds = %.lr.ph.preheader.i136.i, %middle.block214
  %indvars.iv.i139.i.ph = phi i64 [ 0, %.lr.ph.preheader.i136.i ], [ %n.vec208, %middle.block214 ]
  br label %.lr.ph.i138.i

.lr.ph.i138.i:                                    ; preds = %.lr.ph.i138.i.preheader, %.lr.ph.i138.i
  %indvars.iv.i139.i = phi i64 [ %indvars.iv.next.i140.i, %.lr.ph.i138.i ], [ %indvars.iv.i139.i.ph, %.lr.ph.i138.i.preheader ] ; 2 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.i139.i ; 2 uses
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !22
  %i.wk = xor i64 %i.wj, -1
  store i64 %i.wk, ptr %i.wi, align 8, !tbaa !22
  %indvars.iv.next.i140.i = add nuw nsw i64 %indvars.iv.i139.i, 1 ; 2 uses
  %exitcond.not.i141.i = icmp eq i64 %indvars.iv.next.i140.i, %wide.trip.count.i137.i
  br i1 %exitcond.not.i141.i, label %Abc_TtNot.exit.i, label %.lr.ph.i138.i, !llvm.loop !56

Abc_TtNot.exit.i:                                 ; preds = %.lr.ph.i138.i, %middle.block214, %bb.az
  %i.wl = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.wm = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.wl, ptr noundef nonnull %i.vy)
  %i.wn = shl nsw i32 %i.wm, 1
  %i.wo = load i32, ptr %i.nw, align 4
  %i.wp = and i32 %i.wn, 33554430
  %i.wq = and i32 %i.wo, -33554432
  %i.wr = or disjoint i32 %i.wq, %i.wp
  %i.ws = or disjoint i32 %i.wr, 1
  br label %bb.bb

bb.ba:                                            ; preds = %Abc_TtAnd.exit.i
  %i.wt = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.wu = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.wt, ptr noundef nonnull %i.vy)
  %i.wv = shl nsw i32 %i.wu, 1
  %i.ww = load i32, ptr %i.nw, align 4
  %i.wx = and i32 %i.wv, 33554430
  %i.wy = and i32 %i.ww, -33554432
  %i.wz = or disjoint i32 %i.wy, %i.wx
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %Abc_TtNot.exit.i
  %i.xa = phi i32 [ %i.ws, %Abc_TtNot.exit.i ], [ %i.wz, %bb.ba ] ; 4 uses
  store i32 %i.xa, ptr %i.nw, align 4
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !79
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 36
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !81
  %.not68.i = icmp eq i32 %i.xe, 0
  br i1 %.not68.i, label %Mpm_CutComputeTruth7.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.xf = lshr i32 %i.xa, 1
  %i.xg = and i32 %i.xf, 16777215                 ; 2 uses
  %.val.i.i22 = load ptr, ptr %i.n, align 8, !tbaa !78 ; 4 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 24
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !16
  %i.xj = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 8
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !17
  %i.xl = lshr i32 %i.xg, %i.xk
  %i.xm = zext nneg i32 %i.xl to i64
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %i.xm
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !19 ; 2 uses
  %i.xp = ptrtoaddr ptr %i.xo to i64
  %i.xq = load i32, ptr %.val.i.i22, align 8, !tbaa !20
  %i.xr = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 12
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !21
  %i.xt = and i32 %i.xs, %i.xg
  %i.xu = mul i32 %i.xt, %i.xq
  %i.xv = sext i32 %i.xu to i64                   ; 2 uses
  %i.xw = getelementptr inbounds [8 x i8], ptr %i.xo, i64 %i.xv ; 10 uses
  %i.xx = lshr i32 %i.xa, 27                      ; 9 uses
  %.not.i.i.i23 = icmp eq i32 %i.xx, 0
  br i1 %.not.i.i.i23, label %Abc_TtSupportAndSize.exit.i.i, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.bc
  %i.xy = icmp ult i32 %i.xa, 939524096
  %i.xz = add nsw i32 %i.xx, -6
  %i.ya = shl nuw nsw i32 1, %i.xz
  %i.yb = zext nneg i32 %i.ya to i64              ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.yb, 3
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xw, i64 %.idx.i.i.i.i
  br i1 %i.xy, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.split.split.preheader.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i24
  %i.yd = load i64, ptr %i.xw, align 8, !tbaa !22 ; 12 uses
  %i.ye = lshr i64 %i.yd, 1
  %i.yf = xor i64 %i.ye, %i.yd
  %i.yg = and i64 %i.yf, 6148914691236517205
  %.not18.us.i.i.i = icmp ne i64 %i.yg, 0         ; 4 uses
  %.3.i.i = zext i1 %.not18.us.i.i.i to i32       ; 2 uses
  %i.yh = zext i1 %.not18.us.i.i.i to i32         ; 2 uses
  %exitcond56.not.i.i.i = icmp eq i32 %i.xx, 1
  br i1 %exitcond56.not.i.i.i, label %Abc_TtSupportAndSize.exit.i.i, label %Abc_TtHasVar.exit.us.i.i.i.1

Abc_TtHasVar.exit.us.i.i.i.1:                     ; preds = %.lr.ph.split.us.i.i.i
  %i.yi = lshr i64 %i.yd, 2
  %i.yj = xor i64 %i.yi, %i.yd
  %i.yk = and i64 %i.yj, 3689348814741910323
  %.not18.us.i.i.i.1 = icmp eq i64 %i.yk, 0       ; 3 uses
  %i.yl = select i1 %.not18.us.i.i.i, i32 2, i32 1 ; 2 uses
  %.3.i.i.1 = select i1 %.not18.us.i.i.i.1, i32 %.3.i.i, i32 %i.yl ; 2 uses
  %i.ym = select i1 %.not18.us.i.i.i.1, i32 0, i32 2
  %.1.us.i.i.i.1 = or disjoint i32 %i.ym, %i.yh   ; 2 uses
  %exitcond56.not.i.i.i.1 = icmp eq i32 %i.xx, 2
  br i1 %exitcond56.not.i.i.i.1, label %Abc_TtSupportAndSize.exit.i.i, label %Abc_TtHasVar.exit.us.i.i.i.2

Abc_TtHasVar.exit.us.i.i.i.2:                     ; preds = %Abc_TtHasVar.exit.us.i.i.i.1
  %i.yn = zext i1 %.not18.us.i.i.i to i32
  %i.yo = select i1 %.not18.us.i.i.i.1, i32 %i.yn, i32 %i.yl ; 2 uses
  %i.yp = lshr i64 %i.yd, 4
  %i.yq = xor i64 %i.yp, %i.yd
  %i.yr = and i64 %i.yq, 1085102592571150095
  %.not18.us.i.i.i.2 = icmp eq i64 %i.yr, 0       ; 3 uses
  %i.ys = add nuw nsw i32 %i.yo, 1                ; 2 uses
  %.3.i.i.2 = select i1 %.not18.us.i.i.i.2, i32 %.3.i.i.1, i32 %i.ys ; 2 uses
  %i.yt = select i1 %.not18.us.i.i.i.2, i32 0, i32 4
  %.1.us.i.i.i.2 = or disjoint i32 %i.yt, %.1.us.i.i.i.1 ; 2 uses
  %exitcond56.not.i.i.i.2 = icmp eq i32 %i.xx, 3
  br i1 %exitcond56.not.i.i.i.2, label %Abc_TtSupportAndSize.exit.i.i, label %Abc_TtHasVar.exit.us.i.i.i.3

Abc_TtHasVar.exit.us.i.i.i.3:                     ; preds = %Abc_TtHasVar.exit.us.i.i.i.2
  %i.yu = select i1 %.not18.us.i.i.i.2, i32 %i.yo, i32 %i.ys ; 2 uses
  %i.yv = lshr i64 %i.yd, 8
  %i.yw = xor i64 %i.yv, %i.yd
  %i.yx = and i64 %i.yw, 71777214294589695
  %.not18.us.i.i.i.3 = icmp eq i64 %i.yx, 0       ; 3 uses
  %i.yy = add nuw nsw i32 %i.yu, 1                ; 2 uses
  %.3.i.i.3 = select i1 %.not18.us.i.i.i.3, i32 %.3.i.i.2, i32 %i.yy ; 2 uses
  %i.yz = select i1 %.not18.us.i.i.i.3, i32 0, i32 8
  %.1.us.i.i.i.3 = or disjoint i32 %i.yz, %.1.us.i.i.i.2 ; 2 uses
  %exitcond56.not.i.i.i.3 = icmp eq i32 %i.xx, 4
  br i1 %exitcond56.not.i.i.i.3, label %Abc_TtSupportAndSize.exit.i.i, label %Abc_TtHasVar.exit.us.i.i.i.4

Abc_TtHasVar.exit.us.i.i.i.4:                     ; preds = %Abc_TtHasVar.exit.us.i.i.i.3
  %i.za = select i1 %.not18.us.i.i.i.3, i32 %i.yu, i32 %i.yy ; 2 uses
  %i.zb = lshr i64 %i.yd, 16
  %i.zc = xor i64 %i.zb, %i.yd
  %i.zd = and i64 %i.zc, 281470681808895
  %.not18.us.i.i.i.4 = icmp eq i64 %i.zd, 0       ; 3 uses
  %i.ze = add nuw nsw i32 %i.za, 1                ; 2 uses
  %.3.i.i.4 = select i1 %.not18.us.i.i.i.4, i32 %.3.i.i.3, i32 %i.ze ; 2 uses
  %i.zf = select i1 %.not18.us.i.i.i.4, i32 0, i32 16
  %.1.us.i.i.i.4 = or disjoint i32 %i.zf, %.1.us.i.i.i.3 ; 2 uses
  %exitcond56.not.i.i.i.4 = icmp eq i32 %i.xx, 5
  br i1 %exitcond56.not.i.i.i.4, label %Abc_TtSupportAndSize.exit.i.i, label %Abc_TtHasVar.exit.us.i.i.i.5

Abc_TtHasVar.exit.us.i.i.i.5:                     ; preds = %Abc_TtHasVar.exit.us.i.i.i.4
  %i.zg = select i1 %.not18.us.i.i.i.4, i32 %i.za, i32 %i.ze
  %i.zh = lshr i64 %i.yd, 32
  %.masked = and i64 %i.yd, 4294967295
  %.not18.us.i.i.i.5 = icmp eq i64 %i.zh, %.masked ; 2 uses
  %i.zi = add nsw i32 %i.zg, 1
  %.3.i.i.5 = select i1 %.not18.us.i.i.i.5, i32 %.3.i.i.4, i32 %i.zi
  %i.zj = select i1 %.not18.us.i.i.i.5, i32 0, i32 32
  %.1.us.i.i.i.5 = or disjoint i32 %i.zj, %.1.us.i.i.i.4
  br label %Abc_TtSupportAndSize.exit.i.i

.lr.ph.split.split.split.preheader.i.i.i:         ; preds = %.lr.ph.i.i.i24
  %wide.trip.count.i.i.i25 = zext nneg i32 %i.xx to i64
  br label %.lr.ph.split.split.split.i.i.i

.lr.ph.split.split.split.i.i.i:                   ; preds = %Abc_TtHasVar.exit.thread.i.i.i, %.lr.ph.split.split.split.preheader.i.i.i
  %.037.i.i = phi i32 [ 0, %.lr.ph.split.split.split.preheader.i.i.i ], [ %.138.i.i, %Abc_TtHasVar.exit.thread.i.i.i ] ; 2 uses
  %i.zk = phi i32 [ 0, %.lr.ph.split.split.split.preheader.i.i.i ], [ %i.aai, %Abc_TtHasVar.exit.thread.i.i.i ] ; 3 uses
  %indvars.iv.i.i.i26 = phi i64 [ 0, %.lr.ph.split.split.split.preheader.i.i.i ], [ %indvars.iv.next.i.i.i28, %Abc_TtHasVar.exit.thread.i.i.i ] ; 4 uses
  %.022.i.i.i = phi i32 [ 0, %.lr.ph.split.split.split.preheader.i.i.i ], [ %.1.i.i.i27, %Abc_TtHasVar.exit.thread.i.i.i ] ; 3 uses
  %i.zl = icmp samesign ult i64 %indvars.iv.i.i.i26, 6
  %i.zm = trunc i64 %indvars.iv.i.i.i26 to i32    ; 3 uses
  br i1 %i.zl, label %.lr.ph.i.i.i.i, label %.preheader.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.split.split.i.i.i
  %i.zn = shl nuw nsw i32 1, %i.zm                ; 2 uses
  %i.zo = zext nneg i32 %i.zn to i64
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i.i.i26
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !22
  br label %bb.be

bb.bd:                                            ; preds = %bb.be
  %indvars.iv.next53.i.i.i.i = add nuw nsw i64 %indvars.iv52.i.i.i.i, 1 ; 2 uses
  %exitcond56.not.i.i.i.i = icmp eq i64 %indvars.iv.next53.i.i.i.i, %i.yb
  br i1 %exitcond56.not.i.i.i.i, label %Abc_TtHasVar.exit.thread.i.i.i, label %bb.be, !llvm.loop !57

bb.be:                                            ; preds = %bb.bd, %.lr.ph.i.i.i.i
  %indvars.iv52.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next53.i.i.i.i, %bb.bd ] ; 2 uses
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv52.i.i.i.i
  %i.zs = load i64, ptr %i.zr, align 8, !tbaa !22 ; 2 uses
  %i.zt = lshr i64 %i.zs, %i.zo
  %i.zu = xor i64 %i.zt, %i.zs
  %i.zv = and i64 %i.zu, %i.zq
  %.not39.i.i.i.i = icmp eq i64 %i.zv, 0
  br i1 %.not39.i.i.i.i, label %bb.bd, label %Abc_TtHasVar.exit.thread15.i.i.i

.preheader.lr.ph.i.i.i.i:                         ; preds = %.lr.ph.split.split.split.i.i.i
  %i.zw = add i32 %i.zm, -6                       ; 2 uses
  %i.zx = shl nuw nsw i32 1, %i.zw
  %i.zy = shl nuw nsw i32 2, %i.zw
  %i.zz = zext nneg i32 %i.zy to i64
  %i.aaa = zext nneg i32 %i.zx to i64             ; 2 uses
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.bh, %.preheader.lr.ph.i.i.i.i
  %.03343.i.i.i.i = phi ptr [ %i.xw, %.preheader.lr.ph.i.i.i.i ], [ %i.aae, %bb.bh ] ; 3 uses
  %invariant.gep.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.i.i, i64 %i.aaa
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bg
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.aaa
  br i1 %exitcond.not.i.i.i.i, label %bb.bh, label %bb.bg, !llvm.loop !58

bb.bg:                                            ; preds = %bb.bf, %.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.bf ] ; 3 uses
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !22
  %gep.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.aad = load i64, ptr %gep.i.i.i.i, align 8, !tbaa !22
  %.not.i.i.i.i = icmp eq i64 %i.aac, %i.aad
  br i1 %.not.i.i.i.i, label %bb.bf, label %Abc_TtHasVar.exit.thread15.loopexit.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.i.i, i64 %i.zz ; 2 uses
  %i.aaf = icmp ult ptr %i.aae, %i.yc
  br i1 %i.aaf, label %.preheader.i.i.i.i, label %Abc_TtHasVar.exit.thread.i.i.i, !llvm.loop !59

Abc_TtHasVar.exit.thread15.loopexit.i.i.i:        ; preds = %bb.bg
  %.pre59.i.i.i = shl nuw nsw i32 1, %i.zm
  br label %Abc_TtHasVar.exit.thread15.i.i.i

Abc_TtHasVar.exit.thread15.i.i.i:                 ; preds = %bb.be, %Abc_TtHasVar.exit.thread15.loopexit.i.i.i
  %.pre-phi60.i.i.i = phi i32 [ %.pre59.i.i.i, %Abc_TtHasVar.exit.thread15.loopexit.i.i.i ], [ %i.zn, %bb.be ]
  %i.aag = or i32 %.pre-phi60.i.i.i, %.022.i.i.i
  %i.aah = add nsw i32 %i.zk, 1                   ; 2 uses
  br label %Abc_TtHasVar.exit.thread.i.i.i

Abc_TtHasVar.exit.thread.i.i.i:                   ; preds = %bb.bh, %bb.bd, %Abc_TtHasVar.exit.thread15.i.i.i
  %.138.i.i = phi i32 [ %.037.i.i, %bb.bd ], [ %i.aah, %Abc_TtHasVar.exit.thread15.i.i.i ], [ %.037.i.i, %bb.bh ] ; 2 uses
  %i.aai = phi i32 [ %i.zk, %bb.bd ], [ %i.aah, %Abc_TtHasVar.exit.thread15.i.i.i ], [ %i.zk, %bb.bh ]
  %.1.i.i.i27 = phi i32 [ %.022.i.i.i, %bb.bd ], [ %i.aag, %Abc_TtHasVar.exit.thread15.i.i.i ], [ %.022.i.i.i, %bb.bh ] ; 2 uses
  %indvars.iv.next.i.i.i28 = add nuw nsw i64 %indvars.iv.i.i.i26, 1 ; 2 uses
  %exitcond.not.i.i.i29 = icmp eq i64 %indvars.iv.next.i.i.i28, %wide.trip.count.i.i.i25
  br i1 %exitcond.not.i.i.i29, label %Abc_TtSupportAndSize.exit.i.i, label %.lr.ph.split.split.split.i.i.i, !llvm.loop !60

Abc_TtSupportAndSize.exit.i.i:                    ; preds = %Abc_TtHasVar.exit.thread.i.i.i, %.lr.ph.split.us.i.i.i, %Abc_TtHasVar.exit.us.i.i.i.1, %Abc_TtHasVar.exit.us.i.i.i.2, %Abc_TtHasVar.exit.us.i.i.i.3, %Abc_TtHasVar.exit.us.i.i.i.4, %Abc_TtHasVar.exit.us.i.i.i.5, %bb.bc
  %.4.i.i = phi i32 [ 0, %bb.bc ], [ %.3.i.i.5, %Abc_TtHasVar.exit.us.i.i.i.5 ], [ %.3.i.i, %.lr.ph.split.us.i.i.i ], [ %.3.i.i.1, %Abc_TtHasVar.exit.us.i.i.i.1 ], [ %.3.i.i.2, %Abc_TtHasVar.exit.us.i.i.i.2 ], [ %.3.i.i.3, %Abc_TtHasVar.exit.us.i.i.i.3 ], [ %.3.i.i.4, %Abc_TtHasVar.exit.us.i.i.i.4 ], [ %.138.i.i, %Abc_TtHasVar.exit.thread.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i30 = phi i32 [ 0, %bb.bc ], [ %.1.us.i.i.i.5, %Abc_TtHasVar.exit.us.i.i.i.5 ], [ %i.yh, %.lr.ph.split.us.i.i.i ], [ %.1.us.i.i.i.1, %Abc_TtHasVar.exit.us.i.i.i.1 ], [ %.1.us.i.i.i.2, %Abc_TtHasVar.exit.us.i.i.i.2 ], [ %.1.us.i.i.i.3, %Abc_TtHasVar.exit.us.i.i.i.3 ], [ %.1.us.i.i.i.4, %Abc_TtHasVar.exit.us.i.i.i.4 ], [ %.1.i.i.i27, %Abc_TtHasVar.exit.thread.i.i.i ]
  %i.aaj = icmp eq i32 %.4.i.i, %i.xx
  br i1 %i.aaj, label %Mpm_CutComputeTruth7.exit, label %bb.bi

bb.bi:                                            ; preds = %Abc_TtSupportAndSize.exit.i.i
  %i.aak = icmp slt i32 %.4.i.i, 2
  %i.aal = zext i1 %i.aak to i32
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 13896 ; 2 uses
  %i.aan = load i32, ptr %i.aam, align 8, !tbaa !82
  %i.aao = add nsw i32 %i.aan, %i.aal
  store i32 %i.aao, ptr %i.aam, align 8, !tbaa !82
  %i.aap = load i32, ptr %i.iv, align 8, !tbaa !83 ; 3 uses
  %i.aaq = icmp sgt i32 %i.aap, 0
  br i1 %i.aaq, label %.lr.ph18.preheader.i.i.i, label %Abc_TtCopy.exit.i.i

.lr.ph18.preheader.i.i.i:                         ; preds = %bb.bi
  %wide.trip.count24.i.i.i = zext nneg i32 %i.aap to i64 ; 5 uses
  %min.iters.check220 = icmp ult i32 %i.aap, 16
  br i1 %min.iters.check220, label %.lr.ph18.i.i.i.preheader, label %vector.memcheck217

vector.memcheck217:                               ; preds = %.lr.ph18.preheader.i.i.i
  %i.aar = shl nsw i64 %i.xv, 3
  %i.aas = add i64 %i.aar, %i.xp
  %i.aat = sub i64 %i.a, %i.aas
  %i.aau = add i64 %i.aat, 6431
  %diff.check218 = icmp ult i64 %i.aau, 31
  br i1 %diff.check218, label %.lr.ph18.i.i.i.preheader, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck217
  %n.vec222 = and i64 %wide.trip.count24.i.i.i, 2147483644 ; 3 uses
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next227, %vector.body223 ] ; 3 uses
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %index224 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %wide.load225 = load <2 x i64>, ptr %i.aav, align 8, !tbaa !22
  %wide.load226 = load <2 x i64>, ptr %i.aaw, align 8, !tbaa !22
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %index224 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  store <2 x i64> %wide.load225, ptr %i.aax, align 8, !tbaa !22
  store <2 x i64> %wide.load226, ptr %i.aay, align 8, !tbaa !22
  %index.next227 = add nuw i64 %index224, 4       ; 2 uses
  %i.aaz = icmp eq i64 %index.next227, %n.vec222
  br i1 %i.aaz, label %middle.block228, label %vector.body223, !llvm.loop !61

middle.block228:                                  ; preds = %vector.body223
  %cmp.n229 = icmp eq i64 %n.vec222, %wide.trip.count24.i.i.i
  br i1 %cmp.n229, label %Abc_TtCopy.exit.i.i, label %.lr.ph18.i.i.i.preheader

.lr.ph18.i.i.i.preheader:                         ; preds = %vector.memcheck217, %.lr.ph18.preheader.i.i.i, %middle.block228
  %indvars.iv21.i.i.i.ph = phi i64 [ 0, %vector.memcheck217 ], [ 0, %.lr.ph18.preheader.i.i.i ], [ %n.vec222, %middle.block228 ] ; 3 uses
  %xtraiter253 = and i64 %wide.trip.count24.i.i.i, 3 ; 2 uses
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol

.lr.ph18.i.i.i.prol:                              ; preds = %.lr.ph18.i.i.i.preheader, %.lr.ph18.i.i.i.prol
  %indvars.iv21.i.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ], [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ] ; 3 uses
  %prol.iter255 = phi i64 [ %prol.iter255.next, %.lr.ph18.i.i.i.prol ], [ 0, %.lr.ph18.i.i.i.preheader ]
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv21.i.i.i.prol
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !22
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv21.i.i.i.prol
  store i64 %i.abb, ptr %i.abc, align 8, !tbaa !22
  %indvars.iv.next22.i.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.i.prol, 1 ; 2 uses
  %prol.iter255.next = add i64 %prol.iter255, 1   ; 2 uses
  %prol.iter255.cmp.not = icmp eq i64 %prol.iter255.next, %xtraiter253
  br i1 %prol.iter255.cmp.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol, !llvm.loop !62

.lr.ph18.i.i.i.prol.loopexit:                     ; preds = %.lr.ph18.i.i.i.prol, %.lr.ph18.i.i.i.preheader
  %indvars.iv21.i.i.i.unr = phi i64 [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ], [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ]
  %i.abd = sub nsw i64 %indvars.iv21.i.i.i.ph, %wide.trip.count24.i.i.i
  %i.abe = icmp ugt i64 %i.abd, -4
  br i1 %i.abe, label %Abc_TtCopy.exit.i.i, label %.lr.ph18.i.i.i

.lr.ph18.i.i.i:                                   ; preds = %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i
  %indvars.iv21.i.i.i = phi i64 [ %indvars.iv.next22.i.i.i.3, %.lr.ph18.i.i.i ], [ %indvars.iv21.i.i.i.unr, %.lr.ph18.i.i.i.prol.loopexit ] ; 6 uses
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv21.i.i.i
  %i.abg = load i64, ptr %i.abf, align 8, !tbaa !22
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv21.i.i.i
  store i64 %i.abg, ptr %i.abh, align 8, !tbaa !22
  %indvars.iv.next22.i.i.i = add nuw nsw i64 %indvars.iv21.i.i.i, 1 ; 2 uses
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv.next22.i.i.i
  %i.abj = load i64, ptr %i.abi, align 8, !tbaa !22
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next22.i.i.i
  store i64 %i.abj, ptr %i.abk, align 8, !tbaa !22
  %indvars.iv.next22.i.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i.i, 2 ; 2 uses
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv.next22.i.i.i.1
  %i.abm = load i64, ptr %i.abl, align 8, !tbaa !22
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next22.i.i.i.1
  store i64 %i.abm, ptr %i.abn, align 8, !tbaa !22
  %indvars.iv.next22.i.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i.i, 3 ; 2 uses
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv.next22.i.i.i.2
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !22
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next22.i.i.i.2
  store i64 %i.abp, ptr %i.abq, align 8, !tbaa !22
  %indvars.iv.next22.i.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.i.3, %wide.trip.count24.i.i.i
  br i1 %exitcond25.not.i.i.i.3, label %Abc_TtCopy.exit.i.i, label %.lr.ph18.i.i.i, !llvm.loop !63

Abc_TtCopy.exit.i.i:                              ; preds = %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i, %middle.block228, %bb.bi
  %.val3241.i.i = load i32, ptr %i.nw, align 4    ; 4 uses
  %.not45.i.i = icmp ult i32 %.val3241.i.i, 134217728
  br i1 %.not45.i.i, label %._crit_edge.i.i31, label %.lr.ph.i142.i

.lr.ph.i142.i:                                    ; preds = %Abc_TtCopy.exit.i.i
  %i.abr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bn, %.lr.ph.i142.i
  %.val32.pre52.i.i = phi i32 [ %.val3241.i.i, %.lr.ph.i142.i ], [ %.val32.pre53.i.i, %bb.bn ] ; 2 uses
  %.val3250.i.i = phi i32 [ %.val3241.i.i, %.lr.ph.i142.i ], [ %.val32.i.i, %bb.bn ]
  %indvars.iv.i143.i = phi i64 [ 0, %.lr.ph.i142.i ], [ %indvars.iv.next.i146.i, %bb.bn ] ; 4 uses
  %.044.i.i = phi i32 [ 0, %.lr.ph.i142.i ], [ %.1.i145.i, %bb.bn ] ; 4 uses
  %i.abs = trunc nuw nsw i64 %indvars.iv.i143.i to i32 ; 2 uses
  %i.abt = shl nuw nsw i32 1, %i.abs
  %i.abu = and i32 %i.abt, %.0.lcssa.i.i.i30
  %.not.i144.i = icmp eq i32 %i.abu, 0
  br i1 %.not.i144.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.abv = sext i32 %.044.i.i to i64              ; 2 uses
  %i.abw = icmp sgt i64 %indvars.iv.i143.i, %i.abv
end_hunk_0
