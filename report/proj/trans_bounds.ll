Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/trans_bounds?download=true
inline.NumInlined: 330
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@proj_trans_bounds_3D:bb.a
bb.l:                                             ; preds = %bb.k
  %i.q = call ptr @proj_get_source_crs(ptr noundef %0, ptr noundef nonnull %1)
  br label %_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit

bb.m:                                             ; preds = %bb.k
  %i.r = call ptr @proj_get_target_crs(ptr noundef %0, ptr noundef nonnull %1)
  br label %_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit

_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit: ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %i.q, %bb.l ], [ %i.r, %bb.m ] ; 3 uses
  %.not471 = icmp eq ptr %.0.i, null
  br i1 %.not471, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit
  %i.s = call ptr @proj_destroy(ptr noundef null) ; 0 uses
  %i.t = shl nuw nsw i32 %i.o, 2
  br label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit
  %i.u = call i32 @proj_get_type(ptr noundef nonnull %.0.i)
  %.fr = freeze i32 %i.u
  %i.v = icmp eq i32 %.fr, 10                     ; 2 uses
  %i.w = call ptr @proj_destroy(ptr noundef nonnull %.0.i) ; 0 uses
  %i.x = mul nuw nsw i32 %i.o, 12
  %i.y = shl nuw nsw i32 %i.o, 2
  %spec.select = select i1 %i.v, i32 %i.x, i32 %i.y
  br label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n, %.thread
  %i.z = phi i1 [ false, %.thread ], [ %i.v, %bb.n ]
  %i.aa = phi i32 [ %i.t, %.thread ], [ %spec.select, %bb.n ] ; 5 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 15 uses
  %i.ac = shl nuw nsw i64 %i.ab, 3                ; 6 uses
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #18
          to label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 unwind label %bb.o ; 45 uses

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !14
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.idx.i.i.i.i.i31.i = add nsw i64 %i.ac, -8     ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !14
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab ; 8 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #18
          to label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 unwind label %bb.o ; 44 uses

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !14
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ab ; 7 uses
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #18
          to label %bb.t unwind label %bb.o       ; 63 uses

bb.o:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  %.sroa.0845.0 = phi ptr [ %i.ad, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 ], [ %i.ad, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.sroa.43.0 = phi ptr [ %i.af, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 ], [ %i.af, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.sroa.0807.0 = phi ptr [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 ], [ %i.ag, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.sroa.45.0 = phi ptr [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 ], [ %i.ai, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %i.ak = landingpad { ptr, i32 }
          cleanup
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
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit unwind label %bb.ch

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit669 unwind label %bb.cl

bb.t:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699
  %i.aw = ptrtoaddr ptr %i.aj to i64              ; 28 uses
  store double 0.000000e+00, ptr %i.aj, align 8, !tbaa !14
  %i.ax = getelementptr i8, ptr %i.aj, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !14
  br i1 %.not470, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ay = invoke noundef i32 @_Z21pj_opposite_direction12PJ_DIRECTION(i32 noundef %2)
          to label %bb.v unwind label %.thread953.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.az = invoke fastcc noundef i32 @_ZL24target_crs_lon_lat_orderP6pj_ctxP8PJconsts12PJ_DIRECTION(ptr noundef %0, ptr noundef %1, i32 noundef %i.ay)
          to label %bb.w unwind label %.thread953.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.not473 = icmp eq i32 %i.az, -1
  %i.ba = icmp ne i32 %i.az, 0
  br i1 %.not473, label %.loopexit979, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.1426 = phi i1 [ %i.ba, %bb.w ], [ false, %bb.t ] ; 2 uses
  br i1 %i.k, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.bb = invoke fastcc noundef i32 @_ZL24target_crs_lon_lat_orderP6pj_ctxP8PJconsts12PJ_DIRECTION(ptr noundef %0, ptr noundef %1, i32 noundef %2)
          to label %bb.z unwind label %.thread953.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.z:                                             ; preds = %bb.y
  %.not474 = icmp eq i32 %i.bb, -1
  br i1 %.not474, label %.loopexit979, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = icmp ne i32 %i.bb, 0                    ; 3 uses
  %i.bd = invoke fastcc noundef zeroext i1 @_ZL19contains_north_poleP8PJconsts12PJ_DIRECTIONddddb(ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %6, double noundef %7, i1 noundef zeroext %i.bc)
          to label %bb.ab unwind label %.thread953.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.be = invoke fastcc noundef zeroext i1 @_ZL19contains_south_poleP8PJconsts12PJ_DIRECTIONddddb(ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %6, double noundef %7, i1 noundef zeroext %i.bc)
          to label %bb.ac unwind label %.thread953.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.1430 = phi i1 [ false, %bb.x ], [ %i.bd, %bb.ab ]
  %.1428 = phi i1 [ false, %bb.x ], [ %i.be, %bb.ab ]
  %.1424 = phi i1 [ false, %bb.x ], [ %i.bc, %bb.ab ]
  %i.bf = fcmp olt double %6, %3
  %or.cond491 = and i1 %i.bf, %.not470
  br i1 %or.cond491, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br i1 %.1426, label %.thread1138, label %.thread1144.invoke

bb.ae:                                            ; preds = %bb.ac
  %i.bg = fsub double %6, %3
  %i.bh = uitofp nneg i32 %i.o to double
  %i.bi = fdiv double %i.bg, %i.bh                ; 2 uses
  %i.bj = fcmp olt double %7, %4
  %or.cond493 = and i1 %i.bj, %.not470
  br i1 %or.cond493, label %bb.af, label %bb.ah

.thread1138:                                      ; preds = %bb.ad
  %i.bk = fsub double %6, %3
  %i.bl = fadd double %i.bk, 3.600000e+02
  %i.bm = uitofp nneg i32 %i.o to double
  %i.bn = fdiv double %i.bl, %i.bm
  %i.bo = fcmp olt double %7, %4
  %or.cond4931140 = and i1 %i.bo, %.not470
  br i1 %or.cond4931140, label %.thread1144.invoke, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  br i1 %.1426, label %.thread1144.invoke, label %bb.ag

.thread1144.invoke:                               ; preds = %bb.af, %.thread1138, %bb.ad
  invoke void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.5)
          to label %.invoke unwind label %.thread953.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %.thread1144.invoke
  %i.bp = invoke i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027)
          to label %.loopexit979 unwind label %.thread953.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.bq = fsub double %7, %4
  %i.br = fadd double %i.bq, 3.600000e+02
  br label %bb.ai

bb.ah:                                            ; preds = %.thread1138, %bb.ae
  %.04321142 = phi double [ %i.bn, %.thread1138 ], [ %i.bi, %bb.ae ]
  %i.bs = fsub double %7, %4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink = phi double [ %i.bs, %bb.ah ], [ %i.br, %bb.ag ]
  %.04321141 = phi double [ %.04321142, %bb.ah ], [ %i.bi, %bb.ag ] ; 14 uses
  %i.bt = uitofp nneg i32 %i.o to double
  %i.bu = fdiv double %.sink, %i.bt               ; 11 uses
  store double f0x7FEFFFFFFFFFFFFF, ptr %9, align 8, !tbaa !14
  store double f0x7FEFFFFFFFFFFFFF, ptr %10, align 8, !tbaa !14
  store double f0x7FEFFFFFFFFFFFFF, ptr %11, align 8, !tbaa !14
  store double f0xFFEFFFFFFFFFFFFF, ptr %12, align 8, !tbaa !14
  store double f0xFFEFFFFFFFFFFFFF, ptr %13, align 8, !tbaa !14
  store double f0xFFEFFFFFFFFFFFFF, ptr %14, align 8, !tbaa !14
  br i1 %i.z, label %.lr.ph1012.preheader, label %.preheader978

.preheader978:                                    ; preds = %bb.ai
  %i.bv = shl nuw nsw i32 %i.o, 1
  %i.bw = mul nuw nsw i32 %i.o, 3
  %.not = xor i1 %i.k, true
  %or.cond8 = or i1 %.1424, %.not                 ; 2 uses
  %i.bx = icmp samesign ult i32 %15, 2            ; 4 uses
  %i.by = zext nneg i32 %i.o to i64               ; 5 uses
  %i.bz = add nuw nsw i32 %15, 1                  ; 2 uses
  %i.ca = call i32 @llvm.umax.i32(i32 %15, i32 2)
  %wide.trip.count1078 = zext nneg i32 %i.bz to i64 ; 2 uses
  %i.cb = zext nneg i32 %i.bv to i64              ; 3 uses
  %i.cc = zext nneg i32 %i.bw to i64              ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bz to i64   ; 7 uses
  %i.cd = shl nuw nsw i64 %wide.trip.count, 3     ; 20 uses
  %i.ce = add i64 %i.cd, %i.aw
  %i.cf = shl nuw nsw i64 %i.cb, 3                ; 20 uses
  %i.cg = add i64 %i.cf, %i.aw
  %i.ch = shl nuw nsw i64 %i.cc, 3                ; 20 uses
  %i.ci = add i64 %i.ch, %i.aw
  %i.cj = add i64 %i.cd, %i.aw
  %i.ck = add i64 %i.cf, %i.aw
  %i.cl = add i64 %i.ch, %i.aw
  %i.cm = sub i64 %i.cd, %i.aw
  %i.cn = sub i64 %i.cd, %i.aw
  %i.co = sub i64 %i.cf, %i.aw
  %i.cp = sub i64 %i.cf, %i.aw
  %i.cq = sub i64 %i.ch, %i.aw
  %i.cr = sub i64 %i.ch, %i.aw
  %i.cs = add i64 %i.cf, %i.aw
  %i.ct = add i64 %i.ch, %i.aw
  %i.cu = add i64 %i.cf, %i.aw
  %i.cv = add i64 %i.ch, %i.aw
  %i.cw = add i64 %i.cd, %i.aw
  %i.cx = sub i64 %i.cf, %i.cw
  %i.cy = add i64 %i.cd, %i.aw
  %i.cz = sub i64 %i.cf, %i.cy
  %i.da = add i64 %i.cd, %i.aw
  %i.db = sub i64 %i.ch, %i.da
  %i.dc = add i64 %i.cd, %i.aw
  %i.dd = sub i64 %i.ch, %i.dc
  %i.de = add i64 %i.ch, %i.aw
  %i.df = add i64 %i.ch, %i.aw
  %i.dg = add i64 %i.cf, %i.aw
  %i.dh = sub i64 %i.ch, %i.dg
  %i.di = add i64 %i.cf, %i.aw
  %i.dj = sub i64 %i.ch, %i.di
  %i.dk = add nsw i64 %i.ab, -1                   ; 25 uses
  %i.dl = add nsw i64 %i.ab, -2                   ; 10 uses
  %i.dm = zext nneg i32 %15 to i64
  %min.iters.check1291 = icmp ult i32 %15, 25
  %i.dn = sub nsw i64 %i.cd, %i.cf
  %diff.check1248 = icmp ugt i64 %i.dn, -16
  %invariant.op = sub i64 %i.cd, %i.cs
  %i.do = sub nsw i64 %i.cd, %i.ch
  %diff.check1254 = icmp ugt i64 %i.do, -16
  %invariant.op1791 = sub i64 %i.cd, %i.ct
  %invariant.op1793 = add i64 %i.db, -1
  %invariant.op1795 = add i64 %i.dd, -1
  %invariant.op1797 = add i64 %i.cm, -1
  %invariant.op1799 = add i64 %i.cn, -1
  %invariant.op1801 = add i64 %i.co, -1
  %invariant.op1803 = add i64 %i.cp, -1
  %invariant.op1805 = add i64 %i.cq, -1
  %invariant.op1807 = add i64 %i.cr, -1
  %invariant.op1809 = sub i64 %i.cd, %i.cu
  %invariant.op1811 = sub i64 %i.cd, %i.cv
  %invariant.op1813 = add i64 %i.cx, -1
  %invariant.op1815 = add i64 %i.cz, -1
  %i.dp = sub nsw i64 %i.cf, %i.ch
  %diff.check1276 = icmp ugt i64 %i.dp, -16
  %invariant.op1817 = sub i64 %i.cf, %i.de
  %invariant.op1819 = sub i64 %i.cf, %i.df
  %i.dq = insertelement <8 x i1> poison, i1 %diff.check1276, i64 3
  %invariant.op1821 = add i64 %i.dh, -1
  %invariant.op1823 = add i64 %i.dj, -1
  %n.vec1293 = and i64 %wide.trip.count, 32766    ; 3 uses
  %broadcast.splatinsert1296 = insertelement <2 x double> poison, double %i.bu, i64 0
  %broadcast.splat1297 = shufflevector <2 x double> %broadcast.splatinsert1296, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1298 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1299 = shufflevector <2 x double> %broadcast.splatinsert1298, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1300 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1301 = shufflevector <2 x double> %broadcast.splatinsert1300, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1302 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1303 = shufflevector <2 x double> %broadcast.splatinsert1302, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1304 = insertelement <2 x double> poison, double %.04321141, i64 0
  %broadcast.splat1305 = shufflevector <2 x double> %broadcast.splatinsert1304, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1306 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1307 = shufflevector <2 x double> %broadcast.splatinsert1306, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1314.a = icmp eq i64 %n.vec1293, %wide.trip.count
  %i.dr = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %.04321141, i64 1 ; 2 uses
  %i.dt = insertelement <2 x double> poison, double %7, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %3, i64 1
  %i.dv = insertelement <2 x double> poison, double %4, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %6, i64 1
  %xtraiter = and i64 %i.dk, 3                    ; 3 uses
  %i.dx = icmp ult i64 %i.dl, 3
  %unroll_iter = and i64 %i.dk, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1641 = icmp ne i64 %xtraiter, 0
  %xtraiter1643 = and i64 %i.dk, 1
  %i.dy = icmp eq i64 %i.dl, 0
  %unroll_iter1648 = and i64 %i.dk, -2
  %lcmp.mod1645.not = icmp eq i64 %xtraiter1643, 0
  %lcmp.mod1647 = trunc i64 %i.dk to i1
  %xtraiter1651 = and i64 %i.dk, 3                ; 3 uses
  %i.dz = icmp ult i64 %i.dl, 3
  %unroll_iter1656 = and i64 %i.dk, -4
  %lcmp.mod1653.not = icmp eq i64 %xtraiter1651, 0
  %lcmp.mod1655 = icmp ne i64 %xtraiter1651, 0
  %xtraiter1659 = and i64 %i.dk, 1
  %i.ea = icmp eq i64 %i.dl, 0
  %unroll_iter1664 = and i64 %i.dk, -2
  %lcmp.mod1661.not = icmp eq i64 %xtraiter1659, 0
  %lcmp.mod1663 = trunc i64 %i.dk to i1
  %xtraiter1667 = and i64 %i.dk, 3                ; 3 uses
  %i.eb = icmp ult i64 %i.dl, 3
  %unroll_iter1672 = and i64 %i.dk, -4
  %lcmp.mod1669.not = icmp eq i64 %xtraiter1667, 0
  %lcmp.mod1671 = icmp ne i64 %xtraiter1667, 0
  %xtraiter1675 = and i64 %i.dk, 1
  %i.ec = icmp eq i64 %i.dl, 0
  %unroll_iter1680 = and i64 %i.dk, -2
  %lcmp.mod1677.not = icmp eq i64 %xtraiter1675, 0
  %lcmp.mod1679 = trunc i64 %i.dk to i1
  %xtraiter1684 = and i64 %i.dk, 1
  %i.ed = icmp eq i64 %i.dl, 0
  %unroll_iter1689 = and i64 %i.dk, -2
  %lcmp.mod1686.not = icmp eq i64 %xtraiter1684, 0
  %lcmp.mod1688 = trunc i64 %i.dk to i1
  %xtraiter1693 = and i64 %i.dk, 3                ; 3 uses
  %i.ee = icmp ult i64 %i.dl, 3
  %unroll_iter1698 = and i64 %i.dk, -4
  %lcmp.mod1695.not = icmp eq i64 %xtraiter1693, 0
  %lcmp.mod1697 = icmp ne i64 %xtraiter1693, 0
  %xtraiter1702 = and i64 %i.dk, 3                ; 3 uses
  %i.ef = icmp ult i64 %i.dl, 3
  %unroll_iter1707 = and i64 %i.dk, -4
  %lcmp.mod1704.not = icmp eq i64 %xtraiter1702, 0
  %lcmp.mod1706 = icmp ne i64 %xtraiter1702, 0
  %xtraiter1710 = and i64 %i.dk, 1
  %i.eg = icmp eq i64 %i.dl, 0
  %unroll_iter1715 = and i64 %i.dk, -2
  %lcmp.mod1712.not = icmp eq i64 %xtraiter1710, 0
  %lcmp.mod1714 = trunc i64 %i.dk to i1
  %min.iters.check = icmp ult i32 %15, 3
  %n.vec = and i64 %wide.trip.count, 32764        ; 3 uses
  %broadcast.splatinsert1192 = insertelement <2 x double> poison, double %.04321141, i64 0
  %broadcast.splat1193 = shufflevector <2 x double> %broadcast.splatinsert1192, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1194 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1195 = shufflevector <2 x double> %broadcast.splatinsert1194, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter1717 = and i64 %wide.trip.count, 1
  %lcmp.mod1718.not.a = icmp eq i64 %xtraiter1717, 0
  br label %.lr.ph.preheader

.lr.ph1035.preheader:                             ; preds = %.lr.ph1026.1, %middle.block1487
  %indvars.iv.next1103.1.lcssa = phi i64 [ %i.jt, %middle.block1487 ], [ %indvars.iv.next1103.1, %.lr.ph1026.1 ] ; 3 uses
  %i.eh = fsub double %8, %5
  %i.ei = uitofp nneg i32 %i.o to double
  %i.ej = fdiv double %i.eh, %i.ei                ; 8 uses
  %min.iters.check1492 = icmp ult i32 %15, 3
  br i1 %min.iters.check1492, label %.lr.ph1035.preheader1609, label %vector.ph1493

vector.ph1493:                                    ; preds = %.lr.ph1035.preheader
  %n.vec1494 = and i64 %i.fn, 32764               ; 4 uses
  %i.ek = add i64 %indvars.iv.next1103.1.lcssa, %n.vec1494 ; 2 uses
  %i.el = trunc nuw nsw i64 %n.vec1494 to i32
  %broadcast.splatinsert1495 = insertelement <2 x double> poison, double %i.ej, i64 0
  %broadcast.splat1496 = shufflevector <2 x double> %broadcast.splatinsert1495, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1497 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1498 = shufflevector <2 x double> %broadcast.splatinsert1497, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1499 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1500 = shufflevector <2 x double> %broadcast.splatinsert1499, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1501 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1502 = shufflevector <2 x double> %broadcast.splatinsert1501, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1503

vector.body1503:                                  ; preds = %vector.body1503, %vector.ph1493
  %index1504 = phi i64 [ 0, %vector.ph1493 ], [ %index.next1507, %vector.body1503 ] ; 2 uses
  %vec.ind1505 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1493 ], [ %vec.ind.next1508, %vector.body1503 ] ; 3 uses
  %step.add1506 = add nuw <2 x i32> %vec.ind1505, splat (i32 2)
  %i.em = add i64 %indvars.iv.next1103.1.lcssa, %index1504 ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <2 x double> %broadcast.splat1498, ptr %i.en, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1498, ptr %i.eo, align 8, !tbaa !14
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.em ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <2 x double> %broadcast.splat1500, ptr %i.ep, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1500, ptr %i.eq, align 8, !tbaa !14
  %i.er = uitofp nneg <2 x i32> %vec.ind1505 to <2 x double>
  %i.es = uitofp nneg <2 x i32> %step.add1506 to <2 x double>
  %i.et = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %broadcast.splat1496, <2 x double> %broadcast.splat1502)
  %i.eu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %broadcast.splat1496, <2 x double> %broadcast.splat1502)
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.em ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <2 x double> %i.et, ptr %i.ev, align 8, !tbaa !14
  store <2 x double> %i.eu, ptr %i.ew, align 8, !tbaa !14
  %index.next1507 = add nuw i64 %index1504, 4     ; 2 uses
  %vec.ind.next1508 = add nuw <2 x i32> %vec.ind1505, splat (i32 4)
  %i.ex = icmp eq i64 %index.next1507, %n.vec1494
  br i1 %i.ex, label %middle.block1509, label %vector.body1503, !llvm.loop !44

middle.block1509:                                 ; preds = %vector.body1503
  %cmp.n1510 = icmp eq i64 %n.vec1494, %i.fn
  br i1 %cmp.n1510, label %.lr.ph1040.preheader, label %.lr.ph1035.preheader1609

.lr.ph1035.preheader1609:                         ; preds = %.lr.ph1035.preheader, %middle.block1509
  %indvars.iv1110.ph = phi i64 [ %indvars.iv.next1103.1.lcssa, %.lr.ph1035.preheader ], [ %i.ek, %middle.block1509 ]
end_hunk_0
begin_hunk_1_@proj_trans_bounds_3D:bb.a
  %niter1708.next.3 = add nuw i64 %niter1708, 4   ; 2 uses
  %niter1708.ncmp.3 = icmp eq i64 %niter1708.next.3, %unroll_iter1707
  br i1 %niter1708.ncmp.3, label %_ZL10simple_minPKdi.exit646.unr-lcssa, label %.new1700, !llvm.loop !0

_ZL10simple_minPKdi.exit646.unr-lcssa:            ; preds = %.new1700
  br i1 %lcmp.mod1704.not, label %_ZL10simple_minPKdi.exit646, label %.epil.preheader1701

.epil.preheader1701:                              ; preds = %_ZL10simple_minPKdi.exit646.unr-lcssa, %bb.by
  %indvars.iv.i641.epil.init = phi i64 [ 1, %bb.by ], [ %indvars.iv.next.i644.3, %_ZL10simple_minPKdi.exit646.unr-lcssa ]
  %.0911.i642.epil.init = phi double [ %i.aga, %bb.by ], [ %.1.i643.3, %_ZL10simple_minPKdi.exit646.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1706)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.epil.preheader1701
  %indvars.iv.i641.epil = phi i64 [ %indvars.iv.i641.epil.init, %.epil.preheader1701 ], [ %indvars.iv.next.i644.epil, %bb.bz ] ; 2 uses
  %.0911.i642.epil = phi double [ %.0911.i642.epil.init, %.epil.preheader1701 ], [ %.1.i643.epil, %bb.bz ] ; 2 uses
  %epil.iter1703 = phi i64 [ 0, %.epil.preheader1701 ], [ %epil.iter1703.next, %bb.bz ]
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i641.epil
  %i.agr = load double, ptr %i.agq, align 8, !tbaa !14 ; 2 uses
  %i.ags = fcmp olt double %i.agr, %.0911.i642.epil
  %.1.i643.epil = select i1 %i.ags, double %i.agr, double %.0911.i642.epil ; 2 uses
  %indvars.iv.next.i644.epil = add nuw nsw i64 %indvars.iv.i641.epil, 1
  %epil.iter1703.next = add i64 %epil.iter1703, 1 ; 2 uses
  %epil.iter1703.cmp.not = icmp eq i64 %epil.iter1703.next, %xtraiter1702
  br i1 %epil.iter1703.cmp.not, label %_ZL10simple_minPKdi.exit646, label %bb.bz, !llvm.loop !77

_ZL10simple_minPKdi.exit646:                      ; preds = %bb.bz, %_ZL10simple_minPKdi.exit646.unr-lcssa
  %.1.i643.lcssa = phi double [ %.1.i643.3, %_ZL10simple_minPKdi.exit646.unr-lcssa ], [ %.1.i643.epil, %bb.bz ] ; 2 uses
  %i.agt = load double, ptr %11, align 8, !tbaa !14 ; 2 uses
  %i.agu = fcmp olt double %.1.i643.lcssa, %i.agt
  %.sroa.speculated711 = select i1 %i.agu, double %.1.i643.lcssa, double %i.agt
  store double %.sroa.speculated711, ptr %11, align 8, !tbaa !14
  br i1 %i.eg, label %.epil.preheader1709, label %_ZL10simple_minPKdi.exit646.new

_ZL10simple_minPKdi.exit646.new:                  ; preds = %_ZL10simple_minPKdi.exit646, %_ZL10simple_minPKdi.exit646.new
  %indvars.iv.i649 = phi i64 [ %indvars.iv.next.i654.1, %_ZL10simple_minPKdi.exit646.new ], [ 1, %_ZL10simple_minPKdi.exit646 ] ; 3 uses
  %.01316.i650 = phi double [ %.1.i653.1, %_ZL10simple_minPKdi.exit646.new ], [ %i.aga, %_ZL10simple_minPKdi.exit646 ] ; 3 uses
  %niter1716 = phi i64 [ %niter1716.next.1, %_ZL10simple_minPKdi.exit646.new ], [ 0, %_ZL10simple_minPKdi.exit646 ]
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i649
  %i.agw = load double, ptr %i.agv, align 8, !tbaa !14 ; 3 uses
  %i.agx = fcmp ogt double %i.agw, %.01316.i650
  %i.agy = fcmp oeq double %.01316.i650, +inf
  %or.cond.i651 = or i1 %i.agy, %i.agx
  %i.agz = fcmp une double %i.agw, +inf
  %or.cond15.i652 = and i1 %i.agz, %or.cond.i651
  %.1.i653 = select i1 %or.cond15.i652, double %i.agw, double %.01316.i650 ; 3 uses
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i649
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  %i.ahc = load double, ptr %i.ahb, align 8, !tbaa !14 ; 3 uses
  %i.ahd = fcmp ogt double %i.ahc, %.1.i653
  %i.ahe = fcmp oeq double %.1.i653, +inf
  %or.cond.i651.1 = or i1 %i.ahe, %i.ahd
  %i.ahf = fcmp une double %i.ahc, +inf
  %or.cond15.i652.1 = and i1 %i.ahf, %or.cond.i651.1
  %.1.i653.1 = select i1 %or.cond15.i652.1, double %i.ahc, double %.1.i653 ; 3 uses
  %indvars.iv.next.i654.1 = add nuw nsw i64 %indvars.iv.i649, 2 ; 2 uses
  %niter1716.next.1 = add nuw i64 %niter1716, 2   ; 2 uses
  %niter1716.ncmp.1 = icmp eq i64 %niter1716.next.1, %unroll_iter1715
  br i1 %niter1716.ncmp.1, label %_ZL10simple_maxPKdi.exit656.unr-lcssa, label %_ZL10simple_minPKdi.exit646.new, !llvm.loop !1

_ZL10simple_maxPKdi.exit656.unr-lcssa:            ; preds = %_ZL10simple_minPKdi.exit646.new
  br i1 %lcmp.mod1712.not, label %_ZL10simple_maxPKdi.exit656, label %.epil.preheader1709

.epil.preheader1709:                              ; preds = %_ZL10simple_maxPKdi.exit656.unr-lcssa, %_ZL10simple_minPKdi.exit646
  %indvars.iv.i649.epil.init = phi i64 [ 1, %_ZL10simple_minPKdi.exit646 ], [ %indvars.iv.next.i654.1, %_ZL10simple_maxPKdi.exit656.unr-lcssa ]
  %.01316.i650.epil.init = phi double [ %i.aga, %_ZL10simple_minPKdi.exit646 ], [ %.1.i653.1, %_ZL10simple_maxPKdi.exit656.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1714)
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i649.epil.init
  %i.ahh = load double, ptr %i.ahg, align 8, !tbaa !14 ; 3 uses
  %i.ahi = fcmp ogt double %i.ahh, %.01316.i650.epil.init
  %i.ahj = fcmp oeq double %.01316.i650.epil.init, +inf
  %or.cond.i651.epil = or i1 %i.ahj, %i.ahi
  %i.ahk = fcmp une double %i.ahh, +inf
  %or.cond15.i652.epil = and i1 %i.ahk, %or.cond.i651.epil
  %.1.i653.epil = select i1 %or.cond15.i652.epil, double %i.ahh, double %.01316.i650.epil.init
  br label %_ZL10simple_maxPKdi.exit656

_ZL10simple_maxPKdi.exit656:                      ; preds = %_ZL10simple_maxPKdi.exit656.unr-lcssa, %.epil.preheader1709
  %.1.i653.lcssa = phi double [ %.1.i653.1, %_ZL10simple_maxPKdi.exit656.unr-lcssa ], [ %.1.i653.epil, %.epil.preheader1709 ] ; 2 uses
  %i.ahl = load double, ptr %14, align 8, !tbaa !14 ; 2 uses
  %i.ahm = fcmp olt double %i.ahl, %.1.i653.lcssa
  %.sroa.speculated = select i1 %i.ahm, double %.1.i653.lcssa, double %i.ahl
  store double %.sroa.speculated, ptr %14, align 8, !tbaa !14
  br i1 %or.cond8, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZL10simple_maxPKdi.exit656
  %i.ahn = load double, ptr %9, align 8, !tbaa !14
  %i.aho = load double, ptr %10, align 8, !tbaa !14
  store double %i.aho, ptr %9, align 8, !tbaa !14
  store double %i.ahn, ptr %10, align 8, !tbaa !14
  %i.ahp = load double, ptr %12, align 8, !tbaa !14
  %i.ahq = load double, ptr %13, align 8, !tbaa !14
  store double %i.ahq, ptr %12, align 8, !tbaa !14
  store double %i.ahp, ptr %13, align 8, !tbaa !14
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_ZL10simple_maxPKdi.exit656
  br i1 %.0410, label %.loopexit, label %.preheader975.preheader

.preheader975.preheader:                          ; preds = %bb.cb
  %i.ahr = sub i64 %.sroa.0845.28901188, %.sroa.0807.28971187
  %diff.check = icmp ugt i64 %i.ahr, -32
  %i.ahs = sub i64 %.sroa.0845.28901188, %i.aw
  %diff.check1189 = icmp ugt i64 %i.ahs, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1189
  %i.aht = sub i64 %.sroa.0807.28971187, %i.aw
  %diff.check1190 = icmp ugt i64 %i.aht, -32
  %conflict.rdx1191 = or i1 %conflict.rdx, %diff.check1190
  %broadcast.splatinsert1196 = insertelement <2 x double> poison, double %i.sy, i64 0
  %broadcast.splat1197 = shufflevector <2 x double> %broadcast.splatinsert1196, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader975

.preheader975:                                    ; preds = %.preheader975.preheader, %._crit_edge1001
  %.04091002 = phi i32 [ %i.ajb, %._crit_edge1001 ], [ 1, %.preheader975.preheader ] ; 2 uses
  %i.ahu = uitofp nneg i32 %.04091002 to double
  %i.ahv = call double @llvm.fmuladd.f64(double %i.ahu, double %i.bu, double %4) ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx1191
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader975
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ahv, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ahw = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.ahx = uitofp nneg <2 x i32> %step.add to <2 x double>
  %i.ahy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahw, <2 x double> %broadcast.splat1193, <2 x double> %broadcast.splat1195)
  %i.ahz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahx, <2 x double> %broadcast.splat1193, <2 x double> %broadcast.splat1195)
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %index ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 16
  store <2 x double> %i.ahy, ptr %i.aia, align 8, !tbaa !14
  store <2 x double> %i.ahz, ptr %i.aib, align 8, !tbaa !14
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %index ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 16
  store <2 x double> %broadcast.splat, ptr %i.aic, align 8, !tbaa !14
  store <2 x double> %broadcast.splat, ptr %i.aid, align 8, !tbaa !14
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 16
  store <2 x double> %broadcast.splat1197, ptr %i.aie, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1197, ptr %i.aif, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.aig = icmp eq i64 %index.next, %n.vec
  br i1 %i.aig, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge997, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader975, %middle.block
  %indvars.iv1074.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader975 ] ; 7 uses
  br i1 %lcmp.mod1718.not.a, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aih = trunc nuw nsw i64 %indvars.iv1074.ph to i32
  %i.aii = uitofp nneg i32 %i.aih to double
  %i.aij = call double @llvm.fmuladd.f64(double %i.aii, double %.04321141, double %3)
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv1074.ph
  store double %i.aij, ptr %i.aik, align 8, !tbaa !14
  %i.ail = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv1074.ph
  store double %i.ahv, ptr %i.ail, align 8, !tbaa !14
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1074.ph
  store double %i.sy, ptr %i.aim, align 8, !tbaa !14
  %indvars.iv.next1075.prol = or disjoint i64 %indvars.iv1074.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1074.unr = phi i64 [ %indvars.iv1074.ph, %scalar.ph.preheader ], [ %indvars.iv.next1075.prol, %scalar.ph.prol ]
  %i.ain = icmp eq i64 %indvars.iv1074.ph, %i.dm
  br i1 %i.ain, label %._crit_edge997, label %scalar.ph

._crit_edge997:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aio = invoke i64 @proj_trans_generic(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %.sroa.0845.2890, i64 noundef 8, i64 noundef %i.by, ptr noundef nonnull %.sroa.0807.2897, i64 noundef 8, i64 noundef %i.by, ptr noundef nonnull %i.aj, i64 noundef 8, i64 noundef %i.by, ptr noundef null, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph1000 unwind label %.thread953.loopexit ; 0 uses

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075.1, %scalar.ph ], [ %indvars.iv1074.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aip = trunc nuw nsw i64 %indvars.iv1074 to i32
  %i.aiq = uitofp nneg i32 %i.aip to double
  %i.air = call double @llvm.fmuladd.f64(double %i.aiq, double %.04321141, double %3)
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv1074
  store double %i.air, ptr %i.ais, align 8, !tbaa !14
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv1074
  store double %i.ahv, ptr %i.ait, align 8, !tbaa !14
  %i.aiu = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1074
  store double %i.sy, ptr %i.aiu, align 8, !tbaa !14
  %indvars.iv.next1075 = add nuw nsw i64 %indvars.iv1074, 1 ; 4 uses
  %i.aiv = trunc nuw nsw i64 %indvars.iv.next1075 to i32
  %i.aiw = uitofp nneg i32 %i.aiv to double
  %i.aix = call double @llvm.fmuladd.f64(double %i.aiw, double %.04321141, double %3)
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv.next1075
  store double %i.aix, ptr %i.aiy, align 8, !tbaa !14
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv.next1075
  store double %i.ahv, ptr %i.aiz, align 8, !tbaa !14
  %i.aja = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next1075
  store double %i.sy, ptr %i.aja, align 8, !tbaa !14
  %indvars.iv.next1075.1 = add nuw nsw i64 %indvars.iv1074, 2 ; 2 uses
  %exitcond1079.not.1 = icmp eq i64 %indvars.iv.next1075.1, %wide.trip.count1078
  br i1 %exitcond1079.not.1, label %._crit_edge997, label %scalar.ph, !llvm.loop !79

._crit_edge1001:                                  ; preds = %bb.ce
  %i.ajb = add nuw nsw i32 %.04091002, 1          ; 2 uses
  %exitcond1086.not = icmp eq i32 %i.ajb, %i.ca
  br i1 %exitcond1086.not, label %.loopexit, label %.preheader975, !llvm.loop !80

.lr.ph1000:                                       ; preds = %._crit_edge997, %bb.ce
  %indvars.iv1080 = phi i64 [ %indvars.iv.next1081, %bb.ce ], [ 0, %._crit_edge997 ] ; 4 uses
  %i.ajc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv1080 ; 2 uses
  %i.ajd = load double, ptr %i.ajc, align 8, !tbaa !14 ; 3 uses
  %i.aje = call double @llvm.fabs.f64(double %i.ajd)
  %i.ajf = fcmp ueq double %i.aje, +inf
  br i1 %i.ajf, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph1000
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv1080 ; 3 uses
  %i.ajh = load double, ptr %i.ajg, align 8, !tbaa !14
  %i.aji = call double @llvm.fabs.f64(double %i.ajh)
  %i.ajj = fcmp ueq double %i.aji, +inf
  br i1 %i.ajj, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ajk = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.ajl = fcmp olt double %i.ajd, %i.ajk
  %i.ajm = select i1 %i.ajl, double %i.ajd, double %i.ajk
  store double %i.ajm, ptr %9, align 8, !tbaa !14
  %i.ajn = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.ajo = load double, ptr %i.ajc, align 8, !tbaa !14 ; 2 uses
  %i.ajp = fcmp olt double %i.ajn, %i.ajo
  %i.ajq = select i1 %i.ajp, double %i.ajo, double %i.ajn
  store double %i.ajq, ptr %12, align 8, !tbaa !14
  %i.ajr = load double, ptr %i.ajg, align 8, !tbaa !14 ; 2 uses
  %i.ajs = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.ajt = fcmp olt double %i.ajr, %i.ajs
  %i.aju = select i1 %i.ajt, double %i.ajr, double %i.ajs
  store double %i.aju, ptr %10, align 8, !tbaa !14
  %i.ajv = load double, ptr %13, align 8, !tbaa !14 ; 2 uses
  %i.ajw = load double, ptr %i.ajg, align 8, !tbaa !14 ; 2 uses
  %i.ajx = fcmp olt double %i.ajv, %i.ajw
  %i.ajy = select i1 %i.ajx, double %i.ajw, double %i.ajv
  store double %i.ajy, ptr %13, align 8, !tbaa !14
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1080
  %i.aka = load double, ptr %i.ajz, align 8, !tbaa !14 ; 4 uses
  %i.akb = load double, ptr %11, align 8, !tbaa !14 ; 2 uses
  %i.akc = fcmp olt double %i.aka, %i.akb
  %i.akd = select i1 %i.akc, double %i.aka, double %i.akb
  store double %i.akd, ptr %11, align 8, !tbaa !14
  %i.ake = load double, ptr %14, align 8, !tbaa !14 ; 2 uses
  %i.akf = fcmp olt double %i.ake, %i.aka
  %i.akg = select i1 %i.akf, double %i.aka, double %i.ake
  store double %i.akg, ptr %14, align 8, !tbaa !14
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph1000, %bb.cc, %bb.cd
  %indvars.iv.next1081 = add nuw nsw i64 %indvars.iv1080, 1 ; 2 uses
  %exitcond1084.not = icmp eq i64 %indvars.iv.next1081, %wide.trip.count1078
  br i1 %exitcond1084.not, label %._crit_edge1001, label %.lr.ph1000, !llvm.loop !81

.loopexit:                                        ; preds = %._crit_edge1001, %bb.cb
  br i1 %i.sx, label %.lr.ph.preheader, label %.loopexit979, !llvm.loop !82

.loopexit979:                                     ; preds = %.loopexit, %.invoke, %bb.z, %_ZL10simple_maxPKdi.exit542, %bb.w
  %.sroa.0845.4.ph = phi ptr [ %i.ad, %bb.w ], [ %i.ad, %.invoke ], [ %i.ad, %bb.z ], [ %i.ad, %_ZL10simple_maxPKdi.exit542 ], [ %.sroa.0845.2890, %.loopexit ]
  %.sroa.43.4.ph = phi ptr [ %i.af, %bb.w ], [ %i.af, %.invoke ], [ %i.af, %bb.z ], [ %i.af, %_ZL10simple_maxPKdi.exit542 ], [ %.sroa.43.2894, %.loopexit ]
  %.sroa.0807.4.ph = phi ptr [ %i.ag, %bb.w ], [ %i.ag, %.invoke ], [ %i.ag, %bb.z ], [ %i.ag, %_ZL10simple_maxPKdi.exit542 ], [ %.sroa.0807.2897, %.loopexit ]
  %.sroa.45.4.ph = phi ptr [ %i.ai, %bb.w ], [ %i.ai, %.invoke ], [ %i.ai, %bb.z ], [ %i.ai, %_ZL10simple_maxPKdi.exit542 ], [ %.sroa.45.2900, %.loopexit ]
  %.4449.ph = phi i32 [ 0, %bb.w ], [ 0, %.invoke ], [ 0, %bb.z ], [ 1, %_ZL10simple_maxPKdi.exit542 ], [ 1, %.loopexit ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ac) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.r, %.loopexit979
  %.4449921 = phi i32 [ %.4449.ph, %.loopexit979 ], [ 0, %bb.r ] ; 2 uses
  %.sroa.45.4917 = phi ptr [ %.sroa.45.4.ph, %.loopexit979 ], [ %.sroa.45.0, %bb.r ]
  %.sroa.0807.4915 = phi ptr [ %.sroa.0807.4.ph, %.loopexit979 ], [ %.sroa.0807.0, %bb.r ] ; 3 uses
  %.sroa.43.4913 = phi ptr [ %.sroa.43.4.ph, %.loopexit979 ], [ %.sroa.43.0, %bb.r ]
  %.sroa.0845.4911 = phi ptr [ %.sroa.0845.4.ph, %.loopexit979 ], [ %.sroa.0845.0, %bb.r ] ; 3 uses
  %.not.i.i.i664 = icmp eq ptr %.sroa.0807.4915, null
  br i1 %.not.i.i.i664, label %_ZNSt6vectorIdSaIdEED2Ev.exit665, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.akh = ptrtoint ptr %.sroa.45.4917 to i64
  %i.aki = ptrtoint ptr %.sroa.0807.4915 to i64
  %i.akj = sub i64 %i.akh, %i.aki
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0807.4915, i64 noundef %i.akj) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit665

_ZNSt6vectorIdSaIdEED2Ev.exit665:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.cf
  %.not.i.i.i666 = icmp eq ptr %.sroa.0845.4911, null
  br i1 %.not.i.i.i666, label %_ZNSt6vectorIdSaIdEED2Ev.exit667, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit665
  %i.akk = ptrtoint ptr %.sroa.43.4913 to i64
  %i.akl = ptrtoint ptr %.sroa.0845.4911 to i64
  %i.akm = sub i64 %i.akk, %i.akl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0845.4911, i64 noundef %i.akm) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit667

.thread953.loopexit:                              ; preds = %._crit_edge997
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread

.thread953.loopexit.split-lp.loopexit:            ; preds = %._crit_edge
  %lpad.loopexit980 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread

.thread953.loopexit.split-lp.loopexit.split-lp:   ; preds = %.thread1144.invoke, %.invoke, %._crit_edge1051, %bb.ab, %bb.aa, %bb.y, %bb.v, %bb.u
  %lpad.loopexit.split-lp981 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread

_ZNSt6vectorIdSaIdEED2Ev.exit669.thread:          ; preds = %.thread953.loopexit, %.thread953.loopexit.split-lp.loopexit.split-lp, %.thread953.loopexit.split-lp.loopexit
  %.sroa.0845.3.ph = phi ptr [ %.sroa.0845.2890, %.thread953.loopexit ], [ %.sroa.0845.11003, %.thread953.loopexit.split-lp.loopexit ], [ %i.ad, %.thread953.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.43.3.ph = phi ptr [ %.sroa.43.2894, %.thread953.loopexit ], [ %.sroa.43.11004, %.thread953.loopexit.split-lp.loopexit ], [ %i.af, %.thread953.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0807.3.ph = phi ptr [ %.sroa.0807.2897, %.thread953.loopexit ], [ %.sroa.0807.11005, %.thread953.loopexit.split-lp.loopexit ], [ %i.ag, %.thread953.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.45.3.ph = phi ptr [ %.sroa.45.2900, %.thread953.loopexit ], [ %.sroa.45.11006, %.thread953.loopexit.split-lp.loopexit ], [ %i.ai, %.thread953.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread953.loopexit ], [ %lpad.loopexit980, %.thread953.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp981, %.thread953.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ac) #19
  br label %bb.ci

bb.ch:                                            ; preds = %bb.r
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669

_ZNSt6vectorIdSaIdEED2Ev.exit669:                 ; preds = %bb.o, %bb.s, %bb.ch
  %.merged935 = phi { ptr, i32 } [ %i.av, %bb.s ], [ %lpad.thr_comm.split-lp, %bb.ch ], [ %i.ak, %bb.o ] ; 2 uses
  %.not.i.i.i670 = icmp eq ptr %.sroa.0807.0, null
  br i1 %.not.i.i.i670, label %_ZNSt6vectorIdSaIdEED2Ev.exit671, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit669
  %.sroa.0845.59311158 = phi ptr [ %.sroa.0845.3.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread ], [ %.sroa.0845.0, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ]
  %.sroa.43.59321156 = phi ptr [ %.sroa.43.3.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread ], [ %.sroa.43.0, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ]
  %.sroa.0807.59331155 = phi ptr [ %.sroa.0807.3.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread ], [ %.sroa.0807.0, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ] ; 2 uses
  %.sroa.45.59341154 = phi ptr [ %.sroa.45.3.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread ], [ %.sroa.45.0, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ]
  %.merged9351152 = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread ], [ %.merged935, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ]
  %i.akn = ptrtoint ptr %.sroa.45.59341154 to i64
  %i.ako = ptrtoint ptr %.sroa.0807.59331155 to i64
  %i.akp = sub i64 %i.akn, %i.ako
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0807.59331155, i64 noundef %i.akp) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit671

_ZNSt6vectorIdSaIdEED2Ev.exit671:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit669, %bb.ci
  %.sroa.0845.59311159 = phi ptr [ %.sroa.0845.0, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ], [ %.sroa.0845.59311158, %bb.ci ] ; 3 uses
  %.sroa.43.59321157 = phi ptr [ %.sroa.43.0, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ], [ %.sroa.43.59321156, %bb.ci ]
  %.merged9351153 = phi { ptr, i32 } [ %.merged935, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ], [ %.merged9351152, %bb.ci ]
  %.not.i.i.i672 = icmp eq ptr %.sroa.0845.59311159, null
  br i1 %.not.i.i.i672, label %_ZNSt6vectorIdSaIdEED2Ev.exit673, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit671
  %i.akq = ptrtoint ptr %.sroa.43.59321157 to i64
  %i.akr = ptrtoint ptr %.sroa.0845.59311159 to i64
  %i.aks = sub i64 %i.akq, %i.akr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0845.59311159, i64 noundef %i.aks) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit673

_ZNSt6vectorIdSaIdEED2Ev.exit673:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit671, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  resume { ptr, i32 } %.merged9351153

_ZNSt6vectorIdSaIdEED2Ev.exit667:                 ; preds = %bb.cg, %_ZNSt6vectorIdSaIdEED2Ev.exit665, %bb.j, %bb.h, %bb.f
  %.6451 = phi i32 [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.j ], [ %.4449921, %_ZNSt6vectorIdSaIdEED2Ev.exit665 ], [ %.4449921, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit667, %bb.d, %bb.b
  %.7452 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %.6451, %_ZNSt6vectorIdSaIdEED2Ev.exit667 ]
  ret i32 %.7452

bb.cl:                                            ; preds = %bb.s
  %i.akt = landingpad { ptr, i32 }
          catch ptr null
  %i.aku = extractvalue { ptr, i32 } %i.akt, 0
  call void @__clang_call_terminate(ptr %i.aku) #20
  unreachable
}

declare ptr @proj_destroy(ptr noundef) local_unnamed_addr #1

declare ptr @proj_as_proj_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5osgeo4proj8internal9ends_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare void @_Z22proj_context_log_debugP6pj_ctxPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @proj_get_type(ptr noundef) local_unnamed_addr #1

declare ptr @proj_crs_get_sub_crs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @proj_crs_get_coordinate_system(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @proj_cs_get_axis_info(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @proj_get_target_crs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @proj_get_source_crs(ptr noundef, ptr noundef) local_unnamed_addr #1

end_hunk_1
