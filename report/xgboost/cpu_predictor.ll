Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cpu_predictor?download=true
inline.NumInlined: 9576
inline.NumDeleted: 2555
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a
  %i.sc = load ptr, ptr %i.sb, align 8
  call void %i.sc(ptr noundef nonnull align 8 dereferenceable(16) %i.ru) #18, !inline_history !652
  %i.sd = load ptr, ptr %i.ru, align 8, !tbaa !64
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.sf = load ptr, ptr %i.se, align 8
  call void %i.sf(ptr noundef nonnull align 8 dereferenceable(16) %i.ru) #18, !inline_history !652
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i

bb.es:                                            ; preds = %bb.eq
  %i.sg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i59.i.i = icmp eq i8 %i.sg, 0
  br i1 %.not.i.i.i.i59.i.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.sh = add nsw i32 %i.ry, -1
  store i32 %i.sh, ptr %i.rv, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60.i.i

bb.eu:                                            ; preds = %bb.es
  %i.si = atomicrmw volatile add ptr %i.rv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60.i.i: ; preds = %bb.eu, %bb.et
  %.0.i.i.i.i.i61.i.i = phi i32 [ %i.ry, %bb.et ], [ %i.si, %bb.eu ]
  %i.sj = icmp eq i32 %.0.i.i.i.i.i61.i.i, 1
  br i1 %i.sj, label %bb.ev, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i, !prof !173

bb.ev:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ru) #18
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i

_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i: ; preds = %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60.i.i, %bb.er, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #18
  %i.sk = load ptr, ptr %i.qv, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i62.i.i = icmp eq ptr %i.sk, null
  br i1 %.not.i.i.i62.i.i, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit66.i.i, label %bb.ew

bb.ew:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 4 uses
  %i.sm = load atomic i64, ptr %i.sl acquire, align 8 ; 2 uses
  %i.sn = icmp eq i64 %i.sm, 4294967297
  %i.so = trunc i64 %i.sm to i32                  ; 2 uses
  br i1 %i.sn, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store i32 0, ptr %i.sl, align 8, !tbaa !242
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sk, i64 12
  store i32 0, ptr %i.sp, align 4, !tbaa !243
  %i.sq = load ptr, ptr %i.sk, align 8, !tbaa !64
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8
  call void %i.ss(ptr noundef nonnull align 8 dereferenceable(16) %i.sk) #18, !inline_history !652
  %i.st = load ptr, ptr %i.sk, align 8, !tbaa !64
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(16) %i.sk) #18, !inline_history !652
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit66.i.i

bb.ey:                                            ; preds = %bb.ew
  %i.sw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i63.i.i = icmp eq i8 %i.sw, 0
  br i1 %.not.i.i.i.i63.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.sx = add nsw i32 %i.so, -1
  store i32 %i.sx, ptr %i.sl, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64.i.i

bb.fa:                                            ; preds = %bb.ey
  %i.sy = atomicrmw volatile add ptr %i.sl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64.i.i: ; preds = %bb.fa, %bb.ez
  %.0.i.i.i.i.i65.i.i = phi i32 [ %i.so, %bb.ez ], [ %i.sy, %bb.fa ]
  %i.sz = icmp eq i32 %.0.i.i.i.i.i65.i.i, 1
  br i1 %i.sz, label %bb.fb, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit66.i.i, !prof !173

bb.fb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sk) #18
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit66.i.i

_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit66.i.i: ; preds = %bb.fb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64.i.i, %bb.ex, %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %194) #18
  %i.ta = load ptr, ptr %i.qw, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i67.i.i = icmp eq ptr %i.ta, null
  br i1 %.not.i.i.i.i67.i.i, label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i, label %bb.fc

bb.fc:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit66.i.i
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8 ; 4 uses
  %i.tc = load atomic i64, ptr %i.tb acquire, align 8 ; 2 uses
  %i.td = icmp eq i64 %i.tc, 4294967297
  %i.te = trunc i64 %i.tc to i32                  ; 2 uses
  br i1 %i.td, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store i32 0, ptr %i.tb, align 8, !tbaa !242
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ta, i64 12
  store i32 0, ptr %i.tf, align 4, !tbaa !243
  %i.tg = load ptr, ptr %i.ta, align 8, !tbaa !64
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %i.ti = load ptr, ptr %i.th, align 8
  call void %i.ti(ptr noundef nonnull align 8 dereferenceable(16) %i.ta) #18, !inline_history !653
  %i.tj = load ptr, ptr %i.ta, align 8, !tbaa !64
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 24
  %i.tl = load ptr, ptr %i.tk, align 8
  call void %i.tl(ptr noundef nonnull align 8 dereferenceable(16) %i.ta) #18, !inline_history !653
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i

bb.fe:                                            ; preds = %bb.fc
  %i.tm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i68.i.i = icmp eq i8 %i.tm, 0
  br i1 %.not.i.i.i.i.i68.i.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.tn = add nsw i32 %i.te, -1
  store i32 %i.tn, ptr %i.tb, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69.i.i

bb.fg:                                            ; preds = %bb.fe
  %i.to = atomicrmw volatile add ptr %i.tb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69.i.i: ; preds = %bb.fg, %bb.ff
  %.0.i.i.i.i.i.i70.i.i = phi i32 [ %i.te, %bb.ff ], [ %i.to, %bb.fg ]
  %i.tp = icmp eq i32 %.0.i.i.i.i.i.i70.i.i, 1
  br i1 %i.tp, label %bb.fh, label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i, !prof !173

bb.fh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ta) #18
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i

_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i: ; preds = %bb.fh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69.i.i, %bb.fd, %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit66.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #18
  br label %bb.iv

bb.fi:                                            ; preds = %bb.eo
  %i.tq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7xgboost13BatchIteratorINS_10SparsePageEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %194)
          to label %bb.fj unwind label %bb.is     ; 3 uses

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #18
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tr)
          to label %.noexc71.i.i unwind label %bb.it ; 2 uses

.noexc71.i.i:                                     ; preds = %bb.fj
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !295, !noalias !791
  %i.tv = load ptr, ptr %i.ts, align 8, !tbaa !296, !noalias !791 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.tx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tw)
          to label %bb.fk unwind label %bb.it     ; 2 uses

bb.fk:                                            ; preds = %.noexc71.i.i
  %i.ty = ptrtoint ptr %i.tu to i64
  %i.tz = ptrtoint ptr %i.tv to i64
  %i.ua = sub i64 %i.ty, %i.tz
  %i.ub = ashr exact i64 %i.ua, 3                 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !299, !noalias !791
  %i.ue = load ptr, ptr %i.tx, align 8, !tbaa !300, !noalias !791 ; 2 uses
  %i.uf = ptrtoint ptr %i.ud to i64
  %i.ug = ptrtoint ptr %i.ue to i64
  %i.uh = sub i64 %i.uf, %i.ug
  %i.ui = ashr exact i64 %i.uh, 3
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tq, i64 24
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %196, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0285.i.i, i64 32, i1 false)
  store i64 %i.ub, ptr %i.re, align 8, !tbaa !59
  store ptr %i.tv, ptr %.sroa.4288.0..sroa_idx.i.i, align 8, !tbaa !128
  store i64 %i.ui, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !59
  store ptr %i.ue, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !307
  store i64 %i.uk, ptr %i.rf, align 8, !tbaa !312
  %i.ul = load i32, ptr %i.di, align 4, !tbaa !83 ; 6 uses
  %i.um = load i8, ptr %i.dm, align 1, !tbaa !82, !range !140, !noundef !141 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %161)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %161, ptr noundef nonnull align 8 dereferenceable(72) %i.do, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %160)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %160, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  %spec.select.i.i.i.i73.i.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.ub, i64 1) ; 5 uses
  %i.un = load i32, ptr %i.rm, align 4, !tbaa !288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %157, i8 0, i64 24, i1 false)
  %i.uo = icmp ugt i64 %spec.select.i.i.i.i73.i.i, 1
  br i1 %i.uo, label %bb.fl, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

bb.fl:                                            ; preds = %bb.fk
  %i.up = load i32, ptr %i.rn, align 4, !tbaa !200 ; 2 uses
  %i.uq = load i32, ptr %i.ro, align 8, !tbaa !199 ; 2 uses
  %i.ur = sub nsw i32 %i.up, %i.uq                ; 2 uses
  %i.us = sext i32 %i.ur to i64                   ; 4 uses
  %.not120.i.i147.i.i = icmp eq i32 %i.up, %i.uq
  br i1 %.not120.i.i147.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i155.i.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.ut = icmp slt i32 %i.ur, 0
  br i1 %i.ut, label %bb.fn, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i148.i.i

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
          to label %.noexc53.i.i251.i.i unwind label %.body.i.i87.thread.i.i

.noexc53.i.i251.i.i:                              ; preds = %bb.fn
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i148.i.i: ; preds = %bb.fm
  %i.uu = shl nuw nsw i64 %i.us, 2
  %i.uv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uu) #33
          to label %.noexc54.i.i151.i.i unwind label %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i149.loopexit.split-lp.loopexit.i.i ; 5 uses

.noexc54.i.i151.i.i:                              ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i148.i.i
  store i32 0, ptr %i.uv, align 4, !tbaa !83
  %i.uw = add nsw i64 %i.us, -1                   ; 2 uses
  %i.ux = icmp eq i64 %i.uw, 0
  br i1 %i.ux, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i154.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i152.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i152.i.i: ; preds = %.noexc54.i.i151.i.i
  %i.uy = getelementptr i8, ptr %i.uv, i64 4
  %.idx.i.i.i.i.i31.i.i.i153.i.i = shl nuw nsw i64 %i.uw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.uy, i8 0, i64 %.idx.i.i.i.i.i31.i.i.i153.i.i, i1 false), !tbaa !83
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i154.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i154.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i152.i.i, %.noexc54.i.i151.i.i
  store ptr %i.uv, ptr %157, align 8, !tbaa !175
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %i.us ; 3 uses
  store ptr %i.uz, ptr %i.rg, align 8, !tbaa !174
  store ptr %i.uz, ptr %i.rh, align 8, !tbaa !246
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i155.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i155.i.i:    ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i154.i.i, %bb.fl
  %i.va = phi ptr [ %i.uz, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i154.i.i ], [ null, %bb.fl ] ; 8 uses
  %i.vb = phi ptr [ %i.uv, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i154.i.i ], [ null, %bb.fl ] ; 10 uses
  %i.vc = phi i64 [ %i.us, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i154.i.i ], [ 0, %bb.fl ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #18
  store i64 %i.vc, ptr %i.ai, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #18
  %.val.i.i156.i.i = load ptr, ptr %i.dk, align 8, !tbaa !144 ; 2 uses
  %.val24.i.i157.i.i = load ptr, ptr %i.rp, align 8, !tbaa !201 ; 2 uses
  %i.vd = icmp ne ptr %.val.i.i156.i.i, null
  %i.ve = icmp eq ptr %.val24.i.i157.i.i, null
  %i.vf = or i1 %i.vd, %i.ve
  br i1 %i.vf, label %bb.fp, label %bb.fo, !prof !70

bb.fo:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i155.i.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.fp:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i155.i.i
  %i.vg = ptrtoint ptr %.val24.i.i157.i.i to i64
  %i.vh = ptrtoint ptr %.val.i.i156.i.i to i64
  %i.vi = sub i64 %i.vg, %i.vh
  %i.vj = sdiv exact i64 %i.vi, 200               ; 2 uses
  store i64 %i.vj, ptr %i.aj, align 8, !tbaa !59
  %i.vk = icmp eq i64 %i.vc, %i.vj
  br i1 %i.vk, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i250.i.i, label %bb.fq

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i250.i.i: ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i174.i.i

bb.fq:                                            ; preds = %bb.fp
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %158, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i159.i.i unwind label %bb.fs

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i159.i.i: ; preds = %bb.fq
  %.pr.i.i160.i.i = load ptr, ptr %158, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #18
  %.not.i.i161.i.i = icmp eq ptr %.pr.i.i160.i.i, null
  br i1 %.not.i.i161.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i174.i.i, label %bb.fr

bb.fr:                                            ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i159.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #18
  %i.vl = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %159)
          to label %.noexc28.i.i163.i.i unwind label %bb.ft

.noexc28.i.i163.i.i:                              ; preds = %bb.fr
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.vl, ptr noundef nonnull @.str.4, i32 noundef 412)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i164.i.i unwind label %bb.ft

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i164.i.i: ; preds = %.noexc28.i.i163.i.i
  %i.vm = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %159)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i165.i.i unwind label %bb.fu ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i165.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i164.i.i
  %i.vn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vm, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i166.i.i unwind label %bb.fu ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i166.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i165.i.i
  %i.vo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vm, ptr noundef nonnull @.str.50, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i167.i.i unwind label %bb.fu ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i167.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i166.i.i
  %i.vp = load ptr, ptr %158, align 8, !tbaa !53  ; 2 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !44
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !43
  %i.vt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vm, ptr noundef %i.vq, i64 noundef %i.vs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i168.i.i unwind label %bb.fu

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i168.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i167.i.i
  %i.vu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vt, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i169.i.i unwind label %bb.fu ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i169.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i168.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %159)
          to label %bb.fw unwind label %bb.ft

bb.fs:                                            ; preds = %bb.fq
  %i.vv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #18
  br label %bb.hh

bb.ft:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i169.i.i, %.noexc28.i.i163.i.i, %bb.fr
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fu:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i168.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i167.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i166.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i165.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i164.i.i
  %i.vx = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %159)
          to label %bb.fv unwind label %bb.iq

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.pn.i.i162.i.i = phi { ptr, i32 } [ %i.vw, %bb.ft ], [ %i.vx, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %158) #18
  br label %bb.hh

bb.fw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i169.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #18
  %.pr63.i.i170.i.i = load ptr, ptr %158, align 8, !tbaa !53 ; 4 uses
  %.not.i.i.i171.i.i = icmp eq ptr %.pr63.i.i170.i.i, null
  br i1 %.not.i.i.i171.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i174.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.vy = load ptr, ptr %.pr63.i.i170.i.i, align 8, !tbaa !44 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.pr63.i.i170.i.i, i64 16 ; 2 uses
  %i.wa = icmp eq ptr %i.vy, %i.vz
  br i1 %i.wa, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i173.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i172.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i172.i.i: ; preds = %bb.fx
  %i.wb = load i64, ptr %i.vz, align 8, !tbaa !50
  %i.wc = add i64 %i.wb, 1
  call void @_ZdlPvm(ptr noundef %i.vy, i64 noundef %i.wc) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i173.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i173.i.i: ; preds = %bb.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i172.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr63.i.i170.i.i, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i174.i.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i174.i.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i173.i.i, %bb.fw, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i159.i.i, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i250.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #18
  %i.wd = load i32, ptr %i.rn, align 4, !tbaa !200
  %i.we = load i32, ptr %i.ro, align 8, !tbaa !199
  %i.wf = sub nsw i32 %i.wd, %i.we                ; 4 uses
  %i.wg = icmp eq i32 %i.ul, 1
  br i1 %i.wg, label %.preheader.i.i.i.i238.i.i, label %bb.gd

.preheader.i.i.i.i238.i.i:                        ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i174.i.i
  %i.wh = icmp sgt i32 %i.wf, 0
  br i1 %i.wh, label %.lr.ph120.i.i.i.i239.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.thread.i.i

_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.thread.i.i: ; preds = %.preheader.i.i.i.i238.i.i
  %i.wi = uitofp i64 %spec.select.i.i.i.i73.i.i to double
  %i.wj = fmul nnan double %i.wi, 1.562500e-02
  %i.wk = call double @llvm.ceil.f64(double %i.wj)
  %i.wl = fptoui double %i.wk to i64
  br label %.preheader.i.i.i.i.i141.i.i

.lr.ph120.i.i.i.i239.i.i:                         ; preds = %.preheader.i.i.i.i238.i.i
  %wide.trip.count.i.i.i.i240.i.i = zext nneg i32 %i.wf to i64
  br label %bb.fy

bb.fy:                                            ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i, %.lr.ph120.i.i.i.i239.i.i
  %indvars.iv.i.i.i.i241.i.i = phi i64 [ 0, %.lr.ph120.i.i.i.i239.i.i ], [ %indvars.iv.next.i.i.i.i247.i.i, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i ] ; 4 uses
  %.val67.val.i.i.i.i242.i.i = load ptr, ptr %i.dk, align 8, !tbaa !144 ; 3 uses
  %.val67.val68.i.i.i.i243.i.i = load ptr, ptr %i.rp, align 8, !tbaa !201 ; 2 uses
  %i.wm = icmp ne ptr %.val67.val.i.i.i.i242.i.i, null
  %i.wn = icmp eq ptr %.val67.val68.i.i.i.i243.i.i, null
  %i.wo = or i1 %i.wm, %i.wn
  br i1 %i.wo, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i244.i.i, label %bb.fz, !prof !70

bb.fz:                                            ; preds = %bb.fy
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i244.i.i: ; preds = %bb.fy
  %i.wp = ptrtoint ptr %.val67.val68.i.i.i.i243.i.i to i64
  %i.wq = ptrtoint ptr %.val67.val.i.i.i.i242.i.i to i64
  %i.wr = sub i64 %i.wp, %i.wq
  %i.ws = sdiv exact i64 %i.wr, 200
  %i.wt = icmp ugt i64 %i.ws, %indvars.iv.i.i.i.i241.i.i
  br i1 %i.wt, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i245.i.i, label %bb.ga, !prof !70

bb.ga:                                            ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i244.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i245.i.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i244.i.i
  %i.wu = getelementptr inbounds nuw [200 x i8], ptr %.val67.val.i.i.i.i242.i.i, i64 %indvars.iv.i.i.i.i241.i.i ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 192
  %i.ww = load i8, ptr %i.wv, align 8, !tbaa !210
  %i.wx = icmp eq i8 %i.ww, 0
  br i1 %i.wx, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i245.i.i
  %i.wy = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_14ScalarTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.wu, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i149.loopexit.i.i

bb.gc:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i245.i.i
  %i.wz = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_19MultiTargetTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.wu, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i149.loopexit.i.i

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i: ; preds = %bb.gc, %bb.gb
  %.sink.i.i.i.i.i.i.i246.i.i = phi i32 [ %i.wy, %bb.gb ], [ %i.wz, %bb.gc ]
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %indvars.iv.i.i.i.i241.i.i
  store i32 %.sink.i.i.i.i.i.i.i246.i.i, ptr %i.xa, align 4, !tbaa !83
  %indvars.iv.next.i.i.i.i247.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i241.i.i, 1 ; 2 uses
  %exitcond143.not.i.i.i.i248.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i247.i.i, %wide.trip.count.i.i.i.i240.i.i
  br i1 %exitcond143.not.i.i.i.i248.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i, label %bb.fy, !llvm.loop !656

bb.gd:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i174.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i32 %i.ul, ptr %i.ag, align 4, !tbaa !83, !noalias !792
  store i32 1, ptr %i.ah, align 4, !tbaa !83, !noalias !792
  %.not.i.i.i.i.i175.i.i = icmp slt i32 %i.ul, 1
  br i1 %.not.i.i.i.i.i175.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i221.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i176.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i176.i.i: ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %.preheader97.i.i.i.i177.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i221.i.i: ; preds = %bb.gd
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %154, ptr noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.ah)
          to label %.noexc40.i.i222.i.i unwind label %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i149.loopexit.split-lp.loopexit.i.i

.noexc40.i.i222.i.i:                              ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i221.i.i
  %.pr.i.i.i.i223.i.i = load ptr, ptr %154, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.not.i.i37.i.i224.i.i = icmp eq ptr %.pr.i.i.i.i223.i.i, null
  br i1 %.not.i.i37.i.i224.i.i, label %.preheader97.i.i.i.i177.i.i, label %bb.ge

bb.ge:                                            ; preds = %.noexc40.i.i222.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #18
  %i.xb = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %155)
          to label %.noexc.i.i.i.i226.i.i unwind label %bb.gf

.noexc.i.i.i.i226.i.i:                            ; preds = %bb.ge
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.xb, ptr noundef nonnull @.str.52, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i227.i.i unwind label %bb.gf

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i227.i.i: ; preds = %.noexc.i.i.i.i226.i.i
  %i.xc = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %155)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i228.i.i unwind label %bb.gg ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i228.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i227.i.i
  %i.xd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xc, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i229.i.i unwind label %bb.gg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i229.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i228.i.i
  %i.xe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xc, ptr noundef nonnull @.str.53, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73.i.i.i.i230.i.i unwind label %bb.gg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73.i.i.i.i230.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i229.i.i
  %i.xf = load ptr, ptr %154, align 8, !tbaa !53  ; 2 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !44
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !43
  %i.xj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xc, ptr noundef %i.xg, i64 noundef %i.xi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i231.i.i unwind label %bb.gg

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i231.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73.i.i.i.i230.i.i
  %i.xk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xj, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76.i.i.i.i232.i.i unwind label %bb.gg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76.i.i.i.i232.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i231.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %155)
          to label %bb.gi unwind label %bb.gf

bb.gf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76.i.i.i.i232.i.i, %.noexc.i.i.i.i226.i.i, %bb.ge
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.gg:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i231.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73.i.i.i.i230.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i229.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i228.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i227.i.i
  %i.xm = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %155)
          to label %bb.gh unwind label %bb.hg

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.pn.i.i.i.i225.i.i = phi { ptr, i32 } [ %i.xl, %bb.gf ], [ %i.xm, %bb.gg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %154) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #18
  br label %.body.i.i87.i.i

bb.gi:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76.i.i.i.i232.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #18
  %.pr83.i.i.i.i233.i.i = load ptr, ptr %154, align 8, !tbaa !53 ; 4 uses
  %.not.i77.i.i.i.i234.i.i = icmp eq ptr %.pr83.i.i.i.i233.i.i, null
  br i1 %.not.i77.i.i.i.i234.i.i, label %.preheader97.i.i.i.i177.i.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.xn = load ptr, ptr %.pr83.i.i.i.i233.i.i, align 8, !tbaa !44 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.pr83.i.i.i.i233.i.i, i64 16 ; 2 uses
  %i.xp = icmp eq ptr %i.xn, %i.xo
  br i1 %i.xp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i236.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i235.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i235.i.i: ; preds = %bb.gj
  %i.xq = load i64, ptr %i.xo, align 8, !tbaa !50
  %i.xr = add i64 %i.xq, 1
  call void @_ZdlPvm(ptr noundef %i.xn, i64 noundef %i.xr) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i236.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i236.i.i: ; preds = %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i235.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr83.i.i.i.i233.i.i, i64 noundef 32) #34
  br label %.preheader97.i.i.i.i177.i.i

.preheader97.i.i.i.i177.i.i:                      ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i236.i.i, %bb.gi, %.noexc40.i.i222.i.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i176.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %156, i8 0, i64 48, i1 false)
  %i.xs = icmp sgt i32 %i.wf, 0
  br i1 %i.xs, label %.lr.ph112.i.i.preheader.i.i180.i.i, label %.thread.i.i.i178.i.i

.lr.ph112.i.i.preheader.i.i180.i.i:               ; preds = %.preheader97.i.i.i.i177.i.i
  %i.xt = zext nneg i32 %i.wf to i64
  br label %.lr.ph112.i.i.i.i181.i.i

.thread.i.i.i178.i.i:                             ; preds = %.preheader97.i.i.i.i177.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %153)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i179.i.i

.lr.ph112.i.i.i.i181.i.i:                         ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS3_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSF_19MultiTargetTreeViewEEENS4_9CopyViewsEEEPNS4_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS2_6common15OptionalWeightsEEUlT_E_JiEEEvSV_DpT0_.exit.i.i.i.i, %.lr.ph112.i.i.preheader.i.i180.i.i
  %indvars.iv.i.i182.i.i = phi i64 [ 0, %.lr.ph112.i.i.preheader.i.i180.i.i ], [ %indvars.iv.next.i.i198.i.i, %_ZN4dmlc12OMPException3RunIZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS3_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSF_19MultiTargetTreeViewEEENS4_9CopyViewsEEEPNS4_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS2_6common15OptionalWeightsEEUlT_E_JiEEEvSV_DpT0_.exit.i.i.i.i ] ; 4 uses
  %.val8.val.i.i.i183.i.i = load ptr, ptr %i.dk, align 8, !tbaa !144 ; 3 uses
  %.val8.val9.i.i.i184.i.i = load ptr, ptr %i.rp, align 8, !tbaa !201 ; 2 uses
  %i.xu = icmp ne ptr %.val8.val.i.i.i183.i.i, null
  %i.xv = icmp eq ptr %.val8.val9.i.i.i184.i.i, null
  %i.xw = or i1 %i.xu, %i.xv
  br i1 %i.xw, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i185.i.i, label %bb.gk, !prof !70

bb.gk:                                            ; preds = %.lr.ph112.i.i.i.i181.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i185.i.i: ; preds = %.lr.ph112.i.i.i.i181.i.i
  %i.xx = ptrtoint ptr %.val8.val9.i.i.i184.i.i to i64
  %i.xy = ptrtoint ptr %.val8.val.i.i.i183.i.i to i64
  %i.xz = sub i64 %i.xx, %i.xy
  %i.ya = sdiv exact i64 %i.xz, 200
  %i.yb = icmp ugt i64 %i.ya, %indvars.iv.i.i182.i.i
  br i1 %i.yb, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i186.i.i, label %bb.gl, !prof !70

bb.gl:                                            ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i185.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i186.i.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i185.i.i
  %i.yc = getelementptr inbounds nuw [200 x i8], ptr %.val8.val.i.i.i183.i.i, i64 %indvars.iv.i.i182.i.i ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 192
  %i.ye = load i8, ptr %i.yd, align 8, !tbaa !210
  %i.yf = icmp eq i8 %i.ye, 0
  br i1 %i.yf, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i186.i.i
  %i.yg = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_14ScalarTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.yc, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i unwind label %bb.go

bb.gn:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i186.i.i
  %i.yh = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_19MultiTargetTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.yc, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i unwind label %bb.go

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i: ; preds = %bb.gn, %bb.gm
  %.sink.i.i.i.i.i.i220.i.i = phi i32 [ %i.yg, %bb.gm ], [ %i.yh, %bb.gn ]
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %indvars.iv.i.i182.i.i
  store i32 %.sink.i.i.i.i.i.i220.i.i, ptr %i.yi, align 4, !tbaa !83
  br label %_ZN4dmlc12OMPException3RunIZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS3_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSF_19MultiTargetTreeViewEEENS4_9CopyViewsEEEPNS4_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS2_6common15OptionalWeightsEEUlT_E_JiEEEvSV_DpT0_.exit.i.i.i.i

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %i.yj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.yk = extractvalue { ptr, i32 } %i.yj, 0      ; 2 uses
  %i.yl = extractvalue { ptr, i32 } %i.yj, 1      ; 2 uses
  %i.ym = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.yn = icmp eq i32 %i.yl, %i.ym
  br i1 %i.yn, label %bb.gp, label %bb.gt

bb.gp:                                            ; preds = %bb.go
  %i.yo = call ptr @__cxa_begin_catch(ptr %i.yk) #18 ; 0 uses
  %i.yp = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ri) #18 ; 2 uses
  %.not.i.i.i56.i.i210.i.i = icmp eq i32 %i.yp, 0
  br i1 %.not.i.i.i56.i.i210.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i212.i.i, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.yp) #32
          to label %.noexc11.i.i.i211.i.i unwind label %bb.gz

.noexc11.i.i.i211.i.i:                            ; preds = %bb.gq
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i212.i.i: ; preds = %bb.gp
  %i.yq = load ptr, ptr %156, align 8, !tbaa !290
  %.not25.i.i.i213.i.i = icmp eq ptr %i.yq, null
  br i1 %.not25.i.i.i213.i.i, label %bb.gr, label %.invoke.i.i195.i.i

bb.gr:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i212.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %144) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #18
  %i.yr = load ptr, ptr %144, align 8, !tbaa !290
  store ptr null, ptr %144, align 8, !tbaa !290
  %i.ys = load ptr, ptr %156, align 8, !tbaa !290 ; 2 uses
  store ptr %i.ys, ptr %142, align 8, !tbaa !290
  store ptr %i.yr, ptr %156, align 8, !tbaa !290
  %.not.i.i12.i.i.i214.i.i = icmp eq ptr %i.ys, null
  br i1 %.not.i.i12.i.i.i214.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i219.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i215.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i219.i.i: ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i218.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i215.i.i: ; preds = %bb.gr
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %142) #18
  %.pr.i.i.i216.i.i = load ptr, ptr %144, align 8, !tbaa !290
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #18
  %.not.i.i57.i.i217.i.i = icmp eq ptr %.pr.i.i.i216.i.i, null
  br i1 %.not.i.i57.i.i217.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i218.i.i, label %bb.gs

bb.gs:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i215.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %144) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i218.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i218.i.i: ; preds = %bb.gs, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i215.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i219.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #18
  br label %.invoke.i.i195.i.i

bb.gt:                                            ; preds = %bb.go
  %i.yt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.yu = icmp eq i32 %i.yl, %i.yt
  br i1 %i.yu, label %bb.gu, label %.body.i.i.i.i187.i.i

bb.gu:                                            ; preds = %bb.gt
  %i.yv = call ptr @__cxa_begin_catch(ptr %i.yk) #18 ; 0 uses
  %i.yw = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ri) #18 ; 2 uses
  %.not.i.i13.i.i.i191.i.i = icmp eq i32 %i.yw, 0
  br i1 %.not.i.i13.i.i.i191.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit15.i.i.i193.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.yw) #32
          to label %.noexc14.i.i.i192.i.i unwind label %bb.gy

.noexc14.i.i.i192.i.i:                            ; preds = %bb.gv
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit15.i.i.i193.i.i: ; preds = %bb.gu
  %i.yx = load ptr, ptr %156, align 8, !tbaa !290
  %.not.i55.i.i194.i.i = icmp eq ptr %i.yx, null
  br i1 %.not.i55.i.i194.i.i, label %bb.gw, label %.invoke.i.i195.i.i

bb.gw:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit15.i.i.i193.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %143) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #18
  %i.yy = load ptr, ptr %143, align 8, !tbaa !290
  store ptr null, ptr %143, align 8, !tbaa !290
  %i.yz = load ptr, ptr %156, align 8, !tbaa !290 ; 2 uses
  store ptr %i.yz, ptr %141, align 8, !tbaa !290
  store ptr %i.yy, ptr %156, align 8, !tbaa !290
  %.not.i.i16.i.i.i204.i.i = icmp eq ptr %i.yz, null
  br i1 %.not.i.i16.i.i.i204.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit17.thread.i.i.i209.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit17.i.i.i205.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit17.thread.i.i.i209.i.i: ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19.i.i.i208.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit17.i.i.i205.i.i: ; preds = %bb.gw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %141) #18
  %.pr23.i.i.i206.i.i = load ptr, ptr %143, align 8, !tbaa !290
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #18
  %.not.i18.i.i.i207.i.i = icmp eq ptr %.pr23.i.i.i206.i.i, null
  br i1 %.not.i18.i.i.i207.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19.i.i.i208.i.i, label %bb.gx

bb.gx:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit17.i.i.i205.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %143) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19.i.i.i208.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19.i.i.i208.i.i: ; preds = %bb.gx, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit17.i.i.i205.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit17.thread.i.i.i209.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #18
  br label %.invoke.i.i195.i.i

bb.gy:                                            ; preds = %bb.gv
  %i.za = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i187.i.i unwind label %bb.ha

bb.gz:                                            ; preds = %bb.gq
  %i.zb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i187.i.i unwind label %bb.ha

.invoke.i.i195.i.i:                               ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19.i.i.i208.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit15.i.i.i193.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i218.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i212.i.i
  %i.zc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ri) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS3_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSF_19MultiTargetTreeViewEEENS4_9CopyViewsEEEPNS4_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS2_6common15OptionalWeightsEEUlT_E_JiEEEvSV_DpT0_.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i196.i.i

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %i.zd = landingpad { ptr, i32 }
          catch ptr null
  %i.ze = extractvalue { ptr, i32 } %i.zd, 0
  call void @__clang_call_terminate(ptr %i.ze) #35
  unreachable

_ZN4dmlc12OMPException3RunIZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS3_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSF_19MultiTargetTreeViewEEENS4_9CopyViewsEEEPNS4_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS2_6common15OptionalWeightsEEUlT_E_JiEEEvSV_DpT0_.exit.i.i.i.i: ; preds = %.invoke.i.i195.i.i, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i
  %indvars.iv.next.i.i198.i.i = add nuw nsw i64 %indvars.iv.i.i182.i.i, 1 ; 2 uses
  %exitcond138.not.i.i.i.i199.i.i = icmp eq i64 %indvars.iv.next.i.i198.i.i, %i.xt
  br i1 %exitcond138.not.i.i.i.i199.i.i, label %bb.hb, label %.lr.ph112.i.i.i.i181.i.i, !llvm.loop !659

bb.hb:                                            ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS3_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSF_19MultiTargetTreeViewEEENS4_9CopyViewsEEEPNS4_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS2_6common15OptionalWeightsEEUlT_E_JiEEEvSV_DpT0_.exit.i.i.i.i
  %.pr85.pr.i.i.i.i200.i.i = load ptr, ptr %156, align 8, !tbaa !290 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %153)
  %.not.i78.i.i.i.i201.i.i = icmp eq ptr %.pr85.pr.i.i.i.i200.i.i, null
  br i1 %.not.i78.i.i.i.i201.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i179.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i202.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i202.i.i: ; preds = %bb.hb
  store ptr %.pr85.pr.i.i.i.i200.i.i, ptr %153, align 8, !tbaa !290
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %153) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %153) #32
          to label %bb.hc unwind label %bb.hd

bb.hc:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i202.i.i
  unreachable

bb.hd:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i202.i.i
  %i.zf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zg = load ptr, ptr %153, align 8, !tbaa !290
  %.not.i2.i.i.i.i.i203.i.i = icmp eq ptr %i.zg, null
  br i1 %.not.i2.i.i.i.i.i203.i.i, label %.body.i.i.i.i187.i.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %153) #18
  br label %.body.i.i.i.i187.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i179.i.i:   ; preds = %bb.hb, %.thread.i.i.i178.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %153)
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #18
  br label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i196.i.i: ; preds = %.invoke.i.i195.i.i
  %lpad.loopexit.split-lp133.i.i.i.i197.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i187.i.i

.body.i.i.i.i187.i.i:                             ; preds = %bb.gt, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i196.i.i, %bb.he, %bb.hd, %bb.gz, %bb.gy
  %eh.lpad-body.i.i.i.i188.i.i = phi { ptr, i32 } [ %i.zf, %bb.hd ], [ %i.zf, %bb.he ], [ %lpad.loopexit.split-lp133.i.i.i.i197.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i196.i.i ], [ %i.za, %bb.gy ], [ %i.zb, %bb.gz ], [ %i.yj, %bb.gt ]
  %i.zh = load ptr, ptr %156, align 8, !tbaa !290
  %.not.i.i80.i.i.i.i189.i.i = icmp eq ptr %i.zh, null
  br i1 %.not.i.i80.i.i.i.i189.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i190.i.i, label %bb.hf

bb.hf:                                            ; preds = %.body.i.i.i.i187.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %156) #18
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i190.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i190.i.i: ; preds = %bb.hf, %.body.i.i.i.i187.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #18
  br label %.body.i.i87.i.i

bb.hg:                                            ; preds = %bb.gg
  %i.zi = landingpad { ptr, i32 }
          catch ptr null
  %i.zj = extractvalue { ptr, i32 } %i.zi, 0
  call void @__clang_call_terminate(ptr %i.zj) #35
  unreachable

bb.hh:                                            ; preds = %bb.fv, %bb.fs
  %.pn.pn.i.i158.i.i = phi { ptr, i32 } [ %.pn.i.i162.i.i, %bb.fv ], [ %i.vv, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #18
  br label %.body.i.i87.i.i

.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i149.loopexit.i.i: ; preds = %bb.gc, %bb.gb
  %lpad.loopexit307.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i87.i.i

.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i149.loopexit.split-lp.loopexit.i.i: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i221.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i148.i.i
  %.ph.ph.i.i = phi ptr [ %i.va, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i221.i.i ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i148.i.i ]
  %.ph306.ph.i.i = phi ptr [ %i.vb, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i221.i.i ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i148.i.i ]
  %lpad.loopexit310.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i87.i.i

.body.i.i87.thread.i.i:                           ; preds = %bb.fn
  %lpad.loopexit.split-lp311.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i90.i.i

_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i: ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i179.i.i, %bb.fk
  %i.zk = phi ptr [ %i.va, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i179.i.i ], [ null, %bb.fk ], [ %i.va, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i ] ; 5 uses
  %i.zl = phi ptr [ %i.vb, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i179.i.i ], [ null, %bb.fk ], [ %i.vb, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i ] ; 5 uses
  %i.zm = uitofp i64 %spec.select.i.i.i.i73.i.i to double
  %i.zn = fmul nnan double %i.zm, 1.562500e-02
  %i.zo = call double @llvm.ceil.f64(double %i.zn)
  %i.zp = fptoui double %i.zo to i64              ; 3 uses
  %i.zq = icmp eq i32 %i.ul, 1
  br i1 %i.zq, label %.preheader.i.i.i.i.i141.i.i, label %bb.hl

.preheader.i.i.i.i.i141.i.i:                      ; preds = %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i, %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.thread.i.i
  %200 = phi i64 [ %i.wl, %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.thread.i.i ], [ %i.zp, %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i ] ; 2 uses
  %i.zr = phi ptr [ %i.vb, %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.thread.i.i ], [ %i.zl, %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i ] ; 3 uses
  %201 = phi ptr [ %i.va, %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.thread.i.i ], [ %i.zk, %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i ] ; 3 uses
  %.not126.i.i.i.i.i142.i.i = icmp eq i64 %200, 0
  br i1 %.not126.i.i.i.i.i142.i.i, label %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i, label %.lr.ph119.i.i.i.i.i143.preheader.i.i

.lr.ph119.i.i.i.i.i143.preheader.i.i:             ; preds = %.preheader.i.i.i.i.i141.i.i
  %i.zs = trunc nuw i8 %i.um to i1
  br label %.lr.ph119.i.i.i.i.i143.i.i

.lr.ph119.i.i.i.i.i143.i.i:                       ; preds = %.noexc45.i.i145.i.i, %.lr.ph119.i.i.i.i.i143.preheader.i.i
  %.0118.i.i.i.i.i144.i.i = phi i64 [ %i.abf, %.noexc45.i.i145.i.i ], [ 0, %.lr.ph119.i.i.i.i.i143.preheader.i.i ] ; 2 uses
  %i.zt = shl i64 %.0118.i.i.i.i.i144.i.i, 6      ; 3 uses
  %i.zu = sub i64 %spec.select.i.i.i.i73.i.i, %i.zt
  %.sroa.speculated.i259.i.i = call i64 @llvm.umin.i64(i64 %i.zu, i64 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #18
  %i.zv = add i64 %.sroa.speculated.i259.i.i, %i.zt
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %139, i64 noundef %i.zt, i64 noundef %i.zv)
          to label %.noexc273.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc273.i.i:                                    ; preds = %.lr.ph119.i.i.i.i.i143.i.i
  %i.zw = load i64, ptr %i.rl, align 8, !tbaa !314
  %i.zx = load i64, ptr %139, align 8, !tbaa !315
  %i.zy = sub i64 %i.zw, %i.zx                    ; 3 uses
  %.val.i.i260.i.i = load ptr, ptr %198, align 8, !tbaa !147 ; 5 uses
  %.val12.i.i261.i.i = load ptr, ptr %i.rq, align 8, !tbaa !148
  %i.zz = ptrtoint ptr %.val12.i.i261.i.i to i64
  %i.aaa = ptrtoint ptr %.val.i.i260.i.i to i64
  %i.aab = sub i64 %i.zz, %i.aaa
  %i.aac = ashr exact i64 %i.aab, 5               ; 2 uses
  %i.aad = icmp eq i64 %i.zy, -1
  br i1 %i.aad, label %.split.i.i.i.i263.i.i, label %bb.hi

bb.hi:                                            ; preds = %.noexc273.i.i
  %.not.i.i.i.i262.i.i = icmp ugt i64 %i.zy, %i.aac
  br i1 %.not.i.i.i.i262.i.i, label %bb.hj, label %.split.i.i.i.i263.i.i, !prof !173

bb.hj:                                            ; preds = %bb.hi
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i.i263.i.i:                            ; preds = %bb.hi, %.noexc273.i.i
  %i.aae = phi i64 [ %i.zy, %bb.hi ], [ %i.aac, %.noexc273.i.i ] ; 4 uses
  %i.aaf = icmp ne ptr %.val.i.i260.i.i, null
  %i.aag = icmp eq i64 %i.aae, 0                  ; 2 uses
  %i.aah = or i1 %i.aaf, %i.aag
  br i1 %i.aah, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i264.i.i, label %bb.hk, !prof !70

bb.hk:                                            ; preds = %.split.i.i.i.i263.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i264.i.i: ; preds = %.split.i.i.i.i263.i.i
  invoke void @_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %196, ptr noundef nonnull align 8 dereferenceable(16) %139, i32 noundef %i.un, i64 %i.aae, ptr %.val.i.i260.i.i)
          to label %.noexc274.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc274.i.i:                                    ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i264.i.i
  %i.aai = load i64, ptr %139, align 8, !tbaa !315 ; 2 uses
  %i.aaj = load i64, ptr %i.rf, align 8, !tbaa !312
  %i.aak = add i64 %i.aaj, %i.aai
  %i.aal = load i64, ptr %i.rl, align 8, !tbaa !314
  %i.aam = sub i64 %i.aal, %i.aai
  invoke fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.dk, i64 noundef %i.aak, i64 %i.aae, ptr %.val.i.i260.i.i, i64 noundef %i.aam, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %161, ptr noundef nonnull align 8 dereferenceable(24) %157, i1 noundef zeroext %i.zs, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %160)
          to label %.noexc275.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc275.i.i:                                    ; preds = %.noexc274.i.i
  br i1 %i.aag, label %.noexc45.i.i145.i.i, label %.lr.ph.i.i.i265.i.i

.lr.ph.i.i.i265.i.i:                              ; preds = %.noexc275.i.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i271.i.i
  %.04.i.i.i266.i.i = phi i64 [ %i.abe, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i271.i.i ], [ 0, %.noexc275.i.i ] ; 2 uses
  %i.aan = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i260.i.i, i64 %.04.i.i.i266.i.i ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 8
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !167 ; 3 uses
  %i.aaq = load ptr, ptr %i.aan, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i.i267.i.i = icmp eq ptr %i.aaq, %i.aap
  br i1 %.not6.i.i.i.i.i.i.i.i.i267.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i271.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader:        ; preds = %.lr.ph.i.i.i265.i.i
  %i.aar = ptrtoaddr ptr %i.aaq to i64
  %i.aas = ptrtoaddr ptr %i.aap to i64
  %i.aat = add i64 %i.aas, -4
  %i.aau = sub i64 %i.aat, %i.aar                 ; 2 uses
  %i.aav = lshr i64 %i.aau, 2
  %i.aaw = add nuw nsw i64 %i.aav, 1              ; 2 uses
  %min.iters.check916 = icmp ult i64 %i.aau, 28
  br i1 %min.iters.check916, label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader976, label %vector.ph917

vector.ph917:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader
  %n.vec918 = and i64 %i.aaw, 9223372036854775800 ; 3 uses
  %i.aax = shl i64 %n.vec918, 2
  %i.aay = getelementptr i8, ptr %i.aaq, i64 %i.aax
  br label %vector.body919

vector.body919:                                   ; preds = %vector.body919, %vector.ph917
  %index920 = phi i64 [ 0, %vector.ph917 ], [ %index.next922, %vector.body919 ] ; 2 uses
  %i.aaz = shl i64 %index920, 2
  %next.gep921 = getelementptr i8, ptr %i.aaq, i64 %i.aaz ; 2 uses
  %i.aba = getelementptr i8, ptr %next.gep921, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep921, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.aba, align 4, !tbaa !72
  %index.next922 = add nuw i64 %index920, 8       ; 2 uses
  %i.abb = icmp eq i64 %index.next922, %n.vec918
  br i1 %i.abb, label %middle.block923, label %vector.body919, !llvm.loop !660

middle.block923:                                  ; preds = %vector.body919
  %cmp.n924 = icmp eq i64 %i.aaw, %n.vec918
  br i1 %cmp.n924, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i271.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader976

.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader976:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader, %middle.block923
  %.07.i.i.i.i.i.i.i.i.i269.i.i.ph = phi ptr [ %i.aaq, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader ], [ %i.aay, %middle.block923 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i

.lr.ph.i.i.i.i.i.i.i.i.i268.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader976, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i
  %.07.i.i.i.i.i.i.i.i.i269.i.i = phi ptr [ %i.abc, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i ], [ %.07.i.i.i.i.i.i.i.i.i269.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader976 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i.i269.i.i, align 4, !tbaa !72
  %i.abc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i269.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i270.i.i = icmp eq ptr %i.abc, %i.aap
  br i1 %.not.i.i.i.i.i.i.i.i.i270.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i271.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i, !llvm.loop !661

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i271.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i, %middle.block923, %.lr.ph.i.i.i265.i.i
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aan, i64 24
  store i8 1, ptr %i.abd, align 8, !tbaa !319
  %i.abe = add nuw i64 %.04.i.i.i266.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i272.i.i = icmp eq i64 %i.abe, %i.aae
  br i1 %exitcond.not.i.i.i272.i.i, label %.noexc45.i.i145.i.i, label %.lr.ph.i.i.i265.i.i, !llvm.loop !3

.noexc45.i.i145.i.i:                              ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i271.i.i, %.noexc275.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #18
  %i.abf = add nuw i64 %.0118.i.i.i.i.i144.i.i, 1 ; 2 uses
  %exitcond148.not.i.i.i.i.i146.i.i = icmp eq i64 %i.abf, %200
  br i1 %exitcond148.not.i.i.i.i.i146.i.i, label %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i, label %.lr.ph119.i.i.i.i.i143.i.i, !llvm.loop !662

bb.hl:                                            ; preds = %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i32 %i.ul, ptr %i.ae, align 4, !tbaa !83, !noalias !793
  store i32 1, ptr %i.af, align 4, !tbaa !83, !noalias !793
  %.not.i.i.i.i.i.i74.i.i = icmp slt i32 %i.ul, 1
  br i1 %.not.i.i.i.i.i.i74.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i122.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i75.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i75.i.i: ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.preheader96.i.i.i.i.i76.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i122.i.i: ; preds = %bb.hl
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %150, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.af)
          to label %.noexc46.i.i125.i.i unwind label %.body.i.i87.thread.i.i.a

.noexc46.i.i125.i.i:                              ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i122.i.i
  %.pr.i.i.i.i.i126.i.i = load ptr, ptr %150, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.not.i.i.i44.i.i127.i.i = icmp eq ptr %.pr.i.i.i.i.i126.i.i, null
  br i1 %.not.i.i.i44.i.i127.i.i, label %.preheader96.i.i.i.i.i76.i.i, label %bb.hm

bb.hm:                                            ; preds = %.noexc46.i.i125.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #18
  %i.abg = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %151)
          to label %.noexc.i.i.i.i.i129.i.i unwind label %bb.hn

.noexc.i.i.i.i.i129.i.i:                          ; preds = %bb.hm
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.abg, ptr noundef nonnull @.str.52, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i130.i.i unwind label %bb.hn

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i130.i.i: ; preds = %.noexc.i.i.i.i.i129.i.i
  %i.abh = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %151)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i131.i.i unwind label %bb.ho ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i131.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i130.i.i
  %i.abi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abh, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i132.i.i unwind label %bb.ho ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i132.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i131.i.i
  %i.abj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abh, ptr noundef nonnull @.str.53, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i.i133.i.i unwind label %bb.ho ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i.i133.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i132.i.i
  %i.abk = load ptr, ptr %150, align 8, !tbaa !53 ; 2 uses
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !44
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !43
  %i.abo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abh, ptr noundef %i.abl, i64 noundef %i.abn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i134.i.i unwind label %bb.ho

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i134.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i.i133.i.i
  %i.abp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abo, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i.i135.i.i unwind label %bb.ho ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i.i135.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i134.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %151)
          to label %bb.hq unwind label %bb.hn

bb.hn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i.i135.i.i, %.noexc.i.i.i.i.i129.i.i, %bb.hm
  %i.abq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hp

bb.ho:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i134.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i.i133.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i132.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i131.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i130.i.i
  %i.abr = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %151)
          to label %bb.hp unwind label %bb.in

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.pn.i.i.i.i.i128.i.i = phi { ptr, i32 } [ %i.abq, %bb.hn ], [ %i.abr, %bb.ho ]
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %150) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #18
  br label %.body.i.i87.i.i

bb.hq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i.i135.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #18
  %.pr82.i.i.i.i.i136.i.i = load ptr, ptr %150, align 8, !tbaa !53 ; 4 uses
  %.not.i76.i.i.i.i.i137.i.i = icmp eq ptr %.pr82.i.i.i.i.i136.i.i, null
  br i1 %.not.i76.i.i.i.i.i137.i.i, label %.preheader96.i.i.i.i.i76.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.abs = load ptr, ptr %.pr82.i.i.i.i.i136.i.i, align 8, !tbaa !44 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i.i136.i.i, i64 16 ; 2 uses
  %i.abu = icmp eq ptr %i.abs, %i.abt
  br i1 %i.abu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i139.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i138.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i138.i.i: ; preds = %bb.hr
  %i.abv = load i64, ptr %i.abt, align 8, !tbaa !50
  %i.abw = add i64 %i.abv, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abw) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i139.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i139.i.i: ; preds = %bb.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i138.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i.i136.i.i, i64 noundef 32) #34
  br label %.preheader96.i.i.i.i.i76.i.i

.preheader96.i.i.i.i.i76.i.i:                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i139.i.i, %bb.hq, %.noexc46.i.i125.i.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i75.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %152, i8 0, i64 48, i1 false)
  %.not122.i.i.i.i.i77.i.i = icmp eq i64 %i.zp, 0
  br i1 %.not122.i.i.i.i.i77.i.i, label %.thread.i.i.i.i121.i.i, label %.lr.ph111.i.i.preheader.i.i.i78.i.i

.lr.ph111.i.i.preheader.i.i.i78.i.i:              ; preds = %.preheader96.i.i.i.i.i76.i.i
  %i.abx = trunc nuw i8 %i.um to i1
  br label %.lr.ph111.i.i.i.i.i79.i.i

.thread.i.i.i.i121.i.i:                           ; preds = %.preheader96.i.i.i.i.i76.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %149)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i.i103.i.i

.lr.ph111.i.i.i.i.i79.i.i:                        ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i, %.lr.ph111.i.i.preheader.i.i.i78.i.i
  %.060110.i.i.i.i.i80.i.i = phi i64 [ %i.aeg, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i ], [ 0, %.lr.ph111.i.i.preheader.i.i.i78.i.i ] ; 2 uses
  %i.aby = shl i64 %.060110.i.i.i.i.i80.i.i, 6    ; 3 uses
  %i.abz = sub i64 %spec.select.i.i.i.i73.i.i, %i.aby
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.abz, i64 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #18
  %i.aca = add i64 %.sroa.speculated.i.i.i, %i.aby
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %140, i64 noundef %i.aby, i64 noundef %i.aca)
          to label %.noexc256.i.i unwind label %bb.hv

.noexc256.i.i:                                    ; preds = %.lr.ph111.i.i.i.i.i79.i.i
  %i.acb = load i64, ptr %i.rk, align 8, !tbaa !314
  %i.acc = load i64, ptr %140, align 8, !tbaa !315
  %i.acd = sub i64 %i.acb, %i.acc                 ; 3 uses
  %.val.i.i254.i.i = load ptr, ptr %198, align 8, !tbaa !147 ; 5 uses
  %.val12.i.i.i.i = load ptr, ptr %i.rq, align 8, !tbaa !148
  %i.ace = ptrtoint ptr %.val12.i.i.i.i to i64
  %i.acf = ptrtoint ptr %.val.i.i254.i.i to i64
  %i.acg = sub i64 %i.ace, %i.acf
  %i.ach = ashr exact i64 %i.acg, 5               ; 2 uses
  %i.aci = icmp eq i64 %i.acd, -1
  br i1 %i.aci, label %.split.i.i.i.i.i.i, label %bb.hs

bb.hs:                                            ; preds = %.noexc256.i.i
  %.not.i.i.i.i255.i.i = icmp ugt i64 %i.acd, %i.ach
  br i1 %.not.i.i.i.i255.i.i, label %bb.ht, label %.split.i.i.i.i.i.i, !prof !173

bb.ht:                                            ; preds = %bb.hs
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i.i.i.i:                               ; preds = %bb.hs, %.noexc256.i.i
  %i.acj = phi i64 [ %i.acd, %bb.hs ], [ %i.ach, %.noexc256.i.i ] ; 4 uses
  %i.ack = icmp ne ptr %.val.i.i254.i.i, null
  %i.acl = icmp eq i64 %i.acj, 0                  ; 2 uses
  %i.acm = or i1 %i.ack, %i.acl
  br i1 %i.acm, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i.i.i, label %bb.hu, !prof !70

bb.hu:                                            ; preds = %.split.i.i.i.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i.i.i: ; preds = %.split.i.i.i.i.i.i
  invoke void @_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %196, ptr noundef nonnull align 8 dereferenceable(16) %140, i32 noundef %i.un, i64 %i.acj, ptr %.val.i.i254.i.i)
          to label %.noexc257.i.i unwind label %bb.hv

.noexc257.i.i:                                    ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i.i.i
  %i.acn = load i64, ptr %140, align 8, !tbaa !315 ; 2 uses
  %i.aco = load i64, ptr %i.rf, align 8, !tbaa !312
  %i.acp = add i64 %i.aco, %i.acn
  %i.acq = load i64, ptr %i.rk, align 8, !tbaa !314
  %i.acr = sub i64 %i.acq, %i.acn
  invoke fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.dk, i64 noundef %i.acp, i64 %i.acj, ptr %.val.i.i254.i.i, i64 noundef %i.acr, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %161, ptr noundef nonnull align 8 dereferenceable(24) %157, i1 noundef zeroext %i.abx, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %160)
          to label %.noexc258.i.i unwind label %bb.hv

.noexc258.i.i:                                    ; preds = %.noexc257.i.i
  br i1 %i.acl, label %_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258.i.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i
  %.04.i.i.i.i.i = phi i64 [ %i.adj, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i ], [ 0, %.noexc258.i.i ] ; 2 uses
  %i.acs = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i254.i.i, i64 %.04.i.i.i.i.i ; 3 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !167 ; 3 uses
  %i.acv = load ptr, ptr %i.acs, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.acv, %i.acu
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.lr.ph.i.i.i.i.i
  %i.acw = ptrtoaddr ptr %i.acv to i64
  %i.acx = ptrtoaddr ptr %i.acu to i64
  %i.acy = add i64 %i.acx, -4
  %i.acz = sub i64 %i.acy, %i.acw                 ; 2 uses
  %i.ada = lshr i64 %i.acz, 2
  %i.adb = add nuw nsw i64 %i.ada, 1              ; 2 uses
  %min.iters.check927 = icmp ult i64 %i.acz, 28
  br i1 %min.iters.check927, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader977, label %vector.ph928

vector.ph928:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec929 = and i64 %i.adb, 9223372036854775800 ; 3 uses
  %i.adc = shl i64 %n.vec929, 2
  %i.add = getelementptr i8, ptr %i.acv, i64 %i.adc
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %vector.ph928
  %index931 = phi i64 [ 0, %vector.ph928 ], [ %index.next933, %vector.body930 ] ; 2 uses
  %i.ade = shl i64 %index931, 2
  %next.gep932 = getelementptr i8, ptr %i.acv, i64 %i.ade ; 2 uses
  %i.adf = getelementptr i8, ptr %next.gep932, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep932, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.adf, align 4, !tbaa !72
  %index.next933 = add nuw i64 %index931, 8       ; 2 uses
  %i.adg = icmp eq i64 %index.next933, %n.vec929
  br i1 %i.adg, label %middle.block934, label %vector.body930, !llvm.loop !665

middle.block934:                                  ; preds = %vector.body930
  %cmp.n935 = icmp eq i64 %i.adb, %n.vec929
  br i1 %cmp.n935, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader977

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader977:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block934
  %.07.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.acv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.add, %middle.block934 ]
end_hunk_0
begin_hunk_1_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a
  %i.adk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.adl = extractvalue { ptr, i32 } %i.adk, 0    ; 2 uses
  %i.adm = extractvalue { ptr, i32 } %i.adk, 1    ; 2 uses
  %i.adn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.ado = icmp eq i32 %i.adm, %i.adn
  br i1 %i.ado, label %bb.hw, label %bb.ia

bb.hw:                                            ; preds = %bb.hv
  %i.adp = call ptr @__cxa_begin_catch(ptr %i.adl) #18 ; 0 uses
  %i.adq = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.rj) #18 ; 2 uses
  %.not.i.i.i3.i.i.i111.i.i = icmp eq i32 %i.adq, 0
  br i1 %.not.i.i.i3.i.i.i111.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i113.i.i, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.adq) #32
          to label %.noexc.i.i42.i.i112.i.i unwind label %bb.ig

.noexc.i.i42.i.i112.i.i:                          ; preds = %bb.hx
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i113.i.i: ; preds = %bb.hw
  %i.adr = load ptr, ptr %152, align 8, !tbaa !290
  %.not22.i.i.i.i114.i.i = icmp eq ptr %i.adr, null
  br i1 %.not22.i.i.i.i114.i.i, label %bb.hy, label %.sink.split.i.i.i.i95.i.i

bb.hy:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i113.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %148) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #18
  %i.ads = load ptr, ptr %148, align 8, !tbaa !290
  store ptr null, ptr %148, align 8, !tbaa !290
  %i.adt = load ptr, ptr %152, align 8, !tbaa !290 ; 2 uses
  store ptr %i.adt, ptr %146, align 8, !tbaa !290
  store ptr %i.ads, ptr %152, align 8, !tbaa !290
  %.not.i.i9.i.i.i.i115.i.i = icmp eq ptr %i.adt, null
  br i1 %.not.i.i9.i.i.i.i115.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i.i120.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i116.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i.i120.i.i: ; preds = %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i119.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i116.i.i: ; preds = %bb.hy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %146) #18
  %.pr.i.i43.i.i117.i.i = load ptr, ptr %148, align 8, !tbaa !290
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #18
  %.not.i.i4.i.i.i118.i.i = icmp eq ptr %.pr.i.i43.i.i117.i.i, null
  br i1 %.not.i.i4.i.i.i118.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i119.i.i, label %bb.hz

bb.hz:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i116.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %148) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i119.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i119.i.i: ; preds = %bb.hz, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i116.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i.i120.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #18
  br label %.sink.split.i.i.i.i95.i.i

bb.ia:                                            ; preds = %bb.hv
  %i.adu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.adv = icmp eq i32 %i.adm, %i.adu
  br i1 %i.adv, label %bb.ib, label %.body.i.i.i.i.i81.i.i

bb.ib:                                            ; preds = %bb.ia
  %i.adw = call ptr @__cxa_begin_catch(ptr %i.adl) #18 ; 0 uses
  %i.adx = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.rj) #18 ; 2 uses
  %.not.i.i10.i.i.i.i91.i.i = icmp eq i32 %i.adx, 0
  br i1 %.not.i.i10.i.i.i.i91.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i.i93.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.adx) #32
          to label %.noexc11.i.i.i.i92.i.i unwind label %bb.if

.noexc11.i.i.i.i92.i.i:                           ; preds = %bb.ic
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i.i93.i.i: ; preds = %bb.ib
  %i.ady = load ptr, ptr %152, align 8, !tbaa !290
  %.not.i.i41.i.i94.i.i = icmp eq ptr %i.ady, null
  br i1 %.not.i.i41.i.i94.i.i, label %bb.id, label %.sink.split.i.i.i.i95.i.i

bb.id:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i.i93.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %147) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #18
  %i.adz = load ptr, ptr %147, align 8, !tbaa !290
  store ptr null, ptr %147, align 8, !tbaa !290
  %i.aea = load ptr, ptr %152, align 8, !tbaa !290 ; 2 uses
  store ptr %i.aea, ptr %145, align 8, !tbaa !290
  store ptr %i.adz, ptr %152, align 8, !tbaa !290
  %.not.i.i13.i.i.i.i105.i.i = icmp eq ptr %i.aea, null
  br i1 %.not.i.i13.i.i.i.i105.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i.i110.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i.i106.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i.i110.i.i: ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i109.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i.i106.i.i: ; preds = %bb.id
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %145) #18
  %.pr20.i.i.i.i107.i.i = load ptr, ptr %147, align 8, !tbaa !290
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #18
  %.not.i15.i.i.i.i108.i.i = icmp eq ptr %.pr20.i.i.i.i107.i.i, null
  br i1 %.not.i15.i.i.i.i108.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i109.i.i, label %bb.ie

bb.ie:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i.i106.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %147) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i109.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i109.i.i: ; preds = %bb.ie, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i.i106.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i.i110.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #18
  br label %.sink.split.i.i.i.i95.i.i

bb.if:                                            ; preds = %bb.ic
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i.i81.i.i unwind label %bb.ih

bb.ig:                                            ; preds = %bb.hx
  %i.aec = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i.i81.i.i unwind label %bb.ih

.sink.split.i.i.i.i95.i.i:                        ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i109.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i.i93.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i119.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i113.i.i
  %i.aed = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.rj) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i96.i.i

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.aee = landingpad { ptr, i32 }
          catch ptr null
  %i.aef = extractvalue { ptr, i32 } %i.aee, 0
  call void @__clang_call_terminate(ptr %i.aef) #35
  unreachable

_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i95.i.i, %_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_.exit.i.i
  %i.aeg = add nuw i64 %.060110.i.i.i.i.i80.i.i, 1 ; 2 uses
  %exitcond144.not.i.i.i.i.i98.i.i = icmp eq i64 %i.aeg, %i.zp
  br i1 %exitcond144.not.i.i.i.i.i98.i.i, label %bb.ii, label %.lr.ph111.i.i.i.i.i79.i.i, !llvm.loop !667

bb.ii:                                            ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i
  %.pr84.pr.i.i.i.i.i99.i.i = load ptr, ptr %152, align 8, !tbaa !290 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %149)
  %.not.i77.i.i.i.i.i100.i.i = icmp eq ptr %.pr84.pr.i.i.i.i.i99.i.i, null
  br i1 %.not.i77.i.i.i.i.i100.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i.i103.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i.i101.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i.i101.i.i: ; preds = %bb.ii
  store ptr %.pr84.pr.i.i.i.i.i99.i.i, ptr %149, align 8, !tbaa !290
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %149) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %149) #32
          to label %bb.ij unwind label %bb.ik

bb.ij:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i.i101.i.i
  unreachable

bb.ik:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i.i101.i.i
  %i.aeh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aei = load ptr, ptr %149, align 8, !tbaa !290
  %.not.i2.i.i.i.i.i.i102.i.i = icmp eq ptr %i.aei, null
  br i1 %.not.i2.i.i.i.i.i.i102.i.i, label %.body.i.i.i.i.i81.i.i, label %bb.il

bb.il:                                            ; preds = %bb.ik
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %149) #18
  br label %.body.i.i.i.i.i81.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i.i103.i.i: ; preds = %bb.ii, %.thread.i.i.i.i121.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %149)
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #18
  br label %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i96.i.i: ; preds = %.sink.split.i.i.i.i95.i.i
  %lpad.loopexit.split-lp139.i.i.i.i.i97.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i81.i.i

.body.i.i.i.i.i81.i.i:                            ; preds = %bb.ia, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i96.i.i, %bb.il, %bb.ik, %bb.ig, %bb.if
  %eh.lpad-body.i.i.i.i.i82.i.i = phi { ptr, i32 } [ %i.aeh, %bb.ik ], [ %i.aeh, %bb.il ], [ %lpad.loopexit.split-lp139.i.i.i.i.i97.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i96.i.i ], [ %i.aeb, %bb.if ], [ %i.aec, %bb.ig ], [ %i.adk, %bb.ia ]
  %i.aej = load ptr, ptr %152, align 8, !tbaa !290
  %.not.i.i79.i.i.i.i.i83.i.i = icmp eq ptr %i.aej, null
  br i1 %.not.i.i79.i.i.i.i.i83.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i84.i.i, label %bb.im

bb.im:                                            ; preds = %.body.i.i.i.i.i81.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %152) #18
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i84.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i84.i.i: ; preds = %bb.im, %.body.i.i.i.i.i81.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #18
  br label %.body.i.i87.i.i

bb.in:                                            ; preds = %bb.ho
  %i.aek = landingpad { ptr, i32 }
          catch ptr null
  %i.ael = extractvalue { ptr, i32 } %i.aek, 0
  call void @__clang_call_terminate(ptr %i.ael) #35
  unreachable

_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i: ; preds = %.noexc45.i.i145.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i.i103.i.i, %.preheader.i.i.i.i.i141.i.i
  %i.aem = phi ptr [ %i.zl, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i.i103.i.i ], [ %i.zr, %.preheader.i.i.i.i.i141.i.i ], [ %i.zr, %.noexc45.i.i145.i.i ] ; 3 uses
  %i.aen = phi ptr [ %i.zk, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i.i103.i.i ], [ %201, %.preheader.i.i.i.i.i141.i.i ], [ %201, %.noexc45.i.i145.i.i ]
  %.not.i.i.i49.i.i104.i.i = icmp eq ptr %i.aem, null
  br i1 %.not.i.i.i49.i.i104.i.i, label %bb.ir, label %bb.io

bb.io:                                            ; preds = %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i
  %i.aeo = ptrtoint ptr %i.aen to i64
  %i.aep = ptrtoint ptr %i.aem to i64
  %i.aeq = sub i64 %i.aeo, %i.aep
  call void @_ZdlPvm(ptr noundef nonnull %i.aem, i64 noundef %i.aeq) #34
  br label %bb.ir

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.noexc274.i.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i264.i.i, %.lr.ph119.i.i.i.i.i143.i.i
  %lpad.loopexit346.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i87.i.i

.body.i.i87.thread.i.i.a:                         ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i122.i.i
  %lpad.loopexit.split-lp347.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i87.i.i

.body.i.i87.i.i:                                  ; preds = %.body.i.i87.thread.i.i.a, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i84.i.i, %bb.hp, %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i149.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i149.loopexit.i.i, %bb.hh, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i190.i.i, %bb.gh
  %202 = phi ptr [ %i.zk, %.body.i.i87.thread.i.i.a ], [ %i.va, %bb.gh ], [ %i.va, %bb.hh ], [ %i.va, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i190.i.i ], [ %i.zk, %bb.hp ], [ %i.zk, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i84.i.i ], [ %i.va, %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i149.loopexit.i.i ], [ %.ph.ph.i.i, %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i149.loopexit.split-lp.loopexit.i.i ], [ %201, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ]
  %203 = phi ptr [ %i.zl, %.body.i.i87.thread.i.i.a ], [ %i.vb, %bb.gh ], [ %i.vb, %bb.hh ], [ %i.vb, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i190.i.i ], [ %i.zl, %bb.hp ], [ %i.zl, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i84.i.i ], [ %i.vb, %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i149.loopexit.i.i ], [ %.ph306.ph.i.i, %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i149.loopexit.split-lp.loopexit.i.i ], [ %i.zr, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ] ; 3 uses
  %.pn22.i.i88.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp347.i.i, %.body.i.i87.thread.i.i.a ], [ %.pn.i.i.i.i225.i.i, %bb.gh ], [ %.pn.pn.i.i158.i.i, %bb.hh ], [ %eh.lpad-body.i.i.i.i188.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i190.i.i ], [ %.pn.i.i.i.i.i128.i.i, %bb.hp ], [ %eh.lpad-body.i.i.i.i.i82.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i84.i.i ], [ %lpad.loopexit307.i.i, %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i149.loopexit.i.i ], [ %lpad.loopexit310.i.i, %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i149.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit346.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.not.i.i.i50.i.i89.i.i = icmp eq ptr %203, null
  br i1 %.not.i.i.i50.i.i89.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i90.i.i, label %bb.ip

bb.ip:                                            ; preds = %.body.i.i87.i.i
  %i.aer = ptrtoint ptr %202 to i64
  %i.aes = ptrtoint ptr %203 to i64
  %i.aet = sub i64 %i.aer, %i.aes
  call void @_ZdlPvm(ptr noundef nonnull %203, i64 noundef %i.aet) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i90.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i90.i.i:        ; preds = %bb.ip, %.body.i.i87.i.i, %.body.i.i87.thread.i.i
  %.pn22.i.i88457.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp311.i.i, %.body.i.i87.thread.i.i ], [ %.pn22.i.i88.i.i, %bb.ip ], [ %.pn22.i.i88.i.i, %.body.i.i87.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #18
  br label %.body252.i.i

bb.iq:                                            ; preds = %bb.fu
  %i.aeu = landingpad { ptr, i32 }
          catch ptr null
  %i.aev = extractvalue { ptr, i32 } %i.aeu, 0
  call void @__clang_call_terminate(ptr %i.aev) #35
  unreachable

bb.ir:                                            ; preds = %bb.io, %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %161)
  call void @llvm.lifetime.end.p0(ptr nonnull %160)
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #18
  %i.aew = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_10SparsePageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %194)
          to label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i unwind label %bb.is ; 0 uses

bb.is:                                            ; preds = %bb.ir, %bb.fi, %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i
  %i.aex = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.it:                                            ; preds = %.noexc71.i.i, %bb.fj
  %i.aey = landingpad { ptr, i32 }
          cleanup
  br label %.body252.i.i

.body252.i.i:                                     ; preds = %bb.it, %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i90.i.i
  %eh.lpad-body253.i.i = phi { ptr, i32 } [ %i.aey, %bb.it ], [ %.pn22.i.i88457.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i90.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #18
  br label %bb.iu

bb.iu:                                            ; preds = %.body252.i.i, %bb.is
  %.pn26.i.i = phi { ptr, i32 } [ %i.aex, %bb.is ], [ %eh.lpad-body253.i.i, %.body252.i.i ]
  call void @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %195) #18
  br label %.body55.i.i

.body55.i.i:                                      ; preds = %bb.iu, %bb.en
  %.pn26.pn.i.i = phi { ptr, i32 } [ %.pn26.i.i, %bb.iu ], [ %i.rr, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #18
  call void @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %194) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %194) #18
  call void @_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %193) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #18
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit52.i.i

_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit52.i.i: ; preds = %.body55.i.i, %bb.ei, %bb.eh
  %.pn26.pn.pn.i.i = phi { ptr, i32 } [ %.pn26.pn.i.i, %.body55.i.i ], [ %.pn20.pn.pn.i.i, %bb.eh ], [ %.pn20.pn.pn.i.i, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0285.i.i)
  br label %.body

bb.iv:                                            ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i, %bb.ay, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0285.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %187)
  %i.aez = load ptr, ptr %198, align 8, !tbaa !147 ; 3 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %198, i64 8
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !148 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.aez, %i.afb
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i12.i

.lr.ph.i.i.i.i12.i:                               ; preds = %bb.iv, %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.afi, %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i ], [ %i.aez, %bb.iv ] ; 3 uses
  %i.afc = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i, label %bb.iw

bb.iw:                                            ; preds = %.lr.ph.i.i.i.i12.i
  %i.afd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !84
  %i.aff = ptrtoint ptr %i.afe to i64
  %i.afg = ptrtoint ptr %i.afc to i64
  %i.afh = sub i64 %i.aff, %i.afg
  call void @_ZdlPvm(ptr noundef nonnull %i.afc, i64 noundef %i.afh) #34
  br label %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i: ; preds = %bb.iw, %.lr.ph.i.i.i.i12.i
  %i.afi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i13.i = icmp eq ptr %i.afi, %i.afb
  br i1 %.not.i.i.i.i13.i, label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i12.i, !llvm.loop !0

_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %198, align 8, !tbaa !147
  br label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.iv
  %i.afj = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.aez, %bb.iv ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.afj, null
  br i1 %.not.i.i1.i.i.i, label %bb.iz, label %bb.ix

bb.ix:                                            ; preds = %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.afk = getelementptr inbounds nuw i8, ptr %198, i64 16
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !149
  %i.afm = ptrtoint ptr %i.afl to i64
  %i.afn = ptrtoint ptr %i.afj to i64
  %i.afo = sub i64 %i.afm, %i.afn
  call void @_ZdlPvm(ptr noundef nonnull %i.afj, i64 noundef %i.afo) #34
  br label %bb.iz

bb.iy:                                            ; preds = %bb.ej, %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i, %.noexc7.i, %bb.u, %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i, %.noexc4.i, %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i, %.noexc.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i
  %.sroa.010.1 = phi ptr [ %i.eo, %bb.ej ], [ %i.eo, %.noexc.i.i.i.i ], [ %i.eo, %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.eo, %.noexc7.i ], [ %i.eo, %bb.u ], [ %i.eo, %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i ], [ null, %.noexc4.i ], [ null, %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i ], [ null, %.noexc.i ], [ null, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i ]
  %.sroa.1012.1 = phi ptr [ %i.eq, %bb.ej ], [ %i.eq, %.noexc.i.i.i.i ], [ %i.eq, %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.eq, %.noexc7.i ], [ %i.eq, %bb.u ], [ %i.eq, %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i ], [ null, %.noexc4.i ], [ null, %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i ], [ null, %.noexc.i ], [ null, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i ]
  %i.afp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.iz:                                            ; preds = %bb.ix, %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #18
  %.not.i.i.i.i40 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i40, label %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicyD2Ev.exit, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.afq = ptrtoint ptr %i.eq to i64
  %i.afr = ptrtoint ptr %i.eo to i64
  %i.afs = sub i64 %i.afq, %i.afr
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.afs) #34
  br label %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicyD2Ev.exit

.body:                                            ; preds = %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit52.i.i, %bb.iy
  %.sroa.010.2 = phi ptr [ %i.eo, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit52.i.i ], [ %.sroa.010.1, %bb.iy ] ; 3 uses
  %.sroa.1012.2 = phi ptr [ %i.eq, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit52.i.i ], [ %.sroa.1012.1, %bb.iy ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn26.pn.pn.i.i, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit52.i.i ], [ %i.afp, %bb.iy ] ; 2 uses
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %198) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #18
  %.not.i.i.i.i41 = icmp eq ptr %.sroa.010.2, null
  br i1 %.not.i.i.i.i41, label %common.resume, label %bb.jb

bb.jb:                                            ; preds = %.body
  %i.aft = ptrtoint ptr %.sroa.1012.2 to i64
  %i.afu = ptrtoint ptr %.sroa.010.2 to i64
  %i.afv = sub i64 %i.aft, %i.afu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.010.2, i64 noundef %i.afv) #34
  br label %common.resume

bb.jc:                                            ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_EEvPKNS_7ContextES5_SD_SH_ENKUlPKS4_E_clESN_.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #18
  %i.afw = load ptr, ptr %3, align 8, !tbaa !776, !nonnull !141, !align !244 ; 2 uses
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !83 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %138, i8 0, i64 24, i1 false)
  %.not.i.i43 = icmp eq i32 %i.afx, 0
  br i1 %.not.i.i43, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i52, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.afy = sext i32 %i.afx to i64
  %i.afz = shl nsw i64 %i.afy, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %137, i8 0, i64 32, i1 false)
  invoke void @_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %138, ptr null, i64 noundef %i.afz, ptr noundef nonnull align 8 dereferenceable(25) %137)
          to label %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i48 unwind label %bb.jf

_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i48: ; preds = %bb.jd
  %i.aga = load ptr, ptr %137, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i6.i.i49 = icmp eq ptr %i.aga, null
  br i1 %.not.i.i.i.i6.i.i49, label %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i50, label %bb.je

bb.je:                                            ; preds = %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i48
  %i.agb = getelementptr inbounds nuw i8, ptr %137, i64 16
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !84
  %i.agd = ptrtoint ptr %i.agc to i64
  %i.age = ptrtoint ptr %i.aga to i64
  %i.agf = sub i64 %i.agd, %i.age
  call void @_ZdlPvm(ptr noundef nonnull %i.aga, i64 noundef %i.agf) #34
  br label %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i50

_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i50:          ; preds = %bb.je, %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #18
  %.pre.i51 = load ptr, ptr %3, align 8, !tbaa !776
  br label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i52

bb.jf:                                            ; preds = %bb.jd
  %i.agg = landingpad { ptr, i32 }
          cleanup
  %i.agh = load ptr, ptr %137, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i7.i.i44 = icmp eq ptr %i.agh, null
  br i1 %.not.i.i.i.i7.i.i44, label %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i.i45, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.agi = getelementptr inbounds nuw i8, ptr %137, i64 16
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !84
  %i.agk = ptrtoint ptr %i.agj to i64
  %i.agl = ptrtoint ptr %i.agh to i64
  %i.agm = sub i64 %i.agk, %i.agl
  call void @_ZdlPvm(ptr noundef nonnull %i.agh, i64 noundef %i.agm) #34
  br label %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i.i45

common.resume:                                    ; preds = %.body495.thread, %.body.thread, %.body, %bb.jb, %.body495, %bb.ym, %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i.i503, %.body.i511, %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i.i45, %.body.i53
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i512, %.body.i511 ], [ %eh.lpad-body.i54, %.body.i53 ], [ %i.agg, %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i.i45 ], [ %i.bzk, %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i.i503 ], [ %eh.lpad-body.i, %bb.jb ], [ %eh.lpad-body.i, %.body ], [ %eh.lpad-body.i297, %.body495 ], [ %eh.lpad-body.i297, %bb.ym ], [ %i.db, %.body.thread ], [ %i.bha, %.body495.thread ]
  resume { ptr, i32 } %common.resume.op

_ZN7xgboost7RegTree4FVecD2Ev.exit8.i.i45:         ; preds = %bb.jg, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #18
  call void @_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %138) #18
  br label %common.resume

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i52: ; preds = %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i50, %bb.jc
  %i.agn = phi ptr [ %i.afw, %bb.jc ], [ %.pre.i51, %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i50 ] ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !777, !nonnull !141, !align !245 ; 16 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !778, !nonnull !141 ; 2 uses
end_hunk_1
