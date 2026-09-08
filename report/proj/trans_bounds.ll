Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/trans_bounds?download=true
inline.NumInlined: 330
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@proj_trans_bounds_3D:bb.a
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.al = extractvalue { ptr, i32 } %i.ak, 1
  %i.am = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #16
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.p, label %_ZNSt6vectorIdSaIdEED2Ev.exit669

bb.p:                                             ; preds = %bb.o
  %i.ao = extractvalue { ptr, i32 } %i.ak, 0
  %i.ap = call ptr @__cxa_begin_catch(ptr %i.ao) #16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #16
  invoke void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef %i.at)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.au = invoke i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit unwind label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit669 unwind label %bb.cr

bb.t:                                             ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669

bb.u:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699
  %i.ax = ptrtoaddr ptr %i.aj to i64              ; 28 uses
  store double 0.000000e+00, ptr %i.aj, align 8, !tbaa !14
  %i.ay = getelementptr i8, ptr %i.aj, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !14
  br i1 %.not470, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.az = invoke noundef i32 @_Z21pj_opposite_direction12PJ_DIRECTION(i32 noundef %2)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ba = invoke fastcc noundef i32 @_ZL24target_crs_lon_lat_orderP6pj_ctxP8PJconsts12PJ_DIRECTION(ptr noundef %0, ptr noundef %1, i32 noundef %i.az)
          to label %bb.x unwind label %bb.y       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %.not473 = icmp eq i32 %i.ba, -1
  %i.bb = icmp ne i32 %i.ba, 0
  br i1 %.not473, label %.loopexit980, label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread

bb.z:                                             ; preds = %bb.x, %bb.u
  %.1426 = phi i1 [ %i.bb, %bb.x ], [ false, %bb.u ] ; 2 uses
  br i1 %i.k, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.bd = invoke fastcc noundef i32 @_ZL24target_crs_lon_lat_orderP6pj_ctxP8PJconsts12PJ_DIRECTION(ptr noundef %0, ptr noundef %1, i32 noundef %2)
          to label %bb.ab unwind label %bb.ac     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %.not474 = icmp eq i32 %i.bd, -1
  br i1 %.not474, label %.loopexit980, label %bb.ad

bb.ac:                                            ; preds = %bb.ae, %bb.ad, %bb.aa
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread

bb.ad:                                            ; preds = %bb.ab
  %i.bf = icmp ne i32 %i.bd, 0                    ; 3 uses
  %i.bg = invoke fastcc noundef zeroext i1 @_ZL19contains_north_poleP8PJconsts12PJ_DIRECTIONddddb(ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %6, double noundef %7, i1 noundef zeroext %i.bf)
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  %i.bh = invoke fastcc noundef zeroext i1 @_ZL19contains_south_poleP8PJconsts12PJ_DIRECTIONddddb(ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %6, double noundef %7, i1 noundef zeroext %i.bf)
          to label %bb.af unwind label %bb.ac

bb.af:                                            ; preds = %bb.ae, %bb.z
  %.1430 = phi i1 [ false, %bb.z ], [ %i.bg, %bb.ae ]
  %.1428 = phi i1 [ false, %bb.z ], [ %i.bh, %bb.ae ]
  %.1424 = phi i1 [ false, %bb.z ], [ %i.bf, %bb.ae ]
  %i.bi = fcmp olt double %6, %3
  %or.cond491 = and i1 %i.bi, %.not470
  br i1 %or.cond491, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  br i1 %.1426, label %.thread1136, label %.thread1142.invoke

bb.ah:                                            ; preds = %.thread1142.invoke, %.invoke
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread

bb.ai:                                            ; preds = %bb.af
  %i.bk = fsub double %6, %3
  %i.bl = uitofp nneg i32 %i.o to double
  %i.bm = fdiv double %i.bk, %i.bl                ; 2 uses
  %i.bn = fcmp olt double %7, %4
  %or.cond493 = and i1 %i.bn, %.not470
  br i1 %or.cond493, label %bb.aj, label %bb.al

.thread1136:                                      ; preds = %bb.ag
  %i.bo = fsub double %6, %3
  %i.bp = fadd double %i.bo, 3.600000e+02
  %i.bq = uitofp nneg i32 %i.o to double
  %i.br = fdiv double %i.bp, %i.bq
  %i.bs = fcmp olt double %7, %4
  %or.cond4931138 = and i1 %i.bs, %.not470
  br i1 %or.cond4931138, label %.thread1142.invoke, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  br i1 %.1426, label %.thread1142.invoke, label %bb.ak

.thread1142.invoke:                               ; preds = %bb.ag, %bb.aj, %.thread1136
  invoke void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.5)
          to label %.invoke unwind label %bb.ah

.invoke:                                          ; preds = %.thread1142.invoke
  %i.bt = invoke i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027)
          to label %.loopexit980 unwind label %bb.ah ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.bu = fsub double %7, %4
  %i.bv = fadd double %i.bu, 3.600000e+02
  br label %bb.am

bb.al:                                            ; preds = %.thread1136, %bb.ai
  %.04321140 = phi double [ %i.br, %.thread1136 ], [ %i.bm, %bb.ai ]
  %i.bw = fsub double %7, %4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sink = phi double [ %i.bw, %bb.al ], [ %i.bv, %bb.ak ]
  %.04321139 = phi double [ %.04321140, %bb.al ], [ %i.bm, %bb.ak ] ; 14 uses
  %i.bx = uitofp nneg i32 %i.o to double
  %i.by = fdiv double %.sink, %i.bx               ; 11 uses
  store double f0x7FEFFFFFFFFFFFFF, ptr %9, align 8, !tbaa !14
  store double f0x7FEFFFFFFFFFFFFF, ptr %10, align 8, !tbaa !14
  store double f0x7FEFFFFFFFFFFFFF, ptr %11, align 8, !tbaa !14
  store double f0xFFEFFFFFFFFFFFFF, ptr %12, align 8, !tbaa !14
  store double f0xFFEFFFFFFFFFFFFF, ptr %13, align 8, !tbaa !14
  store double f0xFFEFFFFFFFFFFFFF, ptr %14, align 8, !tbaa !14
  br i1 %i.z, label %.lr.ph1010.preheader, label %.preheader979

.preheader979:                                    ; preds = %bb.am
  %i.bz = shl nuw nsw i32 %i.o, 1
  %i.ca = mul nuw nsw i32 %i.o, 3
  %.not = xor i1 %i.k, true
  %or.cond8 = or i1 %.1424, %.not                 ; 2 uses
  %i.cb = icmp samesign ult i32 %15, 2            ; 4 uses
  %i.cc = zext nneg i32 %i.o to i64               ; 5 uses
  %i.cd = add nuw nsw i32 %15, 1                  ; 2 uses
  %i.ce = call i32 @llvm.umax.i32(i32 %15, i32 2)
  %wide.trip.count1076 = zext nneg i32 %i.cd to i64 ; 2 uses
  %i.cf = zext nneg i32 %i.ca to i64              ; 3 uses
  %i.cg = zext nneg i32 %i.bz to i64              ; 3 uses
  %wide.trip.count = zext nneg i32 %i.cd to i64   ; 7 uses
  %i.ch = shl nuw nsw i64 %i.cf, 3                ; 20 uses
  %i.ci = shl nuw nsw i64 %i.cg, 3                ; 20 uses
  %i.cj = shl nuw nsw i64 %wide.trip.count, 3     ; 20 uses
  %i.ck = add i64 %i.cj, %i.ax
  %i.cl = add i64 %i.ci, %i.ax
  %i.cm = add i64 %i.ch, %i.ax
  %i.cn = add i64 %i.cj, %i.ax
  %i.co = add i64 %i.ci, %i.ax
  %i.cp = add i64 %i.ch, %i.ax
  %i.cq = sub i64 %i.cj, %i.ax
  %i.cr = sub i64 %i.cj, %i.ax
  %i.cs = sub i64 %i.ci, %i.ax
  %i.ct = sub i64 %i.ci, %i.ax
  %i.cu = sub i64 %i.ch, %i.ax
  %i.cv = sub i64 %i.ch, %i.ax
  %i.cw = add i64 %i.ci, %i.ax
  %i.cx = add i64 %i.ch, %i.ax
  %i.cy = add i64 %i.ci, %i.ax
  %i.cz = add i64 %i.ch, %i.ax
  %i.da = add i64 %i.cj, %i.ax
  %i.db = sub i64 %i.ci, %i.da
  %i.dc = add i64 %i.cj, %i.ax
  %i.dd = sub i64 %i.ci, %i.dc
  %i.de = add i64 %i.cj, %i.ax
  %i.df = sub i64 %i.ch, %i.de
  %i.dg = add i64 %i.cj, %i.ax
  %i.dh = sub i64 %i.ch, %i.dg
  %i.di = add i64 %i.ch, %i.ax
  %i.dj = add i64 %i.ch, %i.ax
  %i.dk = add i64 %i.ci, %i.ax
  %i.dl = sub i64 %i.ch, %i.dk
  %i.dm = add i64 %i.ci, %i.ax
  %i.dn = sub i64 %i.ch, %i.dm
  %i.do = add nsw i64 %i.ab, -1                   ; 25 uses
  %i.dp = add nsw i64 %i.ab, -2                   ; 5 uses
  %i.dq = zext nneg i32 %15 to i64
  %min.iters.check1289 = icmp ult i32 %15, 25
  %i.dr = sub nsw i64 %i.cj, %i.ci
  %diff.check1246 = icmp ugt i64 %i.dr, -16
  %invariant.op = sub i64 %i.cj, %i.cw
  %i.ds = sub nsw i64 %i.cj, %i.ch
  %diff.check1252 = icmp ugt i64 %i.ds, -16
  %invariant.op1789 = sub i64 %i.cj, %i.cx
  %invariant.op1791 = add i64 %i.df, -1
  %invariant.op1793 = add i64 %i.dh, -1
  %invariant.op1795 = add i64 %i.dd, -1
  %invariant.op1797 = add i64 %i.db, -1
  %invariant.op1799 = add i64 %i.cv, -1
  %invariant.op1801 = add i64 %i.cu, -1
  %invariant.op1803 = add i64 %i.ct, -1
  %invariant.op1805 = add i64 %i.cs, -1
  %invariant.op1807 = add i64 %i.cr, -1
  %invariant.op1809 = add i64 %i.cq, -1
  %invariant.op1811 = sub i64 %i.ci, %i.dj
  %invariant.op1813 = sub i64 %i.ci, %i.di
  %i.dt = sub nsw i64 %i.ci, %i.ch
  %invariant.op1815 = sub i64 %i.cj, %i.cz
  %invariant.op1817 = sub i64 %i.cj, %i.cy
  %diff.check1274 = icmp ugt i64 %i.dt, -16
  %i.du = insertelement <8 x i1> poison, i1 %diff.check1274, i64 3
  %invariant.op1819 = add i64 %i.dl, -1
  %invariant.op1821 = add i64 %i.dn, -1
  %n.vec1291 = and i64 %wide.trip.count, 32766    ; 3 uses
  %broadcast.splatinsert1294 = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat1295 = shufflevector <2 x double> %broadcast.splatinsert1294, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1296 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1297 = shufflevector <2 x double> %broadcast.splatinsert1296, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1298 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1299 = shufflevector <2 x double> %broadcast.splatinsert1298, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1300 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1301 = shufflevector <2 x double> %broadcast.splatinsert1300, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1302 = insertelement <2 x double> poison, double %.04321139, i64 0
  %broadcast.splat1303 = shufflevector <2 x double> %broadcast.splatinsert1302, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1304 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1305 = shufflevector <2 x double> %broadcast.splatinsert1304, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1312 = icmp eq i64 %n.vec1291, %wide.trip.count
  %i.dv = insertelement <2 x double> poison, double %i.by, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %.04321139, i64 1 ; 2 uses
  %i.dx = insertelement <2 x double> poison, double %7, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %3, i64 1
  %i.dz = insertelement <2 x double> poison, double %4, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %6, i64 1
  %xtraiter = and i64 %i.do, 3                    ; 3 uses
  %i.eb = icmp ult i64 %i.dp, 3
  %unroll_iter = and i64 %i.do, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1639 = icmp ne i64 %xtraiter, 0
  %xtraiter1641 = and i64 %i.do, 1
  %unroll_iter1646 = and i64 %i.do, -2
  %lcmp.mod1643.not = icmp eq i64 %xtraiter1641, 0
  %lcmp.mod1645 = trunc i64 %i.do to i1
  %xtraiter1649 = and i64 %i.do, 3                ; 3 uses
  %i.ec = icmp ult i64 %i.dp, 3
  %unroll_iter1654 = and i64 %i.do, -4
  %lcmp.mod1651.not = icmp eq i64 %xtraiter1649, 0
  %lcmp.mod1653 = icmp ne i64 %xtraiter1649, 0
  %xtraiter1657 = and i64 %i.do, 1
  %unroll_iter1662 = and i64 %i.do, -2
  %lcmp.mod1659.not = icmp eq i64 %xtraiter1657, 0
  %lcmp.mod1661 = trunc i64 %i.do to i1
  %xtraiter1665 = and i64 %i.do, 3                ; 3 uses
  %i.ed = icmp ult i64 %i.dp, 3
  %unroll_iter1670 = and i64 %i.do, -4
  %lcmp.mod1667.not = icmp eq i64 %xtraiter1665, 0
  %lcmp.mod1669 = icmp ne i64 %xtraiter1665, 0
  %xtraiter1673 = and i64 %i.do, 1
  %unroll_iter1678 = and i64 %i.do, -2
  %lcmp.mod1675.not = icmp eq i64 %xtraiter1673, 0
  %lcmp.mod1677 = trunc i64 %i.do to i1
  %xtraiter1682 = and i64 %i.do, 1
  %unroll_iter1687 = and i64 %i.do, -2
  %lcmp.mod1684.not = icmp eq i64 %xtraiter1682, 0
  %lcmp.mod1686 = trunc i64 %i.do to i1
  %xtraiter1691 = and i64 %i.do, 3                ; 3 uses
  %i.ee = icmp ult i64 %i.dp, 3
  %unroll_iter1696 = and i64 %i.do, -4
  %lcmp.mod1693.not = icmp eq i64 %xtraiter1691, 0
  %lcmp.mod1695 = icmp ne i64 %xtraiter1691, 0
  %xtraiter1700 = and i64 %i.do, 3                ; 3 uses
  %i.ef = icmp ult i64 %i.dp, 3
  %unroll_iter1705 = and i64 %i.do, -4
  %lcmp.mod1702.not = icmp eq i64 %xtraiter1700, 0
  %lcmp.mod1704 = icmp ne i64 %xtraiter1700, 0
  %xtraiter1708 = and i64 %i.do, 1
  %unroll_iter1713 = and i64 %i.do, -2
  %lcmp.mod1710.not = icmp eq i64 %xtraiter1708, 0
  %lcmp.mod1712 = trunc i64 %i.do to i1
  %min.iters.check = icmp ult i32 %15, 3
  %n.vec = and i64 %wide.trip.count, 32764        ; 3 uses
  %broadcast.splatinsert1190 = insertelement <2 x double> poison, double %.04321139, i64 0
  %broadcast.splat1191 = shufflevector <2 x double> %broadcast.splatinsert1190, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1192 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1193 = shufflevector <2 x double> %broadcast.splatinsert1192, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter1715 = and i64 %wide.trip.count, 1
  %lcmp.mod1716.not = icmp eq i64 %xtraiter1715, 0
  br label %.lr.ph.preheader

.lr.ph1033.preheader:                             ; preds = %.lr.ph1024.1, %middle.block1485
  %indvars.iv.next1101.1.lcssa = phi i64 [ %i.js, %middle.block1485 ], [ %indvars.iv.next1101.1, %.lr.ph1024.1 ] ; 3 uses
  %i.eg = fsub double %8, %5
  %i.eh = uitofp nneg i32 %i.o to double
  %i.ei = fdiv double %i.eg, %i.eh                ; 8 uses
  %min.iters.check1490 = icmp ult i32 %15, 3
  br i1 %min.iters.check1490, label %.lr.ph1033.preheader1607, label %vector.ph1491

vector.ph1491:                                    ; preds = %.lr.ph1033.preheader
  %n.vec1492 = and i64 %i.fm, 32764               ; 4 uses
  %i.ej = add i64 %indvars.iv.next1101.1.lcssa, %n.vec1492 ; 2 uses
  %i.ek = trunc nuw nsw i64 %n.vec1492 to i32
  %broadcast.splatinsert1493 = insertelement <2 x double> poison, double %i.ei, i64 0
  %broadcast.splat1494 = shufflevector <2 x double> %broadcast.splatinsert1493, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1495 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1496 = shufflevector <2 x double> %broadcast.splatinsert1495, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1497 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1498 = shufflevector <2 x double> %broadcast.splatinsert1497, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1499 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1500 = shufflevector <2 x double> %broadcast.splatinsert1499, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1501

vector.body1501:                                  ; preds = %vector.body1501, %vector.ph1491
  %index1502 = phi i64 [ 0, %vector.ph1491 ], [ %index.next1505, %vector.body1501 ] ; 2 uses
  %vec.ind1503 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1491 ], [ %vec.ind.next1506, %vector.body1501 ] ; 3 uses
  %step.add1504 = add nuw <2 x i32> %vec.ind1503, splat (i32 2)
  %i.el = add i64 %indvars.iv.next1101.1.lcssa, %index1502 ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <2 x double> %broadcast.splat1496, ptr %i.em, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1496, ptr %i.en, align 8, !tbaa !14
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.el ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <2 x double> %broadcast.splat1498, ptr %i.eo, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1498, ptr %i.ep, align 8, !tbaa !14
  %i.eq = uitofp nneg <2 x i32> %vec.ind1503 to <2 x double>
  %i.er = uitofp nneg <2 x i32> %step.add1504 to <2 x double>
  %i.es = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %broadcast.splat1494, <2 x double> %broadcast.splat1500)
  %i.et = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %broadcast.splat1494, <2 x double> %broadcast.splat1500)
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.el ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <2 x double> %i.es, ptr %i.eu, align 8, !tbaa !14
  store <2 x double> %i.et, ptr %i.ev, align 8, !tbaa !14
  %index.next1505 = add nuw i64 %index1502, 4     ; 2 uses
  %vec.ind.next1506 = add nuw <2 x i32> %vec.ind1503, splat (i32 4)
  %i.ew = icmp eq i64 %index.next1505, %n.vec1492
  br i1 %i.ew, label %middle.block1507, label %vector.body1501, !llvm.loop !44

middle.block1507:                                 ; preds = %vector.body1501
  %cmp.n1508 = icmp eq i64 %n.vec1492, %i.fm
  br i1 %cmp.n1508, label %.lr.ph1038.preheader, label %.lr.ph1033.preheader1607

.lr.ph1033.preheader1607:                         ; preds = %.lr.ph1033.preheader, %middle.block1507
  %indvars.iv1108.ph = phi i64 [ %indvars.iv.next1101.1.lcssa, %.lr.ph1033.preheader ], [ %i.ej, %middle.block1507 ]
  %.04161031.ph = phi i32 [ 0, %.lr.ph1033.preheader ], [ %i.ek, %middle.block1507 ]
  br label %.lr.ph1033

.lr.ph1010.preheader:                             ; preds = %bb.am
  %i.ex = add nuw nsw i32 %15, 1                  ; 2 uses
  %wide.trip.count1106 = zext nneg i32 %i.ex to i64 ; 3 uses
  %min.iters.check1315 = icmp ult i32 %15, 3
  br i1 %min.iters.check1315, label %.lr.ph1010.preheader1623, label %vector.ph1316

vector.ph1316:                                    ; preds = %.lr.ph1010.preheader
  %n.vec1317 = and i64 %wide.trip.count1106, 32764 ; 3 uses
  %broadcast.splatinsert1318 = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat1319 = shufflevector <2 x double> %broadcast.splatinsert1318, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1320 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1321 = shufflevector <2 x double> %broadcast.splatinsert1320, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1322 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1323 = shufflevector <2 x double> %broadcast.splatinsert1322, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1324 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1325 = shufflevector <2 x double> %broadcast.splatinsert1324, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1326

vector.body1326:                                  ; preds = %vector.body1326, %vector.ph1316
  %index1327 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1330, %vector.body1326 ] ; 4 uses
  %vec.ind1328 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1316 ], [ %vec.ind.next1331, %vector.body1326 ] ; 3 uses
  %step.add1329 = add <2 x i32> %vec.ind1328, splat (i32 2)
  %i.ey = uitofp nneg <2 x i32> %vec.ind1328 to <2 x double>
  %i.ez = uitofp nneg <2 x i32> %step.add1329 to <2 x double>
  %i.fa = fneg <2 x double> %i.ey
  %i.fb = fneg <2 x double> %i.ez
  %i.fc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %broadcast.splat1319, <2 x double> %broadcast.splat1321)
  %i.fd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> %broadcast.splat1319, <2 x double> %broadcast.splat1321)
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index1327 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <2 x double> %i.fc, ptr %i.fe, align 8, !tbaa !14
  store <2 x double> %i.fd, ptr %i.ff, align 8, !tbaa !14
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index1327 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <2 x double> %broadcast.splat1323, ptr %i.fg, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1323, ptr %i.fh, align 8, !tbaa !14
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index1327 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <2 x double> %broadcast.splat1325, ptr %i.fi, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1325, ptr %i.fj, align 8, !tbaa !14
  %index.next1330 = add nuw i64 %index1327, 4     ; 2 uses
  %vec.ind.next1331 = add <2 x i32> %vec.ind1328, splat (i32 4)
  %i.fk = icmp eq i64 %index.next1330, %n.vec1317
  br i1 %i.fk, label %middle.block1332, label %vector.body1326, !llvm.loop !45

middle.block1332:                                 ; preds = %vector.body1326
  %cmp.n1333 = icmp eq i64 %n.vec1317, %wide.trip.count1106
  br i1 %cmp.n1333, label %.lr.ph1014.preheader, label %.lr.ph1010.preheader1623

.lr.ph1010.preheader1623:                         ; preds = %.lr.ph1010.preheader, %middle.block1332
  %indvars.iv1085.ph = phi i64 [ 0, %.lr.ph1010.preheader ], [ %n.vec1317, %middle.block1332 ]
  br label %.lr.ph1010

.lr.ph1014.preheader:                             ; preds = %.lr.ph1010, %middle.block1332
  %i.fl = zext nneg i32 %i.ex to i64              ; 3 uses
  %narrow = add nuw nsw i32 %15, 1
  %i.fm = zext nneg i32 %narrow to i64            ; 22 uses
  %min.iters.check1336 = icmp ult i32 %15, 3
  br i1 %min.iters.check1336, label %.lr.ph1014.preheader1621, label %vector.ph1337

vector.ph1337:                                    ; preds = %.lr.ph1014.preheader
  %n.vec1338 = and i64 %i.fm, 32764               ; 4 uses
  %i.fn = add nuw nsw i64 %n.vec1338, %i.fl       ; 2 uses
  %i.fo = trunc nuw nsw i64 %n.vec1338 to i32
  %broadcast.splatinsert1339 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1340 = shufflevector <2 x double> %broadcast.splatinsert1339, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1341 = insertelement <2 x double> poison, double %.04321139, i64 0
  %broadcast.splat1342 = shufflevector <2 x double> %broadcast.splatinsert1341, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1343 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1344 = shufflevector <2 x double> %broadcast.splatinsert1343, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1345 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1346 = shufflevector <2 x double> %broadcast.splatinsert1345, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1347

vector.body1347:                                  ; preds = %vector.body1347, %vector.ph1337
  %index1348 = phi i64 [ 0, %vector.ph1337 ], [ %index.next1351, %vector.body1347 ] ; 2 uses
  %vec.ind1349 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1337 ], [ %vec.ind.next1352, %vector.body1347 ] ; 3 uses
  %step.add1350 = add nuw <2 x i32> %vec.ind1349, splat (i32 2)
  %i.fp = add nuw i64 %index1348, %i.fl           ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <2 x double> %broadcast.splat1340, ptr %i.fq, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1340, ptr %i.fr, align 8, !tbaa !14
  %i.fs = uitofp nneg <2 x i32> %vec.ind1349 to <2 x double>
  %i.ft = uitofp nneg <2 x i32> %step.add1350 to <2 x double>
  %i.fu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %broadcast.splat1342, <2 x double> %broadcast.splat1344)
  %i.fv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> %broadcast.splat1342, <2 x double> %broadcast.splat1344)
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.fp ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <2 x double> %i.fu, ptr %i.fw, align 8, !tbaa !14
  store <2 x double> %i.fv, ptr %i.fx, align 8, !tbaa !14
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.fp ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store <2 x double> %broadcast.splat1346, ptr %i.fy, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1346, ptr %i.fz, align 8, !tbaa !14
  %index.next1351 = add nuw i64 %index1348, 4     ; 2 uses
  %vec.ind.next1352 = add nuw <2 x i32> %vec.ind1349, splat (i32 4)
  %i.ga = icmp eq i64 %index.next1351, %n.vec1338
  br i1 %i.ga, label %middle.block1353, label %vector.body1347, !llvm.loop !46

middle.block1353:                                 ; preds = %vector.body1347
  %cmp.n1354 = icmp eq i64 %n.vec1338, %i.fm
  br i1 %cmp.n1354, label %.lr.ph1019.preheader, label %.lr.ph1014.preheader1621

.lr.ph1014.preheader1621:                         ; preds = %.lr.ph1014.preheader, %middle.block1353
  %indvars.iv1090.ph = phi i64 [ %i.fl, %.lr.ph1014.preheader ], [ %i.fn, %middle.block1353 ]
  %.04191013.ph = phi i32 [ 0, %.lr.ph1014.preheader ], [ %i.fo, %middle.block1353 ]
  br label %.lr.ph1014

.lr.ph1010:                                       ; preds = %.lr.ph1010.preheader1623, %.lr.ph1010
  %indvars.iv1085 = phi i64 [ %indvars.iv.next1086, %.lr.ph1010 ], [ %indvars.iv1085.ph, %.lr.ph1010.preheader1623 ] ; 5 uses
  %indvars1105 = trunc i64 %indvars.iv1085 to i32
  %i.gb = uitofp nneg i32 %indvars1105 to double
  %i.gc = fneg double %i.gb
  %i.gd = call double @llvm.fmuladd.f64(double %i.gc, double %i.by, double %7)
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1085
  store double %i.gd, ptr %i.ge, align 8, !tbaa !14
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1085
  store double %3, ptr %i.gf, align 8, !tbaa !14
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1085
  store double %5, ptr %i.gg, align 8, !tbaa !14
  %indvars.iv.next1086 = add nuw nsw i64 %indvars.iv1085, 1 ; 2 uses
  %exitcond1107.not = icmp eq i64 %indvars.iv.next1086, %wide.trip.count1106
  br i1 %exitcond1107.not, label %.lr.ph1014.preheader, label %.lr.ph1010, !llvm.loop !47

.lr.ph1014:                                       ; preds = %.lr.ph1014.preheader1621, %.lr.ph1014
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %.lr.ph1014 ], [ %indvars.iv1090.ph, %.lr.ph1014.preheader1621 ] ; 4 uses
  %.04191013 = phi i32 [ %i.gm, %.lr.ph1014 ], [ %.04191013.ph, %.lr.ph1014.preheader1621 ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1090
end_hunk_0
begin_hunk_1_@proj_trans_bounds_3D:bb.a
  %broadcast.splatinsert1521 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1522 = shufflevector <2 x double> %broadcast.splatinsert1521, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1523

vector.body1523:                                  ; preds = %vector.body1523, %vector.ph1513
  %index1524 = phi i64 [ 0, %vector.ph1513 ], [ %index.next1527, %vector.body1523 ] ; 2 uses
  %vec.ind1525 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1513 ], [ %vec.ind.next1528, %vector.body1523 ] ; 3 uses
  %step.add1526 = add nuw <2 x i32> %vec.ind1525, splat (i32 2)
  %i.lu = add i64 %indvars.iv.next1109.lcssa, %index1524 ; 3 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.lu ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store <2 x double> %broadcast.splat1516, ptr %i.lv, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1516, ptr %i.lw, align 8, !tbaa !14
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.lu ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store <2 x double> %broadcast.splat1518, ptr %i.lx, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1518, ptr %i.ly, align 8, !tbaa !14
  %i.lz = uitofp nneg <2 x i32> %vec.ind1525 to <2 x double>
  %i.ma = uitofp nneg <2 x i32> %step.add1526 to <2 x double>
  %i.mb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %broadcast.splat1520, <2 x double> %broadcast.splat1522)
  %i.mc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %broadcast.splat1520, <2 x double> %broadcast.splat1522)
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.lu ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store <2 x double> %i.mb, ptr %i.md, align 8, !tbaa !14
  store <2 x double> %i.mc, ptr %i.me, align 8, !tbaa !14
  %index.next1527 = add nuw i64 %index1524, 4     ; 2 uses
  %vec.ind.next1528 = add nuw <2 x i32> %vec.ind1525, splat (i32 4)
  %i.mf = icmp eq i64 %index.next1527, %n.vec1514
  br i1 %i.mf, label %middle.block1529, label %vector.body1523, !llvm.loop !62

middle.block1529:                                 ; preds = %vector.body1523
  %cmp.n1530 = icmp eq i64 %n.vec1514, %i.fm
  br i1 %cmp.n1530, label %.lr.ph1043.preheader, label %.lr.ph1038.preheader1605

.lr.ph1038.preheader1605:                         ; preds = %.lr.ph1038.preheader, %middle.block1529
  %indvars.iv1112.ph = phi i64 [ %indvars.iv.next1109.lcssa, %.lr.ph1038.preheader ], [ %i.ls, %middle.block1529 ]
  %.04151037.ph = phi i32 [ 0, %.lr.ph1038.preheader ], [ %i.lt, %middle.block1529 ]
  br label %.lr.ph1038

.lr.ph1038:                                       ; preds = %.lr.ph1038.preheader1605, %.lr.ph1038
  %indvars.iv1112 = phi i64 [ %indvars.iv.next1113, %.lr.ph1038 ], [ %indvars.iv1112.ph, %.lr.ph1038.preheader1605 ] ; 4 uses
  %.04151037 = phi i32 [ %i.ml, %.lr.ph1038 ], [ %.04151037.ph, %.lr.ph1038.preheader1605 ] ; 3 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1112
  store double %3, ptr %i.mg, align 8, !tbaa !14
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1112
  store double %7, ptr %i.mh, align 8, !tbaa !14
  %i.mi = uitofp nneg i32 %.04151037 to double
  %i.mj = call double @llvm.fmuladd.f64(double %i.mi, double %i.ei, double %5)
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1112
  store double %i.mj, ptr %i.mk, align 8, !tbaa !14
  %indvars.iv.next1113 = add nsw i64 %indvars.iv1112, 1 ; 2 uses
  %i.ml = add nuw i32 %.04151037, 1
  %exitcond1115.not = icmp eq i32 %.04151037, %15
  br i1 %exitcond1115.not, label %.lr.ph1043.preheader, label %.lr.ph1038, !llvm.loop !63

.lr.ph1043.preheader:                             ; preds = %.lr.ph1038, %middle.block1529
  %indvars.iv.next1113.lcssa = phi i64 [ %i.ls, %middle.block1529 ], [ %indvars.iv.next1113, %.lr.ph1038 ] ; 3 uses
  %min.iters.check1534 = icmp ult i32 %15, 3
  br i1 %min.iters.check1534, label %.lr.ph1043.preheader1603, label %vector.ph1535

vector.ph1535:                                    ; preds = %.lr.ph1043.preheader
  %n.vec1536 = and i64 %i.fm, 32764               ; 4 uses
  %i.mm = add i64 %indvars.iv.next1113.lcssa, %n.vec1536 ; 2 uses
  %i.mn = trunc nuw nsw i64 %n.vec1536 to i32
  %broadcast.splatinsert1537 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1538 = shufflevector <2 x double> %broadcast.splatinsert1537, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1539 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1540 = shufflevector <2 x double> %broadcast.splatinsert1539, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1541 = insertelement <2 x double> poison, double %i.ei, i64 0
  %broadcast.splat1542 = shufflevector <2 x double> %broadcast.splatinsert1541, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1543 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1544 = shufflevector <2 x double> %broadcast.splatinsert1543, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1545

vector.body1545:                                  ; preds = %vector.body1545, %vector.ph1535
  %index1546 = phi i64 [ 0, %vector.ph1535 ], [ %index.next1549, %vector.body1545 ] ; 2 uses
  %vec.ind1547 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1535 ], [ %vec.ind.next1550, %vector.body1545 ] ; 3 uses
  %step.add1548 = add nuw <2 x i32> %vec.ind1547, splat (i32 2)
  %i.mo = add i64 %indvars.iv.next1113.lcssa, %index1546 ; 3 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.mo ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  store <2 x double> %broadcast.splat1538, ptr %i.mp, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1538, ptr %i.mq, align 8, !tbaa !14
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.mo ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store <2 x double> %broadcast.splat1540, ptr %i.mr, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1540, ptr %i.ms, align 8, !tbaa !14
  %i.mt = uitofp nneg <2 x i32> %vec.ind1547 to <2 x double>
  %i.mu = uitofp nneg <2 x i32> %step.add1548 to <2 x double>
  %i.mv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mt, <2 x double> %broadcast.splat1542, <2 x double> %broadcast.splat1544)
  %i.mw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %broadcast.splat1542, <2 x double> %broadcast.splat1544)
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.mo ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store <2 x double> %i.mv, ptr %i.mx, align 8, !tbaa !14
  store <2 x double> %i.mw, ptr %i.my, align 8, !tbaa !14
  %index.next1549 = add nuw i64 %index1546, 4     ; 2 uses
  %vec.ind.next1550 = add nuw <2 x i32> %vec.ind1547, splat (i32 4)
  %i.mz = icmp eq i64 %index.next1549, %n.vec1536
  br i1 %i.mz, label %middle.block1551, label %vector.body1545, !llvm.loop !64

middle.block1551:                                 ; preds = %vector.body1545
  %cmp.n1552 = icmp eq i64 %n.vec1536, %i.fm
  br i1 %cmp.n1552, label %.lr.ph1048.preheader, label %.lr.ph1043.preheader1603

.lr.ph1043.preheader1603:                         ; preds = %.lr.ph1043.preheader, %middle.block1551
  %indvars.iv1116.ph = phi i64 [ %indvars.iv.next1113.lcssa, %.lr.ph1043.preheader ], [ %i.mm, %middle.block1551 ]
  %.04141042.ph = phi i32 [ 0, %.lr.ph1043.preheader ], [ %i.mn, %middle.block1551 ]
  br label %.lr.ph1043

.lr.ph1043:                                       ; preds = %.lr.ph1043.preheader1603, %.lr.ph1043
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %.lr.ph1043 ], [ %indvars.iv1116.ph, %.lr.ph1043.preheader1603 ] ; 4 uses
  %.04141042 = phi i32 [ %i.nf, %.lr.ph1043 ], [ %.04141042.ph, %.lr.ph1043.preheader1603 ] ; 3 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1116
  store double %6, ptr %i.na, align 8, !tbaa !14
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1116
  store double %4, ptr %i.nb, align 8, !tbaa !14
  %i.nc = uitofp nneg i32 %.04141042 to double
  %i.nd = call double @llvm.fmuladd.f64(double %i.nc, double %i.ei, double %5)
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1116
  store double %i.nd, ptr %i.ne, align 8, !tbaa !14
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, 1 ; 2 uses
  %i.nf = add nuw i32 %.04141042, 1
  %exitcond1119.not = icmp eq i32 %.04141042, %15
  br i1 %exitcond1119.not, label %.lr.ph1048.preheader, label %.lr.ph1043, !llvm.loop !65

.lr.ph1048.preheader:                             ; preds = %.lr.ph1043, %middle.block1551
  %indvars.iv.next1117.lcssa = phi i64 [ %i.mm, %middle.block1551 ], [ %indvars.iv.next1117, %.lr.ph1043 ] ; 3 uses
  %min.iters.check1556 = icmp ult i32 %15, 3
  br i1 %min.iters.check1556, label %.lr.ph1048.preheader1602, label %vector.ph1557

vector.ph1557:                                    ; preds = %.lr.ph1048.preheader
  %n.vec1558 = and i64 %i.fm, 32764               ; 4 uses
  %i.ng = add i64 %indvars.iv.next1117.lcssa, %n.vec1558
  %i.nh = trunc nuw nsw i64 %n.vec1558 to i32
  %broadcast.splatinsert1559 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1560 = shufflevector <2 x double> %broadcast.splatinsert1559, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1561 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1562 = shufflevector <2 x double> %broadcast.splatinsert1561, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1563 = insertelement <2 x double> poison, double %i.ei, i64 0
  %broadcast.splat1564 = shufflevector <2 x double> %broadcast.splatinsert1563, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1565 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1566 = shufflevector <2 x double> %broadcast.splatinsert1565, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1567

vector.body1567:                                  ; preds = %vector.body1567, %vector.ph1557
  %index1568 = phi i64 [ 0, %vector.ph1557 ], [ %index.next1571, %vector.body1567 ] ; 2 uses
  %vec.ind1569 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1557 ], [ %vec.ind.next1572, %vector.body1567 ] ; 3 uses
  %step.add1570 = add nuw <2 x i32> %vec.ind1569, splat (i32 2)
  %i.ni = add i64 %indvars.iv.next1117.lcssa, %index1568 ; 3 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ni ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  store <2 x double> %broadcast.splat1560, ptr %i.nj, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1560, ptr %i.nk, align 8, !tbaa !14
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ni ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  store <2 x double> %broadcast.splat1562, ptr %i.nl, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1562, ptr %i.nm, align 8, !tbaa !14
  %i.nn = uitofp nneg <2 x i32> %vec.ind1569 to <2 x double>
  %i.no = uitofp nneg <2 x i32> %step.add1570 to <2 x double>
  %i.np = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %broadcast.splat1564, <2 x double> %broadcast.splat1566)
  %i.nq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.no, <2 x double> %broadcast.splat1564, <2 x double> %broadcast.splat1566)
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ni ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  store <2 x double> %i.np, ptr %i.nr, align 8, !tbaa !14
  store <2 x double> %i.nq, ptr %i.ns, align 8, !tbaa !14
  %index.next1571 = add nuw i64 %index1568, 4     ; 2 uses
  %vec.ind.next1572 = add nuw <2 x i32> %vec.ind1569, splat (i32 4)
  %i.nt = icmp eq i64 %index.next1571, %n.vec1558
  br i1 %i.nt, label %middle.block1573, label %vector.body1567, !llvm.loop !66

middle.block1573:                                 ; preds = %vector.body1567
  %cmp.n1574 = icmp eq i64 %n.vec1558, %i.fm
  br i1 %cmp.n1574, label %._crit_edge1049, label %.lr.ph1048.preheader1602

.lr.ph1048.preheader1602:                         ; preds = %.lr.ph1048.preheader, %middle.block1573
  %indvars.iv1120.ph = phi i64 [ %indvars.iv.next1117.lcssa, %.lr.ph1048.preheader ], [ %i.ng, %middle.block1573 ]
  %.04131047.ph = phi i32 [ 0, %.lr.ph1048.preheader ], [ %i.nh, %middle.block1573 ]
  br label %.lr.ph1048

._crit_edge1049:                                  ; preds = %.lr.ph1048, %middle.block1573
  %i.nu = invoke i64 @proj_trans_generic(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.ad, i64 noundef 8, i64 noundef %i.ab, ptr noundef nonnull %i.ag, i64 noundef 8, i64 noundef %i.ab, ptr noundef nonnull %i.aj, i64 noundef 8, i64 noundef %i.ab, ptr noundef null, i64 noundef 0, i64 noundef 0)
          to label %bb.an unwind label %bb.ax     ; 0 uses

.lr.ph1048:                                       ; preds = %.lr.ph1048.preheader1602, %.lr.ph1048
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %.lr.ph1048 ], [ %indvars.iv1120.ph, %.lr.ph1048.preheader1602 ] ; 4 uses
  %.04131047 = phi i32 [ %i.oa, %.lr.ph1048 ], [ %.04131047.ph, %.lr.ph1048.preheader1602 ] ; 3 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1120
  store double %6, ptr %i.nv, align 8, !tbaa !14
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1120
  store double %7, ptr %i.nw, align 8, !tbaa !14
  %i.nx = uitofp nneg i32 %.04131047 to double
  %i.ny = call double @llvm.fmuladd.f64(double %i.nx, double %i.ei, double %5)
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1120
  store double %i.ny, ptr %i.nz, align 8, !tbaa !14
  %indvars.iv.next1121 = add nsw i64 %indvars.iv1120, 1
  %i.oa = add nuw i32 %.04131047, 1
  %exitcond1123.not = icmp eq i32 %.04131047, %15
  br i1 %exitcond1123.not, label %._crit_edge1049, label %.lr.ph1048, !llvm.loop !67

bb.an:                                            ; preds = %._crit_edge1049
  %i.ob = load double, ptr %i.ad, align 8, !tbaa !14 ; 3 uses
  %i.oc = add nsw i64 %i.ab, -1                   ; 15 uses
  %i.od = add nsw i64 %i.ab, -2                   ; 3 uses
  %xtraiter1719 = and i64 %i.oc, 3                ; 3 uses
  %i.oe = icmp ult i64 %i.od, 3
  br i1 %i.oe, label %.epil.preheader1718, label %.new1717

.new1717:                                         ; preds = %bb.an
  %unroll_iter1724 = and i64 %i.oc, -4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.new1717
  %indvars.iv.i = phi i64 [ 1, %.new1717 ], [ %indvars.iv.next.i.3, %bb.ao ] ; 5 uses
  %.0911.i = phi double [ %i.ob, %.new1717 ], [ %.1.i.3, %bb.ao ] ; 2 uses
  %niter1725 = phi i64 [ 0, %.new1717 ], [ %niter1725.next.3, %bb.ao ]
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.og = load double, ptr %i.of, align 8, !tbaa !14 ; 2 uses
  %i.oh = fcmp olt double %i.og, %.0911.i
  %.1.i = select i1 %i.oh, double %i.og, double %.0911.i ; 2 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !14 ; 2 uses
  %i.ol = fcmp olt double %i.ok, %.1.i
  %.1.i.1 = select i1 %i.ol, double %i.ok, double %.1.i ; 2 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oo = load double, ptr %i.on, align 8, !tbaa !14 ; 2 uses
  %i.op = fcmp olt double %i.oo, %.1.i.1
  %.1.i.2 = select i1 %i.op, double %i.oo, double %.1.i.1 ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.os = load double, ptr %i.or, align 8, !tbaa !14 ; 2 uses
  %i.ot = fcmp olt double %i.os, %.1.i.2
  %.1.i.3 = select i1 %i.ot, double %i.os, double %.1.i.2 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter1725.next.3 = add nuw i64 %niter1725, 4   ; 2 uses
  %niter1725.ncmp.3 = icmp eq i64 %niter1725.next.3, %unroll_iter1724
  br i1 %niter1725.ncmp.3, label %_ZL10simple_minPKdi.exit.unr-lcssa, label %bb.ao, !llvm.loop !0

_ZL10simple_minPKdi.exit.unr-lcssa:               ; preds = %bb.ao
  %lcmp.mod1721.not = icmp eq i64 %xtraiter1719, 0
  br i1 %lcmp.mod1721.not, label %_ZL10simple_minPKdi.exit, label %.epil.preheader1718

.epil.preheader1718:                              ; preds = %_ZL10simple_minPKdi.exit.unr-lcssa, %bb.an
  %indvars.iv.i.epil.init = phi i64 [ 1, %bb.an ], [ %indvars.iv.next.i.3, %_ZL10simple_minPKdi.exit.unr-lcssa ]
  %.0911.i.epil.init = phi double [ %i.ob, %bb.an ], [ %.1.i.3, %_ZL10simple_minPKdi.exit.unr-lcssa ]
  %lcmp.mod1723 = icmp ne i64 %xtraiter1719, 0
  call void @llvm.assume(i1 %lcmp.mod1723)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader1718
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader1718 ], [ %indvars.iv.next.i.epil, %bb.ap ] ; 2 uses
  %.0911.i.epil = phi double [ %.0911.i.epil.init, %.epil.preheader1718 ], [ %.1.i.epil, %bb.ap ] ; 2 uses
  %epil.iter1720 = phi i64 [ 0, %.epil.preheader1718 ], [ %epil.iter1720.next, %bb.ap ]
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.epil
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !14 ; 2 uses
  %i.ow = fcmp olt double %i.ov, %.0911.i.epil
  %.1.i.epil = select i1 %i.ow, double %i.ov, double %.0911.i.epil ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter1720.next = add i64 %epil.iter1720, 1 ; 2 uses
  %epil.iter1720.cmp.not = icmp eq i64 %epil.iter1720.next, %xtraiter1719
  br i1 %epil.iter1720.cmp.not, label %_ZL10simple_minPKdi.exit, label %bb.ap, !llvm.loop !68

_ZL10simple_minPKdi.exit:                         ; preds = %bb.ap, %_ZL10simple_minPKdi.exit.unr-lcssa
  %.1.i.lcssa = phi double [ %.1.i.3, %_ZL10simple_minPKdi.exit.unr-lcssa ], [ %.1.i.epil, %bb.ap ] ; 2 uses
  %i.ox = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.oy = fcmp olt double %.1.i.lcssa, %i.ox
  %.sroa.speculated775 = select i1 %i.oy, double %.1.i.lcssa, double %i.ox
  store double %.sroa.speculated775, ptr %9, align 8, !tbaa !14
  %i.oz = load double, ptr %i.ag, align 8, !tbaa !14 ; 3 uses
  %xtraiter1727 = and i64 %i.oc, 3                ; 3 uses
  %i.pa = icmp ult i64 %i.od, 3
  br i1 %i.pa, label %.epil.preheader1726, label %_ZL10simple_minPKdi.exit.new

_ZL10simple_minPKdi.exit.new:                     ; preds = %_ZL10simple_minPKdi.exit
  %unroll_iter1732 = and i64 %i.oc, -4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %_ZL10simple_minPKdi.exit.new
  %indvars.iv.i503 = phi i64 [ 1, %_ZL10simple_minPKdi.exit.new ], [ %indvars.iv.next.i506.3, %bb.aq ] ; 5 uses
  %.0911.i504 = phi double [ %i.oz, %_ZL10simple_minPKdi.exit.new ], [ %.1.i505.3, %bb.aq ] ; 2 uses
  %niter1733 = phi i64 [ 0, %_ZL10simple_minPKdi.exit.new ], [ %niter1733.next.3, %bb.aq ]
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i503
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !14 ; 2 uses
  %i.pd = fcmp olt double %i.pc, %.0911.i504
  %.1.i505 = select i1 %i.pd, double %i.pc, double %.0911.i504 ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i503
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !14 ; 2 uses
  %i.ph = fcmp olt double %i.pg, %.1.i505
  %.1.i505.1 = select i1 %i.ph, double %i.pg, double %.1.i505 ; 2 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i503
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !14 ; 2 uses
  %i.pl = fcmp olt double %i.pk, %.1.i505.1
  %.1.i505.2 = select i1 %i.pl, double %i.pk, double %.1.i505.1 ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i503
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  %i.po = load double, ptr %i.pn, align 8, !tbaa !14 ; 2 uses
  %i.pp = fcmp olt double %i.po, %.1.i505.2
  %.1.i505.3 = select i1 %i.pp, double %i.po, double %.1.i505.2 ; 3 uses
  %indvars.iv.next.i506.3 = add nuw nsw i64 %indvars.iv.i503, 4 ; 2 uses
  %niter1733.next.3 = add nuw i64 %niter1733, 4   ; 2 uses
  %niter1733.ncmp.3 = icmp eq i64 %niter1733.next.3, %unroll_iter1732
  br i1 %niter1733.ncmp.3, label %_ZL10simple_minPKdi.exit508.unr-lcssa, label %bb.aq, !llvm.loop !0

_ZL10simple_minPKdi.exit508.unr-lcssa:            ; preds = %bb.aq
  %lcmp.mod1729.not = icmp eq i64 %xtraiter1727, 0
  br i1 %lcmp.mod1729.not, label %_ZL10simple_minPKdi.exit508, label %.epil.preheader1726

.epil.preheader1726:                              ; preds = %_ZL10simple_minPKdi.exit508.unr-lcssa, %_ZL10simple_minPKdi.exit
  %indvars.iv.i503.epil.init = phi i64 [ 1, %_ZL10simple_minPKdi.exit ], [ %indvars.iv.next.i506.3, %_ZL10simple_minPKdi.exit508.unr-lcssa ]
  %.0911.i504.epil.init = phi double [ %i.oz, %_ZL10simple_minPKdi.exit ], [ %.1.i505.3, %_ZL10simple_minPKdi.exit508.unr-lcssa ]
  %lcmp.mod1731 = icmp ne i64 %xtraiter1727, 0
  call void @llvm.assume(i1 %lcmp.mod1731)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.epil.preheader1726
  %indvars.iv.i503.epil = phi i64 [ %indvars.iv.i503.epil.init, %.epil.preheader1726 ], [ %indvars.iv.next.i506.epil, %bb.ar ] ; 2 uses
  %.0911.i504.epil = phi double [ %.0911.i504.epil.init, %.epil.preheader1726 ], [ %.1.i505.epil, %bb.ar ] ; 2 uses
  %epil.iter1728 = phi i64 [ 0, %.epil.preheader1726 ], [ %epil.iter1728.next, %bb.ar ]
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i503.epil
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !14 ; 2 uses
  %i.ps = fcmp olt double %i.pr, %.0911.i504.epil
  %.1.i505.epil = select i1 %i.ps, double %i.pr, double %.0911.i504.epil ; 2 uses
  %indvars.iv.next.i506.epil = add nuw nsw i64 %indvars.iv.i503.epil, 1
  %epil.iter1728.next = add i64 %epil.iter1728, 1 ; 2 uses
  %epil.iter1728.cmp.not = icmp eq i64 %epil.iter1728.next, %xtraiter1727
  br i1 %epil.iter1728.cmp.not, label %_ZL10simple_minPKdi.exit508, label %bb.ar, !llvm.loop !69

_ZL10simple_minPKdi.exit508:                      ; preds = %bb.ar, %_ZL10simple_minPKdi.exit508.unr-lcssa
  %.1.i505.lcssa = phi double [ %.1.i505.3, %_ZL10simple_minPKdi.exit508.unr-lcssa ], [ %.1.i505.epil, %bb.ar ] ; 2 uses
  %i.pt = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.pu = fcmp olt double %.1.i505.lcssa, %i.pt
  %.sroa.speculated771 = select i1 %i.pu, double %.1.i505.lcssa, double %i.pt
  store double %.sroa.speculated771, ptr %10, align 8, !tbaa !14
  %i.pv = load double, ptr %i.aj, align 8, !tbaa !14 ; 3 uses
  %xtraiter1735 = and i64 %i.oc, 3                ; 3 uses
  %i.pw = icmp ult i64 %i.od, 3
  br i1 %i.pw, label %.epil.preheader1734, label %_ZL10simple_minPKdi.exit508.new

_ZL10simple_minPKdi.exit508.new:                  ; preds = %_ZL10simple_minPKdi.exit508
  %unroll_iter1740 = and i64 %i.oc, -4
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %_ZL10simple_minPKdi.exit508.new
  %indvars.iv.i511 = phi i64 [ 1, %_ZL10simple_minPKdi.exit508.new ], [ %indvars.iv.next.i514.3, %bb.as ] ; 5 uses
  %.0911.i512 = phi double [ %i.pv, %_ZL10simple_minPKdi.exit508.new ], [ %.1.i513.3, %bb.as ] ; 2 uses
  %niter1741 = phi i64 [ 0, %_ZL10simple_minPKdi.exit508.new ], [ %niter1741.next.3, %bb.as ]
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i511
  %i.py = load double, ptr %i.px, align 8, !tbaa !14 ; 2 uses
  %i.pz = fcmp olt double %i.py, %.0911.i512
  %.1.i513 = select i1 %i.pz, double %i.py, double %.0911.i512 ; 2 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i511
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !14 ; 2 uses
  %i.qd = fcmp olt double %i.qc, %.1.i513
  %.1.i513.1 = select i1 %i.qd, double %i.qc, double %.1.i513 ; 2 uses
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i511
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !14 ; 2 uses
  %i.qh = fcmp olt double %i.qg, %.1.i513.1
  %.1.i513.2 = select i1 %i.qh, double %i.qg, double %.1.i513.1 ; 2 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i511
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !14 ; 2 uses
  %i.ql = fcmp olt double %i.qk, %.1.i513.2
  %.1.i513.3 = select i1 %i.ql, double %i.qk, double %.1.i513.2 ; 3 uses
  %indvars.iv.next.i514.3 = add nuw nsw i64 %indvars.iv.i511, 4 ; 2 uses
  %niter1741.next.3 = add nuw i64 %niter1741, 4   ; 2 uses
  %niter1741.ncmp.3 = icmp eq i64 %niter1741.next.3, %unroll_iter1740
  br i1 %niter1741.ncmp.3, label %_ZL10simple_minPKdi.exit516.unr-lcssa, label %bb.as, !llvm.loop !0

_ZL10simple_minPKdi.exit516.unr-lcssa:            ; preds = %bb.as
  %lcmp.mod1737.not = icmp eq i64 %xtraiter1735, 0
  br i1 %lcmp.mod1737.not, label %_ZL10simple_minPKdi.exit516, label %.epil.preheader1734

.epil.preheader1734:                              ; preds = %_ZL10simple_minPKdi.exit516.unr-lcssa, %_ZL10simple_minPKdi.exit508
  %indvars.iv.i511.epil.init = phi i64 [ 1, %_ZL10simple_minPKdi.exit508 ], [ %indvars.iv.next.i514.3, %_ZL10simple_minPKdi.exit516.unr-lcssa ]
  %.0911.i512.epil.init = phi double [ %i.pv, %_ZL10simple_minPKdi.exit508 ], [ %.1.i513.3, %_ZL10simple_minPKdi.exit516.unr-lcssa ]
  %lcmp.mod1739 = icmp ne i64 %xtraiter1735, 0
  call void @llvm.assume(i1 %lcmp.mod1739)
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.epil.preheader1734
  %indvars.iv.i511.epil = phi i64 [ %indvars.iv.i511.epil.init, %.epil.preheader1734 ], [ %indvars.iv.next.i514.epil, %bb.at ] ; 2 uses
  %.0911.i512.epil = phi double [ %.0911.i512.epil.init, %.epil.preheader1734 ], [ %.1.i513.epil, %bb.at ] ; 2 uses
  %epil.iter1736 = phi i64 [ 0, %.epil.preheader1734 ], [ %epil.iter1736.next, %bb.at ]
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i511.epil
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !14 ; 2 uses
  %i.qo = fcmp olt double %i.qn, %.0911.i512.epil
  %.1.i513.epil = select i1 %i.qo, double %i.qn, double %.0911.i512.epil ; 2 uses
  %indvars.iv.next.i514.epil = add nuw nsw i64 %indvars.iv.i511.epil, 1
  %epil.iter1736.next = add i64 %epil.iter1736, 1 ; 2 uses
  %epil.iter1736.cmp.not = icmp eq i64 %epil.iter1736.next, %xtraiter1735
  br i1 %epil.iter1736.cmp.not, label %_ZL10simple_minPKdi.exit516, label %bb.at, !llvm.loop !70

_ZL10simple_minPKdi.exit516:                      ; preds = %bb.at, %_ZL10simple_minPKdi.exit516.unr-lcssa
  %.1.i513.lcssa = phi double [ %.1.i513.3, %_ZL10simple_minPKdi.exit516.unr-lcssa ], [ %.1.i513.epil, %bb.at ] ; 2 uses
  %i.qp = load double, ptr %11, align 8, !tbaa !14 ; 2 uses
  %i.qq = fcmp olt double %.1.i513.lcssa, %i.qp
  %.sroa.speculated767 = select i1 %i.qq, double %.1.i513.lcssa, double %i.qp
  store double %.sroa.speculated767, ptr %11, align 8, !tbaa !14
  %xtraiter1743 = and i64 %i.oc, 1
  %unroll_iter1748 = and i64 %i.oc, -2
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %_ZL10simple_minPKdi.exit516
  %indvars.iv.i519 = phi i64 [ 1, %_ZL10simple_minPKdi.exit516 ], [ %indvars.iv.next.i521.1, %bb.au ] ; 3 uses
  %.01316.i = phi double [ %i.ob, %_ZL10simple_minPKdi.exit516 ], [ %.1.i520.1, %bb.au ] ; 3 uses
  %niter1749 = phi i64 [ 0, %_ZL10simple_minPKdi.exit516 ], [ %niter1749.next.1, %bb.au ]
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i519
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !14 ; 3 uses
  %i.qt = fcmp ogt double %i.qs, %.01316.i
  %i.qu = fcmp oeq double %.01316.i, +inf
  %or.cond.i = or i1 %i.qu, %i.qt
  %i.qv = fcmp une double %i.qs, +inf
  %or.cond15.i = and i1 %i.qv, %or.cond.i
  %.1.i520 = select i1 %or.cond15.i, double %i.qs, double %.01316.i ; 3 uses
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i519
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !14 ; 3 uses
  %i.qz = fcmp ogt double %i.qy, %.1.i520
  %i.ra = fcmp oeq double %.1.i520, +inf
  %or.cond.i.1 = or i1 %i.ra, %i.qz
  %i.rb = fcmp une double %i.qy, +inf
  %or.cond15.i.1 = and i1 %i.rb, %or.cond.i.1
  %.1.i520.1 = select i1 %or.cond15.i.1, double %i.qy, double %.1.i520 ; 5 uses
  %indvars.iv.next.i521.1 = add nuw nsw i64 %indvars.iv.i519, 2 ; 2 uses
  %niter1749.next.1 = add nuw i64 %niter1749, 2   ; 2 uses
  %niter1749.ncmp.1 = icmp eq i64 %niter1749.next.1, %unroll_iter1748
  br i1 %niter1749.ncmp.1, label %_ZL10simple_maxPKdi.exit.unr-lcssa, label %bb.au, !llvm.loop !1

_ZL10simple_maxPKdi.exit.unr-lcssa:               ; preds = %bb.au
  %lcmp.mod1745.not = icmp eq i64 %xtraiter1743, 0
  br i1 %lcmp.mod1745.not, label %_ZL10simple_maxPKdi.exit, label %.epil.preheader1742

.epil.preheader1742:                              ; preds = %_ZL10simple_maxPKdi.exit.unr-lcssa
  %lcmp.mod1747 = trunc i64 %i.oc to i1
  call void @llvm.assume(i1 %lcmp.mod1747)
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i521.1
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !14 ; 3 uses
  %i.re = fcmp ogt double %i.rd, %.1.i520.1
  %i.rf = fcmp oeq double %.1.i520.1, +inf
  %or.cond.i.epil = or i1 %i.rf, %i.re
  %i.rg = fcmp une double %i.rd, +inf
  %or.cond15.i.epil = and i1 %i.rg, %or.cond.i.epil
  %.1.i520.epil = select i1 %or.cond15.i.epil, double %i.rd, double %.1.i520.1
  br label %_ZL10simple_maxPKdi.exit

_ZL10simple_maxPKdi.exit:                         ; preds = %_ZL10simple_maxPKdi.exit.unr-lcssa, %.epil.preheader1742
  %.1.i520.lcssa = phi double [ %.1.i520.1, %_ZL10simple_maxPKdi.exit.unr-lcssa ], [ %.1.i520.epil, %.epil.preheader1742 ] ; 2 uses
  %i.rh = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.ri = fcmp olt double %i.rh, %.1.i520.lcssa
  %.sroa.speculated763 = select i1 %i.ri, double %.1.i520.lcssa, double %i.rh
  store double %.sroa.speculated763, ptr %12, align 8, !tbaa !14
  %xtraiter1751 = and i64 %i.oc, 1
  %unroll_iter1756 = and i64 %i.oc, -2
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %_ZL10simple_maxPKdi.exit
  %indvars.iv.i525 = phi i64 [ 1, %_ZL10simple_maxPKdi.exit ], [ %indvars.iv.next.i530.1, %bb.av ] ; 3 uses
  %.01316.i526 = phi double [ %i.oz, %_ZL10simple_maxPKdi.exit ], [ %.1.i529.1, %bb.av ] ; 3 uses
  %niter1757 = phi i64 [ 0, %_ZL10simple_maxPKdi.exit ], [ %niter1757.next.1, %bb.av ]
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i525
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !14 ; 3 uses
  %i.rl = fcmp ogt double %i.rk, %.01316.i526
  %i.rm = fcmp oeq double %.01316.i526, +inf
  %or.cond.i527 = or i1 %i.rm, %i.rl
  %i.rn = fcmp une double %i.rk, +inf
  %or.cond15.i528 = and i1 %i.rn, %or.cond.i527
  %.1.i529 = select i1 %or.cond15.i528, double %i.rk, double %.01316.i526 ; 3 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i525
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !14 ; 3 uses
  %i.rr = fcmp ogt double %i.rq, %.1.i529
  %i.rs = fcmp oeq double %.1.i529, +inf
  %or.cond.i527.1 = or i1 %i.rs, %i.rr
  %i.rt = fcmp une double %i.rq, +inf
  %or.cond15.i528.1 = and i1 %i.rt, %or.cond.i527.1
  %.1.i529.1 = select i1 %or.cond15.i528.1, double %i.rq, double %.1.i529 ; 5 uses
  %indvars.iv.next.i530.1 = add nuw nsw i64 %indvars.iv.i525, 2 ; 2 uses
  %niter1757.next.1 = add nuw i64 %niter1757, 2   ; 2 uses
  %niter1757.ncmp.1 = icmp eq i64 %niter1757.next.1, %unroll_iter1756
  br i1 %niter1757.ncmp.1, label %_ZL10simple_maxPKdi.exit532.unr-lcssa, label %bb.av, !llvm.loop !1

_ZL10simple_maxPKdi.exit532.unr-lcssa:            ; preds = %bb.av
  %lcmp.mod1753.not = icmp eq i64 %xtraiter1751, 0
  br i1 %lcmp.mod1753.not, label %_ZL10simple_maxPKdi.exit532, label %.epil.preheader1750

.epil.preheader1750:                              ; preds = %_ZL10simple_maxPKdi.exit532.unr-lcssa
  %lcmp.mod1755 = trunc i64 %i.oc to i1
  call void @llvm.assume(i1 %lcmp.mod1755)
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i530.1
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !14 ; 3 uses
  %i.rw = fcmp ogt double %i.rv, %.1.i529.1
  %i.rx = fcmp oeq double %.1.i529.1, +inf
  %or.cond.i527.epil = or i1 %i.rx, %i.rw
  %i.ry = fcmp une double %i.rv, +inf
  %or.cond15.i528.epil = and i1 %i.ry, %or.cond.i527.epil
  %.1.i529.epil = select i1 %or.cond15.i528.epil, double %i.rv, double %.1.i529.1
  br label %_ZL10simple_maxPKdi.exit532

_ZL10simple_maxPKdi.exit532:                      ; preds = %_ZL10simple_maxPKdi.exit532.unr-lcssa, %.epil.preheader1750
  %.1.i529.lcssa = phi double [ %.1.i529.1, %_ZL10simple_maxPKdi.exit532.unr-lcssa ], [ %.1.i529.epil, %.epil.preheader1750 ] ; 2 uses
  %i.rz = load double, ptr %13, align 8, !tbaa !14 ; 2 uses
  %i.sa = fcmp olt double %i.rz, %.1.i529.lcssa
  %.sroa.speculated759 = select i1 %i.sa, double %.1.i529.lcssa, double %i.rz
  store double %.sroa.speculated759, ptr %13, align 8, !tbaa !14
  %xtraiter1759 = and i64 %i.oc, 1
  %unroll_iter1764 = and i64 %i.oc, -2
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %_ZL10simple_maxPKdi.exit532
  %indvars.iv.i535 = phi i64 [ 1, %_ZL10simple_maxPKdi.exit532 ], [ %indvars.iv.next.i540.1, %bb.aw ] ; 3 uses
  %.01316.i536 = phi double [ %i.pv, %_ZL10simple_maxPKdi.exit532 ], [ %.1.i539.1, %bb.aw ] ; 3 uses
  %niter1765 = phi i64 [ 0, %_ZL10simple_maxPKdi.exit532 ], [ %niter1765.next.1, %bb.aw ]
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i535
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !14 ; 3 uses
  %i.sd = fcmp ogt double %i.sc, %.01316.i536
  %i.se = fcmp oeq double %.01316.i536, +inf
  %or.cond.i537 = or i1 %i.se, %i.sd
  %i.sf = fcmp une double %i.sc, +inf
  %or.cond15.i538 = and i1 %i.sf, %or.cond.i537
  %.1.i539 = select i1 %or.cond15.i538, double %i.sc, double %.01316.i536 ; 3 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i535
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.si = load double, ptr %i.sh, align 8, !tbaa !14 ; 3 uses
  %i.sj = fcmp ogt double %i.si, %.1.i539
  %i.sk = fcmp oeq double %.1.i539, +inf
  %or.cond.i537.1 = or i1 %i.sk, %i.sj
  %i.sl = fcmp une double %i.si, +inf
  %or.cond15.i538.1 = and i1 %i.sl, %or.cond.i537.1
  %.1.i539.1 = select i1 %or.cond15.i538.1, double %i.si, double %.1.i539 ; 5 uses
  %indvars.iv.next.i540.1 = add nuw nsw i64 %indvars.iv.i535, 2 ; 2 uses
  %niter1765.next.1 = add nuw i64 %niter1765, 2   ; 2 uses
  %niter1765.ncmp.1 = icmp eq i64 %niter1765.next.1, %unroll_iter1764
  br i1 %niter1765.ncmp.1, label %_ZL10simple_maxPKdi.exit542.unr-lcssa, label %bb.aw, !llvm.loop !1

_ZL10simple_maxPKdi.exit542.unr-lcssa:            ; preds = %bb.aw
  %lcmp.mod1761.not = icmp eq i64 %xtraiter1759, 0
  br i1 %lcmp.mod1761.not, label %_ZL10simple_maxPKdi.exit542, label %.epil.preheader1758

.epil.preheader1758:                              ; preds = %_ZL10simple_maxPKdi.exit542.unr-lcssa
  %lcmp.mod1763 = trunc i64 %i.oc to i1
  call void @llvm.assume(i1 %lcmp.mod1763)
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i540.1
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !14 ; 3 uses
  %i.so = fcmp ogt double %i.sn, %.1.i539.1
  %i.sp = fcmp oeq double %.1.i539.1, +inf
  %or.cond.i537.epil = or i1 %i.sp, %i.so
  %i.sq = fcmp une double %i.sn, +inf
  %or.cond15.i538.epil = and i1 %i.sq, %or.cond.i537.epil
  %.1.i539.epil = select i1 %or.cond15.i538.epil, double %i.sn, double %.1.i539.1
  br label %_ZL10simple_maxPKdi.exit542

_ZL10simple_maxPKdi.exit542:                      ; preds = %_ZL10simple_maxPKdi.exit542.unr-lcssa, %.epil.preheader1758
  %.1.i539.lcssa = phi double [ %.1.i539.1, %_ZL10simple_maxPKdi.exit542.unr-lcssa ], [ %.1.i539.epil, %.epil.preheader1758 ] ; 2 uses
  %i.sr = load double, ptr %14, align 8, !tbaa !14 ; 2 uses
  %i.ss = fcmp olt double %i.sr, %.1.i539.lcssa
  %.sroa.speculated755 = select i1 %i.ss, double %.1.i539.lcssa, double %i.sr
  store double %.sroa.speculated755, ptr %14, align 8, !tbaa !14
  br label %.loopexit980

bb.ax:                                            ; preds = %._crit_edge1049
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread

.lr.ph.preheader:                                 ; preds = %.loopexit, %.preheader979
  %i.su = phi i1 [ true, %.preheader979 ], [ false, %.loopexit ] ; 2 uses
  %.sroa.45.11004 = phi ptr [ %i.ai, %.preheader979 ], [ %.sroa.45.2900, %.loopexit ] ; 4 uses
  %.sroa.0807.11003 = phi ptr [ %i.ag, %.preheader979 ], [ %.sroa.0807.2897, %.loopexit ] ; 24 uses
  %.sroa.43.11002 = phi ptr [ %i.af, %.preheader979 ], [ %.sroa.43.2894, %.loopexit ] ; 4 uses
  %.sroa.0845.11001 = phi ptr [ %i.ad, %.preheader979 ], [ %.sroa.0845.2890, %.loopexit ] ; 24 uses
  %i.sv = select i1 %i.su, double %5, double %8   ; 9 uses
  br i1 %min.iters.check1289, label %.lr.ph.preheader1624, label %vector.memcheck1196

vector.memcheck1196:                              ; preds = %.lr.ph.preheader
  %.sroa.0807.110031198 = ptrtoaddr ptr %.sroa.0807.11003 to i64 ; 26 uses
  %.sroa.0845.110011197 = ptrtoaddr ptr %.sroa.0845.11001 to i64 ; 26 uses
  %i.sw = sub i64 %.sroa.0807.110031198, %.sroa.0845.110011197
  %diff.check1199 = icmp ugt i64 %i.sw, -16
  %i.sx = sub i64 %.sroa.0807.110031198, %i.ax
  %diff.check1200 = icmp ugt i64 %i.sx, -16
  %i.sy = add i64 %i.cj, %.sroa.0845.110011197
  %i.sz = sub i64 %.sroa.0807.110031198, %i.sy
  %diff.check1204 = icmp ugt i64 %i.sz, -16
  %i.ta = sub i64 %.sroa.0807.110031198, %i.ck
  %diff.check1206 = icmp ugt i64 %i.ta, -16
  %i.tb = add i64 %i.ci, %.sroa.0845.110011197
  %i.tc = sub i64 %.sroa.0807.110031198, %i.tb
  %diff.check1210 = icmp ugt i64 %i.tc, -16
  %i.td = sub i64 %.sroa.0807.110031198, %i.cl
  %diff.check1212 = icmp ugt i64 %i.td, -16
  %i.te = add i64 %i.ch, %.sroa.0845.110011197
  %i.tf = sub i64 %.sroa.0807.110031198, %i.te
  %diff.check1216 = icmp ugt i64 %i.tf, -16
  %i.tg = sub i64 %.sroa.0807.110031198, %i.cm
  %diff.check1218 = icmp ugt i64 %i.tg, -16
  %i.th = sub i64 %.sroa.0845.110011197, %i.ax
  %diff.check1220 = icmp ugt i64 %i.th, -16
  %i.ti = add i64 %i.cj, %.sroa.0807.110031198
  %i.tj = sub i64 %.sroa.0845.110011197, %i.ti
  %diff.check1222 = icmp ugt i64 %i.tj, -16
  %i.tk = sub i64 %.sroa.0845.110011197, %i.cn
  %diff.check1224 = icmp ugt i64 %i.tk, -16
  %i.tl = add i64 %i.ci, %.sroa.0807.110031198
  %i.tm = sub i64 %.sroa.0845.110011197, %i.tl
  %diff.check1226 = icmp ugt i64 %i.tm, -16
  %i.tn = sub i64 %.sroa.0845.110011197, %i.co
  %diff.check1228 = icmp ugt i64 %i.tn, -16
  %i.to = add i64 %i.ch, %.sroa.0807.110031198
  %i.tp = sub i64 %.sroa.0845.110011197, %i.to
  %diff.check1230 = icmp ugt i64 %i.tp, -16
  %i.tq = sub i64 %.sroa.0845.110011197, %i.cp
  %diff.check1232 = icmp ugt i64 %i.tq, -16
  %i.tr = add i64 %i.ci, %.sroa.0845.110011197
  %i.ts = add i64 %i.cj, %.sroa.0807.110031198
  %i.tt = sub i64 %i.ts, %i.tr
  %diff.check1248 = icmp ugt i64 %i.tt, -16
  %.reass = add i64 %.sroa.0807.110031198, %invariant.op
  %diff.check1250 = icmp ugt i64 %.reass, -16
  %i.tu = add i64 %i.ch, %.sroa.0845.110011197
  %i.tv = add i64 %i.cj, %.sroa.0807.110031198
  %i.tw = sub i64 %i.tv, %i.tu
  %diff.check1254 = icmp ugt i64 %i.tw, -16
  %.reass1790 = add i64 %.sroa.0807.110031198, %invariant.op1789
  %diff.check1256 = icmp ugt i64 %.reass1790, -16
  %i.tx = add i64 %i.ci, %.sroa.0807.110031198
  %i.ty = add i64 %i.cj, %.sroa.0845.110011197
  %i.tz = sub i64 %i.ty, %i.tx
  %diff.check1258 = icmp ugt i64 %i.tz, -16
  %.reass1792 = add i64 %.sroa.0807.110031198, %invariant.op1791
  %diff.check1270 = icmp ult i64 %.reass1792, 15
  %.reass1794 = add i64 %.sroa.0845.110011197, %invariant.op1793
  %diff.check1272 = icmp ult i64 %.reass1794, 15
  %i.ua = add i64 %i.ch, %.sroa.0807.110031198
  %.reass1796 = add i64 %.sroa.0845.110011197, %invariant.op1795
  %.reass1798 = add i64 %.sroa.0807.110031198, %invariant.op1797
  %.reass1800 = add i64 %.sroa.0845.110011197, %invariant.op1799
  %.reass1802 = add i64 %.sroa.0807.110031198, %invariant.op1801
  %.reass1804 = add i64 %.sroa.0845.110011197, %invariant.op1803
  %.reass1806 = add i64 %.sroa.0807.110031198, %invariant.op1805
  %.reass1808 = add i64 %.sroa.0845.110011197, %invariant.op1807
  %.reass1810 = add i64 %.sroa.0807.110031198, %invariant.op1809
  %diff.check1268 = icmp ult i64 %.reass1796, 15
  %diff.check1266 = icmp ult i64 %.reass1798, 15
  %diff.check1244 = icmp ult i64 %.reass1800, 15
  %diff.check1242 = icmp ult i64 %.reass1802, 15
  %diff.check1240 = icmp ult i64 %.reass1804, 15
  %diff.check1238 = icmp ult i64 %.reass1806, 15
  %diff.check1236 = icmp ult i64 %.reass1808, 15
  %diff.check1234 = icmp ult i64 %.reass1810, 15
  %i.ub = add i64 %i.ch, %.sroa.0845.110011197
  %i.uc = add i64 %i.ch, %.sroa.0807.110031198
  %i.ud = add i64 %i.ci, %.sroa.0845.110011197
  %i.ue = add i64 %i.ci, %.sroa.0807.110031198
  %i.uf = add i64 %i.cj, %.sroa.0845.110011197
  %.reass1812 = add i64 %.sroa.0845.110011197, %invariant.op1811
  %i.ug = sub i64 %i.ud, %i.ua
  %.reass1814 = add i64 %.sroa.0807.110031198, %invariant.op1813
  %i.uh = sub i64 %i.ue, %i.ub
  %.reass1816 = add i64 %.sroa.0845.110011197, %invariant.op1815
  %i.ui = sub i64 %i.uf, %i.uc
  %.reass1818 = add i64 %.sroa.0845.110011197, %invariant.op1817
  %diff.check1282 = icmp ugt i64 %.reass1812, -16
  %diff.check1280 = icmp ugt i64 %i.ug, -16
  %diff.check1278 = icmp ugt i64 %.reass1814, -16
  %diff.check1276 = icmp ugt i64 %i.uh, -16
  %diff.check1264 = icmp ugt i64 %.reass1816, -16
  %diff.check1262 = icmp ugt i64 %i.ui, -16
  %diff.check1260 = icmp ugt i64 %.reass1818, -16
  %i.uj = insertelement <8 x i1> %i.du, i1 %diff.check1260, i64 0
  %i.uk = insertelement <8 x i1> %i.uj, i1 %diff.check1262, i64 1
  %i.ul = insertelement <8 x i1> %i.uk, i1 %diff.check1264, i64 2
  %i.um = insertelement <8 x i1> %i.ul, i1 %diff.check1276, i64 4
  %i.un = insertelement <8 x i1> %i.um, i1 %diff.check1278, i64 5
  %i.uo = insertelement <8 x i1> %i.un, i1 %diff.check1280, i64 6
  %i.up = insertelement <8 x i1> %i.uo, i1 %diff.check1282, i64 7
  %i.uq = insertelement <8 x i1> poison, i1 %diff.check1234, i64 0
  %i.ur = insertelement <8 x i1> %i.uq, i1 %diff.check1236, i64 1
  %i.us = insertelement <8 x i1> %i.ur, i1 %diff.check1238, i64 2
  %i.ut = insertelement <8 x i1> %i.us, i1 %diff.check1240, i64 3
  %i.uu = insertelement <8 x i1> %i.ut, i1 %diff.check1242, i64 4
  %i.uv = insertelement <8 x i1> %i.uu, i1 %diff.check1244, i64 5
  %i.uw = insertelement <8 x i1> %i.uv, i1 %diff.check1266, i64 6
  %i.ux = insertelement <8 x i1> %i.uw, i1 %diff.check1268, i64 7
  %i.uy = shufflevector <8 x i1> %i.up, <8 x i1> %i.ux, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.reass1820 = add i64 %.sroa.0807.110031198, %invariant.op1819
  %diff.check1284 = icmp ult i64 %.reass1820, 15
  %.reass1822 = add i64 %.sroa.0845.110011197, %invariant.op1821
  %diff.check1286 = icmp ult i64 %.reass1822, 15
  %i.uz = bitcast <16 x i1> %i.uy to i16
  %i.va = icmp ne i16 %i.uz, 0
  %op.rdx = or i1 %i.va, %diff.check1199
  %op.rdx1577 = or i1 %diff.check1200, %diff.check1204
  %op.rdx1578 = or i1 %diff.check1206, %diff.check1210
  %op.rdx1579 = or i1 %diff.check1212, %diff.check1216
  %op.rdx1580 = or i1 %diff.check1218, %diff.check1220
  %op.rdx1581 = or i1 %diff.check1222, %diff.check1224
  %op.rdx1582 = or i1 %diff.check1226, %diff.check1228
  %op.rdx1583 = or i1 %diff.check1230, %diff.check1232
  %op.rdx1584 = or i1 %diff.check1246, %diff.check1248
  %op.rdx1585 = or i1 %diff.check1250, %diff.check1252
  %op.rdx1586 = or i1 %diff.check1254, %diff.check1256
  %op.rdx1587 = or i1 %diff.check1258, %diff.check1270
  %op.rdx1588 = or i1 %diff.check1272, %diff.check1284
  %op.rdx1589 = or i1 %op.rdx, %op.rdx1577
  %op.rdx1590 = or i1 %op.rdx1578, %op.rdx1579
  %op.rdx1591 = or i1 %op.rdx1580, %op.rdx1581
  %op.rdx1592 = or i1 %op.rdx1582, %op.rdx1583
  %op.rdx1593 = or i1 %op.rdx1584, %op.rdx1585
  %op.rdx1594 = or i1 %op.rdx1586, %op.rdx1587
  %op.rdx1595 = or i1 %op.rdx1588, %diff.check1286
  %op.rdx1596 = or i1 %op.rdx1589, %op.rdx1590
  %op.rdx1597 = or i1 %op.rdx1591, %op.rdx1592
  %op.rdx1598 = or i1 %op.rdx1593, %op.rdx1594
  %op.rdx1599 = or i1 %op.rdx1596, %op.rdx1597
  %op.rdx1600 = or i1 %op.rdx1598, %op.rdx1595
  %op.rdx1601 = or i1 %op.rdx1599, %op.rdx1600
  br i1 %op.rdx1601, label %.lr.ph.preheader1624, label %vector.ph1290

vector.ph1290:                                    ; preds = %vector.memcheck1196
  %broadcast.splatinsert1292 = insertelement <2 x double> poison, double %i.sv, i64 0
  %broadcast.splat1293 = shufflevector <2 x double> %broadcast.splatinsert1292, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %vector.ph1290
  %index1307 = phi i64 [ 0, %vector.ph1290 ], [ %index.next1309, %vector.body1306 ] ; 7 uses
  %vec.ind1308 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1290 ], [ %vec.ind.next1310, %vector.body1306 ] ; 2 uses
  %i.vb = uitofp nneg <2 x i32> %vec.ind1308 to <2 x double> ; 3 uses
  %i.vc = fneg <2 x double> %i.vb                 ; 2 uses
  %i.vd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vc, <2 x double> %broadcast.splat1295, <2 x double> %broadcast.splat1297)
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %index1307
  store <2 x double> %i.vd, ptr %i.ve, align 8, !tbaa !14
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %index1307
  store <2 x double> %broadcast.splat1299, ptr %i.vf, align 8, !tbaa !14
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index1307
  store <2 x double> %broadcast.splat1293, ptr %i.vg, align 8, !tbaa !14
  %i.vh = add nuw nsw i64 %index1307, %i.cc       ; 3 uses
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %i.vh
  store <2 x double> %broadcast.splat1301, ptr %i.vi, align 8, !tbaa !14
  %i.vj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vb, <2 x double> %broadcast.splat1303, <2 x double> %broadcast.splat1299)
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %i.vh
  store <2 x double> %i.vj, ptr %i.vk, align 8, !tbaa !14
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.vh
  store <2 x double> %broadcast.splat1293, ptr %i.vl, align 8, !tbaa !14
  %i.vm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vb, <2 x double> %broadcast.splat1295, <2 x double> %broadcast.splat1301)
  %i.vn = add nuw nsw i64 %index1307, %i.cg       ; 3 uses
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %i.vn
  store <2 x double> %i.vm, ptr %i.vo, align 8, !tbaa !14
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %i.vn
  store <2 x double> %broadcast.splat1305, ptr %i.vp, align 8, !tbaa !14
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.vn
  store <2 x double> %broadcast.splat1293, ptr %i.vq, align 8, !tbaa !14
  %i.vr = add nuw nsw i64 %index1307, %i.cf       ; 3 uses
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %i.vr
  store <2 x double> %broadcast.splat1297, ptr %i.vs, align 8, !tbaa !14
  %i.vt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vc, <2 x double> %broadcast.splat1303, <2 x double> %broadcast.splat1305)
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %i.vr
  store <2 x double> %i.vt, ptr %i.vu, align 8, !tbaa !14
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.vr
  store <2 x double> %broadcast.splat1293, ptr %i.vv, align 8, !tbaa !14
  %index.next1309 = add nuw i64 %index1307, 2     ; 2 uses
  %vec.ind.next1310 = add <2 x i32> %vec.ind1308, splat (i32 2)
  %i.vw = icmp eq i64 %index.next1309, %n.vec1291
  br i1 %i.vw, label %middle.block1311, label %vector.body1306, !llvm.loop !71

middle.block1311:                                 ; preds = %vector.body1306
  br i1 %cmp.n1312, label %._crit_edge, label %.lr.ph.preheader1624

.lr.ph.preheader1624:                             ; preds = %vector.memcheck1196, %.lr.ph.preheader, %middle.block1311
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck1196 ], [ 0, %.lr.ph.preheader ], [ %n.vec1291, %middle.block1311 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block1311
  %i.vx = invoke i64 @proj_trans_generic(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %.sroa.0845.11001, i64 noundef 8, i64 noundef %i.ab, ptr noundef nonnull %.sroa.0807.11003, i64 noundef 8, i64 noundef %i.ab, ptr noundef nonnull %i.aj, i64 noundef 8, i64 noundef %i.ab, ptr noundef null, i64 noundef 0, i64 noundef 0)
          to label %bb.ay unwind label %bb.az     ; 0 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader1624, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1624 ] ; 8 uses
  %i.vy = trunc nuw nsw i64 %indvars.iv to i32
  %i.vz = uitofp nneg i32 %i.vy to double         ; 3 uses
  %i.wa = fneg double %i.vz                       ; 2 uses
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %indvars.iv
  store double %3, ptr %i.wc, align 8, !tbaa !14
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.we = add nuw nsw i64 %indvars.iv, %i.cc      ; 3 uses
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %i.we
  %i.wg = insertelement <2 x double> poison, double %i.wa, i64 0
  %i.wh = insertelement <2 x double> %i.wg, double %i.vz, i64 1
  %i.wi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wh, <2 x double> %i.dw, <2 x double> %i.dy) ; 2 uses
  %i.wj = extractelement <2 x double> %i.wi, i64 0
  store double %i.wj, ptr %i.wb, align 8, !tbaa !14
  store double %i.sv, ptr %i.wd, align 8, !tbaa !14
  store double %4, ptr %i.wf, align 8, !tbaa !14
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %i.we
  %i.wl = extractelement <2 x double> %i.wi, i64 1
  store double %i.wl, ptr %i.wk, align 8, !tbaa !14
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.we
  store double %i.sv, ptr %i.wm, align 8, !tbaa !14
  %i.wn = add nuw nsw i64 %indvars.iv, %i.cg      ; 3 uses
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %i.wn
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %i.wn
  store double %6, ptr %i.wp, align 8, !tbaa !14
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.wn
  %i.wr = add nuw nsw i64 %indvars.iv, %i.cf      ; 3 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %i.wr
  %i.wt = insertelement <2 x double> poison, double %i.vz, i64 0
  %i.wu = insertelement <2 x double> %i.wt, double %i.wa, i64 1
  %i.wv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wu, <2 x double> %i.dw, <2 x double> %i.ea) ; 2 uses
  %i.ww = extractelement <2 x double> %i.wv, i64 0
  store double %i.ww, ptr %i.wo, align 8, !tbaa !14
  store double %i.sv, ptr %i.wq, align 8, !tbaa !14
  store double %7, ptr %i.ws, align 8, !tbaa !14
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %i.wr
  %i.wy = extractelement <2 x double> %i.wv, i64 1
  store double %i.wy, ptr %i.wx, align 8, !tbaa !14
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.wr
  store double %i.sv, ptr %i.wz, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72

bb.ay:                                            ; preds = %._crit_edge
  br i1 %or.cond8, label %bb.ba, label %.thread883

bb.az:                                            ; preds = %._crit_edge
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread

bb.ba:                                            ; preds = %bb.ay
  br i1 %i.k, label %.thread883, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.xb = load double, ptr %.sroa.0845.11001, align 8, !tbaa !14 ; 2 uses
  br i1 %i.eb, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.bb, %.new
  %indvars.iv.i545 = phi i64 [ %indvars.iv.next.i548.3, %.new ], [ 1, %bb.bb ] ; 5 uses
  %.0911.i546 = phi double [ %.1.i547.3, %.new ], [ %i.xb, %bb.bb ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.new ], [ 0, %bb.bb ]
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %indvars.iv.i545
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !14 ; 2 uses
  %i.xe = fcmp olt double %i.xd, %.0911.i546
  %.1.i547 = select i1 %i.xe, double %i.xd, double %.0911.i546 ; 2 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %indvars.iv.i545
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !14 ; 2 uses
  %i.xi = fcmp olt double %i.xh, %.1.i547
  %.1.i547.1 = select i1 %i.xi, double %i.xh, double %.1.i547 ; 2 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %indvars.iv.i545
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !14 ; 2 uses
  %i.xm = fcmp olt double %i.xl, %.1.i547.1
  %.1.i547.2 = select i1 %i.xm, double %i.xl, double %.1.i547.1 ; 2 uses
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %indvars.iv.i545
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !14 ; 2 uses
  %i.xq = fcmp olt double %i.xp, %.1.i547.2
  %.1.i547.3 = select i1 %i.xq, double %i.xp, double %.1.i547.2 ; 3 uses
  %indvars.iv.next.i548.3 = add nuw nsw i64 %indvars.iv.i545, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL10simple_minPKdi.exit550.unr-lcssa, label %.new, !llvm.loop !0

_ZL10simple_minPKdi.exit550.unr-lcssa:            ; preds = %.new
  br i1 %lcmp.mod.not, label %_ZL10simple_minPKdi.exit550, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL10simple_minPKdi.exit550.unr-lcssa, %bb.bb
  %indvars.iv.i545.epil.init = phi i64 [ 1, %bb.bb ], [ %indvars.iv.next.i548.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ]
  %.0911.i546.epil.init = phi double [ %i.xb, %bb.bb ], [ %.1.i547.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1639)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.epil.preheader
  %indvars.iv.i545.epil = phi i64 [ %indvars.iv.i545.epil.init, %.epil.preheader ], [ %indvars.iv.next.i548.epil, %bb.bc ] ; 2 uses
  %.0911.i546.epil = phi double [ %.0911.i546.epil.init, %.epil.preheader ], [ %.1.i547.epil, %bb.bc ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bc ]
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %indvars.iv.i545.epil
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !14 ; 2 uses
  %i.xt = fcmp olt double %i.xs, %.0911.i546.epil
  %.1.i547.epil = select i1 %i.xt, double %i.xs, double %.0911.i546.epil ; 2 uses
  %indvars.iv.next.i548.epil = add nuw nsw i64 %indvars.iv.i545.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL10simple_minPKdi.exit550, label %bb.bc, !llvm.loop !73

_ZL10simple_minPKdi.exit550:                      ; preds = %bb.bc, %_ZL10simple_minPKdi.exit550.unr-lcssa
  %.1.i547.lcssa = phi double [ %.1.i547.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ], [ %.1.i547.epil, %bb.bc ] ; 2 uses
  %i.xu = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.xv = fcmp olt double %.1.i547.lcssa, %i.xu
  %.sroa.speculated751 = select i1 %i.xv, double %.1.i547.lcssa, double %i.xu
  store double %.sroa.speculated751, ptr %9, align 8, !tbaa !14
  %i.xw = load double, ptr %.sroa.0845.11001, align 8, !tbaa !14
  br label %_ZL10simple_minPKdi.exit550.new

_ZL10simple_minPKdi.exit550.new:                  ; preds = %_ZL10simple_minPKdi.exit550.new, %_ZL10simple_minPKdi.exit550
  %indvars.iv.i553 = phi i64 [ 1, %_ZL10simple_minPKdi.exit550 ], [ %indvars.iv.next.i558.1, %_ZL10simple_minPKdi.exit550.new ] ; 3 uses
  %.01316.i554 = phi double [ %i.xw, %_ZL10simple_minPKdi.exit550 ], [ %.1.i557.1, %_ZL10simple_minPKdi.exit550.new ] ; 3 uses
  %niter1647 = phi i64 [ 0, %_ZL10simple_minPKdi.exit550 ], [ %niter1647.next.1, %_ZL10simple_minPKdi.exit550.new ]
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %indvars.iv.i553
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !14 ; 3 uses
  %i.xz = fcmp ogt double %i.xy, %.01316.i554
  %i.ya = fcmp oeq double %.01316.i554, +inf
  %or.cond.i555 = or i1 %i.ya, %i.xz
  %i.yb = fcmp une double %i.xy, +inf
  %or.cond15.i556 = and i1 %i.yb, %or.cond.i555
  %.1.i557 = select i1 %or.cond15.i556, double %i.xy, double %.01316.i554 ; 3 uses
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %indvars.iv.i553
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.ye = load double, ptr %i.yd, align 8, !tbaa !14 ; 3 uses
  %i.yf = fcmp ogt double %i.ye, %.1.i557
  %i.yg = fcmp oeq double %.1.i557, +inf
  %or.cond.i555.1 = or i1 %i.yg, %i.yf
  %i.yh = fcmp une double %i.ye, +inf
  %or.cond15.i556.1 = and i1 %i.yh, %or.cond.i555.1
  %.1.i557.1 = select i1 %or.cond15.i556.1, double %i.ye, double %.1.i557 ; 5 uses
  %indvars.iv.next.i558.1 = add nuw nsw i64 %indvars.iv.i553, 2 ; 2 uses
  %niter1647.next.1 = add nuw i64 %niter1647, 2   ; 2 uses
  %niter1647.ncmp.1 = icmp eq i64 %niter1647.next.1, %unroll_iter1646
  br i1 %niter1647.ncmp.1, label %_ZL10simple_maxPKdi.exit560.unr-lcssa, label %_ZL10simple_minPKdi.exit550.new, !llvm.loop !1

_ZL10simple_maxPKdi.exit560.unr-lcssa:            ; preds = %_ZL10simple_minPKdi.exit550.new
  br i1 %lcmp.mod1643.not, label %_ZL10simple_maxPKdi.exit560, label %.epil.preheader1640

.epil.preheader1640:                              ; preds = %_ZL10simple_maxPKdi.exit560.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1645)
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %indvars.iv.next.i558.1
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !14 ; 3 uses
  %i.yk = fcmp ogt double %i.yj, %.1.i557.1
  %i.yl = fcmp oeq double %.1.i557.1, +inf
  %or.cond.i555.epil = or i1 %i.yl, %i.yk
  %i.ym = fcmp une double %i.yj, +inf
  %or.cond15.i556.epil = and i1 %i.ym, %or.cond.i555.epil
  %.1.i557.epil = select i1 %or.cond15.i556.epil, double %i.yj, double %.1.i557.1
  br label %_ZL10simple_maxPKdi.exit560

_ZL10simple_maxPKdi.exit560:                      ; preds = %_ZL10simple_maxPKdi.exit560.unr-lcssa, %.epil.preheader1640
  %.1.i557.lcssa = phi double [ %.1.i557.1, %_ZL10simple_maxPKdi.exit560.unr-lcssa ], [ %.1.i557.epil, %.epil.preheader1640 ] ; 2 uses
  %i.yn = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.yo = fcmp olt double %i.yn, %.1.i557.lcssa
  %.sroa.speculated747 = select i1 %i.yo, double %.1.i557.lcssa, double %i.yn
  store double %.sroa.speculated747, ptr %12, align 8, !tbaa !14
  %i.yp = load double, ptr %.sroa.0807.11003, align 8, !tbaa !14 ; 2 uses
  br i1 %i.ec, label %.epil.preheader1648, label %_ZL10simple_maxPKdi.exit560.new

_ZL10simple_maxPKdi.exit560.new:                  ; preds = %_ZL10simple_maxPKdi.exit560, %_ZL10simple_maxPKdi.exit560.new
  %indvars.iv.i563 = phi i64 [ %indvars.iv.next.i566.3, %_ZL10simple_maxPKdi.exit560.new ], [ 1, %_ZL10simple_maxPKdi.exit560 ] ; 5 uses
  %.0911.i564 = phi double [ %.1.i565.3, %_ZL10simple_maxPKdi.exit560.new ], [ %i.yp, %_ZL10simple_maxPKdi.exit560 ] ; 2 uses
  %niter1655 = phi i64 [ %niter1655.next.3, %_ZL10simple_maxPKdi.exit560.new ], [ 0, %_ZL10simple_maxPKdi.exit560 ]
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i563
  %i.yr = load double, ptr %i.yq, align 8, !tbaa !14 ; 2 uses
  %i.ys = fcmp olt double %i.yr, %.0911.i564
  %.1.i565 = select i1 %i.ys, double %i.yr, double %.0911.i564 ; 2 uses
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i563
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !14 ; 2 uses
  %i.yw = fcmp olt double %i.yv, %.1.i565
  %.1.i565.1 = select i1 %i.yw, double %i.yv, double %.1.i565 ; 2 uses
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i563
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !14 ; 2 uses
  %i.za = fcmp olt double %i.yz, %.1.i565.1
  %.1.i565.2 = select i1 %i.za, double %i.yz, double %.1.i565.1 ; 2 uses
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i563
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 24
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !14 ; 2 uses
  %i.ze = fcmp olt double %i.zd, %.1.i565.2
  %.1.i565.3 = select i1 %i.ze, double %i.zd, double %.1.i565.2 ; 3 uses
  %indvars.iv.next.i566.3 = add nuw nsw i64 %indvars.iv.i563, 4 ; 2 uses
  %niter1655.next.3 = add nuw i64 %niter1655, 4   ; 2 uses
  %niter1655.ncmp.3 = icmp eq i64 %niter1655.next.3, %unroll_iter1654
  br i1 %niter1655.ncmp.3, label %_ZL10simple_minPKdi.exit568.unr-lcssa, label %_ZL10simple_maxPKdi.exit560.new, !llvm.loop !0

_ZL10simple_minPKdi.exit568.unr-lcssa:            ; preds = %_ZL10simple_maxPKdi.exit560.new
  br i1 %lcmp.mod1651.not, label %_ZL10simple_minPKdi.exit568, label %.epil.preheader1648

.epil.preheader1648:                              ; preds = %_ZL10simple_minPKdi.exit568.unr-lcssa, %_ZL10simple_maxPKdi.exit560
  %indvars.iv.i563.epil.init = phi i64 [ 1, %_ZL10simple_maxPKdi.exit560 ], [ %indvars.iv.next.i566.3, %_ZL10simple_minPKdi.exit568.unr-lcssa ]
  %.0911.i564.epil.init = phi double [ %i.yp, %_ZL10simple_maxPKdi.exit560 ], [ %.1.i565.3, %_ZL10simple_minPKdi.exit568.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1653)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.epil.preheader1648
  %indvars.iv.i563.epil = phi i64 [ %indvars.iv.i563.epil.init, %.epil.preheader1648 ], [ %indvars.iv.next.i566.epil, %bb.bd ] ; 2 uses
  %.0911.i564.epil = phi double [ %.0911.i564.epil.init, %.epil.preheader1648 ], [ %.1.i565.epil, %bb.bd ] ; 2 uses
  %epil.iter1650 = phi i64 [ 0, %.epil.preheader1648 ], [ %epil.iter1650.next, %bb.bd ]
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i563.epil
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !14 ; 2 uses
  %i.zh = fcmp olt double %i.zg, %.0911.i564.epil
  %.1.i565.epil = select i1 %i.zh, double %i.zg, double %.0911.i564.epil ; 2 uses
  %indvars.iv.next.i566.epil = add nuw nsw i64 %indvars.iv.i563.epil, 1
  %epil.iter1650.next = add i64 %epil.iter1650, 1 ; 2 uses
  %epil.iter1650.cmp.not = icmp eq i64 %epil.iter1650.next, %xtraiter1649
  br i1 %epil.iter1650.cmp.not, label %_ZL10simple_minPKdi.exit568, label %bb.bd, !llvm.loop !74

_ZL10simple_minPKdi.exit568:                      ; preds = %bb.bd, %_ZL10simple_minPKdi.exit568.unr-lcssa
  %.1.i565.lcssa = phi double [ %.1.i565.3, %_ZL10simple_minPKdi.exit568.unr-lcssa ], [ %.1.i565.epil, %bb.bd ] ; 2 uses
  %i.zi = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.zj = fcmp olt double %.1.i565.lcssa, %i.zi
  %.sroa.speculated743 = select i1 %i.zj, double %.1.i565.lcssa, double %i.zi
  store double %.sroa.speculated743, ptr %10, align 8, !tbaa !14
  %i.zk = load double, ptr %.sroa.0807.11003, align 8, !tbaa !14
  br label %_ZL10simple_minPKdi.exit568.new

_ZL10simple_minPKdi.exit568.new:                  ; preds = %_ZL10simple_minPKdi.exit568.new, %_ZL10simple_minPKdi.exit568
  %indvars.iv.i571 = phi i64 [ 1, %_ZL10simple_minPKdi.exit568 ], [ %indvars.iv.next.i576.1, %_ZL10simple_minPKdi.exit568.new ] ; 3 uses
  %.01316.i572 = phi double [ %i.zk, %_ZL10simple_minPKdi.exit568 ], [ %.1.i575.1, %_ZL10simple_minPKdi.exit568.new ] ; 3 uses
  %niter1663 = phi i64 [ 0, %_ZL10simple_minPKdi.exit568 ], [ %niter1663.next.1, %_ZL10simple_minPKdi.exit568.new ]
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i571
  %i.zm = load double, ptr %i.zl, align 8, !tbaa !14 ; 3 uses
  %i.zn = fcmp ogt double %i.zm, %.01316.i572
  %i.zo = fcmp oeq double %.01316.i572, +inf
  %or.cond.i573 = or i1 %i.zo, %i.zn
  %i.zp = fcmp une double %i.zm, +inf
  %or.cond15.i574 = and i1 %i.zp, %or.cond.i573
  %.1.i575 = select i1 %or.cond15.i574, double %i.zm, double %.01316.i572 ; 3 uses
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i571
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %i.zs = load double, ptr %i.zr, align 8, !tbaa !14 ; 3 uses
  %i.zt = fcmp ogt double %i.zs, %.1.i575
  %i.zu = fcmp oeq double %.1.i575, +inf
  %or.cond.i573.1 = or i1 %i.zu, %i.zt
  %i.zv = fcmp une double %i.zs, +inf
  %or.cond15.i574.1 = and i1 %i.zv, %or.cond.i573.1
  %.1.i575.1 = select i1 %or.cond15.i574.1, double %i.zs, double %.1.i575 ; 5 uses
  %indvars.iv.next.i576.1 = add nuw nsw i64 %indvars.iv.i571, 2 ; 2 uses
  %niter1663.next.1 = add nuw i64 %niter1663, 2   ; 2 uses
  %niter1663.ncmp.1 = icmp eq i64 %niter1663.next.1, %unroll_iter1662
  br i1 %niter1663.ncmp.1, label %_ZL10simple_maxPKdi.exit578.unr-lcssa, label %_ZL10simple_minPKdi.exit568.new, !llvm.loop !1

_ZL10simple_maxPKdi.exit578.unr-lcssa:            ; preds = %_ZL10simple_minPKdi.exit568.new
  br i1 %lcmp.mod1659.not, label %_ZL10simple_maxPKdi.exit578, label %.epil.preheader1656

.epil.preheader1656:                              ; preds = %_ZL10simple_maxPKdi.exit578.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1661)
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.next.i576.1
  %i.zx = load double, ptr %i.zw, align 8, !tbaa !14 ; 3 uses
  %i.zy = fcmp ogt double %i.zx, %.1.i575.1
  %i.zz = fcmp oeq double %.1.i575.1, +inf
  %or.cond.i573.epil = or i1 %i.zz, %i.zy
  %i.aaa = fcmp une double %i.zx, +inf
  %or.cond15.i574.epil = and i1 %i.aaa, %or.cond.i573.epil
  %.1.i575.epil = select i1 %or.cond15.i574.epil, double %i.zx, double %.1.i575.1
  br label %_ZL10simple_maxPKdi.exit578

_ZL10simple_maxPKdi.exit578:                      ; preds = %_ZL10simple_maxPKdi.exit578.unr-lcssa, %.epil.preheader1656
  %.1.i575.lcssa = phi double [ %.1.i575.1, %_ZL10simple_maxPKdi.exit578.unr-lcssa ], [ %.1.i575.epil, %.epil.preheader1656 ] ; 2 uses
  %i.aab = load double, ptr %13, align 8, !tbaa !14 ; 2 uses
  %i.aac = fcmp olt double %i.aab, %.1.i575.lcssa
  %.sroa.speculated739 = select i1 %i.aac, double %.1.i575.lcssa, double %i.aab
  store double %.sroa.speculated739, ptr %13, align 8, !tbaa !14
  br label %bb.ce

.thread883:                                       ; preds = %bb.ay, %bb.ba
  %.sroa.45.2901 = phi ptr [ %.sroa.45.11004, %bb.ba ], [ %.sroa.43.11002, %bb.ay ] ; 3 uses
  %.sroa.0807.2896 = phi ptr [ %.sroa.0807.11003, %bb.ba ], [ %.sroa.0845.11001, %bb.ay ] ; 23 uses
  %.sroa.43.2895 = phi ptr [ %.sroa.43.11002, %bb.ba ], [ %.sroa.45.11004, %bb.ay ] ; 3 uses
  %.sroa.0845.2891 = phi ptr [ %.sroa.0845.11001, %bb.ba ], [ %.sroa.0807.11003, %bb.ay ] ; 9 uses
  br i1 %.1430, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %.thread883
  store double -1.800000e+02, ptr %9, align 8, !tbaa !14
  store double 1.800000e+02, ptr %12, align 8, !tbaa !14
  %i.aad = load double, ptr %.sroa.0807.2896, align 8, !tbaa !14 ; 2 uses
  br i1 %i.ee, label %.epil.preheader1690, label %.new1689

.new1689:                                         ; preds = %bb.be, %.new1689
  %indvars.iv.i581 = phi i64 [ %indvars.iv.next.i584.3, %.new1689 ], [ 1, %bb.be ] ; 5 uses
  %.0911.i582 = phi double [ %.1.i583.3, %.new1689 ], [ %i.aad, %bb.be ] ; 2 uses
  %niter1697 = phi i64 [ %niter1697.next.3, %.new1689 ], [ 0, %bb.be ]
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i581
  %i.aaf = load double, ptr %i.aae, align 8, !tbaa !14 ; 2 uses
  %i.aag = fcmp olt double %i.aaf, %.0911.i582
  %.1.i583 = select i1 %i.aag, double %i.aaf, double %.0911.i582 ; 2 uses
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i581
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.aaj = load double, ptr %i.aai, align 8, !tbaa !14 ; 2 uses
  %i.aak = fcmp olt double %i.aaj, %.1.i583
  %.1.i583.1 = select i1 %i.aak, double %i.aaj, double %.1.i583 ; 2 uses
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i581
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.aan = load double, ptr %i.aam, align 8, !tbaa !14 ; 2 uses
  %i.aao = fcmp olt double %i.aan, %.1.i583.1
  %.1.i583.2 = select i1 %i.aao, double %i.aan, double %.1.i583.1 ; 2 uses
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i581
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 24
  %i.aar = load double, ptr %i.aaq, align 8, !tbaa !14 ; 2 uses
  %i.aas = fcmp olt double %i.aar, %.1.i583.2
  %.1.i583.3 = select i1 %i.aas, double %i.aar, double %.1.i583.2 ; 3 uses
  %indvars.iv.next.i584.3 = add nuw nsw i64 %indvars.iv.i581, 4 ; 2 uses
  %niter1697.next.3 = add nuw i64 %niter1697, 4   ; 2 uses
  %niter1697.ncmp.3 = icmp eq i64 %niter1697.next.3, %unroll_iter1696
  br i1 %niter1697.ncmp.3, label %_ZL10simple_minPKdi.exit586.unr-lcssa, label %.new1689, !llvm.loop !0

_ZL10simple_minPKdi.exit586.unr-lcssa:            ; preds = %.new1689
  br i1 %lcmp.mod1693.not, label %_ZL10simple_minPKdi.exit586, label %.epil.preheader1690

.epil.preheader1690:                              ; preds = %_ZL10simple_minPKdi.exit586.unr-lcssa, %bb.be
  %indvars.iv.i581.epil.init = phi i64 [ 1, %bb.be ], [ %indvars.iv.next.i584.3, %_ZL10simple_minPKdi.exit586.unr-lcssa ]
  %.0911.i582.epil.init = phi double [ %i.aad, %bb.be ], [ %.1.i583.3, %_ZL10simple_minPKdi.exit586.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1695)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader1690
  %indvars.iv.i581.epil = phi i64 [ %indvars.iv.i581.epil.init, %.epil.preheader1690 ], [ %indvars.iv.next.i584.epil, %bb.bf ] ; 2 uses
  %.0911.i582.epil = phi double [ %.0911.i582.epil.init, %.epil.preheader1690 ], [ %.1.i583.epil, %bb.bf ] ; 2 uses
  %epil.iter1692 = phi i64 [ 0, %.epil.preheader1690 ], [ %epil.iter1692.next, %bb.bf ]
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i581.epil
  %i.aau = load double, ptr %i.aat, align 8, !tbaa !14 ; 2 uses
  %i.aav = fcmp olt double %i.aau, %.0911.i582.epil
  %.1.i583.epil = select i1 %i.aav, double %i.aau, double %.0911.i582.epil ; 2 uses
  %indvars.iv.next.i584.epil = add nuw nsw i64 %indvars.iv.i581.epil, 1
  %epil.iter1692.next = add i64 %epil.iter1692, 1 ; 2 uses
  %epil.iter1692.cmp.not = icmp eq i64 %epil.iter1692.next, %xtraiter1691
  br i1 %epil.iter1692.cmp.not, label %_ZL10simple_minPKdi.exit586, label %bb.bf, !llvm.loop !75

_ZL10simple_minPKdi.exit586:                      ; preds = %bb.bf, %_ZL10simple_minPKdi.exit586.unr-lcssa
  %.1.i583.lcssa = phi double [ %.1.i583.3, %_ZL10simple_minPKdi.exit586.unr-lcssa ], [ %.1.i583.epil, %bb.bf ] ; 2 uses
  %i.aaw = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.aax = fcmp olt double %.1.i583.lcssa, %i.aaw
  %.sroa.speculated735 = select i1 %i.aax, double %.1.i583.lcssa, double %i.aaw
  store double %.sroa.speculated735, ptr %10, align 8, !tbaa !14
  store double 9.000000e+01, ptr %13, align 8, !tbaa !14
  br label %bb.ce

bb.bg:                                            ; preds = %.thread883
  br i1 %.1428, label %bb.bh, label %.preheader978

bb.bh:                                            ; preds = %bb.bg
  store double -1.800000e+02, ptr %9, align 8, !tbaa !14
  store double 1.800000e+02, ptr %12, align 8, !tbaa !14
  store double -9.000000e+01, ptr %10, align 8, !tbaa !14
  %i.aay = load double, ptr %.sroa.0807.2896, align 8, !tbaa !14
  br label %.new1680

.new1680:                                         ; preds = %.new1680, %bb.bh
  %indvars.iv.i589 = phi i64 [ 1, %bb.bh ], [ %indvars.iv.next.i594.1, %.new1680 ] ; 3 uses
  %.01316.i590 = phi double [ %i.aay, %bb.bh ], [ %.1.i593.1, %.new1680 ] ; 3 uses
  %niter1688 = phi i64 [ 0, %bb.bh ], [ %niter1688.next.1, %.new1680 ]
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i589
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !14 ; 3 uses
  %i.abb = fcmp ogt double %i.aba, %.01316.i590
  %i.abc = fcmp oeq double %.01316.i590, +inf
  %or.cond.i591 = or i1 %i.abc, %i.abb
  %i.abd = fcmp une double %i.aba, +inf
  %or.cond15.i592 = and i1 %i.abd, %or.cond.i591
  %.1.i593 = select i1 %or.cond15.i592, double %i.aba, double %.01316.i590 ; 3 uses
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i589
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %i.abg = load double, ptr %i.abf, align 8, !tbaa !14 ; 3 uses
  %i.abh = fcmp ogt double %i.abg, %.1.i593
  %i.abi = fcmp oeq double %.1.i593, +inf
  %or.cond.i591.1 = or i1 %i.abi, %i.abh
  %i.abj = fcmp une double %i.abg, +inf
  %or.cond15.i592.1 = and i1 %i.abj, %or.cond.i591.1
  %.1.i593.1 = select i1 %or.cond15.i592.1, double %i.abg, double %.1.i593 ; 5 uses
  %indvars.iv.next.i594.1 = add nuw nsw i64 %indvars.iv.i589, 2 ; 2 uses
  %niter1688.next.1 = add nuw i64 %niter1688, 2   ; 2 uses
  %niter1688.ncmp.1 = icmp eq i64 %niter1688.next.1, %unroll_iter1687
  br i1 %niter1688.ncmp.1, label %_ZL10simple_maxPKdi.exit596.unr-lcssa, label %.new1680, !llvm.loop !1

_ZL10simple_maxPKdi.exit596.unr-lcssa:            ; preds = %.new1680
  br i1 %lcmp.mod1684.not, label %_ZL10simple_maxPKdi.exit596, label %.epil.preheader1681

.epil.preheader1681:                              ; preds = %_ZL10simple_maxPKdi.exit596.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1686)
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.next.i594.1
  %i.abl = load double, ptr %i.abk, align 8, !tbaa !14 ; 3 uses
  %i.abm = fcmp ogt double %i.abl, %.1.i593.1
  %i.abn = fcmp oeq double %.1.i593.1, +inf
  %or.cond.i591.epil = or i1 %i.abn, %i.abm
  %i.abo = fcmp une double %i.abl, +inf
  %or.cond15.i592.epil = and i1 %i.abo, %or.cond.i591.epil
  %.1.i593.epil = select i1 %or.cond15.i592.epil, double %i.abl, double %.1.i593.1
  br label %_ZL10simple_maxPKdi.exit596

_ZL10simple_maxPKdi.exit596:                      ; preds = %_ZL10simple_maxPKdi.exit596.unr-lcssa, %.epil.preheader1681
  %.1.i593.lcssa = phi double [ %.1.i593.1, %_ZL10simple_maxPKdi.exit596.unr-lcssa ], [ %.1.i593.epil, %.epil.preheader1681 ] ; 2 uses
  %i.abp = load double, ptr %13, align 8, !tbaa !14 ; 2 uses
  %i.abq = fcmp olt double %i.abp, %.1.i593.lcssa
  %.sroa.speculated731 = select i1 %i.abq, double %.1.i593.lcssa, double %i.abp
  store double %.sroa.speculated731, ptr %13, align 8, !tbaa !14
  br label %bb.ce

bb.bi:                                            ; preds = %bb.bp
  switch i32 %.244.i, label %bb.br [
    i32 2, label %_ZL16antimeridian_minPKdi.exit
    i32 4, label %bb.bq
  ]

.preheader978:                                    ; preds = %bb.bg, %bb.bp
  %indvars.iv.i599 = phi i64 [ %indvars.iv.next.i601, %bb.bp ], [ 0, %bb.bg ] ; 6 uses
  %.04170.i = phi i1 [ %.2.i, %bb.bp ], [ false, %bb.bg ] ; 2 uses
  %.04269.i = phi i32 [ %.244.i, %bb.bp ], [ 0, %bb.bg ] ; 7 uses
  %.04568.i = phi double [ %.247.i, %bb.bp ], [ +inf, %bb.bg ] ; 4 uses
  %.04867.i = phi double [ %.5.i, %bb.bp ], [ +inf, %bb.bg ] ; 5 uses
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2891, i64 %indvars.iv.i599
  %i.abs = load double, ptr %i.abr, align 8, !tbaa !14 ; 7 uses
  %i.abt = fcmp oeq double %i.abs, +inf
  br i1 %i.abt, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %.preheader978
  %i.abu = icmp eq i64 %indvars.iv.i599, 0
  %i.abv = trunc nuw nsw i64 %indvars.iv.i599 to i32
  %spec.select.i.i = select i1 %i.abu, i32 %i.aa, i32 %i.abv
  %.113.i.i = add nsw i32 %spec.select.i.i, -1    ; 3 uses
  %i.abw = sext i32 %.113.i.i to i64
  %i.abx = getelementptr inbounds [8 x i8], ptr %.sroa.0845.2891, i64 %i.abw
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !14 ; 2 uses
  %i.abz = fcmp oeq double %i.aby, +inf
  %i.aca = zext i32 %.113.i.i to i64
  %i.acb = icmp ne i64 %indvars.iv.i599, %i.aca
  %i.acc = and i1 %i.acb, %i.abz
  br i1 %i.acc, label %.lr.ph.i.i, label %_ZL19find_previous_indexiPKdi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.bj, %.lr.ph.i.i
  %.114.i.i = phi i32 [ %.1.i.i, %.lr.ph.i.i ], [ %.113.i.i, %bb.bj ] ; 2 uses
  %i.acd = icmp eq i32 %.114.i.i, 0
  %spec.select12.i.i = select i1 %i.acd, i32 %i.aa, i32 %.114.i.i
  %.1.i.i = add nsw i32 %spec.select12.i.i, -1    ; 3 uses
  %i.ace = sext i32 %.1.i.i to i64
  %i.acf = getelementptr inbounds [8 x i8], ptr %.sroa.0845.2891, i64 %i.ace
  %i.acg = load double, ptr %i.acf, align 8, !tbaa !14 ; 2 uses
  %i.ach = fcmp oeq double %i.acg, +inf
  %i.aci = zext i32 %.1.i.i to i64
  %i.acj = icmp ne i64 %indvars.iv.i599, %i.aci
  %i.ack = and i1 %i.ach, %i.acj
  br i1 %i.ack, label %.lr.ph.i.i, label %_ZL19find_previous_indexiPKdi.exit.i, !llvm.loop !2

_ZL19find_previous_indexiPKdi.exit.i:             ; preds = %.lr.ph.i.i, %bb.bj
  %i.acl = phi double [ %i.aby, %bb.bj ], [ %i.acg, %.lr.ph.i.i ]
  %i.acm = fsub double %i.acl, %i.abs             ; 3 uses
  %i.acn = fcmp oge double %i.acm, 2.000000e+02
  %i.aco = fcmp une double %i.acm, +inf           ; 2 uses
  %or.cond.i600 = and i1 %i.acn, %i.aco
  br i1 %or.cond.i600, label %.thread63.i, label %bb.bk

.thread63.i:                                      ; preds = %_ZL19find_previous_indexiPKdi.exit.i
  %i.acp = icmp eq i32 %.04269.i, 0
  %.149.i = select i1 %i.acp, double %.04568.i, double %.04867.i
  %i.acq = add nsw i32 %.04269.i, 1
  br label %bb.bo

bb.bk:                                            ; preds = %_ZL19find_previous_indexiPKdi.exit.i
  %i.acr = fcmp ole double %i.acm, -2.000000e+02
  %or.cond3.i = and i1 %i.acr, %i.aco
  br i1 %or.cond3.i, label %.thread.i, label %bb.bl

.thread.i:                                        ; preds = %bb.bk
  %i.acs = icmp eq i32 %.04269.i, 0
  %.250.i = select i1 %i.acs, double %i.abs, double %.04867.i
  %i.act = add nsw i32 %.04269.i, 1
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  br i1 %.04170.i, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl, %.thread.i
  %.14360.i = phi i32 [ %i.act, %.thread.i ], [ %.04269.i, %bb.bl ] ; 2 uses
  %.358.i = phi double [ %.250.i, %.thread.i ], [ %.04867.i, %bb.bl ] ; 2 uses
  %i.acu = fcmp olt double %i.abs, %.358.i
  br i1 %i.acu, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %.thread63.i
  %.161.i = phi i1 [ true, %bb.bn ], [ true, %bb.bm ], [ false, %bb.bl ], [ false, %.thread63.i ]
  %.14359.i = phi i32 [ %.14360.i, %bb.bn ], [ %.14360.i, %bb.bm ], [ %.04269.i, %bb.bl ], [ %i.acq, %.thread63.i ]
  %.4.i = phi double [ %i.abs, %bb.bn ], [ %.358.i, %bb.bm ], [ %.04867.i, %bb.bl ], [ %.149.i, %.thread63.i ]
  %i.acv = fcmp olt double %i.abs, %.04568.i
  %.146.i = select i1 %i.acv, double %i.abs, double %.04568.i
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.preheader978
  %.5.i = phi double [ %.04867.i, %.preheader978 ], [ %.4.i, %bb.bo ] ; 2 uses
  %.247.i = phi double [ %.04568.i, %.preheader978 ], [ %.146.i, %bb.bo ] ; 2 uses
  %.244.i = phi i32 [ %.04269.i, %.preheader978 ], [ %.14359.i, %bb.bo ] ; 2 uses
  %.2.i = phi i1 [ %.04170.i, %.preheader978 ], [ %.161.i, %bb.bo ]
  %indvars.iv.next.i601 = add nuw nsw i64 %indvars.iv.i599, 1 ; 2 uses
  %exitcond.not.i602 = icmp eq i64 %indvars.iv.next.i601, %i.ab
  br i1 %exitcond.not.i602, label %bb.bi, label %.preheader978, !llvm.loop !3

bb.bq:                                            ; preds = %bb.bi
  br label %_ZL16antimeridian_minPKdi.exit

bb.br:                                            ; preds = %bb.bi
  br label %_ZL16antimeridian_minPKdi.exit

_ZL16antimeridian_minPKdi.exit:                   ; preds = %bb.br, %bb.bq, %bb.bi
  %.051.i = phi double [ %.247.i, %bb.br ], [ -1.800000e+02, %bb.bq ], [ %.5.i, %bb.bi ] ; 2 uses
  %i.acw = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.acx = fcmp olt double %.051.i, %i.acw
  %.sroa.speculated727 = select i1 %i.acx, double %.051.i, double %i.acw
  store double %.sroa.speculated727, ptr %9, align 8, !tbaa !14
  br label %bb.bt

bb.bs:                                            ; preds = %bb.ca
  switch i32 %.2.i613, label %bb.cc [
    i32 2, label %_ZL16antimeridian_maxPKdi.exit
    i32 4, label %bb.cb
  ]

bb.bt:                                            ; preds = %bb.ca, %_ZL16antimeridian_minPKdi.exit
  %indvars.iv.i605 = phi i64 [ 0, %_ZL16antimeridian_minPKdi.exit ], [ %indvars.iv.next.i614, %bb.ca ] ; 6 uses
  %.05182.i = phi i32 [ 0, %_ZL16antimeridian_minPKdi.exit ], [ %.2.i613, %bb.ca ] ; 7 uses
  %.05281.i = phi i1 [ false, %_ZL16antimeridian_minPKdi.exit ], [ %.254.i, %bb.ca ] ; 2 uses
  %.05580.i = phi double [ -inf, %_ZL16antimeridian_minPKdi.exit ], [ %.257.i, %bb.ca ] ; 5 uses
  %.05879.i = phi double [ -inf, %_ZL16antimeridian_minPKdi.exit ], [ %.5.i612, %bb.ca ] ; 5 uses
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2891, i64 %indvars.iv.i605
  %i.acz = load double, ptr %i.acy, align 8, !tbaa !14 ; 7 uses
  %i.ada = fcmp oeq double %i.acz, +inf
  br i1 %i.ada, label %bb.ca, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.adb = icmp eq i64 %indvars.iv.i605, 0
  %i.adc = trunc nuw nsw i64 %indvars.iv.i605 to i32
  %spec.select.i.i606 = select i1 %i.adb, i32 %i.aa, i32 %i.adc
  %.113.i.i607 = add nsw i32 %spec.select.i.i606, -1 ; 3 uses
  %i.add = sext i32 %.113.i.i607 to i64
  %i.ade = getelementptr inbounds [8 x i8], ptr %.sroa.0845.2891, i64 %i.add
  %i.adf = load double, ptr %i.ade, align 8, !tbaa !14 ; 2 uses
  %i.adg = fcmp oeq double %i.adf, +inf
  %i.adh = zext i32 %.113.i.i607 to i64
  %i.adi = icmp ne i64 %indvars.iv.i605, %i.adh
  %i.adj = and i1 %i.adi, %i.adg
  br i1 %i.adj, label %.lr.ph.i.i617, label %_ZL19find_previous_indexiPKdi.exit.i608

.lr.ph.i.i617:                                    ; preds = %bb.bu, %.lr.ph.i.i617
  %.114.i.i618 = phi i32 [ %.1.i.i620, %.lr.ph.i.i617 ], [ %.113.i.i607, %bb.bu ] ; 2 uses
  %i.adk = icmp eq i32 %.114.i.i618, 0
  %spec.select12.i.i619 = select i1 %i.adk, i32 %i.aa, i32 %.114.i.i618
  %.1.i.i620 = add nsw i32 %spec.select12.i.i619, -1 ; 3 uses
  %i.adl = sext i32 %.1.i.i620 to i64
  %i.adm = getelementptr inbounds [8 x i8], ptr %.sroa.0845.2891, i64 %i.adl
  %i.adn = load double, ptr %i.adm, align 8, !tbaa !14 ; 2 uses
  %i.ado = fcmp oeq double %i.adn, +inf
  %i.adp = zext i32 %.1.i.i620 to i64
  %i.adq = icmp ne i64 %indvars.iv.i605, %i.adp
  %i.adr = and i1 %i.ado, %i.adq
  br i1 %i.adr, label %.lr.ph.i.i617, label %_ZL19find_previous_indexiPKdi.exit.i608, !llvm.loop !2

_ZL19find_previous_indexiPKdi.exit.i608:          ; preds = %.lr.ph.i.i617, %bb.bu
  %i.ads = phi double [ %i.adf, %bb.bu ], [ %i.adn, %.lr.ph.i.i617 ]
  %i.adt = fsub double %i.ads, %i.acz             ; 3 uses
  %i.adu = fcmp oge double %i.adt, 2.000000e+02
  %i.adv = fcmp une double %i.adt, +inf           ; 2 uses
  %or.cond.i609 = and i1 %i.adu, %i.adv
  br i1 %or.cond.i609, label %.thread.i616, label %bb.bv

.thread.i616:                                     ; preds = %_ZL19find_previous_indexiPKdi.exit.i608
  %i.adw = icmp eq i32 %.05182.i, 0
  %.159.i = select i1 %i.adw, double %i.acz, double %.05879.i
  %i.adx = add nsw i32 %.05182.i, 1
  br label %bb.bx

bb.bv:                                            ; preds = %_ZL19find_previous_indexiPKdi.exit.i608
  %i.ady = fcmp ole double %i.adt, -2.000000e+02
  %or.cond3.i610 = and i1 %i.ady, %i.adv
  br i1 %or.cond3.i610, label %.thread75.i, label %bb.bw

.thread75.i:                                      ; preds = %bb.bv
  %i.adz = icmp eq i32 %.05182.i, 0
  %.260.i = select i1 %i.adz, double %.05580.i, double %.05879.i
  %i.aea = add nsw i32 %.05182.i, 1
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  br i1 %.05281.i, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw, %.thread.i616
  %.174.i = phi i32 [ %i.adx, %.thread.i616 ], [ %.05182.i, %bb.bw ] ; 2 uses
  %.370.i = phi double [ %.159.i, %.thread.i616 ], [ %.05879.i, %bb.bw ] ; 3 uses
  %i.aeb = fcmp ogt double %i.acz, %.370.i
  %i.aec = fcmp oeq double %.370.i, +inf
  %or.cond5.i = or i1 %i.aeb, %i.aec
  br i1 %or.cond5.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %.thread75.i
  %.173.i = phi i32 [ %.174.i, %bb.by ], [ %.05182.i, %bb.bw ], [ %.174.i, %bb.bx ], [ %i.aea, %.thread75.i ]
  %.15371.i = phi i1 [ true, %bb.by ], [ false, %bb.bw ], [ true, %bb.bx ], [ false, %.thread75.i ]
  %.4.i611 = phi double [ %i.acz, %bb.by ], [ %.05879.i, %bb.bw ], [ %.370.i, %bb.bx ], [ %.260.i, %.thread75.i ]
  %i.aed = fcmp ogt double %i.acz, %.05580.i
  %i.aee = fcmp oeq double %.05580.i, +inf
  %or.cond7.i = or i1 %i.aee, %i.aed
  %.156.i = select i1 %or.cond7.i, double %i.acz, double %.05580.i
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bt
  %.5.i612 = phi double [ %.05879.i, %bb.bt ], [ %.4.i611, %bb.bz ] ; 2 uses
  %.257.i = phi double [ %.05580.i, %bb.bt ], [ %.156.i, %bb.bz ] ; 2 uses
  %.254.i = phi i1 [ %.05281.i, %bb.bt ], [ %.15371.i, %bb.bz ]
  %.2.i613 = phi i32 [ %.05182.i, %bb.bt ], [ %.173.i, %bb.bz ] ; 2 uses
  %indvars.iv.next.i614 = add nuw nsw i64 %indvars.iv.i605, 1 ; 2 uses
  %exitcond.not.i615 = icmp eq i64 %indvars.iv.next.i614, %i.ab
  br i1 %exitcond.not.i615, label %bb.bs, label %bb.bt, !llvm.loop !4

bb.cb:                                            ; preds = %bb.bs
  br label %_ZL16antimeridian_maxPKdi.exit

bb.cc:                                            ; preds = %bb.bs
  br label %_ZL16antimeridian_maxPKdi.exit

_ZL16antimeridian_maxPKdi.exit:                   ; preds = %bb.bs, %bb.cb, %bb.cc
  %.061.i = phi double [ %.257.i, %bb.cc ], [ 1.800000e+02, %bb.cb ], [ %.5.i612, %bb.bs ] ; 2 uses
  %i.aef = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.aeg = fcmp olt double %i.aef, %.061.i
  %.sroa.speculated723 = select i1 %i.aeg, double %.061.i, double %i.aef ; 2 uses
  store double %.sroa.speculated723, ptr %12, align 8, !tbaa !14
  %i.aeh = load double, ptr %9, align 8, !tbaa !14
  %i.aei = load double, ptr %.sroa.0807.2896, align 8, !tbaa !14 ; 2 uses
  br i1 %i.ed, label %.epil.preheader1664, label %_ZL16antimeridian_maxPKdi.exit.new

_ZL16antimeridian_maxPKdi.exit.new:               ; preds = %_ZL16antimeridian_maxPKdi.exit, %_ZL16antimeridian_maxPKdi.exit.new
  %indvars.iv.i623 = phi i64 [ %indvars.iv.next.i626.3, %_ZL16antimeridian_maxPKdi.exit.new ], [ 1, %_ZL16antimeridian_maxPKdi.exit ] ; 5 uses
  %.0911.i624 = phi double [ %.1.i625.3, %_ZL16antimeridian_maxPKdi.exit.new ], [ %i.aei, %_ZL16antimeridian_maxPKdi.exit ] ; 2 uses
  %niter1671 = phi i64 [ %niter1671.next.3, %_ZL16antimeridian_maxPKdi.exit.new ], [ 0, %_ZL16antimeridian_maxPKdi.exit ]
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i623
  %i.aek = load double, ptr %i.aej, align 8, !tbaa !14 ; 2 uses
  %i.ael = fcmp olt double %i.aek, %.0911.i624
  %.1.i625 = select i1 %i.ael, double %i.aek, double %.0911.i624 ; 2 uses
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i623
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.aeo = load double, ptr %i.aen, align 8, !tbaa !14 ; 2 uses
  %i.aep = fcmp olt double %i.aeo, %.1.i625
  %.1.i625.1 = select i1 %i.aep, double %i.aeo, double %.1.i625 ; 2 uses
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i623
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 16
  %i.aes = load double, ptr %i.aer, align 8, !tbaa !14 ; 2 uses
  %i.aet = fcmp olt double %i.aes, %.1.i625.1
  %.1.i625.2 = select i1 %i.aet, double %i.aes, double %.1.i625.1 ; 2 uses
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i623
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 24
  %i.aew = load double, ptr %i.aev, align 8, !tbaa !14 ; 2 uses
  %i.aex = fcmp olt double %i.aew, %.1.i625.2
  %.1.i625.3 = select i1 %i.aex, double %i.aew, double %.1.i625.2 ; 3 uses
  %indvars.iv.next.i626.3 = add nuw nsw i64 %indvars.iv.i623, 4 ; 2 uses
  %niter1671.next.3 = add nuw i64 %niter1671, 4   ; 2 uses
  %niter1671.ncmp.3 = icmp eq i64 %niter1671.next.3, %unroll_iter1670
  br i1 %niter1671.ncmp.3, label %_ZL10simple_minPKdi.exit628.unr-lcssa, label %_ZL16antimeridian_maxPKdi.exit.new, !llvm.loop !0

_ZL10simple_minPKdi.exit628.unr-lcssa:            ; preds = %_ZL16antimeridian_maxPKdi.exit.new
  br i1 %lcmp.mod1667.not, label %_ZL10simple_minPKdi.exit628, label %.epil.preheader1664

.epil.preheader1664:                              ; preds = %_ZL10simple_minPKdi.exit628.unr-lcssa, %_ZL16antimeridian_maxPKdi.exit
  %indvars.iv.i623.epil.init = phi i64 [ 1, %_ZL16antimeridian_maxPKdi.exit ], [ %indvars.iv.next.i626.3, %_ZL10simple_minPKdi.exit628.unr-lcssa ]
  %.0911.i624.epil.init = phi double [ %i.aei, %_ZL16antimeridian_maxPKdi.exit ], [ %.1.i625.3, %_ZL10simple_minPKdi.exit628.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1669)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.epil.preheader1664
  %indvars.iv.i623.epil = phi i64 [ %indvars.iv.i623.epil.init, %.epil.preheader1664 ], [ %indvars.iv.next.i626.epil, %bb.cd ] ; 2 uses
  %.0911.i624.epil = phi double [ %.0911.i624.epil.init, %.epil.preheader1664 ], [ %.1.i625.epil, %bb.cd ] ; 2 uses
  %epil.iter1666 = phi i64 [ 0, %.epil.preheader1664 ], [ %epil.iter1666.next, %bb.cd ]
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i623.epil
  %i.aez = load double, ptr %i.aey, align 8, !tbaa !14 ; 2 uses
  %i.afa = fcmp olt double %i.aez, %.0911.i624.epil
  %.1.i625.epil = select i1 %i.afa, double %i.aez, double %.0911.i624.epil ; 2 uses
  %indvars.iv.next.i626.epil = add nuw nsw i64 %indvars.iv.i623.epil, 1
  %epil.iter1666.next = add i64 %epil.iter1666, 1 ; 2 uses
  %epil.iter1666.cmp.not = icmp eq i64 %epil.iter1666.next, %xtraiter1665
  br i1 %epil.iter1666.cmp.not, label %_ZL10simple_minPKdi.exit628, label %bb.cd, !llvm.loop !76

_ZL10simple_minPKdi.exit628:                      ; preds = %bb.cd, %_ZL10simple_minPKdi.exit628.unr-lcssa
  %.1.i625.lcssa = phi double [ %.1.i625.3, %_ZL10simple_minPKdi.exit628.unr-lcssa ], [ %.1.i625.epil, %bb.cd ] ; 2 uses
  %i.afb = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.afc = fcmp olt double %.1.i625.lcssa, %i.afb
  %.sroa.speculated719 = select i1 %i.afc, double %.1.i625.lcssa, double %i.afb
  store double %.sroa.speculated719, ptr %10, align 8, !tbaa !14
  %i.afd = load double, ptr %.sroa.0807.2896, align 8, !tbaa !14
  br label %_ZL10simple_minPKdi.exit628.new

_ZL10simple_minPKdi.exit628.new:                  ; preds = %_ZL10simple_minPKdi.exit628.new, %_ZL10simple_minPKdi.exit628
  %indvars.iv.i631 = phi i64 [ 1, %_ZL10simple_minPKdi.exit628 ], [ %indvars.iv.next.i636.1, %_ZL10simple_minPKdi.exit628.new ] ; 3 uses
  %.01316.i632 = phi double [ %i.afd, %_ZL10simple_minPKdi.exit628 ], [ %.1.i635.1, %_ZL10simple_minPKdi.exit628.new ] ; 3 uses
  %niter1679 = phi i64 [ 0, %_ZL10simple_minPKdi.exit628 ], [ %niter1679.next.1, %_ZL10simple_minPKdi.exit628.new ]
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i631
  %i.aff = load double, ptr %i.afe, align 8, !tbaa !14 ; 3 uses
  %i.afg = fcmp ogt double %i.aff, %.01316.i632
  %i.afh = fcmp oeq double %.01316.i632, +inf
  %or.cond.i633 = or i1 %i.afh, %i.afg
  %i.afi = fcmp une double %i.aff, +inf
  %or.cond15.i634 = and i1 %i.afi, %or.cond.i633
  %.1.i635 = select i1 %or.cond15.i634, double %i.aff, double %.01316.i632 ; 3 uses
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i631
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  %i.afl = load double, ptr %i.afk, align 8, !tbaa !14 ; 3 uses
  %i.afm = fcmp ogt double %i.afl, %.1.i635
  %i.afn = fcmp oeq double %.1.i635, +inf
  %or.cond.i633.1 = or i1 %i.afn, %i.afm
  %i.afo = fcmp une double %i.afl, +inf
  %or.cond15.i634.1 = and i1 %i.afo, %or.cond.i633.1
  %.1.i635.1 = select i1 %or.cond15.i634.1, double %i.afl, double %.1.i635 ; 5 uses
  %indvars.iv.next.i636.1 = add nuw nsw i64 %indvars.iv.i631, 2 ; 2 uses
  %niter1679.next.1 = add nuw i64 %niter1679, 2   ; 2 uses
  %niter1679.ncmp.1 = icmp eq i64 %niter1679.next.1, %unroll_iter1678
  br i1 %niter1679.ncmp.1, label %_ZL10simple_maxPKdi.exit638.unr-lcssa, label %_ZL10simple_minPKdi.exit628.new, !llvm.loop !1

_ZL10simple_maxPKdi.exit638.unr-lcssa:            ; preds = %_ZL10simple_minPKdi.exit628.new
  br i1 %lcmp.mod1675.not, label %_ZL10simple_maxPKdi.exit638, label %.epil.preheader1672

.epil.preheader1672:                              ; preds = %_ZL10simple_maxPKdi.exit638.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1677)
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.next.i636.1
  %i.afq = load double, ptr %i.afp, align 8, !tbaa !14 ; 3 uses
  %i.afr = fcmp ogt double %i.afq, %.1.i635.1
  %i.afs = fcmp oeq double %.1.i635.1, +inf
  %or.cond.i633.epil = or i1 %i.afs, %i.afr
  %i.aft = fcmp une double %i.afq, +inf
  %or.cond15.i634.epil = and i1 %i.aft, %or.cond.i633.epil
  %.1.i635.epil = select i1 %or.cond15.i634.epil, double %i.afq, double %.1.i635.1
  br label %_ZL10simple_maxPKdi.exit638

_ZL10simple_maxPKdi.exit638:                      ; preds = %_ZL10simple_maxPKdi.exit638.unr-lcssa, %.epil.preheader1672
  %.1.i635.lcssa = phi double [ %.1.i635.1, %_ZL10simple_maxPKdi.exit638.unr-lcssa ], [ %.1.i635.epil, %.epil.preheader1672 ] ; 2 uses
  %i.afu = fcmp ogt double %i.aeh, %.sroa.speculated723
  %i.afv = load double, ptr %13, align 8, !tbaa !14 ; 2 uses
  %i.afw = fcmp olt double %i.afv, %.1.i635.lcssa
  %.sroa.speculated715 = select i1 %i.afw, double %.1.i635.lcssa, double %i.afv
  store double %.sroa.speculated715, ptr %13, align 8, !tbaa !14
  %i.afx = or i1 %i.afu, %i.cb
  br label %bb.ce

bb.ce:                                            ; preds = %_ZL10simple_minPKdi.exit586, %_ZL10simple_maxPKdi.exit638, %_ZL10simple_maxPKdi.exit596, %_ZL10simple_maxPKdi.exit578
  %.sroa.45.2900 = phi ptr [ %.sroa.45.2901, %_ZL10simple_minPKdi.exit586 ], [ %.sroa.45.2901, %_ZL10simple_maxPKdi.exit596 ], [ %.sroa.45.2901, %_ZL10simple_maxPKdi.exit638 ], [ %.sroa.45.11004, %_ZL10simple_maxPKdi.exit578 ] ; 3 uses
  %.sroa.0807.2897 = phi ptr [ %.sroa.0807.2896, %_ZL10simple_minPKdi.exit586 ], [ %.sroa.0807.2896, %_ZL10simple_maxPKdi.exit596 ], [ %.sroa.0807.2896, %_ZL10simple_maxPKdi.exit638 ], [ %.sroa.0807.11003, %_ZL10simple_maxPKdi.exit578 ] ; 10 uses
  %.sroa.43.2894 = phi ptr [ %.sroa.43.2895, %_ZL10simple_minPKdi.exit586 ], [ %.sroa.43.2895, %_ZL10simple_maxPKdi.exit596 ], [ %.sroa.43.2895, %_ZL10simple_maxPKdi.exit638 ], [ %.sroa.43.11002, %_ZL10simple_maxPKdi.exit578 ] ; 3 uses
  %.sroa.0845.2890 = phi ptr [ %.sroa.0845.2891, %_ZL10simple_minPKdi.exit586 ], [ %.sroa.0845.2891, %_ZL10simple_maxPKdi.exit596 ], [ %.sroa.0845.2891, %_ZL10simple_maxPKdi.exit638 ], [ %.sroa.0845.11001, %_ZL10simple_maxPKdi.exit578 ] ; 10 uses
  %.0410 = phi i1 [ %i.cb, %_ZL10simple_minPKdi.exit586 ], [ %i.cb, %_ZL10simple_maxPKdi.exit596 ], [ %i.afx, %_ZL10simple_maxPKdi.exit638 ], [ %i.cb, %_ZL10simple_maxPKdi.exit578 ]
  %.sroa.0807.28971185 = ptrtoaddr ptr %.sroa.0807.2897 to i64 ; 2 uses
  %.sroa.0845.28901186 = ptrtoaddr ptr %.sroa.0845.2890 to i64 ; 2 uses
  %i.afy = load double, ptr %i.aj, align 8, !tbaa !14 ; 3 uses
  br i1 %i.ef, label %.epil.preheader1699, label %.new1698

.new1698:                                         ; preds = %bb.ce, %.new1698
  %indvars.iv.i641 = phi i64 [ %indvars.iv.next.i644.3, %.new1698 ], [ 1, %bb.ce ] ; 5 uses
  %.0911.i642 = phi double [ %.1.i643.3, %.new1698 ], [ %i.afy, %bb.ce ] ; 2 uses
  %niter1706 = phi i64 [ %niter1706.next.3, %.new1698 ], [ 0, %bb.ce ]
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i641
  %i.aga = load double, ptr %i.afz, align 8, !tbaa !14 ; 2 uses
  %i.agb = fcmp olt double %i.aga, %.0911.i642
  %.1.i643 = select i1 %i.agb, double %i.aga, double %.0911.i642 ; 2 uses
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i641
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 8
  %i.age = load double, ptr %i.agd, align 8, !tbaa !14 ; 2 uses
  %i.agf = fcmp olt double %i.age, %.1.i643
  %.1.i643.1 = select i1 %i.agf, double %i.age, double %.1.i643 ; 2 uses
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i641
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 16
  %i.agi = load double, ptr %i.agh, align 8, !tbaa !14 ; 2 uses
  %i.agj = fcmp olt double %i.agi, %.1.i643.1
  %.1.i643.2 = select i1 %i.agj, double %i.agi, double %.1.i643.1 ; 2 uses
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i641
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 24
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !14 ; 2 uses
  %i.agn = fcmp olt double %i.agm, %.1.i643.2
  %.1.i643.3 = select i1 %i.agn, double %i.agm, double %.1.i643.2 ; 3 uses
  %indvars.iv.next.i644.3 = add nuw nsw i64 %indvars.iv.i641, 4 ; 2 uses
  %niter1706.next.3 = add nuw i64 %niter1706, 4   ; 2 uses
  %niter1706.ncmp.3 = icmp eq i64 %niter1706.next.3, %unroll_iter1705
  br i1 %niter1706.ncmp.3, label %_ZL10simple_minPKdi.exit646.unr-lcssa, label %.new1698, !llvm.loop !0

_ZL10simple_minPKdi.exit646.unr-lcssa:            ; preds = %.new1698
  br i1 %lcmp.mod1702.not, label %_ZL10simple_minPKdi.exit646, label %.epil.preheader1699

.epil.preheader1699:                              ; preds = %_ZL10simple_minPKdi.exit646.unr-lcssa, %bb.ce
  %indvars.iv.i641.epil.init = phi i64 [ 1, %bb.ce ], [ %indvars.iv.next.i644.3, %_ZL10simple_minPKdi.exit646.unr-lcssa ]
  %.0911.i642.epil.init = phi double [ %i.afy, %bb.ce ], [ %.1.i643.3, %_ZL10simple_minPKdi.exit646.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1704)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %.epil.preheader1699
  %indvars.iv.i641.epil = phi i64 [ %indvars.iv.i641.epil.init, %.epil.preheader1699 ], [ %indvars.iv.next.i644.epil, %bb.cf ] ; 2 uses
  %.0911.i642.epil = phi double [ %.0911.i642.epil.init, %.epil.preheader1699 ], [ %.1.i643.epil, %bb.cf ] ; 2 uses
  %epil.iter1701 = phi i64 [ 0, %.epil.preheader1699 ], [ %epil.iter1701.next, %bb.cf ]
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i641.epil
  %i.agp = load double, ptr %i.ago, align 8, !tbaa !14 ; 2 uses
  %i.agq = fcmp olt double %i.agp, %.0911.i642.epil
  %.1.i643.epil = select i1 %i.agq, double %i.agp, double %.0911.i642.epil ; 2 uses
  %indvars.iv.next.i644.epil = add nuw nsw i64 %indvars.iv.i641.epil, 1
  %epil.iter1701.next = add i64 %epil.iter1701, 1 ; 2 uses
  %epil.iter1701.cmp.not = icmp eq i64 %epil.iter1701.next, %xtraiter1700
  br i1 %epil.iter1701.cmp.not, label %_ZL10simple_minPKdi.exit646, label %bb.cf, !llvm.loop !77

_ZL10simple_minPKdi.exit646:                      ; preds = %bb.cf, %_ZL10simple_minPKdi.exit646.unr-lcssa
  %.1.i643.lcssa = phi double [ %.1.i643.3, %_ZL10simple_minPKdi.exit646.unr-lcssa ], [ %.1.i643.epil, %bb.cf ] ; 2 uses
  %i.agr = load double, ptr %11, align 8, !tbaa !14 ; 2 uses
  %i.ags = fcmp olt double %.1.i643.lcssa, %i.agr
  %.sroa.speculated711 = select i1 %i.ags, double %.1.i643.lcssa, double %i.agr
  store double %.sroa.speculated711, ptr %11, align 8, !tbaa !14
  br label %_ZL10simple_minPKdi.exit646.new

_ZL10simple_minPKdi.exit646.new:                  ; preds = %_ZL10simple_minPKdi.exit646.new, %_ZL10simple_minPKdi.exit646
  %indvars.iv.i649 = phi i64 [ 1, %_ZL10simple_minPKdi.exit646 ], [ %indvars.iv.next.i654.1, %_ZL10simple_minPKdi.exit646.new ] ; 3 uses
  %.01316.i650 = phi double [ %i.afy, %_ZL10simple_minPKdi.exit646 ], [ %.1.i653.1, %_ZL10simple_minPKdi.exit646.new ] ; 3 uses
  %niter1714 = phi i64 [ 0, %_ZL10simple_minPKdi.exit646 ], [ %niter1714.next.1, %_ZL10simple_minPKdi.exit646.new ]
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i649
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !14 ; 3 uses
  %i.agv = fcmp ogt double %i.agu, %.01316.i650
  %i.agw = fcmp oeq double %.01316.i650, +inf
  %or.cond.i651 = or i1 %i.agw, %i.agv
  %i.agx = fcmp une double %i.agu, +inf
  %or.cond15.i652 = and i1 %i.agx, %or.cond.i651
  %.1.i653 = select i1 %or.cond15.i652, double %i.agu, double %.01316.i650 ; 3 uses
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i649
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  %i.aha = load double, ptr %i.agz, align 8, !tbaa !14 ; 3 uses
  %i.ahb = fcmp ogt double %i.aha, %.1.i653
  %i.ahc = fcmp oeq double %.1.i653, +inf
  %or.cond.i651.1 = or i1 %i.ahc, %i.ahb
  %i.ahd = fcmp une double %i.aha, +inf
  %or.cond15.i652.1 = and i1 %i.ahd, %or.cond.i651.1
  %.1.i653.1 = select i1 %or.cond15.i652.1, double %i.aha, double %.1.i653 ; 5 uses
  %indvars.iv.next.i654.1 = add nuw nsw i64 %indvars.iv.i649, 2 ; 2 uses
  %niter1714.next.1 = add nuw i64 %niter1714, 2   ; 2 uses
  %niter1714.ncmp.1 = icmp eq i64 %niter1714.next.1, %unroll_iter1713
  br i1 %niter1714.ncmp.1, label %_ZL10simple_maxPKdi.exit656.unr-lcssa, label %_ZL10simple_minPKdi.exit646.new, !llvm.loop !1

_ZL10simple_maxPKdi.exit656.unr-lcssa:            ; preds = %_ZL10simple_minPKdi.exit646.new
  br i1 %lcmp.mod1710.not, label %_ZL10simple_maxPKdi.exit656, label %.epil.preheader1707

.epil.preheader1707:                              ; preds = %_ZL10simple_maxPKdi.exit656.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1712)
  %i.ahe = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i654.1
  %i.ahf = load double, ptr %i.ahe, align 8, !tbaa !14 ; 3 uses
  %i.ahg = fcmp ogt double %i.ahf, %.1.i653.1
  %i.ahh = fcmp oeq double %.1.i653.1, +inf
  %or.cond.i651.epil = or i1 %i.ahh, %i.ahg
  %i.ahi = fcmp une double %i.ahf, +inf
  %or.cond15.i652.epil = and i1 %i.ahi, %or.cond.i651.epil
  %.1.i653.epil = select i1 %or.cond15.i652.epil, double %i.ahf, double %.1.i653.1
  br label %_ZL10simple_maxPKdi.exit656

_ZL10simple_maxPKdi.exit656:                      ; preds = %_ZL10simple_maxPKdi.exit656.unr-lcssa, %.epil.preheader1707
  %.1.i653.lcssa = phi double [ %.1.i653.1, %_ZL10simple_maxPKdi.exit656.unr-lcssa ], [ %.1.i653.epil, %.epil.preheader1707 ] ; 2 uses
  %i.ahj = load double, ptr %14, align 8, !tbaa !14 ; 2 uses
  %i.ahk = fcmp olt double %i.ahj, %.1.i653.lcssa
  %.sroa.speculated = select i1 %i.ahk, double %.1.i653.lcssa, double %i.ahj
  store double %.sroa.speculated, ptr %14, align 8, !tbaa !14
  br i1 %or.cond8, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZL10simple_maxPKdi.exit656
  %i.ahl = load double, ptr %9, align 8, !tbaa !14
  %i.ahm = load double, ptr %10, align 8, !tbaa !14
  store double %i.ahm, ptr %9, align 8, !tbaa !14
  store double %i.ahl, ptr %10, align 8, !tbaa !14
  %i.ahn = load double, ptr %12, align 8, !tbaa !14
  %i.aho = load double, ptr %13, align 8, !tbaa !14
  store double %i.aho, ptr %12, align 8, !tbaa !14
  store double %i.ahn, ptr %13, align 8, !tbaa !14
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %_ZL10simple_maxPKdi.exit656
  br i1 %.0410, label %.loopexit, label %.preheader976.preheader

.preheader976.preheader:                          ; preds = %bb.ch
  %i.ahp = sub i64 %.sroa.0845.28901186, %.sroa.0807.28971185
  %diff.check = icmp ugt i64 %i.ahp, -32
  %i.ahq = sub i64 %.sroa.0845.28901186, %i.ax
  %diff.check1187 = icmp ugt i64 %i.ahq, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1187
  %i.ahr = sub i64 %.sroa.0807.28971185, %i.ax
  %diff.check1188 = icmp ugt i64 %i.ahr, -32
  %conflict.rdx1189 = or i1 %conflict.rdx, %diff.check1188
  %broadcast.splatinsert1194 = insertelement <2 x double> poison, double %i.sv, i64 0
  %broadcast.splat1195 = shufflevector <2 x double> %broadcast.splatinsert1194, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader976

.preheader976:                                    ; preds = %.preheader976.preheader, %._crit_edge999
  %.04091000 = phi i32 [ %i.aiz, %._crit_edge999 ], [ 1, %.preheader976.preheader ] ; 2 uses
  %i.ahs = uitofp nneg i32 %.04091000 to double
  %i.aht = call double @llvm.fmuladd.f64(double %i.ahs, double %i.by, double %4) ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx1189
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader976
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aht, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ahu = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.ahv = uitofp nneg <2 x i32> %step.add to <2 x double>
  %i.ahw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahu, <2 x double> %broadcast.splat1191, <2 x double> %broadcast.splat1193)
  %i.ahx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahv, <2 x double> %broadcast.splat1191, <2 x double> %broadcast.splat1193)
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %index ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 16
  store <2 x double> %i.ahw, ptr %i.ahy, align 8, !tbaa !14
  store <2 x double> %i.ahx, ptr %i.ahz, align 8, !tbaa !14
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %index ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 16
  store <2 x double> %broadcast.splat, ptr %i.aia, align 8, !tbaa !14
  store <2 x double> %broadcast.splat, ptr %i.aib, align 8, !tbaa !14
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 16
  store <2 x double> %broadcast.splat1195, ptr %i.aic, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1195, ptr %i.aid, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.aie = icmp eq i64 %index.next, %n.vec
  br i1 %i.aie, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge995, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader976, %middle.block
  %indvars.iv1072.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader976 ] ; 7 uses
  br i1 %lcmp.mod1716.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aif = trunc nuw nsw i64 %indvars.iv1072.ph to i32
  %i.aig = uitofp nneg i32 %i.aif to double
  %i.aih = call double @llvm.fmuladd.f64(double %i.aig, double %.04321139, double %3)
  %i.aii = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv1072.ph
  store double %i.aih, ptr %i.aii, align 8, !tbaa !14
  %i.aij = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv1072.ph
  store double %i.aht, ptr %i.aij, align 8, !tbaa !14
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1072.ph
  store double %i.sv, ptr %i.aik, align 8, !tbaa !14
  %indvars.iv.next1073.prol = or disjoint i64 %indvars.iv1072.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1072.unr = phi i64 [ %indvars.iv1072.ph, %scalar.ph.preheader ], [ %indvars.iv.next1073.prol, %scalar.ph.prol ]
  %i.ail = icmp eq i64 %indvars.iv1072.ph, %i.dq
  br i1 %i.ail, label %._crit_edge995, label %scalar.ph

._crit_edge995:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aim = invoke i64 @proj_trans_generic(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %.sroa.0845.2890, i64 noundef 8, i64 noundef %i.cc, ptr noundef nonnull %.sroa.0807.2897, i64 noundef 8, i64 noundef %i.cc, ptr noundef nonnull %i.aj, i64 noundef 8, i64 noundef %i.cc, ptr noundef null, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph998 unwind label %bb.ci ; 0 uses

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073.1, %scalar.ph ], [ %indvars.iv1072.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ain = trunc nuw nsw i64 %indvars.iv1072 to i32
  %i.aio = uitofp nneg i32 %i.ain to double
  %i.aip = call double @llvm.fmuladd.f64(double %i.aio, double %.04321139, double %3)
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv1072
  store double %i.aip, ptr %i.aiq, align 8, !tbaa !14
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv1072
  store double %i.aht, ptr %i.air, align 8, !tbaa !14
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1072
  store double %i.sv, ptr %i.ais, align 8, !tbaa !14
  %indvars.iv.next1073 = add nuw nsw i64 %indvars.iv1072, 1 ; 4 uses
  %i.ait = trunc nuw nsw i64 %indvars.iv.next1073 to i32
  %i.aiu = uitofp nneg i32 %i.ait to double
  %i.aiv = call double @llvm.fmuladd.f64(double %i.aiu, double %.04321139, double %3)
  %i.aiw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv.next1073
  store double %i.aiv, ptr %i.aiw, align 8, !tbaa !14
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv.next1073
  store double %i.aht, ptr %i.aix, align 8, !tbaa !14
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next1073
  store double %i.sv, ptr %i.aiy, align 8, !tbaa !14
  %indvars.iv.next1073.1 = add nuw nsw i64 %indvars.iv1072, 2 ; 2 uses
  %exitcond1077.not.1 = icmp eq i64 %indvars.iv.next1073.1, %wide.trip.count1076
  br i1 %exitcond1077.not.1, label %._crit_edge995, label %scalar.ph, !llvm.loop !79

._crit_edge999:                                   ; preds = %bb.cl
  %i.aiz = add nuw nsw i32 %.04091000, 1          ; 2 uses
  %exitcond1084.not = icmp eq i32 %i.aiz, %i.ce
  br i1 %exitcond1084.not, label %.loopexit, label %.preheader976, !llvm.loop !80

bb.ci:                                            ; preds = %._crit_edge995
  %i.aja = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread

.lr.ph998:                                        ; preds = %._crit_edge995, %bb.cl
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %bb.cl ], [ 0, %._crit_edge995 ] ; 4 uses
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv1078 ; 2 uses
  %i.ajc = load double, ptr %i.ajb, align 8, !tbaa !14 ; 3 uses
  %i.ajd = call double @llvm.fabs.f64(double %i.ajc)
  %i.aje = fcmp ueq double %i.ajd, +inf
  br i1 %i.aje, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph998
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv1078 ; 3 uses
  %i.ajg = load double, ptr %i.ajf, align 8, !tbaa !14
  %i.ajh = call double @llvm.fabs.f64(double %i.ajg)
  %i.aji = fcmp ueq double %i.ajh, +inf
  br i1 %i.aji, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ajj = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.ajk = fcmp olt double %i.ajc, %i.ajj
  %i.ajl = select i1 %i.ajk, double %i.ajc, double %i.ajj
  store double %i.ajl, ptr %9, align 8, !tbaa !14
  %i.ajm = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.ajn = load double, ptr %i.ajb, align 8, !tbaa !14 ; 2 uses
  %i.ajo = fcmp olt double %i.ajm, %i.ajn
  %i.ajp = select i1 %i.ajo, double %i.ajn, double %i.ajm
  store double %i.ajp, ptr %12, align 8, !tbaa !14
  %i.ajq = load double, ptr %i.ajf, align 8, !tbaa !14 ; 2 uses
  %i.ajr = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.ajs = fcmp olt double %i.ajq, %i.ajr
  %i.ajt = select i1 %i.ajs, double %i.ajq, double %i.ajr
  store double %i.ajt, ptr %10, align 8, !tbaa !14
  %i.aju = load double, ptr %13, align 8, !tbaa !14 ; 2 uses
  %i.ajv = load double, ptr %i.ajf, align 8, !tbaa !14 ; 2 uses
  %i.ajw = fcmp olt double %i.aju, %i.ajv
  %i.ajx = select i1 %i.ajw, double %i.ajv, double %i.aju
  store double %i.ajx, ptr %13, align 8, !tbaa !14
  %i.ajy = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1078
  %i.ajz = load double, ptr %i.ajy, align 8, !tbaa !14 ; 4 uses
  %i.aka = load double, ptr %11, align 8, !tbaa !14 ; 2 uses
  %i.akb = fcmp olt double %i.ajz, %i.aka
  %i.akc = select i1 %i.akb, double %i.ajz, double %i.aka
  store double %i.akc, ptr %11, align 8, !tbaa !14
  %i.akd = load double, ptr %14, align 8, !tbaa !14 ; 2 uses
  %i.ake = fcmp olt double %i.akd, %i.ajz
  %i.akf = select i1 %i.ake, double %i.ajz, double %i.akd
  store double %i.akf, ptr %14, align 8, !tbaa !14
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph998, %bb.cj, %bb.ck
  %indvars.iv.next1079 = add nuw nsw i64 %indvars.iv1078, 1 ; 2 uses
  %exitcond1082.not = icmp eq i64 %indvars.iv.next1079, %wide.trip.count1076
  br i1 %exitcond1082.not, label %._crit_edge999, label %.lr.ph998, !llvm.loop !81

.loopexit:                                        ; preds = %._crit_edge999, %bb.ch
  br i1 %i.su, label %.lr.ph.preheader, label %.loopexit980, !llvm.loop !82

.loopexit980:                                     ; preds = %.loopexit, %.invoke, %bb.ab, %_ZL10simple_maxPKdi.exit542, %bb.x
  %.sroa.0845.3.ph = phi ptr [ %i.ad, %bb.x ], [ %i.ad, %.invoke ], [ %i.ad, %bb.ab ], [ %i.ad, %_ZL10simple_maxPKdi.exit542 ], [ %.sroa.0845.2890, %.loopexit ]
  %.sroa.43.3.ph = phi ptr [ %i.af, %bb.x ], [ %i.af, %.invoke ], [ %i.af, %bb.ab ], [ %i.af, %_ZL10simple_maxPKdi.exit542 ], [ %.sroa.43.2894, %.loopexit ]
  %.sroa.0807.3.ph = phi ptr [ %i.ag, %bb.x ], [ %i.ag, %.invoke ], [ %i.ag, %bb.ab ], [ %i.ag, %_ZL10simple_maxPKdi.exit542 ], [ %.sroa.0807.2897, %.loopexit ]
  %.sroa.45.3.ph = phi ptr [ %i.ai, %bb.x ], [ %i.ai, %.invoke ], [ %i.ai, %bb.ab ], [ %i.ai, %_ZL10simple_maxPKdi.exit542 ], [ %.sroa.45.2900, %.loopexit ]
  %.4449.ph = phi i32 [ 0, %bb.x ], [ 0, %.invoke ], [ 0, %bb.ab ], [ 1, %_ZL10simple_maxPKdi.exit542 ], [ 1, %.loopexit ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ac) #19
end_hunk_1
