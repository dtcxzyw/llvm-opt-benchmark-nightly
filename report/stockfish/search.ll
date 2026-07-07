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
