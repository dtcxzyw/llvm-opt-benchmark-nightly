Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/paillou_filter?download=true
inline.NumInlined: 264
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK2cv8ximgproc28ParallelGradientPaillouXRowsclERKNS_5RangeE:bb.a

.lr.ph102.i77.preheader:                          ; preds = %.lr.ph102.preheader.i76, %middle.block150
  %indvars.iv112.i78.ph = phi i64 [ 0, %.lr.ph102.preheader.i76 ], [ %n.vec139, %middle.block150 ]
  %.08899.i79.ph = phi ptr [ %i.xe, %.lr.ph102.preheader.i76 ], [ %i.xf, %middle.block150 ]
  br label %.lr.ph102.i77

.lr.ph97.i89:                                     ; preds = %.lr.ph97.i89.prol.loopexit, %.lr.ph97.i89
  %store_forwarded228 = phi double [ %i.yh, %.lr.ph97.i89 ], [ %store_forwarded228.unr, %.lr.ph97.i89.prol.loopexit ]
  %indvars.iv109.i90 = phi i64 [ %indvars.iv.next110.i92.1, %.lr.ph97.i89 ], [ %indvars.iv109.i90.unr, %.lr.ph97.i89.prol.loopexit ] ; 3 uses
  %.194.i91 = phi ptr [ %i.yi, %.lr.ph97.i89 ], [ %.194.i91.unr, %.lr.ph97.i89.prol.loopexit ] ; 3 uses
  %i.xt = load i16, ptr %.194.i91, align 2, !tbaa !93
  %i.xu = uitofp i16 %i.xt to double
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %indvars.iv109.i90 ; 2 uses
  %i.xw = call double @llvm.fmuladd.f64(double %i.uc, double %store_forwarded228, double %i.xu)
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !89
  %i.xz = call double @llvm.fmuladd.f64(double %i.tp, double %i.xy, double %i.xw) ; 2 uses
  store double %i.xz, ptr %i.xv, align 8, !tbaa !89
  %indvars.iv.next110.i92 = add nsw i64 %indvars.iv109.i90, -1 ; 2 uses
  %i.ya = getelementptr inbounds i8, ptr %.194.i91, i64 -2
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !93
  %i.yc = uitofp i16 %i.yb to double
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %indvars.iv.next110.i92 ; 2 uses
  %i.ye = call double @llvm.fmuladd.f64(double %i.uc, double %i.xz, double %i.yc)
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !89
  %i.yh = call double @llvm.fmuladd.f64(double %i.tp, double %i.yg, double %i.ye) ; 2 uses
  store double %i.yh, ptr %i.yd, align 8, !tbaa !89
  %indvars.iv.next110.i92.1 = add nsw i64 %indvars.iv109.i90, -2
  %i.yi = getelementptr inbounds i8, ptr %.194.i91, i64 -4
  %.not.i93.1 = icmp eq i64 %indvars.iv.next110.i92, 0
  br i1 %.not.i93.1, label %.lr.ph102.preheader.i76, label %.lr.ph97.i89, !llvm.loop !142

._crit_edge103.i73:                               ; preds = %.lr.ph102.i77, %middle.block150, %._crit_edge98.critedge.i72
  %indvars.iv.next118.i74 = add nsw i64 %indvars.iv117.i71, 1 ; 2 uses
  %exitcond121.not.i75 = icmp eq i64 %indvars.iv.next118.i74, %wide.trip.count120.i68
  br i1 %exitcond121.not.i75, label %_ZN2cv8ximgprocL19HorizontalIIRFilterItEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %bb.v, !llvm.loop !143

.lr.ph102.i77:                                    ; preds = %.lr.ph102.i77.preheader, %.lr.ph102.i77
  %indvars.iv112.i78 = phi i64 [ %indvars.iv.next113.i80, %.lr.ph102.i77 ], [ %indvars.iv112.i78.ph, %.lr.ph102.i77.preheader ] ; 3 uses
  %.08899.i79 = phi ptr [ %i.yq, %.lr.ph102.i77 ], [ %.08899.i79.ph, %.lr.ph102.i77.preheader ] ; 2 uses
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %indvars.iv112.i78
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !89
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %indvars.iv112.i78
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !89
  %i.yn = fsub double %i.yk, %i.ym
  %i.yo = fmul double %i.tr, %i.yn
  %i.yp = fptrunc double %i.yo to float
  store float %i.yp, ptr %.08899.i79, align 4, !tbaa !91
  %indvars.iv.next113.i80 = add nuw nsw i64 %indvars.iv112.i78, 1 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.08899.i79, i64 4
  %exitcond116.not.i81 = icmp eq i64 %indvars.iv.next113.i80, %wide.trip.count.i69
  br i1 %exitcond116.not.i81, label %._crit_edge103.i73, label %.lr.ph102.i77, !llvm.loop !144

_ZN2cv8ximgprocL19HorizontalIIRFilterItEEvRNS_3MatES3_RKNS_5RangeEdd.exit: ; preds = %._crit_edge103.i73, %bb.t
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.aa

bb.w:                                             ; preds = %bb.f
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !151, !nonnull !65, !align !87 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !57 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.yw = load double, ptr %i.yv, align 8, !tbaa !58 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !51
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !43
  %..i94 = tail call i32 @llvm.smax.i32(i32 %i.yy, i32 %i.za) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 1, i32 noundef %..i94, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1, i32 noundef %..i94, i32 noundef 6)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.zb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !88 ; 8 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !88 ; 7 uses
  %i.zf = load i32, ptr %i.yz, align 4, !tbaa !43 ; 8 uses
  %i.zg = fneg double %i.yu                       ; 2 uses
  %i.zh = call double @exp(double noundef %i.zg) #14
  %i.zi = call double @cosh(double noundef %i.yw) #14
  %i.zj = call double @exp(double noundef %i.zg) #14
  %i.zk = fmul double %i.zj, 2.000000e+00
  %i.zl = call double @cosh(double noundef %i.yw) #14
  %i.zm = fmul double %i.yu, -2.000000e+00
  %i.zn = call double @exp(double noundef %i.zm) #14
  %i.zo = fneg double %i.zn                       ; 8 uses
  %i.zp = call double @llvm.fmuladd.f64(double %i.zk, double %i.zl, double %i.zo)
  %i.zq = fadd double %i.zp, -1.000000e+00        ; 2 uses
  %i.zr = load i32, ptr %1, align 4, !tbaa !45    ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !46 ; 2 uses
  %i.zu = icmp slt i32 %i.zr, %i.zt
  br i1 %i.zu, label %.lr.ph106.i95, label %_ZN2cv8ximgprocL19HorizontalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit

.lr.ph106.i95:                                    ; preds = %bb.x
  %i.zv = fmul double %i.zh, -2.000000e+00
  %i.zw = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !88
  %i.zy = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !55
  %i.aaa = fneg double %i.zi
  %i.aab = fmul double %i.zv, %i.aaa              ; 8 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  %i.aad = icmp sgt i32 %i.zf, 2
  %i.aae = sext i32 %i.zf to i64                  ; 3 uses
  %i.aaf = getelementptr [8 x i8], ptr %i.ze, i64 %i.aae
  %i.aag = getelementptr i8, ptr %i.aaf, i64 -16  ; 2 uses
  %i.aah = add i32 %i.zf, -3                      ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.ys, i64 24
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !88
  %i.aak = getelementptr inbounds nuw i8, ptr %i.ys, i64 128
  %i.aal = load i64, ptr %i.aak, align 8, !tbaa !55
  %i.aam = icmp sgt i32 %i.zf, 0
  %i.aan = zext i32 %i.aah to i64                 ; 5 uses
  %i.aao = sext i32 %i.zr to i64
  %wide.trip.count120.i96 = sext i32 %i.zt to i64
  %wide.trip.count.i97 = zext i32 %i.zf to i64    ; 5 uses
  %scevgep229 = getelementptr i8, ptr %i.zc, i64 8
  %i.aap = shl nuw nsw i64 %i.aan, 3
  %i.aaq = getelementptr i8, ptr %i.ze, i64 %i.aap
  %scevgep232 = getelementptr i8, ptr %i.aaq, i64 8
  %i.aar = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.aab, i64 0 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i97, 1
  %i.aas = icmp eq i32 %i.zf, 3
  %i.aat = and i64 %wide.trip.count.i97, 2147483646
  %i.aau = add nsw i64 %i.aat, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod235 = trunc i32 %i.zf to i1
  %i.aav = and i64 %i.aan, 1
  %lcmp.mod237.not.not = icmp eq i64 %i.aav, 0
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.aan ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %indvars.iv.next110.i120.prol = add nsw i64 %i.aan, -1
  %i.aay = icmp eq i32 %i.aah, 0
  %min.iters.check = icmp ult i32 %i.zf, 4
  %n.vec = and i64 %wide.trip.count.i97, 4294967292 ; 4 uses
  %i.aaz = shl nuw nsw i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.zq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i97
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.aba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %common.resume

bb.z:                                             ; preds = %._crit_edge103.i101, %.lr.ph106.i95
  %indvars.iv117.i99 = phi i64 [ %i.aao, %.lr.ph106.i95 ], [ %indvars.iv.next118.i102, %._crit_edge103.i101 ] ; 3 uses
  %i.abb = mul i64 %indvars.iv117.i99, %i.zz
  %i.abc = getelementptr inbounds nuw i8, ptr %i.zx, i64 %i.abb ; 5 uses
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !91
  %i.abe = fpext float %i.abd to double           ; 3 uses
  store double %i.abe, ptr %i.zc, align 8, !tbaa !89
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abc, i64 4
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !91
  %i.abh = fpext float %i.abg to double
  %i.abi = call double @llvm.fmuladd.f64(double %i.aab, double %i.abe, double %i.abh)
  %i.abj = call double @llvm.fmuladd.f64(double %i.zo, double %i.abe, double %i.abi)
  store double %i.abj, ptr %i.aac, align 8, !tbaa !89
  br i1 %i.aad, label %.lr.ph.preheader.i110, label %._crit_edge98.critedge.i100

.lr.ph.preheader.i110:                            ; preds = %bb.z
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abc, i64 8 ; 2 uses
  %load_initial230 = load double, ptr %scevgep229, align 8 ; 2 uses
  br i1 %i.aas, label %.lr.ph.i111.epil.preheader, label %.lr.ph.i111

._crit_edge.i116.unr-lcssa:                       ; preds = %.lr.ph.i111
  br i1 %lcmp.mod.not, label %._crit_edge.i116, label %.lr.ph.i111.epil.preheader

.lr.ph.i111.epil.preheader:                       ; preds = %._crit_edge.i116.unr-lcssa, %.lr.ph.preheader.i110
  %store_forwarded231.epil.init = phi double [ %load_initial230, %.lr.ph.preheader.i110 ], [ %i.act, %._crit_edge.i116.unr-lcssa ]
  %indvars.iv.i112.epil.init = phi i64 [ 2, %.lr.ph.preheader.i110 ], [ %indvars.iv.next.i114.1, %._crit_edge.i116.unr-lcssa ]
  %.08692.i113.epil.init = phi ptr [ %i.abk, %.lr.ph.preheader.i110 ], [ %i.acu, %._crit_edge.i116.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod235)
  %i.abl = load float, ptr %.08692.i113.epil.init, align 4, !tbaa !91
  %i.abm = fpext float %i.abl to double
  %i.abn = getelementptr [8 x i8], ptr %i.zc, i64 %indvars.iv.i112.epil.init ; 2 uses
  %i.abo = call double @llvm.fmuladd.f64(double %i.aab, double %store_forwarded231.epil.init, double %i.abm)
  %i.abp = getelementptr i8, ptr %i.abn, i64 -16
  %i.abq = load double, ptr %i.abp, align 8, !tbaa !89
  %i.abr = call double @llvm.fmuladd.f64(double %i.zo, double %i.abq, double %i.abo)
  store double %i.abr, ptr %i.abn, align 8, !tbaa !89
  br label %._crit_edge.i116

._crit_edge.i116:                                 ; preds = %._crit_edge.i116.unr-lcssa, %.lr.ph.i111.epil.preheader
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abc, i64 %i.aae ; 3 uses
  %i.abt = getelementptr inbounds i8, ptr %i.abs, i64 -8
  %i.abu = load <2 x float>, ptr %i.abt, align 4, !tbaa !91
  %i.abv = fpext <2 x float> %i.abu to <2 x double> ; 2 uses
  %12 = shufflevector <2 x double> %i.abv, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.abw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aar, <2 x double> %12, <2 x double> %i.abv)
  store <2 x double> %i.abw, ptr %i.aag, align 8, !tbaa !89
  %i.abx = getelementptr inbounds i8, ptr %i.abs, i64 -12 ; 2 uses
  %load_initial233 = load double, ptr %scevgep232, align 8 ; 2 uses
  br i1 %lcmp.mod237.not.not, label %.lr.ph97.i117.prol, label %.lr.ph97.i117.prol.loopexit

.lr.ph97.i117.prol:                               ; preds = %._crit_edge.i116
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !91
  %i.abz = fpext float %i.aby to double
  %i.aca = call double @llvm.fmuladd.f64(double %i.aab, double %load_initial233, double %i.abz)
  %i.acb = load double, ptr %i.aax, align 8, !tbaa !89
  %i.acc = call double @llvm.fmuladd.f64(double %i.zo, double %i.acb, double %i.aca) ; 2 uses
  store double %i.acc, ptr %i.aaw, align 8, !tbaa !89
  %i.acd = getelementptr inbounds i8, ptr %i.abs, i64 -16
  br label %.lr.ph97.i117.prol.loopexit

.lr.ph97.i117.prol.loopexit:                      ; preds = %.lr.ph97.i117.prol, %._crit_edge.i116
  %store_forwarded234.unr = phi double [ %load_initial233, %._crit_edge.i116 ], [ %i.acc, %.lr.ph97.i117.prol ]
  %indvars.iv109.i118.unr = phi i64 [ %i.aan, %._crit_edge.i116 ], [ %indvars.iv.next110.i120.prol, %.lr.ph97.i117.prol ]
  %.194.i119.unr = phi ptr [ %i.abx, %._crit_edge.i116 ], [ %i.acd, %.lr.ph97.i117.prol ]
  br i1 %i.aay, label %.lr.ph102.preheader.i104, label %.lr.ph97.i117

.lr.ph.i111:                                      ; preds = %.lr.ph.preheader.i110, %.lr.ph.i111
  %store_forwarded231 = phi double [ %i.act, %.lr.ph.i111 ], [ %load_initial230, %.lr.ph.preheader.i110 ]
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i114.1, %.lr.ph.i111 ], [ 2, %.lr.ph.preheader.i110 ] ; 3 uses
  %.08692.i113 = phi ptr [ %i.acu, %.lr.ph.i111 ], [ %i.abk, %.lr.ph.preheader.i110 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i111 ], [ 0, %.lr.ph.preheader.i110 ] ; 2 uses
  %i.ace = load float, ptr %.08692.i113, align 4, !tbaa !91
  %i.acf = fpext float %i.ace to double
  %i.acg = getelementptr [8 x i8], ptr %i.zc, i64 %indvars.iv.i112 ; 2 uses
  %i.ach = call double @llvm.fmuladd.f64(double %i.aab, double %store_forwarded231, double %i.acf)
  %i.aci = getelementptr i8, ptr %i.acg, i64 -16
  %i.acj = load double, ptr %i.aci, align 8, !tbaa !89
  %i.ack = call double @llvm.fmuladd.f64(double %i.zo, double %i.acj, double %i.ach) ; 2 uses
  store double %i.ack, ptr %i.acg, align 8, !tbaa !89
  %i.acl = getelementptr inbounds nuw i8, ptr %.08692.i113, i64 4
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !91
  %i.acn = fpext float %i.acm to double
  %i.aco = getelementptr [8 x i8], ptr %i.zc, i64 %indvars.iv.i112 ; 2 uses
  %i.acp = getelementptr i8, ptr %i.aco, i64 8
  %i.acq = call double @llvm.fmuladd.f64(double %i.aab, double %i.ack, double %i.acn)
  %i.acr = getelementptr i8, ptr %i.aco, i64 -8
  %i.acs = load double, ptr %i.acr, align 8, !tbaa !89
  %i.act = call double @llvm.fmuladd.f64(double %i.zo, double %i.acs, double %i.acq) ; 3 uses
  store double %i.act, ptr %i.acp, align 8, !tbaa !89
  %indvars.iv.next.i114.1 = add nuw nsw i64 %indvars.iv.i112, 2 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.08692.i113, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.aau
  br i1 %niter.ncmp.1, label %._crit_edge.i116.unr-lcssa, label %.lr.ph.i111, !llvm.loop !145

._crit_edge98.critedge.i100:                      ; preds = %bb.z
  %i.acv = getelementptr inbounds [4 x i8], ptr %i.abc, i64 %i.aae
  %i.acw = getelementptr inbounds i8, ptr %i.acv, i64 -8
  %i.acx = load <2 x float>, ptr %i.acw, align 4, !tbaa !91
  %i.acy = fpext <2 x float> %i.acx to <2 x double> ; 2 uses
  %13 = shufflevector <2 x double> %i.acy, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.acz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aar, <2 x double> %13, <2 x double> %i.acy)
  store <2 x double> %i.acz, ptr %i.aag, align 8, !tbaa !89
  br i1 %i.aam, label %.lr.ph102.preheader.i104, label %._crit_edge103.i101

.lr.ph102.preheader.i104:                         ; preds = %.lr.ph97.i117.prol.loopexit, %.lr.ph97.i117, %._crit_edge98.critedge.i100
  %i.ada = mul i64 %indvars.iv117.i99, %i.aal
  %i.adb = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %i.ada ; 3 uses
  br i1 %min.iters.check, label %.lr.ph102.i105.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph102.preheader.i104
  %i.adc = getelementptr i8, ptr %i.adb, i64 %i.aaz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.add = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.adb, i64 %i.add ; 2 uses
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %index ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  %wide.load = load <2 x double>, ptr %i.ade, align 8, !tbaa !89
  %wide.load132 = load <2 x double>, ptr %i.adf, align 8, !tbaa !89
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %index ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  %wide.load133 = load <2 x double>, ptr %i.adg, align 8, !tbaa !89
  %wide.load134 = load <2 x double>, ptr %i.adh, align 8, !tbaa !89
  %i.adi = fsub <2 x double> %wide.load, %wide.load133
  %i.adj = fsub <2 x double> %wide.load132, %wide.load134
  %i.adk = fmul <2 x double> %broadcast.splat, %i.adi
  %i.adl = fmul <2 x double> %broadcast.splat, %i.adj
  %i.adm = fptrunc <2 x double> %i.adk to <2 x float>
  %i.adn = fptrunc <2 x double> %i.adl to <2 x float>
  %i.ado = getelementptr i8, ptr %next.gep, i64 8
  store <2 x float> %i.adm, ptr %next.gep, align 4, !tbaa !91
  store <2 x float> %i.adn, ptr %i.ado, align 4, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.adp = icmp eq i64 %index.next, %n.vec
  br i1 %i.adp, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge103.i101, label %.lr.ph102.i105.preheader

.lr.ph102.i105.preheader:                         ; preds = %.lr.ph102.preheader.i104, %middle.block
  %indvars.iv112.i106.ph = phi i64 [ 0, %.lr.ph102.preheader.i104 ], [ %n.vec, %middle.block ]
  %.08899.i107.ph = phi ptr [ %i.adb, %.lr.ph102.preheader.i104 ], [ %i.adc, %middle.block ]
  br label %.lr.ph102.i105

.lr.ph97.i117:                                    ; preds = %.lr.ph97.i117.prol.loopexit, %.lr.ph97.i117
  %store_forwarded234 = phi double [ %i.aee, %.lr.ph97.i117 ], [ %store_forwarded234.unr, %.lr.ph97.i117.prol.loopexit ]
  %indvars.iv109.i118 = phi i64 [ %indvars.iv.next110.i120.1, %.lr.ph97.i117 ], [ %indvars.iv109.i118.unr, %.lr.ph97.i117.prol.loopexit ] ; 3 uses
  %.194.i119 = phi ptr [ %i.aef, %.lr.ph97.i117 ], [ %.194.i119.unr, %.lr.ph97.i117.prol.loopexit ] ; 3 uses
  %i.adq = load float, ptr %.194.i119, align 4, !tbaa !91
  %i.adr = fpext float %i.adq to double
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %indvars.iv109.i118 ; 2 uses
  %i.adt = call double @llvm.fmuladd.f64(double %i.aab, double %store_forwarded234, double %i.adr)
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  %i.adv = load double, ptr %i.adu, align 8, !tbaa !89
  %i.adw = call double @llvm.fmuladd.f64(double %i.zo, double %i.adv, double %i.adt) ; 2 uses
  store double %i.adw, ptr %i.ads, align 8, !tbaa !89
  %indvars.iv.next110.i120 = add nsw i64 %indvars.iv109.i118, -1 ; 2 uses
  %i.adx = getelementptr inbounds i8, ptr %.194.i119, i64 -4
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !91
  %i.adz = fpext float %i.ady to double
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %indvars.iv.next110.i120 ; 2 uses
  %i.aeb = call double @llvm.fmuladd.f64(double %i.aab, double %i.adw, double %i.adz)
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  %i.aed = load double, ptr %i.aec, align 8, !tbaa !89
  %i.aee = call double @llvm.fmuladd.f64(double %i.zo, double %i.aed, double %i.aeb) ; 2 uses
  store double %i.aee, ptr %i.aea, align 8, !tbaa !89
  %indvars.iv.next110.i120.1 = add nsw i64 %indvars.iv109.i118, -2
  %i.aef = getelementptr inbounds i8, ptr %.194.i119, i64 -8
  %.not.i121.1 = icmp eq i64 %indvars.iv.next110.i120, 0
  br i1 %.not.i121.1, label %.lr.ph102.preheader.i104, label %.lr.ph97.i117, !llvm.loop !147

._crit_edge103.i101:                              ; preds = %.lr.ph102.i105, %middle.block, %._crit_edge98.critedge.i100
  %indvars.iv.next118.i102 = add nsw i64 %indvars.iv117.i99, 1 ; 2 uses
  %exitcond121.not.i103 = icmp eq i64 %indvars.iv.next118.i102, %wide.trip.count120.i96
  br i1 %exitcond121.not.i103, label %_ZN2cv8ximgprocL19HorizontalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %bb.z, !llvm.loop !148

.lr.ph102.i105:                                   ; preds = %.lr.ph102.i105.preheader, %.lr.ph102.i105
  %indvars.iv112.i106 = phi i64 [ %indvars.iv.next113.i108, %.lr.ph102.i105 ], [ %indvars.iv112.i106.ph, %.lr.ph102.i105.preheader ] ; 3 uses
  %.08899.i107 = phi ptr [ %i.aen, %.lr.ph102.i105 ], [ %.08899.i107.ph, %.lr.ph102.i105.preheader ] ; 2 uses
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %indvars.iv112.i106
  %i.aeh = load double, ptr %i.aeg, align 8, !tbaa !89
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %indvars.iv112.i106
  %i.aej = load double, ptr %i.aei, align 8, !tbaa !89
  %i.aek = fsub double %i.aeh, %i.aej
  %i.ael = fmul double %i.zq, %i.aek
  %i.aem = fptrunc double %i.ael to float
  store float %i.aem, ptr %.08899.i107, align 4, !tbaa !91
  %indvars.iv.next113.i108 = add nuw nsw i64 %indvars.iv112.i106, 1 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %.08899.i107, i64 4
  %exitcond116.not.i109 = icmp eq i64 %indvars.iv.next113.i108, %wide.trip.count.i97
  br i1 %exitcond116.not.i109, label %._crit_edge103.i101, label %.lr.ph102.i105, !llvm.loop !149

_ZN2cv8ximgprocL19HorizontalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit: ; preds = %._crit_edge103.i101, %bb.x
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.f, %_ZN2cv8ximgprocL19HorizontalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL19HorizontalIIRFilterItEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL19HorizontalIIRFilterIsEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL19HorizontalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL19HorizontalIIRFilterIhEEvRNS_3MatES3_RKNS_5RangeEdd.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc28ParallelGradientPaillouXColsD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8ximgproc28ParallelGradientPaillouXColsclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !63, !range !64, !noundef !65
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN2cv12getThreadNumEv()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.8, i64 noundef 18) ; 0 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !45
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.g) ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.9, i64 noundef 4) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !46
  %i.l = add nsw i32 %i.k, -1
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef %i.l) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.10, i64 noundef 2) ; 0 uses
  %i.o = load i32, ptr %i.j, align 4, !tbaa !46
  %i.p = load i32, ptr %1, align 4, !tbaa !45
  %i.q = sub nsw i32 %i.o, %i.p
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef %i.q) ; 4 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.11, i64 noundef 7) ; 0 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !80   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !86
  %.not.i1.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 67
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !32
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.y)
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.y, i8 noundef signext 10), !inline_history !1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.ac, %bb.d ], [ %i.ag, %bb.e ]
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext %.0.i.i.i)
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !157, !nonnull !65, !align !87 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !43
  %. = tail call i32 @llvm.smax.i32(i32 %i.am, i32 %i.ao) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 1, i32 noundef %., i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1, i32 noundef %., i32 noundef 6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !88 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !88 ; 9 uses
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !157, !nonnull !65, !align !87 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !51 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !43 ; 3 uses
end_hunk_0
