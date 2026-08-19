inline.NumInlined: 164
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ff_aom_apply_film_grain:bb.a
  %i.rs = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 48
  store <16 x i8> %i.rp, ptr %i.rr, align 1, !tbaa !29
  store <16 x i8> %i.rq, ptr %i.rs, align 1, !tbaa !29
  %i.rt = icmp eq i64 %n.vec178, 64
  br i1 %i.rt, label %middle.block190, label %vector.body184.2

vector.body184.2:                                 ; preds = %vector.body184.1
  %vec.ind.next189.1 = add nsw <16 x i32> %step.add187.1, %i.rb ; 2 uses
  %step.add187.2 = add nsw <16 x i32> %vec.ind.next189.1, %i.rb ; 2 uses
  %i.ru = lshr <16 x i32> %vec.ind.next189.1, splat (i32 16)
  %i.rv = lshr <16 x i32> %step.add187.2, splat (i32 16)
  %i.rw = trunc <16 x i32> %i.ru to <16 x i8>
  %i.rx = trunc <16 x i32> %i.rv to <16 x i8>
  %i.ry = add <16 x i8> %broadcast.splat182, %i.rw
  %i.rz = add <16 x i8> %broadcast.splat182, %i.rx
  %i.sa = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 64
  %i.sb = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 80
  store <16 x i8> %i.ry, ptr %i.sa, align 1, !tbaa !29
  store <16 x i8> %i.rz, ptr %i.sb, align 1, !tbaa !29
  %i.sc = icmp eq i64 %n.vec178, 96
  br i1 %i.sc, label %middle.block190, label %vector.body184.3

vector.body184.3:                                 ; preds = %vector.body184.2
  %vec.ind.next189.2 = add nsw <16 x i32> %step.add187.2, %i.rb ; 2 uses
  %step.add187.3 = add nsw <16 x i32> %vec.ind.next189.2, %i.rb ; 2 uses
  %i.sd = lshr <16 x i32> %vec.ind.next189.2, splat (i32 16)
  %i.se = lshr <16 x i32> %step.add187.3, splat (i32 16)
  %i.sf = trunc <16 x i32> %i.sd to <16 x i8>
  %i.sg = trunc <16 x i32> %i.se to <16 x i8>
  %i.sh = add <16 x i8> %broadcast.splat182, %i.sf
  %i.si = add <16 x i8> %broadcast.splat182, %i.sg
  %i.sj = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 96
  %i.sk = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 112
  store <16 x i8> %i.sh, ptr %i.sj, align 1, !tbaa !29
  store <16 x i8> %i.si, ptr %i.sk, align 1, !tbaa !29
  %i.sl = icmp eq i64 %n.vec178, 128
  br i1 %i.sl, label %middle.block190, label %vector.body184.4

vector.body184.4:                                 ; preds = %vector.body184.3
  %vec.ind.next189.3 = add nsw <16 x i32> %step.add187.3, %i.rb ; 2 uses
  %step.add187.4 = add nsw <16 x i32> %vec.ind.next189.3, %i.rb ; 2 uses
  %i.sm = lshr <16 x i32> %vec.ind.next189.3, splat (i32 16)
  %i.sn = lshr <16 x i32> %step.add187.4, splat (i32 16)
  %i.so = trunc <16 x i32> %i.sm to <16 x i8>
  %i.sp = trunc <16 x i32> %i.sn to <16 x i8>
  %i.sq = add <16 x i8> %broadcast.splat182, %i.so
  %i.sr = add <16 x i8> %broadcast.splat182, %i.sp
  %i.ss = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 128
  %i.st = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 144
  store <16 x i8> %i.sq, ptr %i.ss, align 1, !tbaa !29
  store <16 x i8> %i.sr, ptr %i.st, align 1, !tbaa !29
  %i.su = icmp eq i64 %n.vec178, 160
  br i1 %i.su, label %middle.block190, label %vector.body184.5

vector.body184.5:                                 ; preds = %vector.body184.4
  %vec.ind.next189.4 = add nsw <16 x i32> %step.add187.4, %i.rb ; 2 uses
  %step.add187.5 = add nsw <16 x i32> %vec.ind.next189.4, %i.rb ; 2 uses
  %i.sv = lshr <16 x i32> %vec.ind.next189.4, splat (i32 16)
  %i.sw = lshr <16 x i32> %step.add187.5, splat (i32 16)
  %i.sx = trunc <16 x i32> %i.sv to <16 x i8>
  %i.sy = trunc <16 x i32> %i.sw to <16 x i8>
  %i.sz = add <16 x i8> %broadcast.splat182, %i.sx
  %i.ta = add <16 x i8> %broadcast.splat182, %i.sy
  %i.tb = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 160
  %i.tc = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 176
  store <16 x i8> %i.sz, ptr %i.tb, align 1, !tbaa !29
  store <16 x i8> %i.ta, ptr %i.tc, align 1, !tbaa !29
  %i.td = icmp eq i64 %n.vec178, 192
  br i1 %i.td, label %middle.block190, label %vector.body184.6

vector.body184.6:                                 ; preds = %vector.body184.5
  %vec.ind.next189.5 = add nsw <16 x i32> %step.add187.5, %i.rb ; 2 uses
  %step.add187.6 = add nsw <16 x i32> %vec.ind.next189.5, %i.rb
  %i.te = lshr <16 x i32> %vec.ind.next189.5, splat (i32 16)
  %i.tf = lshr <16 x i32> %step.add187.6, splat (i32 16)
  %i.tg = trunc <16 x i32> %i.te to <16 x i8>
  %i.th = trunc <16 x i32> %i.tf to <16 x i8>
  %i.ti = add <16 x i8> %broadcast.splat182, %i.tg
  %i.tj = add <16 x i8> %broadcast.splat182, %i.th
  %i.tk = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 192
  %i.tl = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 208
  store <16 x i8> %i.ti, ptr %i.tk, align 1, !tbaa !29
  store <16 x i8> %i.tj, ptr %i.tl, align 1, !tbaa !29
  br label %middle.block190

middle.block190:                                  ; preds = %vector.body184.6, %vector.body184.5, %vector.body184.4, %vector.body184.3, %vector.body184.2, %vector.body184.1, %vector.ph177
  %cmp.n191 = icmp eq i64 %n.vec178, %wide.trip.count.i74.i
  br i1 %cmp.n191, label %.loopexit.i71.i, label %vec.epilog.iter.check196

vec.epilog.iter.check196:                         ; preds = %middle.block190
  %min.epilog.iters.check197 = icmp eq i64 %i.qx, 0
  br i1 %min.epilog.iters.check197, label %.lr.ph.i76.i.preheader, label %vec.epilog.ph198, !prof !51

vec.epilog.ph198:                                 ; preds = %vector.main.loop.iter.check175, %vec.epilog.iter.check196
  %vec.epilog.resume.val192 = phi i64 [ %n.vec178, %vec.epilog.iter.check196 ], [ 0, %vector.main.loop.iter.check175 ]
  %bc.resume.val193 = phi i32 [ %i.ra, %vec.epilog.iter.check196 ], [ 32768, %vector.main.loop.iter.check175 ]
  %n.vec199 = and i64 %wide.trip.count.i74.i, 2147483644 ; 4 uses
  %i.tm = trunc nuw nsw i64 %n.vec199 to i32
  %i.tn = mul i32 %i.qu, %i.tm
  %i.to = add i32 %i.tn, 32768
  %broadcast.splatinsert200 = insertelement <4 x i8> poison, i8 %i.qf, i64 0
  %broadcast.splat201 = shufflevector <4 x i8> %broadcast.splatinsert200, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert202 = insertelement <4 x i32> poison, i32 %bc.resume.val193, i64 0
  %broadcast.splat203 = shufflevector <4 x i32> %broadcast.splatinsert202, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert204 = insertelement <4 x i32> poison, i32 %i.qu, i64 0
  %broadcast.splat205 = shufflevector <4 x i32> %broadcast.splatinsert204, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.tp = mul nsw <4 x i32> %broadcast.splat205, <i32 0, i32 1, i32 2, i32 3>
  %induction206 = add nsw <4 x i32> %broadcast.splat203, %i.tp
  %i.tq = shl nsw i32 %i.qu, 2
  %broadcast.splatinsert207 = insertelement <4 x i32> poison, i32 %i.tq, i64 0
  %broadcast.splat208 = shufflevector <4 x i32> %broadcast.splatinsert207, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body209

vec.epilog.vector.body209:                        ; preds = %vec.epilog.vector.body209, %vec.epilog.ph198
  %index210 = phi i64 [ %vec.epilog.resume.val192, %vec.epilog.ph198 ], [ %index.next212, %vec.epilog.vector.body209 ] ; 2 uses
  %vec.ind211 = phi <4 x i32> [ %induction206, %vec.epilog.ph198 ], [ %vec.ind.next213, %vec.epilog.vector.body209 ] ; 2 uses
  %i.tr = lshr <4 x i32> %vec.ind211, splat (i32 16)
  %i.ts = trunc <4 x i32> %i.tr to <4 x i8>
  %i.tt = add <4 x i8> %broadcast.splat201, %i.ts
  %i.tu = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 %index210
  store <4 x i8> %i.tt, ptr %i.tu, align 1, !tbaa !29
  %index.next212 = add nuw i64 %index210, 4       ; 2 uses
  %vec.ind.next213 = add nsw <4 x i32> %vec.ind211, %broadcast.splat208
  %i.tv = icmp eq i64 %index.next212, %n.vec199
  br i1 %i.tv, label %vec.epilog.middle.block214, label %vec.epilog.vector.body209, !llvm.loop !58

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body209
  %cmp.n215 = icmp eq i64 %n.vec199, %wide.trip.count.i74.i
  br i1 %cmp.n215, label %.loopexit.i71.i, label %.lr.ph.i76.i.preheader

.lr.ph.i76.i.preheader:                           ; preds = %iter.check194, %vec.epilog.iter.check196, %vec.epilog.middle.block214
  %indvars.iv.i77.i.ph = phi i64 [ 0, %iter.check194 ], [ %n.vec178, %vec.epilog.iter.check196 ], [ %n.vec199, %vec.epilog.middle.block214 ]
  %.042.i78.i.ph = phi i32 [ 32768, %iter.check194 ], [ %i.ra, %vec.epilog.iter.check196 ], [ %i.to, %vec.epilog.middle.block214 ]
  br label %.lr.ph.i76.i

.lr.ph.i76.i:                                     ; preds = %.lr.ph.i76.i.preheader, %.lr.ph.i76.i
  %indvars.iv.i77.i = phi i64 [ %indvars.iv.next.i80.i, %.lr.ph.i76.i ], [ %indvars.iv.i77.i.ph, %.lr.ph.i76.i.preheader ] ; 2 uses
  %.042.i78.i = phi i32 [ %i.tz, %.lr.ph.i76.i ], [ %.042.i78.i.ph, %.lr.ph.i76.i.preheader ] ; 2 uses
  %i.tw = lshr i32 %.042.i78.i, 16
  %i.tx = trunc i32 %i.tw to i8
  %i.ty = add i8 %i.qf, %i.tx
  %gep.i79.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 %indvars.iv.i77.i
  store i8 %i.ty, ptr %gep.i79.i, align 1, !tbaa !29
  %i.tz = add nsw i32 %.042.i78.i, %i.qu
  %indvars.iv.next.i80.i = add nuw nsw i64 %indvars.iv.i77.i, 1 ; 2 uses
  %exitcond.not.i81.i = icmp eq i64 %indvars.iv.next.i80.i, %wide.trip.count.i74.i
  br i1 %exitcond.not.i81.i, label %.loopexit.i71.i, label %.lr.ph.i76.i, !llvm.loop !59

generate_scaling_8.exit82.i:                      ; preds = %.loopexit.i71.i, %bb.aa
  %i.ua = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.pz
  %i.ub = getelementptr inbounds nuw i8, ptr %i.px, i64 1
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !29
  %i.ud = sub nuw nsw i64 256, %i.pz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ua, i8 %i.uc, i64 %i.ud, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %generate_scaling_8.exit82.i, %bb.z
  %i.ue = icmp sgt i32 %i.cs, 0
  br i1 %i.ue, label %.lr.ph106.i, label %apply_film_grain_8.exit

.lr.ph106.i:                                      ; preds = %bb.ab
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.uh = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.uj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.uk = getelementptr i8, ptr %2, i64 140       ; 8 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.um = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.un = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.c, i64 6068 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.uu = getelementptr inbounds nuw i8, ptr %i.c, i64 12136
  %i.uv = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.uw = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  %scevgep225.a = getelementptr i8, ptr %2, i64 144
  br label %bb.ac

bb.ac:                                            ; preds = %apply_grain_row_8.exit.i, %.lr.ph106.i
  %.0104.i = phi i32 [ 0, %.lr.ph106.i ], [ %i.apq, %apply_grain_row_8.exit.i ] ; 8 uses
  %i.ux = load i32, ptr %i.al, align 8, !tbaa !32 ; 6 uses
  %i.uy = add nsw i32 %i.ux, %i.ct
  %i.uz = ashr i32 %i.uy, %i.ct
  %i.va = load i32, ptr %i.uf, align 4, !tbaa !60
  %i.vb = icmp eq i32 %i.va, 0
  %i.vc = zext i1 %i.vb to i32                    ; 3 uses
  %i.vd = load i32, ptr %i.am, align 4, !tbaa !33
  %i.ve = shl nuw nsw i32 %.0104.i, 5             ; 4 uses
  %i.vf = sub nsw i32 %i.vd, %i.ve                ; 3 uses
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.vf, i32 32) ; 2 uses
  %i.vg = add nsw i32 %spec.select.i.i, %i.cu
  %i.vh = ashr i32 %i.vg, %i.cu                   ; 8 uses
  %i.vi = load i32, ptr %i.ug, align 4, !tbaa !31
  %i.vj = mul nsw i32 %i.vi, %i.ve
  %i.vk = ashr i32 %i.vj, %i.cu
  %i.vl = sext i32 %i.vk to i64                   ; 6 uses
  %i.vm = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.vn = load i32, ptr %i.ak, align 8, !tbaa !31
  %i.vo = mul i32 %i.vn, %i.ve
  %i.vp = sext i32 %i.vo to i64                   ; 2 uses
  %i.vq = getelementptr inbounds i8, ptr %i.vm, i64 %i.vp ; 6 uses
  %i.vr = load i32, ptr %i.e, align 8, !tbaa !49
  %.not.i.i = icmp eq i32 %i.vr, 0
  br i1 %.not.i.i, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.vs = load i32, ptr %i.aj, align 8, !tbaa !31 ; 3 uses
  %i.vt = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.vu = load i32, ptr %i.uh, align 8, !tbaa !61
  %i.vv = icmp ne i32 %i.vu, 0
  %i.vw = icmp ne i32 %.0104.i, 0                 ; 2 uses
  %i.vx = and i1 %i.vw, %i.vv                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.vy = load i32, ptr %i.ui, align 4, !tbaa !62
  %i.vz = load i64, ptr %i.cg, align 8, !tbaa !34
  %i.wa = trunc i64 %i.vz to i32                  ; 2 uses
  %wide.trip.count.i83.i = select i1 %i.vx, i64 2, i64 1 ; 6 uses
  br i1 %i.vx, label %vector.ph276, label %scalar.ph274

vector.ph276:                                     ; preds = %bb.ad
  %n.vec277 = and i64 %wide.trip.count.i83.i, 2
  %broadcast.splatinsert278 = insertelement <2 x i32> poison, i32 %i.wa, i64 0
  %broadcast.splat279 = shufflevector <2 x i32> %broadcast.splatinsert278, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert280 = insertelement <2 x i32> poison, i32 %.0104.i, i64 0
  %broadcast.splat281 = shufflevector <2 x i32> %broadcast.splatinsert280, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph276
  %index283 = phi i64 [ 0, %vector.ph276 ], [ %index.next285, %vector.body282 ] ; 2 uses
  %vec.ind284 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph276 ], [ %vec.ind.next286, %vector.body282 ] ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index283
  %i.wc = sub <2 x i32> %broadcast.splat281, %vec.ind284 ; 2 uses
  %i.wd = mul <2 x i32> %i.wc, splat (i32 9472)
  %i.we = add <2 x i32> %i.wd, splat (i32 45568)
  %i.wf = and <2 x i32> %i.we, splat (i32 65280)
  %i.wg = mul <2 x i32> %i.wc, splat (i32 173)
  %i.wh = add <2 x i32> %i.wg, splat (i32 105)
  %i.wi = and <2 x i32> %i.wh, splat (i32 255)
  %i.wj = or disjoint <2 x i32> %i.wi, %i.wf
  %i.wk = xor <2 x i32> %i.wj, %broadcast.splat279
  store <2 x i32> %i.wk, ptr %i.wb, align 4, !tbaa !31
  %index.next285 = add nuw i64 %index283, 2       ; 2 uses
  %vec.ind.next286 = add <2 x i32> %vec.ind284, splat (i32 2)
  %i.wl = icmp eq i64 %index.next285, %n.vec277
  br i1 %i.wl, label %.preheader232.i.i, label %vector.body282, !llvm.loop !63

.preheader232.i.i:                                ; preds = %scalar.ph274, %vector.body282
  %i.wm = mul i32 %i.vs, %i.ve
  %i.wn = sext i32 %i.wm to i64                   ; 2 uses
  %i.wo = getelementptr inbounds i8, ptr %i.vt, i64 %i.wn
  %i.wp = sext i32 %i.vs to i64                   ; 5 uses
  %i.wq = sext i32 %i.ux to i64
  %.not.i87.i = icmp eq i32 %i.vy, 0              ; 2 uses
  %..i.i = select i1 %.not.i87.i, i32 255, i32 235 ; 7 uses
  %.209.i.i = select i1 %.not.i87.i, i32 0, i32 16 ; 13 uses
  %.not313.i.i = icmp eq i32 %i.ux, 0
  br i1 %.not313.i.i, label %fgy_32x32xn_c_8.exit.i, label %.lr.ph311.i.i

.lr.ph311.i.i:                                    ; preds = %.preheader232.i.i
  %i.wr = tail call i32 @llvm.smin.i32(i32 %i.vf, i32 2)
  %wide.trip.count338.i.i = sext i32 %spec.select.i.i to i64
  %invariant.gep = getelementptr i8, ptr %i.vt, i64 %i.wn
  %invariant.gep301 = getelementptr i8, ptr %i.vm, i64 %i.vp
  %n.vec266 = and i64 %wide.trip.count.i83.i, 2
  %n.vec255 = and i64 %wide.trip.count.i83.i, 2
  %stride.check230 = icmp slt i32 %i.vs, 0
  %broadcast.splatinsert240 = insertelement <4 x i32> poison, i32 %.209.i.i, i64 0
  %broadcast.splat241 = shufflevector <4 x i32> %broadcast.splatinsert240, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert242 = insertelement <4 x i32> poison, i32 %..i.i, i64 0
  %broadcast.splat243 = shufflevector <4 x i32> %broadcast.splatinsert242, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.ae

scalar.ph274:                                     ; preds = %bb.ad, %scalar.ph274
  %indvars.iv.i84.i = phi i64 [ %indvars.iv.next.i85.i, %scalar.ph274 ], [ 0, %bb.ad ] ; 3 uses
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i84.i
  %i.wt = trunc i64 %indvars.iv.i84.i to i32
  %i.wu = sub i32 %.0104.i, %i.wt                 ; 2 uses
  %i.wv = mul i32 %i.wu, 9472
  %i.ww = add i32 %i.wv, 45568
  %i.wx = and i32 %i.ww, 65280
  %i.wy = mul i32 %i.wu, 173
  %i.wz = add i32 %i.wy, 105
  %i.xa = and i32 %i.wz, 255
  %i.xb = or disjoint i32 %i.xa, %i.wx
  %i.xc = xor i32 %i.xb, %i.wa
  store i32 %i.xc, ptr %i.ws, align 4, !tbaa !31
  %indvars.iv.next.i85.i = add nuw nsw i64 %indvars.iv.i84.i, 1 ; 2 uses
  %exitcond.not.i86.i = icmp eq i64 %indvars.iv.next.i85.i, %wide.trip.count.i83.i
  br i1 %exitcond.not.i86.i, label %.preheader232.i.i, label %scalar.ph274, !llvm.loop !64

bb.ae:                                            ; preds = %._crit_edge297.i.i, %.lr.ph311.i.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge297.i.i ], [ 0, %.lr.ph311.i.i ] ; 3 uses
  %indvars.iv359.i.i = phi i64 [ %indvars.iv.next360.i.i, %._crit_edge297.i.i ], [ 0, %.lr.ph311.i.i ] ; 7 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv359.i.i ; 2 uses
  %i.xd = shl i32 %indvar, 5
  %i.xe = sub i32 %i.ux, %i.xd
  %i.xf = tail call i32 @llvm.umin.i32(i32 %i.xe, i32 32)
  %umin219 = zext nneg i32 %i.xf to i64
  %gep302 = getelementptr i8, ptr %invariant.gep301, i64 %indvars.iv359.i.i ; 2 uses
  %i.xg = shl i32 %indvar, 5
  %i.xh = sub i32 %i.ux, %i.xg
  %i.xi = tail call i32 @llvm.umin.i32(i32 %i.xh, i32 32)
  %umin = zext nneg i32 %i.xi to i64
  %3 = trunc i64 %indvars.iv359.i.i to i32
  %i.xj = sub i32 %i.ux, %3                       ; 4 uses
  %i.xk = tail call i32 @llvm.umin.i32(i32 %i.xj, i32 32) ; 2 uses
  %i.xl = load i32, ptr %i.uh, align 8, !tbaa !61
  %i.xm = icmp ne i32 %i.xl, 0                    ; 2 uses
  %or.cond.i.i = and i1 %i.vw, %i.xm
  %i.xn = select i1 %or.cond.i.i, i32 %i.wr, i32 0 ; 4 uses
  %i.xo = icmp ne i64 %indvars.iv359.i.i, 0
  %or.cond3.i.i = and i1 %i.xo, %i.xm             ; 2 uses
  %i.xp = tail call i32 @llvm.umin.i32(i32 %i.xj, i32 2)
  %i.xq = select i1 %or.cond3.i.i, i32 %i.xp, i32 0 ; 9 uses
  br i1 %or.cond3.i.i, label %.preheader231.i.i.preheader, label %.loopexit.i88.i

.preheader231.i.i.preheader:                      ; preds = %bb.ae
  br i1 %i.vx, label %vector.body267, label %.preheader231.i.i

vector.body267:                                   ; preds = %.preheader231.i.i.preheader, %vector.body267
  %index268 = phi i64 [ %index.next270, %vector.body267 ], [ 0, %.preheader231.i.i.preheader ] ; 3 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index268
  %wide.load269 = load <2 x i32>, ptr %i.xr, align 8, !tbaa !31
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %index268
  store <2 x i32> %wide.load269, ptr %i.xs, align 8, !tbaa !31
  %index.next270 = add nuw i64 %index268, 2       ; 2 uses
  %i.xt = icmp eq i64 %index.next270, %n.vec266
  br i1 %i.xt, label %.loopexit.i88.i, label %vector.body267, !llvm.loop !65

.preheader231.i.i:                                ; preds = %.preheader231.i.i.preheader, %.preheader231.i.i
  %indvars.iv317.i.i = phi i64 [ %indvars.iv.next318.i.i, %.preheader231.i.i ], [ 0, %.preheader231.i.i.preheader ] ; 3 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv317.i.i
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !31
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %indvars.iv317.i.i
  store i32 %i.xv, ptr %i.xw, align 4, !tbaa !31
  %indvars.iv.next318.i.i = add nuw nsw i64 %indvars.iv317.i.i, 1 ; 2 uses
  %exitcond321.not.i.i = icmp eq i64 %indvars.iv.next318.i.i, %wide.trip.count.i83.i
  br i1 %exitcond321.not.i.i, label %.loopexit.i88.i, label %.preheader231.i.i, !llvm.loop !66

.loopexit.i88.i:                                  ; preds = %.preheader231.i.i, %vector.body267, %bb.ae
  br i1 %i.vx, label %vector.body256, label %scalar.ph252

vector.body256:                                   ; preds = %.loopexit.i88.i, %vector.body256
  %index257 = phi i64 [ %index.next259, %vector.body256 ], [ 0, %.loopexit.i88.i ] ; 3 uses
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index257 ; 2 uses
  %wide.load258 = load <2 x i32>, ptr %i.xx, align 4, !tbaa !31 ; 4 uses
  %i.xy = ashr <2 x i32> %wide.load258, splat (i32 1) ; 2 uses
  %i.xz = lshr <2 x i32> %wide.load258, splat (i32 3)
  %i.ya = lshr <2 x i32> %wide.load258, splat (i32 12)
  %i.yb = xor <2 x i32> %i.xz, %i.ya
  %i.yc = xor <2 x i32> %i.yb, %wide.load258
  %i.yd = xor <2 x i32> %i.yc, %i.xy
  %i.ye = shl <2 x i32> %i.yd, splat (i32 15)
  %i.yf = and <2 x i32> %i.ye, splat (i32 32768)
  %i.yg = or <2 x i32> %i.yf, %i.xy               ; 2 uses
  store <2 x i32> %i.yg, ptr %i.xx, align 4, !tbaa !31
  %i.yh = lshr <2 x i32> %i.yg, splat (i32 8)
  %i.yi = and <2 x i32> %i.yh, splat (i32 255)
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index257
  store <2 x i32> %i.yi, ptr %i.yj, align 8, !tbaa !31
  %index.next259 = add nuw i64 %index257, 2       ; 2 uses
  %i.yk = icmp eq i64 %index.next259, %n.vec255
  br i1 %i.yk, label %.preheader230.i.i, label %vector.body256, !llvm.loop !67

.preheader230.i.i:                                ; preds = %scalar.ph252, %vector.body256
  %invariant.gep249.i.i = getelementptr i8, ptr %i.vq, i64 %indvars.iv359.i.i ; 4 uses
  %invariant.gep.i89.i = getelementptr i8, ptr %i.wo, i64 %indvars.iv359.i.i ; 4 uses
  %i.yl = icmp sgt i32 %i.vf, %i.xn
  br i1 %i.yl, label %.preheader228.lr.ph.i.i, label %.preheader229.i.i

.preheader228.lr.ph.i.i:                          ; preds = %.preheader230.i.i
  %i.ym = icmp ugt i32 %i.xj, %i.xq
  %i.yn = load i32, ptr %i.b, align 16            ; 2 uses
  %i.yo = ashr i32 %i.yn, 3
  %i.yp = and i32 %i.yo, -2                       ; 2 uses
  %i.yq = shl i32 %i.yn, 1
  %i.yr = and i32 %i.yq, 30                       ; 2 uses
  %invariant.op257.i.i = add nuw nsw i32 %i.yr, 9
  %invariant.op.i.i = add nsw i32 %i.yp, 9        ; 2 uses
  %.not314.i.i = icmp eq i32 %i.xq, 0
  %invariant.op259.i.i = add nuw nsw i32 %i.yr, 6
  %i.ys = load i32, ptr %i.uj, align 8            ; 2 uses
  %i.yt = ashr i32 %i.ys, 3
  %i.yu = and i32 %i.yt, -2                       ; 2 uses
  %i.yv = shl i32 %i.ys, 1
  %i.yw = and i32 %i.yv, 30
  %invariant.op261.i.i = add nuw nsw i32 %i.yw, 6
  %i.yx = zext nneg i32 %i.xq to i64
  %i.yy = zext nneg i32 %i.xk to i64
  %i.yz = sext i32 %i.xn to i64
  %i.za = sext i32 %invariant.op.i.i to i64
  %i.zb = sext i32 %i.yu to i64
  %exitcond334.not.i.i = icmp eq i32 %i.xq, 1
  %i.zc = sext i32 %i.yp to i64
  %i.zd = sext i32 %i.yu to i64
  br label %.preheader228.i.i

scalar.ph252:                                     ; preds = %.loopexit.i88.i, %scalar.ph252
  %indvars.iv322.i.i = phi i64 [ %indvars.iv.next323.i.i, %scalar.ph252 ], [ 0, %.loopexit.i88.i ] ; 3 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv322.i.i ; 2 uses
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !31 ; 4 uses
  %i.zg = ashr i32 %i.zf, 1                       ; 2 uses
  %i.zh = lshr i32 %i.zf, 3
  %i.zi = lshr i32 %i.zf, 12
  %i.zj = xor i32 %i.zh, %i.zi
  %i.zk = xor i32 %i.zj, %i.zf
  %i.zl = xor i32 %i.zk, %i.zg
  %i.zm = shl i32 %i.zl, 15
  %i.zn = and i32 %i.zm, 32768
  %i.zo = or i32 %i.zn, %i.zg                     ; 2 uses
  store i32 %i.zo, ptr %i.ze, align 4, !tbaa !31
  %i.zp = lshr i32 %i.zo, 8
  %i.zq = and i32 %i.zp, 255
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv322.i.i
  store i32 %i.zq, ptr %i.zr, align 4, !tbaa !31
  %indvars.iv.next323.i.i = add nuw nsw i64 %indvars.iv322.i.i, 1 ; 2 uses
  %exitcond326.not.i.i = icmp eq i64 %indvars.iv.next323.i.i, %wide.trip.count.i83.i
  br i1 %exitcond326.not.i.i, label %.preheader230.i.i, label %scalar.ph252, !llvm.loop !68

.preheader229.i.i:                                ; preds = %._crit_edge.i91.i, %.preheader230.i.i
  %i.zs = icmp sgt i32 %i.xn, 0
  br i1 %i.zs, label %.preheader226.lr.ph.i.i, label %._crit_edge297.i.i

.preheader226.lr.ph.i.i:                          ; preds = %.preheader229.i.i
  %i.zt = icmp ugt i32 %i.xj, %i.xq
  %i.zu = load i32, ptr %i.b, align 16            ; 2 uses
  %i.zv = ashr i32 %i.zu, 3
  %i.zw = and i32 %i.zv, -2                       ; 4 uses
  %i.zx = shl i32 %i.zu, 1
  %i.zy = and i32 %i.zx, 30                       ; 2 uses
  %invariant.op298.i.i = add nuw nsw i32 %i.zy, 9
  %invariant.op265.i.i = add nsw i32 %i.zw, 6     ; 2 uses
  %i.zz = load i32, ptr %i.ul, align 4            ; 2 uses
  %i.aaa = ashr i32 %i.zz, 3
  %i.aab = and i32 %i.aaa, -2                     ; 4 uses
  %i.aac = shl i32 %i.zz, 1
  %i.aad = and i32 %i.aac, 30                     ; 2 uses
  %invariant.op300.i.i = add nuw nsw i32 %i.aad, 41
  %invariant.op267.i.i = add nsw i32 %i.aab, 6    ; 2 uses
  %.not315.i.i = icmp eq i32 %i.xq, 0
  %i.aae = load i32, ptr %i.um, align 4           ; 2 uses
  %i.aaf = ashr i32 %i.aae, 3
  %i.aag = and i32 %i.aaf, -2                     ; 2 uses
  %i.aah = shl i32 %i.aae, 1
  %i.aai = and i32 %i.aah, 30
  %i.aaj = load i32, ptr %i.uj, align 8           ; 2 uses
  %i.aak = ashr i32 %i.aaj, 3
  %i.aal = and i32 %i.aak, -2                     ; 2 uses
  %i.aam = shl i32 %i.aaj, 1
  %i.aan = and i32 %i.aam, 30
  %i.aao = zext nneg i32 %i.xq to i64             ; 10 uses
  %i.aap = zext nneg i32 %i.xk to i64             ; 2 uses
  %wide.trip.count357.i.i = zext nneg i32 %i.xn to i64 ; 2 uses
  %i.aaq = zext nneg i32 %i.zy to i64
  %invariant.gep364.i.i.a = getelementptr inbounds nuw [82 x i8], ptr %i.c, i64 %i.aaq
  %i.aar = zext nneg i32 %i.aad to i64
  %invariant.gep366.i.i.a = getelementptr inbounds nuw [82 x i8], ptr %i.c, i64 %i.aar
  %i.aas = zext nneg i32 %i.aai to i64
  %invariant.gep368.i.i.a = getelementptr inbounds nuw [82 x i8], ptr %i.c, i64 %i.aas
  %i.aat = zext nneg i32 %i.aan to i64
  %invariant.gep370.i.i = getelementptr inbounds nuw [82 x i8], ptr %i.c, i64 %i.aat
  %i.aau = add nuw nsw i64 %i.aao, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %umin, i64 %i.aau)
  %i.aav = xor i64 %i.aao, -1
  %i.aaw = add nsw i64 %umax, %i.aav              ; 2 uses
  %i.aax = add nuw nsw i32 %i.xq, 9               ; 2 uses
  %i.aay = add nsw i32 %i.aax, %i.zw              ; 2 uses
  %i.aaz = add nsw i32 %i.aax, %i.aab             ; 2 uses
  %scevgep218 = getelementptr i8, ptr %gep, i64 %i.aao ; 2 uses
  %i.aba = add nuw nsw i64 %i.aao, 1
  %umax220 = tail call i64 @llvm.umax.i64(i64 %umin219, i64 %i.aba)
  %i.abb = add nsw i64 %wide.trip.count357.i.i, -1
  %i.abc = mul nsw i64 %i.abb, %i.wp
  %i.abd = add i64 %umax220, %i.abc               ; 2 uses
  %scevgep221 = getelementptr i8, ptr %gep, i64 %i.abd ; 2 uses
  %scevgep223 = getelementptr i8, ptr %gep302, i64 %i.aao
  %scevgep224.a = getelementptr i8, ptr %gep302, i64 %i.abd
  %i.abe = add nuw nsw i64 %i.aao, 1
  %i.abf = tail call i64 @llvm.umax.i64(i64 %i.aap, i64 %i.abe)
  %i.abg = sub nsw i64 %i.abf, %i.aao             ; 3 uses
  %min.iters.check231 = icmp ult i64 %i.abg, 32
  %i.abh = trunc nsw i64 %i.aaw to i32            ; 2 uses
  %i.abi = add i32 %i.aay, %i.abh
  %i.abj = icmp slt i32 %i.abi, %i.aay
  %i.abk = add i32 %i.aaz, %i.abh
  %i.abl = icmp slt i32 %i.abk, %i.aaz
  %i.abm = icmp ugt i64 %i.aaw, 4294967295
  %i.abn = or i1 %i.abl, %i.abm
  %i.abo = or i1 %i.abj, %i.abn
  %bound0 = icmp ult ptr %scevgep218, %scevgep224.a
  %bound1 = icmp ult ptr %scevgep223, %scevgep221
  %found.conflict = and i1 %bound0, %bound1
  %bound0227 = icmp ult ptr %scevgep218, %scevgep225.a
  %bound1228 = icmp ult ptr %i.uk, %scevgep221
  %found.conflict229 = and i1 %bound0227, %bound1228
  %i.abp = or i1 %found.conflict229, %stride.check230
  %conflict.rdx = or i1 %found.conflict, %i.abp
  %n.vec233 = and i64 %i.abg, -4                  ; 3 uses
  %i.abq = or disjoint i64 %n.vec233, %i.aao
  %cmp.n250 = icmp eq i64 %i.abg, %n.vec233
  %i.abr = sext i32 %i.zw to i64
  %i.abs = sext i32 %i.aab to i64
  %i.abt = sext i32 %i.aag to i64
  %i.abu = sext i32 %i.aal to i64
  %exitcond347.not.i.i = icmp eq i32 %i.xq, 1
  %i.abv = sext i32 %i.zw to i64
  %i.abw = sext i32 %i.aab to i64
  %i.abx = sext i32 %i.aag to i64
  %i.aby = sext i32 %i.aal to i64
  br label %.preheader226.i.i

.preheader228.i.i:                                ; preds = %._crit_edge.i91.i, %.preheader228.lr.ph.i.i
  %indvars.iv335.i.i = phi i64 [ %i.yz, %.preheader228.lr.ph.i.i ], [ %indvars.iv.next336.i.i, %._crit_edge.i91.i ] ; 5 uses
  br i1 %i.ym, label %.lr.ph.i92.i, label %.preheader227.i.i

.lr.ph.i92.i:                                     ; preds = %.preheader228.i.i
  %i.abz = trunc nsw i64 %indvars.iv335.i.i to i32
  %.reass258.i.i = add i32 %invariant.op257.i.i, %i.abz
  %i.aca = sext i32 %.reass258.i.i to i64
  %i.acb = getelementptr inbounds [82 x i8], ptr %i.c, i64 %i.aca
  %i.acc = mul nsw i64 %indvars.iv335.i.i, %i.wp  ; 2 uses
  %gep250.i.i = getelementptr i8, ptr %invariant.gep249.i.i, i64 %i.acc
  %gep251.i.i = getelementptr i8, ptr %invariant.gep.i89.i, i64 %i.acc
  br label %bb.af

.preheader227.i.i:                                ; preds = %bb.af, %.preheader228.i.i
  br i1 %.not314.i.i, label %._crit_edge.i91.i, label %.lr.ph240.i.i

.lr.ph240.i.i:                                    ; preds = %.preheader227.i.i
  %i.acd = trunc i64 %indvars.iv335.i.i to i32
  %i.ace = add i32 %i.acd, 3                      ; 2 uses
  %.reass260.i.i = add i32 %invariant.op259.i.i, %i.ace
  %i.acf = sext i32 %.reass260.i.i to i64
  %i.acg = getelementptr inbounds [82 x i8], ptr %i.c, i64 %i.acf ; 2 uses
  %.reass262.i.i = add i32 %invariant.op261.i.i, %i.ace
  %i.ach = sext i32 %.reass262.i.i to i64
  %i.aci = getelementptr inbounds [82 x i8], ptr %i.c, i64 %i.ach ; 2 uses
  %i.acj = mul nsw i64 %indvars.iv335.i.i, %i.wp  ; 2 uses
  %gep253.i.i = getelementptr i8, ptr %invariant.gep249.i.i, i64 %i.acj ; 2 uses
  %gep255.i.i = getelementptr i8, ptr %invariant.gep.i89.i, i64 %i.acj ; 2 uses
  %i.ack = getelementptr inbounds i8, ptr %i.acg, i64 %i.za
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !29
  %i.acm = sext i8 %i.acl to i32
  %i.acn = getelementptr i8, ptr %i.aci, i64 %i.zb
  %i.aco = getelementptr i8, ptr %i.acn, i64 41
  %i.acp = load i8, ptr %i.aco, align 1, !tbaa !29
  %i.acq = sext i8 %i.acp to i32
  %i.acr = mul nsw i32 %i.acq, 27
  %i.acs = mul nsw i32 %i.acm, 17
  %i.act = add nsw i32 %i.acr, 16
  %i.acu = add nsw i32 %i.act, %i.acs
  %i.acv = ashr i32 %i.acu, 5
  %i.acw = tail call i32 @llvm.smax.i32(i32 %i.acv, i32 -128)
  %.0.i223.i.i = tail call i32 @llvm.smin.i32(i32 %i.acw, i32 127)
  %i.acx = load i8, ptr %gep253.i.i, align 1, !tbaa !29 ; 2 uses
  %i.acy = zext i8 %i.acx to i64
  %i.acz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.acy
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !29
  %i.adb = zext i8 %i.ada to i32
  %i.adc = mul nsw i32 %.0.i223.i.i, %i.adb
  %i.add = load i32, ptr %i.uk, align 4, !tbaa !69 ; 2 uses
  %i.ade = shl nuw i32 1, %i.add
  %i.adf = ashr i32 %i.ade, 1
  %i.adg = add nsw i32 %i.adc, %i.adf
  %i.adh = ashr i32 %i.adg, %i.add
  %i.adi = zext i8 %i.acx to i32
  %i.adj = add nsw i32 %i.adh, %i.adi             ; 2 uses
  %i.adk = icmp slt i32 %i.adj, %.209.i.i
  %..i220.i.i = tail call i32 @llvm.smin.i32(i32 %i.adj, i32 %..i.i)
  %.0.i221.i.i = select i1 %i.adk, i32 %.209.i.i, i32 %..i220.i.i
  %i.adl = trunc i32 %.0.i221.i.i to i8
  store i8 %i.adl, ptr %gep255.i.i, align 1, !tbaa !29
  br i1 %exitcond334.not.i.i, label %._crit_edge.i91.i, label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph.i92.i
  %indvars.iv327.i.i = phi i64 [ %i.yx, %.lr.ph.i92.i ], [ %indvars.iv.next328.i.i, %bb.af ] ; 4 uses
  %i.adm = trunc nuw nsw i64 %indvars.iv327.i.i to i32
  %.reass.i.i = add i32 %invariant.op.i.i, %i.adm
  %i.adn = sext i32 %.reass.i.i to i64
  %i.ado = getelementptr inbounds i8, ptr %i.acb, i64 %i.adn
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !29
  %i.adq = sext i8 %i.adp to i32
  %gep.i93.i = getelementptr inbounds nuw i8, ptr %gep250.i.i, i64 %indvars.iv327.i.i
  %gep238.i.i = getelementptr inbounds nuw i8, ptr %gep251.i.i, i64 %indvars.iv327.i.i
  %i.adr = load i8, ptr %gep.i93.i, align 1, !tbaa !29 ; 2 uses
  %i.ads = zext i8 %i.adr to i64
  %i.adt = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ads
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !29
  %i.adv = zext i8 %i.adu to i32
  %i.adw = mul nsw i32 %i.adv, %i.adq
  %i.adx = load i32, ptr %i.uk, align 4, !tbaa !69 ; 2 uses
  %i.ady = shl nuw i32 1, %i.adx
  %i.adz = ashr i32 %i.ady, 1
  %i.aea = add nsw i32 %i.adz, %i.adw
  %i.aeb = ashr i32 %i.aea, %i.adx
  %i.aec = zext i8 %i.adr to i32
  %i.aed = add nsw i32 %i.aeb, %i.aec             ; 2 uses
  %i.aee = icmp slt i32 %i.aed, %.209.i.i
  %..i224.i.i = tail call i32 @llvm.smin.i32(i32 %i.aed, i32 %..i.i)
  %.0.i225.i.i = select i1 %i.aee, i32 %.209.i.i, i32 %..i224.i.i
  %i.aef = trunc i32 %.0.i225.i.i to i8
  store i8 %i.aef, ptr %gep238.i.i, align 1, !tbaa !29
  %indvars.iv.next328.i.i = add nuw nsw i64 %indvars.iv327.i.i, 1 ; 2 uses
  %i.aeg = icmp samesign ult i64 %indvars.iv.next328.i.i, %i.yy
  br i1 %i.aeg, label %bb.af, label %.preheader227.i.i, !llvm.loop !70

._crit_edge.i91.i:                                ; preds = %bb.ag, %.lr.ph240.i.i, %.preheader227.i.i
  %indvars.iv.next336.i.i = add nsw i64 %indvars.iv335.i.i, 1 ; 2 uses
  %exitcond339.not.i.i = icmp eq i64 %indvars.iv.next336.i.i, %wide.trip.count338.i.i
  br i1 %exitcond339.not.i.i, label %.preheader229.i.i, label %.preheader228.i.i, !llvm.loop !71

bb.ag:                                            ; preds = %.lr.ph240.i.i
  %i.aeh = getelementptr i8, ptr %i.acg, i64 %i.zc
  %i.aei = getelementptr i8, ptr %i.aeh, i64 10
  %i.aej = load i8, ptr %i.aei, align 2, !tbaa !29
  %i.aek = sext i8 %i.aej to i32
  %i.ael = getelementptr i8, ptr %i.aci, i64 %i.zd
  %i.aem = getelementptr i8, ptr %i.ael, i64 42
  %i.aen = load i8, ptr %i.aem, align 2, !tbaa !29
  %i.aeo = sext i8 %i.aen to i32
  %i.aep = mul nsw i32 %i.aeo, 17
  %i.aeq = mul nsw i32 %i.aek, 27
  %i.aer = add nsw i32 %i.aep, 16
  %i.aes = add nsw i32 %i.aer, %i.aeq
  %i.aet = ashr i32 %i.aes, 5
  %i.aeu = tail call i32 @llvm.smax.i32(i32 %i.aet, i32 -128)
  %.0.i223.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.aeu, i32 127)
  %gep246.i.i.1 = getelementptr inbounds nuw i8, ptr %gep253.i.i, i64 1
  %gep248.i.i.1 = getelementptr inbounds nuw i8, ptr %gep255.i.i, i64 1
  %i.aev = load i8, ptr %gep246.i.i.1, align 1, !tbaa !29 ; 2 uses
  %i.aew = zext i8 %i.aev to i64
  %i.aex = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aew
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !29
  %i.aez = zext i8 %i.aey to i32
  %i.afa = mul nsw i32 %.0.i223.i.i.1, %i.aez
  %i.afb = load i32, ptr %i.uk, align 4, !tbaa !69 ; 2 uses
  %i.afc = shl nuw i32 1, %i.afb
  %i.afd = ashr i32 %i.afc, 1
  %i.afe = add nsw i32 %i.afa, %i.afd
  %i.aff = ashr i32 %i.afe, %i.afb
  %i.afg = zext i8 %i.aev to i32
  %i.afh = add nsw i32 %i.aff, %i.afg             ; 2 uses
  %i.afi = icmp slt i32 %i.afh, %.209.i.i
  %..i220.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.afh, i32 %..i.i)
  %.0.i221.i.i.1 = select i1 %i.afi, i32 %.209.i.i, i32 %..i220.i.i.1
  %i.afj = trunc i32 %.0.i221.i.i.1 to i8
  store i8 %i.afj, ptr %gep248.i.i.1, align 1, !tbaa !29
  br label %._crit_edge.i91.i

.preheader226.i.i:                                ; preds = %._crit_edge275.i.i, %.preheader226.lr.ph.i.i
  %indvars.iv348.i.i = phi i64 [ 0, %.preheader226.lr.ph.i.i ], [ %indvars.iv.next349.i.i, %._crit_edge275.i.i ] ; 8 uses
  br i1 %i.zt, label %.lr.ph264.i.i, label %.preheader.i.i

.lr.ph264.i.i:                                    ; preds = %.preheader226.i.i
  %i.afk = trunc i64 %indvars.iv348.i.i to i32    ; 2 uses
  %i.afl = add i32 %invariant.op298.i.i, %i.afk
  %i.afm = sext i32 %i.afl to i64
  %i.afn = getelementptr inbounds [82 x i8], ptr %i.c, i64 %i.afm ; 2 uses
  %i.afo = add i32 %invariant.op300.i.i, %i.afk
  %i.afp = sext i32 %i.afo to i64
  %i.afq = getelementptr inbounds [82 x i8], ptr %i.c, i64 %i.afp ; 2 uses
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr @fgy_32x32xn_c_16.w, i64 %indvars.iv348.i.i ; 2 uses
  %i.afs = load i32, ptr %i.afr, align 8, !tbaa !31 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 4
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !31 ; 2 uses
  %i.afv = mul nsw i64 %indvars.iv348.i.i, %i.wp  ; 2 uses
  %gep289.i.i = getelementptr i8, ptr %invariant.gep249.i.i, i64 %i.afv ; 2 uses
  %gep291.i.i = getelementptr i8, ptr %invariant.gep.i89.i, i64 %i.afv ; 2 uses
  %brmerge = select i1 %min.iters.check231, i1 true, i1 %i.abo
  %brmerge303 = select i1 %brmerge, i1 true, i1 %conflict.rdx
  br i1 %brmerge303, label %scalar.ph.preheader, label %vector.ph232

vector.ph232:                                     ; preds = %.lr.ph264.i.i
  %i.afw = load i32, ptr %i.uk, align 4, !tbaa !69, !alias.scope !72
  %broadcast.splatinsert234 = insertelement <4 x i32> poison, i32 %i.afw, i64 0
  %broadcast.splat235 = shufflevector <4 x i32> %broadcast.splatinsert234, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afx = shl nuw <4 x i32> splat (i32 1), %broadcast.splat235
  %i.afy = ashr <4 x i32> %i.afx, splat (i32 1)
  %broadcast.splatinsert236 = insertelement <4 x i32> poison, i32 %i.afs, i64 0
  %broadcast.splat237 = shufflevector <4 x i32> %broadcast.splatinsert236, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert238 = insertelement <4 x i32> poison, i32 %i.afu, i64 0
  %broadcast.splat239 = shufflevector <4 x i32> %broadcast.splatinsert238, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph232
  %index245 = phi i64 [ 0, %vector.ph232 ], [ %index.next248, %vector.body244 ] ; 2 uses
  %i.afz = or disjoint i64 %index245, %i.aao      ; 3 uses
  %i.aga = trunc i64 %i.afz to i32
  %i.agb = add i32 %i.aga, 3                      ; 2 uses
  %i.agc = add i32 %i.agb, %invariant.op265.i.i
  %i.agd = sext i32 %i.agc to i64
  %i.age = getelementptr inbounds i8, ptr %i.afn, i64 %i.agd
  %wide.load246 = load <4 x i8>, ptr %i.age, align 1, !tbaa !29
  %i.agf = sext <4 x i8> %wide.load246 to <4 x i32>
  %i.agg = add i32 %i.agb, %invariant.op267.i.i
  %i.agh = sext i32 %i.agg to i64
  %i.agi = getelementptr inbounds i8, ptr %i.afq, i64 %i.agh
  %wide.load247 = load <4 x i8>, ptr %i.agi, align 1, !tbaa !29
  %i.agj = sext <4 x i8> %wide.load247 to <4 x i32>
  %i.agk = mul nsw <4 x i32> %broadcast.splat237, %i.agj
  %i.agl = mul nsw <4 x i32> %broadcast.splat239, %i.agf
  %i.agm = add <4 x i32> %i.agl, splat (i32 16)
  %i.agn = add <4 x i32> %i.agm, %i.agk
  %i.ago = ashr <4 x i32> %i.agn, splat (i32 5)
  %i.agp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ago, <4 x i32> splat (i32 -128))
  %i.agq = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.agp, <4 x i32> splat (i32 127))
  %i.agr = getelementptr inbounds nuw i8, ptr %gep289.i.i, i64 %i.afz
  %i.ags = getelementptr inbounds nuw i8, ptr %gep291.i.i, i64 %i.afz
  %i.agt = load <4 x i8>, ptr %i.agr, align 1, !tbaa !29, !alias.scope !75 ; 5 uses
  %i.agu = extractelement <4 x i8> %i.agt, i64 0
  %i.agv = zext i8 %i.agu to i64
  %i.agw = extractelement <4 x i8> %i.agt, i64 1
  %i.agx = zext i8 %i.agw to i64
  %i.agy = extractelement <4 x i8> %i.agt, i64 2
  %i.agz = zext i8 %i.agy to i64
  %i.aha = extractelement <4 x i8> %i.agt, i64 3
  %i.ahb = zext i8 %i.aha to i64
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.agv
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.agx
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.agz
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ahb
  %i.ahg = load i8, ptr %i.ahc, align 1, !tbaa !29
  %i.ahh = load i8, ptr %i.ahd, align 1, !tbaa !29
  %i.ahi = load i8, ptr %i.ahe, align 1, !tbaa !29
  %i.ahj = load i8, ptr %i.ahf, align 1, !tbaa !29
  %i.ahk = insertelement <4 x i8> poison, i8 %i.ahg, i64 0
  %i.ahl = insertelement <4 x i8> %i.ahk, i8 %i.ahh, i64 1
  %i.ahm = insertelement <4 x i8> %i.ahl, i8 %i.ahi, i64 2
  %i.ahn = insertelement <4 x i8> %i.ahm, i8 %i.ahj, i64 3
  %i.aho = zext <4 x i8> %i.ahn to <4 x i32>
  %i.ahp = mul nsw <4 x i32> %i.agq, %i.aho
  %i.ahq = add nsw <4 x i32> %i.ahp, %i.afy
  %i.ahr = ashr <4 x i32> %i.ahq, %broadcast.splat235
  %i.ahs = zext <4 x i8> %i.agt to <4 x i32>
  %i.aht = add nsw <4 x i32> %i.ahr, %i.ahs       ; 2 uses
  %i.ahu = icmp slt <4 x i32> %i.aht, %broadcast.splat241
  %i.ahv = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aht, <4 x i32> %broadcast.splat243)
  %i.ahw = select <4 x i1> %i.ahu, <4 x i32> %broadcast.splat241, <4 x i32> %i.ahv
  %i.ahx = trunc <4 x i32> %i.ahw to <4 x i8>
  store <4 x i8> %i.ahx, ptr %i.ags, align 1, !tbaa !29, !alias.scope !77, !noalias !79
  %index.next248 = add nuw i64 %index245, 4       ; 2 uses
  %i.ahy = icmp eq i64 %index.next248, %n.vec233
  br i1 %i.ahy, label %middle.block249, label %vector.body244, !llvm.loop !80

middle.block249:                                  ; preds = %vector.body244
  br i1 %cmp.n250, label %.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph264.i.i, %middle.block249
  %indvars.iv340.i.i.ph = phi i64 [ %i.aao, %.lr.ph264.i.i ], [ %i.abq, %middle.block249 ]
  br label %scalar.ph

._crit_edge297.i.i:                               ; preds = %._crit_edge275.i.i, %.preheader229.i.i
  %indvars.iv.next360.i.i = add i64 %indvars.iv359.i.i, 32 ; 2 uses
  %4 = and i64 %indvars.iv.next360.i.i, 4294967264
  %5 = icmp ult i64 %4, %i.wq
  %indvar.next = add i32 %indvar, 1
  br i1 %5, label %bb.ae, label %fgy_32x32xn_c_8.exit.i, !llvm.loop !81

.preheader.i.i:                                   ; preds = %scalar.ph, %middle.block249, %.preheader226.i.i
  br i1 %.not315.i.i, label %._crit_edge275.i.i, label %.lr.ph274.i.i

.lr.ph274.i.i:                                    ; preds = %.preheader.i.i
  %i.ahz = add nuw nsw i64 %indvars.iv348.i.i, 3  ; 2 uses
  %gep365.i.i.a = getelementptr inbounds nuw [82 x i8], ptr %invariant.gep364.i.i.a, i64 %i.ahz
  %i.aia = getelementptr inbounds nuw i8, ptr %gep365.i.i.a, i64 492 ; 2 uses
  %i.aib = add nuw nsw i64 %indvars.iv348.i.i, 35 ; 2 uses
  %gep367.i.i.a = getelementptr inbounds nuw [82 x i8], ptr %invariant.gep366.i.i.a, i64 %i.aib
  %i.aic = getelementptr inbounds nuw i8, ptr %gep367.i.i.a, i64 492 ; 2 uses
  %gep369.i.i.a = getelementptr inbounds nuw [82 x i8], ptr %invariant.gep368.i.i.a, i64 %i.aib
  %i.aid = getelementptr inbounds nuw i8, ptr %gep369.i.i.a, i64 492 ; 2 uses
  %gep371.i.i = getelementptr inbounds nuw [82 x i8], ptr %invariant.gep370.i.i, i64 %i.ahz
  %i.aie = getelementptr inbounds nuw i8, ptr %gep371.i.i, i64 492 ; 2 uses
  %i.aif = getelementptr inbounds nuw [8 x i8], ptr @fgy_32x32xn_c_16.w, i64 %indvars.iv348.i.i ; 2 uses
  %i.aig = load i32, ptr %i.aif, align 8, !tbaa !31 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aif, i64 4
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !31 ; 2 uses
  %i.aij = mul nsw i64 %indvars.iv348.i.i, %i.wp  ; 2 uses
  %gep293.i.i = getelementptr i8, ptr %invariant.gep249.i.i, i64 %i.aij ; 2 uses
  %gep295.i.i = getelementptr i8, ptr %invariant.gep.i89.i, i64 %i.aij ; 2 uses
  %i.aik = getelementptr i8, ptr %i.aia, i64 %i.abr
  %i.ail = getelementptr i8, ptr %i.aik, i64 9
  %i.aim = load i8, ptr %i.ail, align 1, !tbaa !29
  %i.ain = sext i8 %i.aim to i32
  %i.aio = getelementptr i8, ptr %i.aic, i64 %i.abs
  %i.aip = getelementptr i8, ptr %i.aio, i64 9
  %i.aiq = load i8, ptr %i.aip, align 1, !tbaa !29
  %i.air = sext i8 %i.aiq to i32
  %i.ais = getelementptr i8, ptr %i.aid, i64 %i.abt
  %i.ait = getelementptr i8, ptr %i.ais, i64 41
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !29
  %i.aiv = sext i8 %i.aiu to i32
  %i.aiw = mul nsw i32 %i.aiv, 27
  %i.aix = mul nsw i32 %i.air, 17
  %i.aiy = add nsw i32 %i.aiw, 16
  %i.aiz = add nsw i32 %i.aiy, %i.aix
  %i.aja = ashr i32 %i.aiz, 5
  %i.ajb = tail call i32 @llvm.smax.i32(i32 %i.aja, i32 -128)
  %.0.i215.i.i = tail call i32 @llvm.smin.i32(i32 %i.ajb, i32 127)
  %i.ajc = getelementptr i8, ptr %i.aie, i64 %i.abu
  %i.ajd = getelementptr i8, ptr %i.ajc, i64 41
  %i.aje = load i8, ptr %i.ajd, align 1, !tbaa !29
  %i.ajf = sext i8 %i.aje to i32
  %i.ajg = mul nsw i32 %i.ajf, 27
  %i.ajh = mul nsw i32 %i.ain, 17
  %i.aji = add nsw i32 %i.ajh, 16
  %i.ajj = add nsw i32 %i.aji, %i.ajg
  %i.ajk = ashr i32 %i.ajj, 5
  %i.ajl = tail call i32 @llvm.smax.i32(i32 %i.ajk, i32 -128)
  %.0.i213.i.i = tail call i32 @llvm.smin.i32(i32 %i.ajl, i32 127)
  %i.ajm = mul nsw i32 %.0.i215.i.i, %i.aig
  %i.ajn = mul nsw i32 %.0.i213.i.i, %i.aii
  %i.ajo = add i32 %i.ajm, 16
  %i.ajp = add i32 %i.ajo, %i.ajn
  %i.ajq = ashr i32 %i.ajp, 5
  %i.ajr = tail call i32 @llvm.smax.i32(i32 %i.ajq, i32 -128)
  %.0.i211.i.i = tail call i32 @llvm.smin.i32(i32 %i.ajr, i32 127)
  %i.ajs = load i8, ptr %gep293.i.i, align 1, !tbaa !29 ; 2 uses
  %i.ajt = zext i8 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ajt
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !29
  %i.ajw = zext i8 %i.ajv to i32
  %i.ajx = mul nsw i32 %.0.i211.i.i, %i.ajw
  %i.ajy = load i32, ptr %i.uk, align 4, !tbaa !69 ; 2 uses
  %i.ajz = shl nuw i32 1, %i.ajy
  %i.aka = ashr i32 %i.ajz, 1
  %i.akb = add nsw i32 %i.ajx, %i.aka
  %i.akc = ashr i32 %i.akb, %i.ajy
  %i.akd = zext i8 %i.ajs to i32
  %i.ake = add nsw i32 %i.akc, %i.akd             ; 2 uses
  %i.akf = icmp slt i32 %i.ake, %.209.i.i
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ake, i32 %..i.i)
  %.0.i.i90.i = select i1 %i.akf, i32 %.209.i.i, i32 %..i.i.i
  %i.akg = trunc i32 %.0.i.i90.i to i8
  store i8 %i.akg, ptr %gep295.i.i, align 1, !tbaa !29
  br i1 %exitcond347.not.i.i, label %._crit_edge275.i.i, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv340.i.i = phi i64 [ %indvars.iv.next341.i.i, %scalar.ph ], [ %indvars.iv340.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.akh = trunc i64 %indvars.iv340.i.i to i32
  %i.aki = add i32 %i.akh, 3                      ; 2 uses
  %.reass266.i.i = add i32 %i.aki, %invariant.op265.i.i
  %i.akj = sext i32 %.reass266.i.i to i64
  %i.akk = getelementptr inbounds i8, ptr %i.afn, i64 %i.akj
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !29
  %i.akm = sext i8 %i.akl to i32
  %.reass268.i.i = add i32 %i.aki, %invariant.op267.i.i
  %i.akn = sext i32 %.reass268.i.i to i64
  %i.ako = getelementptr inbounds i8, ptr %i.afq, i64 %i.akn
  %i.akp = load i8, ptr %i.ako, align 1, !tbaa !29
  %i.akq = sext i8 %i.akp to i32
  %i.akr = mul nsw i32 %i.afs, %i.akq
  %i.aks = mul nsw i32 %i.afu, %i.akm
  %i.akt = add i32 %i.aks, 16
  %i.aku = add i32 %i.akt, %i.akr
  %i.akv = ashr i32 %i.aku, 5
  %i.akw = tail call i32 @llvm.smax.i32(i32 %i.akv, i32 -128)
  %.0.i219.i.i = tail call i32 @llvm.smin.i32(i32 %i.akw, i32 127)
  %gep270.i.i = getelementptr inbounds nuw i8, ptr %gep289.i.i, i64 %indvars.iv340.i.i
  %gep272.i.i = getelementptr inbounds nuw i8, ptr %gep291.i.i, i64 %indvars.iv340.i.i
  %i.akx = load i8, ptr %gep270.i.i, align 1, !tbaa !29 ; 2 uses
  %i.aky = zext i8 %i.akx to i64
  %i.akz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aky
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !29
  %i.alb = zext i8 %i.ala to i32
  %i.alc = mul nsw i32 %.0.i219.i.i, %i.alb
  %i.ald = load i32, ptr %i.uk, align 4, !tbaa !69 ; 2 uses
  %i.ale = shl nuw i32 1, %i.ald
  %i.alf = ashr i32 %i.ale, 1
  %i.alg = add nsw i32 %i.alc, %i.alf
  %i.alh = ashr i32 %i.alg, %i.ald
  %i.ali = zext i8 %i.akx to i32
  %i.alj = add nsw i32 %i.alh, %i.ali             ; 2 uses
  %i.alk = icmp slt i32 %i.alj, %.209.i.i
  %..i216.i.i = tail call i32 @llvm.smin.i32(i32 %i.alj, i32 %..i.i)
  %.0.i217.i.i = select i1 %i.alk, i32 %.209.i.i, i32 %..i216.i.i
  %i.all = trunc i32 %.0.i217.i.i to i8
  store i8 %i.all, ptr %gep272.i.i, align 1, !tbaa !29
  %indvars.iv.next341.i.i = add nuw nsw i64 %indvars.iv340.i.i, 1 ; 2 uses
  %i.alm = icmp samesign ult i64 %indvars.iv.next341.i.i, %i.aap
  br i1 %i.alm, label %scalar.ph, label %.preheader.i.i, !llvm.loop !82

._crit_edge275.i.i:                               ; preds = %bb.ah, %.lr.ph274.i.i, %.preheader.i.i
  %indvars.iv.next349.i.i = add nuw nsw i64 %indvars.iv348.i.i, 1 ; 2 uses
  %exitcond358.not.i.i = icmp eq i64 %indvars.iv.next349.i.i, %wide.trip.count357.i.i
  br i1 %exitcond358.not.i.i, label %._crit_edge297.i.i, label %.preheader226.i.i, !llvm.loop !83

bb.ah:                                            ; preds = %.lr.ph274.i.i
  %i.aln = getelementptr i8, ptr %i.aia, i64 %i.abv
  %i.alo = getelementptr i8, ptr %i.aln, i64 10
  %i.alp = load i8, ptr %i.alo, align 2, !tbaa !29
  %i.alq = sext i8 %i.alp to i32
  %i.alr = getelementptr i8, ptr %i.aic, i64 %i.abw
  %i.als = getelementptr i8, ptr %i.alr, i64 10
  %i.alt = load i8, ptr %i.als, align 2, !tbaa !29
  %i.alu = sext i8 %i.alt to i32
  %i.alv = getelementptr i8, ptr %i.aid, i64 %i.abx
  %i.alw = getelementptr i8, ptr %i.alv, i64 42
  %i.alx = load i8, ptr %i.alw, align 2, !tbaa !29
  %i.aly = sext i8 %i.alx to i32
  %i.alz = mul nsw i32 %i.aly, 17
  %i.ama = mul nsw i32 %i.alu, 27
  %i.amb = add nsw i32 %i.alz, 16
  %i.amc = add nsw i32 %i.amb, %i.ama
  %i.amd = ashr i32 %i.amc, 5
  %i.ame = tail call i32 @llvm.smax.i32(i32 %i.amd, i32 -128)
  %.0.i215.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ame, i32 127)
  %i.amf = getelementptr i8, ptr %i.aie, i64 %i.aby
  %i.amg = getelementptr i8, ptr %i.amf, i64 42
  %i.amh = load i8, ptr %i.amg, align 2, !tbaa !29
  %i.ami = sext i8 %i.amh to i32
  %i.amj = mul nsw i32 %i.ami, 17
  %i.amk = mul nsw i32 %i.alq, 27
  %i.aml = add nsw i32 %i.amk, 16
  %i.amm = add nsw i32 %i.aml, %i.amj
  %i.amn = ashr i32 %i.amm, 5
  %i.amo = tail call i32 @llvm.smax.i32(i32 %i.amn, i32 -128)
  %.0.i213.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.amo, i32 127)
  %i.amp = mul nsw i32 %.0.i215.i.i.1, %i.aig
  %i.amq = mul nsw i32 %.0.i213.i.i.1, %i.aii
  %i.amr = add i32 %i.amp, 16
  %i.ams = add i32 %i.amr, %i.amq
  %i.amt = ashr i32 %i.ams, 5
  %i.amu = tail call i32 @llvm.smax.i32(i32 %i.amt, i32 -128)
  %.0.i211.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.amu, i32 127)
  %gep285.i.i.1 = getelementptr inbounds nuw i8, ptr %gep293.i.i, i64 1
  %gep287.i.i.1 = getelementptr inbounds nuw i8, ptr %gep295.i.i, i64 1
  %i.amv = load i8, ptr %gep285.i.i.1, align 1, !tbaa !29 ; 2 uses
  %i.amw = zext i8 %i.amv to i64
  %i.amx = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.amw
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !29
  %i.amz = zext i8 %i.amy to i32
  %i.ana = mul nsw i32 %.0.i211.i.i.1, %i.amz
  %i.anb = load i32, ptr %i.uk, align 4, !tbaa !69 ; 2 uses
  %i.anc = shl nuw i32 1, %i.anb
  %i.and = ashr i32 %i.anc, 1
  %i.ane = add nsw i32 %i.ana, %i.and
  %i.anf = ashr i32 %i.ane, %i.anb
  %i.ang = zext i8 %i.amv to i32
  %i.anh = add nsw i32 %i.anf, %i.ang             ; 2 uses
  %i.ani = icmp slt i32 %i.anh, %.209.i.i
  %..i.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.anh, i32 %..i.i)
  %.0.i.i90.i.1 = select i1 %i.ani, i32 %.209.i.i, i32 %..i.i.i.1
  %i.anj = trunc i32 %.0.i.i90.i.1 to i8
  store i8 %i.anj, ptr %gep287.i.i.1, align 1, !tbaa !29
  br label %._crit_edge275.i.i

fgy_32x32xn_c_8.exit.i:                           ; preds = %._crit_edge297.i.i, %.preheader232.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ai

bb.ai:                                            ; preds = %fgy_32x32xn_c_8.exit.i, %bb.ac
  %i.ank = load i32, ptr %i.ai, align 4, !tbaa !31
  %.not102.i.i = icmp eq i32 %i.ank, 0
  br i1 %.not102.i.i, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
end_hunk_0
begin_hunk_1_@apply_film_grain_16:bb.a
bb.k:                                             ; preds = %bb.j
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !48
  %.not47 = icmp eq i32 %i.ga, 0
  br i1 %.not47, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 60
  call fastcc void @generate_scaling_16(ptr noundef nonnull %i.gb, i32 noundef %i.fy, ptr noundef %i.d, i32 noundef %3)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.gd = getelementptr inbounds nuw i8, ptr %i.d, i64 4096
  call fastcc void @generate_scaling_16(ptr noundef nonnull %i.gc, i32 noundef %i.fp, ptr noundef %i.gd, i32 noundef %3)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %.not44, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.gf = getelementptr inbounds nuw i8, ptr %i.d, i64 8192
  call fastcc void @generate_scaling_16(ptr noundef nonnull %i.ge, i32 noundef %i.fu, ptr noundef %i.gf, i32 noundef %3)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.gg = icmp sgt i32 %i.aa, 0
  br i1 %i.gg, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.q
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.go = shl nuw nsw i32 16, %i.ad
  %i.gp = shl nuw nsw i32 235, %i.ad
  %notmask.i = shl nsw i32 -1, %3
  %i.gq = xor i32 %notmask.i, -1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 140 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 12136
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.c, i64 24272
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.d, i64 4096
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 12136
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.d, i64 8192
  %i.hl = getelementptr inbounds nuw i8, ptr %i.c, i64 24272
  %broadcast.splatinsert18 = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat19 = shufflevector <8 x i32> %broadcast.splatinsert18, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert20 = insertelement <8 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat21 = shufflevector <8 x i32> %broadcast.splatinsert20, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %bb.r

._crit_edge:                                      ; preds = %apply_grain_row_16.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret void

bb.r:                                             ; preds = %.lr.ph69, %apply_grain_row_16.exit
  %.067 = phi i32 [ 0, %.lr.ph69 ], [ %i.acq, %apply_grain_row_16.exit ] ; 9 uses
  %i.hm = load i32, ptr %i.gh, align 8, !tbaa !32 ; 7 uses
  %i.hn = add nsw i32 %i.hm, %i.ab
  %i.ho = ashr i32 %i.hn, %i.ab
  %i.hp = load i32, ptr %i.gi, align 4, !tbaa !60
  %i.hq = icmp eq i32 %i.hp, 0
  %i.hr = zext i1 %i.hq to i32                    ; 4 uses
  %i.hs = load i32, ptr %i.h, align 4, !tbaa !33
  %i.ht = shl nuw nsw i32 %.067, 5                ; 4 uses
  %i.hu = sub nsw i32 %i.hs, %i.ht                ; 3 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.hu, i32 32) ; 2 uses
  %i.hv = add nsw i32 %spec.select.i, %i.ac
  %i.hw = ashr i32 %i.hv, %i.ac                   ; 8 uses
  %i.hx = load i32, ptr %i.gj, align 4, !tbaa !31
  %i.hy = mul nsw i32 %i.hx, %i.ht
  %i.hz = ashr i32 %i.hy, %i.ac
  %i.ia = sext i32 %i.hz to i64                   ; 8 uses
  %i.ib = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.ic = ptrtoaddr ptr %i.ib to i64
  %i.id = load i32, ptr %i.gk, align 8, !tbaa !31 ; 4 uses
  %i.ie = mul i32 %i.id, %i.ht
  %i.if = sext i32 %i.ie to i64                   ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %i.ib, i64 %i.if ; 7 uses
  %i.ih = load i32, ptr %i.y, align 8, !tbaa !49
  %.not.i = icmp eq i32 %i.ih, 0
  br i1 %.not.i, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ii = load i32, ptr %i.gl, align 8, !tbaa !31 ; 2 uses
  %i.ij = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.ik = ptrtoaddr ptr %i.ij to i64
  %i.il = load i32, ptr %i.gm, align 8, !tbaa !61
  %i.im = icmp ne i32 %i.il, 0                    ; 2 uses
  %i.in = icmp ne i32 %.067, 0
  %i.io = and i1 %i.in, %i.im                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ip = load i32, ptr %i.gn, align 4, !tbaa !62
  %i.iq = load i64, ptr %i.n, align 8, !tbaa !34
  %i.ir = trunc i64 %i.iq to i32                  ; 2 uses
  %wide.trip.count.i = select i1 %i.io, i64 2, i64 1 ; 6 uses
  br i1 %i.io, label %vector.ph56, label %scalar.ph54

vector.ph56:                                      ; preds = %bb.s
  %n.vec57 = and i64 %wide.trip.count.i, 2
  %broadcast.splatinsert58 = insertelement <2 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat59 = shufflevector <2 x i32> %broadcast.splatinsert58, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert60 = insertelement <2 x i32> poison, i32 %.067, i64 0
  %broadcast.splat61 = shufflevector <2 x i32> %broadcast.splatinsert60, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph56
  %index63 = phi i64 [ 0, %vector.ph56 ], [ %index.next64, %vector.body62 ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph56 ], [ %vec.ind.next, %vector.body62 ] ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index63
  %i.it = sub <2 x i32> %broadcast.splat61, %vec.ind ; 2 uses
  %i.iu = mul <2 x i32> %i.it, splat (i32 9472)
  %i.iv = add <2 x i32> %i.iu, splat (i32 45568)
  %i.iw = and <2 x i32> %i.iv, splat (i32 65280)
  %i.ix = mul <2 x i32> %i.it, splat (i32 173)
  %i.iy = add <2 x i32> %i.ix, splat (i32 105)
  %i.iz = and <2 x i32> %i.iy, splat (i32 255)
  %i.ja = or disjoint <2 x i32> %i.iz, %i.iw
  %i.jb = xor <2 x i32> %i.ja, %broadcast.splat59
  store <2 x i32> %i.jb, ptr %i.is, align 4, !tbaa !31
  %index.next64 = add nuw i64 %index63, 2         ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.jc = icmp eq i64 %index.next64, %n.vec57
  br i1 %i.jc, label %.preheader248.i, label %vector.body62, !llvm.loop !92

.preheader248.i:                                  ; preds = %scalar.ph54, %vector.body62
  %i.jd = mul i32 %i.ii, %i.ht
  %i.je = sext i32 %i.jd to i64                   ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %i.ij, i64 %i.je
  %i.jg = sext i32 %i.ii to i64                   ; 4 uses
  %i.jh = sext i32 %i.hm to i64
  %.not.i53 = icmp eq i32 %i.ip, 0                ; 2 uses
  %.0216.i = select i1 %.not.i53, i32 %i.gq, i32 %i.gp ; 7 uses
  %.0214.i = select i1 %.not.i53, i32 0, i32 %i.go ; 13 uses
  %.not329.i = icmp eq i32 %i.hm, 0
  br i1 %.not329.i, label %fgy_32x32xn_c_16.exit, label %.lr.ph327.i

.lr.ph327.i:                                      ; preds = %.preheader248.i
  %i.ji = tail call i32 @llvm.smin.i32(i32 %i.hu, i32 2)
  %i.jj = select i1 %i.io, i32 %i.ji, i32 0       ; 4 uses
  %i.jk = icmp sgt i32 %i.hu, %i.jj
  %i.jl = icmp sgt i32 %i.jj, 0
  %i.jm = sext i32 %i.jj to i64
  %wide.trip.count354.i = sext i32 %spec.select.i to i64
  %wide.trip.count373.i = zext nneg i32 %i.jj to i64
  %i.jn = add i64 %i.ik, %i.je
  %i.jo = add i64 %i.ic, %i.if
  %n.vec46 = and i64 %wide.trip.count.i, 2
  %n.vec35 = and i64 %wide.trip.count.i, 2
  %i.jp = sub i64 %i.jo, %i.jn
  %diff.check = icmp ugt i64 %i.jp, -16
  %broadcast.splatinsert22 = insertelement <8 x i32> poison, i32 %.0214.i, i64 0
  %broadcast.splat23 = shufflevector <8 x i32> %broadcast.splatinsert22, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert24 = insertelement <8 x i32> poison, i32 %.0216.i, i64 0
  %broadcast.splat25 = shufflevector <8 x i32> %broadcast.splatinsert24, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %bb.t

scalar.ph54:                                      ; preds = %bb.s, %scalar.ph54
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i51, %scalar.ph54 ], [ 0, %bb.s ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i50
  %i.jr = trunc i64 %indvars.iv.i50 to i32
  %i.js = sub i32 %.067, %i.jr                    ; 2 uses
  %i.jt = mul i32 %i.js, 9472
  %i.ju = add i32 %i.jt, 45568
  %i.jv = and i32 %i.ju, 65280
  %i.jw = mul i32 %i.js, 173
  %i.jx = add i32 %i.jw, 105
  %i.jy = and i32 %i.jx, 255
  %i.jz = or disjoint i32 %i.jy, %i.jv
  %i.ka = xor i32 %i.jz, %i.ir
  store i32 %i.ka, ptr %i.jq, align 4, !tbaa !31
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 1 ; 2 uses
  %exitcond.not.i52 = icmp eq i64 %indvars.iv.next.i51, %wide.trip.count.i
  br i1 %exitcond.not.i52, label %.preheader248.i, label %scalar.ph54, !llvm.loop !93

bb.t:                                             ; preds = %._crit_edge313.i, %.lr.ph327.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge313.i ], [ 0, %.lr.ph327.i ] ; 2 uses
  %indvars.iv375.i = phi i64 [ %indvars.iv.next376.i, %._crit_edge313.i ], [ 0, %.lr.ph327.i ] ; 5 uses
  %i.kb = shl i32 %indvar, 5
  %i.kc = sub i32 %i.hm, %i.kb
  %i.kd = tail call i32 @llvm.umin.i32(i32 %i.kc, i32 32)
  %umin = zext nneg i32 %i.kd to i64
  %4 = trunc i64 %indvars.iv375.i to i32
  %i.ke = sub i32 %i.hm, %4                       ; 4 uses
  %i.kf = tail call i32 @llvm.umin.i32(i32 %i.ke, i32 32) ; 2 uses
  %i.kg = icmp ne i64 %indvars.iv375.i, 0
  %or.cond3.i = and i1 %i.im, %i.kg               ; 2 uses
  %i.kh = tail call i32 @llvm.umin.i32(i32 %i.ke, i32 2)
  %i.ki = select i1 %or.cond3.i, i32 %i.kh, i32 0 ; 9 uses
  br i1 %or.cond3.i, label %.preheader247.i.preheader, label %.loopexit.i

.preheader247.i.preheader:                        ; preds = %bb.t
  br i1 %i.io, label %vector.body47, label %.preheader247.i

vector.body47:                                    ; preds = %.preheader247.i.preheader, %vector.body47
  %index48 = phi i64 [ %index.next50, %vector.body47 ], [ 0, %.preheader247.i.preheader ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index48
  %wide.load49 = load <2 x i32>, ptr %i.kj, align 8, !tbaa !31
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %index48
  store <2 x i32> %wide.load49, ptr %i.kk, align 8, !tbaa !31
  %index.next50 = add nuw i64 %index48, 2         ; 2 uses
  %i.kl = icmp eq i64 %index.next50, %n.vec46
  br i1 %i.kl, label %.loopexit.i, label %vector.body47, !llvm.loop !94

.preheader247.i:                                  ; preds = %.preheader247.i.preheader, %.preheader247.i
  %indvars.iv333.i = phi i64 [ %indvars.iv.next334.i, %.preheader247.i ], [ 0, %.preheader247.i.preheader ] ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv333.i
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !31
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv333.i
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !31
  %indvars.iv.next334.i = add nuw nsw i64 %indvars.iv333.i, 1 ; 2 uses
  %exitcond337.not.i = icmp eq i64 %indvars.iv.next334.i, %wide.trip.count.i
  br i1 %exitcond337.not.i, label %.loopexit.i, label %.preheader247.i, !llvm.loop !95

.loopexit.i:                                      ; preds = %.preheader247.i, %vector.body47, %bb.t
  br i1 %i.io, label %vector.body36, label %scalar.ph32

vector.body36:                                    ; preds = %.loopexit.i, %vector.body36
  %index37 = phi i64 [ %index.next39, %vector.body36 ], [ 0, %.loopexit.i ] ; 3 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index37 ; 2 uses
  %wide.load38 = load <2 x i32>, ptr %i.kp, align 4, !tbaa !31 ; 4 uses
  %i.kq = ashr <2 x i32> %wide.load38, splat (i32 1) ; 2 uses
  %i.kr = lshr <2 x i32> %wide.load38, splat (i32 3)
  %i.ks = lshr <2 x i32> %wide.load38, splat (i32 12)
  %i.kt = xor <2 x i32> %i.ks, %i.kr
  %i.ku = xor <2 x i32> %i.kt, %wide.load38
  %i.kv = xor <2 x i32> %i.ku, %i.kq
  %i.kw = shl <2 x i32> %i.kv, splat (i32 15)
  %i.kx = and <2 x i32> %i.kw, splat (i32 32768)
  %i.ky = or <2 x i32> %i.kx, %i.kq               ; 2 uses
  store <2 x i32> %i.ky, ptr %i.kp, align 4, !tbaa !31
  %i.kz = lshr <2 x i32> %i.ky, splat (i32 8)
  %i.la = and <2 x i32> %i.kz, splat (i32 255)
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index37
  store <2 x i32> %i.la, ptr %i.lb, align 8, !tbaa !31
  %index.next39 = add nuw i64 %index37, 2         ; 2 uses
  %i.lc = icmp eq i64 %index.next39, %n.vec35
  br i1 %i.lc, label %.preheader246.i, label %vector.body36, !llvm.loop !96

.preheader246.i:                                  ; preds = %scalar.ph32, %vector.body36
  %invariant.gep265.i = getelementptr [2 x i8], ptr %i.ig, i64 %indvars.iv375.i ; 4 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.jf, i64 %indvars.iv375.i ; 4 uses
  br i1 %i.jk, label %.preheader244.lr.ph.i, label %.preheader245.i

.preheader244.lr.ph.i:                            ; preds = %.preheader246.i
  %i.ld = icmp ugt i32 %i.ke, %i.ki
  %i.le = load i32, ptr %i.b, align 16            ; 2 uses
  %i.lf = ashr i32 %i.le, 3
  %i.lg = and i32 %i.lf, -2                       ; 2 uses
  %i.lh = shl i32 %i.le, 1
  %i.li = and i32 %i.lh, 30                       ; 2 uses
  %invariant.op273.i = add nuw nsw i32 %i.li, 9
  %invariant.op.i = add nsw i32 %i.lg, 9          ; 2 uses
  %.not330.i = icmp eq i32 %i.ki, 0
  %invariant.op275.i = add nuw nsw i32 %i.li, 6
  %i.lj = load i32, ptr %i.gr, align 8            ; 2 uses
  %i.lk = ashr i32 %i.lj, 3
  %i.ll = and i32 %i.lk, -2                       ; 2 uses
  %i.lm = shl i32 %i.lj, 1
  %i.ln = and i32 %i.lm, 30
  %invariant.op277.i = add nuw nsw i32 %i.ln, 6
  %i.lo = zext nneg i32 %i.ki to i64
  %i.lp = zext nneg i32 %i.kf to i64
  %i.lq = sext i32 %invariant.op.i to i64
  %i.lr = sext i32 %i.ll to i64
  %exitcond350.not.i = icmp eq i32 %i.ki, 1
  %i.ls = sext i32 %i.lg to i64
  %i.lt = sext i32 %i.ll to i64
  br label %.preheader244.i

scalar.ph32:                                      ; preds = %.loopexit.i, %scalar.ph32
  %indvars.iv338.i = phi i64 [ %indvars.iv.next339.i, %scalar.ph32 ], [ 0, %.loopexit.i ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv338.i ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !31 ; 4 uses
  %i.lw = ashr i32 %i.lv, 1                       ; 2 uses
  %i.lx = lshr i32 %i.lv, 3
  %i.ly = lshr i32 %i.lv, 12
  %i.lz = xor i32 %i.ly, %i.lx
  %i.ma = xor i32 %i.lz, %i.lv
  %i.mb = xor i32 %i.ma, %i.lw
  %i.mc = shl i32 %i.mb, 15
  %i.md = and i32 %i.mc, 32768
  %i.me = or i32 %i.md, %i.lw                     ; 2 uses
  store i32 %i.me, ptr %i.lu, align 4, !tbaa !31
  %i.mf = lshr i32 %i.me, 8
  %i.mg = and i32 %i.mf, 255
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv338.i
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !31
  %indvars.iv.next339.i = add nuw nsw i64 %indvars.iv338.i, 1 ; 2 uses
  %exitcond342.not.i = icmp eq i64 %indvars.iv.next339.i, %wide.trip.count.i
  br i1 %exitcond342.not.i, label %.preheader246.i, label %scalar.ph32, !llvm.loop !97

.preheader245.i:                                  ; preds = %._crit_edge.i, %.preheader246.i
  br i1 %i.jl, label %.preheader242.lr.ph.i, label %._crit_edge313.i

.preheader242.lr.ph.i:                            ; preds = %.preheader245.i
  %i.mi = icmp ugt i32 %i.ke, %i.ki
  %i.mj = load i32, ptr %i.b, align 16            ; 2 uses
  %i.mk = ashr i32 %i.mj, 3
  %i.ml = and i32 %i.mk, -2                       ; 4 uses
  %i.mm = shl i32 %i.mj, 1
  %i.mn = and i32 %i.mm, 30                       ; 2 uses
  %invariant.op314.i = add nuw nsw i32 %i.mn, 9
  %invariant.op281.i = add nsw i32 %i.ml, 6       ; 2 uses
  %i.mo = load i32, ptr %i.gt, align 4            ; 2 uses
  %i.mp = ashr i32 %i.mo, 3
  %i.mq = and i32 %i.mp, -2                       ; 4 uses
  %i.mr = shl i32 %i.mo, 1
  %i.ms = and i32 %i.mr, 30                       ; 2 uses
  %invariant.op316.i = add nuw nsw i32 %i.ms, 41
  %invariant.op283.i = add nsw i32 %i.mq, 6       ; 2 uses
  %.not331.i = icmp eq i32 %i.ki, 0
  %i.mt = load i32, ptr %i.gu, align 4            ; 2 uses
  %i.mu = ashr i32 %i.mt, 3
  %i.mv = and i32 %i.mu, -2                       ; 2 uses
  %i.mw = shl i32 %i.mt, 1
  %i.mx = and i32 %i.mw, 30
  %i.my = load i32, ptr %i.gr, align 8            ; 2 uses
  %i.mz = ashr i32 %i.my, 3
  %i.na = and i32 %i.mz, -2                       ; 2 uses
  %i.nb = shl i32 %i.my, 1
  %i.nc = and i32 %i.nb, 30
  %i.nd = zext nneg i32 %i.ki to i64              ; 7 uses
  %i.ne = zext nneg i32 %i.kf to i64              ; 2 uses
  %i.nf = zext nneg i32 %i.mn to i64
  %invariant.gep380.i.a = getelementptr inbounds nuw [164 x i8], ptr %i.c, i64 %i.nf
  %i.ng = zext nneg i32 %i.ms to i64
  %invariant.gep382.i.a = getelementptr inbounds nuw [164 x i8], ptr %i.c, i64 %i.ng
  %i.nh = zext nneg i32 %i.mx to i64
  %invariant.gep384.i.a = getelementptr inbounds nuw [164 x i8], ptr %i.c, i64 %i.nh
  %i.ni = zext nneg i32 %i.nc to i64
  %invariant.gep386.i = getelementptr inbounds nuw [164 x i8], ptr %i.c, i64 %i.ni
  %i.nj = add nuw nsw i64 %i.nd, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %umin, i64 %i.nj)
  %i.nk = xor i64 %i.nd, -1
  %i.nl = add nsw i64 %umax, %i.nk                ; 2 uses
  %i.nm = add nuw nsw i32 %i.ki, 9                ; 2 uses
  %i.nn = add nsw i32 %i.nm, %i.ml                ; 2 uses
  %i.no = add nsw i32 %i.nm, %i.mq                ; 2 uses
  %i.np = add nuw nsw i64 %i.nd, 1
  %i.nq = tail call i64 @llvm.umax.i64(i64 %i.ne, i64 %i.np)
  %i.nr = sub nsw i64 %i.nq, %i.nd                ; 3 uses
  %min.iters.check = icmp ult i64 %i.nr, 24
  %i.ns = trunc nsw i64 %i.nl to i32              ; 2 uses
  %i.nt = add i32 %i.nn, %i.ns
  %i.nu = icmp slt i32 %i.nt, %i.nn
  %i.nv = add i32 %i.no, %i.ns
  %i.nw = icmp slt i32 %i.nv, %i.no
  %i.nx = icmp ugt i64 %i.nl, 4294967295
  %i.ny = or i1 %i.nw, %i.nx
  %i.nz = or i1 %i.nu, %i.ny
  %or.cond68 = select i1 %i.nz, i1 true, i1 %diff.check
  %n.vec = and i64 %i.nr, -8                      ; 3 uses
  %i.oa = or disjoint i64 %n.vec, %i.nd
  %cmp.n = icmp eq i64 %i.nr, %n.vec
  %i.ob = sext i32 %i.ml to i64
  %i.oc = sext i32 %i.mq to i64
  %i.od = sext i32 %i.mv to i64
  %i.oe = sext i32 %i.na to i64
  %exitcond363.not.i = icmp eq i32 %i.ki, 1
  %i.of = sext i32 %i.ml to i64
  %i.og = sext i32 %i.mq to i64
  %i.oh = sext i32 %i.mv to i64
  %i.oi = sext i32 %i.na to i64
  br label %.preheader242.i

.preheader244.i:                                  ; preds = %._crit_edge.i, %.preheader244.lr.ph.i
  %indvars.iv351.i = phi i64 [ %i.jm, %.preheader244.lr.ph.i ], [ %indvars.iv.next352.i, %._crit_edge.i ] ; 5 uses
  br i1 %i.ld, label %.lr.ph.i, label %.preheader243.i

.lr.ph.i:                                         ; preds = %.preheader244.i
  %i.oj = trunc nsw i64 %indvars.iv351.i to i32
  %.reass274.i = add i32 %invariant.op273.i, %i.oj
  %i.ok = sext i32 %.reass274.i to i64
  %i.ol = getelementptr inbounds [164 x i8], ptr %i.c, i64 %i.ok
  %i.om = mul nsw i64 %indvars.iv351.i, %i.jg     ; 2 uses
  %gep266.i = getelementptr i8, ptr %invariant.gep265.i, i64 %i.om
  %gep267.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.om
  %i.on = load i32, ptr %i.gs, align 4, !tbaa !69 ; 2 uses
  %i.oo = shl nuw i32 1, %i.on
  %i.op = ashr i32 %i.oo, 1
  br label %bb.u

.preheader243.i:                                  ; preds = %bb.u, %.preheader244.i
  br i1 %.not330.i, label %._crit_edge.i, label %.lr.ph256.i

end_hunk_1
begin_hunk_2_@apply_film_grain_16:bb.a
  %.0.i237.i = select i1 %i.px, i32 %.0214.i, i32 %..i236.i
  %i.py = trunc nsw i32 %.0.i237.i to i16
  store i16 %i.py, ptr %gep271.i, align 2, !tbaa !45
  br i1 %exitcond350.not.i, label %._crit_edge.i, label %bb.v

bb.u:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv343.i = phi i64 [ %i.lo, %.lr.ph.i ], [ %indvars.iv.next344.i, %bb.u ] ; 4 uses
  %i.pz = trunc nuw nsw i64 %indvars.iv343.i to i32
  %.reass.i = add i32 %invariant.op.i, %i.pz
  %i.qa = sext i32 %.reass.i to i64
  %i.qb = getelementptr inbounds [2 x i8], ptr %i.ol, i64 %i.qa
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !45
  %i.qd = sext i16 %i.qc to i32
  %gep.i56 = getelementptr inbounds nuw [2 x i8], ptr %gep266.i, i64 %indvars.iv343.i
  %gep254.i = getelementptr inbounds nuw [2 x i8], ptr %gep267.i, i64 %indvars.iv343.i
  %i.qe = load i16, ptr %gep.i56, align 2, !tbaa !45 ; 2 uses
  %i.qf = zext i16 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !29
  %i.qi = zext i8 %i.qh to i32
  %i.qj = mul nsw i32 %i.qi, %i.qd
  %i.qk = add nsw i32 %i.qj, %i.op
  %i.ql = ashr i32 %i.qk, %i.on
  %i.qm = zext i16 %i.qe to i32
  %i.qn = add nsw i32 %i.ql, %i.qm                ; 2 uses
  %i.qo = icmp slt i32 %i.qn, %.0214.i
  %..i240.i = tail call i32 @llvm.smin.i32(i32 %i.qn, i32 %.0216.i)
  %.0.i241.i = select i1 %i.qo, i32 %.0214.i, i32 %..i240.i
  %i.qp = trunc nsw i32 %.0.i241.i to i16
  store i16 %i.qp, ptr %gep254.i, align 2, !tbaa !45
  %indvars.iv.next344.i = add nuw nsw i64 %indvars.iv343.i, 1 ; 2 uses
  %i.qq = icmp samesign ult i64 %indvars.iv.next344.i, %i.lp
  br i1 %i.qq, label %bb.u, label %.preheader243.i, !llvm.loop !98

._crit_edge.i:                                    ; preds = %bb.v, %.lr.ph256.i, %.preheader243.i
  %indvars.iv.next352.i = add nsw i64 %indvars.iv351.i, 1 ; 2 uses
  %exitcond355.not.i = icmp eq i64 %indvars.iv.next352.i, %wide.trip.count354.i
  br i1 %exitcond355.not.i, label %.preheader245.i, label %.preheader244.i, !llvm.loop !99

bb.v:                                             ; preds = %.lr.ph256.i
  %i.qr = getelementptr [2 x i8], ptr %i.ot, i64 %i.ls
  %i.qs = getelementptr i8, ptr %i.qr, i64 20
  %i.qt = load i16, ptr %i.qs, align 4, !tbaa !45
  %i.qu = sext i16 %i.qt to i32
  %i.qv = getelementptr [2 x i8], ptr %i.ov, i64 %i.lt
  %i.qw = getelementptr i8, ptr %i.qv, i64 84
  %i.qx = load i16, ptr %i.qw, align 4, !tbaa !45
  %i.qy = sext i16 %i.qx to i32
  %i.qz = mul nsw i32 %i.qy, 17
  %i.ra = mul nsw i32 %i.qu, 27
  %i.rb = add nsw i32 %i.qz, 16
  %i.rc = add nsw i32 %i.rb, %i.ra
  %i.rd = ashr i32 %i.rc, 5                       ; 2 uses
  %i.re = icmp slt i32 %i.rd, %i.af
  %..i238.i.1 = tail call i32 @llvm.smin.i32(i32 %i.rd, i32 %i.ag)
  %.0.i239.i.1 = select i1 %i.re, i32 %i.af, i32 %..i238.i.1
  %gep262.i.1 = getelementptr inbounds nuw i8, ptr %gep269.i, i64 2
  %gep264.i.1 = getelementptr inbounds nuw i8, ptr %gep271.i, i64 2
  %i.rf = load i16, ptr %gep262.i.1, align 2, !tbaa !45 ; 2 uses
  %i.rg = zext i16 %i.rf to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.rg
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !29
  %i.rj = zext i8 %i.ri to i32
  %i.rk = mul nsw i32 %.0.i239.i.1, %i.rj
  %i.rl = add nsw i32 %i.rk, %i.oz
  %i.rm = ashr i32 %i.rl, %i.ox
  %i.rn = zext i16 %i.rf to i32
  %i.ro = add nsw i32 %i.rm, %i.rn                ; 2 uses
  %i.rp = icmp slt i32 %i.ro, %.0214.i
  %..i236.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ro, i32 %.0216.i)
  %.0.i237.i.1 = select i1 %i.rp, i32 %.0214.i, i32 %..i236.i.1
  %i.rq = trunc nsw i32 %.0.i237.i.1 to i16
  store i16 %i.rq, ptr %gep264.i.1, align 2, !tbaa !45
  br label %._crit_edge.i

.preheader242.i:                                  ; preds = %._crit_edge291.i, %.preheader242.lr.ph.i
  %indvars.iv364.i = phi i64 [ 0, %.preheader242.lr.ph.i ], [ %indvars.iv.next365.i, %._crit_edge291.i ] ; 8 uses
  br i1 %i.mi, label %.lr.ph280.i, label %.preheader.i

.lr.ph280.i:                                      ; preds = %.preheader242.i
  %i.rr = trunc i64 %indvars.iv364.i to i32       ; 2 uses
  %i.rs = add i32 %invariant.op314.i, %i.rr
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [164 x i8], ptr %i.c, i64 %i.rt ; 2 uses
  %i.rv = add i32 %invariant.op316.i, %i.rr
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds [164 x i8], ptr %i.c, i64 %i.rw ; 2 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr @fgy_32x32xn_c_16.w, i64 %indvars.iv364.i ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 8, !tbaa !31 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 4
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !31 ; 2 uses
  %i.sc = mul nsw i64 %indvars.iv364.i, %i.jg     ; 2 uses
  %gep305.i = getelementptr i8, ptr %invariant.gep265.i, i64 %i.sc ; 2 uses
  %gep307.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.sc ; 2 uses
  %i.sd = load i32, ptr %i.gs, align 4, !tbaa !69 ; 3 uses
  %i.se = shl nuw i32 1, %i.sd
  %i.sf = ashr i32 %i.se, 1                       ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %or.cond68
  br i1 %brmerge, label %scalar.ph8.preheader, label %vector.ph9

vector.ph9:                                       ; preds = %.lr.ph280.i
  %broadcast.splatinsert10 = insertelement <8 x i32> poison, i32 %i.rz, i64 0
  %broadcast.splat11 = shufflevector <8 x i32> %broadcast.splatinsert10, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert12 = insertelement <8 x i32> poison, i32 %i.sb, i64 0
  %broadcast.splat13 = shufflevector <8 x i32> %broadcast.splatinsert12, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <8 x i32> poison, i32 %i.sd, i64 0
  %broadcast.splat15 = shufflevector <8 x i32> %broadcast.splatinsert14, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert16 = insertelement <8 x i32> poison, i32 %i.sf, i64 0
  %broadcast.splat17 = shufflevector <8 x i32> %broadcast.splatinsert16, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph9
  %index27 = phi i64 [ 0, %vector.ph9 ], [ %index.next30, %vector.body26 ] ; 2 uses
  %i.sg = or disjoint i64 %index27, %i.nd         ; 3 uses
  %i.sh = trunc i64 %i.sg to i32
  %i.si = add nuw nsw i32 %i.sh, 3                ; 2 uses
  %i.sj = add i32 %i.si, %invariant.op281.i
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr inbounds [2 x i8], ptr %i.ru, i64 %i.sk
  %wide.load28 = load <8 x i16>, ptr %i.sl, align 2, !tbaa !45
  %i.sm = sext <8 x i16> %wide.load28 to <8 x i32>
  %i.sn = add i32 %i.si, %invariant.op283.i
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds [2 x i8], ptr %i.rx, i64 %i.so
  %wide.load29 = load <8 x i16>, ptr %i.sp, align 2, !tbaa !45
  %i.sq = sext <8 x i16> %wide.load29 to <8 x i32>
  %i.sr = mul nsw <8 x i32> %broadcast.splat11, %i.sq
  %i.ss = mul nsw <8 x i32> %broadcast.splat13, %i.sm
  %i.st = add <8 x i32> %i.ss, splat (i32 16)
  %i.su = add <8 x i32> %i.st, %i.sr
  %i.sv = ashr <8 x i32> %i.su, splat (i32 5)     ; 2 uses
  %i.sw = icmp slt <8 x i32> %i.sv, %broadcast.splat19
  %i.sx = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.sv, <8 x i32> %broadcast.splat21)
  %i.sy = select <8 x i1> %i.sw, <8 x i32> %broadcast.splat19, <8 x i32> %i.sx
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %gep305.i, i64 %i.sg
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %gep307.i, i64 %i.sg
  %i.tb = load <8 x i16>, ptr %i.sz, align 2, !tbaa !45 ; 9 uses
  %i.tc = extractelement <8 x i16> %i.tb, i64 0
  %i.td = zext i16 %i.tc to i64
  %i.te = extractelement <8 x i16> %i.tb, i64 1
  %i.tf = zext i16 %i.te to i64
  %i.tg = extractelement <8 x i16> %i.tb, i64 2
  %i.th = zext i16 %i.tg to i64
  %i.ti = extractelement <8 x i16> %i.tb, i64 3
  %i.tj = zext i16 %i.ti to i64
  %i.tk = extractelement <8 x i16> %i.tb, i64 4
  %i.tl = zext i16 %i.tk to i64
  %i.tm = extractelement <8 x i16> %i.tb, i64 5
  %i.tn = zext i16 %i.tm to i64
  %i.to = extractelement <8 x i16> %i.tb, i64 6
  %i.tp = zext i16 %i.to to i64
  %i.tq = extractelement <8 x i16> %i.tb, i64 7
  %i.tr = zext i16 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.td
  %i.tt = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.tf
  %i.tu = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.th
  %i.tv = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.tj
  %i.tw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.tl
  %i.tx = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.tn
  %i.ty = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.tp
  %i.tz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.tr
  %i.ua = load i8, ptr %i.ts, align 1, !tbaa !29
  %i.ub = load i8, ptr %i.tt, align 1, !tbaa !29
  %i.uc = load i8, ptr %i.tu, align 1, !tbaa !29
  %i.ud = load i8, ptr %i.tv, align 1, !tbaa !29
  %i.ue = load i8, ptr %i.tw, align 1, !tbaa !29
  %i.uf = load i8, ptr %i.tx, align 1, !tbaa !29
  %i.ug = load i8, ptr %i.ty, align 1, !tbaa !29
  %i.uh = load i8, ptr %i.tz, align 1, !tbaa !29
  %i.ui = insertelement <8 x i8> poison, i8 %i.ua, i64 0
  %i.uj = insertelement <8 x i8> %i.ui, i8 %i.ub, i64 1
  %i.uk = insertelement <8 x i8> %i.uj, i8 %i.uc, i64 2
  %i.ul = insertelement <8 x i8> %i.uk, i8 %i.ud, i64 3
  %i.um = insertelement <8 x i8> %i.ul, i8 %i.ue, i64 4
  %i.un = insertelement <8 x i8> %i.um, i8 %i.uf, i64 5
  %i.uo = insertelement <8 x i8> %i.un, i8 %i.ug, i64 6
  %i.up = insertelement <8 x i8> %i.uo, i8 %i.uh, i64 7
  %i.uq = zext <8 x i8> %i.up to <8 x i32>
  %i.ur = mul nsw <8 x i32> %i.sy, %i.uq
  %i.us = add nsw <8 x i32> %i.ur, %broadcast.splat17
  %i.ut = ashr <8 x i32> %i.us, %broadcast.splat15
  %i.uu = zext <8 x i16> %i.tb to <8 x i32>
  %i.uv = add nsw <8 x i32> %i.ut, %i.uu          ; 2 uses
  %i.uw = icmp slt <8 x i32> %i.uv, %broadcast.splat23
  %i.ux = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.uv, <8 x i32> %broadcast.splat25)
  %i.uy = select <8 x i1> %i.uw, <8 x i32> %broadcast.splat23, <8 x i32> %i.ux
  %i.uz = trunc nsw <8 x i32> %i.uy to <8 x i16>
  store <8 x i16> %i.uz, ptr %i.ta, align 2, !tbaa !45
  %index.next30 = add nuw i64 %index27, 8         ; 2 uses
  %i.va = icmp eq i64 %index.next30, %n.vec
  br i1 %i.va, label %middle.block31, label %vector.body26, !llvm.loop !100

middle.block31:                                   ; preds = %vector.body26
  br i1 %cmp.n, label %.preheader.i, label %scalar.ph8.preheader

scalar.ph8.preheader:                             ; preds = %.lr.ph280.i, %middle.block31
  %indvars.iv356.i.ph = phi i64 [ %i.oa, %middle.block31 ], [ %i.nd, %.lr.ph280.i ]
  br label %scalar.ph8

._crit_edge313.i:                                 ; preds = %._crit_edge291.i, %.preheader245.i
  %indvars.iv.next376.i = add i64 %indvars.iv375.i, 32 ; 2 uses
  %5 = and i64 %indvars.iv.next376.i, 4294967264
  %6 = icmp ult i64 %5, %i.jh
  %indvar.next = add i32 %indvar, 1
  br i1 %6, label %bb.t, label %fgy_32x32xn_c_16.exit, !llvm.loop !101

.preheader.i:                                     ; preds = %scalar.ph8, %middle.block31, %.preheader242.i
  br i1 %.not331.i, label %._crit_edge291.i, label %.lr.ph290.i

.lr.ph290.i:                                      ; preds = %.preheader.i
  %i.vb = add nuw nsw i64 %indvars.iv364.i, 3     ; 2 uses
  %gep381.i.a = getelementptr inbounds nuw [164 x i8], ptr %invariant.gep380.i.a, i64 %i.vb
  %i.vc = getelementptr inbounds nuw i8, ptr %gep381.i.a, i64 984 ; 2 uses
  %i.vd = add nuw nsw i64 %indvars.iv364.i, 35    ; 2 uses
  %gep383.i.a = getelementptr inbounds nuw [164 x i8], ptr %invariant.gep382.i.a, i64 %i.vd
  %i.ve = getelementptr inbounds nuw i8, ptr %gep383.i.a, i64 984 ; 2 uses
  %gep385.i.a = getelementptr inbounds nuw [164 x i8], ptr %invariant.gep384.i.a, i64 %i.vd
  %i.vf = getelementptr inbounds nuw i8, ptr %gep385.i.a, i64 984 ; 2 uses
  %gep387.i = getelementptr inbounds nuw [164 x i8], ptr %invariant.gep386.i, i64 %i.vb
  %i.vg = getelementptr inbounds nuw i8, ptr %gep387.i, i64 984 ; 2 uses
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr @fgy_32x32xn_c_16.w, i64 %indvars.iv364.i ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !31 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vh, i64 4
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !31 ; 2 uses
  %i.vl = mul nsw i64 %indvars.iv364.i, %i.jg     ; 2 uses
  %gep309.i = getelementptr i8, ptr %invariant.gep265.i, i64 %i.vl ; 2 uses
  %gep311.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.vl ; 2 uses
  %i.vm = load i32, ptr %i.gs, align 4, !tbaa !69 ; 3 uses
  %i.vn = shl nuw i32 1, %i.vm
  %i.vo = ashr i32 %i.vn, 1                       ; 2 uses
  %i.vp = getelementptr [2 x i8], ptr %i.vc, i64 %i.ob
  %i.vq = getelementptr i8, ptr %i.vp, i64 18
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !45
  %i.vs = sext i16 %i.vr to i32
  %i.vt = getelementptr [2 x i8], ptr %i.ve, i64 %i.oc
  %i.vu = getelementptr i8, ptr %i.vt, i64 18
  %i.vv = load i16, ptr %i.vu, align 2, !tbaa !45
  %i.vw = sext i16 %i.vv to i32
  %i.vx = getelementptr [2 x i8], ptr %i.vf, i64 %i.od
  %i.vy = getelementptr i8, ptr %i.vx, i64 82
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !45
  %i.wa = sext i16 %i.vz to i32
  %i.wb = mul nsw i32 %i.wa, 27
  %i.wc = mul nsw i32 %i.vw, 17
  %i.wd = add nsw i32 %i.wb, 16
  %i.we = add nsw i32 %i.wd, %i.wc
  %i.wf = ashr i32 %i.we, 5                       ; 2 uses
  %i.wg = icmp slt i32 %i.wf, %i.af
  %..i230.i = tail call i32 @llvm.smin.i32(i32 %i.wf, i32 %i.ag)
  %.0.i231.i = select i1 %i.wg, i32 %i.af, i32 %..i230.i
  %i.wh = getelementptr [2 x i8], ptr %i.vg, i64 %i.oe
  %i.wi = getelementptr i8, ptr %i.wh, i64 82
  %i.wj = load i16, ptr %i.wi, align 2, !tbaa !45
  %i.wk = sext i16 %i.wj to i32
  %i.wl = mul nsw i32 %i.wk, 27
  %i.wm = mul nsw i32 %i.vs, 17
  %i.wn = add nsw i32 %i.wm, 16
  %i.wo = add nsw i32 %i.wn, %i.wl
  %i.wp = ashr i32 %i.wo, 5                       ; 2 uses
  %i.wq = icmp slt i32 %i.wp, %i.af
  %..i228.i = tail call i32 @llvm.smin.i32(i32 %i.wp, i32 %i.ag)
  %.0.i229.i = select i1 %i.wq, i32 %i.af, i32 %..i228.i
  %i.wr = mul nsw i32 %.0.i231.i, %i.vi
  %i.ws = mul nsw i32 %.0.i229.i, %i.vk
  %i.wt = add i32 %i.wr, 16
  %i.wu = add i32 %i.wt, %i.ws
  %i.wv = ashr i32 %i.wu, 5                       ; 2 uses
  %i.ww = icmp slt i32 %i.wv, %i.af
  %..i226.i = tail call i32 @llvm.smin.i32(i32 %i.wv, i32 %i.ag)
  %.0.i227.i = select i1 %i.ww, i32 %i.af, i32 %..i226.i
  %i.wx = load i16, ptr %gep309.i, align 2, !tbaa !45 ; 2 uses
  %i.wy = zext i16 %i.wx to i64
  %i.wz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.wy
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !29
  %i.xb = zext i8 %i.xa to i32
  %i.xc = mul nsw i32 %.0.i227.i, %i.xb
  %i.xd = add nsw i32 %i.xc, %i.vo
  %i.xe = ashr i32 %i.xd, %i.vm
  %i.xf = zext i16 %i.wx to i32
  %i.xg = add nsw i32 %i.xe, %i.xf                ; 2 uses
  %i.xh = icmp slt i32 %i.xg, %.0214.i
  %..i.i54 = tail call i32 @llvm.smin.i32(i32 %i.xg, i32 %.0216.i)
  %.0.i.i55 = select i1 %i.xh, i32 %.0214.i, i32 %..i.i54
  %i.xi = trunc nsw i32 %.0.i.i55 to i16
  store i16 %i.xi, ptr %gep311.i, align 2, !tbaa !45
  br i1 %exitcond363.not.i, label %._crit_edge291.i, label %bb.w

scalar.ph8:                                       ; preds = %scalar.ph8.preheader, %scalar.ph8
  %indvars.iv356.i = phi i64 [ %indvars.iv.next357.i, %scalar.ph8 ], [ %indvars.iv356.i.ph, %scalar.ph8.preheader ] ; 4 uses
  %i.xj = trunc i64 %indvars.iv356.i to i32
  %i.xk = add i32 %i.xj, 3                        ; 2 uses
  %.reass282.i = add i32 %i.xk, %invariant.op281.i
  %i.xl = sext i32 %.reass282.i to i64
  %i.xm = getelementptr inbounds [2 x i8], ptr %i.ru, i64 %i.xl
  %i.xn = load i16, ptr %i.xm, align 2, !tbaa !45
  %i.xo = sext i16 %i.xn to i32
  %.reass284.i = add i32 %i.xk, %invariant.op283.i
  %i.xp = sext i32 %.reass284.i to i64
  %i.xq = getelementptr inbounds [2 x i8], ptr %i.rx, i64 %i.xp
  %i.xr = load i16, ptr %i.xq, align 2, !tbaa !45
  %i.xs = sext i16 %i.xr to i32
  %i.xt = mul nsw i32 %i.rz, %i.xs
  %i.xu = mul nsw i32 %i.sb, %i.xo
  %i.xv = add i32 %i.xu, 16
  %i.xw = add i32 %i.xv, %i.xt
  %i.xx = ashr i32 %i.xw, 5                       ; 2 uses
  %i.xy = icmp slt i32 %i.xx, %i.af
  %..i234.i = tail call i32 @llvm.smin.i32(i32 %i.xx, i32 %i.ag)
  %.0.i235.i = select i1 %i.xy, i32 %i.af, i32 %..i234.i
  %gep286.i = getelementptr inbounds nuw [2 x i8], ptr %gep305.i, i64 %indvars.iv356.i
  %gep288.i = getelementptr inbounds nuw [2 x i8], ptr %gep307.i, i64 %indvars.iv356.i
  %i.xz = load i16, ptr %gep286.i, align 2, !tbaa !45 ; 2 uses
  %i.ya = zext i16 %i.xz to i64
  %i.yb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ya
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !29
  %i.yd = zext i8 %i.yc to i32
  %i.ye = mul nsw i32 %.0.i235.i, %i.yd
  %i.yf = add nsw i32 %i.ye, %i.sf
  %i.yg = ashr i32 %i.yf, %i.sd
  %i.yh = zext i16 %i.xz to i32
  %i.yi = add nsw i32 %i.yg, %i.yh                ; 2 uses
  %i.yj = icmp slt i32 %i.yi, %.0214.i
  %..i232.i = tail call i32 @llvm.smin.i32(i32 %i.yi, i32 %.0216.i)
  %.0.i233.i = select i1 %i.yj, i32 %.0214.i, i32 %..i232.i
  %i.yk = trunc nsw i32 %.0.i233.i to i16
  store i16 %i.yk, ptr %gep288.i, align 2, !tbaa !45
  %indvars.iv.next357.i = add nuw nsw i64 %indvars.iv356.i, 1 ; 2 uses
  %i.yl = icmp samesign ult i64 %indvars.iv.next357.i, %i.ne
  br i1 %i.yl, label %scalar.ph8, label %.preheader.i, !llvm.loop !102

._crit_edge291.i:                                 ; preds = %bb.w, %.lr.ph290.i, %.preheader.i
  %indvars.iv.next365.i = add nuw nsw i64 %indvars.iv364.i, 1 ; 2 uses
  %exitcond374.not.i = icmp eq i64 %indvars.iv.next365.i, %wide.trip.count373.i
  br i1 %exitcond374.not.i, label %._crit_edge313.i, label %.preheader242.i, !llvm.loop !103

bb.w:                                             ; preds = %.lr.ph290.i
  %i.ym = getelementptr [2 x i8], ptr %i.vc, i64 %i.of
  %i.yn = getelementptr i8, ptr %i.ym, i64 20
  %i.yo = load i16, ptr %i.yn, align 4, !tbaa !45
  %i.yp = sext i16 %i.yo to i32
  %i.yq = getelementptr [2 x i8], ptr %i.ve, i64 %i.og
  %i.yr = getelementptr i8, ptr %i.yq, i64 20
  %i.ys = load i16, ptr %i.yr, align 4, !tbaa !45
  %i.yt = sext i16 %i.ys to i32
  %i.yu = getelementptr [2 x i8], ptr %i.vf, i64 %i.oh
  %i.yv = getelementptr i8, ptr %i.yu, i64 84
  %i.yw = load i16, ptr %i.yv, align 4, !tbaa !45
  %i.yx = sext i16 %i.yw to i32
  %i.yy = mul nsw i32 %i.yx, 17
  %i.yz = mul nsw i32 %i.yt, 27
  %i.za = add nsw i32 %i.yy, 16
  %i.zb = add nsw i32 %i.za, %i.yz
  %i.zc = ashr i32 %i.zb, 5                       ; 2 uses
  %i.zd = icmp slt i32 %i.zc, %i.af
  %..i230.i.1 = tail call i32 @llvm.smin.i32(i32 %i.zc, i32 %i.ag)
  %.0.i231.i.1 = select i1 %i.zd, i32 %i.af, i32 %..i230.i.1
  %i.ze = getelementptr [2 x i8], ptr %i.vg, i64 %i.oi
  %i.zf = getelementptr i8, ptr %i.ze, i64 84
  %i.zg = load i16, ptr %i.zf, align 4, !tbaa !45
  %i.zh = sext i16 %i.zg to i32
  %i.zi = mul nsw i32 %i.zh, 17
  %i.zj = mul nsw i32 %i.yp, 27
  %i.zk = add nsw i32 %i.zj, 16
  %i.zl = add nsw i32 %i.zk, %i.zi
  %i.zm = ashr i32 %i.zl, 5                       ; 2 uses
  %i.zn = icmp slt i32 %i.zm, %i.af
  %..i228.i.1 = tail call i32 @llvm.smin.i32(i32 %i.zm, i32 %i.ag)
  %.0.i229.i.1 = select i1 %i.zn, i32 %i.af, i32 %..i228.i.1
  %i.zo = mul nsw i32 %.0.i231.i.1, %i.vi
  %i.zp = mul nsw i32 %.0.i229.i.1, %i.vk
  %i.zq = add i32 %i.zo, 16
  %i.zr = add i32 %i.zq, %i.zp
  %i.zs = ashr i32 %i.zr, 5                       ; 2 uses
  %i.zt = icmp slt i32 %i.zs, %i.af
  %..i226.i.1 = tail call i32 @llvm.smin.i32(i32 %i.zs, i32 %i.ag)
  %.0.i227.i.1 = select i1 %i.zt, i32 %i.af, i32 %..i226.i.1
  %gep301.i.1 = getelementptr inbounds nuw i8, ptr %gep309.i, i64 2
  %gep303.i.1 = getelementptr inbounds nuw i8, ptr %gep311.i, i64 2
  %i.zu = load i16, ptr %gep301.i.1, align 2, !tbaa !45 ; 2 uses
  %i.zv = zext i16 %i.zu to i64
  %i.zw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.zv
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !29
  %i.zy = zext i8 %i.zx to i32
  %i.zz = mul nsw i32 %.0.i227.i.1, %i.zy
  %i.aaa = add nsw i32 %i.zz, %i.vo
  %i.aab = ashr i32 %i.aaa, %i.vm
  %i.aac = zext i16 %i.zu to i32
  %i.aad = add nsw i32 %i.aab, %i.aac             ; 2 uses
  %i.aae = icmp slt i32 %i.aad, %.0214.i
  %..i.i54.1 = tail call i32 @llvm.smin.i32(i32 %i.aad, i32 %.0216.i)
  %.0.i.i55.1 = select i1 %i.aae, i32 %.0214.i, i32 %..i.i54.1
  %i.aaf = trunc nsw i32 %.0.i.i55.1 to i16
  store i16 %i.aaf, ptr %gep303.i.1, align 2, !tbaa !45
  br label %._crit_edge291.i

fgy_32x32xn_c_16.exit:                            ; preds = %._crit_edge313.i, %.preheader248.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.x

bb.x:                                             ; preds = %fgy_32x32xn_c_16.exit, %bb.r
  %i.aag = load i32, ptr %i.fo, align 4, !tbaa !31
  %.not105.i = icmp eq i32 %i.aag, 0              ; 2 uses
end_hunk_2
