Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mpmTruth?download=true
inline.NumInlined: 95
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Mpm_CutComputeTruth:bb.a
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph183
  %index186 = phi i64 [ 0, %vector.ph183 ], [ %index.next189, %vector.body185 ] ; 4 uses
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %index186
  %wide.load187 = load <2 x i64>, ptr %i.up, align 8, !tbaa !36
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %index186
  %wide.load188 = load <2 x i64>, ptr %i.uq, align 8, !tbaa !36
  %i.ur = xor <2 x i64> %wide.load188, %wide.load187
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %index186
  store <2 x i64> %i.ur, ptr %i.us, align 8, !tbaa !36
  %index.next189 = add nuw i64 %index186, 2       ; 2 uses
  %i.ut = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.ut, label %middle.block190, label %vector.body185, !llvm.loop !70

middle.block190:                                  ; preds = %vector.body185
  %cmp.n191 = icmp eq i64 %n.vec184, %wide.trip.count.i125.i
  br i1 %cmp.n191, label %Abc_TtAnd.exit.i, label %.lr.ph.i126.i.preheader

.lr.ph.i126.i.preheader:                          ; preds = %.lr.ph.preheader.i124.i, %middle.block190
  %indvars.iv.i127.i.ph = phi i64 [ 0, %.lr.ph.preheader.i124.i ], [ %n.vec184, %middle.block190 ]
  br label %.lr.ph.i126.i

.lr.ph.i126.i:                                    ; preds = %.lr.ph.i126.i.preheader, %.lr.ph.i126.i
  %indvars.iv.i127.i = phi i64 [ %indvars.iv.next.i128.i, %.lr.ph.i126.i ], [ %indvars.iv.i127.i.ph, %.lr.ph.i126.i.preheader ] ; 4 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.i127.i
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !36
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.i127.i
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !36
  %i.uy = xor i64 %i.ux, %i.uv
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %indvars.iv.i127.i
  store i64 %i.uy, ptr %i.uz, align 8, !tbaa !36
  %indvars.iv.next.i128.i = add nuw nsw i64 %indvars.iv.i127.i, 1 ; 2 uses
  %exitcond.not.i129.i = icmp eq i64 %indvars.iv.next.i128.i, %wide.trip.count.i125.i
  br i1 %exitcond.not.i129.i, label %Abc_TtAnd.exit.i, label %.lr.ph.i126.i, !llvm.loop !71

bb.ay:                                            ; preds = %Mpm_TruthStretch.exit117.i
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 6432 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.vc = load i32, ptr %i.iv, align 8, !tbaa !46 ; 3 uses
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
  %wide.load174 = load <2 x i64>, ptr %i.ve, align 8, !tbaa !36 ; 2 uses
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %index173
  %wide.load175 = load <2 x i64>, ptr %i.vf, align 8, !tbaa !36
  %i.vg = and <2 x i64> %wide.load175, %wide.load174
  %i.vh = xor <2 x i64> %wide.load174, splat (i64 -1)
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %index173
  %wide.load176 = load <2 x i64>, ptr %i.vi, align 8, !tbaa !36
  %i.vj = and <2 x i64> %wide.load176, %i.vh
  %i.vk = or <2 x i64> %i.vj, %i.vg
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %index173
  store <2 x i64> %i.vk, ptr %i.vl, align 8, !tbaa !36
  %index.next177 = add nuw i64 %index173, 2       ; 2 uses
  %i.vm = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.vm, label %middle.block178, label %vector.body172, !llvm.loop !72

middle.block178:                                  ; preds = %vector.body172
  %cmp.n179 = icmp eq i64 %n.vec171, %wide.trip.count.i131.i
  br i1 %cmp.n179, label %Abc_TtAnd.exit.i, label %.lr.ph.i132.i.preheader

.lr.ph.i132.i.preheader:                          ; preds = %.lr.ph.preheader.i130.i, %middle.block178
  %indvars.iv.i133.i.ph = phi i64 [ 0, %.lr.ph.preheader.i130.i ], [ %n.vec171, %middle.block178 ]
  br label %.lr.ph.i132.i

.lr.ph.i132.i:                                    ; preds = %.lr.ph.i132.i.preheader, %.lr.ph.i132.i
  %indvars.iv.i133.i = phi i64 [ %indvars.iv.next.i134.i, %.lr.ph.i132.i ], [ %indvars.iv.i133.i.ph, %.lr.ph.i132.i.preheader ] ; 5 uses
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %indvars.iv.i133.i
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !36 ; 2 uses
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.i133.i
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !36
  %i.vr = and i64 %i.vq, %i.vo
  %i.vs = xor i64 %i.vo, -1
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.i133.i
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !36
  %i.vv = and i64 %i.vu, %i.vs
  %i.vw = or i64 %i.vv, %i.vr
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %indvars.iv.i133.i
  store i64 %i.vw, ptr %i.vx, align 8, !tbaa !36
  %indvars.iv.next.i134.i = add nuw nsw i64 %indvars.iv.i133.i, 1 ; 2 uses
  %exitcond.not.i135.i = icmp eq i64 %indvars.iv.next.i134.i, %wide.trip.count.i131.i
  br i1 %exitcond.not.i135.i, label %Abc_TtAnd.exit.i, label %.lr.ph.i132.i, !llvm.loop !73

Abc_TtAnd.exit.i:                                 ; preds = %.lr.ph.i132.i, %.lr.ph.i126.i, %.lr.ph.i120.i, %middle.block178, %middle.block190, %middle.block202, %bb.ay, %bb.ax, %bb.aw, %Mpm_TruthStretch.exit117.i
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 6432 ; 13 uses
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !36
  %i.wa = and i64 %i.vz, 1
  %.not67.i = icmp eq i64 %i.wa, 0
  br i1 %.not67.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %Abc_TtAnd.exit.i
  %i.wb = load i32, ptr %i.iv, align 8, !tbaa !46 ; 3 uses
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
  %wide.load211 = load <2 x i64>, ptr %i.wd, align 8, !tbaa !36
  %wide.load212 = load <2 x i64>, ptr %i.we, align 8, !tbaa !36
  %i.wf = xor <2 x i64> %wide.load211, splat (i64 -1)
  %i.wg = xor <2 x i64> %wide.load212, splat (i64 -1)
  store <2 x i64> %i.wf, ptr %i.wd, align 8, !tbaa !36
  store <2 x i64> %i.wg, ptr %i.we, align 8, !tbaa !36
  %index.next213 = add nuw i64 %index210, 4       ; 2 uses
  %i.wh = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.wh, label %middle.block214, label %vector.body209, !llvm.loop !74

middle.block214:                                  ; preds = %vector.body209
  %cmp.n215 = icmp eq i64 %n.vec208, %wide.trip.count.i137.i
  br i1 %cmp.n215, label %Abc_TtNot.exit.i, label %.lr.ph.i138.i.preheader

.lr.ph.i138.i.preheader:                          ; preds = %.lr.ph.preheader.i136.i, %middle.block214
  %indvars.iv.i139.i.ph = phi i64 [ 0, %.lr.ph.preheader.i136.i ], [ %n.vec208, %middle.block214 ]
  br label %.lr.ph.i138.i

.lr.ph.i138.i:                                    ; preds = %.lr.ph.i138.i.preheader, %.lr.ph.i138.i
  %indvars.iv.i139.i = phi i64 [ %indvars.iv.next.i140.i, %.lr.ph.i138.i ], [ %indvars.iv.i139.i.ph, %.lr.ph.i138.i.preheader ] ; 2 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.i139.i ; 2 uses
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !36
  %i.wk = xor i64 %i.wj, -1
  store i64 %i.wk, ptr %i.wi, align 8, !tbaa !36
  %indvars.iv.next.i140.i = add nuw nsw i64 %indvars.iv.i139.i, 1 ; 2 uses
  %exitcond.not.i141.i = icmp eq i64 %indvars.iv.next.i140.i, %wide.trip.count.i137.i
  br i1 %exitcond.not.i141.i, label %Abc_TtNot.exit.i, label %.lr.ph.i138.i, !llvm.loop !75

Abc_TtNot.exit.i:                                 ; preds = %.lr.ph.i138.i, %middle.block214, %bb.az
  %i.wl = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.wm = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.wl, ptr noundef nonnull %i.vy)
  %i.wn = shl nsw i32 %i.wm, 1
  %i.wo = load i32, ptr %i.nw, align 4
  %i.wp = and i32 %i.wn, 33554430
  %i.wq = and i32 %i.wo, -33554432
  %i.wr = or disjoint i32 %i.wq, %i.wp
  %i.ws = or disjoint i32 %i.wr, 1
  br label %bb.bb

bb.ba:                                            ; preds = %Abc_TtAnd.exit.i
  %i.wt = load ptr, ptr %i.n, align 8, !tbaa !27
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
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !40
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 36
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !41
  %.not68.i = icmp eq i32 %i.xe, 0
  br i1 %.not68.i, label %Mpm_CutComputeTruth7.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.xf = lshr i32 %i.xa, 1
  %i.xg = and i32 %i.xf, 16777215                 ; 2 uses
  %.val.i.i22 = load ptr, ptr %i.n, align 8, !tbaa !27 ; 4 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 24
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !28
  %i.xj = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 8
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !31
  %i.xl = lshr i32 %i.xg, %i.xk
  %i.xm = zext nneg i32 %i.xl to i64
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %i.xm
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !32 ; 2 uses
  %i.xp = ptrtoaddr ptr %i.xo to i64
  %i.xq = load i32, ptr %.val.i.i22, align 8, !tbaa !34
  %i.xr = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 12
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !35
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
  %i.yd = load i64, ptr %i.xw, align 8, !tbaa !36 ; 12 uses
  %9 = lshr i64 %i.yd, 1
  %10 = xor i64 %9, %i.yd
  %xtraiter253.a = and i64 %10, 6148914691236517205
  %.not18.us.i.i.i = icmp ne i64 %xtraiter253.a, 0 ; 4 uses
  %.3.i.i = zext i1 %.not18.us.i.i.i to i32       ; 2 uses
  %11 = zext i1 %.not18.us.i.i.i to i32           ; 2 uses
  %i.ye = icmp eq i32 %i.xx, 1
  br i1 %i.ye, label %Abc_TtSupportAndSize.exit.i.i, label %.lr.ph.split.us.i.i.i.new

.lr.ph.split.us.i.i.i.new:                        ; preds = %.lr.ph.split.us.i.i.i
  %12 = lshr i64 %i.yd, 2
  %13 = xor i64 %12, %i.yd
  %unroll_iter = and i64 %13, 3689348814741910323
  %.not18.us.i.i.i.1 = icmp eq i64 %unroll_iter, 0 ; 3 uses
  %14 = select i1 %.not18.us.i.i.i, i32 2, i32 1  ; 2 uses
  %.3.i.i.1 = select i1 %.not18.us.i.i.i.1, i32 %.3.i.i, i32 %14 ; 2 uses
  %15 = select i1 %.not18.us.i.i.i.1, i32 0, i32 2
  %.1.us.i.i.i.1 = or disjoint i32 %15, %11       ; 2 uses
  %exitcond56.not.i.i.i.1 = icmp eq i32 %i.xx, 2
  br i1 %exitcond56.not.i.i.i.1, label %Abc_TtSupportAndSize.exit.i.i, label %Abc_TtHasVar.exit.us.i.i.i

Abc_TtHasVar.exit.us.i.i.i:                       ; preds = %.lr.ph.split.us.i.i.i.new
  %16 = zext i1 %.not18.us.i.i.i to i32
  %i.yf = select i1 %.not18.us.i.i.i.1, i32 %16, i32 %14 ; 2 uses
  %i.yg = lshr i64 %i.yd, 4
  %i.yh = xor i64 %i.yg, %i.yd
  %i.yi = and i64 %i.yh, 1085102592571150095
  %.not18.us.i.i.i.1.a = icmp eq i64 %i.yi, 0     ; 3 uses
  %i.yj = add nuw nsw i32 %i.yf, 1                ; 2 uses
  %i.yk = select i1 %.not18.us.i.i.i.1.a, i32 %.3.i.i.1, i32 %i.yj ; 2 uses
  %i.yl = select i1 %.not18.us.i.i.i.1.a, i32 0, i32 4
  %.1.us.i.i.i.1.a = or disjoint i32 %i.yl, %.1.us.i.i.i.1 ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %i.xx, 3
  br i1 %niter.ncmp.1, label %Abc_TtSupportAndSize.exit.i.i, label %Abc_TtHasVar.exit.us.i.i.i.3

Abc_TtHasVar.exit.us.i.i.i.3:                     ; preds = %Abc_TtHasVar.exit.us.i.i.i
  %17 = select i1 %.not18.us.i.i.i.1.a, i32 %i.yf, i32 %i.yj ; 2 uses
  %18 = lshr i64 %i.yd, 8
  %19 = xor i64 %18, %i.yd
  %20 = and i64 %19, 71777214294589695
  %.not18.us.i.i.i.3 = icmp eq i64 %20, 0         ; 3 uses
  %21 = add nuw nsw i32 %17, 1                    ; 2 uses
  %.3.i.i.3 = select i1 %.not18.us.i.i.i.3, i32 %i.yk, i32 %21 ; 2 uses
  %22 = select i1 %.not18.us.i.i.i.3, i32 0, i32 8
  %.1.us.i.i.i.3 = or disjoint i32 %22, %.1.us.i.i.i.1.a ; 2 uses
  %exitcond56.not.i.i.i.3 = icmp eq i32 %i.xx, 4
  br i1 %exitcond56.not.i.i.i.3, label %Abc_TtSupportAndSize.exit.i.i, label %Abc_TtHasVar.exit.us.i.i.i.4

Abc_TtHasVar.exit.us.i.i.i.4:                     ; preds = %Abc_TtHasVar.exit.us.i.i.i.3
  %23 = select i1 %.not18.us.i.i.i.3, i32 %17, i32 %21 ; 2 uses
  %24 = lshr i64 %i.yd, 16
  %25 = xor i64 %24, %i.yd
  %26 = and i64 %25, 281470681808895
  %.not18.us.i.i.i.4 = icmp eq i64 %26, 0         ; 3 uses
  %27 = add nuw nsw i32 %23, 1                    ; 2 uses
  %.3.i.i.4 = select i1 %.not18.us.i.i.i.4, i32 %.3.i.i.3, i32 %27 ; 2 uses
  %28 = select i1 %.not18.us.i.i.i.4, i32 0, i32 16
  %.1.us.i.i.i.4 = or disjoint i32 %28, %.1.us.i.i.i.3 ; 2 uses
  %exitcond56.not.i.i.i.4 = icmp eq i32 %i.xx, 5
  br i1 %exitcond56.not.i.i.i.4, label %Abc_TtSupportAndSize.exit.i.i, label %Abc_TtHasVar.exit.us.i.i.i.5

Abc_TtHasVar.exit.us.i.i.i.5:                     ; preds = %Abc_TtHasVar.exit.us.i.i.i.4
  %29 = select i1 %.not18.us.i.i.i.4, i32 %23, i32 %27
  %30 = lshr i64 %i.yd, 32
  %.masked = and i64 %i.yd, 4294967295
  %.not18.us.i.i.i.5 = icmp eq i64 %30, %.masked  ; 2 uses
  %31 = add nsw i32 %29, 1
  %.3.i.i.5 = select i1 %.not18.us.i.i.i.5, i32 %.3.i.i.4, i32 %31
  %32 = select i1 %.not18.us.i.i.i.5, i32 0, i32 32
  %.1.us.i.i.i.5 = or disjoint i32 %32, %.1.us.i.i.i.4
  br label %Abc_TtSupportAndSize.exit.i.i

.lr.ph.split.split.split.preheader.i.i.i:         ; preds = %.lr.ph.i.i.i24
  %wide.trip.count.i.i.i25 = zext nneg i32 %i.xx to i64
  br label %.lr.ph.split.split.split.i.i.i

.lr.ph.split.split.split.i.i.i:                   ; preds = %Abc_TtHasVar.exit.thread.i.i.i, %.lr.ph.split.split.split.preheader.i.i.i
  %.037.i.i = phi i32 [ 0, %.lr.ph.split.split.split.preheader.i.i.i ], [ %.138.i.i, %Abc_TtHasVar.exit.thread.i.i.i ] ; 2 uses
  %i.ym = phi i32 [ 0, %.lr.ph.split.split.split.preheader.i.i.i ], [ %i.zk, %Abc_TtHasVar.exit.thread.i.i.i ] ; 3 uses
  %indvars.iv.i.i.i26 = phi i64 [ 0, %.lr.ph.split.split.split.preheader.i.i.i ], [ %indvars.iv.next.i.i.i28, %Abc_TtHasVar.exit.thread.i.i.i ] ; 4 uses
  %.022.i.i.i = phi i32 [ 0, %.lr.ph.split.split.split.preheader.i.i.i ], [ %.1.i.i.i27, %Abc_TtHasVar.exit.thread.i.i.i ] ; 3 uses
  %i.yn = icmp samesign ult i64 %indvars.iv.i.i.i26, 6
  %i.yo = trunc i64 %indvars.iv.i.i.i26 to i32    ; 3 uses
  br i1 %i.yn, label %.lr.ph.i.i.i.i, label %.preheader.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.split.split.i.i.i
  %i.yp = shl nuw nsw i32 1, %i.yo                ; 2 uses
  %i.yq = zext nneg i32 %i.yp to i64
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i.i.i26
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !36
  br label %bb.be

bb.bd:                                            ; preds = %bb.be
  %indvars.iv.next53.i.i.i.i = add nuw nsw i64 %indvars.iv52.i.i.i.i, 1 ; 2 uses
  %exitcond56.not.i.i.i.i = icmp eq i64 %indvars.iv.next53.i.i.i.i, %i.yb
  br i1 %exitcond56.not.i.i.i.i, label %Abc_TtHasVar.exit.thread.i.i.i, label %bb.be, !llvm.loop !76

bb.be:                                            ; preds = %bb.bd, %.lr.ph.i.i.i.i
  %indvars.iv52.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next53.i.i.i.i, %bb.bd ] ; 2 uses
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv52.i.i.i.i
  %i.yu = load i64, ptr %i.yt, align 8, !tbaa !36 ; 2 uses
  %i.yv = lshr i64 %i.yu, %i.yq
  %i.yw = xor i64 %i.yv, %i.yu
  %i.yx = and i64 %i.yw, %i.ys
  %.not39.i.i.i.i = icmp eq i64 %i.yx, 0
  br i1 %.not39.i.i.i.i, label %bb.bd, label %Abc_TtHasVar.exit.thread15.i.i.i

.preheader.lr.ph.i.i.i.i:                         ; preds = %.lr.ph.split.split.split.i.i.i
  %i.yy = add i32 %i.yo, -6                       ; 2 uses
  %i.yz = shl nuw nsw i32 1, %i.yy
  %i.za = shl nuw nsw i32 2, %i.yy
  %i.zb = zext nneg i32 %i.za to i64
  %i.zc = zext nneg i32 %i.yz to i64              ; 2 uses
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.bh, %.preheader.lr.ph.i.i.i.i
  %.03343.i.i.i.i = phi ptr [ %i.xw, %.preheader.lr.ph.i.i.i.i ], [ %i.zg, %bb.bh ] ; 3 uses
  %invariant.gep.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.i.i, i64 %i.zc
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bg
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.zc
  br i1 %exitcond.not.i.i.i.i, label %bb.bh, label %bb.bg, !llvm.loop !77

bb.bg:                                            ; preds = %bb.bf, %.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.bf ] ; 3 uses
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.ze = load i64, ptr %i.zd, align 8, !tbaa !36
  %gep.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.zf = load i64, ptr %gep.i.i.i.i, align 8, !tbaa !36
  %.not.i.i.i.i = icmp eq i64 %i.ze, %i.zf
  br i1 %.not.i.i.i.i, label %bb.bf, label %Abc_TtHasVar.exit.thread15.loopexit.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.i.i, i64 %i.zb ; 2 uses
  %i.zh = icmp ult ptr %i.zg, %i.yc
  br i1 %i.zh, label %.preheader.i.i.i.i, label %Abc_TtHasVar.exit.thread.i.i.i, !llvm.loop !78

Abc_TtHasVar.exit.thread15.loopexit.i.i.i:        ; preds = %bb.bg
  %.pre59.i.i.i = shl nuw nsw i32 1, %i.yo
  br label %Abc_TtHasVar.exit.thread15.i.i.i

Abc_TtHasVar.exit.thread15.i.i.i:                 ; preds = %bb.be, %Abc_TtHasVar.exit.thread15.loopexit.i.i.i
  %.pre-phi60.i.i.i = phi i32 [ %.pre59.i.i.i, %Abc_TtHasVar.exit.thread15.loopexit.i.i.i ], [ %i.yp, %bb.be ]
  %i.zi = or i32 %.pre-phi60.i.i.i, %.022.i.i.i
  %i.zj = add nsw i32 %i.ym, 1                    ; 2 uses
  br label %Abc_TtHasVar.exit.thread.i.i.i

Abc_TtHasVar.exit.thread.i.i.i:                   ; preds = %bb.bh, %bb.bd, %Abc_TtHasVar.exit.thread15.i.i.i
  %.138.i.i = phi i32 [ %.037.i.i, %bb.bd ], [ %i.zj, %Abc_TtHasVar.exit.thread15.i.i.i ], [ %.037.i.i, %bb.bh ] ; 2 uses
  %i.zk = phi i32 [ %i.ym, %bb.bd ], [ %i.zj, %Abc_TtHasVar.exit.thread15.i.i.i ], [ %i.ym, %bb.bh ]
  %.1.i.i.i27 = phi i32 [ %.022.i.i.i, %bb.bd ], [ %i.zi, %Abc_TtHasVar.exit.thread15.i.i.i ], [ %.022.i.i.i, %bb.bh ] ; 2 uses
  %indvars.iv.next.i.i.i28 = add nuw nsw i64 %indvars.iv.i.i.i26, 1 ; 2 uses
  %exitcond.not.i.i.i29 = icmp eq i64 %indvars.iv.next.i.i.i28, %wide.trip.count.i.i.i25
  br i1 %exitcond.not.i.i.i29, label %Abc_TtSupportAndSize.exit.i.i, label %.lr.ph.split.split.split.i.i.i, !llvm.loop !79

Abc_TtSupportAndSize.exit.i.i:                    ; preds = %Abc_TtHasVar.exit.thread.i.i.i, %.lr.ph.split.us.i.i.i, %.lr.ph.split.us.i.i.i.new, %Abc_TtHasVar.exit.us.i.i.i, %Abc_TtHasVar.exit.us.i.i.i.3, %Abc_TtHasVar.exit.us.i.i.i.4, %Abc_TtHasVar.exit.us.i.i.i.5, %bb.bc
  %.4.i.i = phi i32 [ 0, %bb.bc ], [ %.3.i.i.5, %Abc_TtHasVar.exit.us.i.i.i.5 ], [ %.3.i.i, %.lr.ph.split.us.i.i.i ], [ %.3.i.i.1, %.lr.ph.split.us.i.i.i.new ], [ %i.yk, %Abc_TtHasVar.exit.us.i.i.i ], [ %.3.i.i.3, %Abc_TtHasVar.exit.us.i.i.i.3 ], [ %.3.i.i.4, %Abc_TtHasVar.exit.us.i.i.i.4 ], [ %.138.i.i, %Abc_TtHasVar.exit.thread.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i30 = phi i32 [ 0, %bb.bc ], [ %.1.us.i.i.i.5, %Abc_TtHasVar.exit.us.i.i.i.5 ], [ %11, %.lr.ph.split.us.i.i.i ], [ %.1.us.i.i.i.1, %.lr.ph.split.us.i.i.i.new ], [ %.1.us.i.i.i.1.a, %Abc_TtHasVar.exit.us.i.i.i ], [ %.1.us.i.i.i.3, %Abc_TtHasVar.exit.us.i.i.i.3 ], [ %.1.us.i.i.i.4, %Abc_TtHasVar.exit.us.i.i.i.4 ], [ %.1.i.i.i27, %Abc_TtHasVar.exit.thread.i.i.i ]
  %i.zl = icmp eq i32 %.4.i.i, %i.xx
  br i1 %i.zl, label %Mpm_CutComputeTruth7.exit, label %bb.bi

bb.bi:                                            ; preds = %Abc_TtSupportAndSize.exit.i.i
  %i.zm = icmp slt i32 %.4.i.i, 2
  %i.zn = zext i1 %i.zm to i32
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 13896 ; 2 uses
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !44
  %i.zq = add nsw i32 %i.zp, %i.zn
  store i32 %i.zq, ptr %i.zo, align 8, !tbaa !44
  %i.zr = load i32, ptr %i.iv, align 8, !tbaa !46 ; 3 uses
  %i.zs = icmp sgt i32 %i.zr, 0
  br i1 %i.zs, label %.lr.ph18.preheader.i.i.i, label %Abc_TtCopy.exit.i.i

.lr.ph18.preheader.i.i.i:                         ; preds = %bb.bi
  %wide.trip.count24.i.i.i = zext nneg i32 %i.zr to i64 ; 5 uses
  %min.iters.check220 = icmp ult i32 %i.zr, 16
  br i1 %min.iters.check220, label %.lr.ph18.i.i.i.preheader, label %vector.memcheck217

vector.memcheck217:                               ; preds = %.lr.ph18.preheader.i.i.i
  %i.zt = shl nsw i64 %i.xv, 3
  %i.zu = add i64 %i.zt, %i.xp
  %i.zv = sub i64 %i.a, %i.zu
  %i.zw = add i64 %i.zv, 6431
  %diff.check218 = icmp ult i64 %i.zw, 31
  br i1 %diff.check218, label %.lr.ph18.i.i.i.preheader, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck217
  %n.vec222 = and i64 %wide.trip.count24.i.i.i, 2147483644 ; 3 uses
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next227, %vector.body223 ] ; 3 uses
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %index224 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  %wide.load225 = load <2 x i64>, ptr %i.zx, align 8, !tbaa !36
  %wide.load226 = load <2 x i64>, ptr %i.zy, align 8, !tbaa !36
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %index224 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  store <2 x i64> %wide.load225, ptr %i.zz, align 8, !tbaa !36
  store <2 x i64> %wide.load226, ptr %i.aaa, align 8, !tbaa !36
  %index.next227 = add nuw i64 %index224, 4       ; 2 uses
  %i.aab = icmp eq i64 %index.next227, %n.vec222
  br i1 %i.aab, label %middle.block228, label %vector.body223, !llvm.loop !80

middle.block228:                                  ; preds = %vector.body223
  %cmp.n229 = icmp eq i64 %n.vec222, %wide.trip.count24.i.i.i
  br i1 %cmp.n229, label %Abc_TtCopy.exit.i.i, label %.lr.ph18.i.i.i.preheader

.lr.ph18.i.i.i.preheader:                         ; preds = %vector.memcheck217, %.lr.ph18.preheader.i.i.i, %middle.block228
  %indvars.iv21.i.i.i.ph = phi i64 [ 0, %vector.memcheck217 ], [ 0, %.lr.ph18.preheader.i.i.i ], [ %n.vec222, %middle.block228 ] ; 3 uses
  %xtraiter258 = and i64 %wide.trip.count24.i.i.i, 3 ; 2 uses
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  br i1 %lcmp.mod259.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol

.lr.ph18.i.i.i.prol:                              ; preds = %.lr.ph18.i.i.i.preheader, %.lr.ph18.i.i.i.prol
  %indvars.iv21.i.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ], [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ] ; 3 uses
  %prol.iter260 = phi i64 [ %prol.iter260.next, %.lr.ph18.i.i.i.prol ], [ 0, %.lr.ph18.i.i.i.preheader ]
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv21.i.i.i.prol
  %i.aad = load i64, ptr %i.aac, align 8, !tbaa !36
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv21.i.i.i.prol
  store i64 %i.aad, ptr %i.aae, align 8, !tbaa !36
  %indvars.iv.next22.i.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.i.prol, 1 ; 2 uses
  %prol.iter260.next = add i64 %prol.iter260, 1   ; 2 uses
  %prol.iter260.cmp.not = icmp eq i64 %prol.iter260.next, %xtraiter258
  br i1 %prol.iter260.cmp.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol, !llvm.loop !81

.lr.ph18.i.i.i.prol.loopexit:                     ; preds = %.lr.ph18.i.i.i.prol, %.lr.ph18.i.i.i.preheader
  %indvars.iv21.i.i.i.unr = phi i64 [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ], [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ]
  %i.aaf = sub nsw i64 %indvars.iv21.i.i.i.ph, %wide.trip.count24.i.i.i
  %i.aag = icmp ugt i64 %i.aaf, -4
  br i1 %i.aag, label %Abc_TtCopy.exit.i.i, label %.lr.ph18.i.i.i

.lr.ph18.i.i.i:                                   ; preds = %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i
  %indvars.iv21.i.i.i = phi i64 [ %indvars.iv.next22.i.i.i.3, %.lr.ph18.i.i.i ], [ %indvars.iv21.i.i.i.unr, %.lr.ph18.i.i.i.prol.loopexit ] ; 6 uses
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv21.i.i.i
  %i.aai = load i64, ptr %i.aah, align 8, !tbaa !36
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv21.i.i.i
  store i64 %i.aai, ptr %i.aaj, align 8, !tbaa !36
  %indvars.iv.next22.i.i.i = add nuw nsw i64 %indvars.iv21.i.i.i, 1 ; 2 uses
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv.next22.i.i.i
  %i.aal = load i64, ptr %i.aak, align 8, !tbaa !36
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next22.i.i.i
  store i64 %i.aal, ptr %i.aam, align 8, !tbaa !36
  %indvars.iv.next22.i.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i.i, 2 ; 2 uses
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv.next22.i.i.i.1
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !36
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next22.i.i.i.1
  store i64 %i.aao, ptr %i.aap, align 8, !tbaa !36
  %indvars.iv.next22.i.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i.i, 3 ; 2 uses
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv.next22.i.i.i.2
  %i.aar = load i64, ptr %i.aaq, align 8, !tbaa !36
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next22.i.i.i.2
  store i64 %i.aar, ptr %i.aas, align 8, !tbaa !36
  %indvars.iv.next22.i.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.i.3, %wide.trip.count24.i.i.i
  br i1 %exitcond25.not.i.i.i.3, label %Abc_TtCopy.exit.i.i, label %.lr.ph18.i.i.i, !llvm.loop !82

Abc_TtCopy.exit.i.i:                              ; preds = %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i, %middle.block228, %bb.bi
  %.val3241.i.i = load i32, ptr %i.nw, align 4    ; 4 uses
  %.not45.i.i = icmp ult i32 %.val3241.i.i, 134217728
  br i1 %.not45.i.i, label %._crit_edge.i.i31, label %.lr.ph.i142.i

.lr.ph.i142.i:                                    ; preds = %Abc_TtCopy.exit.i.i
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bn, %.lr.ph.i142.i
  %.val32.pre52.i.i = phi i32 [ %.val3241.i.i, %.lr.ph.i142.i ], [ %.val32.pre53.i.i, %bb.bn ] ; 2 uses
  %.val3250.i.i = phi i32 [ %.val3241.i.i, %.lr.ph.i142.i ], [ %.val32.i.i, %bb.bn ]
  %indvars.iv.i143.i = phi i64 [ 0, %.lr.ph.i142.i ], [ %indvars.iv.next.i146.i, %bb.bn ] ; 4 uses
  %.044.i.i = phi i32 [ 0, %.lr.ph.i142.i ], [ %.1.i145.i, %bb.bn ] ; 4 uses
  %i.aau = trunc nuw nsw i64 %indvars.iv.i143.i to i32 ; 2 uses
  %i.aav = shl nuw nsw i32 1, %i.aau
  %i.aaw = and i32 %i.aav, %.0.lcssa.i.i.i30
  %.not.i144.i = icmp eq i32 %i.aaw, 0
  br i1 %.not.i144.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.aax = sext i32 %.044.i.i to i64              ; 2 uses
  %i.aay = icmp sgt i64 %indvars.iv.i143.i, %i.aax
  br i1 %i.aay, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %indvars.iv.i143.i
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !37
  %i.abb = getelementptr inbounds [4 x i8], ptr %i.aat, i64 %i.aax
  store i32 %i.aba, ptr %i.abb, align 4, !tbaa !37
  %i.abc = load i32, ptr %i.g, align 8, !tbaa !8
  tail call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %i.vy, i32 noundef %i.abc, i32 noundef %.044.i.i, i32 noundef %i.aau)
  %.val32.pre.pre.i.i = load i32, ptr %i.nw, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.val32.pre.i.i = phi i32 [ %.val32.pre.pre.i.i, %bb.bl ], [ %.val32.pre52.i.i, %bb.bk ] ; 2 uses
  %i.abd = add nsw i32 %.044.i.i, 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj
  %.val32.pre53.i.i = phi i32 [ %.val32.pre.i.i, %bb.bm ], [ %.val32.pre52.i.i, %bb.bj ]
  %.val32.i.i = phi i32 [ %.val32.pre.i.i, %bb.bm ], [ %.val3250.i.i, %bb.bj ] ; 3 uses
  %.1.i145.i = phi i32 [ %i.abd, %bb.bm ], [ %.044.i.i, %bb.bj ]
  %indvars.iv.next.i146.i = add nuw nsw i64 %indvars.iv.i143.i, 1 ; 2 uses
  %i.abe = lshr i32 %.val32.i.i, 27
  %i.abf = zext nneg i32 %i.abe to i64
  %i.abg = icmp samesign ult i64 %indvars.iv.next.i146.i, %i.abf
  br i1 %i.abg, label %bb.bj, label %._crit_edge.i.i31, !llvm.loop !83

._crit_edge.i.i31:                                ; preds = %bb.bn, %Abc_TtCopy.exit.i.i
  %.val32.lcssa.i.i = phi i32 [ %.val3241.i.i, %Abc_TtCopy.exit.i.i ], [ %.val32.i.i, %bb.bn ]
  %i.abh = shl i32 %.4.i.i, 27
  %i.abi = and i32 %.val32.lcssa.i.i, 134217727
  %i.abj = or disjoint i32 %i.abi, %i.abh
  store i32 %i.abj, ptr %i.nw, align 4
  %i.abk = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.abl = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.abk, ptr noundef nonnull %i.vy)
  %i.abm = load i32, ptr %i.nw, align 4
  %i.abn = shl nsw i32 %i.abl, 1
  %.masked.i.i32 = and i32 %i.abn, 33554430
  %i.abo = and i32 %i.abm, -33554431
  %i.abp = or disjoint i32 %.masked.i.i32, %i.abo
  store i32 %i.abp, ptr %i.nw, align 4
  br label %Mpm_CutComputeTruth7.exit

Mpm_CutComputeTruth7.exit:                        ; preds = %._crit_edge.i.i31, %Abc_TtSupportAndSize.exit.i.i, %bb.bb, %Mpm_CutComputeTruth6.exit
  %.0 = phi i32 [ %.0.i, %Mpm_CutComputeTruth6.exit ], [ 1, %bb.bb ], [ 1, %._crit_edge.i.i31 ], [ 0, %Abc_TtSupportAndSize.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Vec_MemHashInsert(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %.val15 = load i32, ptr %i.e, align 4, !tbaa !86 ; 2 uses
  %i.f = icmp sgt i32 %i.b, %.val15
  br i1 %i.f, label %bb.b, label %Vec_MemHashResize.exit

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %.val15, 1
  %i.h = add i32 %i.g, -1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.b
  %.012.i.i = phi i32 [ %i.h, %bb.b ], [ %i.i, %.critedge.i.i.backedge ] ; 2 uses
  %i.i = add i32 %.012.i.i, 1                     ; 9 uses
  %i.j = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
end_hunk_0
