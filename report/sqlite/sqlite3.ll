Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 368
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_str_vappendf:bb.a
  br label %getDoubleArg.exit

bb.eu:                                            ; preds = %bb.em
  %i.rn = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ro = icmp ult i32 %i.rn, 161
  br i1 %i.ro, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.rp = load ptr, ptr %i.w, align 8
  %i.rq = zext nneg i32 %i.rn to i64
  %i.rr = getelementptr i8, ptr %i.rp, i64 %i.rq
  %i.rs = add nuw nsw i32 %i.rn, 16
  store i32 %i.rs, ptr %i.ac, align 4
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.rt = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ru = getelementptr i8, ptr %i.rt, i64 8
  store ptr %i.ru, ptr %i.v, align 8
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.rv = phi ptr [ %i.rr, %bb.ev ], [ %i.rt, %bb.ew ]
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !782
  br label %getDoubleArg.exit

getDoubleArg.exit:                                ; preds = %bb.en, %bb.ep, %bb.er, %bb.es, %bb.et, %bb.ex
  %.0734 = phi double [ %i.rw, %bb.ex ], [ 0.000000e+00, %bb.en ], [ %i.rh, %bb.ep ], [ %i.rk, %bb.er ], [ %i.rm, %bb.et ], [ 0.000000e+00, %bb.es ] ; 4 uses
  %i.rx = icmp slt i32 %.480311592011, 0
  %i.ry = call i32 @llvm.smin.i32(i32 %.480311592011, i32 100000000)
  %spec.store.select44 = select i1 %i.rx, i32 6, i32 %i.ry ; 5 uses
  %i.rz = icmp ne i32 %.07842048, 10              ; 2 uses
  br i1 %i.rz, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %getDoubleArg.exit
  %i.sa = sub nsw i32 0, %spec.store.select44
  br label %bb.fc

bb.ez:                                            ; preds = %getDoubleArg.exit
  %i.sb = and i32 %.07842048, -9
  %i.sc = icmp eq i32 %i.sb, 3
  br i1 %i.sc, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %spec.store.select6 = call i32 @llvm.umax.i32(i32 %spec.store.select44, i32 1) ; 2 uses
  br label %bb.fc

bb.fb:                                            ; preds = %bb.ez
  %i.sd = add nsw i32 %spec.store.select44, 1
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fa, %bb.fb, %bb.ey
  %.6805 = phi i32 [ %spec.store.select44, %bb.ey ], [ %spec.store.select6, %bb.fa ], [ %spec.store.select44, %bb.fb ] ; 3 uses
  %.0688 = phi i32 [ %i.sa, %bb.ey ], [ %spec.store.select6, %bb.fa ], [ %i.sd, %bb.fb ] ; 6 uses
  %.not930 = icmp eq i8 %.176011701945, 0         ; 2 uses
  %i.se = select i1 %.not930, i32 16, i32 20      ; 2 uses
  store i8 0, ptr %i.ad, align 2, !tbaa !3130
  %i.sf = fcmp olt double %.0734, 0.000000e+00
  br i1 %i.sf, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store i8 45, ptr %i.ae, align 1, !tbaa !3131
  %i.sg = fneg double %.0734
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fc
  %i.sh = fcmp oeq double %.0734, 0.000000e+00
  store i8 43, ptr %i.ae, align 1, !tbaa !3131
  br i1 %i.sh, label %sqlite3FpDecode.exit._crit_edge.thread, label %bb.ff

sqlite3FpDecode.exit._crit_edge.thread:           ; preds = %bb.fe
  store i32 1, ptr %3, align 8, !tbaa !3132
  store i32 1, ptr %i.af, align 4, !tbaa !3133
  store ptr @.str.48, ptr %i.ah, align 8, !tbaa !3134
  br label %bb.gw

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.0124.i = phi double [ %i.sg, %bb.fd ], [ %.0734, %bb.fe ] ; 2 uses
  %.cast.i = bitcast double %.0124.i to i64       ; 3 uses
  %i.si = lshr i64 %.cast.i, 52
  %i.sj = trunc nuw nsw i64 %i.si to i32
  %i.sk = and i32 %i.sj, 2047                     ; 3 uses
  %i.sl = icmp eq i32 %i.sk, 2047
  br i1 %i.sl, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %.not148.i = icmp eq i64 %.cast.i, 9218868437227405312
  %i.sm = select i1 %.not148.i, i8 1, i8 2        ; 2 uses
  store i8 %i.sm, ptr %i.ad, align 2, !tbaa !3130
  store i32 0, ptr %3, align 8, !tbaa !3132
  store i32 0, ptr %i.af, align 4, !tbaa !3133
  br label %sqlite3FpDecode.exit

bb.fh:                                            ; preds = %bb.ff
  %i.sn = and i64 %.cast.i, 4503599627370495      ; 3 uses
  %i.so = icmp eq i32 %i.sk, 0
  br i1 %i.so, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.sp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.sn, i1 true) ; 2 uses
  %i.sq = trunc nuw nsw i64 %i.sp to i32
  %i.sr = shl i64 %i.sn, %i.sp
  %i.ss = sub nuw nsw i32 -1074, %i.sq
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %i.st = shl nuw nsw i64 %i.sn, 11
  %i.su = or disjoint i64 %i.st, -9223372036854775808
  %i.sv = add nsw i32 %i.sk, -1086
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.0158.i = phi i64 [ %i.sr, %bb.fi ], [ %i.su, %bb.fj ]
  %.0129.i = phi i32 [ %i.ss, %bb.fi ], [ %i.sv, %bb.fj ] ; 2 uses
  %i.sw = icmp slt i32 %.0688, 1
  %i.sx = add i32 %.0688, -18
  %or.cond.i = icmp ult i32 %i.sx, -17
  %i.sy = add nuw nsw i32 %.0688, 1
  %i.sz = select i1 %or.cond.i, i32 18, i32 %i.sy ; 2 uses
  %.neg.i.i = mul nsw i32 %.0129.i, -78913
  %i.ta = add nsw i32 %.neg.i.i, -4971520
  %i.tb = ashr i32 %i.ta, 18
  %i.tc = add i32 %i.tb, %i.sz                    ; 10 uses
  %.nonneg.i.i.i = sub i32 0, %i.tc               ; 2 uses
  %i.td = icmp slt i32 %i.tc, 0
  br i1 %i.td, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  %i.te = icmp eq i32 %i.tc, -1
  br i1 %i.te, label %powerOfTen.exit.i.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.tf = udiv i32 %.nonneg.i.i.i, 27             ; 2 uses
  %i.tg = urem i32 %.nonneg.i.i.i, 27             ; 2 uses
  %.not.i.i.i1021 = icmp eq i32 %i.tg, 0
  br i1 %.not.i.i.i1021, label %.thread.i.i.i, label %.thread34.i.i.i

.thread.i.i.i:                                    ; preds = %bb.fm
  %i.th = sub nsw i32 13, %i.tf
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds [8 x i8], ptr @powerOfTen.aScale, i64 %i.ti
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !565
  br label %powerOfTen.exit.i.i

.thread34.i.i.i:                                  ; preds = %bb.fm
  %i.tl = sub nuw nsw i32 27, %i.tg
  %i.tm = sub nsw i32 12, %i.tf
  %i.tn = sext i32 %i.tm to i64                   ; 2 uses
  %i.to = getelementptr inbounds [8 x i8], ptr @powerOfTen.aScale, i64 %i.tn
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !565
  br label %bb.fq

bb.fn:                                            ; preds = %bb.fk
  %i.tq = icmp samesign ult i32 %i.tc, 27
  br i1 %i.tq, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.tr = zext nneg i32 %i.tc to i64
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr @powerOfTen.aBase, i64 %i.tr
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !565
  br label %powerOfTen.exit.i.i

bb.fp:                                            ; preds = %bb.fn
  %i.tu = udiv i32 %i.tc, 27
  %i.tv = urem i32 %i.tc, 27                      ; 2 uses
  %i.tw = add nuw nsw i32 %i.tu, 13
  %i.tx = zext nneg i32 %i.tw to i64              ; 2 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr @powerOfTen.aScale, i64 %i.tx
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !565 ; 2 uses
  %i.ua = icmp eq i32 %i.tv, 0
  br i1 %i.ua, label %powerOfTen.exit.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %.thread34.i.i.i
  %i.ub = phi i64 [ %i.tp, %.thread34.i.i.i ], [ %i.tz, %bb.fp ]
  %i.uc = phi i64 [ %i.tn, %.thread34.i.i.i ], [ %i.tx, %bb.fp ]
  %.02537.i.i.i = phi i32 [ %i.tl, %.thread34.i.i.i ], [ %i.tv, %bb.fp ]
  %i.ud = getelementptr inbounds [4 x i8], ptr @powerOfTen.aScaleLo, i64 %i.uc
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !570
  %i.uf = zext nneg i32 %.02537.i.i.i to i64
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr @powerOfTen.aBase, i64 %i.uf
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !565
  %i.ui = zext i64 %i.ub to i128
  %i.uj = zext i64 %i.uh to i128                  ; 2 uses
  %i.uk = mul nuw i128 %i.uj, %i.ui
  %i.ul = zext i32 %i.ue to i128
  %i.um = mul nuw nsw i128 %i.uj, %i.ul
  %i.un = lshr i128 %i.um, 32
  %i.uo = add nuw i128 %i.un, %i.uk               ; 3 uses
  %i.up = lshr i128 %i.uo, 64
  %i.uq = trunc nuw i128 %i.up to i64             ; 2 uses
  %i.ur = icmp sgt i128 %i.uo, -1
  br i1 %i.ur, label %bb.fr, label %powerOfTen.exit.i.i

bb.fr:                                            ; preds = %bb.fq
  %i.us = trunc i128 %i.uo to i64
  %i.ut = call i64 @llvm.fshl.i64(i64 %i.uq, i64 %i.us, i64 1)
  br label %powerOfTen.exit.i.i

powerOfTen.exit.i.i:                              ; preds = %bb.fr, %bb.fq, %bb.fp, %bb.fo, %.thread.i.i.i, %bb.fl
  %.027.i.i.i = phi i64 [ %i.tt, %bb.fo ], [ %i.uq, %bb.fq ], [ -3689348814741910324, %bb.fl ], [ %i.ut, %bb.fr ], [ %i.tk, %.thread.i.i.i ], [ %i.tz, %bb.fp ]
  %4 = call i64 @llvm.umulh.i64(i64 %.027.i.i.i, i64 %.0158.i) ; 2 uses
  %i.uu = icmp eq i32 %i.sz, 18
  %i.uv = mul nsw i32 %i.tc, 108853
  %i.uw = ashr i32 %i.uv, 15
  %i.ux = add nsw i32 %i.uw, %.0129.i             ; 2 uses
  br i1 %i.uu, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %powerOfTen.exit.i.i
  %i.uy = sub nsw i32 -2, %i.ux
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = lshr i64 %4, %i.uz                      ; 2 uses
  %i.vb = shl i64 %i.va, 1
  %i.vc = and i64 %i.vb, 2
  %i.vd = add i64 %i.vc, %i.va
  %i.ve = lshr i64 %i.vd, 1
  br label %sqlite3Fp2Convert10.exit.i

bb.ft:                                            ; preds = %powerOfTen.exit.i.i
  %i.vf = xor i32 %i.ux, -1
  %i.vg = zext nneg i32 %i.vf to i64
  %i.vh = lshr i64 %4, %i.vg
  br label %sqlite3Fp2Convert10.exit.i

sqlite3Fp2Convert10.exit.i:                       ; preds = %bb.ft, %bb.fs
  %storemerge.i.i = phi i64 [ %i.vh, %bb.ft ], [ %i.ve, %bb.fs ] ; 3 uses
  %i.vi = icmp ugt i64 %storemerge.i.i, 9
  br i1 %i.vi, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %sqlite3Fp2Convert10.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 20, %sqlite3Fp2Convert10.exit.i ]
  %.1159177.i = phi i64 [ %i.vo, %.lr.ph.i ], [ %storemerge.i.i, %sqlite3Fp2Convert10.exit.i ] ; 3 uses
  %i.vj = urem i64 %.1159177.i, 100
  %i.vk = shl nuw nsw i64 %i.vj, 1
  %i.vl = getelementptr inbounds nuw i8, ptr @sqlite3DigitPairs, i64 %i.vk
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !733
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  %i.vn = getelementptr inbounds i8, ptr %i.ag, i64 %indvars.iv.next.i
  store i16 %i.vm, ptr %i.vn, align 2, !tbaa !783
  %i.vo = udiv i64 %.1159177.i, 100               ; 2 uses
  %i.vp = icmp ugt i64 %.1159177.i, 999
  br i1 %i.vp, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !3097

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.vq = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %sqlite3Fp2Convert10.exit.i
  %.1159.lcssa.i = phi i64 [ %storemerge.i.i, %sqlite3Fp2Convert10.exit.i ], [ %i.vo, %._crit_edge.loopexit.i ] ; 2 uses
  %.0134.lcssa.i = phi i32 [ 20, %sqlite3Fp2Convert10.exit.i ], [ %i.vq, %._crit_edge.loopexit.i ] ; 2 uses
  %.not.i1020 = icmp eq i64 %.1159.lcssa.i, 0
  br i1 %.not.i1020, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %._crit_edge.i
  %i.vr = trunc nuw nsw i64 %.1159.lcssa.i to i8
  %i.vs = or disjoint i8 %i.vr, 48
  %i.vt = add nsw i32 %.0134.lcssa.i, -1          ; 2 uses
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds i8, ptr %i.ag, i64 %i.vu
  store i8 %i.vs, ptr %i.vv, align 1, !tbaa !733
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %._crit_edge.i
  %.1135.i = phi i32 [ %i.vt, %bb.fu ], [ %.0134.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.vw = sub nsw i32 20, %.1135.i                ; 5 uses
  %i.vx = sub nsw i32 %i.vw, %i.tc                ; 4 uses
  store i32 %i.vx, ptr %i.af, align 4, !tbaa !3133
  br i1 %i.sw, label %bb.fw, label %..thread_crit_edge.i

..thread_crit_edge.i:                             ; preds = %bb.fv
  %.pre218.i = sext i32 %.1135.i to i64
  br label %.thread.i

bb.fw:                                            ; preds = %bb.fv
  %i.vy = sub nsw i32 %i.vx, %.0688               ; 3 uses
  %i.vz = icmp eq i32 %i.vy, 0
  %i.wa = sext i32 %.1135.i to i64
  %i.wb = getelementptr inbounds i8, ptr %i.ag, i64 %i.wa ; 4 uses
  br i1 %i.vz, label %bb.fx, label %bb.fz

bb.fx:                                            ; preds = %bb.fw
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !733
  %i.wd = icmp sgt i8 %i.wc, 52
  br i1 %i.wd, label %bb.fy, label %.loopexit.i

bb.fy:                                            ; preds = %bb.fx
  %i.we = add nsw i32 %.1135.i, -1
  %i.wf = sext i32 %i.we to i64                   ; 2 uses
  %i.wg = getelementptr inbounds i8, ptr %i.ag, i64 %i.wf
  store i8 48, ptr %i.wg, align 1, !tbaa !733
  %i.wh = sub i32 21, %.1135.i
  %i.wi = load i32, ptr %i.af, align 4, !tbaa !3133
  %i.wj = add nsw i32 %i.wi, 1                    ; 2 uses
  store i32 %i.wj, ptr %i.af, align 4, !tbaa !3133
  br label %.thread.i

.thread.i:                                        ; preds = %bb.fy, %..thread_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre218.i, %..thread_crit_edge.i ], [ %i.wf, %bb.fy ]
  %i.wk = phi i32 [ %i.vx, %..thread_crit_edge.i ], [ %i.wj, %bb.fy ]
  %.0130.ph.i = phi i32 [ %i.vw, %..thread_crit_edge.i ], [ %i.wh, %bb.fy ]
  %.0125.ph.i = phi i32 [ %.0688, %..thread_crit_edge.i ], [ 1, %bb.fy ]
  %i.wl = getelementptr inbounds i8, ptr %i.ag, i64 %.pre-phi.i
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fw
  %i.wm = icmp sgt i32 %i.vy, 0
  br i1 %i.wm, label %bb.ga, label %.loopexit.i

bb.ga:                                            ; preds = %bb.fz, %.thread.i
  %i.wn = phi i32 [ %i.wk, %.thread.i ], [ %i.vx, %bb.fz ] ; 2 uses
  %i.wo = phi ptr [ %i.wl, %.thread.i ], [ %i.wb, %bb.fz ] ; 37 uses
  %.0125164.i = phi i32 [ %.0125.ph.i, %.thread.i ], [ %i.vy, %bb.fz ] ; 2 uses
  %.0130163.i = phi i32 [ %.0130.ph.i, %.thread.i ], [ %i.vw, %bb.fz ] ; 6 uses
  %i.wp = icmp slt i32 %.0125164.i, %.0130163.i
  %i.wq = icmp sgt i32 %.0130163.i, %i.se
  %or.cond149.i = or i1 %i.wp, %i.wq
  br i1 %or.cond149.i, label %bb.gb, label %.loopexit.i

bb.gb:                                            ; preds = %bb.ga
  %i.wr = call i32 @llvm.umin.i32(i32 %.0125164.i, i32 range(i32 16, 21) %i.se) ; 2 uses
  %i.ws = icmp eq i32 %i.wr, 17
  br i1 %i.ws, label %bb.gc, label %.thread171.i

bb.gc:                                            ; preds = %bb.gb
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wo, i64 15
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !733 ; 2 uses
  %i.wv = icmp eq i8 %i.wu, 57
  br i1 %i.wv, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.ww = getelementptr i8, ptr %i.wo, i64 14
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !733
  %i.wy = icmp eq i8 %i.wx, 57
  br i1 %i.wy, label %.preheader173.preheader.i, label %.thread169.i

.preheader173.preheader.i:                        ; preds = %bb.gd
  %i.wz = getelementptr i8, ptr %i.wo, i64 13
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !733
  %i.xb = icmp eq i8 %i.xa, 57
  br i1 %i.xb, label %.preheader173.1.i, label %.lr.ph190.preheader.i

.preheader173.1.i:                                ; preds = %.preheader173.preheader.i
  %i.xc = getelementptr i8, ptr %i.wo, i64 12
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !733
  %i.xe = icmp eq i8 %i.xd, 57
  br i1 %i.xe, label %.preheader173.2.i, label %.lr.ph190.preheader.i

.preheader173.2.i:                                ; preds = %.preheader173.1.i
  %i.xf = getelementptr i8, ptr %i.wo, i64 11
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !733
  %i.xh = icmp eq i8 %i.xg, 57
  br i1 %i.xh, label %.preheader173.3.i, label %.lr.ph190.preheader.i

.preheader173.3.i:                                ; preds = %.preheader173.2.i
  %i.xi = getelementptr i8, ptr %i.wo, i64 10
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !733
  %i.xk = icmp eq i8 %i.xj, 57
  br i1 %i.xk, label %.preheader173.4.i, label %.lr.ph190.preheader.i

.preheader173.4.i:                                ; preds = %.preheader173.3.i
  %i.xl = getelementptr i8, ptr %i.wo, i64 9
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !733
  %i.xn = icmp eq i8 %i.xm, 57
  br i1 %i.xn, label %.preheader173.5.i, label %.lr.ph190.preheader.i

.preheader173.5.i:                                ; preds = %.preheader173.4.i
  %i.xo = getelementptr i8, ptr %i.wo, i64 8
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !733
  %i.xq = icmp eq i8 %i.xp, 57
  br i1 %i.xq, label %.preheader173.6.i, label %.lr.ph190.preheader.i

.preheader173.6.i:                                ; preds = %.preheader173.5.i
  %i.xr = getelementptr i8, ptr %i.wo, i64 7
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !733
  %i.xt = icmp eq i8 %i.xs, 57
  br i1 %i.xt, label %.preheader173.7.i, label %.lr.ph190.preheader.i

.preheader173.7.i:                                ; preds = %.preheader173.6.i
  %i.xu = getelementptr i8, ptr %i.wo, i64 6
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !733
  %i.xw = icmp eq i8 %i.xv, 57
  br i1 %i.xw, label %.preheader173.8.i, label %.lr.ph190.preheader.i

.preheader173.8.i:                                ; preds = %.preheader173.7.i
  %i.xx = getelementptr i8, ptr %i.wo, i64 5
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !733
  %i.xz = icmp eq i8 %i.xy, 57
  br i1 %i.xz, label %.preheader173.9.i, label %.lr.ph190.preheader.i

.preheader173.9.i:                                ; preds = %.preheader173.8.i
  %i.ya = getelementptr i8, ptr %i.wo, i64 4
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !733
  %i.yc = icmp eq i8 %i.yb, 57
  br i1 %i.yc, label %.preheader173.10.i, label %.lr.ph190.preheader.i

.preheader173.10.i:                               ; preds = %.preheader173.9.i
  %i.yd = getelementptr i8, ptr %i.wo, i64 3
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !733
  %i.yf = icmp eq i8 %i.ye, 57
  br i1 %i.yf, label %.preheader173.11.i, label %.lr.ph190.preheader.i

.preheader173.11.i:                               ; preds = %.preheader173.10.i
  %i.yg = getelementptr i8, ptr %i.wo, i64 2
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !733
  %i.yi = icmp eq i8 %i.yh, 57
  br i1 %i.yi, label %.preheader173.12.i, label %.lr.ph190.preheader.i

.preheader173.12.i:                               ; preds = %.preheader173.11.i
  %i.yj = getelementptr i8, ptr %i.wo, i64 1
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !733
  %i.yl = icmp eq i8 %i.yk, 57
  br i1 %i.yl, label %.preheader173.13.i, label %.lr.ph190.preheader.i

.preheader173.13.i:                               ; preds = %.preheader173.12.i
  %i.ym = load i8, ptr %i.wo, align 1, !tbaa !733 ; 2 uses
  %i.yn = icmp eq i8 %i.ym, 57
  br i1 %i.yn, label %.thread171.sink.split.i, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.preheader173.13.i
  %i.yo = sext i8 %i.ym to i64
  br label %._crit_edge191.i

end_hunk_0
begin_hunk_1_@strAccumFinishRealloc:bb.a
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 4 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %sqlite3DbMallocRaw.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !756
  %i.j = load i32, ptr %i.b, align 8, !tbaa !753
  %i.k = add i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr align 1 %i.i, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !752
  %i.o = or i8 %i.n, 4
  store i8 %i.o, ptr %i.m, align 1, !tbaa !752
  br label %sqlite3StrAccumSetError.exit

bb.e:                                             ; preds = %sqlite3DbMallocRaw.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 7, ptr %i.p, align 4, !tbaa !765
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !766
  %.not.i11 = icmp eq i32 %i.r, 0
  br i1 %.not.i11, label %sqlite3StrAccumSetError.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !752   ; 2 uses
  %i.u = and i8 %i.t, 4
  %.not.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i, label %sqlite3_str_reset.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !756  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %sqlite3DbFree.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %0, align 8, !tbaa !767
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.x, ptr noundef nonnull %i.w)
  %.pre.i.i = load i8, ptr %i.s, align 1, !tbaa !752
  br label %sqlite3DbFree.exit.i.i

sqlite3DbFree.exit.i.i:                           ; preds = %bb.h, %bb.g
  %i.y = phi i8 [ %i.t, %bb.g ], [ %.pre.i.i, %bb.h ]
  %i.z = and i8 %i.y, -5
  store i8 %i.z, ptr %i.s, align 1, !tbaa !752
  br label %sqlite3_str_reset.exit.i

sqlite3_str_reset.exit.i:                         ; preds = %sqlite3DbFree.exit.i.i, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !754
  store i32 0, ptr %i.b, align 8, !tbaa !753
  br label %sqlite3StrAccumSetError.exit

sqlite3StrAccumSetError.exit:                     ; preds = %sqlite3_str_reset.exit.i, %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i, ptr %i.ab, align 8, !tbaa !756
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc double @sqlite3Fp10Convert2(i64 noundef %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, -348
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 347
  br i1 %i.b, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true) ; 2 uses
  %i.d = trunc nuw nsw i64 %i.c to i32            ; 2 uses
  %i.e = mul nsw i32 %1, 108853
  %i.f = ashr i32 %i.e, 15                        ; 2 uses
  %i.g = add nsw i32 %i.d, -11
  %i.h = sub nsw i32 %i.g, %i.f                   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1074
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i32 %i.h, 1129
  br i1 %i.j, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.047 = phi i32 [ %i.h, %bb.c ], [ 1074, %bb.d ] ; 2 uses
  %.neg78 = add nsw i32 %i.d, -3
  %i.k = add nsw i32 %i.f, %.047
  %i.l = sub nsw i32 %.neg78, %i.k
  %i.m = icmp slt i32 %1, 0
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = icmp eq i32 %1, -1
  br i1 %i.n, label %powerOfTen.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = trunc nsw i32 %1 to i16
  %.lhs.trunc = sub nsw i16 0, %i.o               ; 2 uses
  %i.p = udiv i16 %.lhs.trunc, 27
  %.zext = zext nneg i16 %i.p to i32              ; 2 uses
  %i.q = urem i16 %.lhs.trunc, 27                 ; 2 uses
  %.not.i = icmp eq i16 %i.q, 0
  br i1 %.not.i, label %.thread.i, label %.thread34.i

.thread.i:                                        ; preds = %bb.g
  %i.r = sub nuw nsw i32 13, %.zext
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @powerOfTen.aScale, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !565
  br label %bb.j

.thread34.i:                                      ; preds = %bb.g
  %narrow75 = sub nuw nsw i16 27, %i.q
  %i.v = sub nuw nsw i32 12, %.zext
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @powerOfTen.aScale, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !565
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.z = icmp samesign ult i32 %1, 27
  br i1 %i.z, label %powerOfTen.exit.thread64, label %bb.i

powerOfTen.exit.thread64:                         ; preds = %bb.h
  %i.aa = zext nneg i32 %1 to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @powerOfTen.aBase, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !565
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  %.lhs.trunc70 = trunc nuw nsw i32 %1 to i16     ; 2 uses
  %i.ad = udiv i16 %.lhs.trunc70, 27
  %i.ae = urem i16 %.lhs.trunc70, 27              ; 2 uses
  %narrow = add nuw nsw i16 %i.ad, 13
  %i.af = zext nneg i16 %narrow to i64            ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @powerOfTen.aScale, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !565 ; 2 uses
  %i.ai = icmp eq i16 %i.ae, 0
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %.thread.i
  %i.aj = phi i64 [ %i.u, %.thread.i ], [ %i.ah, %bb.i ]
  %i.ak = phi i64 [ %i.s, %.thread.i ], [ %i.af, %bb.i ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @powerOfTen.aScaleLo, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !570
  br label %powerOfTen.exit

bb.k:                                             ; preds = %bb.i, %.thread34.i
  %i.an = phi i64 [ %i.y, %.thread34.i ], [ %i.ah, %bb.i ]
  %i.ao = phi i64 [ %i.w, %.thread34.i ], [ %i.af, %bb.i ]
  %.02537.i.in = phi i16 [ %narrow75, %.thread34.i ], [ %i.ae, %bb.i ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @powerOfTen.aScaleLo, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !570
  %i.ar = zext nneg i16 %.02537.i.in to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @powerOfTen.aBase, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !565
  %i.au = zext i64 %i.an to i128
  %i.av = zext i64 %i.at to i128                  ; 2 uses
  %i.aw = mul nuw i128 %i.av, %i.au
  %i.ax = zext i32 %i.aq to i128
  %i.ay = mul nuw nsw i128 %i.av, %i.ax
  %i.az = lshr i128 %i.ay, 32
  %i.ba = add nuw i128 %i.az, %i.aw               ; 3 uses
  %i.bb = lshr i128 %i.ba, 32
  %i.bc = trunc i128 %i.bb to i32                 ; 3 uses
  %i.bd = lshr i128 %i.ba, 64
  %i.be = trunc nuw i128 %i.bd to i64             ; 2 uses
  %i.bf = icmp sgt i128 %i.ba, -1
  br i1 %i.bf, label %bb.l, label %powerOfTen.exit

bb.l:                                             ; preds = %bb.k
  %i.bg = shl nuw i64 %i.be, 1
  %i.bh = lshr i32 %i.bc, 31
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = or disjoint i64 %i.bg, %i.bi
  %i.bk = shl i32 %i.bc, 1
  %i.bl = or disjoint i32 %i.bk, 1
  br label %powerOfTen.exit.thread

powerOfTen.exit:                                  ; preds = %bb.k, %bb.j
  %.158 = phi i32 [ %i.bc, %bb.k ], [ %i.am, %bb.j ] ; 2 uses
  %.027.i = phi i64 [ %i.be, %bb.k ], [ %i.aj, %bb.j ] ; 2 uses
  %.not = icmp eq i32 %.158, 0
  br i1 %.not, label %bb.m, label %powerOfTen.exit.thread

powerOfTen.exit.thread:                           ; preds = %bb.l, %bb.f, %powerOfTen.exit
  %.027.i63 = phi i64 [ %.027.i, %powerOfTen.exit ], [ %i.bj, %bb.l ], [ -3689348814741910324, %bb.f ]
  %.15862 = phi i32 [ %.158, %powerOfTen.exit ], [ %i.bl, %bb.l ], [ -858993460, %bb.f ]
  %i.bm = add i64 %.027.i63, 1
  %i.bn = xor i32 %.15862, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw i64 %i.bo, 32
  br label %bb.m

bb.m:                                             ; preds = %powerOfTen.exit.thread64, %powerOfTen.exit.thread, %powerOfTen.exit
  %.057 = phi i64 [ 0, %powerOfTen.exit ], [ %i.bp, %powerOfTen.exit.thread ], [ 0, %powerOfTen.exit.thread64 ]
  %.046 = phi i64 [ %.027.i, %powerOfTen.exit ], [ %i.bm, %powerOfTen.exit.thread ], [ %i.ac, %powerOfTen.exit.thread64 ]
  %i.bq = shl i64 %0, %i.c                        ; 2 uses
  %i.br = zext i64 %i.bq to i128
  %i.bs = zext i64 %.046 to i128
  %i.bt = mul nuw i128 %i.bs, %i.br               ; 2 uses
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = trunc nuw i128 %i.bu to i64             ; 3 uses
  %i.bw = zext i32 %i.l to i64                    ; 2 uses
  %notmask = shl nsw i64 -1, %i.bw
  %i.bx = xor i64 %notmask, -1
  %i.by = and i64 %i.bv, %i.bx
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ca = trunc i128 %i.bt to i64
  %i.cb = lshr i64 %i.ca, 32                      ; 2 uses
  %i.cc = trunc nuw i64 %i.cb to i32
  %2 = tail call i64 @llvm.umulh.i64(i64 %.057, i64 %i.bq)
  %3 = lshr i64 %2, 32                            ; 2 uses
  %i.cd = trunc nuw i64 %3 to i32
  %i.ce = sub i32 %i.cc, %i.cd
  %i.cf = icmp ugt i32 %i.ce, 1
  %i.cg = zext i1 %i.cf to i64
  %i.ch = icmp samesign ult i64 %i.cb, %3
  %.neg = sext i1 %i.ch to i64
  %i.ci = add i64 %.neg, %i.bv
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.045 = phi i64 [ %i.ci, %bb.n ], [ %i.bv, %bb.m ]
  %.044 = phi i64 [ %i.cg, %bb.n ], [ 1, %bb.m ]
  %i.cj = lshr i64 %.045, %i.bw                   ; 3 uses
  %i.ck = icmp ugt i64 %i.cj, 36028797018963965   ; 2 uses
  %i.cl = sext i1 %i.ck to i32
  %.1 = add nsw i32 %.047, %i.cl                  ; 2 uses
  %i.cm = icmp slt i32 %.1, -971
  br i1 %i.cm, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = lshr i64 %i.cj, 1
  %i.co = or i64 %i.cj, %.044                     ; 2 uses
  %i.cp = and i64 %i.co, 1
  %i.cq = or i64 %i.cp, %i.cn
  %.043 = select i1 %i.ck, i64 %i.cq, i64 %i.co   ; 2 uses
  %i.cr = add i64 %.043, 1
  %i.cs = lshr i64 %.043, 2
  %i.ct = and i64 %i.cs, 1
  %i.cu = add i64 %i.cr, %i.ct                    ; 2 uses
  %i.cv = lshr i64 %i.cu, 2                       ; 2 uses
  %i.cw = and i64 %i.cu, 18014398509481984
  %.not54 = icmp eq i64 %i.cw, 0
  %i.cx = and i64 %i.cv, 4607182418800017407
  %i.cy = sub nsw i32 1075, %.1
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 52
  %i.db = or i64 %i.cx, %i.da
  %.042 = select i1 %.not54, i64 %i.cv, i64 %i.db
  %i.dc = bitcast i64 %.042 to double
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.d, %bb.b, %bb.a, %bb.p
  %.0 = phi double [ %i.dc, %bb.p ], [ 0.000000e+00, %bb.a ], [ +inf, %bb.b ], [ 0.000000e+00, %bb.d ], [ +inf, %bb.o ]
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @posixIoFinderImpl(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret ptr @posixIoMethods
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @unixClose(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1389 ; 2 uses
  tail call fastcc void @verifyDbFile(ptr noundef %0)
  %i.c = tail call i32 @unixUnlock(ptr noundef %0, i32 noundef 0) ; 0 uses
  %i.d = load ptr, ptr @unixBigLock, align 8, !tbaa !740 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %unixEnterMutex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.e(ptr noundef nonnull %i.d) #58, !inline_history !27
  br label %unixEnterMutex.exit

unixEnterMutex.exit:                              ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !857  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.c

bb.c:                                             ; preds = %unixEnterMutex.exit
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.h(ptr noundef nonnull %i.g) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %unixEnterMutex.exit, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1390
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1389
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !833  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1391
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1392
  store ptr %i.m, ptr %i.n, align 8, !tbaa !1391
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.q, align 8, !tbaa !844
  store ptr null, ptr %i.l, align 8, !tbaa !833
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %sqlite3_mutex_enter.exit
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !857  ; 2 uses
  %.not.i10 = icmp eq ptr %i.r, null
  br i1 %.not.i10, label %sqlite3_mutex_leave.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.s(ptr noundef nonnull %i.r) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.e, %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !1389 ; 8 uses
  %.not.i11 = icmp eq ptr %i.t, null
  br i1 %.not.i11, label %releaseInodeInfo.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_mutex_leave.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !858
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !858
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %releaseInodeInfo.exit

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !857  ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.z, null
  br i1 %.not.i.i12, label %sqlite3_mutex_enter.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.aa(ptr noundef nonnull %i.z) #58, !inline_history !3441
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.i, %bb.h
  tail call fastcc void @closePendingFds(ptr noundef nonnull readonly %0), !inline_history !3442
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !857 ; 2 uses
  %.not.i20.i = icmp eq ptr %i.ab, null
  br i1 %.not.i20.i, label %sqlite3_mutex_leave.exit.i, label %bb.j

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ac(ptr noundef nonnull %i.ab) #58, !inline_history !3443
  br label %sqlite3_mutex_leave.exit.i

sqlite3_mutex_leave.exit.i:                       ; preds = %bb.j, %sqlite3_mutex_enter.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !860 ; 3 uses
  %.not18.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !859 ; 4 uses
  br i1 %.not18.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %sqlite3_mutex_leave.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !859
  br label %bb.m

bb.l:                                             ; preds = %sqlite3_mutex_leave.exit.i
  store ptr %i.ag, ptr @inodeList, align 8, !tbaa !853
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not19.i = icmp eq ptr %i.ag, null
  br i1 %.not19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !860
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !857 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.aj, null
  br i1 %.not.i21.i, label %sqlite3_mutex_free.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 120), align 8, !tbaa !743
  tail call void %i.ak(ptr noundef nonnull %i.aj) #58, !inline_history !3444
  br label %sqlite3_mutex_free.exit.i

sqlite3_mutex_free.exit.i:                        ; preds = %bb.p, %bb.o
  %i.al = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i22.i = icmp eq i32 %i.al, 0
  br i1 %.not.i22.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %sqlite3_mutex_free.exit.i
  %i.am = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.an(ptr noundef nonnull %i.am) #58, !inline_history !3445
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.r, %bb.q
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.ap = tail call i32 %i.ao(ptr noundef nonnull %i.t) #58, !inline_history !3446
  %i.aq = sext i32 %i.ap to i64
  %i.ar = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.as = sub nsw i64 %i.ar, %i.aq
  store i64 %i.as, ptr @sqlite3Stat, align 8, !tbaa !565
end_hunk_1
begin_hunk_2_@bytecodevtabCursorClear:bb.a
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.r)
  br label %sqlite3VdbeMemSetNull.exit

bb.j:                                             ; preds = %sqlite3VdbeMemRelease.exit
  store i16 1, ptr %i.s, align 4, !tbaa !686
  br label %sqlite3VdbeMemSetNull.exit

sqlite3VdbeMemSetNull.exit:                       ; preds = %bb.i, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !3021
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %sqlite3VdbeMemSetNull.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3022
  %i.ad = tail call i32 @sqlite3_finalize(ptr noundef %i.ac) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %sqlite3VdbeMemSetNull.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !3022
  store i32 0, ptr %i.z, align 8, !tbaa !3021
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rtreeMatchArgFree(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !570  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sqlite3_value_free.exit
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.p, %sqlite3_value_free.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3_value_free.exit ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !1107
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !761  ; 6 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %sqlite3_value_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i16, ptr %i.i, align 4, !tbaa !686
  %i.k = and i16 %i.j, -28672
  %.not.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !684
  %.not3.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not3.i.i.i, label %sqlite3VdbeMemRelease.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %i.h)
  br label %sqlite3VdbeMemRelease.exit.i.i

sqlite3VdbeMemRelease.exit.i.i:                   ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !683
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.o, ptr noundef nonnull %i.h)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !570
  br label %sqlite3_value_free.exit

sqlite3_value_free.exit:                          ; preds = %bb.b, %sqlite3VdbeMemRelease.exit.i.i
  %i.p = phi i32 [ %i.e, %bb.b ], [ %.pre, %sqlite3VdbeMemRelease.exit.i.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !6750

._crit_edge:                                      ; preds = %sqlite3_value_free.exit, %bb.a
  %i.s = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.t = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.t, null
  br i1 %.not.i.i6, label %sqlite3_mutex_enter.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.u(ptr noundef nonnull %i.t) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.g, %bb.f
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.w = tail call i32 %i.v(ptr noundef nonnull %0) #58, !inline_history !13
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.z = sub nsw i64 %i.y, %i.x
  store i64 %i.z, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ab = add nsw i64 %i.aa, -1
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ac(ptr noundef nonnull %0) #58, !inline_history !749
  %i.ad = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ad, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ae(ptr noundef nonnull %i.ad) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.i:                                             ; preds = %._crit_edge
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.af(ptr noundef nonnull %0) #58, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.h, %bb.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #47

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #47

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v2i16(<2 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smin.v2i16(<2 x i16>, <2 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #47

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { norecurse nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #48 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nofree nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #58 = { nounwind }
attributes #59 = { nounwind willreturn memory(read) }
attributes #60 = { nounwind willreturn memory(none) }
attributes #61 = { "function-inline-cost-multiplier"="2" }
attributes #62 = { nounwind allocsize(0) }
attributes #63 = { nounwind allocsize(1) }

!llvm.module.flags = !{!545, !546, !547, !548, !549}
!llvm.ident = !{!550}
!llvm.errno.tbaa = !{!555}

!0 = distinct !{null, null}
!1 = distinct !{!1, !598}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !598}
!5 = distinct !{!5, !598}
!6 = distinct !{ptr @sqlite3DbNNFreeNN, ptr @sqlite3_free, null}
!7 = distinct !{null}
!8 = distinct !{!8, !598}
!9 = distinct !{null}
!10 = distinct !{!10, !598}
!11 = distinct !{!11, !598}
!12 = distinct !{null}
!13 = distinct !{ptr @sqlite3_free, null}
!14 = distinct !{!14, !598}
!15 = distinct !{null}
!16 = distinct !{!16, !598}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{ptr @sqlite3_vmprintf, null}
!20 = distinct !{ptr @sqlite3_vfs_find, null}
!21 = distinct !{!21, !598}
!22 = distinct !{ptr @sqlite3_randomness, null}
!23 = distinct !{!23, !598}
!24 = distinct !{null, null}
!25 = distinct !{null}
!26 = distinct !{null, ptr @unixLogErrorAtLine}
!27 = distinct !{null, ptr @sqlite3_mutex_enter}
!28 = distinct !{null, ptr @sqlite3_mutex_leave}
!29 = distinct !{null}
!30 = distinct !{null, null, ptr @sqlite3_mutex_enter}
!31 = distinct !{null, null, ptr @sqlite3_mutex_leave}
!32 = distinct !{!32, !598}
!33 = distinct !{null}
!34 = distinct !{ptr @sqlite3PagerUnref, null, null, null}
!35 = distinct !{null}
!36 = distinct !{!36, !598}
!37 = distinct !{ptr @sqlite3DbFreeNN, ptr @sqlite3_free, null}
!38 = distinct !{ptr @sqlite3DbStrDup, null}
!39 = distinct !{null, ptr @sqlite3_mutex_enter}
!40 = distinct !{null, ptr @sqlite3_mutex_leave}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = distinct !{null}
!44 = distinct !{ptr @sqlite3_column_text, null, ptr @sqlite3_mutex_enter}
!45 = distinct !{ptr @sqlite3_column_text, null, ptr @sqlite3_mutex_leave}
!46 = distinct !{ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_enter}
!47 = distinct !{ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_leave}
!48 = distinct !{null}
!49 = distinct !{null, null}
!50 = distinct !{null}
!51 = distinct !{null, null, null}
!52 = distinct !{null, null}
!53 = distinct !{null, ptr @sqlite3DbMallocZero, null}
!54 = distinct !{null}
!55 = distinct !{null}
!56 = distinct !{null}
!57 = distinct !{null, ptr @sqlite3VtabUnlock}
!58 = distinct !{null, ptr @sqlite3VtabUnlock, null}
!59 = distinct !{!59, !598}
!60 = distinct !{!60, !598}
!61 = distinct !{null}
!62 = distinct !{!62, !598}
!63 = distinct !{!63, !598}
!64 = distinct !{null}
!65 = distinct !{null}
!66 = distinct !{!66, !598}
!67 = distinct !{!67, !598}
!68 = distinct !{null}
!69 = distinct !{ptr @btreeGetPage, null}
!70 = distinct !{!70, !598}
!71 = distinct !{!71, !598}
!72 = distinct !{null}
!73 = distinct !{null}
end_hunk_2
