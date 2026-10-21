Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pull?download=true
inline.NumInlined: 1836
inline.NumDeleted: 944
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_Z15pull_constraintP6pull_tN3gmx8ArrayRefIKfEERK5t_pbcRKNS1_7MpiCommEddNS2_INS1_11BasicVectorIfEEEESD_SD_PA3_f:bb.a
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !67
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds [24 x i8], ptr %i.bj, i64 %i.vl
  %i.vn = load i32, ptr %i.vi, align 4, !tbaa !67
  %i.vo = sext i32 %i.vn to i64                   ; 2 uses
  %.val.i = load ptr, ptr %i.bb, align 8, !tbaa !111
  %i.vp = getelementptr inbounds nuw [272 x i8], ptr %.val.i, i64 %i.vo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !65
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !65
  %i.vt = icmp eq ptr %i.vq, %i.vs
  br i1 %i.vt, label %.preheader1.i380.i, label %bb.bi

.preheader1.i380.i:                               ; preds = %bb.bh
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0393.0494.i, i64 128
  %i.vv = load <2 x float>, ptr %i.vu, align 8, !tbaa !72
  %i.vw = fpext <2 x float> %i.vv to <2 x double> ; 2 uses
  store <2 x double> %i.vw, ptr %i.a, align 16, !tbaa !85
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.0393.0494.i, i64 136
  %i.vy = load float, ptr %i.vx, align 8, !tbaa !72
  %i.vz = fpext float %i.vy to double
  br label %.loopexit.i352.i

bb.bi:                                            ; preds = %bb.bh
  %i.wa = getelementptr inbounds [24 x i8], ptr %i.bj, i64 %i.vo ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.wc = load double, ptr %i.wa, align 8, !tbaa !85 ; 2 uses
  store double %i.wc, ptr %i.a, align 16, !tbaa !85
  %i.wd = load double, ptr %i.wb, align 8, !tbaa !85 ; 2 uses
  store double %i.wd, ptr %i.ej, align 8, !tbaa !85
  %i.we = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %i.wf = load double, ptr %i.we, align 8, !tbaa !85
  %i.wg = insertelement <2 x double> poison, double %i.wc, i64 0
  %i.wh = insertelement <2 x double> %i.wg, double %i.wd, i64 1
  br label %.loopexit.i352.i

.loopexit.i352.i:                                 ; preds = %bb.bi, %.preheader1.i380.i
  %.sink.i353.i = phi double [ %i.vz, %.preheader1.i380.i ], [ %i.wf, %bb.bi ] ; 2 uses
  %i.wi = phi <2 x double> [ %i.vw, %.preheader1.i380.i ], [ %i.wh, %bb.bi ]
  store double %.sink.i353.i, ptr %i.ek, align 16, !tbaa !85
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.0393.0494.i, i64 40 ; 2 uses
  %i.wk = load i32, ptr %i.wj, align 8, !tbaa !107
  %i.wl = icmp eq i32 %i.wk, 3
  br i1 %i.wl, label %.preheader.i379.i, label %bb.bj

.preheader.i379.i:                                ; preds = %.loopexit.i352.i
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.0393.0494.i, i64 184
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !120 ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.0393.0494.i, i64 264
  %i.wp = load <2 x double>, ptr %i.wo, align 8, !tbaa !85 ; 2 uses
  %i.wq = insertelement <2 x double> %i.wp, double %i.wn, i64 1
  %i.wr = insertelement <2 x double> %i.wp, double %i.wn, i64 0
  %i.ws = fmul <2 x double> %i.wq, %i.wr          ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.0393.0494.i, i64 280
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !85
  %i.wv = fmul double %i.wn, %i.wu                ; 2 uses
  %i.ww = fadd double %.sink.i353.i, %i.wv
  %i.wx = fadd <2 x double> %i.wi, %i.ws
  store <2 x double> %i.wx, ptr %i.a, align 16, !tbaa !85
  store double %i.ww, ptr %i.ek, align 16, !tbaa !85
  br label %bb.bj

bb.bj:                                            ; preds = %.preheader.i379.i, %.loopexit.i352.i
  %.sroa.10.0.i356.i = phi double [ %i.wv, %.preheader.i379.i ], [ 0.000000e+00, %.loopexit.i352.i ]
  %i.wy = phi <2 x double> [ %i.ws, %.preheader.i379.i ], [ zeroinitializer, %.loopexit.i352.i ]
  call void @_Z8pbc_dx_dPK5t_pbcPKdS3_Pd(ptr noundef nonnull align 4 dereferenceable(384) %3, ptr noundef %i.vm, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e)
  %.val.i357.i = load i32, ptr %i.wj, align 8, !tbaa !80
  %.val.fr.i358.i = freeze i32 %.val.i357.i       ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.0393.0494.i, i64 116
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.0393.0494.i, i64 264
  %i.xb = load <2 x i32>, ptr %i.wz, align 4, !tbaa !67
  %i.xc = sitofp <2 x i32> %i.xb to <2 x double>
  %i.xd = load <2 x double>, ptr %i.e, align 16, !tbaa !85
  %i.xe = fmul <2 x double> %i.xd, %i.xc          ; 9 uses
  store <2 x double> %i.xe, ptr %i.e, align 16, !tbaa !85
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.0393.0494.i, i64 124
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !67
  %i.xh = sitofp i32 %i.xg to double
  %i.xi = load double, ptr %i.dz, align 16, !tbaa !85
  %i.xj = fmul double %i.xi, %i.xh                ; 8 uses
  store double %i.xj, ptr %i.dz, align 16, !tbaa !85
  %i.xk = icmp eq i32 %.val.fr.i358.i, 3
  br i1 %i.xk, label %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.thread.i, label %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.i

_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.thread.i: ; preds = %bb.bj
  %i.xl = fadd <2 x double> %i.wy, %i.xe
  %i.xm = fadd double %.sroa.10.0.i356.i, %i.xj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.split640.i

_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.i: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  switch i32 %.val.fr.i358.i, label %bb.bk [
    i32 0, label %.split.i
    i32 1, label %.split640.i
    i32 2, label %.split640.i
  ]

.split.i:                                         ; preds = %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.i
  %foldExtExtBinop194 = fmul <2 x double> %i.xe, %i.xe
  %i.xn = extractelement <2 x double> %foldExtExtBinop194, i64 1
  %i.xo = extractelement <2 x double> %i.xe, i64 0 ; 2 uses
  %i.xp = call double @llvm.fmuladd.f64(double %i.xo, double %i.xo, double %i.xn)
  %i.xq = call noundef double @llvm.fmuladd.f64(double %i.xj, double %i.xj, double %i.xp)
  %i.xr = call noundef double @sqrt(double noundef %i.xq) #20
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.0393.0494.i, i64 184
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !120
  %i.xu = fsub double %i.xr, %i.xt
  %i.xv = call double @llvm.fabs.f64(double %i.xu)
  %i.xw = load float, ptr %i.el, align 4, !tbaa !337
  %i.xx = fpext float %i.xw to double
  %i.xy = fcmp olt double %i.xv, %i.xx
  br i1 %i.xy, label %bb.bn, label %bb.bl

.split640.i:                                      ; preds = %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.i, %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.i, %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.thread.i
  %i.xz = phi double [ %i.xm, %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.thread.i ], [ %i.xj, %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.i ], [ %i.xj, %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.i ]
  %i.ya = phi <2 x double> [ %i.xl, %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.thread.i ], [ %i.xe, %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.i ], [ %i.xe, %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.i ] ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.0393.0494.i, i64 280
  %i.yc = load double, ptr %i.yb, align 8, !tbaa !85 ; 3 uses
  %i.yd = load <2 x double>, ptr %i.xa, align 8, !tbaa !85 ; 4 uses
  %foldExtExtBinop196 = fmul <2 x double> %i.ya, %i.yd
  %i.ye = extractelement <2 x double> %foldExtExtBinop196, i64 1
  %i.yf = extractelement <2 x double> %i.yd, i64 0 ; 2 uses
  %i.yg = extractelement <2 x double> %i.ya, i64 0
  %i.yh = call double @llvm.fmuladd.f64(double %i.yg, double %i.yf, double %i.ye)
  %i.yi = call noundef double @llvm.fmuladd.f64(double %i.xz, double %i.yc, double %i.yh) ; 2 uses
  %i.yj = insertelement <2 x double> poison, double %i.yi, i64 0
  %i.yk = shufflevector <2 x double> %i.yj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yl = fmul <2 x double> %i.yd, %i.yk          ; 4 uses
  %i.ym = extractelement <2 x double> %i.yl, i64 0
  store <2 x double> %i.yl, ptr %i.e, align 16, !tbaa !85
  %i.yn = fmul double %i.yc, %i.yi                ; 3 uses
  store double %i.yn, ptr %i.dz, align 16, !tbaa !85
  %foldExtExtBinop198 = fmul <2 x double> %i.yd, %i.yl
  %i.yo = extractelement <2 x double> %foldExtExtBinop198, i64 1
  %i.yp = call double @llvm.fmuladd.f64(double %i.ym, double %i.yf, double %i.yo)
  %i.yq = call noundef double @llvm.fmuladd.f64(double %i.yn, double %i.yc, double %i.yp)
  %i.yr = getelementptr inbounds nuw i8, ptr %.sroa.0393.0494.i, i64 184
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !120
  %i.yt = fsub double %i.yq, %i.ys
  %i.yu = call double @llvm.fabs.f64(double %i.yt)
  %i.yv = load float, ptr %i.el, align 4, !tbaa !337
  %i.yw = fpext float %i.yv to double
  %i.yx = fcmp olt double %i.yu, %i.yw
  br i1 %i.yx, label %bb.bn, label %bb.bl

bb.bk:                                            ; preds = %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit381.i
  br i1 %.1256496.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.split640.i, %.split.i
  %i.yy = phi double [ %i.xj, %.split.i ], [ %i.xj, %bb.bk ], [ %i.yn, %.split640.i ] ; 2 uses
  %i.yz = phi <2 x double> [ %i.xe, %.split.i ], [ %i.xe, %bb.bk ], [ %i.yl, %.split640.i ] ; 3 uses
  %i.za = load ptr, ptr @debug, align 8, !tbaa !114 ; 2 uses
  %.not276.i = icmp eq ptr %i.za, null
  br i1 %.not276.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.zb = load i32, ptr %i.vi, align 4, !tbaa !67
  %i.zc = load i32, ptr %i.vj, align 8, !tbaa !67
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.0393.0494.i, i64 184
  %i.ze = load double, ptr %i.zd, align 8, !tbaa !120
  %foldExtExtBinop200 = fmul <2 x double> %i.yz, %i.yz
  %i.zf = extractelement <2 x double> %foldExtExtBinop200, i64 1
  %i.zg = extractelement <2 x double> %i.yz, i64 0 ; 2 uses
  %i.zh = call double @llvm.fmuladd.f64(double %i.zg, double %i.zg, double %i.zf)
  %i.zi = call noundef double @llvm.fmuladd.f64(double %i.yy, double %i.yy, double %i.zh)
  %i.zj = call noundef double @sqrt(double noundef %i.zi) #20
  %i.zk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.za, ptr noundef nonnull @.str.48, i32 noundef %i.zb, i32 noundef %i.zc, double noundef %i.ze, double noundef %i.zj) #20 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %.split640.i, %.split.i, %.lr.ph497.i
  %.3262.i = phi i1 [ %.1260495.i, %.lr.ph497.i ], [ %.1260495.i, %bb.bk ], [ false, %bb.bm ], [ false, %bb.bl ], [ %.1260495.i, %.split.i ], [ %.1260495.i, %.split640.i ] ; 2 uses
  %.3258.i = phi i1 [ %.1256496.i, %.lr.ph497.i ], [ true, %bb.bk ], [ false, %bb.bm ], [ false, %bb.bl ], [ true, %.split.i ], [ true, %.split640.i ] ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.sroa.0393.0494.i, i64 488 ; 2 uses
  %.not431.i = icmp eq ptr %i.zl, %.lcssa452.i
  br i1 %.not431.i, label %._crit_edge.i, label %.lr.ph497.i

.loopexit646.i:                                   ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.zm = phi i32 [ %i.gw, %._crit_edge.thread.i ], [ %i.vf, %._crit_edge.i ]
  %i.zn = icmp samesign ugt i32 %.0254501.i, 99
  br i1 %i.zn, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %.loopexit646.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 1135, ptr noundef nonnull @.str.49, i32 noundef %i.zm) #28
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.zo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.by

bb.br:                                            ; preds = %.loopexit646.i
  %i.zp = icmp eq ptr %i.af, %i.ah                ; 2 uses
  %i.zq = fdiv double 1.000000e+00, %5
  %spec.select.i = select i1 %i.zp, double 0.000000e+00, double %i.zq ; 2 uses
  %i.zr = load ptr, ptr %i.bc, align 8, !tbaa !186
  %i.zs = load ptr, ptr %i.bb, align 8, !tbaa !111 ; 3 uses
  %.not519.i = icmp eq ptr %i.zr, %i.zs
  br i1 %.not519.i, label %.preheader432.i, label %.lr.ph509.i.preheader

.lr.ph509.i.preheader:                            ; preds = %bb.br
  %i.zt = insertelement <2 x double> poison, double %spec.select.i, i64 0
  %i.zu = shufflevector <2 x double> %i.zt, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph509.i

.preheader432.i:                                  ; preds = %.loopexit435.i, %bb.br
  %.lcssa.i = phi ptr [ %i.zs, %bb.br ], [ %i.ajd, %.loopexit435.i ] ; 8 uses
  %i.zv = load ptr, ptr %i.am, align 8, !tbaa !157 ; 2 uses
  %i.zw = load ptr, ptr %i.al, align 8, !tbaa !88 ; 6 uses
  %i.zx = ptrtoint ptr %i.zv to i64
  %i.zy = ptrtoint ptr %i.zw to i64
  %i.zz = sub i64 %i.zx, %i.zy                    ; 2 uses
  %i.aaa = sdiv exact i64 %i.zz, 488              ; 4 uses
  %.not520.i = icmp eq ptr %i.zv, %i.zw
  br i1 %.not520.i, label %_ZL13do_constraintP6pull_tRK5t_pbcN3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_bPA3_fdd.exit, label %.lr.ph514.i

.lr.ph514.i:                                      ; preds = %.preheader432.i
  %.not274.i = icmp eq ptr %10, null
  br i1 %.not274.i, label %.lr.ph514.split.us.i.preheader, label %.lr.ph514.split.preheader.i

.lr.ph514.split.us.i.preheader:                   ; preds = %.lr.ph514.i
  %xtraiter252 = and i64 %i.aaa, 1
  %i.aab = icmp eq i64 %i.zz, 488
  br i1 %i.aab, label %.lr.ph514.split.us.i.epil.preheader, label %.lr.ph514.split.us.i.preheader.new

.lr.ph514.split.us.i.preheader.new:               ; preds = %.lr.ph514.split.us.i.preheader
  %unroll_iter256 = and i64 %i.aaa, -2
  br label %.lr.ph514.split.us.i

.lr.ph514.split.preheader.i:                      ; preds = %.lr.ph514.i
  %i.aac = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  br label %.lr.ph514.split.i

.lr.ph514.split.us.i:                             ; preds = %bb.bu, %.lr.ph514.split.us.i.preheader.new
  %.0236513.us.i = phi i64 [ 0, %.lr.ph514.split.us.i.preheader.new ], [ %i.aca, %bb.bu ] ; 4 uses
  %niter257 = phi i64 [ 0, %.lr.ph514.split.us.i.preheader.new ], [ %niter257.next.1, %bb.bu ]
  %i.aad = getelementptr inbounds nuw [488 x i8], ptr %i.zw, i64 %.0236513.us.i ; 4 uses
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !109
  %.not.us.i = icmp eq i32 %i.aae, 1
  br i1 %.not.us.i, label %bb.bs, label %.lr.ph514.split.us.i.1

bb.bs:                                            ; preds = %.lr.ph514.split.us.i
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0236513.us.i
  %i.aag = load double, ptr %i.aaf, align 8, !tbaa !85
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aad, i64 92
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !67
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = getelementptr inbounds nuw [272 x i8], ptr %.lcssa.i, i64 %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 144
  %i.aam = load float, ptr %i.aal, align 8, !tbaa !188
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aad, i64 96
  %i.aao = load i32, ptr %i.aan, align 8, !tbaa !67
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw [272 x i8], ptr %.lcssa.i, i64 %i.aap
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 144
  %i.aas = load float, ptr %i.aar, align 8, !tbaa !188
  %i.aat = fadd float %i.aam, %i.aas
  %i.aau = fpext float %i.aat to double
  %i.aav = fmul double %5, %i.aau
  %i.aaw = fmul double %5, %i.aav
  %i.aax = fdiv double %i.aag, %i.aaw
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aad, i64 384 ; 2 uses
  %i.aaz = load double, ptr %i.aay, align 8, !tbaa !154
  %i.aba = fadd double %i.aaz, %i.aax
  store double %i.aba, ptr %i.aay, align 8, !tbaa !154
  br label %.lr.ph514.split.us.i.1

.lr.ph514.split.us.i.1:                           ; preds = %bb.bs, %.lr.ph514.split.us.i
  %i.abb = or disjoint i64 %.0236513.us.i, 1      ; 2 uses
  %i.abc = getelementptr inbounds nuw [488 x i8], ptr %i.zw, i64 %i.abb ; 4 uses
  %i.abd = load i32, ptr %i.abc, align 8, !tbaa !109
  %.not.us.i.1 = icmp eq i32 %i.abd, 1
  br i1 %.not.us.i.1, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.lr.ph514.split.us.i.1
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.abb
  %i.abf = load double, ptr %i.abe, align 8, !tbaa !85
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abc, i64 92
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !67
  %i.abi = sext i32 %i.abh to i64
  %i.abj = getelementptr inbounds nuw [272 x i8], ptr %.lcssa.i, i64 %i.abi
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 144
  %i.abl = load float, ptr %i.abk, align 8, !tbaa !188
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abc, i64 96
  %i.abn = load i32, ptr %i.abm, align 8, !tbaa !67
  %i.abo = sext i32 %i.abn to i64
  %i.abp = getelementptr inbounds nuw [272 x i8], ptr %.lcssa.i, i64 %i.abo
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 144
  %i.abr = load float, ptr %i.abq, align 8, !tbaa !188
  %i.abs = fadd float %i.abl, %i.abr
  %i.abt = fpext float %i.abs to double
  %i.abu = fmul double %5, %i.abt
  %i.abv = fmul double %5, %i.abu
  %i.abw = fdiv double %i.abf, %i.abv
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abc, i64 384 ; 2 uses
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !154
  %i.abz = fadd double %i.aby, %i.abw
  store double %i.abz, ptr %i.abx, align 8, !tbaa !154
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph514.split.us.i.1
  %i.aca = add nuw i64 %.0236513.us.i, 2          ; 2 uses
  %niter257.next.1 = add i64 %niter257, 2         ; 2 uses
  %niter257.ncmp.1 = icmp eq i64 %niter257.next.1, %unroll_iter256
  br i1 %niter257.ncmp.1, label %_ZL13do_constraintP6pull_tRK5t_pbcN3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_bPA3_fdd.exit.loopexit.unr-lcssa, label %.lr.ph514.split.us.i, !llvm.loop !334

.lr.ph509.i:                                      ; preds = %.lr.ph509.i.preheader, %.loopexit435.i
  %i.acb = phi ptr [ %i.ajd, %.loopexit435.i ], [ %i.zs, %.lr.ph509.i.preheader ]
  %.0238507.i = phi i64 [ %i.ajb, %.loopexit435.i ], [ 0, %.lr.ph509.i.preheader ] ; 3 uses
  %i.acc = getelementptr inbounds nuw [272 x i8], ptr %i.acb, i64 %.0238507.i ; 6 uses
  %i.acd = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.0238507.i ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acc, i64 224
  %i.acf = load <2 x double>, ptr %i.acd, align 8, !tbaa !85
  %i.acg = load <2 x double>, ptr %i.ace, align 8, !tbaa !85
  %i.ach = fsub <2 x double> %i.acf, %i.acg       ; 12 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acd, i64 16
  %i.acj = load double, ptr %i.aci, align 8, !tbaa !85
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acc, i64 240
  %i.acl = load double, ptr %i.ack, align 8, !tbaa !85
  %i.acm = fsub double %i.acj, %i.acl             ; 11 uses
  %foldExtExtBinop202 = fmul <2 x double> %i.ach, %i.ach
  %i.acn = extractelement <2 x double> %foldExtExtBinop202, i64 1
  %i.aco = extractelement <2 x double> %i.ach, i64 0 ; 2 uses
  %i.acp = call double @llvm.fmuladd.f64(double %i.aco, double %i.aco, double %i.acn)
  %i.acq = call noundef double @llvm.fmuladd.f64(double %i.acm, double %i.acm, double %i.acp)
  %i.acr = fcmp oeq double %i.acq, 0.000000e+00
  br i1 %i.acr, label %.loopexit435.i, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph509.i
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acc, i64 96
  %i.act = call { ptr, ptr } @_ZNK3gmx12LocalAtomSet10localIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.acs) ; 2 uses
  %i.acu = extractvalue { ptr, ptr } %i.act, 0    ; 8 uses
  %i.acv = extractvalue { ptr, ptr } %i.act, 1
  store <2 x double> %i.ach, ptr %i.f, align 16, !tbaa !85
  store double %i.acm, ptr %i.ef, align 16, !tbaa !85
  %i.acw = ptrtoint ptr %i.acv to i64
  %i.acx = ptrtoint ptr %i.acu to i64
  %i.acy = sub i64 %i.acw, %i.acx                 ; 5 uses
  %i.acz = ashr exact i64 %i.acy, 2               ; 6 uses
  %i.ada = icmp sgt i64 %i.acz, 0
  br i1 %i.ada, label %.lr.ph506.i, label %.loopexit435.i

.lr.ph506.i:                                      ; preds = %bb.bv
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acc, i64 104
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !71 ; 5 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.acc, i64 112
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !71
  %i.adf = icmp eq ptr %i.adc, %i.ade             ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acc, i64 140 ; 4 uses
  br i1 %i.zp, label %.lr.ph506.split.us.i, label %.lr.ph506.split.i

.lr.ph506.split.us.i:                             ; preds = %.lr.ph506.i
  br i1 %i.adf, label %.lr.ph506.split.us.split.us.i.preheader, label %.lr.ph506.split.us.split.i.preheader

.lr.ph506.split.us.split.i.preheader:             ; preds = %.lr.ph506.split.us.i
  %i.adh = icmp eq i64 %i.acy, 4
  br i1 %i.adh, label %.lr.ph506.split.us.split.i.epil.preheader, label %.lr.ph506.split.us.split.i.preheader.new

.lr.ph506.split.us.split.i.preheader.new:         ; preds = %.lr.ph506.split.us.split.i.preheader
  %unroll_iter244 = and i64 %i.acz, 9223372036854775806
  br label %.lr.ph506.split.us.split.i

.lr.ph506.split.us.split.us.i.preheader:          ; preds = %.lr.ph506.split.us.i
  %i.adi = icmp eq i64 %i.acy, 4
  br i1 %i.adi, label %.lr.ph506.split.us.split.us.i.epil.preheader, label %.lr.ph506.split.us.split.us.i.preheader.new

.lr.ph506.split.us.split.us.i.preheader.new:      ; preds = %.lr.ph506.split.us.split.us.i.preheader
  %unroll_iter250 = and i64 %i.acz, 9223372036854775806
  br label %.lr.ph506.split.us.split.us.i

.lr.ph506.split.us.split.us.i:                    ; preds = %.lr.ph506.split.us.split.us.i, %.lr.ph506.split.us.split.us.i.preheader.new
  %.0237504.us.us.i = phi i64 [ 0, %.lr.ph506.split.us.split.us.i.preheader.new ], [ %i.aek, %.lr.ph506.split.us.split.us.i ] ; 3 uses
  %niter251 = phi i64 [ 0, %.lr.ph506.split.us.split.us.i.preheader.new ], [ %niter251.next.1, %.lr.ph506.split.us.split.us.i ]
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %.0237504.us.us.i
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !67
  %i.adl = sext i32 %i.adk to i64
  %i.adm = getelementptr inbounds [12 x i8], ptr %i.x, i64 %i.adl ; 3 uses
  %i.adn = load <2 x float>, ptr %i.adm, align 4, !tbaa !72
  %i.ado = fpext <2 x float> %i.adn to <2 x double>
  %i.adp = fadd <2 x double> %i.ach, %i.ado
  %i.adq = fptrunc <2 x double> %i.adp to <2 x float>
  store <2 x float> %i.adq, ptr %i.adm, align 4, !tbaa !72
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adm, i64 8 ; 2 uses
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !72
  %i.adt = fpext float %i.ads to double
  %i.adu = fadd double %i.acm, %i.adt
  %i.adv = fptrunc double %i.adu to float
  store float %i.adv, ptr %i.adr, align 4, !tbaa !72
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %.0237504.us.us.i
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 4
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !67
  %i.adz = sext i32 %i.ady to i64
  %i.aea = getelementptr inbounds [12 x i8], ptr %i.x, i64 %i.adz ; 3 uses
  %i.aeb = load <2 x float>, ptr %i.aea, align 4, !tbaa !72
  %i.aec = fpext <2 x float> %i.aeb to <2 x double>
  %i.aed = fadd <2 x double> %i.ach, %i.aec
  %i.aee = fptrunc <2 x double> %i.aed to <2 x float>
  store <2 x float> %i.aee, ptr %i.aea, align 4, !tbaa !72
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aea, i64 8 ; 2 uses
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !72
  %i.aeh = fpext float %i.aeg to double
  %i.aei = fadd double %i.acm, %i.aeh
  %i.aej = fptrunc double %i.aei to float
  store float %i.aej, ptr %i.aef, align 4, !tbaa !72
  %i.aek = add nuw nsw i64 %.0237504.us.us.i, 2   ; 2 uses
  %niter251.next.1 = add nuw nsw i64 %niter251, 2 ; 2 uses
  %niter251.ncmp.1 = icmp eq i64 %niter251.next.1, %unroll_iter250
  br i1 %niter251.ncmp.1, label %.loopexit435.i.loopexit.unr-lcssa, label %.lr.ph506.split.us.split.us.i, !llvm.loop !335

.lr.ph506.split.us.split.i:                       ; preds = %.lr.ph506.split.us.split.i, %.lr.ph506.split.us.split.i.preheader.new
  %.0237504.us.i = phi i64 [ 0, %.lr.ph506.split.us.split.i.preheader.new ], [ %i.age, %.lr.ph506.split.us.split.i ] ; 4 uses
  %niter245 = phi i64 [ 0, %.lr.ph506.split.us.split.i.preheader.new ], [ %niter245.next.1, %.lr.ph506.split.us.split.i ]
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %.0237504.us.i
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !67
  %i.aen = load float, ptr %i.adg, align 4, !tbaa !338
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.adc, i64 %.0237504.us.i
  %i.aep = load float, ptr %i.aeo, align 4, !tbaa !72
  %i.aeq = fmul float %i.aen, %i.aep
  %i.aer = fpext float %i.aeq to double           ; 2 uses
  %i.aes = insertelement <2 x double> poison, double %i.aer, i64 0
  %i.aet = shufflevector <2 x double> %i.aes, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aeu = fmul <2 x double> %i.ach, %i.aet
  %i.aev = fmul double %i.acm, %i.aer
  %i.aew = sext i32 %i.aem to i64
  %i.aex = getelementptr inbounds [12 x i8], ptr %i.x, i64 %i.aew ; 3 uses
  %i.aey = load <2 x float>, ptr %i.aex, align 4, !tbaa !72
  %i.aez = fpext <2 x float> %i.aey to <2 x double>
  %i.afa = fadd <2 x double> %i.aeu, %i.aez
  %i.afb = fptrunc <2 x double> %i.afa to <2 x float>
  store <2 x float> %i.afb, ptr %i.aex, align 4, !tbaa !72
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aex, i64 8 ; 2 uses
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !72
  %i.afe = fpext float %i.afd to double
  %i.aff = fadd double %i.aev, %i.afe
  %i.afg = fptrunc double %i.aff to float
  store float %i.afg, ptr %i.afc, align 4, !tbaa !72
  %i.afh = or disjoint i64 %.0237504.us.i, 1      ; 2 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.afh
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !67
  %i.afk = load float, ptr %i.adg, align 4, !tbaa !338
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.adc, i64 %i.afh
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !72
  %i.afn = fmul float %i.afk, %i.afm
  %i.afo = fpext float %i.afn to double           ; 2 uses
  %i.afp = insertelement <2 x double> poison, double %i.afo, i64 0
  %i.afq = shufflevector <2 x double> %i.afp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afr = fmul <2 x double> %i.ach, %i.afq       ; 2 uses
  %i.afs = fmul double %i.acm, %i.afo             ; 2 uses
  %i.aft = sext i32 %i.afj to i64
  %i.afu = getelementptr inbounds [12 x i8], ptr %i.x, i64 %i.aft ; 3 uses
  %i.afv = load <2 x float>, ptr %i.afu, align 4, !tbaa !72
  %i.afw = fpext <2 x float> %i.afv to <2 x double>
  %i.afx = fadd <2 x double> %i.afr, %i.afw
  %i.afy = fptrunc <2 x double> %i.afx to <2 x float>
  store <2 x float> %i.afy, ptr %i.afu, align 4, !tbaa !72
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afu, i64 8 ; 2 uses
  %i.aga = load float, ptr %i.afz, align 4, !tbaa !72
  %i.agb = fpext float %i.aga to double
  %i.agc = fadd double %i.afs, %i.agb
  %i.agd = fptrunc double %i.agc to float
  store float %i.agd, ptr %i.afz, align 4, !tbaa !72
  %i.age = add nuw nsw i64 %.0237504.us.i, 2      ; 2 uses
  %niter245.next.1 = add nuw nsw i64 %niter245, 2 ; 2 uses
  %niter245.ncmp.1 = icmp eq i64 %niter245.next.1, %unroll_iter244
  br i1 %niter245.ncmp.1, label %.loopexit435.loopexit644.i.unr-lcssa, label %.lr.ph506.split.us.split.i, !llvm.loop !335

.lr.ph506.split.i:                                ; preds = %.lr.ph506.i, %.preheader433.i
  %i.agf = phi double [ %i.ags, %.preheader433.i ], [ %i.acm, %.lr.ph506.i ]
  %.0237504.i = phi i64 [ %i.ahp, %.preheader433.i ], [ 0, %.lr.ph506.i ] ; 3 uses
  %i.agg = phi <2 x double> [ %i.agt, %.preheader433.i ], [ %i.ach, %.lr.ph506.i ]
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %.0237504.i
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !67
  br i1 %i.adf, label %.preheader433.i, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph506.split.i
  %i.agj = load float, ptr %i.adg, align 4, !tbaa !338
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.adc, i64 %.0237504.i
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !72
  %i.agm = fmul float %i.agj, %i.agl
  %i.agn = fpext float %i.agm to double           ; 2 uses
  %i.ago = insertelement <2 x double> poison, double %i.agn, i64 0
  %i.agp = shufflevector <2 x double> %i.ago, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agq = fmul <2 x double> %i.ach, %i.agp       ; 2 uses
  store <2 x double> %i.agq, ptr %i.f, align 16, !tbaa !85
  %i.agr = fmul double %i.acm, %i.agn             ; 2 uses
  store double %i.agr, ptr %i.ef, align 16, !tbaa !85
  br label %.preheader433.i

.preheader433.i:                                  ; preds = %bb.bw, %.lr.ph506.split.i
  %i.ags = phi double [ %i.agr, %bb.bw ], [ %i.agf, %.lr.ph506.split.i ] ; 3 uses
  %i.agt = phi <2 x double> [ %i.agq, %bb.bw ], [ %i.agg, %.lr.ph506.split.i ] ; 3 uses
  %i.agu = sext i32 %i.agi to i64                 ; 2 uses
  %i.agv = getelementptr inbounds [12 x i8], ptr %i.x, i64 %i.agu ; 3 uses
  %i.agw = load <2 x float>, ptr %i.agv, align 4, !tbaa !72
  %i.agx = fpext <2 x float> %i.agw to <2 x double>
  %i.agy = fadd <2 x double> %i.agt, %i.agx
  %i.agz = fptrunc <2 x double> %i.agy to <2 x float>
  store <2 x float> %i.agz, ptr %i.agv, align 4, !tbaa !72
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agv, i64 8 ; 2 uses
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !72
  %i.ahc = fpext float %i.ahb to double
  %i.ahd = fadd double %i.ags, %i.ahc
  %i.ahe = fptrunc double %i.ahd to float
  store float %i.ahe, ptr %i.aha, align 4, !tbaa !72
  %i.ahf = getelementptr inbounds [12 x i8], ptr %i.af, i64 %i.agu ; 3 uses
  %i.ahg = load <2 x float>, ptr %i.ahf, align 4, !tbaa !72
  %i.ahh = fpext <2 x float> %i.ahg to <2 x double>
  %i.ahi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zu, <2 x double> %i.agt, <2 x double> %i.ahh)
  %i.ahj = fptrunc <2 x double> %i.ahi to <2 x float>
  store <2 x float> %i.ahj, ptr %i.ahf, align 4, !tbaa !72
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8 ; 2 uses
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !72
  %i.ahm = fpext float %i.ahl to double
  %i.ahn = call double @llvm.fmuladd.f64(double %spec.select.i, double %i.ags, double %i.ahm)
  %i.aho = fptrunc double %i.ahn to float
  store float %i.aho, ptr %i.ahk, align 4, !tbaa !72
  %i.ahp = add nuw nsw i64 %.0237504.i, 1         ; 2 uses
  %exitcond566.not.i = icmp eq i64 %i.ahp, %i.acz
  br i1 %exitcond566.not.i, label %.loopexit435.i, label %.lr.ph506.split.i, !llvm.loop !335

.loopexit435.loopexit644.i.unr-lcssa:             ; preds = %.lr.ph506.split.us.split.i
  %i.ahq = and i64 %i.acy, 4
  %lcmp.mod240.not = icmp eq i64 %i.ahq, 0
  br i1 %lcmp.mod240.not, label %.loopexit435.loopexit644.i, label %.lr.ph506.split.us.split.i.epil.preheader

.lr.ph506.split.us.split.i.epil.preheader:        ; preds = %.loopexit435.loopexit644.i.unr-lcssa, %.lr.ph506.split.us.split.i.preheader
  %.0237504.us.i.epil.init = phi i64 [ 0, %.lr.ph506.split.us.split.i.preheader ], [ %i.age, %.loopexit435.loopexit644.i.unr-lcssa ] ; 2 uses
  %lcmp.mod243 = trunc i64 %i.acz to i1
  call void @llvm.assume(i1 %lcmp.mod243)
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %.0237504.us.i.epil.init
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !67
  %i.aht = load float, ptr %i.adg, align 4, !tbaa !338
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.adc, i64 %.0237504.us.i.epil.init
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !72
  %i.ahw = fmul float %i.aht, %i.ahv
  %i.ahx = fpext float %i.ahw to double           ; 2 uses
  %i.ahy = insertelement <2 x double> poison, double %i.ahx, i64 0
  %i.ahz = shufflevector <2 x double> %i.ahy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aia = fmul <2 x double> %i.ach, %i.ahz       ; 2 uses
  %i.aib = fmul double %i.acm, %i.ahx             ; 2 uses
  %i.aic = sext i32 %i.ahs to i64
  %i.aid = getelementptr inbounds [12 x i8], ptr %i.x, i64 %i.aic ; 3 uses
  %i.aie = load <2 x float>, ptr %i.aid, align 4, !tbaa !72
  %i.aif = fpext <2 x float> %i.aie to <2 x double>
  %i.aig = fadd <2 x double> %i.aia, %i.aif
  %i.aih = fptrunc <2 x double> %i.aig to <2 x float>
  store <2 x float> %i.aih, ptr %i.aid, align 4, !tbaa !72
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aid, i64 8 ; 2 uses
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !72
  %i.aik = fpext float %i.aij to double
  %i.ail = fadd double %i.aib, %i.aik
  %i.aim = fptrunc double %i.ail to float
  store float %i.aim, ptr %i.aii, align 4, !tbaa !72
  br label %.loopexit435.loopexit644.i

.loopexit435.loopexit644.i:                       ; preds = %.loopexit435.loopexit644.i.unr-lcssa, %.lr.ph506.split.us.split.i.epil.preheader
  %.lcssa206 = phi <2 x double> [ %i.afr, %.loopexit435.loopexit644.i.unr-lcssa ], [ %i.aia, %.lr.ph506.split.us.split.i.epil.preheader ]
  %.lcssa = phi double [ %i.afs, %.loopexit435.loopexit644.i.unr-lcssa ], [ %i.aib, %.lr.ph506.split.us.split.i.epil.preheader ]
  store <2 x double> %.lcssa206, ptr %i.f, align 16, !tbaa !85
  store double %.lcssa, ptr %i.ef, align 16, !tbaa !85
  br label %.loopexit435.i

.loopexit435.i.loopexit.unr-lcssa:                ; preds = %.lr.ph506.split.us.split.us.i
  %i.ain = and i64 %i.acy, 4
  %lcmp.mod248.not = icmp eq i64 %i.ain, 0
  br i1 %lcmp.mod248.not, label %.loopexit435.i, label %.lr.ph506.split.us.split.us.i.epil.preheader

.lr.ph506.split.us.split.us.i.epil.preheader:     ; preds = %.loopexit435.i.loopexit.unr-lcssa, %.lr.ph506.split.us.split.us.i.preheader
  %.0237504.us.us.i.epil.init = phi i64 [ 0, %.lr.ph506.split.us.split.us.i.preheader ], [ %i.aek, %.loopexit435.i.loopexit.unr-lcssa ]
  %lcmp.mod249 = trunc i64 %i.acz to i1
  call void @llvm.assume(i1 %lcmp.mod249)
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %.0237504.us.us.i.epil.init
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !67
  %i.aiq = sext i32 %i.aip to i64
  %i.air = getelementptr inbounds [12 x i8], ptr %i.x, i64 %i.aiq ; 3 uses
  %i.ais = load <2 x float>, ptr %i.air, align 4, !tbaa !72
  %i.ait = fpext <2 x float> %i.ais to <2 x double>
  %i.aiu = fadd <2 x double> %i.ach, %i.ait
  %i.aiv = fptrunc <2 x double> %i.aiu to <2 x float>
  store <2 x float> %i.aiv, ptr %i.air, align 4, !tbaa !72
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.air, i64 8 ; 2 uses
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !72
  %i.aiy = fpext float %i.aix to double
  %i.aiz = fadd double %i.acm, %i.aiy
  %i.aja = fptrunc double %i.aiz to float
  store float %i.aja, ptr %i.aiw, align 4, !tbaa !72
  br label %.loopexit435.i

.loopexit435.i:                                   ; preds = %.preheader433.i, %.lr.ph506.split.us.split.us.i.epil.preheader, %.loopexit435.i.loopexit.unr-lcssa, %.loopexit435.loopexit644.i, %bb.bv, %.lr.ph509.i
  %i.ajb = add nuw i64 %.0238507.i, 1             ; 2 uses
  %i.ajc = load ptr, ptr %i.bc, align 8, !tbaa !186
  %i.ajd = load ptr, ptr %i.bb, align 8, !tbaa !111 ; 3 uses
  %i.aje = ptrtoint ptr %i.ajc to i64
  %i.ajf = ptrtoint ptr %i.ajd to i64
  %i.ajg = sub i64 %i.aje, %i.ajf
  %i.ajh = sdiv exact i64 %i.ajg, 272
  %i.aji = icmp ult i64 %i.ajb, %i.ajh
  br i1 %i.aji, label %.lr.ph509.i, label %.preheader432.i, !llvm.loop !336

.lr.ph514.split.i:                                ; preds = %.loopexit.i, %.lr.ph514.split.preheader.i
  %.0236513.i = phi i64 [ %i.all, %.loopexit.i ], [ 0, %.lr.ph514.split.preheader.i ] ; 4 uses
  %i.ajj = getelementptr inbounds nuw [488 x i8], ptr %i.zw, i64 %.0236513.i ; 5 uses
  %i.ajk = load i32, ptr %i.ajj, align 8, !tbaa !109
  %.not.i = icmp eq i32 %i.ajk, 1
  br i1 %.not.i, label %bb.bx, label %.loopexit.i

bb.bx:                                            ; preds = %.lr.ph514.split.i
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0236513.i
  %i.ajm = load double, ptr %i.ajl, align 8, !tbaa !85
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajj, i64 92
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !67
  %i.ajp = sext i32 %i.ajo to i64
  %i.ajq = getelementptr inbounds nuw [272 x i8], ptr %.lcssa.i, i64 %i.ajp
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 144
  %i.ajs = load float, ptr %i.ajr, align 8, !tbaa !188
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajj, i64 96
  %i.aju = load i32, ptr %i.ajt, align 8, !tbaa !67
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = getelementptr inbounds nuw [272 x i8], ptr %.lcssa.i, i64 %i.ajv
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 144
  %i.ajy = load float, ptr %i.ajx, align 8, !tbaa !188
  %i.ajz = fadd float %i.ajs, %i.ajy
  %i.aka = fpext float %i.ajz to double
  %i.akb = fmul double %5, %i.aka
  %i.akc = fmul double %5, %i.akb
  %i.akd = fdiv double %i.ajm, %i.akc
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajj, i64 384 ; 2 uses
  %i.akf = load double, ptr %i.ake, align 8, !tbaa !154
  %i.akg = fadd double %i.akf, %i.akd             ; 2 uses
  store double %i.akg, ptr %i.ake, align 8, !tbaa !154
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ajj, i64 40
  %i.aki = load i32, ptr %i.akh, align 8, !tbaa !107
  %i.akj = icmp ne i32 %i.aki, 3
  %or.cond.i = and i1 %i.ak, %i.akj
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.bx
  %i.akk = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.0236513.i ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 8
  %i.akm = load <3 x double>, ptr %i.akk, align 8, !tbaa !85 ; 4 uses
  %i.akn = load double, ptr %i.akl, align 8, !tbaa !85 ; 2 uses
  %i.ako = fmul double %i.akn, %i.akn
  %i.akp = extractelement <3 x double> %i.akm, i64 0 ; 2 uses
  %i.akq = call double @llvm.fmuladd.f64(double %i.akp, double %i.akp, double %i.ako)
  %i.akr = extractelement <3 x double> %i.akm, i64 2 ; 3 uses
  %i.aks = call noundef double @llvm.fmuladd.f64(double %i.akr, double %i.akr, double %i.akq)
  %i.akt = call noundef double @sqrt(double noundef %i.aks) #20
  %i.aku = fdiv double %i.akg, %i.akt
  %i.akv = fmul double %i.aku, 5.000000e-01
  %i.akw = fneg <3 x double> %i.akm
  %i.akx = insertelement <3 x double> poison, double %i.akv, i64 0
  %i.aky = shufflevector <3 x double> %i.akx, <3 x double> poison, <3 x i32> zeroinitializer
  %i.akz = fmul <3 x double> %i.aky, %i.akw       ; 2 uses
  %i.ala = shufflevector <3 x double> %i.akz, <3 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.alb = load <8 x float>, ptr %10, align 4, !tbaa !72
  %i.alc = fpext <8 x float> %i.alb to <8 x double>
  %i.ald = shufflevector <3 x double> %i.akm, <3 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.ale = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ala, <8 x double> %i.ald, <8 x double> %i.alc)
  %i.alf = fptrunc <8 x double> %i.ale to <8 x float>
  store <8 x float> %i.alf, ptr %10, align 4, !tbaa !72
  %i.alg = load float, ptr %i.aac, align 4, !tbaa !72
  %i.alh = fpext float %i.alg to double
  %i.ali = extractelement <3 x double> %i.akz, i64 2
  %i.alj = call double @llvm.fmuladd.f64(double %i.ali, double %i.akr, double %i.alh)
  %i.alk = fptrunc double %i.alj to float
  store float %i.alk, ptr %i.aac, align 4, !tbaa !72
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.bx, %.lr.ph514.split.i
  %i.all = add nuw i64 %.0236513.i, 1             ; 2 uses
  %exitcond578.not.i = icmp eq i64 %i.all, %i.aaa
  br i1 %exitcond578.not.i, label %_ZL13do_constraintP6pull_tRK5t_pbcN3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_bPA3_fdd.exit, label %.lr.ph514.split.i, !llvm.loop !334

bb.by:                                            ; preds = %bb.bq, %bb.bg, %bb.i
  %.pn287.i = phi { ptr, i32 } [ %i.gl, %bb.i ], [ %.pn.pn.pn.i, %bb.bg ], [ %i.zo, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %common.resume.i

_ZL13do_constraintP6pull_tRK5t_pbcN3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_bPA3_fdd.exit.loopexit.unr-lcssa: ; preds = %bb.bu
  %lcmp.mod254.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod254.not, label %_ZL13do_constraintP6pull_tRK5t_pbcN3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_bPA3_fdd.exit, label %.lr.ph514.split.us.i.epil.preheader

.lr.ph514.split.us.i.epil.preheader:              ; preds = %_ZL13do_constraintP6pull_tRK5t_pbcN3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_bPA3_fdd.exit.loopexit.unr-lcssa, %.lr.ph514.split.us.i.preheader
  %.0236513.us.i.epil.init = phi i64 [ 0, %.lr.ph514.split.us.i.preheader ], [ %i.aca, %_ZL13do_constraintP6pull_tRK5t_pbcN3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_bPA3_fdd.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod255 = trunc i64 %i.aaa to i1
  call void @llvm.assume(i1 %lcmp.mod255)
  %i.alm = getelementptr inbounds nuw [488 x i8], ptr %i.zw, i64 %.0236513.us.i.epil.init ; 4 uses
  %i.aln = load i32, ptr %i.alm, align 8, !tbaa !109
  %.not.us.i.epil = icmp eq i32 %i.aln, 1
  br i1 %.not.us.i.epil, label %bb.bz, label %_ZL13do_constraintP6pull_tRK5t_pbcN3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_bPA3_fdd.exit

bb.bz:                                            ; preds = %.lr.ph514.split.us.i.epil.preheader
  %i.alo = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0236513.us.i.epil.init
  %i.alp = load double, ptr %i.alo, align 8, !tbaa !85
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alm, i64 92
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !67
  %i.als = sext i32 %i.alr to i64
  %i.alt = getelementptr inbounds nuw [272 x i8], ptr %.lcssa.i, i64 %i.als
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 144
  %i.alv = load float, ptr %i.alu, align 8, !tbaa !188
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alm, i64 96
  %i.alx = load i32, ptr %i.alw, align 8, !tbaa !67
  %i.aly = sext i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw [272 x i8], ptr %.lcssa.i, i64 %i.aly
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 144
  %i.amb = load float, ptr %i.ama, align 8, !tbaa !188
  %i.amc = fadd float %i.alv, %i.amb
  %i.amd = fpext float %i.amc to double
  %i.ame = fmul double %5, %i.amd
  %i.amf = fmul double %5, %i.ame
  %i.amg = fdiv double %i.alp, %i.amf
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alm, i64 384 ; 2 uses
end_hunk_0
