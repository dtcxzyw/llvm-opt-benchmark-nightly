Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %or.cond297 = select i1 %.not444.us918.us.us.us.i.us, i1 %.not445.us919.us.us.us.i.us, i1 false
  br i1 %or.cond297, label %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, label %bb.bf

_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us:        ; preds = %bb.be
  %i.pn = load ptr, ptr %1, align 8, !tbaa !20, !noalias !310
  %i.po = load i64, ptr %i.ke, align 8, !tbaa !21, !noalias !310
  %i.pp = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !310 ; 2 uses
  %factor.op.mul.us.us.us.us.i.us = mul i64 %i.pp, %i.po ; 4 uses
  %i.pq = mul i64 %i.ph, %i.pp
  %invariant.gep.us.us.us.us.i.us = getelementptr i8, ptr %i.pn, i64 %i.pq
  %i.pr = sext i32 %i.pm to i64
  %invariant.gep904.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us.us.i.us, i64 %i.pr ; 4 uses
  %.reass.us.us.us.us.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %indvars.iv1289.i
  %gep905.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.i.us
  %i.ps = load float, ptr %gep905.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.01393.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.ps, i64 0
  %.reass.us.us.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.nn
  %gep905.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.1.i.us
  %i.pt = load float, ptr %gep905.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.01393.4.vec.insert.i.us = insertelement <4 x float> %.sroa.01393.0.vec.insert.i.us, float %i.pt, i64 1
  %.reass.us.us.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.no
  %gep905.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.2.i.us
  %i.pu = load float, ptr %gep905.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.01393.8.vec.insert.i.us = insertelement <4 x float> %.sroa.01393.4.vec.insert.i.us, float %i.pu, i64 2
  %.reass.us.us.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.np
  %gep905.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.3.i.us
  %i.pv = load float, ptr %gep905.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.01393.12.vec.insert.i.us = insertelement <4 x float> %.sroa.01393.8.vec.insert.i.us, float %i.pv, i64 3 ; 2 uses
  %i.pw = add nuw nsw i64 %indvars.iv.i.us, %i.pf
  %i.px = shl i64 %i.pw, 3
  %i.py = and i64 %i.px, 4294967288
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %.0345946.us.us.i, i64 %i.py ; 2 uses
  %i.qa = load <4 x float>, ptr %i.pz, align 16, !tbaa !80
  %i.qb = fmul fast <4 x float> %i.qa, %.sroa.01393.12.vec.insert.i.us
  %i.qc = fadd fast <4 x float> %i.qb, %.2834907.us916.us.us.us.i.us
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qe = load <4 x float>, ptr %i.qd, align 16, !tbaa !80
  %i.qf = fmul fast <4 x float> %i.qe, %.sroa.01393.12.vec.insert.i.us
  %i.qg = fadd fast <4 x float> %i.qf, %.2829908.us915.us.us.us.i.us
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, %bb.be, %.lr.ph.split.us913.us.us.us.i.us
  %.3835.us920.us.us.us.i.us = phi nsz <4 x float> [ %.2834907.us916.us.us.us.i.us, %.lr.ph.split.us913.us.us.us.i.us ], [ %i.qc, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2834907.us916.us.us.us.i.us, %bb.be ] ; 2 uses
  %.3830.us921.us.us.us.i.us = phi nsz <4 x float> [ %.2829908.us915.us.us.us.i.us, %.lr.ph.split.us913.us.us.us.i.us ], [ %i.qg, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2829908.us915.us.us.us.i.us, %bb.be ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.nl
  br i1 %exitcond.not.i.us, label %..loopexit898_crit_edge.us.us.us.i.us145, label %.lr.ph.split.us913.us.us.us.i.us, !llvm.loop !266

..loopexit898_crit_edge.us.us.us.i.us145:         ; preds = %bb.bf, %bb.bd, %.preheader901.us.us.i.split.us137
  %.4836.us.us.us.i.us146 = phi nsz <4 x float> [ %.1833926.us.us.us.i.us140, %.preheader901.us.us.i.split.us137 ], [ %.1833926.us.us.us.i.us140, %bb.bd ], [ %.3835.us920.us.us.us.i.us, %bb.bf ] ; 2 uses
  %.4831.us.us.us.i.us147 = phi nsz <4 x float> [ %.1828927.us.us.us.i.us139, %.preheader901.us.us.i.split.us137 ], [ %.1828927.us.us.us.i.us139, %bb.bd ], [ %.3830.us921.us.us.us.i.us, %bb.bf ] ; 2 uses
  %indvars.iv.next1285.i.us148 = add nuw nsw i64 %indvars.iv1284.i.us138, 1 ; 2 uses
  %exitcond1288.not.i.us149 = icmp eq i64 %indvars.iv.next1285.i.us148, %wide.trip.count1287.i
  br i1 %exitcond1288.not.i.us149, label %._crit_edge.split.us.us.us.i, label %.preheader901.us.us.i.split.us137, !llvm.loop !267

._crit_edge.split.us.us.us.i:                     ; preds = %..loopexit898_crit_edge.us.us.us.i.us145, %..loopexit898_crit_edge.us.us.us.i.us, %.preheader901.us.us.i
  %.us-phi = phi <4 x float> [ %.4836.us.us.us.i.us, %..loopexit898_crit_edge.us.us.us.i.us ], [ %.0832944.us.us.i, %.preheader901.us.us.i ], [ %.4836.us.us.us.i.us146, %..loopexit898_crit_edge.us.us.us.i.us145 ] ; 2 uses
  %.us-phi136 = phi <4 x float> [ %.4831.us.us.us.i.us, %..loopexit898_crit_edge.us.us.us.i.us ], [ %.0827945.us.us.i, %.preheader901.us.us.i ], [ %.4831.us.us.us.i.us147, %..loopexit898_crit_edge.us.us.us.i.us145 ] ; 2 uses
  %i.qh = getelementptr inbounds [4 x i8], ptr %.0345946.us.us.i, i64 %i.mv ; 2 uses
  %indvars.iv.next1290.i = add nuw nsw i64 %indvars.iv1289.i, 4 ; 2 uses
  %i.qi = icmp slt i64 %indvars.iv.next1290.i, %invariant.op1437.i
  br i1 %i.qi, label %.preheader901.us.us.i, label %._crit_edge950.i, !llvm.loop !270

._crit_edge950.i:                                 ; preds = %._crit_edge.split.us.us.us.i, %.preheader901.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit455.i
  %.0832.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader901.lr.ph.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0827.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader901.lr.ph.i ], [ %.us-phi136, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0345.lcssa.i = phi ptr [ %i.mq, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %scevgep1274.i, %.preheader901.lr.ph.i ], [ %i.qh, %._crit_edge.split.us.us.us.i ] ; 4 uses
  %.0342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %i.kk, %.preheader901.lr.ph.i ], [ %i.ks, %._crit_edge.split.us.us.us.i ] ; 7 uses
  %i.qj = shufflevector <4 x float> %.0832.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.qk = fadd fast <4 x float> %i.qj, %.0832.lcssa.i ; 2 uses
  %i.ql = shufflevector <4 x float> %.0827.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.qm = fadd fast <4 x float> %i.ql, %.0827.lcssa.i ; 2 uses
  %i.qn = shufflevector <4 x float> %i.qk, <4 x float> %i.qm, <2 x i32> <i32 1, i32 5>
  %i.qo = fadd fast <2 x float> %i.qn, %i.nc
  %i.qp = shufflevector <4 x float> %i.qk, <4 x float> %i.qm, <2 x i32> <i32 0, i32 4>
  %i.qq = fadd fast <2 x float> %i.qo, %i.qp      ; 4 uses
  %i.qr = or disjoint i32 %.0342.lcssa.i, 1
  %i.qs = icmp slt i32 %i.qr, %i.jt
  br i1 %i.qs, label %.preheader900.lr.ph.i, label %.preheader902.i

.preheader900.lr.ph.i:                            ; preds = %._crit_edge950.i
  %i.qt = load i32, ptr %i.d, align 4
  %i.qu = load i32, ptr %i.j, align 4
  %invariant.op985.i = sub i32 %.neg879.i, %i.qu
  %i.qv = load i32, ptr %i.f, align 4             ; 2 uses
  %i.qw = load i32, ptr %i.a, align 4
  %.fr1224.i = freeze i32 %i.qw                   ; 2 uses
  %i.qx = load i32, ptr %i.c, align 4
  %i.qy = load i32, ptr %i.i, align 4
  %.neg877.i = add nuw nsw i32 %.03801057.i, 1
  %invariant.op977.i = sub i32 %.neg877.i, %i.qy
  %i.qz = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.ms, label %.preheader900.lr.ph.split.us.i, label %.preheader900.preheader.i

.preheader900.preheader.i:                        ; preds = %.preheader900.lr.ph.i
  %i.ra = sub i32 %i.kp, %.0342.lcssa.i           ; 2 uses
  %i.rb = lshr i32 %i.ra, 1
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = shl nuw nsw i64 %i.rc, 2
  %i.re = add nuw nsw i64 %i.rd, 4
  %i.rf = mul i64 %i.re, %i.mx
  %scevgep1292.i = getelementptr i8, ptr %.0345.lcssa.i, i64 %i.rf
  %i.rg = or disjoint i32 %.0342.lcssa.i, 2
  %i.rh = and i32 %i.ra, -2
  %i.ri = add i32 %i.rg, %i.rh
  br label %.preheader902.i

.preheader900.lr.ph.split.us.i:                   ; preds = %.preheader900.lr.ph.i
  %i.rj = icmp sgt i32 %.fr1224.i, 0
  br i1 %i.rj, label %.preheader900.us.us.preheader.i, label %.preheader900.us.preheader.i

.preheader900.us.preheader.i:                     ; preds = %.preheader900.lr.ph.split.us.i
  %i.rk = sub i32 %i.kp, %.0342.lcssa.i           ; 2 uses
  %i.rl = lshr i32 %i.rk, 1
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = shl nuw nsw i64 %i.rm, 2
  %i.ro = add nuw nsw i64 %i.rn, 4
  %i.rp = mul i64 %i.ro, %i.mx
  %scevgep1293.i = getelementptr i8, ptr %.0345.lcssa.i, i64 %i.rp
  %i.rq = or disjoint i32 %.0342.lcssa.i, 2
  %i.rr = and i32 %i.rk, -2
  %i.rs = add i32 %i.rq, %i.rr
  br label %.preheader902.i

.preheader900.us.us.preheader.i:                  ; preds = %.preheader900.lr.ph.split.us.i
  %i.rt = zext nneg i32 %.fr1224.i to i64         ; 2 uses
  %i.ru = zext i32 %.0342.lcssa.i to i64
  br label %.preheader900.us.us.i

.preheader900.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1012.i, %.preheader900.us.us.preheader.i
  %indvars.iv1307.i = phi i64 [ %i.ru, %.preheader900.us.us.preheader.i ], [ %indvars.iv.next1308.i, %._crit_edge.split.us.us.us1012.i ] ; 3 uses
  %.1346993.us.us.i = phi ptr [ %.0345.lcssa.i, %.preheader900.us.us.preheader.i ], [ %i.tk, %._crit_edge.split.us.us.us1012.i ] ; 2 uses
  %i.rv = phi <2 x float> [ %i.qq, %.preheader900.us.us.preheader.i ], [ %i.tj, %._crit_edge.split.us.us.us1012.i ]
  %i.rw = or disjoint i64 %indvars.iv1307.i, 1
  br label %bb.bg

bb.bg:                                            ; preds = %..loopexit896_crit_edge.us.us.us.i, %.preheader900.us.us.i
  %indvars.iv1302.i = phi i64 [ %indvars.iv.next1303.i, %..loopexit896_crit_edge.us.us.us.i ], [ 0, %.preheader900.us.us.i ] ; 3 uses
  %i.rx = phi <2 x float> [ %i.tj, %..loopexit896_crit_edge.us.us.us.i ], [ %i.rv, %.preheader900.us.us.i ] ; 3 uses
  %i.ry = trunc i64 %indvars.iv1302.i to i32
  %i.rz = mul i32 %i.qt, %i.ry
  %.reass986.us.us.us.i = add i32 %i.rz, %invariant.op985.i ; 3 uses
  %i.sa = icmp slt i32 %.reass986.us.us.us.i, 0
  br i1 %i.sa, label %..loopexit896_crit_edge.us.us.us.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.sb = srem i32 %.reass986.us.us.us.i, %i.qv
  %i.sc = sdiv i32 %.reass986.us.us.us.i, %i.qv   ; 2 uses
  %.not438.us.us.us.i = icmp eq i32 %i.sb, 0
  %.not439.us.us.us.i = icmp slt i32 %i.sc, %i.jv
  %or.cond298 = select i1 %.not438.us.us.us.i, i1 %.not439.us.us.us.i, i1 false
  br i1 %or.cond298, label %.preheader895.us.us.us.i, label %..loopexit896_crit_edge.us.us.us.i

.preheader895.us.us.us.i:                         ; preds = %bb.bh
  %i.sd = mul nuw nsw i64 %indvars.iv1302.i, %i.rt
  %i.se = sext i32 %i.sc to i64
  %i.sf = mul nsw i64 %i.se, %i.kr
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit892.us.us.us.i, %.preheader895.us.us.us.i
  %indvars.iv1297.i = phi i64 [ %indvars.iv.next1298.i, %.loopexit892.us.us.us.i ], [ 0, %.preheader895.us.us.us.i ] ; 3 uses
  %i.sg = phi <2 x float> [ %i.ti, %.loopexit892.us.us.us.i ], [ %i.rx, %.preheader895.us.us.us.i ] ; 3 uses
  %i.sh = trunc i64 %indvars.iv1297.i to i32
  %i.si = mul i32 %i.qx, %i.sh
  %.reass978.us.us.us.i = add i32 %invariant.op977.i, %i.si ; 3 uses
  %i.sj = icmp slt i32 %.reass978.us.us.us.i, 0
  br i1 %i.sj, label %.loopexit892.us.us.us.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.sk = srem i32 %.reass978.us.us.us.i, %i.qz
  %i.sl = sdiv i32 %.reass978.us.us.us.i, %i.qz   ; 2 uses
  %.not440.us.us.us.i = icmp eq i32 %i.sk, 0
  %.not441.us.us.us.i = icmp slt i32 %i.sl, %i.ju
  %or.cond299 = select i1 %.not440.us.us.us.i, i1 %.not441.us.us.us.i, i1 false
  br i1 %or.cond299, label %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, label %.loopexit892.us.us.us.i

_ZN4ncnn3MatD2Ev.exit452.us.us.us.i:              ; preds = %bb.bj
  %i.sm = add nuw nsw i64 %indvars.iv1297.i, %i.sd
  %i.sn = shl i64 %i.sm, 2
  %i.so = and i64 %i.sn, 4294967292
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.1346993.us.us.i, i64 %i.so
  %i.sq = load ptr, ptr %1, align 8, !tbaa !20, !noalias !311
  %i.sr = load i64, ptr %i.ke, align 8, !tbaa !21, !noalias !311
  %i.ss = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !311 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.ss, %i.sr ; 2 uses
  %i.st = mul i64 %i.sf, %i.ss
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.sq, i64 %i.st
  %i.su = sext i32 %i.sl to i64
  %invariant.gep967.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.su ; 2 uses
  %.reass.us987.us.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv1307.i
  %gep968.us.us.us.i = getelementptr i8, ptr %invariant.gep967.us.us.us.i, i64 %.reass.us987.us.us.i
  %i.sv = load float, ptr %gep968.us.us.us.i, align 4, !tbaa !39
  %.reass.us987.us.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.rw
  %gep968.us.us.us.1.i = getelementptr i8, ptr %invariant.gep967.us.us.us.i, i64 %.reass.us987.us.us.1.i
  %i.sw = load float, ptr %gep968.us.us.us.1.i, align 4, !tbaa !39
  %i.sx = load <4 x float>, ptr %i.sp, align 4, !tbaa !39 ; 2 uses
  %i.sy = shufflevector <4 x float> %i.sx, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.sz = insertelement <2 x float> poison, float %i.sv, i64 0
  %i.ta = shufflevector <2 x float> %i.sz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tb = fmul fast <2 x float> %i.sy, %i.ta
  %i.tc = fadd fast <2 x float> %i.sg, %i.tb
  %i.td = shufflevector <4 x float> %i.sx, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.te = insertelement <2 x float> poison, float %i.sw, i64 0
  %i.tf = shufflevector <2 x float> %i.te, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tg = fmul fast <2 x float> %i.td, %i.tf
  %i.th = fadd fast <2 x float> %i.tg, %i.tc
  br label %.loopexit892.us.us.us.i

.loopexit892.us.us.us.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, %bb.bj, %bb.bi
  %i.ti = phi <2 x float> [ %i.sg, %bb.bi ], [ %i.sg, %bb.bj ], [ %i.th, %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i ] ; 2 uses
  %indvars.iv.next1298.i = add nuw nsw i64 %indvars.iv1297.i, 1 ; 2 uses
  %exitcond1301.not.i = icmp eq i64 %indvars.iv.next1298.i, %i.rt
  br i1 %exitcond1301.not.i, label %..loopexit896_crit_edge.us.us.us.i, label %bb.bi, !llvm.loop !273

..loopexit896_crit_edge.us.us.us.i:               ; preds = %.loopexit892.us.us.us.i, %bb.bh, %bb.bg
  %i.tj = phi <2 x float> [ %i.rx, %bb.bg ], [ %i.rx, %bb.bh ], [ %i.ti, %.loopexit892.us.us.us.i ] ; 3 uses
  %indvars.iv.next1303.i = add nuw nsw i64 %indvars.iv1302.i, 1 ; 2 uses
  %exitcond1306.not.i = icmp eq i64 %indvars.iv.next1303.i, %wide.trip.count1287.i
  br i1 %exitcond1306.not.i, label %._crit_edge.split.us.us.us1012.i, label %bb.bg, !llvm.loop !274

._crit_edge.split.us.us.us1012.i:                 ; preds = %..loopexit896_crit_edge.us.us.us.i
  %i.tk = getelementptr inbounds [4 x i8], ptr %.1346993.us.us.i, i64 %i.mx ; 2 uses
  %indvars.iv.next1308.i = add nuw nsw i64 %indvars.iv1307.i, 2 ; 2 uses
  %i.tl = trunc i64 %indvars.iv.next1308.i to i32 ; 2 uses
  %i.tm = or i32 %i.tl, 1
  %i.tn = icmp slt i32 %i.tm, %i.jt
  br i1 %i.tn, label %.preheader900.us.us.i, label %.preheader902.i, !llvm.loop !275

.preheader902.i:                                  ; preds = %._crit_edge.split.us.us.us1012.i, %.preheader900.us.preheader.i, %.preheader900.preheader.i, %._crit_edge950.i
  %.1346.lcssa.i = phi ptr [ %.0345.lcssa.i, %._crit_edge950.i ], [ %scevgep1292.i, %.preheader900.preheader.i ], [ %scevgep1293.i, %.preheader900.us.preheader.i ], [ %i.tk, %._crit_edge.split.us.us.us1012.i ]
  %.1343.lcssa.i = phi i32 [ %.0342.lcssa.i, %._crit_edge950.i ], [ %i.ri, %.preheader900.preheader.i ], [ %i.rs, %.preheader900.us.preheader.i ], [ %i.tl, %._crit_edge.split.us.us.us1012.i ] ; 2 uses
  %i.to = phi <2 x float> [ %i.qq, %._crit_edge950.i ], [ %i.qq, %.preheader900.preheader.i ], [ %i.qq, %.preheader900.us.preheader.i ], [ %i.tj, %._crit_edge.split.us.us.us1012.i ] ; 3 uses
  %i.tp = icmp slt i32 %.1343.lcssa.i, %i.jt
  br i1 %i.tp, label %.preheader899.lr.ph.i, label %._crit_edge1040.i

.preheader899.lr.ph.i:                            ; preds = %.preheader902.i
  %i.tq = load i32, ptr %i.d, align 4
  %i.tr = load i32, ptr %i.j, align 4
  %invariant.op1029.i = sub i32 %.neg879.i, %i.tr
  %i.ts = load i32, ptr %i.f, align 4             ; 2 uses
  %i.tt = load i32, ptr %i.a, align 4
  %.fr1225.i = freeze i32 %i.tt                   ; 2 uses
  %i.tu = load i32, ptr %i.c, align 4
  %i.tv = load i32, ptr %i.i, align 4
  %.neg873.i = add nuw nsw i32 %.03801057.i, 1
  %invariant.op1022.i = sub i32 %.neg873.i, %i.tv
  %i.tw = load i32, ptr %i.e, align 4             ; 2 uses
  %i.tx = icmp sgt i32 %.fr1225.i, 0
  %or.cond1439.i = and i1 %i.ms, %i.tx
  br i1 %or.cond1439.i, label %.preheader899.us.us.preheader.i, label %._crit_edge1040.i

.preheader899.us.us.preheader.i:                  ; preds = %.preheader899.lr.ph.i
  %i.ty = zext nneg i32 %.fr1225.i to i64         ; 2 uses
  %i.tz = zext i32 %.1343.lcssa.i to i64
  br label %.preheader899.us.us.i

.preheader899.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1052.i, %.preheader899.us.us.preheader.i
  %indvars.iv1320.i = phi i64 [ %i.tz, %.preheader899.us.us.preheader.i ], [ %indvars.iv.next1321.i, %._crit_edge.split.us.us.us1052.i ] ; 2 uses
  %.23471037.us.us.i = phi ptr [ %.1346.lcssa.i, %.preheader899.us.us.preheader.i ], [ %i.vk, %._crit_edge.split.us.us.us1052.i ] ; 2 uses
  %i.ua = phi <2 x float> [ %i.to, %.preheader899.us.us.preheader.i ], [ %i.vj, %._crit_edge.split.us.us.us1052.i ]
  br label %bb.bk

bb.bk:                                            ; preds = %..loopexit894_crit_edge.us.us.us.i, %.preheader899.us.us.i
  %indvars.iv1315.i = phi i64 [ %indvars.iv.next1316.i, %..loopexit894_crit_edge.us.us.us.i ], [ 0, %.preheader899.us.us.i ] ; 3 uses
  %i.ub = phi <2 x float> [ %i.vj, %..loopexit894_crit_edge.us.us.us.i ], [ %i.ua, %.preheader899.us.us.i ] ; 3 uses
  %i.uc = trunc i64 %indvars.iv1315.i to i32
  %i.ud = mul i32 %i.tq, %i.uc
  %.reass1030.us.us.us.i = add i32 %i.ud, %invariant.op1029.i ; 3 uses
  %i.ue = icmp slt i32 %.reass1030.us.us.us.i, 0
  br i1 %i.ue, label %..loopexit894_crit_edge.us.us.us.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.uf = srem i32 %.reass1030.us.us.us.i, %i.ts
  %i.ug = sdiv i32 %.reass1030.us.us.us.i, %i.ts  ; 2 uses
  %.not434.us.us.us.i = icmp eq i32 %i.uf, 0
  %.not435.us.us.us.i = icmp slt i32 %i.ug, %i.jv
  %or.cond300 = select i1 %.not434.us.us.us.i, i1 %.not435.us.us.us.i, i1 false
  br i1 %or.cond300, label %.preheader893.us.us.us.i, label %..loopexit894_crit_edge.us.us.us.i

.preheader893.us.us.us.i:                         ; preds = %bb.bl
  %i.uh = mul nuw nsw i64 %indvars.iv1315.i, %i.ty
  %i.ui = sext i32 %i.ug to i64
  %i.uj = mul nsw i64 %i.ui, %i.kr
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bo, %.preheader893.us.us.us.i
  %indvars.iv1310.i = phi i64 [ %indvars.iv.next1311.i, %bb.bo ], [ 0, %.preheader893.us.us.us.i ] ; 3 uses
  %i.uk = phi <2 x float> [ %i.vi, %bb.bo ], [ %i.ub, %.preheader893.us.us.us.i ] ; 3 uses
  %i.ul = trunc i64 %indvars.iv1310.i to i32
  %i.um = mul i32 %i.tu, %i.ul
  %.reass.us1031.us.us.i = add i32 %invariant.op1022.i, %i.um ; 3 uses
  %i.un = icmp slt i32 %.reass.us1031.us.us.i, 0
  br i1 %i.un, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.uo = srem i32 %.reass.us1031.us.us.i, %i.tw
  %i.up = sdiv i32 %.reass.us1031.us.us.i, %i.tw  ; 2 uses
  %.not436.us.us.us.i = icmp eq i32 %i.uo, 0
  %.not437.us.us.us.i = icmp slt i32 %i.up, %i.ju
  %or.cond301 = select i1 %.not436.us.us.us.i, i1 %.not437.us.us.us.i, i1 false
  br i1 %or.cond301, label %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, label %bb.bo

_ZN4ncnn3MatD2Ev.exit451.us.us.us.i:              ; preds = %bb.bn
  %i.uq = add nuw nsw i64 %indvars.iv1310.i, %i.uh
  %.idx.i = shl nuw nsw i64 %i.uq, 3
  %i.ur = getelementptr inbounds nuw i8, ptr %.23471037.us.us.i, i64 %.idx.i
  %i.us = load ptr, ptr %1, align 8, !tbaa !20, !noalias !312
  %i.ut = load i64, ptr %i.ke, align 8, !tbaa !21, !noalias !312
  %i.uu = mul i64 %i.ut, %indvars.iv1320.i
  %i.uv = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !312 ; 2 uses
  %i.uw = mul i64 %i.uu, %i.uv
  %i.ux = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.uw
  %i.uy = mul i64 %i.uj, %i.uv
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.uy
  %i.va = sext i32 %i.up to i64
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.uz, i64 %i.va
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !39
  %i.vd = load <2 x float>, ptr %i.ur, align 4, !tbaa !39
  %i.ve = insertelement <2 x float> poison, float %i.vc, i64 0
  %i.vf = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vg = fmul fast <2 x float> %i.vd, %i.vf
  %i.vh = fadd fast <2 x float> %i.vg, %i.uk
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, %bb.bn, %bb.bm
  %i.vi = phi <2 x float> [ %i.uk, %bb.bm ], [ %i.uk, %bb.bn ], [ %i.vh, %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i ] ; 2 uses
  %indvars.iv.next1311.i = add nuw nsw i64 %indvars.iv1310.i, 1 ; 2 uses
  %exitcond1314.not.i = icmp eq i64 %indvars.iv.next1311.i, %i.ty
  br i1 %exitcond1314.not.i, label %..loopexit894_crit_edge.us.us.us.i, label %bb.bm, !llvm.loop !278

..loopexit894_crit_edge.us.us.us.i:               ; preds = %bb.bo, %bb.bl, %bb.bk
  %i.vj = phi <2 x float> [ %i.ub, %bb.bk ], [ %i.ub, %bb.bl ], [ %i.vi, %bb.bo ] ; 3 uses
  %indvars.iv.next1316.i = add nuw nsw i64 %indvars.iv1315.i, 1 ; 2 uses
  %exitcond1319.not.i = icmp eq i64 %indvars.iv.next1316.i, %wide.trip.count1287.i
  br i1 %exitcond1319.not.i, label %._crit_edge.split.us.us.us1052.i, label %bb.bk, !llvm.loop !279

._crit_edge.split.us.us.us1052.i:                 ; preds = %..loopexit894_crit_edge.us.us.us.i
  %i.vk = getelementptr inbounds [4 x i8], ptr %.23471037.us.us.i, i64 %i.mz
  %indvars.iv.next1321.i = add nuw nsw i64 %indvars.iv1320.i, 1 ; 2 uses
  %i.vl = trunc nuw i64 %indvars.iv.next1321.i to i32
  %i.vm = icmp sgt i32 %i.jt, %i.vl
  br i1 %i.vm, label %.preheader899.us.us.i, label %._crit_edge1040.i, !llvm.loop !280

._crit_edge1040.i:                                ; preds = %._crit_edge.split.us.us.us1052.i, %.preheader899.lr.ph.i, %.preheader902.i
  %i.vn = phi <2 x float> [ %i.to, %.preheader902.i ], [ %i.to, %.preheader899.lr.ph.i ], [ %i.vj, %._crit_edge.split.us.us.us1052.i ] ; 11 uses
  switch i32 %i.mp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread845.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread848.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread842.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread851.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread854.i
    i32 6, label %bb.bp
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread845.i: ; preds = %._crit_edge1040.i
  %i.vo = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.vn, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread848.i: ; preds = %._crit_edge1040.i
  %i.vp = load ptr, ptr %i.iu, align 8, !tbaa !20
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !39
  %i.vr = fcmp fast ogt <2 x float> %i.vn, zeroinitializer
  %i.vs = insertelement <2 x float> poison, float %i.vq, i64 0
  %i.vt = shufflevector <2 x float> %i.vs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vu = select <2 x i1> %i.vr, <2 x float> splat (float 1.000000e+00), <2 x float> %i.vt
  %i.vv = fmul fast <2 x float> %i.vu, %i.vn
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread842.i: ; preds = %._crit_edge1040.i
  %i.vw = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 4
  %i.vy = load float, ptr %i.vw, align 4, !tbaa !39
  %i.vz = load float, ptr %i.vx, align 4, !tbaa !39 ; 3 uses
  %i.wa = insertelement <2 x float> poison, float %i.vy, i64 0
  %i.wb = shufflevector <2 x float> %i.wa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wc = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.vn, <2 x float> %i.wb) ; 3 uses
  %i.wd = insertelement <2 x float> poison, float %i.vz, i64 0
  %i.we = shufflevector <2 x float> %i.wd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wf = fcmp fast ogt <2 x float> %i.wc, %i.we  ; 2 uses
  %i.wg = extractelement <2 x i1> %i.wf, i64 0
  %i.wh = extractelement <2 x float> %i.wc, i64 0
  %.1817844.i = select i1 %i.wg, float %i.vz, float %i.wh
  %i.wi = insertelement <2 x float> %i.wc, float %.1817844.i, i64 0 ; 2 uses
  %i.wj = extractelement <2 x i1> %i.wf, i64 1
  br i1 %i.wj, label %bb.bs, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread851.i: ; preds = %._crit_edge1040.i
  %i.wk = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.vn, <2 x float> splat (float f0x42B0C0A5))
  %i.wl = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.wk, <2 x float> splat (float f0xC2B0C0A5))
  %i.wm = fneg fast <2 x float> %i.wl
  %i.wn = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.wm)
  %i.wo = fadd fast <2 x float> %i.wn, splat (float 1.000000e+00)
  %i.wp = fdiv fast <2 x float> splat (float 1.000000e+00), %i.wo
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread854.i: ; preds = %._crit_edge1040.i
  %i.wq = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.vn)
  %i.wr = fadd fast <2 x float> %i.wq, splat (float 1.000000e+00)
  %i.ws = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.wr)
  %i.wt = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.ws)
  %i.wu = fmul fast <2 x float> %i.wt, %i.vn
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

bb.bp:                                            ; preds = %._crit_edge1040.i
  %i.wv = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !39 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.aaz = mul nsw i64 %i.aay, %i.ma
  br label %.lr.ph.split.us1083.us.us.us.i.us

.lr.ph.split.us1083.us.us.us.i.us:                ; preds = %bb.cc, %.preheader885.us.us.us.i.us161
  %indvars.iv1338.i.us = phi i64 [ %indvars.iv.next1339.i.us, %bb.cc ], [ 0, %.preheader885.us.us.us.i.us161 ] ; 3 uses
  %.28241077.us1085.us.us.us.i.us = phi <4 x float> [ %.3825.us1089.us.us.us.i.us, %bb.cc ], [ %.18231093.us.us.us.i.us157, %.preheader885.us.us.us.i.us161 ] ; 3 uses
  %i.aba = trunc i64 %indvars.iv1338.i.us to i32
  %i.abb = mul i32 %i.zd, %i.aba
  %.reass1081.us1086.us.us.us.i.us = add i32 %i.abb, %invariant.op1080.i ; 3 uses
  %i.abc = icmp slt i32 %.reass1081.us1086.us.us.us.i.us, 0
  br i1 %i.abc, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.split.us1083.us.us.us.i.us
  %i.abd = srem i32 %.reass1081.us1086.us.us.us.i.us, %i.zf
  %i.abe = sdiv i32 %.reass1081.us1086.us.us.us.i.us, %i.zf ; 2 uses
  %.not431.us1087.us.us.us.i.us = icmp eq i32 %i.abd, 0
  %.not432.us1088.us.us.us.i.us = icmp slt i32 %i.abe, %i.la
  %or.cond305 = select i1 %.not431.us1087.us.us.us.i.us, i1 %.not432.us1088.us.us.us.i.us, i1 false
  br i1 %or.cond305, label %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, label %bb.cc

_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us:        ; preds = %bb.cb
  %i.abf = load ptr, ptr %1, align 8, !tbaa !20, !noalias !314
  %i.abg = load i64, ptr %i.lk, align 8, !tbaa !21, !noalias !314
  %i.abh = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !314 ; 2 uses
  %factor.op.mul1072.us.us.us.us.i.us = mul i64 %i.abh, %i.abg ; 4 uses
  %i.abi = mul i64 %i.aaz, %i.abh
  %invariant.gep.us.us.us1125.us.i.us = getelementptr i8, ptr %i.abf, i64 %i.abi
  %i.abj = sext i32 %i.abe to i64
  %invariant.gep1074.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us1125.us.i.us, i64 %i.abj ; 4 uses
  %.reass1073.us.us.us.us.i.us = mul i64 %factor.op.mul1072.us.us.us.us.i.us, %indvars.iv1353.i
  %gep1075.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep1074.us.us.us.us.i.us, i64 %.reass1073.us.us.us.us.i.us
  %i.abk = load float, ptr %gep1075.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.0.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.abk, i64 0
  %.reass1073.us.us.us.us.1.i.us = mul i64 %factor.op.mul1072.us.us.us.us.i.us, %i.zj
  %gep1075.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep1074.us.us.us.us.i.us, i64 %.reass1073.us.us.us.us.1.i.us
  %i.abl = load float, ptr %gep1075.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.0.4.vec.insert.i.us = insertelement <4 x float> %.sroa.0.0.vec.insert.i.us, float %i.abl, i64 1
  %.reass1073.us.us.us.us.2.i.us = mul i64 %factor.op.mul1072.us.us.us.us.i.us, %i.zk
  %gep1075.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep1074.us.us.us.us.i.us, i64 %.reass1073.us.us.us.us.2.i.us
  %i.abm = load float, ptr %gep1075.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.0.8.vec.insert.i.us = insertelement <4 x float> %.sroa.0.4.vec.insert.i.us, float %i.abm, i64 2
  %.reass1073.us.us.us.us.3.i.us = mul i64 %factor.op.mul1072.us.us.us.us.i.us, %i.zl
  %gep1075.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep1074.us.us.us.us.i.us, i64 %.reass1073.us.us.us.us.3.i.us
  %i.abn = load float, ptr %gep1075.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.0.12.vec.insert.i.us = insertelement <4 x float> %.sroa.0.8.vec.insert.i.us, float %i.abn, i64 3
  %i.abo = add nuw nsw i64 %indvars.iv1338.i.us, %i.aax
  %i.abp = shl i64 %i.abo, 2
  %i.abq = and i64 %i.abp, 4294967292
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %.03231110.us.us.i, i64 %i.abq
  %i.abs = load <4 x float>, ptr %i.abr, align 16, !tbaa !80
  %i.abt = fmul fast <4 x float> %i.abs, %.sroa.0.12.vec.insert.i.us
  %i.abu = fadd fast <4 x float> %i.abt, %.28241077.us1085.us.us.us.i.us
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, %bb.cb, %.lr.ph.split.us1083.us.us.us.i.us
  %.3825.us1089.us.us.us.i.us = phi nsz <4 x float> [ %.28241077.us1085.us.us.us.i.us, %.lr.ph.split.us1083.us.us.us.i.us ], [ %i.abu, %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us ], [ %.28241077.us1085.us.us.us.i.us, %bb.cb ] ; 2 uses
  %indvars.iv.next1339.i.us = add nuw nsw i64 %indvars.iv1338.i.us, 1 ; 2 uses
  %exitcond1342.not.i.us = icmp eq i64 %indvars.iv.next1339.i.us, %i.zh
  br i1 %exitcond1342.not.i.us, label %..loopexit886_crit_edge.us.us.us.i.us162, label %.lr.ph.split.us1083.us.us.us.i.us, !llvm.loop !286

..loopexit886_crit_edge.us.us.us.i.us162:         ; preds = %bb.cc, %bb.ca, %.preheader889.us.us.i.split.us155
  %.4826.us.us.us.i.us163 = phi nsz <4 x float> [ %.18231093.us.us.us.i.us157, %.preheader889.us.us.i.split.us155 ], [ %.18231093.us.us.us.i.us157, %bb.ca ], [ %.3825.us1089.us.us.us.i.us, %bb.cc ] ; 2 uses
  %indvars.iv.next1349.i.us164 = add nuw nsw i64 %indvars.iv1348.i.us156, 1 ; 2 uses
  %exitcond1352.not.i.us165 = icmp eq i64 %indvars.iv.next1349.i.us164, %wide.trip.count1351.i
  br i1 %exitcond1352.not.i.us165, label %._crit_edge1096.split.us.us.us.i, label %.preheader889.us.us.i.split.us155, !llvm.loop !287

._crit_edge1096.split.us.us.us.i:                 ; preds = %..loopexit886_crit_edge.us.us.us.i.us162, %..loopexit886_crit_edge.us.us.us.i.us, %.preheader889.us.us.i
  %.us-phi154 = phi <4 x float> [ %.4826.us.us.us.i.us, %..loopexit886_crit_edge.us.us.us.i.us ], [ %.08221109.us.us.i, %.preheader889.us.us.i ], [ %.4826.us.us.us.i.us163, %..loopexit886_crit_edge.us.us.us.i.us162 ] ; 2 uses
  %i.abv = getelementptr inbounds [4 x i8], ptr %.03231110.us.us.i, i64 %i.ys ; 2 uses
  %indvars.iv.next1354.i = add nuw nsw i64 %indvars.iv1353.i, 4 ; 2 uses
  %i.abw = icmp slt i64 %indvars.iv.next1354.i, %invariant.op1438.i
  br i1 %i.abw, label %.preheader889.us.us.i, label %._crit_edge1114.i, !llvm.loop !290

._crit_edge1114.i:                                ; preds = %._crit_edge1096.split.us.us.us.i, %.preheader889.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit449.i
  %.0822.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit449.i ], [ zeroinitializer, %.preheader889.lr.ph.i ], [ %.us-phi154, %._crit_edge1096.split.us.us.us.i ] ; 2 uses
  %.0323.lcssa.i = phi ptr [ %i.yn, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %scevgep1331.i, %.preheader889.lr.ph.i ], [ %i.abv, %._crit_edge1096.split.us.us.us.i ] ; 4 uses
  %.0322.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %i.lq, %.preheader889.lr.ph.i ], [ %i.mb, %._crit_edge1096.split.us.us.us.i ] ; 7 uses
  %i.abx = shufflevector <4 x float> %.0822.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.aby = fadd fast <4 x float> %i.abx, %.0822.lcssa.i ; 2 uses
  %i.abz = extractelement <4 x float> %i.aby, i64 1
  %i.aca = extractelement <4 x float> %i.aby, i64 0
  %i.acb = fadd fast float %i.abz, %.0326.i
  %i.acc = fadd fast float %i.acb, %i.aca         ; 4 uses
  %i.acd = or disjoint i32 %.0322.lcssa.i, 1
  %i.ace = icmp slt i32 %i.acd, %i.kz
  br i1 %i.ace, label %.preheader888.lr.ph.i, label %.preheader890.i

.preheader888.lr.ph.i:                            ; preds = %._crit_edge1114.i
  %i.acf = load i32, ptr %i.d, align 4
  %i.acg = load i32, ptr %i.j, align 4
  %invariant.op1149.i = sub i32 %.neg867.i, %i.acg
  %i.ach = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aci = load i32, ptr %i.a, align 4
  %.fr1227.i = freeze i32 %i.aci                  ; 2 uses
  %i.acj = load i32, ptr %i.c, align 4
  %i.ack = load i32, ptr %i.i, align 4
  %.neg865.i = add nuw nsw i32 %.03291205.i, 1
  %invariant.op1142.i = sub i32 %.neg865.i, %i.ack
  %i.acl = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.yp, label %.preheader888.lr.ph.split.us.i, label %.preheader888.preheader.i

.preheader888.preheader.i:                        ; preds = %.preheader888.lr.ph.i
  %i.acm = sub i32 %i.lv, %.0322.lcssa.i          ; 2 uses
  %i.acn = lshr i32 %i.acm, 1
  %i.aco = zext nneg i32 %i.acn to i64
  %i.acp = shl nuw nsw i64 %i.aco, 2
  %i.acq = add nuw nsw i64 %i.acp, 4
  %i.acr = mul i64 %i.acq, %i.yu
  %scevgep1356.i = getelementptr i8, ptr %.0323.lcssa.i, i64 %i.acr
  %i.acs = or disjoint i32 %.0322.lcssa.i, 2
  %i.act = and i32 %i.acm, -2
  %i.acu = add i32 %i.acs, %i.act
  br label %.preheader890.i

.preheader888.lr.ph.split.us.i:                   ; preds = %.preheader888.lr.ph.i
  %i.acv = icmp sgt i32 %.fr1227.i, 0
  br i1 %i.acv, label %.preheader888.us.us.preheader.i, label %.preheader888.us.preheader.i

.preheader888.us.preheader.i:                     ; preds = %.preheader888.lr.ph.split.us.i
  %i.acw = sub i32 %i.lv, %.0322.lcssa.i          ; 2 uses
  %i.acx = lshr i32 %i.acw, 1
  %i.acy = zext nneg i32 %i.acx to i64
  %i.acz = shl nuw nsw i64 %i.acy, 2
  %i.ada = add nuw nsw i64 %i.acz, 4
  %i.adb = mul i64 %i.ada, %i.yu
  %scevgep1357.i = getelementptr i8, ptr %.0323.lcssa.i, i64 %i.adb
  %i.adc = or disjoint i32 %.0322.lcssa.i, 2
  %i.add = and i32 %i.acw, -2
  %i.ade = add i32 %i.adc, %i.add
  br label %.preheader890.i

.preheader888.us.us.preheader.i:                  ; preds = %.preheader888.lr.ph.split.us.i
  %i.adf = zext nneg i32 %.fr1227.i to i64        ; 2 uses
  %i.adg = zext i32 %.0322.lcssa.i to i64
  br label %.preheader888.us.us.i

.preheader888.us.us.i:                            ; preds = %._crit_edge1147.split.us.us.us.i, %.preheader888.us.us.preheader.i
  %indvars.iv1371.i = phi i64 [ %i.adg, %.preheader888.us.us.preheader.i ], [ %indvars.iv.next1372.i, %._crit_edge1147.split.us.us.us.i ] ; 3 uses
  %.13241154.us.us.i = phi ptr [ %.0323.lcssa.i, %.preheader888.us.us.preheader.i ], [ %i.ael, %._crit_edge1147.split.us.us.us.i ] ; 2 uses
  %.13271153.us.us.i = phi float [ %i.acc, %.preheader888.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge1147.split.us.us.us.i ]
  %i.adh = or disjoint i64 %indvars.iv1371.i, 1
  br label %bb.cd

bb.cd:                                            ; preds = %..loopexit884_crit_edge.us.us.us.i, %.preheader888.us.us.i
  %indvars.iv1366.i = phi i64 [ %indvars.iv.next1367.i, %..loopexit884_crit_edge.us.us.us.i ], [ 0, %.preheader888.us.us.i ] ; 3 uses
  %.23281144.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit884_crit_edge.us.us.us.i ], [ %.13271153.us.us.i, %.preheader888.us.us.i ] ; 3 uses
  %i.adi = trunc i64 %indvars.iv1366.i to i32
  %i.adj = mul i32 %i.acf, %i.adi
  %.reass1150.us.us.us.i = add i32 %i.adj, %invariant.op1149.i ; 3 uses
  %i.adk = icmp slt i32 %.reass1150.us.us.us.i, 0
  br i1 %i.adk, label %..loopexit884_crit_edge.us.us.us.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.adl = srem i32 %.reass1150.us.us.us.i, %i.ach
  %i.adm = sdiv i32 %.reass1150.us.us.us.i, %i.ach ; 2 uses
  %.not425.us.us.us.i = icmp eq i32 %i.adl, 0
  %.not426.us.us.us.i = icmp slt i32 %i.adm, %i.lb
  %or.cond306 = select i1 %.not425.us.us.us.i, i1 %.not426.us.us.us.i, i1 false
  br i1 %or.cond306, label %.preheader883.us.us.us.i, label %..loopexit884_crit_edge.us.us.us.i

.preheader883.us.us.us.i:                         ; preds = %bb.ce
  %i.adn = mul nuw nsw i64 %indvars.iv1366.i, %i.adf
  %i.ado = sext i32 %i.adm to i64
  %i.adp = mul nsw i64 %i.ado, %i.ma
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.us.us.us.i, %.preheader883.us.us.us.i
  %indvars.iv1361.i = phi i64 [ %indvars.iv.next1362.i, %.loopexit.us.us.us.i ], [ 0, %.preheader883.us.us.us.i ] ; 3 uses
  %.31139.us.us.us.i = phi float [ %.6.us.us.us.i, %.loopexit.us.us.us.i ], [ %.23281144.us.us.us.i, %.preheader883.us.us.us.i ] ; 3 uses
  %i.adq = trunc i64 %indvars.iv1361.i to i32
  %i.adr = mul i32 %i.acj, %i.adq
  %.reass1143.us.us.us.i = add i32 %invariant.op1142.i, %i.adr ; 3 uses
  %i.ads = icmp slt i32 %.reass1143.us.us.us.i, 0
  br i1 %i.ads, label %.loopexit.us.us.us.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.adt = srem i32 %.reass1143.us.us.us.i, %i.acl
  %i.adu = sdiv i32 %.reass1143.us.us.us.i, %i.acl ; 2 uses
  %.not427.us.us.us.i = icmp eq i32 %i.adt, 0
  %.not428.us.us.us.i = icmp slt i32 %i.adu, %i.la
  %or.cond307 = select i1 %.not427.us.us.us.i, i1 %.not428.us.us.us.i, i1 false
  br i1 %or.cond307, label %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit446.us.us.us.i:              ; preds = %bb.cg
  %i.adv = add nuw nsw i64 %indvars.iv1361.i, %i.adn
  %.idx1428.i = shl nuw nsw i64 %i.adv, 3
  %i.adw = getelementptr inbounds nuw i8, ptr %.13241154.us.us.i, i64 %.idx1428.i ; 2 uses
  %i.adx = load ptr, ptr %1, align 8, !tbaa !20, !noalias !315
  %i.ady = load i64, ptr %i.lk, align 8, !tbaa !21, !noalias !315
  %i.adz = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !315 ; 2 uses
  %factor.op.mul1133.us.us.us.i = mul i64 %i.adz, %i.ady ; 2 uses
  %i.aea = mul i64 %i.adp, %i.adz
  %invariant.gep.us.us.us1171.i = getelementptr i8, ptr %i.adx, i64 %i.aea
  %i.aeb = sext i32 %i.adu to i64
  %invariant.gep1135.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us1171.i, i64 %i.aeb ; 2 uses
  %.reass1134.us.us.us.i = mul i64 %factor.op.mul1133.us.us.us.i, %indvars.iv1371.i
  %gep1136.us.us.us.i = getelementptr i8, ptr %invariant.gep1135.us.us.us.i, i64 %.reass1134.us.us.us.i
  %i.aec = load float, ptr %gep1136.us.us.us.i, align 4, !tbaa !39
  %i.aed = load float, ptr %i.adw, align 4, !tbaa !39
  %i.aee = fmul fast float %i.aed, %i.aec
  %i.aef = fadd fast float %.31139.us.us.us.i, %i.aee
  %.reass1134.us.us.us.1.i = mul i64 %factor.op.mul1133.us.us.us.i, %i.adh
  %gep1136.us.us.us.1.i = getelementptr i8, ptr %invariant.gep1135.us.us.us.i, i64 %.reass1134.us.us.us.1.i
  %i.aeg = load float, ptr %gep1136.us.us.us.1.i, align 4, !tbaa !39
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adw, i64 4
  %i.aei = load float, ptr %i.aeh, align 4, !tbaa !39
  %i.aej = fmul fast float %i.aei, %i.aeg
  %i.aek = fadd fast float %i.aej, %i.aef
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, %bb.cg, %bb.cf
  %.6.us.us.us.i = phi nsz float [ %.31139.us.us.us.i, %bb.cf ], [ %.31139.us.us.us.i, %bb.cg ], [ %i.aek, %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i ] ; 2 uses
  %indvars.iv.next1362.i = add nuw nsw i64 %indvars.iv1361.i, 1 ; 2 uses
  %exitcond1365.not.i = icmp eq i64 %indvars.iv.next1362.i, %i.adf
  br i1 %exitcond1365.not.i, label %..loopexit884_crit_edge.us.us.us.i, label %bb.cf, !llvm.loop !293

..loopexit884_crit_edge.us.us.us.i:               ; preds = %.loopexit.us.us.us.i, %bb.ce, %bb.cd
  %.8.us.us.us.i = phi nsz float [ %.23281144.us.us.us.i, %bb.cd ], [ %.23281144.us.us.us.i, %bb.ce ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next1367.i = add nuw nsw i64 %indvars.iv1366.i, 1 ; 2 uses
  %exitcond1370.not.i = icmp eq i64 %indvars.iv.next1367.i, %wide.trip.count1351.i
  br i1 %exitcond1370.not.i, label %._crit_edge1147.split.us.us.us.i, label %bb.cd, !llvm.loop !294

._crit_edge1147.split.us.us.us.i:                 ; preds = %..loopexit884_crit_edge.us.us.us.i
  %i.ael = getelementptr inbounds [4 x i8], ptr %.13241154.us.us.i, i64 %i.yu ; 2 uses
  %indvars.iv.next1372.i = add nuw nsw i64 %indvars.iv1371.i, 2 ; 2 uses
  %i.aem = trunc i64 %indvars.iv.next1372.i to i32 ; 2 uses
  %i.aen = or i32 %i.aem, 1
  %i.aeo = icmp slt i32 %i.aen, %i.kz
  br i1 %i.aeo, label %.preheader888.us.us.i, label %.preheader890.i, !llvm.loop !295

.preheader890.i:                                  ; preds = %._crit_edge1147.split.us.us.us.i, %.preheader888.us.preheader.i, %.preheader888.preheader.i, %._crit_edge1114.i
  %.1327.lcssa.i = phi float [ %i.acc, %._crit_edge1114.i ], [ %i.acc, %.preheader888.preheader.i ], [ %i.acc, %.preheader888.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge1147.split.us.us.us.i ] ; 3 uses
  %.1324.lcssa.i = phi ptr [ %.0323.lcssa.i, %._crit_edge1114.i ], [ %scevgep1356.i, %.preheader888.preheader.i ], [ %scevgep1357.i, %.preheader888.us.preheader.i ], [ %i.ael, %._crit_edge1147.split.us.us.us.i ]
  %.1.lcssa.i = phi i32 [ %.0322.lcssa.i, %._crit_edge1114.i ], [ %i.acu, %.preheader888.preheader.i ], [ %i.ade, %.preheader888.us.preheader.i ], [ %i.aem, %._crit_edge1147.split.us.us.us.i ] ; 2 uses
  %i.aep = icmp slt i32 %.1.lcssa.i, %i.kz
  br i1 %i.aep, label %.preheader887.lr.ph.i, label %._crit_edge1193.i

.preheader887.lr.ph.i:                            ; preds = %.preheader890.i
  %i.aeq = load i32, ptr %i.d, align 4
  %i.aer = load i32, ptr %i.j, align 4
  %invariant.op1185.i = sub i32 %.neg867.i, %i.aer
  %i.aes = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aet = load i32, ptr %i.a, align 4
  %.fr1228.i = freeze i32 %i.aet                  ; 2 uses
  %i.aeu = load i32, ptr %i.c, align 4
  %i.aev = load i32, ptr %i.i, align 4
  %.neg861.i = add nuw nsw i32 %.03291205.i, 1
  %invariant.op1178.i = sub i32 %.neg861.i, %i.aev
  %i.aew = load i32, ptr %i.e, align 4            ; 2 uses
  %i.aex = icmp sgt i32 %.fr1228.i, 0
  %or.cond1441.i = and i1 %i.yp, %i.aex
  br i1 %or.cond1441.i, label %.preheader887.us.us.preheader.i, label %._crit_edge1193.i

.preheader887.us.us.preheader.i:                  ; preds = %.preheader887.lr.ph.i
  %i.aey = zext nneg i32 %.fr1228.i to i64        ; 2 uses
  %i.aez = zext i32 %.1.lcssa.i to i64
  br label %.preheader887.us.us.i

.preheader887.us.us.i:                            ; preds = %._crit_edge1183.split.us.us.us.i, %.preheader887.us.us.preheader.i
  %indvars.iv1384.i = phi i64 [ %i.aez, %.preheader887.us.us.preheader.i ], [ %indvars.iv.next1385.i, %._crit_edge1183.split.us.us.us.i ] ; 2 uses
  %.23251190.us.us.i = phi ptr [ %.1324.lcssa.i, %.preheader887.us.us.preheader.i ], [ %i.agd, %._crit_edge1183.split.us.us.us.i ] ; 2 uses
  %.91189.us.us.i = phi float [ %.1327.lcssa.i, %.preheader887.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge1183.split.us.us.us.i ]
  br label %bb.ch

bb.ch:                                            ; preds = %..loopexit882_crit_edge.us.us.us.i, %.preheader887.us.us.i
  %indvars.iv1379.i = phi i64 [ %indvars.iv.next1380.i, %..loopexit882_crit_edge.us.us.us.i ], [ 0, %.preheader887.us.us.i ] ; 3 uses
  %.101180.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit882_crit_edge.us.us.us.i ], [ %.91189.us.us.i, %.preheader887.us.us.i ] ; 3 uses
  %i.afa = trunc i64 %indvars.iv1379.i to i32
  %i.afb = mul i32 %i.aeq, %i.afa
  %.reass1186.us.us.us.i = add i32 %i.afb, %invariant.op1185.i ; 3 uses
  %i.afc = icmp slt i32 %.reass1186.us.us.us.i, 0
  br i1 %i.afc, label %..loopexit882_crit_edge.us.us.us.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.afd = srem i32 %.reass1186.us.us.us.i, %i.aes
  %i.afe = sdiv i32 %.reass1186.us.us.us.i, %i.aes ; 2 uses
  %.not421.us.us.us.i = icmp eq i32 %i.afd, 0
  %.not422.us.us.us.i = icmp slt i32 %i.afe, %i.lb
  %or.cond308 = select i1 %.not421.us.us.us.i, i1 %.not422.us.us.us.i, i1 false
  br i1 %or.cond308, label %.preheader.us.us.us.i, label %..loopexit882_crit_edge.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %bb.ci
  %i.aff = mul nuw nsw i64 %indvars.iv1379.i, %i.aey
  %i.afg = sext i32 %i.afe to i64
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %.23251190.us.us.i, i64 %i.aff
  %i.afi = mul nsw i64 %i.afg, %i.ma
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cl, %.preheader.us.us.us.i
  %indvars.iv1374.i = phi i64 [ %indvars.iv.next1375.i, %bb.cl ], [ 0, %.preheader.us.us.us.i ] ; 3 uses
  %.111175.us.us.us.i = phi float [ %.13.us.us.us.i, %bb.cl ], [ %.101180.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.afj = trunc i64 %indvars.iv1374.i to i32
  %i.afk = mul i32 %i.aeu, %i.afj
  %.reass1179.us.us.us.i = add i32 %invariant.op1178.i, %i.afk ; 3 uses
  %i.afl = icmp slt i32 %.reass1179.us.us.us.i, 0
  br i1 %i.afl, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.afm = srem i32 %.reass1179.us.us.us.i, %i.aew
  %i.afn = sdiv i32 %.reass1179.us.us.us.i, %i.aew ; 2 uses
  %.not423.us.us.us.i = icmp eq i32 %i.afm, 0
  %.not424.us.us.us.i = icmp slt i32 %i.afn, %i.la
  %or.cond309 = select i1 %.not423.us.us.us.i, i1 %.not424.us.us.us.i, i1 false
  br i1 %or.cond309, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.cl

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.ck
  %i.afo = load ptr, ptr %1, align 8, !tbaa !20, !noalias !316
  %i.afp = load i64, ptr %i.lk, align 8, !tbaa !21, !noalias !316
  %i.afq = mul i64 %i.afp, %indvars.iv1384.i
  %i.afr = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !316 ; 2 uses
  %i.afs = mul i64 %i.afq, %i.afr
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afo, i64 %i.afs
  %i.afu = mul i64 %i.afi, %i.afr
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.afu
  %i.afw = sext i32 %i.afn to i64
  %i.afx = getelementptr inbounds [4 x i8], ptr %i.afv, i64 %i.afw
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !39
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.afh, i64 %indvars.iv1374.i
  %i.aga = load float, ptr %i.afz, align 4, !tbaa !39
  %i.agb = fmul fast float %i.aga, %i.afy
  %i.agc = fadd fast float %i.agb, %.111175.us.us.us.i
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.ck, %bb.cj
  %.13.us.us.us.i = phi nsz float [ %.111175.us.us.us.i, %bb.cj ], [ %.111175.us.us.us.i, %bb.ck ], [ %i.agc, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next1375.i = add nuw nsw i64 %indvars.iv1374.i, 1 ; 2 uses
  %exitcond1378.not.i = icmp eq i64 %indvars.iv.next1375.i, %i.aey
  br i1 %exitcond1378.not.i, label %..loopexit882_crit_edge.us.us.us.i, label %bb.cj, !llvm.loop !298

..loopexit882_crit_edge.us.us.us.i:               ; preds = %bb.cl, %bb.ci, %bb.ch
  %.15.us.us.us.i = phi nsz float [ %.101180.us.us.us.i, %bb.ch ], [ %.101180.us.us.us.i, %bb.ci ], [ %.13.us.us.us.i, %bb.cl ] ; 3 uses
  %indvars.iv.next1380.i = add nuw nsw i64 %indvars.iv1379.i, 1 ; 2 uses
  %exitcond1383.not.i = icmp eq i64 %indvars.iv.next1380.i, %wide.trip.count1351.i
  br i1 %exitcond1383.not.i, label %._crit_edge1183.split.us.us.us.i, label %bb.ch, !llvm.loop !299

._crit_edge1183.split.us.us.us.i:                 ; preds = %..loopexit882_crit_edge.us.us.us.i
  %i.agd = getelementptr inbounds [4 x i8], ptr %.23251190.us.us.i, i64 %i.yv
  %indvars.iv.next1385.i = add nuw nsw i64 %indvars.iv1384.i, 1 ; 2 uses
  %i.age = trunc nuw i64 %indvars.iv.next1385.i to i32
  %i.agf = icmp sgt i32 %i.kz, %i.age
  br i1 %i.agf, label %.preheader887.us.us.i, label %._crit_edge1193.i, !llvm.loop !300

._crit_edge1193.i:                                ; preds = %._crit_edge1183.split.us.us.us.i, %.preheader887.lr.ph.i, %.preheader890.i
  %.9.lcssa.i = phi float [ %.1327.lcssa.i, %.preheader890.i ], [ %.1327.lcssa.i, %.preheader887.lr.ph.i ], [ %.15.us.us.us.i, %._crit_edge1183.split.us.us.us.i ] ; 13 uses
  switch i32 %i.ym, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.cm
    i32 2, label %bb.cn
    i32 3, label %bb.co
    i32 4, label %bb.cq
    i32 5, label %bb.cr
    i32 6, label %bb.cs
  ]

bb.cm:                                            ; preds = %._crit_edge1193.i
  %i.agg = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cn:                                            ; preds = %._crit_edge1193.i
  %i.agh = load ptr, ptr %i.iu, align 8, !tbaa !20
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !39
  %i.agj = fcmp fast ogt float %.9.lcssa.i, 0.000000e+00
  %i.agk = select fast i1 %i.agj, float 1.000000e+00, float %i.agi
  %i.agl = fmul fast float %i.agk, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.co:                                            ; preds = %._crit_edge1193.i
  %i.agm = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !39
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 4
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !39 ; 2 uses
  %.0820.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9.lcssa.i, float %i.agn) ; 2 uses
  %i.agq = fcmp fast ogt float %.0820.i, %i.agp
  br i1 %i.agq, label %bb.cp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cp:                                            ; preds = %bb.co
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cq:                                            ; preds = %._crit_edge1193.i
  %.sroa.speculated777.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated777.i, float f0xC2B0C0A5)
  %i.agr = fneg fast float %.sroa.speculated.i
  %i.ags = call fast float @llvm.exp.f32(float %i.agr)
  %i.agt = fadd fast float %i.ags, 1.000000e+00
  %i.agu = fdiv fast float 1.000000e+00, %i.agt
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cr:                                            ; preds = %._crit_edge1193.i
  %i.agv = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9.lcssa.i)
  %i.agw = fadd fast float %i.agv, 1.000000e+00
  %i.agx = call fast float @llvm.log.f32(float %i.agw)
  %i.agy = call fast float @llvm.tanh.f32(float %i.agx)
  %i.agz = fmul fast float %i.agy, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cs:                                            ; preds = %._crit_edge1193.i
  %i.aha = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !39 ; 3 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 4
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !39 ; 2 uses
  %i.ahe = fneg fast float %i.ahd
  %i.ahf = fdiv fast float %i.ahe, %i.ahb         ; 2 uses
  %i.ahg = fcmp fast olt float %.9.lcssa.i, %i.ahf
  br i1 %i.ahg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ahh = fdiv fast float 1.000000e+00, %i.ahb
  %i.ahi = fadd fast float %i.ahf, %i.ahh
  %i.ahj = fcmp fast ogt float %.9.lcssa.i, %i.ahi
end_hunk_1
begin_hunk_2_@_ZNK4ncnn17Deconvolution_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:._crit_edge
  %i.mf = load i16, ptr %gep913.us.us.us.us.i.us, align 2, !tbaa !86
  %.reass.us.us.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jo
  %gep913.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.1.i.us
  %i.mg = load i16, ptr %gep913.us.us.us.us.1.i.us, align 2, !tbaa !86
  %.reass.us.us.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jp
  %gep913.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.2.i.us
  %i.mh = load i16, ptr %gep913.us.us.us.us.2.i.us, align 2, !tbaa !86
  %.reass.us.us.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jq
  %gep913.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.3.i.us
  %i.mi = load i16, ptr %gep913.us.us.us.us.3.i.us, align 2, !tbaa !86
  %i.mj = insertelement <4 x i16> poison, i16 %i.mf, i64 0
  %i.mk = insertelement <4 x i16> %i.mj, i16 %i.mg, i64 1
  %i.ml = insertelement <4 x i16> %i.mk, i16 %i.mh, i64 2
  %i.mm = insertelement <4 x i16> %i.ml, i16 %i.mi, i64 3
  %i.mn = zext <4 x i16> %i.mm to <4 x i32>
  %i.mo = shl nuw <4 x i32> %i.mn, splat (i32 16)
  %.sroa.01401.12.vec.insert.i.us = bitcast <4 x i32> %i.mo to <4 x float> ; 2 uses
  %i.mp = add nuw nsw i64 %indvars.iv.i.us, %i.ls
  %i.mq = shl i64 %i.mp, 3
  %i.mr = and i64 %i.mq, 4294967288
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %.0345954.us.us.i, i64 %i.mr ; 2 uses
  %i.mt = load i64, ptr %i.ms, align 1, !tbaa !80
  %i.mu = insertelement <2 x i64> poison, i64 %i.mt, i64 0
  %i.mv = bitcast <2 x i64> %i.mu to <8 x i16>
  %i.mw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mx = bitcast <8 x i16> %i.mw to <4 x float>
  %i.my = fmul fast <4 x float> %i.mx, %.sroa.01401.12.vec.insert.i.us
  %i.mz = fadd fast <4 x float> %i.my, %.2837916.us923.us.us.us.i.us
  %i.na = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.nb = load i64, ptr %i.na, align 1, !tbaa !80
  %i.nc = insertelement <2 x i64> poison, i64 %i.nb, i64 0
  %i.nd = bitcast <2 x i64> %i.nc to <8 x i16>
  %i.ne = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nf = bitcast <8 x i16> %i.ne to <4 x float>
  %i.ng = fmul fast <4 x float> %i.nf, %.sroa.01401.12.vec.insert.i.us
  %i.nh = fadd fast <4 x float> %i.ng, %.2842915.us924.us.us.us.i.us
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, %bb.ab, %.lr.ph.split.us921.us.us.us.i.us
  %.3843.us928.us.us.us.i.us = phi nsz <4 x float> [ %.2842915.us924.us.us.us.i.us, %.lr.ph.split.us921.us.us.us.i.us ], [ %i.nh, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2842915.us924.us.us.us.i.us, %bb.ab ] ; 2 uses
  %.3838.us929.us.us.us.i.us = phi nsz <4 x float> [ %.2837916.us923.us.us.us.i.us, %.lr.ph.split.us921.us.us.us.i.us ], [ %i.mz, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2837916.us923.us.us.us.i.us, %bb.ab ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.jm
  br i1 %exitcond.not.i.us, label %..loopexit906_crit_edge.us.us.us.i.us69, label %.lr.ph.split.us921.us.us.us.i.us, !llvm.loop !373

..loopexit906_crit_edge.us.us.us.i.us69:          ; preds = %bb.ac, %bb.aa, %.preheader909.us.us.i.split.us61
  %.4844.us.us.us.i.us70 = phi nsz <4 x float> [ %.1841934.us.us.us.i.us64, %.preheader909.us.us.i.split.us61 ], [ %.1841934.us.us.us.i.us64, %bb.aa ], [ %.3843.us928.us.us.us.i.us, %bb.ac ] ; 2 uses
  %.4839.us.us.us.i.us71 = phi nsz <4 x float> [ %.1836935.us.us.us.i.us63, %.preheader909.us.us.i.split.us61 ], [ %.1836935.us.us.us.i.us63, %bb.aa ], [ %.3838.us929.us.us.us.i.us, %bb.ac ] ; 2 uses
  %indvars.iv.next1293.i.us72 = add nuw nsw i64 %indvars.iv1292.i.us62, 1 ; 2 uses
  %exitcond1296.not.i.us73 = icmp eq i64 %indvars.iv.next1293.i.us72, %wide.trip.count1295.i
  br i1 %exitcond1296.not.i.us73, label %._crit_edge.split.us.us.us.i, label %.preheader909.us.us.i.split.us61, !llvm.loop !374

._crit_edge.split.us.us.us.i:                     ; preds = %..loopexit906_crit_edge.us.us.us.i.us69, %..loopexit906_crit_edge.us.us.us.i.us, %.preheader909.us.us.i
  %.us-phi = phi <4 x float> [ %.4844.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0840952.us.us.i, %.preheader909.us.us.i ], [ %.4844.us.us.us.i.us70, %..loopexit906_crit_edge.us.us.us.i.us69 ] ; 2 uses
  %.us-phi60 = phi <4 x float> [ %.4839.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0835953.us.us.i, %.preheader909.us.us.i ], [ %.4839.us.us.us.i.us71, %..loopexit906_crit_edge.us.us.us.i.us69 ] ; 2 uses
  %i.ni = getelementptr inbounds [2 x i8], ptr %.0345954.us.us.i, i64 %i.iw ; 2 uses
  %indvars.iv.next1298.i = add nuw nsw i64 %indvars.iv1297.i, 4 ; 2 uses
  %i.nj = icmp slt i64 %indvars.iv.next1298.i, %invariant.op1446.i
  br i1 %i.nj, label %.preheader909.us.us.i, label %._crit_edge958.i, !llvm.loop !377

._crit_edge958.i:                                 ; preds = %._crit_edge.split.us.us.us.i, %.preheader909.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit455.i
  %.0840.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader909.lr.ph.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0835.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader909.lr.ph.i ], [ %.us-phi60, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0345.lcssa.i = phi ptr [ %i.ir, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %scevgep1282.i, %.preheader909.lr.ph.i ], [ %i.ni, %._crit_edge.split.us.us.us.i ] ; 4 uses
  %.0342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %i.gk, %.preheader909.lr.ph.i ], [ %i.gp, %._crit_edge.split.us.us.us.i ] ; 7 uses
  %i.nk = shufflevector <4 x float> %.0835.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.nl = fadd fast <4 x float> %i.nk, %.0835.lcssa.i ; 2 uses
  %i.nm = shufflevector <4 x float> %.0840.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.nn = fadd fast <4 x float> %i.nm, %.0840.lcssa.i ; 2 uses
  %i.no = shufflevector <4 x float> %i.nl, <4 x float> %i.nn, <2 x i32> <i32 1, i32 5>
  %i.np = fadd fast <2 x float> %i.no, %i.jd
  %i.nq = shufflevector <4 x float> %i.nl, <4 x float> %i.nn, <2 x i32> <i32 0, i32 4>
  %i.nr = fadd fast <2 x float> %i.np, %i.nq      ; 4 uses
  %i.ns = or disjoint i32 %.0342.lcssa.i, 1
  %i.nt = icmp slt i32 %i.ns, %i.fn
  br i1 %i.nt, label %.preheader908.lr.ph.i, label %.preheader910.i

.preheader908.lr.ph.i:                            ; preds = %._crit_edge958.i
  %i.nu = load i32, ptr %i.d, align 4
  %i.nv = load i32, ptr %i.j, align 4
  %invariant.op993.i = sub i32 %.neg887.i, %i.nv
  %i.nw = load i32, ptr %i.f, align 4             ; 2 uses
  %i.nx = load i32, ptr %i.a, align 4
  %.fr1232.i = freeze i32 %i.nx                   ; 2 uses
  %i.ny = load i32, ptr %i.c, align 4
  %i.nz = load i32, ptr %i.i, align 4
  %.neg885.i = add nuw nsw i32 %.03801065.i, 1
  %invariant.op985.i = sub i32 %.neg885.i, %i.nz
  %i.oa = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.it, label %.preheader908.lr.ph.split.us.i, label %.preheader908.preheader.i

.preheader908.preheader.i:                        ; preds = %.preheader908.lr.ph.i
  %i.ob = sub i32 %i.gm, %.0342.lcssa.i
  %i.oc = and i32 %i.ob, -2                       ; 2 uses
  %i.od = zext i32 %i.oc to i64
  %i.oe = add nuw nsw i64 %i.od, 2
  %i.of = mul nsw i64 %i.oe, %i.iy
  %scevgep1300.i = getelementptr i8, ptr %.0345.lcssa.i, i64 %i.of
  %i.og = add i32 %.0342.lcssa.i, 2
  %i.oh = add i32 %i.og, %i.oc
  br label %.preheader910.i

.preheader908.lr.ph.split.us.i:                   ; preds = %.preheader908.lr.ph.i
  %i.oi = icmp sgt i32 %.fr1232.i, 0
  br i1 %i.oi, label %.preheader908.us.us.preheader.i, label %.preheader908.us.preheader.i

.preheader908.us.preheader.i:                     ; preds = %.preheader908.lr.ph.split.us.i
  %i.oj = sub i32 %i.gm, %.0342.lcssa.i
  %i.ok = and i32 %i.oj, -2                       ; 2 uses
  %i.ol = zext i32 %i.ok to i64
  %i.om = add nuw nsw i64 %i.ol, 2
  %i.on = mul nsw i64 %i.om, %i.iy
  %scevgep1301.i = getelementptr i8, ptr %.0345.lcssa.i, i64 %i.on
  %i.oo = add i32 %.0342.lcssa.i, 2
  %i.op = add i32 %i.oo, %i.ok
  br label %.preheader910.i

.preheader908.us.us.preheader.i:                  ; preds = %.preheader908.lr.ph.split.us.i
  %i.oq = zext nneg i32 %.fr1232.i to i64         ; 2 uses
  %i.or = zext i32 %.0342.lcssa.i to i64
  br label %.preheader908.us.us.i

.preheader908.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1020.i, %.preheader908.us.us.preheader.i
  %indvars.iv1315.i = phi i64 [ %i.or, %.preheader908.us.us.preheader.i ], [ %indvars.iv.next1316.i, %._crit_edge.split.us.us.us1020.i ] ; 3 uses
  %.13461001.us.us.i = phi ptr [ %.0345.lcssa.i, %.preheader908.us.us.preheader.i ], [ %i.qr, %._crit_edge.split.us.us.us1020.i ] ; 2 uses
  %i.os = phi <2 x float> [ %i.nr, %.preheader908.us.us.preheader.i ], [ %i.qq, %._crit_edge.split.us.us.us1020.i ]
  %i.ot = add nuw nsw i64 %indvars.iv1315.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %..loopexit904_crit_edge.us.us.us.i, %.preheader908.us.us.i
  %indvars.iv1310.i = phi i64 [ %indvars.iv.next1311.i, %..loopexit904_crit_edge.us.us.us.i ], [ 0, %.preheader908.us.us.i ] ; 3 uses
  %i.ou = phi <2 x float> [ %i.qq, %..loopexit904_crit_edge.us.us.us.i ], [ %i.os, %.preheader908.us.us.i ] ; 3 uses
  %i.ov = trunc i64 %indvars.iv1310.i to i32
  %i.ow = mul i32 %i.nu, %i.ov
  %.reass994.us.us.us.i = add i32 %i.ow, %invariant.op993.i ; 3 uses
  %i.ox = icmp slt i32 %.reass994.us.us.us.i, 0
  br i1 %i.ox, label %..loopexit904_crit_edge.us.us.us.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.oy = srem i32 %.reass994.us.us.us.i, %i.nw
  %i.oz = sdiv i32 %.reass994.us.us.us.i, %i.nw   ; 2 uses
  %.not438.us.us.us.i = icmp eq i32 %i.oy, 0
  %.not439.us.us.us.i = icmp slt i32 %i.oz, %i.fp
  %or.cond197 = select i1 %.not438.us.us.us.i, i1 %.not439.us.us.us.i, i1 false
  br i1 %or.cond197, label %.preheader903.us.us.us.i, label %..loopexit904_crit_edge.us.us.us.i

.preheader903.us.us.us.i:                         ; preds = %bb.ae
  %i.pa = mul nuw nsw i64 %indvars.iv1310.i, %i.oq
  %i.pb = sext i32 %i.oz to i64
  %i.pc = mul nsw i64 %i.pb, %i.go
  br label %bb.af

bb.af:                                            ; preds = %.loopexit900.us.us.us.i, %.preheader903.us.us.us.i
  %indvars.iv1305.i = phi i64 [ %indvars.iv.next1306.i, %.loopexit900.us.us.us.i ], [ 0, %.preheader903.us.us.us.i ] ; 3 uses
  %i.pd = phi <2 x float> [ %i.qp, %.loopexit900.us.us.us.i ], [ %i.ou, %.preheader903.us.us.us.i ] ; 3 uses
  %i.pe = trunc i64 %indvars.iv1305.i to i32
  %i.pf = mul i32 %i.ny, %i.pe
  %.reass986.us.us.us.i = add i32 %invariant.op985.i, %i.pf ; 3 uses
  %i.pg = icmp slt i32 %.reass986.us.us.us.i, 0
  br i1 %i.pg, label %.loopexit900.us.us.us.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ph = srem i32 %.reass986.us.us.us.i, %i.oa
  %i.pi = sdiv i32 %.reass986.us.us.us.i, %i.oa   ; 2 uses
  %.not440.us.us.us.i = icmp eq i32 %i.ph, 0
  %.not441.us.us.us.i = icmp slt i32 %i.pi, %i.fo
  %or.cond198 = select i1 %.not440.us.us.us.i, i1 %.not441.us.us.us.i, i1 false
  br i1 %or.cond198, label %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, label %.loopexit900.us.us.us.i

_ZN4ncnn3MatD2Ev.exit452.us.us.us.i:              ; preds = %bb.ag
  %i.pj = add nuw nsw i64 %indvars.iv1305.i, %i.pa
  %i.pk = shl i64 %i.pj, 2
  %i.pl = and i64 %i.pk, 4294967292
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr %.13461001.us.us.i, i64 %i.pl
  %i.pn = load ptr, ptr %1, align 8, !tbaa !20, !noalias !415
  %i.po = load i64, ptr %i.fy, align 8, !tbaa !21, !noalias !415
  %i.pp = load i64, ptr %i.fz, align 8, !tbaa !55, !noalias !415 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.pp, %i.po ; 2 uses
  %i.pq = mul i64 %i.pc, %i.pp
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.pn, i64 %i.pq
  %i.pr = sext i32 %i.pi to i64
  %invariant.gep975.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.pr ; 2 uses
  %.reass.us995.us.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv1315.i
  %gep976.us.us.us.i = getelementptr i8, ptr %invariant.gep975.us.us.us.i, i64 %.reass.us995.us.us.i
  %i.ps = load i16, ptr %gep976.us.us.us.i, align 2, !tbaa !86
  %.reass.us995.us.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.ot
  %gep976.us.us.us.1.i = getelementptr i8, ptr %invariant.gep975.us.us.us.i, i64 %.reass.us995.us.us.1.i
  %i.pt = load i16, ptr %gep976.us.us.us.1.i, align 2, !tbaa !86
  %i.pu = zext i16 %i.ps to i32
  %i.pv = shl nuw i32 %i.pu, 16
  %i.pw = load <4 x i16>, ptr %i.pm, align 2, !tbaa !86
  %i.px = freeze <4 x i16> %i.pw
  %i.py = bitcast <4 x i16> %i.px to <2 x i32>    ; 2 uses
  %i.pz = and <2 x i32> %i.py, splat (i32 -65536)
  %i.qa = shl <2 x i32> %i.py, splat (i32 16)
  %i.qb = bitcast <2 x i32> %i.qa to <2 x float>
  %i.qc = insertelement <2 x i32> poison, i32 %i.pv, i64 0
  %i.qd = bitcast <2 x i32> %i.qc to <2 x float>
  %i.qe = shufflevector <2 x float> %i.qd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qf = fmul fast <2 x float> %i.qe, %i.qb
  %i.qg = fadd fast <2 x float> %i.pd, %i.qf
  %i.qh = zext i16 %i.pt to i32
  %i.qi = shl nuw i32 %i.qh, 16
  %i.qj = bitcast <2 x i32> %i.pz to <2 x float>
  %i.qk = insertelement <2 x i32> poison, i32 %i.qi, i64 0
  %i.ql = bitcast <2 x i32> %i.qk to <2 x float>
  %i.qm = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qn = fmul fast <2 x float> %i.qm, %i.qj
  %i.qo = fadd fast <2 x float> %i.qn, %i.qg
  br label %.loopexit900.us.us.us.i

.loopexit900.us.us.us.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, %bb.ag, %bb.af
  %i.qp = phi <2 x float> [ %i.pd, %bb.af ], [ %i.pd, %bb.ag ], [ %i.qo, %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i ] ; 2 uses
  %indvars.iv.next1306.i = add nuw nsw i64 %indvars.iv1305.i, 1 ; 2 uses
  %exitcond1309.not.i = icmp eq i64 %indvars.iv.next1306.i, %i.oq
  br i1 %exitcond1309.not.i, label %..loopexit904_crit_edge.us.us.us.i, label %bb.af, !llvm.loop !380

..loopexit904_crit_edge.us.us.us.i:               ; preds = %.loopexit900.us.us.us.i, %bb.ae, %bb.ad
  %i.qq = phi <2 x float> [ %i.ou, %bb.ad ], [ %i.ou, %bb.ae ], [ %i.qp, %.loopexit900.us.us.us.i ] ; 3 uses
  %indvars.iv.next1311.i = add nuw nsw i64 %indvars.iv1310.i, 1 ; 2 uses
  %exitcond1314.not.i = icmp eq i64 %indvars.iv.next1311.i, %wide.trip.count1295.i
  br i1 %exitcond1314.not.i, label %._crit_edge.split.us.us.us1020.i, label %bb.ad, !llvm.loop !381

._crit_edge.split.us.us.us1020.i:                 ; preds = %..loopexit904_crit_edge.us.us.us.i
  %i.qr = getelementptr inbounds [2 x i8], ptr %.13461001.us.us.i, i64 %i.iy ; 2 uses
  %indvars.iv.next1316.i = add nuw nsw i64 %indvars.iv1315.i, 2 ; 2 uses
  %i.qs = trunc i64 %indvars.iv.next1316.i to i32 ; 2 uses
  %i.qt = or i32 %i.qs, 1
  %i.qu = icmp slt i32 %i.qt, %i.fn
  br i1 %i.qu, label %.preheader908.us.us.i, label %.preheader910.i, !llvm.loop !382

.preheader910.i:                                  ; preds = %._crit_edge.split.us.us.us1020.i, %.preheader908.us.preheader.i, %.preheader908.preheader.i, %._crit_edge958.i
  %.1346.lcssa.i = phi ptr [ %.0345.lcssa.i, %._crit_edge958.i ], [ %scevgep1300.i, %.preheader908.preheader.i ], [ %scevgep1301.i, %.preheader908.us.preheader.i ], [ %i.qr, %._crit_edge.split.us.us.us1020.i ]
  %.1343.lcssa.i = phi i32 [ %.0342.lcssa.i, %._crit_edge958.i ], [ %i.oh, %.preheader908.preheader.i ], [ %i.op, %.preheader908.us.preheader.i ], [ %i.qs, %._crit_edge.split.us.us.us1020.i ] ; 2 uses
  %i.qv = phi <2 x float> [ %i.nr, %._crit_edge958.i ], [ %i.nr, %.preheader908.preheader.i ], [ %i.nr, %.preheader908.us.preheader.i ], [ %i.qq, %._crit_edge.split.us.us.us1020.i ] ; 3 uses
  %i.qw = icmp slt i32 %.1343.lcssa.i, %i.fn
  br i1 %i.qw, label %.preheader907.lr.ph.i, label %._crit_edge1048.i

.preheader907.lr.ph.i:                            ; preds = %.preheader910.i
  %i.qx = load i32, ptr %i.d, align 4
  %i.qy = load i32, ptr %i.j, align 4
  %invariant.op1037.i = sub i32 %.neg887.i, %i.qy
  %i.qz = load i32, ptr %i.f, align 4             ; 2 uses
  %i.ra = load i32, ptr %i.a, align 4
  %.fr1233.i = freeze i32 %i.ra                   ; 2 uses
  %i.rb = load i32, ptr %i.c, align 4
  %i.rc = load i32, ptr %i.i, align 4
  %.neg881.i = add nuw nsw i32 %.03801065.i, 1
  %invariant.op1030.i = sub i32 %.neg881.i, %i.rc
  %i.rd = load i32, ptr %i.e, align 4             ; 2 uses
  %i.re = icmp sgt i32 %.fr1233.i, 0
  %or.cond1448.i = and i1 %i.it, %i.re
  br i1 %or.cond1448.i, label %.preheader907.us.us.preheader.i, label %._crit_edge1048.i

.preheader907.us.us.preheader.i:                  ; preds = %.preheader907.lr.ph.i
  %i.rf = zext nneg i32 %.fr1233.i to i64         ; 2 uses
  %i.rg = zext i32 %.1343.lcssa.i to i64
  br label %.preheader907.us.us.i

.preheader907.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1060.i, %.preheader907.us.us.preheader.i
  %indvars.iv1328.i = phi i64 [ %i.rg, %.preheader907.us.us.preheader.i ], [ %indvars.iv.next1329.i, %._crit_edge.split.us.us.us1060.i ] ; 2 uses
  %.23471045.us.us.i = phi ptr [ %.1346.lcssa.i, %.preheader907.us.us.preheader.i ], [ %i.sx, %._crit_edge.split.us.us.us1060.i ] ; 2 uses
  %i.rh = phi <2 x float> [ %i.qv, %.preheader907.us.us.preheader.i ], [ %i.sw, %._crit_edge.split.us.us.us1060.i ]
  br label %bb.ah

bb.ah:                                            ; preds = %..loopexit902_crit_edge.us.us.us.i, %.preheader907.us.us.i
  %indvars.iv1323.i = phi i64 [ %indvars.iv.next1324.i, %..loopexit902_crit_edge.us.us.us.i ], [ 0, %.preheader907.us.us.i ] ; 3 uses
  %i.ri = phi <2 x float> [ %i.sw, %..loopexit902_crit_edge.us.us.us.i ], [ %i.rh, %.preheader907.us.us.i ] ; 3 uses
  %i.rj = trunc i64 %indvars.iv1323.i to i32
  %i.rk = mul i32 %i.qx, %i.rj
  %.reass1038.us.us.us.i = add i32 %i.rk, %invariant.op1037.i ; 3 uses
  %i.rl = icmp slt i32 %.reass1038.us.us.us.i, 0
  br i1 %i.rl, label %..loopexit902_crit_edge.us.us.us.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.rm = srem i32 %.reass1038.us.us.us.i, %i.qz
  %i.rn = sdiv i32 %.reass1038.us.us.us.i, %i.qz  ; 2 uses
  %.not434.us.us.us.i = icmp eq i32 %i.rm, 0
  %.not435.us.us.us.i = icmp slt i32 %i.rn, %i.fp
  %or.cond199 = select i1 %.not434.us.us.us.i, i1 %.not435.us.us.us.i, i1 false
  br i1 %or.cond199, label %.preheader901.us.us.us.i, label %..loopexit902_crit_edge.us.us.us.i

.preheader901.us.us.us.i:                         ; preds = %bb.ai
  %i.ro = mul nuw nsw i64 %indvars.iv1323.i, %i.rf
  %i.rp = sext i32 %i.rn to i64
  %i.rq = mul nsw i64 %i.rp, %i.go
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.preheader901.us.us.us.i
  %indvars.iv1318.i = phi i64 [ %indvars.iv.next1319.i, %bb.al ], [ 0, %.preheader901.us.us.us.i ] ; 3 uses
  %i.rr = phi <2 x float> [ %i.sv, %bb.al ], [ %i.ri, %.preheader901.us.us.us.i ] ; 3 uses
  %i.rs = trunc i64 %indvars.iv1318.i to i32
  %i.rt = mul i32 %i.rb, %i.rs
  %.reass.us1039.us.us.i = add i32 %invariant.op1030.i, %i.rt ; 3 uses
  %i.ru = icmp slt i32 %.reass.us1039.us.us.i, 0
  br i1 %i.ru, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.rv = srem i32 %.reass.us1039.us.us.i, %i.rd
  %i.rw = sdiv i32 %.reass.us1039.us.us.i, %i.rd  ; 2 uses
  %.not436.us.us.us.i = icmp eq i32 %i.rv, 0
  %.not437.us.us.us.i = icmp slt i32 %i.rw, %i.fo
  %or.cond200 = select i1 %.not436.us.us.us.i, i1 %.not437.us.us.us.i, i1 false
  br i1 %or.cond200, label %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, label %bb.al

_ZN4ncnn3MatD2Ev.exit451.us.us.us.i:              ; preds = %bb.ak
  %i.rx = add nuw nsw i64 %indvars.iv1318.i, %i.ro
  %.idx.i = shl nuw nsw i64 %i.rx, 2
  %i.ry = getelementptr inbounds nuw i8, ptr %.23471045.us.us.i, i64 %.idx.i
  %i.rz = load ptr, ptr %1, align 8, !tbaa !20, !noalias !416
  %i.sa = load i64, ptr %i.fy, align 8, !tbaa !21, !noalias !416
  %i.sb = mul i64 %i.sa, %indvars.iv1328.i
  %i.sc = load i64, ptr %i.fz, align 8, !tbaa !55, !noalias !416 ; 2 uses
  %i.sd = mul i64 %i.sb, %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sd
  %i.sf = mul i64 %i.rq, %i.sc
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.sf
  %i.sh = sext i32 %i.rw to i64
  %i.si = getelementptr inbounds [2 x i8], ptr %i.sg, i64 %i.sh
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !86
  %i.sk = zext i16 %i.sj to i32
  %i.sl = shl nuw i32 %i.sk, 16
  %i.sm = load <2 x i16>, ptr %i.ry, align 2, !tbaa !86
  %i.sn = zext <2 x i16> %i.sm to <2 x i32>
  %i.so = shl nuw <2 x i32> %i.sn, splat (i32 16)
  %i.sp = bitcast <2 x i32> %i.so to <2 x float>
  %i.sq = insertelement <2 x i32> poison, i32 %i.sl, i64 0
  %i.sr = bitcast <2 x i32> %i.sq to <2 x float>
  %i.ss = shufflevector <2 x float> %i.sr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.st = fmul fast <2 x float> %i.ss, %i.sp
  %i.su = fadd fast <2 x float> %i.st, %i.rr
  br label %bb.al

bb.al:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, %bb.ak, %bb.aj
  %i.sv = phi <2 x float> [ %i.rr, %bb.aj ], [ %i.rr, %bb.ak ], [ %i.su, %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i ] ; 2 uses
  %indvars.iv.next1319.i = add nuw nsw i64 %indvars.iv1318.i, 1 ; 2 uses
  %exitcond1322.not.i = icmp eq i64 %indvars.iv.next1319.i, %i.rf
  br i1 %exitcond1322.not.i, label %..loopexit902_crit_edge.us.us.us.i, label %bb.aj, !llvm.loop !385

..loopexit902_crit_edge.us.us.us.i:               ; preds = %bb.al, %bb.ai, %bb.ah
  %i.sw = phi <2 x float> [ %i.ri, %bb.ah ], [ %i.ri, %bb.ai ], [ %i.sv, %bb.al ] ; 3 uses
  %indvars.iv.next1324.i = add nuw nsw i64 %indvars.iv1323.i, 1 ; 2 uses
  %exitcond1327.not.i = icmp eq i64 %indvars.iv.next1324.i, %wide.trip.count1295.i
  br i1 %exitcond1327.not.i, label %._crit_edge.split.us.us.us1060.i, label %bb.ah, !llvm.loop !386

._crit_edge.split.us.us.us1060.i:                 ; preds = %..loopexit902_crit_edge.us.us.us.i
  %i.sx = getelementptr inbounds [2 x i8], ptr %.23471045.us.us.i, i64 %i.ja
  %indvars.iv.next1329.i = add nuw nsw i64 %indvars.iv1328.i, 1 ; 2 uses
  %i.sy = trunc nuw i64 %indvars.iv.next1329.i to i32
  %i.sz = icmp sgt i32 %i.fn, %i.sy
  br i1 %i.sz, label %.preheader907.us.us.i, label %._crit_edge1048.i, !llvm.loop !387

._crit_edge1048.i:                                ; preds = %._crit_edge.split.us.us.us1060.i, %.preheader907.lr.ph.i, %.preheader910.i
  %i.ta = phi <2 x float> [ %i.qv, %.preheader910.i ], [ %i.qv, %.preheader907.lr.ph.i ], [ %i.sw, %._crit_edge.split.us.us.us1060.i ] ; 11 uses
  switch i32 %i.iq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread853.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread856.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread850.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread859.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread862.i
    i32 6, label %bb.am
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread853.i: ; preds = %._crit_edge1048.i
  %i.tb = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ta, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread856.i: ; preds = %._crit_edge1048.i
  %i.tc = load ptr, ptr %i.ej, align 8, !tbaa !20
  %i.td = load float, ptr %i.tc, align 4, !tbaa !39
  %i.te = fcmp fast ogt <2 x float> %i.ta, zeroinitializer
  %i.tf = insertelement <2 x float> poison, float %i.td, i64 0
  %i.tg = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.th = select <2 x i1> %i.te, <2 x float> splat (float 1.000000e+00), <2 x float> %i.tg
  %i.ti = fmul fast <2 x float> %i.th, %i.ta
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread850.i: ; preds = %._crit_edge1048.i
  %i.tj = load ptr, ptr %i.ej, align 8, !tbaa !20 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 4
  %i.tl = load float, ptr %i.tj, align 4, !tbaa !39
  %i.tm = load float, ptr %i.tk, align 4, !tbaa !39 ; 3 uses
  %i.tn = insertelement <2 x float> poison, float %i.tl, i64 0
  %i.to = shufflevector <2 x float> %i.tn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tp = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ta, <2 x float> %i.to) ; 3 uses
  %i.tq = insertelement <2 x float> poison, float %i.tm, i64 0
  %i.tr = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ts = fcmp fast ogt <2 x float> %i.tp, %i.tr  ; 2 uses
  %i.tt = extractelement <2 x i1> %i.ts, i64 0
  %i.tu = extractelement <2 x float> %i.tp, i64 0
  %.1825852.i = select i1 %i.tt, float %i.tm, float %i.tu
  %i.tv = insertelement <2 x float> %i.tp, float %.1825852.i, i64 0 ; 2 uses
  %i.tw = extractelement <2 x i1> %i.ts, i64 1
  br i1 %i.tw, label %bb.ap, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread859.i: ; preds = %._crit_edge1048.i
  %i.tx = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ta, <2 x float> splat (float f0x42B0C0A5))
  %i.ty = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.tx, <2 x float> splat (float f0xC2B0C0A5))
  %i.tz = fneg fast <2 x float> %i.ty
  %i.ua = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.tz)
  %i.ub = fadd fast <2 x float> %i.ua, splat (float 1.000000e+00)
  %i.uc = fdiv fast <2 x float> splat (float 1.000000e+00), %i.ub
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread862.i: ; preds = %._crit_edge1048.i
  %i.ud = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.ta)
  %i.ue = fadd fast <2 x float> %i.ud, splat (float 1.000000e+00)
  %i.uf = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.ue)
  %i.ug = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.uf)
end_hunk_2
begin_hunk_3_@_ZNK4ncnn17Deconvolution_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:._crit_edge
  %.not431.us1095.us.us.us.i.us = icmp eq i32 %i.zb, 0
  %.not432.us1096.us.us.us.i.us = icmp slt i32 %i.zc, %i.gy
  %or.cond204 = select i1 %.not431.us1095.us.us.us.i.us, i1 %.not432.us1096.us.us.us.i.us, i1 false
  br i1 %or.cond204, label %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, label %bb.az

_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us:        ; preds = %bb.ay
  %i.zd = load ptr, ptr %1, align 8, !tbaa !20, !noalias !418
  %i.ze = load i64, ptr %i.hi, align 8, !tbaa !21, !noalias !418
  %i.zf = load i64, ptr %i.hj, align 8, !tbaa !55, !noalias !418 ; 2 uses
  %factor.op.mul1080.us.us.us.us.i.us = mul i64 %i.zf, %i.ze ; 4 uses
  %i.zg = mul i64 %i.yx, %i.zf
  %invariant.gep.us.us.us1133.us.i.us = getelementptr i8, ptr %i.zd, i64 %i.zg
  %i.zh = sext i32 %i.zc to i64
  %invariant.gep1082.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us1133.us.i.us, i64 %i.zh ; 4 uses
  %.reass1081.us.us.us.us.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %indvars.iv1361.i
  %gep1083.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.i.us
  %i.zi = load i16, ptr %gep1083.us.us.us.us.i.us, align 2, !tbaa !86
  %.reass1081.us.us.us.us.1.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.wz
  %gep1083.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.1.i.us
  %i.zj = load i16, ptr %gep1083.us.us.us.us.1.i.us, align 2, !tbaa !86
  %.reass1081.us.us.us.us.2.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.xa
  %gep1083.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.2.i.us
  %i.zk = load i16, ptr %gep1083.us.us.us.us.2.i.us, align 2, !tbaa !86
  %.reass1081.us.us.us.us.3.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.xb
  %gep1083.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.3.i.us
  %i.zl = load i16, ptr %gep1083.us.us.us.us.3.i.us, align 2, !tbaa !86
  %i.zm = insertelement <4 x i16> poison, i16 %i.zi, i64 0
  %i.zn = insertelement <4 x i16> %i.zm, i16 %i.zj, i64 1
  %i.zo = insertelement <4 x i16> %i.zn, i16 %i.zk, i64 2
  %i.zp = insertelement <4 x i16> %i.zo, i16 %i.zl, i64 3
  %i.zq = zext <4 x i16> %i.zp to <4 x i32>
  %i.zr = shl nuw <4 x i32> %i.zq, splat (i32 16)
  %.sroa.0.12.vec.insert.i.us = bitcast <4 x i32> %i.zr to <4 x float>
  %i.zs = add nuw nsw i64 %indvars.iv1346.i.us, %i.yv
  %i.zt = shl i64 %i.zs, 2
  %i.zu = and i64 %i.zt, 4294967292
  %i.zv = getelementptr inbounds nuw [2 x i8], ptr %.03231118.us.us.i, i64 %i.zu
  %i.zw = load i64, ptr %i.zv, align 1, !tbaa !80
  %i.zx = insertelement <2 x i64> poison, i64 %i.zw, i64 0
  %i.zy = bitcast <2 x i64> %i.zx to <8 x i16>
  %i.zz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aaa = bitcast <8 x i16> %i.zz to <4 x float>
  %i.aab = fmul fast <4 x float> %i.aaa, %.sroa.0.12.vec.insert.i.us
  %i.aac = fadd fast <4 x float> %i.aab, %.28321085.us1093.us.us.us.i.us
  br label %bb.az

bb.az:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, %bb.ay, %.lr.ph.split.us1091.us.us.us.i.us
  %.3833.us1097.us.us.us.i.us = phi nsz <4 x float> [ %.28321085.us1093.us.us.us.i.us, %.lr.ph.split.us1091.us.us.us.i.us ], [ %i.aac, %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us ], [ %.28321085.us1093.us.us.us.i.us, %bb.ay ] ; 2 uses
  %indvars.iv.next1347.i.us = add nuw nsw i64 %indvars.iv1346.i.us, 1 ; 2 uses
  %exitcond1350.not.i.us = icmp eq i64 %indvars.iv.next1347.i.us, %i.wx
  br i1 %exitcond1350.not.i.us, label %..loopexit894_crit_edge.us.us.us.i.us86, label %.lr.ph.split.us1091.us.us.us.i.us, !llvm.loop !393

..loopexit894_crit_edge.us.us.us.i.us86:          ; preds = %bb.az, %bb.ax, %.preheader897.us.us.i.split.us79
  %.4834.us.us.us.i.us87 = phi nsz <4 x float> [ %.18311101.us.us.us.i.us81, %.preheader897.us.us.i.split.us79 ], [ %.18311101.us.us.us.i.us81, %bb.ax ], [ %.3833.us1097.us.us.us.i.us, %bb.az ] ; 2 uses
  %indvars.iv.next1357.i.us88 = add nuw nsw i64 %indvars.iv1356.i.us80, 1 ; 2 uses
  %exitcond1360.not.i.us89 = icmp eq i64 %indvars.iv.next1357.i.us88, %wide.trip.count1359.i
  br i1 %exitcond1360.not.i.us89, label %._crit_edge1104.split.us.us.us.i, label %.preheader897.us.us.i.split.us79, !llvm.loop !394

._crit_edge1104.split.us.us.us.i:                 ; preds = %..loopexit894_crit_edge.us.us.us.i.us86, %..loopexit894_crit_edge.us.us.us.i.us, %.preheader897.us.us.i
  %.us-phi78 = phi <4 x float> [ %.4834.us.us.us.i.us, %..loopexit894_crit_edge.us.us.us.i.us ], [ %.08301117.us.us.i, %.preheader897.us.us.i ], [ %.4834.us.us.us.i.us87, %..loopexit894_crit_edge.us.us.us.i.us86 ] ; 2 uses
  %i.aad = getelementptr inbounds [2 x i8], ptr %.03231118.us.us.i, i64 %i.wi ; 2 uses
  %indvars.iv.next1362.i = add nuw nsw i64 %indvars.iv1361.i, 4 ; 2 uses
  %i.aae = icmp slt i64 %indvars.iv.next1362.i, %invariant.op1447.i
  br i1 %i.aae, label %.preheader897.us.us.i, label %._crit_edge1122.i, !llvm.loop !397

._crit_edge1122.i:                                ; preds = %._crit_edge1104.split.us.us.us.i, %.preheader897.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit449.i
  %.0830.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit449.i ], [ zeroinitializer, %.preheader897.lr.ph.i ], [ %.us-phi78, %._crit_edge1104.split.us.us.us.i ] ; 2 uses
  %.0323.lcssa.i = phi ptr [ %i.wd, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %scevgep1339.i, %.preheader897.lr.ph.i ], [ %i.aad, %._crit_edge1104.split.us.us.us.i ] ; 4 uses
  %.0322.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %i.hu, %.preheader897.lr.ph.i ], [ %i.ic, %._crit_edge1104.split.us.us.us.i ] ; 7 uses
  %i.aaf = shufflevector <4 x float> %.0830.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.aag = fadd fast <4 x float> %i.aaf, %.0830.lcssa.i ; 2 uses
  %i.aah = extractelement <4 x float> %i.aag, i64 1
  %i.aai = extractelement <4 x float> %i.aag, i64 0
  %i.aaj = fadd fast float %i.aah, %.0326.i
  %i.aak = fadd fast float %i.aaj, %i.aai         ; 4 uses
  %i.aal = or disjoint i32 %.0322.lcssa.i, 1
  %i.aam = icmp slt i32 %i.aal, %i.gx
  br i1 %i.aam, label %.preheader896.lr.ph.i, label %.preheader898.i

.preheader896.lr.ph.i:                            ; preds = %._crit_edge1122.i
  %i.aan = load i32, ptr %i.d, align 4
  %i.aao = load i32, ptr %i.j, align 4
  %invariant.op1157.i = sub i32 %.neg875.i, %i.aao
  %i.aap = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aaq = load i32, ptr %i.a, align 4
  %.fr1235.i = freeze i32 %i.aaq                  ; 2 uses
  %i.aar = load i32, ptr %i.c, align 4
  %i.aas = load i32, ptr %i.i, align 4
  %.neg873.i = add nuw nsw i32 %.03291213.i, 1
  %invariant.op1150.i = sub i32 %.neg873.i, %i.aas
  %i.aat = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.wf, label %.preheader896.lr.ph.split.us.i, label %.preheader896.preheader.i

.preheader896.preheader.i:                        ; preds = %.preheader896.lr.ph.i
  %i.aau = sub i32 %i.hw, %.0322.lcssa.i
  %i.aav = and i32 %i.aau, -2                     ; 2 uses
  %i.aaw = zext i32 %i.aav to i64
  %i.aax = add nuw nsw i64 %i.aaw, 2
  %i.aay = mul nsw i64 %i.aax, %i.wk
  %scevgep1364.i = getelementptr i8, ptr %.0323.lcssa.i, i64 %i.aay
  %i.aaz = add i32 %.0322.lcssa.i, 2
  %i.aba = add i32 %i.aaz, %i.aav
  br label %.preheader898.i

.preheader896.lr.ph.split.us.i:                   ; preds = %.preheader896.lr.ph.i
  %i.abb = icmp sgt i32 %.fr1235.i, 0
  br i1 %i.abb, label %.preheader896.us.us.preheader.i, label %.preheader896.us.preheader.i

.preheader896.us.preheader.i:                     ; preds = %.preheader896.lr.ph.split.us.i
  %i.abc = sub i32 %i.hw, %.0322.lcssa.i
  %i.abd = and i32 %i.abc, -2                     ; 2 uses
  %i.abe = zext i32 %i.abd to i64
  %i.abf = add nuw nsw i64 %i.abe, 2
  %i.abg = mul nsw i64 %i.abf, %i.wk
  %scevgep1365.i = getelementptr i8, ptr %.0323.lcssa.i, i64 %i.abg
  %i.abh = add i32 %.0322.lcssa.i, 2
  %i.abi = add i32 %i.abh, %i.abd
  br label %.preheader898.i

.preheader896.us.us.preheader.i:                  ; preds = %.preheader896.lr.ph.split.us.i
  %i.abj = zext nneg i32 %.fr1235.i to i64        ; 2 uses
  %i.abk = zext i32 %.0322.lcssa.i to i64
  br label %.preheader896.us.us.i

.preheader896.us.us.i:                            ; preds = %._crit_edge1155.split.us.us.us.i, %.preheader896.us.us.preheader.i
  %indvars.iv1379.i = phi i64 [ %i.abk, %.preheader896.us.us.preheader.i ], [ %indvars.iv.next1380.i, %._crit_edge1155.split.us.us.us.i ] ; 3 uses
  %.13241162.us.us.i = phi ptr [ %.0323.lcssa.i, %.preheader896.us.us.preheader.i ], [ %i.acw, %._crit_edge1155.split.us.us.us.i ] ; 2 uses
  %.13271161.us.us.i = phi float [ %i.aak, %.preheader896.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge1155.split.us.us.us.i ]
  %i.abl = add nuw nsw i64 %indvars.iv1379.i, 1
  br label %bb.ba

bb.ba:                                            ; preds = %..loopexit892_crit_edge.us.us.us.i, %.preheader896.us.us.i
  %indvars.iv1374.i = phi i64 [ %indvars.iv.next1375.i, %..loopexit892_crit_edge.us.us.us.i ], [ 0, %.preheader896.us.us.i ] ; 3 uses
  %.23281152.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit892_crit_edge.us.us.us.i ], [ %.13271161.us.us.i, %.preheader896.us.us.i ] ; 3 uses
  %i.abm = trunc i64 %indvars.iv1374.i to i32
  %i.abn = mul i32 %i.aan, %i.abm
  %.reass1158.us.us.us.i = add i32 %i.abn, %invariant.op1157.i ; 3 uses
  %i.abo = icmp slt i32 %.reass1158.us.us.us.i, 0
  br i1 %i.abo, label %..loopexit892_crit_edge.us.us.us.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.abp = srem i32 %.reass1158.us.us.us.i, %i.aap
  %i.abq = sdiv i32 %.reass1158.us.us.us.i, %i.aap ; 2 uses
  %.not425.us.us.us.i = icmp eq i32 %i.abp, 0
  %.not426.us.us.us.i = icmp slt i32 %i.abq, %i.gz
  %or.cond205 = select i1 %.not425.us.us.us.i, i1 %.not426.us.us.us.i, i1 false
  br i1 %or.cond205, label %.preheader891.us.us.us.i, label %..loopexit892_crit_edge.us.us.us.i

.preheader891.us.us.us.i:                         ; preds = %bb.bb
  %i.abr = mul nuw nsw i64 %indvars.iv1374.i, %i.abj
  %i.abs = sext i32 %i.abq to i64
  %i.abt = mul nsw i64 %i.abs, %i.ib
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.us.us.us.i, %.preheader891.us.us.us.i
  %indvars.iv1369.i = phi i64 [ %indvars.iv.next1370.i, %.loopexit.us.us.us.i ], [ 0, %.preheader891.us.us.us.i ] ; 3 uses
  %.31147.us.us.us.i = phi float [ %.6.us.us.us.i, %.loopexit.us.us.us.i ], [ %.23281152.us.us.us.i, %.preheader891.us.us.us.i ] ; 3 uses
  %i.abu = trunc i64 %indvars.iv1369.i to i32
  %i.abv = mul i32 %i.aar, %i.abu
  %.reass1151.us.us.us.i = add i32 %invariant.op1150.i, %i.abv ; 3 uses
  %i.abw = icmp slt i32 %.reass1151.us.us.us.i, 0
  br i1 %i.abw, label %.loopexit.us.us.us.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.abx = srem i32 %.reass1151.us.us.us.i, %i.aat
  %i.aby = sdiv i32 %.reass1151.us.us.us.i, %i.aat ; 2 uses
  %.not427.us.us.us.i = icmp eq i32 %i.abx, 0
  %.not428.us.us.us.i = icmp slt i32 %i.aby, %i.gy
  %or.cond206 = select i1 %.not427.us.us.us.i, i1 %.not428.us.us.us.i, i1 false
  br i1 %or.cond206, label %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit446.us.us.us.i:              ; preds = %bb.bd
  %i.abz = add nuw nsw i64 %indvars.iv1369.i, %i.abr
  %.idx1437.i = shl nuw nsw i64 %i.abz, 2
  %i.aca = getelementptr inbounds nuw i8, ptr %.13241162.us.us.i, i64 %.idx1437.i
  %i.acb = load ptr, ptr %1, align 8, !tbaa !20, !noalias !419
  %i.acc = load i64, ptr %i.hi, align 8, !tbaa !21, !noalias !419
  %i.acd = load i64, ptr %i.hj, align 8, !tbaa !55, !noalias !419 ; 2 uses
  %factor.op.mul1141.us.us.us.i = mul i64 %i.acd, %i.acc ; 2 uses
  %i.ace = mul i64 %i.abt, %i.acd
  %invariant.gep.us.us.us1179.i = getelementptr i8, ptr %i.acb, i64 %i.ace
  %i.acf = sext i32 %i.aby to i64
  %invariant.gep1143.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us1179.i, i64 %i.acf ; 2 uses
  %.reass1142.us.us.us.i = mul i64 %factor.op.mul1141.us.us.us.i, %indvars.iv1379.i
  %gep1144.us.us.us.i = getelementptr i8, ptr %invariant.gep1143.us.us.us.i, i64 %.reass1142.us.us.us.i
  %i.acg = load i16, ptr %gep1144.us.us.us.i, align 2, !tbaa !86
  %.reass1142.us.us.us.1.i = mul i64 %factor.op.mul1141.us.us.us.i, %i.abl
  %gep1144.us.us.us.1.i = getelementptr i8, ptr %invariant.gep1143.us.us.us.i, i64 %.reass1142.us.us.us.1.i
  %i.ach = load i16, ptr %gep1144.us.us.us.1.i, align 2, !tbaa !86
  %i.aci = insertelement <2 x i16> poison, i16 %i.acg, i64 0
  %i.acj = insertelement <2 x i16> %i.aci, i16 %i.ach, i64 1
  %i.ack = zext <2 x i16> %i.acj to <2 x i32>
  %i.acl = shl nuw <2 x i32> %i.ack, splat (i32 16)
  %i.acm = bitcast <2 x i32> %i.acl to <2 x float>
  %i.acn = load <2 x i16>, ptr %i.aca, align 2, !tbaa !86
  %i.aco = zext <2 x i16> %i.acn to <2 x i32>
  %i.acp = shl nuw <2 x i32> %i.aco, splat (i32 16)
  %i.acq = bitcast <2 x i32> %i.acp to <2 x float>
  %i.acr = fmul fast <2 x float> %i.acq, %i.acm   ; 2 uses
  %i.acs = extractelement <2 x float> %i.acr, i64 0
  %i.act = fadd fast float %.31147.us.us.us.i, %i.acs
  %i.acu = extractelement <2 x float> %i.acr, i64 1
  %i.acv = fadd fast float %i.acu, %i.act
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, %bb.bd, %bb.bc
  %.6.us.us.us.i = phi nsz float [ %.31147.us.us.us.i, %bb.bc ], [ %.31147.us.us.us.i, %bb.bd ], [ %i.acv, %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i ] ; 2 uses
  %indvars.iv.next1370.i = add nuw nsw i64 %indvars.iv1369.i, 1 ; 2 uses
  %exitcond1373.not.i = icmp eq i64 %indvars.iv.next1370.i, %i.abj
  br i1 %exitcond1373.not.i, label %..loopexit892_crit_edge.us.us.us.i, label %bb.bc, !llvm.loop !400

..loopexit892_crit_edge.us.us.us.i:               ; preds = %.loopexit.us.us.us.i, %bb.bb, %bb.ba
  %.8.us.us.us.i = phi nsz float [ %.23281152.us.us.us.i, %bb.ba ], [ %.23281152.us.us.us.i, %bb.bb ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next1375.i = add nuw nsw i64 %indvars.iv1374.i, 1 ; 2 uses
  %exitcond1378.not.i = icmp eq i64 %indvars.iv.next1375.i, %wide.trip.count1359.i
  br i1 %exitcond1378.not.i, label %._crit_edge1155.split.us.us.us.i, label %bb.ba, !llvm.loop !401

._crit_edge1155.split.us.us.us.i:                 ; preds = %..loopexit892_crit_edge.us.us.us.i
  %i.acw = getelementptr inbounds [2 x i8], ptr %.13241162.us.us.i, i64 %i.wk ; 2 uses
  %indvars.iv.next1380.i = add nuw nsw i64 %indvars.iv1379.i, 2 ; 2 uses
  %i.acx = trunc i64 %indvars.iv.next1380.i to i32 ; 2 uses
  %i.acy = or i32 %i.acx, 1
  %i.acz = icmp slt i32 %i.acy, %i.gx
  br i1 %i.acz, label %.preheader896.us.us.i, label %.preheader898.i, !llvm.loop !402

.preheader898.i:                                  ; preds = %._crit_edge1155.split.us.us.us.i, %.preheader896.us.preheader.i, %.preheader896.preheader.i, %._crit_edge1122.i
  %.1327.lcssa.i = phi float [ %i.aak, %._crit_edge1122.i ], [ %i.aak, %.preheader896.preheader.i ], [ %i.aak, %.preheader896.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge1155.split.us.us.us.i ] ; 3 uses
  %.1324.lcssa.i = phi ptr [ %.0323.lcssa.i, %._crit_edge1122.i ], [ %scevgep1364.i, %.preheader896.preheader.i ], [ %scevgep1365.i, %.preheader896.us.preheader.i ], [ %i.acw, %._crit_edge1155.split.us.us.us.i ]
  %.1.lcssa.i = phi i32 [ %.0322.lcssa.i, %._crit_edge1122.i ], [ %i.aba, %.preheader896.preheader.i ], [ %i.abi, %.preheader896.us.preheader.i ], [ %i.acx, %._crit_edge1155.split.us.us.us.i ] ; 2 uses
  %i.ada = icmp slt i32 %.1.lcssa.i, %i.gx
  br i1 %i.ada, label %.preheader895.lr.ph.i, label %._crit_edge1201.i

.preheader895.lr.ph.i:                            ; preds = %.preheader898.i
  %i.adb = load i32, ptr %i.d, align 4
  %i.adc = load i32, ptr %i.j, align 4
  %invariant.op1193.i = sub i32 %.neg875.i, %i.adc
  %i.add = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ade = load i32, ptr %i.a, align 4
  %.fr1236.i = freeze i32 %i.ade                  ; 2 uses
  %i.adf = load i32, ptr %i.c, align 4
  %i.adg = load i32, ptr %i.i, align 4
  %.neg869.i = add nuw nsw i32 %.03291213.i, 1
  %invariant.op1186.i = sub i32 %.neg869.i, %i.adg
  %i.adh = load i32, ptr %i.e, align 4            ; 2 uses
  %i.adi = icmp sgt i32 %.fr1236.i, 0
  %or.cond1450.i = and i1 %i.wf, %i.adi
  br i1 %or.cond1450.i, label %.preheader895.us.us.preheader.i, label %._crit_edge1201.i

.preheader895.us.us.preheader.i:                  ; preds = %.preheader895.lr.ph.i
  %i.adj = zext nneg i32 %.fr1236.i to i64        ; 2 uses
  %i.adk = zext i32 %.1.lcssa.i to i64
  br label %.preheader895.us.us.i

.preheader895.us.us.i:                            ; preds = %._crit_edge1191.split.us.us.us.i, %.preheader895.us.us.preheader.i
  %indvars.iv1392.i = phi i64 [ %i.adk, %.preheader895.us.us.preheader.i ], [ %indvars.iv.next1393.i, %._crit_edge1191.split.us.us.us.i ] ; 2 uses
  %.23251198.us.us.i = phi ptr [ %.1324.lcssa.i, %.preheader895.us.us.preheader.i ], [ %i.aeu, %._crit_edge1191.split.us.us.us.i ] ; 2 uses
  %.91197.us.us.i = phi float [ %.1327.lcssa.i, %.preheader895.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge1191.split.us.us.us.i ]
  br label %bb.be

bb.be:                                            ; preds = %..loopexit890_crit_edge.us.us.us.i, %.preheader895.us.us.i
  %indvars.iv1387.i = phi i64 [ %indvars.iv.next1388.i, %..loopexit890_crit_edge.us.us.us.i ], [ 0, %.preheader895.us.us.i ] ; 3 uses
  %.101188.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit890_crit_edge.us.us.us.i ], [ %.91197.us.us.i, %.preheader895.us.us.i ] ; 3 uses
  %i.adl = trunc i64 %indvars.iv1387.i to i32
  %i.adm = mul i32 %i.adb, %i.adl
  %.reass1194.us.us.us.i = add i32 %i.adm, %invariant.op1193.i ; 3 uses
  %i.adn = icmp slt i32 %.reass1194.us.us.us.i, 0
  br i1 %i.adn, label %..loopexit890_crit_edge.us.us.us.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ado = srem i32 %.reass1194.us.us.us.i, %i.add
  %i.adp = sdiv i32 %.reass1194.us.us.us.i, %i.add ; 2 uses
  %.not421.us.us.us.i = icmp eq i32 %i.ado, 0
  %.not422.us.us.us.i = icmp slt i32 %i.adp, %i.gz
  %or.cond207 = select i1 %.not421.us.us.us.i, i1 %.not422.us.us.us.i, i1 false
  br i1 %or.cond207, label %.preheader.us.us.us.i, label %..loopexit890_crit_edge.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %bb.bf
  %i.adq = mul nuw nsw i64 %indvars.iv1387.i, %i.adj
  %i.adr = sext i32 %i.adp to i64
  %i.ads = getelementptr inbounds nuw [2 x i8], ptr %.23251198.us.us.i, i64 %i.adq
  %i.adt = mul nsw i64 %i.adr, %i.ib
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %.preheader.us.us.us.i
  %indvars.iv1382.i = phi i64 [ %indvars.iv.next1383.i, %bb.bi ], [ 0, %.preheader.us.us.us.i ] ; 3 uses
  %.111183.us.us.us.i = phi float [ %.13.us.us.us.i, %bb.bi ], [ %.101188.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.adu = trunc i64 %indvars.iv1382.i to i32
  %i.adv = mul i32 %i.adf, %i.adu
  %.reass1187.us.us.us.i = add i32 %invariant.op1186.i, %i.adv ; 3 uses
  %i.adw = icmp slt i32 %.reass1187.us.us.us.i, 0
  br i1 %i.adw, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.adx = srem i32 %.reass1187.us.us.us.i, %i.adh
  %i.ady = sdiv i32 %.reass1187.us.us.us.i, %i.adh ; 2 uses
  %.not423.us.us.us.i = icmp eq i32 %i.adx, 0
  %.not424.us.us.us.i = icmp slt i32 %i.ady, %i.gy
  %or.cond208 = select i1 %.not423.us.us.us.i, i1 %.not424.us.us.us.i, i1 false
  br i1 %or.cond208, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.bi

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.bh
  %i.adz = load ptr, ptr %1, align 8, !tbaa !20, !noalias !420
  %i.aea = load i64, ptr %i.hi, align 8, !tbaa !21, !noalias !420
  %i.aeb = mul i64 %i.aea, %indvars.iv1392.i
  %i.aec = load i64, ptr %i.hj, align 8, !tbaa !55, !noalias !420 ; 2 uses
  %i.aed = mul i64 %i.aeb, %i.aec
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adz, i64 %i.aed
  %i.aef = mul i64 %i.adt, %i.aec
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.aef
  %i.aeh = sext i32 %i.ady to i64
  %i.aei = getelementptr inbounds [2 x i8], ptr %i.aeg, i64 %i.aeh
  %i.aej = load i16, ptr %i.aei, align 2, !tbaa !86
  %i.aek = zext i16 %i.aej to i32
  %i.ael = shl nuw i32 %i.aek, 16
  %i.aem = bitcast i32 %i.ael to float
  %i.aen = getelementptr inbounds nuw [2 x i8], ptr %i.ads, i64 %indvars.iv1382.i
  %i.aeo = load i16, ptr %i.aen, align 2, !tbaa !86
  %i.aep = zext i16 %i.aeo to i32
  %i.aeq = shl nuw i32 %i.aep, 16
  %i.aer = bitcast i32 %i.aeq to float
  %i.aes = fmul fast float %i.aer, %i.aem
  %i.aet = fadd fast float %i.aes, %.111183.us.us.us.i
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.bh, %bb.bg
  %.13.us.us.us.i = phi nsz float [ %.111183.us.us.us.i, %bb.bg ], [ %.111183.us.us.us.i, %bb.bh ], [ %i.aet, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next1383.i = add nuw nsw i64 %indvars.iv1382.i, 1 ; 2 uses
  %exitcond1386.not.i = icmp eq i64 %indvars.iv.next1383.i, %i.adj
  br i1 %exitcond1386.not.i, label %..loopexit890_crit_edge.us.us.us.i, label %bb.bg, !llvm.loop !405

..loopexit890_crit_edge.us.us.us.i:               ; preds = %bb.bi, %bb.bf, %bb.be
  %.15.us.us.us.i = phi nsz float [ %.101188.us.us.us.i, %bb.be ], [ %.101188.us.us.us.i, %bb.bf ], [ %.13.us.us.us.i, %bb.bi ] ; 3 uses
  %indvars.iv.next1388.i = add nuw nsw i64 %indvars.iv1387.i, 1 ; 2 uses
  %exitcond1391.not.i = icmp eq i64 %indvars.iv.next1388.i, %wide.trip.count1359.i
  br i1 %exitcond1391.not.i, label %._crit_edge1191.split.us.us.us.i, label %bb.be, !llvm.loop !406

._crit_edge1191.split.us.us.us.i:                 ; preds = %..loopexit890_crit_edge.us.us.us.i
  %i.aeu = getelementptr inbounds [2 x i8], ptr %.23251198.us.us.i, i64 %i.wl
  %indvars.iv.next1393.i = add nuw nsw i64 %indvars.iv1392.i, 1 ; 2 uses
  %i.aev = trunc nuw i64 %indvars.iv.next1393.i to i32
  %i.aew = icmp sgt i32 %i.gx, %i.aev
  br i1 %i.aew, label %.preheader895.us.us.i, label %._crit_edge1201.i, !llvm.loop !407

._crit_edge1201.i:                                ; preds = %._crit_edge1191.split.us.us.us.i, %.preheader895.lr.ph.i, %.preheader898.i
  %.9.lcssa.i = phi float [ %.1327.lcssa.i, %.preheader898.i ], [ %.1327.lcssa.i, %.preheader895.lr.ph.i ], [ %.15.us.us.us.i, %._crit_edge1191.split.us.us.us.i ] ; 13 uses
  switch i32 %i.wc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.bj
    i32 2, label %bb.bk
    i32 3, label %bb.bl
    i32 4, label %bb.bn
    i32 5, label %bb.bo
    i32 6, label %bb.bp
  ]

bb.bj:                                            ; preds = %._crit_edge1201.i
  %i.aex = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bk:                                            ; preds = %._crit_edge1201.i
  %i.aey = load ptr, ptr %i.ej, align 8, !tbaa !20
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !39
  %i.afa = fcmp fast ogt float %.9.lcssa.i, 0.000000e+00
  %i.afb = select fast i1 %i.afa, float 1.000000e+00, float %i.aez
  %i.afc = fmul fast float %i.afb, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bl:                                            ; preds = %._crit_edge1201.i
  %i.afd = load ptr, ptr %i.ej, align 8, !tbaa !20 ; 2 uses
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !39
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afd, i64 4
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !39 ; 2 uses
  %.0828.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9.lcssa.i, float %i.afe) ; 2 uses
  %i.afh = fcmp fast ogt float %.0828.i, %i.afg
  br i1 %i.afh, label %bb.bm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bm:                                            ; preds = %bb.bl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bn:                                            ; preds = %._crit_edge1201.i
  %.sroa.speculated785.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated785.i, float f0xC2B0C0A5)
  %i.afi = fneg fast float %.sroa.speculated.i
  %i.afj = call fast float @llvm.exp.f32(float %i.afi)
  %i.afk = fadd fast float %i.afj, 1.000000e+00
  %i.afl = fdiv fast float 1.000000e+00, %i.afk
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bo:                                            ; preds = %._crit_edge1201.i
  %i.afm = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9.lcssa.i)
  %i.afn = fadd fast float %i.afm, 1.000000e+00
  %i.afo = call fast float @llvm.log.f32(float %i.afn)
  %i.afp = call fast float @llvm.tanh.f32(float %i.afo)
  %i.afq = fmul fast float %i.afp, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bp:                                            ; preds = %._crit_edge1201.i
  %i.afr = load ptr, ptr %i.ej, align 8, !tbaa !20 ; 2 uses
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !39 ; 3 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 4
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !39 ; 2 uses
  %i.afv = fneg fast float %i.afu
  %i.afw = fdiv fast float %i.afv, %i.afs         ; 2 uses
  %i.afx = fcmp fast olt float %.9.lcssa.i, %i.afw
end_hunk_3
begin_hunk_4_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.kk = trunc nuw i64 %i.kj to i32
  %i.kl = icmp sgt i32 %i.ac, %i.kk
  br i1 %i.kl, label %.preheader668.us, label %.preheader670.loopexit, !llvm.loop !461

.preheader670.loopexit:                           ; preds = %._crit_edge.us764
  %i.km = trunc nuw i64 %indvars.iv.next826 to i32
  br label %.preheader670

.preheader670:                                    ; preds = %.preheader668.preheader, %.preheader670.loopexit, %.preheader671
  %.7643.lcssa = phi <4 x float> [ %.1637.lcssa, %.preheader671 ], [ %.11.us, %.preheader670.loopexit ], [ %.1637.lcssa, %.preheader668.preheader ] ; 3 uses
  %.6.lcssa = phi <4 x float> [ %.0630.lcssa, %.preheader671 ], [ %.10.us, %.preheader670.loopexit ], [ %.0630.lcssa, %.preheader668.preheader ]
  %.1195.lcssa = phi ptr [ %.0194.lcssa, %.preheader671 ], [ %i.ki, %.preheader670.loopexit ], [ %scevgep818, %.preheader668.preheader ]
  %.1.lcssa = phi i32 [ %.0193.lcssa, %.preheader671 ], [ %i.km, %.preheader670.loopexit ], [ %i.ia, %.preheader668.preheader ] ; 2 uses
  %i.kn = icmp slt i32 %.1.lcssa, %i.ac
  br i1 %i.kn, label %.preheader667.lr.ph, label %._crit_edge779

.preheader667.lr.ph:                              ; preds = %.preheader670
  %i.ko = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.kp = icmp sgt i32 %i.ko, 0
  %.neg654 = add nuw nsw i32 %.0197788, 1
  %i.kq = load i32, ptr %16, align 4, !tbaa !60
  %i.kr = shl nsw i32 %i.kq, 2
  %i.ks = sext i32 %i.kr to i64
  br i1 %i.kp, label %.preheader667.lr.ph.split.us, label %._crit_edge779

.preheader667.lr.ph.split.us:                     ; preds = %.preheader667.lr.ph
  %i.kt = load i32, ptr %9, align 4, !tbaa !60
  %i.ku = load i32, ptr %10, align 4, !tbaa !60
  %invariant.op774.us = sub i32 %.neg660, %i.ku
  %i.kv = zext i32 %.1.lcssa to i64
  br label %.preheader667.us

.preheader667.us:                                 ; preds = %._crit_edge.us785, %.preheader667.lr.ph.split.us
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %._crit_edge.us785 ], [ %i.kv, %.preheader667.lr.ph.split.us ] ; 2 uses
  %.2196777.us = phi ptr [ %i.mm, %._crit_edge.us785 ], [ %.1195.lcssa, %.preheader667.lr.ph.split.us ] ; 2 uses
  %.12776.us = phi <4 x float> [ %.16.us, %._crit_edge.us785 ], [ %.7643.lcssa, %.preheader667.lr.ph.split.us ]
  br label %bb.q

bb.q:                                             ; preds = %.preheader667.us, %.loopexit.us
  %.0188771.us = phi i32 [ 0, %.preheader667.us ], [ %i.mh, %.loopexit.us ] ; 3 uses
  %.13770.us = phi <4 x float> [ %.12776.us, %.preheader667.us ], [ %.16.us, %.loopexit.us ] ; 4 uses
  %i.kw = mul nsw i32 %i.kt, %.0188771.us
  %.reass775.us = add i32 %i.kw, %invariant.op774.us ; 3 uses
  %i.kx = icmp slt i32 %.reass775.us, 0
  br i1 %i.kx, label %.loopexit.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ky = load i32, ptr %11, align 4, !tbaa !60   ; 2 uses
  %i.kz = srem i32 %.reass775.us, %i.ky
  %i.la = sdiv i32 %.reass775.us, %i.ky           ; 2 uses
  %.not223.us = icmp eq i32 %i.kz, 0
  %.not224.us = icmp slt i32 %i.la, %i.ae
  %or.cond877 = select i1 %.not223.us, i1 %.not224.us, i1 false
  br i1 %or.cond877, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %bb.r
  %i.lb = load i32, ptr %12, align 4, !tbaa !60   ; 3 uses
  %i.lc = icmp sgt i32 %i.lb, 0
  br i1 %i.lc, label %.lr.ph.us782, label %.loopexit.us

bb.s:                                             ; preds = %.lr.ph.us782, %bb.v
  %indvars.iv828 = phi i64 [ 0, %.lr.ph.us782 ], [ %indvars.iv.next829, %bb.v ] ; 3 uses
  %.14768.us = phi <4 x float> [ %.13770.us, %.lr.ph.us782 ], [ %.15.us, %bb.v ] ; 3 uses
  %i.ld = trunc i64 %indvars.iv828 to i32
  %i.le = mul i32 %i.mi, %i.ld
  %.reass.us781 = add i32 %i.le, %invariant.op.us783 ; 3 uses
  %i.lf = icmp slt i32 %.reass.us781, 0
  br i1 %i.lf, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.lg = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.lh = srem i32 %.reass.us781, %i.lg
  %i.li = sdiv i32 %.reass.us781, %i.lg           ; 2 uses
  %.not225.us = icmp eq i32 %i.lh, 0
  %.not226.us = icmp slt i32 %i.li, %i.ad
  %or.cond878 = select i1 %.not225.us, i1 %.not226.us, i1 false
  br i1 %or.cond878, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.lj = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !473
  %i.lk = load ptr, ptr %4, align 8, !tbaa !20, !noalias !473
  %i.ll = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !473
  %i.lm = mul i64 %i.ll, %indvars.iv834
  %i.ln = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !473 ; 2 uses
  %i.lo = mul i64 %i.lm, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lo
  %i.lq = sext i32 %i.lj to i64
  %i.lr = trunc i64 %indvars.iv828 to i32
  %i.ls = add i32 %i.mk, %i.lr
  %i.lt = shl nsw i32 %i.ls, 2
  %i.lu = zext nneg i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.2196777.us, i64 %i.lu
  %i.lw = mul nsw i64 %i.lq, %i.ml
  %i.lx = mul i64 %i.lw, %i.ln
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lx
  %i.lz = sext i32 %i.li to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %i.lz
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !39
  %i.mc = insertelement <4 x float> poison, float %i.mb, i64 0
  %i.md = shufflevector <4 x float> %i.mc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.me = load <4 x float>, ptr %i.lv, align 16, !tbaa !80
  %i.mf = fmul fast <4 x float> %i.md, %i.me
  %i.mg = fadd fast <4 x float> %i.mf, %.14768.us
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.15.us = phi nsz <4 x float> [ %.14768.us, %bb.s ], [ %i.mg, %bb.u ], [ %.14768.us, %bb.t ] ; 2 uses
  %indvars.iv.next829 = add nuw nsw i64 %indvars.iv828, 1 ; 2 uses
  %exitcond832.not = icmp eq i64 %indvars.iv.next829, %wide.trip.count831
  br i1 %exitcond832.not, label %.loopexit.us, label %bb.s, !llvm.loop !464

.loopexit.us:                                     ; preds = %bb.v, %.preheader.us, %bb.r, %bb.q
  %.16.us = phi nsz <4 x float> [ %.13770.us, %bb.q ], [ %.13770.us, %bb.r ], [ %.13770.us, %.preheader.us ], [ %.15.us, %bb.v ] ; 3 uses
  %i.mh = add nuw nsw i32 %.0188771.us, 1         ; 2 uses
  %exitcond833.not = icmp eq i32 %i.mh, %i.ko
  br i1 %exitcond833.not, label %._crit_edge.us785, label %bb.q, !llvm.loop !465

.lr.ph.us782:                                     ; preds = %.preheader.us
  %i.mi = load i32, ptr %13, align 4, !tbaa !60
  %i.mj = load i32, ptr %14, align 4, !tbaa !60
  %invariant.op.us783 = sub i32 %.neg654, %i.mj
  %i.mk = mul nuw nsw i32 %i.lb, %.0188771.us
  %i.ml = sext i32 %i.la to i64
  %wide.trip.count831 = zext nneg i32 %i.lb to i64
  br label %bb.s

._crit_edge.us785:                                ; preds = %.loopexit.us
  %i.mm = getelementptr inbounds [4 x i8], ptr %.2196777.us, i64 %i.ks
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 1 ; 2 uses
  %i.mn = trunc nuw i64 %indvars.iv.next835 to i32
  %i.mo = icmp sgt i32 %i.ac, %i.mn
  br i1 %i.mo, label %.preheader667.us, label %._crit_edge779, !llvm.loop !466

._crit_edge779:                                   ; preds = %._crit_edge.us785, %.preheader667.lr.ph, %.preheader670
  %.12.lcssa = phi <4 x float> [ %.7643.lcssa, %.preheader670 ], [ %.7643.lcssa, %.preheader667.lr.ph ], [ %.16.us, %._crit_edge.us785 ]
  %i.mp = fadd fast <4 x float> %.0620.lcssa, %.6.lcssa
  %i.mq = fadd fast <4 x float> %i.mp, %.12.lcssa ; 10 uses
  %i.mr = load i32, ptr %17, align 4, !tbaa !60
  switch i32 %i.mr, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.w
    i32 2, label %.noexc308
    i32 3, label %bb.x
    i32 4, label %.noexc309
    i32 5, label %.noexc310
    i32 6, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge779
  %i.ms = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mq, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc308:                                        ; preds = %._crit_edge779
  %i.mt = load ptr, ptr %18, align 8, !tbaa !20
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !39
  %i.mv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.mq)
  %i.mw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.mq)
  %i.mx = insertelement <4 x float> poison, float %i.mu, i64 0
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mz = fmul fast <4 x float> %i.my, %i.mw
  %i.na = fadd fast <4 x float> %i.mz, %i.mv
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.x:                                             ; preds = %._crit_edge779
  %i.nb = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !39
  %i.nd = insertelement <4 x float> poison, float %i.nc, i64 0
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !39
  %i.nh = insertelement <4 x float> poison, float %i.ng, i64 0
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mq, <4 x float> nofpclass(nan inf) %i.ne)
  %i.nk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nj, <4 x float> nofpclass(nan inf) %i.ni)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc309:                                        ; preds = %._crit_edge779
  %i.nl = fneg fast <4 x float> %i.mq
  %i.nm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nl, <4 x float> splat (float f0x42B0C0A5))
  %i.nn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.no = fmul fast <4 x float> %i.nn, splat (float f0x3FB8AA3B)
  %i.np = fadd fast <4 x float> %i.no, splat (float 5.000000e-01) ; 2 uses
  %i.nq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.np)
  %i.nr = sitofp fast <4 x i32> %i.nq to <4 x float> ; 2 uses
  %i.ns = fcmp fast olt <4 x float> %i.np, %i.nr
  %i.nt = select <4 x i1> %i.ns, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nu = fsub fast <4 x float> %i.nr, %i.nt      ; 2 uses
  %i.nv = fmul fast <4 x float> %i.nu, splat (float f0x3F317218)
  %i.nw = fsub fast <4 x float> %i.nn, %i.nv      ; 8 uses
  %i.nx = fmul fast <4 x float> %i.nw, %i.nw
  %i.ny = fmul fast <4 x float> %i.nw, splat (float f0x39506967)
  %i.nz = fadd fast <4 x float> %i.ny, splat (float f0x3AB743CE)
  %i.oa = fmul fast <4 x float> %i.nz, %i.nw
  %i.ob = fadd fast <4 x float> %i.oa, splat (float f0x3C088908)
  %i.oc = fmul fast <4 x float> %i.ob, %i.nw
  %i.od = fadd fast <4 x float> %i.oc, splat (float f0x3D2AA9C1)
  %i.oe = fmul fast <4 x float> %i.od, %i.nw
  %i.of = fadd fast <4 x float> %i.oe, splat (float f0x3E2AAAAA)
  %i.og = fmul fast <4 x float> %i.of, %i.nw
  %i.oh = fadd fast <4 x float> %i.og, splat (float 5.000000e-01)
  %i.oi = fmul fast <4 x float> %i.nx, %i.oh
  %i.oj = fadd fast <4 x float> %i.nw, %i.oi
  %i.ok = fadd fast <4 x float> %i.oj, splat (float 1.000000e+00)
  %i.ol = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nu)
  %i.om = shl <4 x i32> %i.ol, splat (i32 23)
  %i.on = add <4 x i32> %i.om, splat (i32 1065353216)
  %i.oo = bitcast <4 x i32> %i.on to <4 x float>
  %i.op = fmul fast <4 x float> %i.ok, %i.oo
  %i.oq = fadd fast <4 x float> %i.op, splat (float 1.000000e+00)
  %i.or = fdiv fast <4 x float> splat (float 1.000000e+00), %i.oq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc310:                                        ; preds = %._crit_edge779
  %i.os = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mq, <4 x float> splat (float f0x42B0C0A5))
  %i.ot = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.os, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ou = fmul fast <4 x float> %i.ot, splat (float f0x3FB8AA3B)
  %i.ov = fadd fast <4 x float> %i.ou, splat (float 5.000000e-01) ; 2 uses
  %i.ow = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ov)
  %i.ox = sitofp fast <4 x i32> %i.ow to <4 x float> ; 2 uses
  %i.oy = fcmp fast olt <4 x float> %i.ov, %i.ox
  %i.oz = select <4 x i1> %i.oy, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.pa = fsub fast <4 x float> %i.ox, %i.oz      ; 2 uses
  %i.pb = fmul fast <4 x float> %i.pa, splat (float f0x3F317218)
  %i.pc = fsub fast <4 x float> %i.ot, %i.pb      ; 8 uses
  %i.pd = fmul fast <4 x float> %i.pc, %i.pc
  %i.pe = fmul fast <4 x float> %i.pc, splat (float f0x39506967)
  %i.pf = fadd fast <4 x float> %i.pe, splat (float f0x3AB743CE)
  %i.pg = fmul fast <4 x float> %i.pf, %i.pc
  %i.ph = fadd fast <4 x float> %i.pg, splat (float f0x3C088908)
  %i.pi = fmul fast <4 x float> %i.ph, %i.pc
  %i.pj = fadd fast <4 x float> %i.pi, splat (float f0x3D2AA9C1)
  %i.pk = fmul fast <4 x float> %i.pj, %i.pc
  %i.pl = fadd fast <4 x float> %i.pk, splat (float f0x3E2AAAAA)
  %i.pm = fmul fast <4 x float> %i.pl, %i.pc
  %i.pn = fadd fast <4 x float> %i.pm, splat (float 5.000000e-01)
  %i.po = fmul fast <4 x float> %i.pd, %i.pn
  %i.pp = fadd fast <4 x float> %i.pc, %i.po
  %i.pq = fadd fast <4 x float> %i.pp, splat (float 1.000000e+00)
  %i.pr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pa)
  %i.ps = shl <4 x i32> %i.pr, splat (i32 23)
  %i.pt = add <4 x i32> %i.ps, splat (i32 1065353216)
  %i.pu = bitcast <4 x i32> %i.pt to <4 x float>
  %i.pv = fmul fast <4 x float> %i.pq, %i.pu
  %i.pw = fadd fast <4 x float> %i.pv, splat (float 1.000000e+00) ; 2 uses
  %i.px = fcmp fast ole <4 x float> %i.pw, zeroinitializer
  %i.py = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pw, <4 x float> splat (float f0x00800000))
  %i.pz = bitcast <4 x float> %i.py to <4 x i32>  ; 2 uses
  %i.qa = lshr <4 x i32> %i.pz, splat (i32 23)
  %i.qb = and <4 x i32> %i.pz, splat (i32 -2139095041)
  %i.qc = or disjoint <4 x i32> %i.qb, splat (i32 1056964608)
  %i.qd = bitcast <4 x i32> %i.qc to <4 x float>  ; 3 uses
  %i.qe = add nsw <4 x i32> %i.qa, splat (i32 -127)
  %i.qf = sitofp fast <4 x i32> %i.qe to <4 x float> ; 2 uses
  %i.qg = fadd fast <4 x float> %i.qf, splat (float 1.000000e+00)
  %i.qh = fcmp fast olt <4 x float> %i.qd, splat (float f0x3F3504F3) ; 2 uses
  %i.qi = select <4 x i1> %i.qh, <4 x float> %i.qd, <4 x float> zeroinitializer
  %i.qj = fadd fast <4 x float> %i.qd, splat (float -1.000000e+00)
  %i.qk = select fast <4 x i1> %i.qh, <4 x float> %i.qf, <4 x float> %i.qg
  %i.ql = fadd fast <4 x float> %i.qj, %i.qi      ; 12 uses
  %i.qm = fmul fast <4 x float> %i.ql, %i.ql
  %i.qn = fmul fast <4 x float> %i.ql, splat (float f0x3D9021BB)
  %i.qo = fadd fast <4 x float> %i.qn, splat (float f0xBDEBD1B8)
  %i.qp = fmul fast <4 x float> %i.qo, %i.ql
  %i.qq = fadd fast <4 x float> %i.qp, splat (float f0x3DEF251A)
  %i.qr = fmul fast <4 x float> %i.qq, %i.ql
  %i.qs = fadd fast <4 x float> %i.qr, splat (float f0xBDFE5D4F)
  %i.qt = fmul fast <4 x float> %i.qs, %i.ql
  %i.qu = fadd fast <4 x float> %i.qt, splat (float f0x3E11E9BF)
  %i.qv = fmul fast <4 x float> %i.qu, %i.ql
  %i.qw = fadd fast <4 x float> %i.qv, splat (float f0xBE2AAE50)
  %i.qx = fmul fast <4 x float> %i.qw, %i.ql
  %i.qy = fadd fast <4 x float> %i.qx, splat (float f0x3E4CCEAC)
  %i.qz = fmul fast <4 x float> %i.qy, %i.ql
  %i.ra = fadd fast <4 x float> %i.qz, splat (float f0xBE7FFFFC)
  %i.rb = fmul fast <4 x float> %i.ra, %i.ql
  %i.rc = fadd fast <4 x float> %i.rb, splat (float f0x3EAAAAAA)
  %i.rd = fmul fast <4 x float> %i.rc, %i.ql
  %reass.mul = fmul fast <4 x float> %i.qk, splat (float f0x3F317218)
  %reass.add649 = fadd fast <4 x float> %i.rd, splat (float -5.000000e-01)
  %reass.mul650 = fmul fast <4 x float> %i.qm, %reass.add649
  %i.re = fadd fast <4 x float> %reass.mul, %i.ql
  %i.rf = fadd fast <4 x float> %i.re, %reass.mul650
  %.neg = fmul fast <4 x float> %i.rf, splat (float -2.000000e+00)
  %i.rg = select fast <4 x i1> %i.px, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.rh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rg, <4 x float> splat (float f0x42B0C0A5))
  %i.ri = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rj = fmul fast <4 x float> %i.ri, splat (float f0x3FB8AA3B)
  %i.rk = fadd fast <4 x float> %i.rj, splat (float 5.000000e-01) ; 2 uses
  %i.rl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rk)
  %i.rm = sitofp fast <4 x i32> %i.rl to <4 x float> ; 2 uses
  %i.rn = fcmp fast olt <4 x float> %i.rk, %i.rm
  %i.ro = select <4 x i1> %i.rn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.rp = fsub fast <4 x float> %i.rm, %i.ro      ; 2 uses
  %i.rq = fmul fast <4 x float> %i.rp, splat (float f0x3F317218)
  %i.rr = fsub fast <4 x float> %i.ri, %i.rq      ; 8 uses
  %i.rs = fmul fast <4 x float> %i.rr, %i.rr
  %i.rt = fmul fast <4 x float> %i.rr, splat (float f0x39506967)
  %i.ru = fadd fast <4 x float> %i.rt, splat (float f0x3AB743CE)
  %i.rv = fmul fast <4 x float> %i.ru, %i.rr
  %i.rw = fadd fast <4 x float> %i.rv, splat (float f0x3C088908)
  %i.rx = fmul fast <4 x float> %i.rw, %i.rr
  %i.ry = fadd fast <4 x float> %i.rx, splat (float f0x3D2AA9C1)
  %i.rz = fmul fast <4 x float> %i.ry, %i.rr
  %i.sa = fadd fast <4 x float> %i.rz, splat (float f0x3E2AAAAA)
  %i.sb = fmul fast <4 x float> %i.sa, %i.rr
  %i.sc = fadd fast <4 x float> %i.sb, splat (float 5.000000e-01)
  %i.sd = fmul fast <4 x float> %i.rs, %i.sc
  %i.se = fadd fast <4 x float> %i.rr, %i.sd
  %i.sf = fadd fast <4 x float> %i.se, splat (float 1.000000e+00)
  %i.sg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rp)
  %i.sh = shl <4 x i32> %i.sg, splat (i32 23)
  %i.si = add <4 x i32> %i.sh, splat (i32 1065353216)
  %i.sj = bitcast <4 x i32> %i.si to <4 x float>
  %i.sk = fmul fast <4 x float> %i.sf, %i.sj
  %i.sl = fadd fast <4 x float> %i.sk, splat (float 1.000000e+00)
  %i.sm = fdiv fast <4 x float> splat (float 2.000000e+00), %i.sl
  %i.sn = fadd fast <4 x float> %i.sm, splat (float -1.000000e+00)
  %i.so = fmul fast <4 x float> %i.sn, %i.mq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.y:                                             ; preds = %._crit_edge779
  %i.sp = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !39
  %i.sr = insertelement <4 x float> poison, float %i.sq, i64 0
  %i.ss = shufflevector <4 x float> %i.sr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  %i.su = load float, ptr %i.st, align 4, !tbaa !39
  %i.sv = insertelement <4 x float> poison, float %i.su, i64 0
  %i.sw = shufflevector <4 x float> %i.sv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sx = fmul fast <4 x float> %i.ss, %i.mq
  %i.sy = fadd fast <4 x float> %i.sx, %i.sw
  %i.sz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sy, <4 x float> zeroinitializer)
  %i.ta = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.sz, <4 x float> splat (float 1.000000e+00))
  %i.tb = fmul fast <4 x float> %i.ta, %i.mq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.y, %.noexc310, %.noexc309, %bb.x, %.noexc308, %bb.w, %._crit_edge779
  %.0.i = phi nsz <4 x float> [ %i.tb, %bb.y ], [ %i.ms, %bb.w ], [ %i.na, %.noexc308 ], [ %i.nk, %bb.x ], [ %i.or, %.noexc309 ], [ %i.so, %.noexc310 ], [ %i.mq, %._crit_edge779 ] ; 5 uses
  switch i32 %i.ah, label %bb.aa [
    i32 4, label %.thread
    i32 1, label %bb.z
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  store <4 x float> %.0.i, ptr %.1200787, align 1, !tbaa !80
  %i.tc = getelementptr inbounds nuw i8, ptr %.1200787, i64 16
  br label %bb.aa

bb.z:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.1200787, align 4, !tbaa !39
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.0.i, i64 1
  %i.td = load i64, ptr %19, align 8, !tbaa !82   ; 3 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %.1200787, i64 %i.td
  store float %.sroa.0.4.vec.extract, ptr %i.te, align 4, !tbaa !39
  %.sroa.0.8.vec.extract = extractelement <4 x float> %.0.i, i64 2
  %.idx = shl i64 %i.td, 3
  %i.tf = getelementptr inbounds nuw i8, ptr %.1200787, i64 %.idx
  store float %.sroa.0.8.vec.extract, ptr %i.tf, align 4, !tbaa !39
  %.sroa.0.12.vec.extract = extractelement <4 x float> %.0.i, i64 3
  %.idx222 = mul i64 %i.td, 12
  %i.tg = getelementptr inbounds nuw i8, ptr %.1200787, i64 %.idx222
  store float %.sroa.0.12.vec.extract, ptr %i.tg, align 4, !tbaa !39
  %i.th = getelementptr inbounds nuw i8, ptr %.1200787, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.z
  %.3 = phi ptr [ %i.th, %bb.z ], [ %.1200787, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.tc, %.thread ] ; 2 uses
  %i.ti = add nuw nsw i32 %.0197788, 1            ; 2 uses
  %exitcond837.not = icmp eq i32 %i.ti, %i.af
  br i1 %exitcond837.not, label %._crit_edge, label %bb.c, !llvm.loop !467

._crit_edge794:                                   ; preds = %._crit_edge791.split, %.noexc299.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge794, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #14

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %19) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !60     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !60
  %i.h = load i32, ptr %0, align 4, !tbaa !60     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !60
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !60
  %i.k = load i32, ptr %i.a, align 4, !tbaa !60   ; 2 uses
  %.not804 = icmp sgt i32 %i.k, %i.j
  br i1 %.not804, label %._crit_edge806, label %.noexc299.lr.ph

.noexc299.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !65
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc299, label %._crit_edge806

.noexc299:                                        ; preds = %.noexc299.lr.ph, %._crit_edge803.split
  %.0202805 = phi i32 [ %i.bj, %._crit_edge803.split ], [ %i.k, %.noexc299.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !59
  %.fr = freeze i32 %i.aa                         ; 2 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !61
  %i.ac = mul i32 %i.ab, %.fr                     ; 8 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !54  ; 4 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !65  ; 3 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !54  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !65  ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !59  ; 2 uses
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %.preheader684.lr.ph, label %._crit_edge803.split

.preheader684.lr.ph:                              ; preds = %.noexc299
  %i.aj = load i32, ptr %3, align 4, !tbaa !60
  %i.ak = shl nsw i32 %.0202805, 2
  %i.al = add nsw i32 %i.aj, %i.ak                ; 3 uses
  %i.am = icmp sgt i32 %i.af, 0
  %i.an = sext i32 %i.al to i64
  %i.ao = sdiv i32 %i.al, 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp sgt i32 %i.ac, 3
  br i1 %i.am, label %.preheader684.preheader, label %._crit_edge803.split

.preheader684.preheader:                          ; preds = %.preheader684.lr.ph
  %i.ar = load ptr, ptr %5, align 8, !tbaa !20, !noalias !498
  %i.as = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !498
  %i.at = sdiv i32 %i.al, %i.ah
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !55, !noalias !498
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = add i32 %i.ac, -4                       ; 3 uses
  %i.ba = lshr i32 %i.az, 1
  %i.bb = and i32 %i.ba, 2147483646
  %narrow = add nuw i32 %i.bb, 2
  %i.bc = zext i32 %narrow to i64
  %i.bd = and i32 %i.az, -4
  %i.be = add nuw i32 %i.bd, 4
  %i.bf = sext i32 %i.ac to i64
  %i.bg = and i32 %i.az, -4
  %i.bh = add i32 %i.bg, 4
  %i.bi = add i32 %i.ac, -2
  %invariant.op = add nsw i64 %i.bf, -3
  br label %.preheader684

.preheader684:                                    ; preds = %.preheader684.preheader, %._crit_edge
  %.0198802 = phi i32 [ %.neg672, %._crit_edge ], [ 0, %.preheader684.preheader ]
end_hunk_4
begin_hunk_5_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a

.preheader682:                                    ; preds = %.preheader680.preheader, %.preheader682.loopexit, %.preheader683
  %.7655.lcssa = phi <4 x float> [ %.1649.lcssa, %.preheader683 ], [ %.11.us, %.preheader682.loopexit ], [ %.1649.lcssa, %.preheader680.preheader ] ; 3 uses
  %.6.lcssa = phi <4 x float> [ %.0642.lcssa, %.preheader683 ], [ %.10.us, %.preheader682.loopexit ], [ %.0642.lcssa, %.preheader680.preheader ]
  %.1195.lcssa = phi ptr [ %.0194.lcssa, %.preheader683 ], [ %i.mk, %.preheader682.loopexit ], [ %scevgep830, %.preheader680.preheader ]
  %.1.lcssa = phi i32 [ %.0193.lcssa, %.preheader683 ], [ %i.mo, %.preheader682.loopexit ], [ %i.jo, %.preheader680.preheader ] ; 2 uses
  %i.mp = icmp slt i32 %.1.lcssa, %i.ac
  br i1 %i.mp, label %.preheader679.lr.ph, label %._crit_edge791

.preheader679.lr.ph:                              ; preds = %.preheader682
  %i.mq = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.mr = icmp sgt i32 %i.mq, 0
  %.neg666 = add nuw nsw i32 %.0197800, 1
  %i.ms = load i32, ptr %16, align 4, !tbaa !60
  %i.mt = shl nsw i32 %i.ms, 2
  %i.mu = sext i32 %i.mt to i64
  br i1 %i.mr, label %.preheader679.lr.ph.split.us, label %._crit_edge791

.preheader679.lr.ph.split.us:                     ; preds = %.preheader679.lr.ph
  %i.mv = load i32, ptr %9, align 4, !tbaa !60
  %i.mw = load i32, ptr %10, align 4, !tbaa !60
  %invariant.op786.us = sub i32 %.neg672, %i.mw
  %i.mx = zext i32 %.1.lcssa to i64
  br label %.preheader679.us

.preheader679.us:                                 ; preds = %._crit_edge.us797, %.preheader679.lr.ph.split.us
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %._crit_edge.us797 ], [ %i.mx, %.preheader679.lr.ph.split.us ] ; 2 uses
  %.2196789.us = phi ptr [ %i.ov, %._crit_edge.us797 ], [ %.1195.lcssa, %.preheader679.lr.ph.split.us ] ; 2 uses
  %.12788.us = phi <4 x float> [ %.16.us, %._crit_edge.us797 ], [ %.7655.lcssa, %.preheader679.lr.ph.split.us ]
  br label %bb.q

bb.q:                                             ; preds = %.preheader679.us, %.loopexit.us
  %.0188783.us = phi i32 [ 0, %.preheader679.us ], [ %i.oq, %.loopexit.us ] ; 3 uses
  %.13782.us = phi <4 x float> [ %.12788.us, %.preheader679.us ], [ %.16.us, %.loopexit.us ] ; 4 uses
  %i.my = mul nsw i32 %i.mv, %.0188783.us
  %.reass787.us = add i32 %i.my, %invariant.op786.us ; 3 uses
  %i.mz = icmp slt i32 %.reass787.us, 0
  br i1 %i.mz, label %.loopexit.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.na = load i32, ptr %11, align 4, !tbaa !60   ; 2 uses
  %i.nb = srem i32 %.reass787.us, %i.na
  %i.nc = sdiv i32 %.reass787.us, %i.na           ; 2 uses
  %.not223.us = icmp eq i32 %i.nb, 0
  %.not224.us = icmp slt i32 %i.nc, %i.ae
  %or.cond889 = select i1 %.not223.us, i1 %.not224.us, i1 false
  br i1 %or.cond889, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %bb.r
  %i.nd = load i32, ptr %12, align 4, !tbaa !60   ; 3 uses
  %i.ne = icmp sgt i32 %i.nd, 0
  br i1 %i.ne, label %.lr.ph.us794, label %.loopexit.us

bb.s:                                             ; preds = %.lr.ph.us794, %bb.v
  %indvars.iv840 = phi i64 [ 0, %.lr.ph.us794 ], [ %indvars.iv.next841, %bb.v ] ; 3 uses
  %.14780.us = phi <4 x float> [ %.13782.us, %.lr.ph.us794 ], [ %.15.us, %bb.v ] ; 3 uses
  %i.nf = trunc i64 %indvars.iv840 to i32
  %i.ng = mul i32 %i.or, %i.nf
  %.reass.us793 = add i32 %i.ng, %invariant.op.us795 ; 3 uses
  %i.nh = icmp slt i32 %.reass.us793, 0
  br i1 %i.nh, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ni = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.nj = srem i32 %.reass.us793, %i.ni
  %i.nk = sdiv i32 %.reass.us793, %i.ni           ; 2 uses
  %.not225.us = icmp eq i32 %i.nj, 0
  %.not226.us = icmp slt i32 %i.nk, %i.ad
  %or.cond890 = select i1 %.not225.us, i1 %.not226.us, i1 false
  br i1 %or.cond890, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.nl = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !503
  %i.nm = load ptr, ptr %4, align 8, !tbaa !20, !noalias !503
  %i.nn = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !503
  %i.no = mul i64 %i.nn, %indvars.iv846
  %i.np = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !503 ; 2 uses
  %i.nq = mul i64 %i.no, %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nq
  %i.ns = sext i32 %i.nl to i64
  %i.nt = trunc i64 %indvars.iv840 to i32
  %i.nu = add i32 %i.ot, %i.nt
  %i.nv = shl nsw i32 %i.nu, 2
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %.2196789.us, i64 %i.nw
  %i.ny = mul nsw i64 %i.ns, %i.ou
  %i.nz = mul i64 %i.ny, %i.np
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nz
  %i.ob = sext i32 %i.nk to i64
  %i.oc = getelementptr inbounds [2 x i8], ptr %i.oa, i64 %i.ob
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !86
  %i.oe = zext i16 %i.od to i32
  %i.of = shl nuw i32 %i.oe, 16
  %i.og = insertelement <4 x i32> poison, i32 %i.of, i64 0
  %i.oh = bitcast <4 x i32> %i.og to <4 x float>
  %i.oi = shufflevector <4 x float> %i.oh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oj = load i64, ptr %i.nx, align 1, !tbaa !80
  %i.ok = insertelement <2 x i64> poison, i64 %i.oj, i64 0
  %i.ol = bitcast <2 x i64> %i.ok to <8 x i16>
  %i.om = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ol, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.on = bitcast <8 x i16> %i.om to <4 x float>
  %i.oo = fmul fast <4 x float> %i.oi, %i.on
  %i.op = fadd fast <4 x float> %i.oo, %.14780.us
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.15.us = phi nsz <4 x float> [ %.14780.us, %bb.s ], [ %i.op, %bb.u ], [ %.14780.us, %bb.t ] ; 2 uses
  %indvars.iv.next841 = add nuw nsw i64 %indvars.iv840, 1 ; 2 uses
  %exitcond844.not = icmp eq i64 %indvars.iv.next841, %wide.trip.count843
  br i1 %exitcond844.not, label %.loopexit.us, label %bb.s, !llvm.loop !494

.loopexit.us:                                     ; preds = %bb.v, %.preheader.us, %bb.r, %bb.q
  %.16.us = phi nsz <4 x float> [ %.13782.us, %bb.q ], [ %.13782.us, %bb.r ], [ %.13782.us, %.preheader.us ], [ %.15.us, %bb.v ] ; 3 uses
  %i.oq = add nuw nsw i32 %.0188783.us, 1         ; 2 uses
  %exitcond845.not = icmp eq i32 %i.oq, %i.mq
  br i1 %exitcond845.not, label %._crit_edge.us797, label %bb.q, !llvm.loop !495

.lr.ph.us794:                                     ; preds = %.preheader.us
  %i.or = load i32, ptr %13, align 4, !tbaa !60
  %i.os = load i32, ptr %14, align 4, !tbaa !60
  %invariant.op.us795 = sub i32 %.neg666, %i.os
  %i.ot = mul nuw nsw i32 %i.nd, %.0188783.us
  %i.ou = sext i32 %i.nc to i64
  %wide.trip.count843 = zext nneg i32 %i.nd to i64
  br label %bb.s

._crit_edge.us797:                                ; preds = %.loopexit.us
  %i.ov = getelementptr inbounds [2 x i8], ptr %.2196789.us, i64 %i.mu
  %indvars.iv.next847 = add nuw nsw i64 %indvars.iv846, 1 ; 2 uses
  %i.ow = trunc nuw i64 %indvars.iv.next847 to i32
  %i.ox = icmp sgt i32 %i.ac, %i.ow
  br i1 %i.ox, label %.preheader679.us, label %._crit_edge791, !llvm.loop !496

._crit_edge791:                                   ; preds = %._crit_edge.us797, %.preheader679.lr.ph, %.preheader682
  %.12.lcssa = phi <4 x float> [ %.7655.lcssa, %.preheader682 ], [ %.7655.lcssa, %.preheader679.lr.ph ], [ %.16.us, %._crit_edge.us797 ]
  %i.oy = fadd fast <4 x float> %.0632.lcssa, %.6.lcssa
  %i.oz = fadd fast <4 x float> %i.oy, %.12.lcssa ; 10 uses
  %i.pa = load i32, ptr %17, align 4, !tbaa !60
  switch i32 %i.pa, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.w
    i32 2, label %.noexc308
    i32 3, label %bb.x
    i32 4, label %.noexc309
    i32 5, label %.noexc310
    i32 6, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge791
  %i.pb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oz, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc308:                                        ; preds = %._crit_edge791
  %i.pc = load ptr, ptr %18, align 8, !tbaa !20
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !39
  %i.pe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.oz)
  %i.pf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.oz)
  %i.pg = insertelement <4 x float> poison, float %i.pd, i64 0
  %i.ph = shufflevector <4 x float> %i.pg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pi = fmul fast <4 x float> %i.ph, %i.pf
  %i.pj = fadd fast <4 x float> %i.pi, %i.pe
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.x:                                             ; preds = %._crit_edge791
  %i.pk = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !39
  %i.pm = insertelement <4 x float> poison, float %i.pl, i64 0
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  %i.pp = load float, ptr %i.po, align 4, !tbaa !39
  %i.pq = insertelement <4 x float> poison, float %i.pp, i64 0
  %i.pr = shufflevector <4 x float> %i.pq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ps = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oz, <4 x float> nofpclass(nan inf) %i.pn)
  %i.pt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ps, <4 x float> nofpclass(nan inf) %i.pr)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc309:                                        ; preds = %._crit_edge791
  %i.pu = fneg fast <4 x float> %i.oz
  %i.pv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pu, <4 x float> splat (float f0x42B0C0A5))
  %i.pw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.px = fmul fast <4 x float> %i.pw, splat (float f0x3FB8AA3B)
  %i.py = fadd fast <4 x float> %i.px, splat (float 5.000000e-01) ; 2 uses
  %i.pz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.py)
  %i.qa = sitofp fast <4 x i32> %i.pz to <4 x float> ; 2 uses
  %i.qb = fcmp fast olt <4 x float> %i.py, %i.qa
  %i.qc = select <4 x i1> %i.qb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qd = fsub fast <4 x float> %i.qa, %i.qc      ; 2 uses
  %i.qe = fmul fast <4 x float> %i.qd, splat (float f0x3F317218)
  %i.qf = fsub fast <4 x float> %i.pw, %i.qe      ; 8 uses
  %i.qg = fmul fast <4 x float> %i.qf, %i.qf
  %i.qh = fmul fast <4 x float> %i.qf, splat (float f0x39506967)
  %i.qi = fadd fast <4 x float> %i.qh, splat (float f0x3AB743CE)
  %i.qj = fmul fast <4 x float> %i.qi, %i.qf
  %i.qk = fadd fast <4 x float> %i.qj, splat (float f0x3C088908)
  %i.ql = fmul fast <4 x float> %i.qk, %i.qf
  %i.qm = fadd fast <4 x float> %i.ql, splat (float f0x3D2AA9C1)
  %i.qn = fmul fast <4 x float> %i.qm, %i.qf
  %i.qo = fadd fast <4 x float> %i.qn, splat (float f0x3E2AAAAA)
  %i.qp = fmul fast <4 x float> %i.qo, %i.qf
  %i.qq = fadd fast <4 x float> %i.qp, splat (float 5.000000e-01)
  %i.qr = fmul fast <4 x float> %i.qg, %i.qq
  %i.qs = fadd fast <4 x float> %i.qf, %i.qr
  %i.qt = fadd fast <4 x float> %i.qs, splat (float 1.000000e+00)
  %i.qu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qd)
  %i.qv = shl <4 x i32> %i.qu, splat (i32 23)
  %i.qw = add <4 x i32> %i.qv, splat (i32 1065353216)
  %i.qx = bitcast <4 x i32> %i.qw to <4 x float>
  %i.qy = fmul fast <4 x float> %i.qt, %i.qx
  %i.qz = fadd fast <4 x float> %i.qy, splat (float 1.000000e+00)
  %i.ra = fdiv fast <4 x float> splat (float 1.000000e+00), %i.qz
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc310:                                        ; preds = %._crit_edge791
  %i.rb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.oz, <4 x float> splat (float f0x42B0C0A5))
  %i.rc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rb, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rd = fmul fast <4 x float> %i.rc, splat (float f0x3FB8AA3B)
  %i.re = fadd fast <4 x float> %i.rd, splat (float 5.000000e-01) ; 2 uses
  %i.rf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.re)
  %i.rg = sitofp fast <4 x i32> %i.rf to <4 x float> ; 2 uses
  %i.rh = fcmp fast olt <4 x float> %i.re, %i.rg
  %i.ri = select <4 x i1> %i.rh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.rj = fsub fast <4 x float> %i.rg, %i.ri      ; 2 uses
  %i.rk = fmul fast <4 x float> %i.rj, splat (float f0x3F317218)
  %i.rl = fsub fast <4 x float> %i.rc, %i.rk      ; 8 uses
  %i.rm = fmul fast <4 x float> %i.rl, %i.rl
  %i.rn = fmul fast <4 x float> %i.rl, splat (float f0x39506967)
  %i.ro = fadd fast <4 x float> %i.rn, splat (float f0x3AB743CE)
  %i.rp = fmul fast <4 x float> %i.ro, %i.rl
  %i.rq = fadd fast <4 x float> %i.rp, splat (float f0x3C088908)
  %i.rr = fmul fast <4 x float> %i.rq, %i.rl
  %i.rs = fadd fast <4 x float> %i.rr, splat (float f0x3D2AA9C1)
  %i.rt = fmul fast <4 x float> %i.rs, %i.rl
  %i.ru = fadd fast <4 x float> %i.rt, splat (float f0x3E2AAAAA)
  %i.rv = fmul fast <4 x float> %i.ru, %i.rl
  %i.rw = fadd fast <4 x float> %i.rv, splat (float 5.000000e-01)
  %i.rx = fmul fast <4 x float> %i.rm, %i.rw
  %i.ry = fadd fast <4 x float> %i.rl, %i.rx
  %i.rz = fadd fast <4 x float> %i.ry, splat (float 1.000000e+00)
  %i.sa = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rj)
  %i.sb = shl <4 x i32> %i.sa, splat (i32 23)
  %i.sc = add <4 x i32> %i.sb, splat (i32 1065353216)
  %i.sd = bitcast <4 x i32> %i.sc to <4 x float>
  %i.se = fmul fast <4 x float> %i.rz, %i.sd
  %i.sf = fadd fast <4 x float> %i.se, splat (float 1.000000e+00) ; 2 uses
  %i.sg = fcmp fast ole <4 x float> %i.sf, zeroinitializer
  %i.sh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sf, <4 x float> splat (float f0x00800000))
  %i.si = bitcast <4 x float> %i.sh to <4 x i32>  ; 2 uses
  %i.sj = lshr <4 x i32> %i.si, splat (i32 23)
  %i.sk = and <4 x i32> %i.si, splat (i32 -2139095041)
  %i.sl = or disjoint <4 x i32> %i.sk, splat (i32 1056964608)
  %i.sm = bitcast <4 x i32> %i.sl to <4 x float>  ; 3 uses
  %i.sn = add nsw <4 x i32> %i.sj, splat (i32 -127)
  %i.so = sitofp fast <4 x i32> %i.sn to <4 x float> ; 2 uses
  %i.sp = fadd fast <4 x float> %i.so, splat (float 1.000000e+00)
  %i.sq = fcmp fast olt <4 x float> %i.sm, splat (float f0x3F3504F3) ; 2 uses
  %i.sr = select <4 x i1> %i.sq, <4 x float> %i.sm, <4 x float> zeroinitializer
  %i.ss = fadd fast <4 x float> %i.sm, splat (float -1.000000e+00)
  %i.st = select fast <4 x i1> %i.sq, <4 x float> %i.so, <4 x float> %i.sp
  %i.su = fadd fast <4 x float> %i.ss, %i.sr      ; 12 uses
  %i.sv = fmul fast <4 x float> %i.su, %i.su
  %i.sw = fmul fast <4 x float> %i.su, splat (float f0x3D9021BB)
  %i.sx = fadd fast <4 x float> %i.sw, splat (float f0xBDEBD1B8)
  %i.sy = fmul fast <4 x float> %i.sx, %i.su
  %i.sz = fadd fast <4 x float> %i.sy, splat (float f0x3DEF251A)
  %i.ta = fmul fast <4 x float> %i.sz, %i.su
  %i.tb = fadd fast <4 x float> %i.ta, splat (float f0xBDFE5D4F)
  %i.tc = fmul fast <4 x float> %i.tb, %i.su
  %i.td = fadd fast <4 x float> %i.tc, splat (float f0x3E11E9BF)
  %i.te = fmul fast <4 x float> %i.td, %i.su
  %i.tf = fadd fast <4 x float> %i.te, splat (float f0xBE2AAE50)
  %i.tg = fmul fast <4 x float> %i.tf, %i.su
  %i.th = fadd fast <4 x float> %i.tg, splat (float f0x3E4CCEAC)
  %i.ti = fmul fast <4 x float> %i.th, %i.su
  %i.tj = fadd fast <4 x float> %i.ti, splat (float f0xBE7FFFFC)
  %i.tk = fmul fast <4 x float> %i.tj, %i.su
  %i.tl = fadd fast <4 x float> %i.tk, splat (float f0x3EAAAAAA)
  %i.tm = fmul fast <4 x float> %i.tl, %i.su
  %reass.mul = fmul fast <4 x float> %i.st, splat (float f0x3F317218)
  %reass.add661 = fadd fast <4 x float> %i.tm, splat (float -5.000000e-01)
  %reass.mul662 = fmul fast <4 x float> %i.sv, %reass.add661
  %i.tn = fadd fast <4 x float> %reass.mul, %i.su
  %i.to = fadd fast <4 x float> %i.tn, %reass.mul662
  %.neg = fmul fast <4 x float> %i.to, splat (float -2.000000e+00)
  %i.tp = select fast <4 x i1> %i.sg, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.tq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.tp, <4 x float> splat (float f0x42B0C0A5))
  %i.tr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.tq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ts = fmul fast <4 x float> %i.tr, splat (float f0x3FB8AA3B)
  %i.tt = fadd fast <4 x float> %i.ts, splat (float 5.000000e-01) ; 2 uses
  %i.tu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tt)
  %i.tv = sitofp fast <4 x i32> %i.tu to <4 x float> ; 2 uses
  %i.tw = fcmp fast olt <4 x float> %i.tt, %i.tv
  %i.tx = select <4 x i1> %i.tw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ty = fsub fast <4 x float> %i.tv, %i.tx      ; 2 uses
  %i.tz = fmul fast <4 x float> %i.ty, splat (float f0x3F317218)
  %i.ua = fsub fast <4 x float> %i.tr, %i.tz      ; 8 uses
  %i.ub = fmul fast <4 x float> %i.ua, %i.ua
  %i.uc = fmul fast <4 x float> %i.ua, splat (float f0x39506967)
  %i.ud = fadd fast <4 x float> %i.uc, splat (float f0x3AB743CE)
  %i.ue = fmul fast <4 x float> %i.ud, %i.ua
  %i.uf = fadd fast <4 x float> %i.ue, splat (float f0x3C088908)
  %i.ug = fmul fast <4 x float> %i.uf, %i.ua
  %i.uh = fadd fast <4 x float> %i.ug, splat (float f0x3D2AA9C1)
  %i.ui = fmul fast <4 x float> %i.uh, %i.ua
  %i.uj = fadd fast <4 x float> %i.ui, splat (float f0x3E2AAAAA)
  %i.uk = fmul fast <4 x float> %i.uj, %i.ua
  %i.ul = fadd fast <4 x float> %i.uk, splat (float 5.000000e-01)
  %i.um = fmul fast <4 x float> %i.ub, %i.ul
  %i.un = fadd fast <4 x float> %i.ua, %i.um
  %i.uo = fadd fast <4 x float> %i.un, splat (float 1.000000e+00)
  %i.up = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ty)
  %i.uq = shl <4 x i32> %i.up, splat (i32 23)
  %i.ur = add <4 x i32> %i.uq, splat (i32 1065353216)
  %i.us = bitcast <4 x i32> %i.ur to <4 x float>
  %i.ut = fmul fast <4 x float> %i.uo, %i.us
  %i.uu = fadd fast <4 x float> %i.ut, splat (float 1.000000e+00)
  %i.uv = fdiv fast <4 x float> splat (float 2.000000e+00), %i.uu
  %i.uw = fadd fast <4 x float> %i.uv, splat (float -1.000000e+00)
  %i.ux = fmul fast <4 x float> %i.uw, %i.oz
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.y:                                             ; preds = %._crit_edge791
  %i.uy = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !39
  %i.va = insertelement <4 x float> poison, float %i.uz, i64 0
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uy, i64 4
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !39
  %i.ve = insertelement <4 x float> poison, float %i.vd, i64 0
  %i.vf = shufflevector <4 x float> %i.ve, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vg = fmul fast <4 x float> %i.vb, %i.oz
  %i.vh = fadd fast <4 x float> %i.vg, %i.vf
  %i.vi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.vh, <4 x float> zeroinitializer)
  %i.vj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.vi, <4 x float> splat (float 1.000000e+00))
  %i.vk = fmul fast <4 x float> %i.vj, %i.oz
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.y, %.noexc310, %.noexc309, %bb.x, %.noexc308, %bb.w, %._crit_edge791
  %.0.i = phi nsz <4 x float> [ %i.vk, %bb.y ], [ %i.pb, %bb.w ], [ %i.pj, %.noexc308 ], [ %i.pt, %bb.x ], [ %i.ra, %.noexc309 ], [ %i.ux, %.noexc310 ], [ %i.oz, %._crit_edge791 ] ; 2 uses
  switch i32 %i.ah, label %bb.aa [
    i32 4, label %.thread
    i32 1, label %bb.z
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.vl = bitcast <4 x float> %.0.i to <8 x i16>
  %i.vm = shufflevector <8 x i16> %i.vl, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.vn = bitcast <8 x i16> %i.vm to <4 x float>
  %i.vo = shufflevector <4 x float> %i.vn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.vp = bitcast <4 x float> %i.vo to <2 x i64>
  %i.vq = extractelement <2 x i64> %i.vp, i64 0
  store i64 %i.vq, ptr %.1200799, align 1, !tbaa !80
  %i.vr = getelementptr inbounds nuw i8, ptr %.1200799, i64 8
  br label %bb.aa

bb.z:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.vs = bitcast <4 x float> %.0.i to <8 x i16>  ; 4 uses
  %i.vt = extractelement <8 x i16> %i.vs, i64 1
  store i16 %i.vt, ptr %.1200799, align 2, !tbaa !86
  %i.vu = extractelement <8 x i16> %i.vs, i64 3
  %i.vv = load i64, ptr %19, align 8, !tbaa !82   ; 3 uses
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %.1200799, i64 %i.vv
  store i16 %i.vu, ptr %i.vw, align 2, !tbaa !86
  %i.vx = extractelement <8 x i16> %i.vs, i64 5
  %.idx = shl i64 %i.vv, 2
  %i.vy = getelementptr inbounds nuw i8, ptr %.1200799, i64 %.idx
  store i16 %i.vx, ptr %i.vy, align 2, !tbaa !86
  %i.vz = extractelement <8 x i16> %i.vs, i64 7
  %.idx222 = mul i64 %i.vv, 6
  %i.wa = getelementptr inbounds nuw i8, ptr %.1200799, i64 %.idx222
  store i16 %i.vz, ptr %i.wa, align 2, !tbaa !86
  %i.wb = getelementptr inbounds nuw i8, ptr %.1200799, i64 2
  br label %bb.aa

bb.aa:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.z
  %.3 = phi ptr [ %i.wb, %bb.z ], [ %.1200799, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.vr, %.thread ] ; 2 uses
  %i.wc = add nuw nsw i32 %.0197800, 1            ; 2 uses
  %exitcond849.not = icmp eq i32 %i.wc, %i.af
  br i1 %exitcond849.not, label %._crit_edge, label %bb.c, !llvm.loop !497

._crit_edge806:                                   ; preds = %._crit_edge803.split, %.noexc299.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge806, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #14

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !8, i64 24, !16, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !15, i64 64}
!18 = !{!17, !14, i64 8}
!19 = !{!17, !16, i64 32}
!20 = !{!17, !13, i64 0}
!21 = !{!17, !15, i64 64}
!22 = !{!"bool", !7, i64 0}
!23 = !{!"p1 omnipotent char", !13, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !15, i64 8, !7, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !28, i64 0}
!30 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !33, i64 0}
!35 = !{!"_ZTSN4ncnn5LayerE", !22, i64 8, !22, i64 9, !22, i64 10, !22, i64 11, !22, i64 12, !22, i64 13, !22, i64 14, !22, i64 15, !22, i64 16, !22, i64 17, !22, i64 18, !22, i64 19, !22, i64 20, !22, i64 21, !22, i64 22, !22, i64 23, !22, i64 24, !22, i64 25, !22, i64 26, !22, i64 27, !8, i64 28, !13, i64 32, !8, i64 40, !25, i64 48, !25, i64 80, !29, i64 112, !29, i64 136, !34, i64 160, !34, i64 184}
!36 = !{!"_ZTSN4ncnn13DeconvolutionE", !35, i64 0, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !17, i64 280, !8, i64 352, !17, i64 360, !17, i64 432}
!37 = !{!36, !8, i64 276}
!38 = !{!"float", !7, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"p1 _ZTSN4ncnn5LayerE", !13, i64 0}
!41 = !{!"_ZTSN4ncnn17Deconvolution_x86E", !36, i64 0, !40, i64 504, !40, i64 512, !17, i64 520}
!42 = !{!41, !40, i64 504}
!43 = !{!"_ZTSN4ncnn6OptionE", !22, i64 0, !22, i64 1, !22, i64 2, !22, i64 3, !8, i64 4, !16, i64 8, !16, i64 16, !8, i64 24, !22, i64 28, !22, i64 29, !22, i64 30, !22, i64 31, !22, i64 32, !22, i64 33, !22, i64 34, !22, i64 35, !22, i64 36, !22, i64 37, !22, i64 38, !22, i64 39, !8, i64 40, !22, i64 44, !22, i64 45, !22, i64 46, !22, i64 47, !7, i64 48, !22, i64 49, !22, i64 50, !22, i64 51, !22, i64 52, !22, i64 53, !22, i64 54, !22, i64 55, !22, i64 56, !22, i64 57, !22, i64 58, !22, i64 59, !22, i64 60, !22, i64 61, !22, i64 62, !22, i64 63}
!44 = !{!43, !22, i64 32}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!36, !8, i64 212}
!48 = !{!36, !8, i64 216}
!49 = !{!36, !8, i64 272}
!50 = !{!36, !8, i64 208}
!51 = !{!43, !22, i64 39}
!52 = !{!43, !22, i64 29}
!53 = !{!41, !40, i64 512}
!54 = !{!17, !8, i64 44}
!55 = !{!17, !15, i64 16}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!13, !13, i64 0}
!59 = !{!17, !8, i64 24}
!60 = !{!8, !8, i64 0}
!61 = !{!17, !8, i64 56}
!62 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_5
