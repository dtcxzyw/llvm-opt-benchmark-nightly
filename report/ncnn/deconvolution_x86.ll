inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %or.cond300 = select i1 %.not444.us918.us.us.us.i.us, i1 %.not445.us919.us.us.us.i.us, i1 false
  br i1 %or.cond300, label %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, label %bb.bf

_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us:        ; preds = %bb.be
  %i.pl = load ptr, ptr %1, align 8, !tbaa !18, !noalias !270
  %i.pm = load i64, ptr %i.ke, align 8, !tbaa !20, !noalias !270
  %i.pn = load i64, ptr %i.ak, align 8, !tbaa !57, !noalias !270 ; 2 uses
  %factor.op.mul.us.us.us.us.i.us = mul i64 %i.pn, %i.pm ; 4 uses
  %i.po = mul i64 %i.pf, %i.pn
  %invariant.gep.us.us.us.us.i.us = getelementptr i8, ptr %i.pl, i64 %i.po
  %i.pp = sext i32 %i.pk to i64
  %invariant.gep904.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us.us.i.us, i64 %i.pp ; 4 uses
  %.reass.us.us.us.us.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %indvars.iv1289.i
  %gep905.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.i.us
  %i.pq = load float, ptr %gep905.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.01396.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.pq, i64 0
  %.reass.us.us.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.nl
  %gep905.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.1.i.us
  %i.pr = load float, ptr %gep905.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.01396.4.vec.insert.i.us = insertelement <4 x float> %.sroa.01396.0.vec.insert.i.us, float %i.pr, i64 1
  %.reass.us.us.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.nm
  %gep905.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.2.i.us
  %i.ps = load float, ptr %gep905.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.01396.8.vec.insert.i.us = insertelement <4 x float> %.sroa.01396.4.vec.insert.i.us, float %i.ps, i64 2
  %.reass.us.us.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.nn
  %gep905.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.3.i.us
  %i.pt = load float, ptr %gep905.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.01396.12.vec.insert.i.us = insertelement <4 x float> %.sroa.01396.8.vec.insert.i.us, float %i.pt, i64 3 ; 2 uses
  %i.pu = add nuw nsw i64 %indvars.iv.i.us, %i.pd
  %i.pv = shl i64 %i.pu, 3
  %i.pw = and i64 %i.pv, 4294967288
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.0340948.us.us.i, i64 %i.pw ; 2 uses
  %i.py = load <4 x float>, ptr %i.px, align 16, !tbaa !245
  %i.pz = fmul fast <4 x float> %i.py, %.sroa.01396.12.vec.insert.i.us
  %i.qa = fadd fast <4 x float> %i.pz, %.2829908.us915.us.us.us.i.us
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.qc = load <4 x float>, ptr %i.qb, align 16, !tbaa !245
  %i.qd = fmul fast <4 x float> %i.qc, %.sroa.01396.12.vec.insert.i.us
  %i.qe = fadd fast <4 x float> %i.qd, %.2834907.us916.us.us.us.i.us
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, %bb.be, %.lr.ph.split.us913.us.us.us.i.us
  %.3835.us920.us.us.us.i.us = phi nsz <4 x float> [ %.2834907.us916.us.us.us.i.us, %.lr.ph.split.us913.us.us.us.i.us ], [ %i.qe, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2834907.us916.us.us.us.i.us, %bb.be ] ; 2 uses
  %.3830.us921.us.us.us.i.us = phi nsz <4 x float> [ %.2829908.us915.us.us.us.i.us, %.lr.ph.split.us913.us.us.us.i.us ], [ %i.qa, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2829908.us915.us.us.us.i.us, %bb.be ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.nj
  br i1 %exitcond.not.i.us, label %..loopexit898_crit_edge.us.us.us.i.us144, label %.lr.ph.split.us913.us.us.us.i.us, !llvm.loop !268

..loopexit898_crit_edge.us.us.us.i.us144:         ; preds = %bb.bf, %bb.bd, %.preheader901.us.us.i.split.us136
  %.4836.us.us.us.i.us145 = phi nsz <4 x float> [ %.1833926.us.us.us.i.us139, %.preheader901.us.us.i.split.us136 ], [ %.1833926.us.us.us.i.us139, %bb.bd ], [ %.3835.us920.us.us.us.i.us, %bb.bf ] ; 2 uses
  %.4831.us.us.us.i.us146 = phi nsz <4 x float> [ %.1828927.us.us.us.i.us138, %.preheader901.us.us.i.split.us136 ], [ %.1828927.us.us.us.i.us138, %bb.bd ], [ %.3830.us921.us.us.us.i.us, %bb.bf ] ; 2 uses
  %indvars.iv.next1285.i.us147 = add nuw nsw i64 %indvars.iv1284.i.us137, 1 ; 2 uses
  %exitcond1288.not.i.us148 = icmp eq i64 %indvars.iv.next1285.i.us147, %wide.trip.count1287.i
  br i1 %exitcond1288.not.i.us148, label %._crit_edge.split.us.us.us.i, label %.preheader901.us.us.i.split.us136, !llvm.loop !269

._crit_edge.split.us.us.us.i:                     ; preds = %..loopexit898_crit_edge.us.us.us.i.us144, %..loopexit898_crit_edge.us.us.us.i.us, %.preheader901.us.us.i
  %.us-phi = phi <4 x float> [ %.4836.us.us.us.i.us, %..loopexit898_crit_edge.us.us.us.i.us ], [ %.0832944.us.us.i, %.preheader901.us.us.i ], [ %.4836.us.us.us.i.us145, %..loopexit898_crit_edge.us.us.us.i.us144 ] ; 2 uses
  %.us-phi135 = phi <4 x float> [ %.4831.us.us.us.i.us, %..loopexit898_crit_edge.us.us.us.i.us ], [ %.0827945.us.us.i, %.preheader901.us.us.i ], [ %.4831.us.us.us.i.us146, %..loopexit898_crit_edge.us.us.us.i.us144 ] ; 2 uses
  %i.qf = getelementptr inbounds [4 x i8], ptr %.0340948.us.us.i, i64 %i.mt ; 2 uses
  %indvars.iv.next1290.i = add nuw nsw i64 %indvars.iv1289.i, 4 ; 2 uses
  %i.qg = icmp slt i64 %indvars.iv.next1290.i, %invariant.op1440.i
  br i1 %i.qg, label %.preheader901.us.us.i, label %._crit_edge950.i, !llvm.loop !273

._crit_edge950.i:                                 ; preds = %._crit_edge.split.us.us.us.i, %.preheader901.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit455.i
  %.0832.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader901.lr.ph.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0827.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader901.lr.ph.i ], [ %.us-phi135, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0343.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %i.kk, %.preheader901.lr.ph.i ], [ %i.kr, %._crit_edge.split.us.us.us.i ] ; 9 uses
  %.0340.lcssa.i = phi ptr [ %i.mo, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %scevgep1274.i, %.preheader901.lr.ph.i ], [ %i.qf, %._crit_edge.split.us.us.us.i ] ; 4 uses
  %i.qh = shufflevector <4 x float> %.0827.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.qi = fadd fast <4 x float> %i.qh, %.0827.lcssa.i ; 2 uses
  %i.qj = shufflevector <4 x float> %.0832.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.qk = fadd fast <4 x float> %i.qj, %.0832.lcssa.i ; 2 uses
  %i.ql = shufflevector <4 x float> %i.qi, <4 x float> %i.qk, <2 x i32> <i32 1, i32 5>
  %i.qm = fadd fast <2 x float> %i.ql, %i.na
  %i.qn = shufflevector <4 x float> %i.qi, <4 x float> %i.qk, <2 x i32> <i32 0, i32 4>
  %i.qo = fadd fast <2 x float> %i.qm, %i.qn      ; 4 uses
  %i.qp = or disjoint i32 %.0343.lcssa.i, 1
  %i.qq = icmp slt i32 %i.qp, %i.jt
  br i1 %i.qq, label %.preheader900.lr.ph.i, label %.preheader902.i

.preheader900.lr.ph.i:                            ; preds = %._crit_edge950.i
  %i.qr = load i32, ptr %i.d, align 4
  %i.qs = load i32, ptr %i.j, align 4
  %invariant.op985.i = sub i32 %.neg879.i, %i.qs
  %i.qt = load i32, ptr %i.f, align 4             ; 2 uses
  %i.qu = load i32, ptr %i.a, align 4
  %.fr1224.i = freeze i32 %i.qu                   ; 2 uses
  %i.qv = load i32, ptr %i.c, align 4
  %i.qw = load i32, ptr %i.i, align 4
  %.neg877.i = add nuw nsw i32 %.03191055.i, 1
  %invariant.op977.i = sub i32 %.neg877.i, %i.qw
  %i.qx = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.mq, label %.preheader900.lr.ph.split.us.i, label %.preheader900.preheader.i

.preheader900.preheader.i:                        ; preds = %.preheader900.lr.ph.i
  %i.qy = or disjoint i32 %.0343.lcssa.i, 3
  %smax.i = call i32 @llvm.smax.i32(i32 %i.jt, i32 %i.qy)
  %reass.sub = sub i32 %smax.i, %.0343.lcssa.i
  %i.qz = add i32 %reass.sub, -2                  ; 2 uses
  %i.ra = lshr i32 %i.qz, 1
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = shl nuw nsw i64 %i.rb, 2
  %i.rd = add nuw nsw i64 %i.rc, 4
  %i.re = mul i64 %i.rd, %i.mv
  %scevgep1292.i = getelementptr i8, ptr %.0340.lcssa.i, i64 %i.re
  %i.rf = or disjoint i32 %.0343.lcssa.i, 2
  %i.rg = and i32 %i.qz, -2
  %i.rh = add i32 %i.rf, %i.rg
  br label %.preheader902.i

.preheader900.lr.ph.split.us.i:                   ; preds = %.preheader900.lr.ph.i
  %i.ri = icmp sgt i32 %.fr1224.i, 0
  br i1 %i.ri, label %.preheader900.us.us.preheader.i, label %.preheader900.us.preheader.i

.preheader900.us.preheader.i:                     ; preds = %.preheader900.lr.ph.split.us.i
  %i.rj = or disjoint i32 %.0343.lcssa.i, 3
  %smax1293.i = call i32 @llvm.smax.i32(i32 %i.jt, i32 %i.rj)
  %reass.sub167 = sub i32 %smax1293.i, %.0343.lcssa.i
  %i.rk = add i32 %reass.sub167, -2               ; 2 uses
  %i.rl = lshr i32 %i.rk, 1
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = shl nuw nsw i64 %i.rm, 2
  %i.ro = add nuw nsw i64 %i.rn, 4
  %i.rp = mul i64 %i.ro, %i.mv
  %scevgep1294.i = getelementptr i8, ptr %.0340.lcssa.i, i64 %i.rp
  %i.rq = or disjoint i32 %.0343.lcssa.i, 2
  %i.rr = and i32 %i.rk, -2
  %i.rs = add i32 %i.rq, %i.rr
  br label %.preheader902.i

.preheader900.us.us.preheader.i:                  ; preds = %.preheader900.lr.ph.split.us.i
  %i.rt = zext nneg i32 %.fr1224.i to i64         ; 2 uses
  %i.ru = zext i32 %.0343.lcssa.i to i64
  br label %.preheader900.us.us.i

.preheader900.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1012.i, %.preheader900.us.us.preheader.i
  %indvars.iv1308.i = phi i64 [ %i.ru, %.preheader900.us.us.preheader.i ], [ %indvars.iv.next1309.i, %._crit_edge.split.us.us.us1012.i ] ; 3 uses
  %.1341993.us.us.i = phi ptr [ %.0340.lcssa.i, %.preheader900.us.us.preheader.i ], [ %i.tk, %._crit_edge.split.us.us.us1012.i ] ; 2 uses
  %i.rv = phi <2 x float> [ %i.qo, %.preheader900.us.us.preheader.i ], [ %i.tg, %._crit_edge.split.us.us.us1012.i ]
  %i.rw = or disjoint i64 %indvars.iv1308.i, 1
  br label %bb.bg

bb.bg:                                            ; preds = %..loopexit896_crit_edge.us.us.us.i, %.preheader900.us.us.i
  %indvars.iv1303.i = phi i64 [ %indvars.iv.next1304.i, %..loopexit896_crit_edge.us.us.us.i ], [ 0, %.preheader900.us.us.i ] ; 3 uses
  %i.rx = phi <2 x float> [ %i.tg, %..loopexit896_crit_edge.us.us.us.i ], [ %i.rv, %.preheader900.us.us.i ] ; 3 uses
  %i.ry = trunc i64 %indvars.iv1303.i to i32
  %i.rz = mul i32 %i.qr, %i.ry
  %.reass986.us.us.us.i = add i32 %i.rz, %invariant.op985.i ; 3 uses
  %i.sa = icmp slt i32 %.reass986.us.us.us.i, 0
  br i1 %i.sa, label %..loopexit896_crit_edge.us.us.us.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.sb = srem i32 %.reass986.us.us.us.i, %i.qt
  %i.sc = sdiv i32 %.reass986.us.us.us.i, %i.qt   ; 2 uses
  %.not438.us.us.us.i = icmp eq i32 %i.sb, 0
  %.not439.us.us.us.i = icmp slt i32 %i.sc, %i.jv
  %or.cond301 = select i1 %.not438.us.us.us.i, i1 %.not439.us.us.us.i, i1 false
  br i1 %or.cond301, label %.preheader895.us.us.us.i, label %..loopexit896_crit_edge.us.us.us.i

bb.bi:                                            ; preds = %.preheader895.us.us.us.i, %.loopexit892.us.us.us.i
  %indvars.iv1298.i = phi i64 [ 0, %.preheader895.us.us.us.i ], [ %indvars.iv.next1299.i, %.loopexit892.us.us.us.i ] ; 3 uses
  %i.sd = phi <2 x float> [ %i.rx, %.preheader895.us.us.us.i ], [ %i.tf, %.loopexit892.us.us.us.i ] ; 3 uses
  %i.se = trunc i64 %indvars.iv1298.i to i32
  %i.sf = mul i32 %i.qv, %i.se
  %.reass978.us.us.us.i = add i32 %invariant.op977.i, %i.sf ; 3 uses
  %i.sg = icmp slt i32 %.reass978.us.us.us.i, 0
  br i1 %i.sg, label %.loopexit892.us.us.us.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.sh = srem i32 %.reass978.us.us.us.i, %i.qx
  %i.si = sdiv i32 %.reass978.us.us.us.i, %i.qx   ; 2 uses
  %.not440.us.us.us.i = icmp eq i32 %i.sh, 0
  %.not441.us.us.us.i = icmp slt i32 %i.si, %i.ju
  %or.cond302 = select i1 %.not440.us.us.us.i, i1 %.not441.us.us.us.i, i1 false
  br i1 %or.cond302, label %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, label %.loopexit892.us.us.us.i

_ZN4ncnn3MatD2Ev.exit452.us.us.us.i:              ; preds = %bb.bj
  %i.sj = add nuw nsw i64 %indvars.iv1298.i, %i.th
  %i.sk = shl i64 %i.sj, 2
  %i.sl = and i64 %i.sk, 4294967292
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.1341993.us.us.i, i64 %i.sl
  %i.sn = load ptr, ptr %1, align 8, !tbaa !18, !noalias !274
  %i.so = load i64, ptr %i.ke, align 8, !tbaa !20, !noalias !274
  %i.sp = load i64, ptr %i.ak, align 8, !tbaa !57, !noalias !274 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.sp, %i.so ; 2 uses
  %i.sq = mul i64 %i.tj, %i.sp
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.sn, i64 %i.sq
  %i.sr = sext i32 %i.si to i64
  %invariant.gep967.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.sr ; 2 uses
  %.reass.us987.us.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv1308.i
  %gep968.us.us.us.i = getelementptr i8, ptr %invariant.gep967.us.us.us.i, i64 %.reass.us987.us.us.i
  %i.ss = load float, ptr %gep968.us.us.us.i, align 4, !tbaa !39
  %.reass.us987.us.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.rw
  %gep968.us.us.us.1.i = getelementptr i8, ptr %invariant.gep967.us.us.us.i, i64 %.reass.us987.us.us.1.i
  %i.st = load float, ptr %gep968.us.us.us.1.i, align 4, !tbaa !39
  %i.su = load <4 x float>, ptr %i.sm, align 4, !tbaa !39 ; 2 uses
  %i.sv = shufflevector <4 x float> %i.su, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.sw = insertelement <2 x float> poison, float %i.ss, i64 0
  %i.sx = shufflevector <2 x float> %i.sw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sy = fmul fast <2 x float> %i.sv, %i.sx
  %i.sz = fadd fast <2 x float> %i.sd, %i.sy
  %i.ta = shufflevector <4 x float> %i.su, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.tb = insertelement <2 x float> poison, float %i.st, i64 0
  %i.tc = shufflevector <2 x float> %i.tb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.td = fmul fast <2 x float> %i.ta, %i.tc
  %i.te = fadd fast <2 x float> %i.td, %i.sz
  br label %.loopexit892.us.us.us.i

.loopexit892.us.us.us.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, %bb.bj, %bb.bi
  %i.tf = phi <2 x float> [ %i.sd, %bb.bi ], [ %i.sd, %bb.bj ], [ %i.te, %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i ] ; 2 uses
  %indvars.iv.next1299.i = add nuw nsw i64 %indvars.iv1298.i, 1 ; 2 uses
  %exitcond1302.not.i = icmp eq i64 %indvars.iv.next1299.i, %i.rt
  br i1 %exitcond1302.not.i, label %..loopexit896_crit_edge.us.us.us.i, label %bb.bi, !llvm.loop !277

..loopexit896_crit_edge.us.us.us.i:               ; preds = %.loopexit892.us.us.us.i, %bb.bh, %bb.bg
  %i.tg = phi <2 x float> [ %i.rx, %bb.bg ], [ %i.rx, %bb.bh ], [ %i.tf, %.loopexit892.us.us.us.i ] ; 3 uses
  %indvars.iv.next1304.i = add nuw nsw i64 %indvars.iv1303.i, 1 ; 2 uses
  %exitcond1307.not.i = icmp eq i64 %indvars.iv.next1304.i, %wide.trip.count1287.i
  br i1 %exitcond1307.not.i, label %._crit_edge.split.us.us.us1012.i, label %bb.bg, !llvm.loop !278

.preheader895.us.us.us.i:                         ; preds = %bb.bh
  %i.th = mul nuw nsw i64 %indvars.iv1303.i, %i.rt
  %i.ti = sext i32 %i.sc to i64
  %i.tj = mul nsw i64 %i.ti, %i.kq
  br label %bb.bi

._crit_edge.split.us.us.us1012.i:                 ; preds = %..loopexit896_crit_edge.us.us.us.i
  %i.tk = getelementptr inbounds [4 x i8], ptr %.1341993.us.us.i, i64 %i.mv ; 2 uses
  %indvars.iv.next1309.i = add nuw nsw i64 %indvars.iv1308.i, 2 ; 2 uses
  %i.tl = trunc i64 %indvars.iv.next1309.i to i32 ; 2 uses
  %i.tm = or i32 %i.tl, 1
  %i.tn = icmp slt i32 %i.tm, %i.jt
  br i1 %i.tn, label %.preheader900.us.us.i, label %.preheader902.i, !llvm.loop !279

.preheader902.i:                                  ; preds = %._crit_edge.split.us.us.us1012.i, %.preheader900.us.preheader.i, %.preheader900.preheader.i, %._crit_edge950.i
  %.1344.lcssa.i = phi i32 [ %.0343.lcssa.i, %._crit_edge950.i ], [ %i.rh, %.preheader900.preheader.i ], [ %i.rs, %.preheader900.us.preheader.i ], [ %i.tl, %._crit_edge.split.us.us.us1012.i ] ; 2 uses
  %.1341.lcssa.i = phi ptr [ %.0340.lcssa.i, %._crit_edge950.i ], [ %scevgep1292.i, %.preheader900.preheader.i ], [ %scevgep1294.i, %.preheader900.us.preheader.i ], [ %i.tk, %._crit_edge.split.us.us.us1012.i ]
  %i.to = phi <2 x float> [ %i.qo, %._crit_edge950.i ], [ %i.qo, %.preheader900.preheader.i ], [ %i.qo, %.preheader900.us.preheader.i ], [ %i.tg, %._crit_edge.split.us.us.us1012.i ] ; 3 uses
  %i.tp = icmp slt i32 %.1344.lcssa.i, %i.jt
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
  %.neg873.i = add nuw nsw i32 %.03191055.i, 1
  %invariant.op1022.i = sub i32 %.neg873.i, %i.tv
  %i.tw = load i32, ptr %i.e, align 4             ; 2 uses
  %i.tx = icmp sgt i32 %.fr1225.i, 0
  %or.cond1442.i = and i1 %i.mq, %i.tx
  br i1 %or.cond1442.i, label %.preheader899.us.us.preheader.i, label %._crit_edge1040.i

.preheader899.us.us.preheader.i:                  ; preds = %.preheader899.lr.ph.i
  %i.ty = zext nneg i32 %.fr1225.i to i64         ; 2 uses
  %i.tz = zext i32 %.1344.lcssa.i to i64
  br label %.preheader899.us.us.i

.preheader899.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1052.i, %.preheader899.us.us.preheader.i
  %indvars.iv1321.i = phi i64 [ %i.tz, %.preheader899.us.us.preheader.i ], [ %indvars.iv.next1322.i, %._crit_edge.split.us.us.us1052.i ] ; 2 uses
  %.23421036.us.us.i = phi ptr [ %.1341.lcssa.i, %.preheader899.us.us.preheader.i ], [ %i.vk, %._crit_edge.split.us.us.us1052.i ] ; 2 uses
  %i.ua = phi <2 x float> [ %i.to, %.preheader899.us.us.preheader.i ], [ %i.vg, %._crit_edge.split.us.us.us1052.i ]
  br label %bb.bk

bb.bk:                                            ; preds = %..loopexit894_crit_edge.us.us.us.i, %.preheader899.us.us.i
  %indvars.iv1316.i = phi i64 [ %indvars.iv.next1317.i, %..loopexit894_crit_edge.us.us.us.i ], [ 0, %.preheader899.us.us.i ] ; 3 uses
  %i.ub = phi <2 x float> [ %i.vg, %..loopexit894_crit_edge.us.us.us.i ], [ %i.ua, %.preheader899.us.us.i ] ; 3 uses
  %i.uc = trunc i64 %indvars.iv1316.i to i32
  %i.ud = mul i32 %i.tq, %i.uc
  %.reass1030.us.us.us.i = add i32 %i.ud, %invariant.op1029.i ; 3 uses
  %i.ue = icmp slt i32 %.reass1030.us.us.us.i, 0
  br i1 %i.ue, label %..loopexit894_crit_edge.us.us.us.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.uf = srem i32 %.reass1030.us.us.us.i, %i.ts
  %i.ug = sdiv i32 %.reass1030.us.us.us.i, %i.ts  ; 2 uses
  %.not434.us.us.us.i = icmp eq i32 %i.uf, 0
  %.not435.us.us.us.i = icmp slt i32 %i.ug, %i.jv
  %or.cond303 = select i1 %.not434.us.us.us.i, i1 %.not435.us.us.us.i, i1 false
  br i1 %or.cond303, label %.preheader893.us.us.us.i, label %..loopexit894_crit_edge.us.us.us.i

bb.bm:                                            ; preds = %.preheader893.us.us.us.i, %bb.bo
  %indvars.iv1311.i = phi i64 [ 0, %.preheader893.us.us.us.i ], [ %indvars.iv.next1312.i, %bb.bo ] ; 3 uses
  %i.uh = phi <2 x float> [ %i.ub, %.preheader893.us.us.us.i ], [ %i.vf, %bb.bo ] ; 3 uses
  %i.ui = trunc i64 %indvars.iv1311.i to i32
  %i.uj = mul i32 %i.tu, %i.ui
  %.reass.us1031.us.us.i = add i32 %invariant.op1022.i, %i.uj ; 3 uses
  %i.uk = icmp slt i32 %.reass.us1031.us.us.i, 0
  br i1 %i.uk, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ul = srem i32 %.reass.us1031.us.us.i, %i.tw
  %i.um = sdiv i32 %.reass.us1031.us.us.i, %i.tw  ; 2 uses
  %.not436.us.us.us.i = icmp eq i32 %i.ul, 0
  %.not437.us.us.us.i = icmp slt i32 %i.um, %i.ju
  %or.cond304 = select i1 %.not436.us.us.us.i, i1 %.not437.us.us.us.i, i1 false
  br i1 %or.cond304, label %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, label %bb.bo

_ZN4ncnn3MatD2Ev.exit451.us.us.us.i:              ; preds = %bb.bn
  %i.un = add nuw nsw i64 %indvars.iv1311.i, %i.vh
  %.idx.i = shl nuw nsw i64 %i.un, 3
  %i.uo = getelementptr inbounds nuw i8, ptr %.23421036.us.us.i, i64 %.idx.i
  %i.up = load ptr, ptr %1, align 8, !tbaa !18, !noalias !280
  %i.uq = load i64, ptr %i.ke, align 8, !tbaa !20, !noalias !280
  %i.ur = mul i64 %i.uq, %indvars.iv1321.i
  %i.us = load i64, ptr %i.ak, align 8, !tbaa !57, !noalias !280 ; 2 uses
  %i.ut = mul i64 %i.ur, %i.us
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.ut
  %i.uv = mul i64 %i.vj, %i.us
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.uv
  %i.ux = sext i32 %i.um to i64
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.ux
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !39
  %i.va = load <2 x float>, ptr %i.uo, align 4, !tbaa !39
  %i.vb = insertelement <2 x float> poison, float %i.uz, i64 0
  %i.vc = shufflevector <2 x float> %i.vb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vd = fmul fast <2 x float> %i.va, %i.vc
  %i.ve = fadd fast <2 x float> %i.vd, %i.uh
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, %bb.bn, %bb.bm
  %i.vf = phi <2 x float> [ %i.uh, %bb.bm ], [ %i.uh, %bb.bn ], [ %i.ve, %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i ] ; 2 uses
  %indvars.iv.next1312.i = add nuw nsw i64 %indvars.iv1311.i, 1 ; 2 uses
  %exitcond1315.not.i = icmp eq i64 %indvars.iv.next1312.i, %i.ty
  br i1 %exitcond1315.not.i, label %..loopexit894_crit_edge.us.us.us.i, label %bb.bm, !llvm.loop !283

..loopexit894_crit_edge.us.us.us.i:               ; preds = %bb.bo, %bb.bl, %bb.bk
  %i.vg = phi <2 x float> [ %i.ub, %bb.bk ], [ %i.ub, %bb.bl ], [ %i.vf, %bb.bo ] ; 3 uses
  %indvars.iv.next1317.i = add nuw nsw i64 %indvars.iv1316.i, 1 ; 2 uses
  %exitcond1320.not.i = icmp eq i64 %indvars.iv.next1317.i, %wide.trip.count1287.i
  br i1 %exitcond1320.not.i, label %._crit_edge.split.us.us.us1052.i, label %bb.bk, !llvm.loop !284

.preheader893.us.us.us.i:                         ; preds = %bb.bl
  %i.vh = mul nuw nsw i64 %indvars.iv1316.i, %i.ty
  %i.vi = sext i32 %i.ug to i64
  %i.vj = mul nsw i64 %i.vi, %i.kq
  br label %bb.bm

._crit_edge.split.us.us.us1052.i:                 ; preds = %..loopexit894_crit_edge.us.us.us.i
  %i.vk = getelementptr inbounds [4 x i8], ptr %.23421036.us.us.i, i64 %i.mx
  %indvars.iv.next1322.i = add nuw nsw i64 %indvars.iv1321.i, 1 ; 2 uses
  %i.vl = trunc nuw i64 %indvars.iv.next1322.i to i32
  %i.vm = icmp sgt i32 %i.jt, %i.vl
  br i1 %i.vm, label %.preheader899.us.us.i, label %._crit_edge1040.i, !llvm.loop !285

._crit_edge1040.i:                                ; preds = %._crit_edge.split.us.us.us1052.i, %.preheader899.lr.ph.i, %.preheader902.i
  %i.vn = phi <2 x float> [ %i.to, %.preheader902.i ], [ %i.to, %.preheader899.lr.ph.i ], [ %i.vg, %._crit_edge.split.us.us.us1052.i ] ; 11 uses
  switch i32 %i.mn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i [
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
  %i.vp = load ptr, ptr %i.iu, align 8, !tbaa !18
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !39
  %i.vr = fcmp fast ogt <2 x float> %i.vn, zeroinitializer
  %i.vs = insertelement <2 x float> poison, float %i.vq, i64 0
  %i.vt = shufflevector <2 x float> %i.vs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vu = select <2 x i1> %i.vr, <2 x float> splat (float 1.000000e+00), <2 x float> %i.vt
  %i.vv = fmul fast <2 x float> %i.vu, %i.vn
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread842.i: ; preds = %._crit_edge1040.i
  %i.vw = load ptr, ptr %i.iu, align 8, !tbaa !18 ; 2 uses
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !39
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 4
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !39 ; 3 uses
  %i.wa = insertelement <2 x float> poison, float %i.vx, i64 0
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
end_hunk_0
begin_hunk_1_@_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.aaz = mul nsw i64 %i.aay, %i.ly
  br label %.lr.ph.split.us1083.us.us.us.i.us

.lr.ph.split.us1083.us.us.us.i.us:                ; preds = %.preheader885.us.us.us.i.us160, %bb.cc
  %indvars.iv1339.i.us = phi i64 [ %indvars.iv.next1340.i.us, %bb.cc ], [ 0, %.preheader885.us.us.us.i.us160 ] ; 3 uses
  %.28241077.us1085.us.us.us.i.us = phi <4 x float> [ %.3825.us1089.us.us.us.i.us, %bb.cc ], [ %.18231093.us.us.us.i.us156, %.preheader885.us.us.us.i.us160 ] ; 3 uses
  %i.aba = trunc i64 %indvars.iv1339.i.us to i32
  %i.abb = mul i32 %i.zd, %i.aba
  %.reass1081.us1086.us.us.us.i.us = add i32 %i.abb, %invariant.op1080.i ; 3 uses
  %i.abc = icmp slt i32 %.reass1081.us1086.us.us.us.i.us, 0
  br i1 %i.abc, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.split.us1083.us.us.us.i.us
  %i.abd = srem i32 %.reass1081.us1086.us.us.us.i.us, %i.zf
  %i.abe = sdiv i32 %.reass1081.us1086.us.us.us.i.us, %i.zf ; 2 uses
  %.not431.us1087.us.us.us.i.us = icmp eq i32 %i.abd, 0
  %.not432.us1088.us.us.us.i.us = icmp slt i32 %i.abe, %i.kz
  %or.cond308 = select i1 %.not431.us1087.us.us.us.i.us, i1 %.not432.us1088.us.us.us.i.us, i1 false
  br i1 %or.cond308, label %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, label %bb.cc

_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us:        ; preds = %bb.cb
  %i.abf = load ptr, ptr %1, align 8, !tbaa !18, !noalias !294
  %i.abg = load i64, ptr %i.lj, align 8, !tbaa !20, !noalias !294
  %i.abh = load i64, ptr %i.ak, align 8, !tbaa !57, !noalias !294 ; 2 uses
  %factor.op.mul1072.us.us.us.us.i.us = mul i64 %i.abh, %i.abg ; 4 uses
  %i.abi = mul i64 %i.aaz, %i.abh
  %invariant.gep.us.us.us1125.us.i.us = getelementptr i8, ptr %i.abf, i64 %i.abi
  %i.abj = sext i32 %i.abe to i64
  %invariant.gep1074.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us1125.us.i.us, i64 %i.abj ; 4 uses
  %.reass1073.us.us.us.us.i.us = mul i64 %factor.op.mul1072.us.us.us.us.i.us, %indvars.iv1354.i
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
  %i.abo = add nuw nsw i64 %indvars.iv1339.i.us, %i.aax
  %i.abp = shl i64 %i.abo, 2
  %i.abq = and i64 %i.abp, 4294967292
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %.03661110.us.us.i, i64 %i.abq
  %i.abs = load <4 x float>, ptr %i.abr, align 16, !tbaa !245
  %i.abt = fmul fast <4 x float> %i.abs, %.sroa.0.12.vec.insert.i.us
  %i.abu = fadd fast <4 x float> %i.abt, %.28241077.us1085.us.us.us.i.us
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, %bb.cb, %.lr.ph.split.us1083.us.us.us.i.us
  %.3825.us1089.us.us.us.i.us = phi nsz <4 x float> [ %.28241077.us1085.us.us.us.i.us, %.lr.ph.split.us1083.us.us.us.i.us ], [ %i.abu, %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us ], [ %.28241077.us1085.us.us.us.i.us, %bb.cb ] ; 2 uses
  %indvars.iv.next1340.i.us = add nuw nsw i64 %indvars.iv1339.i.us, 1 ; 2 uses
  %exitcond1343.not.i.us = icmp eq i64 %indvars.iv.next1340.i.us, %i.zh
  br i1 %exitcond1343.not.i.us, label %..loopexit886_crit_edge.us.us.us.i.us161, label %.lr.ph.split.us1083.us.us.us.i.us, !llvm.loop !292

..loopexit886_crit_edge.us.us.us.i.us161:         ; preds = %bb.cc, %bb.ca, %.preheader889.us.us.i.split.us154
  %.4826.us.us.us.i.us162 = phi nsz <4 x float> [ %.18231093.us.us.us.i.us156, %.preheader889.us.us.i.split.us154 ], [ %.18231093.us.us.us.i.us156, %bb.ca ], [ %.3825.us1089.us.us.us.i.us, %bb.cc ] ; 2 uses
  %indvars.iv.next1350.i.us163 = add nuw nsw i64 %indvars.iv1349.i.us155, 1 ; 2 uses
  %exitcond1353.not.i.us164 = icmp eq i64 %indvars.iv.next1350.i.us163, %wide.trip.count1352.i
  br i1 %exitcond1353.not.i.us164, label %._crit_edge1096.split.us.us.us.i, label %.preheader889.us.us.i.split.us154, !llvm.loop !293

._crit_edge1096.split.us.us.us.i:                 ; preds = %..loopexit886_crit_edge.us.us.us.i.us161, %..loopexit886_crit_edge.us.us.us.i.us, %.preheader889.us.us.i
  %.us-phi153 = phi <4 x float> [ %.4826.us.us.us.i.us, %..loopexit886_crit_edge.us.us.us.i.us ], [ %.08221109.us.us.i, %.preheader889.us.us.i ], [ %.4826.us.us.us.i.us162, %..loopexit886_crit_edge.us.us.us.i.us161 ] ; 2 uses
  %i.abv = getelementptr inbounds [4 x i8], ptr %.03661110.us.us.i, i64 %i.ys ; 2 uses
  %indvars.iv.next1355.i = add nuw nsw i64 %indvars.iv1354.i, 4 ; 2 uses
  %i.abw = icmp slt i64 %indvars.iv.next1355.i, %invariant.op1441.i
  br i1 %i.abw, label %.preheader889.us.us.i, label %._crit_edge1114.i, !llvm.loop !297

._crit_edge1114.i:                                ; preds = %._crit_edge1096.split.us.us.us.i, %.preheader889.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit449.i
  %.0822.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit449.i ], [ zeroinitializer, %.preheader889.lr.ph.i ], [ %.us-phi153, %._crit_edge1096.split.us.us.us.i ] ; 2 uses
  %.0366.lcssa.i = phi ptr [ %i.yn, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %scevgep1332.i, %.preheader889.lr.ph.i ], [ %i.abv, %._crit_edge1096.split.us.us.us.i ] ; 4 uses
  %.0363.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %i.lp, %.preheader889.lr.ph.i ], [ %i.lz, %._crit_edge1096.split.us.us.us.i ] ; 9 uses
  %i.abx = shufflevector <4 x float> %.0822.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.aby = fadd fast <4 x float> %i.abx, %.0822.lcssa.i ; 2 uses
  %i.abz = extractelement <4 x float> %i.aby, i64 1
  %i.aca = extractelement <4 x float> %i.aby, i64 0
  %i.acb = fadd fast float %i.abz, %.0369.i
  %i.acc = fadd fast float %i.acb, %i.aca         ; 4 uses
  %i.acd = or disjoint i32 %.0363.lcssa.i, 1
  %i.ace = icmp slt i32 %i.acd, %i.ky
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
  %.neg865.i = add nuw nsw i32 %.03851204.i, 1
  %invariant.op1142.i = sub i32 %.neg865.i, %i.ack
  %i.acl = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.yp, label %.preheader888.lr.ph.split.us.i, label %.preheader888.preheader.i

.preheader888.preheader.i:                        ; preds = %.preheader888.lr.ph.i
  %i.acm = or disjoint i32 %.0363.lcssa.i, 3
  %smax1357.i = call i32 @llvm.smax.i32(i32 %i.ky, i32 %i.acm)
  %reass.sub168 = sub i32 %smax1357.i, %.0363.lcssa.i
  %i.acn = add i32 %reass.sub168, -2              ; 2 uses
  %i.aco = lshr i32 %i.acn, 1
  %i.acp = zext nneg i32 %i.aco to i64
  %i.acq = shl nuw nsw i64 %i.acp, 2
  %i.acr = add nuw nsw i64 %i.acq, 4
  %i.acs = mul i64 %i.acr, %i.yu
  %scevgep1358.i = getelementptr i8, ptr %.0366.lcssa.i, i64 %i.acs
  %i.act = or disjoint i32 %.0363.lcssa.i, 2
  %i.acu = and i32 %i.acn, -2
  %i.acv = add i32 %i.act, %i.acu
  br label %.preheader890.i

.preheader888.lr.ph.split.us.i:                   ; preds = %.preheader888.lr.ph.i
  %i.acw = icmp sgt i32 %.fr1227.i, 0
  br i1 %i.acw, label %.preheader888.us.us.preheader.i, label %.preheader888.us.preheader.i

.preheader888.us.preheader.i:                     ; preds = %.preheader888.lr.ph.split.us.i
  %i.acx = or disjoint i32 %.0363.lcssa.i, 3
  %smax1359.i = call i32 @llvm.smax.i32(i32 %i.ky, i32 %i.acx)
  %reass.sub169 = sub i32 %smax1359.i, %.0363.lcssa.i
  %i.acy = add i32 %reass.sub169, -2              ; 2 uses
  %i.acz = lshr i32 %i.acy, 1
  %i.ada = zext nneg i32 %i.acz to i64
  %i.adb = shl nuw nsw i64 %i.ada, 2
  %i.adc = add nuw nsw i64 %i.adb, 4
  %i.add = mul i64 %i.adc, %i.yu
  %scevgep1360.i = getelementptr i8, ptr %.0366.lcssa.i, i64 %i.add
  %i.ade = or disjoint i32 %.0363.lcssa.i, 2
  %i.adf = and i32 %i.acy, -2
  %i.adg = add i32 %i.ade, %i.adf
  br label %.preheader890.i

.preheader888.us.us.preheader.i:                  ; preds = %.preheader888.lr.ph.split.us.i
  %i.adh = zext nneg i32 %.fr1227.i to i64        ; 2 uses
  %i.adi = zext i32 %.0363.lcssa.i to i64
  br label %.preheader888.us.us.i

.preheader888.us.us.i:                            ; preds = %._crit_edge1147.split.us.us.us.i, %.preheader888.us.us.preheader.i
  %indvars.iv1374.i = phi i64 [ %i.adi, %.preheader888.us.us.preheader.i ], [ %indvars.iv.next1375.i, %._crit_edge1147.split.us.us.us.i ] ; 3 uses
  %.13671154.us.us.i = phi ptr [ %.0366.lcssa.i, %.preheader888.us.us.preheader.i ], [ %i.aen, %._crit_edge1147.split.us.us.us.i ] ; 2 uses
  %.13701153.us.us.i = phi float [ %i.acc, %.preheader888.us.us.preheader.i ], [ %.8377.us.us.us.i, %._crit_edge1147.split.us.us.us.i ]
  %i.adj = or disjoint i64 %indvars.iv1374.i, 1
  br label %bb.cd

bb.cd:                                            ; preds = %..loopexit884_crit_edge.us.us.us.i, %.preheader888.us.us.i
  %indvars.iv1369.i = phi i64 [ %indvars.iv.next1370.i, %..loopexit884_crit_edge.us.us.us.i ], [ 0, %.preheader888.us.us.i ] ; 3 uses
  %.23711144.us.us.us.i = phi float [ %.8377.us.us.us.i, %..loopexit884_crit_edge.us.us.us.i ], [ %.13701153.us.us.i, %.preheader888.us.us.i ] ; 3 uses
  %i.adk = trunc i64 %indvars.iv1369.i to i32
  %i.adl = mul i32 %i.acf, %i.adk
  %.reass1150.us.us.us.i = add i32 %i.adl, %invariant.op1149.i ; 3 uses
  %i.adm = icmp slt i32 %.reass1150.us.us.us.i, 0
  br i1 %i.adm, label %..loopexit884_crit_edge.us.us.us.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.adn = srem i32 %.reass1150.us.us.us.i, %i.ach
  %i.ado = sdiv i32 %.reass1150.us.us.us.i, %i.ach ; 2 uses
  %.not425.us.us.us.i = icmp eq i32 %i.adn, 0
  %.not426.us.us.us.i = icmp slt i32 %i.ado, %i.la
  %or.cond309 = select i1 %.not425.us.us.us.i, i1 %.not426.us.us.us.i, i1 false
  br i1 %or.cond309, label %.preheader883.us.us.us.i, label %..loopexit884_crit_edge.us.us.us.i

bb.cf:                                            ; preds = %.preheader883.us.us.us.i, %.loopexit.us.us.us.i
  %indvars.iv1364.i = phi i64 [ 0, %.preheader883.us.us.us.i ], [ %indvars.iv.next1365.i, %.loopexit.us.us.us.i ] ; 3 uses
  %.33721139.us.us.us.i = phi float [ %.23711144.us.us.us.i, %.preheader883.us.us.us.i ], [ %.6375.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %i.adp = trunc i64 %indvars.iv1364.i to i32
  %i.adq = mul i32 %i.acj, %i.adp
  %.reass1143.us.us.us.i = add i32 %invariant.op1142.i, %i.adq ; 3 uses
  %i.adr = icmp slt i32 %.reass1143.us.us.us.i, 0
  br i1 %i.adr, label %.loopexit.us.us.us.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ads = srem i32 %.reass1143.us.us.us.i, %i.acl
  %i.adt = sdiv i32 %.reass1143.us.us.us.i, %i.acl ; 2 uses
  %.not427.us.us.us.i = icmp eq i32 %i.ads, 0
  %.not428.us.us.us.i = icmp slt i32 %i.adt, %i.kz
  %or.cond310 = select i1 %.not427.us.us.us.i, i1 %.not428.us.us.us.i, i1 false
  br i1 %or.cond310, label %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit446.us.us.us.i:              ; preds = %bb.cg
  %i.adu = add nuw nsw i64 %indvars.iv1364.i, %i.aek
  %.idx1431.i = shl nuw nsw i64 %i.adu, 3
  %i.adv = getelementptr inbounds nuw i8, ptr %.13671154.us.us.i, i64 %.idx1431.i ; 2 uses
  %i.adw = load ptr, ptr %1, align 8, !tbaa !18, !noalias !298
  %i.adx = load i64, ptr %i.lj, align 8, !tbaa !20, !noalias !298
  %i.ady = load i64, ptr %i.ak, align 8, !tbaa !57, !noalias !298 ; 2 uses
  %factor.op.mul1133.us.us.us.i = mul i64 %i.ady, %i.adx ; 2 uses
  %i.adz = mul i64 %i.aem, %i.ady
  %invariant.gep.us.us.us1171.i = getelementptr i8, ptr %i.adw, i64 %i.adz
  %i.aea = sext i32 %i.adt to i64
  %invariant.gep1135.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us1171.i, i64 %i.aea ; 2 uses
  %.reass1134.us.us.us.i = mul i64 %factor.op.mul1133.us.us.us.i, %indvars.iv1374.i
  %gep1136.us.us.us.i = getelementptr i8, ptr %invariant.gep1135.us.us.us.i, i64 %.reass1134.us.us.us.i
  %i.aeb = load float, ptr %gep1136.us.us.us.i, align 4, !tbaa !39
  %i.aec = load float, ptr %i.adv, align 4, !tbaa !39
  %i.aed = fmul fast float %i.aec, %i.aeb
  %i.aee = fadd fast float %.33721139.us.us.us.i, %i.aed
  %.reass1134.us.us.us.1.i = mul i64 %factor.op.mul1133.us.us.us.i, %i.adj
  %gep1136.us.us.us.1.i = getelementptr i8, ptr %invariant.gep1135.us.us.us.i, i64 %.reass1134.us.us.us.1.i
  %i.aef = load float, ptr %gep1136.us.us.us.1.i, align 4, !tbaa !39
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adv, i64 4
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !39
  %i.aei = fmul fast float %i.aeh, %i.aef
  %i.aej = fadd fast float %i.aei, %i.aee
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, %bb.cg, %bb.cf
  %.6375.us.us.us.i = phi nsz float [ %.33721139.us.us.us.i, %bb.cf ], [ %.33721139.us.us.us.i, %bb.cg ], [ %i.aej, %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i ] ; 2 uses
  %indvars.iv.next1365.i = add nuw nsw i64 %indvars.iv1364.i, 1 ; 2 uses
  %exitcond1368.not.i = icmp eq i64 %indvars.iv.next1365.i, %i.adh
  br i1 %exitcond1368.not.i, label %..loopexit884_crit_edge.us.us.us.i, label %bb.cf, !llvm.loop !301

..loopexit884_crit_edge.us.us.us.i:               ; preds = %.loopexit.us.us.us.i, %bb.ce, %bb.cd
  %.8377.us.us.us.i = phi nsz float [ %.23711144.us.us.us.i, %bb.cd ], [ %.23711144.us.us.us.i, %bb.ce ], [ %.6375.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next1370.i = add nuw nsw i64 %indvars.iv1369.i, 1 ; 2 uses
  %exitcond1373.not.i = icmp eq i64 %indvars.iv.next1370.i, %wide.trip.count1352.i
  br i1 %exitcond1373.not.i, label %._crit_edge1147.split.us.us.us.i, label %bb.cd, !llvm.loop !302

.preheader883.us.us.us.i:                         ; preds = %bb.ce
  %i.aek = mul nuw nsw i64 %indvars.iv1369.i, %i.adh
  %i.ael = sext i32 %i.ado to i64
  %i.aem = mul nsw i64 %i.ael, %i.ly
  br label %bb.cf

._crit_edge1147.split.us.us.us.i:                 ; preds = %..loopexit884_crit_edge.us.us.us.i
  %i.aen = getelementptr inbounds [4 x i8], ptr %.13671154.us.us.i, i64 %i.yu ; 2 uses
  %indvars.iv.next1375.i = add nuw nsw i64 %indvars.iv1374.i, 2 ; 2 uses
  %i.aeo = trunc i64 %indvars.iv.next1375.i to i32 ; 2 uses
  %i.aep = or i32 %i.aeo, 1
  %i.aeq = icmp slt i32 %i.aep, %i.ky
  br i1 %i.aeq, label %.preheader888.us.us.i, label %.preheader890.i, !llvm.loop !303

.preheader890.i:                                  ; preds = %._crit_edge1147.split.us.us.us.i, %.preheader888.us.preheader.i, %.preheader888.preheader.i, %._crit_edge1114.i
  %.1370.lcssa.i = phi float [ %i.acc, %._crit_edge1114.i ], [ %i.acc, %.preheader888.preheader.i ], [ %i.acc, %.preheader888.us.preheader.i ], [ %.8377.us.us.us.i, %._crit_edge1147.split.us.us.us.i ] ; 3 uses
  %.1367.lcssa.i = phi ptr [ %.0366.lcssa.i, %._crit_edge1114.i ], [ %scevgep1358.i, %.preheader888.preheader.i ], [ %scevgep1360.i, %.preheader888.us.preheader.i ], [ %i.aen, %._crit_edge1147.split.us.us.us.i ]
  %.1364.lcssa.i = phi i32 [ %.0363.lcssa.i, %._crit_edge1114.i ], [ %i.acv, %.preheader888.preheader.i ], [ %i.adg, %.preheader888.us.preheader.i ], [ %i.aeo, %._crit_edge1147.split.us.us.us.i ] ; 2 uses
  %i.aer = icmp slt i32 %.1364.lcssa.i, %i.ky
  br i1 %i.aer, label %.preheader887.lr.ph.i, label %._crit_edge1193.i

.preheader887.lr.ph.i:                            ; preds = %.preheader890.i
  %i.aes = load i32, ptr %i.d, align 4
  %i.aet = load i32, ptr %i.j, align 4
  %invariant.op1185.i = sub i32 %.neg867.i, %i.aet
  %i.aeu = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aev = load i32, ptr %i.a, align 4
  %.fr1228.i = freeze i32 %i.aev                  ; 2 uses
  %i.aew = load i32, ptr %i.c, align 4
  %i.aex = load i32, ptr %i.i, align 4
  %.neg861.i = add nuw nsw i32 %.03851204.i, 1
  %invariant.op1178.i = sub i32 %.neg861.i, %i.aex
  %i.aey = load i32, ptr %i.e, align 4            ; 2 uses
  %i.aez = icmp sgt i32 %.fr1228.i, 0
  %or.cond1444.i = and i1 %i.yp, %i.aez
  br i1 %or.cond1444.i, label %.preheader887.us.us.preheader.i, label %._crit_edge1193.i

.preheader887.us.us.preheader.i:                  ; preds = %.preheader887.lr.ph.i
  %i.afa = zext nneg i32 %.fr1228.i to i64        ; 2 uses
  %i.afb = zext i32 %.1364.lcssa.i to i64
  br label %.preheader887.us.us.i

.preheader887.us.us.i:                            ; preds = %._crit_edge1183.split.us.us.us.i, %.preheader887.us.us.preheader.i
  %indvars.iv1387.i = phi i64 [ %i.afb, %.preheader887.us.us.preheader.i ], [ %indvars.iv.next1388.i, %._crit_edge1183.split.us.us.us.i ] ; 2 uses
  %.23681190.us.us.i = phi ptr [ %.1367.lcssa.i, %.preheader887.us.us.preheader.i ], [ %i.agf, %._crit_edge1183.split.us.us.us.i ] ; 2 uses
  %.93781189.us.us.i = phi float [ %.1370.lcssa.i, %.preheader887.us.us.preheader.i ], [ %.15384.us.us.us.i, %._crit_edge1183.split.us.us.us.i ]
  br label %bb.ch

bb.ch:                                            ; preds = %..loopexit882_crit_edge.us.us.us.i, %.preheader887.us.us.i
  %indvars.iv1382.i = phi i64 [ %indvars.iv.next1383.i, %..loopexit882_crit_edge.us.us.us.i ], [ 0, %.preheader887.us.us.i ] ; 3 uses
  %.103791180.us.us.us.i = phi float [ %.15384.us.us.us.i, %..loopexit882_crit_edge.us.us.us.i ], [ %.93781189.us.us.i, %.preheader887.us.us.i ] ; 3 uses
  %i.afc = trunc i64 %indvars.iv1382.i to i32
  %i.afd = mul i32 %i.aes, %i.afc
  %.reass1186.us.us.us.i = add i32 %i.afd, %invariant.op1185.i ; 3 uses
  %i.afe = icmp slt i32 %.reass1186.us.us.us.i, 0
  br i1 %i.afe, label %..loopexit882_crit_edge.us.us.us.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aff = srem i32 %.reass1186.us.us.us.i, %i.aeu
  %i.afg = sdiv i32 %.reass1186.us.us.us.i, %i.aeu ; 2 uses
  %.not421.us.us.us.i = icmp eq i32 %i.aff, 0
  %.not422.us.us.us.i = icmp slt i32 %i.afg, %i.la
  %or.cond311 = select i1 %.not421.us.us.us.i, i1 %.not422.us.us.us.i, i1 false
  br i1 %or.cond311, label %.preheader.us.us.us.i, label %..loopexit882_crit_edge.us.us.us.i

bb.cj:                                            ; preds = %.preheader.us.us.us.i, %bb.cl
  %indvars.iv1377.i = phi i64 [ 0, %.preheader.us.us.us.i ], [ %indvars.iv.next1378.i, %bb.cl ] ; 3 uses
  %.113801175.us.us.us.i = phi float [ %.103791180.us.us.us.i, %.preheader.us.us.us.i ], [ %.13382.us.us.us.i, %bb.cl ] ; 3 uses
  %i.afh = trunc i64 %indvars.iv1377.i to i32
  %i.afi = mul i32 %i.aew, %i.afh
  %.reass1179.us.us.us.i = add i32 %invariant.op1178.i, %i.afi ; 3 uses
  %i.afj = icmp slt i32 %.reass1179.us.us.us.i, 0
  br i1 %i.afj, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.afk = srem i32 %.reass1179.us.us.us.i, %i.aey
  %i.afl = sdiv i32 %.reass1179.us.us.us.i, %i.aey ; 2 uses
  %.not423.us.us.us.i = icmp eq i32 %i.afk, 0
  %.not424.us.us.us.i = icmp slt i32 %i.afl, %i.kz
  %or.cond312 = select i1 %.not423.us.us.us.i, i1 %.not424.us.us.us.i, i1 false
  br i1 %or.cond312, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.cl

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.ck
  %i.afm = load ptr, ptr %1, align 8, !tbaa !18, !noalias !304
  %i.afn = load i64, ptr %i.lj, align 8, !tbaa !20, !noalias !304
  %i.afo = mul i64 %i.afn, %indvars.iv1387.i
  %i.afp = load i64, ptr %i.ak, align 8, !tbaa !57, !noalias !304 ; 2 uses
  %i.afq = mul i64 %i.afo, %i.afp
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afm, i64 %i.afq
  %i.afs = mul i64 %i.age, %i.afp
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 %i.afs
  %i.afu = sext i32 %i.afl to i64
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.afu
  %i.afw = load float, ptr %i.afv, align 4, !tbaa !39
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %indvars.iv1377.i
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !39
  %i.afz = fmul fast float %i.afy, %i.afw
  %i.aga = fadd fast float %i.afz, %.113801175.us.us.us.i
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.ck, %bb.cj
  %.13382.us.us.us.i = phi nsz float [ %.113801175.us.us.us.i, %bb.cj ], [ %.113801175.us.us.us.i, %bb.ck ], [ %i.aga, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next1378.i = add nuw nsw i64 %indvars.iv1377.i, 1 ; 2 uses
  %exitcond1381.not.i = icmp eq i64 %indvars.iv.next1378.i, %i.afa
  br i1 %exitcond1381.not.i, label %..loopexit882_crit_edge.us.us.us.i, label %bb.cj, !llvm.loop !307

..loopexit882_crit_edge.us.us.us.i:               ; preds = %bb.cl, %bb.ci, %bb.ch
  %.15384.us.us.us.i = phi nsz float [ %.103791180.us.us.us.i, %bb.ch ], [ %.103791180.us.us.us.i, %bb.ci ], [ %.13382.us.us.us.i, %bb.cl ] ; 3 uses
  %indvars.iv.next1383.i = add nuw nsw i64 %indvars.iv1382.i, 1 ; 2 uses
  %exitcond1386.not.i = icmp eq i64 %indvars.iv.next1383.i, %wide.trip.count1352.i
  br i1 %exitcond1386.not.i, label %._crit_edge1183.split.us.us.us.i, label %bb.ch, !llvm.loop !308

.preheader.us.us.us.i:                            ; preds = %bb.ci
  %i.agb = mul nuw nsw i64 %indvars.iv1382.i, %i.afa
  %i.agc = sext i32 %i.afg to i64
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %.23681190.us.us.i, i64 %i.agb
  %i.age = mul nsw i64 %i.agc, %i.ly
  br label %bb.cj

._crit_edge1183.split.us.us.us.i:                 ; preds = %..loopexit882_crit_edge.us.us.us.i
  %i.agf = getelementptr inbounds [4 x i8], ptr %.23681190.us.us.i, i64 %i.yv
  %indvars.iv.next1388.i = add nuw nsw i64 %indvars.iv1387.i, 1 ; 2 uses
  %i.agg = trunc nuw i64 %indvars.iv.next1388.i to i32
  %i.agh = icmp sgt i32 %i.ky, %i.agg
  br i1 %i.agh, label %.preheader887.us.us.i, label %._crit_edge1193.i, !llvm.loop !309

._crit_edge1193.i:                                ; preds = %._crit_edge1183.split.us.us.us.i, %.preheader887.lr.ph.i, %.preheader890.i
  %.9378.lcssa.i = phi float [ %.1370.lcssa.i, %.preheader890.i ], [ %.1370.lcssa.i, %.preheader887.lr.ph.i ], [ %.15384.us.us.us.i, %._crit_edge1183.split.us.us.us.i ] ; 13 uses
  switch i32 %i.ym, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.cm
    i32 2, label %bb.cn
    i32 3, label %bb.co
    i32 4, label %bb.cq
    i32 5, label %bb.cr
    i32 6, label %bb.cs
  ]

bb.cm:                                            ; preds = %._crit_edge1193.i
  %i.agi = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9378.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cn:                                            ; preds = %._crit_edge1193.i
  %i.agj = load ptr, ptr %i.iu, align 8, !tbaa !18
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !39
  %i.agl = fcmp fast ogt float %.9378.lcssa.i, 0.000000e+00
  %i.agm = select fast i1 %i.agl, float 1.000000e+00, float %i.agk
  %i.agn = fmul fast float %i.agm, %.9378.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.co:                                            ; preds = %._crit_edge1193.i
  %i.ago = load ptr, ptr %i.iu, align 8, !tbaa !18 ; 2 uses
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !39
  %i.agq = getelementptr inbounds nuw i8, ptr %i.ago, i64 4
  %i.agr = load float, ptr %i.agq, align 4, !tbaa !39 ; 2 uses
  %.0820.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9378.lcssa.i, float %i.agp) ; 2 uses
  %i.ags = fcmp fast ogt float %.0820.i, %i.agr
  br i1 %i.ags, label %bb.cp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cp:                                            ; preds = %bb.co
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cq:                                            ; preds = %._crit_edge1193.i
  %.sroa.speculated777.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9378.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated777.i, float f0xC2B0C0A5)
  %i.agt = fneg fast float %.sroa.speculated.i
  %i.agu = call fast float @llvm.exp.f32(float %i.agt)
  %i.agv = fadd fast float %i.agu, 1.000000e+00
  %i.agw = fdiv fast float 1.000000e+00, %i.agv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cr:                                            ; preds = %._crit_edge1193.i
  %i.agx = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9378.lcssa.i)
  %i.agy = fadd fast float %i.agx, 1.000000e+00
  %i.agz = call fast float @llvm.log.f32(float %i.agy)
  %i.aha = call fast float @llvm.tanh.f32(float %i.agz)
  %i.ahb = fmul fast float %i.aha, %.9378.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cs:                                            ; preds = %._crit_edge1193.i
  %i.ahc = load ptr, ptr %i.iu, align 8, !tbaa !18 ; 2 uses
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !39 ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahc, i64 4
  %i.ahf = load float, ptr %i.ahe, align 4, !tbaa !39 ; 2 uses
  %i.ahg = fneg fast float %i.ahf
  %i.ahh = fdiv fast float %i.ahg, %i.ahd         ; 2 uses
  %i.ahi = fcmp fast olt float %.9378.lcssa.i, %i.ahh
end_hunk_1
begin_hunk_2_@_ZNK4ncnn17Deconvolution_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:._crit_edge
  %i.md = load i16, ptr %gep913.us.us.us.us.i.us, align 2, !tbaa !328
  %.reass.us.us.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jm
  %gep913.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.1.i.us
  %i.me = load i16, ptr %gep913.us.us.us.us.1.i.us, align 2, !tbaa !328
  %.reass.us.us.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jn
  %gep913.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.2.i.us
  %i.mf = load i16, ptr %gep913.us.us.us.us.2.i.us, align 2, !tbaa !328
  %.reass.us.us.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jo
  %gep913.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.3.i.us
  %i.mg = load i16, ptr %gep913.us.us.us.us.3.i.us, align 2, !tbaa !328
  %i.mh = insertelement <4 x i16> poison, i16 %i.md, i64 0
  %i.mi = insertelement <4 x i16> %i.mh, i16 %i.me, i64 1
  %i.mj = insertelement <4 x i16> %i.mi, i16 %i.mf, i64 2
  %i.mk = insertelement <4 x i16> %i.mj, i16 %i.mg, i64 3
  %i.ml = zext <4 x i16> %i.mk to <4 x i32>
  %i.mm = shl nuw <4 x i32> %i.ml, splat (i32 16)
  %.sroa.01404.12.vec.insert.i.us = bitcast <4 x i32> %i.mm to <4 x float> ; 2 uses
  %i.mn = add nuw nsw i64 %indvars.iv.i.us, %i.lq
  %i.mo = shl i64 %i.mn, 3
  %i.mp = and i64 %i.mo, 4294967288
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.0340956.us.us.i, i64 %i.mp ; 2 uses
  %i.mr = load i64, ptr %i.mq, align 1, !tbaa !245
  %i.ms = insertelement <2 x i64> poison, i64 %i.mr, i64 0
  %i.mt = bitcast <2 x i64> %i.ms to <8 x i16>
  %i.mu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mv = bitcast <8 x i16> %i.mu to <4 x float>
  %i.mw = fmul fast <4 x float> %i.mv, %.sroa.01404.12.vec.insert.i.us
  %i.mx = fadd fast <4 x float> %i.mw, %.2837916.us923.us.us.us.i.us
  %i.my = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.mz = load i64, ptr %i.my, align 1, !tbaa !245
  %i.na = insertelement <2 x i64> poison, i64 %i.mz, i64 0
  %i.nb = bitcast <2 x i64> %i.na to <8 x i16>
  %i.nc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nd = bitcast <8 x i16> %i.nc to <4 x float>
  %i.ne = fmul fast <4 x float> %i.nd, %.sroa.01404.12.vec.insert.i.us
  %i.nf = fadd fast <4 x float> %i.ne, %.2842915.us924.us.us.us.i.us
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, %bb.ab, %.lr.ph.split.us921.us.us.us.i.us
  %.3843.us928.us.us.us.i.us = phi nsz <4 x float> [ %.2842915.us924.us.us.us.i.us, %.lr.ph.split.us921.us.us.us.i.us ], [ %i.nf, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2842915.us924.us.us.us.i.us, %bb.ab ] ; 2 uses
  %.3838.us929.us.us.us.i.us = phi nsz <4 x float> [ %.2837916.us923.us.us.us.i.us, %.lr.ph.split.us921.us.us.us.i.us ], [ %i.mx, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2837916.us923.us.us.us.i.us, %bb.ab ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.jk
  br i1 %exitcond.not.i.us, label %..loopexit906_crit_edge.us.us.us.i.us69, label %.lr.ph.split.us921.us.us.us.i.us, !llvm.loop !374

..loopexit906_crit_edge.us.us.us.i.us69:          ; preds = %bb.ac, %bb.aa, %.preheader909.us.us.i.split.us61
  %.4844.us.us.us.i.us70 = phi nsz <4 x float> [ %.1841934.us.us.us.i.us64, %.preheader909.us.us.i.split.us61 ], [ %.1841934.us.us.us.i.us64, %bb.aa ], [ %.3843.us928.us.us.us.i.us, %bb.ac ] ; 2 uses
  %.4839.us.us.us.i.us71 = phi nsz <4 x float> [ %.1836935.us.us.us.i.us63, %.preheader909.us.us.i.split.us61 ], [ %.1836935.us.us.us.i.us63, %bb.aa ], [ %.3838.us929.us.us.us.i.us, %bb.ac ] ; 2 uses
  %indvars.iv.next1293.i.us72 = add nuw nsw i64 %indvars.iv1292.i.us62, 1 ; 2 uses
  %exitcond1296.not.i.us73 = icmp eq i64 %indvars.iv.next1293.i.us72, %wide.trip.count1295.i
  br i1 %exitcond1296.not.i.us73, label %._crit_edge.split.us.us.us.i, label %.preheader909.us.us.i.split.us61, !llvm.loop !375

._crit_edge.split.us.us.us.i:                     ; preds = %..loopexit906_crit_edge.us.us.us.i.us69, %..loopexit906_crit_edge.us.us.us.i.us, %.preheader909.us.us.i
  %.us-phi = phi <4 x float> [ %.4844.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0840952.us.us.i, %.preheader909.us.us.i ], [ %.4844.us.us.us.i.us70, %..loopexit906_crit_edge.us.us.us.i.us69 ] ; 2 uses
  %.us-phi60 = phi <4 x float> [ %.4839.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0835953.us.us.i, %.preheader909.us.us.i ], [ %.4839.us.us.us.i.us71, %..loopexit906_crit_edge.us.us.us.i.us69 ] ; 2 uses
  %i.ng = getelementptr inbounds [2 x i8], ptr %.0340956.us.us.i, i64 %i.iu ; 2 uses
  %indvars.iv.next1298.i = add nuw nsw i64 %indvars.iv1297.i, 4 ; 2 uses
  %i.nh = icmp slt i64 %indvars.iv.next1298.i, %invariant.op1449.i
  br i1 %i.nh, label %.preheader909.us.us.i, label %._crit_edge958.i, !llvm.loop !379

._crit_edge958.i:                                 ; preds = %._crit_edge.split.us.us.us.i, %.preheader909.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit455.i
  %.0840.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader909.lr.ph.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0835.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader909.lr.ph.i ], [ %.us-phi60, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0343.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %i.gk, %.preheader909.lr.ph.i ], [ %i.go, %._crit_edge.split.us.us.us.i ] ; 9 uses
  %.0340.lcssa.i = phi ptr [ %i.ip, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %scevgep1282.i, %.preheader909.lr.ph.i ], [ %i.ng, %._crit_edge.split.us.us.us.i ] ; 4 uses
  %i.ni = shufflevector <4 x float> %.0835.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.nj = fadd fast <4 x float> %i.ni, %.0835.lcssa.i ; 2 uses
  %i.nk = shufflevector <4 x float> %.0840.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.nl = fadd fast <4 x float> %i.nk, %.0840.lcssa.i ; 2 uses
  %i.nm = shufflevector <4 x float> %i.nj, <4 x float> %i.nl, <2 x i32> <i32 1, i32 5>
  %i.nn = fadd fast <2 x float> %i.nm, %i.jb
  %i.no = shufflevector <4 x float> %i.nj, <4 x float> %i.nl, <2 x i32> <i32 0, i32 4>
  %i.np = fadd fast <2 x float> %i.nn, %i.no      ; 4 uses
  %i.nq = or disjoint i32 %.0343.lcssa.i, 1
  %i.nr = icmp slt i32 %i.nq, %i.fn
  br i1 %i.nr, label %.preheader908.lr.ph.i, label %.preheader910.i

.preheader908.lr.ph.i:                            ; preds = %._crit_edge958.i
  %i.ns = load i32, ptr %i.d, align 4
  %i.nt = load i32, ptr %i.j, align 4
  %invariant.op993.i = sub i32 %.neg887.i, %i.nt
  %i.nu = load i32, ptr %i.f, align 4             ; 2 uses
  %i.nv = load i32, ptr %i.a, align 4
  %.fr1232.i = freeze i32 %i.nv                   ; 2 uses
  %i.nw = load i32, ptr %i.c, align 4
  %i.nx = load i32, ptr %i.i, align 4
  %.neg885.i = add nuw nsw i32 %.03191063.i, 1
  %invariant.op985.i = sub i32 %.neg885.i, %i.nx
  %i.ny = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.ir, label %.preheader908.lr.ph.split.us.i, label %.preheader908.preheader.i

.preheader908.preheader.i:                        ; preds = %.preheader908.lr.ph.i
  %i.nz = add i32 %.0343.lcssa.i, 3
  %smax.i = call i32 @llvm.smax.i32(i32 %i.fn, i32 %i.nz)
  %reass.sub = sub i32 %smax.i, %.0343.lcssa.i
  %i.oa = and i32 %reass.sub, -2                  ; 2 uses
  %i.ob = add i32 %i.oa, -2
  %i.oc = zext i32 %i.ob to i64
  %i.od = add nuw nsw i64 %i.oc, 2
  %i.oe = mul nsw i64 %i.od, %i.iw
  %scevgep1300.i = getelementptr i8, ptr %.0340.lcssa.i, i64 %i.oe
  %i.of = add i32 %.0343.lcssa.i, %i.oa
  br label %.preheader910.i

.preheader908.lr.ph.split.us.i:                   ; preds = %.preheader908.lr.ph.i
  %i.og = icmp sgt i32 %.fr1232.i, 0
  br i1 %i.og, label %.preheader908.us.us.preheader.i, label %.preheader908.us.preheader.i

.preheader908.us.preheader.i:                     ; preds = %.preheader908.lr.ph.split.us.i
  %i.oh = add i32 %.0343.lcssa.i, 3
  %smax1301.i = call i32 @llvm.smax.i32(i32 %i.fn, i32 %i.oh)
  %reass.sub92 = sub i32 %smax1301.i, %.0343.lcssa.i
  %i.oi = and i32 %reass.sub92, -2                ; 2 uses
  %i.oj = add i32 %i.oi, -2
  %i.ok = zext i32 %i.oj to i64
  %i.ol = add nuw nsw i64 %i.ok, 2
  %i.om = mul nsw i64 %i.ol, %i.iw
  %scevgep1302.i = getelementptr i8, ptr %.0340.lcssa.i, i64 %i.om
  %i.on = add i32 %.0343.lcssa.i, %i.oi
  br label %.preheader910.i

.preheader908.us.us.preheader.i:                  ; preds = %.preheader908.lr.ph.split.us.i
  %i.oo = zext nneg i32 %.fr1232.i to i64         ; 2 uses
  %i.op = zext i32 %.0343.lcssa.i to i64
  br label %.preheader908.us.us.i

.preheader908.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1020.i, %.preheader908.us.us.preheader.i
  %indvars.iv1316.i = phi i64 [ %i.op, %.preheader908.us.us.preheader.i ], [ %indvars.iv.next1317.i, %._crit_edge.split.us.us.us1020.i ] ; 3 uses
  %.13411001.us.us.i = phi ptr [ %.0340.lcssa.i, %.preheader908.us.us.preheader.i ], [ %i.qp, %._crit_edge.split.us.us.us1020.i ] ; 2 uses
  %i.oq = phi <2 x float> [ %i.np, %.preheader908.us.us.preheader.i ], [ %i.ql, %._crit_edge.split.us.us.us1020.i ]
  %i.or = add nuw nsw i64 %indvars.iv1316.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %..loopexit904_crit_edge.us.us.us.i, %.preheader908.us.us.i
  %indvars.iv1311.i = phi i64 [ %indvars.iv.next1312.i, %..loopexit904_crit_edge.us.us.us.i ], [ 0, %.preheader908.us.us.i ] ; 3 uses
  %i.os = phi <2 x float> [ %i.ql, %..loopexit904_crit_edge.us.us.us.i ], [ %i.oq, %.preheader908.us.us.i ] ; 3 uses
  %i.ot = trunc i64 %indvars.iv1311.i to i32
  %i.ou = mul i32 %i.ns, %i.ot
  %.reass994.us.us.us.i = add i32 %i.ou, %invariant.op993.i ; 3 uses
  %i.ov = icmp slt i32 %.reass994.us.us.us.i, 0
  br i1 %i.ov, label %..loopexit904_crit_edge.us.us.us.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ow = srem i32 %.reass994.us.us.us.i, %i.nu
  %i.ox = sdiv i32 %.reass994.us.us.us.i, %i.nu   ; 2 uses
  %.not438.us.us.us.i = icmp eq i32 %i.ow, 0
  %.not439.us.us.us.i = icmp slt i32 %i.ox, %i.fp
  %or.cond200 = select i1 %.not438.us.us.us.i, i1 %.not439.us.us.us.i, i1 false
  br i1 %or.cond200, label %.preheader903.us.us.us.i, label %..loopexit904_crit_edge.us.us.us.i

bb.af:                                            ; preds = %.preheader903.us.us.us.i, %.loopexit900.us.us.us.i
  %indvars.iv1306.i = phi i64 [ 0, %.preheader903.us.us.us.i ], [ %indvars.iv.next1307.i, %.loopexit900.us.us.us.i ] ; 3 uses
  %i.oy = phi <2 x float> [ %i.os, %.preheader903.us.us.us.i ], [ %i.qk, %.loopexit900.us.us.us.i ] ; 3 uses
  %i.oz = trunc i64 %indvars.iv1306.i to i32
  %i.pa = mul i32 %i.nw, %i.oz
  %.reass986.us.us.us.i = add i32 %invariant.op985.i, %i.pa ; 3 uses
  %i.pb = icmp slt i32 %.reass986.us.us.us.i, 0
  br i1 %i.pb, label %.loopexit900.us.us.us.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.pc = srem i32 %.reass986.us.us.us.i, %i.ny
  %i.pd = sdiv i32 %.reass986.us.us.us.i, %i.ny   ; 2 uses
  %.not440.us.us.us.i = icmp eq i32 %i.pc, 0
  %.not441.us.us.us.i = icmp slt i32 %i.pd, %i.fo
  %or.cond201 = select i1 %.not440.us.us.us.i, i1 %.not441.us.us.us.i, i1 false
  br i1 %or.cond201, label %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, label %.loopexit900.us.us.us.i

_ZN4ncnn3MatD2Ev.exit452.us.us.us.i:              ; preds = %bb.ag
  %i.pe = add nuw nsw i64 %indvars.iv1306.i, %i.qm
  %i.pf = shl i64 %i.pe, 2
  %i.pg = and i64 %i.pf, 4294967292
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %.13411001.us.us.i, i64 %i.pg
  %i.pi = load ptr, ptr %1, align 8, !tbaa !18, !noalias !380
  %i.pj = load i64, ptr %i.fy, align 8, !tbaa !20, !noalias !380
  %i.pk = load i64, ptr %i.fz, align 8, !tbaa !57, !noalias !380 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.pk, %i.pj ; 2 uses
  %i.pl = mul i64 %i.qo, %i.pk
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.pi, i64 %i.pl
  %i.pm = sext i32 %i.pd to i64
  %invariant.gep975.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.pm ; 2 uses
  %.reass.us995.us.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv1316.i
  %gep976.us.us.us.i = getelementptr i8, ptr %invariant.gep975.us.us.us.i, i64 %.reass.us995.us.us.i
  %i.pn = load i16, ptr %gep976.us.us.us.i, align 2, !tbaa !328
  %i.po = zext i16 %i.pn to i32
  %i.pp = shl nuw i32 %i.po, 16
  %.reass.us995.us.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.or
  %gep976.us.us.us.1.i = getelementptr i8, ptr %invariant.gep975.us.us.us.i, i64 %.reass.us995.us.us.1.i
  %i.pq = load i16, ptr %gep976.us.us.us.1.i, align 2, !tbaa !328
  %i.pr = zext i16 %i.pq to i32
  %i.ps = shl nuw i32 %i.pr, 16
  %i.pt = load <4 x i16>, ptr %i.ph, align 2, !tbaa !328
  %i.pu = freeze <4 x i16> %i.pt
  %i.pv = bitcast <4 x i16> %i.pu to <2 x i32>    ; 2 uses
  %i.pw = and <2 x i32> %i.pv, splat (i32 -65536)
  %i.px = shl <2 x i32> %i.pv, splat (i32 16)
  %i.py = bitcast <2 x i32> %i.px to <2 x float>
  %i.pz = insertelement <2 x i32> poison, i32 %i.pp, i64 0
  %i.qa = bitcast <2 x i32> %i.pz to <2 x float>
  %i.qb = shufflevector <2 x float> %i.qa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qc = fmul fast <2 x float> %i.qb, %i.py
  %i.qd = fadd fast <2 x float> %i.oy, %i.qc
  %i.qe = bitcast <2 x i32> %i.pw to <2 x float>
  %i.qf = insertelement <2 x i32> poison, i32 %i.ps, i64 0
  %i.qg = bitcast <2 x i32> %i.qf to <2 x float>
  %i.qh = shufflevector <2 x float> %i.qg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qi = fmul fast <2 x float> %i.qh, %i.qe
  %i.qj = fadd fast <2 x float> %i.qi, %i.qd
  br label %.loopexit900.us.us.us.i

.loopexit900.us.us.us.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, %bb.ag, %bb.af
  %i.qk = phi <2 x float> [ %i.oy, %bb.af ], [ %i.oy, %bb.ag ], [ %i.qj, %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i ] ; 2 uses
  %indvars.iv.next1307.i = add nuw nsw i64 %indvars.iv1306.i, 1 ; 2 uses
  %exitcond1310.not.i = icmp eq i64 %indvars.iv.next1307.i, %i.oo
  br i1 %exitcond1310.not.i, label %..loopexit904_crit_edge.us.us.us.i, label %bb.af, !llvm.loop !383

..loopexit904_crit_edge.us.us.us.i:               ; preds = %.loopexit900.us.us.us.i, %bb.ae, %bb.ad
  %i.ql = phi <2 x float> [ %i.os, %bb.ad ], [ %i.os, %bb.ae ], [ %i.qk, %.loopexit900.us.us.us.i ] ; 3 uses
  %indvars.iv.next1312.i = add nuw nsw i64 %indvars.iv1311.i, 1 ; 2 uses
  %exitcond1315.not.i = icmp eq i64 %indvars.iv.next1312.i, %wide.trip.count1295.i
  br i1 %exitcond1315.not.i, label %._crit_edge.split.us.us.us1020.i, label %bb.ad, !llvm.loop !384

.preheader903.us.us.us.i:                         ; preds = %bb.ae
  %i.qm = mul nuw nsw i64 %indvars.iv1311.i, %i.oo
  %i.qn = sext i32 %i.ox to i64
  %i.qo = mul nsw i64 %i.qn, %i.gn
  br label %bb.af

._crit_edge.split.us.us.us1020.i:                 ; preds = %..loopexit904_crit_edge.us.us.us.i
  %i.qp = getelementptr inbounds [2 x i8], ptr %.13411001.us.us.i, i64 %i.iw ; 2 uses
  %indvars.iv.next1317.i = add nuw nsw i64 %indvars.iv1316.i, 2 ; 2 uses
  %i.qq = trunc i64 %indvars.iv.next1317.i to i32 ; 2 uses
  %i.qr = or i32 %i.qq, 1
  %i.qs = icmp slt i32 %i.qr, %i.fn
  br i1 %i.qs, label %.preheader908.us.us.i, label %.preheader910.i, !llvm.loop !385

.preheader910.i:                                  ; preds = %._crit_edge.split.us.us.us1020.i, %.preheader908.us.preheader.i, %.preheader908.preheader.i, %._crit_edge958.i
  %.1344.lcssa.i = phi i32 [ %.0343.lcssa.i, %._crit_edge958.i ], [ %i.of, %.preheader908.preheader.i ], [ %i.on, %.preheader908.us.preheader.i ], [ %i.qq, %._crit_edge.split.us.us.us1020.i ] ; 2 uses
  %.1341.lcssa.i = phi ptr [ %.0340.lcssa.i, %._crit_edge958.i ], [ %scevgep1300.i, %.preheader908.preheader.i ], [ %scevgep1302.i, %.preheader908.us.preheader.i ], [ %i.qp, %._crit_edge.split.us.us.us1020.i ]
  %i.qt = phi <2 x float> [ %i.np, %._crit_edge958.i ], [ %i.np, %.preheader908.preheader.i ], [ %i.np, %.preheader908.us.preheader.i ], [ %i.ql, %._crit_edge.split.us.us.us1020.i ] ; 3 uses
  %i.qu = icmp slt i32 %.1344.lcssa.i, %i.fn
  br i1 %i.qu, label %.preheader907.lr.ph.i, label %._crit_edge1048.i

.preheader907.lr.ph.i:                            ; preds = %.preheader910.i
  %i.qv = load i32, ptr %i.d, align 4
  %i.qw = load i32, ptr %i.j, align 4
  %invariant.op1037.i = sub i32 %.neg887.i, %i.qw
  %i.qx = load i32, ptr %i.f, align 4             ; 2 uses
  %i.qy = load i32, ptr %i.a, align 4
  %.fr1233.i = freeze i32 %i.qy                   ; 2 uses
  %i.qz = load i32, ptr %i.c, align 4
  %i.ra = load i32, ptr %i.i, align 4
  %.neg881.i = add nuw nsw i32 %.03191063.i, 1
  %invariant.op1030.i = sub i32 %.neg881.i, %i.ra
  %i.rb = load i32, ptr %i.e, align 4             ; 2 uses
  %i.rc = icmp sgt i32 %.fr1233.i, 0
  %or.cond1451.i = and i1 %i.ir, %i.rc
  br i1 %or.cond1451.i, label %.preheader907.us.us.preheader.i, label %._crit_edge1048.i

.preheader907.us.us.preheader.i:                  ; preds = %.preheader907.lr.ph.i
  %i.rd = zext nneg i32 %.fr1233.i to i64         ; 2 uses
  %i.re = zext i32 %.1344.lcssa.i to i64
  br label %.preheader907.us.us.i

.preheader907.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1060.i, %.preheader907.us.us.preheader.i
  %indvars.iv1329.i = phi i64 [ %i.re, %.preheader907.us.us.preheader.i ], [ %indvars.iv.next1330.i, %._crit_edge.split.us.us.us1060.i ] ; 2 uses
  %.23421044.us.us.i = phi ptr [ %.1341.lcssa.i, %.preheader907.us.us.preheader.i ], [ %i.sv, %._crit_edge.split.us.us.us1060.i ] ; 2 uses
  %i.rf = phi <2 x float> [ %i.qt, %.preheader907.us.us.preheader.i ], [ %i.sr, %._crit_edge.split.us.us.us1060.i ]
  br label %bb.ah

bb.ah:                                            ; preds = %..loopexit902_crit_edge.us.us.us.i, %.preheader907.us.us.i
  %indvars.iv1324.i = phi i64 [ %indvars.iv.next1325.i, %..loopexit902_crit_edge.us.us.us.i ], [ 0, %.preheader907.us.us.i ] ; 3 uses
  %i.rg = phi <2 x float> [ %i.sr, %..loopexit902_crit_edge.us.us.us.i ], [ %i.rf, %.preheader907.us.us.i ] ; 3 uses
  %i.rh = trunc i64 %indvars.iv1324.i to i32
  %i.ri = mul i32 %i.qv, %i.rh
  %.reass1038.us.us.us.i = add i32 %i.ri, %invariant.op1037.i ; 3 uses
  %i.rj = icmp slt i32 %.reass1038.us.us.us.i, 0
  br i1 %i.rj, label %..loopexit902_crit_edge.us.us.us.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.rk = srem i32 %.reass1038.us.us.us.i, %i.qx
  %i.rl = sdiv i32 %.reass1038.us.us.us.i, %i.qx  ; 2 uses
  %.not434.us.us.us.i = icmp eq i32 %i.rk, 0
  %.not435.us.us.us.i = icmp slt i32 %i.rl, %i.fp
  %or.cond202 = select i1 %.not434.us.us.us.i, i1 %.not435.us.us.us.i, i1 false
  br i1 %or.cond202, label %.preheader901.us.us.us.i, label %..loopexit902_crit_edge.us.us.us.i

bb.aj:                                            ; preds = %.preheader901.us.us.us.i, %bb.al
  %indvars.iv1319.i = phi i64 [ 0, %.preheader901.us.us.us.i ], [ %indvars.iv.next1320.i, %bb.al ] ; 3 uses
  %i.rm = phi <2 x float> [ %i.rg, %.preheader901.us.us.us.i ], [ %i.sq, %bb.al ] ; 3 uses
  %i.rn = trunc i64 %indvars.iv1319.i to i32
  %i.ro = mul i32 %i.qz, %i.rn
  %.reass.us1039.us.us.i = add i32 %invariant.op1030.i, %i.ro ; 3 uses
  %i.rp = icmp slt i32 %.reass.us1039.us.us.i, 0
  br i1 %i.rp, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.rq = srem i32 %.reass.us1039.us.us.i, %i.rb
  %i.rr = sdiv i32 %.reass.us1039.us.us.i, %i.rb  ; 2 uses
  %.not436.us.us.us.i = icmp eq i32 %i.rq, 0
  %.not437.us.us.us.i = icmp slt i32 %i.rr, %i.fo
  %or.cond203 = select i1 %.not436.us.us.us.i, i1 %.not437.us.us.us.i, i1 false
  br i1 %or.cond203, label %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, label %bb.al

_ZN4ncnn3MatD2Ev.exit451.us.us.us.i:              ; preds = %bb.ak
  %i.rs = add nuw nsw i64 %indvars.iv1319.i, %i.ss
  %.idx.i = shl nuw nsw i64 %i.rs, 2
  %i.rt = getelementptr inbounds nuw i8, ptr %.23421044.us.us.i, i64 %.idx.i
  %i.ru = load ptr, ptr %1, align 8, !tbaa !18, !noalias !386
  %i.rv = load i64, ptr %i.fy, align 8, !tbaa !20, !noalias !386
  %i.rw = mul i64 %i.rv, %indvars.iv1329.i
  %i.rx = load i64, ptr %i.fz, align 8, !tbaa !57, !noalias !386 ; 2 uses
  %i.ry = mul i64 %i.rw, %i.rx
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.ry
  %i.sa = mul i64 %i.su, %i.rx
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sa
  %i.sc = sext i32 %i.rr to i64
  %i.sd = getelementptr inbounds [2 x i8], ptr %i.sb, i64 %i.sc
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !328
  %i.sf = zext i16 %i.se to i32
  %i.sg = shl nuw i32 %i.sf, 16
  %i.sh = load <2 x i16>, ptr %i.rt, align 2, !tbaa !328
  %i.si = zext <2 x i16> %i.sh to <2 x i32>
  %i.sj = shl nuw <2 x i32> %i.si, splat (i32 16)
  %i.sk = bitcast <2 x i32> %i.sj to <2 x float>
  %i.sl = insertelement <2 x i32> poison, i32 %i.sg, i64 0
  %i.sm = bitcast <2 x i32> %i.sl to <2 x float>
  %i.sn = shufflevector <2 x float> %i.sm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.so = fmul fast <2 x float> %i.sn, %i.sk
  %i.sp = fadd fast <2 x float> %i.so, %i.rm
  br label %bb.al

bb.al:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, %bb.ak, %bb.aj
  %i.sq = phi <2 x float> [ %i.rm, %bb.aj ], [ %i.rm, %bb.ak ], [ %i.sp, %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i ] ; 2 uses
  %indvars.iv.next1320.i = add nuw nsw i64 %indvars.iv1319.i, 1 ; 2 uses
  %exitcond1323.not.i = icmp eq i64 %indvars.iv.next1320.i, %i.rd
  br i1 %exitcond1323.not.i, label %..loopexit902_crit_edge.us.us.us.i, label %bb.aj, !llvm.loop !389

..loopexit902_crit_edge.us.us.us.i:               ; preds = %bb.al, %bb.ai, %bb.ah
  %i.sr = phi <2 x float> [ %i.rg, %bb.ah ], [ %i.rg, %bb.ai ], [ %i.sq, %bb.al ] ; 3 uses
  %indvars.iv.next1325.i = add nuw nsw i64 %indvars.iv1324.i, 1 ; 2 uses
  %exitcond1328.not.i = icmp eq i64 %indvars.iv.next1325.i, %wide.trip.count1295.i
  br i1 %exitcond1328.not.i, label %._crit_edge.split.us.us.us1060.i, label %bb.ah, !llvm.loop !390

.preheader901.us.us.us.i:                         ; preds = %bb.ai
  %i.ss = mul nuw nsw i64 %indvars.iv1324.i, %i.rd
  %i.st = sext i32 %i.rl to i64
  %i.su = mul nsw i64 %i.st, %i.gn
  br label %bb.aj

._crit_edge.split.us.us.us1060.i:                 ; preds = %..loopexit902_crit_edge.us.us.us.i
  %i.sv = getelementptr inbounds [2 x i8], ptr %.23421044.us.us.i, i64 %i.iy
  %indvars.iv.next1330.i = add nuw nsw i64 %indvars.iv1329.i, 1 ; 2 uses
  %i.sw = trunc nuw i64 %indvars.iv.next1330.i to i32
  %i.sx = icmp sgt i32 %i.fn, %i.sw
  br i1 %i.sx, label %.preheader907.us.us.i, label %._crit_edge1048.i, !llvm.loop !391

._crit_edge1048.i:                                ; preds = %._crit_edge.split.us.us.us1060.i, %.preheader907.lr.ph.i, %.preheader910.i
  %i.sy = phi <2 x float> [ %i.qt, %.preheader910.i ], [ %i.qt, %.preheader907.lr.ph.i ], [ %i.sr, %._crit_edge.split.us.us.us1060.i ] ; 11 uses
  switch i32 %i.io, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread853.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread856.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread850.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread859.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread862.i
    i32 6, label %bb.am
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread853.i: ; preds = %._crit_edge1048.i
  %i.sz = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.sy, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread856.i: ; preds = %._crit_edge1048.i
  %i.ta = load ptr, ptr %i.ej, align 8, !tbaa !18
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !39
  %i.tc = fcmp fast ogt <2 x float> %i.sy, zeroinitializer
  %i.td = insertelement <2 x float> poison, float %i.tb, i64 0
  %i.te = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tf = select <2 x i1> %i.tc, <2 x float> splat (float 1.000000e+00), <2 x float> %i.te
  %i.tg = fmul fast <2 x float> %i.tf, %i.sy
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread850.i: ; preds = %._crit_edge1048.i
  %i.th = load ptr, ptr %i.ej, align 8, !tbaa !18 ; 2 uses
  %i.ti = load float, ptr %i.th, align 4, !tbaa !39
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !39 ; 3 uses
  %i.tl = insertelement <2 x float> poison, float %i.ti, i64 0
  %i.tm = shufflevector <2 x float> %i.tl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tn = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.sy, <2 x float> %i.tm) ; 3 uses
  %i.to = insertelement <2 x float> poison, float %i.tk, i64 0
  %i.tp = shufflevector <2 x float> %i.to, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tq = fcmp fast ogt <2 x float> %i.tn, %i.tp  ; 2 uses
  %i.tr = extractelement <2 x i1> %i.tq, i64 0
  %i.ts = extractelement <2 x float> %i.tn, i64 0
  %.1825852.i = select i1 %i.tr, float %i.tk, float %i.ts
  %i.tt = insertelement <2 x float> %i.tn, float %.1825852.i, i64 0 ; 2 uses
  %i.tu = extractelement <2 x i1> %i.tq, i64 1
  br i1 %i.tu, label %bb.ap, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread859.i: ; preds = %._crit_edge1048.i
  %i.tv = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.sy, <2 x float> splat (float f0x42B0C0A5))
  %i.tw = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.tv, <2 x float> splat (float f0xC2B0C0A5))
  %i.tx = fneg fast <2 x float> %i.tw
  %i.ty = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.tx)
  %i.tz = fadd fast <2 x float> %i.ty, splat (float 1.000000e+00)
  %i.ua = fdiv fast <2 x float> splat (float 1.000000e+00), %i.tz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i
end_hunk_2
begin_hunk_3_@_ZNK4ncnn17Deconvolution_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:._crit_edge
  %i.yz = srem i32 %.reass1089.us1094.us.us.us.i.us, %i.wt
  %i.za = sdiv i32 %.reass1089.us1094.us.us.us.i.us, %i.wt ; 2 uses
  %.not431.us1095.us.us.us.i.us = icmp eq i32 %i.yz, 0
  %.not432.us1096.us.us.us.i.us = icmp slt i32 %i.za, %i.gx
  %or.cond207 = select i1 %.not431.us1095.us.us.us.i.us, i1 %.not432.us1096.us.us.us.i.us, i1 false
  br i1 %or.cond207, label %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, label %bb.az

_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us:        ; preds = %bb.ay
  %i.zb = load ptr, ptr %1, align 8, !tbaa !18, !noalias !400
  %i.zc = load i64, ptr %i.hh, align 8, !tbaa !20, !noalias !400
  %i.zd = load i64, ptr %i.hi, align 8, !tbaa !57, !noalias !400 ; 2 uses
  %factor.op.mul1080.us.us.us.us.i.us = mul i64 %i.zd, %i.zc ; 4 uses
  %i.ze = mul i64 %i.yv, %i.zd
  %invariant.gep.us.us.us1133.us.i.us = getelementptr i8, ptr %i.zb, i64 %i.ze
  %i.zf = sext i32 %i.za to i64
  %invariant.gep1082.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us1133.us.i.us, i64 %i.zf ; 4 uses
  %.reass1081.us.us.us.us.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %indvars.iv1362.i
  %gep1083.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.i.us
  %i.zg = load i16, ptr %gep1083.us.us.us.us.i.us, align 2, !tbaa !328
  %.reass1081.us.us.us.us.1.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.wx
  %gep1083.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.1.i.us
  %i.zh = load i16, ptr %gep1083.us.us.us.us.1.i.us, align 2, !tbaa !328
  %.reass1081.us.us.us.us.2.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.wy
  %gep1083.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.2.i.us
  %i.zi = load i16, ptr %gep1083.us.us.us.us.2.i.us, align 2, !tbaa !328
  %.reass1081.us.us.us.us.3.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.wz
  %gep1083.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.3.i.us
  %i.zj = load i16, ptr %gep1083.us.us.us.us.3.i.us, align 2, !tbaa !328
  %i.zk = insertelement <4 x i16> poison, i16 %i.zg, i64 0
  %i.zl = insertelement <4 x i16> %i.zk, i16 %i.zh, i64 1
  %i.zm = insertelement <4 x i16> %i.zl, i16 %i.zi, i64 2
  %i.zn = insertelement <4 x i16> %i.zm, i16 %i.zj, i64 3
  %i.zo = zext <4 x i16> %i.zn to <4 x i32>
  %i.zp = shl nuw <4 x i32> %i.zo, splat (i32 16)
  %.sroa.0.12.vec.insert.i.us = bitcast <4 x i32> %i.zp to <4 x float>
  %i.zq = add nuw nsw i64 %indvars.iv1347.i.us, %i.yt
  %i.zr = shl i64 %i.zq, 2
  %i.zs = and i64 %i.zr, 4294967292
  %i.zt = getelementptr inbounds nuw [2 x i8], ptr %.03661118.us.us.i, i64 %i.zs
  %i.zu = load i64, ptr %i.zt, align 1, !tbaa !245
  %i.zv = insertelement <2 x i64> poison, i64 %i.zu, i64 0
  %i.zw = bitcast <2 x i64> %i.zv to <8 x i16>
  %i.zx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zy = bitcast <8 x i16> %i.zx to <4 x float>
  %i.zz = fmul fast <4 x float> %i.zy, %.sroa.0.12.vec.insert.i.us
  %i.aaa = fadd fast <4 x float> %i.zz, %.28321085.us1093.us.us.us.i.us
  br label %bb.az

bb.az:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, %bb.ay, %.lr.ph.split.us1091.us.us.us.i.us
  %.3833.us1097.us.us.us.i.us = phi nsz <4 x float> [ %.28321085.us1093.us.us.us.i.us, %.lr.ph.split.us1091.us.us.us.i.us ], [ %i.aaa, %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us ], [ %.28321085.us1093.us.us.us.i.us, %bb.ay ] ; 2 uses
  %indvars.iv.next1348.i.us = add nuw nsw i64 %indvars.iv1347.i.us, 1 ; 2 uses
  %exitcond1351.not.i.us = icmp eq i64 %indvars.iv.next1348.i.us, %i.wv
  br i1 %exitcond1351.not.i.us, label %..loopexit894_crit_edge.us.us.us.i.us86, label %.lr.ph.split.us1091.us.us.us.i.us, !llvm.loop !398

..loopexit894_crit_edge.us.us.us.i.us86:          ; preds = %bb.az, %bb.ax, %.preheader897.us.us.i.split.us79
  %.4834.us.us.us.i.us87 = phi nsz <4 x float> [ %.18311101.us.us.us.i.us81, %.preheader897.us.us.i.split.us79 ], [ %.18311101.us.us.us.i.us81, %bb.ax ], [ %.3833.us1097.us.us.us.i.us, %bb.az ] ; 2 uses
  %indvars.iv.next1358.i.us88 = add nuw nsw i64 %indvars.iv1357.i.us80, 1 ; 2 uses
  %exitcond1361.not.i.us89 = icmp eq i64 %indvars.iv.next1358.i.us88, %wide.trip.count1360.i
  br i1 %exitcond1361.not.i.us89, label %._crit_edge1104.split.us.us.us.i, label %.preheader897.us.us.i.split.us79, !llvm.loop !399

._crit_edge1104.split.us.us.us.i:                 ; preds = %..loopexit894_crit_edge.us.us.us.i.us86, %..loopexit894_crit_edge.us.us.us.i.us, %.preheader897.us.us.i
  %.us-phi78 = phi <4 x float> [ %.4834.us.us.us.i.us, %..loopexit894_crit_edge.us.us.us.i.us ], [ %.08301117.us.us.i, %.preheader897.us.us.i ], [ %.4834.us.us.us.i.us87, %..loopexit894_crit_edge.us.us.us.i.us86 ] ; 2 uses
  %i.aab = getelementptr inbounds [2 x i8], ptr %.03661118.us.us.i, i64 %i.wg ; 2 uses
  %indvars.iv.next1363.i = add nuw nsw i64 %indvars.iv1362.i, 4 ; 2 uses
  %i.aac = icmp slt i64 %indvars.iv.next1363.i, %invariant.op1450.i
  br i1 %i.aac, label %.preheader897.us.us.i, label %._crit_edge1122.i, !llvm.loop !403

._crit_edge1122.i:                                ; preds = %._crit_edge1104.split.us.us.us.i, %.preheader897.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit449.i
  %.0830.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit449.i ], [ zeroinitializer, %.preheader897.lr.ph.i ], [ %.us-phi78, %._crit_edge1104.split.us.us.us.i ] ; 2 uses
  %.0366.lcssa.i = phi ptr [ %i.wb, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %scevgep1340.i, %.preheader897.lr.ph.i ], [ %i.aab, %._crit_edge1104.split.us.us.us.i ] ; 4 uses
  %.0363.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %i.ht, %.preheader897.lr.ph.i ], [ %i.ia, %._crit_edge1104.split.us.us.us.i ] ; 9 uses
  %i.aad = shufflevector <4 x float> %.0830.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.aae = fadd fast <4 x float> %i.aad, %.0830.lcssa.i ; 2 uses
  %i.aaf = extractelement <4 x float> %i.aae, i64 1
  %i.aag = extractelement <4 x float> %i.aae, i64 0
  %i.aah = fadd fast float %i.aaf, %.0369.i
  %i.aai = fadd fast float %i.aah, %i.aag         ; 4 uses
  %i.aaj = or disjoint i32 %.0363.lcssa.i, 1
  %i.aak = icmp slt i32 %i.aaj, %i.gw
  br i1 %i.aak, label %.preheader896.lr.ph.i, label %.preheader898.i

.preheader896.lr.ph.i:                            ; preds = %._crit_edge1122.i
  %i.aal = load i32, ptr %i.d, align 4
  %i.aam = load i32, ptr %i.j, align 4
  %invariant.op1157.i = sub i32 %.neg875.i, %i.aam
  %i.aan = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aao = load i32, ptr %i.a, align 4
  %.fr1235.i = freeze i32 %i.aao                  ; 2 uses
  %i.aap = load i32, ptr %i.c, align 4
  %i.aaq = load i32, ptr %i.i, align 4
  %.neg873.i = add nuw nsw i32 %.03851212.i, 1
  %invariant.op1150.i = sub i32 %.neg873.i, %i.aaq
  %i.aar = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.wd, label %.preheader896.lr.ph.split.us.i, label %.preheader896.preheader.i

.preheader896.preheader.i:                        ; preds = %.preheader896.lr.ph.i
  %i.aas = add i32 %.0363.lcssa.i, 3
  %smax1365.i = call i32 @llvm.smax.i32(i32 %i.gw, i32 %i.aas)
  %reass.sub93 = sub i32 %smax1365.i, %.0363.lcssa.i
  %i.aat = and i32 %reass.sub93, -2               ; 2 uses
  %i.aau = add i32 %i.aat, -2
  %i.aav = zext i32 %i.aau to i64
  %i.aaw = add nuw nsw i64 %i.aav, 2
  %i.aax = mul nsw i64 %i.aaw, %i.wi
  %scevgep1366.i = getelementptr i8, ptr %.0366.lcssa.i, i64 %i.aax
  %i.aay = add i32 %.0363.lcssa.i, %i.aat
  br label %.preheader898.i

.preheader896.lr.ph.split.us.i:                   ; preds = %.preheader896.lr.ph.i
  %i.aaz = icmp sgt i32 %.fr1235.i, 0
  br i1 %i.aaz, label %.preheader896.us.us.preheader.i, label %.preheader896.us.preheader.i

.preheader896.us.preheader.i:                     ; preds = %.preheader896.lr.ph.split.us.i
  %i.aba = add i32 %.0363.lcssa.i, 3
  %smax1367.i = call i32 @llvm.smax.i32(i32 %i.gw, i32 %i.aba)
  %reass.sub94 = sub i32 %smax1367.i, %.0363.lcssa.i
  %i.abb = and i32 %reass.sub94, -2               ; 2 uses
  %i.abc = add i32 %i.abb, -2
  %i.abd = zext i32 %i.abc to i64
  %i.abe = add nuw nsw i64 %i.abd, 2
  %i.abf = mul nsw i64 %i.abe, %i.wi
  %scevgep1368.i = getelementptr i8, ptr %.0366.lcssa.i, i64 %i.abf
  %i.abg = add i32 %.0363.lcssa.i, %i.abb
  br label %.preheader898.i

.preheader896.us.us.preheader.i:                  ; preds = %.preheader896.lr.ph.split.us.i
  %i.abh = zext nneg i32 %.fr1235.i to i64        ; 2 uses
  %i.abi = zext i32 %.0363.lcssa.i to i64
  br label %.preheader896.us.us.i

.preheader896.us.us.i:                            ; preds = %._crit_edge1155.split.us.us.us.i, %.preheader896.us.us.preheader.i
  %indvars.iv1382.i = phi i64 [ %i.abi, %.preheader896.us.us.preheader.i ], [ %indvars.iv.next1383.i, %._crit_edge1155.split.us.us.us.i ] ; 3 uses
  %.13671162.us.us.i = phi ptr [ %.0366.lcssa.i, %.preheader896.us.us.preheader.i ], [ %i.acu, %._crit_edge1155.split.us.us.us.i ] ; 2 uses
  %.13701161.us.us.i = phi float [ %i.aai, %.preheader896.us.us.preheader.i ], [ %.8377.us.us.us.i, %._crit_edge1155.split.us.us.us.i ]
  %i.abj = add nuw nsw i64 %indvars.iv1382.i, 1
  br label %bb.ba

bb.ba:                                            ; preds = %..loopexit892_crit_edge.us.us.us.i, %.preheader896.us.us.i
  %indvars.iv1377.i = phi i64 [ %indvars.iv.next1378.i, %..loopexit892_crit_edge.us.us.us.i ], [ 0, %.preheader896.us.us.i ] ; 3 uses
  %.23711152.us.us.us.i = phi float [ %.8377.us.us.us.i, %..loopexit892_crit_edge.us.us.us.i ], [ %.13701161.us.us.i, %.preheader896.us.us.i ] ; 3 uses
  %i.abk = trunc i64 %indvars.iv1377.i to i32
  %i.abl = mul i32 %i.aal, %i.abk
  %.reass1158.us.us.us.i = add i32 %i.abl, %invariant.op1157.i ; 3 uses
  %i.abm = icmp slt i32 %.reass1158.us.us.us.i, 0
  br i1 %i.abm, label %..loopexit892_crit_edge.us.us.us.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.abn = srem i32 %.reass1158.us.us.us.i, %i.aan
  %i.abo = sdiv i32 %.reass1158.us.us.us.i, %i.aan ; 2 uses
  %.not425.us.us.us.i = icmp eq i32 %i.abn, 0
  %.not426.us.us.us.i = icmp slt i32 %i.abo, %i.gy
  %or.cond208 = select i1 %.not425.us.us.us.i, i1 %.not426.us.us.us.i, i1 false
  br i1 %or.cond208, label %.preheader891.us.us.us.i, label %..loopexit892_crit_edge.us.us.us.i

bb.bc:                                            ; preds = %.preheader891.us.us.us.i, %.loopexit.us.us.us.i
  %indvars.iv1372.i = phi i64 [ 0, %.preheader891.us.us.us.i ], [ %indvars.iv.next1373.i, %.loopexit.us.us.us.i ] ; 3 uses
  %.33721147.us.us.us.i = phi float [ %.23711152.us.us.us.i, %.preheader891.us.us.us.i ], [ %.6375.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %i.abp = trunc i64 %indvars.iv1372.i to i32
  %i.abq = mul i32 %i.aap, %i.abp
  %.reass1151.us.us.us.i = add i32 %invariant.op1150.i, %i.abq ; 3 uses
  %i.abr = icmp slt i32 %.reass1151.us.us.us.i, 0
  br i1 %i.abr, label %.loopexit.us.us.us.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.abs = srem i32 %.reass1151.us.us.us.i, %i.aar
  %i.abt = sdiv i32 %.reass1151.us.us.us.i, %i.aar ; 2 uses
  %.not427.us.us.us.i = icmp eq i32 %i.abs, 0
  %.not428.us.us.us.i = icmp slt i32 %i.abt, %i.gx
  %or.cond209 = select i1 %.not427.us.us.us.i, i1 %.not428.us.us.us.i, i1 false
  br i1 %or.cond209, label %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit446.us.us.us.i:              ; preds = %bb.bd
  %i.abu = add nuw nsw i64 %indvars.iv1372.i, %i.acr
  %.idx1440.i = shl nuw nsw i64 %i.abu, 2
  %i.abv = getelementptr inbounds nuw i8, ptr %.13671162.us.us.i, i64 %.idx1440.i
  %i.abw = load ptr, ptr %1, align 8, !tbaa !18, !noalias !404
  %i.abx = load i64, ptr %i.hh, align 8, !tbaa !20, !noalias !404
  %i.aby = load i64, ptr %i.hi, align 8, !tbaa !57, !noalias !404 ; 2 uses
  %factor.op.mul1141.us.us.us.i = mul i64 %i.aby, %i.abx ; 2 uses
  %i.abz = mul i64 %i.act, %i.aby
  %invariant.gep.us.us.us1179.i = getelementptr i8, ptr %i.abw, i64 %i.abz
  %i.aca = sext i32 %i.abt to i64
  %invariant.gep1143.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us1179.i, i64 %i.aca ; 2 uses
  %.reass1142.us.us.us.i = mul i64 %factor.op.mul1141.us.us.us.i, %indvars.iv1382.i
  %gep1144.us.us.us.i = getelementptr i8, ptr %invariant.gep1143.us.us.us.i, i64 %.reass1142.us.us.us.i
  %i.acb = load i16, ptr %gep1144.us.us.us.i, align 2, !tbaa !328
  %.reass1142.us.us.us.1.i = mul i64 %factor.op.mul1141.us.us.us.i, %i.abj
  %gep1144.us.us.us.1.i = getelementptr i8, ptr %invariant.gep1143.us.us.us.i, i64 %.reass1142.us.us.us.1.i
  %i.acc = load i16, ptr %gep1144.us.us.us.1.i, align 2, !tbaa !328
  %i.acd = insertelement <2 x i16> poison, i16 %i.acb, i64 0
  %i.ace = insertelement <2 x i16> %i.acd, i16 %i.acc, i64 1
  %i.acf = zext <2 x i16> %i.ace to <2 x i32>
  %i.acg = shl nuw <2 x i32> %i.acf, splat (i32 16)
  %i.ach = bitcast <2 x i32> %i.acg to <2 x float>
  %i.aci = load <2 x i16>, ptr %i.abv, align 2, !tbaa !328
  %i.acj = zext <2 x i16> %i.aci to <2 x i32>
  %i.ack = shl nuw <2 x i32> %i.acj, splat (i32 16)
  %i.acl = bitcast <2 x i32> %i.ack to <2 x float>
  %i.acm = fmul fast <2 x float> %i.acl, %i.ach   ; 2 uses
  %i.acn = extractelement <2 x float> %i.acm, i64 0
  %i.aco = fadd fast float %.33721147.us.us.us.i, %i.acn
  %i.acp = extractelement <2 x float> %i.acm, i64 1
  %i.acq = fadd fast float %i.acp, %i.aco
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, %bb.bd, %bb.bc
  %.6375.us.us.us.i = phi nsz float [ %.33721147.us.us.us.i, %bb.bc ], [ %.33721147.us.us.us.i, %bb.bd ], [ %i.acq, %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i ] ; 2 uses
  %indvars.iv.next1373.i = add nuw nsw i64 %indvars.iv1372.i, 1 ; 2 uses
  %exitcond1376.not.i = icmp eq i64 %indvars.iv.next1373.i, %i.abh
  br i1 %exitcond1376.not.i, label %..loopexit892_crit_edge.us.us.us.i, label %bb.bc, !llvm.loop !407

..loopexit892_crit_edge.us.us.us.i:               ; preds = %.loopexit.us.us.us.i, %bb.bb, %bb.ba
  %.8377.us.us.us.i = phi nsz float [ %.23711152.us.us.us.i, %bb.ba ], [ %.23711152.us.us.us.i, %bb.bb ], [ %.6375.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next1378.i = add nuw nsw i64 %indvars.iv1377.i, 1 ; 2 uses
  %exitcond1381.not.i = icmp eq i64 %indvars.iv.next1378.i, %wide.trip.count1360.i
  br i1 %exitcond1381.not.i, label %._crit_edge1155.split.us.us.us.i, label %bb.ba, !llvm.loop !408

.preheader891.us.us.us.i:                         ; preds = %bb.bb
  %i.acr = mul nuw nsw i64 %indvars.iv1377.i, %i.abh
  %i.acs = sext i32 %i.abo to i64
  %i.act = mul nsw i64 %i.acs, %i.hz
  br label %bb.bc

._crit_edge1155.split.us.us.us.i:                 ; preds = %..loopexit892_crit_edge.us.us.us.i
  %i.acu = getelementptr inbounds [2 x i8], ptr %.13671162.us.us.i, i64 %i.wi ; 2 uses
  %indvars.iv.next1383.i = add nuw nsw i64 %indvars.iv1382.i, 2 ; 2 uses
  %i.acv = trunc i64 %indvars.iv.next1383.i to i32 ; 2 uses
  %i.acw = or i32 %i.acv, 1
  %i.acx = icmp slt i32 %i.acw, %i.gw
  br i1 %i.acx, label %.preheader896.us.us.i, label %.preheader898.i, !llvm.loop !409

.preheader898.i:                                  ; preds = %._crit_edge1155.split.us.us.us.i, %.preheader896.us.preheader.i, %.preheader896.preheader.i, %._crit_edge1122.i
  %.1370.lcssa.i = phi float [ %i.aai, %._crit_edge1122.i ], [ %i.aai, %.preheader896.preheader.i ], [ %i.aai, %.preheader896.us.preheader.i ], [ %.8377.us.us.us.i, %._crit_edge1155.split.us.us.us.i ] ; 3 uses
  %.1367.lcssa.i = phi ptr [ %.0366.lcssa.i, %._crit_edge1122.i ], [ %scevgep1366.i, %.preheader896.preheader.i ], [ %scevgep1368.i, %.preheader896.us.preheader.i ], [ %i.acu, %._crit_edge1155.split.us.us.us.i ]
  %.1364.lcssa.i = phi i32 [ %.0363.lcssa.i, %._crit_edge1122.i ], [ %i.aay, %.preheader896.preheader.i ], [ %i.abg, %.preheader896.us.preheader.i ], [ %i.acv, %._crit_edge1155.split.us.us.us.i ] ; 2 uses
  %i.acy = icmp slt i32 %.1364.lcssa.i, %i.gw
  br i1 %i.acy, label %.preheader895.lr.ph.i, label %._crit_edge1201.i

.preheader895.lr.ph.i:                            ; preds = %.preheader898.i
  %i.acz = load i32, ptr %i.d, align 4
  %i.ada = load i32, ptr %i.j, align 4
  %invariant.op1193.i = sub i32 %.neg875.i, %i.ada
  %i.adb = load i32, ptr %i.f, align 4            ; 2 uses
  %i.adc = load i32, ptr %i.a, align 4
  %.fr1236.i = freeze i32 %i.adc                  ; 2 uses
  %i.add = load i32, ptr %i.c, align 4
  %i.ade = load i32, ptr %i.i, align 4
  %.neg869.i = add nuw nsw i32 %.03851212.i, 1
  %invariant.op1186.i = sub i32 %.neg869.i, %i.ade
  %i.adf = load i32, ptr %i.e, align 4            ; 2 uses
  %i.adg = icmp sgt i32 %.fr1236.i, 0
  %or.cond1453.i = and i1 %i.wd, %i.adg
  br i1 %or.cond1453.i, label %.preheader895.us.us.preheader.i, label %._crit_edge1201.i

.preheader895.us.us.preheader.i:                  ; preds = %.preheader895.lr.ph.i
  %i.adh = zext nneg i32 %.fr1236.i to i64        ; 2 uses
  %i.adi = zext i32 %.1364.lcssa.i to i64
  br label %.preheader895.us.us.i

.preheader895.us.us.i:                            ; preds = %._crit_edge1191.split.us.us.us.i, %.preheader895.us.us.preheader.i
  %indvars.iv1395.i = phi i64 [ %i.adi, %.preheader895.us.us.preheader.i ], [ %indvars.iv.next1396.i, %._crit_edge1191.split.us.us.us.i ] ; 2 uses
  %.23681198.us.us.i = phi ptr [ %.1367.lcssa.i, %.preheader895.us.us.preheader.i ], [ %i.aes, %._crit_edge1191.split.us.us.us.i ] ; 2 uses
  %.93781197.us.us.i = phi float [ %.1370.lcssa.i, %.preheader895.us.us.preheader.i ], [ %.15384.us.us.us.i, %._crit_edge1191.split.us.us.us.i ]
  br label %bb.be

bb.be:                                            ; preds = %..loopexit890_crit_edge.us.us.us.i, %.preheader895.us.us.i
  %indvars.iv1390.i = phi i64 [ %indvars.iv.next1391.i, %..loopexit890_crit_edge.us.us.us.i ], [ 0, %.preheader895.us.us.i ] ; 3 uses
  %.103791188.us.us.us.i = phi float [ %.15384.us.us.us.i, %..loopexit890_crit_edge.us.us.us.i ], [ %.93781197.us.us.i, %.preheader895.us.us.i ] ; 3 uses
  %i.adj = trunc i64 %indvars.iv1390.i to i32
  %i.adk = mul i32 %i.acz, %i.adj
  %.reass1194.us.us.us.i = add i32 %i.adk, %invariant.op1193.i ; 3 uses
  %i.adl = icmp slt i32 %.reass1194.us.us.us.i, 0
  br i1 %i.adl, label %..loopexit890_crit_edge.us.us.us.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.adm = srem i32 %.reass1194.us.us.us.i, %i.adb
  %i.adn = sdiv i32 %.reass1194.us.us.us.i, %i.adb ; 2 uses
  %.not421.us.us.us.i = icmp eq i32 %i.adm, 0
  %.not422.us.us.us.i = icmp slt i32 %i.adn, %i.gy
  %or.cond210 = select i1 %.not421.us.us.us.i, i1 %.not422.us.us.us.i, i1 false
  br i1 %or.cond210, label %.preheader.us.us.us.i, label %..loopexit890_crit_edge.us.us.us.i

bb.bg:                                            ; preds = %.preheader.us.us.us.i, %bb.bi
  %indvars.iv1385.i = phi i64 [ 0, %.preheader.us.us.us.i ], [ %indvars.iv.next1386.i, %bb.bi ] ; 3 uses
  %.113801183.us.us.us.i = phi float [ %.103791188.us.us.us.i, %.preheader.us.us.us.i ], [ %.13382.us.us.us.i, %bb.bi ] ; 3 uses
  %i.ado = trunc i64 %indvars.iv1385.i to i32
  %i.adp = mul i32 %i.add, %i.ado
  %.reass1187.us.us.us.i = add i32 %invariant.op1186.i, %i.adp ; 3 uses
  %i.adq = icmp slt i32 %.reass1187.us.us.us.i, 0
  br i1 %i.adq, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.adr = srem i32 %.reass1187.us.us.us.i, %i.adf
  %i.ads = sdiv i32 %.reass1187.us.us.us.i, %i.adf ; 2 uses
  %.not423.us.us.us.i = icmp eq i32 %i.adr, 0
  %.not424.us.us.us.i = icmp slt i32 %i.ads, %i.gx
  %or.cond211 = select i1 %.not423.us.us.us.i, i1 %.not424.us.us.us.i, i1 false
  br i1 %or.cond211, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.bi

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.bh
  %i.adt = load ptr, ptr %1, align 8, !tbaa !18, !noalias !410
  %i.adu = load i64, ptr %i.hh, align 8, !tbaa !20, !noalias !410
  %i.adv = mul i64 %i.adu, %indvars.iv1395.i
  %i.adw = load i64, ptr %i.hi, align 8, !tbaa !57, !noalias !410 ; 2 uses
  %i.adx = mul i64 %i.adv, %i.adw
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.adx
  %i.adz = mul i64 %i.aer, %i.adw
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.adz
  %i.aeb = sext i32 %i.ads to i64
  %i.aec = getelementptr inbounds [2 x i8], ptr %i.aea, i64 %i.aeb
  %i.aed = load i16, ptr %i.aec, align 2, !tbaa !328
  %i.aee = zext i16 %i.aed to i32
  %i.aef = shl nuw i32 %i.aee, 16
  %i.aeg = bitcast i32 %i.aef to float
  %i.aeh = getelementptr inbounds nuw [2 x i8], ptr %i.aeq, i64 %indvars.iv1385.i
  %i.aei = load i16, ptr %i.aeh, align 2, !tbaa !328
  %i.aej = zext i16 %i.aei to i32
  %i.aek = shl nuw i32 %i.aej, 16
  %i.ael = bitcast i32 %i.aek to float
  %i.aem = fmul fast float %i.ael, %i.aeg
  %i.aen = fadd fast float %i.aem, %.113801183.us.us.us.i
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.bh, %bb.bg
  %.13382.us.us.us.i = phi nsz float [ %.113801183.us.us.us.i, %bb.bg ], [ %.113801183.us.us.us.i, %bb.bh ], [ %i.aen, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next1386.i = add nuw nsw i64 %indvars.iv1385.i, 1 ; 2 uses
  %exitcond1389.not.i = icmp eq i64 %indvars.iv.next1386.i, %i.adh
  br i1 %exitcond1389.not.i, label %..loopexit890_crit_edge.us.us.us.i, label %bb.bg, !llvm.loop !413

..loopexit890_crit_edge.us.us.us.i:               ; preds = %bb.bi, %bb.bf, %bb.be
  %.15384.us.us.us.i = phi nsz float [ %.103791188.us.us.us.i, %bb.be ], [ %.103791188.us.us.us.i, %bb.bf ], [ %.13382.us.us.us.i, %bb.bi ] ; 3 uses
  %indvars.iv.next1391.i = add nuw nsw i64 %indvars.iv1390.i, 1 ; 2 uses
  %exitcond1394.not.i = icmp eq i64 %indvars.iv.next1391.i, %wide.trip.count1360.i
  br i1 %exitcond1394.not.i, label %._crit_edge1191.split.us.us.us.i, label %bb.be, !llvm.loop !414

.preheader.us.us.us.i:                            ; preds = %bb.bf
  %i.aeo = mul nuw nsw i64 %indvars.iv1390.i, %i.adh
  %i.aep = sext i32 %i.adn to i64
  %i.aeq = getelementptr inbounds nuw [2 x i8], ptr %.23681198.us.us.i, i64 %i.aeo
  %i.aer = mul nsw i64 %i.aep, %i.hz
  br label %bb.bg

._crit_edge1191.split.us.us.us.i:                 ; preds = %..loopexit890_crit_edge.us.us.us.i
  %i.aes = getelementptr inbounds [2 x i8], ptr %.23681198.us.us.i, i64 %i.wj
  %indvars.iv.next1396.i = add nuw nsw i64 %indvars.iv1395.i, 1 ; 2 uses
  %i.aet = trunc nuw i64 %indvars.iv.next1396.i to i32
  %i.aeu = icmp sgt i32 %i.gw, %i.aet
  br i1 %i.aeu, label %.preheader895.us.us.i, label %._crit_edge1201.i, !llvm.loop !415

._crit_edge1201.i:                                ; preds = %._crit_edge1191.split.us.us.us.i, %.preheader895.lr.ph.i, %.preheader898.i
  %.9378.lcssa.i = phi float [ %.1370.lcssa.i, %.preheader898.i ], [ %.1370.lcssa.i, %.preheader895.lr.ph.i ], [ %.15384.us.us.us.i, %._crit_edge1191.split.us.us.us.i ] ; 13 uses
  switch i32 %i.wa, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.bj
    i32 2, label %bb.bk
    i32 3, label %bb.bl
    i32 4, label %bb.bn
    i32 5, label %bb.bo
    i32 6, label %bb.bp
  ]

bb.bj:                                            ; preds = %._crit_edge1201.i
  %i.aev = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9378.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bk:                                            ; preds = %._crit_edge1201.i
  %i.aew = load ptr, ptr %i.ej, align 8, !tbaa !18
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !39
  %i.aey = fcmp fast ogt float %.9378.lcssa.i, 0.000000e+00
  %i.aez = select fast i1 %i.aey, float 1.000000e+00, float %i.aex
  %i.afa = fmul fast float %i.aez, %.9378.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bl:                                            ; preds = %._crit_edge1201.i
  %i.afb = load ptr, ptr %i.ej, align 8, !tbaa !18 ; 2 uses
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !39
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afb, i64 4
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !39 ; 2 uses
  %.0828.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9378.lcssa.i, float %i.afc) ; 2 uses
  %i.aff = fcmp fast ogt float %.0828.i, %i.afe
  br i1 %i.aff, label %bb.bm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bm:                                            ; preds = %bb.bl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bn:                                            ; preds = %._crit_edge1201.i
  %.sroa.speculated785.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9378.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated785.i, float f0xC2B0C0A5)
  %i.afg = fneg fast float %.sroa.speculated.i
  %i.afh = call fast float @llvm.exp.f32(float %i.afg)
  %i.afi = fadd fast float %i.afh, 1.000000e+00
  %i.afj = fdiv fast float 1.000000e+00, %i.afi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bo:                                            ; preds = %._crit_edge1201.i
  %i.afk = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9378.lcssa.i)
  %i.afl = fadd fast float %i.afk, 1.000000e+00
  %i.afm = call fast float @llvm.log.f32(float %i.afl)
  %i.afn = call fast float @llvm.tanh.f32(float %i.afm)
  %i.afo = fmul fast float %i.afn, %.9378.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bp:                                            ; preds = %._crit_edge1201.i
  %i.afp = load ptr, ptr %i.ej, align 8, !tbaa !18 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.kl = trunc nuw i64 %i.kk to i32
  %i.km = icmp sgt i32 %i.ac, %i.kl
  br i1 %i.km, label %.preheader668.us, label %.preheader670.loopexit, !llvm.loop !466

.preheader670.loopexit:                           ; preds = %._crit_edge.us764
  %i.kn = trunc nuw i64 %indvars.iv.next826 to i32
  br label %.preheader670

.preheader670:                                    ; preds = %.preheader668.preheader, %.preheader670.loopexit, %.preheader671
  %.6630.lcssa = phi <4 x float> [ %.0624.lcssa, %.preheader671 ], [ %.10634.us, %.preheader670.loopexit ], [ %.0624.lcssa, %.preheader668.preheader ]
  %.7.lcssa = phi <4 x float> [ %.1621.lcssa, %.preheader671 ], [ %.11.us, %.preheader670.loopexit ], [ %.1621.lcssa, %.preheader668.preheader ] ; 3 uses
  %.1196.lcssa = phi i32 [ %.0195.lcssa, %.preheader671 ], [ %i.kn, %.preheader670.loopexit ], [ %i.ib, %.preheader668.preheader ] ; 2 uses
  %.1193.lcssa = phi ptr [ %.0192.lcssa, %.preheader671 ], [ %i.kj, %.preheader670.loopexit ], [ %scevgep818, %.preheader668.preheader ]
  %i.ko = icmp slt i32 %.1196.lcssa, %i.ac
  br i1 %i.ko, label %.preheader667.lr.ph, label %._crit_edge779

.preheader667.lr.ph:                              ; preds = %.preheader670
  %i.kp = load i32, ptr %8, align 4, !tbaa !68    ; 2 uses
  %i.kq = icmp sgt i32 %i.kp, 0
  %.neg654 = add nuw nsw i32 %.0190787, 1
  %i.kr = load i32, ptr %16, align 4, !tbaa !68
  %i.ks = shl nsw i32 %i.kr, 2
  %i.kt = sext i32 %i.ks to i64
  br i1 %i.kq, label %.preheader667.lr.ph.split.us, label %._crit_edge779

.preheader667.lr.ph.split.us:                     ; preds = %.preheader667.lr.ph
  %i.ku = load i32, ptr %9, align 4, !tbaa !68
  %i.kv = load i32, ptr %10, align 4, !tbaa !68
  %invariant.op774.us = sub i32 %.neg660.a, %i.kv
  %i.kw = zext i32 %.1196.lcssa to i64
  br label %.preheader667.us

.preheader667.us:                                 ; preds = %._crit_edge.us785, %.preheader667.lr.ph.split.us
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %._crit_edge.us785 ], [ %i.kw, %.preheader667.lr.ph.split.us ] ; 2 uses
  %.2194778.us = phi ptr [ %i.mn, %._crit_edge.us785 ], [ %.1193.lcssa, %.preheader667.lr.ph.split.us ] ; 2 uses
  %.12776.us = phi <4 x float> [ %.16.us, %._crit_edge.us785 ], [ %.7.lcssa, %.preheader667.lr.ph.split.us ]
  br label %bb.q

bb.q:                                             ; preds = %.preheader667.us, %.loopexit.us
  %.0198771.us = phi i32 [ 0, %.preheader667.us ], [ %i.mg, %.loopexit.us ] ; 3 uses
  %.13770.us = phi <4 x float> [ %.12776.us, %.preheader667.us ], [ %.16.us, %.loopexit.us ] ; 4 uses
  %i.kx = mul nsw i32 %i.ku, %.0198771.us
  %.reass775.us = add i32 %i.kx, %invariant.op774.us ; 3 uses
  %i.ky = icmp slt i32 %.reass775.us, 0
  br i1 %i.ky, label %.loopexit.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.kz = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.la = srem i32 %.reass775.us, %i.kz
  %i.lb = sdiv i32 %.reass775.us, %i.kz           ; 2 uses
  %.not223.us = icmp eq i32 %i.la, 0
  %.not224.us = icmp slt i32 %i.lb, %i.ae
  %or.cond877 = select i1 %.not223.us, i1 %.not224.us, i1 false
  br i1 %or.cond877, label %.preheader.us, label %.loopexit.us

bb.s:                                             ; preds = %.lr.ph.us782, %bb.v
  %indvars.iv828 = phi i64 [ 0, %.lr.ph.us782 ], [ %indvars.iv.next829, %bb.v ] ; 3 uses
  %.14768.us = phi <4 x float> [ %.13770.us, %.lr.ph.us782 ], [ %.15.us, %bb.v ] ; 3 uses
  %i.lc = trunc i64 %indvars.iv828 to i32
  %i.ld = mul i32 %i.mj, %i.lc
  %.reass.us781 = add i32 %i.ld, %invariant.op.us783 ; 3 uses
  %i.le = icmp slt i32 %.reass.us781, 0
  br i1 %i.le, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.lf = load i32, ptr %15, align 4, !tbaa !68   ; 2 uses
  %i.lg = srem i32 %.reass.us781, %i.lf
  %i.lh = sdiv i32 %.reass.us781, %i.lf           ; 2 uses
  %.not225.us = icmp eq i32 %i.lg, 0
  %.not226.us = icmp slt i32 %i.lh, %i.ad
  %or.cond878 = select i1 %.not225.us, i1 %.not226.us, i1 false
  br i1 %or.cond878, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.li = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !467
  %i.lj = load ptr, ptr %4, align 8, !tbaa !18, !noalias !467
  %i.lk = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !467
  %i.ll = mul i64 %i.lk, %indvars.iv834
  %i.lm = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !467 ; 2 uses
  %i.ln = mul i64 %i.ll, %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.ln
  %i.lp = sext i32 %i.li to i64
  %i.lq = trunc i64 %indvars.iv828 to i32
  %i.lr = add i32 %i.ml, %i.lq
  %i.ls = shl nsw i32 %i.lr, 2
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.2194778.us, i64 %i.lt
  %i.lv = mul nsw i64 %i.lp, %i.mm
  %i.lw = mul i64 %i.lv, %i.lm
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lw
  %i.ly = sext i32 %i.lh to i64
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.ly
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !39
  %i.mb = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.md = load <4 x float>, ptr %i.lu, align 16, !tbaa !245
  %i.me = fmul fast <4 x float> %i.mc, %i.md
  %i.mf = fadd fast <4 x float> %i.me, %.14768.us
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.15.us = phi nsz <4 x float> [ %.14768.us, %bb.s ], [ %i.mf, %bb.u ], [ %.14768.us, %bb.t ] ; 2 uses
  %indvars.iv.next829 = add nuw nsw i64 %indvars.iv828, 1 ; 2 uses
  %exitcond832.not = icmp eq i64 %indvars.iv.next829, %wide.trip.count831
  br i1 %exitcond832.not, label %.loopexit.us, label %bb.s, !llvm.loop !470

.loopexit.us:                                     ; preds = %bb.v, %.preheader.us, %bb.r, %bb.q
  %.16.us = phi nsz <4 x float> [ %.13770.us, %bb.q ], [ %.13770.us, %bb.r ], [ %.13770.us, %.preheader.us ], [ %.15.us, %bb.v ] ; 3 uses
  %i.mg = add nuw nsw i32 %.0198771.us, 1         ; 2 uses
  %exitcond833.not = icmp eq i32 %i.mg, %i.kp
  br i1 %exitcond833.not, label %._crit_edge.us785, label %bb.q, !llvm.loop !471

.preheader.us:                                    ; preds = %bb.r
  %i.mh = load i32, ptr %12, align 4, !tbaa !68   ; 3 uses
  %i.mi = icmp sgt i32 %i.mh, 0
  br i1 %i.mi, label %.lr.ph.us782, label %.loopexit.us

.lr.ph.us782:                                     ; preds = %.preheader.us
  %i.mj = load i32, ptr %13, align 4, !tbaa !68
  %i.mk = load i32, ptr %14, align 4, !tbaa !68
  %invariant.op.us783 = sub i32 %.neg654, %i.mk
  %i.ml = mul nuw nsw i32 %i.mh, %.0198771.us
  %i.mm = sext i32 %i.lb to i64
  %wide.trip.count831 = zext nneg i32 %i.mh to i64
  br label %bb.s

._crit_edge.us785:                                ; preds = %.loopexit.us
  %i.mn = getelementptr inbounds [4 x i8], ptr %.2194778.us, i64 %i.kt
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 1 ; 2 uses
  %i.mo = trunc nuw i64 %indvars.iv.next835 to i32
  %i.mp = icmp sgt i32 %i.ac, %i.mo
  br i1 %i.mp, label %.preheader667.us, label %._crit_edge779, !llvm.loop !472

._crit_edge779:                                   ; preds = %._crit_edge.us785, %.preheader667.lr.ph, %.preheader670
  %.12.lcssa = phi <4 x float> [ %.7.lcssa, %.preheader670 ], [ %.7.lcssa, %.preheader667.lr.ph ], [ %.16.us, %._crit_edge.us785 ]
  %i.mq = fadd fast <4 x float> %.0635.lcssa, %.6630.lcssa
  %i.mr = fadd fast <4 x float> %i.mq, %.12.lcssa ; 10 uses
  %i.ms = load i32, ptr %17, align 4, !tbaa !68
  switch i32 %i.ms, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.w
    i32 2, label %.noexc308
    i32 3, label %bb.x
    i32 4, label %.noexc309
    i32 5, label %.noexc310
    i32 6, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge779
  %i.mt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mr, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc308:                                        ; preds = %._crit_edge779
  %i.mu = load ptr, ptr %18, align 8, !tbaa !18
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !39
  %i.mw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.mr)
  %i.mx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.mr)
  %i.my = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> poison, <4 x i32> zeroinitializer
  %i.na = fmul fast <4 x float> %i.mz, %i.mx
  %i.nb = fadd fast <4 x float> %i.na, %i.mw
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.x:                                             ; preds = %._crit_edge779
  %i.nc = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !39
  %i.ne = insertelement <4 x float> poison, float %i.nd, i64 0
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !39
  %i.ni = insertelement <4 x float> poison, float %i.nh, i64 0
  %i.nj = shufflevector <4 x float> %i.ni, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mr, <4 x float> nofpclass(nan inf) %i.nf)
  %i.nl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nk, <4 x float> nofpclass(nan inf) %i.nj)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc309:                                        ; preds = %._crit_edge779
  %i.nm = fneg fast <4 x float> %i.mr
  %i.nn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nm, <4 x float> splat (float f0x42B0C0A5))
  %i.no = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.np = fmul fast <4 x float> %i.no, splat (float f0x3FB8AA3B)
  %i.nq = fadd fast <4 x float> %i.np, splat (float 5.000000e-01) ; 2 uses
  %i.nr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nq)
  %i.ns = sitofp fast <4 x i32> %i.nr to <4 x float> ; 2 uses
  %i.nt = fcmp fast olt <4 x float> %i.nq, %i.ns
  %i.nu = select <4 x i1> %i.nt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nv = fsub fast <4 x float> %i.ns, %i.nu      ; 2 uses
  %i.nw = fmul fast <4 x float> %i.nv, splat (float f0x3F317218)
  %i.nx = fsub fast <4 x float> %i.no, %i.nw      ; 8 uses
  %i.ny = fmul fast <4 x float> %i.nx, %i.nx
  %i.nz = fmul fast <4 x float> %i.nx, splat (float f0x39506967)
  %i.oa = fadd fast <4 x float> %i.nz, splat (float f0x3AB743CE)
  %i.ob = fmul fast <4 x float> %i.oa, %i.nx
  %i.oc = fadd fast <4 x float> %i.ob, splat (float f0x3C088908)
  %i.od = fmul fast <4 x float> %i.oc, %i.nx
  %i.oe = fadd fast <4 x float> %i.od, splat (float f0x3D2AA9C1)
  %i.of = fmul fast <4 x float> %i.oe, %i.nx
  %i.og = fadd fast <4 x float> %i.of, splat (float f0x3E2AAAAA)
  %i.oh = fmul fast <4 x float> %i.og, %i.nx
  %i.oi = fadd fast <4 x float> %i.oh, splat (float 5.000000e-01)
  %i.oj = fmul fast <4 x float> %i.ny, %i.oi
  %i.ok = fadd fast <4 x float> %i.nx, %i.oj
  %i.ol = fadd fast <4 x float> %i.ok, splat (float 1.000000e+00)
  %i.om = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nv)
  %i.on = shl <4 x i32> %i.om, splat (i32 23)
  %i.oo = add <4 x i32> %i.on, splat (i32 1065353216)
  %i.op = bitcast <4 x i32> %i.oo to <4 x float>
  %i.oq = fmul fast <4 x float> %i.ol, %i.op
  %i.or = fadd fast <4 x float> %i.oq, splat (float 1.000000e+00)
  %i.os = fdiv fast <4 x float> splat (float 1.000000e+00), %i.or
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc310:                                        ; preds = %._crit_edge779
  %i.ot = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mr, <4 x float> splat (float f0x42B0C0A5))
  %i.ou = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ot, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ov = fmul fast <4 x float> %i.ou, splat (float f0x3FB8AA3B)
  %i.ow = fadd fast <4 x float> %i.ov, splat (float 5.000000e-01) ; 2 uses
  %i.ox = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ow)
  %i.oy = sitofp fast <4 x i32> %i.ox to <4 x float> ; 2 uses
  %i.oz = fcmp fast olt <4 x float> %i.ow, %i.oy
  %i.pa = select <4 x i1> %i.oz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.pb = fsub fast <4 x float> %i.oy, %i.pa      ; 2 uses
  %i.pc = fmul fast <4 x float> %i.pb, splat (float f0x3F317218)
  %i.pd = fsub fast <4 x float> %i.ou, %i.pc      ; 8 uses
  %i.pe = fmul fast <4 x float> %i.pd, %i.pd
  %i.pf = fmul fast <4 x float> %i.pd, splat (float f0x39506967)
  %i.pg = fadd fast <4 x float> %i.pf, splat (float f0x3AB743CE)
  %i.ph = fmul fast <4 x float> %i.pg, %i.pd
  %i.pi = fadd fast <4 x float> %i.ph, splat (float f0x3C088908)
  %i.pj = fmul fast <4 x float> %i.pi, %i.pd
  %i.pk = fadd fast <4 x float> %i.pj, splat (float f0x3D2AA9C1)
  %i.pl = fmul fast <4 x float> %i.pk, %i.pd
  %i.pm = fadd fast <4 x float> %i.pl, splat (float f0x3E2AAAAA)
  %i.pn = fmul fast <4 x float> %i.pm, %i.pd
  %i.po = fadd fast <4 x float> %i.pn, splat (float 5.000000e-01)
  %i.pp = fmul fast <4 x float> %i.pe, %i.po
  %i.pq = fadd fast <4 x float> %i.pd, %i.pp
  %i.pr = fadd fast <4 x float> %i.pq, splat (float 1.000000e+00)
  %i.ps = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pb)
  %i.pt = shl <4 x i32> %i.ps, splat (i32 23)
  %i.pu = add <4 x i32> %i.pt, splat (i32 1065353216)
  %i.pv = bitcast <4 x i32> %i.pu to <4 x float>
  %i.pw = fmul fast <4 x float> %i.pr, %i.pv
  %i.px = fadd fast <4 x float> %i.pw, splat (float 1.000000e+00) ; 2 uses
  %i.py = fcmp fast ole <4 x float> %i.px, zeroinitializer
  %i.pz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.px, <4 x float> splat (float f0x00800000))
  %i.qa = bitcast <4 x float> %i.pz to <4 x i32>  ; 2 uses
  %i.qb = lshr <4 x i32> %i.qa, splat (i32 23)
  %i.qc = and <4 x i32> %i.qa, splat (i32 -2139095041)
  %i.qd = or disjoint <4 x i32> %i.qc, splat (i32 1056964608)
  %i.qe = bitcast <4 x i32> %i.qd to <4 x float>  ; 3 uses
  %i.qf = add nsw <4 x i32> %i.qb, splat (i32 -127)
  %i.qg = sitofp fast <4 x i32> %i.qf to <4 x float> ; 2 uses
  %i.qh = fadd fast <4 x float> %i.qg, splat (float 1.000000e+00)
  %i.qi = fcmp fast olt <4 x float> %i.qe, splat (float f0x3F3504F3) ; 2 uses
  %i.qj = select <4 x i1> %i.qi, <4 x float> %i.qe, <4 x float> zeroinitializer
  %i.qk = fadd fast <4 x float> %i.qe, splat (float -1.000000e+00)
  %i.ql = select fast <4 x i1> %i.qi, <4 x float> %i.qg, <4 x float> %i.qh
  %i.qm = fadd fast <4 x float> %i.qk, %i.qj      ; 12 uses
  %i.qn = fmul fast <4 x float> %i.qm, %i.qm      ; 2 uses
  %i.qo = fmul fast <4 x float> %i.qm, splat (float f0x3D9021BB)
  %i.qp = fadd fast <4 x float> %i.qo, splat (float f0xBDEBD1B8)
  %i.qq = fmul fast <4 x float> %i.qp, %i.qm
  %i.qr = fadd fast <4 x float> %i.qq, splat (float f0x3DEF251A)
  %i.qs = fmul fast <4 x float> %i.qr, %i.qm
  %i.qt = fadd fast <4 x float> %i.qs, splat (float f0xBDFE5D4F)
  %i.qu = fmul fast <4 x float> %i.qt, %i.qm
  %i.qv = fadd fast <4 x float> %i.qu, splat (float f0x3E11E9BF)
  %i.qw = fmul fast <4 x float> %i.qv, %i.qm
  %i.qx = fadd fast <4 x float> %i.qw, splat (float f0xBE2AAE50)
  %i.qy = fmul fast <4 x float> %i.qx, %i.qm
  %i.qz = fadd fast <4 x float> %i.qy, splat (float f0x3E4CCEAC)
  %i.ra = fmul fast <4 x float> %i.qz, %i.qm
  %i.rb = fadd fast <4 x float> %i.ra, splat (float f0xBE7FFFFC)
  %i.rc = fmul fast <4 x float> %i.rb, %i.qm
  %i.rd = fadd fast <4 x float> %i.rc, splat (float f0x3EAAAAAA)
  %i.re = fmul fast <4 x float> %i.qn, %i.qm
  %reass.mul.a = fmul fast <4 x float> %i.re, %i.rd
  %.neg648 = fmul fast <4 x float> %i.qn, splat (float -5.000000e-01)
  %reass.mul650 = fmul fast <4 x float> %i.ql, splat (float f0x3F317218)
  %20 = fadd fast <4 x float> %i.qm, %.neg648
  %i.rf = fadd fast <4 x float> %reass.mul.a, %20
  %i.rg = fadd fast <4 x float> %i.rf, %reass.mul650
  %.neg = fmul fast <4 x float> %i.rg, splat (float -2.000000e+00)
  %i.rh = select fast <4 x i1> %i.py, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.ri = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rh, <4 x float> splat (float f0x42B0C0A5))
  %i.rj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ri, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rk = fmul fast <4 x float> %i.rj, splat (float f0x3FB8AA3B)
  %i.rl = fadd fast <4 x float> %i.rk, splat (float 5.000000e-01) ; 2 uses
  %i.rm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rl)
  %i.rn = sitofp fast <4 x i32> %i.rm to <4 x float> ; 2 uses
  %i.ro = fcmp fast olt <4 x float> %i.rl, %i.rn
  %i.rp = select <4 x i1> %i.ro, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.rq = fsub fast <4 x float> %i.rn, %i.rp      ; 2 uses
  %i.rr = fmul fast <4 x float> %i.rq, splat (float f0x3F317218)
  %i.rs = fsub fast <4 x float> %i.rj, %i.rr      ; 8 uses
  %i.rt = fmul fast <4 x float> %i.rs, %i.rs
  %i.ru = fmul fast <4 x float> %i.rs, splat (float f0x39506967)
  %i.rv = fadd fast <4 x float> %i.ru, splat (float f0x3AB743CE)
  %i.rw = fmul fast <4 x float> %i.rv, %i.rs
  %i.rx = fadd fast <4 x float> %i.rw, splat (float f0x3C088908)
  %i.ry = fmul fast <4 x float> %i.rx, %i.rs
  %i.rz = fadd fast <4 x float> %i.ry, splat (float f0x3D2AA9C1)
  %i.sa = fmul fast <4 x float> %i.rz, %i.rs
  %i.sb = fadd fast <4 x float> %i.sa, splat (float f0x3E2AAAAA)
  %i.sc = fmul fast <4 x float> %i.sb, %i.rs
  %i.sd = fadd fast <4 x float> %i.sc, splat (float 5.000000e-01)
  %i.se = fmul fast <4 x float> %i.rt, %i.sd
  %i.sf = fadd fast <4 x float> %i.rs, %i.se
  %i.sg = fadd fast <4 x float> %i.sf, splat (float 1.000000e+00)
  %i.sh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rq)
  %i.si = shl <4 x i32> %i.sh, splat (i32 23)
  %i.sj = add <4 x i32> %i.si, splat (i32 1065353216)
  %i.sk = bitcast <4 x i32> %i.sj to <4 x float>
  %i.sl = fmul fast <4 x float> %i.sg, %i.sk
  %i.sm = fadd fast <4 x float> %i.sl, splat (float 1.000000e+00)
  %i.sn = fdiv fast <4 x float> splat (float 2.000000e+00), %i.sm
  %i.so = fadd fast <4 x float> %i.sn, splat (float -1.000000e+00)
  %i.sp = fmul fast <4 x float> %i.so, %i.mr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.y:                                             ; preds = %._crit_edge779
  %i.sq = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !39
  %i.ss = insertelement <4 x float> poison, float %i.sr, i64 0
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> zeroinitializer
  %i.su = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %i.sv = load float, ptr %i.su, align 4, !tbaa !39
  %i.sw = insertelement <4 x float> poison, float %i.sv, i64 0
  %i.sx = shufflevector <4 x float> %i.sw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sy = fmul fast <4 x float> %i.st, %i.mr
  %i.sz = fadd fast <4 x float> %i.sy, %i.sx
  %i.ta = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sz, <4 x float> zeroinitializer)
  %i.tb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ta, <4 x float> splat (float 1.000000e+00))
  %i.tc = fmul fast <4 x float> %i.tb, %i.mr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.y, %.noexc310, %.noexc309, %bb.x, %.noexc308, %bb.w, %._crit_edge779
  %.0.i = phi nsz <4 x float> [ %i.tc, %bb.y ], [ %i.mt, %bb.w ], [ %i.nb, %.noexc308 ], [ %i.nl, %bb.x ], [ %i.os, %.noexc309 ], [ %i.sp, %.noexc310 ], [ %i.mr, %._crit_edge779 ] ; 5 uses
  switch i32 %i.ah, label %bb.aa [
    i32 4, label %.thread
    i32 1, label %bb.z
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  store <4 x float> %.0.i, ptr %.1788, align 1, !tbaa !245
  %i.td = getelementptr inbounds nuw i8, ptr %.1788, i64 16
  br label %bb.aa

bb.z:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.1788, align 4, !tbaa !39
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.0.i, i64 1
  %i.te = load i64, ptr %19, align 8, !tbaa !248  ; 3 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.1788, i64 %i.te
  store float %.sroa.0.4.vec.extract, ptr %i.tf, align 4, !tbaa !39
  %.sroa.0.8.vec.extract = extractelement <4 x float> %.0.i, i64 2
  %.idx = shl i64 %i.te, 3
  %i.tg = getelementptr inbounds nuw i8, ptr %.1788, i64 %.idx
  store float %.sroa.0.8.vec.extract, ptr %i.tg, align 4, !tbaa !39
  %.sroa.0.12.vec.extract = extractelement <4 x float> %.0.i, i64 3
  %.idx222 = mul i64 %i.te, 12
  %i.th = getelementptr inbounds nuw i8, ptr %.1788, i64 %.idx222
  store float %.sroa.0.12.vec.extract, ptr %i.th, align 4, !tbaa !39
  %i.ti = getelementptr inbounds nuw i8, ptr %.1788, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.z
  %.3 = phi ptr [ %i.ti, %bb.z ], [ %.1788, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.td, %.thread ] ; 2 uses
  %i.tj = add nuw nsw i32 %.0190787, 1            ; 2 uses
  %exitcond837.not = icmp eq i32 %i.tj, %i.af
  br i1 %exitcond837.not, label %._crit_edge, label %bb.c, !llvm.loop !473

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
  %i.e = load i32, ptr %2, align 4, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.h = load i32, ptr %0, align 4, !tbaa !68     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !68
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !68
  %i.k = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
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
  %i.y = load i32, ptr %i.q, align 8, !tbaa !216
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc299, label %._crit_edge806

.noexc299:                                        ; preds = %.noexc299.lr.ph, %._crit_edge803.split
  %.0805 = phi i32 [ %i.bi, %._crit_edge803.split ], [ %i.k, %.noexc299.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !67
  %.fr = freeze i32 %i.aa                         ; 2 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !69
  %i.ac = mul i32 %i.ab, %.fr                     ; 8 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !56  ; 4 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !216 ; 3 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !56  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !216 ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !67  ; 2 uses
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %.preheader684.lr.ph, label %._crit_edge803.split

.preheader684.lr.ph:                              ; preds = %.noexc299
  %i.aj = load i32, ptr %3, align 4, !tbaa !68
  %i.ak = shl nsw i32 %.0805, 2
  %i.al = add nsw i32 %i.aj, %i.ak                ; 3 uses
  %i.am = icmp sgt i32 %i.af, 0
  %i.an = sext i32 %i.al to i64
  %i.ao = sdiv i32 %i.al, 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp sgt i32 %i.ac, 3
  br i1 %i.am, label %.preheader684.preheader, label %._crit_edge803.split

.preheader684.preheader:                          ; preds = %.preheader684.lr.ph
  %i.ar = load ptr, ptr %5, align 8, !tbaa !18, !noalias !474
  %i.as = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !474
  %i.at = sdiv i32 %i.al, %i.ah
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !57, !noalias !474
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = add i32 %i.ac, -4                       ; 3 uses
  %i.ba = lshr i32 %i.az, 1
  %i.bb = and i32 %i.ba, 2147483646
  %narrow = add nuw i32 %i.bb, 2
  %i.bc = zext i32 %narrow to i64
  %i.bd = and i32 %i.az, -4
  %i.be = add i32 %i.bd, 4
  %i.bf = sext i32 %i.ac to i64
  %i.bg = and i32 %i.az, -4
  %i.bh = add i32 %i.bg, 4
  %invariant.op = add nsw i64 %i.bf, -3
  br label %.preheader684

.preheader684:                                    ; preds = %.preheader684.preheader, %._crit_edge
  %.0188802 = phi ptr [ %.3, %._crit_edge ], [ %i.ay, %.preheader684.preheader ]
  %.0189801 = phi i32 [ %.neg672.a, %._crit_edge ], [ 0, %.preheader684.preheader ]
end_hunk_4
begin_hunk_5_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a

.preheader682:                                    ; preds = %.preheader680.preheader, %.preheader682.loopexit, %.preheader683
  %.6642.lcssa = phi <4 x float> [ %.0636.lcssa, %.preheader683 ], [ %.10646.us, %.preheader682.loopexit ], [ %.0636.lcssa, %.preheader680.preheader ]
  %.7.lcssa = phi <4 x float> [ %.1633.lcssa, %.preheader683 ], [ %.11.us, %.preheader682.loopexit ], [ %.1633.lcssa, %.preheader680.preheader ] ; 3 uses
  %.1196.lcssa = phi i32 [ %.0195.lcssa, %.preheader683 ], [ %i.mz, %.preheader682.loopexit ], [ %i.jz, %.preheader680.preheader ] ; 2 uses
  %.1193.lcssa = phi ptr [ %.0192.lcssa, %.preheader683 ], [ %i.mv, %.preheader682.loopexit ], [ %scevgep830, %.preheader680.preheader ]
  %i.na = icmp slt i32 %.1196.lcssa, %i.ac
  br i1 %i.na, label %.preheader679.lr.ph, label %._crit_edge791

.preheader679.lr.ph:                              ; preds = %.preheader682
  %i.nb = load i32, ptr %8, align 4, !tbaa !68    ; 2 uses
  %i.nc = icmp sgt i32 %i.nb, 0
  %.neg666 = add nuw nsw i32 %.0190799, 1
  %i.nd = load i32, ptr %16, align 4, !tbaa !68
  %i.ne = shl nsw i32 %i.nd, 2
  %i.nf = sext i32 %i.ne to i64
  br i1 %i.nc, label %.preheader679.lr.ph.split.us, label %._crit_edge791

.preheader679.lr.ph.split.us:                     ; preds = %.preheader679.lr.ph
  %i.ng = load i32, ptr %9, align 4, !tbaa !68
  %i.nh = load i32, ptr %10, align 4, !tbaa !68
  %invariant.op786.us = sub i32 %.neg672.a, %i.nh
  %i.ni = zext i32 %.1196.lcssa to i64
  br label %.preheader679.us

.preheader679.us:                                 ; preds = %._crit_edge.us797, %.preheader679.lr.ph.split.us
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %._crit_edge.us797 ], [ %i.ni, %.preheader679.lr.ph.split.us ] ; 2 uses
  %.2194790.us = phi ptr [ %i.pg, %._crit_edge.us797 ], [ %.1193.lcssa, %.preheader679.lr.ph.split.us ] ; 2 uses
  %.12788.us = phi <4 x float> [ %.16.us, %._crit_edge.us797 ], [ %.7.lcssa, %.preheader679.lr.ph.split.us ]
  br label %bb.q

bb.q:                                             ; preds = %.preheader679.us, %.loopexit.us
  %.0198783.us = phi i32 [ 0, %.preheader679.us ], [ %i.oz, %.loopexit.us ] ; 3 uses
  %.13782.us = phi <4 x float> [ %.12788.us, %.preheader679.us ], [ %.16.us, %.loopexit.us ] ; 4 uses
  %i.nj = mul nsw i32 %i.ng, %.0198783.us
  %.reass787.us = add i32 %i.nj, %invariant.op786.us ; 3 uses
  %i.nk = icmp slt i32 %.reass787.us, 0
  br i1 %i.nk, label %.loopexit.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.nl = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.nm = srem i32 %.reass787.us, %i.nl
  %i.nn = sdiv i32 %.reass787.us, %i.nl           ; 2 uses
  %.not223.us = icmp eq i32 %i.nm, 0
  %.not224.us = icmp slt i32 %i.nn, %i.ae
  %or.cond889 = select i1 %.not223.us, i1 %.not224.us, i1 false
  br i1 %or.cond889, label %.preheader.us, label %.loopexit.us

bb.s:                                             ; preds = %.lr.ph.us794, %bb.v
  %indvars.iv840 = phi i64 [ 0, %.lr.ph.us794 ], [ %indvars.iv.next841, %bb.v ] ; 3 uses
  %.14780.us = phi <4 x float> [ %.13782.us, %.lr.ph.us794 ], [ %.15.us, %bb.v ] ; 3 uses
  %i.no = trunc i64 %indvars.iv840 to i32
  %i.np = mul i32 %i.pc, %i.no
  %.reass.us793 = add i32 %i.np, %invariant.op.us795 ; 3 uses
  %i.nq = icmp slt i32 %.reass.us793, 0
  br i1 %i.nq, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.nr = load i32, ptr %15, align 4, !tbaa !68   ; 2 uses
  %i.ns = srem i32 %.reass.us793, %i.nr
  %i.nt = sdiv i32 %.reass.us793, %i.nr           ; 2 uses
  %.not225.us = icmp eq i32 %i.ns, 0
  %.not226.us = icmp slt i32 %i.nt, %i.ad
  %or.cond890 = select i1 %.not225.us, i1 %.not226.us, i1 false
  br i1 %or.cond890, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.nu = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !497
  %i.nv = load ptr, ptr %4, align 8, !tbaa !18, !noalias !497
  %i.nw = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !497
  %i.nx = mul i64 %i.nw, %indvars.iv846
  %i.ny = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !497 ; 2 uses
  %i.nz = mul i64 %i.nx, %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nz
  %i.ob = sext i32 %i.nu to i64
  %i.oc = trunc i64 %indvars.iv840 to i32
  %i.od = add i32 %i.pe, %i.oc
  %i.oe = shl nsw i32 %i.od, 2
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %.2194790.us, i64 %i.of
  %i.oh = mul nsw i64 %i.ob, %i.pf
  %i.oi = mul i64 %i.oh, %i.ny
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.oi
  %i.ok = sext i32 %i.nt to i64
  %i.ol = getelementptr inbounds [2 x i8], ptr %i.oj, i64 %i.ok
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !328
  %i.on = zext i16 %i.om to i32
  %i.oo = shl nuw i32 %i.on, 16
  %i.op = insertelement <4 x i32> poison, i32 %i.oo, i64 0
  %i.oq = bitcast <4 x i32> %i.op to <4 x float>
  %i.or = shufflevector <4 x float> %i.oq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.os = load i64, ptr %i.og, align 1, !tbaa !245
  %i.ot = insertelement <2 x i64> poison, i64 %i.os, i64 0
  %i.ou = bitcast <2 x i64> %i.ot to <8 x i16>
  %i.ov = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ou, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ow = bitcast <8 x i16> %i.ov to <4 x float>
  %i.ox = fmul fast <4 x float> %i.or, %i.ow
  %i.oy = fadd fast <4 x float> %i.ox, %.14780.us
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.15.us = phi nsz <4 x float> [ %.14780.us, %bb.s ], [ %i.oy, %bb.u ], [ %.14780.us, %bb.t ] ; 2 uses
  %indvars.iv.next841 = add nuw nsw i64 %indvars.iv840, 1 ; 2 uses
  %exitcond844.not = icmp eq i64 %indvars.iv.next841, %wide.trip.count843
  br i1 %exitcond844.not, label %.loopexit.us, label %bb.s, !llvm.loop !500

.loopexit.us:                                     ; preds = %bb.v, %.preheader.us, %bb.r, %bb.q
  %.16.us = phi nsz <4 x float> [ %.13782.us, %bb.q ], [ %.13782.us, %bb.r ], [ %.13782.us, %.preheader.us ], [ %.15.us, %bb.v ] ; 3 uses
  %i.oz = add nuw nsw i32 %.0198783.us, 1         ; 2 uses
  %exitcond845.not = icmp eq i32 %i.oz, %i.nb
  br i1 %exitcond845.not, label %._crit_edge.us797, label %bb.q, !llvm.loop !501

.preheader.us:                                    ; preds = %bb.r
  %i.pa = load i32, ptr %12, align 4, !tbaa !68   ; 3 uses
  %i.pb = icmp sgt i32 %i.pa, 0
  br i1 %i.pb, label %.lr.ph.us794, label %.loopexit.us

.lr.ph.us794:                                     ; preds = %.preheader.us
  %i.pc = load i32, ptr %13, align 4, !tbaa !68
  %i.pd = load i32, ptr %14, align 4, !tbaa !68
  %invariant.op.us795 = sub i32 %.neg666, %i.pd
  %i.pe = mul nuw nsw i32 %i.pa, %.0198783.us
  %i.pf = sext i32 %i.nn to i64
  %wide.trip.count843 = zext nneg i32 %i.pa to i64
  br label %bb.s

._crit_edge.us797:                                ; preds = %.loopexit.us
  %i.pg = getelementptr inbounds [2 x i8], ptr %.2194790.us, i64 %i.nf
  %indvars.iv.next847 = add nuw nsw i64 %indvars.iv846, 1 ; 2 uses
  %i.ph = trunc nuw i64 %indvars.iv.next847 to i32
  %i.pi = icmp sgt i32 %i.ac, %i.ph
  br i1 %i.pi, label %.preheader679.us, label %._crit_edge791, !llvm.loop !502

._crit_edge791:                                   ; preds = %._crit_edge.us797, %.preheader679.lr.ph, %.preheader682
  %.12.lcssa = phi <4 x float> [ %.7.lcssa, %.preheader682 ], [ %.7.lcssa, %.preheader679.lr.ph ], [ %.16.us, %._crit_edge.us797 ]
  %i.pj = fadd fast <4 x float> %.0647.lcssa, %.6642.lcssa
  %i.pk = fadd fast <4 x float> %i.pj, %.12.lcssa ; 10 uses
  %i.pl = load i32, ptr %17, align 4, !tbaa !68
  switch i32 %i.pl, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.w
    i32 2, label %.noexc308
    i32 3, label %bb.x
    i32 4, label %.noexc309
    i32 5, label %.noexc310
    i32 6, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge791
  %i.pm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pk, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc308:                                        ; preds = %._crit_edge791
  %i.pn = load ptr, ptr %18, align 8, !tbaa !18
  %i.po = load float, ptr %i.pn, align 4, !tbaa !39
  %i.pp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.pk)
  %i.pq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.pk)
  %i.pr = insertelement <4 x float> poison, float %i.po, i64 0
  %i.ps = shufflevector <4 x float> %i.pr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pt = fmul fast <4 x float> %i.ps, %i.pq
  %i.pu = fadd fast <4 x float> %i.pt, %i.pp
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.x:                                             ; preds = %._crit_edge791
  %i.pv = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !39
  %i.px = insertelement <4 x float> poison, float %i.pw, i64 0
  %i.py = shufflevector <4 x float> %i.px, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !39
  %i.qb = insertelement <4 x float> poison, float %i.qa, i64 0
  %i.qc = shufflevector <4 x float> %i.qb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pk, <4 x float> nofpclass(nan inf) %i.py)
  %i.qe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qd, <4 x float> nofpclass(nan inf) %i.qc)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc309:                                        ; preds = %._crit_edge791
  %i.qf = fneg fast <4 x float> %i.pk
  %i.qg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qf, <4 x float> splat (float f0x42B0C0A5))
  %i.qh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.qi = fmul fast <4 x float> %i.qh, splat (float f0x3FB8AA3B)
  %i.qj = fadd fast <4 x float> %i.qi, splat (float 5.000000e-01) ; 2 uses
  %i.qk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qj)
  %i.ql = sitofp fast <4 x i32> %i.qk to <4 x float> ; 2 uses
  %i.qm = fcmp fast olt <4 x float> %i.qj, %i.ql
  %i.qn = select <4 x i1> %i.qm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qo = fsub fast <4 x float> %i.ql, %i.qn      ; 2 uses
  %i.qp = fmul fast <4 x float> %i.qo, splat (float f0x3F317218)
  %i.qq = fsub fast <4 x float> %i.qh, %i.qp      ; 8 uses
  %i.qr = fmul fast <4 x float> %i.qq, %i.qq
  %i.qs = fmul fast <4 x float> %i.qq, splat (float f0x39506967)
  %i.qt = fadd fast <4 x float> %i.qs, splat (float f0x3AB743CE)
  %i.qu = fmul fast <4 x float> %i.qt, %i.qq
  %i.qv = fadd fast <4 x float> %i.qu, splat (float f0x3C088908)
  %i.qw = fmul fast <4 x float> %i.qv, %i.qq
  %i.qx = fadd fast <4 x float> %i.qw, splat (float f0x3D2AA9C1)
  %i.qy = fmul fast <4 x float> %i.qx, %i.qq
  %i.qz = fadd fast <4 x float> %i.qy, splat (float f0x3E2AAAAA)
  %i.ra = fmul fast <4 x float> %i.qz, %i.qq
  %i.rb = fadd fast <4 x float> %i.ra, splat (float 5.000000e-01)
  %i.rc = fmul fast <4 x float> %i.qr, %i.rb
  %i.rd = fadd fast <4 x float> %i.qq, %i.rc
  %i.re = fadd fast <4 x float> %i.rd, splat (float 1.000000e+00)
  %i.rf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qo)
  %i.rg = shl <4 x i32> %i.rf, splat (i32 23)
  %i.rh = add <4 x i32> %i.rg, splat (i32 1065353216)
  %i.ri = bitcast <4 x i32> %i.rh to <4 x float>
  %i.rj = fmul fast <4 x float> %i.re, %i.ri
  %i.rk = fadd fast <4 x float> %i.rj, splat (float 1.000000e+00)
  %i.rl = fdiv fast <4 x float> splat (float 1.000000e+00), %i.rk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc310:                                        ; preds = %._crit_edge791
  %i.rm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pk, <4 x float> splat (float f0x42B0C0A5))
  %i.rn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ro = fmul fast <4 x float> %i.rn, splat (float f0x3FB8AA3B)
  %i.rp = fadd fast <4 x float> %i.ro, splat (float 5.000000e-01) ; 2 uses
  %i.rq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rp)
  %i.rr = sitofp fast <4 x i32> %i.rq to <4 x float> ; 2 uses
  %i.rs = fcmp fast olt <4 x float> %i.rp, %i.rr
  %i.rt = select <4 x i1> %i.rs, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ru = fsub fast <4 x float> %i.rr, %i.rt      ; 2 uses
  %i.rv = fmul fast <4 x float> %i.ru, splat (float f0x3F317218)
  %i.rw = fsub fast <4 x float> %i.rn, %i.rv      ; 8 uses
  %i.rx = fmul fast <4 x float> %i.rw, %i.rw
  %i.ry = fmul fast <4 x float> %i.rw, splat (float f0x39506967)
  %i.rz = fadd fast <4 x float> %i.ry, splat (float f0x3AB743CE)
  %i.sa = fmul fast <4 x float> %i.rz, %i.rw
  %i.sb = fadd fast <4 x float> %i.sa, splat (float f0x3C088908)
  %i.sc = fmul fast <4 x float> %i.sb, %i.rw
  %i.sd = fadd fast <4 x float> %i.sc, splat (float f0x3D2AA9C1)
  %i.se = fmul fast <4 x float> %i.sd, %i.rw
  %i.sf = fadd fast <4 x float> %i.se, splat (float f0x3E2AAAAA)
  %i.sg = fmul fast <4 x float> %i.sf, %i.rw
  %i.sh = fadd fast <4 x float> %i.sg, splat (float 5.000000e-01)
  %i.si = fmul fast <4 x float> %i.rx, %i.sh
  %i.sj = fadd fast <4 x float> %i.rw, %i.si
  %i.sk = fadd fast <4 x float> %i.sj, splat (float 1.000000e+00)
  %i.sl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ru)
  %i.sm = shl <4 x i32> %i.sl, splat (i32 23)
  %i.sn = add <4 x i32> %i.sm, splat (i32 1065353216)
  %i.so = bitcast <4 x i32> %i.sn to <4 x float>
  %i.sp = fmul fast <4 x float> %i.sk, %i.so
  %i.sq = fadd fast <4 x float> %i.sp, splat (float 1.000000e+00) ; 2 uses
  %i.sr = fcmp fast ole <4 x float> %i.sq, zeroinitializer
  %i.ss = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sq, <4 x float> splat (float f0x00800000))
  %i.st = bitcast <4 x float> %i.ss to <4 x i32>  ; 2 uses
  %i.su = lshr <4 x i32> %i.st, splat (i32 23)
  %i.sv = and <4 x i32> %i.st, splat (i32 -2139095041)
  %i.sw = or disjoint <4 x i32> %i.sv, splat (i32 1056964608)
  %i.sx = bitcast <4 x i32> %i.sw to <4 x float>  ; 3 uses
  %i.sy = add nsw <4 x i32> %i.su, splat (i32 -127)
  %i.sz = sitofp fast <4 x i32> %i.sy to <4 x float> ; 2 uses
  %i.ta = fadd fast <4 x float> %i.sz, splat (float 1.000000e+00)
  %i.tb = fcmp fast olt <4 x float> %i.sx, splat (float f0x3F3504F3) ; 2 uses
  %i.tc = select <4 x i1> %i.tb, <4 x float> %i.sx, <4 x float> zeroinitializer
  %i.td = fadd fast <4 x float> %i.sx, splat (float -1.000000e+00)
  %i.te = select fast <4 x i1> %i.tb, <4 x float> %i.sz, <4 x float> %i.ta
  %i.tf = fadd fast <4 x float> %i.td, %i.tc      ; 12 uses
  %i.tg = fmul fast <4 x float> %i.tf, %i.tf      ; 2 uses
  %i.th = fmul fast <4 x float> %i.tf, splat (float f0x3D9021BB)
  %i.ti = fadd fast <4 x float> %i.th, splat (float f0xBDEBD1B8)
  %i.tj = fmul fast <4 x float> %i.ti, %i.tf
  %i.tk = fadd fast <4 x float> %i.tj, splat (float f0x3DEF251A)
  %i.tl = fmul fast <4 x float> %i.tk, %i.tf
  %i.tm = fadd fast <4 x float> %i.tl, splat (float f0xBDFE5D4F)
  %i.tn = fmul fast <4 x float> %i.tm, %i.tf
  %i.to = fadd fast <4 x float> %i.tn, splat (float f0x3E11E9BF)
  %i.tp = fmul fast <4 x float> %i.to, %i.tf
  %i.tq = fadd fast <4 x float> %i.tp, splat (float f0xBE2AAE50)
  %i.tr = fmul fast <4 x float> %i.tq, %i.tf
  %i.ts = fadd fast <4 x float> %i.tr, splat (float f0x3E4CCEAC)
  %i.tt = fmul fast <4 x float> %i.ts, %i.tf
  %i.tu = fadd fast <4 x float> %i.tt, splat (float f0xBE7FFFFC)
  %i.tv = fmul fast <4 x float> %i.tu, %i.tf
  %i.tw = fadd fast <4 x float> %i.tv, splat (float f0x3EAAAAAA)
  %i.tx = fmul fast <4 x float> %i.tg, %i.tf
  %reass.mul.a = fmul fast <4 x float> %i.tx, %i.tw
  %.neg660 = fmul fast <4 x float> %i.tg, splat (float -5.000000e-01)
  %reass.mul662 = fmul fast <4 x float> %i.te, splat (float f0x3F317218)
  %20 = fadd fast <4 x float> %i.tf, %.neg660
  %i.ty = fadd fast <4 x float> %reass.mul.a, %20
  %i.tz = fadd fast <4 x float> %i.ty, %reass.mul662
  %.neg = fmul fast <4 x float> %i.tz, splat (float -2.000000e+00)
  %i.ua = select fast <4 x i1> %i.sr, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.ub = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ua, <4 x float> splat (float f0x42B0C0A5))
  %i.uc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ub, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ud = fmul fast <4 x float> %i.uc, splat (float f0x3FB8AA3B)
  %i.ue = fadd fast <4 x float> %i.ud, splat (float 5.000000e-01) ; 2 uses
  %i.uf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ue)
  %i.ug = sitofp fast <4 x i32> %i.uf to <4 x float> ; 2 uses
  %i.uh = fcmp fast olt <4 x float> %i.ue, %i.ug
  %i.ui = select <4 x i1> %i.uh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.uj = fsub fast <4 x float> %i.ug, %i.ui      ; 2 uses
  %i.uk = fmul fast <4 x float> %i.uj, splat (float f0x3F317218)
  %i.ul = fsub fast <4 x float> %i.uc, %i.uk      ; 8 uses
  %i.um = fmul fast <4 x float> %i.ul, %i.ul
  %i.un = fmul fast <4 x float> %i.ul, splat (float f0x39506967)
  %i.uo = fadd fast <4 x float> %i.un, splat (float f0x3AB743CE)
  %i.up = fmul fast <4 x float> %i.uo, %i.ul
  %i.uq = fadd fast <4 x float> %i.up, splat (float f0x3C088908)
  %i.ur = fmul fast <4 x float> %i.uq, %i.ul
  %i.us = fadd fast <4 x float> %i.ur, splat (float f0x3D2AA9C1)
  %i.ut = fmul fast <4 x float> %i.us, %i.ul
  %i.uu = fadd fast <4 x float> %i.ut, splat (float f0x3E2AAAAA)
  %i.uv = fmul fast <4 x float> %i.uu, %i.ul
  %i.uw = fadd fast <4 x float> %i.uv, splat (float 5.000000e-01)
  %i.ux = fmul fast <4 x float> %i.um, %i.uw
  %i.uy = fadd fast <4 x float> %i.ul, %i.ux
  %i.uz = fadd fast <4 x float> %i.uy, splat (float 1.000000e+00)
  %i.va = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.uj)
  %i.vb = shl <4 x i32> %i.va, splat (i32 23)
  %i.vc = add <4 x i32> %i.vb, splat (i32 1065353216)
  %i.vd = bitcast <4 x i32> %i.vc to <4 x float>
  %i.ve = fmul fast <4 x float> %i.uz, %i.vd
  %i.vf = fadd fast <4 x float> %i.ve, splat (float 1.000000e+00)
  %i.vg = fdiv fast <4 x float> splat (float 2.000000e+00), %i.vf
  %i.vh = fadd fast <4 x float> %i.vg, splat (float -1.000000e+00)
  %i.vi = fmul fast <4 x float> %i.vh, %i.pk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.y:                                             ; preds = %._crit_edge791
  %i.vj = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !39
  %i.vl = insertelement <4 x float> poison, float %i.vk, i64 0
  %i.vm = shufflevector <4 x float> %i.vl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !39
  %i.vp = insertelement <4 x float> poison, float %i.vo, i64 0
  %i.vq = shufflevector <4 x float> %i.vp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vr = fmul fast <4 x float> %i.vm, %i.pk
  %i.vs = fadd fast <4 x float> %i.vr, %i.vq
  %i.vt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.vs, <4 x float> zeroinitializer)
  %i.vu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.vt, <4 x float> splat (float 1.000000e+00))
  %i.vv = fmul fast <4 x float> %i.vu, %i.pk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.y, %.noexc310, %.noexc309, %bb.x, %.noexc308, %bb.w, %._crit_edge791
  %.0.i = phi nsz <4 x float> [ %i.vv, %bb.y ], [ %i.pm, %bb.w ], [ %i.pu, %.noexc308 ], [ %i.qe, %bb.x ], [ %i.rl, %.noexc309 ], [ %i.vi, %.noexc310 ], [ %i.pk, %._crit_edge791 ] ; 2 uses
  switch i32 %i.ah, label %bb.aa [
    i32 4, label %.thread
    i32 1, label %bb.z
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.vw = bitcast <4 x float> %.0.i to <8 x i16>
  %i.vx = shufflevector <8 x i16> %i.vw, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.vy = bitcast <8 x i16> %i.vx to <4 x float>
  %i.vz = shufflevector <4 x float> %i.vy, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.wa = bitcast <4 x float> %i.vz to <2 x i64>
  %i.wb = extractelement <2 x i64> %i.wa, i64 0
  store i64 %i.wb, ptr %.1800, align 1, !tbaa !245
  %i.wc = getelementptr inbounds nuw i8, ptr %.1800, i64 8
  br label %bb.aa

bb.z:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.wd = bitcast <4 x float> %.0.i to <8 x i16>  ; 4 uses
  %i.we = extractelement <8 x i16> %i.wd, i64 1
  store i16 %i.we, ptr %.1800, align 2, !tbaa !328
  %i.wf = extractelement <8 x i16> %i.wd, i64 3
  %i.wg = load i64, ptr %19, align 8, !tbaa !248  ; 3 uses
  %i.wh = getelementptr inbounds nuw [2 x i8], ptr %.1800, i64 %i.wg
  store i16 %i.wf, ptr %i.wh, align 2, !tbaa !328
  %i.wi = extractelement <8 x i16> %i.wd, i64 5
  %.idx = shl i64 %i.wg, 2
  %i.wj = getelementptr inbounds nuw i8, ptr %.1800, i64 %.idx
  store i16 %i.wi, ptr %i.wj, align 2, !tbaa !328
  %i.wk = extractelement <8 x i16> %i.wd, i64 7
  %.idx222 = mul i64 %i.wg, 6
  %i.wl = getelementptr inbounds nuw i8, ptr %.1800, i64 %.idx222
  store i16 %i.wk, ptr %i.wl, align 2, !tbaa !328
  %i.wm = getelementptr inbounds nuw i8, ptr %.1800, i64 2
  br label %bb.aa

bb.aa:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.z
  %.3 = phi ptr [ %i.wm, %bb.z ], [ %.1800, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.wc, %.thread ] ; 2 uses
  %i.wn = add nuw nsw i32 %.0190799, 1            ; 2 uses
  %exitcond849.not = icmp eq i32 %i.wn, %i.af
  br i1 %exitcond849.not, label %._crit_edge, label %bb.c, !llvm.loop !503

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
declare i32 @llvm.smax.i32(i32, i32) #13

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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{ptr @_ZN4ncnn17Deconvolution_x86D2Ev}
!22 = !{!23, !6, i64 352}
!23 = !{!"_ZTSN4ncnn13DeconvolutionE", !24, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !12, i64 280, !6, i64 352, !12, i64 360, !12, i64 432}
!24 = !{!"_ZTSN4ncnn5LayerE", !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !25, i64 13, !25, i64 14, !25, i64 15, !25, i64 16, !25, i64 17, !25, i64 18, !25, i64 19, !25, i64 20, !25, i64 21, !25, i64 22, !25, i64 23, !25, i64 24, !25, i64 25, !25, i64 26, !25, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !26, i64 48, !26, i64 80, !29, i64 112, !29, i64 136, !33, i64 160, !33, i64 184}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !15, i64 8, !7, i64 16}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!38 = !{!23, !6, i64 276}
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !7, i64 0}
!41 = distinct !{null}
!42 = !{!43, !44, i64 504}
!43 = !{!"_ZTSN4ncnn17Deconvolution_x86E", !23, i64 0, !44, i64 504, !44, i64 512, !12, i64 520}
!44 = !{!"p1 _ZTSN4ncnn5LayerE", !13, i64 0}
!45 = !{!46, !25, i64 32}
!46 = !{!"_ZTSN4ncnn6OptionE", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !25, i64 28, !25, i64 29, !25, i64 30, !25, i64 31, !25, i64 32, !25, i64 33, !25, i64 34, !25, i64 35, !25, i64 36, !25, i64 37, !25, i64 38, !25, i64 39, !6, i64 40, !25, i64 44, !25, i64 45, !25, i64 46, !25, i64 47, !7, i64 48, !25, i64 49, !25, i64 50, !25, i64 51, !25, i64 52, !25, i64 53, !25, i64 54, !25, i64 55, !25, i64 56, !25, i64 57, !25, i64 58, !25, i64 59, !25, i64 60, !25, i64 61, !25, i64 62, !25, i64 63}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!23, !6, i64 212}
!50 = !{!23, !6, i64 216}
!51 = !{!23, !6, i64 272}
!52 = !{!23, !6, i64 208}
!53 = !{!46, !25, i64 39}
!54 = !{!46, !25, i64 29}
!55 = !{!43, !44, i64 512}
!56 = !{!12, !6, i64 44}
!57 = !{!12, !15, i64 16}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
end_hunk_5
