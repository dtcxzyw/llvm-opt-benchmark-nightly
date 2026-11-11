Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/graph_fusion_basic?download=true
inline.NumInlined: 988
inline.NumDeleted: 432
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060516ModelFusionBasic9fuseGraphERNS_3PtrINS1_5GraphEEE:bb.a

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit443.thread699.sink.split: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit443.thread699.sink.split.sink.split, %bb.bf, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i480, %bb.bp, %_ZNK2cv3dnn14dnn5_v2026060516ModelFusionBasic8getLayerINS1_16NaryEltwiseLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit482, %bb.bh, %bb.bj, %_ZNK2cv3dnn14dnn5_v2026060516ModelFusionBasic8getLayerINS1_13Reshape2LayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit.1, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i490.1, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit443.thread699

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit443.thread699: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit443.thread699.sink.split, %bb.az, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i474.1, %_ZNK2cv3dnn14dnn5_v2026060516ModelFusionBasic8getLayerINS1_16NaryEltwiseLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit.1, %bb.bb, %bb.bd, %.thread646, %.thread658, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit443
  %i.wx = load ptr, ptr %i.bu, align 8, !tbaa !104 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !104 ; 2 uses
  %.not7161241 = icmp eq ptr %i.wx, %i.wz
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !50 ; 6 uses
  br i1 %.not7161241, label %._crit_edge1244, label %.lr.ph1243

.lr.ph1243:                                       ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit443.thread699
  %i.xa = load ptr, ptr %3, align 8, !tbaa !51
  %i.xb = ptrtoint ptr %.pre to i64
  %i.xc = ptrtoint ptr %i.xa to i64
  %i.xd = sub i64 %i.xb, %i.xc
  %i.xe = lshr exact i64 %i.xd, 4
  %i.xf = trunc i64 %i.xe to i32
  br label %bb.fc

._crit_edge1244:                                  ; preds = %bb.fc, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit443.thread699
  %i.xg = load ptr, ptr %i.be, align 8, !tbaa !105
  %.not.i531 = icmp eq ptr %.pre, %i.xg
  br i1 %.not.i531, label %bb.fb, label %bb.ex

bb.ex:                                            ; preds = %._crit_edge1244
  %i.xh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !103 ; 2 uses
  %i.xj = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !102
  store <2 x ptr> %i.xj, ptr %.pre, align 8, !tbaa !102
  %.not.i.i.i.i.i532 = icmp eq ptr %i.xi, null
  br i1 %.not.i.i.i.i.i532, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 8 ; 3 uses
  %i.xl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq i8 %i.xl, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.xm = load i32, ptr %i.xk, align 4, !tbaa !52
  %i.xn = add nsw i32 %i.xm, 1
  store i32 %i.xn, ptr %i.xk, align 4, !tbaa !52
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i

bb.fa:                                            ; preds = %bb.ey
  %i.xo = atomicrmw volatile add ptr %i.xk, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !50
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i

_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i: ; preds = %bb.fa, %bb.ez, %bb.ex
  %i.xp = phi ptr [ %.pre, %bb.ex ], [ %.pre, %bb.ez ], [ %.pre.i, %bb.fa ]
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  store ptr %i.xq, ptr %i.aj, align 8, !tbaa !50
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit

bb.fb:                                            ; preds = %._crit_edge1244
  invoke void @_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %.pre, ptr noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit.split-lp724.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fc:                                            ; preds = %.lr.ph1243, %bb.fc
  %.sroa.0557.01242 = phi ptr [ %i.wx, %.lr.ph1243 ], [ %i.xt, %bb.fc ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.sroa.0557.01242, align 4, !tbaa !52
  %i.xr = sext i32 %.sroa.0.0.copyload to i64
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %i.xr
  store i32 %i.xf, ptr %i.xs, align 4, !tbaa !52
  %i.xt = getelementptr inbounds nuw i8, ptr %.sroa.0557.01242, i64 4 ; 2 uses
  %.not716 = icmp eq ptr %i.xt, %i.wz
  br i1 %.not716, label %._crit_edge1244, label %bb.fc

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit: ; preds = %bb.ew, %._crit_edge, %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i, %bb.fb
  %.4 = phi i1 [ %.3, %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i ], [ %.3, %bb.fb ], [ true, %._crit_edge ], [ true, %bb.ew ] ; 2 uses
  %i.xu = add nuw i64 %.02641245, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.xu, %i.v
  br i1 %exitcond.not, label %._crit_edge1248, label %bb.e, !llvm.loop !154

._crit_edge1248:                                  ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit
  %.pre1728.pre = load ptr, ptr %3, align 8, !tbaa !51 ; 4 uses
  br i1 %.4, label %bb.fd, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit

bb.fd:                                            ; preds = %._crit_edge1248
  %i.xv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !50 ; 3 uses
  %i.xx = ptrtoint ptr %i.xw to i64
  %i.xy = ptrtoint ptr %.pre1728.pre to i64
  %i.xz = sub i64 %i.xx, %i.xy
  %i.ya = ashr exact i64 %i.xz, 4
  %.not1257 = icmp eq ptr %i.xw, %.pre1728.pre
  br i1 %.not1257, label %._crit_edge1254.thread, label %.lr.ph1253

.lr.ph1253:                                       ; preds = %bb.fd, %bb.fq
  %.01251 = phi i64 [ %.1, %bb.fq ], [ 0, %bb.fd ] ; 4 uses
  %.02211250 = phi i64 [ %i.zh, %bb.fq ], [ 0, %bb.fd ] ; 3 uses
  %i.yb = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.yc = getelementptr inbounds nuw [16 x i8], ptr %i.yb, i64 %.02211250 ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !55 ; 2 uses
  %i.ye = icmp eq ptr %i.yd, null
  br i1 %i.ye, label %bb.fq, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph1253
  %i.yf = icmp ult i64 %.01251, %.02211250
  br i1 %i.yf, label %bb.ff, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit

bb.ff:                                            ; preds = %bb.fe
  %i.yg = getelementptr inbounds nuw [16 x i8], ptr %i.yb, i64 %.01251 ; 2 uses
  store ptr %i.yd, ptr %i.yg, align 8, !tbaa !55
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 8 ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !103 ; 4 uses
  %i.yk = load ptr, ptr %i.yh, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i.i534 = icmp eq ptr %i.yj, %i.yk
  br i1 %.not.i.i.i.i534, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %.not7.i.i.i.i = icmp eq ptr %i.yj, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yj, i64 8 ; 3 uses
  %i.ym = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i535 = icmp eq i8 %i.ym, 0
  br i1 %.not.i.i.i.i.i535, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.yn = load i32, ptr %i.yl, align 4, !tbaa !52
  %i.yo = add nsw i32 %i.yn, 1
  store i32 %i.yo, ptr %i.yl, align 4, !tbaa !52
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.fj:                                            ; preds = %bb.fh
  %i.yp = atomicrmw volatile add ptr %i.yl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.yh, align 8, !tbaa !103
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.fj, %bb.fi, %bb.fg
  %i.yq = phi ptr [ %i.yk, %bb.fg ], [ %i.yk, %bb.fi ], [ %.pr.pre.i.i.i.i, %bb.fj ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.yq, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8 ; 4 uses
  %i.ys = load atomic i64, ptr %i.yr acquire, align 8 ; 2 uses
  %i.yt = icmp eq i64 %i.ys, 4294967297
  %i.yu = trunc i64 %i.ys to i32                  ; 2 uses
  br i1 %i.yt, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  store i32 0, ptr %i.yr, align 8, !tbaa !107
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yq, i64 12
  store i32 0, ptr %i.yv, align 4, !tbaa !108
  %i.yw = load ptr, ptr %i.yq, align 8, !tbaa !43
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %i.yy = load ptr, ptr %i.yx, align 8
  call void %i.yy(ptr noundef nonnull align 8 dereferenceable(16) %i.yq) #21, !inline_history !0
  %i.yz = load ptr, ptr %i.yq, align 8, !tbaa !43
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 24
  %i.zb = load ptr, ptr %i.za, align 8
  call void %i.zb(ptr noundef nonnull align 8 dereferenceable(16) %i.yq) #21, !inline_history !0
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.fm:                                            ; preds = %bb.fk
  %i.zc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i9.i.i.i.i = icmp eq i8 %i.zc, 0
  br i1 %.not.i9.i.i.i.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.zd = add nsw i32 %i.yu, -1
  store i32 %i.zd, ptr %i.yr, align 8, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.fo:                                            ; preds = %bb.fm
  %i.ze = atomicrmw volatile add ptr %i.yr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.fo, %bb.fn
  %.0.i.i.i.i.i.i = phi i32 [ %i.yu, %bb.fn ], [ %i.ze, %bb.fo ]
  %i.zf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.zf, label %bb.fp, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !109

bb.fp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yq) #21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.fp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.fl, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.yj, ptr %i.yh, align 8, !tbaa !103
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit

_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %bb.ff, %bb.fe
  %i.zg = add i64 %.01251, 1
  br label %bb.fq

bb.fq:                                            ; preds = %.lr.ph1253, %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit
  %.1 = phi i64 [ %.01251, %.lr.ph1253 ], [ %i.zg, %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit ] ; 4 uses
  %i.zh = add nuw i64 %.02211250, 1               ; 2 uses
  %exitcond1724.not = icmp eq i64 %i.zh, %i.ya
  br i1 %exitcond1724.not, label %._crit_edge1254, label %.lr.ph1253, !llvm.loop !155

._crit_edge1254:                                  ; preds = %bb.fq
  %.pre1725 = load ptr, ptr %i.xv, align 8, !tbaa !50 ; 6 uses
  %.pre1726 = load ptr, ptr %3, align 8, !tbaa !51 ; 6 uses
  %.pre1730 = ptrtoint ptr %.pre1725 to i64       ; 2 uses
  %.pre1731 = ptrtoint ptr %.pre1726 to i64       ; 2 uses
  %.pre1733 = sub i64 %.pre1730, %.pre1731        ; 2 uses
  %.pre1735 = ashr exact i64 %.pre1733, 4         ; 7 uses
  %i.zi = icmp ugt i64 %.1, %.pre1735
  br i1 %i.zi, label %bb.fr, label %._crit_edge1254.thread

bb.fr:                                            ; preds = %._crit_edge1254
  %i.zj = sub nuw i64 %.1, %.pre1735              ; 6 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !105
  %i.zm = ptrtoint ptr %i.zl to i64
  %i.zn = sub i64 %i.zm, %.pre1730
  %i.zo = ashr exact i64 %i.zn, 4                 ; 2 uses
  %i.zp = icmp ult i64 %.pre1735, 576460752303423488
  call void @llvm.assume(i1 %i.zp)
  %i.zq = xor i64 %.pre1735, 576460752303423487   ; 2 uses
  %i.zr = icmp ule i64 %i.zo, %i.zq
  call void @llvm.assume(i1 %i.zr)
  %.not28.i = icmp ult i64 %i.zo, %i.zj
  br i1 %.not28.i, label %bb.fs, label %_ZSt27__uninitialized_default_n_aIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.fr
  %i.zs = shl nuw nsw i64 %i.zj, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.pre1725, i8 0, i64 %i.zs, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %.pre1725, i64 %i.zs
  store ptr %scevgep.i.i.i.i, ptr %i.xv, align 8, !tbaa !50
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit

bb.fs:                                            ; preds = %bb.fr
  %i.zt = icmp ult i64 %i.zq, %i.zj
  br i1 %i.zt, label %.invoke2310, label %_ZNKSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE12_M_check_lenEmPKc.exit.i

.invoke2310:                                      ; preds = %bb.s, %bb.au, %bb.fs
  %i.zu = phi ptr [ @.str.7, %bb.fs ], [ @.str.5, %bb.au ], [ @.str.5, %bb.s ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.zu) #23
          to label %.cont2311 unwind label %.loopexit.split-lp724.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont2311:                                        ; preds = %.invoke2310
  unreachable

_ZNKSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.fs
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %.pre1735, i64 %i.zj)
  %i.zv = add nuw nsw i64 %.sroa.speculated.i.i, %.pre1735
  %i.zw = call i64 @llvm.umin.i64(i64 %i.zv, i64 576460752303423487) ; 2 uses
  %i.zx = shl nuw nsw i64 %i.zw, 4
  %i.zy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zx) #24
          to label %.noexc556 unwind label %.loopexit.split-lp724.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc556:                                        ; preds = %_ZNKSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 %.pre1733 ; 2 uses
  %i.aaa = shl nuw nsw i64 %i.zj, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.zz, i8 0, i64 %i.aaa, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %.pre1726, %.pre1725
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i553

.lr.ph.i.i.i.i553:                                ; preds = %.noexc556, %.lr.ph.i.i.i.i553
  %.012.i.i.i.i = phi ptr [ %i.aae, %.lr.ph.i.i.i.i553 ], [ %i.zy, %.noexc556 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aad, %.lr.ph.i.i.i.i553 ], [ %.pre1726, %.noexc556 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.aab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.aac = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !102, !alias.scope !176
  store ptr null, ptr %i.aab, align 8, !tbaa !103, !alias.scope !176
  store <2 x ptr> %i.aac, ptr %.012.i.i.i.i, align 8, !tbaa !102, !alias.scope !175
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !55, !alias.scope !176
  %i.aad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i554 = icmp eq ptr %i.aad, %.pre1725
  br i1 %.not.i.i.i.i554, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i553, !llvm.loop !1

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i553, %.noexc556
  %.not.i36.i = icmp eq ptr %.pre1726, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit37.i, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.aaf = load ptr, ptr %i.zk, align 8, !tbaa !105
  %i.aag = ptrtoint ptr %i.aaf to i64
  %i.aah = sub i64 %i.aag, %.pre1731
  call void @_ZdlPvm(ptr noundef nonnull %.pre1726, i64 noundef %i.aah) #22
  br label %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit37.i

_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit37.i: ; preds = %bb.ft, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.zy, ptr %3, align 8, !tbaa !51
  %i.aai = getelementptr inbounds nuw [16 x i8], ptr %i.zz, i64 %i.zj
  store ptr %i.aai, ptr %i.xv, align 8, !tbaa !50
  %i.aaj = getelementptr inbounds nuw [16 x i8], ptr %i.zy, i64 %i.zw
  store ptr %i.aaj, ptr %i.zk, align 8, !tbaa !105
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit

._crit_edge1254.thread:                           ; preds = %bb.fd, %._crit_edge1254
  %.0.lcssa1904 = phi i64 [ %.1, %._crit_edge1254 ], [ 0, %bb.fd ] ; 2 uses
  %i.aak = phi ptr [ %.pre1725, %._crit_edge1254 ], [ %i.xw, %bb.fd ] ; 2 uses
  %i.aal = phi ptr [ %.pre1726, %._crit_edge1254 ], [ %.pre1728.pre, %bb.fd ]
  %.pre-phi17361903 = phi i64 [ %.pre1735, %._crit_edge1254 ], [ 0, %bb.fd ]
  %i.aam = icmp ult i64 %.0.lcssa1904, %.pre-phi17361903
  br i1 %i.aam, label %bb.fu, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit

bb.fu:                                            ; preds = %._crit_edge1254.thread
  %i.aan = getelementptr inbounds nuw [16 x i8], ptr %i.aal, i64 %.0.lcssa1904 ; 3 uses
  %.not.i.i536 = icmp eq ptr %i.aak, %i.aan
  br i1 %.not.i.i536, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fu, %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.abf, %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i ], [ %i.aan, %bb.fu ] ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !103 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aap, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph.i.i.i.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8 ; 4 uses
  %i.aar = load atomic i64, ptr %i.aaq acquire, align 8 ; 2 uses
  %i.aas = icmp eq i64 %i.aar, 4294967297
  %i.aat = trunc i64 %i.aar to i32                ; 2 uses
  br i1 %i.aas, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  store i32 0, ptr %i.aaq, align 8, !tbaa !107
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aap, i64 12
  store i32 0, ptr %i.aau, align 4, !tbaa !108
  %i.aav = load ptr, ptr %i.aap, align 8, !tbaa !43
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %i.aax = load ptr, ptr %i.aaw, align 8
  call void %i.aax(ptr noundef nonnull align 8 dereferenceable(16) %i.aap) #21, !inline_history !2
  %i.aay = load ptr, ptr %i.aap, align 8, !tbaa !43
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 24
  %i.aba = load ptr, ptr %i.aaz, align 8
  call void %i.aba(ptr noundef nonnull align 8 dereferenceable(16) %i.aap) #21, !inline_history !2
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i

bb.fx:                                            ; preds = %bb.fv
  %i.abb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.abb, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.abc = add nsw i32 %i.aat, -1
  store i32 %i.abc, ptr %i.aaq, align 8, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.fz:                                            ; preds = %bb.fx
  %i.abd = atomicrmw volatile add ptr %i.aaq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.fz, %bb.fy
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aat, %bb.fy ], [ %i.abd, %bb.fz ]
  %i.abe = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.abe, label %bb.ga, label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i, !prof !109

bb.ga:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aap) #21
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i: ; preds = %bb.ga, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.fw, %.lr.ph.i.i.i.i
  %i.abf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i537 = icmp eq ptr %i.abf, %i.aak
  br i1 %.not.i.i.i.i537, label %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i
  store ptr %i.aan, ptr %i.xv, align 8, !tbaa !50
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.fu, %._crit_edge1254.thread, %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEmS5_ET_S7_T0_RSaIT1_E.exit.i
  %i.abg = load ptr, ptr %1, align 8, !tbaa !41   ; 2 uses
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !43
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 96
  %i.abj = load ptr, ptr %i.abi, align 8
  invoke void %i.abj(ptr noundef nonnull align 8 dereferenceable(8) %i.abg, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit._ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit_crit_edge unwind label %.loopexit.split-lp724.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit._ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit_crit_edge: ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit
  %.pre1727 = load ptr, ptr %3, align 8, !tbaa !51
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit._ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit_crit_edge, %._crit_edge1248
  %.0222.lcssa1897 = phi i1 [ true, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit._ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit_crit_edge ], [ false, %._crit_edge1248 ], [ false, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ]
  %i.abk = phi ptr [ %.pre1727, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit._ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit_crit_edge ], [ %.pre1728.pre, %._crit_edge1248 ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ] ; 3 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.abk, %i.abm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ace, %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i ], [ %i.abk, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit ] ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !103 ; 8 uses
  %.not.i.i.i.i.i.i540 = icmp eq ptr %i.abo, null
  br i1 %.not.i.i.i.i.i.i540, label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %.lr.ph.i.i.i
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 4 uses
  %i.abq = load atomic i64, ptr %i.abp acquire, align 8 ; 2 uses
  %i.abr = icmp eq i64 %i.abq, 4294967297
  %i.abs = trunc i64 %i.abq to i32                ; 2 uses
  br i1 %i.abr, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  store i32 0, ptr %i.abp, align 8, !tbaa !107
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abo, i64 12
  store i32 0, ptr %i.abt, align 4, !tbaa !108
  %i.abu = load ptr, ptr %i.abo, align 8, !tbaa !43
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 16
  %i.abw = load ptr, ptr %i.abv, align 8
  call void %i.abw(ptr noundef nonnull align 8 dereferenceable(16) %i.abo) #21, !inline_history !4
  %i.abx = load ptr, ptr %i.abo, align 8, !tbaa !43
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 24
  %i.abz = load ptr, ptr %i.aby, align 8
  call void %i.abz(ptr noundef nonnull align 8 dereferenceable(16) %i.abo) #21, !inline_history !4
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i

bb.gd:                                            ; preds = %bb.gb
  %i.aca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i541 = icmp eq i8 %i.aca, 0
  br i1 %.not.i.i.i.i.i.i.i541, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.acb = add nsw i32 %i.abs, -1
  store i32 %i.acb, ptr %i.abp, align 8, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.gf:                                            ; preds = %bb.gd
  %i.acc = atomicrmw volatile add ptr %i.abp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.gf, %bb.ge
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.abs, %bb.ge ], [ %i.acc, %bb.gf ]
  %i.acd = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.acd, label %bb.gg, label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i, !prof !109

bb.gg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.abo) #21
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i: ; preds = %bb.gg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.gc, %.lr.ph.i.i.i
  %i.ace = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i542 = icmp eq ptr %i.ace, %i.abm
  br i1 %.not.i.i.i542, label %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !51
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit
  %i.acf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.abk, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.acf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EED2Ev.exit, label %bb.gh

bb.gh:                                            ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.acg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !105
  %i.aci = ptrtoint ptr %i.ach to i64
  %i.acj = ptrtoint ptr %i.acf to i64
  %i.ack = sub i64 %i.aci, %i.acj
  call void @_ZdlPvm(ptr noundef nonnull %i.acf, i64 noundef %i.ack) #22
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not.i.i.i543 = icmp eq ptr %.sroa.0592.0, null
  br i1 %.not.i.i.i543, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.gi

bb.gi:                                            ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EED2Ev.exit
  %i.acl = ptrtoint ptr %.sroa.0592.0 to i64
  %i.acm = sub i64 %.sroa.33.0, %i.acl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0592.0, i64 noundef %i.acm) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EED2Ev.exit, %bb.gi
  %i.acn = load ptr, ptr %2, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i544 = icmp eq ptr %i.acn, null
  br i1 %.not.i.i.i544, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit545, label %bb.gj

bb.gj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.aco = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !64
  %i.acq = ptrtoint ptr %i.acp to i64
  %i.acr = ptrtoint ptr %i.acn to i64
  %i.acs = sub i64 %i.acq, %i.acr
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn14dnn5_v2026060510FuseBNPass9fuseGraphERNS_3PtrINS1_5GraphEEE:bb.a
  %i.by = zext nneg i32 %.sroa.021.0.copyload to i64 ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0131.0, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !52 ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, -1
  br i1 %i.cb, label %bb.m, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.cc = load ptr, ptr %i.ay, align 8, !tbaa !26
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.by
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !52
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.n, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.cg = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.ch = load ptr, ptr %2, align 8, !tbaa !51
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !55 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = call ptr @__dynamic_cast(ptr nonnull %i.cj, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060515BatchNorm2LayerE, i64 0) #21 ; 3 uses
  %.not77 = icmp eq ptr %i.cl, null
  br i1 %.not77, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = invoke noundef zeroext i1 @_ZN2cv3dnn14dnn5_v2026060510FuseBNPass11fuseForwardEPNS1_10Conv2LayerEPNS1_15BatchNorm2LayerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.cl)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  br i1 %i.cm, label %bb.r, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !61
  %.sroa.012.0.copyload = load i32, ptr %i.co, align 4, !tbaa !52 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !61
  store i32 %.sroa.012.0.copyload, ptr %i.cq, align 4, !tbaa !52
  %i.cr = load ptr, ptr %i.ay, align 8, !tbaa !26 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.by
  store i32 0, ptr %i.cs, align 4, !tbaa !52
  %i.ct = icmp sgt i32 %.sroa.012.0.copyload, -1
  br i1 %i.ct, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cu = zext nneg i32 %.sroa.012.0.copyload to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !52
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !52
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cy = load ptr, ptr %2, align 8, !tbaa !51
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cg ; 2 uses
  store ptr null, ptr %i.cz, align 8, !tbaa !55
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !103 ; 8 uses
  %.not.i.i.i.i88 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i88, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.dc, align 8, !tbaa !107
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !108
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !43
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #21, !inline_history !0
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !43
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #21, !inline_history !0
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i9.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i9.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i = phi i32 [ %i.df, %bb.x ], [ %i.dp, %bb.y ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !109

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v
  store ptr null, ptr %i.da, align 8, !tbaa !103
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %bb.k, %bb.t, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %bb.l, %bb.m, %bb.q, %bb.o, %bb.j, %.loopexit
  %.3 = phi i1 [ %.059160, %bb.j ], [ %.059160, %.loopexit ], [ %.059160, %bb.l ], [ %.059160, %bb.m ], [ %.059160, %bb.k ], [ %.059160, %bb.q ], [ %.059160, %bb.o ], [ true, %bb.t ], [ true, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ], [ %.059160, %bb.n ] ; 2 uses
  %i.dr = load ptr, ptr %i.bp, align 8, !tbaa !104 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !104 ; 2 uses
  %.not142157 = icmp eq ptr %i.dr, %i.dt
  %.pre = load ptr, ptr %i.az, align 8            ; 6 uses
  br i1 %.not142157, label %._crit_edge, label %.lr.ph159

.lr.ph159:                                        ; preds = %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.du = load ptr, ptr %2, align 8
  %i.dv = ptrtoint ptr %.pre to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = lshr exact i64 %i.dx, 4
  %i.dz = trunc i64 %i.dy to i32
  br label %bb.af

._crit_edge:                                      ; preds = %bb.ah, %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ea = load ptr, ptr %i.x, align 8, !tbaa !105
  %.not.i = icmp eq ptr %.pre, %i.ea
  br i1 %.not.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.eb = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !103 ; 2 uses
  %i.ed = load <2 x ptr>, ptr %i.be, align 8, !tbaa !102
  store <2 x ptr> %i.ed, ptr %.pre, align 8, !tbaa !102
  %.not.i.i.i.i.i89 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i89, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 3 uses
  %i.ef = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !52
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !52
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.ei = atomicrmw volatile add ptr %i.ee, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.az, align 8, !tbaa !50
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i

_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i: ; preds = %bb.ad, %bb.ac, %bb.aa
  %i.ej = phi ptr [ %.pre, %bb.aa ], [ %.pre, %bb.ac ], [ %.pre.i, %bb.ad ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store ptr %i.ek, ptr %i.az, align 8, !tbaa !50
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit

bb.ae:                                            ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %.pre, ptr noundef nonnull align 8 dereferenceable(16) %i.be)
          to label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %.lr.ph159, %bb.ah
  %.sroa.0121.0158 = phi ptr [ %i.dr, %.lr.ph159 ], [ %i.ep, %bb.ah ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.sroa.0121.0158, align 4, !tbaa !52 ; 3 uses
  %i.el = icmp sgt i32 %.sroa.0.0.copyload, -1
  %i.em = icmp slt i32 %.sroa.0.0.copyload, %i.ax
  %or.cond175 = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond175, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.en = zext nneg i32 %.sroa.0.0.copyload to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0131.0, i64 %i.en
  store i32 %i.dz, ptr %i.eo, align 4, !tbaa !52
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0121.0158, i64 4 ; 2 uses
  %.not142 = icmp eq ptr %i.ep, %i.dt
  br i1 %.not142, label %._crit_edge, label %bb.af

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i, %bb.ae
  %i.eq = add nuw i64 %.058161, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.eq, %i.l
  br i1 %exitcond.not, label %._crit_edge163, label %bb.f, !llvm.loop !226

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.ae, %bb.f, %bb.p, %_ZNKSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.ak, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit
  %lpad.loopexit.split-lp257 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i110 = icmp eq ptr %.sroa.0131.0, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIiSaIiEED2Ev.exit111, label %bb.bo

._crit_edge167:                                   ; preds = %bb.bf
  %i.er = icmp ugt i64 %.1, %i.hy
  br i1 %i.er, label %bb.ai, label %._crit_edge167.thread

bb.ai:                                            ; preds = %._crit_edge167
  %i.es = sub nuw i64 %.1, %i.hy                  ; 6 uses
  %i.et = load ptr, ptr %i.x, align 8, !tbaa !105
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = sub i64 %i.eu, %i.hv
  %i.ew = ashr exact i64 %i.ev, 4                 ; 2 uses
  %i.ex = icmp ult i64 %i.hy, 576460752303423488
  call void @llvm.assume(i1 %i.ex)
  %i.ey = xor i64 %i.hy, 576460752303423487       ; 2 uses
  %i.ez = icmp ule i64 %i.ew, %i.ey
  call void @llvm.assume(i1 %i.ez)
  %.not28.i = icmp ult i64 %i.ew, %i.es
  br i1 %.not28.i, label %bb.aj, label %_ZSt27__uninitialized_default_n_aIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.ai
  %i.fa = shl nuw nsw i64 %i.es, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ht, i8 0, i64 %i.fa, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ht, i64 %i.fa
  store ptr %scevgep.i.i.i.i, ptr %i.az, align 8, !tbaa !50
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fb = icmp ult i64 %i.ey, %i.es
  br i1 %i.fb, label %bb.ak, label %_ZNKSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
          to label %.noexc119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc119:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.aj
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.hy, i64 %i.es)
  %i.fc = add nuw nsw i64 %.sroa.speculated.i.i, %i.hy
  %i.fd = call i64 @llvm.umin.i64(i64 %i.fc, i64 576460752303423487) ; 2 uses
  %i.fe = shl nuw nsw i64 %i.fd, 4
  %i.ff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fe) #24
          to label %.noexc120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc120:                                        ; preds = %_ZNKSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.hx ; 2 uses
  %i.fh = shl nuw nsw i64 %i.es, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fg, i8 0, i64 %i.fh, i1 false)
  %.not10.i.i.i.i113 = icmp eq ptr %i.hs, %i.ht
  br i1 %.not10.i.i.i.i113, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i118, label %.lr.ph.i.i.i.i114

.lr.ph.i.i.i.i114:                                ; preds = %.noexc120, %.lr.ph.i.i.i.i114
  %.012.i.i.i.i115 = phi ptr [ %i.fl, %.lr.ph.i.i.i.i114 ], [ %i.ff, %.noexc120 ] ; 2 uses
  %.0911.i.i.i.i116 = phi ptr [ %i.fk, %.lr.ph.i.i.i.i114 ], [ %i.hs, %.noexc120 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.fi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i116, i64 8
  %i.fj = load <2 x ptr>, ptr %.0911.i.i.i.i116, align 8, !tbaa !102, !alias.scope !234
  store ptr null, ptr %i.fi, align 8, !tbaa !103, !alias.scope !234
  store <2 x ptr> %i.fj, ptr %.012.i.i.i.i115, align 8, !tbaa !102, !alias.scope !233
  store ptr null, ptr %.0911.i.i.i.i116, align 8, !tbaa !55, !alias.scope !234
  %i.fk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i116, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i115, i64 16
  %.not.i.i.i.i117 = icmp eq ptr %i.fk, %i.ht
  br i1 %.not.i.i.i.i117, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i118, label %.lr.ph.i.i.i.i114, !llvm.loop !1

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i118: ; preds = %.lr.ph.i.i.i.i114, %.noexc120
  %.not.i36.i = icmp eq ptr %i.hs, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit37.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i118
  %i.fm = load ptr, ptr %i.x, align 8, !tbaa !105
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = sub i64 %i.fn, %i.hw
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %i.fo) #22
  br label %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit37.i

_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit37.i: ; preds = %bb.al, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i118
  store ptr %i.ff, ptr %2, align 8, !tbaa !51
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.es
  store ptr %i.fp, ptr %i.az, align 8, !tbaa !50
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fd
  store ptr %i.fq, ptr %i.x, align 8, !tbaa !105
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit

._crit_edge167.thread:                            ; preds = %.preheader, %._crit_edge167
  %.lcssa237 = phi i64 [ %i.hy, %._crit_edge167 ], [ 0, %.preheader ]
  %.lcssa150236 = phi ptr [ %i.hs, %._crit_edge167 ], [ %i.bb, %.preheader ]
  %.lcssa151235 = phi ptr [ %i.ht, %._crit_edge167 ], [ %i.ba, %.preheader ] ; 2 uses
  %.057.lcssa234 = phi i64 [ %.1, %._crit_edge167 ], [ 0, %.preheader ] ; 2 uses
  %i.fr = icmp ult i64 %.057.lcssa234, %.lcssa237
  br i1 %i.fr, label %bb.am, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit

bb.am:                                            ; preds = %._crit_edge167.thread
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %.lcssa150236, i64 %.057.lcssa234 ; 3 uses
  %.not.i.i91 = icmp eq ptr %.lcssa151235, %i.fs
  br i1 %.not.i.i91, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i92

.lr.ph.i.i.i.i92:                                 ; preds = %bb.am, %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.gk, %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i ], [ %i.fs, %bb.am ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !103 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i92
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.fw = load atomic i64, ptr %i.fv acquire, align 8 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 4294967297
  %i.fy = trunc i64 %i.fw to i32                  ; 2 uses
  br i1 %i.fx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.fv, align 8, !tbaa !107
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.fz, align 4, !tbaa !108
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !43
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21, !inline_history !2
  %i.gd = load ptr, ptr %i.fu, align 8, !tbaa !43
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21, !inline_history !2
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.gg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.gg, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gh = add nsw i32 %i.fy, -1
  store i32 %i.gh, ptr %i.fv, align 8, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.gi = atomicrmw volatile add ptr %i.fv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fy, %bb.aq ], [ %i.gi, %bb.ar ]
  %i.gj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gj, label %bb.as, label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i, !prof !109

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i: ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ao, %.lr.ph.i.i.i.i92
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.gk, %.lcssa151235
  br i1 %.not.i.i.i.i93, label %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i92, !llvm.loop !3

_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i.i
  store ptr %i.fs, ptr %i.az, align 8, !tbaa !50
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit

.lr.ph166:                                        ; preds = %.preheader, %bb.bf
  %i.gl = phi ptr [ %i.hs, %bb.bf ], [ %i.bb, %.preheader ] ; 3 uses
  %i.gm = phi ptr [ %i.ht, %bb.bf ], [ %i.ba, %.preheader ]
  %.0165 = phi i64 [ %i.hu, %bb.bf ], [ 0, %.preheader ] ; 3 uses
  %.057164 = phi i64 [ %.1, %bb.bf ], [ 0, %.preheader ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %.0165 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !55 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.bf, label %bb.at

bb.at:                                            ; preds = %.lr.ph166
  %i.gq = icmp ult i64 %.057164, %.0165
  br i1 %i.gq, label %bb.au, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit105

bb.au:                                            ; preds = %bb.at
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %.057164 ; 2 uses
  store ptr %i.go, ptr %i.gr, align 8, !tbaa !55
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !103 ; 4 uses
  %i.gv = load ptr, ptr %i.gs, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i.i95 = icmp eq ptr %i.gu, %i.gv
  br i1 %.not.i.i.i.i95, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit105, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not7.i.i.i.i96 = icmp eq ptr %i.gu, null
  br i1 %.not7.i.i.i.i96, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i98, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 3 uses
  %i.gx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i97 = icmp eq i8 %i.gx, 0
  br i1 %.not.i.i.i.i.i97, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gy = load i32, ptr %i.gw, align 4, !tbaa !52
  %i.gz = add nsw i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gw, align 4, !tbaa !52
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i98

bb.ay:                                            ; preds = %bb.aw
  %i.ha = atomicrmw volatile add ptr %i.gw, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i104 = load ptr, ptr %i.gs, align 8, !tbaa !103
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i98

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i98: ; preds = %bb.ay, %bb.ax, %bb.av
  %i.hb = phi ptr [ %i.gv, %bb.av ], [ %i.gv, %bb.ax ], [ %.pr.pre.i.i.i.i104, %bb.ay ] ; 8 uses
  %.not8.i.i.i.i99 = icmp eq ptr %i.hb, null
  br i1 %.not8.i.i.i.i99, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i103, label %bb.az

bb.az:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i98
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 4 uses
  %i.hd = load atomic i64, ptr %i.hc acquire, align 8 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 4294967297
  %i.hf = trunc i64 %i.hd to i32                  ; 2 uses
  br i1 %i.he, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.hc, align 8, !tbaa !107
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 0, ptr %i.hg, align 4, !tbaa !108
  %i.hh = load ptr, ptr %i.hb, align 8, !tbaa !43
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #21, !inline_history !0
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !43
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #21, !inline_history !0
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i103

bb.bb:                                            ; preds = %bb.az
  %i.hn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i9.i.i.i.i100 = icmp eq i8 %i.hn, 0
  br i1 %.not.i9.i.i.i.i100, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ho = add nsw i32 %i.hf, -1
  store i32 %i.ho, ptr %i.hc, align 8, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i101

bb.bd:                                            ; preds = %bb.bb
  %i.hp = atomicrmw volatile add ptr %i.hc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i101

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i101: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i102 = phi i32 [ %i.hf, %bb.bc ], [ %i.hp, %bb.bd ]
  %i.hq = icmp eq i32 %.0.i.i.i.i.i.i102, 1
  br i1 %i.hq, label %bb.be, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i103, !prof !109

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i101
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i103

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i103: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i101, %bb.ba, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i98
  store ptr %i.gu, ptr %i.gs, align 8, !tbaa !103
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit105

_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit105: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i103, %bb.au, %bb.at
  %i.hr = add i64 %.057164, 1
  %.pre187 = load ptr, ptr %i.az, align 8, !tbaa !50
  %.pre188 = load ptr, ptr %2, align 8, !tbaa !51
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph166, %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit105
  %i.hs = phi ptr [ %i.gl, %.lr.ph166 ], [ %.pre188, %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit105 ] ; 7 uses
  %i.ht = phi ptr [ %i.gm, %.lr.ph166 ], [ %.pre187, %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit105 ] ; 7 uses
  %.1 = phi i64 [ %.057164, %.lr.ph166 ], [ %i.hr, %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSERKS4_.exit105 ] ; 4 uses
  %i.hu = add nuw i64 %.0165, 1                   ; 2 uses
  %i.hv = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.hw = ptrtoint ptr %i.hs to i64               ; 2 uses
  %i.hx = sub i64 %i.hv, %i.hw                    ; 2 uses
  %i.hy = ashr exact i64 %i.hx, 4                 ; 8 uses
  %i.hz = icmp ult i64 %i.hu, %i.hy
  br i1 %i.hz, label %.lr.ph166, label %._crit_edge167, !llvm.loop !230

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.am, %._crit_edge167.thread, %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEmS5_ET_S7_T0_RSaIT1_E.exit.i
  %i.ia = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !43
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 96
  %i.id = load ptr, ptr %i.ic, align 8
  invoke void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE6resizeEm.exit, %._crit_edge163
  %.not.i.i.i106 = icmp eq ptr %.sroa.0131.0, null
  br i1 %.not.i.i.i106, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %.critedge
  %i.ie = ptrtoint ptr %.sroa.0131.0 to i64
  %i.if = sub i64 %.sroa.15.0, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.0, i64 noundef %i.if) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.critedge, %bb.bg
  %i.ig = load ptr, ptr %2, align 8, !tbaa !51    ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ig, %i.ii
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ja, %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i ], [ %i.ig, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !103 ; 8 uses
  %.not.i.i.i.i.i.i107 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i.i.i107, label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 4 uses
  %i.im = load atomic i64, ptr %i.il acquire, align 8 ; 2 uses
  %i.in = icmp eq i64 %i.im, 4294967297
  %i.io = trunc i64 %i.im to i32                  ; 2 uses
  br i1 %i.in, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.il, align 8, !tbaa !107
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i32 0, ptr %i.ip, align 4, !tbaa !108
  %i.iq = load ptr, ptr %i.ik, align 8, !tbaa !43
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #21, !inline_history !4
  %i.it = load ptr, ptr %i.ik, align 8, !tbaa !43
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #21, !inline_history !4
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.iw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i108 = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i.i.i.i.i108, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ix = add nsw i32 %i.io, -1
  store i32 %i.ix, ptr %i.il, align 8, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.iy = atomicrmw volatile add ptr %i.il, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.io, %bb.bk ], [ %i.iy, %bb.bl ]
  %i.iz = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.iz, label %bb.bm, label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i, !prof !109

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #21
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i: ; preds = %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bi, %.lr.ph.i.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i109 = icmp eq ptr %i.ja, %i.ii
  br i1 %.not.i.i.i109, label %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !51
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.jb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ig, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.jc = load ptr, ptr %i.x, align 8, !tbaa !105
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %i.jb to i64
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jf) #22
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.bo:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.jg = sub i64 %.sroa.15.0, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.0, i64 noundef %i.jg) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

_ZNSt6vectorIiSaIiEED2Ev.exit111:                 ; preds = %bb.e, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp257, %bb.bo ], [ %i.bc, %bb.e ], [ %lpad.loopexit.split-lp257, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn79.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn14dnn5_v2026060510FuseBNPass11fuseForwardEPNS1_10Conv2LayerEPNS1_15BatchNorm2LayerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %17 = alloca %"struct.cv::dnn::dnn5_v20260605::Arg", align 4 ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !247  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !247  ; 2 uses
  %.not199202 = icmp eq ptr %i.c, %i.e
  br i1 %.not199202, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0195.0203, i64 4 ; 2 uses
  %.not199 = icmp eq ptr %i.f, %i.e
  br i1 %.not199, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0195.0203 = phi ptr [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = load i32, ptr %.sroa.0195.0203, align 4, !tbaa !52
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %.loopexit201

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !61   ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 5
  br i1 %i.p, label %.loopexit201, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.q = load ptr, ptr %0, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.085.0.copyload = load i32, ptr %i.r, align 4, !tbaa !52
  %i.s = tail call noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.q, i32 %.sroa.085.0.copyload)
  br i1 %i.s, label %bb.d, label %.loopexit201

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !34
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.076.0.copyload = load i32, ptr %i.v, align 4, !tbaa !52
  %i.w = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.t, i32 %.sroa.076.0.copyload) ; 5 uses
  %i.x = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.w)
  br i1 %i.x, label %.loopexit201, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.w, align 8, !tbaa !88
  %i.z = and i32 %i.y, 4095
  %.not = icmp eq i32 %i.z, 5
  br i1 %.not, label %bb.f, label %.loopexit201

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !248
  %.not156 = icmp eq i32 %i.ab, 4
  br i1 %.not156, label %bb.g, label %.loopexit201

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 4 uses
  %i.ad = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %i.ac, i64 noundef 0)
end_hunk_1
