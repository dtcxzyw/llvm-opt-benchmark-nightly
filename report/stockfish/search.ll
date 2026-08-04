inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN9Stockfish6Search6Worker19iterative_deepeningEv:iter.check
  %.val1.i32.i.i.i.i = load ptr, ptr %i.vc, align 8, !tbaa !189
  %.val1.val.i33.i.i.i.i = load i16, ptr %.val1.i32.i.i.i.i, align 2, !tbaa !234
  %i.vd = icmp eq i16 %.val1.val.i33.i.i.i.i, %.val.val.val.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.vd, ptr %.sroa.044.2.i.i.i.i, ptr %.val197
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEZNS3_6Worker19iterative_deepeningEvE3$_0ET_SC_SC_T0_.exit.i"

.loopexit.split.loop.exit54.i.i.i.i:              ; preds = %bb.ak
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i, i64 72
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEZNS3_6Worker19iterative_deepeningEvE3$_0ET_SC_SC_T0_.exit.i"

.loopexit.split.loop.exit56.i.i.i.i:              ; preds = %bb.al
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i, i64 144
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEZNS3_6Worker19iterative_deepeningEvE3$_0ET_SC_SC_T0_.exit.i"

.loopexit.split.loop.exit58.i.i.i.i:              ; preds = %bb.am
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i, i64 216
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEZNS3_6Worker19iterative_deepeningEvE3$_0ET_SC_SC_T0_.exit.i"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEZNS3_6Worker19iterative_deepeningEvE3$_0ET_SC_SC_T0_.exit.i": ; preds = %bb.aj, %.loopexit.split.loop.exit58.i.i.i.i, %.loopexit.split.loop.exit56.i.i.i.i, %.loopexit.split.loop.exit54.i.i.i.i, %bb.as, %bb.aq, %bb.ao
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.044.1.i.i.i.i, %bb.aq ], [ %spec.select.i.i.i.i, %bb.as ], [ %i.vg, %.loopexit.split.loop.exit58.i.i.i.i ], [ %.sroa.044.0.lcssa.i.i.i.i, %bb.ao ], [ %i.vf, %.loopexit.split.loop.exit56.i.i.i.i ], [ %i.ve, %.loopexit.split.loop.exit54.i.i.i.i ], [ %.sroa.044.063.i.i.i.i, %bb.aj ] ; 3 uses
  %.not.i225 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.val197
  br i1 %.not.i225, label %"_ZN9Stockfish7Utility13move_to_frontINS_6Search8RootMoveEZNS2_6Worker19iterative_deepeningEvE3$_0EEvRSt6vectorIT_SaIS7_EET0_.exit", label %bb.at

bb.at:                                            ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEZNS3_6Worker19iterative_deepeningEvE3$_0ET_SC_SC_T0_.exit.i"
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 72
  %i.vi = call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %.pre414, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, ptr nonnull %i.vh) ; 0 uses
  %.pre415 = load ptr, ptr %i.db, align 8, !tbaa !233
  br label %"_ZN9Stockfish7Utility13move_to_frontINS_6Search8RootMoveEZNS2_6Worker19iterative_deepeningEvE3$_0EEvRSt6vectorIT_SaIS7_EET0_.exit"

"_ZN9Stockfish7Utility13move_to_frontINS_6Search8RootMoveEZNS2_6Worker19iterative_deepeningEvE3$_0EEvRSt6vectorIT_SaIS7_EET0_.exit": ; preds = %._crit_edge.i.i.i.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEZNS3_6Worker19iterative_deepeningEvE3$_0ET_SC_SC_T0_.exit.i", %bb.at
  %i.vj = phi ptr [ %.pre414, %._crit_edge.i.i.i.i ], [ %.pre414, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEZNS3_6Worker19iterative_deepeningEvE3$_0ET_SC_SC_T0_.exit.i" ], [ %.pre415, %bb.at ]
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 48
  %i.vl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN9Stockfish4MoveESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.vk, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  %i.vm = load ptr, ptr %i.db, align 8, !tbaa !233 ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  store i32 %.0129390, ptr %i.vn, align 8, !tbaa !184
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  store i32 %.0129390, ptr %i.vo, align 8, !tbaa !238
  br label %bb.aw

bb.au:                                            ; preds = %bb.ah, %bb.ag
  %i.vp = getelementptr inbounds nuw i8, ptr %.pre414, i64 48 ; 2 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !189
  %i.vr = load ptr, ptr %2, align 8, !tbaa !189
  %i.vs = load i16, ptr %i.vq, align 2, !tbaa !234
  %i.vt = load i16, ptr %i.vr, align 2, !tbaa !234
  %.not351 = icmp eq i16 %i.vs, %i.vt
  br i1 %.not351, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.vu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN9Stockfish4MoveESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.vp) ; 0 uses
  %i.vv = load ptr, ptr %i.db, align 8, !tbaa !233 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !238
  %i.vy = load i32, ptr %i.ov, align 16, !tbaa !264
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %"_ZN9Stockfish7Utility13move_to_frontINS_6Search8RootMoveEZNS2_6Worker19iterative_deepeningEvE3$_0EEvRSt6vectorIT_SaIS7_EET0_.exit"
  %i.vz = phi ptr [ %i.vm, %"_ZN9Stockfish7Utility13move_to_frontINS_6Search8RootMoveEZNS2_6Worker19iterative_deepeningEvE3$_0EEvRSt6vectorIT_SaIS7_EET0_.exit" ], [ %i.vv, %bb.av ], [ %.pre414, %bb.au ] ; 2 uses
  %.1130 = phi i32 [ %.0129390, %"_ZN9Stockfish7Utility13move_to_frontINS_6Search8RootMoveEZNS2_6Worker19iterative_deepeningEvE3$_0EEvRSt6vectorIT_SaIS7_EET0_.exit" ], [ %i.vx, %bb.av ], [ %.0129390, %bb.au ]
  %.1 = phi i32 [ %.0391, %"_ZN9Stockfish7Utility13move_to_frontINS_6Search8RootMoveEZNS2_6Worker19iterative_deepeningEvE3$_0EEvRSt6vectorIT_SaIS7_EET0_.exit" ], [ %i.vy, %bb.av ], [ %.0391, %bb.au ] ; 2 uses
  br i1 %i.an, label %bb.ax, label %bb.br, !llvm.loop !279

bb.ax:                                            ; preds = %bb.aw
  %i.wa = load i32, ptr %i.na, align 8, !tbaa !232 ; 3 uses
  %.not182 = icmp eq i32 %i.wa, 0
  br i1 %.not182, label %.thread346, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !238 ; 6 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !184
  %i.wf = icmp eq i32 %i.wc, %i.we
  br i1 %i.wf, label %bb.az, label %.thread346

bb.az:                                            ; preds = %bb.ay
  %i.wg = icmp sgt i32 %i.wc, 31753
  br i1 %i.wg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.wh = sub nsw i32 32000, %i.wc
  %i.wi = shl nsw i32 %i.wa, 1
  %.not183 = icmp sgt i32 %i.wh, %i.wi
  br i1 %.not183, label %.thread346, label %bb.bd

bb.bb:                                            ; preds = %bb.az
  %.not184 = icmp ne i32 %i.wc, -32001
  %i.wj = icmp slt i32 %i.wc, -31753
  %or.cond348 = and i1 %.not184, %i.wj
  br i1 %or.cond348, label %bb.bc, label %.thread346

bb.bc:                                            ; preds = %bb.bb
  %i.wk = add nsw i32 %i.wc, 32000
  %i.wl = shl nsw i32 %i.wa, 1
  %.not185 = icmp sgt i32 %i.wk, %i.wl
  br i1 %.not185, label %.thread346, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %i.wm = load ptr, ptr %i.mj, align 64, !tbaa !220, !nonnull !48, !align !49
  store atomic i8 1, ptr %i.wm seq_cst, align 8
  br label %.thread346

.thread346:                                       ; preds = %bb.ba, %bb.bd, %bb.bc, %bb.bb, %bb.ay, %bb.ax
  %i.wn = load double, ptr %5, align 8, !tbaa !255 ; 2 uses
  %i.wo = fcmp olt double %i.wn, 2.000000e+01
  br i1 %i.wo, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %.thread346
  %i.wp = load i32, ptr %i.ov, align 16, !tbaa !264
  %i.wq = fptosi double %i.wn to i32
  %i.wr = add nsw i32 %i.wq, 1
  %i.ws = icmp eq i32 %i.wp, %i.wr
  br i1 %i.ws, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.wt = call i16 @_ZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEm(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 noundef %.sroa.speculated305) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %.thread346
  %i.wu = load ptr, ptr %i.mj, align 64, !tbaa !220, !nonnull !48, !align !49 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 16
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !280 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wu, i64 24
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !280 ; 2 uses
  %.not352378 = icmp eq ptr %i.ww, %i.wy
  br i1 %.not352378, label %._crit_edge383, label %.lr.ph382

._crit_edge383:                                   ; preds = %.lr.ph382, %bb.bg
  %.2141.lcssa = phi double [ %i.pf, %bb.bg ], [ %i.xj, %.lr.ph382 ] ; 2 uses
  %i.wz = load i64, ptr %i.nb, align 8, !tbaa !25
  %.not.i226 = icmp ne i64 %i.wz, 0
  %i.xa = load i64, ptr %i.nc, align 16
  %i.xb = icmp ne i64 %i.xa, 0
  %i.xc = select i1 %.not.i226, i1 true, i1 %i.xb
  br i1 %i.xc, label %bb.bh, label %bb.bq

.lr.ph382:                                        ; preds = %bb.bg, %.lr.ph382
  %.2141380 = phi double [ %i.xj, %.lr.ph382 ], [ %i.pf, %bb.bg ]
  %.sroa.0252.0379 = phi ptr [ %i.xo, %.lr.ph382 ], [ %i.ww, %bb.bg ] ; 3 uses
  %i.xd = load ptr, ptr %.sroa.0252.0379, align 8, !tbaa !282
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !236
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 11419816
  %i.xh = load atomic i64, ptr %i.xg seq_cst, align 8
  %i.xi = uitofp i64 %i.xh to double
  %i.xj = fadd double %.2141380, %i.xi            ; 2 uses
  %i.xk = load ptr, ptr %.sroa.0252.0379, align 8, !tbaa !282
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !236
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 11419816
  store atomic i64 0, ptr %i.xn seq_cst, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.0252.0379, i64 8 ; 2 uses
  %.not352 = icmp eq ptr %i.xo, %i.wy
  br i1 %.not352, label %._crit_edge383, label %.lr.ph382

bb.bh:                                            ; preds = %._crit_edge383
  %i.xp = load ptr, ptr %i.mj, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.xq = load atomic i8, ptr %i.xp seq_cst, align 8, !range !221, !noundef !48
  %i.xr = trunc nuw i8 %i.xq to i1
  br i1 %i.xr, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.xs = load i8, ptr %i.nd, align 8, !tbaa !276, !range !221, !noundef !48
  %i.xt = trunc nuw i8 %i.xs to i1
  br i1 %i.xt, label %bb.bq, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.xu = load ptr, ptr %i.db, align 8, !tbaa !233
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !177
  %i.xw = mul i64 %i.xv, 100000
  %i.xx = load atomic i64, ptr %i.mw seq_cst, align 8
  %.sroa.speculated247 = call i64 @llvm.umax.i64(i64 %i.xx, i64 1)
  %i.xy = udiv i64 %i.xw, %.sroa.speculated247
  %i.xz = load i32, ptr %i.ne, align 4, !tbaa !241
  %i.ya = sub nsw i32 %i.xz, %.2135
  %i.yb = sitofp i32 %i.ya to double
  %i.yc = call double @llvm.fmuladd.f64(double %i.yb, double 2.240000e+00, double 1.185000e+01)
  %i.yd = zext nneg i32 %.0144386 to i64
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.yd
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !138
  %i.yg = sub nsw i32 %i.yf, %.2135
  %i.yh = sitofp i32 %i.yg to double
  %i.yi = call double @llvm.fmuladd.f64(double %i.yh, double 9.300000e-01, double %i.yc)
  %i.yj = fdiv double %i.yi, 1.000000e+02         ; 2 uses
  %i.yk = fcmp olt double %i.yj, 5.700000e-01
  %i.yl = select i1 %i.yk, double 5.700000e-01, double %i.yj ; 2 uses
  %i.ym = fcmp ogt double %i.yl, 1.700000e+00
  %.sroa.speculated241 = select i1 %i.ym, double 1.700000e+00, double %i.yl
  %i.yn = sitofp i32 %.1 to double
  %i.yo = fadd nnan double %i.yn, 1.215000e+01
  %i.yp = load i32, ptr %i.mz, align 4, !tbaa !242
  %i.yq = sitofp i32 %i.yp to double
  %i.yr = fsub nnan double %i.yq, %i.yo
  %i.ys = fmul nnan double %i.yr, -5.100000e-01
  %i.yt = call double @exp(double noundef %i.ys) #33
  %i.yu = fadd double %i.yt, f0x3FEF5C28F5C28F5C
  %i.yv = fdiv double 8.500000e-01, %i.yu
  %i.yw = fadd double %i.yv, 6.600000e-01         ; 4 uses
  %i.yx = load double, ptr %i.ng, align 8, !tbaa !284
  %i.yy = fmul double %i.yw, 2.280000e+00
  %i.yz = load ptr, ptr %i.mj, align 64, !tbaa !220, !nonnull !48, !align !49 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 16
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 24
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !285
  %i.zd = load ptr, ptr %i.za, align 8, !tbaa !287
  %i.ze = ptrtoint ptr %i.zc to i64
  %i.zf = ptrtoint ptr %i.zd to i64
  %i.zg = sub i64 %i.ze, %i.zf
  %i.zh = ashr exact i64 %i.zg, 3
  %i.zi = uitofp i64 %i.zh to double
  %9 = fmul double %.2141.lcssa, 2.140000e+00
  %10 = fadd double %i.yx, 1.430000e+00
  %11 = insertelement <2 x double> poison, double %10, i64 0
  %12 = insertelement <2 x double> %11, double %9, i64 1
  %13 = insertelement <2 x double> poison, double %i.yy, i64 0
  %14 = insertelement <2 x double> %13, double %i.zi, i64 1
  %15 = fdiv <2 x double> %12, %14                ; 2 uses
  %16 = extractelement <2 x double> %15, i64 1
  %i.zj = fadd double %16, 1.020000e+00
  %i.zk = icmp ugt i64 %i.xy, 93339
  %i.zl = select i1 %i.zk, double 7.600000e-01, double 1.000000e+00
  %i.zm = call noundef i64 @_ZNK9Stockfish14TimeManagement7optimumEv(ptr noundef nonnull align 8 dereferenceable(33) %i.nh) #33
  %i.zn = sitofp i64 %i.zm to double
  %i.zo = fmul double %.sroa.speculated241, %i.zn
  %17 = extractelement <2 x double> %15, i64 0
  %i.zp = fmul double %17, %i.zo
  %i.zq = fmul double %i.zp, %i.zj
  %i.zr = fmul double %i.zl, %i.zq                ; 2 uses
  %i.zs = load ptr, ptr %i.dc, align 32, !tbaa !193
  %i.zt = load ptr, ptr %i.db, align 8, !tbaa !233
  %i.zu = ptrtoint ptr %i.zs to i64
  %i.zv = ptrtoint ptr %i.zt to i64
  %i.zw = sub i64 %i.zu, %i.zv
  %i.zx = icmp eq i64 %i.zw, 72
  %i.zy = fcmp uge double %i.zr, 5.020000e+02
  %i.zz = select i1 %i.zx, i1 %i.zy, i1 false
  %.0338 = select i1 %i.zz, double 5.020000e+02, double %i.zr ; 3 uses
  %i.aaa = load ptr, ptr %i.d, align 32, !tbaa !114 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 40
  %i.aac = load i8, ptr %i.aab, align 8, !tbaa !288, !range !221, !noundef !48
  %i.aad = trunc nuw i8 %i.aac to i1
  br i1 %i.aad, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %.val.val.i.i = load ptr, ptr %i.mj, align 64, !tbaa !220
  %i.aae = call noundef i64 @_ZNK9Stockfish10ThreadPool14nodes_searchedEv(ptr noundef nonnull align 8 dereferenceable(64) %.val.val.i.i) #33
  br label %_ZNK9Stockfish6Search6Worker7elapsedEv.exit

bb.bl:                                            ; preds = %bb.bj
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aag = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.aah = sdiv i64 %i.aag, 1000000
  %i.aai = load i64, ptr %i.aaf, align 8, !tbaa !289
  %i.aaj = sub nsw i64 %i.aah, %i.aai
  br label %_ZNK9Stockfish6Search6Worker7elapsedEv.exit

_ZNK9Stockfish6Search6Worker7elapsedEv.exit:      ; preds = %bb.bk, %bb.bl
  %i.aak = phi i64 [ %i.aae, %bb.bk ], [ %i.aaj, %bb.bl ]
  %i.aal = sitofp i64 %i.aak to double            ; 2 uses
  %i.aam = call noundef i64 @_ZNK9Stockfish14TimeManagement7maximumEv(ptr noundef nonnull align 8 dereferenceable(33) %i.nh) #33
  %i.aan = sitofp i64 %i.aam to double            ; 2 uses
  %i.aao = fcmp ogt double %.0338, %i.aan
  %.sroa.speculated = select i1 %i.aao, double %i.aan, double %.0338
  %i.aap = fcmp olt double %.sroa.speculated, %i.aal
  %i.aaq = load atomic i8, ptr %i.ni seq_cst, align 4, !range !221, !noundef !48
  %i.aar = trunc nuw i8 %i.aaq to i1              ; 2 uses
  br i1 %i.aap, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %_ZNK9Stockfish6Search6Worker7elapsedEv.exit
  br i1 %i.aar, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i8 1, ptr %i.nd, align 8, !tbaa !276
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.aas = load ptr, ptr %i.mj, align 64, !tbaa !220, !nonnull !48, !align !49
  store atomic i8 1, ptr %i.aas seq_cst, align 8
  br label %bb.bq

bb.bp:                                            ; preds = %_ZNK9Stockfish6Search6Worker7elapsedEv.exit
  %i.aat = fmul double %.0338, 5.000000e-01
  %i.aau = fcmp oge double %i.aat, %i.aal
  %i.aav = select i1 %i.aar, i1 true, i1 %i.aau
  %i.aaw = load ptr, ptr %i.mj, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 2
  %i.aay = zext i1 %i.aav to i8
  store atomic i8 %i.aay, ptr %i.aax seq_cst, align 2
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bi, %bb.bh, %._crit_edge383
  %.1137 = phi double [ %.0136388, %bb.bh ], [ %.0136388, %bb.bi ], [ %.0136388, %._crit_edge383 ], [ %i.yw, %bb.bn ], [ %i.yw, %bb.bo ], [ %i.yw, %bb.bp ]
  %i.aaz = zext nneg i32 %.0144386 to i64
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.aaz
  store i32 %.2135, ptr %i.aba, align 4, !tbaa !138
  %i.abb = add nuw nsw i32 %.0144386, 1
  %i.abc = and i32 %i.abb, 3
  br label %bb.br

bb.br:                                            ; preds = %bb.aw, %bb.bq
  %.1145 = phi i32 [ %i.abc, %bb.bq ], [ %.0144386, %bb.aw ]
  %.3 = phi double [ %.2141.lcssa, %bb.bq ], [ %.0139387, %bb.aw ]
  %.2138 = phi double [ %.1137, %bb.bq ], [ %.0136388, %bb.aw ] ; 2 uses
  %i.abd = load i32, ptr %i.ov, align 16, !tbaa !264 ; 2 uses
  %i.abe = add nsw i32 %i.abd, 1
  store i32 %i.abe, ptr %i.ov, align 16, !tbaa !264
  %i.abf = icmp slt i32 %i.abd, 245
  br i1 %i.abf, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.br, %bb.f, %middle.block514
  %.0136.lcssa = phi double [ 1.000000e+00, %middle.block514 ], [ %.0136388, %bb.f ], [ %.2138, %bb.br ]
  br i1 %i.an, label %.critedge.thread, label %bb.cd

.critedge.thread:                                 ; preds = %bb.h, %.critedge
  %.0136364 = phi double [ %.0136.lcssa, %.critedge ], [ %.0136388, %bb.h ]
  %i.abg = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store double %.0136364, ptr %i.abg, align 8, !tbaa !284
  %i.abh = load double, ptr %5, align 8, !tbaa !255
  %i.abi = fcmp olt double %i.abh, 2.000000e+01
  br i1 %i.abi, label %bb.bs, label %bb.cd

bb.bs:                                            ; preds = %.critedge.thread
  %i.abj = load ptr, ptr %i.db, align 8, !tbaa !233 ; 8 uses
  %i.abk = load ptr, ptr %i.dc, align 32, !tbaa !175 ; 3 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.abm = load i16, ptr %i.abl, align 8, !tbaa !234 ; 2 uses
  %.not353 = icmp eq i16 %i.abm, 0
  br i1 %.not353, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.abn = call i16 @_ZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEm(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 noundef %.sroa.speculated305)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %storemerge186 = phi i16 [ %i.abn, %bb.bt ], [ %i.abm, %bb.bs ] ; 7 uses
  %i.abo = ptrtoint ptr %i.abk to i64             ; 2 uses
  %i.abp = ptrtoint ptr %i.abj to i64
  %i.abq = sub i64 %i.abo, %i.abp                 ; 2 uses
  %i.abr = sdiv exact i64 %i.abq, 72
  %i.abs = ashr i64 %i.abr, 2                     ; 3 uses
  %i.abt = icmp sgt i64 %i.abs, 0
  br i1 %i.abt, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bu
  %i.abu = mul nuw nsw i64 %i.abs, 288
  %scevgep.i.i.i = getelementptr i8, ptr %i.abj, i64 %i.abu ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bz, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.abs, %.lr.ph.i.i.i ], [ %i.acm, %bb.bz ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.abj, %.lr.ph.i.i.i ], [ %i.acl, %bb.bz ] ; 9 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 48
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !189
  %i.abx = load i16, ptr %i.abw, align 2, !tbaa !234
  %i.aby = icmp eq i16 %i.abx, %storemerge186
  br i1 %i.aby, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.abz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 120
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !189
  %i.acb = load i16, ptr %i.aca, align 2, !tbaa !234
  %i.acc = icmp eq i16 %i.acb, %storemerge186
  br i1 %i.acc, label %.loopexit.split.loop.exit42.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 192
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !189
  %i.acf = load i16, ptr %i.ace, align 2, !tbaa !234
  %i.acg = icmp eq i16 %i.acf, %storemerge186
  br i1 %i.acg, label %.loopexit.split.loop.exit44.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ach = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 264
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !189
  %i.acj = load i16, ptr %i.aci, align 2, !tbaa !234
  %i.ack = icmp eq i16 %i.acj, %storemerge186
  br i1 %i.ack, label %.loopexit.split.loop.exit46.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.acl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 288
  %i.acm = add nsw i64 %.052.i.i.i, -1
  %i.acn = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.acn, label %bb.bv, label %._crit_edge.loopexit.i.i.i, !llvm.loop !290

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.bz
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.abo, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.bu
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.abq, %bb.bu ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.abj, %bb.bu ] ; 5 uses
  %i.aco = sdiv exact i64 %.pre-phi61.i.i.i, 72
  switch i64 %i.aco, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit [
    i64 3, label %bb.ca
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.ca:                                            ; preds = %._crit_edge.i.i.i
  %i.acp = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 48
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !189
  %i.acr = load i16, ptr %i.acq, align 2, !tbaa !234
  %i.acs = icmp eq i16 %i.acr, %storemerge186
  br i1 %i.acs, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.act = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 72
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.cb
  %.sroa.032.1.i.i.i = phi ptr [ %i.act, %bb.cb ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 48
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !189
  %i.acw = load i16, ptr %i.acv, align 2, !tbaa !234
  %i.acx = icmp eq i16 %i.acw, %storemerge186
  br i1 %i.acx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.acy = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 72
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.cc
  %.sroa.032.2.i.i.i = phi ptr [ %i.acy, %bb.cc ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %.sroa.032.2.i.i.i, i64 48
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !189
end_hunk_0
begin_hunk_1_@_ZN9Stockfish12_GLOBAL__N_116update_all_statsERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveENS_6SquareERNS_9ValueListIS9_Lm32EEESD_iS9_i:bb.a
  %i.ce = add i64 %.idx95, -2                     ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 1
  %i.cg = add nuw i64 %i.cf, 1
  %xtraiter = and i64 %i.cg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph93, %.prol.preheader
  %.092.prol = phi ptr [ %i.dd, %.prol.preheader ], [ %6, %.lr.ph93 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph93 ]
  %i.ch = load i16, ptr %.092.prol, align 2, !tbaa !191 ; 2 uses
  %i.ci = lshr i16 %i.ch, 6
  %i.cj = and i16 %i.ci, 63
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !330
  %i.cn = and i16 %i.ch, 63
  %i.co = zext nneg i16 %i.cn to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !330
  %i.cr = and i8 %i.cq, 7
  %i.cs = zext i8 %i.cm to i64
  %i.ct = getelementptr inbounds nuw [1024 x i8], ptr %i.a, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.co
  %i.cv = zext nneg i8 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !355
  %i.cy = sext i16 %i.cx to i32                   ; 2 uses
  %i.cz = add nsw i32 %.sroa.speculated.i70, %i.cy
  %i.da = mul nsw i32 %i.cd, %i.cy
  %.neg.i71.prol = sdiv i32 %i.da, -10692
  %i.db = add nsw i32 %i.cz, %.neg.i71.prol
  %i.dc = trunc i32 %i.db to i16
  store i16 %i.dc, ptr %i.cw, align 2, !tbaa !355
  %i.dd = getelementptr inbounds nuw i8, ptr %.092.prol, i64 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !779

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph93
  %.092.unr = phi ptr [ %6, %.lr.ph93 ], [ %i.dd, %.prol.preheader ]
  %i.de = icmp ult i64 %i.ce, 6
  br i1 %i.de, label %._crit_edge, label %.lr.ph93.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph93.new, %bb.i
  ret void

.lr.ph93.new:                                     ; preds = %.prol.loopexit, %.lr.ph93.new
  %.092 = phi ptr [ %i.gs, %.lr.ph93.new ], [ %.092.unr, %.prol.loopexit ] ; 5 uses
  %i.df = load i16, ptr %.092, align 2, !tbaa !191 ; 2 uses
  %i.dg = lshr i16 %i.df, 6
  %i.dh = and i16 %i.dg, 63
  %i.di = zext nneg i16 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !330
  %i.dl = and i16 %i.df, 63
  %i.dm = zext nneg i16 %i.dl to i64              ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !330
  %i.dp = and i8 %i.do, 7
  %i.dq = zext i8 %i.dk to i64
  %i.dr = getelementptr inbounds nuw [1024 x i8], ptr %i.a, i64 %i.dq
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dm
  %i.dt = zext nneg i8 %i.dp to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.dt ; 2 uses
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !355
  %i.dw = sext i16 %i.dv to i32                   ; 2 uses
  %i.dx = add nsw i32 %.sroa.speculated.i70, %i.dw
  %i.dy = mul nsw i32 %i.cd, %i.dw
  %.neg.i71 = sdiv i32 %i.dy, -10692
  %i.dz = add nsw i32 %i.dx, %.neg.i71
  %i.ea = trunc i32 %i.dz to i16
  store i16 %i.ea, ptr %i.du, align 2, !tbaa !355
  %i.eb = getelementptr inbounds nuw i8, ptr %.092, i64 2
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !191 ; 2 uses
  %i.ed = lshr i16 %i.ec, 6
  %i.ee = and i16 %i.ed, 63
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !330
  %i.ei = and i16 %i.ec, 63
  %i.ej = zext nneg i16 %i.ei to i64              ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !330
  %i.em = and i8 %i.el, 7
  %i.en = zext i8 %i.eh to i64
  %i.eo = getelementptr inbounds nuw [1024 x i8], ptr %i.a, i64 %i.en
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.ej
  %i.eq = zext nneg i8 %i.em to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.eq ; 2 uses
  %i.es = load i16, ptr %i.er, align 2, !tbaa !355
  %i.et = sext i16 %i.es to i32                   ; 2 uses
  %i.eu = add nsw i32 %.sroa.speculated.i70, %i.et
  %i.ev = mul nsw i32 %i.cd, %i.et
  %.neg.i71.1 = sdiv i32 %i.ev, -10692
  %i.ew = add nsw i32 %i.eu, %.neg.i71.1
  %i.ex = trunc i32 %i.ew to i16
  store i16 %i.ex, ptr %i.er, align 2, !tbaa !355
  %i.ey = getelementptr inbounds nuw i8, ptr %.092, i64 4
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !191 ; 2 uses
  %i.fa = lshr i16 %i.ez, 6
  %i.fb = and i16 %i.fa, 63
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !330
  %i.ff = and i16 %i.ez, 63
  %i.fg = zext nneg i16 %i.ff to i64              ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !330
  %i.fj = and i8 %i.fi, 7
  %i.fk = zext i8 %i.fe to i64
  %i.fl = getelementptr inbounds nuw [1024 x i8], ptr %i.a, i64 %i.fk
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %i.fg
  %i.fn = zext nneg i8 %i.fj to i64
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.fn ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !355
  %i.fq = sext i16 %i.fp to i32                   ; 2 uses
  %i.fr = add nsw i32 %.sroa.speculated.i70, %i.fq
  %i.fs = mul nsw i32 %i.cd, %i.fq
  %.neg.i71.2 = sdiv i32 %i.fs, -10692
  %i.ft = add nsw i32 %i.fr, %.neg.i71.2
  %i.fu = trunc i32 %i.ft to i16
  store i16 %i.fu, ptr %i.fo, align 2, !tbaa !355
  %i.fv = getelementptr inbounds nuw i8, ptr %.092, i64 6
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !191 ; 2 uses
  %i.fx = lshr i16 %i.fw, 6
  %i.fy = and i16 %i.fx, 63
  %i.fz = zext nneg i16 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !330
  %i.gc = and i16 %i.fw, 63
  %i.gd = zext nneg i16 %i.gc to i64              ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !330
  %i.gg = and i8 %i.gf, 7
  %i.gh = zext i8 %i.gb to i64
  %i.gi = getelementptr inbounds nuw [1024 x i8], ptr %i.a, i64 %i.gh
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.gd
  %i.gk = zext nneg i8 %i.gg to i64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %i.gk ; 2 uses
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !355
  %i.gn = sext i16 %i.gm to i32                   ; 2 uses
  %i.go = add nsw i32 %.sroa.speculated.i70, %i.gn
  %i.gp = mul nsw i32 %i.cd, %i.gn
  %.neg.i71.3 = sdiv i32 %i.gp, -10692
  %i.gq = add nsw i32 %i.go, %.neg.i71.3
  %i.gr = trunc i32 %i.gq to i16
  store i16 %i.gr, ptr %i.gl, align 2, !tbaa !355
  %i.gs = getelementptr inbounds nuw i8, ptr %.092, i64 8 ; 2 uses
  %.not67.3 = icmp eq ptr %i.gs, %i.ca
  br i1 %.not67.3, label %._crit_edge, label %.lr.ph93.new
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN9Stockfish12_GLOBAL__N_125update_correction_historyERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %.11419656.val, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -28
  %i.b = load i16, ptr %i.a, align 4, !tbaa !191  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.d = load i8, ptr %i.c, align 4, !tbaa !171   ; 2 uses
  %i.e = zext i8 %i.d to i64                      ; 5 uses
  %i.f = icmp ugt i8 %i.d, 1
  br i1 %i.f, label %bb.b, label %_ZN9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit35

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.47, i64 noundef %i.e, i64 noundef 2) #37
  unreachable

_ZN9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit35: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.11419656.val, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.i = getelementptr inbounds nuw i8, ptr %.11419656.val, i64 32 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !331
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !213
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !333
  %i.o = and i64 %i.n, %i.j
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.e ; 2 uses
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %2, i32 -1024)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 1024) ; 2 uses
  %i.r = load atomic i16, ptr %i.q monotonic, align 2
  %i.s = sext i16 %i.r to i32                     ; 2 uses
  %i.t = add nsw i32 %.sroa.speculated.i, %i.s
  %i.u = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i, i1 true)
  %i.v = mul nsw i32 %i.u, %i.s
  %.neg.i = sdiv i32 %i.v, -1024
  %i.w = add nsw i32 %i.t, %.neg.i
  %i.x = trunc i32 %i.w to i16
  store atomic i16 %i.x, ptr %i.q monotonic, align 2
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !213
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !334
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !331
  %i.ac = and i64 %i.ab, %i.aa
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  %3 = mul nsw i32 %2, 156
  %4 = sdiv i32 %3, 128
  %.sroa.speculate.load.false.sroa.speculated.i28 = tail call i32 @llvm.smax.i32(i32 %4, i32 -1024)
  %.sroa.speculated.i29 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i28, i32 1024) ; 2 uses
  %5 = load atomic i16, ptr %i.ag monotonic, align 2
  %6 = sext i16 %5 to i32                         ; 2 uses
  %i.ah = add nsw i32 %.sroa.speculated.i29, %6
  %i.ai = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i29, i1 true)
  %i.aj = mul nsw i32 %i.ai, %6
  %.neg.i30 = sdiv i32 %i.aj, -1024
  %i.ak = add nsw i32 %i.ah, %.neg.i30
  %i.al = trunc i32 %i.ak to i16
  store atomic i16 %i.al, ptr %i.ag monotonic, align 2
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !213
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !25
  %i.ap = load i64, ptr %i.i, align 8, !tbaa !331
  %i.aq = and i64 %i.ap, %i.ao
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.aq
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %7 = mul nsw i32 %2, 178
  %8 = sdiv i32 %7, 128
  %.sroa.speculate.load.false.sroa.speculated.i32 = tail call i32 @llvm.smax.i32(i32 %8, i32 -1024)
  %.sroa.speculated.i33 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i32, i32 1024) ; 3 uses
  %i.av = load atomic i16, ptr %i.au monotonic, align 2
  %i.aw = sext i16 %i.av to i32                   ; 2 uses
  %i.ax = add nsw i32 %.sroa.speculated.i33, %i.aw
  %i.ay = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i33, i1 true) ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.aw
  %.neg.i34 = sdiv i32 %i.az, -1024
  %i.ba = add nsw i32 %i.ax, %.neg.i34
  %i.bb = trunc i32 %i.ba to i16
  store atomic i16 %i.bb, ptr %i.au monotonic, align 2
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !213
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !25
  %i.bf = load i64, ptr %i.i, align 8, !tbaa !331
  %i.bg = and i64 %i.bf, %i.be
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 6 ; 2 uses
  %i.bl = load atomic i16, ptr %i.bk monotonic, align 2
  %i.bm = sext i16 %i.bl to i32                   ; 2 uses
  %i.bn = add nsw i32 %.sroa.speculated.i33, %i.bm
  %i.bo = mul nsw i32 %i.ay, %i.bm
  %.neg.i38 = sdiv i32 %i.bo, -1024
  %i.bp = add nsw i32 %i.bn, %.neg.i38
  %i.bq = trunc i32 %i.bp to i16
  store atomic i16 %i.bq, ptr %i.bk monotonic, align 2
  switch i16 %i.b, label %bb.c [
    i16 65, label %bb.d
    i16 0, label %bb.d
  ]

bb.c:                                             ; preds = %_ZN9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit35
  %i.br = and i16 %i.b, 63
  %i.bs = zext nneg i16 %i.br to i64              ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !330
  %i.bv = getelementptr inbounds i8, ptr %1, i64 -96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !251
  %i.bx = zext i8 %i.bu to i64                    ; 2 uses
  %i.by = getelementptr inbounds nuw [128 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.bs ; 2 uses
  %9 = mul nsw i32 %2, 127
  %10 = sdiv i32 %9, 128
  %.sroa.speculate.load.false.sroa.speculated.i39 = tail call i32 @llvm.smax.i32(i32 %10, i32 -1024)
  %.sroa.speculated.i40 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i39, i32 1024) ; 2 uses
  %11 = load i16, ptr %i.bz, align 2, !tbaa !165
  %12 = sext i16 %11 to i32                       ; 2 uses
  %13 = add nsw i32 %.sroa.speculated.i40, %12
  %14 = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i40, i1 true)
  %15 = mul nsw i32 %14, %12
  %.neg.i41 = sdiv i32 %15, -1024
  %16 = add nsw i32 %13, %.neg.i41
  %17 = trunc i32 %16 to i16
  store i16 %17, ptr %i.bz, align 2, !tbaa !165
  %18 = getelementptr inbounds i8, ptr %1, i64 -208
  %19 = load ptr, ptr %18, align 8, !tbaa !251
  %20 = getelementptr inbounds nuw [128 x i8], ptr %19, i64 %i.bx
  %21 = getelementptr inbounds nuw [2 x i8], ptr %20, i64 %i.bs ; 2 uses
  %22 = mul nsw i32 %2, 59
  %23 = sdiv i32 %22, 128
  %.sroa.speculate.load.false.sroa.speculated.i42 = tail call i32 @llvm.smax.i32(i32 %23, i32 -1024)
  %.sroa.speculated.i43 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i42, i32 1024) ; 2 uses
  %i.ca = load i16, ptr %21, align 2, !tbaa !165
  %i.cb = sext i16 %i.ca to i32                   ; 2 uses
  %i.cc = add nsw i32 %.sroa.speculated.i43, %i.cb
  %i.cd = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i43, i1 true)
  %i.ce = mul nsw i32 %i.cd, %i.cb
  %.neg.i44 = sdiv i32 %i.ce, -1024
  %i.cf = add nsw i32 %i.cc, %.neg.i44
  %i.cg = trunc i32 %i.cf to i16
  store i16 %i.cg, ptr %21, align 2, !tbaa !165
  br label %bb.d

bb.d:                                             ; preds = %_ZN9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit35, %_ZN9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit35, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048), i16, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 64 captures(none) dereferenceable(14279296) %2, i16 %3, i32 noundef %4) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.b = load i8, ptr %i.a, align 4, !tbaa !171
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [131072 x i8], ptr %2, i64 %i.c
  %i.e = zext i16 %3 to i64                       ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %4, i32 -7183)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 7183) ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !132
  %i.h = sext i16 %i.g to i32                     ; 2 uses
  %i.i = add nsw i32 %.sroa.speculated.i, %i.h
  %i.j = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i, i1 true)
  %i.k = mul nsw i32 %i.j, %i.h
  %.neg.i = sdiv i32 %i.k, -7183
  %i.l = add nsw i32 %i.i, %.neg.i
  %i.m = trunc i32 %i.l to i16
  store i16 %i.m, ptr %i.f, align 2, !tbaa !132
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !253  ; 2 uses
  %i.p = icmp slt i32 %i.o, 5
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 262144
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [131072 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.e ; 2 uses
  %i.u = mul nsw i32 %4, 805
  %i.v = sdiv i32 %i.u, 1024
  %.sroa.speculate.load.false.sroa.speculated.i16 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 -7183)
  %.sroa.speculated.i17 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i16, i32 7183) ; 2 uses
  %i.w = load i16, ptr %i.t, align 2, !tbaa !132
  %i.x = sext i16 %i.w to i32                     ; 2 uses
  %i.y = add nsw i32 %.sroa.speculated.i17, %i.x
  %i.z = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i17, i1 true)
  %i.aa = mul nsw i32 %i.z, %i.x
  %.neg.i18 = sdiv i32 %i.aa, -7183
  %i.ab = add nsw i32 %i.y, %.neg.i18
  %i.ac = trunc i32 %i.ab to i16
  store i16 %i.ac, ptr %i.t, align 2, !tbaa !132
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = lshr i16 %3, 6
  %i.ae = and i16 %i.ad, 63
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !330
  %i.ai = trunc i16 %3 to i8
  %i.aj = and i8 %i.ai, 63                        ; 2 uses
  %i.ak = mul nsw i32 %4, 896
  %i.al = sdiv i32 %i.ak, 1024
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %1, i8 noundef zeroext %i.ah, i8 noundef zeroext %i.aj, i32 noundef %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 11419656
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !213
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !333
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !337
  %i.au = and i64 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !162
  %i.ax = getelementptr inbounds nuw [2048 x i8], ptr %i.aw, i64 %i.au
  %i.ay = load i8, ptr %i.ag, align 1, !tbaa !330
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [128 x i8], ptr %i.ax, i64 %i.az
  %i.bb = zext nneg i8 %i.aj to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = icmp sgt i32 %4, 0
  %i.be = select i1 %i.bd, i32 905, i32 505
  %i.bf = mul nsw i32 %i.be, %4
  %i.bg = sdiv i32 %i.bf, 1024
  %.sroa.speculate.load.false.sroa.speculated.i19 = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 -8192)
  %.sroa.speculated.i20 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i19, i32 8192) ; 2 uses
  %i.bh = load atomic i16, ptr %i.bc monotonic, align 2
  %i.bi = sext i16 %i.bh to i32                   ; 2 uses
  %i.bj = add nsw i32 %.sroa.speculated.i20, %i.bi
  %i.bk = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i20, i1 true)
  %i.bl = mul nsw i32 %i.bk, %i.bi
  %.neg.i21 = sdiv i32 %i.bl, -8192
  %i.bm = add nsw i32 %i.bj, %.neg.i21
  %i.bn = trunc i32 %i.bm to i16
  store atomic i16 %i.bn, ptr %i.bc monotonic, align 2
  ret void
}

declare noundef zeroext i1 @_ZNK9Stockfish8Position12pseudo_legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #6

declare noundef i32 @_ZN9Stockfish10Tablebases9probe_wdlERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiibENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !780, !nonnull !48, !align !49
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  %i.d = load i8, ptr %i.c, align 2, !tbaa !325, !range !221, !noundef !48
  %i.e = xor i8 %i.d, 1
  %narrow.neg = mul nuw nsw i8 %i.e, -23
  %narrow3 = add nsw i8 %narrow.neg, 76
  %i.f = zext nneg i8 %narrow3 to i32             ; 2 uses
  %i.g = mul nsw i32 %1, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !782, !nonnull !48
  %i.j = load i8, ptr %i.i, align 1, !tbaa !313, !range !221, !noundef !48
  %i.k = zext nneg i8 %i.j to i32
  %i.l = mul nuw nsw i32 %i.k, 2474
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !783, !nonnull !48
  %i.o = load i8, ptr %i.n, align 1, !tbaa !313, !range !221, !noundef !48
  %i.p = zext nneg i8 %i.o to i32
  %i.q = mul nuw nsw i32 %i.p, 331
  %i.r = add nuw nsw i32 %i.q, %i.l
  %i.s = mul nuw nsw i32 %i.r, %i.f
  %i.t = lshr i32 %i.s, 10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !784, !nonnull !48, !align !785
  %i.w = load i32, ptr %i.v, align 4, !tbaa !138
  %i.x = tail call i32 @llvm.abs.i32(i32 %i.w, i1 true)
  %i.y = udiv i32 %i.x, 174665
  %i.z = add i32 %i.y, %i.g
  %i.aa = sub i32 %i.z, %i.t
  ret i32 %i.aa
}

declare void @_ZN9Stockfish10MovePicker16skip_quiet_movesEv(ptr noundef nonnull align 8 dereferenceable(2164)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN9Stockfish12_GLOBAL__N_112is_shufflingENS_4MoveEPNS_6Search5StackERKNS_8PositionE(i16 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %2) unnamed_addr #26 {
bb.a:
  %i.a = and i16 %0, 63
  %i.b = zext nneg i16 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !330
  %i.e = icmp ne i8 %i.d, 0
  %.not.i.i = icmp ult i16 %0, -16384
  %or.cond.not.i.i = and i1 %.not.i.i, %i.e
  %i.f = icmp slt i16 %0, -16384
  %spec.select.i.i = or i1 %i.f, %or.cond.not.i.i
  %i.g = and i16 %0, 12288
  %i.h = icmp eq i16 %i.g, 12288
  %i.i = or i1 %i.h, %spec.select.i.i
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !213  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !312
  %i.n = icmp slt i32 %i.m, 10
  br i1 %i.n, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !786
  %i.q = icmp slt i32 %i.p, 7
  br i1 %i.q, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !253
  %i.t = icmp slt i32 %i.s, 20
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = lshr i16 %0, 6
  %i.v = getelementptr inbounds i8, ptr %1, i64 -84
  %i.w = load i16, ptr %i.v, align 4, !tbaa !234  ; 2 uses
  %i.x = xor i16 %i.w, %i.u
  %i.y = and i16 %i.x, 63
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = lshr i16 %i.w, 6
  %i.ab = getelementptr inbounds i8, ptr %1, i64 -196
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !234
  %i.ad = xor i16 %i.ac, %i.aa
  %i.ae = and i16 %i.ad, 63
  %i.af = icmp eq i16 %i.ae, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.e ], [ %i.af, %bb.f ]
  ret i1 %.0
end_hunk_1
begin_hunk_2_@"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEEvT_SO_SO_T0_SP_T1_SP_T2_":bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.al, %tailrecurse ]
  %.tr94.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr96.lcssa = phi i64 [ %3, %bb.a ], [ %i.ak, %tailrecurse ]
  %.tr97.lcssa = phi i64 [ %4, %bb.a ], [ %i.am, %tailrecurse ]
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEEvT_SO_SO_T0_SP_T1_T2_"(ptr %.tr.lcssa, ptr %.tr94.lcssa, ptr %2, i64 noundef %.tr96.lcssa, i64 noundef %.tr97.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr97106 = phi i64 [ %4, %.lr.ph ], [ %i.am, %tailrecurse ] ; 3 uses
  %.tr96105 = phi i64 [ %3, %.lr.ph ], [ %i.ak, %tailrecurse ] ; 3 uses
  %.tr94104 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr103 = phi ptr [ %0, %.lr.ph ], [ %i.al, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr96105, %.tr97106
  %i.c = ptrtoint ptr %.tr94104 to i64            ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit71

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr96105, 2                    ; 2 uses
  %i.e = getelementptr inbounds [72 x i8], ptr %.tr103, i64 %i.d ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 36
  %.val = load i32, ptr %i.f, align 4
  %i.g = sub i64 %i.a, %i.c                       ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.i = udiv exact i64 %i.g, 72
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i
  %.07.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %.sroa.02.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr94104, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %i.j = lshr i64 %.07.i, 1                       ; 3 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %.sroa.02.06.i, i64 %i.j ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 36
  %.val.i.i = load i32, ptr %i.l, align 4, !tbaa !188
  %i.m = icmp sgt i32 %.val.i.i, %.val            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.07.i, %i.o
  %.sroa.02.1.i = select i1 %i.m, ptr %i.n, ptr %.sroa.02.06.i ; 3 uses
  %.1.i = select i1 %i.m, i64 %i.p, i64 %i.j      ; 2 uses
  %i.q = icmp sgt i64 %.1.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit.loopexit", !llvm.loop !830

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.02.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit.loopexit" ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.02.0.lcssa.i = phi ptr [ %.sroa.02.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit.loopexit" ], [ %.tr94104, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.r = sub i64 %.pre-phi, %i.c
  %i.s = sdiv exact i64 %i.r, 72
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit71: ; preds = %bb.b
  %i.t = sdiv i64 %.tr97106, 2                    ; 2 uses
  %i.u = getelementptr inbounds [72 x i8], ptr %.tr94104, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 36
  %.val67 = load i32, ptr %i.v, align 4
  %i.w = ptrtoint ptr %.tr103 to i64              ; 3 uses
  %i.x = sub i64 %i.c, %i.w                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i73, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i73: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit71
  %i.z = udiv exact i64 %i.x, 72
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i74

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i74: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i74, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i73
  %.07.i75 = phi i64 [ %.1.i80, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i74 ], [ %i.z, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i73 ] ; 2 uses
  %.sroa.02.06.i76 = phi ptr [ %.sroa.02.1.i79, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i74 ], [ %.tr103, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i73 ] ; 2 uses
  %i.aa = lshr i64 %.07.i75, 1                    ; 3 uses
  %i.ab = getelementptr inbounds nuw [72 x i8], ptr %.sroa.02.06.i76, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 36
  %.val2.i.i = load i32, ptr %i.ac, align 4, !tbaa !188
  %i.ad = icmp sgt i32 %.val67, %.val2.i.i        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.af = xor i64 %i.aa, -1
  %i.ag = add nsw i64 %.07.i75, %i.af
  %.sroa.02.1.i79 = select i1 %i.ad, ptr %.sroa.02.06.i76, ptr %i.ae ; 3 uses
  %.1.i80 = select i1 %i.ad, i64 %i.aa, i64 %i.ag ; 2 uses
  %i.ah = icmp sgt i64 %.1.i80, 0
  br i1 %i.ah, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i74, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit.loopexit", !llvm.loop !831

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i74
  %.pre112 = ptrtoint ptr %.sroa.02.1.i79 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit71
  %.pre-phi113 = phi i64 [ %.pre112, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit.loopexit" ], [ %i.w, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit71 ]
  %.sroa.02.0.lcssa.i72 = phi ptr [ %.sroa.02.1.i79, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit.loopexit" ], [ %.tr103, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit71 ]
  %i.ai = sub i64 %.pre-phi113, %i.w
  %i.aj = sdiv exact i64 %i.ai, 72
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit"
  %.sroa.083.0 = phi ptr [ %i.e, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit" ], [ %.sroa.02.0.lcssa.i72, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.02.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit" ], [ %i.u, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit" ] ; 3 uses
  %.062 = phi i64 [ %i.s, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit" ], [ %i.t, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit" ] ; 3 uses
  %.0 = phi i64 [ %i.d, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit" ], [ %i.aj, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET_SO_SO_RKT0_T1_.exit" ] ; 2 uses
  %i.ak = sub nsw i64 %.tr96105, %.0              ; 4 uses
  %i.al = tail call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_lET_SA_SA_SA_T1_SB_T0_SB_(ptr %.sroa.083.0, ptr %.tr94104, ptr %.sroa.0.0, i64 noundef %i.ak, i64 noundef %.062, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEEvT_SO_SO_T0_SP_T1_SP_T2_"(ptr %.tr103, ptr %.sroa.083.0, ptr %i.al, i64 noundef %.0, i64 noundef %.062, ptr noundef %5, i64 noundef %6)
  %i.am = sub nsw i64 %.tr97106, %.062            ; 3 uses
  %.not = icmp sgt i64 %i.ak, %6
  %.not66 = icmp sgt i64 %i.am, %6
  %or.cond = and i1 %.not, %.not66
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #15

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_search.cpp() #0 section ".text.startup" {
bb.a:
  tail call void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind nonnull writable sret(%"class.std::set") align 8 @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3setImSt4lessImESaImEED2Ev, ptr nonnull @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE, ptr nonnull @__dso_handle) #33 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x ptr> @llvm.masked.load.v5p0.p0(ptr captures(none), <5 x i1>, <5 x ptr>) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v16i32.v16p0(<16 x i32>, <16 x ptr>, <16 x i1>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr>, <16 x i1>, <16 x i32>) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr>, <8 x i1>, <8 x ptr>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x ptr> @llvm.masked.load.v8p0.p0(ptr captures(none), <8 x i1>, <8 x ptr>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #25 = { mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #27 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #33 = { nounwind }
attributes #34 = { cold noreturn nounwind }
attributes #35 = { nounwind willreturn memory(read) }
attributes #36 = { builtin nounwind allocsize(0) }
attributes #37 = { noreturn nounwind }
attributes #38 = { builtin nounwind }
attributes #39 = { nounwind allocsize(0) }
attributes #40 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}
!llvm.errno.tbaa = !{!20}

!0 = !{i64 16, !"_ZTSN9Stockfish6Search13SearchManagerE"}
!1 = !{i64 32, !"_ZTSMN9Stockfish6Search13SearchManagerEFvRNS0_6WorkerEE.virtual"}
!2 = !{i64 16, !"_ZTSN9Stockfish6Search14ISearchManagerE"}
!3 = !{i64 32, !"_ZTSMN9Stockfish6Search14ISearchManagerEFvRNS0_6WorkerEE.virtual"}
!4 = !{i64 16, !"_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNKS3_28LazyNumaReplicatedSystemWideINS3_4Eval4NNUE8NetworksEE14ensure_presentEmEUlvE_EEvmOT_EUlvE_EEEEEE"}
!5 = !{i64 32, !"_ZTSMNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNKS3_28LazyNumaReplicatedSystemWideINS3_4Eval4NNUE8NetworksEE14ensure_presentEmEUlvE_EEvmOT_EUlvE_EEEEEEFvvE.virtual"}
!6 = !{i64 16, !"_ZTSNSt6thread6_StateE"}
!7 = !{i64 32, !"_ZTSMNSt6thread6_StateEFvvE.virtual"}
!8 = !{i64 16, !"_ZTSN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE"}
!9 = !{i64 32, !"_ZTSMN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEEDoFvbE.virtual"}
!10 = !{i64 40, !"_ZTSMN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEEKDoFRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE.virtual"}
!11 = !{i64 16, !"_ZTSN9Stockfish3shm6detail16SharedMemoryBaseE"}
!12 = !{i64 32, !"_ZTSMN9Stockfish3shm6detail16SharedMemoryBaseEDoFvbE.virtual"}
!13 = !{i64 40, !"_ZTSMN9Stockfish3shm6detail16SharedMemoryBaseEKDoFRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE.virtual"}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 1, !"ThinLTO", i32 0}
!18 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!19 = !{!"Ubuntu clang version 23.0.0 (++20260706082120+bf74249b5ecd-1~exp1~20260706082130.1707)"}
!20 = !{!21, !22, i64 0}
!21 = !{!"__libc_errno", !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C++ TBAA"}
!25 = !{!26, !26, i64 0}
!26 = !{!"long", !23, i64 0}
!27 = !{!28, !30, i64 0}
!28 = !{!"_ZTSSt15_Rb_tree_header", !29, i64 0, !26, i64 32}
!29 = !{!"_ZTSSt18_Rb_tree_node_base", !30, i64 0, !31, i64 8, !31, i64 16, !31, i64 24}
!30 = !{!"_ZTSSt14_Rb_tree_color", !23, i64 0}
!31 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !32, i64 0}
!32 = !{!"any pointer", !23, i64 0}
!33 = !{!28, !31, i64 8}
!34 = !{!28, !31, i64 16}
!35 = !{!28, !31, i64 24}
!36 = !{!28, !26, i64 32}
!37 = !{!31, !31, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = !{!42, !46, i64 24}
!42 = !{!"_ZTSN9Stockfish6Search11SharedStateE", !43, i64 0, !44, i64 8, !45, i64 16, !46, i64 24, !47, i64 32}
!43 = !{!"p1 _ZTSN9Stockfish10OptionsMapE", !32, i64 0}
!44 = !{!"p1 _ZTSN9Stockfish10ThreadPoolE", !32, i64 0}
!45 = !{!"p1 _ZTSN9Stockfish18TranspositionTableE", !32, i64 0}
!46 = !{!"p1 _ZTSSt3mapImN9Stockfish15SharedHistoriesESt4lessImESaISt4pairIKmS1_EEE", !32, i64 0}
!47 = !{!"p1 _ZTSN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEE", !32, i64 0}
!48 = !{}
!49 = !{i64 8}
!50 = distinct !{!50, !39}
!51 = !{!52, !52, i64 0}
!52 = !{!"p1 _ZTSN9Stockfish15SharedHistoriesE", !32, i64 0}
!53 = !{!54, !26, i64 104}
!54 = !{!"_ZTSN9Stockfish6Search10LimitsTypeE", !55, i64 0, !23, i64 24, !23, i64 40, !26, i64 56, !26, i64 64, !26, i64 72, !22, i64 80, !22, i64 84, !22, i64 88, !22, i64 92, !22, i64 96, !26, i64 104, !60, i64 112}
!55 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !56, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0}
!60 = !{!"bool", !23, i64 0}
!61 = !{!54, !60, i64 112}
!62 = !{!63, !26, i64 384}
!63 = !{!"_ZTSN9Stockfish9ValueListINS_11DirtyThreatELm96EEE", !23, i64 0, !26, i64 384}
!64 = !{!65, !26, i64 11421120}
!65 = !{!"_ZTSN9Stockfish6Search6WorkerE", !66, i64 0, !68, i64 262144, !70, i64 917504, !23, i64 933888, !72, i64 9322496, !74, i64 11419648, !52, i64 11419656, !54, i64 11419664, !26, i64 11419784, !26, i64 11419792, !76, i64 11419800, !76, i64 11419808, !76, i64 11419816, !22, i64 11419824, !22, i64 11419828, !23, i64 11419832, !78, i64 11419840, !88, i64 11420888, !89, i64 11421080, !22, i64 11421104, !22, i64 11421108, !22, i64 11421112, !26, i64 11421120, !26, i64 11421128, !26, i64 11421136, !94, i64 11421144, !95, i64 11421152, !96, i64 11422176, !103, i64 11422184, !43, i64 11422200, !44, i64 11422208, !45, i64 11422216, !47, i64 11422224, !104, i64 11422272, !107, i64 13951616}
!66 = !{!"_ZTSN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEE", !67, i64 0}
!67 = !{!"_ZTSSt5arrayIN9Stockfish10MultiArrayINS0_10StatsEntryIsLi7183ELb0EEELm65536EJEEELm2EE", !23, i64 0}
!68 = !{!"_ZTSN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm5EJLm65536EEEE", !69, i64 0}
!69 = !{!"_ZTSSt5arrayIN9Stockfish10MultiArrayINS0_10StatsEntryIsLi7183ELb0EEELm65536EJEEELm5EE", !23, i64 0}
!70 = !{!"_ZTSN9Stockfish10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEEE", !71, i64 0}
!71 = !{!"_ZTSSt5arrayIN9Stockfish10MultiArrayINS0_10StatsEntryIsLi10692ELb0EEELm64EJLm8EEEELm16EE", !23, i64 0}
!72 = !{!"_ZTSN9Stockfish10MultiArrayINS0_INS_10StatsEntryIsLi1024ELb0EEELm16EJLm64EEEELm16EJLm64EEEE", !73, i64 0}
!73 = !{!"_ZTSSt5arrayIN9Stockfish10MultiArrayINS1_INS0_10StatsEntryIsLi1024ELb0EEELm16EJLm64EEEELm64EJEEELm16EE", !23, i64 0}
!74 = !{!"_ZTSN9Stockfish10StatsEntryIsLi8192ELb0EEE", !75, i64 0}
!75 = !{!"short", !23, i64 0}
!76 = !{!"_ZTSSt6atomicImE", !77, i64 0}
!77 = !{!"_ZTSSt13__atomic_baseImE", !26, i64 0}
!78 = !{!"_ZTSN9Stockfish8PositionE", !79, i64 0, !80, i64 64, !81, i64 128, !23, i64 144, !23, i64 208, !23, i64 464, !23, i64 480, !82, i64 608, !22, i64 616, !83, i64 620, !60, i64 621, !84, i64 622, !87, i64 632}
!79 = !{!"_ZTSSt5arrayIN9Stockfish5PieceELm64EE", !23, i64 0}
!80 = !{!"_ZTSSt5arrayImLm8EE", !23, i64 0}
!81 = !{!"_ZTSSt5arrayImLm2EE", !23, i64 0}
!82 = !{!"p1 _ZTSN9Stockfish9StateInfoE", !32, i64 0}
!83 = !{!"_ZTSN9Stockfish5ColorE", !23, i64 0}
!84 = !{!"_ZTSN9Stockfish10DirtyPieceE", !85, i64 0, !86, i64 1, !86, i64 2, !86, i64 3, !86, i64 4, !85, i64 5, !85, i64 6}
!85 = !{!"_ZTSN9Stockfish5PieceE", !23, i64 0}
!86 = !{!"_ZTSN9Stockfish6SquareE", !23, i64 0}
!87 = !{!"_ZTSN9Stockfish12DirtyThreatsE", !63, i64 0, !83, i64 392, !86, i64 393, !86, i64 394, !26, i64 400, !26, i64 408}
!88 = !{!"_ZTSN9Stockfish9StateInfoE", !26, i64 0, !26, i64 8, !26, i64 16, !23, i64 24, !23, i64 40, !22, i64 48, !22, i64 52, !22, i64 56, !86, i64 60, !26, i64 64, !26, i64 72, !82, i64 80, !23, i64 88, !23, i64 104, !23, i64 120, !85, i64 184, !22, i64 188}
!89 = !{!"_ZTSSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE", !90, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE", !91, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE12_Vector_implE", !92, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!93 = !{!"p1 _ZTSN9Stockfish6Search8RootMoveE", !32, i64 0}
!94 = !{!"_ZTSN9Stockfish25NumaReplicatedAccessTokenE", !26, i64 0}
!95 = !{!"_ZTSSt5arrayIiLm256EE", !23, i64 0}
!96 = !{!"_ZTSSt10unique_ptrIN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_EE", !97, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_dataIN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_ELb1ELb1EE", !98, i64 0}
!98 = !{!"_ZTSSt15__uniq_ptr_implIN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_EE", !99, i64 0}
!99 = !{!"_ZTSSt5tupleIJPN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_EEE", !100, i64 0}
!100 = !{!"_ZTSSt11_Tuple_implILm0EJPN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_EEE", !101, i64 0}
!101 = !{!"_ZTSSt10_Head_baseILm0EPN9Stockfish6Search14ISearchManagerELb0EE", !102, i64 0}
!102 = !{!"p1 _ZTSN9Stockfish6Search14ISearchManagerE", !32, i64 0}
!103 = !{!"_ZTSN9Stockfish10Tablebases6ConfigE", !22, i64 0, !60, i64 4, !60, i64 5, !22, i64 8}
!104 = !{!"_ZTSN9Stockfish4Eval4NNUE16AccumulatorStackE", !105, i64 0, !106, i64 1217216, !26, i64 2529280}
!105 = !{!"_ZTSSt5arrayIN9Stockfish4Eval4NNUE16AccumulatorStateINS2_8Features11HalfKAv2_hmEEELm247EE", !23, i64 0}
!106 = !{!"_ZTSSt5arrayIN9Stockfish4Eval4NNUE16AccumulatorStateINS2_8Features11FullThreatsEEELm247EE", !23, i64 0}
!107 = !{!"_ZTSN9Stockfish4Eval4NNUE17AccumulatorCachesE", !108, i64 0, !110, i64 278528}
!108 = !{!"_ZTSN9Stockfish4Eval4NNUE17AccumulatorCaches5CacheILj1024EEE", !109, i64 0}
!109 = !{!"_ZTSSt5arrayIS_IN9Stockfish4Eval4NNUE17AccumulatorCaches5CacheILj1024EE5EntryELm2EELm64EE", !23, i64 0}
!110 = !{!"_ZTSN9Stockfish4Eval4NNUE17AccumulatorCaches5CacheILj128EEE", !111, i64 0}
!111 = !{!"_ZTSSt5arrayIS_IN9Stockfish4Eval4NNUE17AccumulatorCaches5CacheILj128EE5EntryELm2EELm64EE", !23, i64 0}
!112 = !{!65, !26, i64 11421128}
!113 = !{!65, !26, i64 11421136}
!114 = !{!102, !102, i64 0}
!115 = !{!103, !22, i64 0}
!116 = !{!103, !60, i64 4}
!117 = !{!103, !60, i64 5}
!118 = !{!103, !22, i64 8}
!119 = !{!42, !47, i64 32}
!120 = !{!32, !32, i64 0}
!121 = !{!104, !26, i64 2529280}
!122 = !{!123, !124, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE17_Vector_impl_dataE", !124, i64 0, !124, i64 8, !124, i64 16}
!124 = !{!"p1 _ZTSN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEE", !32, i64 0}
!125 = !{!126, !23, i64 152}
!126 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEEE", !23, i64 0, !23, i64 152}
!127 = !{!128, !128, i64 0}
!128 = !{!"p1 _ZTSN9Stockfish4Eval4NNUE8NetworksE", !32, i64 0}
!129 = !{i64 0, i64 2048, !130}
!130 = !{!23, !23, i64 0}
!131 = !{i64 0, i64 256, !130}
!132 = !{!133, !75, i64 0}
!133 = !{!"_ZTSN9Stockfish10StatsEntryIsLi7183ELb0EEE", !75, i64 0}
!134 = distinct !{!134, !135, !136}
!135 = !{!"llvm.loop.isvectorized", i32 1}
!136 = !{!"llvm.loop.unroll.runtime.disable"}
!137 = distinct !{!137, !135, !136}
!138 = !{!22, !22, i64 0}
!139 = !{!65, !52, i64 11419656}
!140 = !{!141, !26, i64 0}
!141 = !{!"_ZTSN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EEE", !26, i64 0, !142, i64 8}
!142 = !{!"_ZTSSt10unique_ptrIA_N9Stockfish10MultiArrayINS0_16CorrectionBundleIsLi1024EEELm2EJEEENS0_21LargePageArrayDeleterIS4_EEE", !143, i64 0}
!143 = !{!"_ZTSSt15__uniq_ptr_dataIN9Stockfish10MultiArrayINS0_16CorrectionBundleIsLi1024EEELm2EJEEENS0_21LargePageArrayDeleterIS4_EELb1ELb1EE", !144, i64 0}
!144 = !{!"_ZTSSt15__uniq_ptr_implIN9Stockfish10MultiArrayINS0_16CorrectionBundleIsLi1024EEELm2EJEEENS0_21LargePageArrayDeleterIS4_EEE", !145, i64 0}
!145 = !{!"_ZTSSt5tupleIJPN9Stockfish10MultiArrayINS0_16CorrectionBundleIsLi1024EEELm2EJEEENS0_21LargePageArrayDeleterIS4_EEEE", !146, i64 0}
!146 = !{!"_ZTSSt11_Tuple_implILm0EJPN9Stockfish10MultiArrayINS0_16CorrectionBundleIsLi1024EEELm2EJEEENS0_21LargePageArrayDeleterIS4_EEEE", !147, i64 0}
!147 = !{!"_ZTSSt10_Head_baseILm0EPN9Stockfish10MultiArrayINS0_16CorrectionBundleIsLi1024EEELm2EJEEELb0EE", !148, i64 0}
!148 = !{!"p1 _ZTSN9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEE", !32, i64 0}
!149 = !{!148, !148, i64 0}
!150 = distinct !{!150, !151}
!151 = !{!"llvm.loop.unroll.disable"}
!152 = distinct !{!152, !39}
!153 = !{!154, !26, i64 0}
end_hunk_2
