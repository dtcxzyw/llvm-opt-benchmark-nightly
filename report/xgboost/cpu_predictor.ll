Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cpu_predictor?download=true
inline.NumInlined: 9576
inline.NumDeleted: 2555
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #18, !inline_history !636
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
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #18, !inline_history !636
  %i.ia = load ptr, ptr %i.hr, align 8, !tbaa !64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #18, !inline_history !636
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
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ih) #18, !inline_history !637
  %i.iq = load ptr, ptr %i.ih, align 8, !tbaa !64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ih) #18, !inline_history !637
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
  br i1 %.not.i.i.i43.i.i, label %bb.jb, label %bb.ay

bb.ay:                                            ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.ff) #34
  br label %bb.jb

bb.az:                                            ; preds = %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #18
  br label %bb.ek

bb.ba:                                            ; preds = %bb.eg, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit.i.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.bb:                                            ; preds = %bb.ae
  %i.iz = invoke noundef nonnull align 8 dereferenceable(225) ptr @_ZNK7xgboost13BatchIteratorINS_16GHistIndexMatrixEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %190)
          to label %bb.bc unwind label %bb.eh     ; 5 uses

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gd, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0285.i.i, i64 32, i1 false)
  store ptr %i.iz, ptr %192, align 8, !tbaa !259
  store i64 %i.fk, ptr %i.ge, align 8, !tbaa !59
  store ptr %i.fj, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !65
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 168
  %i.jb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ja)
          to label %.noexc.i.i unwind label %bb.ei

.noexc.i.i:                                       ; preds = %bb.bc
  store ptr %i.jb, ptr %i.gf, align 8, !tbaa !261
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 160
  %i.jd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jc)
          to label %.noexc44.i.i unwind label %bb.ei

.noexc44.i.i:                                     ; preds = %.noexc.i.i
  store ptr %i.jd, ptr %i.gg, align 8, !tbaa !127
  %i.je = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK7xgboost16GHistIndexMatrix9TransposeEv(ptr noundef nonnull align 8 dereferenceable(225) %i.iz)
          to label %bb.bd unwind label %bb.ei

bb.bd:                                            ; preds = %.noexc44.i.i
  store ptr %i.je, ptr %i.gh, align 8, !tbaa !263
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 184
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !280
  store i64 %i.jg, ptr %i.gi, align 8, !tbaa !285
  %i.jh = load i32, ptr %i.di, align 4, !tbaa !83 ; 6 uses
  %i.ji = load i8, ptr %i.dm, align 1, !tbaa !82, !range !140, !noundef !141
  call void @llvm.lifetime.start.p0(ptr nonnull %183)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %183, ptr noundef nonnull align 8 dereferenceable(72) %i.do, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %182)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %182, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 %i.ji, ptr %i.ao, align 1, !tbaa !82
  %i.jj = load ptr, ptr %192, align 8, !tbaa !286, !nonnull !141, !align !245
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !287
  %spec.select.i.i.i.i.i.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.jl, i64 1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #18
  %i.jm = load i32, ptr %i.gu, align 4, !tbaa !288
  store i32 %i.jm, ptr %i.ap, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %178) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %178, i8 0, i64 24, i1 false)
  %i.jn = icmp ugt i64 %spec.select.i.i.i.i.i.i, 1
  br i1 %i.jn, label %bb.be, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.jo = load i32, ptr %i.gv, align 4, !tbaa !200 ; 2 uses
  %i.jp = load i32, ptr %i.gw, align 8, !tbaa !199 ; 2 uses
  %i.jq = sub nsw i32 %i.jo, %i.jp                ; 2 uses
  %i.jr = sext i32 %i.jq to i64                   ; 5 uses
  %.not118.i.i.i.i = icmp eq i32 %i.jo, %i.jp
  br i1 %.not118.i.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.js = icmp slt i32 %i.jq, 0
  br i1 %i.js, label %bb.bg, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
          to label %.noexc53.i.i.i.i unwind label %.loopexit.split-lp307.i.i

.noexc53.i.i.i.i:                                 ; preds = %bb.bg
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.bf
  %i.jt = shl nuw nsw i64 %i.jr, 2
  %i.ju = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #33
          to label %.noexc54.i.i.i.i unwind label %.loopexit306.i.i ; 4 uses

.noexc54.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  store i32 0, ptr %i.ju, align 4, !tbaa !83
  %i.jv = add nsw i64 %i.jr, -1                   ; 2 uses
  %i.jw = icmp eq i64 %i.jv, 0
  br i1 %i.jw, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i: ; preds = %.noexc54.i.i.i.i
  %i.jx = getelementptr i8, ptr %i.ju, i64 4
  %.idx.i.i.i.i.i31.i.i.i.i.i = shl nuw nsw i64 %i.jv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.jx, i8 0, i64 %.idx.i.i.i.i.i31.i.i.i.i.i, i1 false), !tbaa !83
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i, %.noexc54.i.i.i.i
  store ptr %i.ju, ptr %178, align 8, !tbaa !175
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.jr ; 2 uses
  store ptr %i.jy, ptr %i.gj, align 8, !tbaa !174
  store ptr %i.jy, ptr %i.gk, align 8, !tbaa !246
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i:       ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %179) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #18
  store i64 %i.jr, ptr %i.aq, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #18
  %.val.i.i.i.i = load ptr, ptr %i.dk, align 8, !tbaa !144 ; 2 uses
  %.val24.i.i.i.i = load ptr, ptr %i.gx, align 8, !tbaa !201 ; 2 uses
  %i.jz = icmp ne ptr %.val.i.i.i.i, null
  %i.ka = icmp eq ptr %.val24.i.i.i.i, null
  %i.kb = or i1 %i.jz, %i.ka
  br i1 %i.kb, label %bb.bi, label %bb.bh, !prof !70

bb.bh:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i
  %i.kc = ptrtoint ptr %.val24.i.i.i.i to i64
  %i.kd = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ke = sub i64 %i.kc, %i.kd
  %i.kf = sdiv exact i64 %i.ke, 200               ; 2 uses
  store i64 %i.kf, ptr %i.ar, align 8, !tbaa !59
  %i.kg = icmp eq i64 %i.kf, %i.jr
  br i1 %i.kg, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i, label %bb.bj

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %179, ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i unwind label %bb.bl

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.bj
  %.pr.i.i.i.i = load ptr, ptr %179, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #18
  %.not.i.i.i.i39 = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i39, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %180) #18
  %i.kh = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %180)
          to label %.noexc28.i.i.i.i unwind label %bb.bm

.noexc28.i.i.i.i:                                 ; preds = %bb.bk
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.kh, ptr noundef nonnull @.str.4, i32 noundef 412)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.bm

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc28.i.i.i.i
  %i.ki = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %180)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.bn ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.bn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.kk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef nonnull @.str.50, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i unwind label %bb.bn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.kl = load ptr, ptr %179, align 8, !tbaa !53  ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !44
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !43
  %i.kp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef %i.km, i64 noundef %i.ko)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.bn

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i
  %i.kq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kp, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i unwind label %bb.bn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %180)
          to label %bb.bp unwind label %bb.bm

.loopexit306.i.i:                                 ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit308.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp307.i.i:                        ; preds = %bb.bg
  %lpad.loopexit.split-lp309.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #18
  br label %bb.db

bb.bm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i, %.noexc28.i.i.i.i, %bb.bk
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %180)
          to label %bb.bo unwind label %bb.ef

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ks, %bb.bm ], [ %i.kt, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %179) #18
  br label %bb.db

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #18
  %.pr64.i.i.i.i = load ptr, ptr %179, align 8, !tbaa !53 ; 4 uses
  %.not.i.i.i47.i.i = icmp eq ptr %.pr64.i.i.i.i, null
  br i1 %.not.i.i.i47.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ku = load ptr, ptr %.pr64.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.pr64.i.i.i.i, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bq
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !50
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr64.i.i.i.i, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.bp, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %179) #18
  %i.kz = load i32, ptr %i.gv, align 4, !tbaa !200
  %i.la = load i32, ptr %i.gw, align 8, !tbaa !199
  %i.lb = sub nsw i32 %i.kz, %i.la                ; 4 uses
  %i.lc = icmp eq i32 %i.jh, 1
  br i1 %i.lc, label %.preheader.i.i.i.i.i.i, label %bb.bw

.preheader.i.i.i.i.i.i:                           ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i
  %i.ld = icmp sgt i32 %i.lb, 0
  br i1 %i.ld, label %.lr.ph109.i.i.i.i.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

.lr.ph109.i.i.i.i.i.i:                            ; preds = %.preheader.i.i.i.i.i.i
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %i.lb to i64
  br label %bb.br

bb.br:                                            ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i, %.lr.ph109.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph109.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i ] ; 4 uses
  %.val67.val.i.i.i.i.i.i = load ptr, ptr %i.dk, align 8, !tbaa !144 ; 3 uses
  %.val67.val68.i.i.i.i.i.i = load ptr, ptr %i.gx, align 8, !tbaa !201 ; 2 uses
  %i.le = icmp ne ptr %.val67.val.i.i.i.i.i.i, null
  %i.lf = icmp eq ptr %.val67.val68.i.i.i.i.i.i, null
  %i.lg = or i1 %i.le, %i.lf
  br i1 %i.lg, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i.i.i, label %bb.bs, !prof !70

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i.i.i: ; preds = %bb.br
  %i.lh = ptrtoint ptr %.val67.val68.i.i.i.i.i.i to i64
  %i.li = ptrtoint ptr %.val67.val.i.i.i.i.i.i to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = sdiv exact i64 %i.lj, 200
  %i.ll = icmp ugt i64 %i.lk, %indvars.iv.i.i.i.i.i.i
  br i1 %i.ll, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i, label %bb.bt, !prof !70

bb.bt:                                            ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i.i.i
  %i.lm = getelementptr inbounds nuw [200 x i8], ptr %.val67.val.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 192
  %i.lo = load i8, ptr %i.ln, align 8, !tbaa !210
  %i.lp = icmp eq i8 %i.lo, 0
  br i1 %i.lp, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i
  %i.lq = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_14ScalarTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.lm, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i unwind label %.loopexit66.i.i.i.i

bb.bv:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i
  %i.lr = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_19MultiTargetTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.lm, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i unwind label %.loopexit66.i.i.i.i

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i: ; preds = %bb.bv, %bb.bu
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.lq, %bb.bu ], [ %i.lr, %bb.bv ]
  %i.ls = load ptr, ptr %178, align 8, !tbaa !175
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv.i.i.i.i.i.i
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.lt, align 4, !tbaa !83
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond121.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond121.not.i.i.i.i.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i, label %bb.br, !llvm.loop !638

bb.bw:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i32 %i.jh, ptr %i.am, align 4, !tbaa !83, !noalias !786
  store i32 1, ptr %i.an, align 4, !tbaa !83, !noalias !786
  %.not.i.i.i.i.i48.i.i = icmp slt i32 %i.jh, 1
  br i1 %.not.i.i.i.i.i48.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i.i: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %.preheader91.i.i.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i.i: ; preds = %bb.bw
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %175, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an)
          to label %.noexc40.i.i.i.i unwind label %.loopexit.split-lp67.i.i.i.i

.noexc40.i.i.i.i:                                 ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %175, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %.not.i.i37.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i, null
  br i1 %.not.i.i37.i.i.i.i, label %.preheader91.i.i.i.i.i.i, label %bb.bx
end_hunk_0
begin_hunk_1_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a
  store i32 0, ptr %i.rx, align 8, !tbaa !242
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rw, i64 12
  store i32 0, ptr %i.sb, align 4, !tbaa !243
  %i.sc = load ptr, ptr %i.rw, align 8, !tbaa !64
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %i.se = load ptr, ptr %i.sd, align 8
  call void %i.se(ptr noundef nonnull align 8 dereferenceable(16) %i.rw) #18, !inline_history !652
  %i.sf = load ptr, ptr %i.rw, align 8, !tbaa !64
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 24
  %i.sh = load ptr, ptr %i.sg, align 8
  call void %i.sh(ptr noundef nonnull align 8 dereferenceable(16) %i.rw) #18, !inline_history !652
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i

bb.ev:                                            ; preds = %bb.et
  %i.si = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i59.i.i = icmp eq i8 %i.si, 0
  br i1 %.not.i.i.i.i59.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.sj = add nsw i32 %i.sa, -1
  store i32 %i.sj, ptr %i.rx, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60.i.i

bb.ex:                                            ; preds = %bb.ev
  %i.sk = atomicrmw volatile add ptr %i.rx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60.i.i: ; preds = %bb.ex, %bb.ew
  %.0.i.i.i.i.i61.i.i = phi i32 [ %i.sa, %bb.ew ], [ %i.sk, %bb.ex ]
  %i.sl = icmp eq i32 %.0.i.i.i.i.i61.i.i, 1
  br i1 %i.sl, label %bb.ey, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i, !prof !173

bb.ey:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rw) #18
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i

_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i: ; preds = %bb.ey, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60.i.i, %bb.eu, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #18
  %i.sm = load ptr, ptr %i.qx, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i62.i.i = icmp eq ptr %i.sm, null
  br i1 %.not.i.i.i62.i.i, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit66.i.i, label %bb.ez

bb.ez:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8 ; 4 uses
  %i.so = load atomic i64, ptr %i.sn acquire, align 8 ; 2 uses
  %i.sp = icmp eq i64 %i.so, 4294967297
  %i.sq = trunc i64 %i.so to i32                  ; 2 uses
  br i1 %i.sp, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  store i32 0, ptr %i.sn, align 8, !tbaa !242
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 12
  store i32 0, ptr %i.sr, align 4, !tbaa !243
  %i.ss = load ptr, ptr %i.sm, align 8, !tbaa !64
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load ptr, ptr %i.st, align 8
  call void %i.su(ptr noundef nonnull align 8 dereferenceable(16) %i.sm) #18, !inline_history !652
  %i.sv = load ptr, ptr %i.sm, align 8, !tbaa !64
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %i.sx = load ptr, ptr %i.sw, align 8
  call void %i.sx(ptr noundef nonnull align 8 dereferenceable(16) %i.sm) #18, !inline_history !652
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit66.i.i

bb.fb:                                            ; preds = %bb.ez
  %i.sy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i63.i.i = icmp eq i8 %i.sy, 0
  br i1 %.not.i.i.i.i63.i.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.sz = add nsw i32 %i.sq, -1
  store i32 %i.sz, ptr %i.sn, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64.i.i

bb.fd:                                            ; preds = %bb.fb
  %i.ta = atomicrmw volatile add ptr %i.sn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64.i.i: ; preds = %bb.fd, %bb.fc
  %.0.i.i.i.i.i65.i.i = phi i32 [ %i.sq, %bb.fc ], [ %i.ta, %bb.fd ]
  %i.tb = icmp eq i32 %.0.i.i.i.i.i65.i.i, 1
  br i1 %i.tb, label %bb.fe, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit66.i.i, !prof !173

bb.fe:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sm) #18
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit66.i.i

_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit66.i.i: ; preds = %bb.fe, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64.i.i, %bb.fa, %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %194) #18
  %i.tc = load ptr, ptr %i.qy, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i67.i.i = icmp eq ptr %i.tc, null
  br i1 %.not.i.i.i.i67.i.i, label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i, label %bb.ff

bb.ff:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit66.i.i
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 8 ; 4 uses
  %i.te = load atomic i64, ptr %i.td acquire, align 8 ; 2 uses
  %i.tf = icmp eq i64 %i.te, 4294967297
  %i.tg = trunc i64 %i.te to i32                  ; 2 uses
  br i1 %i.tf, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  store i32 0, ptr %i.td, align 8, !tbaa !242
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 12
  store i32 0, ptr %i.th, align 4, !tbaa !243
  %i.ti = load ptr, ptr %i.tc, align 8, !tbaa !64
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %i.tk = load ptr, ptr %i.tj, align 8
  call void %i.tk(ptr noundef nonnull align 8 dereferenceable(16) %i.tc) #18, !inline_history !653
  %i.tl = load ptr, ptr %i.tc, align 8, !tbaa !64
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.tn = load ptr, ptr %i.tm, align 8
  call void %i.tn(ptr noundef nonnull align 8 dereferenceable(16) %i.tc) #18, !inline_history !653
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i

bb.fh:                                            ; preds = %bb.ff
  %i.to = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i68.i.i = icmp eq i8 %i.to, 0
  br i1 %.not.i.i.i.i.i68.i.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.tp = add nsw i32 %i.tg, -1
  store i32 %i.tp, ptr %i.td, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69.i.i

bb.fj:                                            ; preds = %bb.fh
  %i.tq = atomicrmw volatile add ptr %i.td, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69.i.i: ; preds = %bb.fj, %bb.fi
  %.0.i.i.i.i.i.i70.i.i = phi i32 [ %i.tg, %bb.fi ], [ %i.tq, %bb.fj ]
  %i.tr = icmp eq i32 %.0.i.i.i.i.i.i70.i.i, 1
  br i1 %i.tr, label %bb.fk, label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i, !prof !173

bb.fk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tc) #18
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i

_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i: ; preds = %bb.fk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69.i.i, %bb.fg, %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit66.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #18
  br label %bb.jb

bb.fl:                                            ; preds = %bb.ix, %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

bb.fm:                                            ; preds = %bb.er
  %i.tt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7xgboost13BatchIteratorINS_10SparsePageEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %194)
          to label %bb.fn unwind label %bb.iy     ; 3 uses

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #18
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.tv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tu)
          to label %.noexc71.i.i unwind label %bb.iz ; 2 uses

.noexc71.i.i:                                     ; preds = %bb.fn
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !295, !noalias !791
  %i.ty = load ptr, ptr %i.tv, align 8, !tbaa !296, !noalias !791 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.ua = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tz)
          to label %bb.fo unwind label %bb.iz     ; 2 uses

bb.fo:                                            ; preds = %.noexc71.i.i
  %i.ub = ptrtoint ptr %i.tx to i64
  %i.uc = ptrtoint ptr %i.ty to i64
  %i.ud = sub i64 %i.ub, %i.uc
  %i.ue = ashr exact i64 %i.ud, 3                 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !299, !noalias !791
  %i.uh = load ptr, ptr %i.ua, align 8, !tbaa !300, !noalias !791 ; 2 uses
  %i.ui = ptrtoint ptr %i.ug to i64
  %i.uj = ptrtoint ptr %i.uh to i64
  %i.uk = sub i64 %i.ui, %i.uj
  %i.ul = ashr exact i64 %i.uk, 3
  %i.um = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  %i.un = load i64, ptr %i.um, align 8, !tbaa !306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %196, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0285.i.i, i64 32, i1 false)
  store i64 %i.ue, ptr %i.rg, align 8, !tbaa !59
  store ptr %i.ty, ptr %.sroa.4288.0..sroa_idx.i.i, align 8, !tbaa !128
  store i64 %i.ul, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !59
  store ptr %i.uh, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !307
  store i64 %i.un, ptr %i.rh, align 8, !tbaa !312
  %i.uo = load i32, ptr %i.di, align 4, !tbaa !83 ; 6 uses
  %i.up = load i8, ptr %i.dm, align 1, !tbaa !82, !range !140, !noundef !141 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %161)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %161, ptr noundef nonnull align 8 dereferenceable(72) %i.do, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %160)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %160, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  %spec.select.i.i.i.i73.i.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.ue, i64 1) ; 5 uses
  %i.uq = load i32, ptr %i.ro, align 4, !tbaa !288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %157, i8 0, i64 24, i1 false)
  %i.ur = icmp ugt i64 %spec.select.i.i.i.i73.i.i, 1
  br i1 %i.ur, label %bb.fp, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

bb.fp:                                            ; preds = %bb.fo
  %i.us = load i32, ptr %i.rp, align 4, !tbaa !200 ; 2 uses
  %i.ut = load i32, ptr %i.rq, align 8, !tbaa !199 ; 2 uses
  %i.uu = sub nsw i32 %i.us, %i.ut                ; 2 uses
  %i.uv = sext i32 %i.uu to i64                   ; 5 uses
  %.not118.i.i147.i.i = icmp eq i32 %i.us, %i.ut
  br i1 %.not118.i.i147.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i153.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.uw = icmp slt i32 %i.uu, 0
  br i1 %i.uw, label %bb.fr, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i148.i.i

bb.fr:                                            ; preds = %bb.fq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
          to label %.noexc53.i.i251.i.i unwind label %.loopexit.split-lp.i.i

.noexc53.i.i251.i.i:                              ; preds = %bb.fr
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i148.i.i: ; preds = %bb.fq
  %i.ux = shl nuw nsw i64 %i.uv, 2
  %i.uy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ux) #33
          to label %.noexc54.i.i149.i.i unwind label %.loopexit.i.i ; 5 uses

.noexc54.i.i149.i.i:                              ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i148.i.i
  store i32 0, ptr %i.uy, align 4, !tbaa !83
  %i.uz = add nsw i64 %i.uv, -1                   ; 2 uses
  %i.va = icmp eq i64 %i.uz, 0
  br i1 %i.va, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i152.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i150.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i150.i.i: ; preds = %.noexc54.i.i149.i.i
  %i.vb = getelementptr i8, ptr %i.uy, i64 4
  %.idx.i.i.i.i.i31.i.i.i151.i.i = shl nuw nsw i64 %i.uz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.vb, i8 0, i64 %.idx.i.i.i.i.i31.i.i.i151.i.i, i1 false), !tbaa !83
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i152.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i152.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i150.i.i, %.noexc54.i.i149.i.i
  store ptr %i.uy, ptr %157, align 8, !tbaa !175
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.uv ; 3 uses
  store ptr %i.vc, ptr %i.ri, align 8, !tbaa !174
  store ptr %i.vc, ptr %i.rj, align 8, !tbaa !246
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i153.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i153.i.i:    ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i152.i.i, %bb.fp
  %i.vd = phi ptr [ %i.vc, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i152.i.i ], [ null, %bb.fp ] ; 8 uses
  %i.ve = phi ptr [ %i.uy, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i152.i.i ], [ null, %bb.fp ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #18
  store i64 %i.uv, ptr %i.ai, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #18
  %.val.i.i154.i.i = load ptr, ptr %i.dk, align 8, !tbaa !144 ; 2 uses
  %.val24.i.i155.i.i = load ptr, ptr %i.rr, align 8, !tbaa !201 ; 2 uses
  %i.vf = icmp ne ptr %.val.i.i154.i.i, null
  %i.vg = icmp eq ptr %.val24.i.i155.i.i, null
  %i.vh = or i1 %i.vf, %i.vg
  br i1 %i.vh, label %bb.ft, label %bb.fs, !prof !70

bb.fs:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i153.i.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.ft:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i153.i.i
  %i.vi = ptrtoint ptr %.val24.i.i155.i.i to i64
  %i.vj = ptrtoint ptr %.val.i.i154.i.i to i64
  %i.vk = sub i64 %i.vi, %i.vj
  %i.vl = sdiv exact i64 %i.vk, 200               ; 2 uses
  store i64 %i.vl, ptr %i.aj, align 8, !tbaa !59
  %i.vm = icmp eq i64 %i.vl, %i.uv
  br i1 %i.vm, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i250.i.i, label %bb.fu

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i250.i.i: ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i172.i.i

bb.fu:                                            ; preds = %bb.ft
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %158, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i157.i.i unwind label %bb.fw

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i157.i.i: ; preds = %bb.fu
  %.pr.i.i158.i.i = load ptr, ptr %158, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #18
  %.not.i.i159.i.i = icmp eq ptr %.pr.i.i158.i.i, null
  br i1 %.not.i.i159.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i172.i.i, label %bb.fv

bb.fv:                                            ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i157.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #18
  %i.vn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %159)
          to label %.noexc28.i.i161.i.i unwind label %bb.fx

.noexc28.i.i161.i.i:                              ; preds = %bb.fv
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.vn, ptr noundef nonnull @.str.4, i32 noundef 412)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i162.i.i unwind label %bb.fx

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i162.i.i: ; preds = %.noexc28.i.i161.i.i
  %i.vo = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %159)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i163.i.i unwind label %bb.fy ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i163.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i162.i.i
  %i.vp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vo, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i164.i.i unwind label %bb.fy ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i164.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i163.i.i
  %i.vq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vo, ptr noundef nonnull @.str.50, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i165.i.i unwind label %bb.fy ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i165.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i164.i.i
  %i.vr = load ptr, ptr %158, align 8, !tbaa !53  ; 2 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !44
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !43
  %i.vv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vo, ptr noundef %i.vs, i64 noundef %i.vu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i166.i.i unwind label %bb.fy

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i166.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i165.i.i
  %i.vw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vv, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i167.i.i unwind label %bb.fy ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i167.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i166.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %159)
          to label %bb.ga unwind label %bb.fx

.loopexit.i.i:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i148.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i90.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.fr
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i90.i.i

bb.fw:                                            ; preds = %bb.fu
  %i.vx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #18
  br label %bb.hm

bb.fx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i167.i.i, %.noexc28.i.i161.i.i, %bb.fv
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.fy:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i166.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i165.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i164.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i163.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i162.i.i
  %i.vz = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %159)
          to label %bb.fz unwind label %bb.iw

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.pn.i.i160.i.i = phi { ptr, i32 } [ %i.vy, %bb.fx ], [ %i.vz, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %158) #18
  br label %bb.hm

bb.ga:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i167.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #18
  %.pr64.i.i168.i.i = load ptr, ptr %158, align 8, !tbaa !53 ; 4 uses
  %.not.i.i.i169.i.i = icmp eq ptr %.pr64.i.i168.i.i, null
  br i1 %.not.i.i.i169.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i172.i.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.wa = load ptr, ptr %.pr64.i.i168.i.i, align 8, !tbaa !44 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.pr64.i.i168.i.i, i64 16 ; 2 uses
  %i.wc = icmp eq ptr %i.wa, %i.wb
  br i1 %i.wc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i171.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i170.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i170.i.i: ; preds = %bb.gb
  %i.wd = load i64, ptr %i.wb, align 8, !tbaa !50
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wa, i64 noundef %i.we) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i171.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i171.i.i: ; preds = %bb.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i170.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr64.i.i168.i.i, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i172.i.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i172.i.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i171.i.i, %bb.ga, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i157.i.i, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i250.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #18
  %i.wf = load i32, ptr %i.rp, align 4, !tbaa !200
  %i.wg = load i32, ptr %i.rq, align 8, !tbaa !199
  %i.wh = sub nsw i32 %i.wf, %i.wg                ; 4 uses
  %i.wi = icmp eq i32 %i.uo, 1
  br i1 %i.wi, label %.preheader.i.i.i.i236.i.i, label %bb.gh

.preheader.i.i.i.i236.i.i:                        ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i172.i.i
  %i.wj = icmp sgt i32 %i.wh, 0
  br i1 %i.wj, label %.lr.ph109.i.i.i.i237.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.thread.i.i

_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.thread.i.i: ; preds = %.preheader.i.i.i.i236.i.i
  %i.wk = uitofp i64 %spec.select.i.i.i.i73.i.i to double
  %i.wl = fmul nnan double %i.wk, 1.562500e-02
  %i.wm = call double @llvm.ceil.f64(double %i.wl)
  %i.wn = fptoui double %i.wm to i64
  br label %.preheader.i.i.i.i.i139.i.i

.lr.ph109.i.i.i.i237.i.i:                         ; preds = %.preheader.i.i.i.i236.i.i
  %wide.trip.count.i.i.i.i238.i.i = zext nneg i32 %i.wh to i64
  br label %bb.gc

bb.gc:                                            ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i, %.lr.ph109.i.i.i.i237.i.i
  %indvars.iv.i.i.i.i239.i.i = phi i64 [ 0, %.lr.ph109.i.i.i.i237.i.i ], [ %indvars.iv.next.i.i.i.i247.i.i, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i ] ; 4 uses
  %.val67.val.i.i.i.i240.i.i = load ptr, ptr %i.dk, align 8, !tbaa !144 ; 3 uses
  %.val67.val68.i.i.i.i241.i.i = load ptr, ptr %i.rr, align 8, !tbaa !201 ; 2 uses
  %i.wo = icmp ne ptr %.val67.val.i.i.i.i240.i.i, null
  %i.wp = icmp eq ptr %.val67.val68.i.i.i.i241.i.i, null
  %i.wq = or i1 %i.wo, %i.wp
  br i1 %i.wq, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i242.i.i, label %bb.gd, !prof !70

bb.gd:                                            ; preds = %bb.gc
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i242.i.i: ; preds = %bb.gc
  %i.wr = ptrtoint ptr %.val67.val68.i.i.i.i241.i.i to i64
  %i.ws = ptrtoint ptr %.val67.val.i.i.i.i240.i.i to i64
  %i.wt = sub i64 %i.wr, %i.ws
  %i.wu = sdiv exact i64 %i.wt, 200
  %i.wv = icmp ugt i64 %i.wu, %indvars.iv.i.i.i.i239.i.i
  br i1 %i.wv, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i243.i.i, label %bb.ge, !prof !70

bb.ge:                                            ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i242.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i243.i.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i242.i.i
  %i.ww = getelementptr inbounds nuw [200 x i8], ptr %.val67.val.i.i.i.i240.i.i, i64 %indvars.iv.i.i.i.i239.i.i ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 192
  %i.wy = load i8, ptr %i.wx, align 8, !tbaa !210
  %i.wz = icmp eq i8 %i.wy, 0
  br i1 %i.wz, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i243.i.i
  %i.xa = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_14ScalarTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.ww, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i unwind label %.loopexit66.i.i244.i.i

bb.gg:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i243.i.i
  %i.xb = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_19MultiTargetTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.ww, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i unwind label %.loopexit66.i.i244.i.i

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i: ; preds = %bb.gg, %bb.gf
  %.sink.i.i.i.i.i.i.i246.i.i = phi i32 [ %i.xa, %bb.gf ], [ %i.xb, %bb.gg ]
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %indvars.iv.i.i.i.i239.i.i
  store i32 %.sink.i.i.i.i.i.i.i246.i.i, ptr %i.xc, align 4, !tbaa !83
  %indvars.iv.next.i.i.i.i247.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i239.i.i, 1 ; 2 uses
  %exitcond121.not.i.i.i.i248.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i247.i.i, %wide.trip.count.i.i.i.i238.i.i
  br i1 %exitcond121.not.i.i.i.i248.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i, label %bb.gc, !llvm.loop !656

bb.gh:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i172.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i32 %i.uo, ptr %i.ag, align 4, !tbaa !83, !noalias !792
  store i32 1, ptr %i.ah, align 4, !tbaa !83, !noalias !792
  %.not.i.i.i.i.i173.i.i = icmp slt i32 %i.uo, 1
  br i1 %.not.i.i.i.i.i173.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i217.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i174.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i174.i.i: ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %.preheader91.i.i.i.i175.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i217.i.i: ; preds = %bb.gh
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %154, ptr noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.ah)
          to label %.noexc40.i.i220.i.i unwind label %.loopexit.split-lp67.i.i218.i.i

end_hunk_1
begin_hunk_2_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a
  %i.aku = load ptr, ptr %i.akt, align 8
  call void %i.aku(ptr noundef nonnull align 8 dereferenceable(16) %i.akj) #18, !inline_history !678
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i259

bb.kh:                                            ; preds = %bb.kf
  %i.akv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i32.i.i = icmp eq i8 %i.akv, 0
  br i1 %.not.i.i.i.i32.i.i, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.akw = add nsw i32 %i.akn, -1
  store i32 %i.akw, ptr %i.akk, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33.i.i

bb.kj:                                            ; preds = %bb.kh
  %i.akx = atomicrmw volatile add ptr %i.akk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33.i.i: ; preds = %bb.kj, %bb.ki
  %.0.i.i.i.i.i34.i.i = phi i32 [ %i.akn, %bb.ki ], [ %i.akx, %bb.kj ]
  %i.aky = icmp eq i32 %.0.i.i.i.i.i34.i.i, 1
  br i1 %i.aky, label %bb.kk, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i259, !prof !173

bb.kk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.akj) #18
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i259

_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i259: ; preds = %bb.kk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33.i.i, %bb.kg, %bb.ke
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #18
  %i.akz = load ptr, ptr %i.ajd, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i35.i.i = icmp eq ptr %i.akz, null
  br i1 %.not.i.i.i35.i.i, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit39.i.i, label %bb.kl

bb.kl:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i259
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 8 ; 4 uses
  %i.alb = load atomic i64, ptr %i.ala acquire, align 8 ; 2 uses
  %i.alc = icmp eq i64 %i.alb, 4294967297
  %i.ald = trunc i64 %i.alb to i32                ; 2 uses
  br i1 %i.alc, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  store i32 0, ptr %i.ala, align 8, !tbaa !242
  %i.ale = getelementptr inbounds nuw i8, ptr %i.akz, i64 12
  store i32 0, ptr %i.ale, align 4, !tbaa !243
  %i.alf = load ptr, ptr %i.akz, align 8, !tbaa !64
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 16
  %i.alh = load ptr, ptr %i.alg, align 8
  call void %i.alh(ptr noundef nonnull align 8 dereferenceable(16) %i.akz) #18, !inline_history !678
  %i.ali = load ptr, ptr %i.akz, align 8, !tbaa !64
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 24
  %i.alk = load ptr, ptr %i.alj, align 8
  call void %i.alk(ptr noundef nonnull align 8 dereferenceable(16) %i.akz) #18, !inline_history !678
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit39.i.i

bb.kn:                                            ; preds = %bb.kl
  %i.all = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i36.i.i = icmp eq i8 %i.all, 0
  br i1 %.not.i.i.i.i36.i.i, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.alm = add nsw i32 %i.ald, -1
  store i32 %i.alm, ptr %i.ala, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37.i.i

bb.kp:                                            ; preds = %bb.kn
  %i.aln = atomicrmw volatile add ptr %i.ala, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37.i.i: ; preds = %bb.kp, %bb.ko
  %.0.i.i.i.i.i38.i.i = phi i32 [ %i.ald, %bb.ko ], [ %i.aln, %bb.kp ]
  %i.alo = icmp eq i32 %.0.i.i.i.i.i38.i.i, 1
  br i1 %i.alo, label %bb.kq, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit39.i.i, !prof !173

bb.kq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.akz) #18
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit39.i.i

_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit39.i.i: ; preds = %bb.kq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37.i.i, %bb.km, %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #18
  %i.alp = load ptr, ptr %i.aje, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i40.i.i = icmp eq ptr %i.alp, null
  br i1 %.not.i.i.i.i40.i.i, label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i262, label %bb.kr

bb.kr:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit39.i.i
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 8 ; 4 uses
  %i.alr = load atomic i64, ptr %i.alq acquire, align 8 ; 2 uses
  %i.als = icmp eq i64 %i.alr, 4294967297
  %i.alt = trunc i64 %i.alr to i32                ; 2 uses
  br i1 %i.als, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  store i32 0, ptr %i.alq, align 8, !tbaa !242
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alp, i64 12
  store i32 0, ptr %i.alu, align 4, !tbaa !243
  %i.alv = load ptr, ptr %i.alp, align 8, !tbaa !64
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 16
  %i.alx = load ptr, ptr %i.alw, align 8
  call void %i.alx(ptr noundef nonnull align 8 dereferenceable(16) %i.alp) #18, !inline_history !679
  %i.aly = load ptr, ptr %i.alp, align 8, !tbaa !64
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 24
  %i.ama = load ptr, ptr %i.alz, align 8
  call void %i.ama(ptr noundef nonnull align 8 dereferenceable(16) %i.alp) #18, !inline_history !679
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i262

bb.kt:                                            ; preds = %bb.kr
  %i.amb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i41.i.i = icmp eq i8 %i.amb, 0
  br i1 %.not.i.i.i.i.i41.i.i, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.amc = add nsw i32 %i.alt, -1
  store i32 %i.amc, ptr %i.alq, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i260

bb.kv:                                            ; preds = %bb.kt
  %i.amd = atomicrmw volatile add ptr %i.alq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i260

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i260: ; preds = %bb.kv, %bb.ku
  %.0.i.i.i.i.i.i.i.i261 = phi i32 [ %i.alt, %bb.ku ], [ %i.amd, %bb.kv ]
  %i.ame = icmp eq i32 %.0.i.i.i.i.i.i.i.i261, 1
  br i1 %i.ame, label %bb.kw, label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i262, !prof !173

bb.kw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i260
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.alp) #18
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i262

_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i262: ; preds = %bb.kw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i260, %bb.ks, %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit39.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #18
  %.not.i.i.i42.i.i = icmp eq ptr %i.ais, null
  br i1 %.not.i.i.i42.i.i, label %_ZN7xgboost9predictor12_GLOBAL__N_112LaunchConfigIJNS1_11BlockPolicyENS1_21NullEncAccessorPolicyEEE12ForEachBatchIZZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEENKUlOT_E_clIS5_EEDaSL_EUlSL_E_EEvSL_.exit.i, label %bb.kx

bb.kx:                                            ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i262
  call void @_ZdlPvm(ptr noundef nonnull %i.ais, i64 noundef %i.aio) #34
  br label %_ZN7xgboost9predictor12_GLOBAL__N_112LaunchConfigIJNS1_11BlockPolicyENS1_21NullEncAccessorPolicyEEE12ForEachBatchIZZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEENKUlOT_E_clIS5_EEDaSL_EUlSL_E_EEvSL_.exit.i

bb.ky:                                            ; preds = %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i71
  %i.amf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #18
  br label %bb.oj

bb.kz:                                            ; preds = %bb.of, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit.i.i81
  %i.amg = landingpad { ptr, i32 }
          cleanup
  br label %bb.oi

bb.la:                                            ; preds = %bb.kd
  %i.amh = invoke noundef nonnull align 8 dereferenceable(225) ptr @_ZNK7xgboost13BatchIteratorINS_16GHistIndexMatrixEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %130)
          to label %bb.lb unwind label %bb.og     ; 5 uses

bb.lb:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #18
  store ptr %i.amh, ptr %132, align 8, !tbaa !259
  store i64 %i.ait, ptr %i.ajm, align 8, !tbaa !59
  store ptr %i.ais, ptr %.sroa.2.0..sroa_idx.i.i.i80, align 8, !tbaa !65
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 168
  %i.amj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ami)
          to label %.noexc.i.i83 unwind label %bb.oh

.noexc.i.i83:                                     ; preds = %bb.lb
  store ptr %i.amj, ptr %i.ajn, align 8, !tbaa !261
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amh, i64 160
  %i.aml = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.amk)
          to label %.noexc43.i.i unwind label %bb.oh

.noexc43.i.i:                                     ; preds = %.noexc.i.i83
  store ptr %i.aml, ptr %i.ajo, align 8, !tbaa !127
  %i.amm = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK7xgboost16GHistIndexMatrix9TransposeEv(ptr noundef nonnull align 8 dereferenceable(225) %i.amh)
          to label %bb.lc unwind label %bb.oh

bb.lc:                                            ; preds = %.noexc43.i.i
  store ptr %i.amm, ptr %i.ajp, align 8, !tbaa !263
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amh, i64 184
  %i.amo = load i64, ptr %i.amn, align 8, !tbaa !280
  store i64 %i.amo, ptr %i.ajq, align 8, !tbaa !322
  %i.amp = load i32, ptr %i.agv, align 4, !tbaa !83 ; 6 uses
  %i.amq = load i8, ptr %i.agz, align 1, !tbaa !82, !range !140, !noundef !141
  call void @llvm.lifetime.start.p0(ptr nonnull %125)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %125, ptr noundef nonnull align 8 dereferenceable(72) %i.ahb, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %124)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %124, ptr noundef nonnull align 8 dereferenceable(24) %i.ahd, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 %i.amq, ptr %i.aa, align 1, !tbaa !82
  %i.amr = load ptr, ptr %132, align 8, !tbaa !323, !nonnull !141, !align !245
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 8
  %i.amt = load i64, ptr %i.ams, align 8, !tbaa !287
  %spec.select.i.i.i.i.i.i84 = call noundef i64 @llvm.usub.sat.i64(i64 %i.amt, i64 1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #18
  %i.amu = load i32, ptr %i.akc, align 4, !tbaa !288
  store i32 %i.amu, ptr %i.ab, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %120, i8 0, i64 24, i1 false)
  %i.amv = icmp ugt i64 %spec.select.i.i.i.i.i.i84, 1
  br i1 %i.amv, label %bb.ld, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

bb.ld:                                            ; preds = %bb.lc
  %i.amw = load i32, ptr %i.akd, align 4, !tbaa !200 ; 2 uses
  %i.amx = load i32, ptr %i.ake, align 8, !tbaa !199 ; 2 uses
  %i.amy = sub nsw i32 %i.amw, %i.amx             ; 2 uses
  %i.amz = sext i32 %i.amy to i64                 ; 5 uses
  %.not118.i.i.i.i156 = icmp eq i32 %i.amw, %i.amx
  br i1 %.not118.i.i.i.i156, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i162, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.ana = icmp slt i32 %i.amy, 0
  br i1 %i.ana, label %bb.lf, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i157

bb.lf:                                            ; preds = %bb.le
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
          to label %.noexc53.i.i.i.i258 unwind label %.loopexit.split-lp262.i.i

.noexc53.i.i.i.i258:                              ; preds = %bb.lf
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i157: ; preds = %bb.le
  %i.anb = shl nuw nsw i64 %i.amz, 2
  %i.anc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.anb) #33
          to label %.noexc54.i.i.i.i158 unwind label %.loopexit261.i.i ; 4 uses

.noexc54.i.i.i.i158:                              ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i157
  store i32 0, ptr %i.anc, align 4, !tbaa !83
  %i.and = add nsw i64 %i.amz, -1                 ; 2 uses
  %i.ane = icmp eq i64 %i.and, 0
  br i1 %i.ane, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i161, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i159

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i159: ; preds = %.noexc54.i.i.i.i158
  %i.anf = getelementptr i8, ptr %i.anc, i64 4
  %.idx.i.i.i.i.i31.i.i.i.i.i160 = shl nuw nsw i64 %i.and, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.anf, i8 0, i64 %.idx.i.i.i.i.i31.i.i.i.i.i160, i1 false), !tbaa !83
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i161

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i161: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i159, %.noexc54.i.i.i.i158
  store ptr %i.anc, ptr %120, align 8, !tbaa !175
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %i.anc, i64 %i.amz ; 2 uses
  store ptr %i.ang, ptr %i.ajr, align 8, !tbaa !174
  store ptr %i.ang, ptr %i.ajs, align 8, !tbaa !246
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i162

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i162:    ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i.i.i161, %bb.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #18
  store i64 %i.amz, ptr %i.ac, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #18
  %.val.i.i.i.i163 = load ptr, ptr %i.agx, align 8, !tbaa !144 ; 2 uses
  %.val24.i.i.i.i164 = load ptr, ptr %i.akf, align 8, !tbaa !201 ; 2 uses
  %i.anh = icmp ne ptr %.val.i.i.i.i163, null
  %i.ani = icmp eq ptr %.val24.i.i.i.i164, null
  %i.anj = or i1 %i.anh, %i.ani
  br i1 %i.anj, label %bb.lh, label %bb.lg, !prof !70

bb.lg:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i162
  call void @_ZSt9terminatev() #35
  unreachable

bb.lh:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i162
  %i.ank = ptrtoint ptr %.val24.i.i.i.i164 to i64
  %i.anl = ptrtoint ptr %.val.i.i.i.i163 to i64
  %i.anm = sub i64 %i.ank, %i.anl
  %i.ann = sdiv exact i64 %i.anm, 200             ; 2 uses
  store i64 %i.ann, ptr %i.ad, align 8, !tbaa !59
  %i.ano = icmp eq i64 %i.ann, %i.amz
  br i1 %i.ano, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i257, label %bb.li

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i257: ; preds = %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i180

bb.li:                                            ; preds = %bb.lh
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %121, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i166 unwind label %bb.lk

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i166: ; preds = %bb.li
  %.pr.i.i.i.i167 = load ptr, ptr %121, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #18
  %.not.i.i.i.i168 = icmp eq ptr %.pr.i.i.i.i167, null
  br i1 %.not.i.i.i.i168, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i180, label %bb.lj

bb.lj:                                            ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i166
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #18
  %i.anp = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %122)
          to label %.noexc28.i.i.i.i170 unwind label %bb.ll

.noexc28.i.i.i.i170:                              ; preds = %bb.lj
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.anp, ptr noundef nonnull @.str.4, i32 noundef 412)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i171 unwind label %bb.ll

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i171: ; preds = %.noexc28.i.i.i.i170
  %i.anq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %122)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i172 unwind label %bb.lm ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i172: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i171
  %i.anr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.anq, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i173 unwind label %bb.lm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i173: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i172
  %i.ans = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.anq, ptr noundef nonnull @.str.50, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i174 unwind label %bb.lm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i174: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i173
  %i.ant = load ptr, ptr %121, align 8, !tbaa !53 ; 2 uses
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !44
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ant, i64 8
  %i.anw = load i64, ptr %i.anv, align 8, !tbaa !43
  %i.anx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.anq, ptr noundef %i.anu, i64 noundef %i.anw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i175 unwind label %bb.lm

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i175: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i174
  %i.any = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.anx, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i176 unwind label %bb.lm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i176: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i175
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %122)
          to label %bb.lo unwind label %bb.ll

.loopexit261.i.i:                                 ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i157
  %lpad.loopexit263.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i96

.loopexit.split-lp262.i.i:                        ; preds = %bb.lf
  %lpad.loopexit.split-lp264.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i96

bb.lk:                                            ; preds = %bb.li
  %i.anz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #18
  br label %bb.na

bb.ll:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i176, %.noexc28.i.i.i.i170, %bb.lj
  %i.aoa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ln

bb.lm:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i175, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i.i.i174, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i173, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i172, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i171
  %i.aob = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %122)
          to label %bb.ln unwind label %bb.oe

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %.pn.i.i.i.i169 = phi { ptr, i32 } [ %i.aoa, %bb.ll ], [ %i.aob, %bb.lm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %121) #18
  br label %bb.na

bb.lo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #18
  %.pr64.i.i.i.i177 = load ptr, ptr %121, align 8, !tbaa !53 ; 4 uses
  %.not.i.i.i46.i.i = icmp eq ptr %.pr64.i.i.i.i177, null
  br i1 %.not.i.i.i46.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i180, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.aoc = load ptr, ptr %.pr64.i.i.i.i177, align 8, !tbaa !44 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.pr64.i.i.i.i177, i64 16 ; 2 uses
  %i.aoe = icmp eq ptr %i.aoc, %i.aod
  br i1 %i.aoe, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i178: ; preds = %bb.lp
  %i.aof = load i64, ptr %i.aod, align 8, !tbaa !50
  %i.aog = add i64 %i.aof, 1
  call void @_ZdlPvm(ptr noundef %i.aoc, i64 noundef %i.aog) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i179

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i179: ; preds = %bb.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i178
  call void @_ZdlPvm(ptr noundef nonnull %.pr64.i.i.i.i177, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i180

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i180: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i179, %bb.lo, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i166, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #18
  %i.aoh = load i32, ptr %i.akd, align 4, !tbaa !200
  %i.aoi = load i32, ptr %i.ake, align 8, !tbaa !199
  %i.aoj = sub nsw i32 %i.aoh, %i.aoi             ; 4 uses
  %i.aok = icmp eq i32 %i.amp, 1
  br i1 %i.aok, label %.preheader.i.i.i.i.i.i243, label %bb.lv

.preheader.i.i.i.i.i.i243:                        ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i180
  %i.aol = icmp sgt i32 %i.aoj, 0
  br i1 %i.aol, label %.lr.ph109.i.i.i.i.i.i244, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

.lr.ph109.i.i.i.i.i.i244:                         ; preds = %.preheader.i.i.i.i.i.i243
  %wide.trip.count.i.i.i.i.i.i245 = zext nneg i32 %i.aoj to i64
  br label %bb.lq

bb.lq:                                            ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i, %.lr.ph109.i.i.i.i.i.i244
  %indvars.iv.i.i.i.i.i.i246 = phi i64 [ 0, %.lr.ph109.i.i.i.i.i.i244 ], [ %indvars.iv.next.i.i.i.i.i.i254, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i ] ; 4 uses
  %.val67.val.i.i.i.i.i.i247 = load ptr, ptr %i.agx, align 8, !tbaa !144 ; 3 uses
  %.val67.val68.i.i.i.i.i.i248 = load ptr, ptr %i.akf, align 8, !tbaa !201 ; 2 uses
  %i.aom = icmp ne ptr %.val67.val.i.i.i.i.i.i247, null
  %i.aon = icmp eq ptr %.val67.val68.i.i.i.i.i.i248, null
  %i.aoo = or i1 %i.aom, %i.aon
  br i1 %i.aoo, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i.i.i249, label %bb.lr, !prof !70

bb.lr:                                            ; preds = %bb.lq
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i.i.i249: ; preds = %bb.lq
  %i.aop = ptrtoint ptr %.val67.val68.i.i.i.i.i.i248 to i64
  %i.aoq = ptrtoint ptr %.val67.val.i.i.i.i.i.i247 to i64
  %i.aor = sub i64 %i.aop, %i.aoq
  %i.aos = sdiv exact i64 %i.aor, 200
  %i.aot = icmp ugt i64 %i.aos, %indvars.iv.i.i.i.i.i.i246
  br i1 %i.aot, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i250, label %bb.ls, !prof !70

bb.ls:                                            ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i.i.i249
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i250: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i.i.i249
  %i.aou = getelementptr inbounds nuw [200 x i8], ptr %.val67.val.i.i.i.i.i.i247, i64 %indvars.iv.i.i.i.i.i.i246 ; 3 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 192
  %i.aow = load i8, ptr %i.aov, align 8, !tbaa !210
  %i.aox = icmp eq i8 %i.aow, 0
  br i1 %i.aox, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i250
  %i.aoy = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_14ScalarTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.aou, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i unwind label %.loopexit66.i.i.i.i251

bb.lu:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i250
  %i.aoz = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_19MultiTargetTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.aou, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i unwind label %.loopexit66.i.i.i.i251

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i: ; preds = %bb.lu, %bb.lt
  %.sink.i.i.i.i.i.i.i.i.i253 = phi i32 [ %i.aoy, %bb.lt ], [ %i.aoz, %bb.lu ]
  %i.apa = load ptr, ptr %120, align 8, !tbaa !175
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr %i.apa, i64 %indvars.iv.i.i.i.i.i.i246
  store i32 %.sink.i.i.i.i.i.i.i.i.i253, ptr %i.apb, align 4, !tbaa !83
  %indvars.iv.next.i.i.i.i.i.i254 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i246, 1 ; 2 uses
  %exitcond121.not.i.i.i.i.i.i255 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i254, %wide.trip.count.i.i.i.i.i.i245
  br i1 %exitcond121.not.i.i.i.i.i.i255, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i, label %bb.lq, !llvm.loop !680

bb.lv:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i180
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i32 %i.amp, ptr %i.y, align 4, !tbaa !83, !noalias !798
  store i32 1, ptr %i.z, align 4, !tbaa !83, !noalias !798
  %.not.i.i.i.i.i47.i.i = icmp slt i32 %i.amp, 1
  br i1 %.not.i.i.i.i.i47.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i.i224, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i.i181

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i.i181: ; preds = %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.preheader91.i.i.i.i.i.i182

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i.i224: ; preds = %bb.lv
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %117, ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z)
          to label %.noexc40.i.i.i.i227 unwind label %.loopexit.split-lp67.i.i.i.i225

.noexc40.i.i.i.i227:                              ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i.i224
  %.pr.i.i.i.i.i.i228 = load ptr, ptr %117, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.not.i.i37.i.i.i.i229 = icmp eq ptr %.pr.i.i.i.i.i.i228, null
  br i1 %.not.i.i37.i.i.i.i229, label %.preheader91.i.i.i.i.i.i182, label %bb.lw
end_hunk_2
begin_hunk_3_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a
  %i.avo = load ptr, ptr %i.avi, align 8, !tbaa !64
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 16
  %i.avq = load ptr, ptr %i.avp, align 8
  call void %i.avq(ptr noundef nonnull align 8 dereferenceable(16) %i.avi) #18, !inline_history !694
  %i.avr = load ptr, ptr %i.avi, align 8, !tbaa !64
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 24
  %i.avt = load ptr, ptr %i.avs, align 8
  call void %i.avt(ptr noundef nonnull align 8 dereferenceable(16) %i.avi) #18, !inline_history !694
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i286

bb.ou:                                            ; preds = %bb.os
  %i.avu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i58.i.i = icmp eq i8 %i.avu, 0
  br i1 %.not.i.i.i.i58.i.i, label %bb.ow, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.avv = add nsw i32 %i.avm, -1
  store i32 %i.avv, ptr %i.avj, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i59.i.i

bb.ow:                                            ; preds = %bb.ou
  %i.avw = atomicrmw volatile add ptr %i.avj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i59.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i59.i.i: ; preds = %bb.ow, %bb.ov
  %.0.i.i.i.i.i60.i.i = phi i32 [ %i.avm, %bb.ov ], [ %i.avw, %bb.ow ]
  %i.avx = icmp eq i32 %.0.i.i.i.i.i60.i.i, 1
  br i1 %i.avx, label %bb.ox, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i286, !prof !173

bb.ox:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i59.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.avi) #18
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i286

_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i286: ; preds = %bb.ox, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i59.i.i, %bb.ot, %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #18
  %i.avy = load ptr, ptr %i.auf, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i61.i.i = icmp eq ptr %i.avy, null
  br i1 %.not.i.i.i61.i.i, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit65.i.i, label %bb.oy

bb.oy:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i286
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 8 ; 4 uses
  %i.awa = load atomic i64, ptr %i.avz acquire, align 8 ; 2 uses
  %i.awb = icmp eq i64 %i.awa, 4294967297
  %i.awc = trunc i64 %i.awa to i32                ; 2 uses
  br i1 %i.awb, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  store i32 0, ptr %i.avz, align 8, !tbaa !242
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avy, i64 12
  store i32 0, ptr %i.awd, align 4, !tbaa !243
  %i.awe = load ptr, ptr %i.avy, align 8, !tbaa !64
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 16
  %i.awg = load ptr, ptr %i.awf, align 8
  call void %i.awg(ptr noundef nonnull align 8 dereferenceable(16) %i.avy) #18, !inline_history !694
  %i.awh = load ptr, ptr %i.avy, align 8, !tbaa !64
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 24
  %i.awj = load ptr, ptr %i.awi, align 8
  call void %i.awj(ptr noundef nonnull align 8 dereferenceable(16) %i.avy) #18, !inline_history !694
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit65.i.i

bb.pa:                                            ; preds = %bb.oy
  %i.awk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i62.i.i = icmp eq i8 %i.awk, 0
  br i1 %.not.i.i.i.i62.i.i, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.awl = add nsw i32 %i.awc, -1
  store i32 %i.awl, ptr %i.avz, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63.i.i

bb.pc:                                            ; preds = %bb.pa
  %i.awm = atomicrmw volatile add ptr %i.avz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63.i.i: ; preds = %bb.pc, %bb.pb
  %.0.i.i.i.i.i64.i.i = phi i32 [ %i.awc, %bb.pb ], [ %i.awm, %bb.pc ]
  %i.awn = icmp eq i32 %.0.i.i.i.i.i64.i.i, 1
  br i1 %i.awn, label %bb.pd, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit65.i.i, !prof !173

bb.pd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.avy) #18
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit65.i.i

_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit65.i.i: ; preds = %bb.pd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63.i.i, %bb.oz, %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #18
  %i.awo = load ptr, ptr %i.aug, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i66.i.i = icmp eq ptr %i.awo, null
  br i1 %.not.i.i.i.i66.i.i, label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i287, label %bb.pe

bb.pe:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit65.i.i
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 8 ; 4 uses
  %i.awq = load atomic i64, ptr %i.awp acquire, align 8 ; 2 uses
  %i.awr = icmp eq i64 %i.awq, 4294967297
  %i.aws = trunc i64 %i.awq to i32                ; 2 uses
  br i1 %i.awr, label %bb.pf, label %bb.pg

bb.pf:                                            ; preds = %bb.pe
  store i32 0, ptr %i.awp, align 8, !tbaa !242
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awo, i64 12
  store i32 0, ptr %i.awt, align 4, !tbaa !243
  %i.awu = load ptr, ptr %i.awo, align 8, !tbaa !64
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 16
  %i.aww = load ptr, ptr %i.awv, align 8
  call void %i.aww(ptr noundef nonnull align 8 dereferenceable(16) %i.awo) #18, !inline_history !695
  %i.awx = load ptr, ptr %i.awo, align 8, !tbaa !64
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 24
  %i.awz = load ptr, ptr %i.awy, align 8
  call void %i.awz(ptr noundef nonnull align 8 dereferenceable(16) %i.awo) #18, !inline_history !695
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i287

bb.pg:                                            ; preds = %bb.pe
  %i.axa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i67.i.i = icmp eq i8 %i.axa, 0
  br i1 %.not.i.i.i.i.i67.i.i, label %bb.pi, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.axb = add nsw i32 %i.aws, -1
  store i32 %i.axb, ptr %i.awp, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i68.i.i

bb.pi:                                            ; preds = %bb.pg
  %i.axc = atomicrmw volatile add ptr %i.awp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i68.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i68.i.i: ; preds = %bb.pi, %bb.ph
  %.0.i.i.i.i.i.i69.i.i = phi i32 [ %i.aws, %bb.ph ], [ %i.axc, %bb.pi ]
  %i.axd = icmp eq i32 %.0.i.i.i.i.i.i69.i.i, 1
  br i1 %i.axd, label %bb.pj, label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i287, !prof !173

bb.pj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i68.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awo) #18
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i287

_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i287: ; preds = %bb.pj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i68.i.i, %bb.pf, %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit65.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #18
  br label %_ZN7xgboost9predictor12_GLOBAL__N_112LaunchConfigIJNS1_11BlockPolicyENS1_21NullEncAccessorPolicyEEE12ForEachBatchIZZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEENKUlOT_E_clIS5_EEDaSL_EUlSL_E_EEvSL_.exit.i

bb.pk:                                            ; preds = %bb.sq, %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i280
  %i.axe = landingpad { ptr, i32 }
          cleanup
  br label %bb.st

bb.pl:                                            ; preds = %bb.oq
  %i.axf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7xgboost13BatchIteratorINS_10SparsePageEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %134)
          to label %bb.pm unwind label %bb.sr     ; 3 uses

bb.pm:                                            ; preds = %bb.pl
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #18
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 8
  %i.axh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.axg)
          to label %.noexc70.i.i unwind label %bb.ss ; 2 uses

.noexc70.i.i:                                     ; preds = %bb.pm
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 8
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !295, !noalias !803
  %i.axk = load ptr, ptr %i.axh, align 8, !tbaa !296, !noalias !803 ; 2 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axf, i64 16
  %i.axm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.axl)
          to label %bb.pn unwind label %bb.ss     ; 2 uses

bb.pn:                                            ; preds = %.noexc70.i.i
  %i.axn = ptrtoint ptr %i.axj to i64
  %i.axo = ptrtoint ptr %i.axk to i64
  %i.axp = sub i64 %i.axn, %i.axo
  %i.axq = ashr exact i64 %i.axp, 3               ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !299, !noalias !803
  %i.axt = load ptr, ptr %i.axm, align 8, !tbaa !300, !noalias !803 ; 2 uses
  %i.axu = ptrtoint ptr %i.axs to i64
  %i.axv = ptrtoint ptr %i.axt to i64
  %i.axw = sub i64 %i.axu, %i.axv
  %i.axx = ashr exact i64 %i.axw, 3
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axf, i64 24
  %i.axz = load i64, ptr %i.axy, align 8, !tbaa !306
  store i64 %i.axq, ptr %i.auo, align 8, !tbaa !59
  store ptr %i.axk, ptr %.sroa.4260.0..sroa_idx.i.i, align 8, !tbaa !128
  store i64 %i.axx, ptr %.sroa.5.0..sroa_idx.i.i278, align 8, !tbaa !59
  store ptr %i.axt, ptr %.sroa.6.0..sroa_idx.i.i279, align 8, !tbaa !307
  store i64 %i.axz, ptr %i.aup, align 8, !tbaa !327
  %i.aya = load i32, ptr %i.agv, align 4, !tbaa !83 ; 6 uses
  %i.ayb = load i8, ptr %i.agz, align 1, !tbaa !82, !range !140, !noundef !141
  call void @llvm.lifetime.start.p0(ptr nonnull %103)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %103, ptr noundef nonnull align 8 dereferenceable(72) %i.ahb, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %102)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %102, ptr noundef nonnull align 8 dereferenceable(24) %i.ahd, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %i.ayb, ptr %i.s, align 1, !tbaa !82
  %spec.select.i.i.i.i72.i.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.axq, i64 1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #18
  %i.ayc = load i32, ptr %i.avb, align 4, !tbaa !288
  store i32 %i.ayc, ptr %i.t, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %98, i8 0, i64 24, i1 false)
  %i.ayd = icmp ugt i64 %spec.select.i.i.i.i72.i.i, 1
  br i1 %i.ayd, label %bb.po, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

bb.po:                                            ; preds = %bb.pn
  %i.aye = load i32, ptr %i.avc, align 4, !tbaa !200 ; 2 uses
  %i.ayf = load i32, ptr %i.avd, align 8, !tbaa !199 ; 2 uses
  %i.ayg = sub nsw i32 %i.aye, %i.ayf             ; 2 uses
  %i.ayh = sext i32 %i.ayg to i64                 ; 5 uses
  %.not118.i.i146.i.i = icmp eq i32 %i.aye, %i.ayf
  br i1 %.not118.i.i146.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i152.i.i, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.ayi = icmp slt i32 %i.ayg, 0
  br i1 %i.ayi, label %bb.pq, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i147.i.i

bb.pq:                                            ; preds = %bb.pp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
          to label %.noexc53.i.i250.i.i unwind label %.loopexit.split-lp.i.i284

.noexc53.i.i250.i.i:                              ; preds = %bb.pq
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i147.i.i: ; preds = %bb.pp
  %i.ayj = shl nuw nsw i64 %i.ayh, 2
  %i.ayk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ayj) #33
          to label %.noexc54.i.i148.i.i unwind label %.loopexit.i.i282 ; 4 uses

.noexc54.i.i148.i.i:                              ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i147.i.i
  store i32 0, ptr %i.ayk, align 4, !tbaa !83
  %i.ayl = add nsw i64 %i.ayh, -1                 ; 2 uses
  %i.aym = icmp eq i64 %i.ayl, 0
  br i1 %i.aym, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i151.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i149.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i149.i.i: ; preds = %.noexc54.i.i148.i.i
  %i.ayn = getelementptr i8, ptr %i.ayk, i64 4
  %.idx.i.i.i.i.i31.i.i.i150.i.i = shl nuw nsw i64 %i.ayl, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ayn, i8 0, i64 %.idx.i.i.i.i.i31.i.i.i150.i.i, i1 false), !tbaa !83
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i151.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i151.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i149.i.i, %.noexc54.i.i148.i.i
  store ptr %i.ayk, ptr %98, align 8, !tbaa !175
  %i.ayo = getelementptr inbounds nuw [4 x i8], ptr %i.ayk, i64 %i.ayh ; 2 uses
  store ptr %i.ayo, ptr %i.auq, align 8, !tbaa !174
  store ptr %i.ayo, ptr %i.aur, align 8, !tbaa !246
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i152.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i152.i.i:    ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i151.i.i, %bb.po
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #18
  store i64 %i.ayh, ptr %i.u, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #18
  %.val.i.i153.i.i = load ptr, ptr %i.agx, align 8, !tbaa !144 ; 2 uses
  %.val24.i.i154.i.i = load ptr, ptr %i.ave, align 8, !tbaa !201 ; 2 uses
  %i.ayp = icmp ne ptr %.val.i.i153.i.i, null
  %i.ayq = icmp eq ptr %.val24.i.i154.i.i, null
  %i.ayr = or i1 %i.ayp, %i.ayq
  br i1 %i.ayr, label %bb.ps, label %bb.pr, !prof !70

bb.pr:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i152.i.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.ps:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i152.i.i
  %i.ays = ptrtoint ptr %.val24.i.i154.i.i to i64
  %i.ayt = ptrtoint ptr %.val.i.i153.i.i to i64
  %i.ayu = sub i64 %i.ays, %i.ayt
  %i.ayv = sdiv exact i64 %i.ayu, 200             ; 2 uses
  store i64 %i.ayv, ptr %i.v, align 8, !tbaa !59
  %i.ayw = icmp eq i64 %i.ayv, %i.ayh
  br i1 %i.ayw, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i249.i.i, label %bb.pt

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i249.i.i: ; preds = %bb.ps
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i171.i.i

bb.pt:                                            ; preds = %bb.ps
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %99, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i156.i.i unwind label %bb.pv

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i156.i.i: ; preds = %bb.pt
  %.pr.i.i157.i.i = load ptr, ptr %99, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18
  %.not.i.i158.i.i = icmp eq ptr %.pr.i.i157.i.i, null
  br i1 %.not.i.i158.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i171.i.i, label %bb.pu

bb.pu:                                            ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i156.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #18
  %i.ayx = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %100)
          to label %.noexc28.i.i160.i.i unwind label %bb.pw

.noexc28.i.i160.i.i:                              ; preds = %bb.pu
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ayx, ptr noundef nonnull @.str.4, i32 noundef 412)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i161.i.i unwind label %bb.pw

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i161.i.i: ; preds = %.noexc28.i.i160.i.i
  %i.ayy = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %100)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i162.i.i unwind label %bb.px ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i162.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i161.i.i
  %i.ayz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ayy, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i163.i.i unwind label %bb.px ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i163.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i162.i.i
  %i.aza = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ayy, ptr noundef nonnull @.str.50, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i164.i.i unwind label %bb.px ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i164.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i163.i.i
  %i.azb = load ptr, ptr %99, align 8, !tbaa !53  ; 2 uses
  %i.azc = load ptr, ptr %i.azb, align 8, !tbaa !44
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azb, i64 8
  %i.aze = load i64, ptr %i.azd, align 8, !tbaa !43
  %i.azf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ayy, ptr noundef %i.azc, i64 noundef %i.aze)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i165.i.i unwind label %bb.px

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i165.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i164.i.i
  %i.azg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.azf, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i166.i.i unwind label %bb.px ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i166.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i165.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %100)
          to label %bb.pz unwind label %bb.pw

.loopexit.i.i282:                                 ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i147.i.i
  %lpad.loopexit.i.i283 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i86.i.i

.loopexit.split-lp.i.i284:                        ; preds = %bb.pq
  %lpad.loopexit.split-lp.i.i285 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i86.i.i

bb.pv:                                            ; preds = %bb.pt
  %i.azh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18
  br label %bb.rl

bb.pw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i166.i.i, %.noexc28.i.i160.i.i, %bb.pu
  %i.azi = landingpad { ptr, i32 }
          cleanup
  br label %bb.py

bb.px:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i165.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i.i164.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i163.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i162.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i161.i.i
  %i.azj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %100)
          to label %bb.py unwind label %bb.sp

bb.py:                                            ; preds = %bb.px, %bb.pw
  %.pn.i.i159.i.i = phi { ptr, i32 } [ %i.azi, %bb.pw ], [ %i.azj, %bb.px ]
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %99) #18
  br label %bb.rl

bb.pz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i166.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #18
  %.pr64.i.i167.i.i = load ptr, ptr %99, align 8, !tbaa !53 ; 4 uses
  %.not.i.i.i168.i.i = icmp eq ptr %.pr64.i.i167.i.i, null
  br i1 %.not.i.i.i168.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i171.i.i, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.azk = load ptr, ptr %.pr64.i.i167.i.i, align 8, !tbaa !44 ; 2 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %.pr64.i.i167.i.i, i64 16 ; 2 uses
  %i.azm = icmp eq ptr %i.azk, %i.azl
  br i1 %i.azm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i170.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i169.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i169.i.i: ; preds = %bb.qa
  %i.azn = load i64, ptr %i.azl, align 8, !tbaa !50
  %i.azo = add i64 %i.azn, 1
  call void @_ZdlPvm(ptr noundef %i.azk, i64 noundef %i.azo) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i170.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i170.i.i: ; preds = %bb.qa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i169.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr64.i.i167.i.i, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i171.i.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i171.i.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i170.i.i, %bb.pz, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i156.i.i, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i249.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #18
  %i.azp = load i32, ptr %i.avc, align 4, !tbaa !200
  %i.azq = load i32, ptr %i.avd, align 8, !tbaa !199
  %i.azr = sub nsw i32 %i.azp, %i.azq             ; 4 uses
  %i.azs = icmp eq i32 %i.aya, 1
  br i1 %i.azs, label %.preheader.i.i.i.i235.i.i, label %bb.qg

.preheader.i.i.i.i235.i.i:                        ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i171.i.i
  %i.azt = icmp sgt i32 %i.azr, 0
  br i1 %i.azt, label %.lr.ph109.i.i.i.i236.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

.lr.ph109.i.i.i.i236.i.i:                         ; preds = %.preheader.i.i.i.i235.i.i
  %wide.trip.count.i.i.i.i237.i.i = zext nneg i32 %i.azr to i64
  br label %bb.qb

bb.qb:                                            ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i, %.lr.ph109.i.i.i.i236.i.i
  %indvars.iv.i.i.i.i238.i.i = phi i64 [ 0, %.lr.ph109.i.i.i.i236.i.i ], [ %indvars.iv.next.i.i.i.i246.i.i, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i ] ; 4 uses
  %.val67.val.i.i.i.i239.i.i = load ptr, ptr %i.agx, align 8, !tbaa !144 ; 3 uses
  %.val67.val68.i.i.i.i240.i.i = load ptr, ptr %i.ave, align 8, !tbaa !201 ; 2 uses
  %i.azu = icmp ne ptr %.val67.val.i.i.i.i239.i.i, null
  %i.azv = icmp eq ptr %.val67.val68.i.i.i.i240.i.i, null
  %i.azw = or i1 %i.azu, %i.azv
  br i1 %i.azw, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i241.i.i, label %bb.qc, !prof !70

bb.qc:                                            ; preds = %bb.qb
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i241.i.i: ; preds = %bb.qb
  %i.azx = ptrtoint ptr %.val67.val68.i.i.i.i240.i.i to i64
  %i.azy = ptrtoint ptr %.val67.val.i.i.i.i239.i.i to i64
  %i.azz = sub i64 %i.azx, %i.azy
  %i.baa = sdiv exact i64 %i.azz, 200
  %i.bab = icmp ugt i64 %i.baa, %indvars.iv.i.i.i.i238.i.i
  br i1 %i.bab, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i242.i.i, label %bb.qd, !prof !70

bb.qd:                                            ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i241.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i242.i.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i.i241.i.i
  %i.bac = getelementptr inbounds nuw [200 x i8], ptr %.val67.val.i.i.i.i239.i.i, i64 %indvars.iv.i.i.i.i238.i.i ; 3 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 192
  %i.bae = load i8, ptr %i.bad, align 8, !tbaa !210
  %i.baf = icmp eq i8 %i.bae, 0
  br i1 %i.baf, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i242.i.i
  %i.bag = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_14ScalarTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.bac, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i unwind label %.loopexit66.i.i243.i.i

bb.qf:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i.i242.i.i
  %i.bah = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_19MultiTargetTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.bac, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i unwind label %.loopexit66.i.i243.i.i

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i: ; preds = %bb.qf, %bb.qe
  %.sink.i.i.i.i.i.i.i245.i.i = phi i32 [ %i.bag, %bb.qe ], [ %i.bah, %bb.qf ]
  %i.bai = load ptr, ptr %98, align 8, !tbaa !175
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %i.bai, i64 %indvars.iv.i.i.i.i238.i.i
  store i32 %.sink.i.i.i.i.i.i.i245.i.i, ptr %i.baj, align 4, !tbaa !83
  %indvars.iv.next.i.i.i.i246.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i238.i.i, 1 ; 2 uses
  %exitcond121.not.i.i.i.i247.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i246.i.i, %wide.trip.count.i.i.i.i237.i.i
  br i1 %exitcond121.not.i.i.i.i247.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i, label %bb.qb, !llvm.loop !698

bb.qg:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i171.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i32 %i.aya, ptr %i.q, align 4, !tbaa !83, !noalias !804
  store i32 1, ptr %i.r, align 4, !tbaa !83, !noalias !804
  %.not.i.i.i.i.i172.i.i = icmp slt i32 %i.aya, 1
  br i1 %.not.i.i.i.i.i172.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i216.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i173.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i173.i.i: ; preds = %bb.qg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.preheader91.i.i.i.i174.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i216.i.i: ; preds = %bb.qg
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %95, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
          to label %.noexc40.i.i219.i.i unwind label %.loopexit.split-lp67.i.i217.i.i

.noexc40.i.i219.i.i:                              ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i216.i.i
  %.pr.i.i.i.i220.i.i = load ptr, ptr %95, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.not.i.i37.i.i221.i.i = icmp eq ptr %.pr.i.i.i.i220.i.i, null
  br i1 %.not.i.i37.i.i221.i.i, label %.preheader91.i.i.i.i174.i.i, label %bb.qh
end_hunk_3
begin_hunk_4_@_ZN4dmlc14LogCheckFormatImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_:bb.a

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !49, !alias.scope !1389
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !43, !alias.scope !1389
  store i8 0, ptr %i.i, align 8, !tbaa !50, !alias.scope !1389
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !217, !noalias !1389 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !1389 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !218, !noalias !1389 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !44, !alias.scope !1389 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.y = load i64, ptr %i.i, align 8, !tbaa !50, !alias.scope !1389
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #34
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  store ptr %i.h, ptr %0, align 8, !tbaa !53
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !64
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #18
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.g:                                             ; preds = %bb.b, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #34
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.g ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNK7xgboost9predictor12CPUPredictor14InplacePredictESt10shared_ptrINS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiENKUlOT_E_clIRNS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEDaSC_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(13) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %21 = alloca %class.anon.475, align 8           ; 13 uses
  %22 = alloca %"struct.xgboost::common::OptionalWeights", align 8 ; 4 uses
  %23 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 12 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !126
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !487, !nonnull !141, !align !245 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !468
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !486  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !488, !nonnull !141, !align !245
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59, !noalias !1400 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !167, !noalias !1400 ; 2 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !68, !noalias !1400 ; 4 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aa, align 8, !noalias !1400
  %i.ab = icmp eq ptr %i.u, %i.v
  %i.ac = mul i64 %i.s, %i.p
  %.sink.i.i.i.i = select i1 %i.ab, i64 0, i64 %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !489, !nonnull !141, !align !245 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !490, !nonnull !141, !align !245
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !491, !nonnull !141, !align !244
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !83 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !492, !nonnull !141
  %i.am = load i8, ptr %i.al, align 1, !tbaa !82, !range !140, !noundef !141
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !493, !nonnull !141, !align !245
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.s, ptr %23, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i64 %i.s, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i64 %i.z, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 40
  store ptr %i.v, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 48
  store ptr %i.v, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 56
  store i64 %.sink.i.i.i.i, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 64
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.99.0..sroa_idx, align 8
  store i8 %i.am, ptr %i.e, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !288
  store i32 %i.aq, ptr %i.f, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ar = icmp ugt i64 %i.p, 1
  br i1 %i.ar, label %bb.b, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 28 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !200 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !199 ; 2 uses
  %i.aw = sub nsw i32 %i.at, %i.av                ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.not118.i = icmp eq i32 %i.at, %i.av
  br i1 %.not118.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ba = icmp slt i32 %i.aw, 0
  br i1 %i.ba, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
          to label %.noexc53.i unwind label %bb.i

.noexc53.i:                                       ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.bb = shl nuw nsw i64 %i.ax, 2
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #33
          to label %.noexc54.i unwind label %bb.i ; 4 uses

.noexc54.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  store i32 0, ptr %i.bc, align 4, !tbaa !83
  %i.bd = add nsw i64 %i.ax, -1                   ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc54.i
  %i.bf = getelementptr i8, ptr %i.bc, i64 4
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.bd, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bf, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !83
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc54.i
  store ptr %i.bc, ptr %18, align 8, !tbaa !175
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ax ; 2 uses
  store ptr %i.bg, ptr %i.ay, align 8, !tbaa !174
  store ptr %i.bg, ptr %i.az, align 8, !tbaa !246
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i64 %i.ax, ptr %i.g, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %.val.i = load ptr, ptr %i.ae, align 8, !tbaa !144 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %.val24.i = load ptr, ptr %i.bh, align 8, !tbaa !201 ; 2 uses
  %i.bi = icmp ne ptr %.val.i, null
  %i.bj = icmp eq ptr %.val24.i, null
  %i.bk = or i1 %i.bi, %i.bj
  br i1 %i.bk, label %bb.f, label %bb.e, !prof !70

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  tail call void @_ZSt9terminatev() #35
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.bl = ptrtoint ptr %.val24.i to i64
  %i.bm = ptrtoint ptr %.val.i to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 200               ; 2 uses
  store i64 %i.bo, ptr %i.h, align 8, !tbaa !59
  %i.bp = icmp eq i64 %i.bo, %i.ax
  br i1 %i.bp, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %bb.g

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i unwind label %bb.j

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %bb.g
  %.pr.i = load ptr, ptr %19, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.bq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %.noexc28.i unwind label %bb.k

.noexc28.i:                                       ; preds = %bb.h
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bq, ptr noundef nonnull @.str.4, i32 noundef 412)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i unwind label %bb.k

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i:          ; preds = %.noexc28.i
  %i.br = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.l ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.50, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bu = load ptr, ptr %19, align 8, !tbaa !53   ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !43
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef %i.bv, i64 noundef %i.bx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.l

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.n unwind label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.d
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.j:                                             ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %bb.az

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i, %.noexc28.i, %bb.h
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.m unwind label %bb.cd

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.cc, %bb.k ], [ %i.cd, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  br label %bb.az

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr64.i = load ptr, ptr %19, align 8, !tbaa !53 ; 4 uses
  %.not.i.i = icmp eq ptr %.pr64.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = load ptr, ptr %.pr64.i, align 8, !tbaa !44 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.pr64.i, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !50
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr64.i, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.n, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.cj = load i32, ptr %i.as, align 4, !tbaa !200
  %i.ck = load i32, ptr %i.au, align 8, !tbaa !199
  %i.cl = sub nsw i32 %i.cj, %i.ck                ; 4 uses
  %i.cm = icmp eq i32 %i.aj, 1
  br i1 %i.cm, label %.preheader.i.i.i, label %bb.u

.preheader.i.i.i:                                 ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.cn = icmp sgt i32 %i.cl, 0
  br i1 %i.cn, label %.lr.ph109.i.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

.lr.ph109.i.i.i:                                  ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.cl to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i, %.lr.ph109.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph109.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i ] ; 4 uses
  %.val67.val.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !144 ; 3 uses
  %.val67.val68.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !201 ; 2 uses
  %i.co = icmp ne ptr %.val67.val.i.i.i, null
  %i.cp = icmp eq ptr %.val67.val68.i.i.i, null
  %i.cq = or i1 %i.co, %i.cp
  br i1 %i.cq, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i, label %bb.q, !prof !70

bb.q:                                             ; preds = %bb.p
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i: ; preds = %bb.p
  %i.cr = ptrtoint ptr %.val67.val68.i.i.i to i64
  %i.cs = ptrtoint ptr %.val67.val.i.i.i to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = sdiv exact i64 %i.ct, 200
  %i.cv = icmp ugt i64 %i.cu, %indvars.iv.i.i.i
  br i1 %i.cv, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i, label %bb.r, !prof !70

bb.r:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i
  %i.cw = getelementptr inbounds nuw [200 x i8], ptr %.val67.val.i.i.i, i64 %indvars.iv.i.i.i ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 192
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !210
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i
  %i.da = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_14ScalarTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.cw, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i unwind label %.loopexit66.i

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i
  %i.db = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_19MultiTargetTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.cw, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i unwind label %.loopexit66.i

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.sink.i.i.i.i.i.i = phi i32 [ %i.da, %bb.s ], [ %i.db, %bb.t ]
  %i.dc = load ptr, ptr %18, align 8, !tbaa !175
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i.i.i
  store i32 %.sink.i.i.i.i.i.i, ptr %i.dd, align 4, !tbaa !83
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond121.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond121.not.i.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i, label %bb.p, !llvm.loop !1392

bb.u:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.aj, ptr %i.c, align 4, !tbaa !83, !noalias !1401
  store i32 1, ptr %i.d, align 4, !tbaa !83, !noalias !1401
  %.not.i.i.i.i = icmp slt i32 %i.aj, 1
  br i1 %.not.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader91.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i: ; preds = %bb.u
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc40.i unwind label %.loopexit.split-lp67.i

.noexc40.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i
  %.pr.i.i.i = load ptr, ptr %15, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i37.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i37.i, label %.preheader91.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc40.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.de = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc.i.i.i unwind label %bb.w
end_hunk_4
begin_hunk_5_@_ZN7xgboost9predictor17CheckProxyDMatrixINS_4data12ArrayAdapterEEEvSt10shared_ptrIT_EPKNS2_12DMatrixProxyEPKNS_17LearnerModelParamE:bb.a
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.cr, ptr noundef nonnull @.str.65, i32 noundef 22)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit73 unwind label %bb.y

_ZN4dmlc15LogMessageFatalC2EPKci.exit73:          ; preds = %.noexc71
  %i.cs = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit75 unwind label %bb.z ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit75: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit73
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit75
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.70, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.cv = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !44
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !43
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef %i.cw, i64 noundef %i.cy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit81 unwind label %bb.z

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit81: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit81
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ab unwind label %bb.y

bb.y:                                             ; preds = %.noexc71, %bb.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit81, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit75, %_ZN4dmlc15LogMessageFatalC2EPKci.exit73
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn17 = phi { ptr, i32 } [ %i.db, %bb.y ], [ %i.dc, %bb.z ]
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
  %i.dd = load ptr, ptr %.pr102, align 8, !tbaa !44 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.pr102, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85: ; preds = %bb.ac
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !50
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #34
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
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNK7xgboost9predictor12CPUPredictor14InplacePredictESt10shared_ptrINS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiENKUlOT_E_clIRNS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEDaSC_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(13) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %21 = alloca %class.anon.491, align 8           ; 13 uses
  %22 = alloca %"struct.xgboost::common::OptionalWeights", align 8 ; 4 uses
  %23 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 12 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !126
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !487, !nonnull !141, !align !245 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !471
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.p = load i64, ptr %i.o, align 8, !tbaa !59   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !488, !nonnull !141, !align !245
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59, !noalias !1448 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !167, !noalias !1448 ; 2 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !68, !noalias !1448 ; 4 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aa, align 8, !noalias !1448
  %i.ab = icmp eq ptr %i.u, %i.v
  %i.ac = mul i64 %i.s, %i.p
  %.sink.i.i.i.i = select i1 %i.ab, i64 0, i64 %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !489, !nonnull !141, !align !245 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !490, !nonnull !141, !align !245
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !491, !nonnull !141, !align !244
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !83 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !492, !nonnull !141
  %i.am = load i8, ptr %i.al, align 1, !tbaa !82, !range !140, !noundef !141
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !493, !nonnull !141, !align !245
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.s, ptr %23, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i64 %i.s, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i64 %i.z, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 40
  store ptr %i.v, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 48
  store ptr %i.v, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 56
  store i64 %.sink.i.i.i.i, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 64
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.99.0..sroa_idx, align 8
  store i8 %i.am, ptr %i.e, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !288
  store i32 %i.aq, ptr %i.f, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ar = icmp ugt i64 %i.p, 1
  br i1 %i.ar, label %bb.b, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 28 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !200 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !199 ; 2 uses
  %i.aw = sub nsw i32 %i.at, %i.av                ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.not118.i = icmp eq i32 %i.at, %i.av
  br i1 %.not118.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ba = icmp slt i32 %i.aw, 0
  br i1 %i.ba, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
          to label %.noexc53.i unwind label %bb.i

.noexc53.i:                                       ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.bb = shl nuw nsw i64 %i.ax, 2
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #33
          to label %.noexc54.i unwind label %bb.i ; 4 uses

.noexc54.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  store i32 0, ptr %i.bc, align 4, !tbaa !83
  %i.bd = add nsw i64 %i.ax, -1                   ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc54.i
  %i.bf = getelementptr i8, ptr %i.bc, i64 4
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.bd, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bf, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !83
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc54.i
  store ptr %i.bc, ptr %18, align 8, !tbaa !175
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ax ; 2 uses
  store ptr %i.bg, ptr %i.ay, align 8, !tbaa !174
  store ptr %i.bg, ptr %i.az, align 8, !tbaa !246
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i64 %i.ax, ptr %i.g, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %.val.i = load ptr, ptr %i.ae, align 8, !tbaa !144 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %.val24.i = load ptr, ptr %i.bh, align 8, !tbaa !201 ; 2 uses
  %i.bi = icmp ne ptr %.val.i, null
  %i.bj = icmp eq ptr %.val24.i, null
  %i.bk = or i1 %i.bi, %i.bj
  br i1 %i.bk, label %bb.f, label %bb.e, !prof !70

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  tail call void @_ZSt9terminatev() #35
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.bl = ptrtoint ptr %.val24.i to i64
  %i.bm = ptrtoint ptr %.val.i to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 200               ; 2 uses
  store i64 %i.bo, ptr %i.h, align 8, !tbaa !59
  %i.bp = icmp eq i64 %i.bo, %i.ax
  br i1 %i.bp, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %bb.g

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i unwind label %bb.j

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %bb.g
  %.pr.i = load ptr, ptr %19, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.bq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %.noexc28.i unwind label %bb.k

.noexc28.i:                                       ; preds = %bb.h
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bq, ptr noundef nonnull @.str.4, i32 noundef 412)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i unwind label %bb.k

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i:          ; preds = %.noexc28.i
  %i.br = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.l ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.50, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bu = load ptr, ptr %19, align 8, !tbaa !53   ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !43
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef %i.bv, i64 noundef %i.bx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.l

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.n unwind label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.d
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.j:                                             ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %bb.az

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i, %.noexc28.i, %bb.h
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.m unwind label %bb.cd

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.cc, %bb.k ], [ %i.cd, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  br label %bb.az

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr64.i = load ptr, ptr %19, align 8, !tbaa !53 ; 4 uses
  %.not.i.i = icmp eq ptr %.pr64.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = load ptr, ptr %.pr64.i, align 8, !tbaa !44 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.pr64.i, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !50
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr64.i, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.n, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.cj = load i32, ptr %i.as, align 4, !tbaa !200
  %i.ck = load i32, ptr %i.au, align 8, !tbaa !199
  %i.cl = sub nsw i32 %i.cj, %i.ck                ; 4 uses
  %i.cm = icmp eq i32 %i.aj, 1
  br i1 %i.cm, label %.preheader.i.i.i, label %bb.u

.preheader.i.i.i:                                 ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.cn = icmp sgt i32 %i.cl, 0
  br i1 %i.cn, label %.lr.ph109.i.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

.lr.ph109.i.i.i:                                  ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.cl to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i, %.lr.ph109.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph109.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i ] ; 4 uses
  %.val67.val.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !144 ; 3 uses
  %.val67.val68.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !201 ; 2 uses
  %i.co = icmp ne ptr %.val67.val.i.i.i, null
  %i.cp = icmp eq ptr %.val67.val68.i.i.i, null
  %i.cq = or i1 %i.co, %i.cp
  br i1 %i.cq, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i, label %bb.q, !prof !70

bb.q:                                             ; preds = %bb.p
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i: ; preds = %bb.p
  %i.cr = ptrtoint ptr %.val67.val68.i.i.i to i64
  %i.cs = ptrtoint ptr %.val67.val.i.i.i to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = sdiv exact i64 %i.ct, 200
  %i.cv = icmp ugt i64 %i.cu, %indvars.iv.i.i.i
  br i1 %i.cv, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i, label %bb.r, !prof !70

bb.r:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i
  %i.cw = getelementptr inbounds nuw [200 x i8], ptr %.val67.val.i.i.i, i64 %indvars.iv.i.i.i ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 192
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !210
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i
  %i.da = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_14ScalarTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.cw, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i unwind label %.loopexit66.i

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i
  %i.db = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_19MultiTargetTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.cw, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i unwind label %.loopexit66.i

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.sink.i.i.i.i.i.i = phi i32 [ %i.da, %bb.s ], [ %i.db, %bb.t ]
  %i.dc = load ptr, ptr %18, align 8, !tbaa !175
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i.i.i
  store i32 %.sink.i.i.i.i.i.i, ptr %i.dd, align 4, !tbaa !83
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond121.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond121.not.i.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i, label %bb.p, !llvm.loop !1440

bb.u:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.aj, ptr %i.c, align 4, !tbaa !83, !noalias !1449
  store i32 1, ptr %i.d, align 4, !tbaa !83, !noalias !1449
  %.not.i.i.i.i = icmp slt i32 %i.aj, 1
  br i1 %.not.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader91.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i: ; preds = %bb.u
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc40.i unwind label %.loopexit.split-lp67.i

.noexc40.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i
  %.pr.i.i.i = load ptr, ptr %15, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i37.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i37.i, label %.preheader91.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc40.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.de = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc.i.i.i unwind label %bb.w
end_hunk_5
begin_hunk_6_@_ZN7xgboost9predictor17CheckProxyDMatrixINS_4data15CSRArrayAdapterEEEvSt10shared_ptrIT_EPKNS2_12DMatrixProxyEPKNS_17LearnerModelParamE:bb.a
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
  %i.p = load i64, ptr %i.o, align 8, !tbaa !59
  %i.q = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.p, i64 1) ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !488, !nonnull !141, !align !245
  %i.t = load i64, ptr %i.s, align 8, !tbaa !59, !noalias !1496 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !167, !noalias !1496 ; 2 uses
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !68, !noalias !1496 ; 4 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ab, align 8, !noalias !1496
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
  %i.as = icmp ugt i64 %i.q, 1
  br i1 %i.as, label %bb.b, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 28 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !200 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !199 ; 2 uses
  %i.ax = sub nsw i32 %i.au, %i.aw                ; 2 uses
  %i.ay = sext i32 %i.ax to i64                   ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.not118.i = icmp eq i32 %i.au, %i.aw
  br i1 %.not118.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bb = icmp slt i32 %i.ax, 0
  br i1 %i.bb, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
          to label %.noexc53.i unwind label %bb.i

.noexc53.i:                                       ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.bc = shl nuw nsw i64 %i.ay, 2
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #33
          to label %.noexc54.i unwind label %bb.i ; 4 uses

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
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i64 %i.ay, ptr %i.g, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %.val.i = load ptr, ptr %i.af, align 8, !tbaa !144 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %.val24.i = load ptr, ptr %i.bi, align 8, !tbaa !201 ; 2 uses
  %i.bj = icmp ne ptr %.val.i, null
  %i.bk = icmp eq ptr %.val24.i, null
  %i.bl = or i1 %i.bj, %i.bk
  br i1 %i.bl, label %bb.f, label %bb.e, !prof !70

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  tail call void @_ZSt9terminatev() #35
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.bm = ptrtoint ptr %.val24.i to i64
  %i.bn = ptrtoint ptr %.val.i to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 200               ; 2 uses
  store i64 %i.bp, ptr %i.h, align 8, !tbaa !59
  %i.bq = icmp eq i64 %i.bp, %i.ay
  br i1 %i.bq, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %bb.g

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i unwind label %bb.j

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %bb.g
  %.pr.i = load ptr, ptr %19, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.br = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %.noexc28.i unwind label %bb.k

.noexc28.i:                                       ; preds = %bb.h
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.br, ptr noundef nonnull @.str.4, i32 noundef 412)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i unwind label %bb.k

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i:          ; preds = %.noexc28.i
  %i.bs = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.l ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.50, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bv = load ptr, ptr %19, align 8, !tbaa !53   ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !44
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !43
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef %i.bw, i64 noundef %i.by)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.l

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.n unwind label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.j:                                             ; preds = %bb.g
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %bb.az

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i, %.noexc28.i, %bb.h
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.m unwind label %bb.cd

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.cd, %bb.k ], [ %i.ce, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  br label %bb.az

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr64.i = load ptr, ptr %19, align 8, !tbaa !53 ; 4 uses
  %.not.i.i = icmp eq ptr %.pr64.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = load ptr, ptr %.pr64.i, align 8, !tbaa !44 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.pr64.i, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !50
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr64.i, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.n, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.ck = load i32, ptr %i.at, align 4, !tbaa !200
  %i.cl = load i32, ptr %i.av, align 8, !tbaa !199
  %i.cm = sub nsw i32 %i.ck, %i.cl                ; 4 uses
  %i.cn = icmp eq i32 %i.ak, 1
  br i1 %i.cn, label %.preheader.i.i.i, label %bb.u

.preheader.i.i.i:                                 ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.co = icmp sgt i32 %i.cm, 0
  br i1 %i.co, label %.lr.ph109.i.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

.lr.ph109.i.i.i:                                  ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.cm to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i, %.lr.ph109.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph109.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i ] ; 4 uses
  %.val67.val.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !144 ; 3 uses
  %.val67.val68.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !201 ; 2 uses
  %i.cp = icmp ne ptr %.val67.val.i.i.i, null
  %i.cq = icmp eq ptr %.val67.val68.i.i.i, null
  %i.cr = or i1 %i.cp, %i.cq
  br i1 %i.cr, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i, label %bb.q, !prof !70

bb.q:                                             ; preds = %bb.p
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i: ; preds = %bb.p
  %i.cs = ptrtoint ptr %.val67.val68.i.i.i to i64
  %i.ct = ptrtoint ptr %.val67.val.i.i.i to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 200
  %i.cw = icmp ugt i64 %i.cv, %indvars.iv.i.i.i
  br i1 %i.cw, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i, label %bb.r, !prof !70

bb.r:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i
  %i.cx = getelementptr inbounds nuw [200 x i8], ptr %.val67.val.i.i.i, i64 %indvars.iv.i.i.i ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 192
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !210
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i
  %i.db = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_14ScalarTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.cx, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i unwind label %.loopexit66.i

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i
  %i.dc = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_19MultiTargetTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.cx, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i unwind label %.loopexit66.i

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.sink.i.i.i.i.i.i = phi i32 [ %i.db, %bb.s ], [ %i.dc, %bb.t ]
  %i.dd = load ptr, ptr %18, align 8, !tbaa !175
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i.i.i
  store i32 %.sink.i.i.i.i.i.i, ptr %i.de, align 4, !tbaa !83
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond121.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond121.not.i.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i, label %bb.p, !llvm.loop !1488

bb.u:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.ak, ptr %i.c, align 4, !tbaa !83, !noalias !1497
  store i32 1, ptr %i.d, align 4, !tbaa !83, !noalias !1497
  %.not.i.i.i.i = icmp slt i32 %i.ak, 1
  br i1 %.not.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader91.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i: ; preds = %bb.u
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc40.i unwind label %.loopexit.split-lp67.i

.noexc40.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i
  %.pr.i.i.i = load ptr, ptr %15, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i37.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i37.i, label %.preheader91.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc40.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.df = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc.i.i.i unwind label %bb.w
end_hunk_6
begin_hunk_7_@_ZN7xgboost9predictor17CheckProxyDMatrixINS_4data15ColumnarAdapterEEEvSt10shared_ptrIT_EPKNS2_12DMatrixProxyEPKNS_17LearnerModelParamE:bb.a
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ac unwind label %bb.z

bb.z:                                             ; preds = %.noexc71, %bb.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit81, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit75, %_ZN4dmlc15LogMessageFatalC2EPKci.exit73
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn17 = phi { ptr, i32 } [ %i.ds, %bb.z ], [ %i.dt, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.ae

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %.pr102 = load ptr, ptr %10, align 8, !tbaa !53 ; 4 uses
  %.not.i84 = icmp eq ptr %.pr102, null
  br i1 %.not.i84, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit88, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = load ptr, ptr %.pr102, align 8, !tbaa !44 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.pr102, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85: ; preds = %bb.ad
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !50
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i86

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i86: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85
  call void @_ZdlPvm(ptr noundef nonnull %.pr102, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit88

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit88: ; preds = %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

bb.ae:                                            ; preds = %bb.ab, %bb.v, %bb.p, %bb.i
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %bb.ab ], [ %.pn15, %bb.v ], [ %.pn13, %bb.p ], [ %.pn, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.d
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.ae ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %.pn17.pn.pn

bb.ag:                                            ; preds = %bb.aa, %bb.u, %bb.o, %bb.h, %bb.c
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNK7xgboost9predictor12CPUPredictor14InplacePredictESt10shared_ptrINS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiENKUlOT_E_clIRNS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEDaSC_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.f = alloca i32, align 4                      ; 7 uses
  %18 = alloca %"class.std::vector.31", align 8   ; 16 uses
  %19 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %20 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %21 = alloca %class.anon.537, align 8           ; 13 uses
  %22 = alloca %"struct.xgboost::common::OptionalWeights", align 8 ; 4 uses
  %23 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 12 uses
  %24 = alloca %"struct.xgboost::common::OptionalWeights", align 8 ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !126
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !487, !nonnull !141, !align !245 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !477    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !506  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !506
  %i.s = icmp eq ptr %i.p, %i.r                   ; 2 uses
  br i1 %i.s, label %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEE4SizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !59
  br label %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEE4SizeEv.exit

_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEE4SizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.u, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !488, !nonnull !141, !align !245
  %i.x = load i64, ptr %i.w, align 8, !tbaa !59, !noalias !1544 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !167, !noalias !1544 ; 2 uses
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !68, !noalias !1544 ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.af, align 8, !noalias !1544
  %i.ag = icmp eq ptr %i.z, %i.aa
  %i.ah = mul i64 %i.x, %.0.i.i
  %.sink.i.i.i.i = select i1 %i.ag, i64 0, i64 %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !489, !nonnull !141, !align !245 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !490, !nonnull !141, !align !245
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !491, !nonnull !141, !align !244
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !83 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !492, !nonnull !141
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !82, !range !140, !noundef !141
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !493, !nonnull !141, !align !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !tbaa.struct !507
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %24, i64 24, i1 false)
  store i64 %i.x, ptr %23, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 %.0.i.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i64 %i.x, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i64 %i.ae, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 40
  store ptr %i.aa, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 48
  store ptr %i.aa, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 56
  store i64 %.sink.i.i.i.i, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 64
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.99.0..sroa_idx, align 8
  store i8 %i.ar, ptr %i.e, align 1, !tbaa !82
  br i1 %i.s, label %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEE4SizeEv.exit.thread.i, label %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEE4SizeEv.exit.i

_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEE4SizeEv.exit.thread.i: ; preds = %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEE4SizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %i.av = load i32, ptr %i.au, align 4, !tbaa !288
  store i32 %i.av, ptr %i.f, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEE4SizeEv.exit.i: ; preds = %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEE4SizeEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !288
  store i32 %i.az, ptr %i.f, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ba = icmp ugt i64 %i.ax, 1
  br i1 %i.ba, label %bb.c, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

bb.c:                                             ; preds = %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEE4SizeEv.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 28 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !200 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !199 ; 2 uses
  %i.bf = sub nsw i32 %i.bc, %i.be                ; 2 uses
  %i.bg = sext i32 %i.bf to i64                   ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.not123.i = icmp eq i32 %i.bc, %i.be
  br i1 %.not123.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bj = icmp slt i32 %i.bf, 0
  br i1 %i.bj, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
          to label %.noexc53.i unwind label %bb.j

.noexc53.i:                                       ; preds = %bb.e
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.bk = shl nuw nsw i64 %i.bg, 2
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #33
          to label %.noexc54.i unwind label %bb.j ; 4 uses

.noexc54.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  store i32 0, ptr %i.bl, align 4, !tbaa !83
  %i.bm = add nsw i64 %i.bg, -1                   ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc54.i
  %i.bo = getelementptr i8, ptr %i.bl, i64 4
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.bm, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bo, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !83
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc54.i
  store ptr %i.bl, ptr %18, align 8, !tbaa !175
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bg ; 2 uses
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !174
  store ptr %i.bp, ptr %i.bi, align 8, !tbaa !246
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i64 %i.bg, ptr %i.g, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %.val.i = load ptr, ptr %i.aj, align 8, !tbaa !144 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %.val24.i = load ptr, ptr %i.bq, align 8, !tbaa !201 ; 2 uses
  %i.br = icmp ne ptr %.val.i, null
  %i.bs = icmp eq ptr %.val24.i, null
  %i.bt = or i1 %i.br, %i.bs
  br i1 %i.bt, label %bb.g, label %bb.f, !prof !70

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  tail call void @_ZSt9terminatev() #35
  unreachable

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.bu = ptrtoint ptr %.val24.i to i64
  %i.bv = ptrtoint ptr %.val.i to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 200               ; 2 uses
  store i64 %i.bx, ptr %i.h, align 8, !tbaa !59
  %i.by = icmp eq i64 %i.bx, %i.bg
  br i1 %i.by, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %bb.h

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i unwind label %bb.k

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %bb.h
  %.pr.i = load ptr, ptr %19, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.bz = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %.noexc28.i unwind label %bb.l

.noexc28.i:                                       ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bz, ptr noundef nonnull @.str.4, i32 noundef 412)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i unwind label %bb.l

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i:          ; preds = %.noexc28.i
  %i.ca = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.m ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.50, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.cd = load ptr, ptr %19, align 8, !tbaa !53   ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !43
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.ce, i64 noundef %i.cg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.o unwind label %bb.l

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.e
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %bb.h
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %bb.ba

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i, %.noexc28.i, %bb.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.n unwind label %bb.ce

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.cl, %bb.l ], [ %i.cm, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  br label %bb.ba

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr66.i = load ptr, ptr %19, align 8, !tbaa !53 ; 4 uses
  %.not.i.i = icmp eq ptr %.pr66.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = load ptr, ptr %.pr66.i, align 8, !tbaa !44 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pr66.i, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !50
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr66.i, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.o, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.cs = load i32, ptr %i.bb, align 4, !tbaa !200
  %i.ct = load i32, ptr %i.bd, align 8, !tbaa !199
  %i.cu = sub nsw i32 %i.cs, %i.ct                ; 4 uses
  %i.cv = icmp eq i32 %i.ao, 1
  br i1 %i.cv, label %.preheader.i.i.i, label %bb.v

.preheader.i.i.i:                                 ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.cw = icmp sgt i32 %i.cu, 0
  br i1 %i.cw, label %.lr.ph109.i.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

.lr.ph109.i.i.i:                                  ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.cu to i64
  br label %bb.q

bb.q:                                             ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i, %.lr.ph109.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph109.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i ] ; 4 uses
  %.val67.val.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !144 ; 3 uses
  %.val67.val68.i.i.i = load ptr, ptr %i.bq, align 8, !tbaa !201 ; 2 uses
  %i.cx = icmp ne ptr %.val67.val.i.i.i, null
  %i.cy = icmp eq ptr %.val67.val68.i.i.i, null
  %i.cz = or i1 %i.cx, %i.cy
  br i1 %i.cz, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i, label %bb.r, !prof !70

bb.r:                                             ; preds = %bb.q
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i: ; preds = %bb.q
  %i.da = ptrtoint ptr %.val67.val68.i.i.i to i64
  %i.db = ptrtoint ptr %.val67.val.i.i.i to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = sdiv exact i64 %i.dc, 200
  %i.de = icmp ugt i64 %i.dd, %indvars.iv.i.i.i
  br i1 %i.de, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i, label %bb.s, !prof !70

bb.s:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i
  %i.df = getelementptr inbounds nuw [200 x i8], ptr %.val67.val.i.i.i, i64 %indvars.iv.i.i.i ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 192
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !210
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i
  %i.dj = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_14ScalarTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.df, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i unwind label %.loopexit68.i

bb.u:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i
  %i.dk = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_19MultiTargetTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.df, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i unwind label %.loopexit68.i

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i: ; preds = %bb.u, %bb.t
  %.sink.i.i.i.i.i.i = phi i32 [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  %i.dl = load ptr, ptr %18, align 8, !tbaa !175
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i.i.i
  store i32 %.sink.i.i.i.i.i.i, ptr %i.dm, align 4, !tbaa !83
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond121.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond121.not.i.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i, label %bb.q, !llvm.loop !1536

bb.v:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.ao, ptr %i.c, align 4, !tbaa !83, !noalias !1545
  store i32 1, ptr %i.d, align 4, !tbaa !83, !noalias !1545
  %.not.i.i.i.i = icmp slt i32 %i.ao, 1
  br i1 %.not.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader91.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i: ; preds = %bb.v
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc40.i unwind label %.loopexit.split-lp69.i

.noexc40.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i
  %.pr.i.i.i = load ptr, ptr %15, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i37.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i37.i, label %.preheader91.i.i.i, label %bb.w

bb.w:                                             ; preds = %.noexc40.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.dn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc.i.i.i unwind label %bb.x
end_hunk_7
begin_hunk_8_@_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE:bb.a

bb.ad:                                            ; preds = %bb.ac, %.split.i.i13.i
  tail call void @_ZSt9terminatev() #35
  unreachable

bb.ae:                                            ; preds = %.split.i.i13.i
  %i.ft = sub nuw i64 %i.fk, %i.ey
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %i.fu = phi i64 [ %i.ft, %bb.ae ], [ %i.fr, %bb.ac ] ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 0
  %i.fw = or i1 %i.fn, %i.fv
  br i1 %i.fw, label %_ZNK3enc11MappingViewixEm.exit15.i, label %bb.ag, !prof !70

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK3enc11MappingViewixEm.exit15.i:               ; preds = %bb.af
  %i.fx = fptosi float %.0.i to i32               ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, -1
  %i.fz = trunc i64 %i.fu to i32
  %i.ga = icmp slt i32 %i.fx, %i.fz
  %or.cond.i = and i1 %i.fy, %i.ga
  br i1 %or.cond.i, label %bb.ah, label %_ZNK7xgboost11CatAccessorclIfmEET_S2_T0_.exit

bb.ah:                                            ; preds = %_ZNK3enc11MappingViewixEm.exit15.i
  %i.gb = zext nneg i32 %i.fx to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !83
  %i.ge = sitofp i32 %i.gd to float
  br label %_ZNK7xgboost11CatAccessorclIfmEET_S2_T0_.exit

_ZNK7xgboost11CatAccessorclIfmEET_S2_T0_.exit:    ; preds = %bb.t, %_ZNK3enc11MappingViewixEm.exit.i, %_ZNK3enc11MappingViewixEm.exit15.i, %bb.ah
  %.1.i = phi float [ %.0.i, %_ZNK3enc11MappingViewixEm.exit15.i ], [ %.0.i, %_ZNK3enc11MappingViewixEm.exit.i ], [ %i.ge, %bb.ah ], [ %.0.i, %bb.t ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.017.i.i
  store float %.1.i, ptr %i.gf, align 4, !tbaa !72
  %i.gg = add i64 %.0916.i.i, 1
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %_ZNK7xgboost11CatAccessorclIfmEET_S2_T0_.exit, %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit, %bb.g
  %.1.i.i = phi i64 [ %.0916.i.i, %bb.g ], [ %i.gg, %_ZNK7xgboost11CatAccessorclIfmEET_S2_T0_.exit ], [ %.0916.i.i, %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit ] ; 2 uses
  %i.gh = add nuw i64 %.017.i.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gh, %i.ar
  br i1 %exitcond.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %bb.f, !llvm.loop !1565

_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit: ; preds = %.thread.i.i, %bb.e
  %.09.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %.1.i.i, %.thread.i.i ]
  %i.gi = load ptr, ptr %i.k, align 8, !tbaa !167
  %i.gj = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = ashr exact i64 %i.gm, 2
  %i.go = icmp ne i64 %.09.lcssa.i.i, %i.gn
  %i.gp = zext i1 %i.go to i8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 %i.gp, ptr %i.gq, align 8, !tbaa !319
  %i.gr = add nuw i64 %.013, 1                    ; 2 uses
  %i.gs = load i64, ptr %i.a, align 8, !tbaa !314
  %i.gt = load i64, ptr %1, align 8, !tbaa !315   ; 2 uses
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = icmp ult i64 %i.gr, %i.gu
  br i1 %i.gv, label %bb.b, label %._crit_edge, !llvm.loop !1566
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNK7xgboost9predictor12CPUPredictor14InplacePredictESt10shared_ptrINS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiENKUlOT_E_clIRNS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEDaSC_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(13) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.f = alloca i32, align 4                      ; 7 uses
  %18 = alloca %"class.std::vector.31", align 8   ; 16 uses
  %19 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %20 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %21 = alloca %class.anon.547, align 8           ; 13 uses
  %22 = alloca %"struct.xgboost::common::OptionalWeights", align 8 ; 4 uses
  %23 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 12 uses
  %24 = alloca %"struct.xgboost::common::OptionalWeights", align 8 ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !126
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !487, !nonnull !141, !align !245 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !480    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !506  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !506
  %i.s = icmp eq ptr %i.p, %i.r                   ; 2 uses
  br i1 %i.s, label %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !59
  br label %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit

_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.u, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !488, !nonnull !141, !align !245
  %i.x = load i64, ptr %i.w, align 8, !tbaa !59, !noalias !1578 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !167, !noalias !1578 ; 2 uses
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !68, !noalias !1578 ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.af, align 8, !noalias !1578
  %i.ag = icmp eq ptr %i.z, %i.aa
  %i.ah = mul i64 %i.x, %.0.i.i
  %.sink.i.i.i.i = select i1 %i.ag, i64 0, i64 %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !489, !nonnull !141, !align !245 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !490, !nonnull !141, !align !245
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !491, !nonnull !141, !align !244
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !83 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !492, !nonnull !141
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !82, !range !140, !noundef !141
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !493, !nonnull !141, !align !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !tbaa.struct !507
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %24, i64 24, i1 false)
  store i64 %i.x, ptr %23, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 %.0.i.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i64 %i.x, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i64 %i.ae, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 40
  store ptr %i.aa, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 48
  store ptr %i.aa, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 56
  store i64 %.sink.i.i.i.i, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 64
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.99.0..sroa_idx, align 8
  store i8 %i.ar, ptr %i.e, align 1, !tbaa !82
  br i1 %i.s, label %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit.thread.i, label %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit.i

_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit.thread.i: ; preds = %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %i.av = load i32, ptr %i.au, align 4, !tbaa !288
  store i32 %i.av, ptr %i.f, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit.i: ; preds = %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !288
  store i32 %i.az, ptr %i.f, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ba = icmp ugt i64 %i.ax, 1
  br i1 %i.ba, label %bb.c, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

bb.c:                                             ; preds = %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 28 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !200 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !199 ; 2 uses
  %i.bf = sub nsw i32 %i.bc, %i.be                ; 2 uses
  %i.bg = sext i32 %i.bf to i64                   ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.not123.i = icmp eq i32 %i.bc, %i.be
  br i1 %.not123.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bj = icmp slt i32 %i.bf, 0
  br i1 %i.bj, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
          to label %.noexc53.i unwind label %bb.j

.noexc53.i:                                       ; preds = %bb.e
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.bk = shl nuw nsw i64 %i.bg, 2
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #33
          to label %.noexc54.i unwind label %bb.j ; 4 uses

.noexc54.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  store i32 0, ptr %i.bl, align 4, !tbaa !83
  %i.bm = add nsw i64 %i.bg, -1                   ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc54.i
  %i.bo = getelementptr i8, ptr %i.bl, i64 4
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.bm, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bo, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !83
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc54.i
  store ptr %i.bl, ptr %18, align 8, !tbaa !175
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bg ; 2 uses
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !174
  store ptr %i.bp, ptr %i.bi, align 8, !tbaa !246
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i64 %i.bg, ptr %i.g, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %.val.i = load ptr, ptr %i.aj, align 8, !tbaa !144 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %.val24.i = load ptr, ptr %i.bq, align 8, !tbaa !201 ; 2 uses
  %i.br = icmp ne ptr %.val.i, null
  %i.bs = icmp eq ptr %.val24.i, null
  %i.bt = or i1 %i.br, %i.bs
  br i1 %i.bt, label %bb.g, label %bb.f, !prof !70

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  tail call void @_ZSt9terminatev() #35
  unreachable

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.bu = ptrtoint ptr %.val24.i to i64
  %i.bv = ptrtoint ptr %.val.i to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 200               ; 2 uses
  store i64 %i.bx, ptr %i.h, align 8, !tbaa !59
  %i.by = icmp eq i64 %i.bx, %i.bg
  br i1 %i.by, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %bb.h

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i unwind label %bb.k

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %bb.h
  %.pr.i = load ptr, ptr %19, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.bz = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %.noexc28.i unwind label %bb.l

.noexc28.i:                                       ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bz, ptr noundef nonnull @.str.4, i32 noundef 412)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i unwind label %bb.l

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i:          ; preds = %.noexc28.i
  %i.ca = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.m ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.50, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.cd = load ptr, ptr %19, align 8, !tbaa !53   ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !43
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.ce, i64 noundef %i.cg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.o unwind label %bb.l

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.e
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %bb.h
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %bb.ba

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i, %.noexc28.i, %bb.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.n unwind label %bb.ce

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.cl, %bb.l ], [ %i.cm, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  br label %bb.ba

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.pr66.i = load ptr, ptr %19, align 8, !tbaa !53 ; 4 uses
  %.not.i.i = icmp eq ptr %.pr66.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = load ptr, ptr %.pr66.i, align 8, !tbaa !44 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pr66.i, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !50
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr66.i, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.o, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.cs = load i32, ptr %i.bb, align 4, !tbaa !200
  %i.ct = load i32, ptr %i.bd, align 8, !tbaa !199
  %i.cu = sub nsw i32 %i.cs, %i.ct                ; 4 uses
  %i.cv = icmp eq i32 %i.ao, 1
  br i1 %i.cv, label %.preheader.i.i.i, label %bb.v

.preheader.i.i.i:                                 ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.cw = icmp sgt i32 %i.cu, 0
  br i1 %i.cw, label %.lr.ph109.i.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

.lr.ph109.i.i.i:                                  ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.cu to i64
  br label %bb.q

bb.q:                                             ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i, %.lr.ph109.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph109.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i ] ; 4 uses
  %.val67.val.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !144 ; 3 uses
  %.val67.val68.i.i.i = load ptr, ptr %i.bq, align 8, !tbaa !201 ; 2 uses
  %i.cx = icmp ne ptr %.val67.val.i.i.i, null
  %i.cy = icmp eq ptr %.val67.val68.i.i.i, null
  %i.cz = or i1 %i.cx, %i.cy
  br i1 %i.cz, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i, label %bb.r, !prof !70

bb.r:                                             ; preds = %bb.q
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i: ; preds = %bb.q
  %i.da = ptrtoint ptr %.val67.val68.i.i.i to i64
  %i.db = ptrtoint ptr %.val67.val.i.i.i to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = sdiv exact i64 %i.dc, 200
  %i.de = icmp ugt i64 %i.dd, %indvars.iv.i.i.i
  br i1 %i.de, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i, label %bb.s, !prof !70

bb.s:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i.i.i.i
  %i.df = getelementptr inbounds nuw [200 x i8], ptr %.val67.val.i.i.i, i64 %indvars.iv.i.i.i ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 192
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !210
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i
  %i.dj = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_14ScalarTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.df, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i unwind label %.loopexit68.i

bb.u:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i.i.i.i
  %i.dk = invoke noundef i32 @_ZNK7xgboost4tree13WalkTreeMixInINS0_19MultiTargetTreeViewEE8MaxDepthEi(ptr noundef nonnull align 8 dereferenceable(193) %i.df, i32 noundef 0)
          to label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i unwind label %.loopexit68.i

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSU_.exit.i.i.i: ; preds = %bb.u, %bb.t
  %.sink.i.i.i.i.i.i = phi i32 [ %i.dj, %bb.t ], [ %i.dk, %bb.u ]
  %i.dl = load ptr, ptr %18, align 8, !tbaa !175
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i.i.i
  store i32 %.sink.i.i.i.i.i.i, ptr %i.dm, align 4, !tbaa !83
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond121.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond121.not.i.i.i, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i, label %bb.q, !llvm.loop !1570

bb.v:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.ao, ptr %i.c, align 4, !tbaa !83, !noalias !1579
  store i32 1, ptr %i.d, align 4, !tbaa !83, !noalias !1579
  %.not.i.i.i.i = icmp slt i32 %i.ao, 1
  br i1 %.not.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader91.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i: ; preds = %bb.v
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc40.i unwind label %.loopexit.split-lp69.i

.noexc40.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i
  %.pr.i.i.i = load ptr, ptr %15, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i37.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i37.i, label %.preheader91.i.i.i, label %bb.w

bb.w:                                             ; preds = %.noexc40.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.dn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc.i.i.i unwind label %bb.x
end_hunk_8
