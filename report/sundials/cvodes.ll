Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes?download=true
inline.NumInlined: 74
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 55
begin_hunk_0_@CVode:bb.a
cvChooseEta.exit.i.i:                             ; preds = %._crit_edge86.i.i.i, %bb.mt, %bb.ms, %bb.mm, %bb.ml, %bb.mj, %bb.mh
  %i.bxk = load double, ptr %i.sw, align 8, !tbaa !201 ; 7 uses
  %i.bxl = load double, ptr %i.us, align 8, !tbaa !341
  %i.bxm = fcmp ogt double %i.bxk, %i.bxl
  %i.bxn = load double, ptr %i.ut, align 8, !tbaa !342 ; 2 uses
  %i.bxo = fcmp olt double %i.bxk, %i.bxn
  %or.cond.i43.i.i = select i1 %i.bxm, i1 %i.bxo, i1 false
  br i1 %or.cond.i43.i.i, label %bb.mu, label %._crit_edge.i44.i.i

bb.mu:                                            ; preds = %cvChooseEta.exit.i.i
  store double 1.000000e+00, ptr %i.sw, align 8, !tbaa !201
  %i.bxp = load double, ptr %i.pq, align 8, !tbaa !197
  store double %i.bxp, ptr %i.qu, align 8, !tbaa !309
  br label %cvPrepareNextStep.exit.i

._crit_edge.i44.i.i:                              ; preds = %cvChooseEta.exit.i.i
  %i.bxq = fcmp ult double %i.bxk, %i.bxn
  br i1 %i.bxq, label %bb.mw, label %bb.mv

bb.mv:                                            ; preds = %._crit_edge.i44.i.i
  %i.bxr = load double, ptr %i.uq, align 8, !tbaa !83 ; 2 uses
  %i.bxs = fcmp olt double %i.bxk, %i.bxr
  %..i45.i.i = select i1 %i.bxs, double %i.bxk, double %i.bxr ; 2 uses
  %i.bxt = load double, ptr %i.pq, align 8, !tbaa !197 ; 2 uses
  %i.bxu = call double @llvm.fabs.f64(double %i.bxt)
  %i.bxv = load double, ptr %i.uu, align 8, !tbaa !308
  %i.bxw = fmul double %i.bxu, %i.bxv
  %i.bxx = fmul double %..i45.i.i, %i.bxw         ; 2 uses
  %i.bxy = fcmp olt double %i.bxx, 1.000000e+00
  %i.bxz = select i1 %i.bxy, double 1.000000e+00, double %i.bxx
  %i.bya = fdiv double %..i45.i.i, %i.bxz
  br label %bb.mx

bb.mw:                                            ; preds = %._crit_edge.i44.i.i
  %i.byb = load double, ptr %i.uv, align 8, !tbaa !343 ; 2 uses
  %i.byc = fcmp ogt double %i.bxk, %i.byb
  %.45.i47.i.i = select i1 %i.byc, double %i.bxk, double %i.byb ; 2 uses
  %i.byd = load double, ptr %i.su, align 8, !tbaa !198
  %i.bye = load double, ptr %i.pq, align 8, !tbaa !197 ; 2 uses
  %i.byf = call double @llvm.fabs.f64(double %i.bye)
  %i.byg = fdiv double %i.byd, %i.byf             ; 2 uses
  %i.byh = fcmp ogt double %.45.i47.i.i, %i.byg
  %i.byi = select i1 %i.byh, double %.45.i47.i.i, double %i.byg
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %bb.mv
  %i.byj = phi double [ %i.bye, %bb.mw ], [ %i.bxt, %bb.mv ]
  %storemerge.i46.i.i = phi double [ %i.byi, %bb.mw ], [ %i.bya, %bb.mv ] ; 2 uses
  store double %storemerge.i46.i.i, ptr %i.sw, align 8, !tbaa !201
  %i.byk = fmul double %i.byj, %storemerge.i46.i.i
  store double %i.byk, ptr %i.qu, align 8, !tbaa !309
  %i.byl = load i32, ptr %i.qv, align 4, !tbaa !312
  %i.bym = load i32, ptr %i.ps, align 8, !tbaa !79
  %i.byn = icmp slt i32 %i.byl, %i.bym
  br i1 %i.byn, label %bb.my, label %cvPrepareNextStep.exit.i

bb.my:                                            ; preds = %bb.mx
  store i32 0, ptr %i.ui, align 8, !tbaa !94
  br label %cvPrepareNextStep.exit.i

cvPrepareNextStep.exit.i:                         ; preds = %bb.my, %bb.mx, %bb.mu, %bb.lj, %bb.lg, %bb.ld
  %i.byo = load i32, ptr %i.va, align 8, !tbaa !346
  %.not238.i = icmp eq i32 %i.byo, 0
  br i1 %.not238.i, label %cvBDFStab.exit.i, label %bb.mz

bb.mz:                                            ; preds = %cvPrepareNextStep.exit.i
  %i.byp = load i32, ptr %i.ps, align 8, !tbaa !79 ; 8 uses
  %i.byq = icmp sgt i32 %i.byp, 2
  br i1 %i.byq, label %.lr.ph.preheader.i305.i, label %bb.na

.lr.ph.preheader.i305.i:                          ; preds = %bb.mz
  %i.byr = load <2 x double>, ptr %i.vb, align 8, !tbaa !29
  store <2 x double> %i.byr, ptr %i.vc, align 8, !tbaa !29
  %i.bys = load <2 x double>, ptr %i.vd, align 8, !tbaa !29
  store <2 x double> %i.bys, ptr %i.vb, align 8, !tbaa !29
  %i.byt = load <2 x double>, ptr %i.ve, align 8, !tbaa !29
  store <2 x double> %i.byt, ptr %i.vd, align 8, !tbaa !29
  %i.byu = load <2 x double>, ptr %i.vf, align 8, !tbaa !29
  store <2 x double> %i.byu, ptr %i.ve, align 8, !tbaa !29
  %i.byv = load double, ptr %i.vk, align 8, !tbaa !29
  store double %i.byv, ptr %i.vl, align 8, !tbaa !29
  %i.byw = load double, ptr %i.vm, align 8, !tbaa !29
  store double %i.byw, ptr %i.vk, align 8, !tbaa !29
  %i.byx = load double, ptr %i.vn, align 8, !tbaa !29
  store double %i.byx, ptr %i.vm, align 8, !tbaa !29
  %i.byy = load double, ptr %i.vo, align 8, !tbaa !29
  store double %i.byy, ptr %i.vn, align 8, !tbaa !29
  %i.byz = add nsw i32 %i.byp, -1                 ; 2 uses
  %min.iters.check943 = icmp ult i32 %i.byp, 9
  br i1 %min.iters.check943, label %.lr.ph.i306.i.preheader, label %vector.ph944

vector.ph944:                                     ; preds = %.lr.ph.preheader.i305.i
  %n.vec945 = and i32 %i.byz, -8                  ; 3 uses
  %i.bza = or disjoint i32 %n.vec945, 1
  br label %vector.body946

vector.body946:                                   ; preds = %vector.body946, %vector.ph944
  %index947 = phi i32 [ 0, %vector.ph944 ], [ %index.next949, %vector.body946 ]
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph944 ], [ %i.bzb, %vector.body946 ]
  %vec.phi948 = phi <4 x i32> [ splat (i32 1), %vector.ph944 ], [ %i.bzc, %vector.body946 ]
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph944 ], [ %vec.ind.next, %vector.body946 ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.bzb = mul <4 x i32> %vec.ind, %vec.phi       ; 2 uses
  %i.bzc = mul <4 x i32> %step.add, %vec.phi948   ; 2 uses
  %index.next949 = add nuw i32 %index947, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.bzd = icmp eq i32 %index.next949, %n.vec945
  br i1 %i.bzd, label %middle.block950, label %vector.body946, !llvm.loop !295

middle.block950:                                  ; preds = %vector.body946
  %bin.rdx = mul <4 x i32> %i.bzc, %i.bzb
  %i.bze = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n951 = icmp eq i32 %i.byz, %n.vec945
  br i1 %cmp.n951, label %._crit_edge.i308.i, label %.lr.ph.i306.i.preheader

.lr.ph.i306.i.preheader:                          ; preds = %.lr.ph.preheader.i305.i, %middle.block950
  %.087.i.i.ph = phi i32 [ 1, %.lr.ph.preheader.i305.i ], [ %i.bze, %middle.block950 ]
  %.186.i.i.ph = phi i32 [ 1, %.lr.ph.preheader.i305.i ], [ %i.bza, %middle.block950 ]
  br label %.lr.ph.i306.i

.lr.ph.i306.i:                                    ; preds = %.lr.ph.i306.i.preheader, %.lr.ph.i306.i
  %.087.i.i = phi i32 [ %i.bzf, %.lr.ph.i306.i ], [ %.087.i.i.ph, %.lr.ph.i306.i.preheader ]
  %.186.i.i = phi i32 [ %i.bzg, %.lr.ph.i306.i ], [ %.186.i.i.ph, %.lr.ph.i306.i.preheader ] ; 2 uses
  %i.bzf = mul nuw nsw i32 %.186.i.i, %.087.i.i   ; 2 uses
  %i.bzg = add nuw nsw i32 %.186.i.i, 1           ; 2 uses
  %exitcond.not.i307.i = icmp eq i32 %i.bzg, %i.byp
  br i1 %exitcond.not.i307.i, label %._crit_edge.i308.i, label %.lr.ph.i306.i, !llvm.loop !296

._crit_edge.i308.i:                               ; preds = %.lr.ph.i306.i, %middle.block950
  %.lcssa903 = phi i32 [ %i.bze, %middle.block950 ], [ %i.bzf, %.lr.ph.i306.i ] ; 2 uses
  %i.bzh = mul nuw nsw i32 %.lcssa903, %i.byp     ; 2 uses
  %i.bzi = add nuw nsw i32 %i.byp, 1
  %i.bzj = mul nuw nsw i32 %i.bzh, %i.bzi
  %i.bzk = uitofp nneg i32 %i.bzj to double
  %i.bzl = load double, ptr %i.sl, align 8, !tbaa !329
  %i.bzm = fmul double %i.bzl, %i.bzk
  %i.bzn = load double, ptr %i.ri, align 8, !tbaa !29 ; 2 uses
  %i.bzo = fcmp ogt double %i.bzn, 1.000000e-10
  %i.bzp = select i1 %i.bzo, double %i.bzn, double 1.000000e-10
  %i.bzq = uitofp nneg i32 %i.bzh to double
  %i.bzr = zext nneg i32 %i.byp to i64
  %i.bzs = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.bzr
  %i.bzt = load ptr, ptr %i.bzs, align 8, !tbaa !52
  %i.bzu = load ptr, ptr %i.pw, align 8, !tbaa !58
  %i.bzv = call double @N_VWrmsNorm(ptr noundef %i.bzt, ptr noundef %i.bzu) #13
  %i.bzw = uitofp nneg i32 %.lcssa903 to double
  %i.bzx = load i32, ptr %i.ps, align 8, !tbaa !79
  %i.bzy = sext i32 %i.bzx to i64
  %i.bzz = getelementptr [8 x i8], ptr %i.pv, i64 %i.bzy
  %i.caa = getelementptr i8, ptr %i.bzz, i64 -8
  %i.cab = load ptr, ptr %i.caa, align 8, !tbaa !52
  %i.cac = load ptr, ptr %i.pw, align 8, !tbaa !58
  %i.cad = call double @N_VWrmsNorm(ptr noundef %i.cab, ptr noundef %i.cac) #13
  %i.cae = fmul double %i.cad, %i.bzw             ; 2 uses
  %i.caf = fmul double %i.cae, %i.cae
  store double %i.caf, ptr %i.vf, align 8, !tbaa !29
  %i.cag = fdiv double %i.bzm, %i.bzp
  %i.cah = fmul double %i.bzv, %i.bzq
  %i.cai = insertelement <2 x double> poison, double %i.cah, i64 0
  %i.caj = insertelement <2 x double> %i.cai, double %i.cag, i64 1 ; 2 uses
  %i.cak = fmul <2 x double> %i.caj, %i.caj
  store <2 x double> %i.cak, ptr %i.vj, align 8, !tbaa !29
  %.pr.i.i = load i32, ptr %i.ps, align 8, !tbaa !79
  br label %bb.na

bb.na:                                            ; preds = %._crit_edge.i308.i, %bb.mz
  %i.cal = phi i32 [ %.pr.i.i, %._crit_edge.i308.i ], [ %i.byp, %bb.mz ] ; 6 uses
  %i.cam = load i32, ptr %i.qv, align 4, !tbaa !312
  %.not.i296.i = icmp slt i32 %i.cam, %i.cal
  br i1 %.not.i296.i, label %bb.ny, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.can = icmp sgt i32 %i.cal, 2
  br i1 %i.can, label %bb.nc, label %cvBDFStab.exit.i

bb.nc:                                            ; preds = %bb.nb
  %i.cao = load i32, ptr %i.ui, align 8, !tbaa !94
  %i.cap = add nuw nsw i32 %i.cal, 5
  %.not76.i.i = icmp slt i32 %i.cao, %i.cap
  br i1 %.not76.i.i, label %cvBDFStab.exit.i, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nf, %bb.nd
  %indvars.iv.i.i297.i = phi i64 [ 1, %bb.nd ], [ %indvars.iv.next.i.i298.i, %bb.nf ] ; 13 uses
  %i.caq = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv.i.i297.i
  %i.car = load double, ptr %i.caq, align 8, !tbaa !29 ; 7 uses
  %invariant.gep.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %indvars.iv.i.i297.i ; 4 uses
  %i.cas = fcmp olt double %i.car, 0.000000e+00
  %i.cat = select i1 %i.cas, double 0.000000e+00, double %i.car ; 2 uses
  %gep.1.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 64
  %i.cau = load double, ptr %gep.1.i.i.i, align 8, !tbaa !29 ; 9 uses
  %i.cav = fcmp olt double %i.car, %i.cau
  %.0298..1.i.i.i = select i1 %i.cav, double %i.car, double %i.cau ; 2 uses
  %i.caw = fcmp ogt double %i.cat, %i.cau
  %i.cax = select i1 %i.caw, double %i.cat, double %i.cau ; 2 uses
  %gep.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 96
  %i.cay = load double, ptr %gep.2.i.i.i, align 8, !tbaa !29 ; 7 uses
  %i.caz = fcmp olt double %.0298..1.i.i.i, %i.cay
  %.0298..2.i.i.i = select i1 %i.caz, double %.0298..1.i.i.i, double %i.cay ; 2 uses
  %i.cba = fcmp ogt double %i.cax, %i.cay
  %i.cbb = select i1 %i.cba, double %i.cax, double %i.cay ; 2 uses
  %gep.3.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 128
  %i.cbc = load double, ptr %gep.3.i.i.i, align 8, !tbaa !29 ; 9 uses
  %i.cbd = fcmp olt double %.0298..2.i.i.i, %i.cbc
  %.0298..3.i.i.i = select i1 %i.cbd, double %.0298..2.i.i.i, double %i.cbc ; 2 uses
  %i.cbe = fcmp ogt double %i.cbb, %i.cbc
  %i.cbf = select i1 %i.cbe, double %i.cbb, double %i.cbc ; 2 uses
  %gep.4.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 160
  %i.cbg = load double, ptr %gep.4.i.i.i, align 8, !tbaa !29 ; 7 uses
  %i.cbh = fcmp olt double %.0298..3.i.i.i, %i.cbg
  %.0298..4.i.i.i = select i1 %i.cbh, double %.0298..3.i.i.i, double %i.cbg
  %i.cbi = fcmp ogt double %i.cbf, %i.cbg
  %i.cbj = select i1 %i.cbi, double %i.cbf, double %i.cbg ; 4 uses
  %i.cbk = fmul double %i.cbj, 1.000000e-10
  %i.cbl = fcmp olt double %.0298..4.i.i.i, %i.cbk
  br i1 %i.cbl, label %cvSLdet.exit.thread.i.i, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.cbm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i297.i
  store double %i.cbj, ptr %i.cbm, align 8, !tbaa !29
  %i.cbn = fmul double %i.cbj, %i.cbj
  %i.cbo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i297.i
  store double %i.cbn, ptr %i.cbo, align 8, !tbaa !29
  %i.cbp = fdiv double %i.car, %i.cau             ; 3 uses
  %i.cbq = fadd double %i.cbp, 0.000000e+00
  %5 = fmul double %i.cbp, %i.cbp
  %i.cbr = fdiv double %i.cau, %i.cay             ; 3 uses
  %i.cbs = fadd double %i.cbq, %i.cbr
  %6 = call double @llvm.fmuladd.f64(double %i.cbr, double %i.cbr, double %5)
  %i.cbt = fdiv double %i.cay, %i.cbc             ; 3 uses
  %i.cbu = fadd double %i.cbs, %i.cbt
  %7 = call double @llvm.fmuladd.f64(double %i.cbt, double %i.cbt, double %6)
  %i.cbv = fdiv double %i.cbc, %i.cbg             ; 3 uses
  %i.cbw = fadd double %i.cbu, %i.cbv
  %8 = call double @llvm.fmuladd.f64(double %i.cbv, double %i.cbv, double %7)
  %i.cbx = fmul double %i.cbw, 2.500000e-01       ; 3 uses
  %i.cby = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i297.i
  store double %i.cbx, ptr %i.cby, align 8, !tbaa !29
  %9 = fneg double %i.cbx
  %10 = fmul double %i.cbx, %9
  %i.cbz = call double @llvm.fmuladd.f64(double %8, double 2.500000e-01, double %10)
  %11 = call double @llvm.fabs.f64(double %i.cbz)
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i297.i
  store double %11, ptr %12, align 8, !tbaa !29
  %i.cca = insertelement <2 x double> poison, double %i.cbc, i64 0
  %i.ccb = insertelement <2 x double> %i.cca, double %i.cau, i64 1
  %i.ccc = fneg <2 x double> %i.ccb               ; 2 uses
  %13 = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %indvars.iv.i.i297.i
  %i.ccd = insertelement <2 x double> poison, double %i.car, i64 0
  %i.cce = insertelement <2 x double> %i.ccd, double %i.cau, i64 1
  %14 = fmul <2 x double> %i.cce, %i.ccc
  %15 = insertelement <2 x double> poison, double %i.cau, i64 0 ; 2 uses
  %16 = insertelement <2 x double> %15, double %i.car, i64 1
  %17 = insertelement <2 x double> poison, double %i.cay, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %19 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %18, <2 x double> %14) ; 2 uses
  %i.ccf = extractelement <2 x double> %19, i64 1 ; 2 uses
  store double %i.ccf, ptr %13, align 8, !tbaa !29
  %20 = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %indvars.iv.i.i297.i
  %21 = extractelement <2 x double> %19, i64 0    ; 2 uses
  store double %21, ptr %20, align 8, !tbaa !29
  %i.ccg = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.i.i297.i
  store double 0.000000e+00, ptr %i.ccg, align 8, !tbaa !29
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv.i.i297.i
  %23 = fneg double %i.cbg
  %i.cch = insertelement <2 x double> %i.ccc, double %23, i64 1
  %i.cci = fmul <2 x double> %18, %i.cch
  %i.ccj = insertelement <2 x double> %15, double %i.cbc, i64 1
  %i.cck = insertelement <2 x double> poison, double %i.cbg, i64 0
  %i.ccl = insertelement <2 x double> %i.cck, double %i.cbc, i64 1
  %i.ccm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ccj, <2 x double> %i.ccl, <2 x double> %i.cci) ; 2 uses
  %i.ccn = extractelement <2 x double> %i.ccm, i64 0 ; 2 uses
  store double %i.ccn, ptr %22, align 8, !tbaa !29
  %i.cco = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %indvars.iv.i.i297.i
  %i.ccp = extractelement <2 x double> %i.ccm, i64 1 ; 2 uses
  store double %i.ccp, ptr %i.cco, align 8, !tbaa !29
  %invariant.gep352.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i297.i ; 5 uses
  %gep353.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 32
  store double %i.ccp, ptr %gep353.i.i.i, align 8, !tbaa !29
  %gep353.1.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 64
  store double %i.ccn, ptr %gep353.1.i.i.i, align 8, !tbaa !29
  %gep353.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 96
  store double 0.000000e+00, ptr %gep353.2.i.i.i, align 8, !tbaa !29
  %gep353.3.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 128
  store double %21, ptr %gep353.3.i.i.i, align 8, !tbaa !29
  %gep353.4.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 160
  store double %i.ccf, ptr %gep353.4.i.i.i, align 8, !tbaa !29
  %indvars.iv.next.i.i298.i = add nuw nsw i64 %indvars.iv.i.i297.i, 1 ; 2 uses
  %exitcond.not.i.i299.i = icmp eq i64 %indvars.iv.next.i.i298.i, 4
  br i1 %exitcond.not.i.i299.i, label %bb.ng, label %bb.ne

bb.ng:                                            ; preds = %bb.nf
  %i.ccq = load double, ptr %i.vw, align 8, !tbaa !29 ; 4 uses
  %i.ccr = load double, ptr %i.vx, align 16, !tbaa !29 ; 4 uses
  %i.ccs = load double, ptr %i.vy, align 8, !tbaa !29 ; 4 uses
  %i.cct = fcmp olt double %i.ccr, %i.ccs
  %i.ccu = select i1 %i.cct, double %i.ccr, double %i.ccs ; 2 uses
  %i.ccv = fcmp olt double %i.ccq, %i.ccu
  %..i.i300.i = select i1 %i.ccv, double %i.ccq, double %i.ccu
  %i.ccw = fcmp olt double %..i.i300.i, 1.000000e-08
  br i1 %i.ccw, label %bb.nh, label %bb.nj

bb.nh:                                            ; preds = %bb.ng
  %i.ccx = fcmp ogt double %i.ccr, %i.ccs
  %i.ccy = select i1 %i.ccx, double %i.ccr, double %i.ccs ; 2 uses
  %i.ccz = fcmp ogt double %i.ccq, %i.ccy
  %i.cda = select i1 %i.ccz, double %i.ccq, double %i.ccy
  %i.cdb = fcmp ogt double %i.cda, 2.500000e-07
  br i1 %i.cdb, label %cvSLdet.exit.thread.i.i, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.cdc = load double, ptr %i.wz, align 8, !tbaa !29 ; 2 uses
  %i.cdd = load <2 x double>, ptr %i.wy, align 8, !tbaa !29 ; 3 uses
  %shift = shufflevector <2 x double> %i.cdd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cdd, %shift
  %i.cde = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cdf = fadd double %i.cde, %i.cdc
  %i.cdg = fdiv double %i.cdf, 3.000000e+00       ; 3 uses
  %i.cdh = insertelement <2 x double> poison, double %i.cdg, i64 0
  %i.cdi = shufflevector <2 x double> %i.cdh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cdj = fsub <2 x double> %i.cdd, %i.cdi
  %i.cdk = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cdj) ; 2 uses
  %i.cdl = extractelement <2 x double> %i.cdk, i64 0 ; 2 uses
  %i.cdm = extractelement <2 x double> %i.cdk, i64 1 ; 2 uses
  %i.cdn = fcmp ogt double %i.cdl, %i.cdm
  %i.cdo = select i1 %i.cdn, double %i.cdl, double %i.cdm ; 2 uses
  %i.cdp = fsub double %i.cdc, %i.cdg
  %i.cdq = call double @llvm.fabs.f64(double %i.cdp) ; 2 uses
  %i.cdr = fcmp ogt double %i.cdo, %i.cdq
  %i.cds = select i1 %i.cdr, double %i.cdo, double %i.cdq
  %i.cdt = fcmp ogt double %i.cds, 5.000000e-04
  br i1 %i.cdt, label %cvSLdet.exit.thread.i.i, label %bb.no

bb.nj:                                            ; preds = %bb.ng
  %i.cdu = load double, ptr %i.vz, align 8, !tbaa !29 ; 3 uses
  %i.cdv = call double @llvm.fabs.f64(double %i.cdu)
  %i.cdw = load double, ptr %i.wa, align 8, !tbaa !29 ; 2 uses
  %i.cdx = fmul double %i.cdw, 1.000000e-10       ; 2 uses
  %i.cdy = fcmp olt double %i.cdv, %i.cdx
  br i1 %i.cdy, label %cvSLdet.exit.thread.i.i, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.cdz = load double, ptr %i.wb, align 16, !tbaa !29
  %i.cea = fneg double %i.cdz
  %i.ceb = fdiv double %i.cea, %i.cdu             ; 3 uses
  %i.cec = load double, ptr %i.wc, align 16, !tbaa !29
  %i.ced = load double, ptr %i.wd, align 8, !tbaa !29 ; 2 uses
  %i.cee = call double @llvm.fmuladd.f64(double %i.ceb, double %i.ced, double %i.cec) ; 2 uses
  %i.cef = call double @llvm.fabs.f64(double %i.cee)
  %i.ceg = load double, ptr %i.we, align 16, !tbaa !29 ; 2 uses
  %i.ceh = load <2 x double>, ptr %i.wa, align 8, !tbaa !29 ; 2 uses
  %i.cei = fmul double %i.ceg, 1.000000e-10       ; 2 uses
  %i.cej = fcmp olt double %i.cef, %i.cei
  br i1 %i.cej, label %cvSLdet.exit.thread.i.i, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.cek = load double, ptr %i.wf, align 8, !tbaa !29
  %i.cel = fneg double %i.cek
  %i.cem = fdiv double %i.cel, %i.cdu             ; 3 uses
  %i.cen = load double, ptr %i.wg, align 8, !tbaa !29 ; 2 uses
  %i.ceo = load double, ptr %i.wh, align 8, !tbaa !29
  %i.cep = call double @llvm.fmuladd.f64(double %i.cem, double %i.cen, double %i.ceo)
  %i.ceq = load double, ptr %i.wi, align 8, !tbaa !29
  %i.cer = call double @llvm.fmuladd.f64(double %i.cem, double %i.ced, double %i.ceq)
  %i.ces = load double, ptr %i.wj, align 16, !tbaa !29
  %i.cet = call double @llvm.fmuladd.f64(double %i.ceb, double %i.cen, double %i.ces)
  %i.ceu = fneg double %i.cer
  %i.cev = fdiv double %i.ceu, %i.cee             ; 2 uses
  %i.cew = call double @llvm.fmuladd.f64(double %i.cev, double %i.cet, double %i.cep) ; 2 uses
  %i.cex = call double @llvm.fabs.f64(double %i.cew)
  %i.cey = load double, ptr %i.wk, align 8, !tbaa !29 ; 3 uses
  %i.cez = load <2 x double>, ptr %i.we, align 16, !tbaa !29
  %i.cfa = fmul double %i.cey, 1.000000e-10       ; 2 uses
  %i.cfb = fcmp olt double %i.cex, %i.cfa
  br i1 %i.cfb, label %cvSLdet.exit.thread.i.i, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.cfc = load <1 x double>, ptr %i.wl, align 8
  %i.cfd = load <2 x double>, ptr %i.wm, align 16, !tbaa !29
  %i.cfe = insertelement <2 x double> poison, double %i.ceb, i64 0
  %i.cff = insertelement <2 x double> %i.cfe, double %i.cem, i64 1
  %i.cfg = shufflevector <1 x double> %i.cfc, <1 x double> poison, <2 x i32> zeroinitializer
  %i.cfh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cff, <2 x double> %i.cfg, <2 x double> %i.cfd) ; 2 uses
  %i.cfi = extractelement <2 x double> %i.cfh, i64 0
  %i.cfj = extractelement <2 x double> %i.cfh, i64 1
  %i.cfk = call double @llvm.fmuladd.f64(double %i.cev, double %i.cfi, double %i.cfj)
  %i.cfl = fneg double %i.cfk
  %i.cfm = fdiv double %i.cfl, %i.cew             ; 9 uses
  %i.cfn = fcmp olt double %i.cfm, 1.000000e-10
  %i.cfo = fcmp ogt double %i.cfm, 1.000000e+02
  %or.cond.i.i301.i = or i1 %i.cfn, %i.cfo
  br i1 %or.cond.i.i301.i, label %cvSLdet.exit.thread.i.i, label %.preheader338.i.i.i

.preheader338.i.i.i:                              ; preds = %bb.nm
  %i.cfp = fmul double %i.cfm, %i.cfm             ; 2 uses
  %i.cfq = load double, ptr %i.wn, align 8, !tbaa !29 ; 4 uses
  %i.cfr = load <2 x double>, ptr %i.wo, align 8, !tbaa !29 ; 7 uses
  %i.cfs = load <2 x double>, ptr %i.wp, align 8, !tbaa !29 ; 6 uses
  %i.cft = load <2 x double>, ptr %i.wq, align 8, !tbaa !29 ; 7 uses
  %i.cfu = extractelement <2 x double> %i.cfs, i64 0 ; 3 uses
  %i.cfv = extractelement <2 x double> %i.cft, i64 0 ; 3 uses
  %i.cfw = call double @llvm.fmuladd.f64(double %i.cfm, double %i.cfv, double %i.cfu)
  %i.cfx = extractelement <2 x double> %i.cfr, i64 0 ; 3 uses
  %i.cfy = call double @llvm.fmuladd.f64(double %i.cfp, double %i.cfw, double %i.cfx)
  %i.cfz = call double @llvm.fmuladd.f64(double %i.cfm, double %i.cfy, double %i.cfq) ; 2 uses
  %i.cga = load double, ptr %i.ws, align 8, !tbaa !29 ; 4 uses
  %i.cgb = load double, ptr %i.wt, align 8, !tbaa !29 ; 4 uses
  %i.cgc = load double, ptr %i.wu, align 8, !tbaa !29 ; 5 uses
  %i.cgd = load <2 x double>, ptr %i.wr, align 16, !tbaa !29 ; 5 uses
  %i.cge = insertelement <2 x double> poison, double %i.cfm, i64 0
  %i.cgf = shufflevector <2 x double> %i.cge, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cgg = shufflevector <2 x double> %i.cft, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cgh = insertelement <2 x double> %i.cgg, double %i.cgc, i64 1
  %i.cgi = shufflevector <2 x double> %i.cfs, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cgj = insertelement <2 x double> %i.cgi, double %i.cgb, i64 1
  %i.cgk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgf, <2 x double> %i.cgh, <2 x double> %i.cgj)
  %i.cgl = insertelement <2 x double> poison, double %i.cfp, i64 0
  %i.cgm = shufflevector <2 x double> %i.cgl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cgn = shufflevector <2 x double> %i.cfr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cgo = insertelement <2 x double> %i.cgn, double %i.cga, i64 1
  %i.cgp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgm, <2 x double> %i.cgk, <2 x double> %i.cgo)
  %i.cgq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgf, <2 x double> %i.cgp, <2 x double> %i.cgd) ; 3 uses
  %i.cgr = shufflevector <2 x double> %i.cgq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cgs = insertelement <2 x double> %i.cgr, double %i.cfz, i64 0
  %i.cgt = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cgs)
  %i.cgu = fdiv <2 x double> %i.cgt, %i.ceh       ; 2 uses
  %i.cgv = extractelement <2 x double> %i.cgu, i64 0 ; 2 uses
  %i.cgw = fcmp ogt double %i.cgv, 0.000000e+00
  %.1293.i.i.i = select i1 %i.cgw, double %i.cgv, double 0.000000e+00 ; 2 uses
  %i.cgx = extractelement <2 x double> %i.cgu, i64 1 ; 2 uses
  %i.cgy = fcmp ogt double %i.cgx, %.1293.i.i.i
  %.1293.1.i.i.i = select i1 %i.cgy, double %i.cgx, double %.1293.i.i.i ; 2 uses
  %i.cgz = extractelement <2 x double> %i.cgq, i64 1
  %i.cha = call double @llvm.fabs.f64(double %i.cgz)
  %i.chb = fdiv double %i.cha, %i.cey             ; 2 uses
  %i.chc = fcmp ogt double %i.chb, %.1293.1.i.i.i
  %.1293.2.i.i.i = select i1 %i.chc, double %i.chb, double %.1293.1.i.i.i
  %i.chd = fcmp olt double %.1293.2.i.i.i, 1.000000e-03
  br i1 %i.chd, label %bb.no, label %.preheader335.i.i.i.preheader

.preheader335.i.i.i.preheader:                    ; preds = %.preheader338.i.i.i
  %i.che = extractelement <2 x double> %i.cfr, i64 1
  %i.chf = insertelement <2 x double> %i.cgd, double %i.cgb, i64 1 ; 2 uses
  %i.chg = insertelement <2 x double> %i.cfs, double %i.cfq, i64 0
  %i.chh = insertelement <2 x double> poison, double %i.cgb, i64 1
  %i.chi = shufflevector <2 x double> %i.cft, <2 x double> <double poison, double 3.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.chj = insertelement <2 x double> poison, double %i.cei, i64 0
  %i.chk = insertelement <2 x double> %i.chj, double %i.cfa, i64 1
  %i.chl = insertelement <2 x double> poison, double %i.cdw, i64 0
  %i.chm = shufflevector <2 x double> %i.chl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chn = extractelement <2 x double> %i.cgd, i64 0
  %i.cho = shufflevector <2 x double> %i.cgd, <2 x double> %i.cfs, <2 x i32> <i32 1, i32 2>
  %i.chp = shufflevector <2 x double> %i.cfr, <2 x double> %i.cfs, <2 x i32> <i32 0, i32 3>
  %i.chq = insertelement <2 x double> %i.cfr, double %i.cfq, i64 0
  %i.chr = insertelement <2 x double> poison, double %i.cgc, i64 1
  %i.chs = insertelement <2 x double> poison, double %i.cga, i64 0
  %i.cht = shufflevector <2 x double> %i.chs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chu = shufflevector <2 x double> %i.cgd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.chv = insertelement <2 x double> poison, double %i.cey, i64 0
  %i.chw = shufflevector <2 x double> %i.chv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chx = insertelement <2 x double> %i.cfr, double %i.cga, i64 0
  br label %.preheader335.i.i.i

.preheader335.i.i.i:                              ; preds = %.preheader335.i.i.i.preheader, %.preheader.i.i303.i
  %.sroa.2449.0.i.i.i = phi double [ %i.cmp, %.preheader.i.i303.i ], [ %i.cfz, %.preheader335.i.i.i.preheader ]
  %.0299376.i.i.i = phi double [ %i.cmn, %.preheader.i.i303.i ], [ %i.cfm, %.preheader335.i.i.i.preheader ] ; 5 uses
  %.0305375.i.i.i = phi i32 [ %.2307.2.i.i.i, %.preheader.i.i303.i ], [ 0, %.preheader335.i.i.i.preheader ]
  %.0308374.i.i.i = phi i32 [ %i.cms, %.preheader.i.i303.i ], [ 1, %.preheader335.i.i.i.preheader ]
  %i.chy = phi <2 x double> [ %i.cmu, %.preheader.i.i303.i ], [ %i.cgq, %.preheader335.i.i.i.preheader ]
  %i.chz = fmul double %.0299376.i.i.i, %.0299376.i.i.i ; 2 uses
  %i.cia = fmul double %.0299376.i.i.i, 4.000000e+00 ; 2 uses
  %i.cib = fneg double %.sroa.2449.0.i.i.i
  %i.cic = insertelement <2 x double> poison, double %i.cia, i64 0
  %i.cid = shufflevector <2 x double> %i.cic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cie = fmul <2 x double> %i.cft, %i.cid
  %i.cif = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cfs, <2 x double> splat (double 3.000000e+00), <2 x double> %i.cie)
  %i.cig = insertelement <2 x double> poison, double %i.chz, i64 0
  %i.cih = shufflevector <2 x double> %i.cig, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cih, <2 x double> %i.cif, <2 x double> %i.cfr) ; 2 uses
  %i.cij = extractelement <2 x double> %i.cii, i64 0 ; 2 uses
  %i.cik = call double @llvm.fabs.f64(double %i.cij)
  %i.cil = fcmp ogt double %i.cik, %i.cdx
  %i.cim = fdiv double %i.cib, %i.cij
  %.sroa.2444.0.i.i.i = select i1 %i.cil, double %i.cim, double 0.000000e+00
  %i.cin = fadd double %.0299376.i.i.i, %.sroa.2444.0.i.i.i ; 6 uses
end_hunk_0
