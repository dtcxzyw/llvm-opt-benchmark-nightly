inline.NumInlined: 221
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 25
begin_hunk_0_@Sbd_StoMergeCuts:bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 20
  %i.jo = load i32, ptr %i.jn, align 4
  %.not.us.not.i.us = icmp ult i32 %i.jo, 268435456
  br i1 %.not.us.not.i.us, label %bb.z, label %Sbd_CutSetCutIsContainedOrder.exit.thread.us.i.us

bb.z:                                             ; preds = %.lr.ph.split.us.i.us
  %i.jp = load i64, ptr %i.jm, align 8, !tbaa !42 ; 2 uses
  %i.jq = load i64, ptr %i.ig, align 8, !tbaa !42
  %i.jr = and i64 %i.jq, %i.jp
  %i.js = icmp eq i64 %i.jr, %i.jp
  br i1 %i.js, label %Sbd_CutSetAddCut.exit.us, label %Sbd_CutSetCutIsContainedOrder.exit.thread.us.i.us

Sbd_CutSetCutIsContainedOrder.exit.thread.us.i.us: ; preds = %bb.z, %.lr.ph.split.us.i.us
  %indvars.iv.next40.i.us = add nuw nsw i64 %indvars.iv39.i.us, 1 ; 2 uses
  %exitcond43.not.i.us = icmp eq i64 %indvars.iv.next40.i.us, %i.ie
  br i1 %exitcond43.not.i.us, label %Sbd_CutSetLastCutIsContained.exit.us, label %.lr.ph.split.us.i.us, !llvm.loop !58

Sbd_CutSetLastCutIsContained.exit.us:             ; preds = %Sbd_CutSetCutIsContainedOrder.exit.thread.i.us, %Sbd_CutSetCutIsContainedOrder.exit.thread.us.i.us, %.loopexit.us.Sbd_CutSetLastCutIsContained.exit.us_crit_edge
  %.pre468 = phi ptr [ %.pre468.pre, %.loopexit.us.Sbd_CutSetLastCutIsContained.exit.us_crit_edge ], [ %i.ig, %Sbd_CutSetCutIsContainedOrder.exit.thread.us.i.us ], [ %i.ig, %Sbd_CutSetCutIsContainedOrder.exit.thread.i.us ] ; 7 uses
  %i.jt = load double, ptr %i.bx, align 8, !tbaa !40
  %i.ju = fadd double %i.jt, 1.000000e+00
  store double %i.ju, ptr %i.bx, align 8, !tbaa !40
  %i.jv = load i32, ptr %i.by, align 4, !tbaa !59
  %.not130.us = icmp eq i32 %i.jv, 0
  br i1 %.not130.us, label %bb.bu, label %bb.aa

bb.aa:                                            ; preds = %Sbd_CutSetLastCutIsContained.exit.us
  %i.jw = load i32, ptr %i.t, align 4, !tbaa !33  ; 2 uses
  %i.jx = icmp slt i32 %i.jw, 7
  br i1 %i.jx, label %bb.bd, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.jy = getelementptr inbounds nuw i8, ptr %.pre468, i64 20 ; 4 uses
  %i.jz = load i32, ptr %i.jy, align 4            ; 3 uses
  %i.ka = lshr i32 %i.jz, 28                      ; 6 uses
  %i.kb = add nsw i32 %i.jw, -6                   ; 11 uses
  %i.kc = shl nuw i32 1, %i.kb                    ; 20 uses
  %.val48.i.us = load ptr, ptr %i.bz, align 8, !tbaa !60 ; 4 uses
  %.val49.i.us = load i32, ptr %i.co, align 8, !tbaa !55 ; 2 uses
  %i.kd = ashr i32 %.val49.i.us, 1                ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.val48.i.us, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !61 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.val48.i.us, i64 8
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !65 ; 2 uses
  %i.ki = ashr i32 %i.kd, %i.kh
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.kf, i64 %i.kj
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !66
  %i.km = load i32, ptr %.val48.i.us, align 8, !tbaa !68 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.val48.i.us, i64 12
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !69 ; 2 uses
  %i.kp = and i32 %i.ko, %i.kd
  %i.kq = mul i32 %i.kp, %i.km
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr [8 x i8], ptr %i.kl, i64 %i.kr ; 3 uses
  %i.kt = getelementptr i8, ptr %.0393.us, i64 8
  %.val47.i.us = load i32, ptr %i.kt, align 8, !tbaa !55 ; 2 uses
  %i.ku = ashr i32 %.val47.i.us, 1                ; 2 uses
  %i.kv = ashr i32 %i.ku, %i.kh
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kf, i64 %i.kw
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !66
  %i.kz = and i32 %i.ku, %i.ko
  %i.la = mul i32 %i.kz, %i.km
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr [8 x i8], ptr %i.ky, i64 %i.lb ; 3 uses
  %i.ld = and i32 %.val49.i.us, 1
  %.not.i50.i.us = icmp eq i32 %i.ld, %i.ba
  %.not113.i152.us = icmp eq i32 %i.kb, 31        ; 15 uses
  br i1 %.not.i50.i.us, label %.preheader.i.i161.us, label %.preheader14.i.i.us

.preheader14.i.i.us:                              ; preds = %bb.ab
  br i1 %.not113.i152.us, label %Abc_TtCopy.exit.i.us, label %.lr.ph.preheader.i.i.us

.lr.ph.preheader.i.i.us:                          ; preds = %.preheader14.i.i.us
  %wide.trip.count.i.i153.us = zext nneg i32 %i.kc to i64 ; 2 uses
  %min.iters.check908 = icmp ult i32 %i.kb, 2
  br i1 %min.iters.check908, label %.lr.ph.i.i154.us, label %vector.ph909

vector.ph909:                                     ; preds = %.lr.ph.preheader.i.i.us
  %n.vec910 = and i64 %wide.trip.count.i.i153.us, 2147483644
  br label %vector.body911

vector.body911:                                   ; preds = %vector.body911, %vector.ph909
  %index912 = phi i64 [ 0, %vector.ph909 ], [ %index.next915, %vector.body911 ] ; 3 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %index912 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %wide.load913 = load <2 x i64>, ptr %i.le, align 8, !tbaa !70
  %wide.load914 = load <2 x i64>, ptr %i.lf, align 8, !tbaa !70
  %i.lg = xor <2 x i64> %wide.load913, splat (i64 -1)
  %i.lh = xor <2 x i64> %wide.load914, splat (i64 -1)
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index912 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  store <2 x i64> %i.lg, ptr %i.li, align 16, !tbaa !70
  store <2 x i64> %i.lh, ptr %i.lj, align 16, !tbaa !70
  %index.next915 = add nuw i64 %index912, 4       ; 2 uses
  %i.lk = icmp eq i64 %index.next915, %n.vec910
  br i1 %i.lk, label %Abc_TtCopy.exit.i.us, label %vector.body911, !llvm.loop !71

.lr.ph.i.i154.us:                                 ; preds = %.lr.ph.preheader.i.i.us, %.lr.ph.i.i154.us
  %indvars.iv.i.i155.us = phi i64 [ %indvars.iv.next.i.i156.us, %.lr.ph.i.i154.us ], [ 0, %.lr.ph.preheader.i.i.us ] ; 3 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.i.i155.us
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !70
  %i.ln = xor i64 %i.lm, -1
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i.i155.us
  store i64 %i.ln, ptr %i.lo, align 8, !tbaa !70
  %indvars.iv.next.i.i156.us = add nuw nsw i64 %indvars.iv.i.i155.us, 1 ; 2 uses
  %exitcond.not.i.i157.us = icmp eq i64 %indvars.iv.next.i.i156.us, %wide.trip.count.i.i153.us
  br i1 %exitcond.not.i.i157.us, label %Abc_TtCopy.exit.i.us, label %.lr.ph.i.i154.us, !llvm.loop !72

.preheader.i.i161.us:                             ; preds = %bb.ab
  br i1 %.not113.i152.us, label %Abc_TtCopy.exit.i.us, label %.lr.ph18.preheader.i.i.us

.lr.ph18.preheader.i.i.us:                        ; preds = %.preheader.i.i161.us
  %wide.trip.count24.i.i.us = zext nneg i32 %i.kc to i64
  %i.lp = shl nuw nsw i64 %wide.trip.count24.i.i.us, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.ks, i64 %i.lp, i1 false), !tbaa !70
  br label %Abc_TtCopy.exit.i.us

Abc_TtCopy.exit.i.us:                             ; preds = %vector.body911, %.lr.ph.i.i154.us, %.lr.ph18.preheader.i.i.us, %.preheader.i.i161.us, %.preheader14.i.i.us
  %i.lq = and i32 %.val47.i.us, 1
  %.not.i51.i.us = icmp eq i32 %i.lq, %i.az
  br i1 %.not.i51.i.us, label %.preheader.i59.i.us, label %.preheader14.i52.i.us

.preheader14.i52.i.us:                            ; preds = %Abc_TtCopy.exit.i.us
  br i1 %.not113.i152.us, label %Abc_TtCopy.exit66.i.us, label %.lr.ph.preheader.i53.i.us

.lr.ph.preheader.i53.i.us:                        ; preds = %.preheader14.i52.i.us
  %wide.trip.count.i54.i.us = zext nneg i32 %i.kc to i64 ; 2 uses
  %min.iters.check896 = icmp ult i32 %i.kb, 2
  br i1 %min.iters.check896, label %.lr.ph.i55.i.us, label %vector.ph897

vector.ph897:                                     ; preds = %.lr.ph.preheader.i53.i.us
  %n.vec898 = and i64 %wide.trip.count.i54.i.us, 2147483644
  br label %vector.body899

vector.body899:                                   ; preds = %vector.body899, %vector.ph897
  %index900 = phi i64 [ 0, %vector.ph897 ], [ %index.next903, %vector.body899 ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %index900 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %wide.load901 = load <2 x i64>, ptr %i.lr, align 8, !tbaa !70
  %wide.load902 = load <2 x i64>, ptr %i.ls, align 8, !tbaa !70
  %i.lt = xor <2 x i64> %wide.load901, splat (i64 -1)
  %i.lu = xor <2 x i64> %wide.load902, splat (i64 -1)
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index900 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store <2 x i64> %i.lt, ptr %i.lv, align 16, !tbaa !70
  store <2 x i64> %i.lu, ptr %i.lw, align 16, !tbaa !70
  %index.next903 = add nuw i64 %index900, 4       ; 2 uses
  %i.lx = icmp eq i64 %index.next903, %n.vec898
  br i1 %i.lx, label %Abc_TtCopy.exit66.i.us, label %vector.body899, !llvm.loop !73

.lr.ph.i55.i.us:                                  ; preds = %.lr.ph.preheader.i53.i.us, %.lr.ph.i55.i.us
  %indvars.iv.i56.i.us = phi i64 [ %indvars.iv.next.i57.i.us, %.lr.ph.i55.i.us ], [ 0, %.lr.ph.preheader.i53.i.us ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv.i56.i.us
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !70
  %i.ma = xor i64 %i.lz, -1
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i56.i.us
  store i64 %i.ma, ptr %i.mb, align 8, !tbaa !70
  %indvars.iv.next.i57.i.us = add nuw nsw i64 %indvars.iv.i56.i.us, 1 ; 2 uses
  %exitcond.not.i58.i.us = icmp eq i64 %indvars.iv.next.i57.i.us, %wide.trip.count.i54.i.us
  br i1 %exitcond.not.i58.i.us, label %Abc_TtCopy.exit66.i.us, label %.lr.ph.i55.i.us, !llvm.loop !74

.preheader.i59.i.us:                              ; preds = %Abc_TtCopy.exit.i.us
  br i1 %.not113.i152.us, label %Abc_TtCopy.exit66.i.us, label %.lr.ph18.preheader.i60.i.us

.lr.ph18.preheader.i60.i.us:                      ; preds = %.preheader.i59.i.us
  %wide.trip.count24.i61.i.us = zext nneg i32 %i.kc to i64
  %i.mc = shl nuw nsw i64 %wide.trip.count24.i61.i.us, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.lc, i64 %i.mc, i1 false), !tbaa !70
  br label %Abc_TtCopy.exit66.i.us

Abc_TtCopy.exit66.i.us:                           ; preds = %vector.body899, %.lr.ph.i55.i.us, %.lr.ph18.preheader.i60.i.us, %.preheader.i59.i.us, %.preheader14.i52.i.us
  %i.md = load i32, ptr %i.cm, align 4
  %i.me = lshr i32 %i.md, 28                      ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.pre468, i64 24 ; 4 uses
  %i.mg = icmp ne i32 %i.ka, 0                    ; 2 uses
  %i.mh = icmp ne i32 %i.me, 0
  %i.mi = and i1 %i.mg, %i.mh
  br i1 %i.mi, label %.lr.ph.preheader.i67.i.us, label %Abc_TtExpand.exit.i.us

.lr.ph.preheader.i67.i.us:                        ; preds = %Abc_TtCopy.exit66.i.us
  %i.mj = add nsw i32 %i.me, -1
  %i.mk = zext nneg i32 %i.ka to i64
  %i.ml = sext i32 %i.kc to i64
  %.idx128.i284.us = shl nsw i64 %i.ml, 3
  %i.mm = getelementptr inbounds i8, ptr %i.d, i64 %.idx128.i284.us ; 2 uses
  %smax.i310.us = call i32 @llvm.smax.i32(i32 %i.kc, i32 1)
  %min.iters.check832 = icmp slt i32 %i.kc, 4
  %i.mn = and i32 %smax.i310.us, 2147483644
  %n.vec834 = zext nneg i32 %i.mn to i64
  %exitcond150.not.i314.us = icmp slt i32 %i.kc, 2
  %exitcond150.not.i314.us.1 = icmp eq i32 %i.kb, 1
  br label %.lr.ph.i68.i.us

.lr.ph.i68.i.us:                                  ; preds = %bb.aj, %.lr.ph.preheader.i67.i.us
  %indvars.iv.i69.i.us = phi i64 [ %i.mk, %.lr.ph.preheader.i67.i.us ], [ %indvars.iv.next.i70.i.us, %bb.aj ] ; 3 uses
  %.017.i.i.us = phi i32 [ %i.mj, %.lr.ph.preheader.i67.i.us ], [ %.1.i.i160.us, %bb.aj ] ; 11 uses
  %indvars.iv.next.i70.i.us = add nsw i64 %indvars.iv.i69.i.us, -1 ; 6 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next.i70.i.us
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !37
  %i.mq = zext nneg i32 %.017.i.i.us to i64       ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.mq
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !37
  %i.mt = icmp sgt i32 %i.mp, %i.ms
  br i1 %i.mt, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i68.i.us
  %i.mu = icmp samesign ugt i64 %indvars.iv.next.i70.i.us, %i.mq
  br i1 %i.mu, label %bb.ad, label %Abc_TtSwapVars.exit316.us

bb.ad:                                            ; preds = %bb.ac
  %i.mv = trunc nuw nsw i64 %indvars.iv.next.i70.i.us to i32 ; 3 uses
  %i.mw = icmp ult i64 %indvars.iv.next.i70.i.us, 6
  br i1 %i.mw, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mx = icmp samesign ult i32 %.017.i.i.us, 6
  br i1 %i.mx, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not113.i152.us, label %Abc_TtSwapVars.exit316.us, label %.preheader120.lr.ph.i286.us

.preheader120.lr.ph.i286.us:                      ; preds = %bb.af
  %i.my = add nsw i32 %i.mv, -6                   ; 2 uses
  %i.mz = shl nuw nsw i32 1, %i.my                ; 2 uses
  %i.na = add nsw i32 %.017.i.i.us, -6            ; 5 uses
  %i.nb = shl nuw nsw i32 1, %i.na
  %i.nc = shl nuw nsw i32 2, %i.na                ; 2 uses
  %i.nd = shl nuw nsw i32 2, %i.my
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = zext nneg i32 %i.nc to i64              ; 3 uses
  %i.ng = zext nneg i32 %i.nb to i64              ; 6 uses
  %i.nh = zext nneg i32 %i.mz to i64              ; 4 uses
  %i.ni = shl nuw nsw i64 %i.ng, 3                ; 2 uses
  %umax873 = call i64 @llvm.umax.i64(i64 %i.nf, i64 %i.nh)
  %i.nj = icmp samesign ult i32 %i.nc, %i.mz
  %umin874 = zext i1 %i.nj to i64                 ; 2 uses
  %i.nk = or disjoint i64 %umin874, %i.nf
  %i.nl = sub nsw i64 %umax873, %i.nk
  %i.nm = add i32 %.017.i.i.us, -5
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = lshr i64 %i.nl, %i.nn
  %i.np = add i64 %i.no, %umin874
  %i.nq = shl i64 %i.np, 3
  %i.nr = add i32 %.017.i.i.us, -5
  %i.ns = zext nneg i32 %i.nr to i64
  %2 = shl i64 %i.nq, %i.ns                       ; 2 uses
  %3 = shl nuw nsw i64 %i.ng, 4
  %i.nt = shl nuw nsw i64 %i.nh, 3                ; 2 uses
  %i.nu = add i64 %indvars.iv.i69.i.us, 4294967290
  %i.nv = and i64 %i.nu, 4294967295
  %i.nw = add nuw nsw i64 %i.nv, 3
  %i.nx = getelementptr i8, ptr %i.d, i64 %i.ni
  %i.ny = getelementptr i8, ptr %i.d, i64 %i.nt
  %i.nz = getelementptr i8, ptr %i.d, i64 %2
  %i.oa = getelementptr i8, ptr %i.nz, i64 %3
  %i.ob = getelementptr i8, ptr %i.d, i64 %2
  %4 = getelementptr i8, ptr %i.ob, i64 %i.nt
  %i.oc = getelementptr i8, ptr %4, i64 %i.ni
  %min.iters.check882 = icmp ult i32 %i.na, 2
  %n.vec884 = and i64 %i.ng, 2147483644
  %xtraiter1022 = and i64 %i.ng, 1
  %i.od = icmp eq i32 %i.na, 0
  %unroll_iter = and i64 %i.ng, 2147483646
  %lcmp.mod1023.not = icmp eq i64 %xtraiter1022, 0
  %lcmp.mod1024 = icmp eq i32 %i.na, 0
  br label %.preheader120.i287.us

.preheader120.i287.us:                            ; preds = %bb.ag, %.preheader120.lr.ph.i286.us
  %indvar870 = phi i64 [ %indvar.next871, %bb.ag ], [ 0, %.preheader120.lr.ph.i286.us ] ; 2 uses
  %.1124.i288.us = phi ptr [ %i.ox, %bb.ag ], [ %i.d, %.preheader120.lr.ph.i286.us ] ; 3 uses
  %i.oe = shl i64 %indvar870, %i.nw               ; 4 uses
  %scevgep872 = getelementptr i8, ptr %i.nx, i64 %i.oe
  %scevgep876 = getelementptr i8, ptr %i.ny, i64 %i.oe
  %invariant.gep.i289.us = getelementptr inbounds nuw [8 x i8], ptr %.1124.i288.us, i64 %i.ng
  %invariant.gep157.i290.us.a = getelementptr inbounds nuw [8 x i8], ptr %.1124.i288.us, i64 %i.nh
  %scevgep875 = getelementptr i8, ptr %i.oa, i64 %i.oe
  %scevgep877.a = getelementptr i8, ptr %i.oc, i64 %i.oe
  %bound0878 = icmp ult ptr %scevgep872, %scevgep877.a
  %bound1879 = icmp ult ptr %scevgep876, %scevgep875
  %found.conflict880 = and i1 %bound0878, %bound1879
  br label %.preheader119.i291.us

.preheader119.i291.us:                            ; preds = %middle.block892, %.preheader120.i287.us
  %indvars.iv138.i292.us = phi i64 [ 0, %.preheader120.i287.us ], [ %indvars.iv.next139.i298.us, %middle.block892 ] ; 3 uses
  %gep.i293.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i289.us, i64 %indvars.iv138.i292.us ; 4 uses
  %gep158.i294.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i290.us.a, i64 %indvars.iv138.i292.us ; 4 uses
  %brmerge = select i1 %min.iters.check882, i1 true, i1 %found.conflict880
  br i1 %brmerge, label %scalar.ph881.preheader, label %vector.body885

scalar.ph881.preheader:                           ; preds = %.preheader119.i291.us
  br i1 %i.od, label %scalar.ph881.epil.preheader, label %scalar.ph881

vector.body885:                                   ; preds = %.preheader119.i291.us, %vector.body885
  %index886 = phi i64 [ %index.next891, %vector.body885 ], [ 0, %.preheader119.i291.us ] ; 3 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %gep.i293.us, i64 %index886 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16 ; 2 uses
  %wide.load887 = load <2 x i64>, ptr %i.of, align 8, !tbaa !70, !alias.scope !75, !noalias !78
  %wide.load888 = load <2 x i64>, ptr %i.og, align 8, !tbaa !70, !alias.scope !75, !noalias !78
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %gep158.i294.us, i64 %index886 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16 ; 2 uses
  %wide.load889 = load <2 x i64>, ptr %i.oh, align 8, !tbaa !70, !alias.scope !78
  %wide.load890 = load <2 x i64>, ptr %i.oi, align 8, !tbaa !70, !alias.scope !78
  store <2 x i64> %wide.load889, ptr %i.of, align 8, !tbaa !70, !alias.scope !75, !noalias !78
  store <2 x i64> %wide.load890, ptr %i.og, align 8, !tbaa !70, !alias.scope !75, !noalias !78
  store <2 x i64> %wide.load887, ptr %i.oh, align 8, !tbaa !70, !alias.scope !78
  store <2 x i64> %wide.load888, ptr %i.oi, align 8, !tbaa !70, !alias.scope !78
  %index.next891 = add nuw i64 %index886, 4       ; 2 uses
  %i.oj = icmp eq i64 %index.next891, %n.vec884
  br i1 %i.oj, label %middle.block892, label %vector.body885, !llvm.loop !80

scalar.ph881:                                     ; preds = %scalar.ph881.preheader, %scalar.ph881
  %indvars.iv.i295.us = phi i64 [ %indvars.iv.next.i296.us.1, %scalar.ph881 ], [ 0, %scalar.ph881.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph881 ], [ 0, %scalar.ph881.preheader ]
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %gep.i293.us, i64 %indvars.iv.i295.us ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !70
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %gep158.i294.us, i64 %indvars.iv.i295.us ; 2 uses
  %i.on = load i64, ptr %i.om, align 8, !tbaa !70
  store i64 %i.on, ptr %i.ok, align 8, !tbaa !70
  store i64 %i.ol, ptr %i.om, align 8, !tbaa !70
  %indvars.iv.next.i296.us = or disjoint i64 %indvars.iv.i295.us, 1 ; 2 uses
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %gep.i293.us, i64 %indvars.iv.next.i296.us ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !70
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %gep158.i294.us, i64 %indvars.iv.next.i296.us ; 2 uses
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !70
  store i64 %i.or, ptr %i.oo, align 8, !tbaa !70
  store i64 %i.op, ptr %i.oq, align 8, !tbaa !70
  %indvars.iv.next.i296.us.1 = add nuw nsw i64 %indvars.iv.i295.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block892.loopexit.unr-lcssa, label %scalar.ph881, !llvm.loop !81

middle.block892.loopexit.unr-lcssa:               ; preds = %scalar.ph881
  br i1 %lcmp.mod1023.not, label %middle.block892, label %scalar.ph881.epil.preheader

scalar.ph881.epil.preheader:                      ; preds = %middle.block892.loopexit.unr-lcssa, %scalar.ph881.preheader
  %indvars.iv.i295.us.epil.init = phi i64 [ 0, %scalar.ph881.preheader ], [ %indvars.iv.next.i296.us.1, %middle.block892.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1024)
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %gep.i293.us, i64 %indvars.iv.i295.us.epil.init ; 2 uses
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !70
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %gep158.i294.us, i64 %indvars.iv.i295.us.epil.init ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !70
  store i64 %i.ov, ptr %i.os, align 8, !tbaa !70
  store i64 %i.ot, ptr %i.ou, align 8, !tbaa !70
  br label %middle.block892

middle.block892:                                  ; preds = %vector.body885, %scalar.ph881.epil.preheader, %middle.block892.loopexit.unr-lcssa
  %indvars.iv.next139.i298.us = add nuw nsw i64 %indvars.iv138.i292.us, %i.nf ; 2 uses
  %i.ow = icmp samesign ult i64 %indvars.iv.next139.i298.us, %i.nh
  br i1 %i.ow, label %.preheader119.i291.us, label %bb.ag, !llvm.loop !82

bb.ag:                                            ; preds = %middle.block892
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %.1124.i288.us, i64 %i.ne ; 2 uses
  %i.oy = icmp ult ptr %i.ox, %i.mm
  %indvar.next871 = add i64 %indvar870, 1
  br i1 %i.oy, label %.preheader120.i287.us, label %Abc_TtSwapVars.exit316.us, !llvm.loop !83

bb.ah:                                            ; preds = %bb.ae
  br i1 %.not113.i152.us, label %Abc_TtSwapVars.exit316.us, label %.preheader.lr.ph.i299.us

.preheader.lr.ph.i299.us:                         ; preds = %bb.ah
  %i.oz = add nsw i32 %i.mv, -6                   ; 3 uses
  %i.pa = shl nuw nsw i32 1, %i.oz
  %i.pb = shl nuw nsw i32 1, %.017.i.i.us
  %i.pc = zext nneg i32 %.017.i.i.us to i64
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.pc
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !70 ; 5 uses
  %i.pf = zext nneg i32 %i.pb to i64              ; 3 uses
  %i.pg = xor i64 %i.pe, -1                       ; 2 uses
  %i.ph = shl nuw nsw i32 2, %i.oz
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = zext nneg i32 %i.pa to i64              ; 3 uses
  %min.iters.check852 = icmp eq i32 %i.oz, 0
  %n.vec854 = and i64 %i.pj, 2147483646
  %broadcast.splatinsert855 = insertelement <2 x i64> poison, i64 %i.pe, i64 0
  %broadcast.splat856 = shufflevector <2 x i64> %broadcast.splatinsert855, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert857 = insertelement <2 x i64> poison, i64 %i.pf, i64 0
  %broadcast.splat858 = shufflevector <2 x i64> %broadcast.splatinsert857, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert859 = insertelement <2 x i64> poison, i64 %i.pg, i64 0
  %broadcast.splat860 = shufflevector <2 x i64> %broadcast.splatinsert859, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.i300.us

.preheader.i300.us:                               ; preds = %middle.block866, %.preheader.lr.ph.i299.us
  %.0126.i301.us = phi ptr [ %i.d, %.preheader.lr.ph.i299.us ], [ %i.qg, %middle.block866 ] ; 4 uses
  %invariant.gep159.i302.us = getelementptr inbounds nuw [8 x i8], ptr %.0126.i301.us, i64 %i.pj ; 2 uses
  br i1 %min.iters.check852, label %scalar.ph851, label %vector.body861

vector.body861:                                   ; preds = %.preheader.i300.us, %vector.body861
  %index862 = phi i64 [ %index.next865, %vector.body861 ], [ 0, %.preheader.i300.us ] ; 3 uses
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %.0126.i301.us, i64 %index862 ; 2 uses
  %wide.load863 = load <2 x i64>, ptr %i.pk, align 8, !tbaa !70 ; 2 uses
  %i.pl = and <2 x i64> %wide.load863, %broadcast.splat856
  %i.pm = lshr <2 x i64> %i.pl, %broadcast.splat858
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i302.us, i64 %index862 ; 2 uses
  %wide.load864 = load <2 x i64>, ptr %i.pn, align 8, !tbaa !70 ; 2 uses
  %i.po = shl <2 x i64> %wide.load864, %broadcast.splat858
  %i.pp = and <2 x i64> %i.po, %broadcast.splat856
  %i.pq = and <2 x i64> %wide.load863, %broadcast.splat860
  %i.pr = or <2 x i64> %i.pp, %i.pq
  store <2 x i64> %i.pr, ptr %i.pk, align 8, !tbaa !70
  %i.ps = and <2 x i64> %wide.load864, %broadcast.splat856
  %i.pt = or <2 x i64> %i.ps, %i.pm
  store <2 x i64> %i.pt, ptr %i.pn, align 8, !tbaa !70
  %index.next865 = add nuw i64 %index862, 2       ; 2 uses
  %i.pu = icmp eq i64 %index.next865, %n.vec854
  br i1 %i.pu, label %middle.block866, label %vector.body861, !llvm.loop !84

scalar.ph851:                                     ; preds = %.preheader.i300.us, %scalar.ph851
  %indvars.iv141.i303.us = phi i64 [ %indvars.iv.next142.i305.us, %scalar.ph851 ], [ 0, %.preheader.i300.us ] ; 3 uses
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %.0126.i301.us, i64 %indvars.iv141.i303.us ; 2 uses
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !70 ; 2 uses
  %i.px = and i64 %i.pw, %i.pe
  %i.py = lshr i64 %i.px, %i.pf
  %gep160.i304.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i302.us, i64 %indvars.iv141.i303.us ; 2 uses
  %i.pz = load i64, ptr %gep160.i304.us, align 8, !tbaa !70 ; 2 uses
  %i.qa = shl i64 %i.pz, %i.pf
  %i.qb = and i64 %i.qa, %i.pe
  %i.qc = and i64 %i.pw, %i.pg
  %i.qd = or i64 %i.qb, %i.qc
  store i64 %i.qd, ptr %i.pv, align 8, !tbaa !70
  %i.qe = and i64 %i.pz, %i.pe
  %i.qf = or i64 %i.qe, %i.py
  store i64 %i.qf, ptr %gep160.i304.us, align 8, !tbaa !70
  %indvars.iv.next142.i305.us = add nuw nsw i64 %indvars.iv141.i303.us, 1 ; 2 uses
  %exitcond145.not.i306.us = icmp eq i64 %indvars.iv.next142.i305.us, %i.pj
  br i1 %exitcond145.not.i306.us, label %middle.block866, label %scalar.ph851, !llvm.loop !85

middle.block866:                                  ; preds = %vector.body861, %scalar.ph851
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %.0126.i301.us, i64 %i.pi ; 2 uses
  %i.qh = icmp ult ptr %i.qg, %i.mm
  br i1 %i.qh, label %.preheader.i300.us, label %Abc_TtSwapVars.exit316.us, !llvm.loop !86

bb.ai:                                            ; preds = %bb.ad
  br i1 %.not113.i152.us, label %Abc_TtSwapVars.exit316.us, label %.lr.ph.i308.us

.lr.ph.i308.us:                                   ; preds = %bb.ai
  %.neg.i309.us = shl nsw i32 -1, %.017.i.i.us
  %i.qi = shl nuw nsw i32 1, %i.mv
  %i.qj = add nsw i32 %.neg.i309.us, %i.qi
  %i.qk = zext nneg i32 %.017.i.i.us to i64
  %i.ql = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.qk
  %i.qm = getelementptr inbounds nuw [24 x i8], ptr %i.ql, i64 %indvars.iv.next.i70.i.us ; 3 uses
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !70 ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !70 ; 4 uses
  %i.qq = zext i32 %i.qj to i64                   ; 7 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !70 ; 4 uses
  br i1 %min.iters.check832, label %scalar.ph831, label %vector.ph833

vector.ph833:                                     ; preds = %.lr.ph.i308.us
  %broadcast.splatinsert835 = insertelement <2 x i64> poison, i64 %i.qn, i64 0
  %broadcast.splat836 = shufflevector <2 x i64> %broadcast.splatinsert835, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert837 = insertelement <2 x i64> poison, i64 %i.qp, i64 0
  %broadcast.splat838 = shufflevector <2 x i64> %broadcast.splatinsert837, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert839 = insertelement <2 x i64> poison, i64 %i.qq, i64 0
  %broadcast.splat840 = shufflevector <2 x i64> %broadcast.splatinsert839, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert841 = insertelement <2 x i64> poison, i64 %i.qs, i64 0
  %broadcast.splat842 = shufflevector <2 x i64> %broadcast.splatinsert841, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body843

vector.body843:                                   ; preds = %vector.body843, %vector.ph833
  %index844 = phi i64 [ 0, %vector.ph833 ], [ %index.next847, %vector.body843 ] ; 2 uses
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index844 ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16 ; 2 uses
  %wide.load845 = load <2 x i64>, ptr %i.qt, align 16, !tbaa !70 ; 3 uses
  %wide.load846 = load <2 x i64>, ptr %i.qu, align 16, !tbaa !70 ; 3 uses
  %i.qv = and <2 x i64> %wide.load845, %broadcast.splat836
  %i.qw = and <2 x i64> %wide.load846, %broadcast.splat836
  %i.qx = and <2 x i64> %wide.load845, %broadcast.splat838
  %i.qy = and <2 x i64> %wide.load846, %broadcast.splat838
  %i.qz = shl <2 x i64> %i.qx, %broadcast.splat840
  %i.ra = shl <2 x i64> %i.qy, %broadcast.splat840
  %i.rb = or <2 x i64> %i.qz, %i.qv
  %i.rc = or <2 x i64> %i.ra, %i.qw
  %i.rd = and <2 x i64> %wide.load845, %broadcast.splat842
  %i.re = and <2 x i64> %wide.load846, %broadcast.splat842
  %i.rf = lshr <2 x i64> %i.rd, %broadcast.splat840
  %i.rg = lshr <2 x i64> %i.re, %broadcast.splat840
  %i.rh = or <2 x i64> %i.rb, %i.rf
  %i.ri = or <2 x i64> %i.rc, %i.rg
  store <2 x i64> %i.rh, ptr %i.qt, align 16, !tbaa !70
  store <2 x i64> %i.ri, ptr %i.qu, align 16, !tbaa !70
  %index.next847 = add nuw i64 %index844, 4       ; 2 uses
  %i.rj = icmp eq i64 %index.next847, %n.vec834
  br i1 %i.rj, label %Abc_TtSwapVars.exit316.us, label %vector.body843, !llvm.loop !87

scalar.ph831:                                     ; preds = %.lr.ph.i308.us
  %i.rk = load i64, ptr %i.d, align 16, !tbaa !70 ; 3 uses
  %i.rl = and i64 %i.rk, %i.qn
  %i.rm = and i64 %i.rk, %i.qp
  %i.rn = shl i64 %i.rm, %i.qq
  %i.ro = or i64 %i.rn, %i.rl
  %i.rp = and i64 %i.rk, %i.qs
  %i.rq = lshr i64 %i.rp, %i.qq
  %i.rr = or i64 %i.ro, %i.rq
  store i64 %i.rr, ptr %i.d, align 16, !tbaa !70
  br i1 %exitcond150.not.i314.us, label %Abc_TtSwapVars.exit316.us, label %scalar.ph831.1

scalar.ph831.1:                                   ; preds = %scalar.ph831
  %i.rs = load i64, ptr %i.cf, align 8, !tbaa !70 ; 3 uses
  %i.rt = and i64 %i.rs, %i.qn
  %i.ru = and i64 %i.rs, %i.qp
  %i.rv = shl i64 %i.ru, %i.qq
  %i.rw = or i64 %i.rv, %i.rt
  %i.rx = and i64 %i.rs, %i.qs
  %i.ry = lshr i64 %i.rx, %i.qq
  %i.rz = or i64 %i.rw, %i.ry
  store i64 %i.rz, ptr %i.cf, align 8, !tbaa !70
  br i1 %exitcond150.not.i314.us.1, label %Abc_TtSwapVars.exit316.us, label %scalar.ph831.2

scalar.ph831.2:                                   ; preds = %scalar.ph831.1
  %i.sa = load i64, ptr %i.cg, align 16, !tbaa !70 ; 3 uses
  %i.sb = and i64 %i.sa, %i.qn
  %i.sc = and i64 %i.sa, %i.qp
  %i.sd = shl i64 %i.sc, %i.qq
  %i.se = or i64 %i.sd, %i.sb
  %i.sf = and i64 %i.sa, %i.qs
  %i.sg = lshr i64 %i.sf, %i.qq
  %i.sh = or i64 %i.se, %i.sg
  store i64 %i.sh, ptr %i.cg, align 16, !tbaa !70
  br label %Abc_TtSwapVars.exit316.us

Abc_TtSwapVars.exit316.us:                        ; preds = %bb.ag, %middle.block866, %vector.body843, %scalar.ph831, %scalar.ph831.1, %scalar.ph831.2, %bb.ai, %bb.ah, %bb.af, %bb.ac
  %i.si = add nsw i32 %.017.i.i.us, -1
  br label %bb.aj

bb.aj:                                            ; preds = %Abc_TtSwapVars.exit316.us, %.lr.ph.i68.i.us
  %.1.i.i160.us = phi i32 [ %.017.i.i.us, %.lr.ph.i68.i.us ], [ %i.si, %Abc_TtSwapVars.exit316.us ] ; 2 uses
  %i.sj = icmp samesign ugt i64 %indvars.iv.i69.i.us, 1
  %i.sk = icmp sgt i32 %.1.i.i160.us, -1
  %i.sl = select i1 %i.sj, i1 %i.sk, i1 false
  br i1 %i.sl, label %.lr.ph.i68.i.us, label %Abc_TtExpand.exit.i.us, !llvm.loop !88

Abc_TtExpand.exit.i.us:                           ; preds = %bb.aj, %Abc_TtCopy.exit66.i.us
  %i.sm = load i32, ptr %i.cs, align 4
  %i.sn = lshr i32 %i.sm, 28                      ; 2 uses
  %i.so = icmp ne i32 %i.sn, 0
  %i.sp = and i1 %i.mg, %i.so
  br i1 %i.sp, label %.lr.ph.preheader.i71.i.us, label %Abc_TtExpand.exit77.i.us

.lr.ph.preheader.i71.i.us:                        ; preds = %Abc_TtExpand.exit.i.us
  %i.sq = add nsw i32 %i.sn, -1
  %i.sr = zext nneg i32 %i.ka to i64
  %i.ss = sext i32 %i.kc to i64
  %.idx128.i249.us = shl nsw i64 %i.ss, 3
  %i.st = getelementptr inbounds i8, ptr %i.e, i64 %.idx128.i249.us ; 2 uses
  %smax.i275.us = call i32 @llvm.smax.i32(i32 %i.kc, i32 1)
  %min.iters.check768 = icmp slt i32 %i.kc, 4
  %i.su = and i32 %smax.i275.us, 2147483644
  %n.vec770 = zext nneg i32 %i.su to i64
  %exitcond150.not.i279.us = icmp slt i32 %i.kc, 2
  %exitcond150.not.i279.us.1 = icmp eq i32 %i.kb, 1
  br label %.lr.ph.i72.i.us

.lr.ph.i72.i.us:                                  ; preds = %bb.ar, %.lr.ph.preheader.i71.i.us
  %indvars.iv.i73.i.us = phi i64 [ %i.sr, %.lr.ph.preheader.i71.i.us ], [ %indvars.iv.next.i75.i.us, %bb.ar ] ; 3 uses
  %.017.i74.i.us = phi i32 [ %i.sq, %.lr.ph.preheader.i71.i.us ], [ %.1.i76.i.us, %bb.ar ] ; 11 uses
  %indvars.iv.next.i75.i.us = add nsw i64 %indvars.iv.i73.i.us, -1 ; 6 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next.i75.i.us
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !37
  %i.sx = zext nneg i32 %.017.i74.i.us to i64     ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.sx
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !37
  %i.ta = icmp sgt i32 %i.sw, %i.sz
  br i1 %i.ta, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i72.i.us
  %i.tb = icmp samesign ugt i64 %indvars.iv.next.i75.i.us, %i.sx
  br i1 %i.tb, label %bb.al, label %Abc_TtSwapVars.exit281.us

bb.al:                                            ; preds = %bb.ak
  %i.tc = trunc nuw nsw i64 %indvars.iv.next.i75.i.us to i32 ; 3 uses
  %i.td = icmp ult i64 %indvars.iv.next.i75.i.us, 6
  br i1 %i.td, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.te = icmp samesign ult i32 %.017.i74.i.us, 6
  br i1 %i.te, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not113.i152.us, label %Abc_TtSwapVars.exit281.us, label %.preheader120.lr.ph.i251.us

.preheader120.lr.ph.i251.us:                      ; preds = %bb.an
  %i.tf = add nsw i32 %i.tc, -6                   ; 2 uses
  %i.tg = shl nuw nsw i32 1, %i.tf                ; 2 uses
  %i.th = add nsw i32 %.017.i74.i.us, -6          ; 5 uses
  %i.ti = shl nuw nsw i32 1, %i.th
  %i.tj = shl nuw nsw i32 2, %i.th                ; 2 uses
  %i.tk = shl nuw nsw i32 2, %i.tf
  %i.tl = zext nneg i32 %i.tk to i64
  %i.tm = zext nneg i32 %i.tj to i64              ; 3 uses
  %i.tn = zext nneg i32 %i.ti to i64              ; 6 uses
  %i.to = zext nneg i32 %i.tg to i64              ; 4 uses
  %i.tp = shl nuw nsw i64 %i.tn, 3                ; 2 uses
  %umax809 = call i64 @llvm.umax.i64(i64 %i.tm, i64 %i.to)
  %i.tq = icmp samesign ult i32 %i.tj, %i.tg
  %umin810 = zext i1 %i.tq to i64                 ; 2 uses
  %i.tr = or disjoint i64 %umin810, %i.tm
  %i.ts = sub nsw i64 %umax809, %i.tr
  %i.tt = add i32 %.017.i74.i.us, -5
  %i.tu = zext nneg i32 %i.tt to i64
  %i.tv = lshr i64 %i.ts, %i.tu
  %i.tw = add i64 %i.tv, %umin810
  %i.tx = shl i64 %i.tw, 3
  %i.ty = add i32 %.017.i74.i.us, -5
  %i.tz = zext nneg i32 %i.ty to i64
  %5 = shl i64 %i.tx, %i.tz                       ; 2 uses
  %6 = shl nuw nsw i64 %i.tn, 4
  %i.ua = shl nuw nsw i64 %i.to, 3                ; 2 uses
  %i.ub = add i64 %indvars.iv.i73.i.us, 4294967290
  %i.uc = and i64 %i.ub, 4294967295
  %i.ud = add nuw nsw i64 %i.uc, 3
  %i.ue = getelementptr i8, ptr %i.e, i64 %i.tp
  %i.uf = getelementptr i8, ptr %i.e, i64 %i.ua
  %i.ug = getelementptr i8, ptr %i.e, i64 %5
  %i.uh = getelementptr i8, ptr %i.ug, i64 %6
  %i.ui = getelementptr i8, ptr %i.e, i64 %5
  %7 = getelementptr i8, ptr %i.ui, i64 %i.ua
  %i.uj = getelementptr i8, ptr %7, i64 %i.tp
  %min.iters.check818 = icmp ult i32 %i.th, 2
  %n.vec820 = and i64 %i.tn, 2147483644
  %xtraiter1025 = and i64 %i.tn, 1
  %i.uk = icmp eq i32 %i.th, 0
  %unroll_iter1028 = and i64 %i.tn, 2147483646
  %lcmp.mod1026.not = icmp eq i64 %xtraiter1025, 0
  %lcmp.mod1027 = icmp eq i32 %i.th, 0
  br label %.preheader120.i252.us

.preheader120.i252.us:                            ; preds = %bb.ao, %.preheader120.lr.ph.i251.us
  %indvar806 = phi i64 [ %indvar.next807, %bb.ao ], [ 0, %.preheader120.lr.ph.i251.us ] ; 2 uses
  %.1124.i253.us = phi ptr [ %i.ve, %bb.ao ], [ %i.e, %.preheader120.lr.ph.i251.us ] ; 3 uses
  %i.ul = shl i64 %indvar806, %i.ud               ; 4 uses
  %scevgep808 = getelementptr i8, ptr %i.ue, i64 %i.ul
  %scevgep812 = getelementptr i8, ptr %i.uf, i64 %i.ul
  %invariant.gep.i254.us = getelementptr inbounds nuw [8 x i8], ptr %.1124.i253.us, i64 %i.tn
  %invariant.gep157.i255.us.a = getelementptr inbounds nuw [8 x i8], ptr %.1124.i253.us, i64 %i.to
  %scevgep811 = getelementptr i8, ptr %i.uh, i64 %i.ul
  %scevgep813.a = getelementptr i8, ptr %i.uj, i64 %i.ul
  %bound0814 = icmp ult ptr %scevgep808, %scevgep813.a
  %bound1815 = icmp ult ptr %scevgep812, %scevgep811
  %found.conflict816 = and i1 %bound0814, %bound1815
  br label %.preheader119.i256.us

.preheader119.i256.us:                            ; preds = %middle.block828, %.preheader120.i252.us
  %indvars.iv138.i257.us = phi i64 [ 0, %.preheader120.i252.us ], [ %indvars.iv.next139.i263.us, %middle.block828 ] ; 3 uses
  %gep.i258.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i254.us, i64 %indvars.iv138.i257.us ; 4 uses
  %gep158.i259.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i255.us.a, i64 %indvars.iv138.i257.us ; 4 uses
  %brmerge1126 = select i1 %min.iters.check818, i1 true, i1 %found.conflict816
  br i1 %brmerge1126, label %scalar.ph817.preheader, label %vector.body821

scalar.ph817.preheader:                           ; preds = %.preheader119.i256.us
  br i1 %i.uk, label %scalar.ph817.epil.preheader, label %scalar.ph817

vector.body821:                                   ; preds = %.preheader119.i256.us, %vector.body821
  %index822 = phi i64 [ %index.next827, %vector.body821 ], [ 0, %.preheader119.i256.us ] ; 3 uses
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %gep.i258.us, i64 %index822 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16 ; 2 uses
  %wide.load823 = load <2 x i64>, ptr %i.um, align 8, !tbaa !70, !alias.scope !89, !noalias !92
  %wide.load824 = load <2 x i64>, ptr %i.un, align 8, !tbaa !70, !alias.scope !89, !noalias !92
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %gep158.i259.us, i64 %index822 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16 ; 2 uses
  %wide.load825 = load <2 x i64>, ptr %i.uo, align 8, !tbaa !70, !alias.scope !92
  %wide.load826 = load <2 x i64>, ptr %i.up, align 8, !tbaa !70, !alias.scope !92
  store <2 x i64> %wide.load825, ptr %i.um, align 8, !tbaa !70, !alias.scope !89, !noalias !92
  store <2 x i64> %wide.load826, ptr %i.un, align 8, !tbaa !70, !alias.scope !89, !noalias !92
  store <2 x i64> %wide.load823, ptr %i.uo, align 8, !tbaa !70, !alias.scope !92
  store <2 x i64> %wide.load824, ptr %i.up, align 8, !tbaa !70, !alias.scope !92
  %index.next827 = add nuw i64 %index822, 4       ; 2 uses
  %i.uq = icmp eq i64 %index.next827, %n.vec820
  br i1 %i.uq, label %middle.block828, label %vector.body821, !llvm.loop !94

scalar.ph817:                                     ; preds = %scalar.ph817.preheader, %scalar.ph817
  %indvars.iv.i260.us = phi i64 [ %indvars.iv.next.i261.us.1, %scalar.ph817 ], [ 0, %scalar.ph817.preheader ] ; 4 uses
  %niter1029 = phi i64 [ %niter1029.next.1, %scalar.ph817 ], [ 0, %scalar.ph817.preheader ]
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %gep.i258.us, i64 %indvars.iv.i260.us ; 2 uses
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !70
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %gep158.i259.us, i64 %indvars.iv.i260.us ; 2 uses
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !70
  store i64 %i.uu, ptr %i.ur, align 8, !tbaa !70
  store i64 %i.us, ptr %i.ut, align 8, !tbaa !70
  %indvars.iv.next.i261.us = or disjoint i64 %indvars.iv.i260.us, 1 ; 2 uses
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %gep.i258.us, i64 %indvars.iv.next.i261.us ; 2 uses
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !70
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %gep158.i259.us, i64 %indvars.iv.next.i261.us ; 2 uses
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !70
  store i64 %i.uy, ptr %i.uv, align 8, !tbaa !70
  store i64 %i.uw, ptr %i.ux, align 8, !tbaa !70
  %indvars.iv.next.i261.us.1 = add nuw nsw i64 %indvars.iv.i260.us, 2 ; 2 uses
  %niter1029.next.1 = add i64 %niter1029, 2       ; 2 uses
  %niter1029.ncmp.1 = icmp eq i64 %niter1029.next.1, %unroll_iter1028
  br i1 %niter1029.ncmp.1, label %middle.block828.loopexit.unr-lcssa, label %scalar.ph817, !llvm.loop !95

middle.block828.loopexit.unr-lcssa:               ; preds = %scalar.ph817
  br i1 %lcmp.mod1026.not, label %middle.block828, label %scalar.ph817.epil.preheader

scalar.ph817.epil.preheader:                      ; preds = %middle.block828.loopexit.unr-lcssa, %scalar.ph817.preheader
  %indvars.iv.i260.us.epil.init = phi i64 [ 0, %scalar.ph817.preheader ], [ %indvars.iv.next.i261.us.1, %middle.block828.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1027)
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %gep.i258.us, i64 %indvars.iv.i260.us.epil.init ; 2 uses
  %i.va = load i64, ptr %i.uz, align 8, !tbaa !70
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %gep158.i259.us, i64 %indvars.iv.i260.us.epil.init ; 2 uses
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !70
  store i64 %i.vc, ptr %i.uz, align 8, !tbaa !70
  store i64 %i.va, ptr %i.vb, align 8, !tbaa !70
  br label %middle.block828

middle.block828:                                  ; preds = %vector.body821, %scalar.ph817.epil.preheader, %middle.block828.loopexit.unr-lcssa
  %indvars.iv.next139.i263.us = add nuw nsw i64 %indvars.iv138.i257.us, %i.tm ; 2 uses
  %i.vd = icmp samesign ult i64 %indvars.iv.next139.i263.us, %i.to
  br i1 %i.vd, label %.preheader119.i256.us, label %bb.ao, !llvm.loop !82

bb.ao:                                            ; preds = %middle.block828
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %.1124.i253.us, i64 %i.tl ; 2 uses
  %i.vf = icmp ult ptr %i.ve, %i.st
  %indvar.next807 = add i64 %indvar806, 1
  br i1 %i.vf, label %.preheader120.i252.us, label %Abc_TtSwapVars.exit281.us, !llvm.loop !83

bb.ap:                                            ; preds = %bb.am
  br i1 %.not113.i152.us, label %Abc_TtSwapVars.exit281.us, label %.preheader.lr.ph.i264.us

.preheader.lr.ph.i264.us:                         ; preds = %bb.ap
  %i.vg = add nsw i32 %i.tc, -6                   ; 3 uses
  %i.vh = shl nuw nsw i32 1, %i.vg
  %i.vi = shl nuw nsw i32 1, %.017.i74.i.us
  %i.vj = zext nneg i32 %.017.i74.i.us to i64
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.vj
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !70 ; 5 uses
  %i.vm = zext nneg i32 %i.vi to i64              ; 3 uses
  %i.vn = xor i64 %i.vl, -1                       ; 2 uses
  %i.vo = shl nuw nsw i32 2, %i.vg
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = zext nneg i32 %i.vh to i64              ; 3 uses
  %min.iters.check788 = icmp eq i32 %i.vg, 0
  %n.vec790 = and i64 %i.vq, 2147483646
  %broadcast.splatinsert791 = insertelement <2 x i64> poison, i64 %i.vl, i64 0
  %broadcast.splat792 = shufflevector <2 x i64> %broadcast.splatinsert791, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert793 = insertelement <2 x i64> poison, i64 %i.vm, i64 0
  %broadcast.splat794 = shufflevector <2 x i64> %broadcast.splatinsert793, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert795 = insertelement <2 x i64> poison, i64 %i.vn, i64 0
  %broadcast.splat796 = shufflevector <2 x i64> %broadcast.splatinsert795, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.i265.us

.preheader.i265.us:                               ; preds = %middle.block802, %.preheader.lr.ph.i264.us
  %.0126.i266.us = phi ptr [ %i.e, %.preheader.lr.ph.i264.us ], [ %i.wn, %middle.block802 ] ; 4 uses
  %invariant.gep159.i267.us = getelementptr inbounds nuw [8 x i8], ptr %.0126.i266.us, i64 %i.vq ; 2 uses
  br i1 %min.iters.check788, label %scalar.ph787, label %vector.body797

vector.body797:                                   ; preds = %.preheader.i265.us, %vector.body797
  %index798 = phi i64 [ %index.next801, %vector.body797 ], [ 0, %.preheader.i265.us ] ; 3 uses
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %.0126.i266.us, i64 %index798 ; 2 uses
  %wide.load799 = load <2 x i64>, ptr %i.vr, align 8, !tbaa !70 ; 2 uses
  %i.vs = and <2 x i64> %wide.load799, %broadcast.splat792
  %i.vt = lshr <2 x i64> %i.vs, %broadcast.splat794
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i267.us, i64 %index798 ; 2 uses
  %wide.load800 = load <2 x i64>, ptr %i.vu, align 8, !tbaa !70 ; 2 uses
  %i.vv = shl <2 x i64> %wide.load800, %broadcast.splat794
  %i.vw = and <2 x i64> %i.vv, %broadcast.splat792
  %i.vx = and <2 x i64> %wide.load799, %broadcast.splat796
  %i.vy = or <2 x i64> %i.vw, %i.vx
  store <2 x i64> %i.vy, ptr %i.vr, align 8, !tbaa !70
  %i.vz = and <2 x i64> %wide.load800, %broadcast.splat792
  %i.wa = or <2 x i64> %i.vz, %i.vt
  store <2 x i64> %i.wa, ptr %i.vu, align 8, !tbaa !70
  %index.next801 = add nuw i64 %index798, 2       ; 2 uses
  %i.wb = icmp eq i64 %index.next801, %n.vec790
  br i1 %i.wb, label %middle.block802, label %vector.body797, !llvm.loop !96

scalar.ph787:                                     ; preds = %.preheader.i265.us, %scalar.ph787
  %indvars.iv141.i268.us = phi i64 [ %indvars.iv.next142.i270.us, %scalar.ph787 ], [ 0, %.preheader.i265.us ] ; 3 uses
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %.0126.i266.us, i64 %indvars.iv141.i268.us ; 2 uses
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !70 ; 2 uses
  %i.we = and i64 %i.wd, %i.vl
  %i.wf = lshr i64 %i.we, %i.vm
  %gep160.i269.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i267.us, i64 %indvars.iv141.i268.us ; 2 uses
  %i.wg = load i64, ptr %gep160.i269.us, align 8, !tbaa !70 ; 2 uses
  %i.wh = shl i64 %i.wg, %i.vm
  %i.wi = and i64 %i.wh, %i.vl
  %i.wj = and i64 %i.wd, %i.vn
  %i.wk = or i64 %i.wi, %i.wj
  store i64 %i.wk, ptr %i.wc, align 8, !tbaa !70
  %i.wl = and i64 %i.wg, %i.vl
  %i.wm = or i64 %i.wl, %i.wf
  store i64 %i.wm, ptr %gep160.i269.us, align 8, !tbaa !70
  %indvars.iv.next142.i270.us = add nuw nsw i64 %indvars.iv141.i268.us, 1 ; 2 uses
  %exitcond145.not.i271.us = icmp eq i64 %indvars.iv.next142.i270.us, %i.vq
  br i1 %exitcond145.not.i271.us, label %middle.block802, label %scalar.ph787, !llvm.loop !97

middle.block802:                                  ; preds = %vector.body797, %scalar.ph787
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %.0126.i266.us, i64 %i.vp ; 2 uses
  %i.wo = icmp ult ptr %i.wn, %i.st
  br i1 %i.wo, label %.preheader.i265.us, label %Abc_TtSwapVars.exit281.us, !llvm.loop !86

bb.aq:                                            ; preds = %bb.al
  br i1 %.not113.i152.us, label %Abc_TtSwapVars.exit281.us, label %.lr.ph.i273.us

.lr.ph.i273.us:                                   ; preds = %bb.aq
  %.neg.i274.us = shl nsw i32 -1, %.017.i74.i.us
  %i.wp = shl nuw nsw i32 1, %i.tc
  %i.wq = add nsw i32 %.neg.i274.us, %i.wp
  %i.wr = zext nneg i32 %.017.i74.i.us to i64
  %i.ws = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.wr
  %i.wt = getelementptr inbounds nuw [24 x i8], ptr %i.ws, i64 %indvars.iv.next.i75.i.us ; 3 uses
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !70 ; 4 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !70 ; 4 uses
  %i.wx = zext i32 %i.wq to i64                   ; 7 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !70 ; 4 uses
  br i1 %min.iters.check768, label %scalar.ph767, label %vector.ph769

vector.ph769:                                     ; preds = %.lr.ph.i273.us
  %broadcast.splatinsert771 = insertelement <2 x i64> poison, i64 %i.wu, i64 0
  %broadcast.splat772 = shufflevector <2 x i64> %broadcast.splatinsert771, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert773 = insertelement <2 x i64> poison, i64 %i.ww, i64 0
  %broadcast.splat774 = shufflevector <2 x i64> %broadcast.splatinsert773, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert775 = insertelement <2 x i64> poison, i64 %i.wx, i64 0
  %broadcast.splat776 = shufflevector <2 x i64> %broadcast.splatinsert775, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert777 = insertelement <2 x i64> poison, i64 %i.wz, i64 0
  %broadcast.splat778 = shufflevector <2 x i64> %broadcast.splatinsert777, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body779

vector.body779:                                   ; preds = %vector.body779, %vector.ph769
  %index780 = phi i64 [ 0, %vector.ph769 ], [ %index.next783, %vector.body779 ] ; 2 uses
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index780 ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 16 ; 2 uses
  %wide.load781 = load <2 x i64>, ptr %i.xa, align 16, !tbaa !70 ; 3 uses
  %wide.load782 = load <2 x i64>, ptr %i.xb, align 16, !tbaa !70 ; 3 uses
  %i.xc = and <2 x i64> %wide.load781, %broadcast.splat772
  %i.xd = and <2 x i64> %wide.load782, %broadcast.splat772
  %i.xe = and <2 x i64> %wide.load781, %broadcast.splat774
  %i.xf = and <2 x i64> %wide.load782, %broadcast.splat774
  %i.xg = shl <2 x i64> %i.xe, %broadcast.splat776
  %i.xh = shl <2 x i64> %i.xf, %broadcast.splat776
  %i.xi = or <2 x i64> %i.xg, %i.xc
  %i.xj = or <2 x i64> %i.xh, %i.xd
  %i.xk = and <2 x i64> %wide.load781, %broadcast.splat778
  %i.xl = and <2 x i64> %wide.load782, %broadcast.splat778
  %i.xm = lshr <2 x i64> %i.xk, %broadcast.splat776
  %i.xn = lshr <2 x i64> %i.xl, %broadcast.splat776
  %i.xo = or <2 x i64> %i.xi, %i.xm
  %i.xp = or <2 x i64> %i.xj, %i.xn
  store <2 x i64> %i.xo, ptr %i.xa, align 16, !tbaa !70
  store <2 x i64> %i.xp, ptr %i.xb, align 16, !tbaa !70
  %index.next783 = add nuw i64 %index780, 4       ; 2 uses
  %i.xq = icmp eq i64 %index.next783, %n.vec770
  br i1 %i.xq, label %Abc_TtSwapVars.exit281.us, label %vector.body779, !llvm.loop !98

end_hunk_0
begin_hunk_1_@Sbd_StoMergeCuts:bb.a
  %indvars.iv.next26.i.i.us = add nuw nsw i64 %indvars.iv25.i.i.us, 1 ; 2 uses
  %exitcond29.not.i.i.us = icmp eq i64 %indvars.iv.next26.i.i.us, %wide.trip.count28.i.i.us
  br i1 %exitcond29.not.i.i.us, label %Abc_TtXor.exit.i.us, label %.lr.ph22.i.i.us, !llvm.loop !102

bb.at:                                            ; preds = %Abc_TtExpand.exit77.i.us
  %i.aae = and i64 %i.yt, 1
  %i.aaf = and i64 %i.aae, %i.yu
  %.not.i86.i.us = icmp eq i64 %i.aaf, 0
  br i1 %.not.i86.i.us, label %.preheader.i94.i.us, label %.preheader18.i87.i.us

.preheader18.i87.i.us:                            ; preds = %bb.at
  br i1 %.not113.i152.us, label %Abc_TtXor.exit.i.us, label %.lr.ph.preheader.i88.i.us

.lr.ph.preheader.i88.i.us:                        ; preds = %.preheader18.i87.i.us
  %wide.trip.count.i89.i.us = zext nneg i32 %i.kc to i64 ; 2 uses
  %min.iters.check726 = icmp ult i32 %i.kb, 2
  br i1 %min.iters.check726, label %.lr.ph.i90.i.us, label %vector.ph727

vector.ph727:                                     ; preds = %.lr.ph.preheader.i88.i.us
  %n.vec728 = and i64 %wide.trip.count.i89.i.us, 2147483644
  br label %vector.body729

vector.body729:                                   ; preds = %vector.body729, %vector.ph727
  %index730 = phi i64 [ 0, %vector.ph727 ], [ %index.next735, %vector.body729 ] ; 4 uses
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index730 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  %wide.load731 = load <2 x i64>, ptr %i.aag, align 16, !tbaa !70
  %wide.load732 = load <2 x i64>, ptr %i.aah, align 16, !tbaa !70
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index730 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %wide.load733 = load <2 x i64>, ptr %i.aai, align 16, !tbaa !70
  %wide.load734 = load <2 x i64>, ptr %i.aaj, align 16, !tbaa !70
  %i.aak = and <2 x i64> %wide.load733, %wide.load731
  %i.aal = and <2 x i64> %wide.load734, %wide.load732
  %i.aam = xor <2 x i64> %i.aak, splat (i64 -1)
  %i.aan = xor <2 x i64> %i.aal, splat (i64 -1)
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index730 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  store <2 x i64> %i.aam, ptr %i.aao, align 16, !tbaa !70
  store <2 x i64> %i.aan, ptr %i.aap, align 16, !tbaa !70
  %index.next735 = add nuw i64 %index730, 4       ; 2 uses
  %i.aaq = icmp eq i64 %index.next735, %n.vec728
  br i1 %i.aaq, label %Abc_TtXor.exit.i.us, label %vector.body729, !llvm.loop !103

.lr.ph.i90.i.us:                                  ; preds = %.lr.ph.preheader.i88.i.us, %.lr.ph.i90.i.us
  %indvars.iv.i91.i.us = phi i64 [ %indvars.iv.next.i92.i.us, %.lr.ph.i90.i.us ], [ 0, %.lr.ph.preheader.i88.i.us ] ; 4 uses
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i91.i.us
  %i.aas = load i64, ptr %i.aar, align 8, !tbaa !70
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i91.i.us
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !70
  %i.aav = and i64 %i.aau, %i.aas
  %i.aaw = xor i64 %i.aav, -1
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i91.i.us
  store i64 %i.aaw, ptr %i.aax, align 8, !tbaa !70
  %indvars.iv.next.i92.i.us = add nuw nsw i64 %indvars.iv.i91.i.us, 1 ; 2 uses
  %exitcond.not.i93.i.us = icmp eq i64 %indvars.iv.next.i92.i.us, %wide.trip.count.i89.i.us
  br i1 %exitcond.not.i93.i.us, label %Abc_TtXor.exit.i.us, label %.lr.ph.i90.i.us, !llvm.loop !104

.preheader.i94.i.us:                              ; preds = %bb.at
  br i1 %.not113.i152.us, label %Abc_TtXor.exit.i.us, label %.lr.ph22.preheader.i95.i.us

.lr.ph22.preheader.i95.i.us:                      ; preds = %.preheader.i94.i.us
  %wide.trip.count28.i96.i.us = zext nneg i32 %i.kc to i64 ; 2 uses
  %min.iters.check712 = icmp ult i32 %i.kb, 2
  br i1 %min.iters.check712, label %.lr.ph22.i97.i.us, label %vector.ph713

vector.ph713:                                     ; preds = %.lr.ph22.preheader.i95.i.us
  %n.vec714 = and i64 %wide.trip.count28.i96.i.us, 2147483644
  br label %vector.body715

vector.body715:                                   ; preds = %vector.body715, %vector.ph713
  %index716 = phi i64 [ 0, %vector.ph713 ], [ %index.next721, %vector.body715 ] ; 4 uses
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index716 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 16
  %wide.load717 = load <2 x i64>, ptr %i.aay, align 16, !tbaa !70
  %wide.load718 = load <2 x i64>, ptr %i.aaz, align 16, !tbaa !70
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index716 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %wide.load719 = load <2 x i64>, ptr %i.aba, align 16, !tbaa !70
  %wide.load720 = load <2 x i64>, ptr %i.abb, align 16, !tbaa !70
  %i.abc = and <2 x i64> %wide.load719, %wide.load717
  %i.abd = and <2 x i64> %wide.load720, %wide.load718
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index716 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  store <2 x i64> %i.abc, ptr %i.abe, align 16, !tbaa !70
  store <2 x i64> %i.abd, ptr %i.abf, align 16, !tbaa !70
  %index.next721 = add nuw i64 %index716, 4       ; 2 uses
  %i.abg = icmp eq i64 %index.next721, %n.vec714
  br i1 %i.abg, label %Abc_TtXor.exit.i.us, label %vector.body715, !llvm.loop !105

.lr.ph22.i97.i.us:                                ; preds = %.lr.ph22.preheader.i95.i.us, %.lr.ph22.i97.i.us
  %indvars.iv25.i98.i.us = phi i64 [ %indvars.iv.next26.i99.i.us, %.lr.ph22.i97.i.us ], [ 0, %.lr.ph22.preheader.i95.i.us ] ; 4 uses
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv25.i98.i.us
  %i.abi = load i64, ptr %i.abh, align 8, !tbaa !70
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv25.i98.i.us
  %i.abk = load i64, ptr %i.abj, align 8, !tbaa !70
  %i.abl = and i64 %i.abk, %i.abi
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv25.i98.i.us
  store i64 %i.abl, ptr %i.abm, align 8, !tbaa !70
  %indvars.iv.next26.i99.i.us = add nuw nsw i64 %indvars.iv25.i98.i.us, 1 ; 2 uses
  %exitcond29.not.i100.i.us = icmp eq i64 %indvars.iv.next26.i99.i.us, %wide.trip.count28.i96.i.us
  br i1 %exitcond29.not.i100.i.us, label %Abc_TtXor.exit.i.us, label %.lr.ph22.i97.i.us, !llvm.loop !106

Abc_TtXor.exit.i.us:                              ; preds = %vector.body757, %.lr.ph.i81.i.us, %vector.body743, %.lr.ph22.i.i.us, %vector.body729, %.lr.ph.i90.i.us, %vector.body715, %.lr.ph22.i97.i.us, %.preheader.i94.i.us, %.preheader18.i87.i.us, %.preheader.i85.i.us, %.preheader18.i.i.us
  %.0.i.us = phi i32 [ 1, %.lr.ph.i81.i.us ], [ 1, %.preheader18.i.i.us ], [ 0, %.preheader.i85.i.us ], [ 0, %vector.body715 ], [ 1, %.preheader18.i87.i.us ], [ 0, %.preheader.i94.i.us ], [ 1, %vector.body729 ], [ 0, %vector.body743 ], [ 0, %.lr.ph22.i97.i.us ], [ 1, %.lr.ph.i90.i.us ], [ 0, %.lr.ph22.i.i.us ], [ 1, %vector.body757 ]
  %.not.i101.i.us = icmp eq i32 %i.ka, 0
  br i1 %.not.i101.i.us, label %Sbd_CutComputeTruth.exit.us, label %.lr.ph.split.i.i.us

.lr.ph.split.i.i.us:                              ; preds = %Abc_TtXor.exit.i.us
  %i.abn = sext i32 %i.kc to i64
  %.idx.i.i.i.us = shl nsw i64 %i.abn, 3
  %i.abo = getelementptr inbounds i8, ptr %i.c, i64 %.idx.i.i.i.us ; 3 uses
  %smax.i.i.i.us = call i32 @llvm.smax.i32(i32 %i.kc, i32 1)
  %wide.trip.count55.i.i.i.us = zext nneg i32 %smax.i.i.i.us to i64 ; 2 uses
  br i1 %.not113.i152.us, label %Sbd_CutComputeTruth.exit.us, label %.lr.ph.split.split.split.preheader.i.i.us

.lr.ph.split.split.split.preheader.i.i.us:        ; preds = %.lr.ph.split.i.i.us
  %wide.trip.count.i103.i.us = zext nneg i32 %i.ka to i64
  %min.iters.check = icmp slt i32 %i.kc, 4
  %n.vec = and i64 %wide.trip.count55.i.i.i.us, 2147483644
  %exitcond150.not.i.us = icmp slt i32 %i.kc, 2
  %exitcond150.not.i.us.1 = icmp eq i32 %i.kb, 1
  br label %.lr.ph.split.split.split.i.i.us

.lr.ph.split.split.split.i.i.us:                  ; preds = %Abc_TtHasVar.exit.thread.i.i.us, %.lr.ph.split.split.split.preheader.i.i.us
  %indvars.iv.i104.i.us = phi i64 [ 0, %.lr.ph.split.split.split.preheader.i.i.us ], [ %indvars.iv.next.i108.i.us, %Abc_TtHasVar.exit.thread.i.i.us ] ; 6 uses
  %.038.i.i159.us = phi i32 [ 0, %.lr.ph.split.split.split.preheader.i.i.us ], [ %.1.i107.i.us, %Abc_TtHasVar.exit.thread.i.i.us ] ; 7 uses
  %i.abp = icmp samesign ult i64 %indvars.iv.i104.i.us, 6
  %i.abq = trunc i64 %indvars.iv.i104.i.us to i32 ; 5 uses
  br i1 %i.abp, label %.lr.ph.i.i112.i.us, label %.preheader.lr.ph.i.i.i.us

.preheader.lr.ph.i.i.i.us:                        ; preds = %.lr.ph.split.split.split.i.i.us
  %i.abr = add i32 %i.abq, -6                     ; 2 uses
  %i.abs = shl nuw nsw i32 1, %i.abr
  %i.abt = shl nuw nsw i32 2, %i.abr
  %i.abu = zext nneg i32 %i.abt to i64
  %i.abv = zext nneg i32 %i.abs to i64            ; 2 uses
  br label %.preheader.i.i.i.us

.preheader.i.i.i.us:                              ; preds = %bb.aw, %.preheader.lr.ph.i.i.i.us
  %.03343.i.i.i.us = phi ptr [ %i.c, %.preheader.lr.ph.i.i.i.us ], [ %i.abz, %bb.aw ] ; 3 uses
  %invariant.gep.i.i.i.us = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.i.us, i64 %i.abv
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %.preheader.i.i.i.us
  %indvars.iv.i.i105.i.us = phi i64 [ 0, %.preheader.i.i.i.us ], [ %indvars.iv.next.i.i110.i.us, %bb.av ] ; 3 uses
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.i.us, i64 %indvars.iv.i.i105.i.us
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !70
  %gep.i.i.i.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.us, i64 %indvars.iv.i.i105.i.us
  %i.aby = load i64, ptr %gep.i.i.i.us, align 8, !tbaa !70
  %.not.i.i106.i.us = icmp eq i64 %i.abx, %i.aby
  br i1 %.not.i.i106.i.us, label %bb.av, label %Abc_TtHasVar.exit.thread30.i.i.us

bb.av:                                            ; preds = %bb.au
  %indvars.iv.next.i.i110.i.us = add nuw nsw i64 %indvars.iv.i.i105.i.us, 1 ; 2 uses
  %exitcond.not.i.i111.i.us = icmp eq i64 %indvars.iv.next.i.i110.i.us, %i.abv
  br i1 %exitcond.not.i.i111.i.us, label %bb.aw, label %bb.au, !llvm.loop !107

bb.aw:                                            ; preds = %bb.av
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.i.us, i64 %i.abu ; 2 uses
  %i.aca = icmp ult ptr %i.abz, %i.abo
  br i1 %i.aca, label %.preheader.i.i.i.us, label %Abc_TtHasVar.exit.thread.i.i.us, !llvm.loop !108

.lr.ph.i.i112.i.us:                               ; preds = %.lr.ph.split.split.split.i.i.us
  %i.acb = shl nuw nsw i32 1, %i.abq
  %i.acc = zext nneg i32 %i.acb to i64
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i104.i.us
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !70
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %.lr.ph.i.i112.i.us
  %indvars.iv52.i.i.i.us = phi i64 [ 0, %.lr.ph.i.i112.i.us ], [ %indvars.iv.next53.i.i.i.us, %bb.ay ] ; 2 uses
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv52.i.i.i.us
  %i.acg = load i64, ptr %i.acf, align 8, !tbaa !70 ; 2 uses
  %i.ach = lshr i64 %i.acg, %i.acc
  %i.aci = xor i64 %i.ach, %i.acg
  %i.acj = and i64 %i.aci, %i.ace
  %.not39.i.i.i.us = icmp eq i64 %i.acj, 0
  br i1 %.not39.i.i.i.us, label %bb.ay, label %Abc_TtHasVar.exit.thread30.i.i.us

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next53.i.i.i.us = add nuw nsw i64 %indvars.iv52.i.i.i.us, 1 ; 2 uses
  %exitcond56.not.i.i.i.us = icmp eq i64 %indvars.iv.next53.i.i.i.us, %wide.trip.count55.i.i.i.us
  br i1 %exitcond56.not.i.i.i.us, label %Abc_TtHasVar.exit.thread.i.i.us, label %bb.ax, !llvm.loop !109

Abc_TtHasVar.exit.thread30.i.i.us:                ; preds = %bb.ax, %bb.au
  %i.ack = sext i32 %.038.i.i159.us to i64        ; 2 uses
  %i.acl = icmp sgt i64 %indvars.iv.i104.i.us, %i.ack
  br i1 %i.acl, label %bb.az, label %Abc_TtSwapVars.exit.us

bb.az:                                            ; preds = %Abc_TtHasVar.exit.thread30.i.i.us
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.i104.i.us
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !37
  %i.aco = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.ack
  store i32 %i.acn, ptr %i.aco, align 4, !tbaa !37
  %i.acp = icmp eq i32 %.038.i.i159.us, %i.abq
  br i1 %i.acp, label %Abc_TtSwapVars.exit.us, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %spec.select.i.us = call i32 @llvm.smax.i32(i32 range(i32 -2147483648, 15) %i.abq, i32 range(i32 -2147483648, 14) %.038.i.i159.us) ; 5 uses
  %spec.select117.i.us = call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 15) %i.abq, i32 range(i32 -2147483648, 14) %.038.i.i159.us) ; 8 uses
  %i.acq = icmp slt i32 %spec.select.i.us, 6
  br i1 %i.acq, label %.lr.ph.i244.us, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.acr = icmp slt i32 %spec.select117.i.us, 6
  %i.acs = add nsw i32 %spec.select.i.us, -6      ; 4 uses
  %i.act = shl nuw nsw i32 1, %i.acs              ; 3 uses
  br i1 %i.acr, label %.preheader.lr.ph.i.us, label %.preheader120.lr.ph.i.us

.preheader120.lr.ph.i.us:                         ; preds = %bb.bb
  %i.acu = add nsw i32 %spec.select117.i.us, -6   ; 5 uses
  %i.acv = shl nuw nsw i32 1, %i.acu
  %i.acw = shl nuw nsw i32 2, %i.acu              ; 2 uses
  %i.acx = shl nuw nsw i32 2, %i.acs
  %i.acy = zext nneg i32 %i.acx to i64
  %i.acz = zext nneg i32 %i.acw to i64            ; 3 uses
  %i.ada = zext nneg i32 %i.acv to i64            ; 6 uses
  %i.adb = zext nneg i32 %i.act to i64            ; 4 uses
  %i.adc = shl nuw nsw i64 %i.ada, 3              ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.acz, i64 %i.adb)
  %i.add = icmp samesign ult i32 %i.acw, %i.act
  %umin = zext i1 %i.add to i64                   ; 2 uses
  %i.ade = or disjoint i64 %umin, %i.acz
  %i.adf = sub nsw i64 %umax, %i.ade
  %i.adg = add nsw i32 %spec.select117.i.us, -5
  %i.adh = zext nneg i32 %i.adg to i64
  %i.adi = lshr i64 %i.adf, %i.adh
  %i.adj = add i64 %i.adi, %umin
  %i.adk = shl i64 %i.adj, 3
  %i.adl = add nsw i32 %spec.select117.i.us, -5
  %i.adm = zext nneg i32 %i.adl to i64
  %8 = shl i64 %i.adk, %i.adm                     ; 2 uses
  %9 = shl nuw nsw i64 %i.ada, 4
  %i.adn = shl nuw nsw i64 %i.adb, 3              ; 2 uses
  %i.ado = add nsw i32 %spec.select.i.us, -5
  %i.adp = zext i32 %i.ado to i64
  %i.adq = add nuw nsw i64 %i.adp, 3
  %i.adr = getelementptr i8, ptr %i.c, i64 %i.adc
  %i.ads = getelementptr i8, ptr %i.c, i64 %i.adn
  %i.adt = getelementptr i8, ptr %i.c, i64 %8
  %i.adu = getelementptr i8, ptr %i.adt, i64 %9
  %i.adv = getelementptr i8, ptr %i.c, i64 %8
  %10 = getelementptr i8, ptr %i.adv, i64 %i.adn
  %i.adw = getelementptr i8, ptr %10, i64 %i.adc
  %min.iters.check698 = icmp ult i32 %i.acu, 2
  %n.vec700 = and i64 %i.ada, 2147483644
  %xtraiter1030 = and i64 %i.ada, 1
  %i.adx = icmp eq i32 %i.acu, 0
  %unroll_iter1033 = and i64 %i.ada, 2147483646
  %lcmp.mod1031.not = icmp eq i64 %xtraiter1030, 0
  %lcmp.mod1032 = icmp eq i32 %i.acu, 0
  br label %.preheader120.i.us

.preheader120.i.us:                               ; preds = %bb.bc, %.preheader120.lr.ph.i.us
  %indvar = phi i64 [ %indvar.next, %bb.bc ], [ 0, %.preheader120.lr.ph.i.us ] ; 2 uses
  %.1124.i.us = phi ptr [ %i.aer, %bb.bc ], [ %i.c, %.preheader120.lr.ph.i.us ] ; 3 uses
  %i.ady = shl i64 %indvar, %i.adq                ; 4 uses
  %scevgep = getelementptr i8, ptr %i.adr, i64 %i.ady
  %scevgep695 = getelementptr i8, ptr %i.ads, i64 %i.ady
  %invariant.gep.i.us = getelementptr inbounds nuw [8 x i8], ptr %.1124.i.us, i64 %i.ada
  %invariant.gep157.i.us.a = getelementptr inbounds nuw [8 x i8], ptr %.1124.i.us, i64 %i.adb
  %scevgep694 = getelementptr i8, ptr %i.adu, i64 %i.ady
  %scevgep696.a = getelementptr i8, ptr %i.adw, i64 %i.ady
  %bound0 = icmp ult ptr %scevgep, %scevgep696.a
  %bound1 = icmp ult ptr %scevgep695, %scevgep694
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader119.i.us

.preheader119.i.us:                               ; preds = %middle.block708, %.preheader120.i.us
  %indvars.iv138.i.us = phi i64 [ 0, %.preheader120.i.us ], [ %indvars.iv.next139.i.us, %middle.block708 ] ; 3 uses
  %gep.i.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv138.i.us ; 4 uses
  %gep158.i.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.us.a, i64 %indvars.iv138.i.us ; 4 uses
  %brmerge1127 = select i1 %min.iters.check698, i1 true, i1 %found.conflict
  br i1 %brmerge1127, label %scalar.ph697.preheader, label %vector.body701

scalar.ph697.preheader:                           ; preds = %.preheader119.i.us
  br i1 %i.adx, label %scalar.ph697.epil.preheader, label %scalar.ph697

vector.body701:                                   ; preds = %.preheader119.i.us, %vector.body701
  %index702 = phi i64 [ %index.next707, %vector.body701 ], [ 0, %.preheader119.i.us ] ; 3 uses
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %gep.i.us, i64 %index702 ; 3 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 16 ; 2 uses
  %wide.load703 = load <2 x i64>, ptr %i.adz, align 8, !tbaa !70, !alias.scope !110, !noalias !113
  %wide.load704 = load <2 x i64>, ptr %i.aea, align 8, !tbaa !70, !alias.scope !110, !noalias !113
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %gep158.i.us, i64 %index702 ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16 ; 2 uses
  %wide.load705 = load <2 x i64>, ptr %i.aeb, align 8, !tbaa !70, !alias.scope !113
  %wide.load706 = load <2 x i64>, ptr %i.aec, align 8, !tbaa !70, !alias.scope !113
  store <2 x i64> %wide.load705, ptr %i.adz, align 8, !tbaa !70, !alias.scope !110, !noalias !113
  store <2 x i64> %wide.load706, ptr %i.aea, align 8, !tbaa !70, !alias.scope !110, !noalias !113
  store <2 x i64> %wide.load703, ptr %i.aeb, align 8, !tbaa !70, !alias.scope !113
  store <2 x i64> %wide.load704, ptr %i.aec, align 8, !tbaa !70, !alias.scope !113
  %index.next707 = add nuw i64 %index702, 4       ; 2 uses
  %i.aed = icmp eq i64 %index.next707, %n.vec700
  br i1 %i.aed, label %middle.block708, label %vector.body701, !llvm.loop !115

scalar.ph697:                                     ; preds = %scalar.ph697.preheader, %scalar.ph697
  %indvars.iv.i240.us = phi i64 [ %indvars.iv.next.i241.us.1, %scalar.ph697 ], [ 0, %scalar.ph697.preheader ] ; 4 uses
  %niter1034 = phi i64 [ %niter1034.next.1, %scalar.ph697 ], [ 0, %scalar.ph697.preheader ]
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %gep.i.us, i64 %indvars.iv.i240.us ; 2 uses
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !70
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %gep158.i.us, i64 %indvars.iv.i240.us ; 2 uses
  %i.aeh = load i64, ptr %i.aeg, align 8, !tbaa !70
  store i64 %i.aeh, ptr %i.aee, align 8, !tbaa !70
  store i64 %i.aef, ptr %i.aeg, align 8, !tbaa !70
  %indvars.iv.next.i241.us = or disjoint i64 %indvars.iv.i240.us, 1 ; 2 uses
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %gep.i.us, i64 %indvars.iv.next.i241.us ; 2 uses
  %i.aej = load i64, ptr %i.aei, align 8, !tbaa !70
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %gep158.i.us, i64 %indvars.iv.next.i241.us ; 2 uses
  %i.ael = load i64, ptr %i.aek, align 8, !tbaa !70
  store i64 %i.ael, ptr %i.aei, align 8, !tbaa !70
  store i64 %i.aej, ptr %i.aek, align 8, !tbaa !70
  %indvars.iv.next.i241.us.1 = add nuw nsw i64 %indvars.iv.i240.us, 2 ; 2 uses
  %niter1034.next.1 = add i64 %niter1034, 2       ; 2 uses
  %niter1034.ncmp.1 = icmp eq i64 %niter1034.next.1, %unroll_iter1033
  br i1 %niter1034.ncmp.1, label %middle.block708.loopexit.unr-lcssa, label %scalar.ph697, !llvm.loop !116

middle.block708.loopexit.unr-lcssa:               ; preds = %scalar.ph697
  br i1 %lcmp.mod1031.not, label %middle.block708, label %scalar.ph697.epil.preheader

scalar.ph697.epil.preheader:                      ; preds = %middle.block708.loopexit.unr-lcssa, %scalar.ph697.preheader
  %indvars.iv.i240.us.epil.init = phi i64 [ 0, %scalar.ph697.preheader ], [ %indvars.iv.next.i241.us.1, %middle.block708.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1032)
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %gep.i.us, i64 %indvars.iv.i240.us.epil.init ; 2 uses
  %i.aen = load i64, ptr %i.aem, align 8, !tbaa !70
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %gep158.i.us, i64 %indvars.iv.i240.us.epil.init ; 2 uses
  %i.aep = load i64, ptr %i.aeo, align 8, !tbaa !70
  store i64 %i.aep, ptr %i.aem, align 8, !tbaa !70
  store i64 %i.aen, ptr %i.aeo, align 8, !tbaa !70
  br label %middle.block708

middle.block708:                                  ; preds = %vector.body701, %scalar.ph697.epil.preheader, %middle.block708.loopexit.unr-lcssa
  %indvars.iv.next139.i.us = add nuw nsw i64 %indvars.iv138.i.us, %i.acz ; 2 uses
  %i.aeq = icmp samesign ult i64 %indvars.iv.next139.i.us, %i.adb
  br i1 %i.aeq, label %.preheader119.i.us, label %bb.bc, !llvm.loop !82

bb.bc:                                            ; preds = %middle.block708
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %.1124.i.us, i64 %i.acy ; 2 uses
  %i.aes = icmp ult ptr %i.aer, %i.abo
  %indvar.next = add i64 %indvar, 1
  br i1 %i.aes, label %.preheader120.i.us, label %Abc_TtSwapVars.exit.us, !llvm.loop !83

.preheader.lr.ph.i.us:                            ; preds = %bb.bb
  %i.aet = shl nuw nsw i32 1, %spec.select117.i.us
  %i.aeu = sext i32 %spec.select117.i.us to i64
  %i.aev = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.aeu
  %i.aew = load i64, ptr %i.aev, align 8, !tbaa !70 ; 5 uses
  %i.aex = zext nneg i32 %i.aet to i64            ; 3 uses
  %i.aey = xor i64 %i.aew, -1                     ; 2 uses
  %i.aez = shl nuw nsw i32 2, %i.acs
  %i.afa = zext nneg i32 %i.aez to i64
  %i.afb = zext nneg i32 %i.act to i64            ; 3 uses
  %min.iters.check677 = icmp eq i32 %i.acs, 0
  %n.vec679 = and i64 %i.afb, 2147483646
  %broadcast.splatinsert680 = insertelement <2 x i64> poison, i64 %i.aew, i64 0
  %broadcast.splat681 = shufflevector <2 x i64> %broadcast.splatinsert680, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert682 = insertelement <2 x i64> poison, i64 %i.aex, i64 0
  %broadcast.splat683 = shufflevector <2 x i64> %broadcast.splatinsert682, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert684 = insertelement <2 x i64> poison, i64 %i.aey, i64 0
  %broadcast.splat685 = shufflevector <2 x i64> %broadcast.splatinsert684, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.i243.us

.preheader.i243.us:                               ; preds = %middle.block691, %.preheader.lr.ph.i.us
  %.0126.i.us = phi ptr [ %i.c, %.preheader.lr.ph.i.us ], [ %i.afy, %middle.block691 ] ; 4 uses
  %invariant.gep159.i.us = getelementptr inbounds nuw [8 x i8], ptr %.0126.i.us, i64 %i.afb ; 2 uses
  br i1 %min.iters.check677, label %scalar.ph676, label %vector.body686

vector.body686:                                   ; preds = %.preheader.i243.us, %vector.body686
  %index687 = phi i64 [ %index.next690, %vector.body686 ], [ 0, %.preheader.i243.us ] ; 3 uses
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %.0126.i.us, i64 %index687 ; 2 uses
  %wide.load688 = load <2 x i64>, ptr %i.afc, align 8, !tbaa !70 ; 2 uses
  %i.afd = and <2 x i64> %wide.load688, %broadcast.splat681
  %i.afe = lshr <2 x i64> %i.afd, %broadcast.splat683
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.us, i64 %index687 ; 2 uses
  %wide.load689 = load <2 x i64>, ptr %i.aff, align 8, !tbaa !70 ; 2 uses
  %i.afg = shl <2 x i64> %wide.load689, %broadcast.splat683
  %i.afh = and <2 x i64> %i.afg, %broadcast.splat681
  %i.afi = and <2 x i64> %wide.load688, %broadcast.splat685
  %i.afj = or <2 x i64> %i.afh, %i.afi
  store <2 x i64> %i.afj, ptr %i.afc, align 8, !tbaa !70
  %i.afk = and <2 x i64> %wide.load689, %broadcast.splat681
  %i.afl = or <2 x i64> %i.afk, %i.afe
  store <2 x i64> %i.afl, ptr %i.aff, align 8, !tbaa !70
  %index.next690 = add nuw i64 %index687, 2       ; 2 uses
  %i.afm = icmp eq i64 %index.next690, %n.vec679
  br i1 %i.afm, label %middle.block691, label %vector.body686, !llvm.loop !117

scalar.ph676:                                     ; preds = %.preheader.i243.us, %scalar.ph676
  %indvars.iv141.i.us = phi i64 [ %indvars.iv.next142.i.us, %scalar.ph676 ], [ 0, %.preheader.i243.us ] ; 3 uses
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %.0126.i.us, i64 %indvars.iv141.i.us ; 2 uses
  %i.afo = load i64, ptr %i.afn, align 8, !tbaa !70 ; 2 uses
  %i.afp = and i64 %i.afo, %i.aew
  %i.afq = lshr i64 %i.afp, %i.aex
  %gep160.i.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.us, i64 %indvars.iv141.i.us ; 2 uses
  %i.afr = load i64, ptr %gep160.i.us, align 8, !tbaa !70 ; 2 uses
  %i.afs = shl i64 %i.afr, %i.aex
  %i.aft = and i64 %i.afs, %i.aew
  %i.afu = and i64 %i.afo, %i.aey
  %i.afv = or i64 %i.aft, %i.afu
  store i64 %i.afv, ptr %i.afn, align 8, !tbaa !70
  %i.afw = and i64 %i.afr, %i.aew
  %i.afx = or i64 %i.afw, %i.afq
  store i64 %i.afx, ptr %gep160.i.us, align 8, !tbaa !70
  %indvars.iv.next142.i.us = add nuw nsw i64 %indvars.iv141.i.us, 1 ; 2 uses
  %exitcond145.not.i.us = icmp eq i64 %indvars.iv.next142.i.us, %i.afb
  br i1 %exitcond145.not.i.us, label %middle.block691, label %scalar.ph676, !llvm.loop !118

middle.block691:                                  ; preds = %vector.body686, %scalar.ph676
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %.0126.i.us, i64 %i.afa ; 2 uses
  %i.afz = icmp ult ptr %i.afy, %i.abo
  br i1 %i.afz, label %.preheader.i243.us, label %Abc_TtSwapVars.exit.us, !llvm.loop !86

.lr.ph.i244.us:                                   ; preds = %bb.ba
  %.neg.i.us = shl nsw i32 -1, %spec.select117.i.us
  %i.aga = shl nuw nsw i32 1, %spec.select.i.us
  %i.agb = add nsw i32 %.neg.i.us, %i.aga
  %i.agc = sext i32 %spec.select117.i.us to i64
  %i.agd = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.agc
  %i.age = sext i32 %spec.select.i.us to i64
  %i.agf = getelementptr inbounds [24 x i8], ptr %i.agd, i64 %i.age ; 3 uses
  %i.agg = load i64, ptr %i.agf, align 8, !tbaa !70 ; 4 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  %i.agi = load i64, ptr %i.agh, align 8, !tbaa !70 ; 4 uses
  %i.agj = zext i32 %i.agb to i64                 ; 7 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agf, i64 16
  %i.agl = load i64, ptr %i.agk, align 8, !tbaa !70 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph663, label %vector.ph664

vector.ph664:                                     ; preds = %.lr.ph.i244.us
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.agg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert665 = insertelement <2 x i64> poison, i64 %i.agi, i64 0
  %broadcast.splat666 = shufflevector <2 x i64> %broadcast.splatinsert665, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert667 = insertelement <2 x i64> poison, i64 %i.agj, i64 0
  %broadcast.splat668 = shufflevector <2 x i64> %broadcast.splatinsert667, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert669 = insertelement <2 x i64> poison, i64 %i.agl, i64 0
  %broadcast.splat670 = shufflevector <2 x i64> %broadcast.splatinsert669, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body671

vector.body671:                                   ; preds = %vector.body671, %vector.ph664
  %index672 = phi i64 [ 0, %vector.ph664 ], [ %index.next674, %vector.body671 ] ; 2 uses
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index672 ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.agm, align 16, !tbaa !70 ; 3 uses
  %wide.load673 = load <2 x i64>, ptr %i.agn, align 16, !tbaa !70 ; 3 uses
  %i.ago = and <2 x i64> %wide.load, %broadcast.splat
  %i.agp = and <2 x i64> %wide.load673, %broadcast.splat
  %i.agq = and <2 x i64> %wide.load, %broadcast.splat666
  %i.agr = and <2 x i64> %wide.load673, %broadcast.splat666
  %i.ags = shl <2 x i64> %i.agq, %broadcast.splat668
  %i.agt = shl <2 x i64> %i.agr, %broadcast.splat668
  %i.agu = or <2 x i64> %i.ags, %i.ago
  %i.agv = or <2 x i64> %i.agt, %i.agp
  %i.agw = and <2 x i64> %wide.load, %broadcast.splat670
  %i.agx = and <2 x i64> %wide.load673, %broadcast.splat670
  %i.agy = lshr <2 x i64> %i.agw, %broadcast.splat668
  %i.agz = lshr <2 x i64> %i.agx, %broadcast.splat668
  %i.aha = or <2 x i64> %i.agu, %i.agy
  %i.ahb = or <2 x i64> %i.agv, %i.agz
  store <2 x i64> %i.aha, ptr %i.agm, align 16, !tbaa !70
  store <2 x i64> %i.ahb, ptr %i.agn, align 16, !tbaa !70
  %index.next674 = add nuw i64 %index672, 4       ; 2 uses
  %i.ahc = icmp eq i64 %index.next674, %n.vec
  br i1 %i.ahc, label %Abc_TtSwapVars.exit.us, label %vector.body671, !llvm.loop !119

scalar.ph663:                                     ; preds = %.lr.ph.i244.us
  %i.ahd = load i64, ptr %i.c, align 16, !tbaa !70 ; 3 uses
  %i.ahe = and i64 %i.ahd, %i.agg
  %i.ahf = and i64 %i.ahd, %i.agi
  %i.ahg = shl i64 %i.ahf, %i.agj
  %i.ahh = or i64 %i.ahg, %i.ahe
  %i.ahi = and i64 %i.ahd, %i.agl
end_hunk_1
