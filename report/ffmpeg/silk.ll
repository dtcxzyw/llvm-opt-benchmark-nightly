Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/silk?download=true
inline.NumInlined: 16
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@silk_lsf2lpc:bb.a
  %i.qn = icmp eq i32 %.095145, 10
  br i1 %i.qn, label %vector.ph214, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %wide.trip.count, 24           ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <4 x i32>, ptr %i.e, align 16, !tbaa !19
  %wide.load212 = load <4 x i32>, ptr %i.qo, align 16, !tbaa !19
  %i.qp = add nsw <4 x i32> %wide.load, splat (i32 16)
  %i.qq = add nsw <4 x i32> %wide.load212, splat (i32 16)
  %i.qr = lshr <4 x i32> %i.qp, splat (i32 5)
  %i.qs = lshr <4 x i32> %i.qq, splat (i32 5)
  %i.qt = trunc <4 x i32> %i.qr to <4 x i16>
  %i.qu = trunc <4 x i32> %i.qs to <4 x i16>
  %i.qv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <4 x i16> %i.qt, ptr %i.f, align 16, !tbaa !28
  store <4 x i16> %i.qu, ptr %i.qv, align 8, !tbaa !28
  %i.qw = icmp eq i64 %n.vec, 8
  br i1 %i.qw, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.qx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.qy = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %wide.load.1 = load <4 x i32>, ptr %i.qx, align 16, !tbaa !19
  %wide.load212.1 = load <4 x i32>, ptr %i.qy, align 16, !tbaa !19
  %i.qz = add nsw <4 x i32> %wide.load.1, splat (i32 16)
  %i.ra = add nsw <4 x i32> %wide.load212.1, splat (i32 16)
  %i.rb = lshr <4 x i32> %i.qz, splat (i32 5)
  %i.rc = lshr <4 x i32> %i.ra, splat (i32 5)
  %i.rd = trunc <4 x i32> %i.rb to <4 x i16>
  %i.re = trunc <4 x i32> %i.rc to <4 x i16>
  %i.rf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.rg = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store <4 x i16> %i.rd, ptr %i.rf, align 16, !tbaa !28
  store <4 x i16> %i.re, ptr %i.rg, align 8, !tbaa !28
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.preheader131

vector.ph214:                                     ; preds = %bb.f, %bb.g
  %n.vec215 = and i64 %wide.trip.count, 24        ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load218.a = load <4 x i32>, ptr %i.e, align 16, !tbaa !19
  %wide.load219 = load <4 x i32>, ptr %i.rh, align 16, !tbaa !19
  %i.ri = add nsw <4 x i32> %wide.load218.a, splat (i32 16)
  %i.rj = add nsw <4 x i32> %wide.load219, splat (i32 16)
  %i.rk = ashr <4 x i32> %i.ri, splat (i32 5)
  %i.rl = ashr <4 x i32> %i.rj, splat (i32 5)
  %i.rm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.rk, <4 x i32> splat (i32 -32768))
  %i.rn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.rl, <4 x i32> splat (i32 -32768))
  %i.ro = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rm, <4 x i32> splat (i32 32767)) ; 2 uses
  %i.rp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rn, <4 x i32> splat (i32 32767)) ; 2 uses
  %i.rq = trunc nsw <4 x i32> %i.ro to <4 x i16>
  %i.rr = trunc nsw <4 x i32> %i.rp to <4 x i16>
  %i.rs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <4 x i16> %i.rq, ptr %i.f, align 16, !tbaa !28
  store <4 x i16> %i.rr, ptr %i.rs, align 8, !tbaa !28
  %i.rt = shl nsw <4 x i32> %i.ro, splat (i32 5)
  %i.ru = shl nsw <4 x i32> %i.rp, splat (i32 5)
  store <4 x i32> %i.rt, ptr %i.e, align 16, !tbaa !19
  store <4 x i32> %i.ru, ptr %i.rh, align 16, !tbaa !19
  %i.rv = icmp eq i64 %n.vec215, 8
  br i1 %i.rv, label %middle.block221, label %vector.body216.1

vector.body216.1:                                 ; preds = %vector.ph214
  %i.rw = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %wide.load218.1.a = load <4 x i32>, ptr %i.rw, align 16, !tbaa !19
  %wide.load219.1 = load <4 x i32>, ptr %i.rx, align 16, !tbaa !19
  %i.ry = add nsw <4 x i32> %wide.load218.1.a, splat (i32 16)
  %i.rz = add nsw <4 x i32> %wide.load219.1, splat (i32 16)
  %i.sa = ashr <4 x i32> %i.ry, splat (i32 5)
  %i.sb = ashr <4 x i32> %i.rz, splat (i32 5)
  %i.sc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.sa, <4 x i32> splat (i32 -32768))
  %i.sd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.sb, <4 x i32> splat (i32 -32768))
  %i.se = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.sc, <4 x i32> splat (i32 32767)) ; 2 uses
  %i.sf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.sd, <4 x i32> splat (i32 32767)) ; 2 uses
  %i.sg = trunc nsw <4 x i32> %i.se to <4 x i16>
  %i.sh = trunc nsw <4 x i32> %i.sf to <4 x i16>
  %i.si = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.sj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store <4 x i16> %i.sg, ptr %i.si, align 16, !tbaa !28
  store <4 x i16> %i.sh, ptr %i.sj, align 8, !tbaa !28
  %i.sk = shl nsw <4 x i32> %i.se, splat (i32 5)
  %i.sl = shl nsw <4 x i32> %i.sf, splat (i32 5)
  store <4 x i32> %i.sk, ptr %i.rw, align 16, !tbaa !19
  store <4 x i32> %i.sl, ptr %i.rx, align 16, !tbaa !19
  br label %middle.block221

middle.block221:                                  ; preds = %vector.body216.1, %vector.ph214
  %cmp.n222 = icmp eq i64 %n.vec215, %wide.trip.count
  br i1 %cmp.n222, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %middle.block221, %.preheader
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %.preheader ], [ %n.vec215, %middle.block221 ] ; 3 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv176 ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !19
  %i.so = add nsw i32 %i.sn, 16
  %i.sp = ashr i32 %i.so, 5
  %i.sq = tail call i32 @llvm.smax.i32(i32 %i.sp, i32 -32768)
  %i.sr = tail call i32 @llvm.smin.i32(i32 %i.sq, i32 32767) ; 2 uses
  %.0.i = trunc nsw i32 %i.sr to i16
  %i.ss = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv176
  store i16 %.0.i, ptr %i.ss, align 2, !tbaa !28
  %i.st = shl nsw i32 %i.sr, 5
  store i32 %i.st, ptr %i.sm, align 4, !tbaa !19
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count
  br i1 %exitcond180.not, label %.loopexit, label %.preheader, !llvm.loop !132

.preheader131:                                    ; preds = %middle.block, %.preheader131
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.preheader131 ], [ %n.vec, %middle.block ] ; 3 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv171
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !19
  %i.sw = add nsw i32 %i.sv, 16
  %i.sx = lshr i32 %i.sw, 5
  %i.sy = trunc i32 %i.sx to i16
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv171
  store i16 %i.sy, ptr %i.sz, align 2, !tbaa !28
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count
  br i1 %exitcond175.not, label %.loopexit, label %.preheader131, !llvm.loop !133

.loopexit:                                        ; preds = %.preheader131, %.preheader, %middle.block, %middle.block221
  %i.ta = getelementptr [4 x i8], ptr %i.a, i64 %wide.trip.count
  %i.tb = getelementptr i8, ptr %i.ta, i64 -4
  %i.tc = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %n.vec225 = and i64 %wide.trip.count, 24        ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.tf = icmp eq i64 %n.vec225, 8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.th = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ti = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.tj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %cmp.n233 = icmp eq i64 %n.vec225, %wide.trip.count
  %i.tk = icmp eq i64 %i.tc, 0
  br label %vector.ph224

vector.ph224:                                     ; preds = %.loopexit, %bb.l
  %.1150 = phi i32 [ 1, %.loopexit ], [ %i.xc, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %wide.load229.a = load <4 x i16>, ptr %i.f, align 16, !tbaa !28
  %wide.load230 = load <4 x i16>, ptr %i.td, align 8, !tbaa !28
  %i.tl = sext <4 x i16> %wide.load229.a to <4 x i32> ; 3 uses
  %i.tm = sext <4 x i16> %wide.load230 to <4 x i32> ; 3 uses
  %i.tn = shl nsw <4 x i32> %i.tl, splat (i32 12)
  %i.to = shl nsw <4 x i32> %i.tm, splat (i32 12)
  store <4 x i32> %i.tn, ptr %i.a, align 16, !tbaa !19
  store <4 x i32> %i.to, ptr %i.te, align 16, !tbaa !19
  br i1 %i.tf, label %middle.block232, label %vector.body226.1

vector.body226.1:                                 ; preds = %vector.ph224
  %wide.load229.1.a = load <4 x i16>, ptr %i.tg, align 16, !tbaa !28
  %wide.load230.1 = load <4 x i16>, ptr %i.th, align 8, !tbaa !28
  %i.tp = sext <4 x i16> %wide.load229.1.a to <4 x i32> ; 2 uses
  %i.tq = sext <4 x i16> %wide.load230.1 to <4 x i32> ; 2 uses
  %i.tr = add nsw <4 x i32> %i.tl, %i.tp
  %i.ts = add nsw <4 x i32> %i.tm, %i.tq
  %i.tt = shl nsw <4 x i32> %i.tp, splat (i32 12)
  %i.tu = shl nsw <4 x i32> %i.tq, splat (i32 12)
  store <4 x i32> %i.tt, ptr %i.ti, align 16, !tbaa !19
  store <4 x i32> %i.tu, ptr %i.tj, align 16, !tbaa !19
  br label %middle.block232

middle.block232:                                  ; preds = %vector.body226.1, %vector.ph224
  %.lcssa248 = phi <4 x i32> [ %i.tl, %vector.ph224 ], [ %i.tr, %vector.body226.1 ]
  %.lcssa247 = phi <4 x i32> [ %i.tm, %vector.ph224 ], [ %i.ts, %vector.body226.1 ]
  %bin.rdx = add nsw <4 x i32> %.lcssa247, %.lcssa248
  %i.tv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n233, label %.loopexit245, label %scalar.ph223

scalar.ph223:                                     ; preds = %middle.block232, %scalar.ph223
  %indvars.iv.i121 = phi i64 [ %indvars.iv.next.i122, %scalar.ph223 ], [ %n.vec225, %middle.block232 ] ; 3 uses
  %.06484.i = phi i32 [ %i.tz, %scalar.ph223 ], [ %i.tv, %middle.block232 ]
  %i.tw = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i121
  %i.tx = load i16, ptr %i.tw, align 2, !tbaa !28
  %i.ty = sext i16 %i.tx to i32                   ; 2 uses
  %i.tz = add nsw i32 %.06484.i, %i.ty            ; 2 uses
  %i.ua = shl nsw i32 %i.ty, 12
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i121
  store i32 %i.ua, ptr %i.ub, align 4, !tbaa !19
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i121, 1 ; 2 uses
  %exitcond.not.i123 = icmp eq i64 %indvars.iv.next.i122, %wide.trip.count
  br i1 %exitcond.not.i123, label %.loopexit245, label %scalar.ph223, !llvm.loop !134

.loopexit245:                                     ; preds = %scalar.ph223, %middle.block232
  %.lcssa = phi i32 [ %i.tv, %middle.block232 ], [ %i.tz, %scalar.ph223 ]
  %i.uc = icmp sgt i32 %.lcssa, 4095
  br i1 %i.uc, label %silk_is_lpc_stable.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit245
  %i.ud = load i32, ptr %i.tb, align 4, !tbaa !19 ; 2 uses
  %i.ue = add i32 %i.ud, -16773023
  %i.uf = icmp ult i32 %i.ue, -33546045
  br i1 %i.uf, label %silk_is_lpc_stable.exit.thread, label %.lr.ph90.i.preheader

.lr.ph90.i.preheader:                             ; preds = %.preheader.i
  %.neg.i207 = mul nsw i32 %i.ud, -128
  %3 = sext i32 %.neg.i207 to i64                 ; 3 uses
  %4 = mul nsw i64 %3, %3
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  %7 = sub nsw i32 1073741824, %6                 ; 2 uses
  %8 = and i32 %7, -4                             ; 2 uses
  br i1 %i.tk, label %silk_is_lpc_stable.exit, label %.lr.ph.i124

.loopexit.i.loopexit:                             ; preds = %bb.i
  %indvars.iv.next102.i = add nsw i64 %indvars.iv101.i210, -1 ; 3 uses
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv.next102.i
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !19 ; 2 uses
  %i.ui = add i32 %i.uh, -16773023
  %i.uj = icmp ult i32 %i.ui, -33546045
  br i1 %i.uj, label %silk_is_lpc_stable.exit.thread, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %.loopexit.i.loopexit
  %.neg.i = mul nsw i32 %i.uh, -128
  %9 = sext i32 %.neg.i to i64                    ; 3 uses
  %10 = mul nsw i64 %9, %9
  %11 = lshr i64 %10, 32
  %12 = trunc nuw i64 %11 to i32
  %i.uk = sub nsw i32 1073741824, %12             ; 2 uses
  %13 = sext i32 %i.um to i64
  %14 = sext i32 %i.uk to i64
  %15 = mul nsw i64 %14, %13
  %sh.diff.i = lshr i64 %15, 30
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %16 = and i32 %tr.sh.diff.i, -4                 ; 2 uses
  %i.ul = icmp eq i64 %indvars.iv.next102.i, 0
  br i1 %i.ul, label %silk_is_lpc_stable.exit, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %.lr.ph90.i.preheader, %.lr.ph90.i
  %i.um = phi i32 [ %16, %.lr.ph90.i ], [ %8, %.lr.ph90.i.preheader ]
  %i.un = phi i32 [ %i.uk, %.lr.ph90.i ], [ %7, %.lr.ph90.i.preheader ] ; 5 uses
  %17 = phi i64 [ %9, %.lr.ph90.i ], [ %3, %.lr.ph90.i.preheader ]
  %.06088.i211 = phi ptr [ %i.up, %.lr.ph90.i ], [ %i.a, %.lr.ph90.i.preheader ] ; 2 uses
  %indvars.iv101.i210 = phi i64 [ %indvars.iv.next102.i, %.lr.ph90.i ], [ %i.tc, %.lr.ph90.i.preheader ] ; 4 uses
  %i.uo = and i64 %indvars.iv101.i210, 1
  %i.up = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.uo ; 3 uses
  %i.uq = icmp samesign ugt i32 %i.un, 65535      ; 2 uses
  %i.ur = lshr i32 %i.un, 16
  %spec.select.i.i = select i1 %i.uq, i32 %i.ur, i32 %i.un ; 3 uses
  %.not.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %spec.select11.i.i = select i1 %i.uq, i32 16, i32 0 ; 2 uses
  %i.us = or disjoint i32 %spec.select11.i.i, 8
  %.1.i.i = select i1 %.not.i.i, i32 %spec.select11.i.i, i32 %i.us
  %i.ut = lshr i32 %spec.select.i.i, 8
  %.110.i.i = select i1 %.not.i.i, i32 %spec.select.i.i, i32 %i.ut
  %i.uu = zext nneg i32 %.110.i.i to i64
  %i.uv = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.uu
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !30
  %i.ux = zext i8 %i.uw to i32
  %i.uy = add nuw nsw i32 %.1.i.i, %i.ux          ; 3 uses
  %i.uz = sub nsw i32 30, %i.uy
  %i.va = shl i32 %i.un, %i.uz
  %i.vb = sext i32 %i.va to i64
  %i.vc = add nsw i32 %i.uy, -14
  %i.vd = lshr i32 %i.un, %i.vc
  %18 = sdiv i32 536870911, %i.vd                 ; 3 uses
  %i.ve = zext nneg i32 %18 to i64
  %i.vf = mul nsw i64 %i.vb, %i.ve
  %i.vg = lshr i64 %i.vf, 16
  %i.vh = trunc i64 %i.vg to i32
  %i.vi = sub i32 536870912, %i.vh
  %i.vj = mul nsw i32 %i.vi, %18
  %i.vk = ashr i32 %i.vj, 13
  %i.vl = shl i32 %18, 16
  %i.vm = add nsw i32 %i.vk, %i.vl
  %i.vn = shl nsw i64 %17, 1
  %i.vo = sext i32 %i.vm to i64
  %i.vp = zext nneg i32 %i.uy to i64
  %wide.trip.count99.i = and i64 %indvars.iv101.i210, 4294967295
  %i.vq = getelementptr [4 x i8], ptr %.06088.i211, i64 %indvars.iv101.i210
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i124
  %indvars.iv96.i = phi i64 [ 0, %.lr.ph.i124 ], [ %indvars.iv.next97.i, %bb.i ] ; 4 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %.06088.i211, i64 %indvars.iv96.i
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !19
  %i.vt = xor i64 %indvars.iv96.i, -1
  %i.vu = getelementptr [4 x i8], ptr %i.vq, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !19
  %i.vw = sext i32 %i.vv to i64
  %i.vx = mul i64 %i.vn, %i.vw
  %i.vy = add i64 %i.vx, 2147483648
  %i.vz = lshr i64 %i.vy, 32
  %i.wa = trunc nuw i64 %i.vz to i32
  %i.wb = tail call i32 @llvm.ssub.sat.i32(i32 %i.vs, i32 %i.wa)
  %i.wc = sext i32 %i.wb to i64
  %i.wd = mul nsw i64 %i.wc, %i.vo
  %i.we = ashr i64 %i.wd, %i.vp
  %i.wf = add nsw i64 %i.we, 1
  %i.wg = ashr i64 %i.wf, 1                       ; 2 uses
  %i.wh = add nsw i64 %i.wg, 2147483648
  %or.cond.i = icmp ult i64 %i.wh, 4294967296
  br i1 %or.cond.i, label %bb.i, label %silk_is_lpc_stable.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.wi = trunc nsw i64 %i.wg to i32
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %indvars.iv96.i
  store i32 %i.wi, ptr %i.wj, align 4, !tbaa !19
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %exitcond100.not.i = icmp eq i64 %indvars.iv.next97.i, %wide.trip.count99.i
  br i1 %exitcond100.not.i, label %.loopexit.i.loopexit, label %bb.h, !llvm.loop !135

silk_is_lpc_stable.exit.thread:                   ; preds = %.loopexit.i.loopexit, %bb.h, %.loopexit245, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.j

silk_is_lpc_stable.exit:                          ; preds = %.lr.ph90.i, %.lr.ph90.i.preheader
  %.lcssa203 = phi i32 [ %8, %.lr.ph90.i.preheader ], [ %16, %.lr.ph90.i ]
  %i.wk = icmp slt i32 %.lcssa203, 107374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %i.wk, label %bb.j, label %vector.ph235

bb.j:                                             ; preds = %silk_is_lpc_stable.exit.thread, %silk_is_lpc_stable.exit
  %.neg = shl nsw i32 -1, %.1150
  %i.wl = add nsw i32 %.neg, 65536                ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.k
  %indvars.iv181 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next182, %bb.k ] ; 3 uses
  %.0149 = phi i32 [ %i.wl, %bb.j ], [ %i.xb, %bb.k ] ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv181 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !19
  %i.wo = sext i32 %i.wn to i64
  %i.wp = zext i32 %.0149 to i64
  %i.wq = mul nsw i64 %i.wo, %i.wp
  %i.wr = lshr i64 %i.wq, 15
  %i.ws = add nuw nsw i64 %i.wr, 1
  %i.wt = lshr i64 %i.ws, 1
  %i.wu = trunc i64 %i.wt to i32                  ; 2 uses
  store i32 %i.wu, ptr %i.wm, align 4, !tbaa !19
  %i.wv = add nsw i32 %i.wu, 16
  %i.ww = lshr i32 %i.wv, 5
  %i.wx = trunc i32 %i.ww to i16
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv181
  store i16 %i.wx, ptr %i.wy, align 2, !tbaa !28
  %i.wz = mul i32 %.0149, %i.wl
  %i.xa = add i32 %i.wz, 32768
  %i.xb = lshr i32 %i.xa, 16
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count
  br i1 %exitcond185.not, label %bb.l, label %bb.k, !llvm.loop !136

bb.l:                                             ; preds = %bb.k
  %i.xc = add nuw nsw i32 %.1150, 1               ; 2 uses
  %exitcond186.not = icmp eq i32 %i.xc, 17
  br i1 %exitcond186.not, label %vector.ph235, label %vector.ph224, !llvm.loop !137

vector.ph235:                                     ; preds = %silk_is_lpc_stable.exit, %bb.l
  %n.vec236 = and i64 %wide.trip.count, 24        ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %wide.load239.a = load <4 x i16>, ptr %i.f, align 16, !tbaa !28
  %wide.load240 = load <4 x i16>, ptr %i.xd, align 8, !tbaa !28
  %i.xe = sitofp <4 x i16> %wide.load239.a to <4 x float>
  %i.xf = sitofp <4 x i16> %wide.load240 to <4 x float>
  %i.xg = fmul nnan nsz <4 x float> %i.xe, splat (float f0x39800000)
  %i.xh = fmul nnan nsz <4 x float> %i.xf, splat (float f0x39800000)
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x float> %i.xg, ptr %1, align 4, !tbaa !24
  store <4 x float> %i.xh, ptr %i.xi, align 4, !tbaa !24
  %i.xj = icmp eq i64 %n.vec236, 8
  br i1 %i.xj, label %middle.block242, label %vector.body237.1

vector.body237.1:                                 ; preds = %vector.ph235
  %i.xk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.xl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %wide.load239.1.a = load <4 x i16>, ptr %i.xk, align 16, !tbaa !28
  %wide.load240.1 = load <4 x i16>, ptr %i.xl, align 8, !tbaa !28
  %i.xm = sitofp <4 x i16> %wide.load239.1.a to <4 x float>
  %i.xn = sitofp <4 x i16> %wide.load240.1 to <4 x float>
  %i.xo = fmul nnan nsz <4 x float> %i.xm, splat (float f0x39800000)
  %i.xp = fmul nnan nsz <4 x float> %i.xn, splat (float f0x39800000)
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x float> %i.xo, ptr %i.xq, align 4, !tbaa !24
  store <4 x float> %i.xp, ptr %i.xr, align 4, !tbaa !24
  br label %middle.block242

middle.block242:                                  ; preds = %vector.body237.1, %vector.ph235
  %cmp.n243 = icmp eq i64 %n.vec236, %wide.trip.count
  br i1 %cmp.n243, label %.loopexit244, label %scalar.ph234

scalar.ph234:                                     ; preds = %middle.block242, %scalar.ph234
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %scalar.ph234 ], [ %n.vec236, %middle.block242 ] ; 3 uses
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv187
  %i.xt = load i16, ptr %i.xs, align 2, !tbaa !28
  %i.xu = sitofp i16 %i.xt to float
  %i.xv = fmul nnan nsz float %i.xu, f0x39800000
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv187
  store float %i.xv, ptr %i.xw, align 4, !tbaa !24
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count
  br i1 %exitcond191.not, label %.loopexit244, label %scalar.ph234, !llvm.loop !138

.loopexit244:                                     ; preds = %scalar.ph234, %middle.block242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"SilkContext", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !5, i64 40, !5, i64 10568, !5, i64 10576, !6, i64 10584}
!11 = !{!10, !9, i64 0}
!12 = !{!10, !6, i64 16}
!13 = !{!10, !6, i64 20}
!14 = !{!10, !6, i64 24}
!15 = !{!10, !6, i64 32}
!16 = !{!10, !6, i64 36}
!17 = !{!"SilkFrame", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 40, !5, i64 104, !5, i64 2680, !6, i64 5256, !6, i64 5260}
!18 = !{!17, !6, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!10, !6, i64 12}
!22 = !{!10, !6, i64 8}
!23 = !{!"float", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"short", !5, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.peeled.count", i32 1}
!30 = !{!5, !5, i64 0}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = distinct !{!41, !20, !25, !26}
!42 = distinct !{!42, !"LVerDomain"}
!43 = distinct !{!43, !42}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !42}
!46 = distinct !{!46, !20, !25, !26}
!47 = distinct !{!47, !20, !25}
!48 = distinct !{!48, !20, !25}
!49 = distinct !{!49, !20}
!50 = !{!10, !6, i64 10584}
!51 = !{!"p1 float", !9, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!38}
!54 = !{!39}
!55 = !{!40, !38}
!56 = !{!40}
!57 = !{!43}
!58 = !{!44}
!59 = !{!45, !43}
!60 = !{!45}
!61 = distinct !{!61, !20, !29}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20, !25, !26}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20, !26, !25}
!66 = distinct !{!66, !20, !107}
!67 = distinct !{!67, !20, !25, !26}
!68 = distinct !{!68, !20, !26, !25}
!69 = distinct !{!69, !20, !25, !26}
!70 = distinct !{!70, !20, !26, !25}
!71 = distinct !{!71, !20}
!72 = distinct !{!72, !20}
!73 = distinct !{!73, !20}
!74 = distinct !{!74, !20}
!75 = distinct !{!75, !20}
!76 = distinct !{!76, !20, !25, !26}
!77 = distinct !{!77, !20, !26, !25}
!78 = distinct !{!78, !20}
!79 = distinct !{!79, !20}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !20}
!84 = distinct !{!84, !20}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !20}
!88 = distinct !{!88, !20}
!89 = distinct !{!89, !20, !25, !26}
!90 = distinct !{!90, !20, !26, !25}
!91 = distinct !{!91, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !91}
!95 = distinct !{!95, !91}
!96 = distinct !{!96, !91}
!97 = distinct !{!97, !91}
!98 = distinct !{!98, !20, !25, !26}
!99 = distinct !{!99, !20, !25}
!100 = distinct !{!100, !20}
!101 = distinct !{!101, !123}
!102 = distinct !{!102, !20}
!103 = distinct !{!103, !20}
!104 = !{!17, !6, i64 4}
!105 = !{!"", !23, i64 0, !6, i64 4, !5, i64 8}
!106 = !{!105, !23, i64 0}
!107 = !{!"llvm.loop.peeled.count", i32 2}
!108 = !{!10, !6, i64 28}
!109 = !{!17, !6, i64 5260}
!110 = !{!17, !6, i64 5256}
!111 = !{!"p1 short", !9, i64 0}
!112 = !{!111, !111, i64 0}
!113 = !{!105, !6, i64 4}
!114 = !{!"p1 omnipotent char", !9, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!92}
!117 = !{!97, !96, !95, !94, !93}
!118 = !{!97}
!119 = !{!96}
!120 = !{!95}
!121 = !{!94}
!122 = !{!93}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = !{!"p1 _ZTS11SilkContext", !9, i64 0}
!125 = !{!124, !124, i64 0}
!126 = distinct !{!126, !20}
!127 = distinct !{!127, !20, !29}
!128 = distinct !{!128, !20, !29}
!129 = distinct !{!129, !20}
!130 = distinct !{!130, !20}
!131 = distinct !{!131, !20}
!132 = distinct !{!132, !20, !26, !25}
!133 = distinct !{!133, !20, !26, !25}
!134 = distinct !{!134, !20, !26, !25}
!135 = distinct !{!135, !20}
!136 = distinct !{!136, !20}
!137 = distinct !{!137, !20}
!138 = distinct !{!138, !20, !26, !25}
end_hunk_0
