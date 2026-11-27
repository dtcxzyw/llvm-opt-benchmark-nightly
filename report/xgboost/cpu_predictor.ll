Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cpu_predictor?download=true
inline.NumInlined: 9576
inline.NumDeleted: 2574
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a

bb.ag:                                            ; preds = %bb.af
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 4 uses
  %i.hd = load atomic i64, ptr %i.hc acquire, align 8 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 4294967297
  %i.hf = trunc i64 %i.hd to i32                  ; 2 uses
  br i1 %i.he, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.hc, align 8, !tbaa !242
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 0, ptr %i.hg, align 4, !tbaa !243
  %i.hh = load ptr, ptr %i.hb, align 8, !tbaa !64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #18, !inline_history !639
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #18, !inline_history !639
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.hn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i33.i.i = icmp eq i8 %i.hn, 0
  br i1 %.not.i.i.i.i33.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ho = add nsw i32 %i.hf, -1
  store i32 %i.ho, ptr %i.hc, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.hp = atomicrmw volatile add ptr %i.hc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i35.i.i = phi i32 [ %i.hf, %bb.aj ], [ %i.hp, %bb.ak ]
  %i.hq = icmp eq i32 %.0.i.i.i.i.i35.i.i, 1
  br i1 %i.hq, label %bb.al, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i, !prof !173

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #18
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i

_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34.i.i, %bb.ah, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #18
  %i.hr = load ptr, ptr %i.fu, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i36.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i36.i.i, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit40.i.i, label %bb.am

bb.am:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 4 uses
  %i.ht = load atomic i64, ptr %i.hs acquire, align 8 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 4294967297
  %i.hv = trunc i64 %i.ht to i32                  ; 2 uses
  br i1 %i.hu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.hs, align 8, !tbaa !242
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  store i32 0, ptr %i.hw, align 4, !tbaa !243
  %i.hx = load ptr, ptr %i.hr, align 8, !tbaa !64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #18, !inline_history !639
  %i.ia = load ptr, ptr %i.hr, align 8, !tbaa !64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #18, !inline_history !639
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit40.i.i

bb.ao:                                            ; preds = %bb.am
  %i.id = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i37.i.i = icmp eq i8 %i.id, 0
  br i1 %.not.i.i.i.i37.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ie = add nsw i32 %i.hv, -1
  store i32 %i.ie, ptr %i.hs, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i38.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.if = atomicrmw volatile add ptr %i.hs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i38.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i38.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i39.i.i = phi i32 [ %i.hv, %bb.ap ], [ %i.if, %bb.aq ]
  %i.ig = icmp eq i32 %.0.i.i.i.i.i39.i.i, 1
  br i1 %i.ig, label %bb.ar, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit40.i.i, !prof !173

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i38.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #18
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit40.i.i

_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit40.i.i: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i38.i.i, %bb.an, %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %190) #18
  %i.ih = load ptr, ptr %i.fv, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i41.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i41.i.i, label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit40.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 4 uses
  %i.ij = load atomic i64, ptr %i.ii acquire, align 8 ; 2 uses
  %i.ik = icmp eq i64 %i.ij, 4294967297
  %i.il = trunc i64 %i.ij to i32                  ; 2 uses
  br i1 %i.ik, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.ii, align 8, !tbaa !242
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  store i32 0, ptr %i.im, align 4, !tbaa !243
  %i.in = load ptr, ptr %i.ih, align 8, !tbaa !64
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ih) #18, !inline_history !640
  %i.iq = load ptr, ptr %i.ih, align 8, !tbaa !64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ih) #18, !inline_history !640
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i

bb.au:                                            ; preds = %bb.as
  %i.it = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i42.i.i = icmp eq i8 %i.it, 0
  br i1 %.not.i.i.i.i.i42.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iu = add nsw i32 %i.il, -1
  store i32 %i.iu, ptr %i.ii, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.iv = atomicrmw volatile add ptr %i.ii, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.il, %bb.av ], [ %i.iv, %bb.aw ]
  %i.iw = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.iw, label %bb.ax, label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i, !prof !173

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ih) #18
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i

_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i: ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.at, %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit40.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %188) #18
  %.not.i.i.i43.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i43.i.i, label %bb.iv, label %bb.ay

bb.ay:                                            ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.ff) #34
  br label %bb.iv

bb.az:                                            ; preds = %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #18
  br label %bb.eh

bb.ba:                                            ; preds = %bb.ae
  %i.iy = invoke noundef nonnull align 8 dereferenceable(225) ptr @_ZNK7xgboost13BatchIteratorINS_16GHistIndexMatrixEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %190)
          to label %bb.bb unwind label %bb.ee     ; 5 uses

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gd, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0285.i.i, i64 32, i1 false)
  store ptr %i.iy, ptr %192, align 8, !tbaa !259
  store i64 %i.fk, ptr %i.ge, align 8, !tbaa !59
  store ptr %i.fj, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !65
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 168
  %i.ja = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iz)
          to label %.noexc.i.i unwind label %bb.ef

.noexc.i.i:                                       ; preds = %bb.bb
  store ptr %i.ja, ptr %i.gf, align 8, !tbaa !261
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 160
  %i.jc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jb)
          to label %.noexc44.i.i unwind label %bb.ef

.noexc44.i.i:                                     ; preds = %.noexc.i.i
  store ptr %i.jc, ptr %i.gg, align 8, !tbaa !127
  %i.jd = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK7xgboost16GHistIndexMatrix9TransposeEv(ptr noundef nonnull align 8 dereferenceable(225) %i.iy)
          to label %bb.bc unwind label %bb.ef

bb.bc:                                            ; preds = %.noexc44.i.i
  store ptr %i.jd, ptr %i.gh, align 8, !tbaa !263
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 184
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !280
  store i64 %i.jf, ptr %i.gi, align 8, !tbaa !285
  %i.jg = load i32, ptr %i.di, align 4, !tbaa !83 ; 6 uses
  %i.jh = load i8, ptr %i.dm, align 1, !tbaa !82, !range !140, !noundef !141
  call void @llvm.lifetime.start.p0(ptr nonnull %183)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %183, ptr noundef nonnull align 8 dereferenceable(72) %i.do, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %182)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %182, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 %i.jh, ptr %i.ao, align 1, !tbaa !82
  %i.ji = load ptr, ptr %192, align 8, !tbaa !286, !nonnull !141, !align !245
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !287 ; 2 uses
  %spec.select.i.i.i.i.i.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.jk, i64 1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #18
  %i.jl = load i32, ptr %i.gu, align 4, !tbaa !288
  store i32 %i.jl, ptr %i.ap, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %178) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %178, i8 0, i64 24, i1 false)
  %i.jm = icmp ugt i64 %i.jk, 2
  br i1 %i.jm, label %bb.bd, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.jn = load i32, ptr %i.gv, align 4, !tbaa !200 ; 2 uses
  %i.jo = load i32, ptr %i.gw, align 8, !tbaa !199 ; 2 uses
  %i.jp = sub nsw i32 %i.jn, %i.jo                ; 2 uses
  %i.jq = sext i32 %i.jp to i64                   ; 4 uses
  %.not120.i.i.i.i = icmp eq i32 %i.jn, %i.jo
  br i1 %.not120.i.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jr = icmp slt i32 %i.jp, 0
  br i1 %i.jr, label %bb.bf, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
          to label %.noexc53.i.i.i.i unwind label %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53.i.i.i.i:                                 ; preds = %bb.bf
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.be
  %i.js = shl nuw nsw i64 %i.jq, 2
  %i.jt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.js) #33
          to label %.noexc54.i.i.i.i unwind label %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc54.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  store i32 0, ptr %i.jt, align 4, !tbaa !83
  %i.ju = add nsw i64 %i.jq, -1                   ; 2 uses
  %i.jv = icmp eq i64 %i.ju, 0
  br i1 %i.jv, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i: ; preds = %.noexc54.i.i.i.i
  %i.jw = getelementptr i8, ptr %i.jt, i64 4
  %.idx.i.i.i.i.i31.i.i.i.i.i = shl nuw nsw i64 %i.ju, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.jw, i8 0, i64 %.idx.i.i.i.i.i31.i.i.i.i.i, i1 false), !tbaa !83
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i, %.noexc54.i.i.i.i
  store ptr %i.jt, ptr %178, align 8, !tbaa !175
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.jq ; 2 uses
  store ptr %i.jx, ptr %i.gj, align 8, !tbaa !174
  store ptr %i.jx, ptr %i.gk, align 8, !tbaa !246
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i:       ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i, %bb.bd
  %i.jy = phi i64 [ %i.jq, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i ], [ 0, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %179) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #18
  store i64 %i.jy, ptr %i.aq, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #18
  %.val.i.i.i.i = load ptr, ptr %i.dk, align 8, !tbaa !144 ; 2 uses
  %.val24.i.i.i.i = load ptr, ptr %i.gx, align 8, !tbaa !201 ; 2 uses
  %i.jz = icmp ne ptr %.val.i.i.i.i, null
  %i.ka = icmp eq ptr %.val24.i.i.i.i, null
  %i.kb = or i1 %i.jz, %i.ka
  br i1 %i.kb, label %bb.bh, label %bb.bg, !prof !70

bb.bg:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.bh:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i
  %i.kc = ptrtoint ptr %.val24.i.i.i.i to i64
  %i.kd = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ke = sub i64 %i.kc, %i.kd
  %i.kf = sdiv exact i64 %i.ke, 200               ; 2 uses
  store i64 %i.kf, ptr %i.ar, align 8, !tbaa !59
  %i.kg = icmp eq i64 %i.jy, %i.kf
  br i1 %i.kg, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i, label %bb.bi

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %179, ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i unwind label %bb.bk

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.bi
  %.pr.i.i.i.i = load ptr, ptr %179, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #18
  %.not.i.i.i.i39 = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i39, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %180) #18
  %i.kh = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %180)
          to label %.noexc28.i.i.i.i unwind label %bb.bl

.noexc28.i.i.i.i:                                 ; preds = %bb.bj
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.kh, ptr noundef nonnull @.str.4, i32 noundef 412)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.bl

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc28.i.i.i.i
  %i.ki = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %180)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.bm ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.bm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.kk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef nonnull @.str.50, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i unwind label %bb.bm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.kl = load ptr, ptr %179, align 8, !tbaa !53  ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !44
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !43
  %i.kp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef %i.km, i64 noundef %i.ko)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.bm

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i
  %i.kq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kp, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i unwind label %bb.bm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %180)
          to label %bb.bo unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #18
  br label %bb.cz

bb.bl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i, %.noexc28.i.i.i.i, %bb.bj
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %180)
          to label %bb.bn unwind label %bb.ec

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ks, %bb.bl ], [ %i.kt, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %179) #18
  br label %bb.cz

bb.bo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #18
  %.pr63.i.i.i.i = load ptr, ptr %179, align 8, !tbaa !53 ; 4 uses
  %.not.i.i.i47.i.i = icmp eq ptr %.pr63.i.i.i.i, null
  br i1 %.not.i.i.i47.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ku = load ptr, ptr %.pr63.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.pr63.i.i.i.i, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bp
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !50
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr63.i.i.i.i, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.bo, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %179) #18
  %i.kz = load i32, ptr %i.gv, align 4, !tbaa !200
  %i.la = load i32, ptr %i.gw, align 8, !tbaa !199
  %i.lb = sub nsw i32 %i.kz, %i.la                ; 4 uses
  %i.lc = icmp eq i32 %i.jg, 1
  br i1 %i.lc, label %.preheader.i.i.i.i.i.i, label %bb.bv

.preheader.i.i.i.i.i.i:                           ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i
  %i.ld = icmp sgt i32 %i.lb, 0
  br i1 %i.ld, label %.lr.ph120.i.i.i.i.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

.lr.ph120.i.i.i.i.i.i:                            ; preds = %.preheader.i.i.i.i.i.i
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %i.lb to i64
  br label %bb.bq

bb.bq:                                            ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i, %.lr.ph120.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph120.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i ] ; 4 uses
  %.val67.val.i.i.i.i.i.i = load ptr, ptr %i.dk, align 8, !tbaa !144 ; 3 uses
  %.val67.val68.i.i.i.i.i.i = load ptr, ptr %i.gx, align 8, !tbaa !201 ; 2 uses
  %i.le = icmp ne ptr %.val67.val.i.i.i.i.i.i, null
  %i.lf = icmp eq ptr %.val67.val68.i.i.i.i.i.i, null
  %i.lg = or i1 %i.le, %i.lf
  br i1 %i.lg, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i.i.i, label %bb.br, !prof !70

bb.br:                                            ; preds = %bb.bq
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i.i.i: ; preds = %bb.bq
end_hunk_0
begin_hunk_1_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a
  %i.ri = getelementptr inbounds nuw i8, ptr %156, i64 8 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %152, i64 8 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %140, i64 8 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %139, i64 8 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.dk, i64 52
  %i.rn = getelementptr inbounds nuw i8, ptr %i.dk, i64 28 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.dk, i64 24 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %198, i64 8 ; 2 uses
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i

bb.en:                                            ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEE5beginEv.exit.i.i
  %i.rr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %195) #18
  br label %.body55.i.i

_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i: ; preds = %bb.ir, %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.preheader.i.i
  %i.rs = invoke noundef zeroext i1 @_ZNK7xgboost13BatchIteratorINS_10SparsePageEE5AtEndEv(ptr noundef nonnull align 8 dereferenceable(16) %194)
          to label %bb.eo unwind label %bb.is

bb.eo:                                            ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i
  br i1 %i.rs, label %bb.ep, label %bb.fi

bb.ep:                                            ; preds = %bb.eo
  %i.rt = getelementptr inbounds nuw i8, ptr %195, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i58.i.i = icmp eq ptr %i.ru, null
  br i1 %.not.i.i.i58.i.i, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 4 uses
  %i.rw = load atomic i64, ptr %i.rv acquire, align 8 ; 2 uses
  %i.rx = icmp eq i64 %i.rw, 4294967297
  %i.ry = trunc i64 %i.rw to i32                  ; 2 uses
  br i1 %i.rx, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i32 0, ptr %i.rv, align 8, !tbaa !242
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 12
  store i32 0, ptr %i.rz, align 4, !tbaa !243
  %i.sa = load ptr, ptr %i.ru, align 8, !tbaa !64
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8
  call void %i.sc(ptr noundef nonnull align 8 dereferenceable(16) %i.ru) #18, !inline_history !656
  %i.sd = load ptr, ptr %i.ru, align 8, !tbaa !64
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.sf = load ptr, ptr %i.se, align 8
  call void %i.sf(ptr noundef nonnull align 8 dereferenceable(16) %i.ru) #18, !inline_history !656
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
  call void %i.ss(ptr noundef nonnull align 8 dereferenceable(16) %i.sk) #18, !inline_history !656
  %i.st = load ptr, ptr %i.sk, align 8, !tbaa !64
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(16) %i.sk) #18, !inline_history !656
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
  call void %i.ti(ptr noundef nonnull align 8 dereferenceable(16) %i.ta) #18, !inline_history !657
  %i.tj = load ptr, ptr %i.ta, align 8, !tbaa !64
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 24
  %i.tl = load ptr, ptr %i.tk, align 8
  call void %i.tl(ptr noundef nonnull align 8 dereferenceable(16) %i.ta) #18, !inline_history !657
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
          to label %.noexc71.i.i unwind label %bb.it, !noalias !804 ; 2 uses

.noexc71.i.i:                                     ; preds = %bb.fj
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !295, !noalias !804
  %i.tv = load ptr, ptr %i.ts, align 8, !tbaa !296, !noalias !804 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.tx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tw)
          to label %bb.fk unwind label %bb.it, !noalias !804 ; 2 uses

bb.fk:                                            ; preds = %.noexc71.i.i
  %i.ty = ptrtoint ptr %i.tu to i64
  %i.tz = ptrtoint ptr %i.tv to i64
  %i.ua = sub i64 %i.ty, %i.tz
  %i.ub = ashr exact i64 %i.ua, 3                 ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !299, !noalias !804
  %i.ue = load ptr, ptr %i.tx, align 8, !tbaa !300, !noalias !804 ; 2 uses
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
  %spec.select.i.i.i.i73.i.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.ub, i64 1) ; 4 uses
  %i.un = load i32, ptr %i.rm, align 4, !tbaa !288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %157, i8 0, i64 24, i1 false)
  %i.uo = icmp ugt i64 %i.ub, 2
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
          to label %.noexc54.i.i151.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ; 5 uses

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
end_hunk_1
begin_hunk_2_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a
  br i1 %.not.i.i.i31.i.i, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i257, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 8 ; 4 uses
  %i.akj = load atomic i64, ptr %i.aki acquire, align 8 ; 2 uses
  %i.akk = icmp eq i64 %i.akj, 4294967297
  %i.akl = trunc i64 %i.akj to i32                ; 2 uses
  br i1 %i.akk, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  store i32 0, ptr %i.aki, align 8, !tbaa !242
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akh, i64 12
  store i32 0, ptr %i.akm, align 4, !tbaa !243
  %i.akn = load ptr, ptr %i.akh, align 8, !tbaa !64
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 16
  %i.akp = load ptr, ptr %i.ako, align 8
  call void %i.akp(ptr noundef nonnull align 8 dereferenceable(16) %i.akh) #18, !inline_history !684
  %i.akq = load ptr, ptr %i.akh, align 8, !tbaa !64
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 24
  %i.aks = load ptr, ptr %i.akr, align 8
  call void %i.aks(ptr noundef nonnull align 8 dereferenceable(16) %i.akh) #18, !inline_history !684
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i257

bb.kb:                                            ; preds = %bb.jz
  %i.akt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i32.i.i = icmp eq i8 %i.akt, 0
  br i1 %.not.i.i.i.i32.i.i, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.aku = add nsw i32 %i.akl, -1
  store i32 %i.aku, ptr %i.aki, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33.i.i

bb.kd:                                            ; preds = %bb.kb
  %i.akv = atomicrmw volatile add ptr %i.aki, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33.i.i: ; preds = %bb.kd, %bb.kc
  %.0.i.i.i.i.i34.i.i = phi i32 [ %i.akl, %bb.kc ], [ %i.akv, %bb.kd ]
  %i.akw = icmp eq i32 %.0.i.i.i.i.i34.i.i, 1
  br i1 %i.akw, label %bb.ke, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i257, !prof !173

bb.ke:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.akh) #18
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i257

_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i257: ; preds = %bb.ke, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33.i.i, %bb.ka, %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #18
  %i.akx = load ptr, ptr %i.ajb, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i35.i.i = icmp eq ptr %i.akx, null
  br i1 %.not.i.i.i35.i.i, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit39.i.i, label %bb.kf

bb.kf:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i257
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 8 ; 4 uses
  %i.akz = load atomic i64, ptr %i.aky acquire, align 8 ; 2 uses
  %i.ala = icmp eq i64 %i.akz, 4294967297
  %i.alb = trunc i64 %i.akz to i32                ; 2 uses
  br i1 %i.ala, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  store i32 0, ptr %i.aky, align 8, !tbaa !242
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akx, i64 12
  store i32 0, ptr %i.alc, align 4, !tbaa !243
  %i.ald = load ptr, ptr %i.akx, align 8, !tbaa !64
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 16
  %i.alf = load ptr, ptr %i.ale, align 8
  call void %i.alf(ptr noundef nonnull align 8 dereferenceable(16) %i.akx) #18, !inline_history !684
  %i.alg = load ptr, ptr %i.akx, align 8, !tbaa !64
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 24
  %i.ali = load ptr, ptr %i.alh, align 8
  call void %i.ali(ptr noundef nonnull align 8 dereferenceable(16) %i.akx) #18, !inline_history !684
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit39.i.i

bb.kh:                                            ; preds = %bb.kf
  %i.alj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i36.i.i = icmp eq i8 %i.alj, 0
  br i1 %.not.i.i.i.i36.i.i, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.alk = add nsw i32 %i.alb, -1
  store i32 %i.alk, ptr %i.aky, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37.i.i

bb.kj:                                            ; preds = %bb.kh
  %i.all = atomicrmw volatile add ptr %i.aky, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37.i.i: ; preds = %bb.kj, %bb.ki
  %.0.i.i.i.i.i38.i.i = phi i32 [ %i.alb, %bb.ki ], [ %i.all, %bb.kj ]
  %i.alm = icmp eq i32 %.0.i.i.i.i.i38.i.i, 1
  br i1 %i.alm, label %bb.kk, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit39.i.i, !prof !173

bb.kk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.akx) #18
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit39.i.i

_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit39.i.i: ; preds = %bb.kk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37.i.i, %bb.kg, %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #18
  %i.aln = load ptr, ptr %i.ajc, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i40.i.i = icmp eq ptr %i.aln, null
  br i1 %.not.i.i.i.i40.i.i, label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i260, label %bb.kl

bb.kl:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit39.i.i
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 8 ; 4 uses
  %i.alp = load atomic i64, ptr %i.alo acquire, align 8 ; 2 uses
  %i.alq = icmp eq i64 %i.alp, 4294967297
  %i.alr = trunc i64 %i.alp to i32                ; 2 uses
  br i1 %i.alq, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  store i32 0, ptr %i.alo, align 8, !tbaa !242
  %i.als = getelementptr inbounds nuw i8, ptr %i.aln, i64 12
  store i32 0, ptr %i.als, align 4, !tbaa !243
  %i.alt = load ptr, ptr %i.aln, align 8, !tbaa !64
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 16
  %i.alv = load ptr, ptr %i.alu, align 8
  call void %i.alv(ptr noundef nonnull align 8 dereferenceable(16) %i.aln) #18, !inline_history !685
  %i.alw = load ptr, ptr %i.aln, align 8, !tbaa !64
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 24
  %i.aly = load ptr, ptr %i.alx, align 8
  call void %i.aly(ptr noundef nonnull align 8 dereferenceable(16) %i.aln) #18, !inline_history !685
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i260

bb.kn:                                            ; preds = %bb.kl
  %i.alz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i41.i.i = icmp eq i8 %i.alz, 0
  br i1 %.not.i.i.i.i.i41.i.i, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.ama = add nsw i32 %i.alr, -1
  store i32 %i.ama, ptr %i.alo, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i258

bb.kp:                                            ; preds = %bb.kn
  %i.amb = atomicrmw volatile add ptr %i.alo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i258

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i258: ; preds = %bb.kp, %bb.ko
  %.0.i.i.i.i.i.i.i.i259 = phi i32 [ %i.alr, %bb.ko ], [ %i.amb, %bb.kp ]
  %i.amc = icmp eq i32 %.0.i.i.i.i.i.i.i.i259, 1
  br i1 %i.amc, label %bb.kq, label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i260, !prof !173

bb.kq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i258
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aln) #18
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i260

_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i260: ; preds = %bb.kq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i258, %bb.km, %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit39.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #18
  %.not.i.i.i42.i.i = icmp eq ptr %i.aiq, null
  br i1 %.not.i.i.i42.i.i, label %_ZN7xgboost9predictor12_GLOBAL__N_112LaunchConfigIJNS1_11BlockPolicyENS1_21NullEncAccessorPolicyEEE12ForEachBatchIZZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEENKUlOT_E_clIS5_EEDaSL_EUlSL_E_EEvSL_.exit.i, label %bb.kr

bb.kr:                                            ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i260
  call void @_ZdlPvm(ptr noundef nonnull %i.aiq, i64 noundef %i.aim) #34
  br label %_ZN7xgboost9predictor12_GLOBAL__N_112LaunchConfigIJNS1_11BlockPolicyENS1_21NullEncAccessorPolicyEEE12ForEachBatchIZZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEENKUlOT_E_clIS5_EEDaSL_EUlSL_E_EEvSL_.exit.i

bb.ks:                                            ; preds = %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i71
  %i.amd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #18
  br label %bb.oa

bb.kt:                                            ; preds = %bb.jx
  %i.ame = invoke noundef nonnull align 8 dereferenceable(225) ptr @_ZNK7xgboost13BatchIteratorINS_16GHistIndexMatrixEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %130)
          to label %bb.ku unwind label %bb.nx     ; 5 uses

bb.ku:                                            ; preds = %bb.kt
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #18
  store ptr %i.ame, ptr %132, align 8, !tbaa !259
  store i64 %i.air, ptr %i.ajk, align 8, !tbaa !59
  store ptr %i.aiq, ptr %.sroa.2.0..sroa_idx.i.i.i80, align 8, !tbaa !65
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 168
  %i.amg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.amf)
          to label %.noexc.i.i83 unwind label %bb.ny

.noexc.i.i83:                                     ; preds = %bb.ku
  store ptr %i.amg, ptr %i.ajl, align 8, !tbaa !261
  %i.amh = getelementptr inbounds nuw i8, ptr %i.ame, i64 160
  %i.ami = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.amh)
          to label %.noexc43.i.i unwind label %bb.ny

.noexc43.i.i:                                     ; preds = %.noexc.i.i83
  store ptr %i.ami, ptr %i.ajm, align 8, !tbaa !127
  %i.amj = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK7xgboost16GHistIndexMatrix9TransposeEv(ptr noundef nonnull align 8 dereferenceable(225) %i.ame)
          to label %bb.kv unwind label %bb.ny

bb.kv:                                            ; preds = %.noexc43.i.i
  store ptr %i.amj, ptr %i.ajn, align 8, !tbaa !263
  %i.amk = getelementptr inbounds nuw i8, ptr %i.ame, i64 184
  %i.aml = load i64, ptr %i.amk, align 8, !tbaa !280
  store i64 %i.aml, ptr %i.ajo, align 8, !tbaa !322
  %i.amm = load i32, ptr %i.agt, align 4, !tbaa !83 ; 6 uses
  %i.amn = load i8, ptr %i.agx, align 1, !tbaa !82, !range !140, !noundef !141
  call void @llvm.lifetime.start.p0(ptr nonnull %125)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %125, ptr noundef nonnull align 8 dereferenceable(72) %i.agz, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %124)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %124, ptr noundef nonnull align 8 dereferenceable(24) %i.ahb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 %i.amn, ptr %i.aa, align 1, !tbaa !82
  %i.amo = load ptr, ptr %132, align 8, !tbaa !323, !nonnull !141, !align !245
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  %i.amq = load i64, ptr %i.amp, align 8, !tbaa !287 ; 2 uses
  %spec.select.i.i.i.i.i.i84 = call noundef i64 @llvm.usub.sat.i64(i64 %i.amq, i64 1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #18
  %i.amr = load i32, ptr %i.aka, align 4, !tbaa !288
  store i32 %i.amr, ptr %i.ab, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %120, i8 0, i64 24, i1 false)
  %i.ams = icmp ugt i64 %i.amq, 2
  br i1 %i.ams, label %bb.kw, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

bb.kw:                                            ; preds = %bb.kv
  %i.amt = load i32, ptr %i.akb, align 4, !tbaa !200 ; 2 uses
  %i.amu = load i32, ptr %i.akc, align 8, !tbaa !199 ; 2 uses
  %i.amv = sub nsw i32 %i.amt, %i.amu             ; 2 uses
  %i.amw = sext i32 %i.amv to i64                 ; 4 uses
  %.not120.i.i.i.i155 = icmp eq i32 %i.amt, %i.amu
  br i1 %.not120.i.i.i.i155, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i162, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.amx = icmp slt i32 %i.amv, 0
  br i1 %i.amx, label %bb.ky, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i156

bb.ky:                                            ; preds = %bb.kx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
          to label %.noexc53.i.i.i.i256 unwind label %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i157.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53.i.i.i.i256:                              ; preds = %bb.ky
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i156: ; preds = %bb.kx
  %i.amy = shl nuw nsw i64 %i.amw, 2
  %i.amz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amy) #33
          to label %.noexc54.i.i.i.i158 unwind label %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i157.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc54.i.i.i.i158:                              ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i156
  store i32 0, ptr %i.amz, align 4, !tbaa !83
  %i.ana = add nsw i64 %i.amw, -1                 ; 2 uses
  %i.anb = icmp eq i64 %i.ana, 0
  br i1 %i.anb, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i161, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i159

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i159: ; preds = %.noexc54.i.i.i.i158
  %i.anc = getelementptr i8, ptr %i.amz, i64 4
  %.idx.i.i.i.i.i31.i.i.i.i.i160 = shl nuw nsw i64 %i.ana, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.anc, i8 0, i64 %.idx.i.i.i.i.i31.i.i.i.i.i160, i1 false), !tbaa !83
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i161

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i161: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i159, %.noexc54.i.i.i.i158
  store ptr %i.amz, ptr %120, align 8, !tbaa !175
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %i.amz, i64 %i.amw ; 2 uses
  store ptr %i.and, ptr %i.ajp, align 8, !tbaa !174
  store ptr %i.and, ptr %i.ajq, align 8, !tbaa !246
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i162

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i162:    ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i161, %bb.kw
  %i.ane = phi i64 [ %i.amw, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i161 ], [ 0, %bb.kw ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #18
  store i64 %i.ane, ptr %i.ac, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #18
  %.val.i.i.i.i163 = load ptr, ptr %i.agv, align 8, !tbaa !144 ; 2 uses
  %.val24.i.i.i.i164 = load ptr, ptr %i.akd, align 8, !tbaa !201 ; 2 uses
  %i.anf = icmp ne ptr %.val.i.i.i.i163, null
  %i.ang = icmp eq ptr %.val24.i.i.i.i164, null
  %i.anh = or i1 %i.anf, %i.ang
  br i1 %i.anh, label %bb.la, label %bb.kz, !prof !70

bb.kz:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i162
  call void @_ZSt9terminatev() #35
  unreachable

bb.la:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i162
  %i.ani = ptrtoint ptr %.val24.i.i.i.i164 to i64
  %i.anj = ptrtoint ptr %.val.i.i.i.i163 to i64
  %i.ank = sub i64 %i.ani, %i.anj
  %i.anl = sdiv exact i64 %i.ank, 200             ; 2 uses
  store i64 %i.anl, ptr %i.ad, align 8, !tbaa !59
  %i.anm = icmp eq i64 %i.ane, %i.anl
  br i1 %i.anm, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i255, label %bb.lb

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i255: ; preds = %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i180

bb.lb:                                            ; preds = %bb.la
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %121, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i166 unwind label %bb.ld

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i166: ; preds = %bb.lb
  %.pr.i.i.i.i167 = load ptr, ptr %121, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #18
  %.not.i.i.i.i168 = icmp eq ptr %.pr.i.i.i.i167, null
  br i1 %.not.i.i.i.i168, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i180, label %bb.lc

bb.lc:                                            ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i166
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #18
  %i.ann = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %122)
          to label %.noexc28.i.i.i.i170 unwind label %bb.le

.noexc28.i.i.i.i170:                              ; preds = %bb.lc
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ann, ptr noundef nonnull @.str.4, i32 noundef 412)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i171 unwind label %bb.le

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i171: ; preds = %.noexc28.i.i.i.i170
  %i.ano = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %122)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i172 unwind label %bb.lf ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i172: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i171
  %i.anp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ano, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i173 unwind label %bb.lf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i173: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i172
  %i.anq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ano, ptr noundef nonnull @.str.50, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i174 unwind label %bb.lf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i174: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i173
  %i.anr = load ptr, ptr %121, align 8, !tbaa !53 ; 2 uses
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !44
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anr, i64 8
  %i.anu = load i64, ptr %i.ant, align 8, !tbaa !43
  %i.anv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ano, ptr noundef %i.ans, i64 noundef %i.anu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i175 unwind label %bb.lf

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i175: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i174
  %i.anw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.anv, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i176 unwind label %bb.lf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i176: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i175
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %122)
          to label %bb.lh unwind label %bb.le

bb.ld:                                            ; preds = %bb.lb
  %i.anx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #18
  br label %bb.ms

bb.le:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i176, %.noexc28.i.i.i.i170, %bb.lc
  %i.any = landingpad { ptr, i32 }
          cleanup
  br label %bb.lg

bb.lf:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i175, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i174, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i173, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i172, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i171
  %i.anz = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %122)
          to label %bb.lg unwind label %bb.nv

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %.pn.i.i.i.i169 = phi { ptr, i32 } [ %i.any, %bb.le ], [ %i.anz, %bb.lf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %121) #18
  br label %bb.ms

bb.lh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #18
  %.pr63.i.i.i.i177 = load ptr, ptr %121, align 8, !tbaa !53 ; 4 uses
  %.not.i.i.i46.i.i = icmp eq ptr %.pr63.i.i.i.i177, null
  br i1 %.not.i.i.i46.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i180, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.aoa = load ptr, ptr %.pr63.i.i.i.i177, align 8, !tbaa !44 ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %.pr63.i.i.i.i177, i64 16 ; 2 uses
  %i.aoc = icmp eq ptr %i.aoa, %i.aob
  br i1 %i.aoc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i178: ; preds = %bb.li
  %i.aod = load i64, ptr %i.aob, align 8, !tbaa !50
  %i.aoe = add i64 %i.aod, 1
  call void @_ZdlPvm(ptr noundef %i.aoa, i64 noundef %i.aoe) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i179

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i179: ; preds = %bb.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i178
  call void @_ZdlPvm(ptr noundef nonnull %.pr63.i.i.i.i177, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i180

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i180: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i179, %bb.lh, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i166, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #18
  %i.aof = load i32, ptr %i.akb, align 4, !tbaa !200
  %i.aog = load i32, ptr %i.akc, align 8, !tbaa !199
  %i.aoh = sub nsw i32 %i.aof, %i.aog             ; 4 uses
  %i.aoi = icmp eq i32 %i.amm, 1
  br i1 %i.aoi, label %.preheader.i.i.i.i.i.i243, label %bb.lo

.preheader.i.i.i.i.i.i243:                        ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i180
  %i.aoj = icmp sgt i32 %i.aoh, 0
  br i1 %i.aoj, label %.lr.ph120.i.i.i.i.i.i244, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

.lr.ph120.i.i.i.i.i.i244:                         ; preds = %.preheader.i.i.i.i.i.i243
  %wide.trip.count.i.i.i.i.i.i245 = zext nneg i32 %i.aoh to i64
  br label %bb.lj

bb.lj:                                            ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i, %.lr.ph120.i.i.i.i.i.i244
  %indvars.iv.i.i.i.i.i.i246 = phi i64 [ 0, %.lr.ph120.i.i.i.i.i.i244 ], [ %indvars.iv.next.i.i.i.i.i.i252, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i ] ; 4 uses
  %.val67.val.i.i.i.i.i.i247 = load ptr, ptr %i.agv, align 8, !tbaa !144 ; 3 uses
  %.val67.val68.i.i.i.i.i.i248 = load ptr, ptr %i.akd, align 8, !tbaa !201 ; 2 uses
  %i.aok = icmp ne ptr %.val67.val.i.i.i.i.i.i247, null
  %i.aol = icmp eq ptr %.val67.val68.i.i.i.i.i.i248, null
  %i.aom = or i1 %i.aok, %i.aol
  br i1 %i.aom, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i.i.i249, label %bb.lk, !prof !70

bb.lk:                                            ; preds = %bb.lj
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i.i.i249: ; preds = %bb.lj
end_hunk_2
begin_hunk_3_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a
  %i.aus = getelementptr inbounds nuw i8, ptr %101, i64 32
  %i.aut = getelementptr inbounds nuw i8, ptr %101, i64 40
  %i.auu = getelementptr inbounds nuw i8, ptr %101, i64 48
  %i.auv = getelementptr inbounds nuw i8, ptr %101, i64 56
  %i.auw = getelementptr inbounds nuw i8, ptr %93, i64 8 ; 3 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.agv, i64 52
  %i.auy = getelementptr inbounds nuw i8, ptr %i.agv, i64 28 ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.agv, i64 24 ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %i.agv, i64 8 ; 3 uses
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i278

bb.og:                                            ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEE5beginEv.exit.i.i273
  %i.avb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %135) #18
  br label %.body54.i.i

_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i278: ; preds = %bb.se, %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.preheader.i.i275
  %i.avc = invoke noundef zeroext i1 @_ZNK7xgboost13BatchIteratorINS_10SparsePageEE5AtEndEv(ptr noundef nonnull align 8 dereferenceable(16) %134)
          to label %bb.oh unwind label %bb.sf

bb.oh:                                            ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i278
  br i1 %i.avc, label %bb.oi, label %bb.pb

bb.oi:                                            ; preds = %bb.oh
  %i.avd = getelementptr inbounds nuw i8, ptr %135, i64 8
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i57.i.i = icmp eq ptr %i.ave, null
  br i1 %.not.i.i.i57.i.i, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i280, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 8 ; 4 uses
  %i.avg = load atomic i64, ptr %i.avf acquire, align 8 ; 2 uses
  %i.avh = icmp eq i64 %i.avg, 4294967297
  %i.avi = trunc i64 %i.avg to i32                ; 2 uses
  br i1 %i.avh, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  store i32 0, ptr %i.avf, align 8, !tbaa !242
  %i.avj = getelementptr inbounds nuw i8, ptr %i.ave, i64 12
  store i32 0, ptr %i.avj, align 4, !tbaa !243
  %i.avk = load ptr, ptr %i.ave, align 8, !tbaa !64
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 16
  %i.avm = load ptr, ptr %i.avl, align 8
  call void %i.avm(ptr noundef nonnull align 8 dereferenceable(16) %i.ave) #18, !inline_history !701
  %i.avn = load ptr, ptr %i.ave, align 8, !tbaa !64
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 24
  %i.avp = load ptr, ptr %i.avo, align 8
  call void %i.avp(ptr noundef nonnull align 8 dereferenceable(16) %i.ave) #18, !inline_history !701
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i280

bb.ol:                                            ; preds = %bb.oj
  %i.avq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i58.i.i = icmp eq i8 %i.avq, 0
  br i1 %.not.i.i.i.i58.i.i, label %bb.on, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.avr = add nsw i32 %i.avi, -1
  store i32 %i.avr, ptr %i.avf, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i59.i.i

bb.on:                                            ; preds = %bb.ol
  %i.avs = atomicrmw volatile add ptr %i.avf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i59.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i59.i.i: ; preds = %bb.on, %bb.om
  %.0.i.i.i.i.i60.i.i = phi i32 [ %i.avi, %bb.om ], [ %i.avs, %bb.on ]
  %i.avt = icmp eq i32 %.0.i.i.i.i.i60.i.i, 1
  br i1 %i.avt, label %bb.oo, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i280, !prof !173

bb.oo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i59.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ave) #18
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i280

_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i280: ; preds = %bb.oo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i59.i.i, %bb.ok, %bb.oi
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #18
  %i.avu = load ptr, ptr %i.aub, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i61.i.i = icmp eq ptr %i.avu, null
  br i1 %.not.i.i.i61.i.i, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit65.i.i, label %bb.op

bb.op:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i280
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 8 ; 4 uses
  %i.avw = load atomic i64, ptr %i.avv acquire, align 8 ; 2 uses
  %i.avx = icmp eq i64 %i.avw, 4294967297
  %i.avy = trunc i64 %i.avw to i32                ; 2 uses
  br i1 %i.avx, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %bb.op
  store i32 0, ptr %i.avv, align 8, !tbaa !242
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avu, i64 12
  store i32 0, ptr %i.avz, align 4, !tbaa !243
  %i.awa = load ptr, ptr %i.avu, align 8, !tbaa !64
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 16
  %i.awc = load ptr, ptr %i.awb, align 8
  call void %i.awc(ptr noundef nonnull align 8 dereferenceable(16) %i.avu) #18, !inline_history !701
  %i.awd = load ptr, ptr %i.avu, align 8, !tbaa !64
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 24
  %i.awf = load ptr, ptr %i.awe, align 8
  call void %i.awf(ptr noundef nonnull align 8 dereferenceable(16) %i.avu) #18, !inline_history !701
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit65.i.i

bb.or:                                            ; preds = %bb.op
  %i.awg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i62.i.i = icmp eq i8 %i.awg, 0
  br i1 %.not.i.i.i.i62.i.i, label %bb.ot, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.awh = add nsw i32 %i.avy, -1
  store i32 %i.awh, ptr %i.avv, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63.i.i

bb.ot:                                            ; preds = %bb.or
  %i.awi = atomicrmw volatile add ptr %i.avv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63.i.i: ; preds = %bb.ot, %bb.os
  %.0.i.i.i.i.i64.i.i = phi i32 [ %i.avy, %bb.os ], [ %i.awi, %bb.ot ]
  %i.awj = icmp eq i32 %.0.i.i.i.i.i64.i.i, 1
  br i1 %i.awj, label %bb.ou, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit65.i.i, !prof !173

bb.ou:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.avu) #18
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit65.i.i

_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit65.i.i: ; preds = %bb.ou, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63.i.i, %bb.oq, %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #18
  %i.awk = load ptr, ptr %i.auc, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i66.i.i = icmp eq ptr %i.awk, null
  br i1 %.not.i.i.i.i66.i.i, label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i281, label %bb.ov

bb.ov:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit65.i.i
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 8 ; 4 uses
  %i.awm = load atomic i64, ptr %i.awl acquire, align 8 ; 2 uses
  %i.awn = icmp eq i64 %i.awm, 4294967297
  %i.awo = trunc i64 %i.awm to i32                ; 2 uses
  br i1 %i.awn, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  store i32 0, ptr %i.awl, align 8, !tbaa !242
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awk, i64 12
  store i32 0, ptr %i.awp, align 4, !tbaa !243
  %i.awq = load ptr, ptr %i.awk, align 8, !tbaa !64
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 16
  %i.aws = load ptr, ptr %i.awr, align 8
  call void %i.aws(ptr noundef nonnull align 8 dereferenceable(16) %i.awk) #18, !inline_history !702
  %i.awt = load ptr, ptr %i.awk, align 8, !tbaa !64
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 24
  %i.awv = load ptr, ptr %i.awu, align 8
  call void %i.awv(ptr noundef nonnull align 8 dereferenceable(16) %i.awk) #18, !inline_history !702
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i281

bb.ox:                                            ; preds = %bb.ov
  %i.aww = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i67.i.i = icmp eq i8 %i.aww, 0
  br i1 %.not.i.i.i.i.i67.i.i, label %bb.oz, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.awx = add nsw i32 %i.awo, -1
  store i32 %i.awx, ptr %i.awl, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i68.i.i

bb.oz:                                            ; preds = %bb.ox
  %i.awy = atomicrmw volatile add ptr %i.awl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i68.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i68.i.i: ; preds = %bb.oz, %bb.oy
  %.0.i.i.i.i.i.i69.i.i = phi i32 [ %i.awo, %bb.oy ], [ %i.awy, %bb.oz ]
  %i.awz = icmp eq i32 %.0.i.i.i.i.i.i69.i.i, 1
  br i1 %i.awz, label %bb.pa, label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i281, !prof !173

bb.pa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i68.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awk) #18
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i281

_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i281: ; preds = %bb.pa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i68.i.i, %bb.ow, %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit65.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #18
  br label %_ZN7xgboost9predictor12_GLOBAL__N_112LaunchConfigIJNS1_11BlockPolicyENS1_21NullEncAccessorPolicyEEE12ForEachBatchIZZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEENKUlOT_E_clIS5_EEDaSL_EUlSL_E_EEvSL_.exit.i

bb.pb:                                            ; preds = %bb.oh
  %i.axa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7xgboost13BatchIteratorINS_10SparsePageEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %134)
          to label %bb.pc unwind label %bb.sf     ; 3 uses

bb.pc:                                            ; preds = %bb.pb
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #18
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 8
  %i.axc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.axb)
          to label %.noexc70.i.i unwind label %bb.sg, !noalias !816 ; 2 uses

.noexc70.i.i:                                     ; preds = %bb.pc
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 8
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !295, !noalias !816
  %i.axf = load ptr, ptr %i.axc, align 8, !tbaa !296, !noalias !816 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axa, i64 16
  %i.axh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.axg)
          to label %bb.pd unwind label %bb.sg, !noalias !816 ; 2 uses

bb.pd:                                            ; preds = %.noexc70.i.i
  %i.axi = ptrtoint ptr %i.axe to i64
  %i.axj = ptrtoint ptr %i.axf to i64
  %i.axk = sub i64 %i.axi, %i.axj
  %i.axl = ashr exact i64 %i.axk, 3               ; 3 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axh, i64 8
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !299, !noalias !816
  %i.axo = load ptr, ptr %i.axh, align 8, !tbaa !300, !noalias !816 ; 2 uses
  %i.axp = ptrtoint ptr %i.axn to i64
  %i.axq = ptrtoint ptr %i.axo to i64
  %i.axr = sub i64 %i.axp, %i.axq
  %i.axs = ashr exact i64 %i.axr, 3
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axa, i64 24
  %i.axu = load i64, ptr %i.axt, align 8, !tbaa !306
  store i64 %i.axl, ptr %i.auk, align 8, !tbaa !59
  store ptr %i.axf, ptr %.sroa.4260.0..sroa_idx.i.i, align 8, !tbaa !128
  store i64 %i.axs, ptr %.sroa.5.0..sroa_idx.i.i276, align 8, !tbaa !59
  store ptr %i.axo, ptr %.sroa.6.0..sroa_idx.i.i277, align 8, !tbaa !307
  store i64 %i.axu, ptr %i.aul, align 8, !tbaa !327
  %i.axv = load i32, ptr %i.agt, align 4, !tbaa !83 ; 6 uses
  %i.axw = load i8, ptr %i.agx, align 1, !tbaa !82, !range !140, !noundef !141
  call void @llvm.lifetime.start.p0(ptr nonnull %103)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %103, ptr noundef nonnull align 8 dereferenceable(72) %i.agz, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %102)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %102, ptr noundef nonnull align 8 dereferenceable(24) %i.ahb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %i.axw, ptr %i.s, align 1, !tbaa !82
  %spec.select.i.i.i.i72.i.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.axl, i64 1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #18
  %i.axx = load i32, ptr %i.aux, align 4, !tbaa !288
  store i32 %i.axx, ptr %i.t, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %98, i8 0, i64 24, i1 false)
  %i.axy = icmp ugt i64 %i.axl, 2
  br i1 %i.axy, label %bb.pe, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

bb.pe:                                            ; preds = %bb.pd
  %i.axz = load i32, ptr %i.auy, align 4, !tbaa !200 ; 2 uses
  %i.aya = load i32, ptr %i.auz, align 8, !tbaa !199 ; 2 uses
  %i.ayb = sub nsw i32 %i.axz, %i.aya             ; 2 uses
  %i.ayc = sext i32 %i.ayb to i64                 ; 4 uses
  %.not120.i.i146.i.i = icmp eq i32 %i.axz, %i.aya
  br i1 %.not120.i.i146.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i154.i.i, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.ayd = icmp slt i32 %i.ayb, 0
  br i1 %i.ayd, label %bb.pg, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i147.i.i

bb.pg:                                            ; preds = %bb.pf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
          to label %.noexc53.i.i250.i.i unwind label %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53.i.i250.i.i:                              ; preds = %bb.pg
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i147.i.i: ; preds = %bb.pf
  %i.aye = shl nuw nsw i64 %i.ayc, 2
  %i.ayf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aye) #33
          to label %.noexc54.i.i150.i.i unwind label %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc54.i.i150.i.i:                              ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i147.i.i
  store i32 0, ptr %i.ayf, align 4, !tbaa !83
  %i.ayg = add nsw i64 %i.ayc, -1                 ; 2 uses
  %i.ayh = icmp eq i64 %i.ayg, 0
  br i1 %i.ayh, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i153.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i151.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i151.i.i: ; preds = %.noexc54.i.i150.i.i
  %i.ayi = getelementptr i8, ptr %i.ayf, i64 4
  %.idx.i.i.i.i.i31.i.i.i152.i.i = shl nuw nsw i64 %i.ayg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ayi, i8 0, i64 %.idx.i.i.i.i.i31.i.i.i152.i.i, i1 false), !tbaa !83
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i153.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i153.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i151.i.i, %.noexc54.i.i150.i.i
  store ptr %i.ayf, ptr %98, align 8, !tbaa !175
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %i.ayf, i64 %i.ayc ; 2 uses
  store ptr %i.ayj, ptr %i.aum, align 8, !tbaa !174
  store ptr %i.ayj, ptr %i.aun, align 8, !tbaa !246
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i154.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i154.i.i:    ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i153.i.i, %bb.pe
  %i.ayk = phi i64 [ %i.ayc, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i153.i.i ], [ 0, %bb.pe ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #18
  store i64 %i.ayk, ptr %i.u, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #18
  %.val.i.i155.i.i = load ptr, ptr %i.agv, align 8, !tbaa !144 ; 2 uses
  %.val24.i.i156.i.i = load ptr, ptr %i.ava, align 8, !tbaa !201 ; 2 uses
  %i.ayl = icmp ne ptr %.val.i.i155.i.i, null
  %i.aym = icmp eq ptr %.val24.i.i156.i.i, null
  %i.ayn = or i1 %i.ayl, %i.aym
  br i1 %i.ayn, label %bb.pi, label %bb.ph, !prof !70

bb.ph:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i154.i.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.pi:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i154.i.i
  %i.ayo = ptrtoint ptr %.val24.i.i156.i.i to i64
  %i.ayp = ptrtoint ptr %.val.i.i155.i.i to i64
  %i.ayq = sub i64 %i.ayo, %i.ayp
  %i.ayr = sdiv exact i64 %i.ayq, 200             ; 2 uses
  store i64 %i.ayr, ptr %i.v, align 8, !tbaa !59
  %i.ays = icmp eq i64 %i.ayk, %i.ayr
  br i1 %i.ays, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i249.i.i, label %bb.pj

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i249.i.i: ; preds = %bb.pi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i173.i.i

bb.pj:                                            ; preds = %bb.pi
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %99, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i158.i.i unwind label %bb.pl

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i158.i.i: ; preds = %bb.pj
  %.pr.i.i159.i.i = load ptr, ptr %99, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18
  %.not.i.i160.i.i = icmp eq ptr %.pr.i.i159.i.i, null
  br i1 %.not.i.i160.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i173.i.i, label %bb.pk

bb.pk:                                            ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i158.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #18
  %i.ayt = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %100)
          to label %.noexc28.i.i162.i.i unwind label %bb.pm

.noexc28.i.i162.i.i:                              ; preds = %bb.pk
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ayt, ptr noundef nonnull @.str.4, i32 noundef 412)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i163.i.i unwind label %bb.pm

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i163.i.i: ; preds = %.noexc28.i.i162.i.i
  %i.ayu = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %100)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i164.i.i unwind label %bb.pn ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i164.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i163.i.i
  %i.ayv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ayu, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i165.i.i unwind label %bb.pn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i165.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i164.i.i
  %i.ayw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ayu, ptr noundef nonnull @.str.50, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i166.i.i unwind label %bb.pn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i166.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i165.i.i
  %i.ayx = load ptr, ptr %99, align 8, !tbaa !53  ; 2 uses
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !44
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayx, i64 8
  %i.aza = load i64, ptr %i.ayz, align 8, !tbaa !43
  %i.azb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ayu, ptr noundef %i.ayy, i64 noundef %i.aza)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i167.i.i unwind label %bb.pn

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i167.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i166.i.i
  %i.azc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.azb, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i168.i.i unwind label %bb.pn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i168.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i167.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %100)
          to label %bb.pp unwind label %bb.pm

bb.pl:                                            ; preds = %bb.pj
  %i.azd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18
  br label %bb.ra

bb.pm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i168.i.i, %.noexc28.i.i162.i.i, %bb.pk
  %i.aze = landingpad { ptr, i32 }
          cleanup
  br label %bb.po

bb.pn:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i167.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i166.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i165.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i164.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i163.i.i
  %i.azf = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %100)
          to label %bb.po unwind label %bb.sd

bb.po:                                            ; preds = %bb.pn, %bb.pm
  %.pn.i.i161.i.i = phi { ptr, i32 } [ %i.aze, %bb.pm ], [ %i.azf, %bb.pn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %99) #18
  br label %bb.ra

bb.pp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i168.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #18
  %.pr63.i.i169.i.i = load ptr, ptr %99, align 8, !tbaa !53 ; 4 uses
  %.not.i.i.i170.i.i = icmp eq ptr %.pr63.i.i169.i.i, null
  br i1 %.not.i.i.i170.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i173.i.i, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.azg = load ptr, ptr %.pr63.i.i169.i.i, align 8, !tbaa !44 ; 2 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %.pr63.i.i169.i.i, i64 16 ; 2 uses
  %i.azi = icmp eq ptr %i.azg, %i.azh
  br i1 %i.azi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i172.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i171.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i171.i.i: ; preds = %bb.pq
  %i.azj = load i64, ptr %i.azh, align 8, !tbaa !50
  %i.azk = add i64 %i.azj, 1
  call void @_ZdlPvm(ptr noundef %i.azg, i64 noundef %i.azk) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i172.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i172.i.i: ; preds = %bb.pq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i171.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr63.i.i169.i.i, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i173.i.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i173.i.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i172.i.i, %bb.pp, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i158.i.i, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i249.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #18
  %i.azl = load i32, ptr %i.auy, align 4, !tbaa !200
  %i.azm = load i32, ptr %i.auz, align 8, !tbaa !199
  %i.azn = sub nsw i32 %i.azl, %i.azm             ; 4 uses
  %i.azo = icmp eq i32 %i.axv, 1
  br i1 %i.azo, label %.preheader.i.i.i.i237.i.i, label %bb.pw

.preheader.i.i.i.i237.i.i:                        ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i173.i.i
  %i.azp = icmp sgt i32 %i.azn, 0
  br i1 %i.azp, label %.lr.ph120.i.i.i.i238.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

.lr.ph120.i.i.i.i238.i.i:                         ; preds = %.preheader.i.i.i.i237.i.i
  %wide.trip.count.i.i.i.i239.i.i = zext nneg i32 %i.azn to i64
  br label %bb.pr

bb.pr:                                            ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i, %.lr.ph120.i.i.i.i238.i.i
  %indvars.iv.i.i.i.i240.i.i = phi i64 [ 0, %.lr.ph120.i.i.i.i238.i.i ], [ %indvars.iv.next.i.i.i.i246.i.i, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i ] ; 4 uses
  %.val67.val.i.i.i.i241.i.i = load ptr, ptr %i.agv, align 8, !tbaa !144 ; 3 uses
  %.val67.val68.i.i.i.i242.i.i = load ptr, ptr %i.ava, align 8, !tbaa !201 ; 2 uses
  %i.azq = icmp ne ptr %.val67.val.i.i.i.i241.i.i, null
  %i.azr = icmp eq ptr %.val67.val68.i.i.i.i242.i.i, null
  %i.azs = or i1 %i.azq, %i.azr
  br i1 %i.azs, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i243.i.i, label %bb.ps, !prof !70

bb.ps:                                            ; preds = %bb.pr
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i243.i.i: ; preds = %bb.pr
end_hunk_3
begin_hunk_4_@_ZN7xgboost9predictor17CheckProxyDMatrixINS_4data15CSRArrayAdapterEEEvSt10shared_ptrIT_EPKNS2_12DMatrixProxyEPKNS_17LearnerModelParamE:bb.a
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.u unwind label %bb.af

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn15 = phi { ptr, i32 } [ %i.ce, %bb.s ], [ %i.cf, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.ad

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %.pr97 = load ptr, ptr %8, align 8, !tbaa !53   ; 4 uses
  %.not.i66 = icmp eq ptr %.pr97, null
  br i1 %.not.i66, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit70, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = load ptr, ptr %.pr97, align 8, !tbaa !44 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.pr97, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67: ; preds = %bb.w
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !50
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i68

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i68: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67
  call void @_ZdlPvm(ptr noundef nonnull %.pr97, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit70

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit70: ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.v, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.cl = load ptr, ptr %1, align 8, !tbaa !64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef nonnull align 8 dereferenceable(248) ptr %i.cn(ptr noundef nonnull align 8 dereferenceable(5360) %1)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 0, ptr %i.e, align 4, !tbaa !83
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !59, !noalias !1498
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit88

_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit70
  call void @_ZN4dmlc14LogCheckFormatImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %.pr101 = load ptr, ptr %10, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %.not109 = icmp eq ptr %.pr101, null
  br i1 %.not109, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.cs = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc71 unwind label %bb.y

.noexc71:                                         ; preds = %bb.x
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.cs, ptr noundef nonnull @.str.65, i32 noundef 22)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit73 unwind label %bb.y

_ZN4dmlc15LogMessageFatalC2EPKci.exit73:          ; preds = %.noexc71
  %i.ct = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit75 unwind label %bb.z ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit75: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit73
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit75
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.70, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.cw = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !44
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !43
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef %i.cx, i64 noundef %i.cz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit81 unwind label %bb.z

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit81: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit81
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ab unwind label %bb.y

bb.y:                                             ; preds = %.noexc71, %bb.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit81, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit75, %_ZN4dmlc15LogMessageFatalC2EPKci.exit73
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn17 = phi { ptr, i32 } [ %i.dc, %bb.y ], [ %i.dd, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.ad

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %.pr102 = load ptr, ptr %10, align 8, !tbaa !53 ; 4 uses
  %.not.i84 = icmp eq ptr %.pr102, null
  br i1 %.not.i84, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit88, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = load ptr, ptr %.pr102, align 8, !tbaa !44 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.pr102, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85: ; preds = %bb.ac
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !50
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i86

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i86: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85
  call void @_ZdlPvm(ptr noundef nonnull %.pr102, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit88

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit88: ; preds = %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

bb.ad:                                            ; preds = %bb.aa, %bb.u, %bb.o, %bb.i
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %bb.aa ], [ %.pn15, %bb.u ], [ %.pn13, %bb.o ], [ %.pn, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.d
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.ad ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %.pn17.pn.pn

bb.af:                                            ; preds = %bb.z, %bb.t, %bb.n, %bb.h, %bb.c
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNK7xgboost9predictor12CPUPredictor14InplacePredictESt10shared_ptrINS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiENKUlOT_E_clIRNS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEDaSC_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(13) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %12 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %13 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %14 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %16 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %17 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.std::vector.31", align 8   ; 14 uses
  %19 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %20 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %21 = alloca %class.anon.509, align 8           ; 13 uses
  %22 = alloca %"struct.xgboost::common::OptionalWeights", align 8 ; 4 uses
  %23 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 12 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !126
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !487, !nonnull !141, !align !245 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !474
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.p = load i64, ptr %i.o, align 8, !tbaa !59   ; 2 uses
  %i.q = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.p, i64 1) ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !488, !nonnull !141, !align !245
  %i.t = load i64, ptr %i.s, align 8, !tbaa !59, !noalias !1509 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !167, !noalias !1509 ; 2 uses
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !68, !noalias !1509 ; 4 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ab, align 8, !noalias !1509
  %i.ac = icmp eq ptr %i.v, %i.w
  %i.ad = mul i64 %i.t, %i.q
  %.sink.i.i.i.i = select i1 %i.ac, i64 0, i64 %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !489, !nonnull !141, !align !245 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !490, !nonnull !141, !align !245
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !491, !nonnull !141, !align !244
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !83 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !492, !nonnull !141
  %i.an = load i8, ptr %i.am, align 1, !tbaa !82, !range !140, !noundef !141
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !493, !nonnull !141, !align !245
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.t, ptr %23, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 %i.q, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i64 %i.t, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i64 %i.aa, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 40
  store ptr %i.w, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 48
  store ptr %i.w, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 56
  store i64 %.sink.i.i.i.i, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 64
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.99.0..sroa_idx, align 8
  store i8 %i.an, ptr %i.e, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !288
  store i32 %i.ar, ptr %i.f, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.as = icmp ugt i64 %i.p, 2
  br i1 %i.as, label %bb.b, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 28 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !200 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !199 ; 2 uses
  %i.ax = sub nsw i32 %i.au, %i.aw                ; 2 uses
  %i.ay = sext i32 %i.ax to i64                   ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.not120.i = icmp eq i32 %i.au, %i.aw
  br i1 %.not120.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bb = icmp slt i32 %i.ax, 0
  br i1 %i.bb, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
          to label %.noexc53.i unwind label %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53.i:                                       ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.bc = shl nuw nsw i64 %i.ay, 2
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #33
          to label %.noexc54.i unwind label %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc54.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  store i32 0, ptr %i.bd, align 4, !tbaa !83
  %i.be = add nsw i64 %i.ay, -1                   ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc54.i
  %i.bg = getelementptr i8, ptr %i.bd, i64 4
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.be, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bg, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !83
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc54.i
  store ptr %i.bd, ptr %18, align 8, !tbaa !175
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ay ; 2 uses
  store ptr %i.bh, ptr %i.az, align 8, !tbaa !174
  store ptr %i.bh, ptr %i.ba, align 8, !tbaa !246
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i, %bb.b
  %i.bi = phi i64 [ %i.ay, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i64 %i.bi, ptr %i.g, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %.val.i = load ptr, ptr %i.af, align 8, !tbaa !144 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %.val24.i = load ptr, ptr %i.bj, align 8, !tbaa !201 ; 2 uses
  %i.bk = icmp ne ptr %.val.i, null
  %i.bl = icmp eq ptr %.val24.i, null
  %i.bm = or i1 %i.bk, %i.bl
  br i1 %i.bm, label %bb.f, label %bb.e, !prof !70

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  tail call void @_ZSt9terminatev() #35
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.bn = ptrtoint ptr %.val24.i to i64
  %i.bo = ptrtoint ptr %.val.i to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 200               ; 2 uses
  store i64 %i.bq, ptr %i.h, align 8, !tbaa !59
  %i.br = icmp eq i64 %i.bi, %i.bq
  br i1 %i.br, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %bb.g

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i unwind label %bb.i

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %bb.g
  %.pr.i = load ptr, ptr %19, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.bs = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %.noexc28.i unwind label %bb.j

.noexc28.i:                                       ; preds = %bb.h
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bs, ptr noundef nonnull @.str.4, i32 noundef 412)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i:          ; preds = %.noexc28.i
  %i.bt = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.50, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bw = load ptr, ptr %19, align 8, !tbaa !53   ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !44
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !43
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef %i.bx, i64 noundef %i.bz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.m unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %bb.ax

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i, %.noexc28.i, %bb.h
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.l unwind label %bb.ca

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.cd, %bb.j ], [ %i.ce, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  br label %bb.ax

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr63.i = load ptr, ptr %19, align 8, !tbaa !53 ; 4 uses
  %.not.i.i = icmp eq ptr %.pr63.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = load ptr, ptr %.pr63.i, align 8, !tbaa !44 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.pr63.i, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !50
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr63.i, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.m, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.ck = load i32, ptr %i.at, align 4, !tbaa !200
  %i.cl = load i32, ptr %i.av, align 8, !tbaa !199
  %i.cm = sub nsw i32 %i.ck, %i.cl                ; 4 uses
  %i.cn = icmp eq i32 %i.ak, 1
  br i1 %i.cn, label %.preheader.i.i.i, label %bb.t

.preheader.i.i.i:                                 ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.co = icmp sgt i32 %i.cm, 0
  br i1 %i.co, label %.lr.ph120.i.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

.lr.ph120.i.i.i:                                  ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.cm to i64
  br label %bb.o

bb.o:                                             ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i, %.lr.ph120.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph120.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i ] ; 4 uses
  %.val67.val.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !144 ; 3 uses
  %.val67.val68.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !201 ; 2 uses
  %i.cp = icmp ne ptr %.val67.val.i.i.i, null
  %i.cq = icmp eq ptr %.val67.val68.i.i.i, null
  %i.cr = or i1 %i.cp, %i.cq
  br i1 %i.cr, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i, label %bb.p, !prof !70

end_hunk_4
