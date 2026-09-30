Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/fp_dng?download=true
inline.NumInlined: 149
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6LibRaw20deflate_dng_load_rawEv:bb.a

_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa: ; preds = %.lr.ph74.i
  %lcmp.mod375.not = icmp eq i64 %xtraiter373, 0
  br i1 %lcmp.mod375.not, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread, label %.lr.ph74.i.epil.preheader

.lr.ph74.i.epil.preheader:                        ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa, %.lr.ph74.i.preheader
  %indvars.iv84.i.epil.init = phi i64 [ 0, %.lr.ph74.i.preheader ], [ %indvars.iv.next85.i.7, %_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa ]
  %.06372.i.epil.init = phi ptr [ %i.gp, %.lr.ph74.i.preheader ], [ %i.na, %_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod376 = icmp ne i64 %xtraiter373, 0
  call void @llvm.assume(i1 %lcmp.mod376)
  br label %.lr.ph74.i.epil

.lr.ph74.i.epil:                                  ; preds = %.lr.ph74.i.epil, %.lr.ph74.i.epil.preheader
  %indvars.iv84.i.epil = phi i64 [ %indvars.iv.next85.i.epil, %.lr.ph74.i.epil ], [ %indvars.iv84.i.epil.init, %.lr.ph74.i.epil.preheader ] ; 3 uses
  %.06372.i.epil = phi ptr [ %i.qz, %.lr.ph74.i.epil ], [ %.06372.i.epil.init, %.lr.ph74.i.epil.preheader ] ; 3 uses
  %epil.iter374 = phi i64 [ %epil.iter374.next, %.lr.ph74.i.epil ], [ 0, %.lr.ph74.i.epil.preheader ]
  %i.qu = getelementptr inbounds nuw i8, ptr %i.lc, i64 %indvars.iv84.i.epil
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !133
  store i8 %i.qv, ptr %.06372.i.epil, align 1, !tbaa !133
  %i.qw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv84.i.epil
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !133
  %i.qy = getelementptr inbounds nuw i8, ptr %.06372.i.epil, i64 1
  store i8 %i.qx, ptr %i.qy, align 1, !tbaa !133
  %i.qz = getelementptr inbounds nuw i8, ptr %.06372.i.epil, i64 2
  %indvars.iv.next85.i.epil = add nuw nsw i64 %indvars.iv84.i.epil, 1
  %epil.iter374.next = add i64 %epil.iter374, 1   ; 2 uses
  %epil.iter374.cmp.not = icmp eq i64 %epil.iter374.next, %xtraiter373
  br i1 %epil.iter374.cmp.not, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread, label %.lr.ph74.i.epil, !llvm.loop !179

_ZL13DecodeFPDeltaPhS_iii.exit.thread:            ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa, %.lr.ph74.i.epil, %bb.au
  %i.ra = mul i32 %i.gl, %i.bp                    ; 2 uses
  %i.rb = icmp sgt i32 %i.ra, 0
  br i1 %i.rb, label %.lr.ph73.preheader.i, label %_ZL12expandFloatsPhii.exit

_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod369.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod369.not, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread192, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa ]
  %.170.i.epil.init = phi ptr [ %i.gp, %.lr.ph.i.preheader ], [ %i.op, %_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa ]
  %lcmp.mod370 = icmp ne i64 %xtraiter367, 0
  call void @llvm.assume(i1 %lcmp.mod370)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 4 uses
  %.170.i.epil = phi ptr [ %i.rk, %.lr.ph.i.epil ], [ %.170.i.epil.init, %.lr.ph.i.epil.preheader ] ; 4 uses
  %epil.iter368 = phi i64 [ %epil.iter368.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.rc = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.i.epil
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !133
  store i8 %i.rd, ptr %.170.i.epil, align 1, !tbaa !133
  %i.re = getelementptr inbounds nuw i8, ptr %i.lc, i64 %indvars.iv.i.epil
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !133
  %i.rg = getelementptr inbounds nuw i8, ptr %.170.i.epil, i64 1
  store i8 %i.rf, ptr %i.rg, align 1, !tbaa !133
  %i.rh = getelementptr inbounds nuw i8, ptr %i.nd, i64 %indvars.iv.i.epil
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !133
  %i.rj = getelementptr inbounds nuw i8, ptr %.170.i.epil, i64 2
  store i8 %i.ri, ptr %i.rj, align 1, !tbaa !133
  %i.rk = getelementptr inbounds nuw i8, ptr %.170.i.epil, i64 3
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter368.next = add i64 %epil.iter368, 1   ; 2 uses
  %epil.iter368.cmp.not = icmp eq i64 %epil.iter368.next, %xtraiter367
  br i1 %epil.iter368.cmp.not, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread192, label %.lr.ph.i.epil, !llvm.loop !180

_ZL13DecodeFPDeltaPhS_iii.exit.thread192:         ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.av
  %i.rl = mul i32 %i.gl, %i.bp                    ; 2 uses
  %i.rm = icmp sgt i32 %i.rl, 0
  br i1 %i.rm, label %.lr.ph68.preheader.i, label %_ZL12expandFloatsPhii.exit

_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph77.i
  %lcmp.mod381.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod381.not, label %_ZL13DecodeFPDeltaPhS_iii.exit, label %.lr.ph77.i.epil.preheader

.lr.ph77.i.epil.preheader:                        ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa, %.lr.ph77.i.preheader
  %indvars.iv89.i.epil.init = phi i64 [ 0, %.lr.ph77.i.preheader ], [ %indvars.iv.next90.i.3, %_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa ]
  %.275.i.epil.init = phi ptr [ %i.gp, %.lr.ph77.i.preheader ], [ %i.qt, %_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa ]
  %lcmp.mod382 = icmp ne i64 %xtraiter379, 0
  call void @llvm.assume(i1 %lcmp.mod382)
  br label %.lr.ph77.i.epil

.lr.ph77.i.epil:                                  ; preds = %.lr.ph77.i.epil, %.lr.ph77.i.epil.preheader
  %indvars.iv89.i.epil = phi i64 [ %indvars.iv.next90.i.epil, %.lr.ph77.i.epil ], [ %indvars.iv89.i.epil.init, %.lr.ph77.i.epil.preheader ] ; 5 uses
  %.275.i.epil = phi ptr [ %i.ry, %.lr.ph77.i.epil ], [ %.275.i.epil.init, %.lr.ph77.i.epil.preheader ] ; 5 uses
  %epil.iter380 = phi i64 [ %epil.iter380.next, %.lr.ph77.i.epil ], [ 0, %.lr.ph77.i.epil.preheader ]
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ov, i64 %indvars.iv89.i.epil
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !133
  store i8 %i.ro, ptr %.275.i.epil, align 1, !tbaa !133
  %i.rp = getelementptr inbounds nuw i8, ptr %i.os, i64 %indvars.iv89.i.epil
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !133
  %i.rr = getelementptr inbounds nuw i8, ptr %.275.i.epil, i64 1
  store i8 %i.rq, ptr %i.rr, align 1, !tbaa !133
  %i.rs = getelementptr inbounds nuw i8, ptr %i.lc, i64 %indvars.iv89.i.epil
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !133
  %i.ru = getelementptr inbounds nuw i8, ptr %.275.i.epil, i64 2
  store i8 %i.rt, ptr %i.ru, align 1, !tbaa !133
  %i.rv = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv89.i.epil
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !133
  %i.rx = getelementptr inbounds nuw i8, ptr %.275.i.epil, i64 3
  store i8 %i.rw, ptr %i.rx, align 1, !tbaa !133
  %i.ry = getelementptr inbounds nuw i8, ptr %.275.i.epil, i64 4
  %indvars.iv.next90.i.epil = add nuw nsw i64 %indvars.iv89.i.epil, 1
  %epil.iter380.next = add i64 %epil.iter380, 1   ; 2 uses
  %epil.iter380.cmp.not = icmp eq i64 %epil.iter380.next, %xtraiter379
  br i1 %epil.iter380.cmp.not, label %_ZL13DecodeFPDeltaPhS_iii.exit, label %.lr.ph77.i.epil, !llvm.loop !181

_ZL13DecodeFPDeltaPhS_iii.exit:                   ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa, %.lr.ph77.i.epil, %bb.aw
  %i.rz = mul i32 %i.gl, %i.bp                    ; 3 uses
  %i.sa = icmp sgt i32 %i.rz, 0
  %or.cond193 = and i1 %cond, %i.sa
  br i1 %or.cond193, label %.lr.ph.preheader.i157, label %_ZL12expandFloatsPhii.exit

.lr.ph.preheader.i157:                            ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit
  %wide.trip.count.i158 = zext nneg i32 %i.rz to i64 ; 2 uses
  %xtraiter385 = and i64 %wide.trip.count.i158, 7 ; 3 uses
  %i.sb = icmp ult i32 %i.rz, 8
  br i1 %i.sb, label %.lr.ph.i159.epil.preheader, label %.lr.ph.preheader.i157.new

.lr.ph.preheader.i157.new:                        ; preds = %.lr.ph.preheader.i157
  %unroll_iter390 = and i64 %wide.trip.count.i158, 2147483640
  br label %.lr.ph.i159

.lr.ph73.preheader.i:                             ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread
  %i.sc = zext nneg i32 %i.ra to i64
  br label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %_Z17__DNG_HalfToFloatt.exit.i, %.lr.ph73.preheader.i
  %indvars.iv81.i = phi i64 [ %i.sc, %.lr.ph73.preheader.i ], [ %indvars.iv.next82.i, %_Z17__DNG_HalfToFloatt.exit.i ] ; 2 uses
  %.04971.i = phi float [ 0.000000e+00, %.lr.ph73.preheader.i ], [ %.049..cast54.i, %_Z17__DNG_HalfToFloatt.exit.i ] ; 2 uses
  %indvars.iv.next82.i = add nsw i64 %indvars.iv81.i, -1 ; 3 uses
  %i.sd = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %indvars.iv.next82.i
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !135
  %i.sf = zext i16 %i.se to i32                   ; 4 uses
  %i.sg = lshr i32 %i.sf, 15                      ; 3 uses
  %i.sh = lshr i32 %i.sf, 10
  %i.si = and i32 %i.sh, 31                       ; 2 uses
  %i.sj = and i32 %i.sf, 1023                     ; 4 uses
  switch i32 %i.si, label %bb.bb [
    i32 0, label %bb.ax
    i32 31, label %bb.az
  ]

bb.ax:                                            ; preds = %.lr.ph73.i
  %i.sk = icmp eq i32 %i.sj, 0
  br i1 %i.sk, label %bb.ay, label %.preheader.preheader.i.i164

.preheader.preheader.i.i164:                      ; preds = %bb.ax
  %.masked.numleadingzeros.i.i = call range(i32 22, 33) i32 @llvm.ctlz.i32(i32 %i.sj, i1 true) ; 2 uses
  %.masked.leadingonepos.i.i = xor i32 %.masked.numleadingzeros.i.i, 31
  %.preheader.tripcount.i.i = sub nuw nsw i32 10, %.masked.leadingonepos.i.i
  %i.sl = shl nuw nsw i32 %i.sf, %.preheader.tripcount.i.i
  %i.sm = sub nsw i32 22, %.masked.numleadingzeros.i.i
  %i.sn = and i32 %i.sl, 1022
  br label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.so = shl nuw i32 %i.sg, 31
  br label %_Z17__DNG_HalfToFloatt.exit.i

bb.az:                                            ; preds = %.lr.ph73.i
  %i.sp = icmp eq i32 %i.sj, 0
  br i1 %i.sp, label %bb.ba, label %_Z17__DNG_HalfToFloatt.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.sq = shl nuw i32 %i.sg, 31
  %i.sr = or disjoint i32 %i.sq, 1199562752
  br label %_Z17__DNG_HalfToFloatt.exit.i

bb.bb:                                            ; preds = %.preheader.preheader.i.i164, %.lr.ph73.i
  %.121.i.i = phi i32 [ %i.sm, %.preheader.preheader.i.i164 ], [ %i.si, %.lr.ph73.i ]
  %.1.i.i165 = phi i32 [ %i.sn, %.preheader.preheader.i.i164 ], [ %i.sj, %.lr.ph73.i ]
  %i.ss = shl nuw nsw i32 %.1.i.i165, 13
  %i.st = shl nuw i32 %i.sg, 31
  %i.su = shl nsw i32 %.121.i.i, 23
  %i.sv = add nsw i32 %i.su, 939524096
  %i.sw = or i32 %i.st, %i.sv
  %i.sx = or disjoint i32 %i.sw, %i.ss
  br label %_Z17__DNG_HalfToFloatt.exit.i

_Z17__DNG_HalfToFloatt.exit.i:                    ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.022.i.i = phi i32 [ %i.so, %bb.ay ], [ %i.sx, %bb.bb ], [ %i.sr, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next82.i
  store i32 %.022.i.i, ptr %i.sy, align 4, !tbaa !136
  %.cast54.i = bitcast i32 %.022.i.i to float     ; 2 uses
  %i.sz = fcmp reassoc nsz arcp contract afn ogt float %.04971.i, %.cast54.i
  %.049..cast54.i = select reassoc nsz arcp contract afn i1 %i.sz, float %.04971.i, float %.cast54.i ; 2 uses
  %i.ta = icmp samesign ugt i64 %indvars.iv81.i, 1
  br i1 %i.ta, label %.lr.ph73.i, label %_ZL12expandFloatsPhii.exit, !llvm.loop !1

.lr.ph68.preheader.i:                             ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread192
  %i.tb = add nsw i32 %i.rl, -1                   ; 2 uses
  %i.tc = mul nuw nsw i32 %i.tb, 3
  %i.td = zext nneg i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.td
  %i.tf = zext nneg i32 %i.tb to i64
  br label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %_Z17__DNG_FP24ToFloatPKh.exit.i, %.lr.ph68.preheader.i
  %indvars.iv78.i = phi i64 [ %i.tf, %.lr.ph68.preheader.i ], [ %indvars.iv.next79.i, %_Z17__DNG_FP24ToFloatPKh.exit.i ] ; 3 uses
  %.04766.i = phi ptr [ %i.te, %.lr.ph68.preheader.i ], [ %i.uc, %_Z17__DNG_FP24ToFloatPKh.exit.i ] ; 3 uses
  %.165.i = phi float [ 0.000000e+00, %.lr.ph68.preheader.i ], [ %.1..cast.i, %_Z17__DNG_FP24ToFloatPKh.exit.i ] ; 2 uses
  %i.tg = load i8, ptr %.04766.i, align 1, !tbaa !133
  %i.th = zext i8 %i.tg to i32                    ; 2 uses
  %i.ti = lshr i32 %i.th, 7                       ; 3 uses
  %i.tj = and i32 %i.th, 127                      ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.04766.i, i64 1
  %2 = load i16, ptr %i.tk, align 1               ; 3 uses
  %3 = call i16 @llvm.bswap.i16(i16 %2)
  %i.tl = zext i16 %3 to i32                      ; 3 uses
  switch i32 %i.tj, label %bb.bg [
    i32 0, label %bb.bc
    i32 127, label %bb.be
  ]

bb.bc:                                            ; preds = %.lr.ph68.i
  %i.tm = icmp eq i16 %2, 0
  br i1 %i.tm, label %bb.bd, label %._crit_edge.i.i163

bb.bd:                                            ; preds = %bb.bc
  %i.tn = shl nuw i32 %i.ti, 31
  br label %_Z17__DNG_FP24ToFloatPKh.exit.i

._crit_edge.i.i163:                               ; preds = %bb.bc
  %.masked.numleadingzeros.i56.i = call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.tl, i1 true) ; 2 uses
  %i.to = sub nsw i32 16, %.masked.numleadingzeros.i56.i
  %.masked.leadingonepos.i57.i = xor i32 %.masked.numleadingzeros.i56.i, 31
  %.lr.ph.tripcount.i.i = sub nuw nsw i32 16, %.masked.leadingonepos.i57.i
  %i.tp = shl nuw i32 %i.tl, %.lr.ph.tripcount.i.i
  %i.tq = and i32 %i.tp, 65535
  br label %bb.bg

bb.be:                                            ; preds = %.lr.ph68.i
  %i.tr = icmp eq i16 %2, 0
  br i1 %i.tr, label %bb.bf, label %_Z17__DNG_FP24ToFloatPKh.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.ts = shl nuw i32 %i.ti, 31
  %i.tt = or disjoint i32 %i.ts, 1602224000
  br label %_Z17__DNG_FP24ToFloatPKh.exit.i

bb.bg:                                            ; preds = %._crit_edge.i.i163, %.lr.ph68.i
  %.121.i58.i = phi i32 [ %i.to, %._crit_edge.i.i163 ], [ %i.tj, %.lr.ph68.i ]
  %.1.i59.i = phi i32 [ %i.tq, %._crit_edge.i.i163 ], [ %i.tl, %.lr.ph68.i ]
  %i.tu = shl nuw nsw i32 %.1.i59.i, 7
  %i.tv = shl nuw i32 %i.ti, 31
  %i.tw = shl nsw i32 %.121.i58.i, 23
  %i.tx = add nsw i32 %i.tw, 536870912
  %i.ty = or i32 %i.tv, %i.tx
  %i.tz = or disjoint i32 %i.ty, %i.tu
  br label %_Z17__DNG_FP24ToFloatPKh.exit.i

_Z17__DNG_FP24ToFloatPKh.exit.i:                  ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd
  %.022.i55.i = phi i32 [ %i.tn, %bb.bd ], [ %i.tz, %bb.bg ], [ %i.tt, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv78.i
  store i32 %.022.i55.i, ptr %i.ua, align 4, !tbaa !136
  %.cast.i = bitcast i32 %.022.i55.i to float     ; 2 uses
  %i.ub = fcmp reassoc nsz arcp contract afn ogt float %.165.i, %.cast.i
  %.1..cast.i = select reassoc nsz arcp contract afn i1 %i.ub, float %.165.i, float %.cast.i ; 2 uses
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, -1
  %i.uc = getelementptr inbounds i8, ptr %.04766.i, i64 -3
  %i.ud = icmp sgt i64 %indvars.iv78.i, 0
  br i1 %i.ud, label %.lr.ph68.i, label %_ZL12expandFloatsPhii.exit, !llvm.loop !2

.lr.ph.i159:                                      ; preds = %.lr.ph.i159, %.lr.ph.preheader.i157.new
  %indvars.iv.i160 = phi i64 [ 0, %.lr.ph.preheader.i157.new ], [ %indvars.iv.next.i161.7, %.lr.ph.i159 ] ; 9 uses
  %.263.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i157.new ], [ %.2..i.7, %.lr.ph.i159 ] ; 2 uses
  %niter391 = phi i64 [ 0, %.lr.ph.preheader.i157.new ], [ %niter391.next.7, %.lr.ph.i159 ]
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i160
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !137 ; 2 uses
  %i.ug = fcmp reassoc nsz arcp contract afn ogt float %.263.i, %i.uf
  %.2..i = select reassoc nsz arcp contract afn i1 %i.ug, float %.263.i, float %i.uf ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i160
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !137 ; 2 uses
  %i.uk = fcmp reassoc nsz arcp contract afn ogt float %.2..i, %i.uj
  %.2..i.1 = select reassoc nsz arcp contract afn i1 %i.uk, float %.2..i, float %i.uj ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i160
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.un = load float, ptr %i.um, align 4, !tbaa !137 ; 2 uses
  %i.uo = fcmp reassoc nsz arcp contract afn ogt float %.2..i.1, %i.un
  %.2..i.2 = select reassoc nsz arcp contract afn i1 %i.uo, float %.2..i.1, float %i.un ; 2 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i160
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 12
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !137 ; 2 uses
  %i.us = fcmp reassoc nsz arcp contract afn ogt float %.2..i.2, %i.ur
  %.2..i.3 = select reassoc nsz arcp contract afn i1 %i.us, float %.2..i.2, float %i.ur ; 2 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i160
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !137 ; 2 uses
  %i.uw = fcmp reassoc nsz arcp contract afn ogt float %.2..i.3, %i.uv
  %.2..i.4 = select reassoc nsz arcp contract afn i1 %i.uw, float %.2..i.3, float %i.uv ; 2 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i160
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 20
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !137 ; 2 uses
  %i.va = fcmp reassoc nsz arcp contract afn ogt float %.2..i.4, %i.uz
  %.2..i.5 = select reassoc nsz arcp contract afn i1 %i.va, float %.2..i.4, float %i.uz ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i160
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 24
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !137 ; 2 uses
  %i.ve = fcmp reassoc nsz arcp contract afn ogt float %.2..i.5, %i.vd
  %.2..i.6 = select reassoc nsz arcp contract afn i1 %i.ve, float %.2..i.5, float %i.vd ; 2 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i160
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 28
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !137 ; 2 uses
  %i.vi = fcmp reassoc nsz arcp contract afn ogt float %.2..i.6, %i.vh
  %.2..i.7 = select reassoc nsz arcp contract afn i1 %i.vi, float %.2..i.6, float %i.vh ; 3 uses
  %indvars.iv.next.i161.7 = add nuw nsw i64 %indvars.iv.i160, 8 ; 2 uses
  %niter391.next.7 = add i64 %niter391, 8         ; 2 uses
  %niter391.ncmp.7 = icmp eq i64 %niter391.next.7, %unroll_iter390
  br i1 %niter391.ncmp.7, label %_ZL12expandFloatsPhii.exit.loopexit.unr-lcssa, label %.lr.ph.i159, !llvm.loop !3

_ZL12expandFloatsPhii.exit.loopexit.unr-lcssa:    ; preds = %.lr.ph.i159
  %lcmp.mod387.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod387.not, label %_ZL12expandFloatsPhii.exit, label %.lr.ph.i159.epil.preheader

.lr.ph.i159.epil.preheader:                       ; preds = %_ZL12expandFloatsPhii.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i157
  %indvars.iv.i160.epil.init = phi i64 [ 0, %.lr.ph.preheader.i157 ], [ %indvars.iv.next.i161.7, %_ZL12expandFloatsPhii.exit.loopexit.unr-lcssa ]
  %.263.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i157 ], [ %.2..i.7, %_ZL12expandFloatsPhii.exit.loopexit.unr-lcssa ]
  %lcmp.mod389 = icmp ne i64 %xtraiter385, 0
  call void @llvm.assume(i1 %lcmp.mod389)
  br label %.lr.ph.i159.epil

.lr.ph.i159.epil:                                 ; preds = %.lr.ph.i159.epil, %.lr.ph.i159.epil.preheader
  %indvars.iv.i160.epil = phi i64 [ %indvars.iv.i160.epil.init, %.lr.ph.i159.epil.preheader ], [ %indvars.iv.next.i161.epil, %.lr.ph.i159.epil ] ; 2 uses
  %.263.i.epil = phi float [ %.263.i.epil.init, %.lr.ph.i159.epil.preheader ], [ %.2..i.epil, %.lr.ph.i159.epil ] ; 2 uses
  %epil.iter386 = phi i64 [ 0, %.lr.ph.i159.epil.preheader ], [ %epil.iter386.next, %.lr.ph.i159.epil ]
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i160.epil
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !137 ; 2 uses
  %i.vl = fcmp reassoc nsz arcp contract afn ogt float %.263.i.epil, %i.vk
  %.2..i.epil = select reassoc nsz arcp contract afn i1 %i.vl, float %.263.i.epil, float %i.vk ; 2 uses
  %indvars.iv.next.i161.epil = add nuw nsw i64 %indvars.iv.i160.epil, 1
  %epil.iter386.next = add i64 %epil.iter386, 1   ; 2 uses
  %epil.iter386.cmp.not = icmp eq i64 %epil.iter386.next, %xtraiter385
  br i1 %epil.iter386.cmp.not, label %_ZL12expandFloatsPhii.exit, label %.lr.ph.i159.epil, !llvm.loop !182

_ZL12expandFloatsPhii.exit:                       ; preds = %_Z17__DNG_FP24ToFloatPKh.exit.i, %_Z17__DNG_HalfToFloatt.exit.i, %_ZL12expandFloatsPhii.exit.loopexit.unr-lcssa, %.lr.ph.i159.epil, %_ZL13DecodeFPDeltaPhS_iii.exit, %_ZL13DecodeFPDeltaPhS_iii.exit.thread192, %_ZL13DecodeFPDeltaPhS_iii.exit.thread
  %.3.i = phi nsz float [ 0.000000e+00, %_ZL13DecodeFPDeltaPhS_iii.exit ], [ %.049..cast54.i, %_Z17__DNG_HalfToFloatt.exit.i ], [ %.2..i.epil, %.lr.ph.i159.epil ], [ 0.000000e+00, %_ZL13DecodeFPDeltaPhS_iii.exit.thread ], [ 0.000000e+00, %_ZL13DecodeFPDeltaPhS_iii.exit.thread192 ], [ %.2..i.7, %_ZL12expandFloatsPhii.exit.loopexit.unr-lcssa ], [ %.1..cast.i, %_Z17__DNG_FP24ToFloatPKh.exit.i ] ; 2 uses
  %i.vm = fcmp reassoc nsz arcp contract afn ogt float %.2112213, %.3.i
  %i.vn = select reassoc nsz arcp contract afn i1 %i.vm, float %.2112213, float %.3.i ; 2 uses
  %i.vo = add i64 %.0214, %.093227
  %i.vp = load i16, ptr %i.bq, align 2, !tbaa !126
  %i.vq = zext i16 %i.vp to i64
  %i.vr = mul i64 %i.vo, %i.vq
  %i.vs = add i64 %i.vr, %.091221
  %i.vt = mul i64 %i.vs, %i.gm
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.vt
  %i.vv = mul i64 %i.gb, %i.gm
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.vu, ptr align 1 %i.gp, i64 %i.vv, i1 false)
  %i.vw = add nuw i64 %.0214, 1                   ; 2 uses
  %i.vx = icmp ult i64 %i.vw, %i.fq
  br i1 %i.vx, label %bb.aq, label %._crit_edge217, !llvm.loop !183

bb.bh:                                            ; preds = %._crit_edge229
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 193808
  store ptr %i.cu, ptr %i.vy, align 8, !tbaa !138
  %i.vz = load i16, ptr %i.bq, align 2, !tbaa !126
  %i.wa = zext i16 %i.vz to i32
  %i.wb = shl nuw nsw i32 %i.wa, 2
  br label %.sink.split

bb.bi:                                            ; preds = %._crit_edge229
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 193816
  store ptr %i.cu, ptr %i.wc, align 8, !tbaa !139
  %i.wd = load i16, ptr %i.bq, align 2, !tbaa !126
  %i.we = zext i16 %i.wd to i32
  %i.wf = mul nuw nsw i32 %i.we, 12
  br label %.sink.split

bb.bj:                                            ; preds = %._crit_edge229
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 193824
  store ptr %i.cu, ptr %i.wg, align 8, !tbaa !140
  %i.wh = load i16, ptr %i.bq, align 2, !tbaa !126
  %i.wi = zext i16 %i.wh to i32
  %i.wj = shl nuw nsw i32 %i.wi, 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bh, %bb.bj, %bb.bi
  %.sink282 = phi i32 [ %i.wf, %bb.bi ], [ %i.wj, %bb.bj ], [ %i.wb, %bb.bh ] ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sink282, ptr %i.wk, align 8, !tbaa !141
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 194304
  store i32 %.sink282, ptr %i.wl, align 8, !tbaa !142
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split, %._crit_edge229
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !143
  %i.wo = and i32 %i.wn, 2
  %.not129 = icmp eq i32 %i.wo, 0
  br i1 %.not129, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN6LibRaw17convertFloatToIntEfff(ptr noundef nonnull align 8 dereferenceable(768512) %0, float noundef 4.096000e+03, float noundef 3.276700e+04, float noundef 1.638300e+04)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %.not.i.i.i = icmp eq ptr %.sroa.0177.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.wq = ptrtoint ptr %.sroa.0177.0 to i64
  %i.wr = sub i64 %.sroa.13.0, %i.wq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0177.0, i64 noundef %i.wr) #16
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.bn, %bb.bo
  %.not.i.i.i166 = icmp eq ptr %.sroa.0184.0, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorIxSaIxEED2Ev.exit.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.ws = ptrtoint ptr %.sroa.0184.0 to i64
  %i.wt = sub i64 %.sroa.13189.0, %i.ws
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0184.0, i64 noundef %i.wt) #16
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit.i

_ZNSt6vectorIxSaIxEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.bp
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !42
  %i.ww = ptrtoint ptr %i.wv to i64
  %i.wx = sub i64 %i.ww, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.wx) #16
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.wz, null
  br i1 %.not.i.i.i1.i, label %_ZN18tile_stripe_data_tD2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !42
  %i.xc = ptrtoint ptr %i.xb to i64
  %i.xd = ptrtoint ptr %i.wz to i64
  %i.xe = sub i64 %i.xc, %i.xd
  call void @_ZdlPvm(ptr noundef nonnull %i.wz, i64 noundef %i.xe) #16
  br label %_ZN18tile_stripe_data_tD2Ev.exit

_ZN18tile_stripe_data_tD2Ev.exit:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void

bb.br:                                            ; preds = %bb.aj, %bb.ao, %bb.ak, %bb.bm
  %.pn132.pn.pn.pn = phi { ptr, i32 } [ %i.wp, %bb.bm ], [ %i.ff, %bb.aj ], [ %lpad.phi, %bb.ao ], [ %i.fg, %bb.ak ] ; 2 uses
  %.not.i.i.i169 = icmp eq ptr %.sroa.0177.0, null
  br i1 %.not.i.i.i169, label %_ZNSt6vectorIhSaIhEED2Ev.exit170, label %bb.bs

end_hunk_0
begin_hunk_1_@_ZN6LibRaw28uncompressed_fp_dng_load_rawEv:bb.a
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 %indvars.iv.i ; 3 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !133
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 2 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !133
  store i8 %i.ge, ptr %i.gb, align 1, !tbaa !133
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !133
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.gf = icmp samesign ult i64 %indvars.iv.next.i, %i.et
  br i1 %i.gf, label %.lr.ph.i, label %_ZL13libraw_swap32Phi.exit.thread157, !llvm.loop !202

_ZL13libraw_swap24Phi.exit:                       ; preds = %bb.ai
  br i1 %or.cond5, label %bb.ak, label %_ZL13libraw_swap32Phi.exit

bb.ak:                                            ; preds = %_ZL13libraw_swap24Phi.exit
  br i1 %i.ep, label %iter.check, label %_ZL13libraw_swap32Phi.exit.thread

iter.check:                                       ; preds = %bb.ak
  br i1 %min.iters.check, label %.lr.ph.i135.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check229, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 64 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 96 ; 2 uses
  %wide.load = load <8 x i32>, ptr %i.gg, align 4, !tbaa !136
  %wide.load230.a = load <8 x i32>, ptr %i.gh, align 4, !tbaa !136
  %wide.load231.a = load <8 x i32>, ptr %i.gi, align 4, !tbaa !136
  %wide.load232 = load <8 x i32>, ptr %i.gj, align 4, !tbaa !136
  %i.gk = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load)
  %i.gl = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load230.a)
  %i.gm = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load231.a)
  %i.gn = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load232)
  store <8 x i32> %i.gk, ptr %i.gg, align 4, !tbaa !136
  store <8 x i32> %i.gl, ptr %i.gh, align 4, !tbaa !136
  store <8 x i32> %i.gm, ptr %i.gi, align 4, !tbaa !136
  store <8 x i32> %i.gn, ptr %i.gj, align 4, !tbaa !136
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.go = icmp eq i64 %index.next, %n.vec
  br i1 %i.go, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL13libraw_swap32Phi.exit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i135.preheader, label %vec.epilog.ph, !prof !208

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index234 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next236, %vec.epilog.vector.body ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index234 ; 2 uses
  %wide.load235 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !136
  %i.gq = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load235)
  store <4 x i32> %i.gq, ptr %i.gp, align 4, !tbaa !136
  %index.next236 = add nuw i64 %index234, 4       ; 2 uses
  %i.gr = icmp eq i64 %index.next236, %n.vec233
  br i1 %i.gr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !204

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n237, label %_ZL13libraw_swap32Phi.exit.thread, label %.lr.ph.i135.preheader

.lr.ph.i135.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i136.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec233, %vec.epilog.middle.block ]
  br label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %.lr.ph.i135.preheader, %.lr.ph.i135
  %indvars.iv.i136 = phi i64 [ %indvars.iv.next.i137, %.lr.ph.i135 ], [ %indvars.iv.i136.ph, %.lr.ph.i135.preheader ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i136 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !136
  %i.gu = tail call i32 @llvm.bswap.i32(i32 %i.gt)
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !136
  %indvars.iv.next.i137 = add nuw nsw i64 %indvars.iv.i136, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i137, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13libraw_swap32Phi.exit.thread, label %.lr.ph.i135, !llvm.loop !205

_ZL13libraw_swap32Phi.exit.thread:                ; preds = %.lr.ph.i135, %middle.block, %vec.epilog.middle.block, %bb.ak
  %i.gv = load i32, ptr %i.ai, align 8, !tbaa !35
  %i.gw = load i32, ptr %i.n, align 8, !tbaa !119
  %i.gx = mul i32 %i.gw, %i.gv
  br label %.preheader61.i

_ZL13libraw_swap32Phi.exit.thread157:             ; preds = %.lr.ph.i, %bb.aj
  %i.gy = load i32, ptr %i.ai, align 8, !tbaa !35
  %i.gz = load i32, ptr %i.n, align 8, !tbaa !119
  %i.ha = mul i32 %i.gz, %i.gy                    ; 2 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %.lr.ph68.preheader.i, label %_ZL12expandFloatsPhii.exit

_ZL13libraw_swap32Phi.exit:                       ; preds = %_ZL13libraw_swap24Phi.exit
  %i.hc = load i32, ptr %i.ai, align 8, !tbaa !35
  %i.hd = load i32, ptr %i.n, align 8, !tbaa !119
  %i.he = mul i32 %i.hd, %i.hc                    ; 2 uses
  switch i32 %i.aa, label %_ZL12expandFloatsPhii.exit [
    i32 2, label %.preheader.i
    i32 4, label %.preheader61.i
  ]

.preheader61.i:                                   ; preds = %_ZL13libraw_swap32Phi.exit, %_ZL13libraw_swap32Phi.exit.thread
  %i.hf = phi i32 [ %i.gx, %_ZL13libraw_swap32Phi.exit.thread ], [ %i.he, %_ZL13libraw_swap32Phi.exit ] ; 3 uses
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph.preheader.i138, label %_ZL12expandFloatsPhii.exit

.lr.ph.preheader.i138:                            ; preds = %.preheader61.i
  %wide.trip.count.i139 = zext nneg i32 %i.hf to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i139, 7    ; 3 uses
  %i.hh = icmp ult i32 %i.hf, 8
  br i1 %i.hh, label %.lr.ph.i140.epil.preheader, label %.lr.ph.preheader.i138.new

.lr.ph.preheader.i138.new:                        ; preds = %.lr.ph.preheader.i138
  %unroll_iter = and i64 %wide.trip.count.i139, 2147483640
  br label %.lr.ph.i140

.preheader.i:                                     ; preds = %_ZL13libraw_swap32Phi.exit.thread158, %_ZL13libraw_swap32Phi.exit
  %i.hi = phi i32 [ %i.fy, %_ZL13libraw_swap32Phi.exit.thread158 ], [ %i.he, %_ZL13libraw_swap32Phi.exit ] ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph73.preheader.i, label %_ZL12expandFloatsPhii.exit

.lr.ph73.preheader.i:                             ; preds = %.preheader.i
  %i.hk = zext nneg i32 %i.hi to i64
  br label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %_Z17__DNG_HalfToFloatt.exit.i, %.lr.ph73.preheader.i
  %indvars.iv81.i = phi i64 [ %i.hk, %.lr.ph73.preheader.i ], [ %indvars.iv.next82.i, %_Z17__DNG_HalfToFloatt.exit.i ] ; 2 uses
  %.04971.i = phi float [ 0.000000e+00, %.lr.ph73.preheader.i ], [ %.049..cast54.i, %_Z17__DNG_HalfToFloatt.exit.i ] ; 2 uses
  %indvars.iv.next82.i = add nsw i64 %indvars.iv81.i, -1 ; 3 uses
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv.next82.i
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !135
  %i.hn = zext i16 %i.hm to i32                   ; 4 uses
  %i.ho = lshr i32 %i.hn, 15                      ; 3 uses
  %i.hp = lshr i32 %i.hn, 10
  %i.hq = and i32 %i.hp, 31                       ; 2 uses
  %i.hr = and i32 %i.hn, 1023                     ; 4 uses
  switch i32 %i.hq, label %bb.ap [
    i32 0, label %bb.al
    i32 31, label %bb.an
  ]

bb.al:                                            ; preds = %.lr.ph73.i
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.am, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.al
  %.masked.numleadingzeros.i.i = tail call range(i32 22, 33) i32 @llvm.ctlz.i32(i32 %i.hr, i1 true) ; 2 uses
  %.masked.leadingonepos.i.i = xor i32 %.masked.numleadingzeros.i.i, 31
  %.preheader.tripcount.i.i = sub nuw nsw i32 10, %.masked.leadingonepos.i.i
  %i.ht = shl nuw nsw i32 %i.hn, %.preheader.tripcount.i.i
  %i.hu = sub nsw i32 22, %.masked.numleadingzeros.i.i
  %i.hv = and i32 %i.ht, 1022
  br label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.hw = shl nuw i32 %i.ho, 31
  br label %_Z17__DNG_HalfToFloatt.exit.i

bb.an:                                            ; preds = %.lr.ph73.i
  %i.hx = icmp eq i32 %i.hr, 0
  br i1 %i.hx, label %bb.ao, label %_Z17__DNG_HalfToFloatt.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.hy = shl nuw i32 %i.ho, 31
  %i.hz = or disjoint i32 %i.hy, 1199562752
  br label %_Z17__DNG_HalfToFloatt.exit.i

bb.ap:                                            ; preds = %.preheader.preheader.i.i, %.lr.ph73.i
  %.121.i.i = phi i32 [ %i.hu, %.preheader.preheader.i.i ], [ %i.hq, %.lr.ph73.i ]
  %.1.i.i = phi i32 [ %i.hv, %.preheader.preheader.i.i ], [ %i.hr, %.lr.ph73.i ]
  %i.ia = shl nuw nsw i32 %.1.i.i, 13
  %i.ib = shl nuw i32 %i.ho, 31
  %i.ic = shl nsw i32 %.121.i.i, 23
  %i.id = add nsw i32 %i.ic, 939524096
  %i.ie = or i32 %i.ib, %i.id
  %i.if = or disjoint i32 %i.ie, %i.ia
  br label %_Z17__DNG_HalfToFloatt.exit.i

_Z17__DNG_HalfToFloatt.exit.i:                    ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %.022.i.i = phi i32 [ %i.hw, %bb.am ], [ %i.if, %bb.ap ], [ %i.hz, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.next82.i
  store i32 %.022.i.i, ptr %i.ig, align 4, !tbaa !136
  %.cast54.i = bitcast i32 %.022.i.i to float     ; 2 uses
  %i.ih = fcmp reassoc nsz arcp contract afn ogt float %.04971.i, %.cast54.i
  %.049..cast54.i = select reassoc nsz arcp contract afn i1 %i.ih, float %.04971.i, float %.cast54.i ; 2 uses
  %i.ii = icmp samesign ugt i64 %indvars.iv81.i, 1
  br i1 %i.ii, label %.lr.ph73.i, label %_ZL12expandFloatsPhii.exit, !llvm.loop !1

.lr.ph68.preheader.i:                             ; preds = %_ZL13libraw_swap32Phi.exit.thread157
  %i.ij = add nsw i32 %i.ha, -1                   ; 2 uses
  %i.ik = mul nuw nsw i32 %i.ij, 3
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.il
  %i.in = zext nneg i32 %i.ij to i64
  br label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %_Z17__DNG_FP24ToFloatPKh.exit.i, %.lr.ph68.preheader.i
  %indvars.iv78.i = phi i64 [ %i.in, %.lr.ph68.preheader.i ], [ %indvars.iv.next79.i, %_Z17__DNG_FP24ToFloatPKh.exit.i ] ; 3 uses
  %.04766.i = phi ptr [ %i.im, %.lr.ph68.preheader.i ], [ %i.jk, %_Z17__DNG_FP24ToFloatPKh.exit.i ] ; 3 uses
  %.165.i = phi float [ 0.000000e+00, %.lr.ph68.preheader.i ], [ %.1..cast.i, %_Z17__DNG_FP24ToFloatPKh.exit.i ] ; 2 uses
  %i.io = load i8, ptr %.04766.i, align 1, !tbaa !133
  %i.ip = zext i8 %i.io to i32                    ; 2 uses
  %i.iq = lshr i32 %i.ip, 7                       ; 3 uses
  %i.ir = and i32 %i.ip, 127                      ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.04766.i, i64 1
  %2 = load i16, ptr %i.is, align 1               ; 3 uses
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %i.it = zext i16 %3 to i32                      ; 3 uses
  switch i32 %i.ir, label %bb.au [
    i32 0, label %bb.aq
    i32 127, label %bb.as
  ]

bb.aq:                                            ; preds = %.lr.ph68.i
  %i.iu = icmp eq i16 %2, 0
  br i1 %i.iu, label %bb.ar, label %._crit_edge.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.iv = shl nuw i32 %i.iq, 31
  br label %_Z17__DNG_FP24ToFloatPKh.exit.i

._crit_edge.i.i:                                  ; preds = %bb.aq
  %.masked.numleadingzeros.i56.i = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.it, i1 true) ; 2 uses
  %i.iw = sub nsw i32 16, %.masked.numleadingzeros.i56.i
  %.masked.leadingonepos.i57.i = xor i32 %.masked.numleadingzeros.i56.i, 31
  %.lr.ph.tripcount.i.i = sub nuw nsw i32 16, %.masked.leadingonepos.i57.i
  %i.ix = shl nuw i32 %i.it, %.lr.ph.tripcount.i.i
  %i.iy = and i32 %i.ix, 65535
  br label %bb.au

bb.as:                                            ; preds = %.lr.ph68.i
  %i.iz = icmp eq i16 %2, 0
  br i1 %i.iz, label %bb.at, label %_Z17__DNG_FP24ToFloatPKh.exit.i

bb.at:                                            ; preds = %bb.as
  %i.ja = shl nuw i32 %i.iq, 31
  %i.jb = or disjoint i32 %i.ja, 1602224000
  br label %_Z17__DNG_FP24ToFloatPKh.exit.i

bb.au:                                            ; preds = %._crit_edge.i.i, %.lr.ph68.i
  %.121.i58.i = phi i32 [ %i.iw, %._crit_edge.i.i ], [ %i.ir, %.lr.ph68.i ]
  %.1.i59.i = phi i32 [ %i.iy, %._crit_edge.i.i ], [ %i.it, %.lr.ph68.i ]
  %i.jc = shl nuw nsw i32 %.1.i59.i, 7
  %i.jd = shl nuw i32 %i.iq, 31
  %i.je = shl nsw i32 %.121.i58.i, 23
  %i.jf = add nsw i32 %i.je, 536870912
  %i.jg = or i32 %i.jd, %i.jf
  %i.jh = or disjoint i32 %i.jg, %i.jc
  br label %_Z17__DNG_FP24ToFloatPKh.exit.i

_Z17__DNG_FP24ToFloatPKh.exit.i:                  ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %.022.i55.i = phi i32 [ %i.iv, %bb.ar ], [ %i.jh, %bb.au ], [ %i.jb, %bb.at ], [ 0, %bb.as ] ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv78.i
  store i32 %.022.i55.i, ptr %i.ji, align 4, !tbaa !136
  %.cast.i = bitcast i32 %.022.i55.i to float     ; 2 uses
  %i.jj = fcmp reassoc nsz arcp contract afn ogt float %.165.i, %.cast.i
  %.1..cast.i = select reassoc nsz arcp contract afn i1 %i.jj, float %.165.i, float %.cast.i ; 2 uses
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, -1
  %i.jk = getelementptr inbounds i8, ptr %.04766.i, i64 -3
  %i.jl = icmp sgt i64 %indvars.iv78.i, 0
  br i1 %i.jl, label %.lr.ph68.i, label %_ZL12expandFloatsPhii.exit, !llvm.loop !2

.lr.ph.i140:                                      ; preds = %.lr.ph.i140, %.lr.ph.preheader.i138.new
  %indvars.iv.i141 = phi i64 [ 0, %.lr.ph.preheader.i138.new ], [ %indvars.iv.next.i142.7, %.lr.ph.i140 ] ; 9 uses
  %.263.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i138.new ], [ %.2..i.7, %.lr.ph.i140 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i138.new ], [ %niter.next.7, %.lr.ph.i140 ]
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i141
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !137 ; 2 uses
  %i.jo = fcmp reassoc nsz arcp contract afn ogt float %.263.i, %i.jn
  %.2..i = select reassoc nsz arcp contract afn i1 %i.jo, float %.263.i, float %i.jn ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i141
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !137 ; 2 uses
  %i.js = fcmp reassoc nsz arcp contract afn ogt float %.2..i, %i.jr
  %.2..i.1 = select reassoc nsz arcp contract afn i1 %i.js, float %.2..i, float %i.jr ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i141
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !137 ; 2 uses
  %i.jw = fcmp reassoc nsz arcp contract afn ogt float %.2..i.1, %i.jv
  %.2..i.2 = select reassoc nsz arcp contract afn i1 %i.jw, float %.2..i.1, float %i.jv ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i141
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !137 ; 2 uses
  %i.ka = fcmp reassoc nsz arcp contract afn ogt float %.2..i.2, %i.jz
  %.2..i.3 = select reassoc nsz arcp contract afn i1 %i.ka, float %.2..i.2, float %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i141
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !137 ; 2 uses
  %i.ke = fcmp reassoc nsz arcp contract afn ogt float %.2..i.3, %i.kd
  %.2..i.4 = select reassoc nsz arcp contract afn i1 %i.ke, float %.2..i.3, float %i.kd ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i141
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 20
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !137 ; 2 uses
  %i.ki = fcmp reassoc nsz arcp contract afn ogt float %.2..i.4, %i.kh
  %.2..i.5 = select reassoc nsz arcp contract afn i1 %i.ki, float %.2..i.4, float %i.kh ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i141
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !137 ; 2 uses
  %i.km = fcmp reassoc nsz arcp contract afn ogt float %.2..i.5, %i.kl
  %.2..i.6 = select reassoc nsz arcp contract afn i1 %i.km, float %.2..i.5, float %i.kl ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i141
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 28
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !137 ; 2 uses
  %i.kq = fcmp reassoc nsz arcp contract afn ogt float %.2..i.6, %i.kp
  %.2..i.7 = select reassoc nsz arcp contract afn i1 %i.kq, float %.2..i.6, float %i.kp ; 3 uses
  %indvars.iv.next.i142.7 = add nuw nsw i64 %indvars.iv.i141, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZL12expandFloatsPhii.exit.loopexit239.unr-lcssa, label %.lr.ph.i140, !llvm.loop !3

_ZL12expandFloatsPhii.exit.loopexit239.unr-lcssa: ; preds = %.lr.ph.i140
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL12expandFloatsPhii.exit, label %.lr.ph.i140.epil.preheader

.lr.ph.i140.epil.preheader:                       ; preds = %_ZL12expandFloatsPhii.exit.loopexit239.unr-lcssa, %.lr.ph.preheader.i138
  %indvars.iv.i141.epil.init = phi i64 [ 0, %.lr.ph.preheader.i138 ], [ %indvars.iv.next.i142.7, %_ZL12expandFloatsPhii.exit.loopexit239.unr-lcssa ]
  %.263.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i138 ], [ %.2..i.7, %_ZL12expandFloatsPhii.exit.loopexit239.unr-lcssa ]
  %lcmp.mod245 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod245)
  br label %.lr.ph.i140.epil

.lr.ph.i140.epil:                                 ; preds = %.lr.ph.i140.epil, %.lr.ph.i140.epil.preheader
  %indvars.iv.i141.epil = phi i64 [ %indvars.iv.i141.epil.init, %.lr.ph.i140.epil.preheader ], [ %indvars.iv.next.i142.epil, %.lr.ph.i140.epil ] ; 2 uses
  %.263.i.epil = phi float [ %.263.i.epil.init, %.lr.ph.i140.epil.preheader ], [ %.2..i.epil, %.lr.ph.i140.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i140.epil.preheader ], [ %epil.iter.next, %.lr.ph.i140.epil ]
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i141.epil
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !137 ; 2 uses
  %i.kt = fcmp reassoc nsz arcp contract afn ogt float %.263.i.epil, %i.ks
  %.2..i.epil = select reassoc nsz arcp contract afn i1 %i.kt, float %.263.i.epil, float %i.ks ; 2 uses
  %indvars.iv.next.i142.epil = add nuw nsw i64 %indvars.iv.i141.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL12expandFloatsPhii.exit, label %.lr.ph.i140.epil, !llvm.loop !206

_ZL12expandFloatsPhii.exit:                       ; preds = %_ZL12expandFloatsPhii.exit.loopexit239.unr-lcssa, %.lr.ph.i140.epil, %_Z17__DNG_FP24ToFloatPKh.exit.i, %_Z17__DNG_HalfToFloatt.exit.i, %_ZL13libraw_swap32Phi.exit.thread157, %.preheader.i, %.preheader61.i, %_ZL13libraw_swap32Phi.exit
  %.3.i = phi nsz float [ 0.000000e+00, %_ZL13libraw_swap32Phi.exit ], [ %.049..cast54.i, %_Z17__DNG_HalfToFloatt.exit.i ], [ %.1..cast.i, %_Z17__DNG_FP24ToFloatPKh.exit.i ], [ 0.000000e+00, %.preheader.i ], [ 0.000000e+00, %_ZL13libraw_swap32Phi.exit.thread157 ], [ 0.000000e+00, %.preheader61.i ], [ %.2..i.7, %_ZL12expandFloatsPhii.exit.loopexit239.unr-lcssa ], [ %.2..i.epil, %.lr.ph.i140.epil ] ; 2 uses
  br i1 %i.em, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZL12expandFloatsPhii.exit
  %i.ku = add i64 %.0171, %.097180
  %i.kv = load i16, ptr %i.ak, align 2, !tbaa !126
  %i.kw = zext i16 %i.kv to i64
  %i.kx = mul i64 %i.ku, %i.kw
  %i.ky = add i64 %i.kx, %i.en
  %i.kz = load i32, ptr %i.n, align 8, !tbaa !119
  %i.la = sext i32 %i.kz to i64
  %i.lb = mul i64 %i.ky, %i.la
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.lb
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.lc, ptr align 1 %i.fo, i64 %i.ek, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZL12expandFloatsPhii.exit
  %i.ld = fcmp reassoc nsz arcp contract afn ogt float %.2170, %.3.i
  %i.le = select reassoc nsz arcp contract afn i1 %i.ld, float %.2170, float %.3.i ; 2 uses
  %i.lf = add nuw i64 %.0171, 1                   ; 2 uses
  %i.lg = icmp ult i64 %i.lf, %i.dx
  br i1 %i.lg, label %bb.aa, label %._crit_edge.loopexit, !llvm.loop !207

bb.ax:                                            ; preds = %._crit_edge182
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 193808
  store ptr %i.bp, ptr %i.lh, align 8, !tbaa !138
  %i.li = load i16, ptr %i.ak, align 2, !tbaa !126
  %i.lj = zext i16 %i.li to i32
  %i.lk = shl nuw nsw i32 %i.lj, 2
  br label %.sink.split

bb.ay:                                            ; preds = %._crit_edge182
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 193816
  store ptr %i.bp, ptr %i.ll, align 8, !tbaa !139
  %i.lm = load i16, ptr %i.ak, align 2, !tbaa !126
  %i.ln = zext i16 %i.lm to i32
  %i.lo = mul nuw nsw i32 %i.ln, 12
  br label %.sink.split

bb.az:                                            ; preds = %._crit_edge182
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 193824
  store ptr %i.bp, ptr %i.lp, align 8, !tbaa !140
  %i.lq = load i16, ptr %i.ak, align 2, !tbaa !126
  %i.lr = zext i16 %i.lq to i32
  %i.ls = shl nuw nsw i32 %i.lr, 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ax, %bb.az, %bb.ay
  %.sink221 = phi i32 [ %i.lo, %bb.ay ], [ %i.ls, %bb.az ], [ %i.lk, %bb.ax ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sink221, ptr %i.lt, align 8, !tbaa !141
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 194304
  store i32 %.sink221, ptr %i.lu, align 8, !tbaa !142
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split, %._crit_edge182
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !143
  %i.lx = and i32 %i.lw, 2
  %.not123 = icmp eq i32 %i.lx, 0
  br i1 %.not123, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN6LibRaw17convertFloatToIntEfff(ptr noundef nonnull align 8 dereferenceable(768512) %0, float noundef 4.096000e+03, float noundef 3.276700e+04, float noundef 1.638300e+04)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  %.not.i.i.i = icmp eq ptr %.sroa.0151.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lz = ptrtoint ptr %.sroa.0151.0 to i64
  %i.ma = sub i64 %.sroa.12.0, %i.lz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0151.0, i64 noundef %i.ma) #16
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.bd, %bb.be
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i144 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i.i144, label %_ZNSt6vectorIxSaIxEED2Ev.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.mc to i64
  %i.mh = sub i64 %i.mf, %i.mg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef %i.mh) #16
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit.i

_ZNSt6vectorIxSaIxEED2Ev.exit.i:                  ; preds = %bb.bf, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i1.i, label %_ZN18tile_stripe_data_tD2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !42
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = ptrtoint ptr %i.mj to i64
  %i.mo = sub i64 %i.mm, %i.mn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mj, i64 noundef %i.mo) #16
  br label %_ZN18tile_stripe_data_tD2Ev.exit

_ZN18tile_stripe_data_tD2Ev.exit:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void

bb.bh:                                            ; preds = %bb.z, %bb.af, %bb.bc
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ly, %bb.bc ], [ %i.fe, %bb.z ], [ %i.fv, %bb.af ] ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %.sroa.0151.0, null
  br i1 %.not.i.i.i145, label %_ZNSt6vectorIhSaIhEED2Ev.exit146, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mp = ptrtoint ptr %.sroa.0151.0 to i64
  %i.mq = sub i64 %.sroa.12.0, %i.mp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0151.0, i64 noundef %i.mq) #16
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit146

_ZNSt6vectorIhSaIhEED2Ev.exit146:                 ; preds = %bb.x, %bb.bh, %bb.bi, %bb.p, %bb.r, %bb.o
  %.pn130.pn = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.av, %bb.p ], [ %i.bl, %bb.r ], [ %i.ct, %bb.x ], [ %.pn.pn.pn, %bb.bh ], [ %.pn.pn.pn, %bb.bi ]
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i147 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i147, label %_ZNSt6vectorIxSaIxEED2Ev.exit.i148, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit146
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !42
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.ms to i64
  %i.mx = sub i64 %i.mv, %i.mw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mx) #16
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit.i148

_ZNSt6vectorIxSaIxEED2Ev.exit.i148:               ; preds = %bb.bj, %_ZNSt6vectorIhSaIhEED2Ev.exit146
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i1.i149 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i1.i149, label %_ZN18tile_stripe_data_tD2Ev.exit150, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i148
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !42
  %i.nc = ptrtoint ptr %i.nb to i64
  %i.nd = ptrtoint ptr %i.mz to i64
  %i.ne = sub i64 %i.nc, %i.nd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef %i.ne) #16
  br label %_ZN18tile_stripe_data_tD2Ev.exit150

_ZN18tile_stripe_data_tD2Ev.exit150:              ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i148, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  resume { ptr, i32 } %.pn130.pn

bb.bl:                                            ; preds = %bb.n
  unreachable
}

declare void @_ZN6LibRaw11libraw_swabEPvi(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_Z19libraw_sget4_staticsPh(i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.smax.v4i64(<4 x i64>, <4 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.smax.v4i64(<4 x i64>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x i32> @llvm.masked.load.v8i32.p0(ptr captures(none), <8 x i1>, <8 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8i32.p0(<8 x i32>, ptr captures(none), <8 x i1>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.bswap.v8i32(<8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { cold noreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !46, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!1 = distinct !{!1, !56}
!2 = distinct !{!2, !56}
!3 = distinct !{!3, !56}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"short", !11, i64 0}
!16 = !{!"double", !11, i64 0}
!17 = !{!"_ZTS20libraw_image_sizes_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !12, i64 16, !16, i64 24, !12, i64 32, !11, i64 36, !15, i64 164, !11, i64 166}
!18 = !{!"long long", !11, i64 0}
!19 = !{!"any pointer", !11, i64 0}
!20 = !{!"p1 long long", !19, i64 0}
!21 = !{!"float", !11, i64 0}
!22 = !{!"_ZTS19libraw_dng_levels_t", !12, i64 0, !11, i64 4, !12, i64 16420, !11, i64 16424, !21, i64 32840, !11, i64 32844, !11, i64 32860, !11, i64 32868, !12, i64 32884, !11, i64 32888, !11, i64 32904, !21, i64 32920, !21, i64 32924, !11, i64 32928}
!23 = !{!"_ZTS10tiff_ifd_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !18, i64 32, !18, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !20, i64 72, !12, i64 80, !20, i64 88, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !21, i64 124, !18, i64 128, !18, i64 136, !12, i64 144, !11, i64 148, !22, i64 488, !12, i64 33464}
!24 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !11, i64 0}
!25 = !{!"_ZTS12pana8_tags_t", !11, i64 0, !11, i64 24, !15, i64 36, !11, i64 38, !11, i64 46, !11, i64 80, !11, i64 114, !15, i64 148, !15, i64 150, !11, i64 152, !11, i64 192, !11, i64 204, !11, i64 224, !11, i64 234}
!26 = !{!"_ZTS15unpacker_data_t", !15, i64 0, !11, i64 2, !11, i64 10, !12, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !24, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !18, i64 144, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !25, i64 192, !11, i64 440, !12, i64 2488, !12, i64 2492, !15, i64 2496, !15, i64 2498, !12, i64 2500, !12, i64 2504, !12, i64 2508, !12, i64 2512, !12, i64 2516, !12, i64 2520, !12, i64 2524, !11, i64 2528, !15, i64 2608}
!27 = !{!"bool", !11, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE12_Vector_implE", !28, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIxSaIxEE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIxSaIxEE", !30, i64 0}
!32 = !{!"_ZTS18tile_stripe_data_t", !27, i64 0, !27, i64 1, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !18, i64 24, !31, i64 32, !31, i64 56}
!33 = !{!32, !27, i64 0}
!34 = !{!32, !27, i64 1}
!35 = !{!32, !12, i64 8}
!36 = !{!32, !12, i64 12}
!37 = !{!32, !12, i64 4}
!38 = !{!"_ZTS17LibRaw_exceptions", !11, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!18, !18, i64 0}
!41 = !{!28, !20, i64 0}
!42 = !{!28, !20, i64 16}
!43 = !{!28, !20, i64 8}
!44 = !{!"vtable pointer", !10, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 18, baseType: !51)
!53 = !{!47, !48, !49, !52, !52}
!54 = !DISubroutineType(types: !53)
!55 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !0, file: !46, line: 101, type: !54, scopeLine: 101, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!23, !18, i64 32}
!58 = !{!32, !18, i64 24}
!59 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!60 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !59, line: 109, baseType: !60)
!62 = !{!47, !48, !61, !47}
!63 = !DISubroutineType(types: !62)
!64 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !0, file: !46, line: 102, type: !63, scopeLine: 102, containingType: !0, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!65 = !{!"p1 short", !19, i64 0}
!66 = !{!"p1 omnipotent char", !19, i64 0}
!67 = !{!"_ZTS16libraw_iparams_t", !11, i64 0, !11, i64 4, !11, i64 68, !11, i64 132, !11, i64 196, !11, i64 260, !12, i64 324, !12, i64 328, !12, i64 332, !12, i64 336, !12, i64 340, !12, i64 344, !11, i64 348, !11, i64 384, !11, i64 420, !12, i64 428, !66, i64 432}
!68 = !{!"_ZTS18libraw_nikonlens_t", !21, i64 0, !11, i64 4, !11, i64 5, !11, i64 6, !11, i64 7}
!69 = !{!"_ZTS16libraw_dnglens_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!70 = !{!"_ZTS24libraw_makernotes_lens_t", !18, i64 0, !11, i64 8, !15, i64 136, !15, i64 138, !18, i64 144, !15, i64 152, !15, i64 154, !11, i64 156, !15, i64 220, !11, i64 222, !11, i64 238, !21, i64 256, !21, i64 260, !21, i64 264, !21, i64 268, !21, i64 272, !21, i64 276, !21, i64 280, !21, i64 284, !21, i64 288, !21, i64 292, !21, i64 296, !21, i64 300, !21, i64 304, !21, i64 308, !21, i64 312, !18, i64 320, !11, i64 328, !18, i64 456, !11, i64 464, !18, i64 592, !11, i64 600, !15, i64 728, !21, i64 732}
!71 = !{!"_ZTS17libraw_lensinfo_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !11, i64 20, !11, i64 148, !11, i64 276, !11, i64 404, !15, i64 532, !68, i64 536, !69, i64 544, !70, i64 560}
!72 = !{!"_ZTS13libraw_area_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6}
!73 = !{!"_ZTS25libraw_canon_makernotes_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !12, i64 32, !11, i64 36, !15, i64 52, !15, i64 54, !11, i64 56, !15, i64 58, !15, i64 60, !15, i64 62, !15, i64 64, !15, i64 66, !15, i64 68, !15, i64 70, !15, i64 72, !15, i64 74, !15, i64 76, !15, i64 78, !15, i64 80, !15, i64 82, !12, i64 84, !21, i64 88, !15, i64 92, !15, i64 94, !15, i64 96, !15, i64 98, !12, i64 100, !15, i64 104, !12, i64 108, !12, i64 112, !15, i64 116, !12, i64 120, !72, i64 124, !72, i64 132, !72, i64 140, !72, i64 148, !72, i64 156, !11, i64 164}
!74 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6}
!75 = !{!"_ZTS25libraw_nikon_makernotes_t", !16, i64 0, !15, i64 8, !15, i64 10, !11, i64 12, !11, i64 19, !11, i64 20, !11, i64 21, !11, i64 34, !11, i64 54, !11, i64 58, !11, i64 62, !11, i64 66, !11, i64 67, !11, i64 68, !11, i64 69, !11, i64 70, !11, i64 71, !11, i64 73, !11, i64 74, !11, i64 75, !11, i64 76, !11, i64 77, !11, i64 78, !11, i64 82, !11, i64 86, !15, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !11, i64 112, !11, i64 144, !11, i64 145, !11, i64 146, !12, i64 148, !12, i64 152, !12, i64 156, !11, i64 160, !11, i64 162, !15, i64 170, !74, i64 172, !15, i64 180, !15, i64 182, !15, i64 184, !12, i64 188, !11, i64 192, !11, i64 212, !12, i64 232, !11, i64 236, !12, i64 248, !66, i64 256, !15, i64 264, !15, i64 266, !11, i64 268, !15, i64 270, !16, i64 272, !16, i64 280, !16, i64 288}
!76 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !12, i64 0, !16, i64 8, !11, i64 16, !11, i64 24, !11, i64 88, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !11, i64 168, !11, i64 200, !12, i64 264, !11, i64 268, !11, i64 276, !11, i64 288}
!77 = !{!"_ZTS18libraw_fuji_info_t", !21, i64 0, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !11, i64 20, !11, i64 53, !21, i64 88, !15, i64 92, !15, i64 94, !11, i64 96, !15, i64 100, !12, i64 104, !12, i64 108, !15, i64 112, !11, i64 114, !15, i64 120, !15, i64 122, !15, i64 124, !15, i64 126, !15, i64 128, !12, i64 132, !15, i64 136, !11, i64 138, !11, i64 151, !11, i64 156, !12, i64 164, !15, i64 168, !12, i64 172, !15, i64 176, !11, i64 178, !11, i64 196, !12, i64 324, !12, i64 328, !12, i64 332, !11, i64 336, !12, i64 344}
!78 = !{!"_ZTS27libraw_olympus_makernotes_t", !11, i64 0, !15, i64 6, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !11, i64 64, !11, i64 72, !15, i64 82, !11, i64 84, !15, i64 88, !15, i64 90, !11, i64 92, !11, i64 352, !15, i64 392, !11, i64 394, !11, i64 396, !11, i64 404, !15, i64 416, !15, i64 418, !15, i64 420, !15, i64 422, !16, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !12, i64 452, !15, i64 456, !15, i64 458}
!79 = !{!"_ZTS18libraw_sony_info_t", !15, i64 0, !11, i64 2, !11, i64 3, !12, i64 4, !11, i64 8, !12, i64 12, !11, i64 16, !11, i64 17, !15, i64 18, !11, i64 20, !11, i64 24, !11, i64 25, !15, i64 26, !11, i64 28, !11, i64 38, !11, i64 39, !11, i64 40, !15, i64 48, !11, i64 50, !11, i64 51, !11, i64 52, !15, i64 54, !12, i64 56, !15, i64 60, !11, i64 62, !15, i64 66, !15, i64 68, !15, i64 70, !15, i64 72, !15, i64 74, !15, i64 76, !15, i64 78, !12, i64 80, !21, i64 84, !15, i64 88, !12, i64 92, !12, i64 96, !15, i64 100, !11, i64 102, !12, i64 124, !15, i64 128, !12, i64 132, !11, i64 136, !11, i64 137, !15, i64 138, !15, i64 140, !15, i64 142, !15, i64 144, !15, i64 146, !15, i64 148, !15, i64 150, !15, i64 152, !15, i64 154, !12, i64 156, !15, i64 160, !11, i64 162, !21, i64 180}
!80 = !{!"_ZTS25libraw_kodak_makernotes_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !11, i64 12, !11, i64 48, !11, i64 84, !11, i64 120, !11, i64 156, !11, i64 192, !15, i64 228, !15, i64 230, !15, i64 232, !15, i64 234, !21, i64 236, !21, i64 240}
!81 = !{!"_ZTS29libraw_panasonic_makernotes_t", !15, i64 0, !15, i64 2, !11, i64 4, !12, i64 36, !21, i64 40, !11, i64 44, !15, i64 56, !15, i64 58, !12, i64 60, !12, i64 64}
!82 = !{!"_ZTS26libraw_pentax_makernotes_t", !11, i64 0, !11, i64 4, !11, i64 8, !15, i64 12, !12, i64 16, !12, i64 20, !15, i64 24, !11, i64 26, !15, i64 30, !11, i64 32, !11, i64 33, !15, i64 34}
!83 = !{!"_ZTS22libraw_p1_makernotes_t", !11, i64 0, !11, i64 64, !11, i64 128, !11, i64 384}
!84 = !{!"_ZTS25libraw_ricoh_makernotes_t", !15, i64 0, !11, i64 4, !11, i64 12, !15, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !15, i64 40, !15, i64 42, !15, i64 44, !15, i64 46, !15, i64 48, !15, i64 50, !16, i64 56, !16, i64 64}
!85 = !{!"_ZTS27libraw_samsung_makernotes_t", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 40, !16, i64 88, !12, i64 96, !11, i64 100}
!86 = !{!"_ZTS24libraw_metadata_common_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52, !21, i64 56, !21, i64 60, !15, i64 64, !11, i64 66, !21, i64 196, !11, i64 200, !12, i64 296}
!87 = !{!"_ZTS19libraw_makernotes_t", !73, i64 0, !75, i64 168, !76, i64 464, !77, i64 848, !78, i64 1200, !79, i64 1664, !80, i64 1848, !81, i64 2092, !82, i64 2160, !83, i64 2196, !84, i64 2648, !85, i64 2720, !86, i64 2856}
!88 = !{!"_ZTS21libraw_shootinginfo_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !11, i64 14, !11, i64 78}
!89 = !{!"_ZTS22libraw_output_params_t", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 64, !11, i64 112, !21, i64 128, !21, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !66, i64 168, !66, i64 176, !66, i64 184, !66, i64 192, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !11, i64 224, !12, i64 240, !12, i64 244, !21, i64 248, !21, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !21, i64 288, !21, i64 292, !12, i64 296, !12, i64 300}
!90 = !{!"any p2 pointer", !19, i64 0}
!91 = !{!"p2 omnipotent char", !90, i64 0}
!92 = !{!"_ZTS26libraw_raw_unpack_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !21, i64 28, !11, i64 32, !91, i64 40}
!93 = !{!"_ZTS5ph1_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !21, i64 32}
!94 = !{!"_ZTS18libraw_colordata_t", !11, i64 0, !11, i64 131072, !12, i64 147488, !12, i64 147492, !12, i64 147496, !11, i64 147500, !21, i64 147516, !21, i64 147520, !11, i64 147524, !11, i64 147652, !11, i64 147668, !11, i64 147684, !11, i64 147732, !11, i64 147780, !11, i64 147828, !93, i64 147876, !21, i64 147912, !21, i64 147916, !11, i64 147920, !11, i64 147984, !11, i64 148048, !11, i64 148112, !11, i64 148176, !11, i64 148193, !19, i64 148264, !12, i64 148272, !11, i64 148276, !11, i64 148308, !22, i64 148648, !11, i64 181624, !11, i64 185720, !12, i64 187000, !11, i64 187004, !12, i64 187076, !12, i64 187080}
!95 = !{!"long", !11, i64 0}
!96 = !{!"_ZTS17libraw_gps_info_t", !11, i64 0, !11, i64 12, !11, i64 24, !21, i64 36, !11, i64 40, !11, i64 41, !11, i64 42, !11, i64 43, !11, i64 44}
!97 = !{!"_ZTS17libraw_imgother_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !95, i64 16, !12, i64 24, !11, i64 28, !96, i64 156, !11, i64 204, !11, i64 716, !11, i64 780}
!98 = !{!"_ZTS24LibRaw_thumbnail_formats", !11, i64 0}
!99 = !{!"_ZTS18libraw_thumbnail_t", !98, i64 0, !15, i64 4, !15, i64 6, !12, i64 8, !12, i64 12, !66, i64 16}
!100 = !{!"_ZTS23libraw_thumbnail_list_t", !12, i64 0, !11, i64 8}
!101 = !{!"p1 float", !19, i64 0}
!102 = !{!"_ZTS31libraw_internal_output_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !15, i64 12, !15, i64 14}
!103 = !{!"_ZTS16libraw_rawdata_t", !19, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !101, i64 32, !101, i64 40, !101, i64 48, !65, i64 56, !65, i64 64, !67, i64 72, !17, i64 512, !102, i64 696, !94, i64 712}
!104 = !{!"_ZTS13libraw_data_t", !65, i64 0, !17, i64 8, !67, i64 192, !71, i64 632, !87, i64 1928, !88, i64 5088, !89, i64 5232, !92, i64 5536, !12, i64 5584, !12, i64 5588, !94, i64 5592, !97, i64 192680, !99, i64 193480, !100, i64 193504, !103, i64 193768, !19, i64 381568}
!105 = !{!"p1 _ZTS10LibRaw_TLS", !19, i64 0}
!106 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !19, i64 0}
!107 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!108 = !{!"_ZTS15internal_data_t", !106, i64 0, !107, i64 8, !12, i64 16, !66, i64 24, !18, i64 32, !18, i64 40, !11, i64 48}
!109 = !{!"p1 int", !19, i64 0}
!110 = !{!"_ZTS13output_data_t", !109, i64 0, !109, i64 8}
!111 = !{!"_ZTS15identify_data_t", !12, i64 0, !18, i64 8, !18, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!112 = !{!"_ZTS22libraw_internal_data_t", !108, i64 0, !102, i64 64, !110, i64 80, !111, i64 96, !26, i64 136}
!113 = !{!"p1 _ZTS6decode", !19, i64 0}
!114 = !{!"_ZTS13libraw_memmgr", !90, i64 0, !12, i64 8}
!115 = !{!"_ZTS18libraw_callbacks_t", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !19, i64 144}
!116 = !{!"_ZTS6LibRaw", !104, i64 8, !105, i64 381584, !112, i64 381592, !11, i64 384344, !113, i64 433496, !113, i64 433504, !11, i64 433512, !114, i64 768232, !115, i64 768248, !11, i64 768400, !11, i64 768416, !11, i64 768432, !19, i64 768448, !19, i64 768456, !19, i64 768464, !95, i64 768472, !19, i64 768480, !19, i64 768488, !19, i64 768496, !19, i64 768504}
!117 = !{!116, !18, i64 381760}
!118 = !{!116, !12, i64 381712}
!119 = !{!23, !12, i64 24}
!120 = !{!116, !12, i64 381832}
!121 = !{!116, !12, i64 544}
!122 = !{!116, !15, i64 381728}
!123 = !{!116, !106, i64 381592}
!124 = !{!"llvm.loop.isvectorized", i32 1}
!125 = !{!"llvm.loop.unroll.runtime.disable"}
!126 = !{!116, !15, i64 18}
!127 = !{!23, !12, i64 56}
!128 = !{!116, !12, i64 5564}
!129 = !{!116, !15, i64 16}
!130 = !{!116, !21, i64 153116}
!131 = !{!116, !19, i64 193776}
!132 = !{!23, !12, i64 8}
!133 = !{!11, !11, i64 0}
!134 = !{!"llvm.loop.unroll.disable"}
!135 = !{!15, !15, i64 0}
!136 = !{!12, !12, i64 0}
!137 = !{!21, !21, i64 0}
!138 = !{!116, !101, i64 193808}
!139 = !{!116, !101, i64 193816}
!140 = !{!116, !101, i64 193824}
!141 = !{!116, !12, i64 32}
!142 = !{!116, !12, i64 194304}
!143 = !{!116, !12, i64 5552}
!144 = distinct !{null}
!145 = distinct !{!145, !56}
!146 = distinct !{!146, !56}
!147 = distinct !{!147, !56}
!148 = distinct !{!148, !56}
!149 = !{!17, !15, i64 2}
!150 = !{!23, !12, i64 64}
!151 = !{!26, !12, i64 124}
!152 = !{!23, !12, i64 96}
!153 = !{!32, !12, i64 16}
!154 = !{!32, !12, i64 20}
end_hunk_1
