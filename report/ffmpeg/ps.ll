Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ps?download=true
inline.NumInlined: 81
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 22
begin_hunk_0_@ff_vvc_decode_frame_ps:bb.a
  br i1 %cmp.n, label %._crit_edge.i.i.i.i27.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.uh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i32.i.preheader, label %vec.epilog.ph, !prof !258

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec267 = and i64 %i.ug, -4                   ; 3 uses
  %i.ul = add nsw i64 %n.vec267, %i.uc
  %broadcast.splatinsert268 = insertelement <4 x i16> poison, i16 %i.tu, i64 0
  %broadcast.splat269 = shufflevector <4 x i16> %broadcast.splatinsert268, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep416 = getelementptr [2 x i8], ptr %i.tj, i64 %i.uc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index270 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next271, %vec.epilog.vector.body ] ; 2 uses
  %gep417 = getelementptr [2 x i8], ptr %invariant.gep416, i64 %index270
  store <4 x i16> %broadcast.splat269, ptr %gep417, align 2, !tbaa !48
  %index.next271 = add nuw i64 %index270, 4       ; 2 uses
  %i.um = icmp eq i64 %index.next271, %n.vec267
  br i1 %i.um, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n272 = icmp eq i64 %i.ug, %n.vec267
  br i1 %cmp.n272, label %._crit_edge.i.i.i.i27.i, label %.lr.ph.i.i.i.i32.i.preheader

.lr.ph.i.i.i.i32.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.i33.i.ph = phi i64 [ %i.uc, %iter.check ], [ %i.ui, %vec.epilog.iter.check ], [ %i.ul, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i32.i

._crit_edge.i.i.i.i27.i:                          ; preds = %.lr.ph.i.i.i.i32.i, %middle.block, %vec.epilog.middle.block, %bb.ba
  %indvars.iv.next88.i.i.i.i.i = add nuw nsw i64 %indvars.iv87.i.i.i.i.i, 1 ; 2 uses
  %i.un = load i16, ptr %i.sl, align 8, !tbaa !54
  %i.uo = zext i16 %i.un to i64
  %i.up = icmp samesign ult i64 %indvars.iv.next88.i.i.i.i.i, %i.uo
  br i1 %i.up, label %bb.ba, label %._crit_edge74.i.i.i.i.i, !llvm.loop !83

.lr.ph.i.i.i.i32.i:                               ; preds = %.lr.ph.i.i.i.i32.i.preheader, %.lr.ph.i.i.i.i32.i
  %indvars.iv.i.i.i.i33.i = phi i64 [ %indvars.iv.next.i.i.i.i34.i, %.lr.ph.i.i.i.i32.i ], [ %indvars.iv.i.i.i.i33.i.ph, %.lr.ph.i.i.i.i32.i.preheader ] ; 2 uses
  %i.uq = getelementptr inbounds nuw [2 x i8], ptr %i.tj, i64 %indvars.iv.i.i.i.i33.i
  store i16 %i.tu, ptr %i.uq, align 2, !tbaa !48
  %indvars.iv.next.i.i.i.i34.i = add nuw nsw i64 %indvars.iv.i.i.i.i33.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i35.i = icmp eq i64 %indvars.iv.next.i.i.i.i34.i, %wide.trip.count.i.i.i.i31.i
  br i1 %exitcond.not.i.i.i.i35.i, label %._crit_edge.i.i.i.i27.i, label %.lr.ph.i.i.i.i32.i, !llvm.loop !84

bb.bb:                                            ; preds = %._crit_edge78.i.i.i.i.i, %.lr.ph82.i.i.i.i.i
  %indvars.iv95.i.i.i.i.i = phi i64 [ 0, %.lr.ph82.i.i.i.i.i ], [ %indvars.iv.next96.i.i.i.i.i, %._crit_edge78.i.i.i.i.i ] ; 3 uses
  %.05980.i.i.i.i.i = phi i32 [ 0, %.lr.ph82.i.i.i.i.i ], [ %i.uw, %._crit_edge78.i.i.i.i.i ] ; 4 uses
  %i.ur = trunc i32 %.05980.i.i.i.i.i to i16      ; 4 uses
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %i.ti, i64 %indvars.iv95.i.i.i.i.i
  store i16 %i.ur, ptr %i.us, align 2, !tbaa !48
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %i.tt, i64 %indvars.iv95.i.i.i.i.i
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !48 ; 2 uses
  %i.uv = zext i16 %i.uu to i32
  %i.uw = add nuw nsw i32 %.05980.i.i.i.i.i, %i.uv ; 3 uses
  %i.ux = and i32 %.05980.i.i.i.i.i, 65535        ; 2 uses
  %i.uy = icmp samesign ult i32 %i.ux, %i.uw
  br i1 %i.uy, label %iter.check285, label %._crit_edge78.i.i.i.i.i

iter.check285:                                    ; preds = %bb.bb
  %i.uz = zext nneg i32 %i.ux to i64              ; 6 uses
  %wide.trip.count93.i.i.i.i.i = zext nneg i32 %i.uw to i64
  %i.va = zext nneg i32 %.05980.i.i.i.i.i to i64
  %i.vb = zext i16 %i.uu to i64
  %i.vc = add nuw nsw i64 %i.va, %i.vb
  %i.vd = sub nsw i64 %i.vc, %i.uz                ; 7 uses
  %min.iters.check273 = icmp ult i64 %i.vd, 4
  br i1 %min.iters.check273, label %.lr.ph77.i.i.i.i.i.preheader, label %vector.main.loop.iter.check274

vector.main.loop.iter.check274:                   ; preds = %iter.check285
  %min.iters.check275 = icmp ult i64 %i.vd, 16
  br i1 %min.iters.check275, label %vec.epilog.ph289, label %vector.ph276

vector.ph276:                                     ; preds = %vector.main.loop.iter.check274
  %i.ve = and i64 %i.vd, 12
  %n.vec277 = and i64 %i.vd, -16                  ; 4 uses
  %i.vf = add nsw i64 %n.vec277, %i.uz
  %broadcast.splatinsert278 = insertelement <8 x i16> poison, i16 %i.ur, i64 0
  %broadcast.splat279 = shufflevector <8 x i16> %broadcast.splatinsert278, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep418 = getelementptr [2 x i8], ptr %i.tf, i64 %i.uz
  br label %vector.body280

vector.body280:                                   ; preds = %vector.ph276, %vector.body280
  %index281 = phi i64 [ 0, %vector.ph276 ], [ %index.next282, %vector.body280 ] ; 2 uses
  %gep419 = getelementptr [2 x i8], ptr %invariant.gep418, i64 %index281 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %gep419, i64 16
  store <8 x i16> %broadcast.splat279, ptr %gep419, align 2, !tbaa !48
  store <8 x i16> %broadcast.splat279, ptr %i.vg, align 2, !tbaa !48
  %index.next282 = add nuw i64 %index281, 16      ; 2 uses
  %i.vh = icmp eq i64 %index.next282, %n.vec277
  br i1 %i.vh, label %middle.block283, label %vector.body280, !llvm.loop !85

middle.block283:                                  ; preds = %vector.body280
  %cmp.n284 = icmp eq i64 %i.vd, %n.vec277
  br i1 %cmp.n284, label %._crit_edge78.i.i.i.i.i, label %vec.epilog.iter.check286

vec.epilog.iter.check286:                         ; preds = %middle.block283
  %min.epilog.iters.check288 = icmp eq i64 %i.ve, 0
  br i1 %min.epilog.iters.check288, label %.lr.ph77.i.i.i.i.i.preheader, label %vec.epilog.ph289, !prof !258

vec.epilog.ph289:                                 ; preds = %vector.main.loop.iter.check274, %vec.epilog.iter.check286
  %vec.epilog.resume.val290 = phi i64 [ %n.vec277, %vec.epilog.iter.check286 ], [ 0, %vector.main.loop.iter.check274 ]
  %n.vec291 = and i64 %i.vd, -4                   ; 3 uses
  %i.vi = add nsw i64 %n.vec291, %i.uz
  %broadcast.splatinsert292 = insertelement <4 x i16> poison, i16 %i.ur, i64 0
  %broadcast.splat293 = shufflevector <4 x i16> %broadcast.splatinsert292, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep420 = getelementptr [2 x i8], ptr %i.tf, i64 %i.uz
  br label %vec.epilog.vector.body294

vec.epilog.vector.body294:                        ; preds = %vec.epilog.vector.body294, %vec.epilog.ph289
  %index295 = phi i64 [ %vec.epilog.resume.val290, %vec.epilog.ph289 ], [ %index.next296, %vec.epilog.vector.body294 ] ; 2 uses
  %gep421 = getelementptr [2 x i8], ptr %invariant.gep420, i64 %index295
  store <4 x i16> %broadcast.splat293, ptr %gep421, align 2, !tbaa !48
  %index.next296 = add nuw i64 %index295, 4       ; 2 uses
  %i.vj = icmp eq i64 %index.next296, %n.vec291
  br i1 %i.vj, label %vec.epilog.middle.block297, label %vec.epilog.vector.body294, !llvm.loop !86

vec.epilog.middle.block297:                       ; preds = %vec.epilog.vector.body294
  %cmp.n298 = icmp eq i64 %i.vd, %n.vec291
  br i1 %cmp.n298, label %._crit_edge78.i.i.i.i.i, label %.lr.ph77.i.i.i.i.i.preheader

.lr.ph77.i.i.i.i.i.preheader:                     ; preds = %iter.check285, %vec.epilog.iter.check286, %vec.epilog.middle.block297
  %indvars.iv90.i.i.i.i.i.ph = phi i64 [ %i.uz, %iter.check285 ], [ %i.vf, %vec.epilog.iter.check286 ], [ %i.vi, %vec.epilog.middle.block297 ]
  br label %.lr.ph77.i.i.i.i.i

._crit_edge78.i.i.i.i.i:                          ; preds = %.lr.ph77.i.i.i.i.i, %middle.block283, %vec.epilog.middle.block297, %bb.bb
  %indvars.iv.next96.i.i.i.i.i = add nuw nsw i64 %indvars.iv95.i.i.i.i.i, 1 ; 2 uses
  %i.vk = load i16, ptr %i.sr, align 2, !tbaa !257
  %i.vl = zext i16 %i.vk to i64                   ; 2 uses
  %i.vm = icmp samesign ult i64 %indvars.iv.next96.i.i.i.i.i, %i.vl
  br i1 %i.vm, label %bb.bb, label %.loopexit.i.i.i.i, !llvm.loop !87

.lr.ph77.i.i.i.i.i:                               ; preds = %.lr.ph77.i.i.i.i.i.preheader, %.lr.ph77.i.i.i.i.i
  %indvars.iv90.i.i.i.i.i = phi i64 [ %indvars.iv.next91.i.i.i.i.i, %.lr.ph77.i.i.i.i.i ], [ %indvars.iv90.i.i.i.i.i.ph, %.lr.ph77.i.i.i.i.i.preheader ] ; 2 uses
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %i.tf, i64 %indvars.iv90.i.i.i.i.i
  store i16 %i.ur, ptr %i.vn, align 2, !tbaa !48
  %indvars.iv.next91.i.i.i.i.i = add nuw nsw i64 %indvars.iv90.i.i.i.i.i, 1 ; 2 uses
  %exitcond94.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next91.i.i.i.i.i, %wide.trip.count93.i.i.i.i.i
  br i1 %exitcond94.not.i.i.i.i.i, label %._crit_edge78.i.i.i.i.i, label %.lr.ph77.i.i.i.i.i, !llvm.loop !88

.loopexit.i.i.i.i:                                ; preds = %._crit_edge78.i.i.i.i.i, %._crit_edge74.i.i.i.i.i
  %i.vo = phi i64 [ 0, %._crit_edge74.i.i.i.i.i ], [ %i.vl, %._crit_edge78.i.i.i.i.i ]
  %i.vp = load i16, ptr %i.ra, align 8, !tbaa !253 ; 3 uses
  %i.vq = zext i16 %i.vp to i64
  %i.vr = getelementptr inbounds nuw [2 x i8], ptr %i.tf, i64 %i.vq
  store i16 %i.vp, ptr %i.vr, align 2, !tbaa !48
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %i.ti, i64 %i.vo
  store i16 %i.vp, ptr %i.vs, align 2, !tbaa !48
  %i.vt = load i32, ptr %i.rb, align 4, !tbaa !254
  %i.vu = zext i32 %i.vt to i64
  %i.vv = tail call noalias ptr @av_calloc(i64 noundef %i.vu, i64 noundef 4) #8 ; 9 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.of, i64 4056
  store ptr %i.vv, ptr %i.vw, align 8, !tbaa !61
  %.not.i16.i.i.i.i = icmp eq ptr %i.vv, null
  br i1 %.not.i16.i.i.i.i, label %.loopexit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.loopexit.i.i.i.i
  %i.vx = load ptr, ptr %i.of, align 8, !tbaa !52 ; 25 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 4085
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !62
  %.not10.i.i.i.i.i = icmp eq i8 %i.vz, 0
  br i1 %.not10.i.i.i.i.i, label %bb.cn, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(990) %i.e, i8 0, i64 990, i1 false)
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 4086
  %i.wb = load i8, ptr %i.wa, align 2, !tbaa !259
  %.not.i.i.i.i.i28.i = icmp eq i8 %i.wb, 0
  br i1 %.not.i.i.i.i.i28.i, label %.preheader90.i.i.i.i.i.i, label %bb.be

.preheader90.i.i.i.i.i.i:                         ; preds = %bb.bd
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vx, i64 4088
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vx, i64 4092 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.vx, i64 6092 ; 3 uses
  %i.wf = getelementptr i8, ptr %i.vx, i64 1992176 ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.of, i64 34 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.of, i64 2034 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vx, i64 1998182 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vx, i64 1998242 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vx, i64 1992182
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vx, i64 4090
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vx, i64 1990092
  br label %bb.bv

bb.be:                                            ; preds = %bb.bd
  %.val.i.i.i.i.i.i = load ptr, ptr %i.oe, align 8, !tbaa !44 ; 5 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 1406
  %i.wo = load i8, ptr %i.wn, align 2, !tbaa !260
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.wo, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bf, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.be
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vx, i64 4088
  %i.wq = getelementptr inbounds nuw i8, ptr %i.of, i64 34
  %i.wr = getelementptr inbounds nuw i8, ptr %i.of, i64 2034
  %i.ws = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 1412
  %i.wt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 3412
  %i.wu = load ptr, ptr %i.sq, align 8, !tbaa !55 ; 3 uses
  %i.wv = load ptr, ptr %i.sw, align 8, !tbaa !56 ; 4 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 5412
  %i.wx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 7412
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vx, i64 1998242 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vx, i64 1998182
  br label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.xa = getelementptr inbounds nuw i8, ptr %i.of, i64 2034 ; 2 uses
  store i16 0, ptr %i.xa, align 2, !tbaa !48
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vx, i64 1992178 ; 2 uses
  %i.xc = load i16, ptr %i.xb, align 2, !tbaa !257 ; 2 uses
  %.not47.i.i.i.i.i.i.i.i = icmp eq i16 %i.xc, 0
  br i1 %.not47.i.i.i.i.i.i.i.i, label %pps_slice_map.exit.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i.i:                 ; preds = %bb.bf
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vx, i64 1992176 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vx, i64 1998182
  %i.xf = getelementptr inbounds nuw i8, ptr %i.vx, i64 1998242
  %.pre.i.i.i.i.i.i.i.i = load i16, ptr %i.xd, align 8, !tbaa !54
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.thread34.i.i.i.i.i.i.i.i, %.preheader.lr.ph.i.i.i.i.i.i.i.i
  %.11.i.i.i.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i.i.i.i.i.i ], [ %.16.i.i.i.i.i.i, %.thread34.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.xg = phi i16 [ %i.xc, %.preheader.lr.ph.i.i.i.i.i.i.i.i ], [ %i.yt, %.thread34.i.i.i.i.i.i.i.i ]
  %i.xh = phi i16 [ 0, %.preheader.lr.ph.i.i.i.i.i.i.i.i ], [ %i.yu, %.thread34.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.xi = phi i16 [ %.pre.i.i.i.i.i.i.i.i, %.preheader.lr.ph.i.i.i.i.i.i.i.i ], [ %i.yv, %.thread34.i.i.i.i.i.i.i.i ]
  %indvars.iv53.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i.i.i.i.i.i.i ], [ %indvars.iv.next54.i.i.i.i.i.i.i.i, %.thread34.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not44.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.xi, 0
  br i1 %.not44.not.i.i.i.i.i.i.i.i, label %.thread34.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.xj = load ptr, ptr %i.sq, align 8, !tbaa !55
  %i.xk = load ptr, ptr %i.sw, align 8, !tbaa !56
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr %i.xk, i64 %indvars.iv53.i.i.i.i.i.i.i.i
  %i.xm = getelementptr inbounds nuw [2 x i8], ptr %i.xf, i64 %indvars.iv53.i.i.i.i.i.i.i.i
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bj, %.lr.ph.i.i.i.i.i.i.i.i
  %.12.i.i.i.i.i.i = phi i32 [ %.11.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.15.i.i.i.i.i.i, %bb.bj ] ; 2 uses
  %i.xn = phi i16 [ %i.xh, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.yq, %bb.bj ]
  %i.xo = phi i32 [ %.11.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ym, %bb.bj ] ; 3 uses
  %indvars.iv.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i, %bb.bj ] ; 3 uses
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %i.xj, i64 %indvars.iv.i.i.i.i.i.i.i.i
  %i.xq = load i16, ptr %i.xp, align 2, !tbaa !48
  %i.xr = zext i16 %i.xq to i32
  %i.xs = load i16, ptr %i.xl, align 2, !tbaa !48
  %i.xt = zext i16 %i.xs to i32
  %i.xu = getelementptr inbounds nuw [2 x i8], ptr %i.xe, i64 %indvars.iv.i.i.i.i.i.i.i.i
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !48 ; 2 uses
  %i.xw = zext i16 %i.xv to i32
  %i.xx = load i16, ptr %i.xm, align 2, !tbaa !48 ; 2 uses
  %i.xy = zext i16 %i.xx to i32
  %.not2732.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.xx, 0
  %.not2630.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.xv, 0
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not2732.not.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not2630.not.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %pps_add_ctus.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.preheader.i.i.i.i.i

.preheader.i.i.i.i.preheader.i.i.i.i.i:           ; preds = %bb.bg
  %i.xz = load i32, ptr %i.rb, align 4, !tbaa !254
  br label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %..critedge_crit_edge.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.preheader.i.i.i.i.i
  %.13.i.i.i.i.i.i = phi i32 [ %i.yj, %..critedge_crit_edge.i.i.i.i.i.i.i.i.i ], [ %.12.i.i.i.i.i.i, %.preheader.i.i.i.i.preheader.i.i.i.i.i ]
  %i.ya = phi i32 [ %i.yj, %..critedge_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.xo, %.preheader.i.i.i.i.preheader.i.i.i.i.i ]
  %.02333.i.i.i.i.i.i.i.i.i = phi i32 [ %i.yl, %..critedge_crit_edge.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.yb = add nuw nsw i32 %.02333.i.i.i.i.i.i.i.i.i, %i.xt
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %.preheader.i.i.i.i.i.i.i.i.i
  %.14.i.i.i.i.i.i = phi i32 [ %.13.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.yj, %bb.bi ]
  %i.yc = phi i32 [ %i.ya, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.yj, %bb.bi ] ; 2 uses
  %.031.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.yk, %bb.bi ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.yc, %i.xz
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bi, label %pps_slice_map.exit.thread26.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.yd = add nuw nsw i32 %.031.i.i.i.i.i.i.i.i.i, %i.xr
  %.val.i.i.i.i.i.i.i.i.i = load i16, ptr %i.qy, align 2, !tbaa !53
  %i.ye = zext i16 %.val.i.i.i.i.i.i.i.i.i to i32
  %i.yf = mul nuw nsw i32 %i.yb, %i.ye
  %i.yg = add nuw nsw i32 %i.yd, %i.yf
  %i.yh = sext i32 %i.yc to i64
  %i.yi = getelementptr inbounds [4 x i8], ptr %i.vv, i64 %i.yh
  store i32 %i.yg, ptr %i.yi, align 4, !tbaa !47
  %i.yj = add nsw i32 %.14.i.i.i.i.i.i, 1         ; 6 uses
  %i.yk = add nuw nsw i32 %.031.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.yk, %i.xw
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %..critedge_crit_edge.i.i.i.i.i.i.i.i.i, label %bb.bh, !llvm.loop !89

..critedge_crit_edge.i.i.i.i.i.i.i.i.i:           ; preds = %bb.bi
  %i.yl = add nuw nsw i32 %.02333.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.yl, %i.xy
  br i1 %exitcond34.not.i.i.i.i.i.i.i.i.i, label %pps_add_ctus.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, !llvm.loop !90

pps_add_ctus.exit.i.i.i.i.i.i.i.i:                ; preds = %..critedge_crit_edge.i.i.i.i.i.i.i.i.i, %bb.bg
  %.15.i.i.i.i.i.i = phi i32 [ %.12.i.i.i.i.i.i, %bb.bg ], [ %i.yj, %..critedge_crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ym = phi i32 [ %i.xo, %bb.bg ], [ %i.yj, %..critedge_crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.yn = sub nsw i32 %i.ym, %i.xo                ; 2 uses
  %i.yo = icmp sgt i32 %i.yn, -1
  br i1 %i.yo, label %bb.bj, label %pps_slice_map.exit.thread26.i.i.i.i

bb.bj:                                            ; preds = %pps_add_ctus.exit.i.i.i.i.i.i.i.i
  %i.yp = trunc i32 %i.yn to i16
  %i.yq = add i16 %i.xn, %i.yp                    ; 3 uses
  store i16 %i.yq, ptr %i.xa, align 2, !tbaa !48
  %indvars.iv.next.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.yr = load i16, ptr %i.xd, align 8, !tbaa !54 ; 2 uses
  %i.ys = zext i16 %i.yr to i64
  %.not.i.i.i.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i.i.i, %i.ys
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bg, label %.thread34.loopexit.i.i.i.i.i.i.i.i, !llvm.loop !91

.thread34.loopexit.i.i.i.i.i.i.i.i:               ; preds = %bb.bj
  %.pre57.i.i.i.i.i.i.i.i = load i16, ptr %i.xb, align 2, !tbaa !257
  br label %.thread34.i.i.i.i.i.i.i.i

.thread34.i.i.i.i.i.i.i.i:                        ; preds = %.thread34.loopexit.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %.16.i.i.i.i.i.i = phi i32 [ %.11.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ], [ %.15.i.i.i.i.i.i, %.thread34.loopexit.i.i.i.i.i.i.i.i ]
  %i.yt = phi i16 [ %i.xg, %.preheader.i.i.i.i.i.i.i.i ], [ %.pre57.i.i.i.i.i.i.i.i, %.thread34.loopexit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.yu = phi i16 [ %i.xh, %.preheader.i.i.i.i.i.i.i.i ], [ %i.yq, %.thread34.loopexit.i.i.i.i.i.i.i.i ]
  %i.yv = phi i16 [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ %i.yr, %.thread34.loopexit.i.i.i.i.i.i.i.i ]
  %indvars.iv.next54.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv53.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.yw = zext i16 %i.yt to i64
  %i.yx = icmp samesign ult i64 %indvars.iv.next54.i.i.i.i.i.i.i.i, %i.yw
  br i1 %i.yx, label %.preheader.i.i.i.i.i.i.i.i, label %pps_slice_map.exit.i.i.i.i, !llvm.loop !92

bb.bk:                                            ; preds = %.loopexit.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.281.i.i.i.i.i.i = phi i32 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %.3.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ] ; 3 uses
  %i.yy = phi i32 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.act, %.loopexit.i.i.i.i.i.i.i ] ; 6 uses
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ] ; 8 uses
  %i.yz = trunc i32 %i.yy to i16
  %i.za = getelementptr inbounds nuw [2 x i8], ptr %i.wq, i64 %indvars.iv.i.i.i.i.i.i.i
  store i16 %i.yz, ptr %i.za, align 2, !tbaa !48
  %i.zb = getelementptr inbounds nuw [2 x i8], ptr %i.wr, i64 %indvars.iv.i.i.i.i.i.i.i ; 3 uses
  store i16 0, ptr %i.zb, align 2, !tbaa !48
  %i.zc = getelementptr inbounds nuw [2 x i8], ptr %i.ws, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.zd = load i16, ptr %i.zc, align 2, !tbaa !48 ; 2 uses
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %i.wt, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !48 ; 3 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %bb.bk
  %indvars.iv.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i, %bb.bl ], [ 0, %bb.bk ] ; 5 uses
  %i.zg = getelementptr inbounds nuw [2 x i8], ptr %i.wu, i64 %indvars.iv.i.i.i.i.i.i.i.i.i
  %i.zh = load i16, ptr %i.zg, align 2, !tbaa !48 ; 2 uses
  %i.zi = icmp ult i16 %i.zh, %i.zd
  %indvars.iv.next.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.zi, label %bb.bl, label %.preheader1.i.i.i.i.i.i.i.i.i, !llvm.loop !93

.preheader1.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.bl
  %i.zj = zext i16 %i.zd to i32                   ; 2 uses
  %i.zk = zext i16 %i.zf to i32                   ; 2 uses
  %i.zl = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.zm = load i16, ptr %i.wv, align 2, !tbaa !48 ; 2 uses
  %i.zn = icmp ult i16 %i.zm, %i.zf
  br i1 %i.zn, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %bb.bm

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.preheader1.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %indvars.iv17.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next18.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader1.i.i.i.i.i.i.i.i.i ]
  %indvars.iv.next18.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv17.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.zo = getelementptr inbounds nuw [2 x i8], ptr %i.wv, i64 %indvars.iv.next18.i.i.i.i.i.i.i.i.i
  %i.zp = load i16, ptr %i.zo, align 2, !tbaa !48 ; 2 uses
  %i.zq = icmp ult i16 %i.zp, %i.zf
  br i1 %i.zq, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !llvm.loop !94

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.zr = trunc nuw nsw i64 %indvars.iv.next18.i.i.i.i.i.i.i.i.i to i32
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %.preheader1.i.i.i.i.i.i.i.i.i
  %2 = phi i16 [ %i.zp, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.zm, %.preheader1.i.i.i.i.i.i.i.i.i ]
  %.014.i.i.i.i.i.i.i.i = phi i32 [ %i.zr, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader1.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.zs = getelementptr inbounds nuw [2 x i8], ptr %i.ww, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.zt = load i16, ptr %i.zs, align 2, !tbaa !48
  %i.zu = zext i16 %i.zt to i32                   ; 2 uses
  %i.zv = add nuw nsw i32 %i.zu, %i.zj            ; 2 uses
  %i.zw = zext i16 %i.zh to i32
  %.not5.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.zv, %i.zw
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %.preheader.i.i24.i.i.i.i.i.i.i, label %.lr.ph7.i.i.i.i.i.i.i.i.i

..preheader_crit_edge.i.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph7.i.i.i.i.i.i.i.i.i
  %i.zx = trunc nuw nsw i64 %indvars.iv.next21.i.i.i.i.i.i.i.i.i to i32
  br label %.preheader.i.i24.i.i.i.i.i.i.i

.preheader.i.i24.i.i.i.i.i.i.i:                   ; preds = %..preheader_crit_edge.i.i.i.i.i.i.i.i.i, %bb.bm
  %.013.i.i.i.i.i.i.i.i = phi i32 [ %i.zl, %bb.bm ], [ %i.zx, %..preheader_crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %i.wx, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.zz = load i16, ptr %i.zy, align 2, !tbaa !48
  %i.aaa = zext i16 %i.zz to i32                  ; 3 uses
  %i.aab = add nuw nsw i32 %i.aaa, %i.zk          ; 2 uses
  %i.aac = sext i32 %.014.i.i.i.i.i.i.i.i to i64  ; 3 uses
  %i.aad = zext i16 %2 to i32
  %.not2910.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.aab, %i.aad
  br i1 %.not2910.i.i.i.i.i.i.i.i.i, label %subpic_tiles.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph11.i.i.i.i.i.i.i.i.i

.lr.ph7.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.bm, %.lr.ph7.i.i.i.i.i.i.i.i.i
  %indvars.iv20.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next21.i.i.i.i.i.i.i.i.i, %.lr.ph7.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.i.i, %bb.bm ]
  %indvars.iv.next21.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv20.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.aae = getelementptr inbounds nuw [2 x i8], ptr %i.wu, i64 %indvars.iv.next21.i.i.i.i.i.i.i.i.i
  %i.aaf = load i16, ptr %i.aae, align 2, !tbaa !48
  %i.aag = zext i16 %i.aaf to i32
  %.not.i.i23.i.i.i.i.i.i.i = icmp samesign ult i32 %i.zv, %i.aag
  br i1 %.not.i.i23.i.i.i.i.i.i.i, label %..preheader_crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph7.i.i.i.i.i.i.i.i.i, !llvm.loop !95

.lr.ph11.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i24.i.i.i.i.i.i.i, %.lr.ph11.i.i.i.i.i.i.i.i.i
  %indvars.iv23.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next24.i.i.i.i.i.i.i.i.i, %.lr.ph11.i.i.i.i.i.i.i.i.i ], [ %i.aac, %.preheader.i.i24.i.i.i.i.i.i.i ]
  %indvars.iv.next24.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv23.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.aah = getelementptr inbounds [2 x i8], ptr %i.wv, i64 %indvars.iv.next24.i.i.i.i.i.i.i.i.i
  %i.aai = load i16, ptr %i.aah, align 2, !tbaa !48
  %i.aaj = zext i16 %i.aai to i32
  %.not29.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.aab, %i.aaj
  br i1 %.not29.i.i.i.i.i.i.i.i.i, label %subpic_tiles.exit.i.i.i.i.i.i.i.i, label %.lr.ph11.i.i.i.i.i.i.i.i.i, !llvm.loop !96

subpic_tiles.exit.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph11.i.i.i.i.i.i.i.i.i
  %i.aak = trunc nsw i64 %indvars.iv.next24.i.i.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.aal = add nsw i32 %.014.i.i.i.i.i.i.i.i, 1
  %i.aam = icmp eq i32 %i.aal, %i.aak
  br i1 %i.aam, label %bb.bn, label %subpic_tiles.exit.thread.i.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %subpic_tiles.exit.i.i.i.i.i.i.i.i
  %i.aan = add nuw nsw i32 %i.aaa, 1
  %i.aao = getelementptr inbounds [2 x i8], ptr %i.wy, i64 %i.aac
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !48
  %i.aaq = zext i16 %i.aap to i32
  %i.aar = icmp samesign ult i32 %i.aan, %i.aaq
  br i1 %i.aar, label %.preheader.i.i.i.i.i.preheader.i.i.i.i.i, label %subpic_tiles.exit.thread.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.preheader.i.i.i.i.i:         ; preds = %bb.bn
  %i.aas = load i32, ptr %i.rb, align 4, !tbaa !254
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %..critedge_crit_edge.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.preheader.i.i.i.i.i
  %.9.i.i.i.i.i.i = phi i32 [ %i.abc, %..critedge_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %.281.i.i.i.i.i.i, %.preheader.i.i.i.i.i.preheader.i.i.i.i.i ]
  %i.aat = phi i32 [ %i.abc, %..critedge_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.yy, %.preheader.i.i.i.i.i.preheader.i.i.i.i.i ]
  %.02333.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.abe, %..critedge_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.aau = add nuw nsw i32 %.02333.i.i.i.i.i.i.i.i.i.i, %i.zk
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %.preheader.i.i.i.i.i.i.i.i.i.i
  %.10.i.i.i.i.i.i = phi i32 [ %.9.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.abc, %bb.bp ]
  %i.aav = phi i32 [ %i.aat, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.abc, %bb.bp ] ; 2 uses
  %.031.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.abd, %bb.bp ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.aav, %i.aas
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bp, label %pps_slice_map.exit.thread26.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.aaw = add nuw nsw i32 %.031.i.i.i.i.i.i.i.i.i.i, %i.zj
  %.val.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.qy, align 2, !tbaa !53
  %i.aax = zext i16 %.val.i.i.i.i.i.i.i.i.i.i to i32
  %i.aay = mul nuw nsw i32 %i.aau, %i.aax
  %i.aaz = add nuw nsw i32 %i.aaw, %i.aay
  %i.aba = sext i32 %i.aav to i64
  %i.abb = getelementptr inbounds [4 x i8], ptr %i.vv, i64 %i.aba
  store i32 %i.aaz, ptr %i.abb, align 4, !tbaa !47
  %i.abc = add nsw i32 %.10.i.i.i.i.i.i, 1        ; 7 uses
  %i.abd = add nuw nsw i32 %.031.i.i.i.i.i.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.031.i.i.i.i.i.i.i.i.i.i, %i.zu
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %..critedge_crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.bo, !llvm.loop !89

..critedge_crit_edge.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.bp
  %i.abe = add nuw nsw i32 %.02333.i.i.i.i.i.i.i.i.i.i, 1
  %exitcond34.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.02333.i.i.i.i.i.i.i.i.i.i, %i.aaa
  br i1 %exitcond34.not.i.i.i.i.i.i.i.i.i.i, label %pps_add_ctus.exit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !90

pps_add_ctus.exit.i.i.i.i.i.i.i.i.i:              ; preds = %..critedge_crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.abf = sub nsw i32 %i.abc, %i.yy              ; 2 uses
  %i.abg = icmp slt i32 %i.abf, 0
  br i1 %i.abg, label %pps_slice_map.exit.thread26.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %pps_add_ctus.exit.i.i.i.i.i.i.i.i.i
  %i.abh = trunc i32 %i.abf to i16
  store i16 %i.abh, ptr %i.zb, align 2, !tbaa !48
  br label %.loopexit.i.i.i.i.i.i.i

subpic_tiles.exit.thread.i.i.i.i.i.i.i.i:         ; preds = %bb.bn, %subpic_tiles.exit.i.i.i.i.i.i.i.i, %.preheader.i.i24.i.i.i.i.i.i.i
  %.01216.i.i.i.i.i.i.i.i = phi i32 [ %i.aak, %subpic_tiles.exit.i.i.i.i.i.i.i.i ], [ %i.aak, %bb.bn ], [ %.014.i.i.i.i.i.i.i.i, %.preheader.i.i24.i.i.i.i.i.i.i ] ; 2 uses
  %i.abi = icmp slt i32 %.014.i.i.i.i.i.i.i.i, %.01216.i.i.i.i.i.i.i.i
  %.not46.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.013.i.i.i.i.i.i.i.i, %i.zl
  %or.cond.i.i.i.i.i.i.i = select i1 %i.abi, i1 %.not46.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %.preheader.i19.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.preheader.i19.i.i.i.i.i.i.i.i:                   ; preds = %subpic_tiles.exit.thread.i.i.i.i.i.i.i.i, %..thread36_crit_edge.i.i.i.i.i.i.i.i.i
  %.4.i.i.i.i.i.i = phi i32 [ %.8.i.i.i.i.i.i, %..thread36_crit_edge.i.i.i.i.i.i.i.i.i ], [ %.281.i.i.i.i.i.i, %subpic_tiles.exit.thread.i.i.i.i.i.i.i.i ]
  %i.abj = phi i32 [ %i.acn, %..thread36_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.yy, %subpic_tiles.exit.thread.i.i.i.i.i.i.i.i ]
  %i.abk = phi i16 [ %i.acs, %..thread36_crit_edge.i.i.i.i.i.i.i.i.i ], [ 0, %subpic_tiles.exit.thread.i.i.i.i.i.i.i.i ]
  %.pre.i20.i.i.i.i.i.i.i.i = phi i32 [ %.pre59.i.i.i.i.i.i.i.i.i, %..thread36_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.yy, %subpic_tiles.exit.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %indvars.iv54.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next55.i.i.i.i.i.i.i.i.i, %..thread36_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.aac, %subpic_tiles.exit.thread.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.abl = getelementptr inbounds [2 x i8], ptr %i.wv, i64 %indvars.iv54.i.i.i.i.i.i.i.i.i
  %i.abm = getelementptr inbounds [2 x i8], ptr %i.wy, i64 %indvars.iv54.i.i.i.i.i.i.i.i.i
  br label %bb.br

bb.br:                                            ; preds = %bb.bu, %.preheader.i19.i.i.i.i.i.i.i.i
  %.5.i.i.i.i.i.i = phi i32 [ %.4.i.i.i.i.i.i, %.preheader.i19.i.i.i.i.i.i.i.i ], [ %.8.i.i.i.i.i.i, %bb.bu ] ; 2 uses
  %i.abn = phi i32 [ %i.abj, %.preheader.i19.i.i.i.i.i.i.i.i ], [ %i.acn, %bb.bu ]
  %i.abo = phi i16 [ %i.abk, %.preheader.i19.i.i.i.i.i.i.i.i ], [ %i.acs, %bb.bu ]
  %.pre60.i.i.i.i.i.i.i.i.i = phi i32 [ %.pre.i20.i.i.i.i.i.i.i.i, %.preheader.i19.i.i.i.i.i.i.i.i ], [ %.pre59.i.i.i.i.i.i.i.i.i, %bb.bu ]
  %i.abp = phi i32 [ %.pre.i20.i.i.i.i.i.i.i.i, %.preheader.i19.i.i.i.i.i.i.i.i ], [ %i.aco, %bb.bu ] ; 3 uses
  %indvars.iv.i21.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i.i.i.i.i.i, %.preheader.i19.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i31.i.i.i.i.i.i.i.i, %bb.bu ] ; 3 uses
  %i.abq = getelementptr inbounds nuw [2 x i8], ptr %i.wu, i64 %indvars.iv.i21.i.i.i.i.i.i.i.i
  %i.abr = load i16, ptr %i.abq, align 2, !tbaa !48
  %i.abs = zext i16 %i.abr to i32
  %i.abt = load i16, ptr %i.abl, align 2, !tbaa !48
  %i.abu = zext i16 %i.abt to i32
  %i.abv = getelementptr inbounds nuw [2 x i8], ptr %i.wz, i64 %indvars.iv.i21.i.i.i.i.i.i.i.i
  %i.abw = load i16, ptr %i.abv, align 2, !tbaa !48 ; 2 uses
  %i.abx = zext i16 %i.abw to i32
  %i.aby = load i16, ptr %i.abm, align 2, !tbaa !48 ; 2 uses
  %i.abz = zext i16 %i.aby to i32
  %.not2732.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aby, 0
  %.not2630.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.abw, 0
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %.not2732.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not2630.not.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %pps_add_ctus.exit.i30.i.i.i.i.i.i.i.i, label %.preheader.i.i22.i.i.i.preheader.i.i.i.i.i

.preheader.i.i22.i.i.i.preheader.i.i.i.i.i:       ; preds = %bb.br
  %i.aca = load i32, ptr %i.rb, align 4, !tbaa !254
  br label %.preheader.i.i22.i.i.i.i.i.i.i.i

.preheader.i.i22.i.i.i.i.i.i.i.i:                 ; preds = %..critedge_crit_edge.i.i28.i.i.i.i.i.i.i.i, %.preheader.i.i22.i.i.i.preheader.i.i.i.i.i
  %.6.i.i.i.i.i.i = phi i32 [ %i.ack, %..critedge_crit_edge.i.i28.i.i.i.i.i.i.i.i ], [ %.5.i.i.i.i.i.i, %.preheader.i.i22.i.i.i.preheader.i.i.i.i.i ]
  %i.acb = phi i32 [ %i.ack, %..critedge_crit_edge.i.i28.i.i.i.i.i.i.i.i ], [ %i.abp, %.preheader.i.i22.i.i.i.preheader.i.i.i.i.i ]
  %.02333.i.i23.i.i.i.i.i.i.i.i = phi i32 [ %i.acm, %..critedge_crit_edge.i.i28.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i22.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.acc = add nuw nsw i32 %.02333.i.i23.i.i.i.i.i.i.i.i, %i.abu
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.preheader.i.i22.i.i.i.i.i.i.i.i
  %.7.i.i.i.i.i.i = phi i32 [ %.6.i.i.i.i.i.i, %.preheader.i.i22.i.i.i.i.i.i.i.i ], [ %i.ack, %bb.bt ]
  %i.acd = phi i32 [ %i.acb, %.preheader.i.i22.i.i.i.i.i.i.i.i ], [ %i.ack, %bb.bt ] ; 2 uses
  %.031.i.i24.i.i.i.i.i.i.i.i = phi i32 [ 0, %.preheader.i.i22.i.i.i.i.i.i.i.i ], [ %i.acl, %bb.bt ] ; 2 uses
  %.not.i.i25.i.i.i.i.i.i.i.i = icmp ult i32 %i.acd, %i.aca
  br i1 %.not.i.i25.i.i.i.i.i.i.i.i, label %bb.bt, label %pps_slice_map.exit.thread26.i.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.ace = add nuw nsw i32 %.031.i.i24.i.i.i.i.i.i.i.i, %i.abs
  %.val.i.i26.i.i.i.i.i.i.i.i = load i16, ptr %i.qy, align 2, !tbaa !53
  %i.acf = zext i16 %.val.i.i26.i.i.i.i.i.i.i.i to i32
  %i.acg = mul nuw nsw i32 %i.acc, %i.acf
  %i.ach = add nuw nsw i32 %i.ace, %i.acg
  %i.aci = sext i32 %i.acd to i64
  %i.acj = getelementptr inbounds [4 x i8], ptr %i.vv, i64 %i.aci
  store i32 %i.ach, ptr %i.acj, align 4, !tbaa !47
  %i.ack = add nsw i32 %.7.i.i.i.i.i.i, 1         ; 8 uses
  %i.acl = add nuw nsw i32 %.031.i.i24.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i27.i.i.i.i.i.i.i.i = icmp eq i32 %i.acl, %i.abx
  br i1 %exitcond.not.i.i27.i.i.i.i.i.i.i.i, label %..critedge_crit_edge.i.i28.i.i.i.i.i.i.i.i, label %bb.bs, !llvm.loop !89

..critedge_crit_edge.i.i28.i.i.i.i.i.i.i.i:       ; preds = %bb.bt
  %i.acm = add nuw nsw i32 %.02333.i.i23.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i29.i.i.i.i.i.i.i.i = icmp eq i32 %i.acm, %i.abz
  br i1 %exitcond34.not.i.i29.i.i.i.i.i.i.i.i, label %pps_add_ctus.exit.i30.i.i.i.i.i.i.i.i, label %.preheader.i.i22.i.i.i.i.i.i.i.i, !llvm.loop !90

pps_add_ctus.exit.i30.i.i.i.i.i.i.i.i:            ; preds = %..critedge_crit_edge.i.i28.i.i.i.i.i.i.i.i, %bb.br
  %.8.i.i.i.i.i.i = phi i32 [ %.5.i.i.i.i.i.i, %bb.br ], [ %i.ack, %..critedge_crit_edge.i.i28.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.acn = phi i32 [ %i.abn, %bb.br ], [ %i.ack, %..critedge_crit_edge.i.i28.i.i.i.i.i.i.i.i ] ; 3 uses
  %.pre59.i.i.i.i.i.i.i.i.i = phi i32 [ %.pre60.i.i.i.i.i.i.i.i.i, %bb.br ], [ %i.ack, %..critedge_crit_edge.i.i28.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aco = phi i32 [ %i.abp, %bb.br ], [ %i.ack, %..critedge_crit_edge.i.i28.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.acp = sub nsw i32 %i.aco, %i.abp             ; 2 uses
  %i.acq = icmp sgt i32 %i.acp, -1
  br i1 %i.acq, label %bb.bu, label %pps_slice_map.exit.thread26.i.i.i.i

bb.bu:                                            ; preds = %pps_add_ctus.exit.i30.i.i.i.i.i.i.i.i
  %i.acr = trunc i32 %i.acp to i16
  %i.acs = add i16 %i.abo, %i.acr                 ; 3 uses
  store i16 %i.acs, ptr %i.zb, align 2, !tbaa !48
  %indvars.iv.next.i31.i.i.i.i.i.i.i.i = add nuw i64 %indvars.iv.i21.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i31.i.i.i.i.i.i.i.i to i32
  %exitcond = icmp eq i32 %.013.i.i.i.i.i.i.i.i, %lftr.wideiv
  br i1 %exitcond, label %..thread36_crit_edge.i.i.i.i.i.i.i.i.i, label %bb.br, !llvm.loop !97

..thread36_crit_edge.i.i.i.i.i.i.i.i.i:           ; preds = %bb.bu
  %indvars.iv.next55.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv54.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %lftr.wideiv57.i.i.i.i.i.i.i.i.i = trunc i64 %indvars.iv.next55.i.i.i.i.i.i.i.i.i to i32
  %exitcond58.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.01216.i.i.i.i.i.i.i.i, %lftr.wideiv57.i.i.i.i.i.i.i.i.i
  br i1 %exitcond58.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.preheader.i19.i.i.i.i.i.i.i.i, !llvm.loop !98

.loopexit.i.i.i.i.i.i.i:                          ; preds = %..thread36_crit_edge.i.i.i.i.i.i.i.i.i, %subpic_tiles.exit.thread.i.i.i.i.i.i.i.i, %bb.bq
  %.3.i.i.i.i.i.i = phi i32 [ %i.abc, %bb.bq ], [ %.281.i.i.i.i.i.i, %subpic_tiles.exit.thread.i.i.i.i.i.i.i.i ], [ %.8.i.i.i.i.i.i, %..thread36_crit_edge.i.i.i.i.i.i.i.i.i ]
  %i.act = phi i32 [ %i.abc, %bb.bq ], [ %i.yy, %subpic_tiles.exit.thread.i.i.i.i.i.i.i.i ], [ %i.acn, %..thread36_crit_edge.i.i.i.i.i.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 1
  %i.acu = load i16, ptr %i.wp, align 8, !tbaa !261
  %i.acv = zext i16 %i.acu to i64
  %.not22.not.i.i.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.i.i.i.i.i.i.i, %i.acv
  br i1 %.not22.not.i.i.i.i.i.i.i, label %bb.bk, label %pps_slice_map.exit.i.i.i.i, !llvm.loop !99

bb.bv:                                            ; preds = %next_tile_idx.exit.i.i.i.i.i.i, %.preheader90.i.i.i.i.i.i
  %.034133.i.i.i.i.i.i = phi i32 [ 0, %.preheader90.i.i.i.i.i.i ], [ %i.aib, %next_tile_idx.exit.i.i.i.i.i.i ] ; 3 uses
  %.037132.i.i.i.i.i.i = phi i32 [ 0, %.preheader90.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %next_tile_idx.exit.i.i.i.i.i.i ] ; 7 uses
  %.079131.i.i.i.i.i.i = phi i32 [ 0, %.preheader90.i.i.i.i.i.i ], [ %.180.i.i.i.i.i.i, %next_tile_idx.exit.i.i.i.i.i.i ] ; 6 uses
  %i.acw = zext nneg i32 %.034133.i.i.i.i.i.i to i64 ; 7 uses
  %i.acx = getelementptr inbounds nuw [2 x i8], ptr %i.wd, i64 %i.acw ; 2 uses
  %i.acy = load i16, ptr %i.acx, align 2, !tbaa !48
  %.not44.i.i.i.i.i.i = icmp eq i16 %i.acy, 0
  br i1 %.not44.i.i.i.i.i.i, label %bb.bw, label %bb.cd
end_hunk_0
