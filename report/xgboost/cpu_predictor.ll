Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cpu_predictor?download=true
inline.NumInlined: 9576
inline.NumDeleted: 2555
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a
  br i1 %.not.i18.i.i.i203.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19.i.i.i204.i.i, label %bb.hb

bb.hb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit17.i.i.i201.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %143) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19.i.i.i204.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19.i.i.i204.i.i: ; preds = %bb.hb, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit17.i.i.i201.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit17.thread.i.i.i205.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #18
  br label %.invoke.i.i193.i.i

bb.hc:                                            ; preds = %bb.gz
  %i.ze = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i185.i.i unwind label %bb.he

bb.hd:                                            ; preds = %bb.gu
  %i.zf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i185.i.i unwind label %bb.he

.invoke.i.i193.i.i:                               ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19.i.i.i204.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit15.i.i.i191.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i214.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i208.i.i
  %i.zg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.rl) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS3_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSF_19MultiTargetTreeViewEEENS4_9CopyViewsEEEPNS4_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS2_6common15OptionalWeightsEEUlT_E_JiEEEvSV_DpT0_.exit.i.i.i.i unwind label %bb.hf

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.zh = landingpad { ptr, i32 }
          catch ptr null
  %i.zi = extractvalue { ptr, i32 } %i.zh, 0
  call void @__clang_call_terminate(ptr %i.zi) #35
  unreachable

_ZN4dmlc12OMPException3RunIZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS3_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSF_19MultiTargetTreeViewEEENS4_9CopyViewsEEEPNS4_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS2_6common15OptionalWeightsEEUlT_E_JiEEEvSV_DpT0_.exit.i.i.i.i: ; preds = %.invoke.i.i193.i.i, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i
  %indvars.iv.next.i.i194.i.i = add nuw nsw i64 %indvars.iv.i.i180.i.i, 1 ; 2 uses
  %exitcond116.not.i.i.i.i195.i.i = icmp eq i64 %indvars.iv.next.i.i194.i.i, %i.xx
  br i1 %exitcond116.not.i.i.i.i195.i.i, label %bb.hg, label %.lr.ph101.i.i.i.i179.i.i, !llvm.loop !659

bb.hf:                                            ; preds = %.invoke.i.i193.i.i
  %i.zj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i185.i.i

bb.hg:                                            ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS3_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSF_19MultiTargetTreeViewEEENS4_9CopyViewsEEEPNS4_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS2_6common15OptionalWeightsEEUlT_E_JiEEEvSV_DpT0_.exit.i.i.i.i
  %.pr85.pr.i.i.i.i196.i.i = load ptr, ptr %156, align 8, !tbaa !290 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %153)
  %.not.i78.i.i.i.i197.i.i = icmp eq ptr %.pr85.pr.i.i.i.i196.i.i, null
  br i1 %.not.i78.i.i.i.i197.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i177.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i198.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i198.i.i: ; preds = %bb.hg
  store ptr %.pr85.pr.i.i.i.i196.i.i, ptr %153, align 8, !tbaa !290
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %153) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %153) #32
          to label %bb.hh unwind label %bb.hi

bb.hh:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i198.i.i
  unreachable

bb.hi:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i198.i.i
  %i.zk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zl = load ptr, ptr %153, align 8, !tbaa !290
  %.not.i2.i.i.i.i.i199.i.i = icmp eq ptr %i.zl, null
  br i1 %.not.i2.i.i.i.i.i199.i.i, label %.body.i.i.i.i185.i.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %153) #18
  br label %.body.i.i.i.i185.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i177.i.i:   ; preds = %bb.hg, %.thread.i.i.i176.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %153)
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #18
  br label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i

.body.i.i.i.i185.i.i:                             ; preds = %bb.gx, %bb.hj, %bb.hi, %bb.hf, %bb.hd, %bb.hc
  %.pn64.i.i.i.i186.i.i = phi { ptr, i32 } [ %i.zk, %bb.hi ], [ %i.zk, %bb.hj ], [ %i.zj, %bb.hf ], [ %i.ze, %bb.hc ], [ %i.zf, %bb.hd ], [ %i.yn, %bb.gx ]
  %i.zm = load ptr, ptr %156, align 8, !tbaa !290
  %.not.i.i80.i.i.i.i187.i.i = icmp eq ptr %i.zm, null
  br i1 %.not.i.i80.i.i.i.i187.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i188.i.i, label %bb.hk

bb.hk:                                            ; preds = %.body.i.i.i.i185.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %156) #18
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i188.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i188.i.i: ; preds = %bb.hk, %.body.i.i.i.i185.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #18
  br label %.body.i.i87.i.i

bb.hl:                                            ; preds = %bb.gk
  %i.zn = landingpad { ptr, i32 }
          catch ptr null
  %i.zo = extractvalue { ptr, i32 } %i.zn, 0
  call void @__clang_call_terminate(ptr %i.zo) #35
  unreachable

bb.hm:                                            ; preds = %bb.fz, %bb.fw
  %.pn.pn.i.i156.i.i = phi { ptr, i32 } [ %.pn.i.i160.i.i, %bb.fz ], [ %i.vz, %bb.fw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #18
  br label %.body.i.i87.i.i

.loopexit66.i.i244.i.i:                           ; preds = %bb.gg, %bb.gf
  %lpad.loopexit68.i.i245.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i87.i.i

.loopexit.split-lp67.i.i218.i.i:                  ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i217.i.i
  %lpad.loopexit.split-lp69.i.i219.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i87.i.i

_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i: ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i177.i.i, %bb.fo
  %i.zp = phi ptr [ null, %bb.fo ], [ %i.ve, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i177.i.i ], [ %i.ve, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i ] ; 5 uses
  %i.zq = phi ptr [ null, %bb.fo ], [ %i.vf, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i177.i.i ], [ %i.vf, %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlT_E_clIiEEDaSS_.exit.i.i.i.i.i.i ] ; 5 uses
  %i.zr = uitofp i64 %spec.select.i.i.i.i73.i.i to double
  %i.zs = fmul nnan double %i.zr, 1.562500e-02
  %i.zt = call double @llvm.ceil.f64(double %i.zs)
  %i.zu = fptoui double %i.zt to i64              ; 3 uses
  %i.zv = icmp eq i32 %i.up, 1
  br i1 %i.zv, label %.preheader.i.i.i.i.i139.i.i, label %bb.hq

.preheader.i.i.i.i.i139.i.i:                      ; preds = %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i, %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.thread.i.i
  %i.zw = phi ptr [ %i.ve, %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.thread.i.i ], [ %i.zp, %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i ] ; 3 uses
  %i.zx = phi ptr [ %i.vf, %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.thread.i.i ], [ %i.zq, %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i ] ; 3 uses
  %i.zy = phi i64 [ %i.wp, %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.thread.i.i ], [ %i.zu, %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i ] ; 2 uses
  %.not115.i.i.i.i.i140.i.i = icmp eq i64 %i.zy, 0
  br i1 %.not115.i.i.i.i.i140.i.i, label %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i, label %.lr.ph108.i.i.i.i.i141.preheader.i.i

.lr.ph108.i.i.i.i.i141.preheader.i.i:             ; preds = %.preheader.i.i.i.i.i139.i.i
  %i.zz = trunc nuw i8 %i.uq to i1
  br label %.lr.ph108.i.i.i.i.i141.i.i

.lr.ph108.i.i.i.i.i141.i.i:                       ; preds = %.noexc45.i.i145.i.i, %.lr.ph108.i.i.i.i.i141.preheader.i.i
  %.0107.i.i.i.i.i142.i.i = phi i64 [ %i.abm, %.noexc45.i.i145.i.i ], [ 0, %.lr.ph108.i.i.i.i.i141.preheader.i.i ] ; 2 uses
  %i.aaa = shl i64 %.0107.i.i.i.i.i142.i.i, 6     ; 3 uses
  %i.aab = sub i64 %spec.select.i.i.i.i73.i.i, %i.aaa
  %.sroa.speculated.i259.i.i = call i64 @llvm.umin.i64(i64 %i.aab, i64 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #18
  %i.aac = add i64 %.sroa.speculated.i259.i.i, %i.aaa
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %139, i64 noundef %i.aaa, i64 noundef %i.aac)
          to label %.noexc273.i.i unwind label %.loopexit.i.i143.i.i

.noexc273.i.i:                                    ; preds = %.lr.ph108.i.i.i.i.i141.i.i
  %i.aad = load i64, ptr %i.ro, align 8, !tbaa !314
  %i.aae = load i64, ptr %139, align 8, !tbaa !315
  %i.aaf = sub i64 %i.aad, %i.aae                 ; 3 uses
  %.val.i.i260.i.i = load ptr, ptr %198, align 8, !tbaa !147 ; 5 uses
  %.val12.i.i261.i.i = load ptr, ptr %i.rt, align 8, !tbaa !148
  %i.aag = ptrtoint ptr %.val12.i.i261.i.i to i64
  %i.aah = ptrtoint ptr %.val.i.i260.i.i to i64
  %i.aai = sub i64 %i.aag, %i.aah
  %i.aaj = ashr exact i64 %i.aai, 5               ; 2 uses
  %i.aak = icmp eq i64 %i.aaf, -1
  br i1 %i.aak, label %.split.i.i.i.i263.i.i, label %bb.hn

bb.hn:                                            ; preds = %.noexc273.i.i
  %.not.i.i.i.i262.i.i = icmp ugt i64 %i.aaf, %i.aaj
  br i1 %.not.i.i.i.i262.i.i, label %bb.ho, label %.split.i.i.i.i263.i.i, !prof !173

bb.ho:                                            ; preds = %bb.hn
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i.i263.i.i:                            ; preds = %bb.hn, %.noexc273.i.i
  %i.aal = phi i64 [ %i.aaf, %bb.hn ], [ %i.aaj, %.noexc273.i.i ] ; 4 uses
  %i.aam = icmp ne ptr %.val.i.i260.i.i, null
  %i.aan = icmp eq i64 %i.aal, 0                  ; 2 uses
  %i.aao = or i1 %i.aam, %i.aan
  br i1 %i.aao, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i264.i.i, label %bb.hp, !prof !70

bb.hp:                                            ; preds = %.split.i.i.i.i263.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i264.i.i: ; preds = %.split.i.i.i.i263.i.i
  invoke void @_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %196, ptr noundef nonnull align 8 dereferenceable(16) %139, i32 noundef %i.ur, i64 %i.aal, ptr %.val.i.i260.i.i)
          to label %.noexc274.i.i unwind label %.loopexit.i.i143.i.i

.noexc274.i.i:                                    ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i264.i.i
  %i.aap = load i64, ptr %139, align 8, !tbaa !315 ; 2 uses
  %i.aaq = load i64, ptr %i.ri, align 8, !tbaa !312
  %i.aar = add i64 %i.aaq, %i.aap
  %i.aas = load i64, ptr %i.ro, align 8, !tbaa !314
  %i.aat = sub i64 %i.aas, %i.aap
  invoke fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.dk, i64 noundef %i.aar, i64 %i.aal, ptr %.val.i.i260.i.i, i64 noundef %i.aat, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %161, ptr noundef nonnull align 8 dereferenceable(24) %157, i1 noundef zeroext %i.zz, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %160)
          to label %.noexc275.i.i unwind label %.loopexit.i.i143.i.i

.noexc275.i.i:                                    ; preds = %.noexc274.i.i
  br i1 %i.aan, label %.noexc45.i.i145.i.i, label %.lr.ph.i.i.i265.i.i

.lr.ph.i.i.i265.i.i:                              ; preds = %.noexc275.i.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i271.i.i
  %.04.i.i.i266.i.i = phi i64 [ %i.abl, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i271.i.i ], [ 0, %.noexc275.i.i ] ; 2 uses
  %i.aau = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i260.i.i, i64 %.04.i.i.i266.i.i ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !167 ; 3 uses
  %i.aax = load ptr, ptr %i.aau, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i.i267.i.i = icmp eq ptr %i.aax, %i.aaw
  br i1 %.not6.i.i.i.i.i.i.i.i.i267.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i271.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader:        ; preds = %.lr.ph.i.i.i265.i.i
  %i.aay = ptrtoaddr ptr %i.aaw to i64
  %i.aaz = ptrtoaddr ptr %i.aax to i64
  %i.aba = add i64 %i.aay, -4
  %i.abb = sub i64 %i.aba, %i.aaz                 ; 2 uses
  %i.abc = lshr i64 %i.abb, 2
  %i.abd = add nuw nsw i64 %i.abc, 1              ; 2 uses
  %min.iters.check826 = icmp ult i64 %i.abb, 28
  br i1 %min.iters.check826, label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader870, label %vector.ph827

vector.ph827:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader
  %n.vec828 = and i64 %i.abd, 9223372036854775800 ; 3 uses
  %i.abe = shl i64 %n.vec828, 2
  %i.abf = getelementptr i8, ptr %i.aax, i64 %i.abe
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph827
  %index830 = phi i64 [ 0, %vector.ph827 ], [ %index.next832, %vector.body829 ] ; 2 uses
  %i.abg = shl i64 %index830, 2
  %next.gep831 = getelementptr i8, ptr %i.aax, i64 %i.abg ; 2 uses
  %i.abh = getelementptr i8, ptr %next.gep831, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep831, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.abh, align 4, !tbaa !72
  %index.next832 = add nuw i64 %index830, 8       ; 2 uses
  %i.abi = icmp eq i64 %index.next832, %n.vec828
  br i1 %i.abi, label %middle.block833, label %vector.body829, !llvm.loop !660

middle.block833:                                  ; preds = %vector.body829
  %cmp.n834 = icmp eq i64 %i.abd, %n.vec828
  br i1 %cmp.n834, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i271.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader870

.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader870:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader, %middle.block833
  %.07.i.i.i.i.i.i.i.i.i269.i.i.ph = phi ptr [ %i.aax, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader ], [ %i.abf, %middle.block833 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i

.lr.ph.i.i.i.i.i.i.i.i.i268.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader870, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i
  %.07.i.i.i.i.i.i.i.i.i269.i.i = phi ptr [ %i.abj, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i ], [ %.07.i.i.i.i.i.i.i.i.i269.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i.preheader870 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i.i269.i.i, align 4, !tbaa !72
  %i.abj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i269.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i270.i.i = icmp eq ptr %i.abj, %i.aaw
  br i1 %.not.i.i.i.i.i.i.i.i.i270.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i271.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i, !llvm.loop !661

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i271.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i.i, %middle.block833, %.lr.ph.i.i.i265.i.i
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aau, i64 24
  store i8 1, ptr %i.abk, align 8, !tbaa !319
  %i.abl = add nuw i64 %.04.i.i.i266.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i272.i.i = icmp eq i64 %i.abl, %i.aal
  br i1 %exitcond.not.i.i.i272.i.i, label %.noexc45.i.i145.i.i, label %.lr.ph.i.i.i265.i.i, !llvm.loop !3

.noexc45.i.i145.i.i:                              ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i271.i.i, %.noexc275.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #18
  %i.abm = add nuw i64 %.0107.i.i.i.i.i142.i.i, 1 ; 2 uses
  %exitcond126.not.i.i.i.i.i146.i.i = icmp eq i64 %i.abm, %i.zy
  br i1 %exitcond126.not.i.i.i.i.i146.i.i, label %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i, label %.lr.ph108.i.i.i.i.i141.i.i, !llvm.loop !662

bb.hq:                                            ; preds = %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvST_iOS8_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i32 %i.up, ptr %i.ae, align 4, !tbaa !83, !noalias !793
  store i32 1, ptr %i.af, align 4, !tbaa !83, !noalias !793
  %.not.i.i.i.i.i.i74.i.i = icmp slt i32 %i.up, 1
  br i1 %.not.i.i.i.i.i.i74.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i120.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i75.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i75.i.i: ; preds = %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.preheader90.i.i.i.i.i76.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i120.i.i: ; preds = %bb.hq
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %150, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.af)
          to label %.noexc46.i.i123.i.i unwind label %.loopexit.split-lp.i.i121.i.i

.noexc46.i.i123.i.i:                              ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i120.i.i
  %.pr.i.i.i.i.i124.i.i = load ptr, ptr %150, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.not.i.i.i44.i.i125.i.i = icmp eq ptr %.pr.i.i.i.i.i124.i.i, null
  br i1 %.not.i.i.i44.i.i125.i.i, label %.preheader90.i.i.i.i.i76.i.i, label %bb.hr

bb.hr:                                            ; preds = %.noexc46.i.i123.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #18
  %i.abn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %151)
          to label %.noexc.i.i.i.i.i127.i.i unwind label %bb.hs

.noexc.i.i.i.i.i127.i.i:                          ; preds = %bb.hr
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.abn, ptr noundef nonnull @.str.52, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i128.i.i unwind label %bb.hs

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i128.i.i: ; preds = %.noexc.i.i.i.i.i127.i.i
  %i.abo = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %151)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i129.i.i unwind label %bb.ht ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i129.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i128.i.i
  %i.abp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abo, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i130.i.i unwind label %bb.ht ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i130.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i129.i.i
  %i.abq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abo, ptr noundef nonnull @.str.53, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i.i131.i.i unwind label %bb.ht ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i.i131.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i130.i.i
  %i.abr = load ptr, ptr %150, align 8, !tbaa !53 ; 2 uses
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !44
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !43
  %i.abv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abo, ptr noundef %i.abs, i64 noundef %i.abu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i132.i.i unwind label %bb.ht

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i132.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i.i131.i.i
  %i.abw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abv, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i.i133.i.i unwind label %bb.ht ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i.i133.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i132.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %151)
          to label %bb.hv unwind label %bb.hs

bb.hs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i.i133.i.i, %.noexc.i.i.i.i.i127.i.i, %bb.hr
  %i.abx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.ht:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i132.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i.i131.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i130.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i129.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i128.i.i
  %i.aby = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %151)
          to label %bb.hu unwind label %bb.it

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %.pn.i.i.i.i.i126.i.i = phi { ptr, i32 } [ %i.abx, %bb.hs ], [ %i.aby, %bb.ht ]
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %150) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #18
  br label %.body.i.i87.i.i

bb.hv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i.i133.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #18
  %.pr82.i.i.i.i.i134.i.i = load ptr, ptr %150, align 8, !tbaa !53 ; 4 uses
  %.not.i76.i.i.i.i.i135.i.i = icmp eq ptr %.pr82.i.i.i.i.i134.i.i, null
  br i1 %.not.i76.i.i.i.i.i135.i.i, label %.preheader90.i.i.i.i.i76.i.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.abz = load ptr, ptr %.pr82.i.i.i.i.i134.i.i, align 8, !tbaa !44 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i.i134.i.i, i64 16 ; 2 uses
  %i.acb = icmp eq ptr %i.abz, %i.aca
  br i1 %i.acb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i137.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i136.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i136.i.i: ; preds = %bb.hw
  %i.acc = load i64, ptr %i.aca, align 8, !tbaa !50
  %i.acd = add i64 %i.acc, 1
  call void @_ZdlPvm(ptr noundef %i.abz, i64 noundef %i.acd) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i137.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i137.i.i: ; preds = %bb.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i136.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i.i134.i.i, i64 noundef 32) #34
  br label %.preheader90.i.i.i.i.i76.i.i

.preheader90.i.i.i.i.i76.i.i:                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i137.i.i, %bb.hv, %.noexc46.i.i123.i.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i75.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %152, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i.i77.i.i = icmp eq i64 %i.zu, 0
  br i1 %.not111.i.i.i.i.i77.i.i, label %.thread.i.i.i.i119.i.i, label %.lr.ph100.i.i.preheader.i.i.i78.i.i

.lr.ph100.i.i.preheader.i.i.i78.i.i:              ; preds = %.preheader90.i.i.i.i.i76.i.i
  %i.ace = trunc nuw i8 %i.uq to i1
  br label %.lr.ph100.i.i.i.i.i79.i.i

.thread.i.i.i.i119.i.i:                           ; preds = %.preheader90.i.i.i.i.i76.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %149)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i.i101.i.i

.lr.ph100.i.i.i.i.i79.i.i:                        ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i, %.lr.ph100.i.i.preheader.i.i.i78.i.i
  %.06099.i.i.i.i.i80.i.i = phi i64 [ %i.aen, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i.i78.i.i ] ; 2 uses
  %i.acf = shl i64 %.06099.i.i.i.i.i80.i.i, 6     ; 3 uses
  %i.acg = sub i64 %spec.select.i.i.i.i73.i.i, %i.acf
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.acg, i64 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #18
  %i.ach = add i64 %.sroa.speculated.i.i.i, %i.acf
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %140, i64 noundef %i.acf, i64 noundef %i.ach)
          to label %.noexc256.i.i unwind label %bb.ia

.noexc256.i.i:                                    ; preds = %.lr.ph100.i.i.i.i.i79.i.i
  %i.aci = load i64, ptr %i.rn, align 8, !tbaa !314
  %i.acj = load i64, ptr %140, align 8, !tbaa !315
  %i.ack = sub i64 %i.aci, %i.acj                 ; 3 uses
  %.val.i.i254.i.i = load ptr, ptr %198, align 8, !tbaa !147 ; 5 uses
  %.val12.i.i.i.i = load ptr, ptr %i.rt, align 8, !tbaa !148
  %i.acl = ptrtoint ptr %.val12.i.i.i.i to i64
  %i.acm = ptrtoint ptr %.val.i.i254.i.i to i64
  %i.acn = sub i64 %i.acl, %i.acm
  %i.aco = ashr exact i64 %i.acn, 5               ; 2 uses
  %i.acp = icmp eq i64 %i.ack, -1
  br i1 %i.acp, label %.split.i.i.i.i.i.i, label %bb.hx

bb.hx:                                            ; preds = %.noexc256.i.i
  %.not.i.i.i.i255.i.i = icmp ugt i64 %i.ack, %i.aco
  br i1 %.not.i.i.i.i255.i.i, label %bb.hy, label %.split.i.i.i.i.i.i, !prof !173

bb.hy:                                            ; preds = %bb.hx
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i.i.i.i:                               ; preds = %bb.hx, %.noexc256.i.i
  %i.acq = phi i64 [ %i.ack, %bb.hx ], [ %i.aco, %.noexc256.i.i ] ; 4 uses
  %i.acr = icmp ne ptr %.val.i.i254.i.i, null
  %i.acs = icmp eq i64 %i.acq, 0                  ; 2 uses
  %i.act = or i1 %i.acr, %i.acs
  br i1 %i.act, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i.i.i, label %bb.hz, !prof !70

bb.hz:                                            ; preds = %.split.i.i.i.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i.i.i: ; preds = %.split.i.i.i.i.i.i
  invoke void @_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %196, ptr noundef nonnull align 8 dereferenceable(16) %140, i32 noundef %i.ur, i64 %i.acq, ptr %.val.i.i254.i.i)
          to label %.noexc257.i.i unwind label %bb.ia

.noexc257.i.i:                                    ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i.i.i
  %i.acu = load i64, ptr %140, align 8, !tbaa !315 ; 2 uses
  %i.acv = load i64, ptr %i.ri, align 8, !tbaa !312
  %i.acw = add i64 %i.acv, %i.acu
  %i.acx = load i64, ptr %i.rn, align 8, !tbaa !314
  %i.acy = sub i64 %i.acx, %i.acu
  invoke fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.dk, i64 noundef %i.acw, i64 %i.acq, ptr %.val.i.i254.i.i, i64 noundef %i.acy, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %161, ptr noundef nonnull align 8 dereferenceable(24) %157, i1 noundef zeroext %i.ace, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %160)
          to label %.noexc258.i.i unwind label %bb.ia

.noexc258.i.i:                                    ; preds = %.noexc257.i.i
  br i1 %i.acs, label %_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258.i.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i
  %.04.i.i.i.i.i = phi i64 [ %i.adq, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i ], [ 0, %.noexc258.i.i ] ; 2 uses
  %i.acz = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i254.i.i, i64 %.04.i.i.i.i.i ; 3 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !167 ; 3 uses
  %i.adc = load ptr, ptr %i.acz, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.adc, %i.adb
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.lr.ph.i.i.i.i.i
  %i.add = ptrtoaddr ptr %i.adb to i64
  %i.ade = ptrtoaddr ptr %i.adc to i64
  %i.adf = add i64 %i.add, -4
  %i.adg = sub i64 %i.adf, %i.ade                 ; 2 uses
  %i.adh = lshr i64 %i.adg, 2
  %i.adi = add nuw nsw i64 %i.adh, 1              ; 2 uses
  %min.iters.check837 = icmp ult i64 %i.adg, 28
  br i1 %min.iters.check837, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader871, label %vector.ph838

vector.ph838:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec839 = and i64 %i.adi, 9223372036854775800 ; 3 uses
  %i.adj = shl i64 %n.vec839, 2
  %i.adk = getelementptr i8, ptr %i.adc, i64 %i.adj
  br label %vector.body840

vector.body840:                                   ; preds = %vector.body840, %vector.ph838
  %index841 = phi i64 [ 0, %vector.ph838 ], [ %index.next843, %vector.body840 ] ; 2 uses
  %i.adl = shl i64 %index841, 2
  %next.gep842 = getelementptr i8, ptr %i.adc, i64 %i.adl ; 2 uses
  %i.adm = getelementptr i8, ptr %next.gep842, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep842, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.adm, align 4, !tbaa !72
  %index.next843 = add nuw i64 %index841, 8       ; 2 uses
  %i.adn = icmp eq i64 %index.next843, %n.vec839
  br i1 %i.adn, label %middle.block844, label %vector.body840, !llvm.loop !665

middle.block844:                                  ; preds = %vector.body840
  %cmp.n845 = icmp eq i64 %i.adi, %n.vec839
  br i1 %cmp.n845, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader871

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader871:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block844
  %.07.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.adc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.adk, %middle.block844 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader871, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ado, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader871 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.ado = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ado, %i.adb
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !666

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block844, %.lr.ph.i.i.i.i.i
  %i.adp = getelementptr inbounds nuw i8, ptr %i.acz, i64 24
  store i8 1, ptr %i.adp, align 8, !tbaa !319
  %i.adq = add nuw i64 %.04.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.adq, %i.acq
  br i1 %exitcond.not.i.i.i.i.i, label %_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_.exit.i.i: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i, %.noexc258.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #18
  br label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i

bb.ia:                                            ; preds = %.noexc257.i.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i.i.i, %.lr.ph100.i.i.i.i.i79.i.i
  %i.adr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ads = extractvalue { ptr, i32 } %i.adr, 0    ; 2 uses
  %i.adt = extractvalue { ptr, i32 } %i.adr, 1    ; 2 uses
  %i.adu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.adv = icmp eq i32 %i.adt, %i.adu
  br i1 %i.adv, label %bb.ib, label %bb.if

bb.ib:                                            ; preds = %bb.ia
  %i.adw = call ptr @__cxa_begin_catch(ptr %i.ads) #18 ; 0 uses
  %i.adx = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.rm) #18 ; 2 uses
  %.not.i.i.i3.i.i.i109.i.i = icmp eq i32 %i.adx, 0
  br i1 %.not.i.i.i3.i.i.i109.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i111.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.adx) #32
          to label %.noexc.i.i42.i.i110.i.i unwind label %bb.il

.noexc.i.i42.i.i110.i.i:                          ; preds = %bb.ic
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i111.i.i: ; preds = %bb.ib
  %i.ady = load ptr, ptr %152, align 8, !tbaa !290
  %.not22.i.i.i.i112.i.i = icmp eq ptr %i.ady, null
  br i1 %.not22.i.i.i.i112.i.i, label %bb.id, label %.sink.split.i.i.i.i95.i.i

bb.id:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i111.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %148) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #18
  %i.adz = load ptr, ptr %148, align 8, !tbaa !290
  store ptr null, ptr %148, align 8, !tbaa !290
  %i.aea = load ptr, ptr %152, align 8, !tbaa !290 ; 2 uses
  store ptr %i.aea, ptr %146, align 8, !tbaa !290
  store ptr %i.adz, ptr %152, align 8, !tbaa !290
  %.not.i.i9.i.i.i.i113.i.i = icmp eq ptr %i.aea, null
  br i1 %.not.i.i9.i.i.i.i113.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i.i118.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i114.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i.i118.i.i: ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i117.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i114.i.i: ; preds = %bb.id
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %146) #18
  %.pr.i.i43.i.i115.i.i = load ptr, ptr %148, align 8, !tbaa !290
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #18
  %.not.i.i4.i.i.i116.i.i = icmp eq ptr %.pr.i.i43.i.i115.i.i, null
  br i1 %.not.i.i4.i.i.i116.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i117.i.i, label %bb.ie

bb.ie:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i114.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %148) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i117.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i117.i.i: ; preds = %bb.ie, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i114.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i.i118.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #18
  br label %.sink.split.i.i.i.i95.i.i

bb.if:                                            ; preds = %bb.ia
  %i.aeb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.aec = icmp eq i32 %i.adt, %i.aeb
  br i1 %i.aec, label %bb.ig, label %.body.i.i.i.i.i81.i.i

bb.ig:                                            ; preds = %bb.if
  %i.aed = call ptr @__cxa_begin_catch(ptr %i.ads) #18 ; 0 uses
  %i.aee = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.rm) #18 ; 2 uses
  %.not.i.i10.i.i.i.i91.i.i = icmp eq i32 %i.aee, 0
  br i1 %.not.i.i10.i.i.i.i91.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i.i93.i.i, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.aee) #32
          to label %.noexc11.i.i.i.i92.i.i unwind label %bb.ik

.noexc11.i.i.i.i92.i.i:                           ; preds = %bb.ih
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i.i93.i.i: ; preds = %bb.ig
  %i.aef = load ptr, ptr %152, align 8, !tbaa !290
  %.not.i.i41.i.i94.i.i = icmp eq ptr %i.aef, null
  br i1 %.not.i.i41.i.i94.i.i, label %bb.ii, label %.sink.split.i.i.i.i95.i.i

bb.ii:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i.i93.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %147) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #18
  %i.aeg = load ptr, ptr %147, align 8, !tbaa !290
  store ptr null, ptr %147, align 8, !tbaa !290
  %i.aeh = load ptr, ptr %152, align 8, !tbaa !290 ; 2 uses
  store ptr %i.aeh, ptr %145, align 8, !tbaa !290
  store ptr %i.aeg, ptr %152, align 8, !tbaa !290
  %.not.i.i13.i.i.i.i103.i.i = icmp eq ptr %i.aeh, null
  br i1 %.not.i.i13.i.i.i.i103.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i.i108.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i.i104.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i.i108.i.i: ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i107.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i.i104.i.i: ; preds = %bb.ii
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %145) #18
  %.pr20.i.i.i.i105.i.i = load ptr, ptr %147, align 8, !tbaa !290
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #18
  %.not.i15.i.i.i.i106.i.i = icmp eq ptr %.pr20.i.i.i.i105.i.i, null
  br i1 %.not.i15.i.i.i.i106.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i107.i.i, label %bb.ij

bb.ij:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i.i104.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %147) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i107.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i107.i.i: ; preds = %bb.ij, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i.i104.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i.i108.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #18
  br label %.sink.split.i.i.i.i95.i.i

bb.ik:                                            ; preds = %bb.ih
  %i.aei = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i.i81.i.i unwind label %bb.im

bb.il:                                            ; preds = %bb.ic
  %i.aej = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i.i81.i.i unwind label %bb.im

.sink.split.i.i.i.i95.i.i:                        ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i107.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i.i93.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i117.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i111.i.i
  %i.aek = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.rm) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i unwind label %bb.in

bb.im:                                            ; preds = %bb.il, %bb.ik
  %i.ael = landingpad { ptr, i32 }
          catch ptr null
  %i.aem = extractvalue { ptr, i32 } %i.ael, 0
  call void @__clang_call_terminate(ptr %i.aem) #35
  unreachable

_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i95.i.i, %_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_.exit.i.i
  %i.aen = add nuw i64 %.06099.i.i.i.i.i80.i.i, 1 ; 2 uses
  %exitcond122.not.i.i.i.i.i96.i.i = icmp eq i64 %i.aen, %i.zu
  br i1 %exitcond122.not.i.i.i.i.i96.i.i, label %bb.io, label %.lr.ph100.i.i.i.i.i79.i.i, !llvm.loop !667

bb.in:                                            ; preds = %.sink.split.i.i.i.i95.i.i
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i81.i.i

bb.io:                                            ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i
  %.pr84.pr.i.i.i.i.i97.i.i = load ptr, ptr %152, align 8, !tbaa !290 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %149)
  %.not.i77.i.i.i.i.i98.i.i = icmp eq ptr %.pr84.pr.i.i.i.i.i97.i.i, null
end_hunk_0
begin_hunk_1_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a
bb.xa:                                            ; preds = %bb.wy
  %i.bsi = atomicrmw volatile add ptr %i.brv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i65.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i65.i.i: ; preds = %bb.xa, %bb.wz
  %.0.i.i.i.i.i66.i.i = phi i32 [ %i.bry, %bb.wz ], [ %i.bsi, %bb.xa ]
  %i.bsj = icmp eq i32 %.0.i.i.i.i.i66.i.i, 1
  br i1 %i.bsj, label %bb.xb, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit67.i.i, !prof !173

bb.xb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i65.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bru) #18
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit67.i.i

_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit67.i.i: ; preds = %bb.xb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i65.i.i, %bb.wx, %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit.i.i501
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #18
  %i.bsk = load ptr, ptr %i.bqm, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i68.i.i = icmp eq ptr %i.bsk, null
  br i1 %.not.i.i.i.i68.i.i, label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i502, label %bb.xc

bb.xc:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit67.i.i
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsk, i64 8 ; 4 uses
  %i.bsm = load atomic i64, ptr %i.bsl acquire, align 8 ; 2 uses
  %i.bsn = icmp eq i64 %i.bsm, 4294967297
  %i.bso = trunc i64 %i.bsm to i32                ; 2 uses
  br i1 %i.bsn, label %bb.xd, label %bb.xe

bb.xd:                                            ; preds = %bb.xc
  store i32 0, ptr %i.bsl, align 8, !tbaa !242
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bsk, i64 12
  store i32 0, ptr %i.bsp, align 4, !tbaa !243
  %i.bsq = load ptr, ptr %i.bsk, align 8, !tbaa !64
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 16
  %i.bss = load ptr, ptr %i.bsr, align 8
  call void %i.bss(ptr noundef nonnull align 8 dereferenceable(16) %i.bsk) #18, !inline_history !733
  %i.bst = load ptr, ptr %i.bsk, align 8, !tbaa !64
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bst, i64 24
  %i.bsv = load ptr, ptr %i.bsu, align 8
  call void %i.bsv(ptr noundef nonnull align 8 dereferenceable(16) %i.bsk) #18, !inline_history !733
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i502

bb.xe:                                            ; preds = %bb.xc
  %i.bsw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i69.i.i = icmp eq i8 %i.bsw, 0
  br i1 %.not.i.i.i.i.i69.i.i, label %bb.xg, label %bb.xf

bb.xf:                                            ; preds = %bb.xe
  %i.bsx = add nsw i32 %i.bso, -1
  store i32 %i.bsx, ptr %i.bsl, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70.i.i

bb.xg:                                            ; preds = %bb.xe
  %i.bsy = atomicrmw volatile add ptr %i.bsl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70.i.i: ; preds = %bb.xg, %bb.xf
  %.0.i.i.i.i.i.i71.i.i = phi i32 [ %i.bso, %bb.xf ], [ %i.bsy, %bb.xg ]
  %i.bsz = icmp eq i32 %.0.i.i.i.i.i.i71.i.i, 1
  br i1 %i.bsz, label %bb.xh, label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i502, !prof !173

bb.xh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bsk) #18
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i502

_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i502: ; preds = %bb.xh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70.i.i, %bb.xd, %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit67.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #18
  br label %bb.yw

bb.xi:                                            ; preds = %_ZN7xgboost6common13ParallelFor1dILm1EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i, %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i437
  %i.bta = landingpad { ptr, i32 }
          cleanup
  br label %bb.yv

bb.xj:                                            ; preds = %bb.wo
  %i.btb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7xgboost13BatchIteratorINS_10SparsePageEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %76)
          to label %bb.xk unwind label %bb.yt     ; 3 uses

bb.xk:                                            ; preds = %bb.xj
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #18
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 8
  %i.btd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.btc)
          to label %.noexc72.i.i unwind label %bb.yu ; 2 uses

.noexc72.i.i:                                     ; preds = %bb.xk
  %i.bte = getelementptr inbounds nuw i8, ptr %i.btd, i64 8
  %i.btf = load ptr, ptr %i.bte, align 8, !tbaa !295, !noalias !816
  %i.btg = load ptr, ptr %i.btd, align 8, !tbaa !296, !noalias !816 ; 2 uses
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btb, i64 16
  %i.bti = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bth)
          to label %bb.xl unwind label %bb.yu     ; 2 uses

bb.xl:                                            ; preds = %.noexc72.i.i
  %i.btj = ptrtoint ptr %i.btf to i64
  %i.btk = ptrtoint ptr %i.btg to i64
  %i.btl = sub i64 %i.btj, %i.btk
  %i.btm = ashr exact i64 %i.btl, 3               ; 2 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %i.bti, i64 8
  %i.bto = load ptr, ptr %i.btn, align 8, !tbaa !299, !noalias !816
  %i.btp = load ptr, ptr %i.bti, align 8, !tbaa !300, !noalias !816 ; 2 uses
  %i.btq = ptrtoint ptr %i.bto to i64
  %i.btr = ptrtoint ptr %i.btp to i64
  %i.bts = sub i64 %i.btq, %i.btr
  %i.btt = ashr exact i64 %i.bts, 3
  %i.btu = getelementptr inbounds nuw i8, ptr %i.btb, i64 24
  %i.btv = load i64, ptr %i.btu, align 8, !tbaa !306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0178.i.i, i64 32, i1 false)
  store i64 %i.btm, ptr %i.bqu, align 8, !tbaa !59
  store ptr %i.btg, ptr %.sroa.4181.0..sroa_idx.i.i, align 8, !tbaa !128
  store i64 %i.btt, ptr %.sroa.5.0..sroa_idx.i.i435, align 8, !tbaa !59
  store ptr %i.btp, ptr %.sroa.6.0..sroa_idx.i.i436, align 8, !tbaa !307
  store i64 %i.btv, ptr %i.bqv, align 8, !tbaa !312
  %i.btw = load i32, ptr %i.bhx, align 4, !tbaa !83 ; 3 uses
  %i.btx = load i8, ptr %i.bib, align 1, !tbaa !82, !range !140, !noundef !141 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %53, ptr noundef nonnull align 8 dereferenceable(72) %i.bid, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull align 8 dereferenceable(24) %i.bif, i64 24, i1 false)
  %spec.select.i.i.i.i74.i.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.btm, i64 1) ; 3 uses
  %i.bty = load i32, ptr %i.bqz, align 4, !tbaa !288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %i.btz = uitofp i64 %spec.select.i.i.i.i74.i.i to double
  %i.bua = fptoui double %i.btz to i64            ; 4 uses
  %i.bub = icmp eq i32 %i.btw, 1
  br i1 %i.bub, label %.preheader.i.i.i.i.i138.i.i493, label %bb.xp

.preheader.i.i.i.i.i138.i.i493:                   ; preds = %bb.xl
  %.not115.i.i.i.i.i139.i.i494 = icmp eq i64 %i.bua, 0
  br i1 %.not115.i.i.i.i.i139.i.i494, label %_ZN7xgboost6common13ParallelFor1dILm1EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i, label %.lr.ph108.i.i.i.i.i140.preheader.i.i

.lr.ph108.i.i.i.i.i140.preheader.i.i:             ; preds = %.preheader.i.i.i.i.i138.i.i493
  %i.buc = trunc nuw i8 %i.btx to i1
  br label %.lr.ph108.i.i.i.i.i140.i.i495

.lr.ph108.i.i.i.i.i140.i.i495:                    ; preds = %.noexc.i.i144.i.i, %.lr.ph108.i.i.i.i.i140.preheader.i.i
  %.0107.i.i.i.i.i141.i.i496 = phi i64 [ %i.bvo, %.noexc.i.i144.i.i ], [ 0, %.lr.ph108.i.i.i.i.i140.preheader.i.i ] ; 4 uses
  %i.bud = icmp ne i64 %spec.select.i.i.i.i74.i.i, %.0107.i.i.i.i.i141.i.i496
  %.sroa.speculated.i152.i.i = zext i1 %i.bud to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  %i.bue = add i64 %.0107.i.i.i.i.i141.i.i496, %.sroa.speculated.i152.i.i
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %41, i64 noundef %.0107.i.i.i.i.i141.i.i496, i64 noundef %i.bue)
          to label %.noexc166.i.i unwind label %.loopexit.i.i142.i.i497

.noexc166.i.i:                                    ; preds = %.lr.ph108.i.i.i.i.i140.i.i495
  %i.buf = load i64, ptr %i.bqy, align 8, !tbaa !314
  %i.bug = load i64, ptr %41, align 8, !tbaa !315
  %i.buh = sub i64 %i.buf, %i.bug                 ; 3 uses
  %.val.i.i153.i.i499 = load ptr, ptr %80, align 8, !tbaa !147 ; 5 uses
  %.val12.i.i154.i.i = load ptr, ptr %i.bra, align 8, !tbaa !148
  %i.bui = ptrtoint ptr %.val12.i.i154.i.i to i64
  %i.buj = ptrtoint ptr %.val.i.i153.i.i499 to i64
  %i.buk = sub i64 %i.bui, %i.buj
  %i.bul = ashr exact i64 %i.buk, 5               ; 2 uses
  %i.bum = icmp eq i64 %i.buh, -1
  br i1 %i.bum, label %.split.i.i.i.i156.i.i, label %bb.xm

bb.xm:                                            ; preds = %.noexc166.i.i
  %.not.i.i.i.i155.i.i = icmp ugt i64 %i.buh, %i.bul
  br i1 %.not.i.i.i.i155.i.i, label %bb.xn, label %.split.i.i.i.i156.i.i, !prof !173

bb.xn:                                            ; preds = %bb.xm
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i.i156.i.i:                            ; preds = %bb.xm, %.noexc166.i.i
  %i.bun = phi i64 [ %i.buh, %bb.xm ], [ %i.bul, %.noexc166.i.i ] ; 4 uses
  %i.buo = icmp ne ptr %.val.i.i153.i.i499, null
  %i.bup = icmp eq i64 %i.bun, 0                  ; 2 uses
  %i.buq = or i1 %i.buo, %i.bup
  br i1 %i.buq, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i.i157.i.i, label %bb.xo, !prof !70

bb.xo:                                            ; preds = %.split.i.i.i.i156.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i.i157.i.i: ; preds = %.split.i.i.i.i156.i.i
  invoke void @_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %78, ptr noundef nonnull align 8 dereferenceable(16) %41, i32 noundef %i.bty, i64 %i.bun, ptr %.val.i.i153.i.i499)
          to label %.noexc167.i.i unwind label %.loopexit.i.i142.i.i497

.noexc167.i.i:                                    ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i.i157.i.i
  %i.bur = load i64, ptr %41, align 8, !tbaa !315 ; 2 uses
  %i.bus = load i64, ptr %i.bqv, align 8, !tbaa !312
  %i.but = add i64 %i.bus, %i.bur
  %i.buu = load i64, ptr %i.bqy, align 8, !tbaa !314
  %i.buv = sub i64 %i.buu, %i.bur
  invoke fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.bhz, i64 noundef %i.but, i64 %i.bun, ptr %.val.i.i153.i.i499, i64 noundef %i.buv, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %53, ptr noundef nonnull align 8 dereferenceable(24) %51, i1 noundef zeroext %i.buc, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %52)
          to label %.noexc168.i.i unwind label %.loopexit.i.i142.i.i497

.noexc168.i.i:                                    ; preds = %.noexc167.i.i
  br i1 %i.bup, label %.noexc.i.i144.i.i, label %.lr.ph.i.i.i158.i.i

.lr.ph.i.i.i158.i.i:                              ; preds = %.noexc168.i.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i164.i.i
  %.04.i.i.i159.i.i = phi i64 [ %i.bvn, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i164.i.i ], [ 0, %.noexc168.i.i ] ; 2 uses
  %i.buw = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i153.i.i499, i64 %.04.i.i.i159.i.i ; 3 uses
  %i.bux = getelementptr inbounds nuw i8, ptr %i.buw, i64 8
  %i.buy = load ptr, ptr %i.bux, align 8, !tbaa !167 ; 3 uses
  %i.buz = load ptr, ptr %i.buw, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i.i160.i.i = icmp eq ptr %i.buz, %i.buy
  br i1 %.not6.i.i.i.i.i.i.i.i.i160.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i164.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i161.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i161.i.i.preheader:        ; preds = %.lr.ph.i.i.i158.i.i
  %i.bva = ptrtoaddr ptr %i.buy to i64
  %i.bvb = ptrtoaddr ptr %i.buz to i64
  %i.bvc = add i64 %i.bva, -4
  %i.bvd = sub i64 %i.bvc, %i.bvb                 ; 2 uses
  %i.bve = lshr i64 %i.bvd, 2
  %i.bvf = add nuw nsw i64 %i.bve, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.bvd, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i161.i.i.preheader968, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i161.i.i.preheader
  %n.vec = and i64 %i.bvf, 9223372036854775800    ; 3 uses
  %i.bvg = shl i64 %n.vec, 2
  %i.bvh = getelementptr i8, ptr %i.buz, i64 %i.bvg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bvi = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.buz, i64 %i.bvi ; 2 uses
  %i.bvj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.bvj, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bvk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bvk, label %middle.block, label %vector.body, !llvm.loop !736

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bvf, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i164.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i161.i.i.preheader968

.lr.ph.i.i.i.i.i.i.i.i.i161.i.i.preheader968:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i161.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.i.i162.i.i.ph = phi ptr [ %i.buz, %.lr.ph.i.i.i.i.i.i.i.i.i161.i.i.preheader ], [ %i.bvh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i161.i.i

.lr.ph.i.i.i.i.i.i.i.i.i161.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i161.i.i.preheader968, %.lr.ph.i.i.i.i.i.i.i.i.i161.i.i
  %.07.i.i.i.i.i.i.i.i.i162.i.i = phi ptr [ %i.bvl, %.lr.ph.i.i.i.i.i.i.i.i.i161.i.i ], [ %.07.i.i.i.i.i.i.i.i.i162.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i161.i.i.preheader968 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i.i162.i.i, align 4, !tbaa !72
  %i.bvl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i163.i.i = icmp eq ptr %i.bvl, %i.buy
  br i1 %.not.i.i.i.i.i.i.i.i.i163.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i164.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i161.i.i, !llvm.loop !737

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i164.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i161.i.i, %middle.block, %.lr.ph.i.i.i158.i.i
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.buw, i64 24
  store i8 1, ptr %i.bvm, align 8, !tbaa !319
  %i.bvn = add nuw i64 %.04.i.i.i159.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i165.i.i = icmp eq i64 %i.bvn, %i.bun
  br i1 %exitcond.not.i.i.i165.i.i, label %.noexc.i.i144.i.i, label %.lr.ph.i.i.i158.i.i, !llvm.loop !3

.noexc.i.i144.i.i:                                ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i164.i.i, %.noexc168.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  %i.bvo = add nuw i64 %.0107.i.i.i.i.i141.i.i496, 1 ; 2 uses
  %exitcond126.not.i.i.i.i.i145.i.i500 = icmp eq i64 %i.bvo, %i.bua
  br i1 %exitcond126.not.i.i.i.i.i145.i.i500, label %_ZN7xgboost6common13ParallelFor1dILm1EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i, label %.lr.ph108.i.i.i.i.i140.i.i495, !llvm.loop !738

bb.xp:                                            ; preds = %bb.xl
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %i.btw, ptr %i.i, align 4, !tbaa !83, !noalias !817
  store i32 1, ptr %i.j, align 4, !tbaa !83, !noalias !817
  %.not.i.i.i.i.i.i75.i.i = icmp slt i32 %i.btw, 1
  br i1 %.not.i.i.i.i.i.i75.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i119.i.i476, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i76.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i76.i.i: ; preds = %bb.xp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.preheader90.i.i.i.i.i77.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i119.i.i476: ; preds = %bb.xp
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %48, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %.noexc9.i.i122.i.i unwind label %.loopexit.split-lp.i.i120.i.i477

.noexc9.i.i122.i.i:                               ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i119.i.i476
  %.pr.i.i.i.i.i123.i.i479 = load ptr, ptr %48, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not.i.i.i.i.i124.i.i = icmp eq ptr %.pr.i.i.i.i.i123.i.i479, null
  br i1 %.not.i.i.i.i.i124.i.i, label %.preheader90.i.i.i.i.i77.i.i, label %bb.xq

bb.xq:                                            ; preds = %.noexc9.i.i122.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #18
  %i.bvp = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %49)
          to label %.noexc.i.i.i.i.i126.i.i481 unwind label %bb.xr

.noexc.i.i.i.i.i126.i.i481:                       ; preds = %bb.xq
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bvp, ptr noundef nonnull @.str.52, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i127.i.i482 unwind label %bb.xr

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i127.i.i482: ; preds = %.noexc.i.i.i.i.i126.i.i481
  %i.bvq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %49)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i128.i.i483 unwind label %bb.xs ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i128.i.i483: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i127.i.i482
  %i.bvr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bvq, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i129.i.i484 unwind label %bb.xs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i129.i.i484: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i128.i.i483
  %i.bvs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bvq, ptr noundef nonnull @.str.53, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i.i130.i.i485 unwind label %bb.xs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i.i130.i.i485: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i129.i.i484
  %i.bvt = load ptr, ptr %48, align 8, !tbaa !53  ; 2 uses
  %i.bvu = load ptr, ptr %i.bvt, align 8, !tbaa !44
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvt, i64 8
  %i.bvw = load i64, ptr %i.bvv, align 8, !tbaa !43
  %i.bvx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bvq, ptr noundef %i.bvu, i64 noundef %i.bvw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i131.i.i486 unwind label %bb.xs

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i131.i.i486: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i.i130.i.i485
  %i.bvy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bvx, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i.i132.i.i487 unwind label %bb.xs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i.i132.i.i487: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i131.i.i486
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %49)
          to label %bb.xu unwind label %bb.xr

bb.xr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i.i132.i.i487, %.noexc.i.i.i.i.i126.i.i481, %bb.xq
  %i.bvz = landingpad { ptr, i32 }
          cleanup
  br label %bb.xt

bb.xs:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i131.i.i486, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i.i130.i.i485, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i129.i.i484, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i128.i.i483, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i127.i.i482
  %i.bwa = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %49)
          to label %bb.xt unwind label %bb.ys

bb.xt:                                            ; preds = %bb.xs, %bb.xr
  %.pn.i.i.i.i.i125.i.i480 = phi { ptr, i32 } [ %i.bvz, %bb.xr ], [ %i.bwa, %bb.xs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit12.i.i89.i.i

bb.xu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i.i132.i.i487
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  %.pr82.i.i.i.i.i133.i.i488 = load ptr, ptr %48, align 8, !tbaa !53 ; 4 uses
  %.not.i76.i.i.i.i.i134.i.i489 = icmp eq ptr %.pr82.i.i.i.i.i133.i.i488, null
  br i1 %.not.i76.i.i.i.i.i134.i.i489, label %.preheader90.i.i.i.i.i77.i.i, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  %i.bwb = load ptr, ptr %.pr82.i.i.i.i.i133.i.i488, align 8, !tbaa !44 ; 2 uses
  %i.bwc = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i.i133.i.i488, i64 16 ; 2 uses
  %i.bwd = icmp eq ptr %i.bwb, %i.bwc
  br i1 %i.bwd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i136.i.i491, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i135.i.i490

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i135.i.i490: ; preds = %bb.xv
  %i.bwe = load i64, ptr %i.bwc, align 8, !tbaa !50
  %i.bwf = add i64 %i.bwe, 1
  call void @_ZdlPvm(ptr noundef %i.bwb, i64 noundef %i.bwf) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i136.i.i491

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i136.i.i491: ; preds = %bb.xv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i135.i.i490
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i.i133.i.i488, i64 noundef 32) #34
  br label %.preheader90.i.i.i.i.i77.i.i

.preheader90.i.i.i.i.i77.i.i:                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i136.i.i491, %bb.xu, %.noexc9.i.i122.i.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i76.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %50, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i.i78.i.i = icmp eq i64 %i.bua, 0
  br i1 %.not111.i.i.i.i.i78.i.i, label %.thread.i.i.i.i118.i.i475, label %.lr.ph100.i.i.preheader.i.i.i79.i.i

.lr.ph100.i.i.preheader.i.i.i79.i.i:              ; preds = %.preheader90.i.i.i.i.i77.i.i
  %i.bwg = trunc nuw i8 %i.btx to i1
  br label %.lr.ph100.i.i.i.i.i80.i.i

.thread.i.i.i.i118.i.i475:                        ; preds = %.preheader90.i.i.i.i.i77.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i.i100.i.i449

.lr.ph100.i.i.i.i.i80.i.i:                        ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm1EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i, %.lr.ph100.i.i.preheader.i.i.i79.i.i
  %.06099.i.i.i.i.i81.i.i = phi i64 [ %i.byo, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm1EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i.i79.i.i ] ; 4 uses
  %i.bwh = icmp ne i64 %spec.select.i.i.i.i74.i.i, %.06099.i.i.i.i.i81.i.i
  %.sroa.speculated.i.i.i439 = zext i1 %i.bwh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  %i.bwi = add i64 %.06099.i.i.i.i.i81.i.i, %.sroa.speculated.i.i.i439
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %42, i64 noundef %.06099.i.i.i.i.i81.i.i, i64 noundef %i.bwi)
          to label %.noexc149.i.i unwind label %bb.xz

.noexc149.i.i:                                    ; preds = %.lr.ph100.i.i.i.i.i80.i.i
  %i.bwj = load i64, ptr %i.bqx, align 8, !tbaa !314
  %i.bwk = load i64, ptr %42, align 8, !tbaa !315
  %i.bwl = sub i64 %i.bwj, %i.bwk                 ; 3 uses
  %.val.i.i.i.i464 = load ptr, ptr %80, align 8, !tbaa !147 ; 5 uses
  %.val12.i.i.i.i465 = load ptr, ptr %i.bra, align 8, !tbaa !148
  %i.bwm = ptrtoint ptr %.val12.i.i.i.i465 to i64
  %i.bwn = ptrtoint ptr %.val.i.i.i.i464 to i64
  %i.bwo = sub i64 %i.bwm, %i.bwn
  %i.bwp = ashr exact i64 %i.bwo, 5               ; 2 uses
  %i.bwq = icmp eq i64 %i.bwl, -1
  br i1 %i.bwq, label %.split.i.i.i.i.i.i466, label %bb.xw

bb.xw:                                            ; preds = %.noexc149.i.i
  %.not.i.i.i.i148.i.i = icmp ugt i64 %i.bwl, %i.bwp
  br i1 %.not.i.i.i.i148.i.i, label %bb.xx, label %.split.i.i.i.i.i.i466, !prof !173

bb.xx:                                            ; preds = %bb.xw
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i.i.i.i466:                            ; preds = %bb.xw, %.noexc149.i.i
  %i.bwr = phi i64 [ %i.bwl, %bb.xw ], [ %i.bwp, %.noexc149.i.i ] ; 4 uses
  %i.bws = icmp ne ptr %.val.i.i.i.i464, null
  %i.bwt = icmp eq i64 %i.bwr, 0                  ; 2 uses
  %i.bwu = or i1 %i.bws, %i.bwt
  br i1 %i.bwu, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i.i.i.i, label %bb.xy, !prof !70

bb.xy:                                            ; preds = %.split.i.i.i.i.i.i466
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i.i.i.i: ; preds = %.split.i.i.i.i.i.i466
  invoke void @_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %78, ptr noundef nonnull align 8 dereferenceable(16) %42, i32 noundef %i.bty, i64 %i.bwr, ptr %.val.i.i.i.i464)
          to label %.noexc150.i.i unwind label %bb.xz

.noexc150.i.i:                                    ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i.i.i.i
  %i.bwv = load i64, ptr %42, align 8, !tbaa !315 ; 2 uses
  %i.bww = load i64, ptr %i.bqv, align 8, !tbaa !312
  %i.bwx = add i64 %i.bww, %i.bwv
  %i.bwy = load i64, ptr %i.bqx, align 8, !tbaa !314
  %i.bwz = sub i64 %i.bwy, %i.bwv
  invoke fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.bhz, i64 noundef %i.bwx, i64 %i.bwr, ptr %.val.i.i.i.i464, i64 noundef %i.bwz, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %53, ptr noundef nonnull align 8 dereferenceable(24) %51, i1 noundef zeroext %i.bwg, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %52)
          to label %.noexc151.i.i unwind label %bb.xz

.noexc151.i.i:                                    ; preds = %.noexc150.i.i
  br i1 %i.bwt, label %_ZZN7xgboost6common13ParallelFor1dILm1EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_.exit.i.i, label %.lr.ph.i.i.i.i.i467

.lr.ph.i.i.i.i.i467:                              ; preds = %.noexc151.i.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i473
  %.04.i.i.i.i.i468 = phi i64 [ %i.bxr, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i473 ], [ 0, %.noexc151.i.i ] ; 2 uses
  %i.bxa = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i464, i64 %.04.i.i.i.i.i468 ; 3 uses
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bxa, i64 8
  %i.bxc = load ptr, ptr %i.bxb, align 8, !tbaa !167 ; 3 uses
  %i.bxd = load ptr, ptr %i.bxa, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i.i.i.i469 = icmp eq ptr %i.bxd, %i.bxc
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i469, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i473, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i470.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i470.preheader:        ; preds = %.lr.ph.i.i.i.i.i467
  %i.bxe = ptrtoaddr ptr %i.bxc to i64
  %i.bxf = ptrtoaddr ptr %i.bxd to i64
  %i.bxg = add i64 %i.bxe, -4
  %i.bxh = sub i64 %i.bxg, %i.bxf                 ; 2 uses
  %i.bxi = lshr i64 %i.bxh, 2
  %i.bxj = add nuw nsw i64 %i.bxi, 1              ; 2 uses
  %min.iters.check815 = icmp ult i64 %i.bxh, 28
  br i1 %min.iters.check815, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i470.preheader969, label %vector.ph816

vector.ph816:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i470.preheader
  %n.vec817 = and i64 %i.bxj, 9223372036854775800 ; 3 uses
  %i.bxk = shl i64 %n.vec817, 2
  %i.bxl = getelementptr i8, ptr %i.bxd, i64 %i.bxk
  br label %vector.body818

vector.body818:                                   ; preds = %vector.body818, %vector.ph816
  %index819 = phi i64 [ 0, %vector.ph816 ], [ %index.next821, %vector.body818 ] ; 2 uses
  %i.bxm = shl i64 %index819, 2
  %next.gep820 = getelementptr i8, ptr %i.bxd, i64 %i.bxm ; 2 uses
  %i.bxn = getelementptr i8, ptr %next.gep820, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep820, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.bxn, align 4, !tbaa !72
  %index.next821 = add nuw i64 %index819, 8       ; 2 uses
  %i.bxo = icmp eq i64 %index.next821, %n.vec817
  br i1 %i.bxo, label %middle.block822, label %vector.body818, !llvm.loop !741

middle.block822:                                  ; preds = %vector.body818
  %cmp.n823 = icmp eq i64 %i.bxj, %n.vec817
  br i1 %cmp.n823, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i473, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i470.preheader969

.lr.ph.i.i.i.i.i.i.i.i.i.i.i470.preheader969:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i470.preheader, %middle.block822
  %.07.i.i.i.i.i.i.i.i.i.i.i471.ph = phi ptr [ %i.bxd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i470.preheader ], [ %i.bxl, %middle.block822 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i470

.lr.ph.i.i.i.i.i.i.i.i.i.i.i470:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i470.preheader969, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i470
  %.07.i.i.i.i.i.i.i.i.i.i.i471 = phi ptr [ %i.bxp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i470 ], [ %.07.i.i.i.i.i.i.i.i.i.i.i471.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i470.preheader969 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i.i.i.i471, align 4, !tbaa !72
  %i.bxp = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i471, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i472 = icmp eq ptr %i.bxp, %i.bxc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i472, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i473, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i470, !llvm.loop !742

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i473: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i470, %middle.block822, %.lr.ph.i.i.i.i.i467
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxa, i64 24
  store i8 1, ptr %i.bxq, align 8, !tbaa !319
  %i.bxr = add nuw i64 %.04.i.i.i.i.i468, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i474 = icmp eq i64 %i.bxr, %i.bwr
  br i1 %exitcond.not.i.i.i.i.i474, label %_ZZN7xgboost6common13ParallelFor1dILm1EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_.exit.i.i, label %.lr.ph.i.i.i.i.i467, !llvm.loop !3

_ZZN7xgboost6common13ParallelFor1dILm1EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_.exit.i.i: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i.i.i.i473, %.noexc151.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  br label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm1EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i

bb.xz:                                            ; preds = %.noexc150.i.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i.i.i.i, %.lr.ph100.i.i.i.i.i80.i.i
  %i.bxs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.bxt = extractvalue { ptr, i32 } %i.bxs, 0    ; 2 uses
  %i.bxu = extractvalue { ptr, i32 } %i.bxs, 1    ; 2 uses
  %i.bxv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.bxw = icmp eq i32 %i.bxu, %i.bxv
  br i1 %i.bxw, label %bb.ya, label %bb.ye

bb.ya:                                            ; preds = %bb.xz
  %i.bxx = call ptr @__cxa_begin_catch(ptr %i.bxt) #18 ; 0 uses
  %i.bxy = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bqw) #18 ; 2 uses
  %.not.i.i.i3.i.i.i108.i.i456 = icmp eq i32 %i.bxy, 0
  br i1 %.not.i.i.i3.i.i.i108.i.i456, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i110.i.i457, label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bxy) #32
          to label %.noexc.i.i.i.i109.i.i unwind label %bb.yk

.noexc.i.i.i.i109.i.i:                            ; preds = %bb.yb
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i110.i.i457: ; preds = %bb.ya
  %i.bxz = load ptr, ptr %50, align 8, !tbaa !290
  %.not22.i.i.i.i111.i.i458 = icmp eq ptr %i.bxz, null
  br i1 %.not22.i.i.i.i111.i.i458, label %bb.yc, label %.sink.split.i.i.i.i94.i.i443

bb.yc:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i110.i.i457
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %46) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  %i.bya = load ptr, ptr %46, align 8, !tbaa !290
  store ptr null, ptr %46, align 8, !tbaa !290
  %i.byb = load ptr, ptr %50, align 8, !tbaa !290 ; 2 uses
  store ptr %i.byb, ptr %44, align 8, !tbaa !290
  store ptr %i.bya, ptr %50, align 8, !tbaa !290
  %.not.i.i9.i.i.i.i112.i.i459 = icmp eq ptr %i.byb, null
  br i1 %.not.i.i9.i.i.i.i112.i.i459, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i.i117.i.i463, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i113.i.i460

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i.i117.i.i463: ; preds = %bb.yc
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i116.i.i462

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i113.i.i460: ; preds = %bb.yc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %44) #18
  %.pr.i.i.i.i114.i.i = load ptr, ptr %46, align 8, !tbaa !290
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  %.not.i.i4.i.i.i115.i.i461 = icmp eq ptr %.pr.i.i.i.i114.i.i, null
  br i1 %.not.i.i4.i.i.i115.i.i461, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i116.i.i462, label %bb.yd

bb.yd:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i113.i.i460
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %46) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i116.i.i462

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i116.i.i462: ; preds = %bb.yd, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i113.i.i460, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i.i117.i.i463
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  br label %.sink.split.i.i.i.i94.i.i443

bb.ye:                                            ; preds = %bb.xz
  %i.byc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.byd = icmp eq i32 %i.bxu, %i.byc
  br i1 %i.byd, label %bb.yf, label %.body.i.i.i.i.i82.i.i

bb.yf:                                            ; preds = %bb.ye
  %i.bye = call ptr @__cxa_begin_catch(ptr %i.bxt) #18 ; 0 uses
  %i.byf = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bqw) #18 ; 2 uses
  %.not.i.i10.i.i.i.i90.i.i440 = icmp eq i32 %i.byf, 0
  br i1 %.not.i.i10.i.i.i.i90.i.i440, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i.i92.i.i442, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.byf) #32
          to label %.noexc11.i.i.i.i91.i.i441 unwind label %bb.yj

.noexc11.i.i.i.i91.i.i441:                        ; preds = %bb.yg
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i.i92.i.i442: ; preds = %bb.yf
  %i.byg = load ptr, ptr %50, align 8, !tbaa !290
  %.not.i.i.i.i93.i.i = icmp eq ptr %i.byg, null
  br i1 %.not.i.i.i.i93.i.i, label %bb.yh, label %.sink.split.i.i.i.i94.i.i443

bb.yh:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i.i92.i.i442
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %45) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  %i.byh = load ptr, ptr %45, align 8, !tbaa !290
  store ptr null, ptr %45, align 8, !tbaa !290
  %i.byi = load ptr, ptr %50, align 8, !tbaa !290 ; 2 uses
  store ptr %i.byi, ptr %43, align 8, !tbaa !290
  store ptr %i.byh, ptr %50, align 8, !tbaa !290
  %.not.i.i13.i.i.i.i102.i.i450 = icmp eq ptr %i.byi, null
  br i1 %.not.i.i13.i.i.i.i102.i.i450, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i.i107.i.i455, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i.i103.i.i451

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i.i107.i.i455: ; preds = %bb.yh
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i106.i.i454

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i.i103.i.i451: ; preds = %bb.yh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %43) #18
  %.pr20.i.i.i.i104.i.i452 = load ptr, ptr %45, align 8, !tbaa !290
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  %.not.i15.i.i.i.i105.i.i453 = icmp eq ptr %.pr20.i.i.i.i104.i.i452, null
  br i1 %.not.i15.i.i.i.i105.i.i453, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i106.i.i454, label %bb.yi

bb.yi:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i.i103.i.i451
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %45) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i106.i.i454

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i106.i.i454: ; preds = %bb.yi, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i.i103.i.i451, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i.i107.i.i455
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  br label %.sink.split.i.i.i.i94.i.i443

bb.yj:                                            ; preds = %bb.yg
  %i.byj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i.i82.i.i unwind label %bb.yl

bb.yk:                                            ; preds = %bb.yb
  %i.byk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i.i82.i.i unwind label %bb.yl

.sink.split.i.i.i.i94.i.i443:                     ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i.i106.i.i454, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i.i92.i.i442, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i116.i.i462, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i110.i.i457
  %i.byl = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bqw) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm1EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i unwind label %bb.ym

bb.yl:                                            ; preds = %bb.yk, %bb.yj
  %i.bym = landingpad { ptr, i32 }
          catch ptr null
  %i.byn = extractvalue { ptr, i32 } %i.bym, 0
  call void @__clang_call_terminate(ptr %i.byn) #35
  unreachable

_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm1EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i94.i.i443, %_ZZN7xgboost6common13ParallelFor1dILm1EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_.exit.i.i
  %i.byo = add nuw i64 %.06099.i.i.i.i.i81.i.i, 1 ; 2 uses
  %exitcond122.not.i.i.i.i.i95.i.i444 = icmp eq i64 %i.byo, %i.bua
  br i1 %exitcond122.not.i.i.i.i.i95.i.i444, label %bb.yn, label %.lr.ph100.i.i.i.i.i80.i.i, !llvm.loop !743

bb.ym:                                            ; preds = %.sink.split.i.i.i.i94.i.i443
  %i.byp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i82.i.i

bb.yn:                                            ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm1EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i
  %.pr84.pr.i.i.i.i.i96.i.i445 = load ptr, ptr %50, align 8, !tbaa !290 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  %.not.i77.i.i.i.i.i97.i.i446 = icmp eq ptr %.pr84.pr.i.i.i.i.i96.i.i445, null
end_hunk_1
begin_hunk_2_@_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE
; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #26

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = shl i64 %0, 6                            ; 3 uses
  %i.b = sub i64 %.0.val.0.val, %i.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.c = add i64 %.sroa.speculated, %i.a
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.a, i64 noundef %i.c)
  %i.d = load ptr, ptr %.8.val, align 8, !tbaa !964, !nonnull !141, !align !245 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !314  ; 3 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !315    ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !147 ; 5 uses
  %i.i = getelementptr i8, ptr %i.d, i64 8
  %.val12.i = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.j = ptrtoint ptr %.val12.i to i64
  %i.k = ptrtoint ptr %.val.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = icmp eq i64 %i.h, -1
  br i1 %i.n, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.h, %i.m
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.o = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.a ] ; 3 uses
  %i.p = icmp ne ptr %.val.i, null
  %i.q = icmp eq i64 %i.o, 0                      ; 2 uses
  %i.r = or i1 %i.p, %i.q
  br i1 %i.r, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !965, !nonnull !141, !align !245 ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, %i.g
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !966, !nonnull !141, !align !244
  %i.w = load i32, ptr %i.v, align 4, !tbaa !83
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.y = phi i64 [ %i.g, %.lr.ph.i.i ], [ %i.bo, %bb.h ]
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bm, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.011.i.i ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167 ; 3 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !68  ; 4 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2                 ; 2 uses
  %i.ah = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp samesign ult i64 %i.ag, %i.x
  br i1 %i.ai, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aj = sub nuw nsw i64 %i.x, %i.ag
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.z, i64 noundef %i.aj)
  %.pre.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !69
  %.pre2.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i:         ; preds = %bb.g, %bb.f
  %i.ak = phi ptr [ %.pre2.i.i.i, %bb.g ], [ %i.ab, %bb.f ] ; 3 uses
  %i.al = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.ac, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ak
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = add i64 %i.am, -4
  %i.ap = sub i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.as = shl i64 %n.vec, 2
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.av, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !959

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader34

.lr.ph.i.i.i.i.i.i.i.preheader34:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader34, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader34 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ak
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !960

_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 1, ptr %i.ay, align 8, !tbaa !319
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, %bb.e
  %i.az = phi ptr [ %i.al, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.ac, %bb.e ]
  %i.ba = phi i64 [ %.pre.i.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.y, %bb.e ]
  %i.bb = add i64 %i.ba, %.011.i.i
  %i.bc = call noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_11CatAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(88) %i.t, i64 noundef %i.bb, ptr noundef %i.az)
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !167
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !68
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  %i.bj = icmp ne i64 %i.bc, %i.bi
  %i.bk = zext i1 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 %i.bk, ptr %i.bl, align 8, !tbaa !319
  %i.bm = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.bn = load i64, ptr %i.e, align 8, !tbaa !314
  %i.bo = load i64, ptr %1, align 8, !tbaa !315   ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i, !llvm.loop !7

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i: ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !965
  br label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  %.pre-phi.i = phi i64 [ %i.bp, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i ], [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ]
  %i.br = phi ptr [ %.pre.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i ], [ %i.t, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ]
  %i.bs = phi i64 [ %i.bo, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i ], [ %i.f, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !967, !nonnull !141, !align !245
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !285
  %i.bx = add i64 %i.bw, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !968, !nonnull !141, !align !245
  %i.ca = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !969, !nonnull !141, !align !245
  %i.cc = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !970, !nonnull !141
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !82, !range !140, !noundef !141
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !971, !nonnull !141, !align !245
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.bu, i64 noundef %i.bx, i64 %i.o, ptr %.val.i, i64 noundef %.pre-phi.i, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i1 noundef zeroext %i.cf, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.ch)
  br i1 %i.q, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.cz, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !167 ; 3 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.ck
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i14.i
  %i.cm = ptrtoaddr ptr %i.ck to i64
  %i.cn = ptrtoaddr ptr %i.cl to i64
  %i.co = add i64 %i.cm, -4
  %i.cp = sub i64 %i.co, %i.cn                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check23 = icmp ult i64 %i.cp, 28
  br i1 %min.iters.check23, label %.lr.ph.i.i.i.i.i.i.i.i.preheader33, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec25 = and i64 %i.cr, 9223372036854775800   ; 3 uses
  %i.cs = shl i64 %n.vec25, 2
  %i.ct = getelementptr i8, ptr %i.cl, i64 %i.cs
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next29, %vector.body26 ] ; 2 uses
  %i.cu = shl i64 %index27, 2
  %next.gep28 = getelementptr i8, ptr %i.cl, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep28, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep28, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.cv, align 4, !tbaa !72
  %index.next29 = add nuw i64 %index27, 8         ; 2 uses
  %i.cw = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.cw, label %middle.block30, label %vector.body26, !llvm.loop !961

middle.block30:                                   ; preds = %vector.body26
  %cmp.n31 = icmp eq i64 %i.cr, %n.vec25
  br i1 %cmp.n31, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.i.preheader33:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block30
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ct, %middle.block30 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.cx = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.ck
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !962

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block30, %.lr.ph.i14.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i8 1, ptr %i.cy, align 8, !tbaa !319
  %i.cz = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cz, %i.o
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit, label %.lr.ph.i14.i, !llvm.loop !8

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !59
  store i64 %2, ptr %i.b, align 8, !tbaa !59
  store i64 %1, ptr %0, align 8, !tbaa !315
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.d = icmp ult i64 %1, %2
  br i1 %i.d, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %3, align 8, !tbaa !53
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.e, ptr noundef nonnull @.str.52, i32 noundef 44)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.f = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.58, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = load ptr, ptr %3, align 8, !tbaa !53     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !43
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.pr12 = load ptr, ptr %3, align 8, !tbaa !53   ; 4 uses
  %.not.i = icmp eq ptr %.pr12, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %.pr12, align 8, !tbaa !44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !50
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr12, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.h:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, i64 noundef %1, i64 %2, ptr %3, i64 noundef %4, ptr nofree noundef readonly byval(%"class.xgboost::linalg::TensorView") align 8 captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i1 noundef zeroext %7, ptr nofree noundef readonly byval(%"struct.xgboost::common::OptionalWeights") align 8 captures(none) %8) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::vector.31", align 8    ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"class.std::vector.31", align 8   ; 11 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !200
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !199
  %i.j = sub nsw i32 %i.g, %i.i                   ; 2 uses
  store i32 %i.j, ptr %i.c, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %.val = load ptr, ptr %0, align 8, !tbaa !144   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val45 = load ptr, ptr %i.k, align 8, !tbaa !201 ; 2 uses
  %i.l = icmp ne ptr %.val, null
  %i.m = icmp eq ptr %.val45, null
  %i.n = or i1 %i.l, %i.m
  br i1 %i.n, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit: ; preds = %bb.a
  %i.o = ptrtoint ptr %.val45 to i64
  %i.p = ptrtoint ptr %.val to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 200                 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE:bb.a
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = shl i64 %0, 6                            ; 3 uses
  %i.b = sub i64 %.0.val.0.val, %i.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.c = add i64 %.sroa.speculated, %i.a
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.a, i64 noundef %i.c)
  %i.d = load ptr, ptr %.8.val, align 8, !tbaa !1257, !nonnull !141, !align !245 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !314  ; 3 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !315    ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !147 ; 5 uses
  %i.i = getelementptr i8, ptr %i.d, i64 8
  %.val12.i = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.j = ptrtoint ptr %.val12.i to i64
  %i.k = ptrtoint ptr %.val.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = icmp eq i64 %i.h, -1
  br i1 %i.n, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.h, %i.m
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.o = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.a ] ; 3 uses
  %i.p = icmp ne ptr %.val.i, null
  %i.q = icmp eq i64 %i.o, 0                      ; 2 uses
  %i.r = or i1 %i.p, %i.q
  br i1 %i.r, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1258, !nonnull !141, !align !245 ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, %i.g
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1259, !nonnull !141, !align !244
  %i.w = load i32, ptr %i.v, align 4, !tbaa !83
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.y = phi i64 [ %i.g, %.lr.ph.i.i ], [ %i.bo, %bb.h ]
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bm, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.011.i.i ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167 ; 3 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !68  ; 4 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2                 ; 2 uses
  %i.ah = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp samesign ult i64 %i.ag, %i.x
  br i1 %i.ai, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aj = sub nuw nsw i64 %i.x, %i.ag
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.z, i64 noundef %i.aj)
  %.pre.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !69
  %.pre2.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i:         ; preds = %bb.g, %bb.f
  %i.ak = phi ptr [ %.pre2.i.i.i, %bb.g ], [ %i.ab, %bb.f ] ; 3 uses
  %i.al = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.ac, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ak
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = add i64 %i.am, -4
  %i.ap = sub i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.as = shl i64 %n.vec, 2
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.av, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1252

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader34

.lr.ph.i.i.i.i.i.i.i.preheader34:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader34, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader34 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ak
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1253

_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 1, ptr %i.ay, align 8, !tbaa !319
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, %bb.e
  %i.az = phi ptr [ %i.al, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.ac, %bb.e ]
  %i.ba = phi i64 [ %.pre.i.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.y, %bb.e ]
  %i.bb = add i64 %i.ba, %.011.i.i
  %i.bc = call noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 noundef %i.bb, ptr noundef %i.az)
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !167
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !68
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  %i.bj = icmp ne i64 %i.bc, %i.bi
  %i.bk = zext i1 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 %i.bk, ptr %i.bl, align 8, !tbaa !319
  %i.bm = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.bn = load i64, ptr %i.e, align 8, !tbaa !314
  %i.bo = load i64, ptr %1, align 8, !tbaa !315   ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i, !llvm.loop !16

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i: ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !1258
  br label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  %.pre-phi.i = phi i64 [ %i.bp, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i ], [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ]
  %i.br = phi ptr [ %.pre.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i ], [ %i.t, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ]
  %i.bs = phi i64 [ %i.bo, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i ], [ %i.f, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1260, !nonnull !141, !align !245
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !322
  %i.bx = add i64 %i.bw, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1261, !nonnull !141, !align !245
  %i.ca = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1262, !nonnull !141, !align !245
  %i.cc = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1263, !nonnull !141
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !82, !range !140, !noundef !141
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1264, !nonnull !141, !align !245
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.bu, i64 noundef %i.bx, i64 %i.o, ptr %.val.i, i64 noundef %.pre-phi.i, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i1 noundef zeroext %i.cf, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.ch)
  br i1 %i.q, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.cz, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !167 ; 3 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.ck
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i14.i
  %i.cm = ptrtoaddr ptr %i.ck to i64
  %i.cn = ptrtoaddr ptr %i.cl to i64
  %i.co = add i64 %i.cm, -4
  %i.cp = sub i64 %i.co, %i.cn                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check23 = icmp ult i64 %i.cp, 28
  br i1 %min.iters.check23, label %.lr.ph.i.i.i.i.i.i.i.i.preheader33, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec25 = and i64 %i.cr, 9223372036854775800   ; 3 uses
  %i.cs = shl i64 %n.vec25, 2
  %i.ct = getelementptr i8, ptr %i.cl, i64 %i.cs
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next29, %vector.body26 ] ; 2 uses
  %i.cu = shl i64 %index27, 2
  %next.gep28 = getelementptr i8, ptr %i.cl, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep28, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep28, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.cv, align 4, !tbaa !72
  %index.next29 = add nuw i64 %index27, 8         ; 2 uses
  %i.cw = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.cw, label %middle.block30, label %vector.body26, !llvm.loop !1254

middle.block30:                                   ; preds = %vector.body26
  %cmp.n31 = icmp eq i64 %i.cr, %n.vec25
  br i1 %cmp.n31, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.i.preheader33:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block30
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ct, %middle.block30 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.cx = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.ck
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1255

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block30, %.lr.ph.i14.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i8 1, ptr %i.cy, align 8, !tbaa !319
  %i.cz = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cz, %i.o
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit, label %.lr.ph.i14.i, !llvm.loop !17

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %3 = alloca %class.anon.437, align 8            ; 8 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !59
  store ptr %2, ptr %i.b, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !322
  %i.g = add i64 %i.f, %1                         ; 5 uses
  store i64 %i.g, ptr %i.c, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.h = load ptr, ptr %0, align 8, !tbaa !323, !nonnull !141, !align !245
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.j = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIjE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, -1                         ; 3 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !83
  %i.m = load ptr, ptr %0, align 8, !tbaa !323, !nonnull !141, !align !245 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.o = load i8, ptr %i.n, align 8, !tbaa !411, !range !140, !noundef !141
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not45 = icmp eq i32 %i.l, 0
  br i1 %.not45, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.trip.count = zext i32 %i.l to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.v = load i8, ptr %i.u, align 8, !tbaa !412
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %0, ptr %3, align 8, !tbaa !443
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.w, align 8, !tbaa !128
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.d, ptr %i.x, align 8, !tbaa !131
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.c, ptr %i.y, align 8, !tbaa !128
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.b, ptr %i.z, align 8, !tbaa !416
  call void @_ZN7xgboost6common15DispatchBinTypeIZNKS_9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEE6DoFillEmPfEUlT_E_EEDaNS0_11BinTypeSizeEOS7_(i8 noundef zeroext %i.v, ptr noundef nonnull align 8 dereferenceable(40) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.aa = load i32, ptr %i.d, align 4, !tbaa !83
  %i.ab = zext i32 %i.aa to i64
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit.thread ] ; 12 uses
  %.044 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit.thread ] ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %i.q, align 8, !tbaa !59 ; 2 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !65
  %i.ac = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ac, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp ugt i64 %.sroa.0.0.copyload, %indvars.iv
  br i1 %i.ad, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit, label %bb.e, !prof !70

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !252
  %i.ag = icmp eq i8 %i.af, 1                     ; 2 uses
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !1266, !nonnull !141, !align !245
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !418
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !420
  %i.am = icmp eq i8 %i.al, 1
  %.pre = load ptr, ptr %0, align 8, !tbaa !323   ; 3 uses
  br i1 %i.am, label %bb.f, label %bb.j

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread: ; preds = %bb.c
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !1266, !nonnull !141, !align !245
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !418
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !420
  %i.as = icmp eq i8 %i.ar, 1
  %.pre48 = load ptr, ptr %0, align 8, !tbaa !323 ; 2 uses
  br i1 %i.as, label %.thread52, label %.thread

bb.f:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.at = tail call noundef i32 @_ZNK7xgboost16GHistIndexMatrix9GetGindexEmm(ptr noundef nonnull align 8 dereferenceable(225) %.pre, i64 noundef %i.g, i64 noundef %indvars.iv) ; 3 uses
  %.not31 = icmp eq i32 %i.at, -1
  br i1 %.not31, label %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit.thread, label %bb.g

.thread52:                                        ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread
  %i.au = tail call noundef i32 @_ZNK7xgboost16GHistIndexMatrix9GetGindexEmm(ptr noundef nonnull align 8 dereferenceable(225) %.pre48, i64 noundef %i.g, i64 noundef %indvars.iv) ; 2 uses
  %.not3153 = icmp eq i32 %i.au, -1
  br i1 %.not3153, label %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit.thread, label %.thread54

bb.g:                                             ; preds = %bb.f
  br i1 %i.ag, label %bb.h, label %.thread54

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !444, !nonnull !141, !align !245
  %i.aw = sext i32 %i.at to i64
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !68
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aw
  br label %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit

.thread54:                                        ; preds = %.thread52, %bb.g
  %i.az = phi i32 [ %i.at, %bb.g ], [ %i.au, %.thread52 ] ; 2 uses
  %i.ba = load ptr, ptr %i.t, align 8, !tbaa !445, !nonnull !141, !align !245
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !423
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !83
  %i.be = icmp eq i32 %i.az, %i.bd
  br i1 %i.be, label %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit.thread36, label %bb.i

bb.i:                                             ; preds = %.thread54
  %i.bf = load ptr, ptr %i.s, align 8, !tbaa !444, !nonnull !141, !align !245
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !68
  %i.bh = sext i32 %i.az to i64
  %i.bi = getelementptr [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -4
  br label %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit

bb.j:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  br i1 %i.ag, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %i.s, align 8, !tbaa !444, !nonnull !141, !align !245
  %i.bl = tail call noundef i32 @_ZNK7xgboost16GHistIndexMatrix9GetGindexEmm(ptr noundef nonnull align 8 dereferenceable(225) %.pre, i64 noundef %i.g, i64 noundef %indvars.iv) ; 2 uses
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = sext i32 %i.bl to i64
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !68
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bn
  br label %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit

end_hunk_3
begin_hunk_4_@_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_:bb.a
  br i1 %.not6.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = ptrtoaddr ptr %i.am to i64
  %i.ap = add i64 %i.an, -4
  %i.aq = sub i64 %i.ap, %i.ao                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.aw, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader37

.lr.ph.i.i.i.i.i.i.preheader37:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader37, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader37 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !72
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.al
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1274

_ZN7xgboost7RegTree4FVec4InitEm.exit.i:           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i8 1, ptr %i.az, align 8, !tbaa !319
  %.pre.i = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, %bb.e
  %i.ba = phi i64 [ %.pre.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.z, %bb.e ] ; 4 uses
  %i.bb = phi ptr [ %i.am, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.ad, %bb.e ] ; 6 uses
  %i.bc = phi ptr [ %i.al, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.ac, %bb.e ]
  %i.bd = load ptr, ptr %i.x, align 8, !tbaa !389
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %.011.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !59 ; 3 uses
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !59 ; 4 uses
  %i.bj = load ptr, ptr %i.y, align 8, !tbaa !438 ; 2 uses
  %i.bk = icmp ne ptr %i.bj, null
  %i.bl = icmp eq i64 %i.bh, %i.bi                ; 2 uses
  %i.bm = or i1 %i.bl, %i.bk
  br i1 %i.bm, label %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i, label %bb.i, !prof !70

bb.i:                                             ; preds = %bb.h
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i: ; preds = %bb.h
  %i.bn = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bi ; 5 uses
  br i1 %i.bl, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i
  %xtraiter = and i64 %i.bn, 3                    ; 3 uses
  %i.bp = sub i64 %i.bi, %i.bh
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bn, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.020.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.cs, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.020.i.i.i ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !440
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !441
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bv
  store float %i.bt, ptr %i.bw, align 4, !tbaa !72
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.020.i.i.i ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !440
  %i.cb = load i32, ptr %i.by, align 4, !tbaa !441
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cc
  store float %i.ca, ptr %i.cd, align 4, !tbaa !72
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.020.i.i.i ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !440
  %i.ci = load i32, ptr %i.cf, align 4, !tbaa !441
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cj
  store float %i.ch, ptr %i.ck, align 4, !tbaa !72
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.020.i.i.i ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  %i.co = load float, ptr %i.cn, align 4, !tbaa !440
  %i.cp = load i32, ptr %i.cm, align 4, !tbaa !441
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cq
  store float %i.co, ptr %i.cr, align 4, !tbaa !72
  %i.cs = add nuw i64 %.020.i.i.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !18

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.020.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.cs, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.020.i.i.i.epil = phi i64 [ %i.cz, %.lr.ph.i.i.i.epil ], [ %.020.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.020.i.i.i.epil ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !440
  %i.cw = load i32, ptr %i.ct, align 4, !tbaa !441
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cx
  store float %i.cv, ptr %i.cy, align 4, !tbaa !72
  %i.cz = add nuw i64 %.020.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1275

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i
  %i.da = ptrtoint ptr %i.bc to i64
  %i.db = ptrtoint ptr %i.bb to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 2
  %i.de = icmp ne i64 %i.bn, %i.dd
  %i.df = zext i1 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i8 %i.df, ptr %i.dg, align 8, !tbaa !319
  %i.dh = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.di = load i64, ptr %i.e, align 8, !tbaa !314
  %i.dj = sub i64 %i.di, %i.ba                    ; 2 uses
  %i.dk = icmp ult i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit, !llvm.loop !19

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !1280
  br label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit: ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit
  %.pre-phi = phi i64 [ %i.dj, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit ], [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ]
  %i.dl = phi ptr [ %.pre, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit ], [ %.pre4, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ]
  %i.dm = phi i64 [ %i.ba, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit ], [ %i.f, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1282, !nonnull !141, !align !245
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !327
  %i.dr = add i64 %i.dq, %i.dm
  %i.ds = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1283, !nonnull !141, !align !245
  %i.du = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1284, !nonnull !141, !align !245
  %i.dw = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1285, !nonnull !141
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !82, !range !140, !noundef !141
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1286, !nonnull !141, !align !245
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.do, i64 noundef %i.dr, i64 %i.o, ptr %.val.i, i64 noundef %.pre-phi, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i1 noundef zeroext %i.dz, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.eb)
  br i1 %i.q, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.et, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !167 ; 3 uses
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ef, %i.ee
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.eg = ptrtoaddr ptr %i.ee to i64
  %i.eh = ptrtoaddr ptr %i.ef to i64
  %i.ei = add i64 %i.eg, -4
  %i.ej = sub i64 %i.ei, %i.eh                    ; 2 uses
  %i.ek = lshr i64 %i.ej, 2
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check26 = icmp ult i64 %i.ej, 28
  br i1 %min.iters.check26, label %.lr.ph.i.i.i.i.i.i.i.i.preheader36, label %vector.ph27

vector.ph27:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec28 = and i64 %i.el, 9223372036854775800   ; 3 uses
  %i.em = shl i64 %n.vec28, 2
  %i.en = getelementptr i8, ptr %i.ef, i64 %i.em
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph27
  %index30 = phi i64 [ 0, %vector.ph27 ], [ %index.next32, %vector.body29 ] ; 2 uses
  %i.eo = shl i64 %index30, 2
  %next.gep31 = getelementptr i8, ptr %i.ef, i64 %i.eo ; 2 uses
  %i.ep = getelementptr i8, ptr %next.gep31, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep31, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.ep, align 4, !tbaa !72
  %index.next32 = add nuw i64 %index30, 8         ; 2 uses
  %i.eq = icmp eq i64 %index.next32, %n.vec28
  br i1 %i.eq, label %middle.block33, label %vector.body29, !llvm.loop !1276

middle.block33:                                   ; preds = %vector.body29
  %cmp.n34 = icmp eq i64 %i.el, %n.vec28
  br i1 %cmp.n34, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader36

.lr.ph.i.i.i.i.i.i.i.i.preheader36:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block33
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.en, %middle.block33 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader36, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader36 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.er = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.er, %i.ee
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1277

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block33, %.lr.ph.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i8 1, ptr %i.es, align 8, !tbaa !319
  %i.et = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.et, %i.o
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit, label %.lr.ph.i.i, !llvm.loop !20

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !147    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !148  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #34
  br label %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !147
  br label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #34
  br label %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EED2Ev.exit

_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1292, !nonnull !141, !align !245 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !314  ; 3 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !315    ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !147 ; 5 uses
  %i.h = getelementptr i8, ptr %i.c, i64 8
  %.val12.i = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.i = ptrtoint ptr %.val12.i to i64
  %i.j = ptrtoint ptr %.val.i to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp eq i64 %i.g, -1
  br i1 %i.m, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.g, %i.l
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ %i.g, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.o = icmp ne ptr %.val.i, null
  %i.p = icmp eq i64 %i.n, 0                      ; 2 uses
  %i.q = or i1 %i.o, %i.p
  br i1 %i.q, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1293, !nonnull !141, !align !245 ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, %i.f
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1294, !nonnull !141, !align !244
  %i.v = load i32, ptr %i.u, align 4, !tbaa !83
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.x = phi i64 [ %i.f, %.lr.ph.i.i ], [ %i.bn, %bb.h ]
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bl, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.011.i.i ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !167 ; 3 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !68  ; 4 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2                 ; 2 uses
  %i.ag = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp samesign ult i64 %i.af, %i.w
  br i1 %i.ah, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ai = sub nuw nsw i64 %i.w, %i.af
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.y, i64 noundef %i.ai)
  %.pre.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !69
  %.pre2.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i:         ; preds = %bb.g, %bb.f
  %i.aj = phi ptr [ %.pre2.i.i.i, %bb.g ], [ %i.aa, %bb.f ] ; 3 uses
  %i.ak = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.ab, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.al = ptrtoaddr ptr %i.aj to i64
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = add i64 %i.al, -4
  %i.ao = sub i64 %i.an, %i.am                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 9223372036854775800     ; 3 uses
  %i.ar = shl i64 %n.vec, 2
  %i.as = getelementptr i8, ptr %i.ak, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.au, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader34

.lr.ph.i.i.i.i.i.i.i.preheader34:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader34, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader34 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.aj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1288

_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i8 1, ptr %i.ax, align 8, !tbaa !319
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, %bb.e
  %i.ay = phi ptr [ %i.ak, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.ab, %bb.e ]
  %i.az = phi i64 [ %.pre.i.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.x, %bb.e ]
  %i.ba = add i64 %i.az, %.011.i.i
  %i.bb = call noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_11CatAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(88) %i.s, i64 noundef %i.ba, ptr noundef %i.ay)
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !167
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  %i.bi = icmp ne i64 %i.bb, %i.bh
  %i.bj = zext i1 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i8 %i.bj, ptr %i.bk, align 8, !tbaa !319
  %i.bl = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.bm = load i64, ptr %i.d, align 8, !tbaa !314
  %i.bn = load i64, ptr %1, align 8, !tbaa !315   ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = icmp ult i64 %i.bl, %i.bo
  br i1 %i.bp, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i, !llvm.loop !7

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i: ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !1293
  br label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %.pre-phi.i = phi i64 [ %i.bo, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i ], [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i ]
  %i.bq = phi ptr [ %.pre.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i ], [ %i.s, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i ]
  %i.br = phi i64 [ %i.bn, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i ], [ %i.e, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1295, !nonnull !141, !align !245
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !285
  %i.bw = add i64 %i.bv, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1296, !nonnull !141, !align !245
  %i.bz = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1297, !nonnull !141, !align !245
  %i.cb = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1298, !nonnull !141
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !82, !range !140, !noundef !141
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1299, !nonnull !141, !align !245
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.bt, i64 noundef %i.bw, i64 %i.n, ptr %.val.i, i64 noundef %.pre-phi.i, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i1 noundef zeroext %i.ce, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.cg)
  br i1 %i.p, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.cy, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !167 ; 3 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.cj
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i14.i
  %i.cl = ptrtoaddr ptr %i.cj to i64
  %i.cm = ptrtoaddr ptr %i.ck to i64
  %i.cn = add i64 %i.cl, -4
  %i.co = sub i64 %i.cn, %i.cm                    ; 2 uses
  %i.cp = lshr i64 %i.co, 2
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check23 = icmp ult i64 %i.co, 28
  br i1 %min.iters.check23, label %.lr.ph.i.i.i.i.i.i.i.i.preheader33, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec25 = and i64 %i.cq, 9223372036854775800   ; 3 uses
  %i.cr = shl i64 %n.vec25, 2
  %i.cs = getelementptr i8, ptr %i.ck, i64 %i.cr
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next29, %vector.body26 ] ; 2 uses
  %i.ct = shl i64 %index27, 2
  %next.gep28 = getelementptr i8, ptr %i.ck, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep28, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep28, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.cu, align 4, !tbaa !72
  %index.next29 = add nuw i64 %index27, 8         ; 2 uses
  %i.cv = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.cv, label %middle.block30, label %vector.body26, !llvm.loop !1289

middle.block30:                                   ; preds = %vector.body26
  %cmp.n31 = icmp eq i64 %i.cq, %n.vec25
  br i1 %cmp.n31, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.i.preheader33:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block30
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cs, %middle.block30 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.cw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cw, %i.cj
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1290

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block30, %.lr.ph.i14.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i8 1, ptr %i.cx, align 8, !tbaa !319
  %i.cy = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cy, %i.n
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit, label %.lr.ph.i14.i, !llvm.loop !8

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS2_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1305, !nonnull !141, !align !245 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !314  ; 3 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !315    ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !147 ; 5 uses
  %i.h = getelementptr i8, ptr %i.c, i64 8
  %.val12.i = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.i = ptrtoint ptr %.val12.i to i64
  %i.j = ptrtoint ptr %.val.i to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp eq i64 %i.g, -1
  br i1 %i.m, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.g, %i.l
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ %i.g, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.o = icmp ne ptr %.val.i, null
  %i.p = icmp eq i64 %i.n, 0                      ; 2 uses
  %i.q = or i1 %i.o, %i.p
  br i1 %i.q, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1306, !nonnull !141, !align !245 ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, %i.f
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1307, !nonnull !141, !align !244
  %i.v = load i32, ptr %i.u, align 4, !tbaa !83
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.x = phi i64 [ %i.f, %.lr.ph.i.i ], [ %i.bn, %bb.h ]
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bl, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.011.i.i ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !167 ; 3 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !68  ; 4 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2                 ; 2 uses
  %i.ag = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp samesign ult i64 %i.af, %i.w
  br i1 %i.ah, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ai = sub nuw nsw i64 %i.w, %i.af
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.y, i64 noundef %i.ai)
  %.pre.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !69
  %.pre2.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i:         ; preds = %bb.g, %bb.f
  %i.aj = phi ptr [ %.pre2.i.i.i, %bb.g ], [ %i.aa, %bb.f ] ; 3 uses
  %i.ak = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.ab, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.al = ptrtoaddr ptr %i.aj to i64
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = add i64 %i.al, -4
  %i.ao = sub i64 %i.an, %i.am                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 9223372036854775800     ; 3 uses
  %i.ar = shl i64 %n.vec, 2
  %i.as = getelementptr i8, ptr %i.ak, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.au, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1300

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader34

.lr.ph.i.i.i.i.i.i.i.preheader34:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader34, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader34 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.aj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1301

_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i8 1, ptr %i.ax, align 8, !tbaa !319
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, %bb.e
  %i.ay = phi ptr [ %i.ak, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.ab, %bb.e ]
  %i.az = phi i64 [ %.pre.i.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.x, %bb.e ]
  %i.ba = add i64 %i.az, %.011.i.i
  %i.bb = call noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 noundef %i.ba, ptr noundef %i.ay)
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !167
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  %i.bi = icmp ne i64 %i.bb, %i.bh
  %i.bj = zext i1 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i8 %i.bj, ptr %i.bk, align 8, !tbaa !319
  %i.bl = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.bm = load i64, ptr %i.d, align 8, !tbaa !314
  %i.bn = load i64, ptr %1, align 8, !tbaa !315   ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = icmp ult i64 %i.bl, %i.bo
  br i1 %i.bp, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i, !llvm.loop !16

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i: ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !1306
  br label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %.pre-phi.i = phi i64 [ %i.bo, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i ], [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i ]
  %i.bq = phi ptr [ %.pre.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i ], [ %i.s, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i ]
  %i.br = phi i64 [ %i.bn, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit.i ], [ %i.e, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1308, !nonnull !141, !align !245
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !322
  %i.bw = add i64 %i.bv, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1309, !nonnull !141, !align !245
  %i.bz = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1310, !nonnull !141, !align !245
  %i.cb = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1311, !nonnull !141
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !82, !range !140, !noundef !141
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1312, !nonnull !141, !align !245
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.bt, i64 noundef %i.bw, i64 %i.n, ptr %.val.i, i64 noundef %.pre-phi.i, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i1 noundef zeroext %i.ce, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.cg)
  br i1 %i.p, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.cy, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !167 ; 3 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.cj
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i14.i
  %i.cl = ptrtoaddr ptr %i.cj to i64
  %i.cm = ptrtoaddr ptr %i.ck to i64
  %i.cn = add i64 %i.cl, -4
  %i.co = sub i64 %i.cn, %i.cm                    ; 2 uses
  %i.cp = lshr i64 %i.co, 2
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check23 = icmp ult i64 %i.co, 28
  br i1 %min.iters.check23, label %.lr.ph.i.i.i.i.i.i.i.i.preheader33, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec25 = and i64 %i.cq, 9223372036854775800   ; 3 uses
  %i.cr = shl i64 %n.vec25, 2
  %i.cs = getelementptr i8, ptr %i.ck, i64 %i.cr
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next29, %vector.body26 ] ; 2 uses
  %i.ct = shl i64 %index27, 2
  %next.gep28 = getelementptr i8, ptr %i.ck, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep28, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep28, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.cu, align 4, !tbaa !72
  %index.next29 = add nuw i64 %index27, 8         ; 2 uses
  %i.cv = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.cv, label %middle.block30, label %vector.body26, !llvm.loop !1302

middle.block30:                                   ; preds = %vector.body26
  %cmp.n31 = icmp eq i64 %i.cq, %n.vec25
  br i1 %cmp.n31, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.i.preheader33:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block30
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cs, %middle.block30 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.cw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cw, %i.cj
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1303

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block30, %.lr.ph.i14.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i8 1, ptr %i.cx, align 8, !tbaa !319
  %i.cy = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cy, %i.n
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit, label %.lr.ph.i14.i, !llvm.loop !17

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS2_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_ENKUlST_E_clImEEDaST_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 6 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1319, !nonnull !141, !align !245 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !314  ; 3 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !315    ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !147 ; 5 uses
  %i.h = getelementptr i8, ptr %i.c, i64 8
  %.val12.i = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.i = ptrtoint ptr %.val12.i to i64
  %i.j = ptrtoint ptr %.val.i to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp eq i64 %i.g, -1
  br i1 %i.m, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.g, %i.l
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ %i.g, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.o = icmp ne ptr %.val.i, null
  %i.p = icmp eq i64 %i.n, 0                      ; 2 uses
  %i.q = or i1 %i.o, %i.p
  br i1 %i.q, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %.not.i = icmp eq i64 %i.e, %i.f
  %.pre4 = load ptr, ptr %i.r, align 8, !tbaa !1320 ; 3 uses
  br i1 %.not.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1321, !nonnull !141, !align !244
  %i.u = load i32, ptr %i.t, align 4, !tbaa !83
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.pre4, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.pre4, i64 32
  br label %bb.e

bb.e:                                             ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, %.lr.ph.i
  %i.y = phi i64 [ %i.f, %.lr.ph.i ], [ %i.az, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i ]
  %.011.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dg, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.011.i ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167 ; 4 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !68  ; 4 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2                 ; 2 uses
  %i.ah = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp samesign ult i64 %i.ag, %i.v
  br i1 %i.ai, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.aj = sub nuw nsw i64 %i.v, %i.ag
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.z, i64 noundef %i.aj)
  %.pre.i.i = load ptr, ptr %i.z, align 8, !tbaa !69
  %.pre2.i.i = load ptr, ptr %i.aa, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i:           ; preds = %bb.g, %bb.f
  %i.ak = phi ptr [ %.pre2.i.i, %bb.g ], [ %i.ab, %bb.f ] ; 4 uses
  %i.al = phi ptr [ %.pre.i.i, %bb.g ], [ %i.ac, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ak
  br i1 %.not6.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = add i64 %i.am, -4
  %i.ap = sub i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.as = shl i64 %n.vec, 2
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.av, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader37

.lr.ph.i.i.i.i.i.i.preheader37:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader37, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader37 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !72
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ak
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1314

_ZN7xgboost7RegTree4FVec4InitEm.exit.i:           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 1, ptr %i.ay, align 8, !tbaa !319
  %.pre.i = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, %bb.e
  %i.az = phi i64 [ %.pre.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.y, %bb.e ] ; 4 uses
  %i.ba = phi ptr [ %i.al, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.ac, %bb.e ] ; 6 uses
  %i.bb = phi ptr [ %i.ak, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.ab, %bb.e ]
  %i.bc = load ptr, ptr %i.w, align 8, !tbaa !389
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %i.az
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %.011.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !59 ; 3 uses
  %i.bh = load i64, ptr %i.be, align 8, !tbaa !59 ; 4 uses
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !438 ; 2 uses
  %i.bj = icmp ne ptr %i.bi, null
  %i.bk = icmp eq i64 %i.bg, %i.bh                ; 2 uses
  %i.bl = or i1 %i.bk, %i.bj
  br i1 %i.bl, label %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i, label %bb.i, !prof !70

bb.i:                                             ; preds = %bb.h
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i: ; preds = %bb.h
  %i.bm = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh ; 5 uses
  br i1 %i.bk, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i
  %xtraiter = and i64 %i.bm, 3                    ; 3 uses
  %i.bo = sub i64 %i.bh, %i.bg
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bm, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.020.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.cr, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.020.i.i.i ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !440
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !441
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bu
  store float %i.bs, ptr %i.bv, align 4, !tbaa !72
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.020.i.i.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.bz = load float, ptr %i.by, align 4, !tbaa !440
  %i.ca = load i32, ptr %i.bx, align 4, !tbaa !441
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cb
  store float %i.bz, ptr %i.cc, align 4, !tbaa !72
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.020.i.i.i ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !440
  %i.ch = load i32, ptr %i.ce, align 4, !tbaa !441
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ci
  store float %i.cg, ptr %i.cj, align 4, !tbaa !72
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.020.i.i.i ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !440
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !441
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cp
  store float %i.cn, ptr %i.cq, align 4, !tbaa !72
  %i.cr = add nuw i64 %.020.i.i.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !18

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.020.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.cr, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.020.i.i.i.epil = phi i64 [ %i.cy, %.lr.ph.i.i.i.epil ], [ %.020.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.020.i.i.i.epil ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !440
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !441
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cw
  store float %i.cu, ptr %i.cx, align 4, !tbaa !72
  %i.cy = add nuw i64 %.020.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1315

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i
  %i.cz = ptrtoint ptr %i.bb to i64
  %i.da = ptrtoint ptr %i.ba to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 2
  %i.dd = icmp ne i64 %i.bm, %i.dc
  %i.de = zext i1 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 %i.de, ptr %i.df, align 8, !tbaa !319
  %i.dg = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.dh = load i64, ptr %i.d, align 8, !tbaa !314
  %i.di = sub i64 %i.dh, %i.az                    ; 2 uses
  %i.dj = icmp ult i64 %i.dg, %i.di
  br i1 %i.dj, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit, !llvm.loop !19

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !1320
  br label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit: ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit
  %.pre-phi = phi i64 [ %i.di, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit ], [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i ]
  %i.dk = phi ptr [ %.pre, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit ], [ %.pre4, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i ]
  %i.dl = phi i64 [ %i.az, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.loopexit ], [ %i.e, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1322, !nonnull !141, !align !245
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !327
  %i.dq = add i64 %i.dp, %i.dl
  %i.dr = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1323, !nonnull !141, !align !245
  %i.dt = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1324, !nonnull !141, !align !245
  %i.dv = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1325, !nonnull !141
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !82, !range !140, !noundef !141
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1326, !nonnull !141, !align !245
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.dn, i64 noundef %i.dq, i64 %i.n, ptr %.val.i, i64 noundef %.pre-phi, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.du, i1 noundef zeroext %i.dy, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.ea)
  br i1 %i.p, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS0_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.es, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !167 ; 3 uses
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ee, %i.ed
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.ef = ptrtoaddr ptr %i.ed to i64
  %i.eg = ptrtoaddr ptr %i.ee to i64
  %i.eh = add i64 %i.ef, -4
  %i.ei = sub i64 %i.eh, %i.eg                    ; 2 uses
  %i.ej = lshr i64 %i.ei, 2
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check26 = icmp ult i64 %i.ei, 28
  br i1 %min.iters.check26, label %.lr.ph.i.i.i.i.i.i.i.i.preheader36, label %vector.ph27

vector.ph27:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec28 = and i64 %i.ek, 9223372036854775800   ; 3 uses
  %i.el = shl i64 %n.vec28, 2
  %i.em = getelementptr i8, ptr %i.ee, i64 %i.el
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph27
  %index30 = phi i64 [ 0, %vector.ph27 ], [ %index.next32, %vector.body29 ] ; 2 uses
  %i.en = shl i64 %index30, 2
  %next.gep31 = getelementptr i8, ptr %i.ee, i64 %i.en ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep31, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep31, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.eo, align 4, !tbaa !72
  %index.next32 = add nuw i64 %index30, 8         ; 2 uses
  %i.ep = icmp eq i64 %index.next32, %n.vec28
  br i1 %i.ep, label %middle.block33, label %vector.body29, !llvm.loop !1316

middle.block33:                                   ; preds = %vector.body29
  %cmp.n34 = icmp eq i64 %i.ek, %n.vec28
  br i1 %cmp.n34, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader36

.lr.ph.i.i.i.i.i.i.i.i.preheader36:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block33
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.em, %middle.block33 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader36, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader36 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.eq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.eq, %i.ed
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1317

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block33, %.lr.ph.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store i8 1, ptr %i.er, align 8, !tbaa !319
  %i.es = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.es, %i.n
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS0_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit, label %.lr.ph.i.i, !llvm.loop !20

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm1ENS0_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSC_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSQ_7Range1dEEEDaST_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4data8cpu_impl11DispatchAnyILb0ESt10shared_ptrRZNKS_9predictor12CPUPredictor14InplacePredictES3_INS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiEUlT_E_EEDcPKNS_7ContextESt3anyOT1_Pb(ptr noundef %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %3) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %5 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %6 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %7 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %8 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %9 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %10 = alloca %"union.std::any::_Arg", align 8   ; 4 uses
  %11 = alloca %"union.std::any::_Arg", align 8   ; 4 uses
  %12 = alloca %"union.std::any::_Arg", align 8   ; 4 uses
  %13 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %14 = alloca %"class.std::shared_ptr.458", align 16 ; 7 uses
  %15 = alloca %"class.std::shared_ptr.458", align 16 ; 7 uses
  %16 = alloca %"class.std::shared_ptr.461", align 16 ; 7 uses
  %17 = alloca %"class.std::shared_ptr.461", align 16 ; 7 uses
  %18 = alloca %"class.std::shared_ptr.464", align 16 ; 7 uses
  %19 = alloca %"class.std::shared_ptr.464", align 16 ; 7 uses
  %20 = alloca %"class.std::shared_ptr.467", align 16 ; 7 uses
  %21 = alloca %"class.std::shared_ptr.467", align 16 ; 7 uses
  %22 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !139    ; 2 uses
  %.not138 = icmp eq ptr %i.a, null
  br i1 %.not138, label %bb.b, label %.thread, !prof !173

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.b = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %13)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.b, ptr noundef nonnull @.str.61, i32 noundef 207)
  %i.c = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.62, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.d unwind label %bb.ea

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.dz

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %.pr = load ptr, ptr %1, align 8, !tbaa !139    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNKSt3any4typeEv.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.e
  %i.g = phi ptr [ %.pr, %bb.e ], [ %i.a, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void %i.g(i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %12)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.thread
  %i.h = load ptr, ptr %12, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZNKSt3any4typeEv.exit

bb.g:                                             ; preds = %.thread
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #35
  unreachable

_ZNKSt3any4typeEv.exit:                           ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.h, %bb.f ], [ @_ZTIv, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1336 ; 3 uses
  %i.m = icmp eq ptr %i.l, @_ZTSSt10shared_ptrIN7xgboost4data12DenseAdapterEE
  br i1 %i.m, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt3any4typeEv.exit
  %i.n = load i8, ptr %i.l, align 1, !tbaa !50
  %.not.i9 = icmp eq i8 %i.n, 42
  br i1 %.not.i9, label %_ZNKSt9type_infoeqERKS_.exit.thread119, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.h
  %i.o = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(46) @_ZTSSt10shared_ptrIN7xgboost4data12DenseAdapterEE) #18
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread119

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %_ZNKSt3any4typeEv.exit, %_ZNKSt9type_infoeqERKS_.exit
  %.not.i11 = icmp eq ptr %3, null
  br i1 %.not.i11, label %_ZZN7xgboost4data8cpu_impl11DispatchAnyILb0ESt10shared_ptrRZNKS_9predictor12CPUPredictor14InplacePredictES3_INS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiEUlT_E_EEDcPKNS_7ContextESt3anyOT1_PbENKUlvE_clEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread
  store i8 0, ptr %3, align 1, !tbaa !82
  br label %_ZZN7xgboost4data8cpu_impl11DispatchAnyILb0ESt10shared_ptrRZNKS_9predictor12CPUPredictor14InplacePredictES3_INS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiEUlT_E_EEDcPKNS_7ContextESt3anyOT1_PbENKUlvE_clEv.exit

_ZZN7xgboost4data8cpu_impl11DispatchAnyILb0ESt10shared_ptrRZNKS_9predictor12CPUPredictor14InplacePredictES3_INS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiEUlT_E_EEDcPKNS_7ContextESt3anyOT1_PbENKUlvE_clEv.exit: ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  %i.q = load ptr, ptr %1, align 8, !tbaa !139, !noalias !1337 ; 3 uses
  %i.r = icmp eq ptr %i.q, @_ZNSt3any17_Manager_externalISt10shared_ptrIN7xgboost4data12DenseAdapterEEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
  br i1 %i.r, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZZN7xgboost4data8cpu_impl11DispatchAnyILb0ESt10shared_ptrRZNKS_9predictor12CPUPredictor14InplacePredictES3_INS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiEUlT_E_EEDcPKNS_7ContextESt3anyOT1_PbENKUlvE_clEv.exit
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3any4typeEv.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18, !noalias !1337
  invoke void %i.q(i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %11)
          to label %bb.l unwind label %bb.m, !noalias !1337

bb.l:                                             ; preds = %bb.k
  %i.s = load ptr, ptr %11, align 8, !tbaa !50, !noalias !1337
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !1337
  br label %_ZNKSt3any4typeEv.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #35, !noalias !1337
  unreachable

_ZNKSt3any4typeEv.exit.i.i.i:                     ; preds = %bb.l, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.l ], [ @_ZTIv, %bb.j ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1336, !noalias !1337 ; 3 uses
  %i.x = icmp eq ptr %i.w, @_ZTSSt10shared_ptrIN7xgboost4data12DenseAdapterEE
  br i1 %i.x, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNKSt3any4typeEv.exit.i.i.i
  %i.y = load i8, ptr %i.w, align 1, !tbaa !50, !noalias !1337
  %.not.i4.i.i.i = icmp eq i8 %i.y, 42
  br i1 %.not.i4.i.i.i, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.thread.i, label %_ZNKSt9type_infoeqERKS_.exit.i.i.i

_ZNKSt9type_infoeqERKS_.exit.i.i.i:               ; preds = %bb.n
  %i.z = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(46) @_ZTSSt10shared_ptrIN7xgboost4data12DenseAdapterEE) #18, !noalias !1337
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.i, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.thread.i

_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.i: ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i.i, %_ZNKSt3any4typeEv.exit.i.i.i, %_ZZN7xgboost4data8cpu_impl11DispatchAnyILb0ESt10shared_ptrRZNKS_9predictor12CPUPredictor14InplacePredictES3_INS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiEUlT_E_EEDcPKNS_7ContextESt3anyOT1_PbENKUlvE_clEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_4
begin_hunk_5_@_ZZNK7xgboost9predictor12CPUPredictor14InplacePredictESt10shared_ptrINS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiENKUlOT_E_clIRNS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEDaSC_:bb.a
          cleanup
  br label %.body.i.i.i.i

bb.bv:                                            ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_11AdapterViewINS2_4data12DenseAdapterENS2_12NoOpAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSJ_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSD_iOT1_EUlSY_E_JmEEEvSY_DpT0_.exit.i.i
  %.pr84.pr.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !290 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i77.i.i.i.i = icmp eq ptr %.pr84.pr.i.i.i.i, null
  br i1 %.not.i77.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i: ; preds = %bb.bv
  store ptr %.pr84.pr.i.i.i.i, ptr %10, align 8, !tbaa !290
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #32
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  unreachable

bb.bx:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = load ptr, ptr %10, align 8, !tbaa !290
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i2.i.i.i.i.i, label %.body.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  br label %.body.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i:          ; preds = %bb.bv, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i

.body.i.i.i.i:                                    ; preds = %bb.bm, %bb.by, %bb.bx, %bb.bu, %bb.bs, %bb.br
  %.pn64.i.i.i.i = phi { ptr, i32 } [ %i.hu, %bb.bx ], [ %i.hu, %bb.by ], [ %i.ht, %bb.bu ], [ %i.hn, %bb.br ], [ %i.ho, %bb.bs ], [ %i.gw, %bb.bm ]
  %i.hw = load ptr, ptr %13, align 8, !tbaa !290
  %.not.i.i79.i.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i79.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.body.i.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %13) #18
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i:        ; preds = %bb.bz, %.body.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %.body47.i

bb.ca:                                            ; preds = %bb.bd
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #35
  unreachable

_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i: ; preds = %.noexc45.i, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i, %.preheader.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  %i.hz = load ptr, ptr %18, align 8, !tbaa !175  ; 3 uses
  %.not.i.i.i49.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i49.i, label %_ZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsE.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i
  %i.ia = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !246
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.hz to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.ie) #34
  br label %_ZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsE.exit

.loopexit.i:                                      ; preds = %.lr.ph108.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

.loopexit.split-lp.i:                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

.body47.i:                                        ; preds = %.loopexit.split-lp.i, %.loopexit.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, %bb.be
  %eh.lpad-body48.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.be ], [ %.pn64.i.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %.body.i

.body.i:                                          ; preds = %.body47.i, %.loopexit.split-lp67.i, %.loopexit66.i, %bb.az, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i, %bb.y, %bb.i
  %.pn22.i = phi { ptr, i32 } [ %eh.lpad-body48.i, %.body47.i ], [ %i.cb, %bb.i ], [ %.pn.pn.i, %bb.az ], [ %.pn.i.i.i, %bb.y ], [ %.pn64.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i ], [ %lpad.loopexit68.i, %.loopexit66.i ], [ %lpad.loopexit.split-lp69.i, %.loopexit.split-lp67.i ]
  %i.if = load ptr, ptr %18, align 8, !tbaa !175  ; 3 uses
  %.not.i.i.i50.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i50.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i, label %bb.cc

bb.cc:                                            ; preds = %.body.i
  %i.ig = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !246
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %i.if to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ik) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i

_ZNSt6vectorIiSaIiEED2Ev.exit51.i:                ; preds = %bb.cc, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  resume { ptr, i32 } %.pn22.i

bb.cd:                                            ; preds = %bb.l
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsE.exit: ; preds = %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_ENKUlSV_E_clImEEDaSV_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = shl i64 %0, 6                            ; 3 uses
  %i.b = sub i64 %.0.val.0.val, %i.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.c = add i64 %.sroa.speculated, %i.a
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.a, i64 noundef %i.c)
  %i.d = load ptr, ptr %.8.val, align 8, !tbaa !1408, !nonnull !141, !align !245 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !314
  %i.g = load i64, ptr %1, align 8, !tbaa !315
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !147 ; 5 uses
  %i.i = getelementptr i8, ptr %i.d, i64 8
  %.val12.i = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.j = ptrtoint ptr %.val12.i to i64
  %i.k = ptrtoint ptr %.val.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = icmp eq i64 %i.h, -1
  br i1 %i.n, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.h, %i.m
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.o = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.a ] ; 4 uses
  %i.p = icmp ne ptr %.val.i, null
  %i.q = icmp eq i64 %i.o, 0                      ; 2 uses
  %i.r = or i1 %i.p, %i.q
  br i1 %i.r, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1409, !nonnull !141, !align !245
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1410, !nonnull !141, !align !244
  %i.w = load i32, ptr %i.v, align 4, !tbaa !83
  call void @_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.w, i64 %i.o, ptr %.val.i)
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1411, !nonnull !141, !align !245
  %i.z = load i64, ptr %1, align 8, !tbaa !315    ; 2 uses
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !314
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1412, !nonnull !141, !align !245
  %i.ae = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1413, !nonnull !141, !align !245
  %i.ag = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1414, !nonnull !141
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !82, !range !140, !noundef !141
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1415, !nonnull !141, !align !245
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.y, i64 noundef %i.z, i64 %i.o, ptr %.val.i, i64 noundef %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i1 noundef zeroext %i.aj, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.al)
  br i1 %i.q, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.bd, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !167 ; 3 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = add i64 %i.aq, -4
  %i.at = sub i64 %i.as, %i.ar                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.az, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1404

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.i.preheader8:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader8 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1405

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i8 1, ptr %i.bc, align 8, !tbaa !319
  %i.bd = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.o
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i, !llvm.loop !1406

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i64 %3, ptr %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !314
  %i.c = load i64, ptr %1, align 8, !tbaa !315    ; 2 uses
  %.not = icmp eq i64 %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = zext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.cc, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit ]
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.011 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !167  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !68   ; 4 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp eq ptr %i.i, %i.j
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i64 %i.n, %i.d
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = sub nuw nsw i64 %i.d, %i.n
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.g, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !69
  %.pre2.i = load ptr, ptr %i.h, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre2.i, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %i.s = phi ptr [ %.pre.i, %bb.d ], [ %i.j, %bb.c ] ; 6 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not6.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.t = ptrtoaddr ptr %i.r to i64
  %i.u = ptrtoaddr ptr %i.s to i64
  %i.v = add i64 %i.t, -4
  %i.w = sub i64 %i.v, %i.u                       ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.ac, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1416

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.preheader22:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader22 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i, align 4, !tbaa !72
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1417

_ZN7xgboost7RegTree4FVec4InitEm.exit:             ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 1, ptr %i.af, align 8, !tbaa !319
  %.pre = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.e

bb.e:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit, %bb.b
  %i.ag = phi ptr [ %i.s, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.j, %bb.b ] ; 3 uses
  %i.ah = phi i64 [ %.pre, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.f, %bb.b ]
  %i.ai = add i64 %i.ah, %.011
  %i.aj = load ptr, ptr %0, align 8, !tbaa !468   ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.am(ptr noundef nonnull align 8 dereferenceable(56) %i.aj), !inline_history !1418 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1425, !noalias !1426
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1427, !noalias !1426 ; 6 uses
  %i.ar = mul i64 %i.aq, %i.ai
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ar ; 3 uses
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %.pre15.i.i = load float, ptr %i.e, align 8, !tbaa !469 ; 2 uses
  %xtraiter = and i64 %i.aq, 1
  %i.at = icmp eq i64 %i.aq, 1
  br i1 %i.at, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.aq, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i.new
  %i.au = phi float [ %.pre15.i.i, %.lr.ph.i.i.new ], [ %i.bj, %bb.j ] ; 2 uses
  %.014.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.bk, %bb.j ] ; 4 uses
  %.0913.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %.1.i.i.1, %bb.j ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.j ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.014.i.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !72, !noalias !1428 ; 3 uses
  %i.ax = fcmp oeq float %i.au, %i.aw
  %i.ay = fcmp uno float %i.aw, 0.000000e+00
  %or.cond.i.i = or i1 %i.ay, %i.ax
  br i1 %or.cond.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.014.i.i
  store float %i.aw, ptr %i.az, align 4, !tbaa !72
  %i.ba = add i64 %.0913.i.i, 1
  %.pre.i.i = load float, ptr %i.e, align 8, !tbaa !469
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bb = phi float [ %i.au, %bb.f ], [ %.pre.i.i, %bb.g ] ; 2 uses
  %.1.i.i = phi i64 [ %.0913.i.i, %bb.f ], [ %i.ba, %bb.g ] ; 2 uses
  %i.bc = or disjoint i64 %.014.i.i, 1            ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !72, !noalias !1428 ; 3 uses
  %i.bf = fcmp oeq float %i.bb, %i.be
  %i.bg = fcmp uno float %i.be, 0.000000e+00
  %or.cond.i.i.1 = or i1 %i.bg, %i.bf
end_hunk_5
begin_hunk_6_@_ZZNK7xgboost9predictor12CPUPredictor14InplacePredictESt10shared_ptrINS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiENKUlOT_E_clIRNS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEDaSC_:bb.a
          cleanup
  br label %.body.i.i.i.i

bb.bv:                                            ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_11AdapterViewINS2_4data12ArrayAdapterENS2_12NoOpAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSJ_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSD_iOT1_EUlSY_E_JmEEEvSY_DpT0_.exit.i.i
  %.pr84.pr.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !290 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i77.i.i.i.i = icmp eq ptr %.pr84.pr.i.i.i.i, null
  br i1 %.not.i77.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i: ; preds = %bb.bv
  store ptr %.pr84.pr.i.i.i.i, ptr %10, align 8, !tbaa !290
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #32
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  unreachable

bb.bx:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = load ptr, ptr %10, align 8, !tbaa !290
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i2.i.i.i.i.i, label %.body.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  br label %.body.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i:          ; preds = %bb.bv, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i

.body.i.i.i.i:                                    ; preds = %bb.bm, %bb.by, %bb.bx, %bb.bu, %bb.bs, %bb.br
  %.pn64.i.i.i.i = phi { ptr, i32 } [ %i.hu, %bb.bx ], [ %i.hu, %bb.by ], [ %i.ht, %bb.bu ], [ %i.hn, %bb.br ], [ %i.ho, %bb.bs ], [ %i.gw, %bb.bm ]
  %i.hw = load ptr, ptr %13, align 8, !tbaa !290
  %.not.i.i79.i.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i79.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.body.i.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %13) #18
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i:        ; preds = %bb.bz, %.body.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %.body47.i

bb.ca:                                            ; preds = %bb.bd
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #35
  unreachable

_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i: ; preds = %.noexc45.i, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i, %.preheader.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  %i.hz = load ptr, ptr %18, align 8, !tbaa !175  ; 3 uses
  %.not.i.i.i49.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i49.i, label %_ZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsE.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i
  %i.ia = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !246
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.hz to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.ie) #34
  br label %_ZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsE.exit

.loopexit.i:                                      ; preds = %.lr.ph108.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

.loopexit.split-lp.i:                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

.body47.i:                                        ; preds = %.loopexit.split-lp.i, %.loopexit.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, %bb.be
  %eh.lpad-body48.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.be ], [ %.pn64.i.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %.body.i

.body.i:                                          ; preds = %.body47.i, %.loopexit.split-lp67.i, %.loopexit66.i, %bb.az, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i, %bb.y, %bb.i
  %.pn22.i = phi { ptr, i32 } [ %eh.lpad-body48.i, %.body47.i ], [ %i.cb, %bb.i ], [ %.pn.pn.i, %bb.az ], [ %.pn.i.i.i, %bb.y ], [ %.pn64.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i ], [ %lpad.loopexit68.i, %.loopexit66.i ], [ %lpad.loopexit.split-lp69.i, %.loopexit.split-lp67.i ]
  %i.if = load ptr, ptr %18, align 8, !tbaa !175  ; 3 uses
  %.not.i.i.i50.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i50.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i, label %bb.cc

bb.cc:                                            ; preds = %.body.i
  %i.ig = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !246
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %i.if to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ik) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i

_ZNSt6vectorIiSaIiEED2Ev.exit51.i:                ; preds = %bb.cc, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  resume { ptr, i32 } %.pn22.i

bb.cd:                                            ; preds = %bb.l
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsE.exit: ; preds = %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_ENKUlSV_E_clImEEDaSV_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = shl i64 %0, 6                            ; 3 uses
  %i.b = sub i64 %.0.val.0.val, %i.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.c = add i64 %.sroa.speculated, %i.a
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.a, i64 noundef %i.c)
  %i.d = load ptr, ptr %.8.val, align 8, !tbaa !1456, !nonnull !141, !align !245 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !314
  %i.g = load i64, ptr %1, align 8, !tbaa !315
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !147 ; 5 uses
  %i.i = getelementptr i8, ptr %i.d, i64 8
  %.val12.i = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.j = ptrtoint ptr %.val12.i to i64
  %i.k = ptrtoint ptr %.val.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = icmp eq i64 %i.h, -1
  br i1 %i.n, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.h, %i.m
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.o = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.a ] ; 4 uses
  %i.p = icmp ne ptr %.val.i, null
  %i.q = icmp eq i64 %i.o, 0                      ; 2 uses
  %i.r = or i1 %i.p, %i.q
  br i1 %i.r, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1457, !nonnull !141, !align !245
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1458, !nonnull !141, !align !244
  %i.w = load i32, ptr %i.v, align 4, !tbaa !83
  call void @_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.w, i64 %i.o, ptr %.val.i)
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1459, !nonnull !141, !align !245
  %i.z = load i64, ptr %1, align 8, !tbaa !315    ; 2 uses
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !314
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1460, !nonnull !141, !align !245
  %i.ae = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1461, !nonnull !141, !align !245
  %i.ag = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1462, !nonnull !141
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !82, !range !140, !noundef !141
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1463, !nonnull !141, !align !245
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.y, i64 noundef %i.z, i64 %i.o, ptr %.val.i, i64 noundef %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i1 noundef zeroext %i.aj, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.al)
  br i1 %i.q, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.bd, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !167 ; 3 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = add i64 %i.aq, -4
  %i.at = sub i64 %i.as, %i.ar                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.az, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1452

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.i.preheader8:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader8 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1453

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i8 1, ptr %i.bc, align 8, !tbaa !319
  %i.bd = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.o
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i, !llvm.loop !1454

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i64 %3, ptr %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !314
  %i.c = load i64, ptr %1, align 8, !tbaa !315    ; 2 uses
  %.not = icmp eq i64 %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = zext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.cs, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit ]
  %.077 = phi i64 [ 0, %.lr.ph ], [ %i.cq, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.077 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !167  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !68   ; 4 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp eq ptr %i.i, %i.j
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i64 %i.n, %i.d
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = sub nuw nsw i64 %i.d, %i.n
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.g, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !69
  %.pre2.i = load ptr, ptr %i.h, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre2.i, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %i.s = phi ptr [ %.pre.i, %bb.d ], [ %i.j, %bb.c ] ; 6 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not6.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.t = ptrtoaddr ptr %i.r to i64
  %i.u = ptrtoaddr ptr %i.s to i64
  %i.v = add i64 %i.t, -4
  %i.w = sub i64 %i.v, %i.u                       ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.ac, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader86

.lr.ph.i.i.i.i.i.preheader86:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader86, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader86 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i, align 4, !tbaa !72
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1465

_ZN7xgboost7RegTree4FVec4InitEm.exit:             ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 1, ptr %i.af, align 8, !tbaa !319
  %.pre = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.e

bb.e:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit, %bb.b
  %i.ag = phi ptr [ %i.s, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.j, %bb.b ]
  %i.ah = phi i64 [ %.pre, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.f, %bb.b ]
  %i.ai = load ptr, ptr %0, align 8, !tbaa !471   ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef nonnull align 8 dereferenceable(72) ptr %i.al(ptr noundef nonnull align 8 dereferenceable(160) %i.ai), !inline_history !1466 ; 5 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.2563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.2563.0.copyload = load i64, ptr %.sroa.2563.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 65
  %.sroa.3875.0.copyload = load i8, ptr %.sroa.3875.0..sroa_idx, align 1 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.2563.0.copyload, 0
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.sroa.27.0.copyload = load ptr, ptr %.sroa.27.0..sroa_idx, align 8 ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.an = add i64 %i.ah, %.077
  %i.ao = mul i64 %.sroa.3.0.copyload, %i.an      ; 5 uses
  %i.ap = getelementptr [8 x i8], ptr %.sroa.27.0.copyload, i64 %i.ao ; 3 uses
  %i.aq = getelementptr [4 x i8], ptr %.sroa.27.0.copyload, i64 %i.ao ; 3 uses
  %i.ar = getelementptr [2 x i8], ptr %.sroa.27.0.copyload, i64 %i.ao ; 2 uses
  %i.as = getelementptr i8, ptr %.sroa.27.0.copyload, i64 %i.ao ; 2 uses
  %i.at = getelementptr [16 x i8], ptr %.sroa.27.0.copyload, i64 %i.ao
  %switch = icmp ult i8 %.sroa.3875.0.copyload, 12
  br i1 %switch, label %.lr.ph.i.i.split, label %bb.q

.lr.ph.i.i.split:                                 ; preds = %.lr.ph.i.i, %bb.s
  %.013.i.i = phi i64 [ %i.cg, %bb.s ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %.0912.i.i = phi i64 [ %.1.i.i, %bb.s ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.au = mul i64 %.013.i.i, %.sroa.14.0.copyload ; 11 uses
  switch i8 %.sroa.3875.0.copyload, label %bb.p [
    i8 0, label %bb.f
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
    i8 8, label %bb.m
    i8 9, label %bb.n
    i8 10, label %bb.o
  ]

bb.f:                                             ; preds = %.lr.ph.i.i.split, %.lr.ph.i.i.split
  %i.av = getelementptr [4 x i8], ptr %i.aq, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !72, !noalias !1471
  br label %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit

end_hunk_6
begin_hunk_7_@_ZZNK7xgboost9predictor12CPUPredictor14InplacePredictESt10shared_ptrINS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiENKUlOT_E_clIRNS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEDaSC_:bb.a
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsE.exit: ; preds = %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_ENKUlSV_E_clImEEDaSV_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = shl i64 %0, 6                            ; 3 uses
  %i.b = sub i64 %.0.val.0.val, %i.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.c = add i64 %.sroa.speculated, %i.a
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.a, i64 noundef %i.c)
  %i.d = load ptr, ptr %.8.val, align 8, !tbaa !1507, !nonnull !141, !align !245 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !314  ; 3 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !315    ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !147 ; 5 uses
  %i.i = getelementptr i8, ptr %i.d, i64 8
  %.val12.i = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.j = ptrtoint ptr %.val12.i to i64
  %i.k = ptrtoint ptr %.val.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = icmp eq i64 %i.h, -1
  br i1 %i.n, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.h, %i.m
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.o = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.a ] ; 3 uses
  %i.p = icmp ne ptr %.val.i, null
  %i.q = icmp eq i64 %i.o, 0                      ; 2 uses
  %i.r = or i1 %i.p, %i.q
  br i1 %i.r, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1508, !nonnull !141, !align !245
  %.not.i.i = icmp eq i64 %i.f, %i.g
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1509, !nonnull !141, !align !244
  %i.w = load i32, ptr %i.v, align 4, !tbaa !83
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.y = phi i64 [ %i.g, %.lr.ph.i.i ], [ %i.bo, %bb.h ]
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bm, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.011.i.i ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167 ; 3 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !68  ; 4 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2                 ; 2 uses
  %i.ah = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp samesign ult i64 %i.ag, %i.x
  br i1 %i.ai, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aj = sub nuw nsw i64 %i.x, %i.ag
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.z, i64 noundef %i.aj)
  %.pre.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !69
  %.pre2.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i:         ; preds = %bb.g, %bb.f
  %i.ak = phi ptr [ %.pre2.i.i.i, %bb.g ], [ %i.ab, %bb.f ] ; 3 uses
  %i.al = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.ac, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ak
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = add i64 %i.am, -4
  %i.ap = sub i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.as = shl i64 %n.vec, 2
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.av, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1500

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader34

.lr.ph.i.i.i.i.i.i.i.preheader34:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader34, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader34 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ak
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1501

_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 1, ptr %i.ay, align 8, !tbaa !319
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, %bb.e
  %i.az = phi ptr [ %i.al, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.ac, %bb.e ]
  %i.ba = phi i64 [ %.pre.i.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.y, %bb.e ]
  %i.bb = add i64 %i.ba, %.011.i.i
  %i.bc = call noundef i64 @_ZNK7xgboost9predictor11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(13) %i.t, i64 noundef %i.bb, ptr noundef %i.az)
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !167
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !68
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  %i.bj = icmp ne i64 %i.bc, %i.bi
  %i.bk = zext i1 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 %i.bk, ptr %i.bl, align 8, !tbaa !319
  %i.bm = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.bn = load i64, ptr %i.e, align 8, !tbaa !314
  %i.bo = load i64, ptr %1, align 8, !tbaa !315   ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, !llvm.loop !1502

_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i: ; preds = %bb.h, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  %.pre-phi.i = phi i64 [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ], [ %i.bp, %bb.h ]
  %i.br = phi i64 [ %i.f, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ], [ %i.bo, %bb.h ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1510, !nonnull !141, !align !245
  %i.bu = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1511, !nonnull !141, !align !245
  %i.bw = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1512, !nonnull !141, !align !245
  %i.by = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1513, !nonnull !141
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !82, !range !140, !noundef !141
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1514, !nonnull !141, !align !245
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.bt, i64 noundef %i.br, i64 %i.o, ptr %.val.i, i64 noundef %.pre-phi.i, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i1 noundef zeroext %i.cb, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.cd)
  br i1 %i.q, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.cv, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !167 ; 3 uses
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.cg
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i14.i
  %i.ci = ptrtoaddr ptr %i.cg to i64
  %i.cj = ptrtoaddr ptr %i.ch to i64
  %i.ck = add i64 %i.ci, -4
  %i.cl = sub i64 %i.ck, %i.cj                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check23 = icmp ult i64 %i.cl, 28
  br i1 %min.iters.check23, label %.lr.ph.i.i.i.i.i.i.i.i.preheader33, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec25 = and i64 %i.cn, 9223372036854775800   ; 3 uses
  %i.co = shl i64 %n.vec25, 2
  %i.cp = getelementptr i8, ptr %i.ch, i64 %i.co
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next29, %vector.body26 ] ; 2 uses
  %i.cq = shl i64 %index27, 2
  %next.gep28 = getelementptr i8, ptr %i.ch, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep28, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep28, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.cr, align 4, !tbaa !72
  %index.next29 = add nuw i64 %index27, 8         ; 2 uses
  %i.cs = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.cs, label %middle.block30, label %vector.body26, !llvm.loop !1503

middle.block30:                                   ; preds = %vector.body26
  %cmp.n31 = icmp eq i64 %i.cn, %n.vec25
  br i1 %cmp.n31, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.i.preheader33:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block30
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cp, %middle.block30 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.ct = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.cg
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1504

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block30, %.lr.ph.i14.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i8 1, ptr %i.cu, align 8, !tbaa !319
  %i.cv = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cv, %i.o
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i14.i, !llvm.loop !1505

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7xgboost9predictor11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(13) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !474    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(172) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(368) %i.a) ; 10 uses
  %i.f = tail call noundef i64 @_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_(ptr noundef nonnull align 8 dereferenceable(172) %i.e, ptr nonnull align 8 dereferenceable(172) %i.e, i64 %1), !noalias !1520 ; 3 uses
  %i.g = add i64 %1, 1
  %i.h = tail call noundef i64 @_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_(ptr noundef nonnull align 8 dereferenceable(172) %i.e, ptr nonnull align 8 dereferenceable(172) %i.e, i64 %i.g), !noalias !1520 ; 2 uses
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.45.0.copyload.i = load i64, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !50, !noalias !1520 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.16.32.copyload = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 11 uses
  %.sroa.2835.32..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 105
  %.sroa.2835.32.copyload = load i8, ptr %.sroa.2835.32..sroa.6.0..sroa_idx.i.sroa_idx, align 1 ; 2 uses
  %.sroa.30.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %.sroa.30.56.copyload = load i64, ptr %.sroa.30.56..sroa_idx, align 8 ; 11 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %.sroa.43.88.copyload = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 11 uses
  %.sroa.5556.88..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 161
  %.sroa.5556.88.copyload = load i8, ptr %.sroa.5556.88..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  %i.i = mul i64 %.sroa.45.0.copyload.i, %i.f
  %i.j = sub i64 %i.h, %i.f
  %.not = icmp eq i64 %i.h, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %switch = icmp ult i8 %.sroa.2835.32.copyload, 12
  br i1 %switch, label %.lr.ph.split, label %bb.m

._crit_edge:                                      ; preds = %bb.aa, %bb.a
  %.09.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.aa ]
  ret i64 %.09.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.aa
  %.062 = phi i64 [ %i.co, %bb.aa ], [ 0, %.lr.ph ] ; 2 uses
  %.0961 = phi i64 [ %.1, %bb.aa ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = add i64 %.062, %i.i                      ; 12 uses
  %i.m = mul i64 %i.l, %.sroa.45.0.copyload.i     ; 11 uses
  switch i8 %.sroa.2835.32.copyload, label %bb.l [
    i8 0, label %bb.b
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.k
  ]

bb.b:                                             ; preds = %.lr.ph.split, %.lr.ph.split
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !72, !noalias !1521
  %i.p = fptoui float %i.o to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.c:                                             ; preds = %.lr.ph.split
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.r = load double, ptr %i.q, align 8, !tbaa !496, !noalias !1521
  %i.s = fptoui double %i.r to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.u = load x86_fp80, ptr %i.t, align 16, !tbaa !498, !noalias !1521
  %i.v = fptoui x86_fp80 %i.u to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.e:                                             ; preds = %.lr.ph.split
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.16.32.copyload, i64 %i.m
  %i.x = load i8, ptr %i.w, align 1, !tbaa !50, !noalias !1521
  %i.y = sext i8 %i.x to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.f:                                             ; preds = %.lr.ph.split
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !375, !noalias !1521
  %i.ab = sext i16 %i.aa to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.g:                                             ; preds = %.lr.ph.split
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !83, !noalias !1521
  %i.ae = sext i32 %i.ad to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.h:                                             ; preds = %.lr.ph.split
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !59, !noalias !1521
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.i:                                             ; preds = %.lr.ph.split
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.16.32.copyload, i64 %i.m
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !50, !noalias !1521
  %i.aj = zext i8 %i.ai to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.j:                                             ; preds = %.lr.ph.split
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !375, !noalias !1521
  %i.am = zext i16 %i.al to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.k:                                             ; preds = %.lr.ph.split
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !83, !noalias !1521
  %i.ap = zext i32 %i.ao to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.l:                                             ; preds = %.lr.ph.split
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !59, !noalias !1521
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.m:                                             ; preds = %.lr.ph
  tail call void @_ZSt9terminatev() #35, !noalias !1521
  unreachable

_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i11 = phi i64 [ %i.p, %bb.b ], [ %i.s, %bb.c ], [ %i.v, %bb.d ], [ %i.y, %bb.e ], [ %i.ab, %bb.f ], [ %i.ae, %bb.g ], [ %i.ag, %bb.h ], [ %i.aj, %bb.i ], [ %i.am, %bb.j ], [ %i.ap, %bb.k ], [ %i.ar, %bb.l ]
  switch i8 %.sroa.5556.88.copyload, label %bb.y [
    i8 0, label %bb.n
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
    i8 4, label %bb.q
    i8 5, label %bb.r
    i8 6, label %bb.s
    i8 7, label %bb.t
    i8 8, label %bb.u
    i8 9, label %bb.v
    i8 10, label %bb.w
    i8 11, label %bb.x
  ]

bb.n:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit, %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit
  %i.as = mul i64 %i.l, %.sroa.30.56.copyload
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.88.copyload, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !72, !noalias !1521
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit

bb.o:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit
  %i.av = mul i64 %i.l, %.sroa.30.56.copyload
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.43.88.copyload, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !496, !noalias !1521
end_hunk_7
begin_hunk_8_@_ZZNK7xgboost9predictor12CPUPredictor14InplacePredictESt10shared_ptrINS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiENKUlOT_E_clIRNS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEDaSC_:bb.a
          cleanup
  br label %.body.i.i.i.i

bb.bw:                                            ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_11AdapterViewINS2_4data15ColumnarAdapterENS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSJ_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSD_iOT1_EUlSY_E_JmEEEvSY_DpT0_.exit.i.i
  %.pr84.pr.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !290 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i77.i.i.i.i = icmp eq ptr %.pr84.pr.i.i.i.i, null
  br i1 %.not.i77.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i: ; preds = %bb.bw
  store ptr %.pr84.pr.i.i.i.i, ptr %10, align 8, !tbaa !290
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #32
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  unreachable

bb.by:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ie = load ptr, ptr %10, align 8, !tbaa !290
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i2.i.i.i.i.i, label %.body.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  br label %.body.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i:          ; preds = %bb.bw, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i

.body.i.i.i.i:                                    ; preds = %bb.bn, %bb.bz, %bb.by, %bb.bv, %bb.bt, %bb.bs
  %.pn64.i.i.i.i = phi { ptr, i32 } [ %i.id, %bb.by ], [ %i.id, %bb.bz ], [ %i.ic, %bb.bv ], [ %i.hw, %bb.bs ], [ %i.hx, %bb.bt ], [ %i.hf, %bb.bn ]
  %i.if = load ptr, ptr %13, align 8, !tbaa !290
  %.not.i.i79.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i79.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %.body.i.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %13) #18
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i:        ; preds = %bb.ca, %.body.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %.body47.i

bb.cb:                                            ; preds = %bb.be
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #35
  unreachable

_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i: ; preds = %.noexc45.i, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i, %.preheader.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  %i.ii = load ptr, ptr %18, align 8, !tbaa !175  ; 3 uses
  %.not.i.i.i49.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i49.i, label %_ZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsE.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i
  %i.ij = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !246
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = sub i64 %i.il, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.in) #34
  br label %_ZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsE.exit

.loopexit.i:                                      ; preds = %.lr.ph108.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

.loopexit.split-lp.i:                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

.body47.i:                                        ; preds = %.loopexit.split-lp.i, %.loopexit.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, %bb.bf
  %eh.lpad-body48.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.bf ], [ %.pn64.i.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %.body.i

.body.i:                                          ; preds = %.body47.i, %.loopexit.split-lp69.i, %.loopexit68.i, %bb.ba, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i, %bb.z, %bb.j
  %.pn22.i = phi { ptr, i32 } [ %eh.lpad-body48.i, %.body47.i ], [ %i.ck, %bb.j ], [ %.pn.pn.i, %bb.ba ], [ %.pn.i.i.i, %bb.z ], [ %.pn64.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i ], [ %lpad.loopexit70.i, %.loopexit68.i ], [ %lpad.loopexit.split-lp71.i, %.loopexit.split-lp69.i ]
  %i.io = load ptr, ptr %18, align 8, !tbaa !175  ; 3 uses
  %.not.i.i.i50.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i50.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i, label %bb.cd

bb.cd:                                            ; preds = %.body.i
  %i.ip = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !246
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.io to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.it) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i

_ZNSt6vectorIiSaIiEED2Ev.exit51.i:                ; preds = %bb.cd, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  resume { ptr, i32 } %.pn22.i

bb.ce:                                            ; preds = %bb.m
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsE.exit: ; preds = %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_ENKUlSV_E_clImEEDaSV_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = shl i64 %0, 6                            ; 3 uses
  %i.b = sub i64 %.0.val.0.val, %i.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.c = add i64 %.sroa.speculated, %i.a
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.a, i64 noundef %i.c)
  %i.d = load ptr, ptr %.8.val, align 8, !tbaa !1552, !nonnull !141, !align !245 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !314
  %i.g = load i64, ptr %1, align 8, !tbaa !315
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !147 ; 5 uses
  %i.i = getelementptr i8, ptr %i.d, i64 8
  %.val12.i = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.j = ptrtoint ptr %.val12.i to i64
  %i.k = ptrtoint ptr %.val.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = icmp eq i64 %i.h, -1
  br i1 %i.n, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.h, %i.m
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.o = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.a ] ; 4 uses
  %i.p = icmp ne ptr %.val.i, null
  %i.q = icmp eq i64 %i.o, 0                      ; 2 uses
  %i.r = or i1 %i.p, %i.q
  br i1 %i.r, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1553, !nonnull !141, !align !245
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1554, !nonnull !141, !align !244
  %i.w = load i32, ptr %i.v, align 4, !tbaa !83
  call void @_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.w, i64 %i.o, ptr %.val.i)
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1555, !nonnull !141, !align !245
  %i.z = load i64, ptr %1, align 8, !tbaa !315    ; 2 uses
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !314
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1556, !nonnull !141, !align !245
  %i.ae = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1557, !nonnull !141, !align !245
  %i.ag = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1558, !nonnull !141
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !82, !range !140, !noundef !141
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1559, !nonnull !141, !align !245
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.y, i64 noundef %i.z, i64 %i.o, ptr %.val.i, i64 noundef %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i1 noundef zeroext %i.aj, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.al)
  br i1 %i.q, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.bd, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !167 ; 3 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = add i64 %i.aq, -4
  %i.at = sub i64 %i.as, %i.ar                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.az, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1548

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.i.preheader8:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader8 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1549

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i8 1, ptr %i.bc, align 8, !tbaa !319
  %i.bd = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.o
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i, !llvm.loop !1550

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i64 %3, ptr %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !314
  %i.c = load i64, ptr %1, align 8, !tbaa !315    ; 2 uses
  %.not = icmp eq i64 %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = zext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit
  %i.i = phi i64 [ %i.c, %.lr.ph ], [ %i.gt, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit ]
  %.013 = phi i64 [ 0, %.lr.ph ], [ %i.gr, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit ] ; 3 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.013 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !167  ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !68   ; 4 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp eq ptr %i.l, %i.m
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i64 %i.q, %i.d
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = sub nuw nsw i64 %i.d, %i.q
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.j, i64 noundef %i.t)
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !69
  %.pre2.i = load ptr, ptr %i.k, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %bb.c, %bb.d
  %i.u = phi ptr [ %.pre2.i, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.v = phi ptr [ %.pre.i, %bb.d ], [ %i.m, %bb.c ] ; 6 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not6.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.w = ptrtoaddr ptr %i.u to i64
  %i.x = ptrtoaddr ptr %i.v to i64
  %i.y = add i64 %i.w, -4
  %i.z = sub i64 %i.y, %i.x                       ; 2 uses
  %i.aa = lshr i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 9223372036854775800     ; 3 uses
  %i.ac = shl i64 %n.vec, 2
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.af, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1560

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader34

.lr.ph.i.i.i.i.i.preheader34:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader34, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader34 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i, align 4, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1561

_ZN7xgboost7RegTree4FVec4InitEm.exit:             ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 1, ptr %i.ai, align 8, !tbaa !319
  %.pre = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.e

bb.e:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit, %bb.b
  %i.aj = phi ptr [ %i.v, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.m, %bb.b ]
  %i.ak = phi i64 [ %.pre, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.i, %bb.b ]
  %i.al = add i64 %i.ak, %.013                    ; 13 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !477   ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef nonnull align 8 dereferenceable(17) ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(160) %i.am), !inline_history !1562 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !510 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = lshr i64 %i.al, 3
  %i.au = and i64 %i.al, 7
  %i.av = shl nuw nsw i64 1, %i.au
  %i.aw = trunc nuw i64 %i.av to i8
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !511, !noalias !1567
  br label %bb.f

bb.f:                                             ; preds = %.thread.i.i, %.lr.ph.i.i
  %.017.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gh, %.thread.i.i ] ; 6 uses
  %.0916.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %.thread.i.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.ax, i64 %.017.i.i ; 24 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !512, !noalias !1567 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.at
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !50, !noalias !1567
  %i.bd = and i8 %i.bc, %i.aw
  %.not.i.i.i11 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i11, label %.thread.i.i, label %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i

_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i: ; preds = %bb.g, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 49
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !503, !noalias !1567
  switch i8 %i.bf, label %bb.s [
    i8 0, label %bb.h
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 9, label %bb.p
end_hunk_8
begin_hunk_9_@_ZZNK7xgboost9predictor12CPUPredictor14InplacePredictESt10shared_ptrINS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiENKUlOT_E_clIRNS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEDaSC_:bb.a
          cleanup
  br label %.body.i.i.i.i

bb.bw:                                            ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_11AdapterViewINS2_4data15ColumnarAdapterENS2_12NoOpAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSJ_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSD_iOT1_EUlSY_E_JmEEEvSY_DpT0_.exit.i.i
  %.pr84.pr.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !290 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i77.i.i.i.i = icmp eq ptr %.pr84.pr.i.i.i.i, null
  br i1 %.not.i77.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i: ; preds = %bb.bw
  store ptr %.pr84.pr.i.i.i.i, ptr %10, align 8, !tbaa !290
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #32
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  unreachable

bb.by:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ie = load ptr, ptr %10, align 8, !tbaa !290
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i2.i.i.i.i.i, label %.body.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  br label %.body.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i:          ; preds = %bb.bw, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i

.body.i.i.i.i:                                    ; preds = %bb.bn, %bb.bz, %bb.by, %bb.bv, %bb.bt, %bb.bs
  %.pn64.i.i.i.i = phi { ptr, i32 } [ %i.id, %bb.by ], [ %i.id, %bb.bz ], [ %i.ic, %bb.bv ], [ %i.hw, %bb.bs ], [ %i.hx, %bb.bt ], [ %i.hf, %bb.bn ]
  %i.if = load ptr, ptr %13, align 8, !tbaa !290
  %.not.i.i79.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i79.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %.body.i.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %13) #18
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i:        ; preds = %bb.ca, %.body.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %.body47.i

bb.cb:                                            ; preds = %bb.be
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #35
  unreachable

_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i: ; preds = %.noexc45.i, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i, %.preheader.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  %i.ii = load ptr, ptr %18, align 8, !tbaa !175  ; 3 uses
  %.not.i.i.i49.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i49.i, label %_ZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsE.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i
  %i.ij = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !246
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = sub i64 %i.il, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.in) #34
  br label %_ZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsE.exit

.loopexit.i:                                      ; preds = %.lr.ph108.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

.loopexit.split-lp.i:                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

.body47.i:                                        ; preds = %.loopexit.split-lp.i, %.loopexit.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, %bb.bf
  %eh.lpad-body48.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.bf ], [ %.pn64.i.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %.body.i

.body.i:                                          ; preds = %.body47.i, %.loopexit.split-lp69.i, %.loopexit68.i, %bb.ba, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i, %bb.z, %bb.j
  %.pn22.i = phi { ptr, i32 } [ %eh.lpad-body48.i, %.body47.i ], [ %i.ck, %bb.j ], [ %.pn.pn.i, %bb.ba ], [ %.pn.i.i.i, %bb.z ], [ %.pn64.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i ], [ %lpad.loopexit70.i, %.loopexit68.i ], [ %lpad.loopexit.split-lp71.i, %.loopexit.split-lp69.i ]
  %i.io = load ptr, ptr %18, align 8, !tbaa !175  ; 3 uses
  %.not.i.i.i50.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i50.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i, label %bb.cd

bb.cd:                                            ; preds = %.body.i
  %i.ip = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !246
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.io to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.it) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i

_ZNSt6vectorIiSaIiEED2Ev.exit51.i:                ; preds = %bb.cd, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  resume { ptr, i32 } %.pn22.i

bb.ce:                                            ; preds = %bb.m
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsE.exit: ; preds = %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_.exit.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_ENKUlSV_E_clImEEDaSV_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = shl i64 %0, 6                            ; 3 uses
  %i.b = sub i64 %.0.val.0.val, %i.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.c = add i64 %.sroa.speculated, %i.a
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.a, i64 noundef %i.c)
  %i.d = load ptr, ptr %.8.val, align 8, !tbaa !1586, !nonnull !141, !align !245 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !314
  %i.g = load i64, ptr %1, align 8, !tbaa !315
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !147 ; 5 uses
  %i.i = getelementptr i8, ptr %i.d, i64 8
  %.val12.i = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.j = ptrtoint ptr %.val12.i to i64
  %i.k = ptrtoint ptr %.val.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = icmp eq i64 %i.h, -1
  br i1 %i.n, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.h, %i.m
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.o = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.a ] ; 4 uses
  %i.p = icmp ne ptr %.val.i, null
  %i.q = icmp eq i64 %i.o, 0                      ; 2 uses
  %i.r = or i1 %i.p, %i.q
  br i1 %i.r, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1587, !nonnull !141, !align !245
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1588, !nonnull !141, !align !244
  %i.w = load i32, ptr %i.v, align 4, !tbaa !83
  call void @_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.w, i64 %i.o, ptr %.val.i)
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1589, !nonnull !141, !align !245
  %i.z = load i64, ptr %1, align 8, !tbaa !315    ; 2 uses
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !314
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1590, !nonnull !141, !align !245
  %i.ae = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1591, !nonnull !141, !align !245
  %i.ag = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1592, !nonnull !141
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !82, !range !140, !noundef !141
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1593, !nonnull !141, !align !245
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.y, i64 noundef %i.z, i64 %i.o, ptr %.val.i, i64 noundef %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i1 noundef zeroext %i.aj, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.al)
  br i1 %i.q, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.bd, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !167 ; 3 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = add i64 %i.aq, -4
  %i.at = sub i64 %i.as, %i.ar                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.az, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1582

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.i.preheader8:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader8 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1583

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i8 1, ptr %i.bc, align 8, !tbaa !319
  %i.bd = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.o
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i, !llvm.loop !1584

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i64 %3, ptr %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !314
  %i.c = load i64, ptr %1, align 8, !tbaa !315    ; 2 uses
  %.not = icmp eq i64 %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = zext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.fd, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit ]
  %.012 = phi i64 [ 0, %.lr.ph ], [ %i.fb, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.012 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !167  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !68   ; 4 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp eq ptr %i.i, %i.j
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i64 %i.n, %i.d
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = sub nuw nsw i64 %i.d, %i.n
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.g, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !69
  %.pre2.i = load ptr, ptr %i.h, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre2.i, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %i.s = phi ptr [ %.pre.i, %bb.d ], [ %i.j, %bb.c ] ; 6 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not6.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.t = ptrtoaddr ptr %i.r to i64
  %i.u = ptrtoaddr ptr %i.s to i64
  %i.v = add i64 %i.t, -4
  %i.w = sub i64 %i.v, %i.u                       ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.ac, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1594

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.preheader23:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i, align 4, !tbaa !72
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1595

_ZN7xgboost7RegTree4FVec4InitEm.exit:             ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 1, ptr %i.af, align 8, !tbaa !319
  %.pre = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.e

bb.e:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit, %bb.b
  %i.ag = phi ptr [ %i.s, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.j, %bb.b ]
  %i.ah = phi i64 [ %.pre, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.f, %bb.b ]
  %i.ai = add i64 %i.ah, %.012                    ; 13 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !480   ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef nonnull align 8 dereferenceable(17) ptr %i.am(ptr noundef nonnull align 8 dereferenceable(160) %i.aj), !inline_history !1596 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !510 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = lshr i64 %i.ai, 3
  %i.ar = and i64 %i.ai, 7
  %i.as = shl nuw nsw i64 1, %i.ar
  %i.at = trunc nuw i64 %i.as to i8
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !511, !noalias !1601
  br label %bb.f

bb.f:                                             ; preds = %.thread.i.i, %.lr.ph.i.i
  %.018.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.er, %.thread.i.i ] ; 3 uses
  %.0917.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %.thread.i.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw [56 x i8], ptr %i.au, i64 %.018.i.i ; 24 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !512, !noalias !1601 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !50, !noalias !1601
  %i.ba = and i8 %i.az, %i.at
  %.not.i.i.i11 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i11, label %.thread.i.i, label %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i

_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i: ; preds = %bb.g, %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 49
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !503, !noalias !1601
  switch i8 %i.bc, label %bb.s [
    i8 0, label %bb.h
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 9, label %bb.p
    i8 10, label %bb.q
    i8 11, label %bb.r
  ]

end_hunk_9
begin_hunk_10_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_ZNS1_13LaunchPredictISF_EEvPKNS_7ContextES5_SC_SE_EUlPKS4_E_EEvSK_S5_SC_SE_OT0_:bb.a
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_11BlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1796, !nonnull !141, !align !245 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !285
  %i.f = load i64, ptr %1, align 8, !tbaa !315    ; 4 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1797, !nonnull !141, !align !245 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !314  ; 2 uses
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !147 ; 6 uses
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %.val11.i = load ptr, ptr %i.m, align 8, !tbaa !148
  %i.n = ptrtoint ptr %.val11.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 2 uses
  %i.r = icmp eq i64 %i.l, -1
  br i1 %i.r, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.l, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.a ] ; 2 uses
  %i.t = icmp ne ptr %.val.i, null
  %i.u = icmp eq i64 %i.s, 0                      ; 4 uses
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %.not.i.i = icmp eq i64 %i.k, %i.f
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1798, !nonnull !141, !align !244
  %i.y = load i32, ptr %i.x, align 4, !tbaa !83
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.f, %.lr.ph.i.i ], [ %i.bq, %bb.h ]
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bo, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.011.i.i ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !167 ; 3 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !68 ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp eq ptr %i.ad, %i.ae
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp samesign ult i64 %i.ai, %i.z
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.al = sub nuw nsw i64 %i.z, %i.ai
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.ab, i64 noundef %i.al)
  %.pre.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !69
  %.pre2.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i:         ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre2.i.i.i, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.an = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.ae, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ao = ptrtoaddr ptr %i.am to i64
  %i.ap = ptrtoaddr ptr %i.an to i64
  %i.aq = add i64 %i.ao, -4
  %i.ar = sub i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = lshr i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2
  %i.av = getelementptr i8, ptr %i.an, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.ax, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1790

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.i.i.preheader50:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader50 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.am
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1791

_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 1, ptr %i.ba, align 8, !tbaa !319
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, %bb.e
  %i.bb = phi ptr [ %i.an, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.ae, %bb.e ]
  %i.bc = phi i64 [ %.pre.i.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.aa, %bb.e ]
  %i.bd = add i64 %i.bc, %.011.i.i
  %i.be = call noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_11CatAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 noundef %i.bd, ptr noundef %i.bb)
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !167
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = icmp ne i64 %i.be, %i.bk
  %i.bm = zext i1 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 %i.bm, ptr %i.bn, align 8, !tbaa !319
  %i.bo = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.bp = load i64, ptr %i.j, align 8, !tbaa !314
  %i.bq = load i64, ptr %1, align 8, !tbaa !315   ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ult i64 %i.bo, %i.br
  br i1 %i.bs, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, !llvm.loop !7

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i: ; preds = %bb.h, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1799, !nonnull !141, !align !244
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !83 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1800, !nonnull !141, !align !245 ; 2 uses
  %.val12.i = load ptr, ptr %i.by, align 8, !tbaa !144 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val13.i = load ptr, ptr %i.bz, align 8, !tbaa !201 ; 2 uses
  %i.ca = icmp ne ptr %.val12.i, null
  %i.cb = icmp eq ptr %.val13.i, null
  %i.cc = or i1 %i.ca, %i.cb
  %i.cd = ptrtoint ptr %.val13.i to i64
  %i.ce = ptrtoint ptr %.val12.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 200
  %i.ch = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ci = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.cj = mul i64 %i.g, %i.ci
  br i1 %i.cc, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.i, !prof !70

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.db, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !167 ; 3 uses
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.cm
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i16.i
  %i.co = ptrtoaddr ptr %i.cm to i64
  %i.cp = ptrtoaddr ptr %i.cn to i64
  %i.cq = add i64 %i.co, -4
  %i.cr = sub i64 %i.cq, %i.cp                    ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.cr, 28
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec40 = and i64 %i.ct, 9223372036854775800   ; 3 uses
  %i.cu = shl i64 %n.vec40, 2
  %i.cv = getelementptr i8, ptr %i.cn, i64 %i.cu
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next44, %vector.body41 ] ; 2 uses
  %i.cw = shl i64 %index42, 2
  %next.gep43 = getelementptr i8, ptr %i.cn, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep43, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep43, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.cx, align 4, !tbaa !72
  %index.next44 = add nuw i64 %index42, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.cy, label %middle.block45, label %vector.body41, !llvm.loop !1792

middle.block45:                                   ; preds = %vector.body41
  %cmp.n46 = icmp eq i64 %i.ct, %n.vec40
  br i1 %cmp.n46, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48

.lr.ph.i.i.i.i.i.i.i.i.preheader48:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block45
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cv, %middle.block45 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader48, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader48 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.cm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1793

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block45, %.lr.ph.i16.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i8 1, ptr %i.da, align 8, !tbaa !319
  %i.db = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.db, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i, !llvm.loop !8

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.cg
  br i1 %exitcond.not.i, label %bb.j, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !173

bb.i:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.j:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.dc = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 192
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !210
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.k, label %bb.z

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.l, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !173

bb.l:                                             ; preds = %bb.k
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !399 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !401 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i18.preheader.i

.lr.ph.i.i.i.i.i.i.i18.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.dl = load ptr, ptr %.val.i, align 8, !tbaa !68
  %.sroa.23.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %.in.i.i29.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i18.i

.lr.ph.i.i.i.i.i.i.i18.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i18.preheader.i
  %i.dp = phi i32 [ %i.fx, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ]
  %i.dq = phi ptr [ %i.fv, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !405 ; 2 uses
  %i.dt = and i32 %i.ds, 2147483647
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !72 ; 6 uses
  %i.dx = fcmp uno float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %i.dy = icmp slt i32 %i.ds, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.dy, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.dz = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !83
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %.sroa.02.0.copyload.i21.i = load i64, ptr %i.dc, align 8, !tbaa !59 ; 2 uses
  %.sroa.23.0.copyload.i23.i = load ptr, ptr %.sroa.23.0..sroa_idx.i22.i, align 8, !tbaa !65
  %i.ea = icmp eq i64 %.sroa.02.0.copyload.i21.i, 0
  br i1 %i.ea, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.ec = icmp ugt i64 %.sroa.02.0.copyload.i21.i, %i.eb
  br i1 %i.ec, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i, label %bb.p, !prof !70

bb.p:                                             ; preds = %bb.o
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i: ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i23.i, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !252
  %i.ef = icmp eq i8 %i.ee, 1
  br i1 %i.ef, label %bb.q, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i

bb.q:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i
  %i.eg = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.eh = load i64, ptr %i.dn, align 8, !tbaa !406
  %i.ei = icmp ugt i64 %i.eh, %i.eg
  br i1 %i.ei, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i, label %bb.r, !prof !70

bb.r:                                             ; preds = %bb.q
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i: ; preds = %bb.q
  %i.ej = load ptr, ptr %i.do, align 8, !tbaa !407
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eg ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !409 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !410 ; 3 uses
  %i.eo = icmp eq i64 %i.en, -1
  br i1 %i.eo, label %.split.i.i33.i, label %bb.s

.split.i.i33.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.ep = load i64, ptr %i.dm, align 8, !tbaa !384 ; 2 uses
  %.not8.i.i34.i = icmp ugt i64 %i.el, %i.ep
  br i1 %.not8.i.i34.i, label %bb.t, label %bb.u, !prof !173

bb.s:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.eq = add i64 %i.en, %i.el
  %i.er = load i64, ptr %i.dm, align 8, !tbaa !384
  %.not.i.i28.i = icmp ugt i64 %i.eq, %i.er
  br i1 %.not.i.i28.i, label %bb.t, label %bb.v, !prof !173

bb.t:                                             ; preds = %bb.s, %.split.i.i33.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.u:                                             ; preds = %.split.i.i33.i
  %i.es = sub nuw i64 %i.ep, %i.el
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.et = phi i64 [ %i.es, %bb.u ], [ %i.en, %bb.s ] ; 2 uses
  %i.eu = load ptr, ptr %.in.i.i29.i, align 8, !tbaa !385 ; 2 uses
  %i.ev = icmp ne ptr %i.eu, null
  %i.ew = icmp eq i64 %i.et, 0
  %i.ex = or i1 %i.ew, %i.ev
  br i1 %i.ex, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i, label %bb.w, !prof !70

bb.w:                                             ; preds = %bb.v
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i: ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.el
  %i.ez = fcmp olt float %i.dw, 0.000000e+00
  %i.fa = fcmp oge float %i.dw, f0x4B800000
  %i.fb = or i1 %i.ez, %i.fa
  br i1 %i.fb, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, label %bb.x, !prof !173

bb.x:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i
  %i.fc = fptoui float %i.dw to i64
  %i.fd = lshr i64 %i.fc, 5
  %.not.i15.i31.i = icmp ult i64 %i.fd, %i.et
  br i1 %.not.i15.i31.i, label %bb.y, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.y:                                             ; preds = %bb.x
  %i.fe = fptosi float %i.dw to i32               ; 2 uses
  %i.ff = lshr i32 %i.fe, 5
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = and i32 %i.fe, 31
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fg
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !83
  %i.fk = lshr exact i32 -2147483648, %i.fh
end_hunk_10
begin_hunk_11_@_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_11BlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_:bb.a

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i: ; preds = %bb.ag
  %i.hg = load ptr, ptr %i.gj, align 8, !tbaa !407
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.hg, i64 %i.hd ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !409 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !410 ; 3 uses
  %i.hl = icmp eq i64 %i.hk, -1
  br i1 %i.hl, label %.split.i.i20.i, label %bb.ai

.split.i.i20.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i
  %i.hm = load i64, ptr %i.gh, align 8, !tbaa !384 ; 2 uses
  %.not8.i.i.i = icmp ugt i64 %i.hi, %i.hm
  br i1 %.not8.i.i.i, label %bb.aj, label %bb.ak, !prof !173

bb.ai:                                            ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i
  %i.hn = add i64 %i.hk, %i.hi
  %i.ho = load i64, ptr %i.gh, align 8, !tbaa !384
  %.not.i.i19.i = icmp ugt i64 %i.hn, %i.ho
  br i1 %.not.i.i19.i, label %bb.aj, label %bb.al, !prof !173

bb.aj:                                            ; preds = %bb.ai, %.split.i.i20.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.ak:                                            ; preds = %.split.i.i20.i
  %i.hp = sub nuw i64 %i.hm, %i.hi
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.hq = phi i64 [ %i.hp, %bb.ak ], [ %i.hk, %bb.ai ] ; 2 uses
  %i.hr = load ptr, ptr %.in.i.i.i, align 8, !tbaa !385 ; 2 uses
  %i.hs = icmp ne ptr %i.hr, null
  %i.ht = icmp eq i64 %i.hq, 0
  %i.hu = or i1 %i.ht, %i.hs
  br i1 %i.hu, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i, label %bb.am, !prof !70

bb.am:                                            ; preds = %bb.al
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i: ; preds = %bb.al
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hi
  %i.hw = fcmp olt float %i.gr, 0.000000e+00
  %i.hx = fcmp oge float %i.gr, f0x4B800000
  %i.hy = or i1 %i.hw, %i.hx
  br i1 %i.hy, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, label %bb.an, !prof !173

bb.an:                                            ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i
  %i.hz = fptoui float %i.gr to i64
  %i.ia = lshr i64 %i.hz, 5
  %.not.i15.i.i = icmp ult i64 %i.ia, %i.hq
  br i1 %.not.i15.i.i, label %bb.ao, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.ib = fptosi float %i.gr to i32               ; 2 uses
  %i.ic = lshr i32 %i.ib, 5
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = and i32 %i.ib, 31
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.id
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !83
  %i.ih = lshr exact i32 -2147483648, %i.ie
  %i.ii = and i32 %i.ig, %i.ih
  %.not5.i.i.i = icmp eq i32 %i.ii, 0
  br label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i, %bb.ad
  %i.ij = load ptr, ptr %i.gk, align 8, !tbaa !433
  %i.ik = sext i32 %.012.i.i.i.i.i10.i.i.i to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4, !tbaa !72
  %i.in = fcmp olt float %i.gr, %i.im
  br label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i, %bb.ao, %bb.an, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i
  %.0.i.i = phi i1 [ %i.in, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i ], [ true, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i ], [ %.not5.i.i.i, %bb.ao ], [ true, %bb.an ]
  %i.io = xor i1 %.0.i.i, true
  %i.ip = zext i1 %i.io to i32
  %i.iq = add nuw nsw i32 %i.gl, %i.ip
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, %bb.ac
  %.0.i.i.i.i.i.i12.i.i.i = phi i32 [ %i.gw, %bb.ac ], [ %i.iq, %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ] ; 3 uses
  %i.ir = sext i32 %.0.i.i.i.i.i.i12.i.i.i to i64 ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !83 ; 2 uses
  %i.iu = icmp eq i32 %i.it, -1
  br i1 %i.iu, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %bb.ab, !llvm.loop !12

_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i: ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i8.i.i.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i8.i.i.i ], [ %.0.i.i.i.i.i.i12.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ]
  %i.iv = sitofp i32 %.0.i.i.i to float
  %i.iw = load ptr, ptr %i.ch, align 8, !tbaa !1801, !nonnull !141, !align !245
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !68
  %i.iy = getelementptr [4 x i8], ptr %i.ix, i64 %i.cj
  %i.iz = getelementptr [4 x i8], ptr %i.iy, i64 %indvars.iv.i
  store float %i.iv, ptr %i.iz, align 4, !tbaa !72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next.i, %i.ci
  br i1 %exitcond43.not.i, label %._crit_edge.i, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, !llvm.loop !1794

_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_11BlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_14SparsePageViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 6 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1806, !nonnull !141, !align !245 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !312
  %i.f = load i64, ptr %1, align 8, !tbaa !315    ; 2 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1807, !nonnull !141, !align !245 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !314
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !147 ; 6 uses
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %.val11.i = load ptr, ptr %i.m, align 8, !tbaa !148
  %i.n = ptrtoint ptr %.val11.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 2 uses
  %i.r = icmp eq i64 %i.l, -1
  br i1 %i.r, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.l, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.a ] ; 3 uses
  %i.t = icmp ne ptr %.val.i, null
  %i.u = icmp eq i64 %i.s, 0                      ; 4 uses
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1808, !nonnull !141, !align !244
  %i.y = load i32, ptr %i.x, align 4, !tbaa !83
  call void @_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.y, i64 %i.s, ptr %.val.i)
  %i.z = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1809, !nonnull !141, !align !244
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !83 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1810, !nonnull !141, !align !245 ; 2 uses
  %.val12.i = load ptr, ptr %i.ae, align 8, !tbaa !144 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val13.i = load ptr, ptr %i.af, align 8, !tbaa !201 ; 2 uses
  %i.ag = icmp ne ptr %.val12.i, null
  %i.ah = icmp eq ptr %.val13.i, null
  %i.ai = or i1 %i.ag, %i.ah
  %i.aj = ptrtoint ptr %.val13.i to i64
  %i.ak = ptrtoint ptr %.val12.i to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 200
  %i.an = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ao = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ap = mul i64 %i.g, %i.ao
  br i1 %i.ai, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.e, !prof !70

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.bh, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !167 ; 3 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.as
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.au = ptrtoaddr ptr %i.as to i64
  %i.av = ptrtoaddr ptr %i.at to i64
  %i.aw = add i64 %i.au, -4
  %i.ax = sub i64 %i.aw, %i.av                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.az, 9223372036854775800     ; 3 uses
  %i.ba = shl i64 %n.vec, 2
  %i.bb = getelementptr i8, ptr %i.at, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.at, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.bd, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1802

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.i.i.i.preheader29:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader29 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1803

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 1, ptr %i.bg, align 8, !tbaa !319
  %i.bh = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bh, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.am
  br i1 %exitcond.not.i, label %bb.f, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !173

bb.e:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.f:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.bi = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !210
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %bb.v

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.h, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !173

bb.h:                                             ; preds = %bb.g
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !399 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !401 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, -1
  br i1 %i.bq, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i16.preheader.i

.lr.ph.i.i.i.i.i.i.i16.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.br = load ptr, ptr %.val.i, align 8, !tbaa !68
  %.sroa.23.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %.in.i.i27.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i16.i

.lr.ph.i.i.i.i.i.i.i16.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i16.preheader.i
  %i.bv = phi i32 [ %i.ed, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ]
  %i.bw = phi ptr [ %i.eb, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !405 ; 2 uses
  %i.bz = and i32 %i.by, 2147483647
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !72 ; 6 uses
  %i.cd = fcmp uno float %i.cc, 0.000000e+00
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %i.ce = icmp slt i32 %i.by, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.ce, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.cf = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !83
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %.sroa.02.0.copyload.i19.i = load i64, ptr %i.bi, align 8, !tbaa !59 ; 2 uses
  %.sroa.23.0.copyload.i21.i = load ptr, ptr %.sroa.23.0..sroa_idx.i20.i, align 8, !tbaa !65
  %i.cg = icmp eq i64 %.sroa.02.0.copyload.i19.i, 0
  br i1 %i.cg, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.ci = icmp ugt i64 %.sroa.02.0.copyload.i19.i, %i.ch
  br i1 %i.ci, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i, label %bb.l, !prof !70

bb.l:                                             ; preds = %bb.k
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i: ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i21.i, i64 %i.ch
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !252
  %i.cl = icmp eq i8 %i.ck, 1
  br i1 %i.cl, label %bb.m, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i

bb.m:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i
  %i.cm = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.cn = load i64, ptr %i.bt, align 8, !tbaa !406
  %i.co = icmp ugt i64 %i.cn, %i.cm
  br i1 %i.co, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i, label %bb.n, !prof !70

bb.n:                                             ; preds = %bb.m
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i: ; preds = %bb.m
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !407
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cm ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !409 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !410 ; 3 uses
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %.split.i.i31.i, label %bb.o

.split.i.i31.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.cv = load i64, ptr %i.bs, align 8, !tbaa !384 ; 2 uses
  %.not8.i.i32.i = icmp ugt i64 %i.cr, %i.cv
  br i1 %.not8.i.i32.i, label %bb.p, label %bb.q, !prof !173

bb.o:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.cw = add i64 %i.ct, %i.cr
  %i.cx = load i64, ptr %i.bs, align 8, !tbaa !384
  %.not.i.i26.i = icmp ugt i64 %i.cw, %i.cx
  br i1 %.not.i.i26.i, label %bb.p, label %bb.r, !prof !173

bb.p:                                             ; preds = %bb.o, %.split.i.i31.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.q:                                             ; preds = %.split.i.i31.i
  %i.cy = sub nuw i64 %i.cv, %i.cr
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.cz = phi i64 [ %i.cy, %bb.q ], [ %i.ct, %bb.o ] ; 2 uses
  %i.da = load ptr, ptr %.in.i.i27.i, align 8, !tbaa !385 ; 2 uses
  %i.db = icmp ne ptr %i.da, null
  %i.dc = icmp eq i64 %i.cz, 0
  %i.dd = or i1 %i.dc, %i.db
  br i1 %i.dd, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i, label %bb.s, !prof !70

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i: ; preds = %bb.r
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cr
  %i.df = fcmp olt float %i.cc, 0.000000e+00
  %i.dg = fcmp oge float %i.cc, f0x4B800000
  %i.dh = or i1 %i.df, %i.dg
  br i1 %i.dh, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, label %bb.t, !prof !173

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i
  %i.di = fptoui float %i.cc to i64
  %i.dj = lshr i64 %i.di, 5
  %.not.i15.i29.i = icmp ult i64 %i.dj, %i.cz
  br i1 %.not.i15.i29.i, label %bb.u, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.u:                                             ; preds = %bb.t
  %i.dk = fptosi float %i.cc to i32               ; 2 uses
  %i.dl = lshr i32 %i.dk, 5
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = and i32 %i.dk, 31
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dm
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !83
  %i.dq = lshr exact i32 -2147483648, %i.dn
end_hunk_11
begin_hunk_12_@_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_11BlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_14SparsePageViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_:bb.a
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_11BlockPolicyENSH_21NullEncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1818, !nonnull !141, !align !245 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !322
  %i.f = load i64, ptr %1, align 8, !tbaa !315    ; 4 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1819, !nonnull !141, !align !245 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !314  ; 2 uses
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !147 ; 6 uses
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %.val11.i = load ptr, ptr %i.m, align 8, !tbaa !148
  %i.n = ptrtoint ptr %.val11.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 2 uses
  %i.r = icmp eq i64 %i.l, -1
  br i1 %i.r, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.l, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.a ] ; 2 uses
  %i.t = icmp ne ptr %.val.i, null
  %i.u = icmp eq i64 %i.s, 0                      ; 4 uses
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %.not.i.i = icmp eq i64 %i.k, %i.f
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1820, !nonnull !141, !align !244
  %i.y = load i32, ptr %i.x, align 4, !tbaa !83
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.f, %.lr.ph.i.i ], [ %i.bq, %bb.h ]
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bo, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.011.i.i ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !167 ; 3 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !68 ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp eq ptr %i.ad, %i.ae
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp samesign ult i64 %i.ai, %i.z
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.al = sub nuw nsw i64 %i.z, %i.ai
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.ab, i64 noundef %i.al)
  %.pre.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !69
  %.pre2.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i:         ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre2.i.i.i, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.an = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.ae, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ao = ptrtoaddr ptr %i.am to i64
  %i.ap = ptrtoaddr ptr %i.an to i64
  %i.aq = add i64 %i.ao, -4
  %i.ar = sub i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = lshr i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2
  %i.av = getelementptr i8, ptr %i.an, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.ax, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1812

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.i.i.preheader50:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader50 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.am
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1813

_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 1, ptr %i.ba, align 8, !tbaa !319
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, %bb.e
  %i.bb = phi ptr [ %i.an, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.ae, %bb.e ]
  %i.bc = phi i64 [ %.pre.i.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.aa, %bb.e ]
  %i.bd = add i64 %i.bc, %.011.i.i
  %i.be = call noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.bd, ptr noundef %i.bb)
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !167
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = icmp ne i64 %i.be, %i.bk
  %i.bm = zext i1 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 %i.bm, ptr %i.bn, align 8, !tbaa !319
  %i.bo = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.bp = load i64, ptr %i.j, align 8, !tbaa !314
  %i.bq = load i64, ptr %1, align 8, !tbaa !315   ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ult i64 %i.bo, %i.br
  br i1 %i.bs, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, !llvm.loop !16

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i: ; preds = %bb.h, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1821, !nonnull !141, !align !244
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !83 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1822, !nonnull !141, !align !245 ; 2 uses
  %.val12.i = load ptr, ptr %i.by, align 8, !tbaa !144 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val13.i = load ptr, ptr %i.bz, align 8, !tbaa !201 ; 2 uses
  %i.ca = icmp ne ptr %.val12.i, null
  %i.cb = icmp eq ptr %.val13.i, null
  %i.cc = or i1 %i.ca, %i.cb
  %i.cd = ptrtoint ptr %.val13.i to i64
  %i.ce = ptrtoint ptr %.val12.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 200
  %i.ch = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ci = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.cj = mul i64 %i.g, %i.ci
  br i1 %i.cc, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.i, !prof !70

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.db, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !167 ; 3 uses
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.cm
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i16.i
  %i.co = ptrtoaddr ptr %i.cm to i64
  %i.cp = ptrtoaddr ptr %i.cn to i64
  %i.cq = add i64 %i.co, -4
  %i.cr = sub i64 %i.cq, %i.cp                    ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.cr, 28
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec40 = and i64 %i.ct, 9223372036854775800   ; 3 uses
  %i.cu = shl i64 %n.vec40, 2
  %i.cv = getelementptr i8, ptr %i.cn, i64 %i.cu
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next44, %vector.body41 ] ; 2 uses
  %i.cw = shl i64 %index42, 2
  %next.gep43 = getelementptr i8, ptr %i.cn, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep43, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep43, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.cx, align 4, !tbaa !72
  %index.next44 = add nuw i64 %index42, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.cy, label %middle.block45, label %vector.body41, !llvm.loop !1814

middle.block45:                                   ; preds = %vector.body41
  %cmp.n46 = icmp eq i64 %i.ct, %n.vec40
  br i1 %cmp.n46, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48

.lr.ph.i.i.i.i.i.i.i.i.preheader48:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block45
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cv, %middle.block45 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader48, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader48 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.cm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1815

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block45, %.lr.ph.i16.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i8 1, ptr %i.da, align 8, !tbaa !319
  %i.db = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.db, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i, !llvm.loop !17

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.cg
  br i1 %exitcond.not.i, label %bb.j, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !173

bb.i:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.j:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.dc = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 192
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !210
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.k, label %bb.z

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.l, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !173

bb.l:                                             ; preds = %bb.k
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !399 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !401 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i18.preheader.i

.lr.ph.i.i.i.i.i.i.i18.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.dl = load ptr, ptr %.val.i, align 8, !tbaa !68
  %.sroa.23.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %.in.i.i29.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i18.i

.lr.ph.i.i.i.i.i.i.i18.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i18.preheader.i
  %i.dp = phi i32 [ %i.fx, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ]
  %i.dq = phi ptr [ %i.fv, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !405 ; 2 uses
  %i.dt = and i32 %i.ds, 2147483647
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !72 ; 6 uses
  %i.dx = fcmp uno float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %i.dy = icmp slt i32 %i.ds, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.dy, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.dz = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !83
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %.sroa.02.0.copyload.i21.i = load i64, ptr %i.dc, align 8, !tbaa !59 ; 2 uses
  %.sroa.23.0.copyload.i23.i = load ptr, ptr %.sroa.23.0..sroa_idx.i22.i, align 8, !tbaa !65
  %i.ea = icmp eq i64 %.sroa.02.0.copyload.i21.i, 0
  br i1 %i.ea, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.ec = icmp ugt i64 %.sroa.02.0.copyload.i21.i, %i.eb
  br i1 %i.ec, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i, label %bb.p, !prof !70

bb.p:                                             ; preds = %bb.o
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i: ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i23.i, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !252
  %i.ef = icmp eq i8 %i.ee, 1
  br i1 %i.ef, label %bb.q, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i

bb.q:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i
  %i.eg = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.eh = load i64, ptr %i.dn, align 8, !tbaa !406
  %i.ei = icmp ugt i64 %i.eh, %i.eg
  br i1 %i.ei, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i, label %bb.r, !prof !70

bb.r:                                             ; preds = %bb.q
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i: ; preds = %bb.q
  %i.ej = load ptr, ptr %i.do, align 8, !tbaa !407
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eg ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !409 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !410 ; 3 uses
  %i.eo = icmp eq i64 %i.en, -1
  br i1 %i.eo, label %.split.i.i33.i, label %bb.s

.split.i.i33.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.ep = load i64, ptr %i.dm, align 8, !tbaa !384 ; 2 uses
  %.not8.i.i34.i = icmp ugt i64 %i.el, %i.ep
  br i1 %.not8.i.i34.i, label %bb.t, label %bb.u, !prof !173

bb.s:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.eq = add i64 %i.en, %i.el
  %i.er = load i64, ptr %i.dm, align 8, !tbaa !384
  %.not.i.i28.i = icmp ugt i64 %i.eq, %i.er
  br i1 %.not.i.i28.i, label %bb.t, label %bb.v, !prof !173

bb.t:                                             ; preds = %bb.s, %.split.i.i33.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.u:                                             ; preds = %.split.i.i33.i
  %i.es = sub nuw i64 %i.ep, %i.el
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.et = phi i64 [ %i.es, %bb.u ], [ %i.en, %bb.s ] ; 2 uses
  %i.eu = load ptr, ptr %.in.i.i29.i, align 8, !tbaa !385 ; 2 uses
  %i.ev = icmp ne ptr %i.eu, null
  %i.ew = icmp eq i64 %i.et, 0
  %i.ex = or i1 %i.ew, %i.ev
  br i1 %i.ex, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i, label %bb.w, !prof !70

bb.w:                                             ; preds = %bb.v
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i: ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.el
  %i.ez = fcmp olt float %i.dw, 0.000000e+00
  %i.fa = fcmp oge float %i.dw, f0x4B800000
  %i.fb = or i1 %i.ez, %i.fa
  br i1 %i.fb, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, label %bb.x, !prof !173

bb.x:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i
  %i.fc = fptoui float %i.dw to i64
  %i.fd = lshr i64 %i.fc, 5
  %.not.i15.i31.i = icmp ult i64 %i.fd, %i.et
  br i1 %.not.i15.i31.i, label %bb.y, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.y:                                             ; preds = %bb.x
  %i.fe = fptosi float %i.dw to i32               ; 2 uses
  %i.ff = lshr i32 %i.fe, 5
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = and i32 %i.fe, 31
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fg
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !83
  %i.fk = lshr exact i32 -2147483648, %i.fh
end_hunk_12
begin_hunk_13_@_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_11BlockPolicyENSH_21NullEncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_14SparsePageViewINS_12NoOpAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_:bb.a
.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = add i64 %i.aq, -4
  %i.at = sub i64 %i.as, %i.ar                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.az, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1824

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader51

.lr.ph.i.i.i.i.i.i.preheader51:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader51, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader51 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !72
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1825

_ZN7xgboost7RegTree4FVec4InitEm.exit.i:           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 1, ptr %i.bc, align 8, !tbaa !319
  %.pre.i = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, %bb.e
  %i.bd = phi i64 [ %.pre.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.ac, %bb.e ] ; 3 uses
  %i.be = phi ptr [ %i.ap, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.ag, %bb.e ] ; 6 uses
  %i.bf = phi ptr [ %i.ao, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.af, %bb.e ]
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !389
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %i.bd
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %.011.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !59 ; 3 uses
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !59 ; 4 uses
  %i.bm = load ptr, ptr %i.ab, align 8, !tbaa !438 ; 2 uses
  %i.bn = icmp ne ptr %i.bm, null
  %i.bo = icmp eq i64 %i.bk, %i.bl                ; 2 uses
  %i.bp = or i1 %i.bo, %i.bn
  br i1 %i.bp, label %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i, label %bb.i, !prof !70

bb.i:                                             ; preds = %bb.h
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i: ; preds = %bb.h
  %i.bq = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl ; 5 uses
  br i1 %i.bo, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i
  %xtraiter = and i64 %i.bq, 3                    ; 3 uses
  %i.bs = sub i64 %i.bl, %i.bk
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bq, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.020.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.cv, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !440
  %i.bx = load i32, ptr %i.bu, align 4, !tbaa !441
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.by
  store float %i.bw, ptr %i.bz, align 4, !tbaa !72
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !440
  %i.ce = load i32, ptr %i.cb, align 4, !tbaa !441
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cf
  store float %i.cd, ptr %i.cg, align 4, !tbaa !72
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !440
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !441
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cm
  store float %i.ck, ptr %i.cn, align 4, !tbaa !72
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !440
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !441
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ct
  store float %i.cr, ptr %i.cu, align 4, !tbaa !72
  %i.cv = add nuw i64 %.020.i.i.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !18

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.020.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.cv, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod52)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.020.i.i.i.epil = phi i64 [ %i.dc, %.lr.ph.i.i.i.epil ], [ %.020.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i.epil ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !440
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !441
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.da
  store float %i.cy, ptr %i.db, align 4, !tbaa !72
  %i.dc = add nuw i64 %.020.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1826

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i
  %i.dd = ptrtoint ptr %i.bf to i64
  %i.de = ptrtoint ptr %i.be to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 2
  %i.dh = icmp ne i64 %i.bq, %i.dg
  %i.di = zext i1 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 %i.di, ptr %i.dj, align 8, !tbaa !319
  %i.dk = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.dl = load i64, ptr %i.j, align 8, !tbaa !314
  %i.dm = sub i64 %i.dl, %i.bd
  %i.dn = icmp ult i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit, !llvm.loop !19

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1834, !nonnull !141, !align !244
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !83 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1835, !nonnull !141, !align !245 ; 2 uses
  %.val12.i = load ptr, ptr %i.dt, align 8, !tbaa !144 ; 3 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 8
  %.val13.i = load ptr, ptr %i.du, align 8, !tbaa !201 ; 2 uses
  %i.dv = icmp ne ptr %.val12.i, null
  %i.dw = icmp eq ptr %.val13.i, null
  %i.dx = or i1 %i.dv, %i.dw
  %i.dy = ptrtoint ptr %.val13.i to i64
  %i.dz = ptrtoint ptr %.val12.i to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 200
  %i.ec = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ed = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ee = mul i64 %i.g, %i.ed
  br i1 %i.dx, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.j, !prof !70

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.ew, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !167 ; 3 uses
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ei, %i.eh
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.ej = ptrtoaddr ptr %i.eh to i64
  %i.ek = ptrtoaddr ptr %i.ei to i64
  %i.el = add i64 %i.ej, -4
  %i.em = sub i64 %i.el, %i.ek                    ; 2 uses
  %i.en = lshr i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.em, 28
  br i1 %min.iters.check39, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec41 = and i64 %i.eo, 9223372036854775800   ; 3 uses
  %i.ep = shl i64 %n.vec41, 2
  %i.eq = getelementptr i8, ptr %i.ei, i64 %i.ep
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph40
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next45, %vector.body42 ] ; 2 uses
  %i.er = shl i64 %index43, 2
  %next.gep44 = getelementptr i8, ptr %i.ei, i64 %i.er ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep44, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep44, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.es, align 4, !tbaa !72
  %index.next45 = add nuw i64 %index43, 8         ; 2 uses
  %i.et = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.et, label %middle.block46, label %vector.body42, !llvm.loop !1827

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.eo, %n.vec41
  br i1 %cmp.n47, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.i.i.preheader49:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block46
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.eq, %middle.block46 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.eu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.eu, %i.eh
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1828

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block46, %.lr.ph.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store i8 1, ptr %i.ev, align 8, !tbaa !319
  %i.ew = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ew, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i, !llvm.loop !20

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.eb
  br i1 %exitcond.not.i, label %bb.k, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !173

bb.j:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.k:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.ex = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 192
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !210
  %i.fa = icmp eq i8 %i.ez, 0
  br i1 %i.fa, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.m, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !173

bb.m:                                             ; preds = %bb.l
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !399 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !401 ; 2 uses
  %i.ff = icmp eq i32 %i.fe, -1
  br i1 %i.ff, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i16.preheader.i

.lr.ph.i.i.i.i.i.i.i16.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.fg = load ptr, ptr %.val.i, align 8, !tbaa !68
  %.sroa.23.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %.in.i.i27.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i16.i

.lr.ph.i.i.i.i.i.i.i16.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i16.preheader.i
  %i.fk = phi i32 [ %i.hs, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ]
  %i.fl = phi ptr [ %i.hq, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !405 ; 2 uses
  %i.fo = and i32 %i.fn, 2147483647
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !72 ; 6 uses
  %i.fs = fcmp uno float %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %i.ft = icmp slt i32 %i.fn, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.ft, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.fu = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !83
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %.sroa.02.0.copyload.i19.i = load i64, ptr %i.ex, align 8, !tbaa !59 ; 2 uses
  %.sroa.23.0.copyload.i21.i = load ptr, ptr %.sroa.23.0..sroa_idx.i20.i, align 8, !tbaa !65
  %i.fv = icmp eq i64 %.sroa.02.0.copyload.i19.i, 0
  br i1 %i.fv, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fw = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.fx = icmp ugt i64 %.sroa.02.0.copyload.i19.i, %i.fw
  br i1 %i.fx, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i, label %bb.q, !prof !70

bb.q:                                             ; preds = %bb.p
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i: ; preds = %bb.p
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i21.i, i64 %i.fw
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !252
  %i.ga = icmp eq i8 %i.fz, 1
  br i1 %i.ga, label %bb.r, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i

bb.r:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i
  %i.gb = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.gc = load i64, ptr %i.fi, align 8, !tbaa !406
  %i.gd = icmp ugt i64 %i.gc, %i.gb
  br i1 %i.gd, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i, label %bb.s, !prof !70

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i: ; preds = %bb.r
  %i.ge = load ptr, ptr %i.fj, align 8, !tbaa !407
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.ge, i64 %i.gb ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !409 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !410 ; 3 uses
  %i.gj = icmp eq i64 %i.gi, -1
  br i1 %i.gj, label %.split.i.i31.i, label %bb.t

.split.i.i31.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.gk = load i64, ptr %i.fh, align 8, !tbaa !384 ; 2 uses
  %.not8.i.i32.i = icmp ugt i64 %i.gg, %i.gk
  br i1 %.not8.i.i32.i, label %bb.u, label %bb.v, !prof !173

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.gl = add i64 %i.gi, %i.gg
  %i.gm = load i64, ptr %i.fh, align 8, !tbaa !384
  %.not.i.i26.i = icmp ugt i64 %i.gl, %i.gm
  br i1 %.not.i.i26.i, label %bb.u, label %bb.w, !prof !173

bb.u:                                             ; preds = %bb.t, %.split.i.i31.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.v:                                             ; preds = %.split.i.i31.i
  %i.gn = sub nuw i64 %i.gk, %i.gg
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.go = phi i64 [ %i.gn, %bb.v ], [ %i.gi, %bb.t ] ; 2 uses
  %i.gp = load ptr, ptr %.in.i.i27.i, align 8, !tbaa !385 ; 2 uses
  %i.gq = icmp ne ptr %i.gp, null
  %i.gr = icmp eq i64 %i.go, 0
  %i.gs = or i1 %i.gr, %i.gq
  br i1 %i.gs, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i, label %bb.x, !prof !70

bb.x:                                             ; preds = %bb.w
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i: ; preds = %bb.w
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gg
  %i.gu = fcmp olt float %i.fr, 0.000000e+00
  %i.gv = fcmp oge float %i.fr, f0x4B800000
  %i.gw = or i1 %i.gu, %i.gv
  br i1 %i.gw, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, label %bb.y, !prof !173

bb.y:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i
  %i.gx = fptoui float %i.fr to i64
  %i.gy = lshr i64 %i.gx, 5
  %.not.i15.i29.i = icmp ult i64 %i.gy, %i.go
  br i1 %.not.i15.i29.i, label %bb.z, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.z:                                             ; preds = %bb.y
  %i.gz = fptosi float %i.fr to i32               ; 2 uses
  %i.ha = lshr i32 %i.gz, 5
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = and i32 %i.gz, 31
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.hb
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !83
  %i.hf = lshr exact i32 -2147483648, %i.hc
end_hunk_13
begin_hunk_14_@_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_11BlockPolicyENSH_21NullEncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_14SparsePageViewINS_12NoOpAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_:bb.a
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_15NullBlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1843, !nonnull !141, !align !245 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !285
  %i.f = load i64, ptr %1, align 8, !tbaa !315    ; 4 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1844, !nonnull !141, !align !245 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !314  ; 2 uses
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !147 ; 6 uses
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %.val11.i = load ptr, ptr %i.m, align 8, !tbaa !148
  %i.n = ptrtoint ptr %.val11.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 2 uses
  %i.r = icmp eq i64 %i.l, -1
  br i1 %i.r, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.l, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.a ] ; 2 uses
  %i.t = icmp ne ptr %.val.i, null
  %i.u = icmp eq i64 %i.s, 0                      ; 4 uses
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %.not.i.i = icmp eq i64 %i.k, %i.f
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1845, !nonnull !141, !align !244
  %i.y = load i32, ptr %i.x, align 4, !tbaa !83
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.f, %.lr.ph.i.i ], [ %i.bq, %bb.h ]
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bo, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.011.i.i ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !167 ; 3 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !68 ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp eq ptr %i.ad, %i.ae
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp samesign ult i64 %i.ai, %i.z
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.al = sub nuw nsw i64 %i.z, %i.ai
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.ab, i64 noundef %i.al)
  %.pre.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !69
  %.pre2.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i:         ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre2.i.i.i, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.an = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.ae, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ao = ptrtoaddr ptr %i.am to i64
  %i.ap = ptrtoaddr ptr %i.an to i64
  %i.aq = add i64 %i.ao, -4
  %i.ar = sub i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = lshr i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2
  %i.av = getelementptr i8, ptr %i.an, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.ax, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1837

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.i.i.preheader50:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader50 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.am
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1838

_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 1, ptr %i.ba, align 8, !tbaa !319
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, %bb.e
  %i.bb = phi ptr [ %i.an, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.ae, %bb.e ]
  %i.bc = phi i64 [ %.pre.i.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.aa, %bb.e ]
  %i.bd = add i64 %i.bc, %.011.i.i
  %i.be = call noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_11CatAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 noundef %i.bd, ptr noundef %i.bb)
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !167
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = icmp ne i64 %i.be, %i.bk
  %i.bm = zext i1 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 %i.bm, ptr %i.bn, align 8, !tbaa !319
  %i.bo = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.bp = load i64, ptr %i.j, align 8, !tbaa !314
  %i.bq = load i64, ptr %1, align 8, !tbaa !315   ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ult i64 %i.bo, %i.br
  br i1 %i.bs, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, !llvm.loop !7

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i: ; preds = %bb.h, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1846, !nonnull !141, !align !244
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !83 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1847, !nonnull !141, !align !245 ; 2 uses
  %.val12.i = load ptr, ptr %i.by, align 8, !tbaa !144 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val13.i = load ptr, ptr %i.bz, align 8, !tbaa !201 ; 2 uses
  %i.ca = icmp ne ptr %.val12.i, null
  %i.cb = icmp eq ptr %.val13.i, null
  %i.cc = or i1 %i.ca, %i.cb
  %i.cd = ptrtoint ptr %.val13.i to i64
  %i.ce = ptrtoint ptr %.val12.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 200
  %i.ch = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ci = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.cj = mul i64 %i.g, %i.ci
  br i1 %i.cc, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.i, !prof !70

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.db, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !167 ; 3 uses
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.cm
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i16.i
  %i.co = ptrtoaddr ptr %i.cm to i64
  %i.cp = ptrtoaddr ptr %i.cn to i64
  %i.cq = add i64 %i.co, -4
  %i.cr = sub i64 %i.cq, %i.cp                    ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.cr, 28
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec40 = and i64 %i.ct, 9223372036854775800   ; 3 uses
  %i.cu = shl i64 %n.vec40, 2
  %i.cv = getelementptr i8, ptr %i.cn, i64 %i.cu
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next44, %vector.body41 ] ; 2 uses
  %i.cw = shl i64 %index42, 2
  %next.gep43 = getelementptr i8, ptr %i.cn, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep43, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep43, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.cx, align 4, !tbaa !72
  %index.next44 = add nuw i64 %index42, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.cy, label %middle.block45, label %vector.body41, !llvm.loop !1839

middle.block45:                                   ; preds = %vector.body41
  %cmp.n46 = icmp eq i64 %i.ct, %n.vec40
  br i1 %cmp.n46, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48

.lr.ph.i.i.i.i.i.i.i.i.preheader48:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block45
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cv, %middle.block45 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader48, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader48 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.cm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1840

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block45, %.lr.ph.i16.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i8 1, ptr %i.da, align 8, !tbaa !319
  %i.db = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.db, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i, !llvm.loop !8

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.cg
  br i1 %exitcond.not.i, label %bb.j, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !173

bb.i:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.j:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.dc = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 192
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !210
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.k, label %bb.z

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.l, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !173

bb.l:                                             ; preds = %bb.k
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !399 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !401 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i18.preheader.i

.lr.ph.i.i.i.i.i.i.i18.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.dl = load ptr, ptr %.val.i, align 8, !tbaa !68
  %.sroa.23.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %.in.i.i29.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i18.i

.lr.ph.i.i.i.i.i.i.i18.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i18.preheader.i
  %i.dp = phi i32 [ %i.fx, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ]
  %i.dq = phi ptr [ %i.fv, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !405 ; 2 uses
  %i.dt = and i32 %i.ds, 2147483647
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !72 ; 6 uses
  %i.dx = fcmp uno float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %i.dy = icmp slt i32 %i.ds, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.dy, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.dz = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !83
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %.sroa.02.0.copyload.i21.i = load i64, ptr %i.dc, align 8, !tbaa !59 ; 2 uses
  %.sroa.23.0.copyload.i23.i = load ptr, ptr %.sroa.23.0..sroa_idx.i22.i, align 8, !tbaa !65
  %i.ea = icmp eq i64 %.sroa.02.0.copyload.i21.i, 0
  br i1 %i.ea, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.ec = icmp ugt i64 %.sroa.02.0.copyload.i21.i, %i.eb
  br i1 %i.ec, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i, label %bb.p, !prof !70

bb.p:                                             ; preds = %bb.o
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i: ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i23.i, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !252
  %i.ef = icmp eq i8 %i.ee, 1
  br i1 %i.ef, label %bb.q, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i

bb.q:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i
  %i.eg = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.eh = load i64, ptr %i.dn, align 8, !tbaa !406
  %i.ei = icmp ugt i64 %i.eh, %i.eg
  br i1 %i.ei, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i, label %bb.r, !prof !70

bb.r:                                             ; preds = %bb.q
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i: ; preds = %bb.q
  %i.ej = load ptr, ptr %i.do, align 8, !tbaa !407
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eg ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !409 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !410 ; 3 uses
  %i.eo = icmp eq i64 %i.en, -1
  br i1 %i.eo, label %.split.i.i33.i, label %bb.s

.split.i.i33.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.ep = load i64, ptr %i.dm, align 8, !tbaa !384 ; 2 uses
  %.not8.i.i34.i = icmp ugt i64 %i.el, %i.ep
  br i1 %.not8.i.i34.i, label %bb.t, label %bb.u, !prof !173

bb.s:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.eq = add i64 %i.en, %i.el
  %i.er = load i64, ptr %i.dm, align 8, !tbaa !384
  %.not.i.i28.i = icmp ugt i64 %i.eq, %i.er
  br i1 %.not.i.i28.i, label %bb.t, label %bb.v, !prof !173

bb.t:                                             ; preds = %bb.s, %.split.i.i33.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.u:                                             ; preds = %.split.i.i33.i
  %i.es = sub nuw i64 %i.ep, %i.el
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.et = phi i64 [ %i.es, %bb.u ], [ %i.en, %bb.s ] ; 2 uses
  %i.eu = load ptr, ptr %.in.i.i29.i, align 8, !tbaa !385 ; 2 uses
  %i.ev = icmp ne ptr %i.eu, null
  %i.ew = icmp eq i64 %i.et, 0
  %i.ex = or i1 %i.ew, %i.ev
  br i1 %i.ex, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i, label %bb.w, !prof !70

bb.w:                                             ; preds = %bb.v
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i: ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.el
  %i.ez = fcmp olt float %i.dw, 0.000000e+00
  %i.fa = fcmp oge float %i.dw, f0x4B800000
  %i.fb = or i1 %i.ez, %i.fa
  br i1 %i.fb, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, label %bb.x, !prof !173

bb.x:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i
  %i.fc = fptoui float %i.dw to i64
  %i.fd = lshr i64 %i.fc, 5
  %.not.i15.i31.i = icmp ult i64 %i.fd, %i.et
  br i1 %.not.i15.i31.i, label %bb.y, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.y:                                             ; preds = %bb.x
  %i.fe = fptosi float %i.dw to i32               ; 2 uses
  %i.ff = lshr i32 %i.fe, 5
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = and i32 %i.fe, 31
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fg
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !83
  %i.fk = lshr exact i32 -2147483648, %i.fh
end_hunk_14
begin_hunk_15_@_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_15NullBlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_:bb.a

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i: ; preds = %bb.ag
  %i.hg = load ptr, ptr %i.gj, align 8, !tbaa !407
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.hg, i64 %i.hd ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !409 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !410 ; 3 uses
  %i.hl = icmp eq i64 %i.hk, -1
  br i1 %i.hl, label %.split.i.i20.i, label %bb.ai

.split.i.i20.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i
  %i.hm = load i64, ptr %i.gh, align 8, !tbaa !384 ; 2 uses
  %.not8.i.i.i = icmp ugt i64 %i.hi, %i.hm
  br i1 %.not8.i.i.i, label %bb.aj, label %bb.ak, !prof !173

bb.ai:                                            ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i
  %i.hn = add i64 %i.hk, %i.hi
  %i.ho = load i64, ptr %i.gh, align 8, !tbaa !384
  %.not.i.i19.i = icmp ugt i64 %i.hn, %i.ho
  br i1 %.not.i.i19.i, label %bb.aj, label %bb.al, !prof !173

bb.aj:                                            ; preds = %bb.ai, %.split.i.i20.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.ak:                                            ; preds = %.split.i.i20.i
  %i.hp = sub nuw i64 %i.hm, %i.hi
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.hq = phi i64 [ %i.hp, %bb.ak ], [ %i.hk, %bb.ai ] ; 2 uses
  %i.hr = load ptr, ptr %.in.i.i.i, align 8, !tbaa !385 ; 2 uses
  %i.hs = icmp ne ptr %i.hr, null
  %i.ht = icmp eq i64 %i.hq, 0
  %i.hu = or i1 %i.ht, %i.hs
  br i1 %i.hu, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i, label %bb.am, !prof !70

bb.am:                                            ; preds = %bb.al
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i: ; preds = %bb.al
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hi
  %i.hw = fcmp olt float %i.gr, 0.000000e+00
  %i.hx = fcmp oge float %i.gr, f0x4B800000
  %i.hy = or i1 %i.hw, %i.hx
  br i1 %i.hy, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, label %bb.an, !prof !173

bb.an:                                            ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i
  %i.hz = fptoui float %i.gr to i64
  %i.ia = lshr i64 %i.hz, 5
  %.not.i15.i.i = icmp ult i64 %i.ia, %i.hq
  br i1 %.not.i15.i.i, label %bb.ao, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.ib = fptosi float %i.gr to i32               ; 2 uses
  %i.ic = lshr i32 %i.ib, 5
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = and i32 %i.ib, 31
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.id
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !83
  %i.ih = lshr exact i32 -2147483648, %i.ie
  %i.ii = and i32 %i.ig, %i.ih
  %.not5.i.i.i = icmp eq i32 %i.ii, 0
  br label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i, %bb.ad
  %i.ij = load ptr, ptr %i.gk, align 8, !tbaa !433
  %i.ik = sext i32 %.012.i.i.i.i.i10.i.i.i to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4, !tbaa !72
  %i.in = fcmp olt float %i.gr, %i.im
  br label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i, %bb.ao, %bb.an, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i
  %.0.i.i = phi i1 [ %i.in, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i ], [ true, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i ], [ %.not5.i.i.i, %bb.ao ], [ true, %bb.an ]
  %i.io = xor i1 %.0.i.i, true
  %i.ip = zext i1 %i.io to i32
  %i.iq = add nuw nsw i32 %i.gl, %i.ip
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, %bb.ac
  %.0.i.i.i.i.i.i12.i.i.i = phi i32 [ %i.gw, %bb.ac ], [ %i.iq, %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ] ; 3 uses
  %i.ir = sext i32 %.0.i.i.i.i.i.i12.i.i.i to i64 ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !83 ; 2 uses
  %i.iu = icmp eq i32 %i.it, -1
  br i1 %i.iu, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %bb.ab, !llvm.loop !12

_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i: ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i8.i.i.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i8.i.i.i ], [ %.0.i.i.i.i.i.i12.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ]
  %i.iv = sitofp i32 %.0.i.i.i to float
  %i.iw = load ptr, ptr %i.ch, align 8, !tbaa !1848, !nonnull !141, !align !245
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !68
  %i.iy = getelementptr [4 x i8], ptr %i.ix, i64 %i.cj
  %i.iz = getelementptr [4 x i8], ptr %i.iy, i64 %indvars.iv.i
  store float %i.iv, ptr %i.iz, align 4, !tbaa !72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next.i, %i.ci
  br i1 %exitcond43.not.i, label %._crit_edge.i, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, !llvm.loop !1841

_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_15NullBlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_14SparsePageViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 6 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1853, !nonnull !141, !align !245 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !312
  %i.f = load i64, ptr %1, align 8, !tbaa !315    ; 2 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1854, !nonnull !141, !align !245 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !314
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !147 ; 6 uses
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %.val11.i = load ptr, ptr %i.m, align 8, !tbaa !148
  %i.n = ptrtoint ptr %.val11.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 2 uses
  %i.r = icmp eq i64 %i.l, -1
  br i1 %i.r, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.l, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.a ] ; 3 uses
  %i.t = icmp ne ptr %.val.i, null
  %i.u = icmp eq i64 %i.s, 0                      ; 4 uses
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1855, !nonnull !141, !align !244
  %i.y = load i32, ptr %i.x, align 4, !tbaa !83
  call void @_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.y, i64 %i.s, ptr %.val.i)
  %i.z = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1856, !nonnull !141, !align !244
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !83 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1857, !nonnull !141, !align !245 ; 2 uses
  %.val12.i = load ptr, ptr %i.ae, align 8, !tbaa !144 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val13.i = load ptr, ptr %i.af, align 8, !tbaa !201 ; 2 uses
  %i.ag = icmp ne ptr %.val12.i, null
  %i.ah = icmp eq ptr %.val13.i, null
  %i.ai = or i1 %i.ag, %i.ah
  %i.aj = ptrtoint ptr %.val13.i to i64
  %i.ak = ptrtoint ptr %.val12.i to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 200
  %i.an = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ao = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ap = mul i64 %i.g, %i.ao
  br i1 %i.ai, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.e, !prof !70

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.bh, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !167 ; 3 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.as
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.au = ptrtoaddr ptr %i.as to i64
  %i.av = ptrtoaddr ptr %i.at to i64
  %i.aw = add i64 %i.au, -4
  %i.ax = sub i64 %i.aw, %i.av                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.az, 9223372036854775800     ; 3 uses
  %i.ba = shl i64 %n.vec, 2
  %i.bb = getelementptr i8, ptr %i.at, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.at, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.bd, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1849

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.i.i.i.preheader29:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader29 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1850

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 1, ptr %i.bg, align 8, !tbaa !319
  %i.bh = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bh, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.am
  br i1 %exitcond.not.i, label %bb.f, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !173

bb.e:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.f:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.bi = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !210
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %bb.v

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.h, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !173

bb.h:                                             ; preds = %bb.g
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !399 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !401 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, -1
  br i1 %i.bq, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i16.preheader.i

.lr.ph.i.i.i.i.i.i.i16.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.br = load ptr, ptr %.val.i, align 8, !tbaa !68
  %.sroa.23.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %.in.i.i27.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i16.i

.lr.ph.i.i.i.i.i.i.i16.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i16.preheader.i
  %i.bv = phi i32 [ %i.ed, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ]
  %i.bw = phi ptr [ %i.eb, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !405 ; 2 uses
  %i.bz = and i32 %i.by, 2147483647
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !72 ; 6 uses
  %i.cd = fcmp uno float %i.cc, 0.000000e+00
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %i.ce = icmp slt i32 %i.by, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.ce, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.cf = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !83
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %.sroa.02.0.copyload.i19.i = load i64, ptr %i.bi, align 8, !tbaa !59 ; 2 uses
  %.sroa.23.0.copyload.i21.i = load ptr, ptr %.sroa.23.0..sroa_idx.i20.i, align 8, !tbaa !65
  %i.cg = icmp eq i64 %.sroa.02.0.copyload.i19.i, 0
  br i1 %i.cg, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.ci = icmp ugt i64 %.sroa.02.0.copyload.i19.i, %i.ch
  br i1 %i.ci, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i, label %bb.l, !prof !70

bb.l:                                             ; preds = %bb.k
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i: ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i21.i, i64 %i.ch
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !252
  %i.cl = icmp eq i8 %i.ck, 1
  br i1 %i.cl, label %bb.m, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i

bb.m:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i
  %i.cm = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.cn = load i64, ptr %i.bt, align 8, !tbaa !406
  %i.co = icmp ugt i64 %i.cn, %i.cm
  br i1 %i.co, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i, label %bb.n, !prof !70

bb.n:                                             ; preds = %bb.m
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i: ; preds = %bb.m
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !407
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cm ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !409 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !410 ; 3 uses
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %.split.i.i31.i, label %bb.o

.split.i.i31.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.cv = load i64, ptr %i.bs, align 8, !tbaa !384 ; 2 uses
  %.not8.i.i32.i = icmp ugt i64 %i.cr, %i.cv
  br i1 %.not8.i.i32.i, label %bb.p, label %bb.q, !prof !173

bb.o:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.cw = add i64 %i.ct, %i.cr
  %i.cx = load i64, ptr %i.bs, align 8, !tbaa !384
  %.not.i.i26.i = icmp ugt i64 %i.cw, %i.cx
  br i1 %.not.i.i26.i, label %bb.p, label %bb.r, !prof !173

bb.p:                                             ; preds = %bb.o, %.split.i.i31.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.q:                                             ; preds = %.split.i.i31.i
  %i.cy = sub nuw i64 %i.cv, %i.cr
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.cz = phi i64 [ %i.cy, %bb.q ], [ %i.ct, %bb.o ] ; 2 uses
  %i.da = load ptr, ptr %.in.i.i27.i, align 8, !tbaa !385 ; 2 uses
  %i.db = icmp ne ptr %i.da, null
  %i.dc = icmp eq i64 %i.cz, 0
  %i.dd = or i1 %i.dc, %i.db
  br i1 %i.dd, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i, label %bb.s, !prof !70

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i: ; preds = %bb.r
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cr
  %i.df = fcmp olt float %i.cc, 0.000000e+00
  %i.dg = fcmp oge float %i.cc, f0x4B800000
  %i.dh = or i1 %i.df, %i.dg
  br i1 %i.dh, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, label %bb.t, !prof !173

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i
  %i.di = fptoui float %i.cc to i64
  %i.dj = lshr i64 %i.di, 5
  %.not.i15.i29.i = icmp ult i64 %i.dj, %i.cz
  br i1 %.not.i15.i29.i, label %bb.u, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.u:                                             ; preds = %bb.t
  %i.dk = fptosi float %i.cc to i32               ; 2 uses
  %i.dl = lshr i32 %i.dk, 5
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = and i32 %i.dk, 31
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dm
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !83
  %i.dq = lshr exact i32 -2147483648, %i.dn
end_hunk_15
begin_hunk_16_@_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_15NullBlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_14SparsePageViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_:bb.a
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_15NullBlockPolicyENSH_21NullEncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1865, !nonnull !141, !align !245 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !322
  %i.f = load i64, ptr %1, align 8, !tbaa !315    ; 4 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1866, !nonnull !141, !align !245 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !314  ; 2 uses
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !147 ; 6 uses
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %.val11.i = load ptr, ptr %i.m, align 8, !tbaa !148
  %i.n = ptrtoint ptr %.val11.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 2 uses
  %i.r = icmp eq i64 %i.l, -1
  br i1 %i.r, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.l, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.a ] ; 2 uses
  %i.t = icmp ne ptr %.val.i, null
  %i.u = icmp eq i64 %i.s, 0                      ; 4 uses
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !70

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %.not.i.i = icmp eq i64 %i.k, %i.f
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1867, !nonnull !141, !align !244
  %i.y = load i32, ptr %i.x, align 4, !tbaa !83
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.f, %.lr.ph.i.i ], [ %i.bq, %bb.h ]
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bo, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.011.i.i ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !167 ; 3 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !68 ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp eq ptr %i.ad, %i.ae
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp samesign ult i64 %i.ai, %i.z
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.al = sub nuw nsw i64 %i.z, %i.ai
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.ab, i64 noundef %i.al)
  %.pre.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !69
  %.pre2.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i:         ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre2.i.i.i, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.an = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.ae, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ao = ptrtoaddr ptr %i.am to i64
  %i.ap = ptrtoaddr ptr %i.an to i64
  %i.aq = add i64 %i.ao, -4
  %i.ar = sub i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = lshr i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2
  %i.av = getelementptr i8, ptr %i.an, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.ax, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1859

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.i.i.preheader50:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader50 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.am
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1860

_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 1, ptr %i.ba, align 8, !tbaa !319
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, %bb.e
  %i.bb = phi ptr [ %i.an, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.ae, %bb.e ]
  %i.bc = phi i64 [ %.pre.i.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.aa, %bb.e ]
  %i.bd = add i64 %i.bc, %.011.i.i
  %i.be = call noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.bd, ptr noundef %i.bb)
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !167
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = icmp ne i64 %i.be, %i.bk
  %i.bm = zext i1 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 %i.bm, ptr %i.bn, align 8, !tbaa !319
  %i.bo = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.bp = load i64, ptr %i.j, align 8, !tbaa !314
  %i.bq = load i64, ptr %1, align 8, !tbaa !315   ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ult i64 %i.bo, %i.br
  br i1 %i.bs, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, !llvm.loop !16

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i: ; preds = %bb.h, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1868, !nonnull !141, !align !244
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !83 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1869, !nonnull !141, !align !245 ; 2 uses
  %.val12.i = load ptr, ptr %i.by, align 8, !tbaa !144 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val13.i = load ptr, ptr %i.bz, align 8, !tbaa !201 ; 2 uses
  %i.ca = icmp ne ptr %.val12.i, null
  %i.cb = icmp eq ptr %.val13.i, null
  %i.cc = or i1 %i.ca, %i.cb
  %i.cd = ptrtoint ptr %.val13.i to i64
  %i.ce = ptrtoint ptr %.val12.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 200
  %i.ch = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ci = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.cj = mul i64 %i.g, %i.ci
  br i1 %i.cc, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.i, !prof !70

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.db, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !167 ; 3 uses
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.cm
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i16.i
  %i.co = ptrtoaddr ptr %i.cm to i64
  %i.cp = ptrtoaddr ptr %i.cn to i64
  %i.cq = add i64 %i.co, -4
  %i.cr = sub i64 %i.cq, %i.cp                    ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.cr, 28
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec40 = and i64 %i.ct, 9223372036854775800   ; 3 uses
  %i.cu = shl i64 %n.vec40, 2
  %i.cv = getelementptr i8, ptr %i.cn, i64 %i.cu
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next44, %vector.body41 ] ; 2 uses
  %i.cw = shl i64 %index42, 2
  %next.gep43 = getelementptr i8, ptr %i.cn, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep43, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep43, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.cx, align 4, !tbaa !72
  %index.next44 = add nuw i64 %index42, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.cy, label %middle.block45, label %vector.body41, !llvm.loop !1861

middle.block45:                                   ; preds = %vector.body41
  %cmp.n46 = icmp eq i64 %i.ct, %n.vec40
  br i1 %cmp.n46, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48

.lr.ph.i.i.i.i.i.i.i.i.preheader48:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block45
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cv, %middle.block45 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader48, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader48 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.cm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1862

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block45, %.lr.ph.i16.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i8 1, ptr %i.da, align 8, !tbaa !319
  %i.db = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.db, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i, !llvm.loop !17

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.cg
  br i1 %exitcond.not.i, label %bb.j, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !173

bb.i:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.j:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.dc = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 192
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !210
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.k, label %bb.z

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.l, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !173

bb.l:                                             ; preds = %bb.k
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !399 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !401 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i18.preheader.i

.lr.ph.i.i.i.i.i.i.i18.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.dl = load ptr, ptr %.val.i, align 8, !tbaa !68
  %.sroa.23.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %.in.i.i29.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i18.i

.lr.ph.i.i.i.i.i.i.i18.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i18.preheader.i
  %i.dp = phi i32 [ %i.fx, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ]
  %i.dq = phi ptr [ %i.fv, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !405 ; 2 uses
  %i.dt = and i32 %i.ds, 2147483647
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !72 ; 6 uses
  %i.dx = fcmp uno float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %i.dy = icmp slt i32 %i.ds, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.dy, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.dz = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !83
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %.sroa.02.0.copyload.i21.i = load i64, ptr %i.dc, align 8, !tbaa !59 ; 2 uses
  %.sroa.23.0.copyload.i23.i = load ptr, ptr %.sroa.23.0..sroa_idx.i22.i, align 8, !tbaa !65
  %i.ea = icmp eq i64 %.sroa.02.0.copyload.i21.i, 0
  br i1 %i.ea, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.ec = icmp ugt i64 %.sroa.02.0.copyload.i21.i, %i.eb
  br i1 %i.ec, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i, label %bb.p, !prof !70

bb.p:                                             ; preds = %bb.o
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i: ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i23.i, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !252
  %i.ef = icmp eq i8 %i.ee, 1
  br i1 %i.ef, label %bb.q, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i

bb.q:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i
  %i.eg = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.eh = load i64, ptr %i.dn, align 8, !tbaa !406
  %i.ei = icmp ugt i64 %i.eh, %i.eg
  br i1 %i.ei, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i, label %bb.r, !prof !70

bb.r:                                             ; preds = %bb.q
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i: ; preds = %bb.q
  %i.ej = load ptr, ptr %i.do, align 8, !tbaa !407
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eg ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !409 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !410 ; 3 uses
  %i.eo = icmp eq i64 %i.en, -1
  br i1 %i.eo, label %.split.i.i33.i, label %bb.s

.split.i.i33.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.ep = load i64, ptr %i.dm, align 8, !tbaa !384 ; 2 uses
  %.not8.i.i34.i = icmp ugt i64 %i.el, %i.ep
  br i1 %.not8.i.i34.i, label %bb.t, label %bb.u, !prof !173

bb.s:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.eq = add i64 %i.en, %i.el
  %i.er = load i64, ptr %i.dm, align 8, !tbaa !384
  %.not.i.i28.i = icmp ugt i64 %i.eq, %i.er
  br i1 %.not.i.i28.i, label %bb.t, label %bb.v, !prof !173

bb.t:                                             ; preds = %bb.s, %.split.i.i33.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.u:                                             ; preds = %.split.i.i33.i
  %i.es = sub nuw i64 %i.ep, %i.el
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.et = phi i64 [ %i.es, %bb.u ], [ %i.en, %bb.s ] ; 2 uses
  %i.eu = load ptr, ptr %.in.i.i29.i, align 8, !tbaa !385 ; 2 uses
  %i.ev = icmp ne ptr %i.eu, null
  %i.ew = icmp eq i64 %i.et, 0
  %i.ex = or i1 %i.ew, %i.ev
  br i1 %i.ex, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i, label %bb.w, !prof !70

bb.w:                                             ; preds = %bb.v
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i: ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.el
  %i.ez = fcmp olt float %i.dw, 0.000000e+00
  %i.fa = fcmp oge float %i.dw, f0x4B800000
  %i.fb = or i1 %i.ez, %i.fa
  br i1 %i.fb, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, label %bb.x, !prof !173

bb.x:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i
  %i.fc = fptoui float %i.dw to i64
  %i.fd = lshr i64 %i.fc, 5
  %.not.i15.i31.i = icmp ult i64 %i.fd, %i.et
  br i1 %.not.i15.i31.i, label %bb.y, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.y:                                             ; preds = %bb.x
  %i.fe = fptosi float %i.dw to i32               ; 2 uses
  %i.ff = lshr i32 %i.fe, 5
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = and i32 %i.fe, 31
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fg
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !83
  %i.fk = lshr exact i32 -2147483648, %i.fh
end_hunk_16
begin_hunk_17_@_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_15NullBlockPolicyENSH_21NullEncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_14SparsePageViewINS_12NoOpAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_:bb.a
.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = add i64 %i.aq, -4
  %i.at = sub i64 %i.as, %i.ar                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.az, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1871

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader51

.lr.ph.i.i.i.i.i.i.preheader51:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader51, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader51 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !72
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1872

_ZN7xgboost7RegTree4FVec4InitEm.exit.i:           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 1, ptr %i.bc, align 8, !tbaa !319
  %.pre.i = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, %bb.e
  %i.bd = phi i64 [ %.pre.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.ac, %bb.e ] ; 3 uses
  %i.be = phi ptr [ %i.ap, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.ag, %bb.e ] ; 6 uses
  %i.bf = phi ptr [ %i.ao, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.af, %bb.e ]
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !389
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %i.bd
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %.011.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !59 ; 3 uses
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !59 ; 4 uses
  %i.bm = load ptr, ptr %i.ab, align 8, !tbaa !438 ; 2 uses
  %i.bn = icmp ne ptr %i.bm, null
  %i.bo = icmp eq i64 %i.bk, %i.bl                ; 2 uses
  %i.bp = or i1 %i.bo, %i.bn
  br i1 %i.bp, label %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i, label %bb.i, !prof !70

bb.i:                                             ; preds = %bb.h
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i: ; preds = %bb.h
  %i.bq = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl ; 5 uses
  br i1 %i.bo, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i
  %xtraiter = and i64 %i.bq, 3                    ; 3 uses
  %i.bs = sub i64 %i.bl, %i.bk
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bq, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.020.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.cv, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !440
  %i.bx = load i32, ptr %i.bu, align 4, !tbaa !441
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.by
  store float %i.bw, ptr %i.bz, align 4, !tbaa !72
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !440
  %i.ce = load i32, ptr %i.cb, align 4, !tbaa !441
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cf
  store float %i.cd, ptr %i.cg, align 4, !tbaa !72
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !440
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !441
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cm
  store float %i.ck, ptr %i.cn, align 4, !tbaa !72
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !440
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !441
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ct
  store float %i.cr, ptr %i.cu, align 4, !tbaa !72
  %i.cv = add nuw i64 %.020.i.i.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !18

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.020.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.cv, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod52)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.020.i.i.i.epil = phi i64 [ %i.dc, %.lr.ph.i.i.i.epil ], [ %.020.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i.epil ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !440
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !441
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.da
  store float %i.cy, ptr %i.db, align 4, !tbaa !72
  %i.dc = add nuw i64 %.020.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1873

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i
  %i.dd = ptrtoint ptr %i.bf to i64
  %i.de = ptrtoint ptr %i.be to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 2
  %i.dh = icmp ne i64 %i.bq, %i.dg
  %i.di = zext i1 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 %i.di, ptr %i.dj, align 8, !tbaa !319
  %i.dk = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.dl = load i64, ptr %i.j, align 8, !tbaa !314
  %i.dm = sub i64 %i.dl, %i.bd
  %i.dn = icmp ult i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit, !llvm.loop !19

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1881, !nonnull !141, !align !244
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !83 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1882, !nonnull !141, !align !245 ; 2 uses
  %.val12.i = load ptr, ptr %i.dt, align 8, !tbaa !144 ; 3 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 8
  %.val13.i = load ptr, ptr %i.du, align 8, !tbaa !201 ; 2 uses
  %i.dv = icmp ne ptr %.val12.i, null
  %i.dw = icmp eq ptr %.val13.i, null
  %i.dx = or i1 %i.dv, %i.dw
  %i.dy = ptrtoint ptr %.val13.i to i64
  %i.dz = ptrtoint ptr %.val12.i to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 200
  %i.ec = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ed = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ee = mul i64 %i.g, %i.ed
  br i1 %i.dx, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.j, !prof !70

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.ew, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !167 ; 3 uses
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ei, %i.eh
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.ej = ptrtoaddr ptr %i.eh to i64
  %i.ek = ptrtoaddr ptr %i.ei to i64
  %i.el = add i64 %i.ej, -4
  %i.em = sub i64 %i.el, %i.ek                    ; 2 uses
  %i.en = lshr i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.em, 28
  br i1 %min.iters.check39, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec41 = and i64 %i.eo, 9223372036854775800   ; 3 uses
  %i.ep = shl i64 %n.vec41, 2
  %i.eq = getelementptr i8, ptr %i.ei, i64 %i.ep
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph40
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next45, %vector.body42 ] ; 2 uses
  %i.er = shl i64 %index43, 2
  %next.gep44 = getelementptr i8, ptr %i.ei, i64 %i.er ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep44, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep44, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.es, align 4, !tbaa !72
  %index.next45 = add nuw i64 %index43, 8         ; 2 uses
  %i.et = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.et, label %middle.block46, label %vector.body42, !llvm.loop !1874

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.eo, %n.vec41
  br i1 %cmp.n47, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.i.i.preheader49:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block46
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.eq, %middle.block46 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.eu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.eu, %i.eh
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1875

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block46, %.lr.ph.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store i8 1, ptr %i.ev, align 8, !tbaa !319
  %i.ew = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ew, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i, !llvm.loop !20

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.eb
  br i1 %exitcond.not.i, label %bb.k, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !173

bb.j:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.k:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.ex = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 192
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !210
  %i.fa = icmp eq i8 %i.ez, 0
  br i1 %i.fa, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.m, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !173

bb.m:                                             ; preds = %bb.l
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !399 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !401 ; 2 uses
  %i.ff = icmp eq i32 %i.fe, -1
  br i1 %i.ff, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i16.preheader.i

.lr.ph.i.i.i.i.i.i.i16.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.fg = load ptr, ptr %.val.i, align 8, !tbaa !68
  %.sroa.23.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %.in.i.i27.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i16.i

.lr.ph.i.i.i.i.i.i.i16.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i16.preheader.i
  %i.fk = phi i32 [ %i.hs, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ]
  %i.fl = phi ptr [ %i.hq, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !405 ; 2 uses
  %i.fo = and i32 %i.fn, 2147483647
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !72 ; 6 uses
  %i.fs = fcmp uno float %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %i.ft = icmp slt i32 %i.fn, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.ft, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.fu = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !83
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %.sroa.02.0.copyload.i19.i = load i64, ptr %i.ex, align 8, !tbaa !59 ; 2 uses
  %.sroa.23.0.copyload.i21.i = load ptr, ptr %.sroa.23.0..sroa_idx.i20.i, align 8, !tbaa !65
  %i.fv = icmp eq i64 %.sroa.02.0.copyload.i19.i, 0
  br i1 %i.fv, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fw = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.fx = icmp ugt i64 %.sroa.02.0.copyload.i19.i, %i.fw
  br i1 %i.fx, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i, label %bb.q, !prof !70

bb.q:                                             ; preds = %bb.p
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i: ; preds = %bb.p
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i21.i, i64 %i.fw
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !252
  %i.ga = icmp eq i8 %i.fz, 1
  br i1 %i.ga, label %bb.r, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i

bb.r:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i
  %i.gb = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.gc = load i64, ptr %i.fi, align 8, !tbaa !406
  %i.gd = icmp ugt i64 %i.gc, %i.gb
  br i1 %i.gd, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i, label %bb.s, !prof !70

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i: ; preds = %bb.r
  %i.ge = load ptr, ptr %i.fj, align 8, !tbaa !407
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.ge, i64 %i.gb ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !409 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !410 ; 3 uses
  %i.gj = icmp eq i64 %i.gi, -1
  br i1 %i.gj, label %.split.i.i31.i, label %bb.t

.split.i.i31.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.gk = load i64, ptr %i.fh, align 8, !tbaa !384 ; 2 uses
  %.not8.i.i32.i = icmp ugt i64 %i.gg, %i.gk
  br i1 %.not8.i.i32.i, label %bb.u, label %bb.v, !prof !173

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.gl = add i64 %i.gi, %i.gg
  %i.gm = load i64, ptr %i.fh, align 8, !tbaa !384
  %.not.i.i26.i = icmp ugt i64 %i.gl, %i.gm
  br i1 %.not.i.i26.i, label %bb.u, label %bb.w, !prof !173

bb.u:                                             ; preds = %bb.t, %.split.i.i31.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.v:                                             ; preds = %.split.i.i31.i
  %i.gn = sub nuw i64 %i.gk, %i.gg
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.go = phi i64 [ %i.gn, %bb.v ], [ %i.gi, %bb.t ] ; 2 uses
  %i.gp = load ptr, ptr %.in.i.i27.i, align 8, !tbaa !385 ; 2 uses
  %i.gq = icmp ne ptr %i.gp, null
  %i.gr = icmp eq i64 %i.go, 0
  %i.gs = or i1 %i.gr, %i.gq
  br i1 %i.gs, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i, label %bb.x, !prof !70

bb.x:                                             ; preds = %bb.w
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i: ; preds = %bb.w
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gg
  %i.gu = fcmp olt float %i.fr, 0.000000e+00
  %i.gv = fcmp oge float %i.fr, f0x4B800000
  %i.gw = or i1 %i.gu, %i.gv
  br i1 %i.gw, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, label %bb.y, !prof !173

bb.y:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i
  %i.gx = fptoui float %i.fr to i64
  %i.gy = lshr i64 %i.gx, 5
  %.not.i15.i29.i = icmp ult i64 %i.gy, %i.go
  br i1 %.not.i15.i29.i, label %bb.z, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.z:                                             ; preds = %bb.y
  %i.gz = fptosi float %i.fr to i32               ; 2 uses
  %i.ha = lshr i32 %i.gz, 5
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = and i32 %i.gz, 31
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.hb
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !83
  %i.hf = lshr exact i32 -2147483648, %i.hc
end_hunk_17
