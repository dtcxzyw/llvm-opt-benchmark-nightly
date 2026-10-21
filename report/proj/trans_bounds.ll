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
  %17 = add nuw nsw i32 %15, 1                    ; 2 uses
  %18 = call i32 @llvm.umax.i32(i32 %15, i32 2)
  %wide.trip.count1078 = zext nneg i32 %17 to i64 ; 2 uses
  %19 = zext nneg i32 %i.bv to i64                ; 3 uses
  %i.bz = zext nneg i32 %i.bw to i64              ; 3 uses
  %wide.trip.count = zext nneg i32 %17 to i64     ; 7 uses
  %i.ca = shl nuw nsw i64 %wide.trip.count, 3     ; 20 uses
  %i.cb = add i64 %i.ca, %i.aw
  %i.cc = shl nuw nsw i64 %19, 3                  ; 20 uses
  %i.cd = add i64 %i.cc, %i.aw
  %i.ce = shl nuw nsw i64 %i.bz, 3                ; 20 uses
  %i.cf = add i64 %i.ce, %i.aw
  %i.cg = add i64 %i.ca, %i.aw
  %i.ch = add i64 %i.cc, %i.aw
  %i.ci = add i64 %i.ce, %i.aw
  %i.cj = sub i64 %i.ca, %i.aw
  %i.ck = sub i64 %i.ca, %i.aw
  %i.cl = sub i64 %i.cc, %i.aw
  %i.cm = sub i64 %i.cc, %i.aw
  %i.cn = sub i64 %i.ce, %i.aw
  %i.co = sub i64 %i.ce, %i.aw
  %i.cp = add i64 %i.cc, %i.aw
  %i.cq = add i64 %i.ce, %i.aw
  %i.cr = add i64 %i.cc, %i.aw
  %i.cs = add i64 %i.ce, %i.aw
  %i.ct = add i64 %i.ca, %i.aw
  %i.cu = sub i64 %i.cc, %i.ct
  %i.cv = add i64 %i.ca, %i.aw
  %i.cw = sub i64 %i.cc, %i.cv
  %i.cx = add i64 %i.ca, %i.aw
  %i.cy = sub i64 %i.ce, %i.cx
  %i.cz = add i64 %i.ca, %i.aw
  %i.da = sub i64 %i.ce, %i.cz
  %i.db = add i64 %i.ce, %i.aw
  %i.dc = add i64 %i.ce, %i.aw
  %i.dd = add i64 %i.cc, %i.aw
  %i.de = sub i64 %i.ce, %i.dd
  %i.df = add i64 %i.cc, %i.aw
  %i.dg = sub i64 %i.ce, %i.df
  %i.dh = add nsw i64 %i.ab, -1                   ; 25 uses
  %i.di = add nsw i64 %i.ab, -2                   ; 10 uses
  %i.dj = zext nneg i32 %15 to i64
  %min.iters.check1291 = icmp ult i32 %15, 25
  %20 = sub nsw i64 %i.ca, %i.cc
  %diff.check1248 = icmp ugt i64 %20, -16
  %invariant.op = sub i64 %i.ca, %i.cp
  %21 = sub nsw i64 %i.ca, %i.ce
  %diff.check1254 = icmp ugt i64 %21, -16
  %invariant.op1791 = sub i64 %i.ca, %i.cq
  %invariant.op1793 = add i64 %i.cy, -1
  %invariant.op1795 = add i64 %i.da, -1
  %invariant.op1797 = add i64 %i.cj, -1
  %invariant.op1799 = add i64 %i.ck, -1
  %invariant.op1801 = add i64 %i.cl, -1
  %invariant.op1803 = add i64 %i.cm, -1
  %invariant.op1805 = add i64 %i.cn, -1
  %invariant.op1807 = add i64 %i.co, -1
  %invariant.op1809 = sub i64 %i.ca, %i.cr
  %invariant.op1811 = sub i64 %i.ca, %i.cs
  %invariant.op1813 = add i64 %i.cu, -1
  %invariant.op1815 = add i64 %i.cw, -1
  %22 = sub nsw i64 %i.cc, %i.ce
  %diff.check1276 = icmp ugt i64 %22, -16
  %invariant.op1817 = sub i64 %i.cc, %i.db
  %invariant.op1819 = sub i64 %i.cc, %i.dc
  %23 = insertelement <8 x i1> poison, i1 %diff.check1276, i64 3
  %invariant.op1821 = add i64 %i.de, -1
  %invariant.op1823 = add i64 %i.dg, -1
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
  %cmp.n1314 = icmp eq i64 %n.vec1293, %wide.trip.count
  %i.dk = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %.04321141, i64 1 ; 2 uses
  %i.dm = insertelement <2 x double> poison, double %7, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %3, i64 1
  %i.do = insertelement <2 x double> poison, double %4, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %6, i64 1
  %xtraiter = and i64 %i.dh, 3                    ; 3 uses
  %i.dq = icmp ult i64 %i.di, 3
  %unroll_iter = and i64 %i.dh, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1641 = icmp ne i64 %xtraiter, 0
  %xtraiter1643 = and i64 %i.dh, 1
  %i.dr = icmp eq i64 %i.di, 0
  %unroll_iter1648 = and i64 %i.dh, -2
  %lcmp.mod1645.not = icmp eq i64 %xtraiter1643, 0
  %lcmp.mod1647 = trunc i64 %i.dh to i1
  %xtraiter1651 = and i64 %i.dh, 3                ; 3 uses
  %i.ds = icmp ult i64 %i.di, 3
  %unroll_iter1656 = and i64 %i.dh, -4
  %lcmp.mod1653.not = icmp eq i64 %xtraiter1651, 0
  %lcmp.mod1655 = icmp ne i64 %xtraiter1651, 0
  %xtraiter1659.a = and i64 %i.dh, 1
  %i.dt = icmp eq i64 %i.di, 0
  %unroll_iter1664.a = and i64 %i.dh, -2
  %lcmp.mod1661.not.a = icmp eq i64 %xtraiter1659.a, 0
  %lcmp.mod1663.a = trunc i64 %i.dh to i1
  %xtraiter1667 = and i64 %i.dh, 3                ; 3 uses
  %i.du = icmp ult i64 %i.di, 3
  %unroll_iter1672 = and i64 %i.dh, -4
  %lcmp.mod1669.not = icmp eq i64 %xtraiter1667, 0
  %lcmp.mod1671 = icmp ne i64 %xtraiter1667, 0
  %xtraiter1675 = and i64 %i.dh, 1
  %i.dv = icmp eq i64 %i.di, 0
  %unroll_iter1680 = and i64 %i.dh, -2
  %lcmp.mod1677.not = icmp eq i64 %xtraiter1675, 0
  %lcmp.mod1679 = trunc i64 %i.dh to i1
  %xtraiter1684 = and i64 %i.dh, 1
  %i.dw = icmp eq i64 %i.di, 0
  %unroll_iter1689 = and i64 %i.dh, -2
  %lcmp.mod1686.not = icmp eq i64 %xtraiter1684, 0
  %lcmp.mod1688 = trunc i64 %i.dh to i1
  %xtraiter1693 = and i64 %i.dh, 3                ; 3 uses
  %i.dx = icmp ult i64 %i.di, 3
  %unroll_iter1698 = and i64 %i.dh, -4
  %lcmp.mod1695.not = icmp eq i64 %xtraiter1693, 0
  %lcmp.mod1697 = icmp ne i64 %xtraiter1693, 0
  %xtraiter1702 = and i64 %i.dh, 3                ; 3 uses
  %i.dy = icmp ult i64 %i.di, 3
  %unroll_iter1707 = and i64 %i.dh, -4
  %lcmp.mod1704.not = icmp eq i64 %xtraiter1702, 0
  %lcmp.mod1706 = icmp ne i64 %xtraiter1702, 0
  %xtraiter1710 = and i64 %i.dh, 1
  %i.dz = icmp eq i64 %i.di, 0
  %unroll_iter1715 = and i64 %i.dh, -2
  %lcmp.mod1712.not = icmp eq i64 %xtraiter1710, 0
  %lcmp.mod1714 = trunc i64 %i.dh to i1
  %min.iters.check = icmp ult i32 %15, 3
  %n.vec = and i64 %wide.trip.count, 32764        ; 3 uses
  %broadcast.splatinsert1192 = insertelement <2 x double> poison, double %.04321141, i64 0
  %broadcast.splat1193 = shufflevector <2 x double> %broadcast.splatinsert1192, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1194 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1195 = shufflevector <2 x double> %broadcast.splatinsert1194, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter1717 = and i64 %wide.trip.count, 1
  %lcmp.mod1718.not = icmp eq i64 %xtraiter1717, 0
  br label %.lr.ph.preheader

.lr.ph1035.preheader:                             ; preds = %.lr.ph1026.1, %middle.block1487
  %indvars.iv.next1103.1.lcssa = phi i64 [ %i.jm, %middle.block1487 ], [ %indvars.iv.next1103.1, %.lr.ph1026.1 ] ; 3 uses
  %i.ea = fsub double %8, %5
  %i.eb = uitofp nneg i32 %i.o to double
  %i.ec = fdiv double %i.ea, %i.eb                ; 8 uses
  %min.iters.check1492 = icmp ult i32 %15, 3
  br i1 %min.iters.check1492, label %.lr.ph1035.preheader1609, label %vector.ph1493

vector.ph1493:                                    ; preds = %.lr.ph1035.preheader
  %n.vec1494 = and i64 %i.fg, 32764               ; 4 uses
  %i.ed = add i64 %indvars.iv.next1103.1.lcssa, %n.vec1494 ; 2 uses
  %i.ee = trunc nuw nsw i64 %n.vec1494 to i32
  %broadcast.splatinsert1495 = insertelement <2 x double> poison, double %i.ec, i64 0
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
  %i.ef = add i64 %indvars.iv.next1103.1.lcssa, %index1504 ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <2 x double> %broadcast.splat1498, ptr %i.eg, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1498, ptr %i.eh, align 8, !tbaa !14
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ef ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <2 x double> %broadcast.splat1500, ptr %i.ei, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1500, ptr %i.ej, align 8, !tbaa !14
  %i.ek = uitofp nneg <2 x i32> %vec.ind1505 to <2 x double>
  %i.el = uitofp nneg <2 x i32> %step.add1506 to <2 x double>
  %i.em = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %broadcast.splat1496, <2 x double> %broadcast.splat1502)
  %i.en = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %broadcast.splat1496, <2 x double> %broadcast.splat1502)
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ef ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <2 x double> %i.em, ptr %i.eo, align 8, !tbaa !14
  store <2 x double> %i.en, ptr %i.ep, align 8, !tbaa !14
  %index.next1507 = add nuw i64 %index1504, 4     ; 2 uses
  %vec.ind.next1508 = add nuw <2 x i32> %vec.ind1505, splat (i32 4)
  %i.eq = icmp eq i64 %index.next1507, %n.vec1494
  br i1 %i.eq, label %middle.block1509, label %vector.body1503, !llvm.loop !44

middle.block1509:                                 ; preds = %vector.body1503
  %cmp.n1510 = icmp eq i64 %n.vec1494, %i.fg
  br i1 %cmp.n1510, label %.lr.ph1040.preheader, label %.lr.ph1035.preheader1609

.lr.ph1035.preheader1609:                         ; preds = %.lr.ph1035.preheader, %middle.block1509
  %indvars.iv1110.ph = phi i64 [ %indvars.iv.next1103.1.lcssa, %.lr.ph1035.preheader ], [ %i.ed, %middle.block1509 ]
  %.04161033.ph = phi i32 [ 0, %.lr.ph1035.preheader ], [ %i.ee, %middle.block1509 ]
  br label %.lr.ph1035

.lr.ph1012.preheader:                             ; preds = %bb.ai
  %i.er = add nuw nsw i32 %15, 1                  ; 2 uses
  %wide.trip.count1108 = zext nneg i32 %i.er to i64 ; 3 uses
  %min.iters.check1317 = icmp ult i32 %15, 3
  br i1 %min.iters.check1317, label %.lr.ph1012.preheader1625, label %vector.ph1318

vector.ph1318:                                    ; preds = %.lr.ph1012.preheader
  %n.vec1319 = and i64 %wide.trip.count1108, 32764 ; 3 uses
  %broadcast.splatinsert1320 = insertelement <2 x double> poison, double %i.bu, i64 0
  %broadcast.splat1321 = shufflevector <2 x double> %broadcast.splatinsert1320, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1322 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1323 = shufflevector <2 x double> %broadcast.splatinsert1322, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1324 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1325 = shufflevector <2 x double> %broadcast.splatinsert1324, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1326 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1327 = shufflevector <2 x double> %broadcast.splatinsert1326, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1328

vector.body1328:                                  ; preds = %vector.body1328, %vector.ph1318
  %index1329 = phi i64 [ 0, %vector.ph1318 ], [ %index.next1332, %vector.body1328 ] ; 4 uses
  %vec.ind1330 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1318 ], [ %vec.ind.next1333, %vector.body1328 ] ; 3 uses
  %step.add1331 = add <2 x i32> %vec.ind1330, splat (i32 2)
  %i.es = uitofp nneg <2 x i32> %vec.ind1330 to <2 x double>
  %i.et = uitofp nneg <2 x i32> %step.add1331 to <2 x double>
  %i.eu = fneg <2 x double> %i.es
  %i.ev = fneg <2 x double> %i.et
  %i.ew = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %broadcast.splat1321, <2 x double> %broadcast.splat1323)
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> %broadcast.splat1321, <2 x double> %broadcast.splat1323)
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index1329 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <2 x double> %i.ew, ptr %i.ey, align 8, !tbaa !14
  store <2 x double> %i.ex, ptr %i.ez, align 8, !tbaa !14
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index1329 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <2 x double> %broadcast.splat1325, ptr %i.fa, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1325, ptr %i.fb, align 8, !tbaa !14
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index1329 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <2 x double> %broadcast.splat1327, ptr %i.fc, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1327, ptr %i.fd, align 8, !tbaa !14
  %index.next1332 = add nuw i64 %index1329, 4     ; 2 uses
  %vec.ind.next1333 = add <2 x i32> %vec.ind1330, splat (i32 4)
  %i.fe = icmp eq i64 %index.next1332, %n.vec1319
  br i1 %i.fe, label %middle.block1334, label %vector.body1328, !llvm.loop !45

middle.block1334:                                 ; preds = %vector.body1328
  %cmp.n1335 = icmp eq i64 %n.vec1319, %wide.trip.count1108
  br i1 %cmp.n1335, label %.lr.ph1016.preheader, label %.lr.ph1012.preheader1625

.lr.ph1012.preheader1625:                         ; preds = %.lr.ph1012.preheader, %middle.block1334
  %indvars.iv1087.ph = phi i64 [ 0, %.lr.ph1012.preheader ], [ %n.vec1319, %middle.block1334 ]
  br label %.lr.ph1012

.lr.ph1016.preheader:                             ; preds = %.lr.ph1012, %middle.block1334
  %i.ff = zext nneg i32 %i.er to i64              ; 3 uses
  %narrow = add nuw nsw i32 %15, 1
  %i.fg = zext nneg i32 %narrow to i64            ; 22 uses
  %min.iters.check1338 = icmp ult i32 %15, 3
  br i1 %min.iters.check1338, label %.lr.ph1016.preheader1623, label %vector.ph1339

vector.ph1339:                                    ; preds = %.lr.ph1016.preheader
  %n.vec1340 = and i64 %i.fg, 32764               ; 4 uses
  %i.fh = add nuw nsw i64 %n.vec1340, %i.ff       ; 2 uses
  %i.fi = trunc nuw nsw i64 %n.vec1340 to i32
  %broadcast.splatinsert1341 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1342 = shufflevector <2 x double> %broadcast.splatinsert1341, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1343 = insertelement <2 x double> poison, double %.04321141, i64 0
  %broadcast.splat1344 = shufflevector <2 x double> %broadcast.splatinsert1343, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1345 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1346 = shufflevector <2 x double> %broadcast.splatinsert1345, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1347 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1348 = shufflevector <2 x double> %broadcast.splatinsert1347, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %vector.ph1339
  %index1350 = phi i64 [ 0, %vector.ph1339 ], [ %index.next1353, %vector.body1349 ] ; 2 uses
  %vec.ind1351 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1339 ], [ %vec.ind.next1354, %vector.body1349 ] ; 3 uses
  %step.add1352 = add nuw <2 x i32> %vec.ind1351, splat (i32 2)
  %i.fj = add nuw i64 %index1350, %i.ff           ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <2 x double> %broadcast.splat1342, ptr %i.fk, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1342, ptr %i.fl, align 8, !tbaa !14
  %i.fm = uitofp nneg <2 x i32> %vec.ind1351 to <2 x double>
  %i.fn = uitofp nneg <2 x i32> %step.add1352 to <2 x double>
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %broadcast.splat1344, <2 x double> %broadcast.splat1346)
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %broadcast.splat1344, <2 x double> %broadcast.splat1346)
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.fj ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <2 x double> %i.fo, ptr %i.fq, align 8, !tbaa !14
  store <2 x double> %i.fp, ptr %i.fr, align 8, !tbaa !14
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.fj ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <2 x double> %broadcast.splat1348, ptr %i.fs, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1348, ptr %i.ft, align 8, !tbaa !14
  %index.next1353 = add nuw i64 %index1350, 4     ; 2 uses
  %vec.ind.next1354 = add nuw <2 x i32> %vec.ind1351, splat (i32 4)
  %i.fu = icmp eq i64 %index.next1353, %n.vec1340
  br i1 %i.fu, label %middle.block1355, label %vector.body1349, !llvm.loop !46

middle.block1355:                                 ; preds = %vector.body1349
  %cmp.n1356 = icmp eq i64 %n.vec1340, %i.fg
  br i1 %cmp.n1356, label %.lr.ph1021.preheader, label %.lr.ph1016.preheader1623

.lr.ph1016.preheader1623:                         ; preds = %.lr.ph1016.preheader, %middle.block1355
  %indvars.iv1092.ph = phi i64 [ %i.ff, %.lr.ph1016.preheader ], [ %i.fh, %middle.block1355 ]
  %.04191015.ph = phi i32 [ 0, %.lr.ph1016.preheader ], [ %i.fi, %middle.block1355 ]
  br label %.lr.ph1016

.lr.ph1012:                                       ; preds = %.lr.ph1012.preheader1625, %.lr.ph1012
  %indvars.iv1087 = phi i64 [ %indvars.iv.next1088, %.lr.ph1012 ], [ %indvars.iv1087.ph, %.lr.ph1012.preheader1625 ] ; 5 uses
  %indvars1107 = trunc i64 %indvars.iv1087 to i32
  %i.fv = uitofp nneg i32 %indvars1107 to double
  %i.fw = fneg double %i.fv
  %i.fx = call double @llvm.fmuladd.f64(double %i.fw, double %i.bu, double %7)
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1087
  store double %i.fx, ptr %i.fy, align 8, !tbaa !14
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1087
  store double %3, ptr %i.fz, align 8, !tbaa !14
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1087
  store double %5, ptr %i.ga, align 8, !tbaa !14
  %indvars.iv.next1088 = add nuw nsw i64 %indvars.iv1087, 1 ; 2 uses
  %exitcond1109.not = icmp eq i64 %indvars.iv.next1088, %wide.trip.count1108
  br i1 %exitcond1109.not, label %.lr.ph1016.preheader, label %.lr.ph1012, !llvm.loop !47

.lr.ph1016:                                       ; preds = %.lr.ph1016.preheader1623, %.lr.ph1016
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %.lr.ph1016 ], [ %indvars.iv1092.ph, %.lr.ph1016.preheader1623 ] ; 4 uses
  %.04191015 = phi i32 [ %i.gg, %.lr.ph1016 ], [ %.04191015.ph, %.lr.ph1016.preheader1623 ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1092
  store double %4, ptr %i.gb, align 8, !tbaa !14
  %i.gc = uitofp nneg i32 %.04191015 to double
  %i.gd = call double @llvm.fmuladd.f64(double %i.gc, double %.04321141, double %3)
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1092
  store double %i.gd, ptr %i.ge, align 8, !tbaa !14
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1092
  store double %5, ptr %i.gf, align 8, !tbaa !14
  %indvars.iv.next1093 = add nuw nsw i64 %indvars.iv1092, 1 ; 2 uses
  %i.gg = add nuw i32 %.04191015, 1
  %exitcond1096.not = icmp eq i32 %.04191015, %15
  br i1 %exitcond1096.not, label %.lr.ph1021.preheader, label %.lr.ph1016, !llvm.loop !48
end_hunk_0
begin_hunk_1_@proj_trans_bounds_3D:bb.a
  %.1.i513.lcssa = phi double [ %.1.i513.3, %_ZL10simple_minPKdi.exit516.unr-lcssa ], [ %.1.i513.epil, %bb.ap ] ; 2 uses
  %i.qj = load double, ptr %11, align 8, !tbaa !14 ; 2 uses
  %i.qk = fcmp olt double %.1.i513.lcssa, %i.qj
  %.sroa.speculated767 = select i1 %i.qk, double %.1.i513.lcssa, double %i.qj
  store double %.sroa.speculated767, ptr %11, align 8, !tbaa !14
  %xtraiter1745 = and i64 %i.nw, 1
  %i.ql = icmp eq i64 %i.nx, 0
  br i1 %i.ql, label %.epil.preheader1744, label %_ZL10simple_minPKdi.exit516.new

_ZL10simple_minPKdi.exit516.new:                  ; preds = %_ZL10simple_minPKdi.exit516
  %unroll_iter1750 = and i64 %i.nw, -2
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %_ZL10simple_minPKdi.exit516.new
  %indvars.iv.i519 = phi i64 [ 1, %_ZL10simple_minPKdi.exit516.new ], [ %indvars.iv.next.i521.1, %bb.aq ] ; 3 uses
  %.01316.i = phi double [ %i.nv, %_ZL10simple_minPKdi.exit516.new ], [ %.1.i520.1, %bb.aq ] ; 3 uses
  %niter1751 = phi i64 [ 0, %_ZL10simple_minPKdi.exit516.new ], [ %niter1751.next.1, %bb.aq ]
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i519
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !14 ; 3 uses
  %i.qo = fcmp ogt double %i.qn, %.01316.i
  %i.qp = fcmp oeq double %.01316.i, +inf
  %or.cond.i = or i1 %i.qp, %i.qo
  %i.qq = fcmp une double %i.qn, +inf
  %or.cond15.i = and i1 %i.qq, %or.cond.i
  %.1.i520 = select i1 %or.cond15.i, double %i.qn, double %.01316.i ; 3 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i519
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !14 ; 3 uses
  %i.qu = fcmp ogt double %i.qt, %.1.i520
  %i.qv = fcmp oeq double %.1.i520, +inf
  %or.cond.i.1 = or i1 %i.qv, %i.qu
  %i.qw = fcmp une double %i.qt, +inf
  %or.cond15.i.1 = and i1 %i.qw, %or.cond.i.1
  %.1.i520.1 = select i1 %or.cond15.i.1, double %i.qt, double %.1.i520 ; 3 uses
  %indvars.iv.next.i521.1 = add nuw nsw i64 %indvars.iv.i519, 2 ; 2 uses
  %niter1751.next.1 = add nuw i64 %niter1751, 2   ; 2 uses
  %niter1751.ncmp.1 = icmp eq i64 %niter1751.next.1, %unroll_iter1750
  br i1 %niter1751.ncmp.1, label %_ZL10simple_maxPKdi.exit.unr-lcssa, label %bb.aq, !llvm.loop !1

_ZL10simple_maxPKdi.exit.unr-lcssa:               ; preds = %bb.aq
  %lcmp.mod1747.not = icmp eq i64 %xtraiter1745, 0
  br i1 %lcmp.mod1747.not, label %_ZL10simple_maxPKdi.exit, label %.epil.preheader1744

.epil.preheader1744:                              ; preds = %_ZL10simple_maxPKdi.exit.unr-lcssa, %_ZL10simple_minPKdi.exit516
  %indvars.iv.i519.epil.init = phi i64 [ 1, %_ZL10simple_minPKdi.exit516 ], [ %indvars.iv.next.i521.1, %_ZL10simple_maxPKdi.exit.unr-lcssa ]
  %.01316.i.epil.init = phi double [ %i.nv, %_ZL10simple_minPKdi.exit516 ], [ %.1.i520.1, %_ZL10simple_maxPKdi.exit.unr-lcssa ] ; 3 uses
  %lcmp.mod1749 = trunc i64 %i.nw to i1
  call void @llvm.assume(i1 %lcmp.mod1749)
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i519.epil.init
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !14 ; 3 uses
  %i.qz = fcmp ogt double %i.qy, %.01316.i.epil.init
  %i.ra = fcmp oeq double %.01316.i.epil.init, +inf
  %or.cond.i.epil = or i1 %i.ra, %i.qz
  %i.rb = fcmp une double %i.qy, +inf
  %or.cond15.i.epil = and i1 %i.rb, %or.cond.i.epil
  %.1.i520.epil = select i1 %or.cond15.i.epil, double %i.qy, double %.01316.i.epil.init
  br label %_ZL10simple_maxPKdi.exit

_ZL10simple_maxPKdi.exit:                         ; preds = %_ZL10simple_maxPKdi.exit.unr-lcssa, %.epil.preheader1744
  %.1.i520.lcssa = phi double [ %.1.i520.1, %_ZL10simple_maxPKdi.exit.unr-lcssa ], [ %.1.i520.epil, %.epil.preheader1744 ] ; 2 uses
  %i.rc = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.rd = fcmp olt double %i.rc, %.1.i520.lcssa
  %.sroa.speculated763 = select i1 %i.rd, double %.1.i520.lcssa, double %i.rc
  store double %.sroa.speculated763, ptr %12, align 8, !tbaa !14
  %xtraiter1753 = and i64 %i.nw, 1
  %i.re = icmp eq i64 %i.nx, 0
  br i1 %i.re, label %.epil.preheader1752, label %_ZL10simple_maxPKdi.exit.new

_ZL10simple_maxPKdi.exit.new:                     ; preds = %_ZL10simple_maxPKdi.exit
  %unroll_iter1758 = and i64 %i.nw, -2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %_ZL10simple_maxPKdi.exit.new
  %indvars.iv.i525 = phi i64 [ 1, %_ZL10simple_maxPKdi.exit.new ], [ %indvars.iv.next.i530.1, %bb.ar ] ; 3 uses
  %.01316.i526 = phi double [ %i.ot, %_ZL10simple_maxPKdi.exit.new ], [ %.1.i529.1, %bb.ar ] ; 3 uses
  %niter1759 = phi i64 [ 0, %_ZL10simple_maxPKdi.exit.new ], [ %niter1759.next.1, %bb.ar ]
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i525
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !14 ; 3 uses
  %i.rh = fcmp ogt double %i.rg, %.01316.i526
  %i.ri = fcmp oeq double %.01316.i526, +inf
  %or.cond.i527 = or i1 %i.ri, %i.rh
  %i.rj = fcmp une double %i.rg, +inf
  %or.cond15.i528 = and i1 %i.rj, %or.cond.i527
  %.1.i529 = select i1 %or.cond15.i528, double %i.rg, double %.01316.i526 ; 3 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i525
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !14 ; 3 uses
  %i.rn = fcmp ogt double %i.rm, %.1.i529
  %i.ro = fcmp oeq double %.1.i529, +inf
  %or.cond.i527.1 = or i1 %i.ro, %i.rn
  %i.rp = fcmp une double %i.rm, +inf
  %or.cond15.i528.1 = and i1 %i.rp, %or.cond.i527.1
  %.1.i529.1 = select i1 %or.cond15.i528.1, double %i.rm, double %.1.i529 ; 3 uses
  %indvars.iv.next.i530.1 = add nuw nsw i64 %indvars.iv.i525, 2 ; 2 uses
  %niter1759.next.1 = add nuw i64 %niter1759, 2   ; 2 uses
  %niter1759.ncmp.1 = icmp eq i64 %niter1759.next.1, %unroll_iter1758
  br i1 %niter1759.ncmp.1, label %_ZL10simple_maxPKdi.exit532.unr-lcssa, label %bb.ar, !llvm.loop !1

_ZL10simple_maxPKdi.exit532.unr-lcssa:            ; preds = %bb.ar
  %lcmp.mod1755.not = icmp eq i64 %xtraiter1753, 0
  br i1 %lcmp.mod1755.not, label %_ZL10simple_maxPKdi.exit532, label %.epil.preheader1752

.epil.preheader1752:                              ; preds = %_ZL10simple_maxPKdi.exit532.unr-lcssa, %_ZL10simple_maxPKdi.exit
  %indvars.iv.i525.epil.init = phi i64 [ 1, %_ZL10simple_maxPKdi.exit ], [ %indvars.iv.next.i530.1, %_ZL10simple_maxPKdi.exit532.unr-lcssa ]
  %.01316.i526.epil.init = phi double [ %i.ot, %_ZL10simple_maxPKdi.exit ], [ %.1.i529.1, %_ZL10simple_maxPKdi.exit532.unr-lcssa ] ; 3 uses
  %lcmp.mod1757 = trunc i64 %i.nw to i1
  call void @llvm.assume(i1 %lcmp.mod1757)
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i525.epil.init
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !14 ; 3 uses
  %i.rs = fcmp ogt double %i.rr, %.01316.i526.epil.init
  %i.rt = fcmp oeq double %.01316.i526.epil.init, +inf
  %or.cond.i527.epil = or i1 %i.rt, %i.rs
  %i.ru = fcmp une double %i.rr, +inf
  %or.cond15.i528.epil = and i1 %i.ru, %or.cond.i527.epil
  %.1.i529.epil = select i1 %or.cond15.i528.epil, double %i.rr, double %.01316.i526.epil.init
  br label %_ZL10simple_maxPKdi.exit532

_ZL10simple_maxPKdi.exit532:                      ; preds = %_ZL10simple_maxPKdi.exit532.unr-lcssa, %.epil.preheader1752
  %.1.i529.lcssa = phi double [ %.1.i529.1, %_ZL10simple_maxPKdi.exit532.unr-lcssa ], [ %.1.i529.epil, %.epil.preheader1752 ] ; 2 uses
  %i.rv = load double, ptr %13, align 8, !tbaa !14 ; 2 uses
  %i.rw = fcmp olt double %i.rv, %.1.i529.lcssa
  %.sroa.speculated759 = select i1 %i.rw, double %.1.i529.lcssa, double %i.rv
  store double %.sroa.speculated759, ptr %13, align 8, !tbaa !14
  %xtraiter1761 = and i64 %i.nw, 1
  %i.rx = icmp eq i64 %i.nx, 0
  br i1 %i.rx, label %.epil.preheader1760, label %_ZL10simple_maxPKdi.exit532.new

_ZL10simple_maxPKdi.exit532.new:                  ; preds = %_ZL10simple_maxPKdi.exit532
  %unroll_iter1766 = and i64 %i.nw, -2
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %_ZL10simple_maxPKdi.exit532.new
  %indvars.iv.i535 = phi i64 [ 1, %_ZL10simple_maxPKdi.exit532.new ], [ %indvars.iv.next.i540.1, %bb.as ] ; 3 uses
  %.01316.i536 = phi double [ %i.pp, %_ZL10simple_maxPKdi.exit532.new ], [ %.1.i539.1, %bb.as ] ; 3 uses
  %niter1767 = phi i64 [ 0, %_ZL10simple_maxPKdi.exit532.new ], [ %niter1767.next.1, %bb.as ]
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i535
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !14 ; 3 uses
  %i.sa = fcmp ogt double %i.rz, %.01316.i536
  %i.sb = fcmp oeq double %.01316.i536, +inf
  %or.cond.i537 = or i1 %i.sb, %i.sa
  %i.sc = fcmp une double %i.rz, +inf
  %or.cond15.i538 = and i1 %i.sc, %or.cond.i537
  %.1.i539 = select i1 %or.cond15.i538, double %i.rz, double %.01316.i536 ; 3 uses
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i535
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sf = load double, ptr %i.se, align 8, !tbaa !14 ; 3 uses
  %i.sg = fcmp ogt double %i.sf, %.1.i539
  %i.sh = fcmp oeq double %.1.i539, +inf
  %or.cond.i537.1 = or i1 %i.sh, %i.sg
  %i.si = fcmp une double %i.sf, +inf
  %or.cond15.i538.1 = and i1 %i.si, %or.cond.i537.1
  %.1.i539.1 = select i1 %or.cond15.i538.1, double %i.sf, double %.1.i539 ; 3 uses
  %indvars.iv.next.i540.1 = add nuw nsw i64 %indvars.iv.i535, 2 ; 2 uses
  %niter1767.next.1 = add nuw i64 %niter1767, 2   ; 2 uses
  %niter1767.ncmp.1 = icmp eq i64 %niter1767.next.1, %unroll_iter1766
  br i1 %niter1767.ncmp.1, label %_ZL10simple_maxPKdi.exit542.unr-lcssa, label %bb.as, !llvm.loop !1

_ZL10simple_maxPKdi.exit542.unr-lcssa:            ; preds = %bb.as
  %lcmp.mod1763.not = icmp eq i64 %xtraiter1761, 0
  br i1 %lcmp.mod1763.not, label %_ZL10simple_maxPKdi.exit542, label %.epil.preheader1760

.epil.preheader1760:                              ; preds = %_ZL10simple_maxPKdi.exit542.unr-lcssa, %_ZL10simple_maxPKdi.exit532
  %indvars.iv.i535.epil.init = phi i64 [ 1, %_ZL10simple_maxPKdi.exit532 ], [ %indvars.iv.next.i540.1, %_ZL10simple_maxPKdi.exit542.unr-lcssa ]
  %.01316.i536.epil.init = phi double [ %i.pp, %_ZL10simple_maxPKdi.exit532 ], [ %.1.i539.1, %_ZL10simple_maxPKdi.exit542.unr-lcssa ] ; 3 uses
  %lcmp.mod1765 = trunc i64 %i.nw to i1
  call void @llvm.assume(i1 %lcmp.mod1765)
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i535.epil.init
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !14 ; 3 uses
  %i.sl = fcmp ogt double %i.sk, %.01316.i536.epil.init
  %i.sm = fcmp oeq double %.01316.i536.epil.init, +inf
  %or.cond.i537.epil = or i1 %i.sm, %i.sl
  %i.sn = fcmp une double %i.sk, +inf
  %or.cond15.i538.epil = and i1 %i.sn, %or.cond.i537.epil
  %.1.i539.epil = select i1 %or.cond15.i538.epil, double %i.sk, double %.01316.i536.epil.init
  br label %_ZL10simple_maxPKdi.exit542

_ZL10simple_maxPKdi.exit542:                      ; preds = %_ZL10simple_maxPKdi.exit542.unr-lcssa, %.epil.preheader1760
  %.1.i539.lcssa = phi double [ %.1.i539.1, %_ZL10simple_maxPKdi.exit542.unr-lcssa ], [ %.1.i539.epil, %.epil.preheader1760 ] ; 2 uses
  %i.so = load double, ptr %14, align 8, !tbaa !14 ; 2 uses
  %i.sp = fcmp olt double %i.so, %.1.i539.lcssa
  %.sroa.speculated755 = select i1 %i.sp, double %.1.i539.lcssa, double %i.so
  store double %.sroa.speculated755, ptr %14, align 8, !tbaa !14
  br label %.loopexit979

.lr.ph.preheader:                                 ; preds = %.loopexit, %.preheader978
  %i.sq = phi i1 [ true, %.preheader978 ], [ false, %.loopexit ] ; 2 uses
  %.sroa.45.11006 = phi ptr [ %i.ai, %.preheader978 ], [ %.sroa.45.2900, %.loopexit ] ; 4 uses
  %.sroa.0807.11005 = phi ptr [ %i.ag, %.preheader978 ], [ %.sroa.0807.2897, %.loopexit ] ; 24 uses
  %.sroa.43.11004 = phi ptr [ %i.af, %.preheader978 ], [ %.sroa.43.2894, %.loopexit ] ; 4 uses
  %.sroa.0845.11003 = phi ptr [ %i.ad, %.preheader978 ], [ %.sroa.0845.2890, %.loopexit ] ; 24 uses
  %i.sr = select i1 %i.sq, double %5, double %8   ; 9 uses
  br i1 %min.iters.check1291, label %.lr.ph.preheader1626, label %vector.memcheck1198

vector.memcheck1198:                              ; preds = %.lr.ph.preheader
  %.sroa.0807.110051200 = ptrtoaddr ptr %.sroa.0807.11005 to i64 ; 26 uses
  %.sroa.0845.110031199 = ptrtoaddr ptr %.sroa.0845.11003 to i64 ; 26 uses
  %i.ss = sub i64 %.sroa.0807.110051200, %.sroa.0845.110031199
  %diff.check1201 = icmp ugt i64 %i.ss, -16
  %i.st = sub i64 %.sroa.0807.110051200, %i.aw
  %diff.check1202 = icmp ugt i64 %i.st, -16
  %24 = add i64 %i.ca, %.sroa.0845.110031199
  %25 = sub i64 %.sroa.0807.110051200, %24
  %diff.check1206 = icmp ugt i64 %25, -16
  %i.su = sub i64 %.sroa.0807.110051200, %i.cb
  %diff.check1208.a = icmp ugt i64 %i.su, -16
  %26 = add i64 %i.cc, %.sroa.0845.110031199
  %i.sv = sub i64 %.sroa.0807.110051200, %26
  %diff.check1212.a = icmp ugt i64 %i.sv, -16
  %27 = sub i64 %.sroa.0807.110051200, %i.cd
  %diff.check1214 = icmp ugt i64 %27, -16
  %i.sw = add i64 %i.ce, %.sroa.0845.110031199
  %i.sx = sub i64 %.sroa.0807.110051200, %i.sw
  %diff.check1218.a = icmp ugt i64 %i.sx, -16
  %28 = sub i64 %.sroa.0807.110051200, %i.cf
  %diff.check1220 = icmp ugt i64 %28, -16
  %29 = sub i64 %.sroa.0845.110031199, %i.aw
  %diff.check1222 = icmp ugt i64 %29, -16
  %i.sy = add i64 %i.ca, %.sroa.0807.110051200
  %i.sz = sub i64 %.sroa.0845.110031199, %i.sy
  %diff.check1224.a = icmp ugt i64 %i.sz, -16
  %i.ta = sub i64 %.sroa.0845.110031199, %i.cg
  %diff.check1226.a = icmp ugt i64 %i.ta, -16
  %30 = add i64 %i.cc, %.sroa.0807.110051200
  %i.tb = sub i64 %.sroa.0845.110031199, %30
  %diff.check1228.a = icmp ugt i64 %i.tb, -16
  %31 = sub i64 %.sroa.0845.110031199, %i.ch
  %diff.check1230 = icmp ugt i64 %31, -16
  %i.tc = add i64 %i.ce, %.sroa.0807.110051200
  %i.td = sub i64 %.sroa.0845.110031199, %i.tc
  %diff.check1232.a = icmp ugt i64 %i.td, -16
  %i.te = sub i64 %.sroa.0845.110031199, %i.ci
  %diff.check1234.a = icmp ugt i64 %i.te, -16
  %32 = add i64 %i.cc, %.sroa.0845.110031199
  %i.tf = add i64 %i.ca, %.sroa.0807.110051200
  %i.tg = sub i64 %i.tf, %32
  %diff.check1250.a = icmp ugt i64 %i.tg, -16
  %.reass = add i64 %.sroa.0807.110051200, %invariant.op
  %diff.check1252.a = icmp ugt i64 %.reass, -16
  %33 = add i64 %i.ce, %.sroa.0845.110031199
  %i.th = add i64 %i.ca, %.sroa.0807.110051200
  %i.ti = sub i64 %i.th, %33
  %diff.check1256.a = icmp ugt i64 %i.ti, -16
  %.reass1792 = add i64 %.sroa.0807.110051200, %invariant.op1791
  %diff.check1258.a = icmp ugt i64 %.reass1792, -16
  %34 = add i64 %i.cc, %.sroa.0807.110051200
  %i.tj = add i64 %i.ca, %.sroa.0845.110031199
  %35 = sub i64 %i.tj, %34
  %diff.check1260 = icmp ugt i64 %35, -16
  %.reass1794 = add i64 %.sroa.0807.110051200, %invariant.op1793
  %diff.check1272.a = icmp ult i64 %.reass1794, 15
  %.reass1796 = add i64 %.sroa.0845.110031199, %invariant.op1795
  %diff.check1274 = icmp ult i64 %.reass1796, 15
  %i.tk = add i64 %i.ce, %.sroa.0807.110051200
  %.reass1798 = add i64 %.sroa.0807.110051200, %invariant.op1797
  %diff.check1236 = icmp ult i64 %.reass1798, 15
  %.reass1800 = add i64 %.sroa.0845.110031199, %invariant.op1799
  %diff.check1238 = icmp ult i64 %.reass1800, 15
  %.reass1802 = add i64 %.sroa.0807.110051200, %invariant.op1801
  %diff.check1240 = icmp ult i64 %.reass1802, 15
  %.reass1804 = add i64 %.sroa.0845.110031199, %invariant.op1803
  %diff.check1242 = icmp ult i64 %.reass1804, 15
  %.reass1806 = add i64 %.sroa.0807.110051200, %invariant.op1805
  %diff.check1244 = icmp ult i64 %.reass1806, 15
  %.reass1808 = add i64 %.sroa.0845.110031199, %invariant.op1807
  %diff.check1246 = icmp ult i64 %.reass1808, 15
  %.reass1810 = add i64 %.sroa.0845.110031199, %invariant.op1809
  %diff.check1262 = icmp ugt i64 %.reass1810, -16
  %i.tl = add i64 %i.ce, %.sroa.0807.110051200
  %i.tm = add i64 %i.ca, %.sroa.0845.110031199
  %i.tn = sub i64 %i.tm, %i.tl
  %diff.check1264.a = icmp ugt i64 %i.tn, -16
  %.reass1812 = add i64 %.sroa.0845.110031199, %invariant.op1811
  %diff.check1266 = icmp ugt i64 %.reass1812, -16
  %.reass1814 = add i64 %.sroa.0807.110051200, %invariant.op1813
  %diff.check1268 = icmp ult i64 %.reass1814, 15
  %.reass1816 = add i64 %.sroa.0845.110031199, %invariant.op1815
  %diff.check1270 = icmp ult i64 %.reass1816, 15
  %i.to = add i64 %i.ce, %.sroa.0845.110031199
  %i.tp = add i64 %i.cc, %.sroa.0807.110051200
  %i.tq = sub i64 %i.tp, %i.to
  %diff.check1278.a = icmp ugt i64 %i.tq, -16
  %.reass1818 = add i64 %.sroa.0807.110051200, %invariant.op1817
  %diff.check1280 = icmp ugt i64 %.reass1818, -16
  %36 = add i64 %i.cc, %.sroa.0845.110031199
  %37 = sub i64 %36, %i.tk
  %diff.check1282 = icmp ugt i64 %37, -16
  %.reass1820 = add i64 %.sroa.0845.110031199, %invariant.op1819
  %diff.check1284 = icmp ugt i64 %.reass1820, -16
  %38 = insertelement <8 x i1> %23, i1 %diff.check1262, i64 0
  %39 = insertelement <8 x i1> %38, i1 %diff.check1264.a, i64 1
  %40 = insertelement <8 x i1> %39, i1 %diff.check1266, i64 2
  %41 = insertelement <8 x i1> %40, i1 %diff.check1278.a, i64 4
  %42 = insertelement <8 x i1> %41, i1 %diff.check1280, i64 5
  %43 = insertelement <8 x i1> %42, i1 %diff.check1282, i64 6
  %44 = insertelement <8 x i1> %43, i1 %diff.check1284, i64 7
  %45 = insertelement <8 x i1> poison, i1 %diff.check1236, i64 0
  %46 = insertelement <8 x i1> %45, i1 %diff.check1238, i64 1
  %47 = insertelement <8 x i1> %46, i1 %diff.check1240, i64 2
  %48 = insertelement <8 x i1> %47, i1 %diff.check1242, i64 3
  %49 = insertelement <8 x i1> %48, i1 %diff.check1244, i64 4
  %50 = insertelement <8 x i1> %49, i1 %diff.check1246, i64 5
  %51 = insertelement <8 x i1> %50, i1 %diff.check1268, i64 6
  %52 = insertelement <8 x i1> %51, i1 %diff.check1270, i64 7
  %53 = shufflevector <8 x i1> %44, <8 x i1> %52, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.reass1822 = add i64 %.sroa.0807.110051200, %invariant.op1821
  %diff.check1286.a = icmp ult i64 %.reass1822, 15
  %.reass1824 = add i64 %.sroa.0845.110031199, %invariant.op1823
  %diff.check1288 = icmp ult i64 %.reass1824, 15
  %54 = bitcast <16 x i1> %53 to i16
  %55 = icmp ne i16 %54, 0
  %op.rdx = or i1 %55, %diff.check1201
  %op.rdx1579 = or i1 %diff.check1202, %diff.check1206
  %op.rdx1580 = or i1 %diff.check1208.a, %diff.check1212.a
  %op.rdx1581 = or i1 %diff.check1214, %diff.check1218.a
  %op.rdx1582 = or i1 %diff.check1220, %diff.check1222
  %op.rdx1583 = or i1 %diff.check1224.a, %diff.check1226.a
  %op.rdx1584 = or i1 %diff.check1228.a, %diff.check1230
  %op.rdx1585 = or i1 %diff.check1232.a, %diff.check1234.a
  %op.rdx1586 = or i1 %diff.check1248, %diff.check1250.a
  %op.rdx1587 = or i1 %diff.check1252.a, %diff.check1254
  %op.rdx1588 = or i1 %diff.check1256.a, %diff.check1258.a
  %op.rdx1589 = or i1 %diff.check1260, %diff.check1272.a
  %op.rdx1590 = or i1 %diff.check1274, %diff.check1286.a
  %op.rdx1591 = or i1 %op.rdx, %op.rdx1579
  %op.rdx1592 = or i1 %op.rdx1580, %op.rdx1581
  %op.rdx1593 = or i1 %op.rdx1582, %op.rdx1583
  %op.rdx1594 = or i1 %op.rdx1584, %op.rdx1585
  %op.rdx1595 = or i1 %op.rdx1586, %op.rdx1587
  %op.rdx1596 = or i1 %op.rdx1588, %op.rdx1589
  %op.rdx1597 = or i1 %op.rdx1590, %diff.check1288
  %op.rdx1598 = or i1 %op.rdx1591, %op.rdx1592
  %op.rdx1599 = or i1 %op.rdx1593, %op.rdx1594
  %op.rdx1600 = or i1 %op.rdx1595, %op.rdx1596
  %op.rdx1601 = or i1 %op.rdx1598, %op.rdx1599
  %op.rdx1602 = or i1 %op.rdx1600, %op.rdx1597
  %op.rdx1603 = or i1 %op.rdx1601, %op.rdx1602
  br i1 %op.rdx1603, label %.lr.ph.preheader1626, label %vector.ph1292

vector.ph1292:                                    ; preds = %vector.memcheck1198
  %broadcast.splatinsert1294 = insertelement <2 x double> poison, double %i.sr, i64 0
  %broadcast.splat1295 = shufflevector <2 x double> %broadcast.splatinsert1294, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body1308

vector.body1308:                                  ; preds = %vector.body1308, %vector.ph1292
  %index1309 = phi i64 [ 0, %vector.ph1292 ], [ %index.next1311, %vector.body1308 ] ; 7 uses
  %vec.ind1310 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1292 ], [ %vec.ind.next1312, %vector.body1308 ] ; 2 uses
  %i.tr = uitofp nneg <2 x i32> %vec.ind1310 to <2 x double> ; 3 uses
  %i.ts = fneg <2 x double> %i.tr                 ; 2 uses
  %i.tt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ts, <2 x double> %broadcast.splat1297, <2 x double> %broadcast.splat1299)
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %index1309
  store <2 x double> %i.tt, ptr %i.tu, align 8, !tbaa !14
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %index1309
  store <2 x double> %broadcast.splat1301, ptr %i.tv, align 8, !tbaa !14
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index1309
  store <2 x double> %broadcast.splat1295, ptr %i.tw, align 8, !tbaa !14
  %i.tx = add nuw nsw i64 %index1309, %i.by       ; 3 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.tx
  store <2 x double> %broadcast.splat1303, ptr %i.ty, align 8, !tbaa !14
  %i.tz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tr, <2 x double> %broadcast.splat1305, <2 x double> %broadcast.splat1301)
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.tx
  store <2 x double> %i.tz, ptr %i.ua, align 8, !tbaa !14
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.tx
  store <2 x double> %broadcast.splat1295, ptr %i.ub, align 8, !tbaa !14
  %i.uc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tr, <2 x double> %broadcast.splat1297, <2 x double> %broadcast.splat1303)
  %i.ud = add nuw nsw i64 %index1309, %19         ; 3 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.ud
  store <2 x double> %i.uc, ptr %i.ue, align 8, !tbaa !14
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.ud
  store <2 x double> %broadcast.splat1307, ptr %i.uf, align 8, !tbaa !14
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ud
  store <2 x double> %broadcast.splat1295, ptr %i.ug, align 8, !tbaa !14
  %i.uh = add nuw nsw i64 %index1309, %i.bz       ; 3 uses
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.uh
  store <2 x double> %broadcast.splat1299, ptr %i.ui, align 8, !tbaa !14
  %i.uj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ts, <2 x double> %broadcast.splat1305, <2 x double> %broadcast.splat1307)
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.uh
  store <2 x double> %i.uj, ptr %i.uk, align 8, !tbaa !14
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.uh
  store <2 x double> %broadcast.splat1295, ptr %i.ul, align 8, !tbaa !14
  %index.next1311 = add nuw i64 %index1309, 2     ; 2 uses
  %vec.ind.next1312 = add <2 x i32> %vec.ind1310, splat (i32 2)
  %i.um = icmp eq i64 %index.next1311, %n.vec1293
  br i1 %i.um, label %middle.block1313, label %vector.body1308, !llvm.loop !71

middle.block1313:                                 ; preds = %vector.body1308
  br i1 %cmp.n1314, label %._crit_edge, label %.lr.ph.preheader1626

.lr.ph.preheader1626:                             ; preds = %vector.memcheck1198, %.lr.ph.preheader, %middle.block1313
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck1198 ], [ 0, %.lr.ph.preheader ], [ %n.vec1293, %middle.block1313 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block1313
  %i.un = invoke i64 @proj_trans_generic(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %.sroa.0845.11003, i64 noundef 8, i64 noundef %i.ab, ptr noundef nonnull %.sroa.0807.11005, i64 noundef 8, i64 noundef %i.ab, ptr noundef nonnull %i.aj, i64 noundef 8, i64 noundef %i.ab, ptr noundef null, i64 noundef 0, i64 noundef 0)
          to label %bb.at unwind label %.thread953.loopexit.split-lp.loopexit ; 0 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader1626, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1626 ] ; 8 uses
  %i.uo = trunc nuw nsw i64 %indvars.iv to i32
  %i.up = uitofp nneg i32 %i.uo to double         ; 3 uses
  %i.uq = fneg double %i.up                       ; 2 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv
  store double %3, ptr %i.us, align 8, !tbaa !14
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.uu = add nuw nsw i64 %indvars.iv, %i.by      ; 3 uses
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.uu
  %i.uw = insertelement <2 x double> poison, double %i.uq, i64 0
  %i.ux = insertelement <2 x double> %i.uw, double %i.up, i64 1
  %i.uy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ux, <2 x double> %i.dl, <2 x double> %i.dn) ; 2 uses
  %i.uz = extractelement <2 x double> %i.uy, i64 0
  store double %i.uz, ptr %i.ur, align 8, !tbaa !14
  store double %i.sr, ptr %i.ut, align 8, !tbaa !14
  store double %4, ptr %i.uv, align 8, !tbaa !14
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.uu
  %i.vb = extractelement <2 x double> %i.uy, i64 1
  store double %i.vb, ptr %i.va, align 8, !tbaa !14
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.uu
  store double %i.sr, ptr %i.vc, align 8, !tbaa !14
  %i.vd = add nuw nsw i64 %indvars.iv, %19        ; 3 uses
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.vd
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.vd
  store double %6, ptr %i.vf, align 8, !tbaa !14
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.vd
  %i.vh = add nuw nsw i64 %indvars.iv, %i.bz      ; 3 uses
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.vh
  %i.vj = insertelement <2 x double> poison, double %i.up, i64 0
  %i.vk = insertelement <2 x double> %i.vj, double %i.uq, i64 1
  %i.vl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vk, <2 x double> %i.dl, <2 x double> %i.dp) ; 2 uses
  %i.vm = extractelement <2 x double> %i.vl, i64 0
  store double %i.vm, ptr %i.ve, align 8, !tbaa !14
  store double %i.sr, ptr %i.vg, align 8, !tbaa !14
  store double %7, ptr %i.vi, align 8, !tbaa !14
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.vh
  %i.vo = extractelement <2 x double> %i.vl, i64 1
  store double %i.vo, ptr %i.vn, align 8, !tbaa !14
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.vh
  store double %i.sr, ptr %i.vp, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72

bb.at:                                            ; preds = %._crit_edge
  br i1 %or.cond8, label %bb.au, label %.thread883

bb.au:                                            ; preds = %bb.at
  br i1 %i.k, label %.thread883, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.vq = load double, ptr %.sroa.0845.11003, align 8, !tbaa !14 ; 2 uses
  br i1 %i.dq, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.av, %.new
  %indvars.iv.i545 = phi i64 [ %indvars.iv.next.i548.3, %.new ], [ 1, %bb.av ] ; 5 uses
  %.0911.i546 = phi double [ %.1.i547.3, %.new ], [ %i.vq, %bb.av ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.new ], [ 0, %bb.av ]
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !14 ; 2 uses
  %i.vt = fcmp olt double %i.vs, %.0911.i546
  %.1.i547 = select i1 %i.vt, double %i.vs, double %.0911.i546 ; 2 uses
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !14 ; 2 uses
  %i.vx = fcmp olt double %i.vw, %.1.i547
  %.1.i547.1 = select i1 %i.vx, double %i.vw, double %.1.i547 ; 2 uses
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !14 ; 2 uses
  %i.wb = fcmp olt double %i.wa, %.1.i547.1
  %.1.i547.2 = select i1 %i.wb, double %i.wa, double %.1.i547.1 ; 2 uses
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 24
  %i.we = load double, ptr %i.wd, align 8, !tbaa !14 ; 2 uses
  %i.wf = fcmp olt double %i.we, %.1.i547.2
  %.1.i547.3 = select i1 %i.wf, double %i.we, double %.1.i547.2 ; 3 uses
  %indvars.iv.next.i548.3 = add nuw nsw i64 %indvars.iv.i545, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL10simple_minPKdi.exit550.unr-lcssa, label %.new, !llvm.loop !0

_ZL10simple_minPKdi.exit550.unr-lcssa:            ; preds = %.new
  br i1 %lcmp.mod.not, label %_ZL10simple_minPKdi.exit550, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL10simple_minPKdi.exit550.unr-lcssa, %bb.av
  %indvars.iv.i545.epil.init = phi i64 [ 1, %bb.av ], [ %indvars.iv.next.i548.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ]
  %.0911.i546.epil.init = phi double [ %i.vq, %bb.av ], [ %.1.i547.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1641)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.epil.preheader
  %indvars.iv.i545.epil = phi i64 [ %indvars.iv.i545.epil.init, %.epil.preheader ], [ %indvars.iv.next.i548.epil, %bb.aw ] ; 2 uses
  %.0911.i546.epil = phi double [ %.0911.i546.epil.init, %.epil.preheader ], [ %.1.i547.epil, %bb.aw ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aw ]
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545.epil
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !14 ; 2 uses
  %i.wi = fcmp olt double %i.wh, %.0911.i546.epil
  %.1.i547.epil = select i1 %i.wi, double %i.wh, double %.0911.i546.epil ; 2 uses
  %indvars.iv.next.i548.epil = add nuw nsw i64 %indvars.iv.i545.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL10simple_minPKdi.exit550, label %bb.aw, !llvm.loop !73

_ZL10simple_minPKdi.exit550:                      ; preds = %bb.aw, %_ZL10simple_minPKdi.exit550.unr-lcssa
  %.1.i547.lcssa = phi double [ %.1.i547.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ], [ %.1.i547.epil, %bb.aw ] ; 2 uses
  %i.wj = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.wk = fcmp olt double %.1.i547.lcssa, %i.wj
  %.sroa.speculated751 = select i1 %i.wk, double %.1.i547.lcssa, double %i.wj
  store double %.sroa.speculated751, ptr %9, align 8, !tbaa !14
  %i.wl = load double, ptr %.sroa.0845.11003, align 8, !tbaa !14 ; 2 uses
  br i1 %i.dr, label %.epil.preheader1642, label %_ZL10simple_minPKdi.exit550.new

_ZL10simple_minPKdi.exit550.new:                  ; preds = %_ZL10simple_minPKdi.exit550, %_ZL10simple_minPKdi.exit550.new
  %indvars.iv.i553 = phi i64 [ %indvars.iv.next.i558.1, %_ZL10simple_minPKdi.exit550.new ], [ 1, %_ZL10simple_minPKdi.exit550 ] ; 3 uses
  %.01316.i554 = phi double [ %.1.i557.1, %_ZL10simple_minPKdi.exit550.new ], [ %i.wl, %_ZL10simple_minPKdi.exit550 ] ; 3 uses
  %niter1649 = phi i64 [ %niter1649.next.1, %_ZL10simple_minPKdi.exit550.new ], [ 0, %_ZL10simple_minPKdi.exit550 ]
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i553
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !14 ; 3 uses
  %i.wo = fcmp ogt double %i.wn, %.01316.i554
  %i.wp = fcmp oeq double %.01316.i554, +inf
  %or.cond.i555 = or i1 %i.wp, %i.wo
  %i.wq = fcmp une double %i.wn, +inf
  %or.cond15.i556 = and i1 %i.wq, %or.cond.i555
  %.1.i557 = select i1 %or.cond15.i556, double %i.wn, double %.01316.i554 ; 3 uses
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i553
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load double, ptr %i.ws, align 8, !tbaa !14 ; 3 uses
  %i.wu = fcmp ogt double %i.wt, %.1.i557
  %i.wv = fcmp oeq double %.1.i557, +inf
  %or.cond.i555.1 = or i1 %i.wv, %i.wu
  %i.ww = fcmp une double %i.wt, +inf
  %or.cond15.i556.1 = and i1 %i.ww, %or.cond.i555.1
  %.1.i557.1 = select i1 %or.cond15.i556.1, double %i.wt, double %.1.i557 ; 3 uses
  %indvars.iv.next.i558.1 = add nuw nsw i64 %indvars.iv.i553, 2 ; 2 uses
  %niter1649.next.1 = add nuw i64 %niter1649, 2   ; 2 uses
  %niter1649.ncmp.1 = icmp eq i64 %niter1649.next.1, %unroll_iter1648
  br i1 %niter1649.ncmp.1, label %_ZL10simple_maxPKdi.exit560.unr-lcssa, label %_ZL10simple_minPKdi.exit550.new, !llvm.loop !1

_ZL10simple_maxPKdi.exit560.unr-lcssa:            ; preds = %_ZL10simple_minPKdi.exit550.new
  br i1 %lcmp.mod1645.not, label %_ZL10simple_maxPKdi.exit560, label %.epil.preheader1642

.epil.preheader1642:                              ; preds = %_ZL10simple_maxPKdi.exit560.unr-lcssa, %_ZL10simple_minPKdi.exit550
  %indvars.iv.i553.epil.init = phi i64 [ 1, %_ZL10simple_minPKdi.exit550 ], [ %indvars.iv.next.i558.1, %_ZL10simple_maxPKdi.exit560.unr-lcssa ]
  %.01316.i554.epil.init = phi double [ %i.wl, %_ZL10simple_minPKdi.exit550 ], [ %.1.i557.1, %_ZL10simple_maxPKdi.exit560.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1647)
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i553.epil.init
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !14 ; 3 uses
  %i.wz = fcmp ogt double %i.wy, %.01316.i554.epil.init
  %i.xa = fcmp oeq double %.01316.i554.epil.init, +inf
  %or.cond.i555.epil = or i1 %i.xa, %i.wz
  %i.xb = fcmp une double %i.wy, +inf
  %or.cond15.i556.epil = and i1 %i.xb, %or.cond.i555.epil
  %.1.i557.epil = select i1 %or.cond15.i556.epil, double %i.wy, double %.01316.i554.epil.init
  br label %_ZL10simple_maxPKdi.exit560

_ZL10simple_maxPKdi.exit560:                      ; preds = %_ZL10simple_maxPKdi.exit560.unr-lcssa, %.epil.preheader1642
  %.1.i557.lcssa = phi double [ %.1.i557.1, %_ZL10simple_maxPKdi.exit560.unr-lcssa ], [ %.1.i557.epil, %.epil.preheader1642 ] ; 2 uses
  %i.xc = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.xd = fcmp olt double %i.xc, %.1.i557.lcssa
  %.sroa.speculated747 = select i1 %i.xd, double %.1.i557.lcssa, double %i.xc
  store double %.sroa.speculated747, ptr %12, align 8, !tbaa !14
  %i.xe = load double, ptr %.sroa.0807.11005, align 8, !tbaa !14 ; 2 uses
  br i1 %i.ds, label %.epil.preheader1650, label %_ZL10simple_maxPKdi.exit560.new

_ZL10simple_maxPKdi.exit560.new:                  ; preds = %_ZL10simple_maxPKdi.exit560, %_ZL10simple_maxPKdi.exit560.new
  %indvars.iv.i563 = phi i64 [ %indvars.iv.next.i566.3, %_ZL10simple_maxPKdi.exit560.new ], [ 1, %_ZL10simple_maxPKdi.exit560 ] ; 5 uses
  %.0911.i564 = phi double [ %.1.i565.3, %_ZL10simple_maxPKdi.exit560.new ], [ %i.xe, %_ZL10simple_maxPKdi.exit560 ] ; 2 uses
  %niter1657 = phi i64 [ %niter1657.next.3, %_ZL10simple_maxPKdi.exit560.new ], [ 0, %_ZL10simple_maxPKdi.exit560 ]
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv.i563
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !14 ; 2 uses
  %i.xh = fcmp olt double %i.xg, %.0911.i564
  %.1.i565 = select i1 %i.xh, double %i.xg, double %.0911.i564 ; 2 uses
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv.i563
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !14 ; 2 uses
  %i.xl = fcmp olt double %i.xk, %.1.i565
  %.1.i565.1 = select i1 %i.xl, double %i.xk, double %.1.i565 ; 2 uses
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv.i563
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %i.xo = load double, ptr %i.xn, align 8, !tbaa !14 ; 2 uses
  %i.xp = fcmp olt double %i.xo, %.1.i565.1
  %.1.i565.2 = select i1 %i.xp, double %i.xo, double %.1.i565.1 ; 2 uses
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv.i563
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 24
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !14 ; 2 uses
  %i.xt = fcmp olt double %i.xs, %.1.i565.2
  %.1.i565.3 = select i1 %i.xt, double %i.xs, double %.1.i565.2 ; 3 uses
  %indvars.iv.next.i566.3 = add nuw nsw i64 %indvars.iv.i563, 4 ; 2 uses
  %niter1657.next.3 = add nuw i64 %niter1657, 4   ; 2 uses
  %niter1657.ncmp.3 = icmp eq i64 %niter1657.next.3, %unroll_iter1656
  br i1 %niter1657.ncmp.3, label %_ZL10simple_minPKdi.exit568.unr-lcssa, label %_ZL10simple_maxPKdi.exit560.new, !llvm.loop !0

_ZL10simple_minPKdi.exit568.unr-lcssa:            ; preds = %_ZL10simple_maxPKdi.exit560.new
  br i1 %lcmp.mod1653.not, label %_ZL10simple_minPKdi.exit568, label %.epil.preheader1650

.epil.preheader1650:                              ; preds = %_ZL10simple_minPKdi.exit568.unr-lcssa, %_ZL10simple_maxPKdi.exit560
  %indvars.iv.i563.epil.init = phi i64 [ 1, %_ZL10simple_maxPKdi.exit560 ], [ %indvars.iv.next.i566.3, %_ZL10simple_minPKdi.exit568.unr-lcssa ]
  %.0911.i564.epil.init = phi double [ %i.xe, %_ZL10simple_maxPKdi.exit560 ], [ %.1.i565.3, %_ZL10simple_minPKdi.exit568.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1655)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader1650
  %indvars.iv.i563.epil = phi i64 [ %indvars.iv.i563.epil.init, %.epil.preheader1650 ], [ %indvars.iv.next.i566.epil, %bb.ax ] ; 2 uses
  %.0911.i564.epil = phi double [ %.0911.i564.epil.init, %.epil.preheader1650 ], [ %.1.i565.epil, %bb.ax ] ; 2 uses
  %epil.iter1652 = phi i64 [ 0, %.epil.preheader1650 ], [ %epil.iter1652.next, %bb.ax ]
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv.i563.epil
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !14 ; 2 uses
  %i.xw = fcmp olt double %i.xv, %.0911.i564.epil
  %.1.i565.epil = select i1 %i.xw, double %i.xv, double %.0911.i564.epil ; 2 uses
  %indvars.iv.next.i566.epil = add nuw nsw i64 %indvars.iv.i563.epil, 1
  %epil.iter1652.next = add i64 %epil.iter1652, 1 ; 2 uses
  %epil.iter1652.cmp.not = icmp eq i64 %epil.iter1652.next, %xtraiter1651
  br i1 %epil.iter1652.cmp.not, label %_ZL10simple_minPKdi.exit568, label %bb.ax, !llvm.loop !74

_ZL10simple_minPKdi.exit568:                      ; preds = %bb.ax, %_ZL10simple_minPKdi.exit568.unr-lcssa
  %.1.i565.lcssa = phi double [ %.1.i565.3, %_ZL10simple_minPKdi.exit568.unr-lcssa ], [ %.1.i565.epil, %bb.ax ] ; 2 uses
  %i.xx = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.xy = fcmp olt double %.1.i565.lcssa, %i.xx
  %.sroa.speculated743 = select i1 %i.xy, double %.1.i565.lcssa, double %i.xx
  store double %.sroa.speculated743, ptr %10, align 8, !tbaa !14
  %i.xz = load double, ptr %.sroa.0807.11005, align 8, !tbaa !14 ; 2 uses
  br i1 %i.dt, label %.epil.preheader1658.a, label %_ZL10simple_minPKdi.exit568.new

_ZL10simple_minPKdi.exit568.new:                  ; preds = %_ZL10simple_minPKdi.exit568, %_ZL10simple_minPKdi.exit568.new
  %indvars.iv.i571 = phi i64 [ %indvars.iv.next.i576.1, %_ZL10simple_minPKdi.exit568.new ], [ 1, %_ZL10simple_minPKdi.exit568 ] ; 3 uses
  %.01316.i572 = phi double [ %.1.i575.1, %_ZL10simple_minPKdi.exit568.new ], [ %i.xz, %_ZL10simple_minPKdi.exit568 ] ; 3 uses
  %niter1665.a = phi i64 [ %niter1665.next.1.a, %_ZL10simple_minPKdi.exit568.new ], [ 0, %_ZL10simple_minPKdi.exit568 ]
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv.i571
  %i.yb = load double, ptr %i.ya, align 8, !tbaa !14 ; 3 uses
  %i.yc = fcmp ogt double %i.yb, %.01316.i572
  %i.yd = fcmp oeq double %.01316.i572, +inf
  %or.cond.i573 = or i1 %i.yd, %i.yc
  %i.ye = fcmp une double %i.yb, +inf
  %or.cond15.i574 = and i1 %i.ye, %or.cond.i573
  %.1.i575 = select i1 %or.cond15.i574, double %i.yb, double %.01316.i572 ; 3 uses
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv.i571
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !14 ; 3 uses
  %i.yi = fcmp ogt double %i.yh, %.1.i575
  %i.yj = fcmp oeq double %.1.i575, +inf
  %or.cond.i573.1 = or i1 %i.yj, %i.yi
end_hunk_1
begin_hunk_2_@proj_trans_bounds_3D:bb.a
  %niter1708.next.3 = add nuw i64 %niter1708, 4   ; 2 uses
  %niter1708.ncmp.3 = icmp eq i64 %niter1708.next.3, %unroll_iter1707
  br i1 %niter1708.ncmp.3, label %_ZL10simple_minPKdi.exit646.unr-lcssa, label %.new1700, !llvm.loop !0

_ZL10simple_minPKdi.exit646.unr-lcssa:            ; preds = %.new1700
  br i1 %lcmp.mod1704.not, label %_ZL10simple_minPKdi.exit646, label %.epil.preheader1701

.epil.preheader1701:                              ; preds = %_ZL10simple_minPKdi.exit646.unr-lcssa, %bb.by
  %indvars.iv.i641.epil.init = phi i64 [ 1, %bb.by ], [ %indvars.iv.next.i644.3, %_ZL10simple_minPKdi.exit646.unr-lcssa ]
  %.0911.i642.epil.init = phi double [ %i.aen, %bb.by ], [ %.1.i643.3, %_ZL10simple_minPKdi.exit646.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1706)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.epil.preheader1701
  %indvars.iv.i641.epil = phi i64 [ %indvars.iv.i641.epil.init, %.epil.preheader1701 ], [ %indvars.iv.next.i644.epil, %bb.bz ] ; 2 uses
  %.0911.i642.epil = phi double [ %.0911.i642.epil.init, %.epil.preheader1701 ], [ %.1.i643.epil, %bb.bz ] ; 2 uses
  %epil.iter1703 = phi i64 [ 0, %.epil.preheader1701 ], [ %epil.iter1703.next, %bb.bz ]
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i641.epil
  %i.afe = load double, ptr %i.afd, align 8, !tbaa !14 ; 2 uses
  %i.aff = fcmp olt double %i.afe, %.0911.i642.epil
  %.1.i643.epil = select i1 %i.aff, double %i.afe, double %.0911.i642.epil ; 2 uses
  %indvars.iv.next.i644.epil = add nuw nsw i64 %indvars.iv.i641.epil, 1
  %epil.iter1703.next = add i64 %epil.iter1703, 1 ; 2 uses
  %epil.iter1703.cmp.not = icmp eq i64 %epil.iter1703.next, %xtraiter1702
  br i1 %epil.iter1703.cmp.not, label %_ZL10simple_minPKdi.exit646, label %bb.bz, !llvm.loop !77

_ZL10simple_minPKdi.exit646:                      ; preds = %bb.bz, %_ZL10simple_minPKdi.exit646.unr-lcssa
  %.1.i643.lcssa = phi double [ %.1.i643.3, %_ZL10simple_minPKdi.exit646.unr-lcssa ], [ %.1.i643.epil, %bb.bz ] ; 2 uses
  %i.afg = load double, ptr %11, align 8, !tbaa !14 ; 2 uses
  %i.afh = fcmp olt double %.1.i643.lcssa, %i.afg
  %.sroa.speculated711 = select i1 %i.afh, double %.1.i643.lcssa, double %i.afg
  store double %.sroa.speculated711, ptr %11, align 8, !tbaa !14
  br i1 %i.dz, label %.epil.preheader1709, label %_ZL10simple_minPKdi.exit646.new

_ZL10simple_minPKdi.exit646.new:                  ; preds = %_ZL10simple_minPKdi.exit646, %_ZL10simple_minPKdi.exit646.new
  %indvars.iv.i649 = phi i64 [ %indvars.iv.next.i654.1, %_ZL10simple_minPKdi.exit646.new ], [ 1, %_ZL10simple_minPKdi.exit646 ] ; 3 uses
  %.01316.i650 = phi double [ %.1.i653.1, %_ZL10simple_minPKdi.exit646.new ], [ %i.aen, %_ZL10simple_minPKdi.exit646 ] ; 3 uses
  %niter1716 = phi i64 [ %niter1716.next.1, %_ZL10simple_minPKdi.exit646.new ], [ 0, %_ZL10simple_minPKdi.exit646 ]
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i649
  %i.afj = load double, ptr %i.afi, align 8, !tbaa !14 ; 3 uses
  %i.afk = fcmp ogt double %i.afj, %.01316.i650
  %i.afl = fcmp oeq double %.01316.i650, +inf
  %or.cond.i651 = or i1 %i.afl, %i.afk
  %i.afm = fcmp une double %i.afj, +inf
  %or.cond15.i652 = and i1 %i.afm, %or.cond.i651
  %.1.i653 = select i1 %or.cond15.i652, double %i.afj, double %.01316.i650 ; 3 uses
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i649
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 8
  %i.afp = load double, ptr %i.afo, align 8, !tbaa !14 ; 3 uses
  %i.afq = fcmp ogt double %i.afp, %.1.i653
  %i.afr = fcmp oeq double %.1.i653, +inf
  %or.cond.i651.1 = or i1 %i.afr, %i.afq
  %i.afs = fcmp une double %i.afp, +inf
  %or.cond15.i652.1 = and i1 %i.afs, %or.cond.i651.1
  %.1.i653.1 = select i1 %or.cond15.i652.1, double %i.afp, double %.1.i653 ; 3 uses
  %indvars.iv.next.i654.1 = add nuw nsw i64 %indvars.iv.i649, 2 ; 2 uses
  %niter1716.next.1 = add nuw i64 %niter1716, 2   ; 2 uses
  %niter1716.ncmp.1 = icmp eq i64 %niter1716.next.1, %unroll_iter1715
  br i1 %niter1716.ncmp.1, label %_ZL10simple_maxPKdi.exit656.unr-lcssa, label %_ZL10simple_minPKdi.exit646.new, !llvm.loop !1

_ZL10simple_maxPKdi.exit656.unr-lcssa:            ; preds = %_ZL10simple_minPKdi.exit646.new
  br i1 %lcmp.mod1712.not, label %_ZL10simple_maxPKdi.exit656, label %.epil.preheader1709

.epil.preheader1709:                              ; preds = %_ZL10simple_maxPKdi.exit656.unr-lcssa, %_ZL10simple_minPKdi.exit646
  %indvars.iv.i649.epil.init = phi i64 [ 1, %_ZL10simple_minPKdi.exit646 ], [ %indvars.iv.next.i654.1, %_ZL10simple_maxPKdi.exit656.unr-lcssa ]
  %.01316.i650.epil.init = phi double [ %i.aen, %_ZL10simple_minPKdi.exit646 ], [ %.1.i653.1, %_ZL10simple_maxPKdi.exit656.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1714)
  %i.aft = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i649.epil.init
  %i.afu = load double, ptr %i.aft, align 8, !tbaa !14 ; 3 uses
  %i.afv = fcmp ogt double %i.afu, %.01316.i650.epil.init
  %i.afw = fcmp oeq double %.01316.i650.epil.init, +inf
  %or.cond.i651.epil = or i1 %i.afw, %i.afv
  %i.afx = fcmp une double %i.afu, +inf
  %or.cond15.i652.epil = and i1 %i.afx, %or.cond.i651.epil
  %.1.i653.epil = select i1 %or.cond15.i652.epil, double %i.afu, double %.01316.i650.epil.init
  br label %_ZL10simple_maxPKdi.exit656

_ZL10simple_maxPKdi.exit656:                      ; preds = %_ZL10simple_maxPKdi.exit656.unr-lcssa, %.epil.preheader1709
  %.1.i653.lcssa = phi double [ %.1.i653.1, %_ZL10simple_maxPKdi.exit656.unr-lcssa ], [ %.1.i653.epil, %.epil.preheader1709 ] ; 2 uses
  %i.afy = load double, ptr %14, align 8, !tbaa !14 ; 2 uses
  %i.afz = fcmp olt double %i.afy, %.1.i653.lcssa
  %.sroa.speculated = select i1 %i.afz, double %.1.i653.lcssa, double %i.afy
  store double %.sroa.speculated, ptr %14, align 8, !tbaa !14
  br i1 %or.cond8, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZL10simple_maxPKdi.exit656
  %i.aga = load double, ptr %9, align 8, !tbaa !14
  %i.agb = load double, ptr %10, align 8, !tbaa !14
  store double %i.agb, ptr %9, align 8, !tbaa !14
  store double %i.aga, ptr %10, align 8, !tbaa !14
  %i.agc = load double, ptr %12, align 8, !tbaa !14
  %i.agd = load double, ptr %13, align 8, !tbaa !14
  store double %i.agd, ptr %12, align 8, !tbaa !14
  store double %i.agc, ptr %13, align 8, !tbaa !14
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_ZL10simple_maxPKdi.exit656
  br i1 %.0410, label %.loopexit, label %.preheader975.preheader

.preheader975.preheader:                          ; preds = %bb.cb
  %i.age = sub i64 %.sroa.0845.28901188, %.sroa.0807.28971187
  %diff.check = icmp ugt i64 %i.age, -32
  %i.agf = sub i64 %.sroa.0845.28901188, %i.aw
  %diff.check1189 = icmp ugt i64 %i.agf, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1189
  %i.agg = sub i64 %.sroa.0807.28971187, %i.aw
  %diff.check1190 = icmp ugt i64 %i.agg, -32
  %conflict.rdx1191 = or i1 %conflict.rdx, %diff.check1190
  %broadcast.splatinsert1196 = insertelement <2 x double> poison, double %i.sr, i64 0
  %broadcast.splat1197 = shufflevector <2 x double> %broadcast.splatinsert1196, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader975

.preheader975:                                    ; preds = %.preheader975.preheader, %._crit_edge1001
  %.04091002 = phi i32 [ %i.aho, %._crit_edge1001 ], [ 1, %.preheader975.preheader ] ; 2 uses
  %i.agh = uitofp nneg i32 %.04091002 to double
  %i.agi = call double @llvm.fmuladd.f64(double %i.agh, double %i.bu, double %4) ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx1191
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader975
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.agi, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.agj = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.agk = uitofp nneg <2 x i32> %step.add to <2 x double>
  %i.agl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agj, <2 x double> %broadcast.splat1193, <2 x double> %broadcast.splat1195)
  %i.agm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agk, <2 x double> %broadcast.splat1193, <2 x double> %broadcast.splat1195)
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %index ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 16
  store <2 x double> %i.agl, ptr %i.agn, align 8, !tbaa !14
  store <2 x double> %i.agm, ptr %i.ago, align 8, !tbaa !14
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %index ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 16
  store <2 x double> %broadcast.splat, ptr %i.agp, align 8, !tbaa !14
  store <2 x double> %broadcast.splat, ptr %i.agq, align 8, !tbaa !14
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 16
  store <2 x double> %broadcast.splat1197, ptr %i.agr, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1197, ptr %i.ags, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.agt = icmp eq i64 %index.next, %n.vec
  br i1 %i.agt, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge997, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader975, %middle.block
  %indvars.iv1074.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader975 ] ; 7 uses
  br i1 %lcmp.mod1718.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.agu = trunc nuw nsw i64 %indvars.iv1074.ph to i32
  %i.agv = uitofp nneg i32 %i.agu to double
  %i.agw = call double @llvm.fmuladd.f64(double %i.agv, double %.04321141, double %3)
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv1074.ph
  store double %i.agw, ptr %i.agx, align 8, !tbaa !14
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv1074.ph
  store double %i.agi, ptr %i.agy, align 8, !tbaa !14
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1074.ph
  store double %i.sr, ptr %i.agz, align 8, !tbaa !14
  %indvars.iv.next1075.prol = or disjoint i64 %indvars.iv1074.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1074.unr = phi i64 [ %indvars.iv1074.ph, %scalar.ph.preheader ], [ %indvars.iv.next1075.prol, %scalar.ph.prol ]
  %i.aha = icmp eq i64 %indvars.iv1074.ph, %i.dj
  br i1 %i.aha, label %._crit_edge997, label %scalar.ph

._crit_edge997:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ahb = invoke i64 @proj_trans_generic(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %.sroa.0845.2890, i64 noundef 8, i64 noundef %i.by, ptr noundef nonnull %.sroa.0807.2897, i64 noundef 8, i64 noundef %i.by, ptr noundef nonnull %i.aj, i64 noundef 8, i64 noundef %i.by, ptr noundef null, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph1000 unwind label %.thread953.loopexit ; 0 uses

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075.1, %scalar.ph ], [ %indvars.iv1074.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ahc = trunc nuw nsw i64 %indvars.iv1074 to i32
  %i.ahd = uitofp nneg i32 %i.ahc to double
  %i.ahe = call double @llvm.fmuladd.f64(double %i.ahd, double %.04321141, double %3)
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv1074
  store double %i.ahe, ptr %i.ahf, align 8, !tbaa !14
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv1074
  store double %i.agi, ptr %i.ahg, align 8, !tbaa !14
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1074
  store double %i.sr, ptr %i.ahh, align 8, !tbaa !14
  %indvars.iv.next1075 = add nuw nsw i64 %indvars.iv1074, 1 ; 4 uses
  %i.ahi = trunc nuw nsw i64 %indvars.iv.next1075 to i32
  %i.ahj = uitofp nneg i32 %i.ahi to double
  %i.ahk = call double @llvm.fmuladd.f64(double %i.ahj, double %.04321141, double %3)
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv.next1075
  store double %i.ahk, ptr %i.ahl, align 8, !tbaa !14
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv.next1075
  store double %i.agi, ptr %i.ahm, align 8, !tbaa !14
  %i.ahn = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next1075
  store double %i.sr, ptr %i.ahn, align 8, !tbaa !14
  %indvars.iv.next1075.1 = add nuw nsw i64 %indvars.iv1074, 2 ; 2 uses
  %exitcond1079.not.1 = icmp eq i64 %indvars.iv.next1075.1, %wide.trip.count1078
  br i1 %exitcond1079.not.1, label %._crit_edge997, label %scalar.ph, !llvm.loop !79

._crit_edge1001:                                  ; preds = %bb.ce
  %i.aho = add nuw nsw i32 %.04091002, 1          ; 2 uses
  %exitcond1086.not = icmp eq i32 %i.aho, %18
  br i1 %exitcond1086.not, label %.loopexit, label %.preheader975, !llvm.loop !80

.lr.ph1000:                                       ; preds = %._crit_edge997, %bb.ce
  %indvars.iv1080 = phi i64 [ %indvars.iv.next1081, %bb.ce ], [ 0, %._crit_edge997 ] ; 4 uses
  %i.ahp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv1080 ; 2 uses
  %i.ahq = load double, ptr %i.ahp, align 8, !tbaa !14 ; 3 uses
  %i.ahr = call double @llvm.fabs.f64(double %i.ahq)
  %i.ahs = fcmp ueq double %i.ahr, +inf
  br i1 %i.ahs, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph1000
  %i.aht = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv1080 ; 3 uses
  %i.ahu = load double, ptr %i.aht, align 8, !tbaa !14
  %i.ahv = call double @llvm.fabs.f64(double %i.ahu)
  %i.ahw = fcmp ueq double %i.ahv, +inf
  br i1 %i.ahw, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ahx = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.ahy = fcmp olt double %i.ahq, %i.ahx
  %i.ahz = select i1 %i.ahy, double %i.ahq, double %i.ahx
  store double %i.ahz, ptr %9, align 8, !tbaa !14
  %i.aia = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.aib = load double, ptr %i.ahp, align 8, !tbaa !14 ; 2 uses
  %i.aic = fcmp olt double %i.aia, %i.aib
  %i.aid = select i1 %i.aic, double %i.aib, double %i.aia
  store double %i.aid, ptr %12, align 8, !tbaa !14
  %i.aie = load double, ptr %i.aht, align 8, !tbaa !14 ; 2 uses
  %i.aif = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.aig = fcmp olt double %i.aie, %i.aif
  %i.aih = select i1 %i.aig, double %i.aie, double %i.aif
  store double %i.aih, ptr %10, align 8, !tbaa !14
  %i.aii = load double, ptr %13, align 8, !tbaa !14 ; 2 uses
  %i.aij = load double, ptr %i.aht, align 8, !tbaa !14 ; 2 uses
  %i.aik = fcmp olt double %i.aii, %i.aij
  %i.ail = select i1 %i.aik, double %i.aij, double %i.aii
  store double %i.ail, ptr %13, align 8, !tbaa !14
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1080
  %i.ain = load double, ptr %i.aim, align 8, !tbaa !14 ; 4 uses
  %i.aio = load double, ptr %11, align 8, !tbaa !14 ; 2 uses
  %i.aip = fcmp olt double %i.ain, %i.aio
  %i.aiq = select i1 %i.aip, double %i.ain, double %i.aio
  store double %i.aiq, ptr %11, align 8, !tbaa !14
  %i.air = load double, ptr %14, align 8, !tbaa !14 ; 2 uses
  %i.ais = fcmp olt double %i.air, %i.ain
  %i.ait = select i1 %i.ais, double %i.ain, double %i.air
  store double %i.ait, ptr %14, align 8, !tbaa !14
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph1000, %bb.cc, %bb.cd
  %indvars.iv.next1081 = add nuw nsw i64 %indvars.iv1080, 1 ; 2 uses
  %exitcond1084.not = icmp eq i64 %indvars.iv.next1081, %wide.trip.count1078
  br i1 %exitcond1084.not, label %._crit_edge1001, label %.lr.ph1000, !llvm.loop !81

.loopexit:                                        ; preds = %._crit_edge1001, %bb.cb
  br i1 %i.sq, label %.lr.ph.preheader, label %.loopexit979, !llvm.loop !82

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
  %i.aiu = ptrtoint ptr %.sroa.45.4917 to i64
  %i.aiv = ptrtoint ptr %.sroa.0807.4915 to i64
  %i.aiw = sub i64 %i.aiu, %i.aiv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0807.4915, i64 noundef %i.aiw) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit665

_ZNSt6vectorIdSaIdEED2Ev.exit665:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.cf
  %.not.i.i.i666 = icmp eq ptr %.sroa.0845.4911, null
  br i1 %.not.i.i.i666, label %_ZNSt6vectorIdSaIdEED2Ev.exit667, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit665
  %i.aix = ptrtoint ptr %.sroa.43.4913 to i64
  %i.aiy = ptrtoint ptr %.sroa.0845.4911 to i64
  %i.aiz = sub i64 %i.aix, %i.aiy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0845.4911, i64 noundef %i.aiz) #19
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
  %i.aja = ptrtoint ptr %.sroa.45.59341154 to i64
  %i.ajb = ptrtoint ptr %.sroa.0807.59331155 to i64
  %i.ajc = sub i64 %i.aja, %i.ajb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0807.59331155, i64 noundef %i.ajc) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit671

_ZNSt6vectorIdSaIdEED2Ev.exit671:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit669, %bb.ci
  %.sroa.0845.59311159 = phi ptr [ %.sroa.0845.0, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ], [ %.sroa.0845.59311158, %bb.ci ] ; 3 uses
  %.sroa.43.59321157 = phi ptr [ %.sroa.43.0, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ], [ %.sroa.43.59321156, %bb.ci ]
  %.merged9351153 = phi { ptr, i32 } [ %.merged935, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ], [ %.merged9351152, %bb.ci ]
  %.not.i.i.i672 = icmp eq ptr %.sroa.0845.59311159, null
  br i1 %.not.i.i.i672, label %_ZNSt6vectorIdSaIdEED2Ev.exit673, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit671
  %i.ajd = ptrtoint ptr %.sroa.43.59321157 to i64
  %i.aje = ptrtoint ptr %.sroa.0845.59311159 to i64
  %i.ajf = sub i64 %i.ajd, %i.aje
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0845.59311159, i64 noundef %i.ajf) #19
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
  %i.ajg = landingpad { ptr, i32 }
          catch ptr null
  %i.ajh = extractvalue { ptr, i32 } %i.ajg, 0
  call void @__clang_call_terminate(ptr %i.ajh) #20
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

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(none) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { noreturn }
end_hunk_2
