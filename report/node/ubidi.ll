inline.NumInlined: 71
inline.NumDeleted: 17
begin_hunk_0_@ubidi_setPara_78:bb.a
  %.0.lcssa.i307 = phi i32 [ 0, %bb.fo ], [ %i.vr, %._crit_edge.loopexit.split.loop.exit.i314 ], [ %i.vm, %bb.fq ]
  %i.vs = add nsw i32 %i.vm, -1
  %spec.select.i308 = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i307, i32 %i.vs)
  %i.vt = sext i32 %spec.select.i308 to i64
  %i.vu = getelementptr inbounds [8 x i8], ptr %i.vi, i64 %i.vt
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  %i.vw = load i32, ptr %i.vv, align 4
  %i.vx = trunc i32 %i.vw to i8
  br label %bb.fr

bb.fr:                                            ; preds = %ubidi_getParaLevelAtIndex_78.exit315, %bb.fn
  %i.vy = phi i8 [ %i.vl, %bb.fn ], [ %i.vx, %ubidi_getParaLevelAtIndex_78.exit315 ]
  %i.vz = load i8, ptr %i.vg, align 1             ; 2 uses
  %. = tail call i8 @llvm.umax.i8(i8 %i.vy, i8 %i.vz)
  %.0230 = and i8 %., 1
  %i.wa = add nsw i32 %i.st, -1
  br label %bb.fs

bb.fs:                                            ; preds = %.loopexit345, %bb.fr
  %.0235 = phi i32 [ 0, %bb.fr ], [ %i.yc, %.loopexit345 ] ; 11 uses
  %.0233 = phi i8 [ %i.vz, %bb.fr ], [ %.1234, %.loopexit345 ] ; 4 uses
  %.1231 = phi i8 [ %.0230, %bb.fr ], [ %.2, %.loopexit345 ] ; 2 uses
  %i.wb = icmp sgt i32 %.0235, 0
  br i1 %i.wb, label %bb.ft, label %bb.gb

bb.ft:                                            ; preds = %bb.fs
  %i.wc = zext nneg i32 %.0235 to i64
  %i.wd = getelementptr i8, ptr %i.ss, i64 %i.wc
  %i.we = getelementptr i8, ptr %i.wd, i64 -1
  %i.wf = load i8, ptr %i.we, align 1
  %i.wg = icmp eq i8 %i.wf, 7
  br i1 %i.wg, label %bb.fu, label %bb.gb

bb.fu:                                            ; preds = %bb.ft
  %i.wh = load i8, ptr %i.gw, align 2
  %.not273 = icmp eq i8 %i.wh, 0
  br i1 %.not273, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.wi = load ptr, ptr %i.hj, align 8            ; 3 uses
  %i.wj = load i32, ptr %i.wi, align 4
  %i.wk = icmp slt i32 %.0235, %i.wj
  br i1 %i.wk, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.wl = load i8, ptr %i.gk, align 1
  br label %bb.ga

bb.fx:                                            ; preds = %bb.fv
  %i.wm = load i32, ptr %i.go, align 8            ; 4 uses
  %i.wn = icmp sgt i32 %i.wm, 0
  br i1 %i.wn, label %.lr.ph.i318, label %ubidi_getParaLevelAtIndex_78.exit324

.lr.ph.i318:                                      ; preds = %bb.fx
  %wide.trip.count.i319 = zext nneg i32 %i.wm to i64
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fz, %.lr.ph.i318
  %indvars.iv.i320 = phi i64 [ 0, %.lr.ph.i318 ], [ %indvars.iv.next.i321, %bb.fz ] ; 3 uses
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %indvars.iv.i320
  %i.wp = load i32, ptr %i.wo, align 4
  %i.wq = icmp slt i32 %.0235, %i.wp
  br i1 %i.wq, label %._crit_edge.loopexit.split.loop.exit.i323, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %indvars.iv.next.i321 = add nuw nsw i64 %indvars.iv.i320, 1 ; 2 uses
  %exitcond.not.i322 = icmp eq i64 %indvars.iv.next.i321, %wide.trip.count.i319
  br i1 %exitcond.not.i322, label %ubidi_getParaLevelAtIndex_78.exit324, label %bb.fy, !llvm.loop !5

._crit_edge.loopexit.split.loop.exit.i323:        ; preds = %bb.fy
  %i.wr = trunc nuw nsw i64 %indvars.iv.i320 to i32
  br label %ubidi_getParaLevelAtIndex_78.exit324

ubidi_getParaLevelAtIndex_78.exit324:             ; preds = %bb.fz, %bb.fx, %._crit_edge.loopexit.split.loop.exit.i323
  %.0.lcssa.i316 = phi i32 [ 0, %bb.fx ], [ %i.wr, %._crit_edge.loopexit.split.loop.exit.i323 ], [ %i.wm, %bb.fz ]
  %i.ws = add nsw i32 %i.wm, -1
  %spec.select.i317 = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i316, i32 %i.ws)
  %i.wt = sext i32 %spec.select.i317 to i64
  %i.wu = getelementptr inbounds [8 x i8], ptr %i.wi, i64 %i.wt
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 4
  %i.ww = load i32, ptr %i.wv, align 4
  %i.wx = trunc i32 %i.ww to i8
  br label %bb.ga

bb.ga:                                            ; preds = %ubidi_getParaLevelAtIndex_78.exit324, %bb.fw
  %i.wy = phi i8 [ %i.wl, %bb.fw ], [ %i.wx, %ubidi_getParaLevelAtIndex_78.exit324 ]
  %i.wz = and i8 %i.wy, 1
  br label %bb.gb

bb.gb:                                            ; preds = %bb.fs, %bb.ft, %bb.ga
  %.0232 = phi i8 [ %i.wz, %bb.ga ], [ %.1231, %bb.ft ], [ %.1231, %bb.fs ]
  %i.xa = add nsw i32 %.0235, 1                   ; 3 uses
  %i.xb = icmp slt i32 %i.xa, %i.st
  br i1 %i.xb, label %.lr.ph.preheader, label %.critedge285

.lr.ph.preheader:                                 ; preds = %bb.gb
  %i.xc = sext i32 %i.xa to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge8
  %indvars.iv = phi i64 [ %i.xc, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge8 ] ; 5 uses
  %.1236419 = phi i32 [ %.0235, %.lr.ph.preheader ], [ %i.xl, %.critedge8 ]
  %i.xd = getelementptr inbounds i8, ptr %i.vg, i64 %indvars.iv
  %i.xe = load i8, ptr %i.xd, align 1             ; 2 uses
  %i.xf = icmp eq i8 %i.xe, %.0233
  br i1 %i.xf, label %.critedge8, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph
  %i.xg = getelementptr inbounds i8, ptr %i.ss, i64 %indvars.iv
  %i.xh = load i8, ptr %i.xg, align 1
  %i.xi = zext nneg i8 %i.xh to i64
  %i.xj = shl nuw i64 1, %i.xi
  %i.xk = and i64 %i.xj, 382976
  %.not274 = icmp eq i64 %i.xk, 0
  br i1 %.not274, label %.critedge.loopexit, label %.critedge8

.critedge8:                                       ; preds = %.lr.ph, %bb.gc
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.xl = trunc nsw i64 %indvars.iv to i32
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.st, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge285, label %.lr.ph, !llvm.loop !20

.critedge285:                                     ; preds = %.critedge8, %bb.gb
  %.1236.lcssa = phi i32 [ %.0235, %bb.gb ], [ %i.wa, %.critedge8 ] ; 2 uses
  %.lcssa356 = phi i32 [ %i.xa, %bb.gb ], [ %i.st, %.critedge8 ] ; 2 uses
  %i.xm = load i8, ptr %i.gw, align 2
  %.not275 = icmp eq i8 %i.xm, 0
  br i1 %.not275, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %.critedge285
  %i.xn = load ptr, ptr %i.hj, align 8            ; 3 uses
  %i.xo = load i32, ptr %i.xn, align 4
  %.not276 = icmp sgt i32 %i.st, %i.xo
  br i1 %.not276, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.critedge285
  %i.xp = load i8, ptr %i.gk, align 1
  br label %.critedge

bb.gf:                                            ; preds = %bb.gd
  %i.xq = load i32, ptr %i.go, align 8            ; 4 uses
  %i.xr = icmp sgt i32 %i.xq, 0
  br i1 %i.xr, label %.lr.ph.i327, label %ubidi_getParaLevelAtIndex_78.exit333

.lr.ph.i327:                                      ; preds = %bb.gf
  %wide.trip.count.i328 = zext nneg i32 %i.xq to i64
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gh, %.lr.ph.i327
  %indvars.iv.i329 = phi i64 [ 0, %.lr.ph.i327 ], [ %indvars.iv.next.i330, %bb.gh ] ; 3 uses
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xn, i64 %indvars.iv.i329
  %i.xt = load i32, ptr %i.xs, align 4
  %.not = icmp sgt i32 %i.st, %i.xt
  br i1 %.not, label %bb.gh, label %._crit_edge.loopexit.split.loop.exit.i332

bb.gh:                                            ; preds = %bb.gg
  %indvars.iv.next.i330 = add nuw nsw i64 %indvars.iv.i329, 1 ; 2 uses
  %exitcond.not.i331 = icmp eq i64 %indvars.iv.next.i330, %wide.trip.count.i328
  br i1 %exitcond.not.i331, label %ubidi_getParaLevelAtIndex_78.exit333, label %bb.gg, !llvm.loop !5

._crit_edge.loopexit.split.loop.exit.i332:        ; preds = %bb.gg
  %i.xu = trunc nuw nsw i64 %indvars.iv.i329 to i32
  br label %ubidi_getParaLevelAtIndex_78.exit333

ubidi_getParaLevelAtIndex_78.exit333:             ; preds = %bb.gh, %bb.gf, %._crit_edge.loopexit.split.loop.exit.i332
  %.0.lcssa.i325 = phi i32 [ 0, %bb.gf ], [ %i.xu, %._crit_edge.loopexit.split.loop.exit.i332 ], [ %i.xq, %bb.gh ]
  %i.xv = add nsw i32 %i.xq, -1
  %spec.select.i326 = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i325, i32 %i.xv)
  %i.xw = sext i32 %spec.select.i326 to i64
  %i.xx = getelementptr inbounds [8 x i8], ptr %i.xn, i64 %i.xw
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 4
  %i.xz = load i32, ptr %i.xy, align 4
  %i.ya = trunc i32 %i.xz to i8
  br label %.critedge

.critedge.loopexit:                               ; preds = %bb.gc
  %i.yb = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.ge, %ubidi_getParaLevelAtIndex_78.exit333
  %.1236359 = phi i32 [ %.1236.lcssa, %ubidi_getParaLevelAtIndex_78.exit333 ], [ %.1236.lcssa, %bb.ge ], [ %.1236419, %.critedge.loopexit ]
  %i.yc = phi i32 [ %.lcssa356, %ubidi_getParaLevelAtIndex_78.exit333 ], [ %.lcssa356, %bb.ge ], [ %i.yb, %.critedge.loopexit ] ; 2 uses
  %i.yd = phi i1 [ false, %ubidi_getParaLevelAtIndex_78.exit333 ], [ false, %bb.ge ], [ true, %.critedge.loopexit ]
  %.1234 = phi i8 [ %i.ya, %ubidi_getParaLevelAtIndex_78.exit333 ], [ %i.xp, %bb.ge ], [ %i.xe, %.critedge.loopexit ] ; 3 uses
  %i.ye = and i8 %.0233, 127
  %i.yf = and i8 %.1234, 127
  %i.yg = icmp samesign ult i8 %i.ye, %i.yf
  %.1234..0233 = select i1 %i.yg, i8 %.1234, i8 %.0233
  %.2 = and i8 %.1234..0233, 1                    ; 2 uses
  %.not277 = icmp sgt i8 %.0233, -1
  br i1 %.not277, label %bb.gi, label %iter.check

iter.check:                                       ; preds = %.critedge
  %i.yh = sext i32 %.0235 to i64                  ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.1236359, i32 %.0235) ; 2 uses
  %i.yi = add i32 %smax, 1
  %i.yj = sub i32 %smax, %.0235                   ; 3 uses
  %i.yk = zext i32 %i.yj to i64
  %i.yl = add nuw nsw i64 %i.yk, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.yj, 3
  br i1 %min.iters.check, label %.preheader344.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check767 = icmp ult i32 %i.yj, 31
  br i1 %min.iters.check767, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.yl, 28
  %n.vec = and i64 %i.yl, 8589934560              ; 4 uses
  %i.ym = add nsw i64 %n.vec, %i.yh
  %invariant.gep = getelementptr i8, ptr %i.vg, i64 %i.yh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %gep, align 1
  %wide.load768 = load <16 x i8>, ptr %i.yn, align 1
  %i.yo = and <16 x i8> %wide.load, splat (i8 127)
  %i.yp = and <16 x i8> %wide.load768, splat (i8 127)
  store <16 x i8> %i.yo, ptr %gep, align 1
  store <16 x i8> %i.yp, ptr %i.yn, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.yq = icmp eq i64 %index.next, %n.vec
  br i1 %i.yq, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yl, %n.vec
  br i1 %cmp.n, label %.loopexit345, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader344.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec770 = and i64 %i.yl, 8589934588           ; 3 uses
  %i.yr = add nsw i64 %n.vec770, %i.yh
  %invariant.gep906 = getelementptr i8, ptr %i.vg, i64 %i.yh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index771 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next773, %vec.epilog.vector.body ] ; 2 uses
  %gep907 = getelementptr i8, ptr %invariant.gep906, i64 %index771 ; 2 uses
  %wide.load772 = load <4 x i8>, ptr %gep907, align 1
  %6 = and <4 x i8> %wide.load772, splat (i8 127)
  store <4 x i8> %6, ptr %gep907, align 1
  %index.next773 = add nuw i64 %index771, 4       ; 2 uses
  %i.ys = icmp eq i64 %index.next773, %n.vec770
  br i1 %i.ys, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n774 = icmp eq i64 %i.yl, %n.vec770
  br i1 %cmp.n774, label %.loopexit345, label %.preheader344.preheader

.preheader344.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv523.ph = phi i64 [ %i.yh, %iter.check ], [ %i.ym, %vec.epilog.iter.check ], [ %i.yr, %vec.epilog.middle.block ]
  br label %.preheader344

bb.gi:                                            ; preds = %.critedge
  tail call fastcc void @_ZL21resolveImplicitLevelsP5UBiDiiihh(ptr noundef %0, i32 noundef %.0235, i32 noundef %i.yc, i8 noundef zeroext %.0232, i8 noundef zeroext %.2)
  br label %.loopexit345

.preheader344:                                    ; preds = %.preheader344.preheader, %.preheader344
  %indvars.iv523 = phi i64 [ %indvars.iv.next524, %.preheader344 ], [ %indvars.iv523.ph, %.preheader344.preheader ] ; 2 uses
  %indvars.iv.next524 = add nsw i64 %indvars.iv523, 1 ; 2 uses
  %i.yt = getelementptr inbounds i8, ptr %i.vg, i64 %indvars.iv523 ; 2 uses
  %i.yu = load i8, ptr %i.yt, align 1
  %i.yv = and i8 %i.yu, 127
  store i8 %i.yv, ptr %i.yt, align 1
  %lftr.wideiv526 = trunc i64 %indvars.iv.next524 to i32
  %exitcond527.not = icmp eq i32 %i.yi, %lftr.wideiv526
  br i1 %exitcond527.not, label %.loopexit345, label %.preheader344, !llvm.loop !26

.loopexit345:                                     ; preds = %.preheader344, %middle.block, %vec.epilog.middle.block, %bb.gi
  br i1 %i.yd, label %bb.fs, label %.loopexit346, !llvm.loop !27

.loopexit346:                                     ; preds = %.loopexit345, %bb.fk
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.yx = load i32, ptr %i.yw, align 4            ; 2 uses
  %i.yy = icmp slt i32 %i.yx, 1
  br i1 %i.yy, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %.loopexit346
  store i32 %i.yx, ptr %5, align 4
  br label %bb.gv

bb.gk:                                            ; preds = %.loopexit346
  tail call fastcc void @_ZL14adjustWSLevelsP5UBiDi(ptr noundef %0)
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.ep, %bb.eo
  %i.yz = load i8, ptr %i.gw, align 2
  %.not279 = icmp eq i8 %i.yz, 0
  %.pre554 = load i32, ptr %i.ie, align 8         ; 4 uses
  %i.za = and i32 %.pre554, 1
  %.not280 = icmp eq i32 %i.za, 0
  %or.cond701 = select i1 %.not279, i1 true, i1 %.not280
  br i1 %or.cond701, label %.loopexit343, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.zb = load i32, ptr %i.l, align 4
  %.off = add i32 %i.zb, -5
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.preheader342, label %.loopexit343

.preheader342:                                    ; preds = %bb.gm
  %i.zc = load i32, ptr %i.go, align 8            ; 2 uses
  %i.zd = icmp sgt i32 %i.zc, 0
  br i1 %i.zd, label %.lr.ph427, label %.loopexit343

.lr.ph427:                                        ; preds = %.preheader342, %.loopexit341
  %i.ze = phi i32 [ %i.aag, %.loopexit341 ], [ %i.zc, %.preheader342 ] ; 3 uses
  %indvars.iv534 = phi i64 [ %indvars.iv.next535, %.loopexit341 ], [ 0, %.preheader342 ] ; 3 uses
  %i.zf = load ptr, ptr %i.hj, align 8
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %indvars.iv534 ; 3 uses
  %i.zh = load i32, ptr %i.zg, align 4            ; 3 uses
  %i.zi = add nsw i32 %i.zh, -1                   ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zg, i64 4
  %i.zk = load i32, ptr %i.zj, align 4
  %i.zl = and i32 %i.zk, 255
  %i.zm = icmp eq i32 %i.zl, 0
  br i1 %i.zm, label %.loopexit341, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph427
  %i.zn = icmp eq i64 %indvars.iv534, 0
  br i1 %i.zn, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.zo = getelementptr i8, ptr %i.zg, i64 -8
  %i.zp = load i32, ptr %i.zo, align 4
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gn, %bb.go
  %i.zq = phi i32 [ %i.zp, %bb.go ], [ 0, %bb.gn ] ; 2 uses
  %.not282422.not = icmp sgt i32 %i.zh, %i.zq
  br i1 %.not282422.not, label %.lr.ph424.preheader, label %.loopexit341

.lr.ph424.preheader:                              ; preds = %bb.gp
  %i.zr = sext i32 %i.zh to i64
  %i.zs = add nsw i64 %i.zr, -1                   ; 2 uses
  %i.zt = sext i32 %i.zq to i64
  br label %.lr.ph424

.lr.ph424:                                        ; preds = %.lr.ph424.preheader, %bb.gr
  %indvars.iv528 = phi i64 [ %i.zs, %.lr.ph424.preheader ], [ %indvars.iv.next529, %bb.gr ] ; 4 uses
  %i.zu = getelementptr inbounds i8, ptr %i.ss, i64 %indvars.iv528
  %i.zv = load i8, ptr %i.zu, align 1             ; 2 uses
  %i.zw = icmp eq i8 %i.zv, 0
  br i1 %i.zw, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %.lr.ph424
  %i.zx = trunc nsw i64 %indvars.iv528 to i32
  %i.zy = icmp sgt i32 %i.zi, %i.zx
  br i1 %i.zy, label %.preheader, label %.loopexit340

.preheader:                                       ; preds = %bb.gq, %.preheader
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %.preheader ], [ %i.zs, %bb.gq ] ; 3 uses
  %i.zz = getelementptr inbounds i8, ptr %i.ss, i64 %indvars.iv531
  %i.aaa = load i8, ptr %i.zz, align 1
  %i.aab = icmp eq i8 %i.aaa, 7
  %indvars.iv.next532 = add nsw i64 %indvars.iv531, -1
  br i1 %i.aab, label %.preheader, label %.loopexit340.loopexit, !llvm.loop !28

.loopexit340.loopexit:                            ; preds = %.preheader
  %i.aac = trunc nsw i64 %indvars.iv531 to i32
  br label %.loopexit340

.loopexit340:                                     ; preds = %.loopexit340.loopexit, %bb.gq
  %.1 = phi i32 [ %i.zi, %bb.gq ], [ %i.aac, %.loopexit340.loopexit ]
  tail call fastcc void @_ZL8addPointP5UBiDiii(ptr noundef %0, i32 noundef %.1, i32 noundef 4)
  %.pre552 = load i32, ptr %i.go, align 8
  br label %.loopexit341

bb.gr:                                            ; preds = %.lr.ph424
  %i.aad = zext nneg i8 %i.zv to i64
  %i.aae = shl nuw i64 1, %i.aad
  %i.aaf = and i64 %i.aae, 8194
  %.not283 = icmp ne i64 %i.aaf, 0
  %indvars.iv.next529 = add nsw i64 %indvars.iv528, -1
  %.not282 = icmp sle i64 %indvars.iv528, %i.zt
  %or.cond452 = or i1 %.not283, %.not282
  br i1 %or.cond452, label %.loopexit341, label %.lr.ph424, !llvm.loop !29

.loopexit341:                                     ; preds = %bb.gr, %bb.gp, %.loopexit340, %.lr.ph427
  %i.aag = phi i32 [ %i.ze, %.lr.ph427 ], [ %i.ze, %bb.gp ], [ %.pre552, %.loopexit340 ], [ %i.ze, %bb.gr ] ; 2 uses
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %i.aah = sext i32 %i.aag to i64
  %i.aai = icmp slt i64 %indvars.iv.next535, %i.aah
  br i1 %i.aai, label %.lr.ph427, label %.loopexit343.loopexit, !llvm.loop !30

.loopexit343.loopexit:                            ; preds = %.loopexit341
  %.pre553 = load i32, ptr %i.ie, align 8
  br label %.loopexit343

.loopexit343:                                     ; preds = %.loopexit343.loopexit, %.preheader342, %bb.gm, %bb.gl
  %i.aaj = phi i32 [ %.pre553, %.loopexit343.loopexit ], [ %.pre554, %.preheader342 ], [ %.pre554, %bb.gm ], [ %.pre554, %bb.gl ]
  %i.aak = and i32 %i.aaj, 2
  %.not281 = icmp eq i32 %i.aak, 0
  br i1 %.not281, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %.loopexit343
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.aam = load i32, ptr %i.aal, align 8
  %i.aan = load i32, ptr %i.gh, align 8
  %i.aao = sub nsw i32 %i.aan, %i.aam
  br label %bb.gu

bb.gt:                                            ; preds = %.loopexit343
  %i.aap = load i32, ptr %i.gs, align 4
  %i.aaq = load i32, ptr %i.gh, align 8
  %i.aar = add nsw i32 %i.aaq, %i.aap
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %storemerge = phi i32 [ %i.aar, %bb.gt ], [ %i.aao, %bb.gs ]
  store i32 %storemerge, ptr %i.gh, align 8
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.aas, align 8
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.aat, align 8
  store ptr %0, ptr %0, align 8
  br label %bb.gv

bb.gv:                                            ; preds = %bb.ef, %bb.ed, %bb.a, %bb.b, %bb.gu, %bb.gj, %bb.em, %bb.ee, %bb.ea, %bb.dz, %bb.ar, %_ZL15setParaRunsOnlyP5UBiDiPKDsihP10UErrorCode.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 -1, 3) i32 @_ZL21resolveExplicitLevelsP5UBiDiP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.BracketData, align 8        ; 16 uses
  %i.a = alloca [127 x i16], align 16             ; 10 uses
  %3 = alloca %struct.BracketData, align 8        ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8              ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 142 ; 3 uses
  %i.m = load i8, ptr %i.l, align 2
  %.not = icmp eq i8 %i.m, 0                      ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_0
begin_hunk_1_@_ZL18processPropertySeqP5UBiDiP8LevStatehii:bb.a
  br i1 %i.bk, label %bb.k, label %_ZL8addPointP5UBiDiii.exit

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 8            ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.l, label %._crit_edge336

._crit_edge336:                                   ; preds = %bb.k
  %.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.pre.i.pre = load ptr, ptr %.phi.trans.insert.i.phi.trans.insert, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bo = tail call noalias dereferenceable_or_null(80) ptr @uprv_malloc_78(i64 noundef 80) #17 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.bo, ptr %i.bp, align 8
  %i.bq = icmp eq ptr %i.bo, null
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 428
  store i32 7, ptr %i.br, align 4
  br label %_ZL8addPointP5UBiDiii.exit

bb.n:                                             ; preds = %bb.l
  store i32 10, ptr %i.bl, align 8
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge336, %bb.n
  %.pre.i = phi ptr [ %i.bo, %bb.n ], [ %.pre.i.pre, %._crit_edge336 ] ; 3 uses
  %i.bs = phi i32 [ 10, %bb.n ], [ %i.bm, %._crit_edge336 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 4 uses
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %.not.i = icmp slt i32 %i.bu, %i.bs
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  br i1 %.not.i, label %._crit_edge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = shl nsw i32 %i.bs, 1
  %i.bw = sext i32 %i.bv to i64
  %i.bx = shl nsw i64 %i.bw, 3
  %i.by = tail call ptr @uprv_realloc_78(ptr noundef %.pre.i, i64 noundef %i.bx) #18 ; 3 uses
  store ptr %i.by, ptr %.phi.trans.insert.i, align 8
  %.not23.i = icmp eq ptr %i.by, null
  br i1 %.not23.i, label %.thread.i, label %bb.q

.thread.i:                                        ; preds = %bb.p
  store ptr %.pre.i, ptr %.phi.trans.insert.i, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 428
  store i32 7, ptr %i.bz, align 4
  br label %_ZL8addPointP5UBiDiii.exit

bb.q:                                             ; preds = %bb.p
  %i.ca = load i32, ptr %i.bl, align 8
  %i.cb = shl nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bl, align 8
  %.pre24.i = load i32, ptr %i.bt, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.q, %bb.o
  %i.cc = phi i32 [ %.pre24.i, %bb.q ], [ %i.bu, %bb.o ]
  %i.cd = phi ptr [ %i.by, %bb.q ], [ %.pre.i, %bb.o ]
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  store i32 %i.bj, ptr %i.cf, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.cg = load i32, ptr %i.bt, align 4
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.bt, align 4
  br label %_ZL8addPointP5UBiDiii.exit

_ZL8addPointP5UBiDiii.exit:                       ; preds = %._crit_edge.i, %.thread.i, %bb.m, %bb.j
  store i32 -1, ptr %i.bi, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZL8addPointP5UBiDiii.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 4            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8
  %.not200 = icmp sgt i32 %i.cm, %i.co
  br i1 %.not200, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZL8addPointP5UBiDiii.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 -1, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = and i8 %i.cr, 1
  %.not201 = icmp eq i8 %i.cs, 0
  br i1 %.not201, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load i32, ptr %i.ct, align 8            ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  %spec.select = select i1 %i.cv, i32 %i.cu, i32 %3
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0186 = phi i32 [ %3, %bb.s ], [ %spec.select, %bb.t ] ; 2 uses
  %i.cw = icmp eq i8 %2, 5
  br i1 %i.cw, label %bb.v, label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load i32, ptr %i.ci, align 8            ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.w, label %._crit_edge339

._crit_edge339:                                   ; preds = %bb.v
  %.phi.trans.insert.i222.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.pre.i223.pre = load ptr, ptr %.phi.trans.insert.i222.phi.trans.insert, align 8
  br label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cz = tail call noalias dereferenceable_or_null(80) ptr @uprv_malloc_78(i64 noundef 80) #17 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.cz, ptr %i.da, align 8
  %i.db = icmp eq ptr %i.cz, null
  br i1 %i.db, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 428
  store i32 7, ptr %i.dc, align 4
  br label %_ZL8addPointP5UBiDiii.exit229

bb.y:                                             ; preds = %bb.w
  store i32 10, ptr %i.ci, align 8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge339, %bb.y
  %.pre.i223 = phi ptr [ %i.cz, %bb.y ], [ %.pre.i223.pre, %._crit_edge339 ] ; 3 uses
  %i.dd = phi i32 [ 10, %bb.y ], [ %i.cx, %._crit_edge339 ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 4 uses
  %i.df = load i32, ptr %i.de, align 4            ; 2 uses
  %.not.i221 = icmp slt i32 %i.df, %i.dd
  %.phi.trans.insert.i222 = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  br i1 %.not.i221, label %._crit_edge.i226, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = shl nsw i32 %i.dd, 1
  %i.dh = sext i32 %i.dg to i64
  %i.di = shl nsw i64 %i.dh, 3
  %i.dj = tail call ptr @uprv_realloc_78(ptr noundef %.pre.i223, i64 noundef %i.di) #18 ; 3 uses
  store ptr %i.dj, ptr %.phi.trans.insert.i222, align 8
  %.not23.i224 = icmp eq ptr %i.dj, null
  br i1 %.not23.i224, label %.thread.i228, label %bb.ab

.thread.i228:                                     ; preds = %bb.aa
  store ptr %.pre.i223, ptr %.phi.trans.insert.i222, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 428
  store i32 7, ptr %i.dk, align 4
  br label %_ZL8addPointP5UBiDiii.exit229

bb.ab:                                            ; preds = %bb.aa
  %i.dl = load i32, ptr %i.ci, align 8
  %i.dm = shl nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.ci, align 8
  %.pre24.i225 = load i32, ptr %i.de, align 4
  br label %._crit_edge.i226

._crit_edge.i226:                                 ; preds = %bb.ab, %bb.z
  %i.dn = phi i32 [ %.pre24.i225, %bb.ab ], [ %i.df, %bb.z ]
  %i.do = phi ptr [ %i.dj, %bb.ab ], [ %.pre.i223, %bb.z ]
  %i.dp = sext i32 %i.dn to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dp ; 2 uses
  store i32 %3, ptr %i.dq, align 4
  %.sroa.4.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i227, align 4
  %i.dr = load i32, ptr %i.de, align 4
  %i.ds = add nsw i32 %i.dr, 1
  store i32 %i.ds, ptr %i.de, align 4
  br label %_ZL8addPointP5UBiDiii.exit229

_ZL8addPointP5UBiDiii.exit229:                    ; preds = %bb.x, %.thread.i228, %._crit_edge.i226
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i32 %i.du, ptr %i.dv, align 8
  br label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit

bb.ac:                                            ; preds = %bb.r
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8            ; 3 uses
  %.0296 = add nsw i32 %i.dx, 1
  %i.dy = icmp slt i32 %.0296, %3
  br i1 %i.dy, label %iter.check500, label %._crit_edge300

iter.check500:                                    ; preds = %bb.ac
  %i.dz = sext i32 %i.dx to i64
  %i.ea = add nsw i64 %i.dz, 1                    ; 5 uses
  %i.eb = add i32 %3, -2
  %i.ec = sub i32 %i.eb, %i.dx                    ; 3 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 5 uses
  %min.iters.check486 = icmp ult i32 %i.ec, 3
  br i1 %min.iters.check486, label %.lr.ph299.preheader, label %vector.main.loop.iter.check487

vector.main.loop.iter.check487:                   ; preds = %iter.check500
  %min.iters.check488 = icmp ult i32 %i.ec, 31
  br i1 %min.iters.check488, label %vec.epilog.ph504, label %vector.ph489

vector.ph489:                                     ; preds = %vector.main.loop.iter.check487
  %n.mod.vf490 = and i64 %i.ee, 28
  %n.vec491 = and i64 %i.ee, 8589934560           ; 4 uses
  %i.ef = add nsw i64 %i.ea, %n.vec491
  %i.eg = getelementptr i8, ptr %i.e, i64 %i.ea
  br label %vector.body492

vector.body492:                                   ; preds = %vector.body492, %vector.ph489
  %index493 = phi i64 [ 0, %vector.ph489 ], [ %index.next496, %vector.body492 ] ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 %index493 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %wide.load494 = load <16 x i8>, ptr %i.eh, align 1
  %wide.load495 = load <16 x i8>, ptr %i.ei, align 1
  %i.ej = and <16 x i8> %wide.load494, splat (i8 -2)
  %i.ek = and <16 x i8> %wide.load495, splat (i8 -2)
  %i.el = add <16 x i8> %i.ej, splat (i8 -2)
  %i.em = add <16 x i8> %i.ek, splat (i8 -2)
  store <16 x i8> %i.el, ptr %i.eh, align 1
  store <16 x i8> %i.em, ptr %i.ei, align 1
  %index.next496 = add nuw i64 %index493, 32      ; 2 uses
  %i.en = icmp eq i64 %index.next496, %n.vec491
  br i1 %i.en, label %middle.block497, label %vector.body492, !llvm.loop !56

middle.block497:                                  ; preds = %vector.body492
  %cmp.n498 = icmp eq i64 %i.ee, %n.vec491
  br i1 %cmp.n498, label %._crit_edge300.loopexit, label %vec.epilog.iter.check502

vec.epilog.iter.check502:                         ; preds = %middle.block497
  %min.epilog.iters.check503 = icmp eq i64 %n.mod.vf490, 0
  br i1 %min.epilog.iters.check503, label %.lr.ph299.preheader, label %vec.epilog.ph504, !prof !24

vec.epilog.ph504:                                 ; preds = %vector.main.loop.iter.check487, %vec.epilog.iter.check502
  %vec.epilog.resume.val499 = phi i64 [ %n.vec491, %vec.epilog.iter.check502 ], [ 0, %vector.main.loop.iter.check487 ]
  %n.vec506 = and i64 %i.ee, 8589934588           ; 3 uses
  %i.eo = add nsw i64 %i.ea, %n.vec506
  %i.ep = getelementptr i8, ptr %i.e, i64 %i.ea
  br label %vec.epilog.vector.body507

vec.epilog.vector.body507:                        ; preds = %vec.epilog.vector.body507, %vec.epilog.ph504
  %index508 = phi i64 [ %vec.epilog.resume.val499, %vec.epilog.ph504 ], [ %index.next510, %vec.epilog.vector.body507 ] ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 %index508 ; 2 uses
  %wide.load509 = load <4 x i8>, ptr %i.eq, align 1
  %5 = and <4 x i8> %wide.load509, splat (i8 -2)
  %6 = add <4 x i8> %5, splat (i8 -2)
  store <4 x i8> %6, ptr %i.eq, align 1
  %index.next510 = add nuw i64 %index508, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next510, %n.vec506
  br i1 %i.er, label %vec.epilog.middle.block511, label %vec.epilog.vector.body507, !llvm.loop !57

vec.epilog.middle.block511:                       ; preds = %vec.epilog.vector.body507
  %cmp.n512 = icmp eq i64 %i.ee, %n.vec506
  br i1 %cmp.n512, label %._crit_edge300.loopexit, label %.lr.ph299.preheader

.lr.ph299.preheader:                              ; preds = %iter.check500, %vec.epilog.iter.check502, %vec.epilog.middle.block511
  %indvars.iv320.ph = phi i64 [ %i.ea, %iter.check500 ], [ %i.ef, %vec.epilog.iter.check502 ], [ %i.eo, %vec.epilog.middle.block511 ]
  br label %.lr.ph299

.lr.ph299:                                        ; preds = %.lr.ph299.preheader, %.lr.ph299
  %indvars.iv320 = phi i64 [ %indvars.iv.next321, %.lr.ph299 ], [ %indvars.iv320.ph, %.lr.ph299.preheader ] ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %i.e, i64 %indvars.iv320 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = and i8 %i.et, -2
  %i.ev = add i8 %i.eu, -2
  store i8 %i.ev, ptr %i.es, align 1
  %indvars.iv.next321 = add nsw i64 %indvars.iv320, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next321 to i32
  %exitcond323.not = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond323.not, label %._crit_edge300.loopexit, label %.lr.ph299, !llvm.loop !58

._crit_edge300.loopexit:                          ; preds = %.lr.ph299, %vec.epilog.middle.block511, %middle.block497
  %.pre338 = load i32, ptr %i.cl, align 4
  br label %._crit_edge300

._crit_edge300:                                   ; preds = %._crit_edge300.loopexit, %bb.ac
  %i.ew = phi i32 [ %.pre338, %._crit_edge300.loopexit ], [ %i.cm, %bb.ac ]
  store i32 %i.ew, ptr %i.cn, align 8
  store i32 -1, ptr %i.dw, align 8
  %i.ex = icmp eq i8 %2, 5
  br i1 %i.ex, label %bb.ad, label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit

bb.ad:                                            ; preds = %._crit_edge300
  tail call fastcc void @_ZL8addPointP5UBiDiii(ptr noundef %0, i32 noundef %3, i32 noundef 1)
  %i.ey = load i32, ptr %i.cl, align 4
  store i32 %i.ey, ptr %i.cn, align 8
  br label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit

bb.ae:                                            ; preds = %bb.a
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.fd = load i32, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 %i.fd, ptr %i.fe, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 -1, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 -1, ptr %i.fg, align 4
  %i.fh = add nsw i32 %4, -1
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.fh, ptr %i.fi, align 8
  br label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit

bb.ah:                                            ; preds = %bb.a
  %i.fj = icmp eq i8 %2, 3
  br i1 %i.fj, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = sext i32 %3 to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = icmp eq i8 %i.fo, 5
  br i1 %i.fp, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.fr = load i32, ptr %i.fq, align 4
  %.not199 = icmp eq i32 %i.fr, 6
  br i1 %.not199, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4            ; 3 uses
  %i.fu = icmp eq i32 %i.ft, -1
  br i1 %i.fu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fv = add nsw i32 %4, -1
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.fv, ptr %i.fw, align 8
  br label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit

bb.am:                                            ; preds = %bb.ak
  %i.fx = icmp sgt i32 %i.ft, -1
  br i1 %i.fx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @_ZL8addPointP5UBiDiii(ptr noundef %0, i32 noundef %i.ft, i32 noundef 1)
  store i32 -2, ptr %i.fs, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  tail call fastcc void @_ZL8addPointP5UBiDiii(ptr noundef %0, i32 noundef %3, i32 noundef 1)
  br label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit

bb.ap:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = icmp eq i32 %i.fz, -1
  br i1 %i.ga, label %bb.aq, label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit

bb.aq:                                            ; preds = %bb.ap
  store i32 %3, ptr %i.fy, align 4
  br label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit

bb.ar:                                            ; preds = %bb.a
  %i.gb = add nsw i32 %4, -1
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.gb, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 -1, ptr %i.gd, align 8
  br label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit

.preheader280:                                    ; preds = %bb.as
  %i.ge = icmp sgt i32 %i.gj, 0
  br i1 %i.ge, label %bb.as, label %.critedge204, !llvm.loop !59

bb.as:                                            ; preds = %.lr.ph396, %.preheader280
  %indvars.iv316395 = phi i64 [ %i.y, %.lr.ph396 ], [ %i.gf, %.preheader280 ]
  %i.gf = add nsw i64 %indvars.iv316395, -1       ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = and i8 %i.gh, 1
  %.not198 = icmp eq i8 %i.gi, 0
  %i.gj = trunc i64 %i.gf to i32                  ; 2 uses
  br i1 %.not198, label %.preheader280, label %.critedge, !llvm.loop !59

.critedge:                                        ; preds = %bb.as
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %i.gl = load i32, ptr %i.gk, align 8            ; 2 uses
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.at, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.phi.trans.insert.i231.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.pre.i232.pre = load ptr, ptr %.phi.trans.insert.i231.phi.trans.insert, align 8
  br label %bb.aw

bb.at:                                            ; preds = %.critedge
  %i.gn = tail call noalias dereferenceable_or_null(80) ptr @uprv_malloc_78(i64 noundef 80) #17 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.gn, ptr %i.go, align 8
  %i.gp = icmp eq ptr %i.gn, null
  br i1 %i.gp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 428
  store i32 7, ptr %i.gq, align 4
  br label %_ZL8addPointP5UBiDiii.exit238

bb.av:                                            ; preds = %bb.at
  store i32 10, ptr %i.gk, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %.critedge._crit_edge, %bb.av
  %.pre.i232 = phi ptr [ %i.gn, %bb.av ], [ %.pre.i232.pre, %.critedge._crit_edge ] ; 3 uses
  %i.gr = phi i32 [ 10, %bb.av ], [ %i.gl, %.critedge._crit_edge ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 4 uses
  %i.gt = load i32, ptr %i.gs, align 4            ; 2 uses
  %.not.i230 = icmp slt i32 %i.gt, %i.gr
  %.phi.trans.insert.i231 = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  br i1 %.not.i230, label %._crit_edge.i235, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gu = shl nsw i32 %i.gr, 1
  %i.gv = sext i32 %i.gu to i64
  %i.gw = shl nsw i64 %i.gv, 3
  %i.gx = tail call ptr @uprv_realloc_78(ptr noundef %.pre.i232, i64 noundef %i.gw) #18 ; 3 uses
  store ptr %i.gx, ptr %.phi.trans.insert.i231, align 8
  %.not23.i233 = icmp eq ptr %i.gx, null
  br i1 %.not23.i233, label %.thread.i237, label %bb.ay

.thread.i237:                                     ; preds = %bb.ax
  store ptr %.pre.i232, ptr %.phi.trans.insert.i231, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 428
  store i32 7, ptr %i.gy, align 4
  br label %_ZL8addPointP5UBiDiii.exit238

bb.ay:                                            ; preds = %bb.ax
  %i.gz = load i32, ptr %i.gk, align 8
  %i.ha = shl nsw i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gk, align 8
  %.pre24.i234 = load i32, ptr %i.gs, align 4
  br label %._crit_edge.i235

._crit_edge.i235:                                 ; preds = %bb.ay, %bb.aw
  %i.hb = phi i32 [ %.pre24.i234, %bb.ay ], [ %i.gt, %bb.aw ]
  %i.hc = phi ptr [ %i.gx, %bb.ay ], [ %.pre.i232, %bb.aw ]
end_hunk_1
begin_hunk_2_@_ZL18processPropertySeqP5UBiDiP8LevStatehii:bb.a
  %i.me = extractelement <16 x i1> %i.kr, i64 13
  br i1 %i.me, label %pred.store.if423, label %pred.store.continue424

pred.store.if423:                                 ; preds = %pred.store.continue422
  %i.mf = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.mg = getelementptr i8, ptr %i.mf, i64 13
  store i8 %i.kh, ptr %i.mg, align 1
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %pred.store.continue422
  %i.mh = extractelement <16 x i1> %i.kr, i64 14
  br i1 %i.mh, label %pred.store.if425, label %pred.store.continue426

pred.store.if425:                                 ; preds = %pred.store.continue424
  %i.mi = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.mj = getelementptr i8, ptr %i.mi, i64 14
  store i8 %i.kh, ptr %i.mj, align 1
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %i.mk = extractelement <16 x i1> %i.kr, i64 15
  br i1 %i.mk, label %pred.store.if427, label %pred.store.continue428

pred.store.if427:                                 ; preds = %pred.store.continue426
  %i.ml = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.mm = getelementptr i8, ptr %i.ml, i64 15
  store i8 %i.kh, ptr %i.mm, align 1
  br label %pred.store.continue428

pred.store.continue428:                           ; preds = %pred.store.if427, %pred.store.continue426
  %i.mn = extractelement <16 x i1> %i.ks, i64 0
  br i1 %i.mn, label %pred.store.if429, label %pred.store.continue430

pred.store.if429:                                 ; preds = %pred.store.continue428
  %i.mo = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.mp = getelementptr i8, ptr %i.mo, i64 16
  store i8 %i.kh, ptr %i.mp, align 1
  br label %pred.store.continue430

pred.store.continue430:                           ; preds = %pred.store.if429, %pred.store.continue428
  %i.mq = extractelement <16 x i1> %i.ks, i64 1
  br i1 %i.mq, label %pred.store.if431, label %pred.store.continue432

pred.store.if431:                                 ; preds = %pred.store.continue430
  %i.mr = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.ms = getelementptr i8, ptr %i.mr, i64 17
  store i8 %i.kh, ptr %i.ms, align 1
  br label %pred.store.continue432

pred.store.continue432:                           ; preds = %pred.store.if431, %pred.store.continue430
  %i.mt = extractelement <16 x i1> %i.ks, i64 2
  br i1 %i.mt, label %pred.store.if433, label %pred.store.continue434

pred.store.if433:                                 ; preds = %pred.store.continue432
  %i.mu = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.mv = getelementptr i8, ptr %i.mu, i64 18
  store i8 %i.kh, ptr %i.mv, align 1
  br label %pred.store.continue434

pred.store.continue434:                           ; preds = %pred.store.if433, %pred.store.continue432
  %i.mw = extractelement <16 x i1> %i.ks, i64 3
  br i1 %i.mw, label %pred.store.if435, label %pred.store.continue436

pred.store.if435:                                 ; preds = %pred.store.continue434
  %i.mx = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.my = getelementptr i8, ptr %i.mx, i64 19
  store i8 %i.kh, ptr %i.my, align 1
  br label %pred.store.continue436

pred.store.continue436:                           ; preds = %pred.store.if435, %pred.store.continue434
  %i.mz = extractelement <16 x i1> %i.ks, i64 4
  br i1 %i.mz, label %pred.store.if437, label %pred.store.continue438

pred.store.if437:                                 ; preds = %pred.store.continue436
  %i.na = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.nb = getelementptr i8, ptr %i.na, i64 20
  store i8 %i.kh, ptr %i.nb, align 1
  br label %pred.store.continue438

pred.store.continue438:                           ; preds = %pred.store.if437, %pred.store.continue436
  %i.nc = extractelement <16 x i1> %i.ks, i64 5
  br i1 %i.nc, label %pred.store.if439, label %pred.store.continue440

pred.store.if439:                                 ; preds = %pred.store.continue438
  %i.nd = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.ne = getelementptr i8, ptr %i.nd, i64 21
  store i8 %i.kh, ptr %i.ne, align 1
  br label %pred.store.continue440

pred.store.continue440:                           ; preds = %pred.store.if439, %pred.store.continue438
  %i.nf = extractelement <16 x i1> %i.ks, i64 6
  br i1 %i.nf, label %pred.store.if441, label %pred.store.continue442

pred.store.if441:                                 ; preds = %pred.store.continue440
  %i.ng = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.nh = getelementptr i8, ptr %i.ng, i64 22
  store i8 %i.kh, ptr %i.nh, align 1
  br label %pred.store.continue442

pred.store.continue442:                           ; preds = %pred.store.if441, %pred.store.continue440
  %i.ni = extractelement <16 x i1> %i.ks, i64 7
  br i1 %i.ni, label %pred.store.if443, label %pred.store.continue444

pred.store.if443:                                 ; preds = %pred.store.continue442
  %i.nj = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.nk = getelementptr i8, ptr %i.nj, i64 23
  store i8 %i.kh, ptr %i.nk, align 1
  br label %pred.store.continue444

pred.store.continue444:                           ; preds = %pred.store.if443, %pred.store.continue442
  %i.nl = extractelement <16 x i1> %i.ks, i64 8
  br i1 %i.nl, label %pred.store.if445, label %pred.store.continue446

pred.store.if445:                                 ; preds = %pred.store.continue444
  %i.nm = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.nn = getelementptr i8, ptr %i.nm, i64 24
  store i8 %i.kh, ptr %i.nn, align 1
  br label %pred.store.continue446

pred.store.continue446:                           ; preds = %pred.store.if445, %pred.store.continue444
  %i.no = extractelement <16 x i1> %i.ks, i64 9
  br i1 %i.no, label %pred.store.if447, label %pred.store.continue448

pred.store.if447:                                 ; preds = %pred.store.continue446
  %i.np = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.nq = getelementptr i8, ptr %i.np, i64 25
  store i8 %i.kh, ptr %i.nq, align 1
  br label %pred.store.continue448

pred.store.continue448:                           ; preds = %pred.store.if447, %pred.store.continue446
  %i.nr = extractelement <16 x i1> %i.ks, i64 10
  br i1 %i.nr, label %pred.store.if449, label %pred.store.continue450

pred.store.if449:                                 ; preds = %pred.store.continue448
  %i.ns = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.nt = getelementptr i8, ptr %i.ns, i64 26
  store i8 %i.kh, ptr %i.nt, align 1
  br label %pred.store.continue450

pred.store.continue450:                           ; preds = %pred.store.if449, %pred.store.continue448
  %i.nu = extractelement <16 x i1> %i.ks, i64 11
  br i1 %i.nu, label %pred.store.if451, label %pred.store.continue452

pred.store.if451:                                 ; preds = %pred.store.continue450
  %i.nv = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.nw = getelementptr i8, ptr %i.nv, i64 27
  store i8 %i.kh, ptr %i.nw, align 1
  br label %pred.store.continue452

pred.store.continue452:                           ; preds = %pred.store.if451, %pred.store.continue450
  %i.nx = extractelement <16 x i1> %i.ks, i64 12
  br i1 %i.nx, label %pred.store.if453, label %pred.store.continue454

pred.store.if453:                                 ; preds = %pred.store.continue452
  %i.ny = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.nz = getelementptr i8, ptr %i.ny, i64 28
  store i8 %i.kh, ptr %i.nz, align 1
  br label %pred.store.continue454

pred.store.continue454:                           ; preds = %pred.store.if453, %pred.store.continue452
  %i.oa = extractelement <16 x i1> %i.ks, i64 13
  br i1 %i.oa, label %pred.store.if455, label %pred.store.continue456

pred.store.if455:                                 ; preds = %pred.store.continue454
  %i.ob = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.oc = getelementptr i8, ptr %i.ob, i64 29
  store i8 %i.kh, ptr %i.oc, align 1
  br label %pred.store.continue456

pred.store.continue456:                           ; preds = %pred.store.if455, %pred.store.continue454
  %i.od = extractelement <16 x i1> %i.ks, i64 14
  br i1 %i.od, label %pred.store.if457, label %pred.store.continue458

pred.store.if457:                                 ; preds = %pred.store.continue456
  %i.oe = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.of = getelementptr i8, ptr %i.oe, i64 30
  store i8 %i.kh, ptr %i.of, align 1
  br label %pred.store.continue458

pred.store.continue458:                           ; preds = %pred.store.if457, %pred.store.continue456
  %i.og = extractelement <16 x i1> %i.ks, i64 15
  br i1 %i.og, label %pred.store.if459, label %pred.store.continue460

pred.store.if459:                                 ; preds = %pred.store.continue458
  %i.oh = getelementptr i8, ptr %i.e, i64 %i.ko
  %i.oi = getelementptr i8, ptr %i.oh, i64 31
  store i8 %i.kh, ptr %i.oi, align 1
  br label %pred.store.continue460

pred.store.continue460:                           ; preds = %pred.store.if459, %pred.store.continue458
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.oj = icmp eq i64 %index.next, %n.vec
  br i1 %i.oj, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %pred.store.continue460
  %cmp.n = icmp eq i64 %i.km, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph295.preheader, label %vec.epilog.ph, !prof !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec462 = and i64 %i.km, -8                   ; 3 uses
  %i.ok = add nsw i64 %n.vec462, %i.kl
  %broadcast.splatinsert463 = insertelement <8 x i8> poison, i8 %i.kh, i64 0
  %broadcast.splat464 = shufflevector <8 x i8> %broadcast.splatinsert463, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue482, %vec.epilog.ph
  %index465 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next483, %pred.store.continue482 ] ; 2 uses
  %i.ol = add i64 %index465, %i.kl                ; 8 uses
  %i.om = getelementptr inbounds i8, ptr %i.e, i64 %i.ol ; 2 uses
  %wide.load466 = load <8 x i8>, ptr %i.om, align 1
  %i.on = icmp ult <8 x i8> %wide.load466, %broadcast.splat464 ; 8 uses
  %i.oo = extractelement <8 x i1> %i.on, i64 0
  br i1 %i.oo, label %pred.store.if467, label %pred.store.continue468

pred.store.if467:                                 ; preds = %vec.epilog.vector.body
  store i8 %i.kh, ptr %i.om, align 1
  br label %pred.store.continue468

pred.store.continue468:                           ; preds = %pred.store.if467, %vec.epilog.vector.body
  %i.op = extractelement <8 x i1> %i.on, i64 1
  br i1 %i.op, label %pred.store.if469, label %pred.store.continue470

pred.store.if469:                                 ; preds = %pred.store.continue468
  %i.oq = getelementptr i8, ptr %i.e, i64 %i.ol
  %i.or = getelementptr i8, ptr %i.oq, i64 1
  store i8 %i.kh, ptr %i.or, align 1
  br label %pred.store.continue470

pred.store.continue470:                           ; preds = %pred.store.if469, %pred.store.continue468
  %i.os = extractelement <8 x i1> %i.on, i64 2
  br i1 %i.os, label %pred.store.if471, label %pred.store.continue472

pred.store.if471:                                 ; preds = %pred.store.continue470
  %i.ot = getelementptr i8, ptr %i.e, i64 %i.ol
  %i.ou = getelementptr i8, ptr %i.ot, i64 2
  store i8 %i.kh, ptr %i.ou, align 1
  br label %pred.store.continue472

pred.store.continue472:                           ; preds = %pred.store.if471, %pred.store.continue470
  %i.ov = extractelement <8 x i1> %i.on, i64 3
  br i1 %i.ov, label %pred.store.if473, label %pred.store.continue474

pred.store.if473:                                 ; preds = %pred.store.continue472
  %i.ow = getelementptr i8, ptr %i.e, i64 %i.ol
  %i.ox = getelementptr i8, ptr %i.ow, i64 3
  store i8 %i.kh, ptr %i.ox, align 1
  br label %pred.store.continue474

pred.store.continue474:                           ; preds = %pred.store.if473, %pred.store.continue472
  %i.oy = extractelement <8 x i1> %i.on, i64 4
  br i1 %i.oy, label %pred.store.if475, label %pred.store.continue476

pred.store.if475:                                 ; preds = %pred.store.continue474
  %i.oz = getelementptr i8, ptr %i.e, i64 %i.ol
  %i.pa = getelementptr i8, ptr %i.oz, i64 4
  store i8 %i.kh, ptr %i.pa, align 1
  br label %pred.store.continue476

pred.store.continue476:                           ; preds = %pred.store.if475, %pred.store.continue474
  %i.pb = extractelement <8 x i1> %i.on, i64 5
  br i1 %i.pb, label %pred.store.if477, label %pred.store.continue478

pred.store.if477:                                 ; preds = %pred.store.continue476
  %i.pc = getelementptr i8, ptr %i.e, i64 %i.ol
  %i.pd = getelementptr i8, ptr %i.pc, i64 5
  store i8 %i.kh, ptr %i.pd, align 1
  br label %pred.store.continue478

pred.store.continue478:                           ; preds = %pred.store.if477, %pred.store.continue476
  %i.pe = extractelement <8 x i1> %i.on, i64 6
  br i1 %i.pe, label %pred.store.if479, label %pred.store.continue480

pred.store.if479:                                 ; preds = %pred.store.continue478
  %i.pf = getelementptr i8, ptr %i.e, i64 %i.ol
  %i.pg = getelementptr i8, ptr %i.pf, i64 6
  store i8 %i.kh, ptr %i.pg, align 1
  br label %pred.store.continue480

pred.store.continue480:                           ; preds = %pred.store.if479, %pred.store.continue478
  %i.ph = extractelement <8 x i1> %i.on, i64 7
  br i1 %i.ph, label %pred.store.if481, label %pred.store.continue482

pred.store.if481:                                 ; preds = %pred.store.continue480
  %i.pi = getelementptr i8, ptr %i.e, i64 %i.ol
  %i.pj = getelementptr i8, ptr %i.pi, i64 7
  store i8 %i.kh, ptr %i.pj, align 1
  br label %pred.store.continue482

pred.store.continue482:                           ; preds = %pred.store.if481, %pred.store.continue480
  %index.next483 = add nuw i64 %index465, 8       ; 2 uses
  %i.pk = icmp eq i64 %index.next483, %n.vec462
  br i1 %i.pk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %pred.store.continue482
  %cmp.n484 = icmp eq i64 %i.km, %n.vec462
  br i1 %cmp.n484, label %._crit_edge, label %.lr.ph295.preheader

.lr.ph295.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv313.ph = phi i64 [ %i.kl, %iter.check ], [ %i.kn, %vec.epilog.iter.check ], [ %i.ok, %vec.epilog.middle.block ]
  br label %.lr.ph295

.lr.ph295:                                        ; preds = %.lr.ph295.preheader, %bb.bw
  %indvars.iv313 = phi i64 [ %indvars.iv.next314, %bb.bw ], [ %indvars.iv313.ph, %.lr.ph295.preheader ] ; 2 uses
  %i.pl = getelementptr inbounds i8, ptr %i.e, i64 %indvars.iv313 ; 2 uses
  %i.pm = load i8, ptr %i.pl, align 1
  %i.pn = icmp ult i8 %i.pm, %i.kh
  br i1 %i.pn, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.lr.ph295
  store i8 %i.kh, ptr %i.pl, align 1
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph295, %bb.bv
  %indvars.iv.next314 = add nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph295, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.bw, %middle.block, %vec.epilog.middle.block, %bb.bu
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.pp = load i32, ptr %i.po, align 4
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i32 %i.pp, ptr %i.pq, align 8
  store i32 %3, ptr %i.ki, align 8
  br label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit

bb.bx:                                            ; preds = %bb.a
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ps = load i8, ptr %i.pr, align 4             ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 8
  %.not197.not291 = icmp sgt i32 %3, %i.pu
  br i1 %.not197.not291, label %.lr.ph293, label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit

.lr.ph293:                                        ; preds = %bb.bx
  %i.pv = zext i8 %i.ps to i32                    ; 2 uses
  %i.pw = add nuw nsw i32 %i.pv, 3                ; 2 uses
  %i.px = add nuw nsw i32 %i.pv, 2
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph293, %.loopexit
  %.3.in292 = phi i32 [ %3, %.lr.ph293 ], [ %.6, %.loopexit ]
  %.3 = add nsw i32 %.3.in292, -1                 ; 2 uses
  %i.py = sext i32 %.3 to i64                     ; 3 uses
  %i.pz = getelementptr inbounds i8, ptr %i.e, i64 %i.py ; 2 uses
  %i.qa = load i8, ptr %i.pz, align 1             ; 2 uses
  %i.qb = zext i8 %i.qa to i32                    ; 2 uses
  %i.qc = icmp eq i32 %i.pw, %i.qb
  br i1 %i.qc, label %.lr.ph290, label %.loopexit

.preheader281:                                    ; preds = %.lr.ph290
  %sext = shl i64 %indvars.iv.next309, 32
  %i.qd = ashr exact i64 %sext, 32
  br label %bb.bz

.lr.ph290:                                        ; preds = %bb.by, %.lr.ph290
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %.lr.ph290 ], [ %i.py, %bb.by ]
  %i.qe = phi i8 [ %i.qi, %.lr.ph290 ], [ %i.qa, %bb.by ]
  %i.qf = phi ptr [ %i.qh, %.lr.ph290 ], [ %i.pz, %bb.by ]
  %indvars.iv.next309 = add nsw i64 %indvars.iv308, -1 ; 3 uses
  %i.qg = add i8 %i.qe, -2
  store i8 %i.qg, ptr %i.qf, align 1
  %i.qh = getelementptr inbounds i8, ptr %i.e, i64 %indvars.iv.next309 ; 2 uses
  %i.qi = load i8, ptr %i.qh, align 1             ; 2 uses
  %i.qj = zext i8 %i.qi to i32
  %i.qk = icmp eq i32 %i.pw, %i.qj
  br i1 %i.qk, label %.lr.ph290, label %.preheader281, !llvm.loop !64

bb.bz:                                            ; preds = %bb.bz, %.preheader281
  %indvars.iv310 = phi i64 [ %indvars.iv.next311, %bb.bz ], [ %i.qd, %.preheader281 ] ; 4 uses
  %i.ql = getelementptr inbounds i8, ptr %i.e, i64 %indvars.iv310
  %i.qm = load i8, ptr %i.ql, align 1
  %i.qn = icmp eq i8 %i.qm, %i.ps
  %indvars.iv.next311 = add nsw i64 %indvars.iv310, -1
  br i1 %i.qn, label %bb.bz, label %.loopexit.loopexit, !llvm.loop !65

.loopexit.loopexit:                               ; preds = %bb.bz
  %i.qo = trunc nsw i64 %indvars.iv310 to i32
  %sext388 = shl i64 %indvars.iv310, 32
  %.pre327 = ashr exact i64 %sext388, 32          ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.e, i64 %.pre327
  %.pre328 = load i8, ptr %.phi.trans.insert, align 1
  %.pre341 = zext i8 %.pre328 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.by
  %.pre-phi342 = phi i32 [ %.pre341, %.loopexit.loopexit ], [ %i.qb, %bb.by ]
  %.pre-phi = phi i64 [ %.pre327, %.loopexit.loopexit ], [ %i.py, %bb.by ]
  %.6 = phi i32 [ %i.qo, %.loopexit.loopexit ], [ %.3, %bb.by ] ; 2 uses
  %i.qp = getelementptr inbounds i8, ptr %i.e, i64 %.pre-phi
  %i.qq = icmp ne i32 %i.px, %.pre-phi342
  %i.qr = zext i1 %i.qq to i8
  %storemerge = add i8 %i.ps, %i.qr
  store i8 %storemerge, ptr %i.qp, align 1
  %i.qs = load i32, ptr %i.pt, align 8
  %.not197.not = icmp sgt i32 %.6, %i.qs
  br i1 %.not197.not, label %bb.by, label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit, !llvm.loop !66

bb.ca:                                            ; preds = %bb.a
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.qu = load i8, ptr %i.qt, align 4
  %i.qv = add i8 %i.qu, 1
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 8            ; 2 uses
  %.not196.not287 = icmp sgt i32 %3, %i.qx
  br i1 %.not196.not287, label %.lr.ph.preheader, label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit

.lr.ph.preheader:                                 ; preds = %bb.ca
  %i.qy = sext i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.cc
  %i.qz = phi i32 [ %i.qx, %.lr.ph.preheader ], [ %i.re, %bb.cc ]
  %indvars.iv = phi i64 [ %i.qy, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cc ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ra = getelementptr inbounds i8, ptr %i.e, i64 %indvars.iv.next ; 2 uses
  %i.rb = load i8, ptr %i.ra, align 1             ; 2 uses
  %i.rc = icmp ugt i8 %i.rb, %i.qv
  br i1 %i.rc, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.lr.ph
  %i.rd = add i8 %i.rb, -2
  store i8 %i.rd, ptr %i.ra, align 1
  %.pre = load i32, ptr %i.qw, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph, %bb.cb
  %i.re = phi i32 [ %i.qz, %.lr.ph ], [ %.pre, %bb.cb ] ; 2 uses
  %i.rf = sext i32 %i.re to i64
  %.not196.not = icmp sgt i64 %indvars.iv.next, %i.rf
  br i1 %.not196.not, label %.lr.ph, label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit, !llvm.loop !67

bb.cd:                                            ; preds = %bb.a
  tail call void @abort() #20
  unreachable

_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit:     ; preds = %bb.cc, %.loopexit, %bb.i, %bb.f, %bb.ca, %bb.bx, %._crit_edge.i253, %.thread.i255, %bb.bh, %bb.g, %bb.d, %bb.a, %bb.b, %bb.c, %bb.ag, %bb.al, %bb.ao, %bb.ar, %.critedge204, %._crit_edge, %_ZL8addPointP5UBiDiii.exit229, %bb.u, %bb.ad, %._crit_edge300, %bb.aq, %bb.ap, %_ZL8addPointP5UBiDiii.exit265, %bb.bm
  %.1187 = phi i32 [ %3, %bb.b ], [ %i.ab, %bb.c ], [ %3, %bb.a ], [ %3, %._crit_edge.i253 ], [ %.0186, %_ZL8addPointP5UBiDiii.exit229 ], [ %.0186, %bb.u ], [ %3, %bb.ad ], [ %3, %._crit_edge300 ], [ %3, %bb.ag ], [ %3, %bb.al ], [ %3, %bb.ao ], [ %3, %bb.aq ], [ %3, %bb.ap ], [ %3, %bb.ar ], [ %3, %.critedge204 ], [ %3, %bb.bx ], [ %3, %_ZL8addPointP5UBiDiii.exit265 ], [ %3, %bb.bm ], [ %3, %._crit_edge ], [ %3, %bb.ca ], [ %3, %.loopexit ], [ %3, %bb.d ], [ %3, %bb.g ], [ %3, %bb.bh ], [ %3, %.thread.i255 ], [ %3, %bb.f ], [ %3, %bb.i ], [ %3, %bb.cc ] ; 7 uses
  %.not202 = icmp ne i8 %i.w, 0
  %i.rg = icmp slt i32 %.1187, %3
  %or.cond = select i1 %.not202, i1 true, i1 %i.rg
  br i1 %or.cond, label %bb.ce, label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit277

bb.ce:                                            ; preds = %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ri = load i8, ptr %i.rh, align 4
  %i.rj = add i8 %i.ri, %i.w                      ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.rl = load i32, ptr %i.rk, align 8
  %.not203 = icmp slt i32 %.1187, %i.rl
  br i1 %.not203, label %bb.cf, label %.preheader

.preheader:                                       ; preds = %bb.ce
  %i.rm = icmp slt i32 %.1187, %4
  br i1 %i.rm, label %.lr.ph302.preheader, label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit277

.lr.ph302.preheader:                              ; preds = %.preheader
  %i.rn = sext i32 %.1187 to i64
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.rn
  %i.ro = xor i32 %.1187, -1
  %i.rp = add i32 %4, %i.ro
  %i.rq = zext i32 %i.rp to i64
  %i.rr = add nuw nsw i64 %i.rq, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 %i.rj, i64 %i.rr, i1 false)
  br label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit277

bb.cf:                                            ; preds = %bb.ce
  %i.rs = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.rs, align 8
  %.val205 = load ptr, ptr %i.d, align 8
  %i.rt = icmp slt i32 %.1187, %4
  br i1 %i.rt, label %.lr.ph.preheader.i267, label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit277

.lr.ph.preheader.i267:                            ; preds = %bb.cf
  %i.ru = sext i32 %.1187 to i64
  %wide.trip.count.i268 = sext i32 %4 to i64
  br label %.lr.ph.i269

.lr.ph.i269:                                      ; preds = %bb.ch, %.lr.ph.preheader.i267
  %indvars.iv.i270 = phi i64 [ %i.ru, %.lr.ph.preheader.i267 ], [ %indvars.iv.next.i275, %bb.ch ] ; 3 uses
  %.0181.i271 = phi i32 [ 0, %.lr.ph.preheader.i267 ], [ %spec.select19.i274, %bb.ch ]
  %i.rv = getelementptr inbounds i8, ptr %.val, i64 %indvars.iv.i270
  %i.rw = load i8, ptr %i.rv, align 1             ; 2 uses
  %i.rx = icmp eq i8 %i.rw, 22
  %i.ry = sext i1 %i.rx to i32
  %spec.select.i272 = add nsw i32 %.0181.i271, %i.ry ; 2 uses
  %i.rz = icmp eq i32 %spec.select.i272, 0
  br i1 %i.rz, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i269
  %i.sa = getelementptr inbounds i8, ptr %.val205, i64 %indvars.iv.i270
  store i8 %i.rj, ptr %i.sa, align 1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.lr.ph.i269
  %i.sb = and i8 %i.rw, -2
  %or.cond.i273 = icmp eq i8 %i.sb, 20
  %i.sc = zext i1 %or.cond.i273 to i32
  %spec.select19.i274 = add nsw i32 %spec.select.i272, %i.sc
  %indvars.iv.next.i275 = add nsw i64 %indvars.iv.i270, 1 ; 2 uses
  %exitcond.not.i276 = icmp eq i64 %indvars.iv.next.i275, %wide.trip.count.i268
  br i1 %exitcond.not.i276, label %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit277, label %.lr.ph.i269, !llvm.loop !55

_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit277:  ; preds = %bb.ch, %.lr.ph302.preheader, %.preheader, %bb.cf, %_ZL24setLevelsOutsideIsolatesP5UBiDiiih.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(1) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{null}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{null, null, ptr @ubidi_getCustomizedClass_78}
!13 = distinct !{!13, !6}
!14 = distinct !{null, ptr @ubidi_getCustomizedClass_78}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"branch_weights", i32 4, i32 28}
!25 = distinct !{!25, !6, !22, !23}
!26 = distinct !{!26, !6, !23, !22}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6, !32}
!32 = !{!"llvm.loop.peeled.count", i32 1}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{null, ptr @ubidi_getCustomizedClass_78}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{null, ptr @ubidi_getCustomizedClass_78}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6}
!53 = distinct !{!53, !6}
!54 = distinct !{!54, !6}
!55 = distinct !{!55, !6}
!56 = distinct !{!56, !6, !22, !23}
!57 = distinct !{!57, !6, !22, !23}
!58 = distinct !{!58, !6, !23, !22}
!59 = distinct !{!59, !6}
!60 = distinct !{!60, !6, !22, !23}
!61 = !{!"branch_weights", i32 8, i32 24}
!62 = distinct !{!62, !6, !22, !23}
!63 = distinct !{!63, !6, !23, !22}
!64 = distinct !{!64, !6}
!65 = distinct !{!65, !6}
!66 = distinct !{!66, !6}
!67 = distinct !{!67, !6}
end_hunk_2
