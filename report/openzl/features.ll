Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/features?download=true
inline.NumInlined: 74
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@calcIntegerFeatures:bb.a
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i290 = icmp eq ptr %i.qh, null
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !56 ; 2 uses
  br i1 %.not.i.i.i290, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qk = call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.qh, ptr noundef %i.qj, i64 noundef %i.qf) #10
  br label %GenericVector_reallocData.exit.i.i291

bb.du:                                            ; preds = %bb.ds
  %i.ql = call ptr @ZL_realloc(ptr noundef %i.qj, i64 noundef %i.qf) #10
  br label %GenericVector_reallocData.exit.i.i291

GenericVector_reallocData.exit.i.i291:            ; preds = %bb.du, %bb.dt
  %.0.i28.i.i292 = phi ptr [ %i.qk, %bb.dt ], [ %i.ql, %bb.du ] ; 2 uses
  %.not26.i.i293 = icmp eq ptr %.0.i28.i.i292, null
  br i1 %.not26.i.i293, label %GenericVector_reallocData.exit._crit_edge.i.i295, label %.thread21.i294

GenericVector_reallocData.exit._crit_edge.i.i295: ; preds = %GenericVector_reallocData.exit.i.i291
  %.pre.i19.i296 = load i32, ptr %i.da, align 4, !tbaa !53 ; 2 uses
  %i.qm = zext i32 %.pre.i19.i296 to i64
  %.not23.i297 = icmp samesign ugt i64 %.010.i.i283, %i.qm
  %.pre1524 = load i32, ptr %0, align 8, !tbaa !52 ; 2 uses
  br i1 %.not23.i297, label %GenericVector_pushBack.exit298, label %.critedge.i285

.thread21.i294:                                   ; preds = %GenericVector_reallocData.exit.i.i291
  store ptr %.0.i28.i.i292, ptr %i.qi, align 8, !tbaa !56
  %i.qn = trunc nuw i64 %spec.select.i18.i289 to i32
  store i32 %i.qn, ptr %i.da, align 4, !tbaa !53
  %.pre1523 = load i32, ptr %0, align 8, !tbaa !52
  br label %.critedge.i285

.critedge.i285:                                   ; preds = %.thread21.i294, %GenericVector_reallocData.exit._crit_edge.i.i295, %bb.dn, %GenericVector_pushBack.exit275
  %i.qo = phi i32 [ %.pre1523, %.thread21.i294 ], [ %.pre1524, %GenericVector_reallocData.exit._crit_edge.i.i295 ], [ %i.pm, %bb.dn ], [ %i.pm, %GenericVector_pushBack.exit275 ]
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !56
  %i.qr = zext i32 %i.qo to i64
  %i.qs = shl nuw nsw i64 %i.qr, 4
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qs ; 3 uses
  store ptr @.str.19, ptr %i.qt, align 1
  %.sroa.41192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  store float %.sroa.91223.0, ptr %.sroa.41192.0..sroa_idx, align 1
  %.sroa.51193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qt, i64 12
  store i32 0, ptr %.sroa.51193.0..sroa_idx, align 1
  %i.qu = load i32, ptr %0, align 8, !tbaa !52
  %i.qv = add i32 %i.qu, 1                        ; 2 uses
  store i32 %i.qv, ptr %0, align 8, !tbaa !52
  %.pr1233.pre = load i32, ptr %i.da, align 4, !tbaa !53
  br label %GenericVector_pushBack.exit298

GenericVector_pushBack.exit298:                   ; preds = %GenericVector_nextCapacity.exit.i277, %.critedge.i285, %GenericVector_reallocData.exit._crit_edge.i.i295
  %i.qw = phi i32 [ %.pre1524, %GenericVector_reallocData.exit._crit_edge.i.i295 ], [ %i.pm, %GenericVector_nextCapacity.exit.i277 ], [ %i.qv, %.critedge.i285 ]
  %i.qx = phi i32 [ %.pre.i19.i296, %GenericVector_reallocData.exit._crit_edge.i.i295 ], [ %i.pn, %GenericVector_nextCapacity.exit.i277 ], [ %.pr1233.pre, %.critedge.i285 ] ; 8 uses
  %.1.i286 = phi i1 [ true, %GenericVector_reallocData.exit._crit_edge.i.i295 ], [ true, %GenericVector_nextCapacity.exit.i277 ], [ %.1.i263, %.critedge.i285 ]
  %.not.i299 = icmp ult i32 %i.qw, %i.qx
  br i1 %.not.i299, label %.critedge.i308, label %bb.dv

bb.dv:                                            ; preds = %GenericVector_pushBack.exit298
  %i.qy = icmp eq i32 %i.qx, 0                    ; 2 uses
  br i1 %i.qy, label %GenericVector_nextCapacity.exit.i300, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.qz = icmp ugt i32 %i.qx, 511
  br i1 %i.qz, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ra = zext i32 %i.qx to i64                   ; 2 uses
  %i.rb = lshr i64 %i.ra, 2
  %i.rc = add nuw nsw i64 %i.rb, %i.ra
  br label %GenericVector_nextCapacity.exit.i300

bb.dy:                                            ; preds = %bb.dw
  %i.rd = shl nuw nsw i32 %i.qx, 1
  %i.re = zext nneg i32 %i.rd to i64
  br label %GenericVector_nextCapacity.exit.i300

GenericVector_nextCapacity.exit.i300:             ; preds = %bb.dy, %bb.dx, %bb.dv
  %.0.i.i301 = phi i64 [ %i.re, %bb.dy ], [ %i.rc, %bb.dx ], [ 4, %bb.dv ] ; 2 uses
  %i.rf = zext i32 %i.qx to i64                   ; 6 uses
  %i.rg = icmp samesign ult i64 %.0.i.i301, %i.rf
  %.phi.trans.insert.i.i302 = getelementptr i8, ptr %0, i64 8
  %.val.pre.i.i303 = load i32, ptr %.phi.trans.insert.i.i302, align 8, !tbaa !54
  %.pre.i.i304 = zext i32 %.val.pre.i.i303 to i64 ; 4 uses
  %spec.select.i.i305 = call i64 @llvm.umin.i64(i64 %.0.i.i301, i64 %.pre.i.i304)
  %.010.i.i306 = select i1 %i.rg, i64 %.pre.i.i304, i64 %spec.select.i.i305 ; 4 uses
  %i.rh = icmp eq i64 %.010.i.i306, %i.rf
  br i1 %i.rh, label %GenericVector_pushBack.exit321, label %bb.dz

bb.dz:                                            ; preds = %GenericVector_nextCapacity.exit.i300
  %.not.i.i307 = icmp samesign ugt i64 %.010.i.i306, %i.rf
  br i1 %.not.i.i307, label %bb.ea, label %.critedge.i308

bb.ea:                                            ; preds = %bb.dz
  br i1 %i.qy, label %bb.ee, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ri = icmp ugt i32 %i.qx, 511
  br i1 %i.ri, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.rj = lshr i64 %i.rf, 2
  %i.rk = add nuw nsw i64 %i.rj, %i.rf
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.rl = shl nuw nsw i32 %i.qx, 1
  %i.rm = zext nneg i32 %i.rl to i64
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.ea
  %.0.i.i.i310 = phi i64 [ %i.rm, %bb.ed ], [ %i.rk, %bb.ec ], [ 4, %bb.ea ] ; 2 uses
  %i.rn = icmp samesign ult i64 %.0.i.i.i310, %i.rf
  %spec.select.i.i.i311 = call i64 @llvm.umin.i64(i64 %.0.i.i.i310, i64 %.pre.i.i304)
  %i.ro = call i64 @llvm.umax.i64(i64 %.010.i.i306, i64 %spec.select.i.i.i311)
  %spec.select.i18.i312 = select i1 %i.rn, i64 %.pre.i.i304, i64 %i.ro ; 2 uses
  %i.rp = shl nuw nsw i64 %spec.select.i18.i312, 4 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i313 = icmp eq ptr %i.rr, null
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !56 ; 2 uses
  br i1 %.not.i.i.i313, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ru = call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.rr, ptr noundef %i.rt, i64 noundef %i.rp) #10
  br label %GenericVector_reallocData.exit.i.i314

bb.eg:                                            ; preds = %bb.ee
  %i.rv = call ptr @ZL_realloc(ptr noundef %i.rt, i64 noundef %i.rp) #10
  br label %GenericVector_reallocData.exit.i.i314

GenericVector_reallocData.exit.i.i314:            ; preds = %bb.eg, %bb.ef
  %.0.i28.i.i315 = phi ptr [ %i.ru, %bb.ef ], [ %i.rv, %bb.eg ] ; 2 uses
  %.not26.i.i316 = icmp eq ptr %.0.i28.i.i315, null
  br i1 %.not26.i.i316, label %GenericVector_reallocData.exit._crit_edge.i.i318, label %.thread21.i317

GenericVector_reallocData.exit._crit_edge.i.i318: ; preds = %GenericVector_reallocData.exit.i.i314
  %.pre.i19.i319 = load i32, ptr %i.da, align 4, !tbaa !53
  %i.rw = zext i32 %.pre.i19.i319 to i64
  %.not23.i320 = icmp samesign ugt i64 %.010.i.i306, %i.rw
  br i1 %.not23.i320, label %GenericVector_pushBack.exit321, label %.critedge.i308

.thread21.i317:                                   ; preds = %GenericVector_reallocData.exit.i.i314
  store ptr %.0.i28.i.i315, ptr %i.rs, align 8, !tbaa !56
  %i.rx = trunc nuw i64 %spec.select.i18.i312 to i32
  store i32 %i.rx, ptr %i.da, align 4, !tbaa !53
  br label %.critedge.i308

.critedge.i308:                                   ; preds = %.thread21.i317, %GenericVector_reallocData.exit._crit_edge.i.i318, %bb.dz, %GenericVector_pushBack.exit298
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !56
  %i.sa = load i32, ptr %0, align 8, !tbaa !52
  %i.sb = zext i32 %i.sa to i64
  %i.sc = shl nuw nsw i64 %i.sb, 4
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sc ; 3 uses
  store ptr @.str.20, ptr %i.sd, align 1
  %.sroa.41189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  store float %.sroa.111224.0, ptr %.sroa.41189.0..sroa_idx, align 1
  %.sroa.51190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sd, i64 12
  store i32 0, ptr %.sroa.51190.0..sroa_idx, align 1
  %i.se = load i32, ptr %0, align 8, !tbaa !52
  %i.sf = add i32 %i.se, 1
  store i32 %i.sf, ptr %0, align 8, !tbaa !52
  br label %GenericVector_pushBack.exit321

GenericVector_pushBack.exit321:                   ; preds = %GenericVector_nextCapacity.exit.i300, %GenericVector_reallocData.exit._crit_edge.i.i318, %.critedge.i308
  %.1.i309 = phi i1 [ %.1.i286, %.critedge.i308 ], [ true, %GenericVector_reallocData.exit._crit_edge.i.i318 ], [ true, %GenericVector_nextCapacity.exit.i300 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.tr

bb.eh:                                            ; preds = %.split
  %i.sg = tail call { i64, i64 } @ZL_computeUnsignedRange(ptr noundef %1, i64 noundef %3, i64 noundef 2) #10 ; 2 uses
  %i.sh = extractvalue { i64, i64 } %i.sg, 0
  %i.si = extractvalue { i64, i64 } %i.sg, 1
  %i.sj = sub i64 %i.si, %i.sh                    ; 2 uses
  %i.sk = tail call i64 @llvm.uadd.sat.i64(i64 %i.sj, i64 1)
  %i.sl = tail call i64 @llvm.umin.i64(i64 %i.sk, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @ZL_estimateCardinality_fixed(ptr dead_on_unwind nonnull writable sret(%struct.ZL_CardinalityEstimate) align 8 %5, ptr noundef %1, i64 noundef %3, i64 noundef 2, i64 noundef %i.sl) #10
  %i.sm = icmp eq i64 %3, 0
  br i1 %i.sm, label %calcMoments.exit, label %.preheader1270

.preheader1270:                                   ; preds = %bb.eh
  %i.sn = icmp ugt i64 %3, 2
  br i1 %i.sn, label %.lr.ph1322.preheader, label %._crit_edge1323

.lr.ph1322.preheader:                             ; preds = %.preheader1270
  %i.so = add i64 %3, -3                          ; 2 uses
  %i.sp = lshr i64 %i.so, 1
  %i.sq = add nuw i64 %i.sp, 1                    ; 2 uses
  %xtraiter1841 = and i64 %i.sq, 3                ; 3 uses
  %i.sr = icmp ult i64 %i.so, 6
  br i1 %i.sr, label %.lr.ph1322.epil.preheader, label %.lr.ph1322.preheader.new

.lr.ph1322.preheader.new:                         ; preds = %.lr.ph1322.preheader
  %unroll_iter1850 = and i64 %i.sq, -4
  br label %.lr.ph1322

.lr.ph1322:                                       ; preds = %.lr.ph1322, %.lr.ph1322.preheader.new
  %8 = phi i64 [ 2, %.lr.ph1322.preheader.new ], [ %i.tp, %.lr.ph1322 ] ; 5 uses
  %.027.i631321 = phi i64 [ 0, %.lr.ph1322.preheader.new ], [ %9, %.lr.ph1322 ]
  %i.ss = phi <2 x double> [ zeroinitializer, %.lr.ph1322.preheader.new ], [ %i.to, %.lr.ph1322 ]
  %niter1851 = phi i64 [ 0, %.lr.ph1322.preheader.new ], [ %niter1851.next.3, %.lr.ph1322 ]
  %i.st = shl i64 %.027.i631321, 1
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 %i.st
  %i.sv = load <2 x i16>, ptr %i.su, align 1
  %i.sw = uitofp <2 x i16> %i.sv to <2 x double>
  %i.sx = fadd <2 x double> %i.ss, %i.sw
  %i.sy = shl i64 %8, 1
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 %i.sy
  %i.ta = load <2 x i16>, ptr %i.sz, align 1
  %i.tb = uitofp <2 x i16> %i.ta to <2 x double>
  %i.tc = fadd <2 x double> %i.sx, %i.tb
  %i.td = shl i64 %8, 1
  %i.te = getelementptr i8, ptr %1, i64 %i.td
  %i.tf = getelementptr i8, ptr %i.te, i64 4
  %i.tg = load <2 x i16>, ptr %i.tf, align 1
  %i.th = uitofp <2 x i16> %i.tg to <2 x double>
  %i.ti = fadd <2 x double> %i.tc, %i.th
  %9 = add nuw i64 %8, 6                          ; 2 uses
  %i.tj = shl i64 %8, 1
  %i.tk = getelementptr i8, ptr %1, i64 %i.tj
  %i.tl = getelementptr i8, ptr %i.tk, i64 8
  %i.tm = load <2 x i16>, ptr %i.tl, align 1
  %i.tn = uitofp <2 x i16> %i.tm to <2 x double>
  %i.to = fadd <2 x double> %i.ti, %i.tn          ; 3 uses
  %i.tp = add nuw i64 %8, 8                       ; 2 uses
  %niter1851.next.3 = add i64 %niter1851, 4       ; 2 uses
  %niter1851.ncmp.3.not = icmp eq i64 %niter1851.next.3, %unroll_iter1850
  br i1 %niter1851.ncmp.3.not, label %._crit_edge1323.loopexit.unr-lcssa, label %.lr.ph1322, !llvm.loop !24

._crit_edge1323.loopexit.unr-lcssa:               ; preds = %.lr.ph1322
  %lcmp.mod1847.not = icmp eq i64 %xtraiter1841, 0
  br i1 %lcmp.mod1847.not, label %._crit_edge1323.loopexit, label %.lr.ph1322.epil.preheader

.lr.ph1322.epil.preheader:                        ; preds = %._crit_edge1323.loopexit.unr-lcssa, %.lr.ph1322.preheader
  %.epil.init1844 = phi i64 [ 2, %.lr.ph1322.preheader ], [ %i.tp, %._crit_edge1323.loopexit.unr-lcssa ]
  %.027.i631321.epil.init = phi i64 [ 0, %.lr.ph1322.preheader ], [ %9, %._crit_edge1323.loopexit.unr-lcssa ]
  %.epil.init1846 = phi <2 x double> [ zeroinitializer, %.lr.ph1322.preheader ], [ %i.to, %._crit_edge1323.loopexit.unr-lcssa ]
  %lcmp.mod1849 = icmp ne i64 %xtraiter1841, 0
  call void @llvm.assume(i1 %lcmp.mod1849)
  br label %.lr.ph1322.epil

.lr.ph1322.epil:                                  ; preds = %.lr.ph1322.epil, %.lr.ph1322.epil.preheader
  %10 = phi i64 [ %i.tw, %.lr.ph1322.epil ], [ %.epil.init1844, %.lr.ph1322.epil.preheader ] ; 2 uses
  %.027.i631321.epil = phi i64 [ %10, %.lr.ph1322.epil ], [ %.027.i631321.epil.init, %.lr.ph1322.epil.preheader ]
  %i.tq = phi <2 x double> [ %i.tv, %.lr.ph1322.epil ], [ %.epil.init1846, %.lr.ph1322.epil.preheader ]
  %epil.iter1842 = phi i64 [ %epil.iter1842.next, %.lr.ph1322.epil ], [ 0, %.lr.ph1322.epil.preheader ]
  %i.tr = shl i64 %.027.i631321.epil, 1
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 %i.tr
  %i.tt = load <2 x i16>, ptr %i.ts, align 1
  %i.tu = uitofp <2 x i16> %i.tt to <2 x double>
  %i.tv = fadd <2 x double> %i.tq, %i.tu          ; 2 uses
  %i.tw = add nuw i64 %10, 2
  %epil.iter1842.next = add i64 %epil.iter1842, 1 ; 2 uses
  %epil.iter1842.cmp.not = icmp eq i64 %epil.iter1842.next, %xtraiter1841
  br i1 %epil.iter1842.cmp.not, label %._crit_edge1323.loopexit, label %.lr.ph1322.epil, !llvm.loop !25

._crit_edge1323.loopexit:                         ; preds = %.lr.ph1322.epil, %._crit_edge1323.loopexit.unr-lcssa
  %.lcssa1792.a = phi <2 x double> [ %i.to, %._crit_edge1323.loopexit.unr-lcssa ], [ %i.tv, %.lr.ph1322.epil ] ; 2 uses
  %i.tx = add i64 %3, -3
  %i.ty = and i64 %i.tx, -2
  %i.tz = add nuw i64 %i.ty, 2
  %shift = shufflevector <2 x double> %.lcssa1792.a, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.lcssa1792.a, %shift
  %i.ua = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %._crit_edge1323

._crit_edge1323:                                  ; preds = %._crit_edge1323.loopexit, %.preheader1270
  %.027.i63.lcssa = phi i64 [ 0, %.preheader1270 ], [ %i.tz, %._crit_edge1323.loopexit ] ; 5 uses
  %i.ub = phi double [ 0.000000e+00, %.preheader1270 ], [ %i.ua, %._crit_edge1323.loopexit ] ; 3 uses
  %i.uc = icmp ult i64 %.027.i63.lcssa, %3
  br i1 %i.uc, label %.lr.ph1330.preheader, label %calcMean.exit67

.lr.ph1330.preheader:                             ; preds = %._crit_edge1323
  %i.ud = sub nuw i64 %3, %.027.i63.lcssa
  %xtraiter1852 = and i64 %i.ud, 3                ; 2 uses
  %lcmp.mod1853.not = icmp eq i64 %xtraiter1852, 0
  br i1 %lcmp.mod1853.not, label %.lr.ph1330.prol.loopexit, label %.lr.ph1330.prol

.lr.ph1330.prol:                                  ; preds = %.lr.ph1330.preheader, %.lr.ph1330.prol
  %.0.i651328.prol = phi double [ %i.uh, %.lr.ph1330.prol ], [ %i.ub, %.lr.ph1330.preheader ]
  %.1.i641327.prol = phi i64 [ %i.ui, %.lr.ph1330.prol ], [ %.027.i63.lcssa, %.lr.ph1330.preheader ] ; 2 uses
  %prol.iter1854 = phi i64 [ %prol.iter1854.next, %.lr.ph1330.prol ], [ 0, %.lr.ph1330.preheader ]
  %i.ue = shl i64 %.1.i641327.prol, 1
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ue
  %.val80.prol = load i16, ptr %i.uf, align 1
  %i.ug = uitofp i16 %.val80.prol to double
  %i.uh = fadd double %.0.i651328.prol, %i.ug     ; 3 uses
  %i.ui = add nuw i64 %.1.i641327.prol, 1         ; 2 uses
  %prol.iter1854.next = add i64 %prol.iter1854, 1 ; 2 uses
  %prol.iter1854.cmp.not = icmp eq i64 %prol.iter1854.next, %xtraiter1852
  br i1 %prol.iter1854.cmp.not, label %.lr.ph1330.prol.loopexit, label %.lr.ph1330.prol, !llvm.loop !26

.lr.ph1330.prol.loopexit:                         ; preds = %.lr.ph1330.prol, %.lr.ph1330.preheader
  %.lcssa1791.unr = phi double [ poison, %.lr.ph1330.preheader ], [ %i.uh, %.lr.ph1330.prol ]
  %.0.i651328.unr = phi double [ %i.ub, %.lr.ph1330.preheader ], [ %i.uh, %.lr.ph1330.prol ]
  %.1.i641327.unr = phi i64 [ %.027.i63.lcssa, %.lr.ph1330.preheader ], [ %i.ui, %.lr.ph1330.prol ]
  %i.uj = sub i64 %.027.i63.lcssa, %3
  %i.uk = icmp ugt i64 %i.uj, -4
  br i1 %i.uk, label %calcMean.exit67, label %.lr.ph1330

.lr.ph1330:                                       ; preds = %.lr.ph1330.prol.loopexit, %.lr.ph1330
  %.0.i651328 = phi double [ %i.vd, %.lr.ph1330 ], [ %.0.i651328.unr, %.lr.ph1330.prol.loopexit ]
  %.1.i641327 = phi i64 [ %i.ve, %.lr.ph1330 ], [ %.1.i641327.unr, %.lr.ph1330.prol.loopexit ] ; 5 uses
  %i.ul = shl i64 %.1.i641327, 1
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 %i.ul
  %.val80 = load i16, ptr %i.um, align 1
  %i.un = uitofp i16 %.val80 to double
  %i.uo = fadd double %.0.i651328, %i.un
  %i.up = shl i64 %.1.i641327, 1
  %i.uq = getelementptr i8, ptr %1, i64 %i.up
  %i.ur = getelementptr i8, ptr %i.uq, i64 2
  %.val80.1 = load i16, ptr %i.ur, align 1
  %i.us = uitofp i16 %.val80.1 to double
  %i.ut = fadd double %i.uo, %i.us
  %i.uu = shl i64 %.1.i641327, 1
  %i.uv = getelementptr i8, ptr %1, i64 %i.uu
  %i.uw = getelementptr i8, ptr %i.uv, i64 4
  %.val80.2 = load i16, ptr %i.uw, align 1
  %i.ux = uitofp i16 %.val80.2 to double
  %i.uy = fadd double %i.ut, %i.ux
  %i.uz = shl i64 %.1.i641327, 1
  %i.va = getelementptr i8, ptr %1, i64 %i.uz
  %i.vb = getelementptr i8, ptr %i.va, i64 6
  %.val80.3 = load i16, ptr %i.vb, align 1
  %i.vc = uitofp i16 %.val80.3 to double
  %i.vd = fadd double %i.uy, %i.vc                ; 2 uses
  %i.ve = add nuw i64 %.1.i641327, 4              ; 2 uses
  %exitcond1364.not.3 = icmp eq i64 %i.ve, %3
  br i1 %exitcond1364.not.3, label %calcMean.exit67, label %.lr.ph1330, !llvm.loop !27

calcMean.exit67:                                  ; preds = %.lr.ph1330.prol.loopexit, %.lr.ph1330, %._crit_edge1323
  %.0.i65.lcssa = phi double [ %i.ub, %._crit_edge1323 ], [ %.lcssa1791.unr, %.lr.ph1330.prol.loopexit ], [ %i.vd, %.lr.ph1330 ]
  %i.vf = uitofp i64 %3 to double                 ; 3 uses
  %i.vg = fdiv double %.0.i65.lcssa, %i.vf        ; 5 uses
  %i.vh = icmp eq i64 %3, 1
  br i1 %i.vh, label %calcMoments.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %calcMean.exit67
  %xtraiter1855 = and i64 %3, 1
  %unroll_iter1863 = and i64 %3, -2
  br label %.preheader

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod1859.not = icmp eq i64 %xtraiter1855, 0
  br i1 %lcmp.mod1859.not, label %bb.ei, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa
  %lcmp.mod1862 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod1862)
  %i.vi = shl i64 %i.xp, 1
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 %i.vi
  %.val.epil = load i16, ptr %i.vj, align 1
  %i.vk = uitofp i16 %.val.epil to double
  %i.vl = fsub double %i.vk, %i.vg                ; 6 uses
  %i.vm = call double @llvm.fmuladd.f64(double %i.vl, double %i.vl, double %i.xh)
  %i.vn = fmul double %i.vl, %i.vl                ; 2 uses
  %i.vo = fmul double %i.vl, %i.vn
  %i.vp = insertelement <2 x double> poison, double %i.vn, i64 0
  %i.vq = insertelement <2 x double> %i.vp, double %i.vo, i64 1
  %i.vr = insertelement <2 x double> poison, double %i.vl, i64 0
  %i.vs = shufflevector <2 x double> %i.vr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vq, <2 x double> %i.vs, <2 x double> %i.xo)
  br label %bb.ei

bb.ei:                                            ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %.lcssa1790 = phi double [ %i.xh, %.unr-lcssa ], [ %i.vm, %.preheader.epil.preheader ] ; 2 uses
  %.lcssa1789 = phi <2 x double> [ %i.xo, %.unr-lcssa ], [ %i.vt, %.preheader.epil.preheader ]
  %i.vu = fdiv double %.lcssa1790, %i.vf
  %i.vv = call double @sqrt(double noundef %i.vu) #10, !noalias !57 ; 4 uses
  %i.vw = add i64 %3, -1
  %i.vx = uitofp i64 %i.vw to double
  %i.vy = fdiv double %.lcssa1790, %i.vx          ; 2 uses
  %i.vz = call double @sqrt(double noundef %i.vy) #10, !noalias !57
  %i.wa = fmul double %i.vv, %i.vv
  %i.wb = fmul double %i.vv, %i.wa                ; 2 uses
  %i.wc = fmul double %i.vv, %i.wb
  %i.wd = insertelement <2 x double> poison, double %i.wb, i64 0
  %i.we = insertelement <2 x double> %i.wd, double %i.wc, i64 1
  %i.wf = fdiv <2 x double> %.lcssa1789, %i.we
  %i.wg = insertelement <2 x double> poison, double %i.vf, i64 0
  %i.wh = shufflevector <2 x double> %i.wg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wi = fdiv <2 x double> %i.wf, %i.wh
  %i.wj = fadd <2 x double> %i.wi, <double -0.000000e+00, double -3.000000e+00>
  %i.wk = fptrunc double %i.vy to float
  %i.wl = fptrunc double %i.vz to float
  %i.wm = fptrunc <2 x double> %i.wj to <2 x float> ; 2 uses
  %i.wn = extractelement <2 x float> %i.wm, i64 0
  %i.wo = extractelement <2 x float> %i.wm, i64 1
  br label %calcMoments.exit

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %.0.i1335 = phi double [ 0.000000e+00, %.preheader.preheader ], [ %i.xh, %.preheader ]
  %.045.i1334 = phi i64 [ 0, %.preheader.preheader ], [ %i.xp, %.preheader ] ; 3 uses
  %i.wp = phi <2 x double> [ zeroinitializer, %.preheader.preheader ], [ %i.xo, %.preheader ]
  %niter1864 = phi i64 [ 0, %.preheader.preheader ], [ %niter1864.next.1, %.preheader ]
  %i.wq = shl i64 %.045.i1334, 1
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 %i.wq
  %.val = load i16, ptr %i.wr, align 1
  %i.ws = uitofp i16 %.val to double
  %i.wt = fsub double %i.ws, %i.vg                ; 6 uses
  %i.wu = call double @llvm.fmuladd.f64(double %i.wt, double %i.wt, double %.0.i1335)
  %i.wv = fmul double %i.wt, %i.wt                ; 2 uses
  %i.ww = fmul double %i.wt, %i.wv
  %i.wx = insertelement <2 x double> poison, double %i.wv, i64 0
  %i.wy = insertelement <2 x double> %i.wx, double %i.ww, i64 1
  %i.wz = insertelement <2 x double> poison, double %i.wt, i64 0
  %i.xa = shufflevector <2 x double> %i.wz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wy, <2 x double> %i.xa, <2 x double> %i.wp)
  %i.xc = shl i64 %.045.i1334, 1
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 %i.xc
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 2
  %.val.1 = load i16, ptr %i.xe, align 1
  %i.xf = uitofp i16 %.val.1 to double
  %i.xg = fsub double %i.xf, %i.vg                ; 6 uses
  %i.xh = call double @llvm.fmuladd.f64(double %i.xg, double %i.xg, double %i.wu) ; 3 uses
  %i.xi = fmul double %i.xg, %i.xg                ; 2 uses
  %i.xj = fmul double %i.xg, %i.xi
  %i.xk = insertelement <2 x double> poison, double %i.xi, i64 0
  %i.xl = insertelement <2 x double> %i.xk, double %i.xj, i64 1
  %i.xm = insertelement <2 x double> poison, double %i.xg, i64 0
  %i.xn = shufflevector <2 x double> %i.xm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xl, <2 x double> %i.xn, <2 x double> %i.xb) ; 3 uses
  %i.xp = add nuw i64 %.045.i1334, 2              ; 2 uses
  %niter1864.next.1 = add i64 %niter1864, 2       ; 2 uses
  %niter1864.ncmp.1 = icmp eq i64 %niter1864.next.1, %unroll_iter1863
  br i1 %niter1864.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !30

calcMoments.exit:                                 ; preds = %bb.eh, %calcMean.exit67, %bb.ei
  %.030.i661235 = phi double [ %i.vg, %calcMean.exit67 ], [ %i.vg, %bb.ei ], [ 0.000000e+00, %bb.eh ]
  %.sroa.61184.0 = phi float [ 0.000000e+00, %calcMean.exit67 ], [ %i.wl, %bb.ei ], [ 0.000000e+00, %bb.eh ]
  %.sroa.91185.0 = phi float [ 0.000000e+00, %calcMean.exit67 ], [ %i.wk, %bb.ei ], [ 0.000000e+00, %bb.eh ]
  %.sroa.111186.0 = phi float [ 0.000000e+00, %calcMean.exit67 ], [ %i.wn, %bb.ei ], [ 0.000000e+00, %bb.eh ]
  %.sroa.131187.0 = phi float [ 0.000000e+00, %calcMean.exit67 ], [ %i.wo, %bb.ei ], [ 0.000000e+00, %bb.eh ]
  %i.xq = uitofp i64 %3 to float
  %i.xr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !47
  %i.xt = uitofp i64 %i.xs to float
  %i.xu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !48
  %i.xw = uitofp i64 %i.xv to float
  %i.xx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !49
  %i.xz = uitofp i64 %i.xy to float
  %i.ya = uitofp i64 %i.sj to float
  %i.yb = fptrunc double %.030.i661235 to float
  %i.yc = load i32, ptr %0, align 8, !tbaa !52    ; 4 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 33 uses
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !53 ; 9 uses
  %.not.i322 = icmp ult i32 %i.yc, %i.ye
  br i1 %.not.i322, label %.critedge.i331, label %bb.ej

bb.ej:                                            ; preds = %calcMoments.exit
end_hunk_0
begin_hunk_1_@calcIntegerFeatures:bb.a
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i543 = icmp eq ptr %i.alk, null
  %i.all = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !56 ; 2 uses
  br i1 %.not.i.i.i543, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.aln = call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.alk, ptr noundef %i.alm, i64 noundef %i.ali) #10
  br label %GenericVector_reallocData.exit.i.i544

bb.iy:                                            ; preds = %bb.iw
  %i.alo = call ptr @ZL_realloc(ptr noundef %i.alm, i64 noundef %i.ali) #10
  br label %GenericVector_reallocData.exit.i.i544

GenericVector_reallocData.exit.i.i544:            ; preds = %bb.iy, %bb.ix
  %.0.i28.i.i545 = phi ptr [ %i.aln, %bb.ix ], [ %i.alo, %bb.iy ] ; 2 uses
  %.not26.i.i546 = icmp eq ptr %.0.i28.i.i545, null
  br i1 %.not26.i.i546, label %GenericVector_reallocData.exit._crit_edge.i.i548, label %.thread21.i547

GenericVector_reallocData.exit._crit_edge.i.i548: ; preds = %GenericVector_reallocData.exit.i.i544
  %.pre.i19.i549 = load i32, ptr %i.yd, align 4, !tbaa !53 ; 2 uses
  %i.alp = zext i32 %.pre.i19.i549 to i64
  %.not23.i550 = icmp samesign ugt i64 %.010.i.i536, %i.alp
  %.pre1504 = load i32, ptr %0, align 8, !tbaa !52 ; 2 uses
  br i1 %.not23.i550, label %GenericVector_pushBack.exit551, label %.critedge.i538

.thread21.i547:                                   ; preds = %GenericVector_reallocData.exit.i.i544
  store ptr %.0.i28.i.i545, ptr %i.all, align 8, !tbaa !56
  %i.alq = trunc nuw i64 %spec.select.i18.i542 to i32
  store i32 %i.alq, ptr %i.yd, align 4, !tbaa !53
  %.pre1503 = load i32, ptr %0, align 8, !tbaa !52
  br label %.critedge.i538

.critedge.i538:                                   ; preds = %.thread21.i547, %GenericVector_reallocData.exit._crit_edge.i.i548, %bb.ir, %GenericVector_pushBack.exit528
  %i.alr = phi i32 [ %.pre1503, %.thread21.i547 ], [ %.pre1504, %GenericVector_reallocData.exit._crit_edge.i.i548 ], [ %i.akp, %bb.ir ], [ %i.akp, %GenericVector_pushBack.exit528 ]
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !56
  %i.alu = zext i32 %i.alr to i64
  %i.alv = shl nuw nsw i64 %i.alu, 4
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alt, i64 %i.alv ; 3 uses
  store ptr @.str.19, ptr %i.alw, align 1
  %.sroa.41154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  store float %.sroa.111186.0, ptr %.sroa.41154.0..sroa_idx, align 1
  %.sroa.51155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 12
  store i32 0, ptr %.sroa.51155.0..sroa_idx, align 1
  %i.alx = load i32, ptr %0, align 8, !tbaa !52
  %i.aly = add i32 %i.alx, 1                      ; 2 uses
  store i32 %i.aly, ptr %0, align 8, !tbaa !52
  %.pr1245.pre = load i32, ptr %i.yd, align 4, !tbaa !53
  br label %GenericVector_pushBack.exit551

GenericVector_pushBack.exit551:                   ; preds = %GenericVector_nextCapacity.exit.i530, %.critedge.i538, %GenericVector_reallocData.exit._crit_edge.i.i548
  %i.alz = phi i32 [ %.pre1504, %GenericVector_reallocData.exit._crit_edge.i.i548 ], [ %i.akp, %GenericVector_nextCapacity.exit.i530 ], [ %i.aly, %.critedge.i538 ]
  %i.ama = phi i32 [ %.pre.i19.i549, %GenericVector_reallocData.exit._crit_edge.i.i548 ], [ %i.akq, %GenericVector_nextCapacity.exit.i530 ], [ %.pr1245.pre, %.critedge.i538 ] ; 8 uses
  %.1.i539 = phi i1 [ true, %GenericVector_reallocData.exit._crit_edge.i.i548 ], [ true, %GenericVector_nextCapacity.exit.i530 ], [ %.1.i516, %.critedge.i538 ]
  %.not.i552 = icmp ult i32 %i.alz, %i.ama
  br i1 %.not.i552, label %.critedge.i561, label %bb.iz

bb.iz:                                            ; preds = %GenericVector_pushBack.exit551
  %i.amb = icmp eq i32 %i.ama, 0                  ; 2 uses
  br i1 %i.amb, label %GenericVector_nextCapacity.exit.i553, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.amc = icmp ugt i32 %i.ama, 511
  br i1 %i.amc, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.amd = zext i32 %i.ama to i64                 ; 2 uses
  %i.ame = lshr i64 %i.amd, 2
  %i.amf = add nuw nsw i64 %i.ame, %i.amd
  br label %GenericVector_nextCapacity.exit.i553

bb.jc:                                            ; preds = %bb.ja
  %i.amg = shl nuw nsw i32 %i.ama, 1
  %i.amh = zext nneg i32 %i.amg to i64
  br label %GenericVector_nextCapacity.exit.i553

GenericVector_nextCapacity.exit.i553:             ; preds = %bb.jc, %bb.jb, %bb.iz
  %.0.i.i554 = phi i64 [ %i.amh, %bb.jc ], [ %i.amf, %bb.jb ], [ 4, %bb.iz ] ; 2 uses
  %i.ami = zext i32 %i.ama to i64                 ; 6 uses
  %i.amj = icmp samesign ult i64 %.0.i.i554, %i.ami
  %.phi.trans.insert.i.i555 = getelementptr i8, ptr %0, i64 8
  %.val.pre.i.i556 = load i32, ptr %.phi.trans.insert.i.i555, align 8, !tbaa !54
  %.pre.i.i557 = zext i32 %.val.pre.i.i556 to i64 ; 4 uses
  %spec.select.i.i558 = call i64 @llvm.umin.i64(i64 %.0.i.i554, i64 %.pre.i.i557)
  %.010.i.i559 = select i1 %i.amj, i64 %.pre.i.i557, i64 %spec.select.i.i558 ; 4 uses
  %i.amk = icmp eq i64 %.010.i.i559, %i.ami
  br i1 %i.amk, label %GenericVector_pushBack.exit574, label %bb.jd

bb.jd:                                            ; preds = %GenericVector_nextCapacity.exit.i553
  %.not.i.i560 = icmp samesign ugt i64 %.010.i.i559, %i.ami
  br i1 %.not.i.i560, label %bb.je, label %.critedge.i561

bb.je:                                            ; preds = %bb.jd
  br i1 %i.amb, label %bb.ji, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.aml = icmp ugt i32 %i.ama, 511
  br i1 %i.aml, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.amm = lshr i64 %i.ami, 2
  %i.amn = add nuw nsw i64 %i.amm, %i.ami
  br label %bb.ji

bb.jh:                                            ; preds = %bb.jf
  %i.amo = shl nuw nsw i32 %i.ama, 1
  %i.amp = zext nneg i32 %i.amo to i64
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg, %bb.je
  %.0.i.i.i563 = phi i64 [ %i.amp, %bb.jh ], [ %i.amn, %bb.jg ], [ 4, %bb.je ] ; 2 uses
  %i.amq = icmp samesign ult i64 %.0.i.i.i563, %i.ami
  %spec.select.i.i.i564 = call i64 @llvm.umin.i64(i64 %.0.i.i.i563, i64 %.pre.i.i557)
  %i.amr = call i64 @llvm.umax.i64(i64 %.010.i.i559, i64 %spec.select.i.i.i564)
  %spec.select.i18.i565 = select i1 %i.amq, i64 %.pre.i.i557, i64 %i.amr ; 2 uses
  %i.ams = shl nuw nsw i64 %spec.select.i18.i565, 4 ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i566 = icmp eq ptr %i.amu, null
  %i.amv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !56 ; 2 uses
  br i1 %.not.i.i.i566, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.amx = call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.amu, ptr noundef %i.amw, i64 noundef %i.ams) #10
  br label %GenericVector_reallocData.exit.i.i567

bb.jk:                                            ; preds = %bb.ji
  %i.amy = call ptr @ZL_realloc(ptr noundef %i.amw, i64 noundef %i.ams) #10
  br label %GenericVector_reallocData.exit.i.i567

GenericVector_reallocData.exit.i.i567:            ; preds = %bb.jk, %bb.jj
  %.0.i28.i.i568 = phi ptr [ %i.amx, %bb.jj ], [ %i.amy, %bb.jk ] ; 2 uses
  %.not26.i.i569 = icmp eq ptr %.0.i28.i.i568, null
  br i1 %.not26.i.i569, label %GenericVector_reallocData.exit._crit_edge.i.i571, label %.thread21.i570

GenericVector_reallocData.exit._crit_edge.i.i571: ; preds = %GenericVector_reallocData.exit.i.i567
  %.pre.i19.i572 = load i32, ptr %i.yd, align 4, !tbaa !53
  %i.amz = zext i32 %.pre.i19.i572 to i64
  %.not23.i573 = icmp samesign ugt i64 %.010.i.i559, %i.amz
  br i1 %.not23.i573, label %GenericVector_pushBack.exit574, label %.critedge.i561

.thread21.i570:                                   ; preds = %GenericVector_reallocData.exit.i.i567
  store ptr %.0.i28.i.i568, ptr %i.amv, align 8, !tbaa !56
  %i.ana = trunc nuw i64 %spec.select.i18.i565 to i32
  store i32 %i.ana, ptr %i.yd, align 4, !tbaa !53
  br label %.critedge.i561

.critedge.i561:                                   ; preds = %.thread21.i570, %GenericVector_reallocData.exit._crit_edge.i.i571, %bb.jd, %GenericVector_pushBack.exit551
  %i.anb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !56
  %i.and = load i32, ptr %0, align 8, !tbaa !52
  %i.ane = zext i32 %i.and to i64
  %i.anf = shl nuw nsw i64 %i.ane, 4
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anc, i64 %i.anf ; 3 uses
  store ptr @.str.20, ptr %i.ang, align 1
  %.sroa.41151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ang, i64 8
  store float %.sroa.131187.0, ptr %.sroa.41151.0..sroa_idx, align 1
  %.sroa.51152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ang, i64 12
  store i32 0, ptr %.sroa.51152.0..sroa_idx, align 1
  %i.anh = load i32, ptr %0, align 8, !tbaa !52
  %i.ani = add i32 %i.anh, 1
  store i32 %i.ani, ptr %0, align 8, !tbaa !52
  br label %GenericVector_pushBack.exit574

GenericVector_pushBack.exit574:                   ; preds = %GenericVector_nextCapacity.exit.i553, %GenericVector_reallocData.exit._crit_edge.i.i571, %.critedge.i561
  %.1.i562 = phi i1 [ %.1.i539, %.critedge.i561 ], [ true, %GenericVector_reallocData.exit._crit_edge.i.i571 ], [ true, %GenericVector_nextCapacity.exit.i553 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.tr

bb.jl:                                            ; preds = %.split
  %i.anj = tail call { i64, i64 } @ZL_computeUnsignedRange(ptr noundef %1, i64 noundef %3, i64 noundef 4) #10 ; 2 uses
  %i.ank = extractvalue { i64, i64 } %i.anj, 0
  %i.anl = extractvalue { i64, i64 } %i.anj, 1
  %i.anm = sub i64 %i.anl, %i.ank                 ; 2 uses
  %i.ann = tail call i64 @llvm.uadd.sat.i64(i64 %i.anm, i64 1)
  %i.ano = tail call i64 @llvm.umin.i64(i64 %i.ann, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @ZL_estimateCardinality_fixed(ptr dead_on_unwind nonnull writable sret(%struct.ZL_CardinalityEstimate) align 8 %6, ptr noundef %1, i64 noundef %3, i64 noundef 4, i64 noundef %i.ano) #10
  %i.anp = icmp eq i64 %3, 0
  br i1 %i.anp, label %calcMoments.exit47, label %.preheader1272

.preheader1272:                                   ; preds = %bb.jl
  %i.anq = icmp ugt i64 %3, 2
  br i1 %i.anq, label %.lr.ph1300.preheader, label %._crit_edge1301

.lr.ph1300.preheader:                             ; preds = %.preheader1272
  %i.anr = add i64 %3, -3                         ; 2 uses
  %i.ans = lshr i64 %i.anr, 1
  %i.ant = add nuw i64 %i.ans, 1                  ; 2 uses
  %xtraiter1817 = and i64 %i.ant, 3               ; 3 uses
  %i.anu = icmp ult i64 %i.anr, 6
  br i1 %i.anu, label %.lr.ph1300.epil.preheader, label %.lr.ph1300.preheader.new

.lr.ph1300.preheader.new:                         ; preds = %.lr.ph1300.preheader
  %unroll_iter1826 = and i64 %i.ant, -4
  br label %.lr.ph1300

.lr.ph1300:                                       ; preds = %.lr.ph1300, %.lr.ph1300.preheader.new
  %11 = phi i64 [ 2, %.lr.ph1300.preheader.new ], [ %i.aos, %.lr.ph1300 ] ; 5 uses
  %.027.i561299 = phi i64 [ 0, %.lr.ph1300.preheader.new ], [ %12, %.lr.ph1300 ]
  %i.anv = phi <2 x double> [ zeroinitializer, %.lr.ph1300.preheader.new ], [ %i.aor, %.lr.ph1300 ]
  %niter1827 = phi i64 [ 0, %.lr.ph1300.preheader.new ], [ %niter1827.next.3, %.lr.ph1300 ]
  %i.anw = shl i64 %.027.i561299, 2
  %i.anx = getelementptr inbounds nuw i8, ptr %1, i64 %i.anw
  %i.any = load <2 x i32>, ptr %i.anx, align 1
  %i.anz = uitofp <2 x i32> %i.any to <2 x double>
  %i.aoa = fadd <2 x double> %i.anv, %i.anz
  %i.aob = shl i64 %11, 2
  %i.aoc = getelementptr inbounds nuw i8, ptr %1, i64 %i.aob
  %i.aod = load <2 x i32>, ptr %i.aoc, align 1
  %i.aoe = uitofp <2 x i32> %i.aod to <2 x double>
  %i.aof = fadd <2 x double> %i.aoa, %i.aoe
  %i.aog = shl i64 %11, 2
  %i.aoh = getelementptr i8, ptr %1, i64 %i.aog
  %i.aoi = getelementptr i8, ptr %i.aoh, i64 8
  %i.aoj = load <2 x i32>, ptr %i.aoi, align 1
  %i.aok = uitofp <2 x i32> %i.aoj to <2 x double>
  %i.aol = fadd <2 x double> %i.aof, %i.aok
  %12 = add nuw i64 %11, 6                        ; 2 uses
  %i.aom = shl i64 %11, 2
  %i.aon = getelementptr i8, ptr %1, i64 %i.aom
  %i.aoo = getelementptr i8, ptr %i.aon, i64 16
  %i.aop = load <2 x i32>, ptr %i.aoo, align 1
  %i.aoq = uitofp <2 x i32> %i.aop to <2 x double>
  %i.aor = fadd <2 x double> %i.aol, %i.aoq       ; 3 uses
  %i.aos = add nuw i64 %11, 8                     ; 2 uses
  %niter1827.next.3 = add i64 %niter1827, 4       ; 2 uses
  %niter1827.ncmp.3.not = icmp eq i64 %niter1827.next.3, %unroll_iter1826
  br i1 %niter1827.ncmp.3.not, label %._crit_edge1301.loopexit.unr-lcssa, label %.lr.ph1300, !llvm.loop !24

._crit_edge1301.loopexit.unr-lcssa:               ; preds = %.lr.ph1300
  %lcmp.mod1823.not = icmp eq i64 %xtraiter1817, 0
  br i1 %lcmp.mod1823.not, label %._crit_edge1301.loopexit, label %.lr.ph1300.epil.preheader

.lr.ph1300.epil.preheader:                        ; preds = %._crit_edge1301.loopexit.unr-lcssa, %.lr.ph1300.preheader
  %.epil.init1820 = phi i64 [ 2, %.lr.ph1300.preheader ], [ %i.aos, %._crit_edge1301.loopexit.unr-lcssa ]
  %.027.i561299.epil.init = phi i64 [ 0, %.lr.ph1300.preheader ], [ %12, %._crit_edge1301.loopexit.unr-lcssa ]
  %.epil.init1822 = phi <2 x double> [ zeroinitializer, %.lr.ph1300.preheader ], [ %i.aor, %._crit_edge1301.loopexit.unr-lcssa ]
  %lcmp.mod1825 = icmp ne i64 %xtraiter1817, 0
  call void @llvm.assume(i1 %lcmp.mod1825)
  br label %.lr.ph1300.epil

.lr.ph1300.epil:                                  ; preds = %.lr.ph1300.epil, %.lr.ph1300.epil.preheader
  %13 = phi i64 [ %i.aoz, %.lr.ph1300.epil ], [ %.epil.init1820, %.lr.ph1300.epil.preheader ] ; 2 uses
  %.027.i561299.epil = phi i64 [ %13, %.lr.ph1300.epil ], [ %.027.i561299.epil.init, %.lr.ph1300.epil.preheader ]
  %i.aot = phi <2 x double> [ %i.aoy, %.lr.ph1300.epil ], [ %.epil.init1822, %.lr.ph1300.epil.preheader ]
  %epil.iter1818 = phi i64 [ %epil.iter1818.next, %.lr.ph1300.epil ], [ 0, %.lr.ph1300.epil.preheader ]
  %i.aou = shl i64 %.027.i561299.epil, 2
  %i.aov = getelementptr inbounds nuw i8, ptr %1, i64 %i.aou
  %i.aow = load <2 x i32>, ptr %i.aov, align 1
  %i.aox = uitofp <2 x i32> %i.aow to <2 x double>
  %i.aoy = fadd <2 x double> %i.aot, %i.aox       ; 2 uses
  %i.aoz = add nuw i64 %13, 2
  %epil.iter1818.next = add i64 %epil.iter1818, 1 ; 2 uses
  %epil.iter1818.cmp.not = icmp eq i64 %epil.iter1818.next, %xtraiter1817
  br i1 %epil.iter1818.cmp.not, label %._crit_edge1301.loopexit, label %.lr.ph1300.epil, !llvm.loop !31

._crit_edge1301.loopexit:                         ; preds = %.lr.ph1300.epil, %._crit_edge1301.loopexit.unr-lcssa
  %.lcssa1796.a = phi <2 x double> [ %i.aor, %._crit_edge1301.loopexit.unr-lcssa ], [ %i.aoy, %.lr.ph1300.epil ] ; 2 uses
  %i.apa = add i64 %3, -3
  %i.apb = and i64 %i.apa, -2
  %i.apc = add nuw i64 %i.apb, 2
  %shift1781 = shufflevector <2 x double> %.lcssa1796.a, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1782 = fadd <2 x double> %.lcssa1796.a, %shift1781
  %i.apd = extractelement <2 x double> %foldExtExtBinop1782, i64 0
  br label %._crit_edge1301

._crit_edge1301:                                  ; preds = %._crit_edge1301.loopexit, %.preheader1272
  %.027.i56.lcssa = phi i64 [ 0, %.preheader1272 ], [ %i.apc, %._crit_edge1301.loopexit ] ; 5 uses
  %i.ape = phi double [ 0.000000e+00, %.preheader1272 ], [ %i.apd, %._crit_edge1301.loopexit ] ; 3 uses
  %i.apf = icmp ult i64 %.027.i56.lcssa, %3
  br i1 %i.apf, label %.lr.ph1308.preheader, label %calcMean.exit60

.lr.ph1308.preheader:                             ; preds = %._crit_edge1301
  %i.apg = sub nuw i64 %3, %.027.i56.lcssa
  %xtraiter1828 = and i64 %i.apg, 3               ; 2 uses
  %lcmp.mod1829.not = icmp eq i64 %xtraiter1828, 0
  br i1 %lcmp.mod1829.not, label %.lr.ph1308.prol.loopexit, label %.lr.ph1308.prol

.lr.ph1308.prol:                                  ; preds = %.lr.ph1308.preheader, %.lr.ph1308.prol
  %.0.i581306.prol = phi double [ %i.apk, %.lr.ph1308.prol ], [ %i.ape, %.lr.ph1308.preheader ]
  %.1.i571305.prol = phi i64 [ %i.apl, %.lr.ph1308.prol ], [ %.027.i56.lcssa, %.lr.ph1308.preheader ] ; 2 uses
  %prol.iter1830 = phi i64 [ %prol.iter1830.next, %.lr.ph1308.prol ], [ 0, %.lr.ph1308.preheader ]
  %i.aph = shl i64 %.1.i571305.prol, 2
  %i.api = getelementptr inbounds nuw i8, ptr %1, i64 %i.aph
  %.val84.prol = load i32, ptr %i.api, align 1
  %i.apj = uitofp i32 %.val84.prol to double
  %i.apk = fadd double %.0.i581306.prol, %i.apj   ; 3 uses
  %i.apl = add nuw i64 %.1.i571305.prol, 1        ; 2 uses
  %prol.iter1830.next = add i64 %prol.iter1830, 1 ; 2 uses
  %prol.iter1830.cmp.not = icmp eq i64 %prol.iter1830.next, %xtraiter1828
  br i1 %prol.iter1830.cmp.not, label %.lr.ph1308.prol.loopexit, label %.lr.ph1308.prol, !llvm.loop !32

.lr.ph1308.prol.loopexit:                         ; preds = %.lr.ph1308.prol, %.lr.ph1308.preheader
  %.lcssa1795.unr = phi double [ poison, %.lr.ph1308.preheader ], [ %i.apk, %.lr.ph1308.prol ]
  %.0.i581306.unr = phi double [ %i.ape, %.lr.ph1308.preheader ], [ %i.apk, %.lr.ph1308.prol ]
  %.1.i571305.unr = phi i64 [ %.027.i56.lcssa, %.lr.ph1308.preheader ], [ %i.apl, %.lr.ph1308.prol ]
  %i.apm = sub i64 %.027.i56.lcssa, %3
  %i.apn = icmp ugt i64 %i.apm, -4
  br i1 %i.apn, label %calcMean.exit60, label %.lr.ph1308

.lr.ph1308:                                       ; preds = %.lr.ph1308.prol.loopexit, %.lr.ph1308
  %.0.i581306 = phi double [ %i.aqg, %.lr.ph1308 ], [ %.0.i581306.unr, %.lr.ph1308.prol.loopexit ]
  %.1.i571305 = phi i64 [ %i.aqh, %.lr.ph1308 ], [ %.1.i571305.unr, %.lr.ph1308.prol.loopexit ] ; 5 uses
  %i.apo = shl i64 %.1.i571305, 2
  %i.app = getelementptr inbounds nuw i8, ptr %1, i64 %i.apo
  %.val84 = load i32, ptr %i.app, align 1
  %i.apq = uitofp i32 %.val84 to double
  %i.apr = fadd double %.0.i581306, %i.apq
  %i.aps = shl i64 %.1.i571305, 2
  %i.apt = getelementptr i8, ptr %1, i64 %i.aps
  %i.apu = getelementptr i8, ptr %i.apt, i64 4
  %.val84.1 = load i32, ptr %i.apu, align 1
  %i.apv = uitofp i32 %.val84.1 to double
  %i.apw = fadd double %i.apr, %i.apv
  %i.apx = shl i64 %.1.i571305, 2
  %i.apy = getelementptr i8, ptr %1, i64 %i.apx
  %i.apz = getelementptr i8, ptr %i.apy, i64 8
  %.val84.2 = load i32, ptr %i.apz, align 1
  %i.aqa = uitofp i32 %.val84.2 to double
  %i.aqb = fadd double %i.apw, %i.aqa
  %i.aqc = shl i64 %.1.i571305, 2
  %i.aqd = getelementptr i8, ptr %1, i64 %i.aqc
  %i.aqe = getelementptr i8, ptr %i.aqd, i64 12
  %.val84.3 = load i32, ptr %i.aqe, align 1
  %i.aqf = uitofp i32 %.val84.3 to double
  %i.aqg = fadd double %i.aqb, %i.aqf             ; 2 uses
  %i.aqh = add nuw i64 %.1.i571305, 4             ; 2 uses
  %exitcond1361.not.3 = icmp eq i64 %i.aqh, %3
  br i1 %exitcond1361.not.3, label %calcMean.exit60, label %.lr.ph1308, !llvm.loop !27

calcMean.exit60:                                  ; preds = %.lr.ph1308.prol.loopexit, %.lr.ph1308, %._crit_edge1301
  %.0.i58.lcssa = phi double [ %i.ape, %._crit_edge1301 ], [ %.lcssa1795.unr, %.lr.ph1308.prol.loopexit ], [ %i.aqg, %.lr.ph1308 ]
  %i.aqi = uitofp i64 %3 to double                ; 3 uses
  %i.aqj = fdiv double %.0.i58.lcssa, %i.aqi      ; 5 uses
  %i.aqk = icmp eq i64 %3, 1
  br i1 %i.aqk, label %calcMoments.exit47, label %.lr.ph1314.preheader

.lr.ph1314.preheader:                             ; preds = %calcMean.exit60
  %xtraiter1831 = and i64 %3, 1
  %unroll_iter1839 = and i64 %3, -2
  br label %.lr.ph1314

._crit_edge1315.unr-lcssa:                        ; preds = %.lr.ph1314
  %lcmp.mod1835.not = icmp eq i64 %xtraiter1831, 0
  br i1 %lcmp.mod1835.not, label %._crit_edge1315, label %.lr.ph1314.epil.preheader

.lr.ph1314.epil.preheader:                        ; preds = %._crit_edge1315.unr-lcssa
  %lcmp.mod1838 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod1838)
  %i.aql = shl i64 %i.ass, 2
  %i.aqm = getelementptr inbounds nuw i8, ptr %1, i64 %i.aql
  %.val83.epil = load i32, ptr %i.aqm, align 1
  %i.aqn = uitofp i32 %.val83.epil to double
  %i.aqo = fsub double %i.aqn, %i.aqj             ; 6 uses
  %i.aqp = call double @llvm.fmuladd.f64(double %i.aqo, double %i.aqo, double %i.ask)
  %i.aqq = fmul double %i.aqo, %i.aqo             ; 2 uses
  %i.aqr = fmul double %i.aqo, %i.aqq
  %i.aqs = insertelement <2 x double> poison, double %i.aqq, i64 0
  %i.aqt = insertelement <2 x double> %i.aqs, double %i.aqr, i64 1
  %i.aqu = insertelement <2 x double> poison, double %i.aqo, i64 0
  %i.aqv = shufflevector <2 x double> %i.aqu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aqw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aqt, <2 x double> %i.aqv, <2 x double> %i.asr)
  br label %._crit_edge1315

._crit_edge1315:                                  ; preds = %._crit_edge1315.unr-lcssa, %.lr.ph1314.epil.preheader
  %.lcssa1794 = phi double [ %i.ask, %._crit_edge1315.unr-lcssa ], [ %i.aqp, %.lr.ph1314.epil.preheader ] ; 2 uses
  %.lcssa1793 = phi <2 x double> [ %i.asr, %._crit_edge1315.unr-lcssa ], [ %i.aqw, %.lr.ph1314.epil.preheader ]
  %i.aqx = fdiv double %.lcssa1794, %i.aqi
  %i.aqy = call double @sqrt(double noundef %i.aqx) #10, !noalias !58 ; 4 uses
  %i.aqz = add i64 %3, -1
  %i.ara = uitofp i64 %i.aqz to double
  %i.arb = fdiv double %.lcssa1794, %i.ara        ; 2 uses
  %i.arc = call double @sqrt(double noundef %i.arb) #10, !noalias !58
  %i.ard = fmul double %i.aqy, %i.aqy
  %i.are = fmul double %i.aqy, %i.ard             ; 2 uses
  %i.arf = fmul double %i.aqy, %i.are
  %i.arg = insertelement <2 x double> poison, double %i.are, i64 0
  %i.arh = insertelement <2 x double> %i.arg, double %i.arf, i64 1
  %i.ari = fdiv <2 x double> %.lcssa1793, %i.arh
  %i.arj = insertelement <2 x double> poison, double %i.aqi, i64 0
  %i.ark = shufflevector <2 x double> %i.arj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.arl = fdiv <2 x double> %i.ari, %i.ark
  %i.arm = fadd <2 x double> %i.arl, <double -0.000000e+00, double -3.000000e+00>
  %i.arn = fptrunc double %i.arb to float
  %i.aro = fptrunc double %i.arc to float
  %i.arp = fptrunc <2 x double> %i.arm to <2 x float> ; 2 uses
  %i.arq = extractelement <2 x float> %i.arp, i64 0
  %i.arr = extractelement <2 x float> %i.arp, i64 1
  br label %calcMoments.exit47

.lr.ph1314:                                       ; preds = %.lr.ph1314, %.lr.ph1314.preheader
  %.0.i461313 = phi double [ 0.000000e+00, %.lr.ph1314.preheader ], [ %i.ask, %.lr.ph1314 ]
  %.045.i451312 = phi i64 [ 0, %.lr.ph1314.preheader ], [ %i.ass, %.lr.ph1314 ] ; 3 uses
  %i.ars = phi <2 x double> [ zeroinitializer, %.lr.ph1314.preheader ], [ %i.asr, %.lr.ph1314 ]
  %niter1840 = phi i64 [ 0, %.lr.ph1314.preheader ], [ %niter1840.next.1, %.lr.ph1314 ]
  %i.art = shl i64 %.045.i451312, 2
  %i.aru = getelementptr inbounds nuw i8, ptr %1, i64 %i.art
  %.val83 = load i32, ptr %i.aru, align 1
  %i.arv = uitofp i32 %.val83 to double
  %i.arw = fsub double %i.arv, %i.aqj             ; 6 uses
  %i.arx = call double @llvm.fmuladd.f64(double %i.arw, double %i.arw, double %.0.i461313)
  %i.ary = fmul double %i.arw, %i.arw             ; 2 uses
  %i.arz = fmul double %i.arw, %i.ary
  %i.asa = insertelement <2 x double> poison, double %i.ary, i64 0
  %i.asb = insertelement <2 x double> %i.asa, double %i.arz, i64 1
  %i.asc = insertelement <2 x double> poison, double %i.arw, i64 0
  %i.asd = shufflevector <2 x double> %i.asc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ase = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.asb, <2 x double> %i.asd, <2 x double> %i.ars)
  %i.asf = shl i64 %.045.i451312, 2
  %i.asg = getelementptr inbounds nuw i8, ptr %1, i64 %i.asf
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 4
  %.val83.1 = load i32, ptr %i.ash, align 1
  %i.asi = uitofp i32 %.val83.1 to double
  %i.asj = fsub double %i.asi, %i.aqj             ; 6 uses
  %i.ask = call double @llvm.fmuladd.f64(double %i.asj, double %i.asj, double %i.arx) ; 3 uses
  %i.asl = fmul double %i.asj, %i.asj             ; 2 uses
  %i.asm = fmul double %i.asj, %i.asl
  %i.asn = insertelement <2 x double> poison, double %i.asl, i64 0
  %i.aso = insertelement <2 x double> %i.asn, double %i.asm, i64 1
  %i.asp = insertelement <2 x double> poison, double %i.asj, i64 0
  %i.asq = shufflevector <2 x double> %i.asp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.asr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aso, <2 x double> %i.asq, <2 x double> %i.ase) ; 3 uses
  %i.ass = add nuw i64 %.045.i451312, 2           ; 2 uses
  %niter1840.next.1 = add i64 %niter1840, 2       ; 2 uses
  %niter1840.ncmp.1 = icmp eq i64 %niter1840.next.1, %unroll_iter1839
  br i1 %niter1840.ncmp.1, label %._crit_edge1315.unr-lcssa, label %.lr.ph1314, !llvm.loop !30

calcMoments.exit47:                               ; preds = %bb.jl, %calcMean.exit60, %._crit_edge1315
  %.030.i591247 = phi double [ %i.aqj, %calcMean.exit60 ], [ %i.aqj, %._crit_edge1315 ], [ 0.000000e+00, %bb.jl ]
  %.sroa.61146.0 = phi float [ 0.000000e+00, %calcMean.exit60 ], [ %i.aro, %._crit_edge1315 ], [ 0.000000e+00, %bb.jl ]
  %.sroa.91147.0 = phi float [ 0.000000e+00, %calcMean.exit60 ], [ %i.arn, %._crit_edge1315 ], [ 0.000000e+00, %bb.jl ]
  %.sroa.111148.0 = phi float [ 0.000000e+00, %calcMean.exit60 ], [ %i.arq, %._crit_edge1315 ], [ 0.000000e+00, %bb.jl ]
  %.sroa.131149.0 = phi float [ 0.000000e+00, %calcMean.exit60 ], [ %i.arr, %._crit_edge1315 ], [ 0.000000e+00, %bb.jl ]
  %i.ast = uitofp i64 %3 to float
  %i.asu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.asv = load i64, ptr %i.asu, align 8, !tbaa !47
  %i.asw = uitofp i64 %i.asv to float
  %i.asx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.asy = load i64, ptr %i.asx, align 8, !tbaa !48
  %i.asz = uitofp i64 %i.asy to float
  %i.ata = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.atb = load i64, ptr %i.ata, align 8, !tbaa !49
  %i.atc = uitofp i64 %i.atb to float
  %i.atd = uitofp i64 %i.anm to float
  %i.ate = fptrunc double %.030.i591247 to float
  %i.atf = load i32, ptr %0, align 8, !tbaa !52   ; 4 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 33 uses
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !53 ; 9 uses
  %.not.i575 = icmp ult i32 %i.atf, %i.ath
  br i1 %.not.i575, label %.critedge.i584, label %bb.jm

bb.jm:                                            ; preds = %calcMoments.exit47
end_hunk_1
begin_hunk_2_@calcIntegerFeatures:bb.a
  %i.bgn = load ptr, ptr %i.bgm, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i796 = icmp eq ptr %i.bgn, null
  %i.bgo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bgp = load ptr, ptr %i.bgo, align 8, !tbaa !56 ; 2 uses
  br i1 %.not.i.i.i796, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.bgq = call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.bgn, ptr noundef %i.bgp, i64 noundef %i.bgl) #10
  br label %GenericVector_reallocData.exit.i.i797

bb.ob:                                            ; preds = %bb.nz
  %i.bgr = call ptr @ZL_realloc(ptr noundef %i.bgp, i64 noundef %i.bgl) #10
  br label %GenericVector_reallocData.exit.i.i797

GenericVector_reallocData.exit.i.i797:            ; preds = %bb.ob, %bb.oa
  %.0.i28.i.i798 = phi ptr [ %i.bgq, %bb.oa ], [ %i.bgr, %bb.ob ] ; 2 uses
  %.not26.i.i799 = icmp eq ptr %.0.i28.i.i798, null
  br i1 %.not26.i.i799, label %GenericVector_reallocData.exit._crit_edge.i.i801, label %.thread21.i800

GenericVector_reallocData.exit._crit_edge.i.i801: ; preds = %GenericVector_reallocData.exit.i.i797
  %.pre.i19.i802 = load i32, ptr %i.atg, align 4, !tbaa !53 ; 2 uses
  %i.bgs = zext i32 %.pre.i19.i802 to i64
  %.not23.i803 = icmp samesign ugt i64 %.010.i.i789, %i.bgs
  %.pre1484 = load i32, ptr %0, align 8, !tbaa !52 ; 2 uses
  br i1 %.not23.i803, label %GenericVector_pushBack.exit804, label %.critedge.i791

.thread21.i800:                                   ; preds = %GenericVector_reallocData.exit.i.i797
  store ptr %.0.i28.i.i798, ptr %i.bgo, align 8, !tbaa !56
  %i.bgt = trunc nuw i64 %spec.select.i18.i795 to i32
  store i32 %i.bgt, ptr %i.atg, align 4, !tbaa !53
  %.pre1483 = load i32, ptr %0, align 8, !tbaa !52
  br label %.critedge.i791

.critedge.i791:                                   ; preds = %.thread21.i800, %GenericVector_reallocData.exit._crit_edge.i.i801, %bb.nu, %GenericVector_pushBack.exit781
  %i.bgu = phi i32 [ %.pre1483, %.thread21.i800 ], [ %.pre1484, %GenericVector_reallocData.exit._crit_edge.i.i801 ], [ %i.bfs, %bb.nu ], [ %i.bfs, %GenericVector_pushBack.exit781 ]
  %i.bgv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !56
  %i.bgx = zext i32 %i.bgu to i64
  %i.bgy = shl nuw nsw i64 %i.bgx, 4
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgw, i64 %i.bgy ; 3 uses
  store ptr @.str.19, ptr %i.bgz, align 1
  %.sroa.41116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgz, i64 8
  store float %.sroa.111148.0, ptr %.sroa.41116.0..sroa_idx, align 1
  %.sroa.51117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgz, i64 12
  store i32 0, ptr %.sroa.51117.0..sroa_idx, align 1
  %i.bha = load i32, ptr %0, align 8, !tbaa !52
  %i.bhb = add i32 %i.bha, 1                      ; 2 uses
  store i32 %i.bhb, ptr %0, align 8, !tbaa !52
  %.pr1257.pre = load i32, ptr %i.atg, align 4, !tbaa !53
  br label %GenericVector_pushBack.exit804

GenericVector_pushBack.exit804:                   ; preds = %GenericVector_nextCapacity.exit.i783, %.critedge.i791, %GenericVector_reallocData.exit._crit_edge.i.i801
  %i.bhc = phi i32 [ %.pre1484, %GenericVector_reallocData.exit._crit_edge.i.i801 ], [ %i.bfs, %GenericVector_nextCapacity.exit.i783 ], [ %i.bhb, %.critedge.i791 ]
  %i.bhd = phi i32 [ %.pre.i19.i802, %GenericVector_reallocData.exit._crit_edge.i.i801 ], [ %i.bft, %GenericVector_nextCapacity.exit.i783 ], [ %.pr1257.pre, %.critedge.i791 ] ; 8 uses
  %.1.i792 = phi i1 [ true, %GenericVector_reallocData.exit._crit_edge.i.i801 ], [ true, %GenericVector_nextCapacity.exit.i783 ], [ %.1.i769, %.critedge.i791 ]
  %.not.i805 = icmp ult i32 %i.bhc, %i.bhd
  br i1 %.not.i805, label %.critedge.i814, label %bb.oc

bb.oc:                                            ; preds = %GenericVector_pushBack.exit804
  %i.bhe = icmp eq i32 %i.bhd, 0                  ; 2 uses
  br i1 %i.bhe, label %GenericVector_nextCapacity.exit.i806, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.bhf = icmp ugt i32 %i.bhd, 511
  br i1 %i.bhf, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  %i.bhg = zext i32 %i.bhd to i64                 ; 2 uses
  %i.bhh = lshr i64 %i.bhg, 2
  %i.bhi = add nuw nsw i64 %i.bhh, %i.bhg
  br label %GenericVector_nextCapacity.exit.i806

bb.of:                                            ; preds = %bb.od
  %i.bhj = shl nuw nsw i32 %i.bhd, 1
  %i.bhk = zext nneg i32 %i.bhj to i64
  br label %GenericVector_nextCapacity.exit.i806

GenericVector_nextCapacity.exit.i806:             ; preds = %bb.of, %bb.oe, %bb.oc
  %.0.i.i807 = phi i64 [ %i.bhk, %bb.of ], [ %i.bhi, %bb.oe ], [ 4, %bb.oc ] ; 2 uses
  %i.bhl = zext i32 %i.bhd to i64                 ; 6 uses
  %i.bhm = icmp samesign ult i64 %.0.i.i807, %i.bhl
  %.phi.trans.insert.i.i808 = getelementptr i8, ptr %0, i64 8
  %.val.pre.i.i809 = load i32, ptr %.phi.trans.insert.i.i808, align 8, !tbaa !54
  %.pre.i.i810 = zext i32 %.val.pre.i.i809 to i64 ; 4 uses
  %spec.select.i.i811 = call i64 @llvm.umin.i64(i64 %.0.i.i807, i64 %.pre.i.i810)
  %.010.i.i812 = select i1 %i.bhm, i64 %.pre.i.i810, i64 %spec.select.i.i811 ; 4 uses
  %i.bhn = icmp eq i64 %.010.i.i812, %i.bhl
  br i1 %i.bhn, label %GenericVector_pushBack.exit827, label %bb.og

bb.og:                                            ; preds = %GenericVector_nextCapacity.exit.i806
  %.not.i.i813 = icmp samesign ugt i64 %.010.i.i812, %i.bhl
  br i1 %.not.i.i813, label %bb.oh, label %.critedge.i814

bb.oh:                                            ; preds = %bb.og
  br i1 %i.bhe, label %bb.ol, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.bho = icmp ugt i32 %i.bhd, 511
  br i1 %i.bho, label %bb.oj, label %bb.ok

bb.oj:                                            ; preds = %bb.oi
  %i.bhp = lshr i64 %i.bhl, 2
  %i.bhq = add nuw nsw i64 %i.bhp, %i.bhl
  br label %bb.ol

bb.ok:                                            ; preds = %bb.oi
  %i.bhr = shl nuw nsw i32 %i.bhd, 1
  %i.bhs = zext nneg i32 %i.bhr to i64
  br label %bb.ol

bb.ol:                                            ; preds = %bb.ok, %bb.oj, %bb.oh
  %.0.i.i.i816 = phi i64 [ %i.bhs, %bb.ok ], [ %i.bhq, %bb.oj ], [ 4, %bb.oh ] ; 2 uses
  %i.bht = icmp samesign ult i64 %.0.i.i.i816, %i.bhl
  %spec.select.i.i.i817 = call i64 @llvm.umin.i64(i64 %.0.i.i.i816, i64 %.pre.i.i810)
  %i.bhu = call i64 @llvm.umax.i64(i64 %.010.i.i812, i64 %spec.select.i.i.i817)
  %spec.select.i18.i818 = select i1 %i.bht, i64 %.pre.i.i810, i64 %i.bhu ; 2 uses
  %i.bhv = shl nuw nsw i64 %spec.select.i18.i818, 4 ; 2 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bhx = load ptr, ptr %i.bhw, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i819 = icmp eq ptr %i.bhx, null
  %i.bhy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !56 ; 2 uses
  br i1 %.not.i.i.i819, label %bb.on, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.bia = call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.bhx, ptr noundef %i.bhz, i64 noundef %i.bhv) #10
  br label %GenericVector_reallocData.exit.i.i820

bb.on:                                            ; preds = %bb.ol
  %i.bib = call ptr @ZL_realloc(ptr noundef %i.bhz, i64 noundef %i.bhv) #10
  br label %GenericVector_reallocData.exit.i.i820

GenericVector_reallocData.exit.i.i820:            ; preds = %bb.on, %bb.om
  %.0.i28.i.i821 = phi ptr [ %i.bia, %bb.om ], [ %i.bib, %bb.on ] ; 2 uses
  %.not26.i.i822 = icmp eq ptr %.0.i28.i.i821, null
  br i1 %.not26.i.i822, label %GenericVector_reallocData.exit._crit_edge.i.i824, label %.thread21.i823

GenericVector_reallocData.exit._crit_edge.i.i824: ; preds = %GenericVector_reallocData.exit.i.i820
  %.pre.i19.i825 = load i32, ptr %i.atg, align 4, !tbaa !53
  %i.bic = zext i32 %.pre.i19.i825 to i64
  %.not23.i826 = icmp samesign ugt i64 %.010.i.i812, %i.bic
  br i1 %.not23.i826, label %GenericVector_pushBack.exit827, label %.critedge.i814

.thread21.i823:                                   ; preds = %GenericVector_reallocData.exit.i.i820
  store ptr %.0.i28.i.i821, ptr %i.bhy, align 8, !tbaa !56
  %i.bid = trunc nuw i64 %spec.select.i18.i818 to i32
  store i32 %i.bid, ptr %i.atg, align 4, !tbaa !53
  br label %.critedge.i814

.critedge.i814:                                   ; preds = %.thread21.i823, %GenericVector_reallocData.exit._crit_edge.i.i824, %bb.og, %GenericVector_pushBack.exit804
  %i.bie = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bif = load ptr, ptr %i.bie, align 8, !tbaa !56
  %i.big = load i32, ptr %0, align 8, !tbaa !52
  %i.bih = zext i32 %i.big to i64
  %i.bii = shl nuw nsw i64 %i.bih, 4
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bif, i64 %i.bii ; 3 uses
  store ptr @.str.20, ptr %i.bij, align 1
  %.sroa.41113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bij, i64 8
  store float %.sroa.131149.0, ptr %.sroa.41113.0..sroa_idx, align 1
  %.sroa.51114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bij, i64 12
  store i32 0, ptr %.sroa.51114.0..sroa_idx, align 1
  %i.bik = load i32, ptr %0, align 8, !tbaa !52
  %i.bil = add i32 %i.bik, 1
  store i32 %i.bil, ptr %0, align 8, !tbaa !52
  br label %GenericVector_pushBack.exit827

GenericVector_pushBack.exit827:                   ; preds = %GenericVector_nextCapacity.exit.i806, %GenericVector_reallocData.exit._crit_edge.i.i824, %.critedge.i814
  %.1.i815 = phi i1 [ %.1.i792, %.critedge.i814 ], [ true, %GenericVector_reallocData.exit._crit_edge.i.i824 ], [ true, %GenericVector_nextCapacity.exit.i806 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.tr

bb.oo:                                            ; preds = %.split
  %i.bim = tail call { i64, i64 } @ZL_computeUnsignedRange(ptr noundef %1, i64 noundef %3, i64 noundef 8) #10 ; 2 uses
  %i.bin = extractvalue { i64, i64 } %i.bim, 0
  %i.bio = extractvalue { i64, i64 } %i.bim, 1
  %i.bip = sub i64 %i.bio, %i.bin                 ; 2 uses
  %i.biq = tail call i64 @llvm.uadd.sat.i64(i64 %i.bip, i64 1)
  %i.bir = tail call i64 @llvm.umin.i64(i64 %i.biq, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @ZL_estimateCardinality_fixed(ptr dead_on_unwind nonnull writable sret(%struct.ZL_CardinalityEstimate) align 8 %7, ptr noundef %1, i64 noundef %3, i64 noundef 8, i64 noundef %i.bir) #10
  %i.bis = icmp eq i64 %3, 0
  br i1 %i.bis, label %calcMoments.exit52, label %.preheader1274

.preheader1274:                                   ; preds = %bb.oo
  %i.bit = icmp ugt i64 %3, 2
  br i1 %i.bit, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader1274
  %i.biu = add i64 %3, -3                         ; 2 uses
  %i.biv = lshr i64 %i.biu, 1
  %i.biw = add nuw i64 %i.biv, 1                  ; 2 uses
  %xtraiter = and i64 %i.biw, 3                   ; 3 uses
  %i.bix = icmp ult i64 %i.biu, 6
  br i1 %i.bix, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.biw, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %14 = phi i64 [ 2, %.lr.ph.preheader.new ], [ %i.bjv, %.lr.ph ] ; 5 uses
  %.027.i1280 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %15, %.lr.ph ]
  %i.biy = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bju, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.biz = shl i64 %.027.i1280, 3
  %i.bja = getelementptr inbounds nuw i8, ptr %1, i64 %i.biz
  %i.bjb = load <2 x i64>, ptr %i.bja, align 1
  %i.bjc = uitofp <2 x i64> %i.bjb to <2 x double>
  %i.bjd = fadd <2 x double> %i.biy, %i.bjc
  %i.bje = shl i64 %14, 3
  %i.bjf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bje
  %i.bjg = load <2 x i64>, ptr %i.bjf, align 1
  %i.bjh = uitofp <2 x i64> %i.bjg to <2 x double>
  %i.bji = fadd <2 x double> %i.bjd, %i.bjh
  %i.bjj = shl i64 %14, 3
  %i.bjk = getelementptr i8, ptr %1, i64 %i.bjj
  %i.bjl = getelementptr i8, ptr %i.bjk, i64 16
  %i.bjm = load <2 x i64>, ptr %i.bjl, align 1
  %i.bjn = uitofp <2 x i64> %i.bjm to <2 x double>
  %i.bjo = fadd <2 x double> %i.bji, %i.bjn
  %15 = add nuw i64 %14, 6                        ; 2 uses
  %i.bjp = shl i64 %14, 3
  %i.bjq = getelementptr i8, ptr %1, i64 %i.bjp
  %i.bjr = getelementptr i8, ptr %i.bjq, i64 32
  %i.bjs = load <2 x i64>, ptr %i.bjr, align 1
  %i.bjt = uitofp <2 x i64> %i.bjs to <2 x double>
  %i.bju = fadd <2 x double> %i.bjo, %i.bjt       ; 3 uses
  %i.bjv = add nuw i64 %14, 8                     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !24

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i64 [ 2, %.lr.ph.preheader ], [ %i.bjv, %._crit_edge.loopexit.unr-lcssa ]
  %.027.i1280.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %15, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init1802 = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bju, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1804 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1804)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %16 = phi i64 [ %i.bkc, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.027.i1280.epil = phi i64 [ %16, %.lr.ph.epil ], [ %.027.i1280.epil.init, %.lr.ph.epil.preheader ]
  %i.bjw = phi <2 x double> [ %i.bkb, %.lr.ph.epil ], [ %.epil.init1802, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bjx = shl i64 %.027.i1280.epil, 3
  %i.bjy = getelementptr inbounds nuw i8, ptr %1, i64 %i.bjx
  %i.bjz = load <2 x i64>, ptr %i.bjy, align 1
  %i.bka = uitofp <2 x i64> %i.bjz to <2 x double>
  %i.bkb = fadd <2 x double> %i.bjw, %i.bka       ; 2 uses
  %i.bkc = add nuw i64 %16, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !35

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa1800.a = phi <2 x double> [ %i.bju, %._crit_edge.loopexit.unr-lcssa ], [ %i.bkb, %.lr.ph.epil ] ; 2 uses
  %i.bkd = add i64 %3, -3
  %i.bke = and i64 %i.bkd, -2
  %i.bkf = add nuw i64 %i.bke, 2
  %shift1784 = shufflevector <2 x double> %.lcssa1800.a, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1785 = fadd <2 x double> %.lcssa1800.a, %shift1784
  %i.bkg = extractelement <2 x double> %foldExtExtBinop1785, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader1274
  %.027.i.lcssa = phi i64 [ 0, %.preheader1274 ], [ %i.bkf, %._crit_edge.loopexit ] ; 5 uses
  %i.bkh = phi double [ 0.000000e+00, %.preheader1274 ], [ %i.bkg, %._crit_edge.loopexit ] ; 3 uses
  %i.bki = icmp ult i64 %.027.i.lcssa, %3
  br i1 %i.bki, label %.lr.ph1286.preheader, label %calcMean.exit

.lr.ph1286.preheader:                             ; preds = %._crit_edge
  %i.bkj = sub nuw i64 %3, %.027.i.lcssa
  %xtraiter1805 = and i64 %i.bkj, 3               ; 2 uses
  %lcmp.mod1806.not = icmp eq i64 %xtraiter1805, 0
  br i1 %lcmp.mod1806.not, label %.lr.ph1286.prol.loopexit, label %.lr.ph1286.prol

.lr.ph1286.prol:                                  ; preds = %.lr.ph1286.preheader, %.lr.ph1286.prol
  %.0.i531284.prol = phi double [ %i.bkn, %.lr.ph1286.prol ], [ %i.bkh, %.lr.ph1286.preheader ]
  %.1.i1283.prol = phi i64 [ %i.bko, %.lr.ph1286.prol ], [ %.027.i.lcssa, %.lr.ph1286.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1286.prol ], [ 0, %.lr.ph1286.preheader ]
  %i.bkk = shl i64 %.1.i1283.prol, 3
  %i.bkl = getelementptr inbounds nuw i8, ptr %1, i64 %i.bkk
  %.val88.prol = load i64, ptr %i.bkl, align 1
  %i.bkm = uitofp i64 %.val88.prol to double
  %i.bkn = fadd double %.0.i531284.prol, %i.bkm   ; 3 uses
  %i.bko = add nuw i64 %.1.i1283.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1805
  br i1 %prol.iter.cmp.not, label %.lr.ph1286.prol.loopexit, label %.lr.ph1286.prol, !llvm.loop !36

.lr.ph1286.prol.loopexit:                         ; preds = %.lr.ph1286.prol, %.lr.ph1286.preheader
  %.lcssa1799.unr = phi double [ poison, %.lr.ph1286.preheader ], [ %i.bkn, %.lr.ph1286.prol ]
  %.0.i531284.unr = phi double [ %i.bkh, %.lr.ph1286.preheader ], [ %i.bkn, %.lr.ph1286.prol ]
  %.1.i1283.unr = phi i64 [ %.027.i.lcssa, %.lr.ph1286.preheader ], [ %i.bko, %.lr.ph1286.prol ]
  %i.bkp = sub i64 %.027.i.lcssa, %3
  %i.bkq = icmp ugt i64 %i.bkp, -4
  br i1 %i.bkq, label %calcMean.exit, label %.lr.ph1286

.lr.ph1286:                                       ; preds = %.lr.ph1286.prol.loopexit, %.lr.ph1286
  %.0.i531284 = phi double [ %i.blj, %.lr.ph1286 ], [ %.0.i531284.unr, %.lr.ph1286.prol.loopexit ]
  %.1.i1283 = phi i64 [ %i.blk, %.lr.ph1286 ], [ %.1.i1283.unr, %.lr.ph1286.prol.loopexit ] ; 5 uses
  %i.bkr = shl i64 %.1.i1283, 3
  %i.bks = getelementptr inbounds nuw i8, ptr %1, i64 %i.bkr
  %.val88 = load i64, ptr %i.bks, align 1
  %i.bkt = uitofp i64 %.val88 to double
  %i.bku = fadd double %.0.i531284, %i.bkt
  %i.bkv = shl i64 %.1.i1283, 3
  %i.bkw = getelementptr i8, ptr %1, i64 %i.bkv
  %i.bkx = getelementptr i8, ptr %i.bkw, i64 8
  %.val88.1 = load i64, ptr %i.bkx, align 1
  %i.bky = uitofp i64 %.val88.1 to double
  %i.bkz = fadd double %i.bku, %i.bky
  %i.bla = shl i64 %.1.i1283, 3
  %i.blb = getelementptr i8, ptr %1, i64 %i.bla
  %i.blc = getelementptr i8, ptr %i.blb, i64 16
  %.val88.2 = load i64, ptr %i.blc, align 1
  %i.bld = uitofp i64 %.val88.2 to double
  %i.ble = fadd double %i.bkz, %i.bld
  %i.blf = shl i64 %.1.i1283, 3
  %i.blg = getelementptr i8, ptr %1, i64 %i.blf
  %i.blh = getelementptr i8, ptr %i.blg, i64 24
  %.val88.3 = load i64, ptr %i.blh, align 1
  %i.bli = uitofp i64 %.val88.3 to double
  %i.blj = fadd double %i.ble, %i.bli             ; 2 uses
  %i.blk = add nuw i64 %.1.i1283, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.blk, %3
  br i1 %exitcond.not.3, label %calcMean.exit, label %.lr.ph1286, !llvm.loop !27

calcMean.exit:                                    ; preds = %.lr.ph1286.prol.loopexit, %.lr.ph1286, %._crit_edge
  %.0.i53.lcssa = phi double [ %i.bkh, %._crit_edge ], [ %.lcssa1799.unr, %.lr.ph1286.prol.loopexit ], [ %i.blj, %.lr.ph1286 ]
  %i.bll = uitofp i64 %3 to double                ; 3 uses
  %i.blm = fdiv double %.0.i53.lcssa, %i.bll      ; 5 uses
  %i.bln = icmp eq i64 %3, 1
  br i1 %i.bln, label %calcMoments.exit52, label %.lr.ph1292.preheader

.lr.ph1292.preheader:                             ; preds = %calcMean.exit
  %xtraiter1807 = and i64 %3, 1
  %unroll_iter1815 = and i64 %3, -2
  br label %.lr.ph1292

._crit_edge1293.unr-lcssa:                        ; preds = %.lr.ph1292
  %lcmp.mod1811.not = icmp eq i64 %xtraiter1807, 0
  br i1 %lcmp.mod1811.not, label %._crit_edge1293, label %.lr.ph1292.epil.preheader

.lr.ph1292.epil.preheader:                        ; preds = %._crit_edge1293.unr-lcssa
  %lcmp.mod1814 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod1814)
  %i.blo = shl i64 %i.bnv, 3
  %i.blp = getelementptr inbounds nuw i8, ptr %1, i64 %i.blo
  %.val87.epil = load i64, ptr %i.blp, align 1
  %i.blq = uitofp i64 %.val87.epil to double
  %i.blr = fsub double %i.blq, %i.blm             ; 6 uses
  %i.bls = call double @llvm.fmuladd.f64(double %i.blr, double %i.blr, double %i.bnn)
  %i.blt = fmul double %i.blr, %i.blr             ; 2 uses
  %i.blu = fmul double %i.blr, %i.blt
  %i.blv = insertelement <2 x double> poison, double %i.blt, i64 0
  %i.blw = insertelement <2 x double> %i.blv, double %i.blu, i64 1
  %i.blx = insertelement <2 x double> poison, double %i.blr, i64 0
  %i.bly = shufflevector <2 x double> %i.blx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.blz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.blw, <2 x double> %i.bly, <2 x double> %i.bnu)
  br label %._crit_edge1293

._crit_edge1293:                                  ; preds = %._crit_edge1293.unr-lcssa, %.lr.ph1292.epil.preheader
  %.lcssa1798 = phi double [ %i.bnn, %._crit_edge1293.unr-lcssa ], [ %i.bls, %.lr.ph1292.epil.preheader ] ; 2 uses
  %.lcssa1797 = phi <2 x double> [ %i.bnu, %._crit_edge1293.unr-lcssa ], [ %i.blz, %.lr.ph1292.epil.preheader ]
  %i.bma = fdiv double %.lcssa1798, %i.bll
  %i.bmb = call double @sqrt(double noundef %i.bma) #10, !noalias !59 ; 4 uses
  %i.bmc = add i64 %3, -1
  %i.bmd = uitofp i64 %i.bmc to double
  %i.bme = fdiv double %.lcssa1798, %i.bmd        ; 2 uses
  %i.bmf = call double @sqrt(double noundef %i.bme) #10, !noalias !59
  %i.bmg = fmul double %i.bmb, %i.bmb
  %i.bmh = fmul double %i.bmb, %i.bmg             ; 2 uses
  %i.bmi = fmul double %i.bmb, %i.bmh
  %i.bmj = insertelement <2 x double> poison, double %i.bmh, i64 0
  %i.bmk = insertelement <2 x double> %i.bmj, double %i.bmi, i64 1
  %i.bml = fdiv <2 x double> %.lcssa1797, %i.bmk
  %i.bmm = insertelement <2 x double> poison, double %i.bll, i64 0
  %i.bmn = shufflevector <2 x double> %i.bmm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bmo = fdiv <2 x double> %i.bml, %i.bmn
  %i.bmp = fadd <2 x double> %i.bmo, <double -0.000000e+00, double -3.000000e+00>
  %i.bmq = fptrunc double %i.bme to float
  %i.bmr = fptrunc double %i.bmf to float
  %i.bms = fptrunc <2 x double> %i.bmp to <2 x float> ; 2 uses
  %i.bmt = extractelement <2 x float> %i.bms, i64 0
  %i.bmu = extractelement <2 x float> %i.bms, i64 1
  br label %calcMoments.exit52

.lr.ph1292:                                       ; preds = %.lr.ph1292, %.lr.ph1292.preheader
  %.0.i511291 = phi double [ 0.000000e+00, %.lr.ph1292.preheader ], [ %i.bnn, %.lr.ph1292 ]
  %.045.i501290 = phi i64 [ 0, %.lr.ph1292.preheader ], [ %i.bnv, %.lr.ph1292 ] ; 3 uses
  %i.bmv = phi <2 x double> [ zeroinitializer, %.lr.ph1292.preheader ], [ %i.bnu, %.lr.ph1292 ]
  %niter1816 = phi i64 [ 0, %.lr.ph1292.preheader ], [ %niter1816.next.1, %.lr.ph1292 ]
  %i.bmw = shl i64 %.045.i501290, 3
  %i.bmx = getelementptr inbounds nuw i8, ptr %1, i64 %i.bmw
  %.val87 = load i64, ptr %i.bmx, align 1
  %i.bmy = uitofp i64 %.val87 to double
  %i.bmz = fsub double %i.bmy, %i.blm             ; 6 uses
  %i.bna = call double @llvm.fmuladd.f64(double %i.bmz, double %i.bmz, double %.0.i511291)
  %i.bnb = fmul double %i.bmz, %i.bmz             ; 2 uses
  %i.bnc = fmul double %i.bmz, %i.bnb
  %i.bnd = insertelement <2 x double> poison, double %i.bnb, i64 0
  %i.bne = insertelement <2 x double> %i.bnd, double %i.bnc, i64 1
  %i.bnf = insertelement <2 x double> poison, double %i.bmz, i64 0
  %i.bng = shufflevector <2 x double> %i.bnf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bnh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bne, <2 x double> %i.bng, <2 x double> %i.bmv)
  %i.bni = shl i64 %.045.i501290, 3
  %i.bnj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bni
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 8
  %.val87.1 = load i64, ptr %i.bnk, align 1
  %i.bnl = uitofp i64 %.val87.1 to double
  %i.bnm = fsub double %i.bnl, %i.blm             ; 6 uses
  %i.bnn = call double @llvm.fmuladd.f64(double %i.bnm, double %i.bnm, double %i.bna) ; 3 uses
  %i.bno = fmul double %i.bnm, %i.bnm             ; 2 uses
  %i.bnp = fmul double %i.bnm, %i.bno
  %i.bnq = insertelement <2 x double> poison, double %i.bno, i64 0
  %i.bnr = insertelement <2 x double> %i.bnq, double %i.bnp, i64 1
  %i.bns = insertelement <2 x double> poison, double %i.bnm, i64 0
  %i.bnt = shufflevector <2 x double> %i.bns, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bnu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bnr, <2 x double> %i.bnt, <2 x double> %i.bnh) ; 3 uses
  %i.bnv = add nuw i64 %.045.i501290, 2           ; 2 uses
  %niter1816.next.1 = add i64 %niter1816, 2       ; 2 uses
  %niter1816.ncmp.1 = icmp eq i64 %niter1816.next.1, %unroll_iter1815
  br i1 %niter1816.ncmp.1, label %._crit_edge1293.unr-lcssa, label %.lr.ph1292, !llvm.loop !30

calcMoments.exit52:                               ; preds = %bb.oo, %calcMean.exit, %._crit_edge1293
  %.030.i1259 = phi double [ %i.blm, %calcMean.exit ], [ %i.blm, %._crit_edge1293 ], [ 0.000000e+00, %bb.oo ]
  %.sroa.6.0 = phi float [ 0.000000e+00, %calcMean.exit ], [ %i.bmr, %._crit_edge1293 ], [ 0.000000e+00, %bb.oo ]
  %.sroa.9.0 = phi float [ 0.000000e+00, %calcMean.exit ], [ %i.bmq, %._crit_edge1293 ], [ 0.000000e+00, %bb.oo ]
  %.sroa.11.0 = phi float [ 0.000000e+00, %calcMean.exit ], [ %i.bmt, %._crit_edge1293 ], [ 0.000000e+00, %bb.oo ]
  %.sroa.13.0 = phi float [ 0.000000e+00, %calcMean.exit ], [ %i.bmu, %._crit_edge1293 ], [ 0.000000e+00, %bb.oo ]
  %i.bnw = uitofp i64 %3 to float
  %i.bnx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bny = load i64, ptr %i.bnx, align 8, !tbaa !47
  %i.bnz = uitofp i64 %i.bny to float
  %i.boa = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bob = load i64, ptr %i.boa, align 8, !tbaa !48
  %i.boc = uitofp i64 %i.bob to float
  %i.bod = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.boe = load i64, ptr %i.bod, align 8, !tbaa !49
  %i.bof = uitofp i64 %i.boe to float
  %i.bog = uitofp i64 %i.bip to float
  %i.boh = fptrunc double %.030.i1259 to float
  %i.boi = load i32, ptr %0, align 8, !tbaa !52   ; 4 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 33 uses
  %i.bok = load i32, ptr %i.boj, align 4, !tbaa !53 ; 9 uses
  %.not.i828 = icmp ult i32 %i.boi, %i.bok
  br i1 %.not.i828, label %.critedge.i837, label %bb.op

bb.op:                                            ; preds = %calcMoments.exit52
end_hunk_2
