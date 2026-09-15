Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/homography_solver?download=true
inline.NumInlined: 1025
inline.NumDeleted: 487
loop-unroll.NumCompletelyUnrolled: 130
loop-unroll.NumUnrolled: 130
begin_hunk_0_@_ZNK2cv4usac30HomographyNonMinimalSolverImpl8estimateERKSt6vectorIiSaIiEEiRS2_INS_3MatESaIS7_EERKS2_IdSaIdEE:bb.a
  %i.vn = getelementptr inbounds nuw i8, ptr %i.yf, i64 160
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !61
  %i.vp = fdiv double %i.vm, %i.vo                ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  store double %i.vp, ptr %i.vq, align 8, !tbaa !61
  %i.vr = fcmp uno double %i.vp, 0.000000e+00
  br i1 %i.vr, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge.6

._crit_edge.6:                                    ; preds = %._crit_edge.5
  %i.vs = getelementptr inbounds nuw i8, ptr %i.yf, i64 120
  %i.vt = load <2 x double>, ptr %i.vs, align 8, !tbaa !61
  %i.vu = fneg <2 x double> %i.vt                 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.yf, i64 104
  %i.vw = load <2 x double>, ptr %i.vv, align 8, !tbaa !61
  %i.vx = fneg <2 x double> %i.vw                 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.yf, i64 88
  %i.vz = load <2 x double>, ptr %i.vy, align 8, !tbaa !61
  %i.wa = fneg <2 x double> %i.vz                 ; 2 uses
  %i.wb = extractelement <2 x double> %i.wa, i64 0
  %i.wc = call double @llvm.fmuladd.f64(double %i.wb, double %i.vp, double 0.000000e+00)
  %i.wd = extractelement <2 x double> %i.wa, i64 1
  %i.we = call double @llvm.fmuladd.f64(double %i.wd, double %i.up, double %i.wc)
  %i.wf = extractelement <2 x double> %i.vx, i64 0
  %i.wg = call double @llvm.fmuladd.f64(double %i.wf, double %i.tt, double %i.we)
  %i.wh = extractelement <2 x double> %i.vx, i64 1
  %i.wi = call double @llvm.fmuladd.f64(double %i.wh, double %i.ta, double %i.wg)
  %i.wj = extractelement <2 x double> %i.vu, i64 0
  %i.wk = call double @llvm.fmuladd.f64(double %i.wj, double %i.sl, double %i.wi)
  %i.wl = extractelement <2 x double> %i.vu, i64 1
  %i.wm = call double @llvm.fmuladd.f64(double %i.wl, double %i.yl, double %i.wk)
  %i.wn = getelementptr inbounds nuw i8, ptr %i.yf, i64 136
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !61
  %i.wp = fsub double %i.wm, %i.wo
  %i.wq = getelementptr inbounds nuw i8, ptr %i.yf, i64 80
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !61
  %i.ws = fdiv double %i.wp, %i.wr                ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  store double %i.ws, ptr %i.wt, align 8, !tbaa !61
  %i.wu = fcmp uno double %i.ws, 0.000000e+00
  br i1 %i.wu, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge.7

._crit_edge.7:                                    ; preds = %._crit_edge.6
  %i.wv = getelementptr inbounds nuw i8, ptr %i.yf, i64 48
  %i.ww = load <2 x double>, ptr %i.wv, align 8, !tbaa !61
  %i.wx = fneg <2 x double> %i.ww                 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.yf, i64 32
  %i.wz = load <2 x double>, ptr %i.wy, align 8, !tbaa !61
  %i.xa = fneg <2 x double> %i.wz                 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  %i.xc = load <2 x double>, ptr %i.xb, align 8, !tbaa !61
  %i.xd = fneg <2 x double> %i.xc                 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !61
  %i.xg = fneg double %i.xf
  %i.xh = call double @llvm.fmuladd.f64(double %i.xg, double %i.ws, double 0.000000e+00)
  %i.xi = extractelement <2 x double> %i.xd, i64 0
  %i.xj = call double @llvm.fmuladd.f64(double %i.xi, double %i.vp, double %i.xh)
  %i.xk = extractelement <2 x double> %i.xd, i64 1
  %i.xl = call double @llvm.fmuladd.f64(double %i.xk, double %i.up, double %i.xj)
  %i.xm = extractelement <2 x double> %i.xa, i64 0
  %i.xn = call double @llvm.fmuladd.f64(double %i.xm, double %i.tt, double %i.xl)
  %i.xo = extractelement <2 x double> %i.xa, i64 1
  %i.xp = call double @llvm.fmuladd.f64(double %i.xo, double %i.ta, double %i.xn)
  %i.xq = extractelement <2 x double> %i.wx, i64 0
  %i.xr = call double @llvm.fmuladd.f64(double %i.xq, double %i.sl, double %i.xp)
  %i.xs = extractelement <2 x double> %i.wx, i64 1
  %i.xt = call double @llvm.fmuladd.f64(double %i.xs, double %i.yl, double %i.xr)
  %i.xu = getelementptr inbounds nuw i8, ptr %i.yf, i64 64
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !61
  %i.xw = fsub double %i.xt, %i.xv
  %i.xx = load double, ptr %i.yf, align 8, !tbaa !61
  %i.xy = fdiv double %i.xw, %i.xx                ; 2 uses
  store double %i.xy, ptr %i.yd, align 8, !tbaa !61
  %i.xz = fcmp uno double %i.xy, 0.000000e+00
  br i1 %i.xz, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZNSt6vectorIdSaIdEED2Ev.exit388

bb.r:                                             ; preds = %bb.q
  %i.ya = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit
  %i.yb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn369 = phi { ptr, i32 } [ %i.yb, %bb.s ], [ %i.ya, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.u

._crit_edge:                                      ; preds = %_ZN2cv4Mat_IdEC2Eii.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.yc = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !55 ; 9 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 64
  store double 1.000000e+00, ptr %i.ye, align 8, !tbaa !61
  %i.yf = load ptr, ptr %12, align 8, !tbaa !58   ; 36 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 568
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !61
  %i.yi = fsub double 0.000000e+00, %i.yh
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yf, i64 560
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !61
  %i.yl = fdiv double %i.yi, %i.yk                ; 9 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yd, i64 56
  store double %i.yl, ptr %i.ym, align 8, !tbaa !61
  %i.yn = fcmp uno double %i.yl, 0.000000e+00
  br i1 %i.yn, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge.1

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %._crit_edge.7, %._crit_edge.6, %._crit_edge.5, %._crit_edge.4, %._crit_edge.3, %._crit_edge.2, %._crit_edge.1, %._crit_edge
  %i.yo = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.yp = ptrtoint ptr %i.yo to i64
  %i.yq = ptrtoint ptr %i.yf to i64
  %i.yr = sub i64 %i.yp, %i.yq
  call void @_ZdlPvm(ptr noundef nonnull %i.yf, i64 noundef %i.yr) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.av

bb.u:                                             ; preds = %bb.t, %bb.p
  %.pn369.pn = phi { ptr, i32 } [ %.pn369, %bb.t ], [ %i.sa, %bb.p ] ; 2 uses
  %i.ys = load ptr, ptr %12, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i383 = icmp eq ptr %i.ys, null
  br i1 %.not.i.i.i383, label %_ZNSt6vectorIdSaIdEED2Ev.exit384, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.yt = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.yu = ptrtoint ptr %i.yt to i64
  %i.yv = ptrtoint ptr %i.ys to i64
  %i.yw = sub i64 %i.yu, %i.yv
  call void @_ZdlPvm(ptr noundef nonnull %i.ys, i64 noundef %i.yw) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit384

_ZNSt6vectorIdSaIdEED2Ev.exit384:                 ; preds = %bb.v, %bb.u, %bb.i
  %.pn369.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.i ], [ %.pn369.pn, %bb.u ], [ %.pn369.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.aw

bb.w:                                             ; preds = %bb.g
  %i.yx = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !83
  %i.za = icmp eq ptr %i.yx, %i.yz
  %i.zb = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.za, label %.preheader435, label %.preheader439

.preheader439:                                    ; preds = %bb.w
  br i1 %i.zb, label %.lr.ph, label %.loopexit436

.lr.ph:                                           ; preds = %.preheader439
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.z

.preheader435:                                    ; preds = %bb.w
  br i1 %i.zb, label %.lr.ph449, label %.loopexit436

.lr.ph449:                                        ; preds = %.preheader435
  %i.zc = load i8, ptr %i.f, align 8, !tbaa !42, !range !68, !noundef !69
  %i.zd = trunc nuw i8 %i.zc to i1
  %wide.trip.count487 = zext nneg i32 %2 to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph449, %.preheader434
  %.sroa.101.0 = phi double [ 0.000000e+00, %.lr.ph449 ], [ %i.acd, %.preheader434 ]
  %.sroa.254.0 = phi double [ 0.000000e+00, %.lr.ph449 ], [ %i.aei, %.preheader434 ]
  %indvars.iv484 = phi i64 [ 0, %.lr.ph449 ], [ %indvars.iv.next485, %.preheader434 ] ; 3 uses
  %i.ze = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.aal, %.preheader434 ]
  %i.zf = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abi, %.preheader434 ]
  %i.zg = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abo, %.preheader434 ]
  %i.zh = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.aaw, %.preheader434 ]
  %i.zi = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abd, %.preheader434 ]
  %i.zj = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abl, %.preheader434 ]
  %i.zk = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abu, %.preheader434 ]
  %i.zl = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.aca, %.preheader434 ]
  %i.zm = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acc, %.preheader434 ]
  %i.zn = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acf, %.preheader434 ]
  %i.zo = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acj, %.preheader434 ]
  %i.zp = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acq, %.preheader434 ]
  %i.zq = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acv, %.preheader434 ]
  %i.zr = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.ada, %.preheader434 ]
  %i.zs = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.add, %.preheader434 ]
  %i.zt = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.adh, %.preheader434 ]
  %i.zu = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.adk, %.preheader434 ]
  %i.zv = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.adp, %.preheader434 ]
  %i.zw = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.aef, %.preheader434 ]
  %i.zx = phi <4 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.aec, %.preheader434 ]
  %i.zy = trunc nuw nsw i64 %indvars.iv484 to i32
  br i1 %i.zd, label %.preheader434, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.zz = load ptr, ptr %1, align 8, !tbaa !65
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %indvars.iv484
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !52
  br label %.preheader434

.preheader434:                                    ; preds = %bb.x, %bb.y
  %.in367 = phi i32 [ %i.aab, %bb.y ], [ %i.zy, %bb.x ]
  %i.aac = shl nsw i32 %.in367, 2
  %i.aad = sext i32 %i.aac to i64
  %i.aae = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.aad ; 3 uses
  %24 = getelementptr i8, ptr %i.aae, i64 8
  %i.aaf = getelementptr i8, ptr %i.aae, i64 12
  %i.aag = load <2 x float>, ptr %i.aae, align 4, !tbaa !67 ; 3 uses
  %i.aah = fneg <2 x float> %i.aag
  %i.aai = fpext <2 x float> %i.aah to <2 x double> ; 13 uses
  %i.aaj = shufflevector <2 x double> %i.aai, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.aak = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaj, <2 x double> %i.aai, <2 x double> zeroinitializer)
  %i.aal = fadd <2 x double> %i.ze, %i.aak        ; 2 uses
  %i.aam = extractelement <2 x double> %i.aai, i64 0
  %i.aan = extractelement <2 x double> %i.aai, i64 1 ; 4 uses
  %25 = load float, ptr %i.aaf, align 4, !tbaa !67 ; 2 uses
  %26 = load float, ptr %24, align 4, !tbaa !67   ; 2 uses
  %i.aao = fpext float %26 to double              ; 6 uses
  %27 = fpext float %25 to double                 ; 5 uses
  %28 = insertelement <2 x float> poison, float %26, i64 0
  %i.aap = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaq = fmul <2 x float> %i.aag, %i.aap
  %i.aar = fpext <2 x float> %i.aaq to <2 x double> ; 8 uses
  %29 = insertelement <2 x float> poison, float %25, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aas = fmul <2 x float> %i.aag, %30
  %i.aat = fpext <2 x float> %i.aas to <2 x double> ; 8 uses
  %i.aau = fmul <2 x double> %i.aat, zeroinitializer ; 4 uses
  %i.aav = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaj, <2 x double> %i.aar, <2 x double> %i.aau)
  %i.aaw = fadd <2 x double> %i.zh, %i.aav        ; 2 uses
  %i.aax = fmul double %27, 0.000000e+00          ; 3 uses
  %i.aay = insertelement <2 x double> %i.aai, double %i.aao, i64 0
  %i.aaz = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.aax, i64 0
  %i.aba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aai, <2 x double> %i.aay, <2 x double> %i.aaz) ; 2 uses
  %i.abb = fsub <2 x double> zeroinitializer, %i.aai ; 2 uses
  %i.abc = shufflevector <2 x double> %i.aba, <2 x double> %i.abb, <2 x i32> <i32 1, i32 3>
  %i.abd = fadd <2 x double> %i.zi, %i.abc        ; 2 uses
  %i.abe = fmul <2 x double> %i.aai, zeroinitializer ; 4 uses
  %i.abf = extractelement <2 x double> %i.abe, i64 1
  %i.abg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaj, <2 x double> zeroinitializer, <2 x double> %i.abe) ; 2 uses
  %i.abh = shufflevector <2 x double> %i.abb, <2 x double> %i.abg, <2 x i32> <i32 0, i32 2>
  %i.abi = fadd <2 x double> %i.zf, %i.abh        ; 2 uses
  %i.abj = shufflevector <2 x double> %i.aai, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.abk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abj, <2 x double> zeroinitializer, <2 x double> %i.abe)
  %i.abl = fadd <2 x double> %i.zj, %i.abk        ; 2 uses
  %i.abm = fmul <2 x double> %i.aai, zeroinitializer ; 2 uses
  %i.abn = shufflevector <2 x double> %i.abg, <2 x double> %i.abm, <2 x i32> <i32 1, i32 2>
  %i.abo = fadd <2 x double> %i.zg, %i.abn        ; 2 uses
  %i.abp = extractelement <2 x double> %i.aar, i64 0 ; 3 uses
  %i.abq = extractelement <2 x double> %i.aau, i64 0
  %i.abr = call double @llvm.fmuladd.f64(double %i.aan, double %i.abp, double %i.abq)
  %i.abs = shufflevector <2 x double> %i.abm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.abt = insertelement <2 x double> %i.abs, double %i.abr, i64 1
  %i.abu = fadd <2 x double> %i.zk, %i.abt        ; 2 uses
  %i.abv = shufflevector <2 x double> %i.aar, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.abw = insertelement <2 x double> %i.abv, double %i.aao, i64 1 ; 4 uses
  %i.abx = shufflevector <2 x double> %i.aau, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aby = insertelement <2 x double> %i.abx, double %i.aax, i64 1
  %i.abz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abj, <2 x double> %i.abw, <2 x double> %i.aby)
  %i.aca = fadd <2 x double> %i.zl, %i.abz        ; 2 uses
  %i.acb = shufflevector <2 x double> %i.abe, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.acc = fadd <2 x double> %i.zm, %i.acb        ; 2 uses
  %i.acd = fadd double %.sroa.101.0, %i.abf       ; 2 uses
  %i.ace = fsub <2 x double> %i.aau, %i.aar
  %i.acf = fadd <2 x double> %i.zn, %i.ace        ; 2 uses
  %i.acg = fsub double %i.aax, %i.aao
  %i.ach = fmul <2 x double> %i.aaj, %i.aai
  %i.aci = fadd <2 x double> %i.ach, <double -0.000000e+00, double 0.000000e+00>
  %i.acj = fadd <2 x double> %i.zo, %i.aci        ; 2 uses
  %i.ack = fsub double 0.000000e+00, %i.aam
  %i.acl = extractelement <2 x double> %i.aat, i64 0
  %foldExtExtBinop1275 = fmul <2 x double> %i.aai, %i.aat
  %i.acm = extractelement <2 x double> %foldExtExtBinop1275, i64 0
  %i.acn = call double @llvm.fmuladd.f64(double %i.abp, double 0.000000e+00, double %i.acm)
  %i.aco = insertelement <2 x double> poison, double %i.ack, i64 0
  %i.acp = insertelement <2 x double> %i.aco, double %i.acn, i64 1
  %i.acq = fadd <2 x double> %i.zp, %i.acp        ; 2 uses
  %i.acr = shufflevector <2 x double> %i.aat, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.acs = insertelement <2 x double> %i.acr, double %27, i64 1 ; 3 uses
  %i.act = fmul <2 x double> %i.aaj, %i.acs
  %i.acu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abw, <2 x double> zeroinitializer, <2 x double> %i.act)
  %i.acv = fadd <2 x double> %i.zq, %i.acu        ; 2 uses
  %i.acw = fsub double 0.000000e+00, %i.aan
  %i.acx = fmul double %i.aan, %i.aan
  %i.acy = insertelement <2 x double> poison, double %i.acx, i64 0
  %i.acz = insertelement <2 x double> %i.acy, double %i.acw, i64 1
  %i.ada = fadd <2 x double> %i.zr, %i.acz        ; 2 uses
  %i.adb = fmul <2 x double> %i.abj, %i.aat
  %i.adc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aar, <2 x double> zeroinitializer, <2 x double> %i.adb)
  %i.add = fadd <2 x double> %i.zs, %i.adc        ; 2 uses
  %i.ade = fneg double %i.acl
  %i.adf = call double @llvm.fmuladd.f64(double %i.abp, double 0.000000e+00, double %i.ade)
  %i.adg = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.adf, i64 1
  %i.adh = fadd <2 x double> %i.zt, %i.adg        ; 2 uses
  %i.adi = fneg <2 x double> %i.acs
  %i.adj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abw, <2 x double> zeroinitializer, <2 x double> %i.adi)
  %i.adk = fadd <2 x double> %i.zu, %i.adj        ; 2 uses
  %i.adl = shufflevector <2 x double> %i.aat, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adm = fmul <2 x double> %i.adl, %i.aat
  %i.adn = shufflevector <2 x double> %i.aar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ado = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adn, <2 x double> %i.aar, <2 x double> %i.adm)
  %i.adp = fadd <2 x double> %i.zv, %i.ado        ; 2 uses
  %i.adq = shufflevector <2 x double> %i.aai, <2 x double> %i.aat, <2 x i32> <i32 1, i32 2>
  %i.adr = insertelement <2 x double> poison, double %27, i64 0
  %i.ads = shufflevector <2 x double> %i.adr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adt = fmul <2 x double> %i.adq, %i.ads
  %i.adu = shufflevector <2 x double> %i.aar, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.adv = insertelement <2 x double> poison, double %i.aao, i64 0
  %i.adw = shufflevector <2 x double> %i.adv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adu, <2 x double> %i.adw, <2 x double> %i.adt)
  %i.ady = shufflevector <2 x double> %i.aba, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.adz = insertelement <4 x double> %i.ady, double %i.acg, i64 1
  %i.aea = shufflevector <2 x double> %i.adx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aeb = shufflevector <4 x double> %i.adz, <4 x double> %i.aea, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aec = fadd <4 x double> %i.zx, %i.aeb        ; 2 uses
  %i.aed = fmul <2 x double> %i.acr, %i.acs
  %i.aee = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abv, <2 x double> %i.abw, <2 x double> %i.aed)
  %i.aef = fadd <2 x double> %i.zw, %i.aee        ; 2 uses
  %i.aeg = fmul double %27, %27
  %i.aeh = call double @llvm.fmuladd.f64(double %i.aao, double %i.aao, double %i.aeg)
  %i.aei = fadd double %.sroa.254.0, %i.aeh       ; 2 uses
  %indvars.iv.next485 = add nuw nsw i64 %indvars.iv484, 1 ; 2 uses
  %exitcond488.not = icmp eq i64 %indvars.iv.next485, %wide.trip.count487
  br i1 %exitcond488.not, label %.loopexit436.loopexit, label %bb.x, !llvm.loop !204

bb.z:                                             ; preds = %.lr.ph, %.loopexit438
  %.sroa.254.1 = phi double [ 0.000000e+00, %.lr.ph ], [ %.sroa.254.2, %.loopexit438 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit438 ] ; 4 uses
  %i.aej = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajx, %.loopexit438 ] ; 2 uses
  %i.aek = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajy, %.loopexit438 ] ; 2 uses
  %i.ael = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajz, %.loopexit438 ] ; 2 uses
  %i.aem = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.aka, %.loopexit438 ] ; 2 uses
  %i.aen = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akb, %.loopexit438 ] ; 2 uses
  %i.aeo = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akc, %.loopexit438 ] ; 2 uses
  %i.aep = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akd, %.loopexit438 ] ; 2 uses
  %i.aeq = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ake, %.loopexit438 ] ; 2 uses
  %i.aer = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akf, %.loopexit438 ] ; 2 uses
  %i.aes = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akg, %.loopexit438 ] ; 2 uses
  %i.aet = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akh, %.loopexit438 ] ; 2 uses
  %i.aeu = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.aki, %.loopexit438 ] ; 2 uses
  %i.aev = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akj, %.loopexit438 ] ; 2 uses
  %i.aew = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akk, %.loopexit438 ] ; 2 uses
  %i.aex = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akl, %.loopexit438 ] ; 2 uses
  %i.aey = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akm, %.loopexit438 ] ; 2 uses
  %i.aez = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akn, %.loopexit438 ] ; 2 uses
  %i.afa = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ako, %.loopexit438 ] ; 2 uses
  %i.afb = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akp, %.loopexit438 ] ; 2 uses
  %i.afc = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akq, %.loopexit438 ] ; 2 uses
  %i.afd = phi <4 x double> [ zeroinitializer, %.lr.ph ], [ %i.akr, %.loopexit438 ] ; 2 uses
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %indvars.iv
  %i.aff = load double, ptr %i.afe, align 8, !tbaa !61 ; 8 uses
  %i.afg = fcmp olt double %i.aff, f0x3E80000000000000
  br i1 %i.afg, label %.loopexit438, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.afh = load i8, ptr %i.f, align 8, !tbaa !42, !range !68, !noundef !69
  %i.afi = trunc nuw i8 %i.afh to i1
  %i.afj = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.afi, label %.preheader437, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.afk = load ptr, ptr %1, align 8, !tbaa !65
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %indvars.iv
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !52
  br label %.preheader437

.preheader437:                                    ; preds = %bb.aa, %bb.ab
  %.in = phi i32 [ %i.afm, %bb.ab ], [ %i.afj, %bb.aa ]
  %i.afn = shl nsw i32 %.in, 2
  %i.afo = sext i32 %i.afn to i64
  %i.afp = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.afo ; 2 uses
  %i.afq = getelementptr i8, ptr %i.afp, i64 8
  %i.afr = fneg double %i.aff                     ; 6 uses
  %i.afs = load <2 x float>, ptr %i.afp, align 4, !tbaa !67
  %i.aft = fpext <2 x float> %i.afs to <2 x double> ; 3 uses
  %i.afu = insertelement <2 x double> poison, double %i.afr, i64 0
  %i.afv = shufflevector <2 x double> %i.afu, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.afw = fmul <2 x double> %i.afv, %i.aft       ; 10 uses
  %i.afx = shufflevector <2 x double> %i.afw, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.afy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afx, <2 x double> %i.afw, <2 x double> zeroinitializer)
  %i.afz = fadd <2 x double> %i.aej, %i.afy
  %i.aga = extractelement <2 x double> %i.afw, i64 0
  %i.agb = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.afr, i64 0
  %i.agc = extractelement <2 x double> %i.afw, i64 1 ; 3 uses
  %i.agd = shufflevector <2 x double> %i.afw, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 7 uses
  %i.age = insertelement <2 x double> %i.agd, double %i.aff, i64 1
  %i.agf = fmul <2 x double> %i.age, <double 0.000000e+00, double -0.000000e+00> ; 4 uses
  %i.agg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afx, <2 x double> zeroinitializer, <2 x double> %i.agf)
  %i.agh = fadd <2 x double> %i.ael, %i.agg
  %i.agi = load <2 x float>, ptr %i.afq, align 4, !tbaa !67
  %i.agj = fpext <2 x float> %i.agi to <2 x double>
  %i.agk = insertelement <2 x double> poison, double %i.aff, i64 0 ; 2 uses
  %i.agl = shufflevector <2 x double> %i.agk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agm = fmul <2 x double> %i.agl, %i.agj       ; 9 uses
  %i.agn = shufflevector <2 x double> %i.agm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ago = fmul <2 x double> %i.agn, %i.aft       ; 9 uses
  %i.agp = shufflevector <2 x double> %i.agm, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.agq = fmul <2 x double> %i.agp, %i.aft       ; 7 uses
  %i.agr = fmul <2 x double> %i.agq, zeroinitializer ; 4 uses
  %i.ags = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afx, <2 x double> %i.ago, <2 x double> %i.agr)
  %i.agt = fadd <2 x double> %i.aem, %i.ags
  %i.agu = extractelement <2 x double> %i.agm, i64 0 ; 2 uses
  %i.agv = insertelement <2 x double> %i.agd, double %i.afr, i64 1
  %i.agw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agd, <2 x double> %i.agv, <2 x double> zeroinitializer)
  %i.agx = fadd <2 x double> %i.aen, %i.agw
  %i.agy = shufflevector <2 x double> %i.afw, <2 x double> %i.agf, <2 x i32> <i32 0, i32 2>
  %i.agz = fmul <2 x double> %i.agy, <double 0.000000e+00, double 1.000000e+00> ; 3 uses
  %i.aha = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.agz, <2 x i32> <i32 0, i32 2>
  %i.ahb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afx, <2 x double> %i.agb, <2 x double> %i.aha)
  %i.ahc = fadd <2 x double> %i.aek, %i.ahb
  %i.ahd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agd, <2 x double> zeroinitializer, <2 x double> %i.agz)
  %i.ahe = fadd <2 x double> %i.aeo, %i.ahd
  %i.ahf = shufflevector <2 x double> %i.ago, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ahg = shufflevector <2 x double> %i.agf, <2 x double> %i.agr, <2 x i32> <i32 1, i32 2>
  %i.ahh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agd, <2 x double> %i.ahf, <2 x double> %i.ahg)
  %i.ahi = fadd <2 x double> %i.aep, %i.ahh
  %i.ahj = shufflevector <2 x double> %i.agr, <2 x double> %i.agm, <2 x i32> <i32 1, i32 3>
  %i.ahk = fmul <2 x double> %i.ahj, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %i.ahl = shufflevector <2 x double> %i.ago, <2 x double> %i.agm, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.ahm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agd, <2 x double> %i.ahl, <2 x double> %i.ahk)
  %i.ahn = fadd <2 x double> %i.aeq, %i.ahm
  %i.aho = insertelement <2 x double> %i.agk, double %i.afr, i64 1 ; 2 uses
  %i.ahp = insertelement <2 x double> %i.aho, double 0.000000e+00, i64 1
  %i.ahq = shufflevector <2 x double> %i.agz, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ahr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aho, <2 x double> %i.ahp, <2 x double> %i.ahq)
  %i.ahs = fadd <2 x double> %i.aer, %i.ahr
end_hunk_0
