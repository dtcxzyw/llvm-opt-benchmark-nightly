Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/autofit?download=true
inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 37
begin_hunk_0_@af_latin_metrics_init:bb.a
  %i.rj = phi ptr [ %i.rc, %._crit_edge950.i ], [ %i.qs, %bb.ce ], [ %i.qs, %bb.cf ] ; 3 uses
  %i.rk = phi i16 [ %.pre952.i, %._crit_edge950.i ], [ %i.rd, %bb.ce ], [ %i.rd, %bb.cf ] ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 48
  store i64 %.10584.i, ptr %i.rl, align 8, !tbaa !165
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 56
  store i64 %.10573.i, ptr %i.rm, align 8, !tbaa !166
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 64 ; 2 uses
  %i.ro = shl i16 %i.rk, 1
  %spec.select10741076.i = and i16 %i.ro, 14
  %i.rp = and i16 %i.rk, 96
  %i.rq = or disjoint i16 %spec.select10741076.i, %i.rp
  %i.rr = zext nneg i16 %i.rq to i32              ; 2 uses
  store i32 %i.rr, ptr %i.rn, align 8
  %i.rs = and i16 %i.rk, 8
  %.not649.i = icmp eq i16 %i.rs, 0
  br i1 %.not649.i, label %._crit_edge861.thread.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.rt = or disjoint i32 %i.rr, 16
  store i32 %i.rt, ptr %i.rn, align 8, !tbaa !167
  br label %._crit_edge861.thread.i

._crit_edge861.thread.i:                          ; preds = %bb.ch, %bb.cg, %._crit_edge861.i, %bb.ad
  %i.ru = getelementptr inbounds nuw i8, ptr %.0588867.i, i64 8 ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !66 ; 2 uses
  %.not636.i = icmp eq i32 %i.rv, 5531
  br i1 %.not636.i, label %._crit_edge869.i, label %bb.ad, !llvm.loop !329

._crit_edge869.i:                                 ; preds = %._crit_edge861.thread.i, %af_shaper_buf_create.exit.i19
  %i.rw = load ptr, ptr %i.ar, align 8, !tbaa !141
  %i.rx = getelementptr i8, ptr %i.rw, i64 816
  %.val.i709.i = load ptr, ptr %i.rx, align 8, !tbaa !56
  %i.ry = getelementptr i8, ptr %.val.i709.i, i64 72
  %.val.val.i710.i = load ptr, ptr %i.ry, align 8, !tbaa !62 ; 2 uses
  %.not6.i.i26 = icmp eq ptr %.val.val.i710.i, null
  br i1 %.not6.i.i26, label %af_shaper_buf_destroy.exit.i28, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge869.i
  %i.rz = getelementptr i8, ptr %.val.val.i710.i, i64 40
  %.val5.val.val.i.i27 = load ptr, ptr %i.rz, align 8, !tbaa !87
  call void %.val5.val.val.i.i27(ptr noundef %.0587.i) #18, !inline_history !330
  br label %af_shaper_buf_destroy.exit.i28

af_shaper_buf_destroy.exit.i28:                   ; preds = %bb.ci, %._crit_edge869.i
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 1540
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !163 ; 5 uses
  %.not637.i = icmp eq i32 %i.sb, 0
  br i1 %.not637.i, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %af_shaper_buf_destroy.exit.i28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 3 uses
  %wide.trip.count926.i = zext i32 %i.sb to i64   ; 4 uses
  %min.iters.check = icmp ult i32 %i.sb, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.cj
  %n.vec = and i64 %wide.trip.count926.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [72 x i8], ptr %i.sc, <2 x i64> %vec.ind
  %wide.gep212 = getelementptr inbounds nuw [72 x i8], ptr %i.sc, <2 x i64> %step.add
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store <2 x ptr> %wide.gep, ptr %i.sd, align 16, !tbaa !359
  store <2 x ptr> %wide.gep212, ptr %i.se, align 16, !tbaa !359
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.sf = icmp eq i64 %index.next, %n.vec
  br i1 %i.sf, label %middle.block, label %vector.body, !llvm.loop !331

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count926.i
  br i1 %cmp.n, label %.loopexit270, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.cj, %middle.block
  %indvars.iv923.i.ph = phi i64 [ 0, %bb.cj ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv923.i = phi i64 [ %indvars.iv.next924.i, %scalar.ph ], [ %indvars.iv923.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.sg = getelementptr inbounds nuw [72 x i8], ptr %i.sc, i64 %indvars.iv923.i
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv923.i
  store ptr %i.sg, ptr %i.sh, align 8, !tbaa !359
  %indvars.iv.next924.i = add nuw nsw i64 %indvars.iv923.i, 1 ; 2 uses
  %exitcond927.not.i = icmp eq i64 %indvars.iv.next924.i, %wide.trip.count926.i
  br i1 %exitcond927.not.i, label %.loopexit270, label %scalar.ph, !llvm.loop !332

.loopexit270:                                     ; preds = %scalar.ph, %middle.block
  %.not781.i = icmp eq i32 %i.sb, 1
  br i1 %.not781.i, label %.loopexit, label %.lr.ph.preheader.i711.i

.lr.ph.preheader.i711.i:                          ; preds = %.loopexit270, %._crit_edge.i715.i
  %indvars.iv928.i = phi i64 [ %indvars.iv.next929.i, %._crit_edge.i715.i ], [ 1, %.loopexit270 ] ; 3 uses
  %.phi.trans.insert42.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv928.i
  %.pre.i713.i = load ptr, ptr %.phi.trans.insert42.i.i, align 8, !tbaa !359 ; 3 uses
  %.phi.trans.insert43.i.i = getelementptr inbounds nuw i8, ptr %.pre.i713.i, i64 64
  %.pre44.i.i = load i32, ptr %.phi.trans.insert43.i.i, align 8, !tbaa !167
  %i.si = and i32 %.pre44.i.i, 6
  %.not34.i.i = icmp eq i32 %i.si, 0
  %.029.in.idx.i.i = select i1 %.not34.i.i, i64 24, i64 0
  %.029.in.i.i = getelementptr inbounds nuw i8, ptr %.pre.i713.i, i64 %.029.in.idx.i.i
  %.029.i.i = load i64, ptr %.029.in.i.i, align 8, !tbaa !76
  br label %.lr.ph.i714.i

.lr.ph.i714.i:                                    ; preds = %bb.ck, %.lr.ph.preheader.i711.i
  %indvars.iv930.i = phi i64 [ %i.sj, %bb.ck ], [ %indvars.iv928.i, %.lr.ph.preheader.i711.i ] ; 2 uses
  %i.sj = add nsw i64 %indvars.iv930.i, -1        ; 3 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.sj ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !359 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 64
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !167
  %i.so = and i32 %i.sn, 6
  %.not33.i.i = icmp eq i32 %i.so, 0
  %.030.in.idx.i.i = select i1 %.not33.i.i, i64 24, i64 0
  %.030.in.i.i = getelementptr inbounds nuw i8, ptr %i.sl, i64 %.030.in.idx.i.i
  %.030.i.i = load i64, ptr %.030.in.i.i, align 8, !tbaa !76
  %.not35.i.i = icmp slt i64 %.029.i.i, %.030.i.i
  br i1 %.not35.i.i, label %bb.ck, label %._crit_edge.i715.i

bb.ck:                                            ; preds = %.lr.ph.i714.i
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv930.i
  store ptr %i.sl, ptr %i.sp, align 8, !tbaa !359
  store ptr %.pre.i713.i, ptr %i.sk, align 8, !tbaa !359
  %.not.i717.wide.i = icmp eq i64 %i.sj, 0
  br i1 %.not.i717.wide.i, label %._crit_edge.i715.i, label %.lr.ph.i714.i, !llvm.loop !333

._crit_edge.i715.i:                               ; preds = %bb.ck, %.lr.ph.i714.i
  %indvars.iv.next929.i = add nuw nsw i64 %indvars.iv928.i, 1 ; 2 uses
  %exitcond.not.i716.i = icmp eq i64 %indvars.iv.next929.i, %wide.trip.count926.i
  br i1 %exitcond.not.i716.i, label %af_latin_sort_blue.exit.i, label %.lr.ph.preheader.i711.i, !llvm.loop !334

af_latin_sort_blue.exit.i:                        ; preds = %._crit_edge.i715.i
  %i.sq = add i32 %i.sb, -1
  %wide.trip.count937.i = zext i32 %i.sq to i64
  %.pre953.i = load ptr, ptr %i.r, align 16, !tbaa !359 ; 2 uses
  %.phi.trans.insert954.i = getelementptr inbounds nuw i8, ptr %.pre953.i, i64 64
  %.pre955.i = load i32, ptr %.phi.trans.insert954.i, align 8, !tbaa !167
  br label %.lr.ph872.i

.lr.ph872.i:                                      ; preds = %bb.cm, %af_latin_sort_blue.exit.i
  %i.sr = phi i32 [ %.pre955.i, %af_latin_sort_blue.exit.i ], [ %i.sx, %bb.cm ]
  %i.ss = phi ptr [ %.pre953.i, %af_latin_sort_blue.exit.i ], [ %i.sv, %bb.cm ]
  %indvars.iv934.i = phi i64 [ 0, %af_latin_sort_blue.exit.i ], [ %indvars.iv.next935.i, %bb.cm ]
  %i.st = and i32 %i.sr, 6
  %.not638.i = icmp eq i32 %i.st, 0
  %.0454.idx.i = select i1 %.not638.i, i64 0, i64 24
  %.0454.i = getelementptr inbounds nuw i8, ptr %i.ss, i64 %.0454.idx.i ; 2 uses
  %indvars.iv.next935.i = add nuw nsw i64 %indvars.iv934.i, 1 ; 3 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next935.i
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !359 ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 64
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !167 ; 2 uses
  %i.sy = and i32 %i.sx, 6
  %.not639.i = icmp eq i32 %i.sy, 0
  %.0453.idx.i = select i1 %.not639.i, i64 0, i64 24
  %.0453.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 %.0453.idx.i
  %i.sz = load i64, ptr %.0454.i, align 8, !tbaa !76
  %i.ta = load i64, ptr %.0453.i, align 8, !tbaa !76 ; 2 uses
  %i.tb = icmp sgt i64 %i.sz, %i.ta
  br i1 %i.tb, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.lr.ph872.i
  store i64 %i.ta, ptr %.0454.i, align 8, !tbaa !76
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph872.i
  %exitcond938.not.i = icmp eq i64 %indvars.iv.next935.i, %wide.trip.count937.i
  br i1 %exitcond938.not.i, label %.loopexit, label %.lr.ph872.i, !llvm.loop !335

bb.cn:                                            ; preds = %af_shaper_buf_destroy.exit.i28
  %i.tc = load ptr, ptr %i.ar, align 8, !tbaa !141 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !170 ; 21 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !171 ; 4 uses
  %.not882.i = icmp eq i32 %i.tg, 0
  br i1 %.not882.i, label %af_latin_metrics_init_blues.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.cn
  %i.th = load i32, ptr %i.gd, align 4, !tbaa !172 ; 3 uses
  %wide.trip.count942.i = zext i32 %i.tg to i64   ; 6 uses
  %min.iters.check214 = icmp ult i32 %i.tg, 4
  br i1 %min.iters.check214, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check215 = icmp ult i32 %i.tg, 16
  br i1 %min.iters.check215, label %vec.epilog.ph, label %vector.ph216

vector.ph216:                                     ; preds = %vector.main.loop.iter.check
  %i.ti = and i64 %wide.trip.count942.i, 12
  %n.vec217 = and i64 %wide.trip.count942.i, 4294967280 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.th, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body218

vector.body218:                                   ; preds = %pred.store.continue250, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next251, %pred.store.continue250 ] ; 17 uses
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219 ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  %wide.load = load <8 x i16>, ptr %i.tj, align 2, !tbaa !78
  %wide.load220 = load <8 x i16>, ptr %i.tk, align 2, !tbaa !78
  %i.tl = and <8 x i16> %wide.load, splat (i16 8191)
  %i.tm = and <8 x i16> %wide.load220, splat (i16 8191)
  %i.tn = zext nneg <8 x i16> %i.tl to <8 x i32>
  %i.to = zext nneg <8 x i16> %i.tm to <8 x i32>
  %i.tp = icmp eq <8 x i32> %broadcast.splat, %i.tn ; 8 uses
  %i.tq = icmp eq <8 x i32> %broadcast.splat, %i.to ; 8 uses
  %i.tr = extractelement <8 x i1> %i.tp, i64 0
  br i1 %i.tr, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body218
  store i16 66, ptr %i.tj, align 2, !tbaa !78
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body218
  %i.ts = extractelement <8 x i1> %i.tp, i64 1
  br i1 %i.ts, label %pred.store.if221, label %pred.store.continue222

pred.store.if221:                                 ; preds = %pred.store.continue
  %i.tt = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 2
  store i16 66, ptr %i.tu, align 2, !tbaa !78
  br label %pred.store.continue222

pred.store.continue222:                           ; preds = %pred.store.if221, %pred.store.continue
  %i.tv = extractelement <8 x i1> %i.tp, i64 2
  br i1 %i.tv, label %pred.store.if223, label %pred.store.continue224

pred.store.if223:                                 ; preds = %pred.store.continue222
  %i.tw = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 4
  store i16 66, ptr %i.tx, align 2, !tbaa !78
  br label %pred.store.continue224

pred.store.continue224:                           ; preds = %pred.store.if223, %pred.store.continue222
  %i.ty = extractelement <8 x i1> %i.tp, i64 3
  br i1 %i.ty, label %pred.store.if225, label %pred.store.continue226

pred.store.if225:                                 ; preds = %pred.store.continue224
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 6
  store i16 66, ptr %i.ua, align 2, !tbaa !78
  br label %pred.store.continue226

pred.store.continue226:                           ; preds = %pred.store.if225, %pred.store.continue224
  %i.ub = extractelement <8 x i1> %i.tp, i64 4
  br i1 %i.ub, label %pred.store.if227, label %pred.store.continue228

pred.store.if227:                                 ; preds = %pred.store.continue226
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  store i16 66, ptr %i.ud, align 2, !tbaa !78
  br label %pred.store.continue228

pred.store.continue228:                           ; preds = %pred.store.if227, %pred.store.continue226
  %i.ue = extractelement <8 x i1> %i.tp, i64 5
  br i1 %i.ue, label %pred.store.if229, label %pred.store.continue230

pred.store.if229:                                 ; preds = %pred.store.continue228
  %i.uf = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 10
  store i16 66, ptr %i.ug, align 2, !tbaa !78
  br label %pred.store.continue230

pred.store.continue230:                           ; preds = %pred.store.if229, %pred.store.continue228
  %i.uh = extractelement <8 x i1> %i.tp, i64 6
  br i1 %i.uh, label %pred.store.if231, label %pred.store.continue232

pred.store.if231:                                 ; preds = %pred.store.continue230
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 12
  store i16 66, ptr %i.uj, align 2, !tbaa !78
  br label %pred.store.continue232

pred.store.continue232:                           ; preds = %pred.store.if231, %pred.store.continue230
  %i.uk = extractelement <8 x i1> %i.tp, i64 7
  br i1 %i.uk, label %pred.store.if233, label %pred.store.continue234

pred.store.if233:                                 ; preds = %pred.store.continue232
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 14
  store i16 66, ptr %i.um, align 2, !tbaa !78
  br label %pred.store.continue234

pred.store.continue234:                           ; preds = %pred.store.if233, %pred.store.continue232
  %i.un = extractelement <8 x i1> %i.tq, i64 0
  br i1 %i.un, label %pred.store.if235, label %pred.store.continue236

pred.store.if235:                                 ; preds = %pred.store.continue234
  %i.uo = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  store i16 66, ptr %i.up, align 2, !tbaa !78
  br label %pred.store.continue236

pred.store.continue236:                           ; preds = %pred.store.if235, %pred.store.continue234
  %i.uq = extractelement <8 x i1> %i.tq, i64 1
  br i1 %i.uq, label %pred.store.if237, label %pred.store.continue238

pred.store.if237:                                 ; preds = %pred.store.continue236
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 18
  store i16 66, ptr %i.us, align 2, !tbaa !78
  br label %pred.store.continue238

pred.store.continue238:                           ; preds = %pred.store.if237, %pred.store.continue236
  %i.ut = extractelement <8 x i1> %i.tq, i64 2
  br i1 %i.ut, label %pred.store.if239, label %pred.store.continue240

pred.store.if239:                                 ; preds = %pred.store.continue238
  %i.uu = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 20
  store i16 66, ptr %i.uv, align 2, !tbaa !78
  br label %pred.store.continue240

pred.store.continue240:                           ; preds = %pred.store.if239, %pred.store.continue238
  %i.uw = extractelement <8 x i1> %i.tq, i64 3
  br i1 %i.uw, label %pred.store.if241, label %pred.store.continue242

pred.store.if241:                                 ; preds = %pred.store.continue240
  %i.ux = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 22
  store i16 66, ptr %i.uy, align 2, !tbaa !78
  br label %pred.store.continue242

pred.store.continue242:                           ; preds = %pred.store.if241, %pred.store.continue240
  %i.uz = extractelement <8 x i1> %i.tq, i64 4
  br i1 %i.uz, label %pred.store.if243, label %pred.store.continue244

pred.store.if243:                                 ; preds = %pred.store.continue242
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 24
  store i16 66, ptr %i.vb, align 2, !tbaa !78
  br label %pred.store.continue244

pred.store.continue244:                           ; preds = %pred.store.if243, %pred.store.continue242
  %i.vc = extractelement <8 x i1> %i.tq, i64 5
  br i1 %i.vc, label %pred.store.if245, label %pred.store.continue246

pred.store.if245:                                 ; preds = %pred.store.continue244
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 26
  store i16 66, ptr %i.ve, align 2, !tbaa !78
  br label %pred.store.continue246

pred.store.continue246:                           ; preds = %pred.store.if245, %pred.store.continue244
  %i.vf = extractelement <8 x i1> %i.tq, i64 6
  br i1 %i.vf, label %pred.store.if247, label %pred.store.continue248

pred.store.if247:                                 ; preds = %pred.store.continue246
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 28
  store i16 66, ptr %i.vh, align 2, !tbaa !78
  br label %pred.store.continue248

pred.store.continue248:                           ; preds = %pred.store.if247, %pred.store.continue246
  %i.vi = extractelement <8 x i1> %i.tq, i64 7
  br i1 %i.vi, label %pred.store.if249, label %pred.store.continue250

pred.store.if249:                                 ; preds = %pred.store.continue248
  %i.vj = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index219
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 30
  store i16 66, ptr %i.vk, align 2, !tbaa !78
  br label %pred.store.continue250

pred.store.continue250:                           ; preds = %pred.store.if249, %pred.store.continue248
  %index.next251 = add nuw i64 %index219, 16      ; 2 uses
  %i.vl = icmp eq i64 %index.next251, %n.vec217
  br i1 %i.vl, label %middle.block252, label %vector.body218, !llvm.loop !336

middle.block252:                                  ; preds = %pred.store.continue250
  %cmp.n253 = icmp eq i64 %n.vec217, %wide.trip.count942.i
  br i1 %cmp.n253, label %af_latin_metrics_init_blues.exit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block252
  %min.epilog.iters.check = icmp eq i64 %i.ti, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !173

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec217, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec254 = and i64 %wide.trip.count942.i, 4294967292 ; 3 uses
  %broadcast.splatinsert255 = insertelement <4 x i32> poison, i32 %i.th, i64 0
  %broadcast.splat256 = shufflevector <4 x i32> %broadcast.splatinsert255, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue266, %vec.epilog.ph
  %index257 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next267, %pred.store.continue266 ] ; 5 uses
  %i.vm = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index257 ; 2 uses
  %wide.load258 = load <4 x i16>, ptr %i.vm, align 2, !tbaa !78
  %i.vn = and <4 x i16> %wide.load258, splat (i16 8191)
  %i.vo = zext nneg <4 x i16> %i.vn to <4 x i32>
  %i.vp = icmp eq <4 x i32> %broadcast.splat256, %i.vo ; 4 uses
  %i.vq = extractelement <4 x i1> %i.vp, i64 0
  br i1 %i.vq, label %pred.store.if259, label %pred.store.continue260

pred.store.if259:                                 ; preds = %vec.epilog.vector.body
  store i16 66, ptr %i.vm, align 2, !tbaa !78
end_hunk_0
begin_hunk_1_@af_face_globals_new:bb.a
  %i.mn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 3
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !68
  %i.mp = zext i8 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %i.mm
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mp ; 7 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 4 ; 4 uses
  %i.mt = icmp ult ptr %i.dx, %i.ms
  br i1 %i.mt, label %af_validate_lookup_table.exit.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mu = load i8, ptr %i.mr, align 1, !tbaa !68
  %i.mv = zext i8 %i.mu to i16
  %i.mw = shl nuw i16 %i.mv, 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 1
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !68
  %i.mz = zext i8 %i.my to i16
  %trunc.i.i83.i.i = or disjoint i16 %i.mw, %i.mz
  switch i16 %trunc.i.i83.i.i, label %af_validate_lookup_table.exit.thread.i [
    i16 1, label %bb.aj
    i16 2, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.na = getelementptr inbounds nuw i8, ptr %i.mr, i64 2
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !68
  %i.nc = zext i8 %i.nb to i32
  %i.nd = shl nuw nsw i32 %i.nc, 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mr, i64 3
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !68
  %i.ng = zext i8 %i.nf to i32
  %i.nh = or disjoint i32 %i.nd, %i.ng            ; 2 uses
  %i.ni = shl nuw nsw i32 %i.nh, 1
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.nj
  %.not60.i.i90.i.i = icmp ult ptr %i.dx, %i.nk
  br i1 %.not60.i.i90.i.i, label %af_validate_lookup_table.exit.thread.i, label %af_validate_coverage.exit.i87.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mr, i64 2
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !68
  %i.nn = zext i8 %i.nm to i64
  %i.no = shl nuw nsw i64 %i.nn, 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.mr, i64 3
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !68
  %i.nr = zext i8 %i.nq to i64
  %i.ns = or disjoint i64 %i.no, %i.nr
  %i.nt = mul nuw nsw i64 %i.ns, 6
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.nt ; 2 uses
  %i.nv = icmp ult ptr %i.dx, %i.nu
  br i1 %i.nv, label %af_validate_lookup_table.exit.thread.i, label %.preheader.i.i84.i.i

.preheader.i.i84.i.i:                             ; preds = %bb.ak, %bb.al
  %.048.i.i85.i.i = phi ptr [ %i.op, %bb.al ], [ %i.ms, %bb.ak ] ; 6 uses
  %.146.i.i86.i.i = phi i32 [ %i.oo, %bb.al ], [ 0, %bb.ak ] ; 2 uses
  %i.nw = icmp ult ptr %.048.i.i85.i.i, %i.nu
  br i1 %i.nw, label %bb.al, label %af_validate_coverage.exit.i87.i.i

bb.al:                                            ; preds = %.preheader.i.i84.i.i
  %i.nx = load i8, ptr %.048.i.i85.i.i, align 1, !tbaa !68
  %i.ny = zext i8 %i.nx to i32
  %i.nz = shl nuw nsw i32 %i.ny, 8
  %i.oa = getelementptr inbounds nuw i8, ptr %.048.i.i85.i.i, i64 1
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !68
  %i.oc = zext i8 %i.ob to i32
  %i.od = or disjoint i32 %i.nz, %i.oc            ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.048.i.i85.i.i, i64 2
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !68
  %i.og = zext i8 %i.of to i32
  %i.oh = shl nuw nsw i32 %i.og, 8
  %i.oi = getelementptr inbounds nuw i8, ptr %.048.i.i85.i.i, i64 3
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !68
  %i.ok = zext i8 %i.oj to i32
  %i.ol = or disjoint i32 %i.oh, %i.ok            ; 2 uses
  %.not.i.i89.i.i = icmp samesign ugt i32 %i.od, %i.ol
  %i.om = add i32 %.146.i.i86.i.i, 1
  %i.on = sub i32 %i.om, %i.od
  %i.oo = add i32 %i.on, %i.ol
  %i.op = getelementptr inbounds nuw i8, ptr %.048.i.i85.i.i, i64 6
  br i1 %.not.i.i89.i.i, label %af_validate_lookup_table.exit.thread.i, label %.preheader.i.i84.i.i, !llvm.loop !603

af_validate_coverage.exit.i87.i.i:                ; preds = %.preheader.i.i84.i.i, %bb.aj
  %.0.i88.i.i = phi i32 [ %i.nh, %bb.aj ], [ %.146.i.i86.i.i, %.preheader.i.i84.i.i ]
  %i.oq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !68
  %i.os = zext i8 %i.or to i32
  %i.ot = shl nuw nsw i32 %i.os, 8
  %i.ou = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 5
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !68
  %i.ow = zext i8 %i.ov to i32
  %i.ox = or disjoint i32 %i.ot, %i.ow            ; 2 uses
  %i.oy = shl nuw nsw i32 %i.ox, 1
  %i.oz = zext nneg i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.oz ; 2 uses
  %i.pb = icmp uge ptr %i.dx, %i.pa
  %.not34.i.i.i = icmp eq i32 %i.ox, %.0.i88.i.i
  %or.cond.i.i.i = select i1 %i.pb, i1 %.not34.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %.preheader.i.i.i, label %af_validate_lookup_table.exit.thread.i

.preheader.i.i.i:                                 ; preds = %af_validate_coverage.exit.i87.i.i, %bb.an
  %.029.i.i.i = phi ptr [ %i.pn, %bb.an ], [ %i.hd, %af_validate_coverage.exit.i87.i.i ] ; 4 uses
  %i.pc = icmp ult ptr %.029.i.i.i, %i.pa
  br i1 %i.pc, label %bb.am, label %af_validate_alternate.exit.i.i

bb.am:                                            ; preds = %.preheader.i.i.i
  %i.pd = load i8, ptr %.029.i.i.i, align 1, !tbaa !68
  %i.pe = zext i8 %i.pd to i64
  %i.pf = shl nuw nsw i64 %i.pe, 8
  %i.pg = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 1
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !68
  %i.pi = zext i8 %i.ph to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %i.pf
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pi ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 2 ; 2 uses
  %i.pm = icmp ult ptr %i.dx, %i.pl
  br i1 %i.pm, label %af_validate_lookup_table.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.pn = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 2
  %i.po = load i8, ptr %i.pk, align 1, !tbaa !68
  %i.pp = zext i8 %i.po to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pk, i64 1
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !68
  %i.ps = zext i8 %i.pr to i64
  %i.pt = shl nuw nsw i64 %i.pp, 9
  %i.pu = shl nuw nsw i64 %i.ps, 1
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pt
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pu
  %.not.i.i.i = icmp ult ptr %i.dx, %i.pw
  br i1 %.not.i.i.i, label %af_validate_lookup_table.exit.thread.i, label %.preheader.i.i.i, !llvm.loop !604

af_validate_alternate.exit.i.i:                   ; preds = %.preheader.i.i.i, %.preheader.i.i.i.i, %af_validate_coverage.exit.i.i.i, %bb.y
  %i.px = icmp ult ptr %i.fk, %i.fg
  br i1 %i.px, label %bb.n, label %af_validate_lookup_table.exit.i, !llvm.loop !605

af_validate_lookup_table.exit.i:                  ; preds = %af_validate_alternate.exit.i.i, %.preheader.i.i
  %i.py = add nuw nsw i32 %i.ek, %i.db
  %i.pz = zext i32 %.04966.i to i64
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.pz
  store i32 %i.py, ptr %i.qa, align 4, !tbaa !70
  br label %af_validate_lookup_table.exit.thread.i

af_validate_lookup_table.exit.thread.i:           ; preds = %af_validate_coverage.exit.i87.i.i, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %af_validate_coverage.exit.i.i.i, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.al, %bb.an, %bb.am, %bb.af, %bb.aa, %af_validate_lookup_table.exit.i, %bb.m, %bb.l
  %i.qb = add i32 %.04966.i, 1
  %i.qc = icmp ult ptr %i.ed, %i.ea
  br i1 %i.qc, label %bb.l, label %._crit_edge.i, !llvm.loop !606

._crit_edge.i:                                    ; preds = %af_validate_lookup_table.exit.thread.i, %bb.k
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !187
  %i.qd = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i16 %i.dn, ptr %i.qd, align 8, !tbaa !185
  store ptr %i.du, ptr %i.cl, align 8, !tbaa !186
  br label %af_parse_gsub.exit

bb.ao:                                            ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %ft_hb_ft_font_create.exit
  %.051.i = phi ptr [ null, %ft_hb_ft_font_create.exit ], [ %i.co, %bb.f ], [ %i.co, %bb.g ], [ %i.co, %bb.h ], [ %i.co, %bb.i ], [ %i.co, %bb.j ]
  %.050.i = phi ptr [ null, %ft_hb_ft_font_create.exit ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ %i.du, %bb.j ]
  %i.qe = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i16 0, ptr %i.qe, align 8, !tbaa !185
  call void @ft_mem_free(ptr noundef %i.cj, ptr noundef %.051.i) #18
  call void @ft_mem_free(ptr noundef %i.cj, ptr noundef %.050.i) #18
  br label %af_parse_gsub.exit

af_parse_gsub.exit:                               ; preds = %._crit_edge.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !175
  %.pre55 = load ptr, ptr %i.s, align 8, !tbaa !170
  %.pre56 = load i32, ptr %i.q, align 8, !tbaa !171
  br label %bb.aq

bb.ap:                                            ; preds = %bb.b
  %i.qf = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.qg = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr null, ptr %i.qg, align 8, !tbaa !186
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qf, i8 0, i64 24, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %af_parse_gsub.exit
  %i.qh = phi i32 [ %i.p, %bb.ap ], [ %.pre56, %af_parse_gsub.exit ] ; 4 uses
  %i.qi = phi ptr [ %i.r, %bb.ap ], [ %.pre55, %af_parse_gsub.exit ] ; 29 uses
  %i.qj = phi ptr [ %0, %bb.ap ], [ %.pre, %af_parse_gsub.exit ] ; 18 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 168 ; 2 uses
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !36
  %.not150.i = icmp eq i32 %i.qh, 0
  br i1 %.not150.i, label %._crit_edge.i37, label %iter.check

iter.check:                                       ; preds = %bb.aq
  %wide.trip.count.i = zext i32 %i.qh to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %i.qh, 4
  br i1 %min.iters.check, label %.lr.ph.i36.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check115 = icmp ult i32 %i.qh, 16
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.qm = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 4294967280 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %index ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store <8 x i16> splat (i16 8191), ptr %i.qn, align 2, !tbaa !78
  store <8 x i16> splat (i16 8191), ptr %i.qo, align 2, !tbaa !78
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.qp = icmp eq i64 %index.next, %n.vec
  br i1 %i.qp, label %middle.block, label %vector.body, !llvm.loop !607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i37, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.qm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i36.preheader, label %vec.epilog.ph, !prof !173

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec116 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next118, %vec.epilog.vector.body ] ; 2 uses
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %index117
  store <4 x i16> splat (i16 8191), ptr %i.qq, align 2, !tbaa !78
  %index.next118 = add nuw i64 %index117, 4       ; 2 uses
  %i.qr = icmp eq i64 %index.next118, %n.vec116
  br i1 %i.qr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !608

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n119 = icmp eq i64 %n.vec116, %wide.trip.count.i
  br i1 %cmp.n119, label %._crit_edge.i37, label %.lr.ph.i36.preheader

.lr.ph.i36.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec116, %vec.epilog.middle.block ]
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.preheader, %.lr.ph.i36
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i36 ], [ %indvars.iv.i.ph, %.lr.ph.i36.preheader ] ; 2 uses
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %indvars.iv.i
  store i16 8191, ptr %i.qs, align 2, !tbaa !78
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i37, label %.lr.ph.i36, !llvm.loop !609

._crit_edge.i37:                                  ; preds = %.lr.ph.i36, %middle.block, %vec.epilog.middle.block, %bb.aq
  %i.qt = call i32 @FT_Select_Charmap(ptr noundef nonnull %i.qj, i32 noundef 1970170211) #18
  %.not.i38 = icmp eq i32 %i.qt, 0
  br i1 %.not.i38, label %.preheader124.i, label %.loopexit121.i

.preheader124.i:                                  ; preds = %._crit_edge.i37, %.loopexit123.i
  %indvars.iv153.i = phi i64 [ %indvars.iv.next154.i, %.loopexit123.i ], [ 0, %._crit_edge.i37 ] ; 4 uses
  %i.qu = phi ptr [ %i.uf, %.loopexit123.i ], [ @af_adlm_dflt_style_class, %._crit_edge.i37 ] ; 3 uses
  %.095145.i = phi i16 [ %.3.i, %.loopexit123.i ], [ -1, %._crit_edge.i37 ] ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !135 ; 2 uses
  %i.qx = zext i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr @af_script_classes, i64 %i.qx
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !137 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !623 ; 3 uses
  %.not115.i = icmp eq ptr %i.rb, null
  br i1 %.not115.i, label %.loopexit123.i, label %bb.ar

bb.ar:                                            ; preds = %.preheader124.i
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !249
  %i.re = icmp eq i32 %i.rd, 10
  br i1 %i.re, label %bb.as, label %bb.bk

bb.as:                                            ; preds = %bb.ar
  %i.rf = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 28
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !229
  %i.ri = icmp eq i32 %i.qw, %i.rh
  %i.rj = trunc nuw nsw i64 %indvars.iv153.i to i16 ; 2 uses
  %spec.select.i = select i1 %i.ri, i16 %i.rj, i16 %.095145.i ; 2 uses
  %i.rk = load i32, ptr %i.rb, align 4, !tbaa !625 ; 2 uses
  %.not116130.i = icmp eq i32 %i.rk, 0
  br i1 %.not116130.i, label %._crit_edge134.i, label %.lr.ph133.i

.lr.ph133.i:                                      ; preds = %bb.as
  %i.rl = or i16 %i.rj, 8192                      ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge128.i, %.lr.ph133.i
  %i.rm = phi i32 [ %i.rk, %.lr.ph133.i ], [ %i.sq, %._crit_edge128.i ]
  %.092131.i = phi ptr [ %i.rb, %.lr.ph133.i ], [ %i.sp, %._crit_edge128.i ] ; 2 uses
  %i.rn = zext i32 %i.rm to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ro = call i32 @FT_Get_Char_Index(ptr noundef nonnull %i.qj, i64 noundef %i.rn) #18 ; 4 uses
  store i32 %i.ro, ptr %i.a, align 4, !tbaa !70
  %.not119.i = icmp eq i32 %i.ro, 0
  br i1 %.not119.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rp = load i32, ptr %i.q, align 8, !tbaa !171
  %i.rq = icmp ult i32 %i.ro, %i.rp
  br i1 %i.rq, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.rr = zext i32 %i.ro to i64
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.rr ; 2 uses
  %i.rt = load i16, ptr %i.rs, align 2, !tbaa !78
  %i.ru = and i16 %i.rt, 8191
  %i.rv = icmp eq i16 %i.ru, 8191
  br i1 %i.rv, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i16 %i.rl, ptr %i.rs, align 2, !tbaa !78
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %i.rw = getelementptr inbounds nuw i8, ptr %.092131.i, i64 4
  %i.rx = call i64 @FT_Get_Next_Char(ptr noundef nonnull %i.qj, i64 noundef %i.rn, ptr noundef nonnull %i.a) #18
  %i.ry = load i32, ptr %i.a, align 4, !tbaa !70  ; 2 uses
  %i.rz = icmp eq i32 %i.ry, 0
  br i1 %i.rz, label %._crit_edge128.i, label %.lr.ph127.i

.lr.ph127.i:                                      ; preds = %bb.ax, %bb.bb
  %i.sa = phi i32 [ %i.sn, %bb.bb ], [ %i.ry, %bb.ax ] ; 2 uses
  %i.sb = phi i64 [ %i.sm, %bb.bb ], [ %i.rx, %bb.ax ] ; 2 uses
  %i.sc = load i32, ptr %i.rw, align 4, !tbaa !626
  %i.sd = zext i32 %i.sc to i64
  %i.se = icmp ugt i64 %i.sb, %i.sd
  br i1 %i.se, label %._crit_edge128.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph127.i
  %i.sf = load i32, ptr %i.q, align 8, !tbaa !171
  %i.sg = icmp ult i32 %i.sa, %i.sf
  br i1 %i.sg, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.sh = zext i32 %i.sa to i64
  %i.si = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.sh ; 2 uses
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !78
  %i.sk = and i16 %i.sj, 8191
  %i.sl = icmp eq i16 %i.sk, 8191
  br i1 %i.sl, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i16 %i.rl, ptr %i.si, align 2, !tbaa !78
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.sm = call i64 @FT_Get_Next_Char(ptr noundef nonnull %i.qj, i64 noundef %i.sb, ptr noundef nonnull %i.a) #18
  %i.sn = load i32, ptr %i.a, align 4, !tbaa !70  ; 2 uses
  %i.so = icmp eq i32 %i.sn, 0
  br i1 %i.so, label %._crit_edge128.i, label %.lr.ph127.i

._crit_edge128.i:                                 ; preds = %bb.bb, %.lr.ph127.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.sp = getelementptr inbounds nuw i8, ptr %.092131.i, i64 8 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !625 ; 2 uses
  %.not116.i = icmp eq i32 %i.sq, 0
  br i1 %.not116.i, label %._crit_edge134.i, label %bb.at, !llvm.loop !610

._crit_edge134.i:                                 ; preds = %._crit_edge128.i, %bb.as
  %i.sr = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !627 ; 2 uses
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !625 ; 2 uses
  %.not117139.i = icmp eq i32 %i.st, 0
  br i1 %.not117139.i, label %.loopexit123.i, label %.lr.ph142.i

.lr.ph142.i:                                      ; preds = %._crit_edge134.i, %._crit_edge137.i
  %i.su = phi i32 [ %i.uc, %._crit_edge137.i ], [ %i.st, %._crit_edge134.i ]
  %.1140.i = phi ptr [ %i.ub, %._crit_edge137.i ], [ %i.ss, %._crit_edge134.i ] ; 2 uses
  %i.sv = zext i32 %i.su to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.sw = call i32 @FT_Get_Char_Index(ptr noundef nonnull %i.qj, i64 noundef %i.sv) #18 ; 4 uses
  store i32 %i.sw, ptr %i.b, align 4, !tbaa !70
  %.not118.i = icmp eq i32 %i.sw, 0
  br i1 %.not118.i, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph142.i
  %i.sx = load i32, ptr %i.q, align 8, !tbaa !171
  %i.sy = icmp ult i32 %i.sw, %i.sx
  br i1 %i.sy, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.sz = zext i32 %i.sw to i64
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.sz ; 2 uses
  %i.tb = load i16, ptr %i.ta, align 2, !tbaa !78 ; 2 uses
  %i.tc = and i16 %i.tb, 8191
  %i.td = zext nneg i16 %i.tc to i64
  %i.te = icmp eq i64 %indvars.iv153.i, %i.td
  br i1 %i.te, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.tf = or i16 %i.tb, 16384
  store i16 %i.tf, ptr %i.ta, align 2, !tbaa !78
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %.lr.ph142.i
  %i.tg = getelementptr inbounds nuw i8, ptr %.1140.i, i64 4
  %i.th = call i64 @FT_Get_Next_Char(ptr noundef nonnull %i.qj, i64 noundef %i.sv, ptr noundef nonnull %i.b) #18
  %i.ti = load i32, ptr %i.b, align 4, !tbaa !70  ; 2 uses
  %i.tj = icmp eq i32 %i.ti, 0
  br i1 %i.tj, label %._crit_edge137.i, label %.lr.ph136.i
end_hunk_1
