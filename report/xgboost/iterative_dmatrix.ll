Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/iterative_dmatrix?download=true
inline.NumInlined: 5372
inline.NumDeleted: 1891
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN7xgboost6common11ParallelForImZNS0_10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSB_SB_T1_T0_EUlSB_E_EEvSB_iNS0_5SchedEOSM_:bb.a
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !109
  %i.kr = add i64 %i.kq, %i.kl                    ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kn
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !109
  %i.kt = add nuw i64 %.014.i.i88, 3              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i90.3 = load i64, ptr %.sroa.4145.0.copyload, align 8, !tbaa !109
  %i.ku = getelementptr [8 x i8], ptr %i.jv, i64 %.sroa.0.0.copyload1.i.i.i90.3
  %i.kv = getelementptr [8 x i8], ptr %i.ku, i64 %i.kt
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !109
  %i.kx = add i64 %i.kw, %i.kr                    ; 3 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kt
  store i64 %i.kx, ptr %i.ky, align 8, !tbaa !109
  %i.kz = add nuw i64 %.014.i.i88, 4              ; 2 uses
  %niter252.next.3 = add i64 %niter252, 4         ; 2 uses
  %niter252.ncmp.3.not = icmp eq i64 %niter252.next.3, %unroll_iter251
  br i1 %niter252.ncmp.3.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa, label %bb.as, !llvm.loop !564

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa: ; preds = %bb.as
  %lcmp.mod249.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod249.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91, label %.epil.preheader246

.epil.preheader246:                               ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa, %.lr.ph.i.i85
  %.014.i.i88.epil.init = phi i64 [ %i.jm, %.lr.ph.i.i85 ], [ %i.kz, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa ]
  %.01113.i.i89.epil.init = phi i64 [ 0, %.lr.ph.i.i85 ], [ %i.kx, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa ]
  %lcmp.mod250 = icmp ne i64 %xtraiter247, 0
  call void @llvm.assume(i1 %lcmp.mod250)
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.epil.preheader246
  %.014.i.i88.epil = phi i64 [ %.014.i.i88.epil.init, %.epil.preheader246 ], [ %i.lf, %bb.at ] ; 3 uses
  %.01113.i.i89.epil = phi i64 [ %.01113.i.i89.epil.init, %.epil.preheader246 ], [ %i.ld, %bb.at ]
  %epil.iter248 = phi i64 [ 0, %.epil.preheader246 ], [ %epil.iter248.next, %bb.at ]
  %.sroa.0.0.copyload1.i.i.i90.epil = load i64, ptr %.sroa.4145.0.copyload, align 8, !tbaa !109
  %i.la = getelementptr [8 x i8], ptr %i.jv, i64 %.sroa.0.0.copyload1.i.i.i90.epil
  %i.lb = getelementptr [8 x i8], ptr %i.la, i64 %.014.i.i88.epil
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !109
  %i.ld = add i64 %i.lc, %.01113.i.i89.epil       ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %.014.i.i88.epil
  store i64 %i.ld, ptr %i.le, align 8, !tbaa !109
  %i.lf = add nuw i64 %.014.i.i88.epil, 1
  %epil.iter248.next = add i64 %epil.iter248, 1   ; 2 uses
  %epil.iter248.cmp.not = icmp eq i64 %epil.iter248.next, %xtraiter247
  br i1 %epil.iter248.cmp.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91, label %bb.at, !llvm.loop !579

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa, %bb.at, %bb.ar
  %i.lg = add nuw i64 %.040172, 1                 ; 2 uses
  %exitcond197.not = icmp eq i64 %i.lg, %0
  br i1 %exitcond197.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ao, !llvm.loop !580

bb.au:                                            ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98
  %.0171 = phi i64 [ 0, %.lr.ph ], [ %i.nc, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98 ] ; 5 uses
  %i.lh = load i64, ptr %.sroa.0152.0.copyload, align 8, !tbaa !109 ; 3 uses
  %i.li = mul i64 %i.lh, %.0171                   ; 3 uses
  %i.lj = load i64, ptr %.sroa.2153.0.copyload, align 8, !tbaa !109
  %i.lk = add i64 %i.lj, -1
  %i.ll = icmp eq i64 %.0171, %i.lk
  br i1 %i.ll, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.sroa.3154.0.copyload = load ptr, ptr %.sroa.3154.0..sroa_idx, align 8, !tbaa !246
  %i.lm = load i64, ptr %.sroa.3154.0.copyload, align 8, !tbaa !109
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.ln = add nuw i64 %.0171, 1
  %i.lo = mul i64 %i.lh, %i.ln
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.lp = phi i64 [ %i.lm, %bb.av ], [ %i.lo, %bb.aw ] ; 3 uses
  %i.lq = icmp ult i64 %i.li, %i.lp
  br i1 %i.lq, label %.lr.ph.i.i92, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98

.lr.ph.i.i92:                                     ; preds = %bb.ax
  %.sroa.6.0.copyload.i.i.i94 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i93, align 8, !tbaa !466
  %i.lr = load ptr, ptr %.sroa.6.0.copyload.i.i.i94, align 8, !tbaa !121 ; 5 uses
  %i.ls = load ptr, ptr %.sroa.5156.0.copyload, align 8, !tbaa !246
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 5 uses
  %i.lu = mul i64 %.0171, %i.lh                   ; 2 uses
  %i.lv = sub i64 %i.lp, %i.lu                    ; 2 uses
  %xtraiter = and i64 %i.lv, 3                    ; 3 uses
  %i.lw = sub i64 %i.lu, %i.lp
  %i.lx = icmp ugt i64 %i.lw, -4
  br i1 %i.lx, label %.epil.preheader, label %.lr.ph.i.i92.new

.lr.ph.i.i92.new:                                 ; preds = %.lr.ph.i.i92
  %unroll_iter = and i64 %i.lv, -4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph.i.i92.new
  %.014.i.i95 = phi i64 [ %i.li, %.lr.ph.i.i92.new ], [ %i.mv, %bb.ay ] ; 6 uses
  %.01113.i.i96 = phi i64 [ 0, %.lr.ph.i.i92.new ], [ %i.mt, %bb.ay ]
  %niter = phi i64 [ 0, %.lr.ph.i.i92.new ], [ %niter.next.3, %bb.ay ]
  %.sroa.0.0.copyload1.i.i.i97 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.ly = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97
  %i.lz = getelementptr [8 x i8], ptr %i.ly, i64 %.014.i.i95
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !109
  %i.mb = add i64 %i.ma, %.01113.i.i96            ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.014.i.i95
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !109
  %i.md = add nuw i64 %.014.i.i95, 1              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.1 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.me = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.1
  %i.mf = getelementptr [8 x i8], ptr %i.me, i64 %i.md
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !109
  %i.mh = add i64 %i.mg, %i.mb                    ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.md
  store i64 %i.mh, ptr %i.mi, align 8, !tbaa !109
  %i.mj = add nuw i64 %.014.i.i95, 2              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.2 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mk = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.2
  %i.ml = getelementptr [8 x i8], ptr %i.mk, i64 %i.mj
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !109
  %i.mn = add i64 %i.mm, %i.mh                    ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.mj
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !109
  %i.mp = add nuw i64 %.014.i.i95, 3              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.3 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mq = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.3
  %i.mr = getelementptr [8 x i8], ptr %i.mq, i64 %i.mp
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !109
  %i.mt = add i64 %i.ms, %i.mn                    ; 3 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.mp
  store i64 %i.mt, ptr %i.mu, align 8, !tbaa !109
  %i.mv = add nuw i64 %.014.i.i95, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa, label %bb.ay, !llvm.loop !564

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa: ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa, %.lr.ph.i.i92
  %.014.i.i95.epil.init = phi i64 [ %i.li, %.lr.ph.i.i92 ], [ %i.mv, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa ]
  %.01113.i.i96.epil.init = phi i64 [ 0, %.lr.ph.i.i92 ], [ %i.mt, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa ]
  %lcmp.mod245 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod245)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader
  %.014.i.i95.epil = phi i64 [ %.014.i.i95.epil.init, %.epil.preheader ], [ %i.nb, %bb.az ] ; 3 uses
  %.01113.i.i96.epil = phi i64 [ %.01113.i.i96.epil.init, %.epil.preheader ], [ %i.mz, %bb.az ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.az ]
  %.sroa.0.0.copyload1.i.i.i97.epil = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mw = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.epil
  %i.mx = getelementptr [8 x i8], ptr %i.mw, i64 %.014.i.i95.epil
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !109
  %i.mz = add i64 %i.my, %.01113.i.i96.epil       ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.014.i.i95.epil
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !109
  %i.nb = add nuw i64 %.014.i.i95.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98, label %bb.az, !llvm.loop !581

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa, %bb.az, %bb.ax
  %i.nc = add nuw i64 %.0171, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.nc, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.au, !llvm.loop !582

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit84, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit77, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit70, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit, %.preheader169, %.preheader167, %.preheader165, %.preheader163, %.preheader161, %.preheader159, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.ba:                                            ; preds = %bb.k
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  %i.ne = extractvalue { ptr, i32 } %i.nd, 0
  call void @__clang_call_terminate(ptr %i.ne) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNS0_10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSB_SB_T1_T0_EUlSB_E0_EEvSB_iNS0_5SchedEOSM_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.52", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %.not168 = icmp eq i64 %0, 0
  br i1 %.not168, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph161

.lr.ph161:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !583, !nonnull !191, !align !496
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !585, !nonnull !191, !align !496
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !191, !align !496
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !191, !align !496
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !191, !align !496
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph161, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit
  %.048160 = phi i64 [ 0, %.lr.ph161 ], [ %i.ax, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit ] ; 8 uses
  %i.m = shl i64 %.048160, 3                      ; 2 uses
  %i.n = load i64, ptr %i.d, align 8, !tbaa !109  ; 5 uses
  %i.o = mul i64 %i.n, %.048160                   ; 5 uses
  %i.p = load i64, ptr %i.f, align 8, !tbaa !109
  %i.q = add i64 %i.p, -1
  %i.r = icmp eq i64 %.048160, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.h, align 8, !tbaa !109
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.048160, 1
  %i.u = mul i64 %i.n, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = phi i64 [ %i.s, %bb.c ], [ %i.u, %bb.d ] ; 4 uses
  %i.w = icmp ult i64 %i.o, %i.v
  br i1 %i.w, label %.lr.ph.i, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !470  ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.048160 ; 3 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !246  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = mul i64 %.048160, %i.n
  %i.ac = sub i64 %i.v, %i.ab                     ; 3 uses
  %min.iters.check340 = icmp ult i64 %i.ac, 10
  br i1 %min.iters.check340, label %scalar.ph339.preheader, label %vector.memcheck331

vector.memcheck331:                               ; preds = %.lr.ph.i
  %scevgep332 = getelementptr i8, ptr %i.z, i64 8 ; 2 uses
  %i.ad = mul i64 %i.n, %i.m                      ; 2 uses
  %scevgep333 = getelementptr nuw i8, ptr %scevgep332, i64 %i.ad
  %i.ae = mul i64 %.048160, %i.n
  %i.af = sub i64 %i.v, %i.ae
  %i.ag = shl i64 %i.af, 3
  %i.ah = getelementptr i8, ptr %scevgep332, i64 %i.ad
  %scevgep334 = getelementptr i8, ptr %i.ah, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.m
  %scevgep335 = getelementptr i8, ptr %i.ai, i64 8
  %bound0336 = icmp ult ptr %scevgep333, %scevgep335
  %bound1337 = icmp ult ptr %i.y, %scevgep334
  %found.conflict338 = and i1 %bound0336, %bound1337
  br i1 %found.conflict338, label %scalar.ph339.preheader, label %vector.ph341

vector.ph341:                                     ; preds = %vector.memcheck331
  %n.vec342 = and i64 %i.ac, -4                   ; 3 uses
  %i.aj = add i64 %i.o, %n.vec342
  %i.ak = load i64, ptr %i.y, align 8, !tbaa !109, !alias.scope !586
  %broadcast.splatinsert347 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat348 = shufflevector <2 x i64> %broadcast.splatinsert347, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.o
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body343, %vector.ph341
  %index344 = phi i64 [ 0, %vector.ph341 ], [ %index.next349, %vector.body343 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index344 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load345 = load <2 x i64>, ptr %i.am, align 8, !tbaa !109, !alias.scope !589, !noalias !586
  %wide.load346 = load <2 x i64>, ptr %i.an, align 8, !tbaa !109, !alias.scope !589, !noalias !586
  %i.ao = add <2 x i64> %wide.load345, %broadcast.splat348
  %i.ap = add <2 x i64> %wide.load346, %broadcast.splat348
  store <2 x i64> %i.ao, ptr %i.am, align 8, !tbaa !109, !alias.scope !589, !noalias !586
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !109, !alias.scope !589, !noalias !586
  %index.next349 = add nuw i64 %index344, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next349, %n.vec342
  br i1 %i.aq, label %middle.block350, label %vector.body343, !llvm.loop !591

middle.block350:                                  ; preds = %vector.body343
  %cmp.n351 = icmp eq i64 %i.ac, %n.vec342
  br i1 %cmp.n351, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit, label %scalar.ph339.preheader

scalar.ph339.preheader:                           ; preds = %vector.memcheck331, %.lr.ph.i, %middle.block350
  %.010.i.ph = phi i64 [ %i.o, %vector.memcheck331 ], [ %i.o, %.lr.ph.i ], [ %i.aj, %middle.block350 ]
  br label %scalar.ph339

scalar.ph339:                                     ; preds = %scalar.ph339.preheader, %scalar.ph339
  %.010.i = phi i64 [ %i.av, %scalar.ph339 ], [ %.010.i.ph, %scalar.ph339.preheader ] ; 2 uses
  %i.ar = load i64, ptr %i.y, align 8, !tbaa !109
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.010.i ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !109
  %i.au = add i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.as, align 8, !tbaa !109
  %i.av = add nuw i64 %.010.i, 1                  ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.v
  br i1 %i.aw, label %scalar.ph339, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit, !llvm.loop !592

_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit: ; preds = %scalar.ph339, %middle.block350, %bb.e
  %i.ax = add nuw i64 %.048160, 1                 ; 2 uses
  %exitcond180.not = icmp eq i64 %i.ax, %0
  br i1 %exitcond180.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.b, !llvm.loop !593

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !100, !noalias !594
  store i32 1, ptr %i.b, align 4, !tbaa !100, !noalias !594
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.f
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.52") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ay = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ay, ptr noundef nonnull @.str.61, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.h

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.az = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.i ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.10, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.62, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bc = load ptr, ptr %5, align 8, !tbaa !201   ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !85
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.bd, i64 noundef %i.bf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.j unwind label %bb.am

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.h ], [ %i.bj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.pr135 = load ptr, ptr %5, align 8, !tbaa !201 ; 4 uses
  %.not.i61 = icmp eq ptr %.pr135, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %.pr135, align 8, !tbaa !82 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.pr135, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !83
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr135, i64 noundef 32) #33
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.k, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  switch i32 %2, label %_ZN4dmlc12OMPExceptionD2Ev.exit [
    i32 0, label %.preheader137
    i32 1, label %bb.q
    i32 2, label %bb.z
    i32 3, label %.preheader147
  ]

.preheader147:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not162 = icmp eq i64 %0, 0
  br i1 %.not162, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader147
  %.sroa.0130.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2131.0.copyload = load ptr, ptr %.sroa.2131.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4133.0.copyload = load ptr, ptr %.sroa.4133.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5134.0.copyload = load ptr, ptr %.sroa.5134.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ai

.preheader137:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not167 = icmp eq i64 %0, 0
  br i1 %.not167, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader137
  %.sroa.082.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !246
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.483.0.copyload = load ptr, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !473
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.584.0.copyload = load ptr, ptr %.sroa.584.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph159, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit
  %.044158 = phi i64 [ 0, %.lr.ph159 ], [ %i.da, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit ] ; 8 uses
  %i.bp = shl i64 %.044158, 3                     ; 2 uses
  %i.bq = load i64, ptr %.sroa.082.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.br = mul i64 %i.bq, %.044158                 ; 5 uses
  %i.bs = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !109
  %i.bt = add i64 %i.bs, -1
  %i.bu = icmp eq i64 %.044158, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !246
  %i.bv = load i64, ptr %.sroa.3.0.copyload, align 8, !tbaa !109
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bw = add nuw i64 %.044158, 1
  %i.bx = mul i64 %i.bq, %i.bw
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.by = phi i64 [ %i.bv, %bb.n ], [ %i.bx, %bb.o ] ; 4 uses
  %i.bz = icmp ult i64 %i.br, %i.by
  br i1 %i.bz, label %.lr.ph.i.i, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.ca = load ptr, ptr %.sroa.584.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.044158 ; 3 uses
  %i.cc = load ptr, ptr %.sroa.483.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = mul i64 %.044158, %i.bq
  %i.cf = sub i64 %i.by, %i.ce                    ; 3 uses
  %min.iters.check318 = icmp ult i64 %i.cf, 10
  br i1 %min.iters.check318, label %scalar.ph317.preheader, label %vector.memcheck309

vector.memcheck309:                               ; preds = %.lr.ph.i.i
  %scevgep310 = getelementptr i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cg = mul i64 %i.bq, %i.bp                    ; 2 uses
  %scevgep311 = getelementptr nuw i8, ptr %scevgep310, i64 %i.cg
  %i.ch = mul i64 %.044158, %i.bq
  %i.ci = sub i64 %i.by, %i.ch
  %i.cj = shl i64 %i.ci, 3
  %i.ck = getelementptr i8, ptr %scevgep310, i64 %i.cg
  %scevgep312 = getelementptr i8, ptr %i.ck, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ca, i64 %i.bp
  %scevgep313 = getelementptr i8, ptr %i.cl, i64 8
  %bound0314 = icmp ult ptr %scevgep311, %scevgep313
  %bound1315 = icmp ult ptr %i.cb, %scevgep312
  %found.conflict316 = and i1 %bound0314, %bound1315
  br i1 %found.conflict316, label %scalar.ph317.preheader, label %vector.ph319

vector.ph319:                                     ; preds = %vector.memcheck309
  %n.vec320 = and i64 %i.cf, -4                   ; 3 uses
  %i.cm = add i64 %i.br, %n.vec320
  %i.cn = load i64, ptr %i.cb, align 8, !tbaa !109, !alias.scope !597
  %broadcast.splatinsert325 = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat326 = shufflevector <2 x i64> %broadcast.splatinsert325, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.br
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next327, %vector.body321 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %index322 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load323 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !109, !alias.scope !600, !noalias !597
  %wide.load324 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !109, !alias.scope !600, !noalias !597
  %i.cr = add <2 x i64> %wide.load323, %broadcast.splat326
  %i.cs = add <2 x i64> %wide.load324, %broadcast.splat326
  store <2 x i64> %i.cr, ptr %i.cp, align 8, !tbaa !109, !alias.scope !600, !noalias !597
  store <2 x i64> %i.cs, ptr %i.cq, align 8, !tbaa !109, !alias.scope !600, !noalias !597
  %index.next327 = add nuw i64 %index322, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next327, %n.vec320
  br i1 %i.ct, label %middle.block328, label %vector.body321, !llvm.loop !602

middle.block328:                                  ; preds = %vector.body321
  %cmp.n329 = icmp eq i64 %i.cf, %n.vec320
  br i1 %cmp.n329, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit, label %scalar.ph317.preheader

scalar.ph317.preheader:                           ; preds = %vector.memcheck309, %.lr.ph.i.i, %middle.block328
  %.010.i.i.ph = phi i64 [ %i.br, %vector.memcheck309 ], [ %i.br, %.lr.ph.i.i ], [ %i.cm, %middle.block328 ]
  br label %scalar.ph317

scalar.ph317:                                     ; preds = %scalar.ph317.preheader, %scalar.ph317
  %.010.i.i = phi i64 [ %i.cy, %scalar.ph317 ], [ %.010.i.i.ph, %scalar.ph317.preheader ] ; 2 uses
  %i.cu = load i64, ptr %i.cb, align 8, !tbaa !109
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.010.i.i ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !109
  %i.cx = add i64 %i.cw, %i.cu
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !109
  %i.cy = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.by
  br i1 %i.cz, label %scalar.ph317, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit, !llvm.loop !603

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit: ; preds = %scalar.ph317, %middle.block328, %bb.p
  %i.da = add nuw i64 %.044158, 1                 ; 2 uses
  %exitcond179.not = icmp eq i64 %i.da, %0
  br i1 %exitcond179.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.m, !llvm.loop !604

bb.q:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.db = icmp eq i64 %3, 0
  %.not166 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.db, label %.preheader139, label %.preheader141

.preheader141:                                    ; preds = %bb.q
  br i1 %.not166, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.preheader141
  %.sroa.0100.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2101.0.copyload = load ptr, ptr %.sroa.2101.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4103.0.copyload = load ptr, ptr %.sroa.4103.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5104.0.copyload = load ptr, ptr %.sroa.5104.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.v

.preheader139:                                    ; preds = %bb.q
  br i1 %.not166, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader139
  %.sroa.090.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.291.0.copyload = load ptr, ptr %.sroa.291.0..sroa_idx, align 8, !tbaa !246
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.493.0.copyload = load ptr, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !473
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.594.0.copyload = load ptr, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !476
  %.sroa.392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph157, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64
  %.043156 = phi i64 [ 0, %.lr.ph157 ], [ %i.en, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64 ] ; 8 uses
  %i.dc = shl i64 %.043156, 3                     ; 2 uses
  %i.dd = load i64, ptr %.sroa.090.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.de = mul i64 %i.dd, %.043156                 ; 5 uses
  %i.df = load i64, ptr %.sroa.291.0.copyload, align 8, !tbaa !109
  %i.dg = add i64 %i.df, -1
  %i.dh = icmp eq i64 %.043156, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.392.0.copyload = load ptr, ptr %.sroa.392.0..sroa_idx, align 8, !tbaa !246
  %i.di = load i64, ptr %.sroa.392.0.copyload, align 8, !tbaa !109
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dj = add nuw i64 %.043156, 1
  %i.dk = mul i64 %i.dd, %i.dj
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dl = phi i64 [ %i.di, %bb.s ], [ %i.dk, %bb.t ] ; 4 uses
  %i.dm = icmp ult i64 %i.de, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i62, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64

.lr.ph.i.i62:                                     ; preds = %bb.u
  %i.dn = load ptr, ptr %.sroa.594.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.043156 ; 3 uses
  %i.dp = load ptr, ptr %.sroa.493.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = mul i64 %.043156, %i.dd
  %i.ds = sub i64 %i.dl, %i.dr                    ; 3 uses
  %min.iters.check296 = icmp ult i64 %i.ds, 10
  br i1 %min.iters.check296, label %scalar.ph295.preheader, label %vector.memcheck287

vector.memcheck287:                               ; preds = %.lr.ph.i.i62
  %scevgep288 = getelementptr i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dt = mul i64 %i.dd, %i.dc                    ; 2 uses
  %scevgep289 = getelementptr nuw i8, ptr %scevgep288, i64 %i.dt
  %i.du = mul i64 %.043156, %i.dd
  %i.dv = sub i64 %i.dl, %i.du
  %i.dw = shl i64 %i.dv, 3
  %i.dx = getelementptr i8, ptr %scevgep288, i64 %i.dt
  %scevgep290 = getelementptr i8, ptr %i.dx, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dn, i64 %i.dc
  %scevgep291 = getelementptr i8, ptr %i.dy, i64 8
  %bound0292 = icmp ult ptr %scevgep289, %scevgep291
  %bound1293 = icmp ult ptr %i.do, %scevgep290
  %found.conflict294 = and i1 %bound0292, %bound1293
  br i1 %found.conflict294, label %scalar.ph295.preheader, label %vector.ph297

vector.ph297:                                     ; preds = %vector.memcheck287
  %n.vec298 = and i64 %i.ds, -4                   ; 3 uses
  %i.dz = add i64 %i.de, %n.vec298
  %i.ea = load i64, ptr %i.do, align 8, !tbaa !109, !alias.scope !605
  %broadcast.splatinsert303 = insertelement <2 x i64> poison, i64 %i.ea, i64 0
  %broadcast.splat304 = shufflevector <2 x i64> %broadcast.splatinsert303, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.de
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index300 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %wide.load301 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !109, !alias.scope !608, !noalias !605
  %wide.load302 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !109, !alias.scope !608, !noalias !605
  %i.ee = add <2 x i64> %wide.load301, %broadcast.splat304
  %i.ef = add <2 x i64> %wide.load302, %broadcast.splat304
  store <2 x i64> %i.ee, ptr %i.ec, align 8, !tbaa !109, !alias.scope !608, !noalias !605
  store <2 x i64> %i.ef, ptr %i.ed, align 8, !tbaa !109, !alias.scope !608, !noalias !605
  %index.next305 = add nuw i64 %index300, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.eg, label %middle.block306, label %vector.body299, !llvm.loop !610

middle.block306:                                  ; preds = %vector.body299
  %cmp.n307 = icmp eq i64 %i.ds, %n.vec298
  br i1 %cmp.n307, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64, label %scalar.ph295.preheader

scalar.ph295.preheader:                           ; preds = %vector.memcheck287, %.lr.ph.i.i62, %middle.block306
  %.010.i.i63.ph = phi i64 [ %i.de, %vector.memcheck287 ], [ %i.de, %.lr.ph.i.i62 ], [ %i.dz, %middle.block306 ]
  br label %scalar.ph295

scalar.ph295:                                     ; preds = %scalar.ph295.preheader, %scalar.ph295
  %.010.i.i63 = phi i64 [ %i.el, %scalar.ph295 ], [ %.010.i.i63.ph, %scalar.ph295.preheader ] ; 2 uses
  %i.eh = load i64, ptr %i.do, align 8, !tbaa !109
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.010.i.i63 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !109
  %i.ek = add i64 %i.ej, %i.eh
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !109
  %i.el = add nuw i64 %.010.i.i63, 1              ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.dl
  br i1 %i.em, label %scalar.ph295, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64, !llvm.loop !611

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64: ; preds = %scalar.ph295, %middle.block306, %bb.u
  %i.en = add nuw i64 %.043156, 1                 ; 2 uses
  %exitcond178.not = icmp eq i64 %i.en, %0
  br i1 %exitcond178.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.r, !llvm.loop !612

bb.v:                                             ; preds = %.lr.ph155, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67
  %.042154 = phi i64 [ 0, %.lr.ph155 ], [ %i.fz, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67 ] ; 8 uses
  %i.eo = shl i64 %.042154, 3                     ; 2 uses
  %i.ep = load i64, ptr %.sroa.0100.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.eq = mul i64 %i.ep, %.042154                 ; 5 uses
  %i.er = load i64, ptr %.sroa.2101.0.copyload, align 8, !tbaa !109
  %i.es = add i64 %i.er, -1
  %i.et = icmp eq i64 %.042154, %i.es
  br i1 %i.et, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.3102.0.copyload = load ptr, ptr %.sroa.3102.0..sroa_idx, align 8, !tbaa !246
  %i.eu = load i64, ptr %.sroa.3102.0.copyload, align 8, !tbaa !109
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ev = add nuw i64 %.042154, 1
  %i.ew = mul i64 %i.ep, %i.ev
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ex = phi i64 [ %i.eu, %bb.w ], [ %i.ew, %bb.x ] ; 4 uses
  %i.ey = icmp ult i64 %i.eq, %i.ex
  br i1 %i.ey, label %.lr.ph.i.i65, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67

.lr.ph.i.i65:                                     ; preds = %bb.y
  %i.ez = load ptr, ptr %.sroa.5104.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.042154 ; 3 uses
  %i.fb = load ptr, ptr %.sroa.4103.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = mul i64 %.042154, %i.ep
  %i.fe = sub i64 %i.ex, %i.fd                    ; 3 uses
  %min.iters.check274 = icmp ult i64 %i.fe, 10
  br i1 %min.iters.check274, label %scalar.ph273.preheader, label %vector.memcheck265

vector.memcheck265:                               ; preds = %.lr.ph.i.i65
  %scevgep266 = getelementptr i8, ptr %i.fb, i64 8 ; 2 uses
  %i.ff = mul i64 %i.ep, %i.eo                    ; 2 uses
  %scevgep267 = getelementptr nuw i8, ptr %scevgep266, i64 %i.ff
  %i.fg = mul i64 %.042154, %i.ep
  %i.fh = sub i64 %i.ex, %i.fg
  %i.fi = shl i64 %i.fh, 3
  %i.fj = getelementptr i8, ptr %scevgep266, i64 %i.ff
  %scevgep268 = getelementptr i8, ptr %i.fj, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.ez, i64 %i.eo
  %scevgep269 = getelementptr i8, ptr %i.fk, i64 8
  %bound0270 = icmp ult ptr %scevgep267, %scevgep269
  %bound1271 = icmp ult ptr %i.fa, %scevgep268
  %found.conflict272 = and i1 %bound0270, %bound1271
  br i1 %found.conflict272, label %scalar.ph273.preheader, label %vector.ph275

vector.ph275:                                     ; preds = %vector.memcheck265
  %n.vec276 = and i64 %i.fe, -4                   ; 3 uses
  %i.fl = add i64 %i.eq, %n.vec276
  %i.fm = load i64, ptr %i.fa, align 8, !tbaa !109, !alias.scope !613
  %broadcast.splatinsert281 = insertelement <2 x i64> poison, i64 %i.fm, i64 0
  %broadcast.splat282 = shufflevector <2 x i64> %broadcast.splatinsert281, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.eq
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph275
  %index278 = phi i64 [ 0, %vector.ph275 ], [ %index.next283, %vector.body277 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %index278 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %wide.load279 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !109, !alias.scope !616, !noalias !613
  %wide.load280 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !109, !alias.scope !616, !noalias !613
  %i.fq = add <2 x i64> %wide.load279, %broadcast.splat282
  %i.fr = add <2 x i64> %wide.load280, %broadcast.splat282
  store <2 x i64> %i.fq, ptr %i.fo, align 8, !tbaa !109, !alias.scope !616, !noalias !613
  store <2 x i64> %i.fr, ptr %i.fp, align 8, !tbaa !109, !alias.scope !616, !noalias !613
  %index.next283 = add nuw i64 %index278, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next283, %n.vec276
  br i1 %i.fs, label %middle.block284, label %vector.body277, !llvm.loop !618

middle.block284:                                  ; preds = %vector.body277
  %cmp.n285 = icmp eq i64 %i.fe, %n.vec276
  br i1 %cmp.n285, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67, label %scalar.ph273.preheader

scalar.ph273.preheader:                           ; preds = %vector.memcheck265, %.lr.ph.i.i65, %middle.block284
  %.010.i.i66.ph = phi i64 [ %i.eq, %vector.memcheck265 ], [ %i.eq, %.lr.ph.i.i65 ], [ %i.fl, %middle.block284 ]
  br label %scalar.ph273

scalar.ph273:                                     ; preds = %scalar.ph273.preheader, %scalar.ph273
  %.010.i.i66 = phi i64 [ %i.fx, %scalar.ph273 ], [ %.010.i.i66.ph, %scalar.ph273.preheader ] ; 2 uses
  %i.ft = load i64, ptr %i.fa, align 8, !tbaa !109
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.010.i.i66 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !109
  %i.fw = add i64 %i.fv, %i.ft
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !109
  %i.fx = add nuw i64 %.010.i.i66, 1              ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.ex
  br i1 %i.fy, label %scalar.ph273, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67, !llvm.loop !619

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67: ; preds = %scalar.ph273, %middle.block284, %bb.y
  %i.fz = add nuw i64 %.042154, 1                 ; 2 uses
  %exitcond177.not = icmp eq i64 %i.fz, %0
  br i1 %exitcond177.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.v, !llvm.loop !620

bb.z:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ga = icmp eq i64 %3, 0
  %.not164 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.ga, label %.preheader143, label %.preheader145

.preheader145:                                    ; preds = %bb.z
  br i1 %.not164, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph151

.lr.ph151:                                        ; preds = %.preheader145
  %.sroa.0120.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2121.0.copyload = load ptr, ptr %.sroa.2121.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4123.0.copyload = load ptr, ptr %.sroa.4123.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5124.0.copyload = load ptr, ptr %.sroa.5124.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ae

.preheader143:                                    ; preds = %bb.z
  br i1 %.not164, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph153

.lr.ph153:                                        ; preds = %.preheader143
  %.sroa.0110.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2111.0.copyload = load ptr, ptr %.sroa.2111.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4113.0.copyload = load ptr, ptr %.sroa.4113.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5114.0.copyload = load ptr, ptr %.sroa.5114.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph153, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70
  %.041152 = phi i64 [ 0, %.lr.ph153 ], [ %i.hm, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70 ] ; 8 uses
  %i.gb = shl i64 %.041152, 3                     ; 2 uses
  %i.gc = load i64, ptr %.sroa.0110.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.gd = mul i64 %i.gc, %.041152                 ; 5 uses
  %i.ge = load i64, ptr %.sroa.2111.0.copyload, align 8, !tbaa !109
  %i.gf = add i64 %i.ge, -1
  %i.gg = icmp eq i64 %.041152, %i.gf
  br i1 %i.gg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.3112.0.copyload = load ptr, ptr %.sroa.3112.0..sroa_idx, align 8, !tbaa !246
  %i.gh = load i64, ptr %.sroa.3112.0.copyload, align 8, !tbaa !109
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gi = add nuw i64 %.041152, 1
  %i.gj = mul i64 %i.gc, %i.gi
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gk = phi i64 [ %i.gh, %bb.ab ], [ %i.gj, %bb.ac ] ; 4 uses
  %i.gl = icmp ult i64 %i.gd, %i.gk
  br i1 %i.gl, label %.lr.ph.i.i68, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70

.lr.ph.i.i68:                                     ; preds = %bb.ad
  %i.gm = load ptr, ptr %.sroa.5114.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.041152 ; 3 uses
  %i.go = load ptr, ptr %.sroa.4113.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gq = mul i64 %.041152, %i.gc
  %i.gr = sub i64 %i.gk, %i.gq                    ; 3 uses
  %min.iters.check252 = icmp ult i64 %i.gr, 10
  br i1 %min.iters.check252, label %scalar.ph251.preheader, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph.i.i68
  %scevgep244 = getelementptr i8, ptr %i.go, i64 8 ; 2 uses
  %i.gs = mul i64 %i.gc, %i.gb                    ; 2 uses
  %scevgep245 = getelementptr nuw i8, ptr %scevgep244, i64 %i.gs
  %i.gt = mul i64 %.041152, %i.gc
  %i.gu = sub i64 %i.gk, %i.gt
  %i.gv = shl i64 %i.gu, 3
  %i.gw = getelementptr i8, ptr %scevgep244, i64 %i.gs
  %scevgep246 = getelementptr i8, ptr %i.gw, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gm, i64 %i.gb
  %scevgep247 = getelementptr i8, ptr %i.gx, i64 8
  %bound0248 = icmp ult ptr %scevgep245, %scevgep247
  %bound1249 = icmp ult ptr %i.gn, %scevgep246
  %found.conflict250 = and i1 %bound0248, %bound1249
  br i1 %found.conflict250, label %scalar.ph251.preheader, label %vector.ph253

vector.ph253:                                     ; preds = %vector.memcheck243
  %n.vec254 = and i64 %i.gr, -4                   ; 3 uses
  %i.gy = add i64 %i.gd, %n.vec254
  %i.gz = load i64, ptr %i.gn, align 8, !tbaa !109, !alias.scope !621
  %broadcast.splatinsert259 = insertelement <2 x i64> poison, i64 %i.gz, i64 0
  %broadcast.splat260 = shufflevector <2 x i64> %broadcast.splatinsert259, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gd
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph253
  %index256 = phi i64 [ 0, %vector.ph253 ], [ %index.next261, %vector.body255 ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %index256 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %wide.load257 = load <2 x i64>, ptr %i.hb, align 8, !tbaa !109, !alias.scope !624, !noalias !621
  %wide.load258 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !109, !alias.scope !624, !noalias !621
  %i.hd = add <2 x i64> %wide.load257, %broadcast.splat260
  %i.he = add <2 x i64> %wide.load258, %broadcast.splat260
  store <2 x i64> %i.hd, ptr %i.hb, align 8, !tbaa !109, !alias.scope !624, !noalias !621
  store <2 x i64> %i.he, ptr %i.hc, align 8, !tbaa !109, !alias.scope !624, !noalias !621
  %index.next261 = add nuw i64 %index256, 4       ; 2 uses
  %i.hf = icmp eq i64 %index.next261, %n.vec254
  br i1 %i.hf, label %middle.block262, label %vector.body255, !llvm.loop !626

middle.block262:                                  ; preds = %vector.body255
  %cmp.n263 = icmp eq i64 %i.gr, %n.vec254
  br i1 %cmp.n263, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70, label %scalar.ph251.preheader

scalar.ph251.preheader:                           ; preds = %vector.memcheck243, %.lr.ph.i.i68, %middle.block262
  %.010.i.i69.ph = phi i64 [ %i.gd, %vector.memcheck243 ], [ %i.gd, %.lr.ph.i.i68 ], [ %i.gy, %middle.block262 ]
  br label %scalar.ph251

scalar.ph251:                                     ; preds = %scalar.ph251.preheader, %scalar.ph251
  %.010.i.i69 = phi i64 [ %i.hk, %scalar.ph251 ], [ %.010.i.i69.ph, %scalar.ph251.preheader ] ; 2 uses
  %i.hg = load i64, ptr %i.gn, align 8, !tbaa !109
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.010.i.i69 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !109
  %i.hj = add i64 %i.hi, %i.hg
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !109
  %i.hk = add nuw i64 %.010.i.i69, 1              ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.gk
  br i1 %i.hl, label %scalar.ph251, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70, !llvm.loop !627

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70: ; preds = %scalar.ph251, %middle.block262, %bb.ad
  %i.hm = add nuw i64 %.041152, 1                 ; 2 uses
  %exitcond176.not = icmp eq i64 %i.hm, %0
  br i1 %exitcond176.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.aa, !llvm.loop !628

bb.ae:                                            ; preds = %.lr.ph151, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73
  %.040150 = phi i64 [ 0, %.lr.ph151 ], [ %i.iy, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73 ] ; 8 uses
  %i.hn = shl i64 %.040150, 3                     ; 2 uses
  %i.ho = load i64, ptr %.sroa.0120.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.hp = mul i64 %i.ho, %.040150                 ; 5 uses
  %i.hq = load i64, ptr %.sroa.2121.0.copyload, align 8, !tbaa !109
  %i.hr = add i64 %i.hq, -1
  %i.hs = icmp eq i64 %.040150, %i.hr
  br i1 %i.hs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.3122.0.copyload = load ptr, ptr %.sroa.3122.0..sroa_idx, align 8, !tbaa !246
  %i.ht = load i64, ptr %.sroa.3122.0.copyload, align 8, !tbaa !109
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.hu = add nuw i64 %.040150, 1
  %i.hv = mul i64 %i.ho, %i.hu
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hw = phi i64 [ %i.ht, %bb.af ], [ %i.hv, %bb.ag ] ; 4 uses
  %i.hx = icmp ult i64 %i.hp, %i.hw
  br i1 %i.hx, label %.lr.ph.i.i71, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73

.lr.ph.i.i71:                                     ; preds = %bb.ah
  %i.hy = load ptr, ptr %.sroa.5124.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %.040150 ; 3 uses
  %i.ia = load ptr, ptr %.sroa.4123.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ic = mul i64 %.040150, %i.ho
  %i.id = sub i64 %i.hw, %i.ic                    ; 3 uses
  %min.iters.check230 = icmp ult i64 %i.id, 10
  br i1 %min.iters.check230, label %scalar.ph229.preheader, label %vector.memcheck221

vector.memcheck221:                               ; preds = %.lr.ph.i.i71
  %scevgep222 = getelementptr i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ie = mul i64 %i.ho, %i.hn                    ; 2 uses
  %scevgep223 = getelementptr nuw i8, ptr %scevgep222, i64 %i.ie
  %i.if = mul i64 %.040150, %i.ho
  %i.ig = sub i64 %i.hw, %i.if
  %i.ih = shl i64 %i.ig, 3
  %i.ii = getelementptr i8, ptr %scevgep222, i64 %i.ie
  %scevgep224 = getelementptr i8, ptr %i.ii, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.hy, i64 %i.hn
  %scevgep225 = getelementptr i8, ptr %i.ij, i64 8
  %bound0226 = icmp ult ptr %scevgep223, %scevgep225
  %bound1227 = icmp ult ptr %i.hz, %scevgep224
  %found.conflict228 = and i1 %bound0226, %bound1227
  br i1 %found.conflict228, label %scalar.ph229.preheader, label %vector.ph231

vector.ph231:                                     ; preds = %vector.memcheck221
  %n.vec232 = and i64 %i.id, -4                   ; 3 uses
  %i.ik = add i64 %i.hp, %n.vec232
  %i.il = load i64, ptr %i.hz, align 8, !tbaa !109, !alias.scope !629
  %broadcast.splatinsert237 = insertelement <2 x i64> poison, i64 %i.il, i64 0
  %broadcast.splat238 = shufflevector <2 x i64> %broadcast.splatinsert237, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hp
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index234 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %wide.load235 = load <2 x i64>, ptr %i.in, align 8, !tbaa !109, !alias.scope !632, !noalias !629
  %wide.load236 = load <2 x i64>, ptr %i.io, align 8, !tbaa !109, !alias.scope !632, !noalias !629
  %i.ip = add <2 x i64> %wide.load235, %broadcast.splat238
  %i.iq = add <2 x i64> %wide.load236, %broadcast.splat238
  store <2 x i64> %i.ip, ptr %i.in, align 8, !tbaa !109, !alias.scope !632, !noalias !629
  store <2 x i64> %i.iq, ptr %i.io, align 8, !tbaa !109, !alias.scope !632, !noalias !629
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.ir, label %middle.block240, label %vector.body233, !llvm.loop !634

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.id, %n.vec232
  br i1 %cmp.n241, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %vector.memcheck221, %.lr.ph.i.i71, %middle.block240
  %.010.i.i72.ph = phi i64 [ %i.hp, %vector.memcheck221 ], [ %i.hp, %.lr.ph.i.i71 ], [ %i.ik, %middle.block240 ]
  br label %scalar.ph229

scalar.ph229:                                     ; preds = %scalar.ph229.preheader, %scalar.ph229
  %.010.i.i72 = phi i64 [ %i.iw, %scalar.ph229 ], [ %.010.i.i72.ph, %scalar.ph229.preheader ] ; 2 uses
  %i.is = load i64, ptr %i.hz, align 8, !tbaa !109
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.010.i.i72 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !109
  %i.iv = add i64 %i.iu, %i.is
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !109
  %i.iw = add nuw i64 %.010.i.i72, 1              ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.hw
  br i1 %i.ix, label %scalar.ph229, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73, !llvm.loop !635

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73: ; preds = %scalar.ph229, %middle.block240, %bb.ah
  %i.iy = add nuw i64 %.040150, 1                 ; 2 uses
  %exitcond175.not = icmp eq i64 %i.iy, %0
  br i1 %exitcond175.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ae, !llvm.loop !636

bb.ai:                                            ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76
  %.0149 = phi i64 [ 0, %.lr.ph ], [ %i.kk, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76 ] ; 8 uses
  %i.iz = shl i64 %.0149, 3                       ; 2 uses
  %i.ja = load i64, ptr %.sroa.0130.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.jb = mul i64 %i.ja, %.0149                   ; 5 uses
  %i.jc = load i64, ptr %.sroa.2131.0.copyload, align 8, !tbaa !109
  %i.jd = add i64 %i.jc, -1
  %i.je = icmp eq i64 %.0149, %i.jd
  br i1 %i.je, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.sroa.3132.0.copyload = load ptr, ptr %.sroa.3132.0..sroa_idx, align 8, !tbaa !246
  %i.jf = load i64, ptr %.sroa.3132.0.copyload, align 8, !tbaa !109
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.jg = add nuw i64 %.0149, 1
  %i.jh = mul i64 %i.ja, %i.jg
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ji = phi i64 [ %i.jf, %bb.aj ], [ %i.jh, %bb.ak ] ; 4 uses
  %i.jj = icmp ult i64 %i.jb, %i.ji
  br i1 %i.jj, label %.lr.ph.i.i74, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76

.lr.ph.i.i74:                                     ; preds = %bb.al
  %i.jk = load ptr, ptr %.sroa.5134.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %.0149 ; 3 uses
  %i.jm = load ptr, ptr %.sroa.4133.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jo = mul i64 %.0149, %i.ja
  %i.jp = sub i64 %i.ji, %i.jo                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.jp, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i74
  %scevgep = getelementptr i8, ptr %i.jm, i64 8   ; 2 uses
  %i.jq = mul i64 %i.ja, %i.iz                    ; 2 uses
  %scevgep217 = getelementptr nuw i8, ptr %scevgep, i64 %i.jq
  %i.jr = mul i64 %.0149, %i.ja
  %i.js = sub i64 %i.ji, %i.jr
  %i.jt = shl i64 %i.js, 3
  %i.ju = getelementptr i8, ptr %scevgep, i64 %i.jq
  %scevgep218 = getelementptr i8, ptr %i.ju, i64 %i.jt
  %i.jv = getelementptr i8, ptr %i.jk, i64 %i.iz
  %scevgep219 = getelementptr i8, ptr %i.jv, i64 8
  %bound0 = icmp ult ptr %scevgep217, %scevgep219
  %bound1 = icmp ult ptr %i.jl, %scevgep218
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jp, -4                      ; 3 uses
  %i.jw = add i64 %i.jb, %n.vec
  %i.jx = load i64, ptr %i.jl, align 8, !tbaa !109, !alias.scope !637
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.jx, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %index ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.jz, align 8, !tbaa !109, !alias.scope !640, !noalias !637
  %wide.load220 = load <2 x i64>, ptr %i.ka, align 8, !tbaa !109, !alias.scope !640, !noalias !637
  %i.kb = add <2 x i64> %wide.load, %broadcast.splat
  %i.kc = add <2 x i64> %wide.load220, %broadcast.splat
  store <2 x i64> %i.kb, ptr %i.jz, align 8, !tbaa !109, !alias.scope !640, !noalias !637
  store <2 x i64> %i.kc, ptr %i.ka, align 8, !tbaa !109, !alias.scope !640, !noalias !637
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !642

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jp, %n.vec
  br i1 %cmp.n, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i74, %middle.block
  %.010.i.i75.ph = phi i64 [ %i.jb, %vector.memcheck ], [ %i.jb, %.lr.ph.i.i74 ], [ %i.jw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.010.i.i75 = phi i64 [ %i.ki, %scalar.ph ], [ %.010.i.i75.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ke = load i64, ptr %i.jl, align 8, !tbaa !109
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.010.i.i75 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !109
  %i.kh = add i64 %i.kg, %i.ke
  store i64 %i.kh, ptr %i.kf, align 8, !tbaa !109
  %i.ki = add nuw i64 %.010.i.i75, 1              ; 2 uses
  %i.kj = icmp ult i64 %i.ki, %i.ji
  br i1 %i.kj, label %scalar.ph, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76, !llvm.loop !643

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76: ; preds = %scalar.ph, %middle.block, %bb.al
  %i.kk = add nuw i64 %.0149, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.kk, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ai, !llvm.loop !644

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17DenseAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit, %.preheader147, %.preheader145, %.preheader143, %.preheader141, %.preheader139, %.preheader137, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.am:                                            ; preds = %bb.i
  %i.kl = landingpad { ptr, i32 }
          catch ptr null
  %i.km = extractvalue { ptr, i32 } %i.kl, 0
  call void @__clang_call_terminate(ptr %i.km) #30
  unreachable
}

declare void @_ZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmb(ptr noundef nonnull align 8 dereferenceable(225), ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS_16GHistIndexMatrix13PushBatchImplINS_4data17DenseAdapterBatchERNS4_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEEUlSB_E_EEDaNS0_11BinTypeSizeEOSB_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.xgboost::common::Index::CompressBin.203", align 8 ; 4 uses
  %3 = alloca %"struct.xgboost::common::Index::CompressBin.203", align 8 ; 4 uses
  %4 = alloca %"struct.xgboost::common::Index::CompressBin.201", align 8 ; 4 uses
  %5 = alloca %"struct.xgboost::common::Index::CompressBin", align 8 ; 4 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.h [
    i8 1, label %bb.b
    i8 2, label %bb.d
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !480    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !303  ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !645  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.g = load i8, ptr %i.f, align 8, !tbaa !301
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = icmp ne ptr %i.d, null
  %i.j = icmp ult i64 %i.e, %i.h
  %i.k = or i1 %i.i, %i.j
  br i1 %i.k, label %_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlS9_E_clIhEEDaS9_.exit, label %bb.c, !prof !249

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlS9_E_clIhEEDaS9_.exit: ; preds = %bb.b
  %i.l = udiv i64 %i.e, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !646, !nonnull !191, !align !496
  %i.o = load i64, ptr %i.n, align 8, !tbaa !109
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !647, !nonnull !191, !align !496 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !648, !nonnull !191, !align !496
  %i.t = load i64, ptr %i.s, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !649, !nonnull !191, !align !496
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !650, !nonnull !191, !align !501
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !651, !nonnull !191, !align !501
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !100
  %i.ab = sext i32 %i.aa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !239
  store ptr %i.ad, ptr %5, align 8
  call void @_ZN7xgboost16GHistIndexMatrix12SetIndexDataINS_4data17DenseAdapterBatchEhNS_6common5Index11CompressBinIhEERNS2_14IsValidFunctorEEEvNS4_4SpanIT0_Lm18446744073709551615EEEmNSA_IKNS_11FeatureTypeELm18446744073709551615EEEmRKT_OT2_mOT1_(ptr noundef nonnull align 8 dereferenceable(225) %i.a, i64 %i.l, ptr %i.d, i64 noundef %i.o, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.x, i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %1, align 8, !tbaa !480   ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !303 ; 2 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !645 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !301
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = icmp ne ptr %i.ah, null
  %i.an = icmp ult i64 %i.ai, %i.al
  %i.ao = or i1 %i.am, %i.an
  br i1 %i.ao, label %_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlS9_E_clItEEDaS9_.exit, label %bb.e, !prof !249

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlS9_E_clItEEDaS9_.exit: ; preds = %bb.d
  %i.ap = udiv i64 %i.ai, %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !646, !nonnull !191, !align !496
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !109
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !647, !nonnull !191, !align !496 ; 2 uses
  %.sroa.0.0.copyload.i6 = load i64, ptr %i.au, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.2.0.copyload.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i7, align 8, !tbaa !124
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !648, !nonnull !191, !align !496
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !109
end_hunk_0
begin_hunk_1_@_ZN7xgboost6common11ParallelForImZNS0_10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17ArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSB_SB_T1_T0_EUlSB_E_EEvSB_iNS0_5SchedEOSM_:bb.a
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !109
  %i.kr = add i64 %i.kq, %i.kl                    ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kn
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !109
  %i.kt = add nuw i64 %.014.i.i88, 3              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i90.3 = load i64, ptr %.sroa.4145.0.copyload, align 8, !tbaa !109
  %i.ku = getelementptr [8 x i8], ptr %i.jv, i64 %.sroa.0.0.copyload1.i.i.i90.3
  %i.kv = getelementptr [8 x i8], ptr %i.ku, i64 %i.kt
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !109
  %i.kx = add i64 %i.kw, %i.kr                    ; 3 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kt
  store i64 %i.kx, ptr %i.ky, align 8, !tbaa !109
  %i.kz = add nuw i64 %.014.i.i88, 4              ; 2 uses
  %niter252.next.3 = add i64 %niter252, 4         ; 2 uses
  %niter252.ncmp.3.not = icmp eq i64 %niter252.next.3, %unroll_iter251
  br i1 %niter252.ncmp.3.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa, label %bb.as, !llvm.loop !855

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa: ; preds = %bb.as
  %lcmp.mod249.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod249.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91, label %.epil.preheader246

.epil.preheader246:                               ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa, %.lr.ph.i.i85
  %.014.i.i88.epil.init = phi i64 [ %i.jm, %.lr.ph.i.i85 ], [ %i.kz, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa ]
  %.01113.i.i89.epil.init = phi i64 [ 0, %.lr.ph.i.i85 ], [ %i.kx, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa ]
  %lcmp.mod250 = icmp ne i64 %xtraiter247, 0
  call void @llvm.assume(i1 %lcmp.mod250)
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.epil.preheader246
  %.014.i.i88.epil = phi i64 [ %.014.i.i88.epil.init, %.epil.preheader246 ], [ %i.lf, %bb.at ] ; 3 uses
  %.01113.i.i89.epil = phi i64 [ %.01113.i.i89.epil.init, %.epil.preheader246 ], [ %i.ld, %bb.at ]
  %epil.iter248 = phi i64 [ 0, %.epil.preheader246 ], [ %epil.iter248.next, %bb.at ]
  %.sroa.0.0.copyload1.i.i.i90.epil = load i64, ptr %.sroa.4145.0.copyload, align 8, !tbaa !109
  %i.la = getelementptr [8 x i8], ptr %i.jv, i64 %.sroa.0.0.copyload1.i.i.i90.epil
  %i.lb = getelementptr [8 x i8], ptr %i.la, i64 %.014.i.i88.epil
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !109
  %i.ld = add i64 %i.lc, %.01113.i.i89.epil       ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %.014.i.i88.epil
  store i64 %i.ld, ptr %i.le, align 8, !tbaa !109
  %i.lf = add nuw i64 %.014.i.i88.epil, 1
  %epil.iter248.next = add i64 %epil.iter248, 1   ; 2 uses
  %epil.iter248.cmp.not = icmp eq i64 %epil.iter248.next, %xtraiter247
  br i1 %epil.iter248.cmp.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91, label %bb.at, !llvm.loop !869

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa, %bb.at, %bb.ar
  %i.lg = add nuw i64 %.040172, 1                 ; 2 uses
  %exitcond197.not = icmp eq i64 %i.lg, %0
  br i1 %exitcond197.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ao, !llvm.loop !870

bb.au:                                            ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98
  %.0171 = phi i64 [ 0, %.lr.ph ], [ %i.nc, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98 ] ; 5 uses
  %i.lh = load i64, ptr %.sroa.0152.0.copyload, align 8, !tbaa !109 ; 3 uses
  %i.li = mul i64 %i.lh, %.0171                   ; 3 uses
  %i.lj = load i64, ptr %.sroa.2153.0.copyload, align 8, !tbaa !109
  %i.lk = add i64 %i.lj, -1
  %i.ll = icmp eq i64 %.0171, %i.lk
  br i1 %i.ll, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.sroa.3154.0.copyload = load ptr, ptr %.sroa.3154.0..sroa_idx, align 8, !tbaa !246
  %i.lm = load i64, ptr %.sroa.3154.0.copyload, align 8, !tbaa !109
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.ln = add nuw i64 %.0171, 1
  %i.lo = mul i64 %i.lh, %i.ln
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.lp = phi i64 [ %i.lm, %bb.av ], [ %i.lo, %bb.aw ] ; 3 uses
  %i.lq = icmp ult i64 %i.li, %i.lp
  br i1 %i.lq, label %.lr.ph.i.i92, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98

.lr.ph.i.i92:                                     ; preds = %bb.ax
  %.sroa.6.0.copyload.i.i.i94 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i93, align 8, !tbaa !466
  %i.lr = load ptr, ptr %.sroa.6.0.copyload.i.i.i94, align 8, !tbaa !121 ; 5 uses
  %i.ls = load ptr, ptr %.sroa.5156.0.copyload, align 8, !tbaa !246
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 5 uses
  %i.lu = mul i64 %.0171, %i.lh                   ; 2 uses
  %i.lv = sub i64 %i.lp, %i.lu                    ; 2 uses
  %xtraiter = and i64 %i.lv, 3                    ; 3 uses
  %i.lw = sub i64 %i.lu, %i.lp
  %i.lx = icmp ugt i64 %i.lw, -4
  br i1 %i.lx, label %.epil.preheader, label %.lr.ph.i.i92.new

.lr.ph.i.i92.new:                                 ; preds = %.lr.ph.i.i92
  %unroll_iter = and i64 %i.lv, -4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph.i.i92.new
  %.014.i.i95 = phi i64 [ %i.li, %.lr.ph.i.i92.new ], [ %i.mv, %bb.ay ] ; 6 uses
  %.01113.i.i96 = phi i64 [ 0, %.lr.ph.i.i92.new ], [ %i.mt, %bb.ay ]
  %niter = phi i64 [ 0, %.lr.ph.i.i92.new ], [ %niter.next.3, %bb.ay ]
  %.sroa.0.0.copyload1.i.i.i97 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.ly = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97
  %i.lz = getelementptr [8 x i8], ptr %i.ly, i64 %.014.i.i95
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !109
  %i.mb = add i64 %i.ma, %.01113.i.i96            ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.014.i.i95
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !109
  %i.md = add nuw i64 %.014.i.i95, 1              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.1 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.me = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.1
  %i.mf = getelementptr [8 x i8], ptr %i.me, i64 %i.md
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !109
  %i.mh = add i64 %i.mg, %i.mb                    ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.md
  store i64 %i.mh, ptr %i.mi, align 8, !tbaa !109
  %i.mj = add nuw i64 %.014.i.i95, 2              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.2 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mk = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.2
  %i.ml = getelementptr [8 x i8], ptr %i.mk, i64 %i.mj
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !109
  %i.mn = add i64 %i.mm, %i.mh                    ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.mj
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !109
  %i.mp = add nuw i64 %.014.i.i95, 3              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.3 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mq = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.3
  %i.mr = getelementptr [8 x i8], ptr %i.mq, i64 %i.mp
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !109
  %i.mt = add i64 %i.ms, %i.mn                    ; 3 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.mp
  store i64 %i.mt, ptr %i.mu, align 8, !tbaa !109
  %i.mv = add nuw i64 %.014.i.i95, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa, label %bb.ay, !llvm.loop !855

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa: ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa, %.lr.ph.i.i92
  %.014.i.i95.epil.init = phi i64 [ %i.li, %.lr.ph.i.i92 ], [ %i.mv, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa ]
  %.01113.i.i96.epil.init = phi i64 [ 0, %.lr.ph.i.i92 ], [ %i.mt, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa ]
  %lcmp.mod245 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod245)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader
  %.014.i.i95.epil = phi i64 [ %.014.i.i95.epil.init, %.epil.preheader ], [ %i.nb, %bb.az ] ; 3 uses
  %.01113.i.i96.epil = phi i64 [ %.01113.i.i96.epil.init, %.epil.preheader ], [ %i.mz, %bb.az ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.az ]
  %.sroa.0.0.copyload1.i.i.i97.epil = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mw = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.epil
  %i.mx = getelementptr [8 x i8], ptr %i.mw, i64 %.014.i.i95.epil
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !109
  %i.mz = add i64 %i.my, %.01113.i.i96.epil       ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.014.i.i95.epil
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !109
  %i.nb = add nuw i64 %.014.i.i95.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98, label %bb.az, !llvm.loop !871

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa, %bb.az, %bb.ax
  %i.nc = add nuw i64 %.0171, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.nc, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.au, !llvm.loop !872

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit84, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit77, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit70, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17ArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit, %.preheader169, %.preheader167, %.preheader165, %.preheader163, %.preheader161, %.preheader159, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.ba:                                            ; preds = %bb.k
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  %i.ne = extractvalue { ptr, i32 } %i.nd, 0
  call void @__clang_call_terminate(ptr %i.ne) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNS0_10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17ArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSB_SB_T1_T0_EUlSB_E0_EEvSB_iNS0_5SchedEOSM_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.52", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %.not168 = icmp eq i64 %0, 0
  br i1 %.not168, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph161

.lr.ph161:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !873, !nonnull !191, !align !496
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !875, !nonnull !191, !align !496
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !191, !align !496
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !191, !align !496
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !191, !align !496
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph161, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17ArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit
  %.048160 = phi i64 [ 0, %.lr.ph161 ], [ %i.ax, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17ArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit ] ; 8 uses
  %i.m = shl i64 %.048160, 3                      ; 2 uses
  %i.n = load i64, ptr %i.d, align 8, !tbaa !109  ; 5 uses
  %i.o = mul i64 %i.n, %.048160                   ; 5 uses
  %i.p = load i64, ptr %i.f, align 8, !tbaa !109
  %i.q = add i64 %i.p, -1
  %i.r = icmp eq i64 %.048160, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.h, align 8, !tbaa !109
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.048160, 1
  %i.u = mul i64 %i.n, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = phi i64 [ %i.s, %bb.c ], [ %i.u, %bb.d ] ; 4 uses
  %i.w = icmp ult i64 %i.o, %i.v
  br i1 %i.w, label %.lr.ph.i, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17ArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !470  ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.048160 ; 3 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !246  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = mul i64 %.048160, %i.n
  %i.ac = sub i64 %i.v, %i.ab                     ; 3 uses
  %min.iters.check340 = icmp ult i64 %i.ac, 10
  br i1 %min.iters.check340, label %scalar.ph339.preheader, label %vector.memcheck331

vector.memcheck331:                               ; preds = %.lr.ph.i
  %scevgep332 = getelementptr i8, ptr %i.z, i64 8 ; 2 uses
  %i.ad = mul i64 %i.n, %i.m                      ; 2 uses
  %scevgep333 = getelementptr nuw i8, ptr %scevgep332, i64 %i.ad
  %i.ae = mul i64 %.048160, %i.n
  %i.af = sub i64 %i.v, %i.ae
  %i.ag = shl i64 %i.af, 3
  %i.ah = getelementptr i8, ptr %scevgep332, i64 %i.ad
  %scevgep334 = getelementptr i8, ptr %i.ah, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.m
  %scevgep335 = getelementptr i8, ptr %i.ai, i64 8
  %bound0336 = icmp ult ptr %scevgep333, %scevgep335
  %bound1337 = icmp ult ptr %i.y, %scevgep334
  %found.conflict338 = and i1 %bound0336, %bound1337
  br i1 %found.conflict338, label %scalar.ph339.preheader, label %vector.ph341

vector.ph341:                                     ; preds = %vector.memcheck331
  %n.vec342 = and i64 %i.ac, -4                   ; 3 uses
  %i.aj = add i64 %i.o, %n.vec342
  %i.ak = load i64, ptr %i.y, align 8, !tbaa !109, !alias.scope !876
  %broadcast.splatinsert347 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat348 = shufflevector <2 x i64> %broadcast.splatinsert347, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.o
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body343, %vector.ph341
  %index344 = phi i64 [ 0, %vector.ph341 ], [ %index.next349, %vector.body343 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index344 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load345 = load <2 x i64>, ptr %i.am, align 8, !tbaa !109, !alias.scope !879, !noalias !876
  %wide.load346 = load <2 x i64>, ptr %i.an, align 8, !tbaa !109, !alias.scope !879, !noalias !876
  %i.ao = add <2 x i64> %wide.load345, %broadcast.splat348
  %i.ap = add <2 x i64> %wide.load346, %broadcast.splat348
  store <2 x i64> %i.ao, ptr %i.am, align 8, !tbaa !109, !alias.scope !879, !noalias !876
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !109, !alias.scope !879, !noalias !876
  %index.next349 = add nuw i64 %index344, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next349, %n.vec342
  br i1 %i.aq, label %middle.block350, label %vector.body343, !llvm.loop !881

middle.block350:                                  ; preds = %vector.body343
  %cmp.n351 = icmp eq i64 %i.ac, %n.vec342
  br i1 %cmp.n351, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17ArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit, label %scalar.ph339.preheader

scalar.ph339.preheader:                           ; preds = %vector.memcheck331, %.lr.ph.i, %middle.block350
  %.010.i.ph = phi i64 [ %i.o, %vector.memcheck331 ], [ %i.o, %.lr.ph.i ], [ %i.aj, %middle.block350 ]
  br label %scalar.ph339

scalar.ph339:                                     ; preds = %scalar.ph339.preheader, %scalar.ph339
  %.010.i = phi i64 [ %i.av, %scalar.ph339 ], [ %.010.i.ph, %scalar.ph339.preheader ] ; 2 uses
  %i.ar = load i64, ptr %i.y, align 8, !tbaa !109
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.010.i ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !109
  %i.au = add i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.as, align 8, !tbaa !109
  %i.av = add nuw i64 %.010.i, 1                  ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.v
  br i1 %i.aw, label %scalar.ph339, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17ArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit, !llvm.loop !882

_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17ArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit: ; preds = %scalar.ph339, %middle.block350, %bb.e
  %i.ax = add nuw i64 %.048160, 1                 ; 2 uses
  %exitcond180.not = icmp eq i64 %i.ax, %0
  br i1 %exitcond180.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.b, !llvm.loop !883

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !100, !noalias !884
  store i32 1, ptr %i.b, align 4, !tbaa !100, !noalias !884
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.f
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.52") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ay = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ay, ptr noundef nonnull @.str.61, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.h

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.az = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.i ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.10, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.62, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bc = load ptr, ptr %5, align 8, !tbaa !201   ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !85
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.bd, i64 noundef %i.bf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.j unwind label %bb.am

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.h ], [ %i.bj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.pr135 = load ptr, ptr %5, align 8, !tbaa !201 ; 4 uses
  %.not.i61 = icmp eq ptr %.pr135, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %.pr135, align 8, !tbaa !82 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.pr135, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !83
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr135, i64 noundef 32) #33
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.k, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  switch i32 %2, label %_ZN4dmlc12OMPExceptionD2Ev.exit [
    i32 0, label %.preheader137
    i32 1, label %bb.q
    i32 2, label %bb.z
    i32 3, label %.preheader147
  ]

.preheader147:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not162 = icmp eq i64 %0, 0
  br i1 %.not162, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader147
  %.sroa.0130.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2131.0.copyload = load ptr, ptr %.sroa.2131.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4133.0.copyload = load ptr, ptr %.sroa.4133.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5134.0.copyload = load ptr, ptr %.sroa.5134.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ai

.preheader137:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not167 = icmp eq i64 %0, 0
  br i1 %.not167, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader137
  %.sroa.082.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !246
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.483.0.copyload = load ptr, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !473
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.584.0.copyload = load ptr, ptr %.sroa.584.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph159, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit
  %.044158 = phi i64 [ 0, %.lr.ph159 ], [ %i.da, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit ] ; 8 uses
  %i.bp = shl i64 %.044158, 3                     ; 2 uses
  %i.bq = load i64, ptr %.sroa.082.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.br = mul i64 %i.bq, %.044158                 ; 5 uses
  %i.bs = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !109
  %i.bt = add i64 %i.bs, -1
  %i.bu = icmp eq i64 %.044158, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !246
  %i.bv = load i64, ptr %.sroa.3.0.copyload, align 8, !tbaa !109
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bw = add nuw i64 %.044158, 1
  %i.bx = mul i64 %i.bq, %i.bw
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.by = phi i64 [ %i.bv, %bb.n ], [ %i.bx, %bb.o ] ; 4 uses
  %i.bz = icmp ult i64 %i.br, %i.by
  br i1 %i.bz, label %.lr.ph.i.i, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.ca = load ptr, ptr %.sroa.584.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.044158 ; 3 uses
  %i.cc = load ptr, ptr %.sroa.483.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = mul i64 %.044158, %i.bq
  %i.cf = sub i64 %i.by, %i.ce                    ; 3 uses
  %min.iters.check318 = icmp ult i64 %i.cf, 10
  br i1 %min.iters.check318, label %scalar.ph317.preheader, label %vector.memcheck309

vector.memcheck309:                               ; preds = %.lr.ph.i.i
  %scevgep310 = getelementptr i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cg = mul i64 %i.bq, %i.bp                    ; 2 uses
  %scevgep311 = getelementptr nuw i8, ptr %scevgep310, i64 %i.cg
  %i.ch = mul i64 %.044158, %i.bq
  %i.ci = sub i64 %i.by, %i.ch
  %i.cj = shl i64 %i.ci, 3
  %i.ck = getelementptr i8, ptr %scevgep310, i64 %i.cg
  %scevgep312 = getelementptr i8, ptr %i.ck, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ca, i64 %i.bp
  %scevgep313 = getelementptr i8, ptr %i.cl, i64 8
  %bound0314 = icmp ult ptr %scevgep311, %scevgep313
  %bound1315 = icmp ult ptr %i.cb, %scevgep312
  %found.conflict316 = and i1 %bound0314, %bound1315
  br i1 %found.conflict316, label %scalar.ph317.preheader, label %vector.ph319

vector.ph319:                                     ; preds = %vector.memcheck309
  %n.vec320 = and i64 %i.cf, -4                   ; 3 uses
  %i.cm = add i64 %i.br, %n.vec320
  %i.cn = load i64, ptr %i.cb, align 8, !tbaa !109, !alias.scope !887
  %broadcast.splatinsert325 = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat326 = shufflevector <2 x i64> %broadcast.splatinsert325, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.br
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next327, %vector.body321 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %index322 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load323 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !109, !alias.scope !890, !noalias !887
  %wide.load324 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !109, !alias.scope !890, !noalias !887
  %i.cr = add <2 x i64> %wide.load323, %broadcast.splat326
  %i.cs = add <2 x i64> %wide.load324, %broadcast.splat326
  store <2 x i64> %i.cr, ptr %i.cp, align 8, !tbaa !109, !alias.scope !890, !noalias !887
  store <2 x i64> %i.cs, ptr %i.cq, align 8, !tbaa !109, !alias.scope !890, !noalias !887
  %index.next327 = add nuw i64 %index322, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next327, %n.vec320
  br i1 %i.ct, label %middle.block328, label %vector.body321, !llvm.loop !892

middle.block328:                                  ; preds = %vector.body321
  %cmp.n329 = icmp eq i64 %i.cf, %n.vec320
  br i1 %cmp.n329, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit, label %scalar.ph317.preheader

scalar.ph317.preheader:                           ; preds = %vector.memcheck309, %.lr.ph.i.i, %middle.block328
  %.010.i.i.ph = phi i64 [ %i.br, %vector.memcheck309 ], [ %i.br, %.lr.ph.i.i ], [ %i.cm, %middle.block328 ]
  br label %scalar.ph317

scalar.ph317:                                     ; preds = %scalar.ph317.preheader, %scalar.ph317
  %.010.i.i = phi i64 [ %i.cy, %scalar.ph317 ], [ %.010.i.i.ph, %scalar.ph317.preheader ] ; 2 uses
  %i.cu = load i64, ptr %i.cb, align 8, !tbaa !109
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.010.i.i ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !109
  %i.cx = add i64 %i.cw, %i.cu
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !109
  %i.cy = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.by
  br i1 %i.cz, label %scalar.ph317, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit, !llvm.loop !893

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit: ; preds = %scalar.ph317, %middle.block328, %bb.p
  %i.da = add nuw i64 %.044158, 1                 ; 2 uses
  %exitcond179.not = icmp eq i64 %i.da, %0
  br i1 %exitcond179.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.m, !llvm.loop !894

bb.q:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.db = icmp eq i64 %3, 0
  %.not166 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.db, label %.preheader139, label %.preheader141

.preheader141:                                    ; preds = %bb.q
  br i1 %.not166, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.preheader141
  %.sroa.0100.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2101.0.copyload = load ptr, ptr %.sroa.2101.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4103.0.copyload = load ptr, ptr %.sroa.4103.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5104.0.copyload = load ptr, ptr %.sroa.5104.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.v

.preheader139:                                    ; preds = %bb.q
  br i1 %.not166, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader139
  %.sroa.090.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.291.0.copyload = load ptr, ptr %.sroa.291.0..sroa_idx, align 8, !tbaa !246
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.493.0.copyload = load ptr, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !473
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.594.0.copyload = load ptr, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !476
  %.sroa.392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph157, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64
  %.043156 = phi i64 [ 0, %.lr.ph157 ], [ %i.en, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64 ] ; 8 uses
  %i.dc = shl i64 %.043156, 3                     ; 2 uses
  %i.dd = load i64, ptr %.sroa.090.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.de = mul i64 %i.dd, %.043156                 ; 5 uses
  %i.df = load i64, ptr %.sroa.291.0.copyload, align 8, !tbaa !109
  %i.dg = add i64 %i.df, -1
  %i.dh = icmp eq i64 %.043156, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.392.0.copyload = load ptr, ptr %.sroa.392.0..sroa_idx, align 8, !tbaa !246
  %i.di = load i64, ptr %.sroa.392.0.copyload, align 8, !tbaa !109
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dj = add nuw i64 %.043156, 1
  %i.dk = mul i64 %i.dd, %i.dj
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dl = phi i64 [ %i.di, %bb.s ], [ %i.dk, %bb.t ] ; 4 uses
  %i.dm = icmp ult i64 %i.de, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i62, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64

.lr.ph.i.i62:                                     ; preds = %bb.u
  %i.dn = load ptr, ptr %.sroa.594.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.043156 ; 3 uses
  %i.dp = load ptr, ptr %.sroa.493.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = mul i64 %.043156, %i.dd
  %i.ds = sub i64 %i.dl, %i.dr                    ; 3 uses
  %min.iters.check296 = icmp ult i64 %i.ds, 10
  br i1 %min.iters.check296, label %scalar.ph295.preheader, label %vector.memcheck287

vector.memcheck287:                               ; preds = %.lr.ph.i.i62
  %scevgep288 = getelementptr i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dt = mul i64 %i.dd, %i.dc                    ; 2 uses
  %scevgep289 = getelementptr nuw i8, ptr %scevgep288, i64 %i.dt
  %i.du = mul i64 %.043156, %i.dd
  %i.dv = sub i64 %i.dl, %i.du
  %i.dw = shl i64 %i.dv, 3
  %i.dx = getelementptr i8, ptr %scevgep288, i64 %i.dt
  %scevgep290 = getelementptr i8, ptr %i.dx, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dn, i64 %i.dc
  %scevgep291 = getelementptr i8, ptr %i.dy, i64 8
  %bound0292 = icmp ult ptr %scevgep289, %scevgep291
  %bound1293 = icmp ult ptr %i.do, %scevgep290
  %found.conflict294 = and i1 %bound0292, %bound1293
  br i1 %found.conflict294, label %scalar.ph295.preheader, label %vector.ph297

vector.ph297:                                     ; preds = %vector.memcheck287
  %n.vec298 = and i64 %i.ds, -4                   ; 3 uses
  %i.dz = add i64 %i.de, %n.vec298
  %i.ea = load i64, ptr %i.do, align 8, !tbaa !109, !alias.scope !895
  %broadcast.splatinsert303 = insertelement <2 x i64> poison, i64 %i.ea, i64 0
  %broadcast.splat304 = shufflevector <2 x i64> %broadcast.splatinsert303, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.de
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index300 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %wide.load301 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !109, !alias.scope !898, !noalias !895
  %wide.load302 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !109, !alias.scope !898, !noalias !895
  %i.ee = add <2 x i64> %wide.load301, %broadcast.splat304
  %i.ef = add <2 x i64> %wide.load302, %broadcast.splat304
  store <2 x i64> %i.ee, ptr %i.ec, align 8, !tbaa !109, !alias.scope !898, !noalias !895
  store <2 x i64> %i.ef, ptr %i.ed, align 8, !tbaa !109, !alias.scope !898, !noalias !895
  %index.next305 = add nuw i64 %index300, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.eg, label %middle.block306, label %vector.body299, !llvm.loop !900

middle.block306:                                  ; preds = %vector.body299
  %cmp.n307 = icmp eq i64 %i.ds, %n.vec298
  br i1 %cmp.n307, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64, label %scalar.ph295.preheader

scalar.ph295.preheader:                           ; preds = %vector.memcheck287, %.lr.ph.i.i62, %middle.block306
  %.010.i.i63.ph = phi i64 [ %i.de, %vector.memcheck287 ], [ %i.de, %.lr.ph.i.i62 ], [ %i.dz, %middle.block306 ]
  br label %scalar.ph295

scalar.ph295:                                     ; preds = %scalar.ph295.preheader, %scalar.ph295
  %.010.i.i63 = phi i64 [ %i.el, %scalar.ph295 ], [ %.010.i.i63.ph, %scalar.ph295.preheader ] ; 2 uses
  %i.eh = load i64, ptr %i.do, align 8, !tbaa !109
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.010.i.i63 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !109
  %i.ek = add i64 %i.ej, %i.eh
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !109
  %i.el = add nuw i64 %.010.i.i63, 1              ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.dl
  br i1 %i.em, label %scalar.ph295, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64, !llvm.loop !901

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64: ; preds = %scalar.ph295, %middle.block306, %bb.u
  %i.en = add nuw i64 %.043156, 1                 ; 2 uses
  %exitcond178.not = icmp eq i64 %i.en, %0
  br i1 %exitcond178.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.r, !llvm.loop !902

bb.v:                                             ; preds = %.lr.ph155, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67
  %.042154 = phi i64 [ 0, %.lr.ph155 ], [ %i.fz, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67 ] ; 8 uses
  %i.eo = shl i64 %.042154, 3                     ; 2 uses
  %i.ep = load i64, ptr %.sroa.0100.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.eq = mul i64 %i.ep, %.042154                 ; 5 uses
  %i.er = load i64, ptr %.sroa.2101.0.copyload, align 8, !tbaa !109
  %i.es = add i64 %i.er, -1
  %i.et = icmp eq i64 %.042154, %i.es
  br i1 %i.et, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.3102.0.copyload = load ptr, ptr %.sroa.3102.0..sroa_idx, align 8, !tbaa !246
  %i.eu = load i64, ptr %.sroa.3102.0.copyload, align 8, !tbaa !109
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ev = add nuw i64 %.042154, 1
  %i.ew = mul i64 %i.ep, %i.ev
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ex = phi i64 [ %i.eu, %bb.w ], [ %i.ew, %bb.x ] ; 4 uses
  %i.ey = icmp ult i64 %i.eq, %i.ex
  br i1 %i.ey, label %.lr.ph.i.i65, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67

.lr.ph.i.i65:                                     ; preds = %bb.y
  %i.ez = load ptr, ptr %.sroa.5104.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.042154 ; 3 uses
  %i.fb = load ptr, ptr %.sroa.4103.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = mul i64 %.042154, %i.ep
  %i.fe = sub i64 %i.ex, %i.fd                    ; 3 uses
  %min.iters.check274 = icmp ult i64 %i.fe, 10
  br i1 %min.iters.check274, label %scalar.ph273.preheader, label %vector.memcheck265

vector.memcheck265:                               ; preds = %.lr.ph.i.i65
  %scevgep266 = getelementptr i8, ptr %i.fb, i64 8 ; 2 uses
  %i.ff = mul i64 %i.ep, %i.eo                    ; 2 uses
  %scevgep267 = getelementptr nuw i8, ptr %scevgep266, i64 %i.ff
  %i.fg = mul i64 %.042154, %i.ep
  %i.fh = sub i64 %i.ex, %i.fg
  %i.fi = shl i64 %i.fh, 3
  %i.fj = getelementptr i8, ptr %scevgep266, i64 %i.ff
  %scevgep268 = getelementptr i8, ptr %i.fj, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.ez, i64 %i.eo
  %scevgep269 = getelementptr i8, ptr %i.fk, i64 8
  %bound0270 = icmp ult ptr %scevgep267, %scevgep269
  %bound1271 = icmp ult ptr %i.fa, %scevgep268
  %found.conflict272 = and i1 %bound0270, %bound1271
  br i1 %found.conflict272, label %scalar.ph273.preheader, label %vector.ph275

vector.ph275:                                     ; preds = %vector.memcheck265
  %n.vec276 = and i64 %i.fe, -4                   ; 3 uses
  %i.fl = add i64 %i.eq, %n.vec276
  %i.fm = load i64, ptr %i.fa, align 8, !tbaa !109, !alias.scope !903
  %broadcast.splatinsert281 = insertelement <2 x i64> poison, i64 %i.fm, i64 0
  %broadcast.splat282 = shufflevector <2 x i64> %broadcast.splatinsert281, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.eq
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph275
  %index278 = phi i64 [ 0, %vector.ph275 ], [ %index.next283, %vector.body277 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %index278 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %wide.load279 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !109, !alias.scope !906, !noalias !903
  %wide.load280 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !109, !alias.scope !906, !noalias !903
  %i.fq = add <2 x i64> %wide.load279, %broadcast.splat282
  %i.fr = add <2 x i64> %wide.load280, %broadcast.splat282
  store <2 x i64> %i.fq, ptr %i.fo, align 8, !tbaa !109, !alias.scope !906, !noalias !903
  store <2 x i64> %i.fr, ptr %i.fp, align 8, !tbaa !109, !alias.scope !906, !noalias !903
  %index.next283 = add nuw i64 %index278, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next283, %n.vec276
  br i1 %i.fs, label %middle.block284, label %vector.body277, !llvm.loop !908

middle.block284:                                  ; preds = %vector.body277
  %cmp.n285 = icmp eq i64 %i.fe, %n.vec276
  br i1 %cmp.n285, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67, label %scalar.ph273.preheader

scalar.ph273.preheader:                           ; preds = %vector.memcheck265, %.lr.ph.i.i65, %middle.block284
  %.010.i.i66.ph = phi i64 [ %i.eq, %vector.memcheck265 ], [ %i.eq, %.lr.ph.i.i65 ], [ %i.fl, %middle.block284 ]
  br label %scalar.ph273

scalar.ph273:                                     ; preds = %scalar.ph273.preheader, %scalar.ph273
  %.010.i.i66 = phi i64 [ %i.fx, %scalar.ph273 ], [ %.010.i.i66.ph, %scalar.ph273.preheader ] ; 2 uses
  %i.ft = load i64, ptr %i.fa, align 8, !tbaa !109
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.010.i.i66 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !109
  %i.fw = add i64 %i.fv, %i.ft
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !109
  %i.fx = add nuw i64 %.010.i.i66, 1              ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.ex
  br i1 %i.fy, label %scalar.ph273, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67, !llvm.loop !909

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67: ; preds = %scalar.ph273, %middle.block284, %bb.y
  %i.fz = add nuw i64 %.042154, 1                 ; 2 uses
  %exitcond177.not = icmp eq i64 %i.fz, %0
  br i1 %exitcond177.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.v, !llvm.loop !910

bb.z:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ga = icmp eq i64 %3, 0
  %.not164 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.ga, label %.preheader143, label %.preheader145

.preheader145:                                    ; preds = %bb.z
  br i1 %.not164, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph151

.lr.ph151:                                        ; preds = %.preheader145
  %.sroa.0120.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2121.0.copyload = load ptr, ptr %.sroa.2121.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4123.0.copyload = load ptr, ptr %.sroa.4123.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5124.0.copyload = load ptr, ptr %.sroa.5124.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ae

.preheader143:                                    ; preds = %bb.z
  br i1 %.not164, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph153

.lr.ph153:                                        ; preds = %.preheader143
  %.sroa.0110.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2111.0.copyload = load ptr, ptr %.sroa.2111.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4113.0.copyload = load ptr, ptr %.sroa.4113.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5114.0.copyload = load ptr, ptr %.sroa.5114.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph153, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70
  %.041152 = phi i64 [ 0, %.lr.ph153 ], [ %i.hm, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70 ] ; 8 uses
  %i.gb = shl i64 %.041152, 3                     ; 2 uses
  %i.gc = load i64, ptr %.sroa.0110.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.gd = mul i64 %i.gc, %.041152                 ; 5 uses
  %i.ge = load i64, ptr %.sroa.2111.0.copyload, align 8, !tbaa !109
  %i.gf = add i64 %i.ge, -1
  %i.gg = icmp eq i64 %.041152, %i.gf
  br i1 %i.gg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.3112.0.copyload = load ptr, ptr %.sroa.3112.0..sroa_idx, align 8, !tbaa !246
  %i.gh = load i64, ptr %.sroa.3112.0.copyload, align 8, !tbaa !109
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gi = add nuw i64 %.041152, 1
  %i.gj = mul i64 %i.gc, %i.gi
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gk = phi i64 [ %i.gh, %bb.ab ], [ %i.gj, %bb.ac ] ; 4 uses
  %i.gl = icmp ult i64 %i.gd, %i.gk
  br i1 %i.gl, label %.lr.ph.i.i68, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70

.lr.ph.i.i68:                                     ; preds = %bb.ad
  %i.gm = load ptr, ptr %.sroa.5114.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.041152 ; 3 uses
  %i.go = load ptr, ptr %.sroa.4113.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gq = mul i64 %.041152, %i.gc
  %i.gr = sub i64 %i.gk, %i.gq                    ; 3 uses
  %min.iters.check252 = icmp ult i64 %i.gr, 10
  br i1 %min.iters.check252, label %scalar.ph251.preheader, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph.i.i68
  %scevgep244 = getelementptr i8, ptr %i.go, i64 8 ; 2 uses
  %i.gs = mul i64 %i.gc, %i.gb                    ; 2 uses
  %scevgep245 = getelementptr nuw i8, ptr %scevgep244, i64 %i.gs
  %i.gt = mul i64 %.041152, %i.gc
  %i.gu = sub i64 %i.gk, %i.gt
  %i.gv = shl i64 %i.gu, 3
  %i.gw = getelementptr i8, ptr %scevgep244, i64 %i.gs
  %scevgep246 = getelementptr i8, ptr %i.gw, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gm, i64 %i.gb
  %scevgep247 = getelementptr i8, ptr %i.gx, i64 8
  %bound0248 = icmp ult ptr %scevgep245, %scevgep247
  %bound1249 = icmp ult ptr %i.gn, %scevgep246
  %found.conflict250 = and i1 %bound0248, %bound1249
  br i1 %found.conflict250, label %scalar.ph251.preheader, label %vector.ph253

vector.ph253:                                     ; preds = %vector.memcheck243
  %n.vec254 = and i64 %i.gr, -4                   ; 3 uses
  %i.gy = add i64 %i.gd, %n.vec254
  %i.gz = load i64, ptr %i.gn, align 8, !tbaa !109, !alias.scope !911
  %broadcast.splatinsert259 = insertelement <2 x i64> poison, i64 %i.gz, i64 0
  %broadcast.splat260 = shufflevector <2 x i64> %broadcast.splatinsert259, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gd
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph253
  %index256 = phi i64 [ 0, %vector.ph253 ], [ %index.next261, %vector.body255 ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %index256 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %wide.load257 = load <2 x i64>, ptr %i.hb, align 8, !tbaa !109, !alias.scope !914, !noalias !911
  %wide.load258 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !109, !alias.scope !914, !noalias !911
  %i.hd = add <2 x i64> %wide.load257, %broadcast.splat260
  %i.he = add <2 x i64> %wide.load258, %broadcast.splat260
  store <2 x i64> %i.hd, ptr %i.hb, align 8, !tbaa !109, !alias.scope !914, !noalias !911
  store <2 x i64> %i.he, ptr %i.hc, align 8, !tbaa !109, !alias.scope !914, !noalias !911
  %index.next261 = add nuw i64 %index256, 4       ; 2 uses
  %i.hf = icmp eq i64 %index.next261, %n.vec254
  br i1 %i.hf, label %middle.block262, label %vector.body255, !llvm.loop !916

middle.block262:                                  ; preds = %vector.body255
  %cmp.n263 = icmp eq i64 %i.gr, %n.vec254
  br i1 %cmp.n263, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70, label %scalar.ph251.preheader

scalar.ph251.preheader:                           ; preds = %vector.memcheck243, %.lr.ph.i.i68, %middle.block262
  %.010.i.i69.ph = phi i64 [ %i.gd, %vector.memcheck243 ], [ %i.gd, %.lr.ph.i.i68 ], [ %i.gy, %middle.block262 ]
  br label %scalar.ph251

scalar.ph251:                                     ; preds = %scalar.ph251.preheader, %scalar.ph251
  %.010.i.i69 = phi i64 [ %i.hk, %scalar.ph251 ], [ %.010.i.i69.ph, %scalar.ph251.preheader ] ; 2 uses
  %i.hg = load i64, ptr %i.gn, align 8, !tbaa !109
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.010.i.i69 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !109
  %i.hj = add i64 %i.hi, %i.hg
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !109
  %i.hk = add nuw i64 %.010.i.i69, 1              ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.gk
  br i1 %i.hl, label %scalar.ph251, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70, !llvm.loop !917

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70: ; preds = %scalar.ph251, %middle.block262, %bb.ad
  %i.hm = add nuw i64 %.041152, 1                 ; 2 uses
  %exitcond176.not = icmp eq i64 %i.hm, %0
  br i1 %exitcond176.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.aa, !llvm.loop !918

bb.ae:                                            ; preds = %.lr.ph151, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73
  %.040150 = phi i64 [ 0, %.lr.ph151 ], [ %i.iy, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73 ] ; 8 uses
  %i.hn = shl i64 %.040150, 3                     ; 2 uses
  %i.ho = load i64, ptr %.sroa.0120.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.hp = mul i64 %i.ho, %.040150                 ; 5 uses
  %i.hq = load i64, ptr %.sroa.2121.0.copyload, align 8, !tbaa !109
  %i.hr = add i64 %i.hq, -1
  %i.hs = icmp eq i64 %.040150, %i.hr
  br i1 %i.hs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.3122.0.copyload = load ptr, ptr %.sroa.3122.0..sroa_idx, align 8, !tbaa !246
  %i.ht = load i64, ptr %.sroa.3122.0.copyload, align 8, !tbaa !109
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.hu = add nuw i64 %.040150, 1
  %i.hv = mul i64 %i.ho, %i.hu
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hw = phi i64 [ %i.ht, %bb.af ], [ %i.hv, %bb.ag ] ; 4 uses
  %i.hx = icmp ult i64 %i.hp, %i.hw
  br i1 %i.hx, label %.lr.ph.i.i71, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73

.lr.ph.i.i71:                                     ; preds = %bb.ah
  %i.hy = load ptr, ptr %.sroa.5124.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %.040150 ; 3 uses
  %i.ia = load ptr, ptr %.sroa.4123.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ic = mul i64 %.040150, %i.ho
  %i.id = sub i64 %i.hw, %i.ic                    ; 3 uses
  %min.iters.check230 = icmp ult i64 %i.id, 10
  br i1 %min.iters.check230, label %scalar.ph229.preheader, label %vector.memcheck221

vector.memcheck221:                               ; preds = %.lr.ph.i.i71
  %scevgep222 = getelementptr i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ie = mul i64 %i.ho, %i.hn                    ; 2 uses
  %scevgep223 = getelementptr nuw i8, ptr %scevgep222, i64 %i.ie
  %i.if = mul i64 %.040150, %i.ho
  %i.ig = sub i64 %i.hw, %i.if
  %i.ih = shl i64 %i.ig, 3
  %i.ii = getelementptr i8, ptr %scevgep222, i64 %i.ie
  %scevgep224 = getelementptr i8, ptr %i.ii, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.hy, i64 %i.hn
  %scevgep225 = getelementptr i8, ptr %i.ij, i64 8
  %bound0226 = icmp ult ptr %scevgep223, %scevgep225
  %bound1227 = icmp ult ptr %i.hz, %scevgep224
  %found.conflict228 = and i1 %bound0226, %bound1227
  br i1 %found.conflict228, label %scalar.ph229.preheader, label %vector.ph231

vector.ph231:                                     ; preds = %vector.memcheck221
  %n.vec232 = and i64 %i.id, -4                   ; 3 uses
  %i.ik = add i64 %i.hp, %n.vec232
  %i.il = load i64, ptr %i.hz, align 8, !tbaa !109, !alias.scope !919
  %broadcast.splatinsert237 = insertelement <2 x i64> poison, i64 %i.il, i64 0
  %broadcast.splat238 = shufflevector <2 x i64> %broadcast.splatinsert237, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hp
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index234 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %wide.load235 = load <2 x i64>, ptr %i.in, align 8, !tbaa !109, !alias.scope !922, !noalias !919
  %wide.load236 = load <2 x i64>, ptr %i.io, align 8, !tbaa !109, !alias.scope !922, !noalias !919
  %i.ip = add <2 x i64> %wide.load235, %broadcast.splat238
  %i.iq = add <2 x i64> %wide.load236, %broadcast.splat238
  store <2 x i64> %i.ip, ptr %i.in, align 8, !tbaa !109, !alias.scope !922, !noalias !919
  store <2 x i64> %i.iq, ptr %i.io, align 8, !tbaa !109, !alias.scope !922, !noalias !919
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.ir, label %middle.block240, label %vector.body233, !llvm.loop !924

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.id, %n.vec232
  br i1 %cmp.n241, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %vector.memcheck221, %.lr.ph.i.i71, %middle.block240
  %.010.i.i72.ph = phi i64 [ %i.hp, %vector.memcheck221 ], [ %i.hp, %.lr.ph.i.i71 ], [ %i.ik, %middle.block240 ]
  br label %scalar.ph229

scalar.ph229:                                     ; preds = %scalar.ph229.preheader, %scalar.ph229
  %.010.i.i72 = phi i64 [ %i.iw, %scalar.ph229 ], [ %.010.i.i72.ph, %scalar.ph229.preheader ] ; 2 uses
  %i.is = load i64, ptr %i.hz, align 8, !tbaa !109
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.010.i.i72 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !109
  %i.iv = add i64 %i.iu, %i.is
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !109
  %i.iw = add nuw i64 %.010.i.i72, 1              ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.hw
  br i1 %i.ix, label %scalar.ph229, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73, !llvm.loop !925

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73: ; preds = %scalar.ph229, %middle.block240, %bb.ah
  %i.iy = add nuw i64 %.040150, 1                 ; 2 uses
  %exitcond175.not = icmp eq i64 %i.iy, %0
  br i1 %exitcond175.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ae, !llvm.loop !926

bb.ai:                                            ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76
  %.0149 = phi i64 [ 0, %.lr.ph ], [ %i.kk, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76 ] ; 8 uses
  %i.iz = shl i64 %.0149, 3                       ; 2 uses
  %i.ja = load i64, ptr %.sroa.0130.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.jb = mul i64 %i.ja, %.0149                   ; 5 uses
  %i.jc = load i64, ptr %.sroa.2131.0.copyload, align 8, !tbaa !109
  %i.jd = add i64 %i.jc, -1
  %i.je = icmp eq i64 %.0149, %i.jd
  br i1 %i.je, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.sroa.3132.0.copyload = load ptr, ptr %.sroa.3132.0..sroa_idx, align 8, !tbaa !246
  %i.jf = load i64, ptr %.sroa.3132.0.copyload, align 8, !tbaa !109
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.jg = add nuw i64 %.0149, 1
  %i.jh = mul i64 %i.ja, %i.jg
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ji = phi i64 [ %i.jf, %bb.aj ], [ %i.jh, %bb.ak ] ; 4 uses
  %i.jj = icmp ult i64 %i.jb, %i.ji
  br i1 %i.jj, label %.lr.ph.i.i74, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76

.lr.ph.i.i74:                                     ; preds = %bb.al
  %i.jk = load ptr, ptr %.sroa.5134.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %.0149 ; 3 uses
  %i.jm = load ptr, ptr %.sroa.4133.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jo = mul i64 %.0149, %i.ja
  %i.jp = sub i64 %i.ji, %i.jo                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.jp, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i74
  %scevgep = getelementptr i8, ptr %i.jm, i64 8   ; 2 uses
  %i.jq = mul i64 %i.ja, %i.iz                    ; 2 uses
  %scevgep217 = getelementptr nuw i8, ptr %scevgep, i64 %i.jq
  %i.jr = mul i64 %.0149, %i.ja
  %i.js = sub i64 %i.ji, %i.jr
  %i.jt = shl i64 %i.js, 3
  %i.ju = getelementptr i8, ptr %scevgep, i64 %i.jq
  %scevgep218 = getelementptr i8, ptr %i.ju, i64 %i.jt
  %i.jv = getelementptr i8, ptr %i.jk, i64 %i.iz
  %scevgep219 = getelementptr i8, ptr %i.jv, i64 8
  %bound0 = icmp ult ptr %scevgep217, %scevgep219
  %bound1 = icmp ult ptr %i.jl, %scevgep218
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jp, -4                      ; 3 uses
  %i.jw = add i64 %i.jb, %n.vec
  %i.jx = load i64, ptr %i.jl, align 8, !tbaa !109, !alias.scope !927
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.jx, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %index ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.jz, align 8, !tbaa !109, !alias.scope !930, !noalias !927
  %wide.load220 = load <2 x i64>, ptr %i.ka, align 8, !tbaa !109, !alias.scope !930, !noalias !927
  %i.kb = add <2 x i64> %wide.load, %broadcast.splat
  %i.kc = add <2 x i64> %wide.load220, %broadcast.splat
  store <2 x i64> %i.kb, ptr %i.jz, align 8, !tbaa !109, !alias.scope !930, !noalias !927
  store <2 x i64> %i.kc, ptr %i.ka, align 8, !tbaa !109, !alias.scope !930, !noalias !927
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !932

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jp, %n.vec
  br i1 %cmp.n, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i74, %middle.block
  %.010.i.i75.ph = phi i64 [ %i.jb, %vector.memcheck ], [ %i.jb, %.lr.ph.i.i74 ], [ %i.jw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.010.i.i75 = phi i64 [ %i.ki, %scalar.ph ], [ %.010.i.i75.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ke = load i64, ptr %i.jl, align 8, !tbaa !109
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.010.i.i75 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !109
  %i.kh = add i64 %i.kg, %i.ke
  store i64 %i.kh, ptr %i.kf, align 8, !tbaa !109
  %i.ki = add nuw i64 %.010.i.i75, 1              ; 2 uses
  %i.kj = icmp ult i64 %i.ki, %i.ji
  br i1 %i.kj, label %scalar.ph, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76, !llvm.loop !933

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76: ; preds = %scalar.ph, %middle.block, %bb.al
  %i.kk = add nuw i64 %.0149, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.kk, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ai, !llvm.loop !934

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data17ArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17ArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit, %.preheader147, %.preheader145, %.preheader143, %.preheader141, %.preheader139, %.preheader137, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.am:                                            ; preds = %bb.i
  %i.kl = landingpad { ptr, i32 }
          catch ptr null
  %i.km = extractvalue { ptr, i32 } %i.kl, 0
  call void @__clang_call_terminate(ptr %i.km) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS_16GHistIndexMatrix13PushBatchImplINS_4data17ArrayAdapterBatchERNS4_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEEUlSB_E_EEDaNS0_11BinTypeSizeEOSB_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.xgboost::common::Index::CompressBin.203", align 8 ; 4 uses
  %3 = alloca %"struct.xgboost::common::Index::CompressBin.203", align 8 ; 4 uses
  %4 = alloca %"struct.xgboost::common::Index::CompressBin.201", align 8 ; 4 uses
  %5 = alloca %"struct.xgboost::common::Index::CompressBin", align 8 ; 4 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.h [
    i8 1, label %bb.b
    i8 2, label %bb.d
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !813    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !303  ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !645  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.g = load i8, ptr %i.f, align 8, !tbaa !301
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = icmp ne ptr %i.d, null
  %i.j = icmp ult i64 %i.e, %i.h
  %i.k = or i1 %i.i, %i.j
  br i1 %i.k, label %_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data17ArrayAdapterBatchERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlS9_E_clIhEEDaS9_.exit, label %bb.c, !prof !249

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data17ArrayAdapterBatchERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlS9_E_clIhEEDaS9_.exit: ; preds = %bb.b
  %i.l = udiv i64 %i.e, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !935, !nonnull !191, !align !496
  %i.o = load i64, ptr %i.n, align 8, !tbaa !109
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !936, !nonnull !191, !align !496 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !937, !nonnull !191, !align !496
  %i.t = load i64, ptr %i.s, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !938, !nonnull !191, !align !496
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !939, !nonnull !191, !align !501
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !940, !nonnull !191, !align !501
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !100
  %i.ab = sext i32 %i.aa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !239
  store ptr %i.ad, ptr %5, align 8
  call void @_ZN7xgboost16GHistIndexMatrix12SetIndexDataINS_4data17ArrayAdapterBatchEhNS_6common5Index11CompressBinIhEERNS2_14IsValidFunctorEEEvNS4_4SpanIT0_Lm18446744073709551615EEEmNSA_IKNS_11FeatureTypeELm18446744073709551615EEEmRKT_OT2_mOT1_(ptr noundef nonnull align 8 dereferenceable(225) %i.a, i64 %i.l, ptr %i.d, i64 noundef %i.o, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.x, i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %1, align 8, !tbaa !813   ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !303 ; 2 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !645 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !301
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = icmp ne ptr %i.ah, null
  %i.an = icmp ult i64 %i.ai, %i.al
  %i.ao = or i1 %i.am, %i.an
  br i1 %i.ao, label %_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data17ArrayAdapterBatchERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlS9_E_clItEEDaS9_.exit, label %bb.e, !prof !249

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data17ArrayAdapterBatchERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlS9_E_clItEEDaS9_.exit: ; preds = %bb.d
  %i.ap = udiv i64 %i.ai, %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !935, !nonnull !191, !align !496
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !109
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !936, !nonnull !191, !align !496 ; 2 uses
  %.sroa.0.0.copyload.i6 = load i64, ptr %i.au, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.2.0.copyload.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i7, align 8, !tbaa !124
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !937, !nonnull !191, !align !496
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !109
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !938, !nonnull !191, !align !496
end_hunk_1
begin_hunk_2_@_ZN7xgboost6common11ParallelForImZNS0_10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data20CSRArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSB_SB_T1_T0_EUlSB_E_EEvSB_iNS0_5SchedEOSM_:bb.a
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !109
  %i.kr = add i64 %i.kq, %i.kl                    ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kn
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !109
  %i.kt = add nuw i64 %.014.i.i88, 3              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i90.3 = load i64, ptr %.sroa.4145.0.copyload, align 8, !tbaa !109
  %i.ku = getelementptr [8 x i8], ptr %i.jv, i64 %.sroa.0.0.copyload1.i.i.i90.3
  %i.kv = getelementptr [8 x i8], ptr %i.ku, i64 %i.kt
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !109
  %i.kx = add i64 %i.kw, %i.kr                    ; 3 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kt
  store i64 %i.kx, ptr %i.ky, align 8, !tbaa !109
  %i.kz = add nuw i64 %.014.i.i88, 4              ; 2 uses
  %niter252.next.3 = add i64 %niter252, 4         ; 2 uses
  %niter252.ncmp.3.not = icmp eq i64 %niter252.next.3, %unroll_iter251
  br i1 %niter252.ncmp.3.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa, label %bb.as, !llvm.loop !1087

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa: ; preds = %bb.as
  %lcmp.mod249.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod249.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91, label %.epil.preheader246

.epil.preheader246:                               ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa, %.lr.ph.i.i85
  %.014.i.i88.epil.init = phi i64 [ %i.jm, %.lr.ph.i.i85 ], [ %i.kz, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa ]
  %.01113.i.i89.epil.init = phi i64 [ 0, %.lr.ph.i.i85 ], [ %i.kx, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa ]
  %lcmp.mod250 = icmp ne i64 %xtraiter247, 0
  call void @llvm.assume(i1 %lcmp.mod250)
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.epil.preheader246
  %.014.i.i88.epil = phi i64 [ %.014.i.i88.epil.init, %.epil.preheader246 ], [ %i.lf, %bb.at ] ; 3 uses
  %.01113.i.i89.epil = phi i64 [ %.01113.i.i89.epil.init, %.epil.preheader246 ], [ %i.ld, %bb.at ]
  %epil.iter248 = phi i64 [ 0, %.epil.preheader246 ], [ %epil.iter248.next, %bb.at ]
  %.sroa.0.0.copyload1.i.i.i90.epil = load i64, ptr %.sroa.4145.0.copyload, align 8, !tbaa !109
  %i.la = getelementptr [8 x i8], ptr %i.jv, i64 %.sroa.0.0.copyload1.i.i.i90.epil
  %i.lb = getelementptr [8 x i8], ptr %i.la, i64 %.014.i.i88.epil
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !109
  %i.ld = add i64 %i.lc, %.01113.i.i89.epil       ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %.014.i.i88.epil
  store i64 %i.ld, ptr %i.le, align 8, !tbaa !109
  %i.lf = add nuw i64 %.014.i.i88.epil, 1
  %epil.iter248.next = add i64 %epil.iter248, 1   ; 2 uses
  %epil.iter248.cmp.not = icmp eq i64 %epil.iter248.next, %xtraiter247
  br i1 %epil.iter248.cmp.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91, label %bb.at, !llvm.loop !1101

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91.loopexit.unr-lcssa, %bb.at, %bb.ar
  %i.lg = add nuw i64 %.040172, 1                 ; 2 uses
  %exitcond197.not = icmp eq i64 %i.lg, %0
  br i1 %exitcond197.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ao, !llvm.loop !1102

bb.au:                                            ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98
  %.0171 = phi i64 [ 0, %.lr.ph ], [ %i.nc, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98 ] ; 5 uses
  %i.lh = load i64, ptr %.sroa.0152.0.copyload, align 8, !tbaa !109 ; 3 uses
  %i.li = mul i64 %i.lh, %.0171                   ; 3 uses
  %i.lj = load i64, ptr %.sroa.2153.0.copyload, align 8, !tbaa !109
  %i.lk = add i64 %i.lj, -1
  %i.ll = icmp eq i64 %.0171, %i.lk
  br i1 %i.ll, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.sroa.3154.0.copyload = load ptr, ptr %.sroa.3154.0..sroa_idx, align 8, !tbaa !246
  %i.lm = load i64, ptr %.sroa.3154.0.copyload, align 8, !tbaa !109
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.ln = add nuw i64 %.0171, 1
  %i.lo = mul i64 %i.lh, %i.ln
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.lp = phi i64 [ %i.lm, %bb.av ], [ %i.lo, %bb.aw ] ; 3 uses
  %i.lq = icmp ult i64 %i.li, %i.lp
  br i1 %i.lq, label %.lr.ph.i.i92, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98

.lr.ph.i.i92:                                     ; preds = %bb.ax
  %.sroa.6.0.copyload.i.i.i94 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i93, align 8, !tbaa !466
  %i.lr = load ptr, ptr %.sroa.6.0.copyload.i.i.i94, align 8, !tbaa !121 ; 5 uses
  %i.ls = load ptr, ptr %.sroa.5156.0.copyload, align 8, !tbaa !246
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 5 uses
  %i.lu = mul i64 %.0171, %i.lh                   ; 2 uses
  %i.lv = sub i64 %i.lp, %i.lu                    ; 2 uses
  %xtraiter = and i64 %i.lv, 3                    ; 3 uses
  %i.lw = sub i64 %i.lu, %i.lp
  %i.lx = icmp ugt i64 %i.lw, -4
  br i1 %i.lx, label %.epil.preheader, label %.lr.ph.i.i92.new

.lr.ph.i.i92.new:                                 ; preds = %.lr.ph.i.i92
  %unroll_iter = and i64 %i.lv, -4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph.i.i92.new
  %.014.i.i95 = phi i64 [ %i.li, %.lr.ph.i.i92.new ], [ %i.mv, %bb.ay ] ; 6 uses
  %.01113.i.i96 = phi i64 [ 0, %.lr.ph.i.i92.new ], [ %i.mt, %bb.ay ]
  %niter = phi i64 [ 0, %.lr.ph.i.i92.new ], [ %niter.next.3, %bb.ay ]
  %.sroa.0.0.copyload1.i.i.i97 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.ly = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97
  %i.lz = getelementptr [8 x i8], ptr %i.ly, i64 %.014.i.i95
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !109
  %i.mb = add i64 %i.ma, %.01113.i.i96            ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.014.i.i95
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !109
  %i.md = add nuw i64 %.014.i.i95, 1              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.1 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.me = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.1
  %i.mf = getelementptr [8 x i8], ptr %i.me, i64 %i.md
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !109
  %i.mh = add i64 %i.mg, %i.mb                    ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.md
  store i64 %i.mh, ptr %i.mi, align 8, !tbaa !109
  %i.mj = add nuw i64 %.014.i.i95, 2              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.2 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mk = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.2
  %i.ml = getelementptr [8 x i8], ptr %i.mk, i64 %i.mj
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !109
  %i.mn = add i64 %i.mm, %i.mh                    ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.mj
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !109
  %i.mp = add nuw i64 %.014.i.i95, 3              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.3 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mq = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.3
  %i.mr = getelementptr [8 x i8], ptr %i.mq, i64 %i.mp
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !109
  %i.mt = add i64 %i.ms, %i.mn                    ; 3 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.mp
  store i64 %i.mt, ptr %i.mu, align 8, !tbaa !109
  %i.mv = add nuw i64 %.014.i.i95, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa, label %bb.ay, !llvm.loop !1087

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa: ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa, %.lr.ph.i.i92
  %.014.i.i95.epil.init = phi i64 [ %i.li, %.lr.ph.i.i92 ], [ %i.mv, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa ]
  %.01113.i.i96.epil.init = phi i64 [ 0, %.lr.ph.i.i92 ], [ %i.mt, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa ]
  %lcmp.mod245 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod245)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader
  %.014.i.i95.epil = phi i64 [ %.014.i.i95.epil.init, %.epil.preheader ], [ %i.nb, %bb.az ] ; 3 uses
  %.01113.i.i96.epil = phi i64 [ %.01113.i.i96.epil.init, %.epil.preheader ], [ %i.mz, %bb.az ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.az ]
  %.sroa.0.0.copyload1.i.i.i97.epil = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mw = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.epil
  %i.mx = getelementptr [8 x i8], ptr %i.mw, i64 %.014.i.i95.epil
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !109
  %i.mz = add i64 %i.my, %.01113.i.i96.epil       ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.014.i.i95.epil
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !109
  %i.nb = add nuw i64 %.014.i.i95.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98, label %bb.az, !llvm.loop !1103

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98.loopexit.unr-lcssa, %bb.az, %bb.ax
  %i.nc = add nuw i64 %.0171, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.nc, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.au, !llvm.loop !1104

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit98, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit91, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit84, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit77, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit70, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_JmEEEvSD_DpT0_.exit, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data20CSRArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit, %.preheader169, %.preheader167, %.preheader165, %.preheader163, %.preheader161, %.preheader159, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.ba:                                            ; preds = %bb.k
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  %i.ne = extractvalue { ptr, i32 } %i.nd, 0
  call void @__clang_call_terminate(ptr %i.ne) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNS0_10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data20CSRArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSB_SB_T1_T0_EUlSB_E0_EEvSB_iNS0_5SchedEOSM_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.52", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %.not168 = icmp eq i64 %0, 0
  br i1 %.not168, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph161

.lr.ph161:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !1105, !nonnull !191, !align !496
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1107, !nonnull !191, !align !496
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !191, !align !496
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !191, !align !496
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !191, !align !496
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph161, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data20CSRArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit
  %.048160 = phi i64 [ 0, %.lr.ph161 ], [ %i.ax, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data20CSRArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit ] ; 8 uses
  %i.m = shl i64 %.048160, 3                      ; 2 uses
  %i.n = load i64, ptr %i.d, align 8, !tbaa !109  ; 5 uses
  %i.o = mul i64 %i.n, %.048160                   ; 5 uses
  %i.p = load i64, ptr %i.f, align 8, !tbaa !109
  %i.q = add i64 %i.p, -1
  %i.r = icmp eq i64 %.048160, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.h, align 8, !tbaa !109
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.048160, 1
  %i.u = mul i64 %i.n, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = phi i64 [ %i.s, %bb.c ], [ %i.u, %bb.d ] ; 4 uses
  %i.w = icmp ult i64 %i.o, %i.v
  br i1 %i.w, label %.lr.ph.i, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data20CSRArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !470  ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.048160 ; 3 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !246  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = mul i64 %.048160, %i.n
  %i.ac = sub i64 %i.v, %i.ab                     ; 3 uses
  %min.iters.check340 = icmp ult i64 %i.ac, 10
  br i1 %min.iters.check340, label %scalar.ph339.preheader, label %vector.memcheck331

vector.memcheck331:                               ; preds = %.lr.ph.i
  %scevgep332 = getelementptr i8, ptr %i.z, i64 8 ; 2 uses
  %i.ad = mul i64 %i.n, %i.m                      ; 2 uses
  %scevgep333 = getelementptr nuw i8, ptr %scevgep332, i64 %i.ad
  %i.ae = mul i64 %.048160, %i.n
  %i.af = sub i64 %i.v, %i.ae
  %i.ag = shl i64 %i.af, 3
  %i.ah = getelementptr i8, ptr %scevgep332, i64 %i.ad
  %scevgep334 = getelementptr i8, ptr %i.ah, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.m
  %scevgep335 = getelementptr i8, ptr %i.ai, i64 8
  %bound0336 = icmp ult ptr %scevgep333, %scevgep335
  %bound1337 = icmp ult ptr %i.y, %scevgep334
  %found.conflict338 = and i1 %bound0336, %bound1337
  br i1 %found.conflict338, label %scalar.ph339.preheader, label %vector.ph341

vector.ph341:                                     ; preds = %vector.memcheck331
  %n.vec342 = and i64 %i.ac, -4                   ; 3 uses
  %i.aj = add i64 %i.o, %n.vec342
  %i.ak = load i64, ptr %i.y, align 8, !tbaa !109, !alias.scope !1108
  %broadcast.splatinsert347 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat348 = shufflevector <2 x i64> %broadcast.splatinsert347, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.o
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body343, %vector.ph341
  %index344 = phi i64 [ 0, %vector.ph341 ], [ %index.next349, %vector.body343 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index344 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load345 = load <2 x i64>, ptr %i.am, align 8, !tbaa !109, !alias.scope !1111, !noalias !1108
  %wide.load346 = load <2 x i64>, ptr %i.an, align 8, !tbaa !109, !alias.scope !1111, !noalias !1108
  %i.ao = add <2 x i64> %wide.load345, %broadcast.splat348
  %i.ap = add <2 x i64> %wide.load346, %broadcast.splat348
  store <2 x i64> %i.ao, ptr %i.am, align 8, !tbaa !109, !alias.scope !1111, !noalias !1108
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !109, !alias.scope !1111, !noalias !1108
  %index.next349 = add nuw i64 %index344, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next349, %n.vec342
  br i1 %i.aq, label %middle.block350, label %vector.body343, !llvm.loop !1113

middle.block350:                                  ; preds = %vector.body343
  %cmp.n351 = icmp eq i64 %i.ac, %n.vec342
  br i1 %cmp.n351, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data20CSRArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit, label %scalar.ph339.preheader

scalar.ph339.preheader:                           ; preds = %vector.memcheck331, %.lr.ph.i, %middle.block350
  %.010.i.ph = phi i64 [ %i.o, %vector.memcheck331 ], [ %i.o, %.lr.ph.i ], [ %i.aj, %middle.block350 ]
  br label %scalar.ph339

scalar.ph339:                                     ; preds = %scalar.ph339.preheader, %scalar.ph339
  %.010.i = phi i64 [ %i.av, %scalar.ph339 ], [ %.010.i.ph, %scalar.ph339.preheader ] ; 2 uses
  %i.ar = load i64, ptr %i.y, align 8, !tbaa !109
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.010.i ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !109
  %i.au = add i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.as, align 8, !tbaa !109
  %i.av = add nuw i64 %.010.i, 1                  ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.v
  br i1 %i.aw, label %scalar.ph339, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data20CSRArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit, !llvm.loop !1114

_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data20CSRArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit: ; preds = %scalar.ph339, %middle.block350, %bb.e
  %i.ax = add nuw i64 %.048160, 1                 ; 2 uses
  %exitcond180.not = icmp eq i64 %i.ax, %0
  br i1 %exitcond180.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.b, !llvm.loop !1115

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !100, !noalias !1116
  store i32 1, ptr %i.b, align 4, !tbaa !100, !noalias !1116
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.f
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.52") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ay = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ay, ptr noundef nonnull @.str.61, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.h

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.az = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.i ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.10, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.62, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bc = load ptr, ptr %5, align 8, !tbaa !201   ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !85
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.bd, i64 noundef %i.bf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.j unwind label %bb.am

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.h ], [ %i.bj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.pr135 = load ptr, ptr %5, align 8, !tbaa !201 ; 4 uses
  %.not.i61 = icmp eq ptr %.pr135, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %.pr135, align 8, !tbaa !82 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.pr135, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !83
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr135, i64 noundef 32) #33
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.k, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  switch i32 %2, label %_ZN4dmlc12OMPExceptionD2Ev.exit [
    i32 0, label %.preheader137
    i32 1, label %bb.q
    i32 2, label %bb.z
    i32 3, label %.preheader147
  ]

.preheader147:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not162 = icmp eq i64 %0, 0
  br i1 %.not162, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader147
  %.sroa.0130.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2131.0.copyload = load ptr, ptr %.sroa.2131.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4133.0.copyload = load ptr, ptr %.sroa.4133.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5134.0.copyload = load ptr, ptr %.sroa.5134.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ai

.preheader137:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not167 = icmp eq i64 %0, 0
  br i1 %.not167, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader137
  %.sroa.082.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !246
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.483.0.copyload = load ptr, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !473
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.584.0.copyload = load ptr, ptr %.sroa.584.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph159, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit
  %.044158 = phi i64 [ 0, %.lr.ph159 ], [ %i.da, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit ] ; 8 uses
  %i.bp = shl i64 %.044158, 3                     ; 2 uses
  %i.bq = load i64, ptr %.sroa.082.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.br = mul i64 %i.bq, %.044158                 ; 5 uses
  %i.bs = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !109
  %i.bt = add i64 %i.bs, -1
  %i.bu = icmp eq i64 %.044158, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !246
  %i.bv = load i64, ptr %.sroa.3.0.copyload, align 8, !tbaa !109
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bw = add nuw i64 %.044158, 1
  %i.bx = mul i64 %i.bq, %i.bw
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.by = phi i64 [ %i.bv, %bb.n ], [ %i.bx, %bb.o ] ; 4 uses
  %i.bz = icmp ult i64 %i.br, %i.by
  br i1 %i.bz, label %.lr.ph.i.i, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.ca = load ptr, ptr %.sroa.584.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.044158 ; 3 uses
  %i.cc = load ptr, ptr %.sroa.483.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = mul i64 %.044158, %i.bq
  %i.cf = sub i64 %i.by, %i.ce                    ; 3 uses
  %min.iters.check318 = icmp ult i64 %i.cf, 10
  br i1 %min.iters.check318, label %scalar.ph317.preheader, label %vector.memcheck309

vector.memcheck309:                               ; preds = %.lr.ph.i.i
  %scevgep310 = getelementptr i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cg = mul i64 %i.bq, %i.bp                    ; 2 uses
  %scevgep311 = getelementptr nuw i8, ptr %scevgep310, i64 %i.cg
  %i.ch = mul i64 %.044158, %i.bq
  %i.ci = sub i64 %i.by, %i.ch
  %i.cj = shl i64 %i.ci, 3
  %i.ck = getelementptr i8, ptr %scevgep310, i64 %i.cg
  %scevgep312 = getelementptr i8, ptr %i.ck, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ca, i64 %i.bp
  %scevgep313 = getelementptr i8, ptr %i.cl, i64 8
  %bound0314 = icmp ult ptr %scevgep311, %scevgep313
  %bound1315 = icmp ult ptr %i.cb, %scevgep312
  %found.conflict316 = and i1 %bound0314, %bound1315
  br i1 %found.conflict316, label %scalar.ph317.preheader, label %vector.ph319

vector.ph319:                                     ; preds = %vector.memcheck309
  %n.vec320 = and i64 %i.cf, -4                   ; 3 uses
  %i.cm = add i64 %i.br, %n.vec320
  %i.cn = load i64, ptr %i.cb, align 8, !tbaa !109, !alias.scope !1119
  %broadcast.splatinsert325 = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat326 = shufflevector <2 x i64> %broadcast.splatinsert325, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.br
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next327, %vector.body321 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %index322 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load323 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !109, !alias.scope !1122, !noalias !1119
  %wide.load324 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !109, !alias.scope !1122, !noalias !1119
  %i.cr = add <2 x i64> %wide.load323, %broadcast.splat326
  %i.cs = add <2 x i64> %wide.load324, %broadcast.splat326
  store <2 x i64> %i.cr, ptr %i.cp, align 8, !tbaa !109, !alias.scope !1122, !noalias !1119
  store <2 x i64> %i.cs, ptr %i.cq, align 8, !tbaa !109, !alias.scope !1122, !noalias !1119
  %index.next327 = add nuw i64 %index322, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next327, %n.vec320
  br i1 %i.ct, label %middle.block328, label %vector.body321, !llvm.loop !1124

middle.block328:                                  ; preds = %vector.body321
  %cmp.n329 = icmp eq i64 %i.cf, %n.vec320
  br i1 %cmp.n329, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit, label %scalar.ph317.preheader

scalar.ph317.preheader:                           ; preds = %vector.memcheck309, %.lr.ph.i.i, %middle.block328
  %.010.i.i.ph = phi i64 [ %i.br, %vector.memcheck309 ], [ %i.br, %.lr.ph.i.i ], [ %i.cm, %middle.block328 ]
  br label %scalar.ph317

scalar.ph317:                                     ; preds = %scalar.ph317.preheader, %scalar.ph317
  %.010.i.i = phi i64 [ %i.cy, %scalar.ph317 ], [ %.010.i.i.ph, %scalar.ph317.preheader ] ; 2 uses
  %i.cu = load i64, ptr %i.cb, align 8, !tbaa !109
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.010.i.i ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !109
  %i.cx = add i64 %i.cw, %i.cu
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !109
  %i.cy = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.by
  br i1 %i.cz, label %scalar.ph317, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit, !llvm.loop !1125

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit: ; preds = %scalar.ph317, %middle.block328, %bb.p
  %i.da = add nuw i64 %.044158, 1                 ; 2 uses
  %exitcond179.not = icmp eq i64 %i.da, %0
  br i1 %exitcond179.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.m, !llvm.loop !1126

bb.q:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.db = icmp eq i64 %3, 0
  %.not166 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.db, label %.preheader139, label %.preheader141

.preheader141:                                    ; preds = %bb.q
  br i1 %.not166, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.preheader141
  %.sroa.0100.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2101.0.copyload = load ptr, ptr %.sroa.2101.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4103.0.copyload = load ptr, ptr %.sroa.4103.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5104.0.copyload = load ptr, ptr %.sroa.5104.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.v

.preheader139:                                    ; preds = %bb.q
  br i1 %.not166, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader139
  %.sroa.090.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.291.0.copyload = load ptr, ptr %.sroa.291.0..sroa_idx, align 8, !tbaa !246
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.493.0.copyload = load ptr, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !473
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.594.0.copyload = load ptr, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !476
  %.sroa.392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph157, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64
  %.043156 = phi i64 [ 0, %.lr.ph157 ], [ %i.en, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64 ] ; 8 uses
  %i.dc = shl i64 %.043156, 3                     ; 2 uses
  %i.dd = load i64, ptr %.sroa.090.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.de = mul i64 %i.dd, %.043156                 ; 5 uses
  %i.df = load i64, ptr %.sroa.291.0.copyload, align 8, !tbaa !109
  %i.dg = add i64 %i.df, -1
  %i.dh = icmp eq i64 %.043156, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.392.0.copyload = load ptr, ptr %.sroa.392.0..sroa_idx, align 8, !tbaa !246
  %i.di = load i64, ptr %.sroa.392.0.copyload, align 8, !tbaa !109
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dj = add nuw i64 %.043156, 1
  %i.dk = mul i64 %i.dd, %i.dj
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dl = phi i64 [ %i.di, %bb.s ], [ %i.dk, %bb.t ] ; 4 uses
  %i.dm = icmp ult i64 %i.de, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i62, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64

.lr.ph.i.i62:                                     ; preds = %bb.u
  %i.dn = load ptr, ptr %.sroa.594.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.043156 ; 3 uses
  %i.dp = load ptr, ptr %.sroa.493.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = mul i64 %.043156, %i.dd
  %i.ds = sub i64 %i.dl, %i.dr                    ; 3 uses
  %min.iters.check296 = icmp ult i64 %i.ds, 10
  br i1 %min.iters.check296, label %scalar.ph295.preheader, label %vector.memcheck287

vector.memcheck287:                               ; preds = %.lr.ph.i.i62
  %scevgep288 = getelementptr i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dt = mul i64 %i.dd, %i.dc                    ; 2 uses
  %scevgep289 = getelementptr nuw i8, ptr %scevgep288, i64 %i.dt
  %i.du = mul i64 %.043156, %i.dd
  %i.dv = sub i64 %i.dl, %i.du
  %i.dw = shl i64 %i.dv, 3
  %i.dx = getelementptr i8, ptr %scevgep288, i64 %i.dt
  %scevgep290 = getelementptr i8, ptr %i.dx, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dn, i64 %i.dc
  %scevgep291 = getelementptr i8, ptr %i.dy, i64 8
  %bound0292 = icmp ult ptr %scevgep289, %scevgep291
  %bound1293 = icmp ult ptr %i.do, %scevgep290
  %found.conflict294 = and i1 %bound0292, %bound1293
  br i1 %found.conflict294, label %scalar.ph295.preheader, label %vector.ph297

vector.ph297:                                     ; preds = %vector.memcheck287
  %n.vec298 = and i64 %i.ds, -4                   ; 3 uses
  %i.dz = add i64 %i.de, %n.vec298
  %i.ea = load i64, ptr %i.do, align 8, !tbaa !109, !alias.scope !1127
  %broadcast.splatinsert303 = insertelement <2 x i64> poison, i64 %i.ea, i64 0
  %broadcast.splat304 = shufflevector <2 x i64> %broadcast.splatinsert303, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.de
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index300 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %wide.load301 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !109, !alias.scope !1130, !noalias !1127
  %wide.load302 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !109, !alias.scope !1130, !noalias !1127
  %i.ee = add <2 x i64> %wide.load301, %broadcast.splat304
  %i.ef = add <2 x i64> %wide.load302, %broadcast.splat304
  store <2 x i64> %i.ee, ptr %i.ec, align 8, !tbaa !109, !alias.scope !1130, !noalias !1127
  store <2 x i64> %i.ef, ptr %i.ed, align 8, !tbaa !109, !alias.scope !1130, !noalias !1127
  %index.next305 = add nuw i64 %index300, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.eg, label %middle.block306, label %vector.body299, !llvm.loop !1132

middle.block306:                                  ; preds = %vector.body299
  %cmp.n307 = icmp eq i64 %i.ds, %n.vec298
  br i1 %cmp.n307, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64, label %scalar.ph295.preheader

scalar.ph295.preheader:                           ; preds = %vector.memcheck287, %.lr.ph.i.i62, %middle.block306
  %.010.i.i63.ph = phi i64 [ %i.de, %vector.memcheck287 ], [ %i.de, %.lr.ph.i.i62 ], [ %i.dz, %middle.block306 ]
  br label %scalar.ph295

scalar.ph295:                                     ; preds = %scalar.ph295.preheader, %scalar.ph295
  %.010.i.i63 = phi i64 [ %i.el, %scalar.ph295 ], [ %.010.i.i63.ph, %scalar.ph295.preheader ] ; 2 uses
  %i.eh = load i64, ptr %i.do, align 8, !tbaa !109
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.010.i.i63 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !109
  %i.ek = add i64 %i.ej, %i.eh
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !109
  %i.el = add nuw i64 %.010.i.i63, 1              ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.dl
  br i1 %i.em, label %scalar.ph295, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64, !llvm.loop !1133

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64: ; preds = %scalar.ph295, %middle.block306, %bb.u
  %i.en = add nuw i64 %.043156, 1                 ; 2 uses
  %exitcond178.not = icmp eq i64 %i.en, %0
  br i1 %exitcond178.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.r, !llvm.loop !1134

bb.v:                                             ; preds = %.lr.ph155, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67
  %.042154 = phi i64 [ 0, %.lr.ph155 ], [ %i.fz, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67 ] ; 8 uses
  %i.eo = shl i64 %.042154, 3                     ; 2 uses
  %i.ep = load i64, ptr %.sroa.0100.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.eq = mul i64 %i.ep, %.042154                 ; 5 uses
  %i.er = load i64, ptr %.sroa.2101.0.copyload, align 8, !tbaa !109
  %i.es = add i64 %i.er, -1
  %i.et = icmp eq i64 %.042154, %i.es
  br i1 %i.et, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.3102.0.copyload = load ptr, ptr %.sroa.3102.0..sroa_idx, align 8, !tbaa !246
  %i.eu = load i64, ptr %.sroa.3102.0.copyload, align 8, !tbaa !109
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ev = add nuw i64 %.042154, 1
  %i.ew = mul i64 %i.ep, %i.ev
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ex = phi i64 [ %i.eu, %bb.w ], [ %i.ew, %bb.x ] ; 4 uses
  %i.ey = icmp ult i64 %i.eq, %i.ex
  br i1 %i.ey, label %.lr.ph.i.i65, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67

.lr.ph.i.i65:                                     ; preds = %bb.y
  %i.ez = load ptr, ptr %.sroa.5104.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.042154 ; 3 uses
  %i.fb = load ptr, ptr %.sroa.4103.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = mul i64 %.042154, %i.ep
  %i.fe = sub i64 %i.ex, %i.fd                    ; 3 uses
  %min.iters.check274 = icmp ult i64 %i.fe, 10
  br i1 %min.iters.check274, label %scalar.ph273.preheader, label %vector.memcheck265

vector.memcheck265:                               ; preds = %.lr.ph.i.i65
  %scevgep266 = getelementptr i8, ptr %i.fb, i64 8 ; 2 uses
  %i.ff = mul i64 %i.ep, %i.eo                    ; 2 uses
  %scevgep267 = getelementptr nuw i8, ptr %scevgep266, i64 %i.ff
  %i.fg = mul i64 %.042154, %i.ep
  %i.fh = sub i64 %i.ex, %i.fg
  %i.fi = shl i64 %i.fh, 3
  %i.fj = getelementptr i8, ptr %scevgep266, i64 %i.ff
  %scevgep268 = getelementptr i8, ptr %i.fj, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.ez, i64 %i.eo
  %scevgep269 = getelementptr i8, ptr %i.fk, i64 8
  %bound0270 = icmp ult ptr %scevgep267, %scevgep269
  %bound1271 = icmp ult ptr %i.fa, %scevgep268
  %found.conflict272 = and i1 %bound0270, %bound1271
  br i1 %found.conflict272, label %scalar.ph273.preheader, label %vector.ph275

vector.ph275:                                     ; preds = %vector.memcheck265
  %n.vec276 = and i64 %i.fe, -4                   ; 3 uses
  %i.fl = add i64 %i.eq, %n.vec276
  %i.fm = load i64, ptr %i.fa, align 8, !tbaa !109, !alias.scope !1135
  %broadcast.splatinsert281 = insertelement <2 x i64> poison, i64 %i.fm, i64 0
  %broadcast.splat282 = shufflevector <2 x i64> %broadcast.splatinsert281, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.eq
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph275
  %index278 = phi i64 [ 0, %vector.ph275 ], [ %index.next283, %vector.body277 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %index278 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %wide.load279 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !109, !alias.scope !1138, !noalias !1135
  %wide.load280 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !109, !alias.scope !1138, !noalias !1135
  %i.fq = add <2 x i64> %wide.load279, %broadcast.splat282
  %i.fr = add <2 x i64> %wide.load280, %broadcast.splat282
  store <2 x i64> %i.fq, ptr %i.fo, align 8, !tbaa !109, !alias.scope !1138, !noalias !1135
  store <2 x i64> %i.fr, ptr %i.fp, align 8, !tbaa !109, !alias.scope !1138, !noalias !1135
  %index.next283 = add nuw i64 %index278, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next283, %n.vec276
  br i1 %i.fs, label %middle.block284, label %vector.body277, !llvm.loop !1140

middle.block284:                                  ; preds = %vector.body277
  %cmp.n285 = icmp eq i64 %i.fe, %n.vec276
  br i1 %cmp.n285, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67, label %scalar.ph273.preheader

scalar.ph273.preheader:                           ; preds = %vector.memcheck265, %.lr.ph.i.i65, %middle.block284
  %.010.i.i66.ph = phi i64 [ %i.eq, %vector.memcheck265 ], [ %i.eq, %.lr.ph.i.i65 ], [ %i.fl, %middle.block284 ]
  br label %scalar.ph273

scalar.ph273:                                     ; preds = %scalar.ph273.preheader, %scalar.ph273
  %.010.i.i66 = phi i64 [ %i.fx, %scalar.ph273 ], [ %.010.i.i66.ph, %scalar.ph273.preheader ] ; 2 uses
  %i.ft = load i64, ptr %i.fa, align 8, !tbaa !109
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.010.i.i66 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !109
  %i.fw = add i64 %i.fv, %i.ft
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !109
  %i.fx = add nuw i64 %.010.i.i66, 1              ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.ex
  br i1 %i.fy, label %scalar.ph273, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67, !llvm.loop !1141

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67: ; preds = %scalar.ph273, %middle.block284, %bb.y
  %i.fz = add nuw i64 %.042154, 1                 ; 2 uses
  %exitcond177.not = icmp eq i64 %i.fz, %0
  br i1 %exitcond177.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.v, !llvm.loop !1142

bb.z:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ga = icmp eq i64 %3, 0
  %.not164 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.ga, label %.preheader143, label %.preheader145

.preheader145:                                    ; preds = %bb.z
  br i1 %.not164, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph151

.lr.ph151:                                        ; preds = %.preheader145
  %.sroa.0120.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2121.0.copyload = load ptr, ptr %.sroa.2121.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4123.0.copyload = load ptr, ptr %.sroa.4123.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5124.0.copyload = load ptr, ptr %.sroa.5124.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ae

.preheader143:                                    ; preds = %bb.z
  br i1 %.not164, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph153

.lr.ph153:                                        ; preds = %.preheader143
  %.sroa.0110.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2111.0.copyload = load ptr, ptr %.sroa.2111.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4113.0.copyload = load ptr, ptr %.sroa.4113.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5114.0.copyload = load ptr, ptr %.sroa.5114.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph153, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70
  %.041152 = phi i64 [ 0, %.lr.ph153 ], [ %i.hm, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70 ] ; 8 uses
  %i.gb = shl i64 %.041152, 3                     ; 2 uses
  %i.gc = load i64, ptr %.sroa.0110.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.gd = mul i64 %i.gc, %.041152                 ; 5 uses
  %i.ge = load i64, ptr %.sroa.2111.0.copyload, align 8, !tbaa !109
  %i.gf = add i64 %i.ge, -1
  %i.gg = icmp eq i64 %.041152, %i.gf
  br i1 %i.gg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.3112.0.copyload = load ptr, ptr %.sroa.3112.0..sroa_idx, align 8, !tbaa !246
  %i.gh = load i64, ptr %.sroa.3112.0.copyload, align 8, !tbaa !109
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gi = add nuw i64 %.041152, 1
  %i.gj = mul i64 %i.gc, %i.gi
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gk = phi i64 [ %i.gh, %bb.ab ], [ %i.gj, %bb.ac ] ; 4 uses
  %i.gl = icmp ult i64 %i.gd, %i.gk
  br i1 %i.gl, label %.lr.ph.i.i68, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70

.lr.ph.i.i68:                                     ; preds = %bb.ad
  %i.gm = load ptr, ptr %.sroa.5114.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.041152 ; 3 uses
  %i.go = load ptr, ptr %.sroa.4113.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gq = mul i64 %.041152, %i.gc
  %i.gr = sub i64 %i.gk, %i.gq                    ; 3 uses
  %min.iters.check252 = icmp ult i64 %i.gr, 10
  br i1 %min.iters.check252, label %scalar.ph251.preheader, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph.i.i68
  %scevgep244 = getelementptr i8, ptr %i.go, i64 8 ; 2 uses
  %i.gs = mul i64 %i.gc, %i.gb                    ; 2 uses
  %scevgep245 = getelementptr nuw i8, ptr %scevgep244, i64 %i.gs
  %i.gt = mul i64 %.041152, %i.gc
  %i.gu = sub i64 %i.gk, %i.gt
  %i.gv = shl i64 %i.gu, 3
  %i.gw = getelementptr i8, ptr %scevgep244, i64 %i.gs
  %scevgep246 = getelementptr i8, ptr %i.gw, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gm, i64 %i.gb
  %scevgep247 = getelementptr i8, ptr %i.gx, i64 8
  %bound0248 = icmp ult ptr %scevgep245, %scevgep247
  %bound1249 = icmp ult ptr %i.gn, %scevgep246
  %found.conflict250 = and i1 %bound0248, %bound1249
  br i1 %found.conflict250, label %scalar.ph251.preheader, label %vector.ph253

vector.ph253:                                     ; preds = %vector.memcheck243
  %n.vec254 = and i64 %i.gr, -4                   ; 3 uses
  %i.gy = add i64 %i.gd, %n.vec254
  %i.gz = load i64, ptr %i.gn, align 8, !tbaa !109, !alias.scope !1143
  %broadcast.splatinsert259 = insertelement <2 x i64> poison, i64 %i.gz, i64 0
  %broadcast.splat260 = shufflevector <2 x i64> %broadcast.splatinsert259, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gd
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph253
  %index256 = phi i64 [ 0, %vector.ph253 ], [ %index.next261, %vector.body255 ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %index256 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %wide.load257 = load <2 x i64>, ptr %i.hb, align 8, !tbaa !109, !alias.scope !1146, !noalias !1143
  %wide.load258 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !109, !alias.scope !1146, !noalias !1143
  %i.hd = add <2 x i64> %wide.load257, %broadcast.splat260
  %i.he = add <2 x i64> %wide.load258, %broadcast.splat260
  store <2 x i64> %i.hd, ptr %i.hb, align 8, !tbaa !109, !alias.scope !1146, !noalias !1143
  store <2 x i64> %i.he, ptr %i.hc, align 8, !tbaa !109, !alias.scope !1146, !noalias !1143
  %index.next261 = add nuw i64 %index256, 4       ; 2 uses
  %i.hf = icmp eq i64 %index.next261, %n.vec254
  br i1 %i.hf, label %middle.block262, label %vector.body255, !llvm.loop !1148

middle.block262:                                  ; preds = %vector.body255
  %cmp.n263 = icmp eq i64 %i.gr, %n.vec254
  br i1 %cmp.n263, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70, label %scalar.ph251.preheader

scalar.ph251.preheader:                           ; preds = %vector.memcheck243, %.lr.ph.i.i68, %middle.block262
  %.010.i.i69.ph = phi i64 [ %i.gd, %vector.memcheck243 ], [ %i.gd, %.lr.ph.i.i68 ], [ %i.gy, %middle.block262 ]
  br label %scalar.ph251

scalar.ph251:                                     ; preds = %scalar.ph251.preheader, %scalar.ph251
  %.010.i.i69 = phi i64 [ %i.hk, %scalar.ph251 ], [ %.010.i.i69.ph, %scalar.ph251.preheader ] ; 2 uses
  %i.hg = load i64, ptr %i.gn, align 8, !tbaa !109
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.010.i.i69 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !109
  %i.hj = add i64 %i.hi, %i.hg
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !109
  %i.hk = add nuw i64 %.010.i.i69, 1              ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.gk
  br i1 %i.hl, label %scalar.ph251, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70, !llvm.loop !1149

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70: ; preds = %scalar.ph251, %middle.block262, %bb.ad
  %i.hm = add nuw i64 %.041152, 1                 ; 2 uses
  %exitcond176.not = icmp eq i64 %i.hm, %0
  br i1 %exitcond176.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.aa, !llvm.loop !1150

bb.ae:                                            ; preds = %.lr.ph151, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73
  %.040150 = phi i64 [ 0, %.lr.ph151 ], [ %i.iy, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73 ] ; 8 uses
  %i.hn = shl i64 %.040150, 3                     ; 2 uses
  %i.ho = load i64, ptr %.sroa.0120.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.hp = mul i64 %i.ho, %.040150                 ; 5 uses
  %i.hq = load i64, ptr %.sroa.2121.0.copyload, align 8, !tbaa !109
  %i.hr = add i64 %i.hq, -1
  %i.hs = icmp eq i64 %.040150, %i.hr
  br i1 %i.hs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.3122.0.copyload = load ptr, ptr %.sroa.3122.0..sroa_idx, align 8, !tbaa !246
  %i.ht = load i64, ptr %.sroa.3122.0.copyload, align 8, !tbaa !109
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.hu = add nuw i64 %.040150, 1
  %i.hv = mul i64 %i.ho, %i.hu
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hw = phi i64 [ %i.ht, %bb.af ], [ %i.hv, %bb.ag ] ; 4 uses
  %i.hx = icmp ult i64 %i.hp, %i.hw
  br i1 %i.hx, label %.lr.ph.i.i71, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73

.lr.ph.i.i71:                                     ; preds = %bb.ah
  %i.hy = load ptr, ptr %.sroa.5124.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %.040150 ; 3 uses
  %i.ia = load ptr, ptr %.sroa.4123.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ic = mul i64 %.040150, %i.ho
  %i.id = sub i64 %i.hw, %i.ic                    ; 3 uses
  %min.iters.check230 = icmp ult i64 %i.id, 10
  br i1 %min.iters.check230, label %scalar.ph229.preheader, label %vector.memcheck221

vector.memcheck221:                               ; preds = %.lr.ph.i.i71
  %scevgep222 = getelementptr i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ie = mul i64 %i.ho, %i.hn                    ; 2 uses
  %scevgep223 = getelementptr nuw i8, ptr %scevgep222, i64 %i.ie
  %i.if = mul i64 %.040150, %i.ho
  %i.ig = sub i64 %i.hw, %i.if
  %i.ih = shl i64 %i.ig, 3
  %i.ii = getelementptr i8, ptr %scevgep222, i64 %i.ie
  %scevgep224 = getelementptr i8, ptr %i.ii, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.hy, i64 %i.hn
  %scevgep225 = getelementptr i8, ptr %i.ij, i64 8
  %bound0226 = icmp ult ptr %scevgep223, %scevgep225
  %bound1227 = icmp ult ptr %i.hz, %scevgep224
  %found.conflict228 = and i1 %bound0226, %bound1227
  br i1 %found.conflict228, label %scalar.ph229.preheader, label %vector.ph231

vector.ph231:                                     ; preds = %vector.memcheck221
  %n.vec232 = and i64 %i.id, -4                   ; 3 uses
  %i.ik = add i64 %i.hp, %n.vec232
  %i.il = load i64, ptr %i.hz, align 8, !tbaa !109, !alias.scope !1151
  %broadcast.splatinsert237 = insertelement <2 x i64> poison, i64 %i.il, i64 0
  %broadcast.splat238 = shufflevector <2 x i64> %broadcast.splatinsert237, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hp
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index234 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %wide.load235 = load <2 x i64>, ptr %i.in, align 8, !tbaa !109, !alias.scope !1154, !noalias !1151
  %wide.load236 = load <2 x i64>, ptr %i.io, align 8, !tbaa !109, !alias.scope !1154, !noalias !1151
  %i.ip = add <2 x i64> %wide.load235, %broadcast.splat238
  %i.iq = add <2 x i64> %wide.load236, %broadcast.splat238
  store <2 x i64> %i.ip, ptr %i.in, align 8, !tbaa !109, !alias.scope !1154, !noalias !1151
  store <2 x i64> %i.iq, ptr %i.io, align 8, !tbaa !109, !alias.scope !1154, !noalias !1151
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.ir, label %middle.block240, label %vector.body233, !llvm.loop !1156

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.id, %n.vec232
  br i1 %cmp.n241, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %vector.memcheck221, %.lr.ph.i.i71, %middle.block240
  %.010.i.i72.ph = phi i64 [ %i.hp, %vector.memcheck221 ], [ %i.hp, %.lr.ph.i.i71 ], [ %i.ik, %middle.block240 ]
  br label %scalar.ph229

scalar.ph229:                                     ; preds = %scalar.ph229.preheader, %scalar.ph229
  %.010.i.i72 = phi i64 [ %i.iw, %scalar.ph229 ], [ %.010.i.i72.ph, %scalar.ph229.preheader ] ; 2 uses
  %i.is = load i64, ptr %i.hz, align 8, !tbaa !109
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.010.i.i72 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !109
  %i.iv = add i64 %i.iu, %i.is
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !109
  %i.iw = add nuw i64 %.010.i.i72, 1              ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.hw
  br i1 %i.ix, label %scalar.ph229, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73, !llvm.loop !1157

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73: ; preds = %scalar.ph229, %middle.block240, %bb.ah
  %i.iy = add nuw i64 %.040150, 1                 ; 2 uses
  %exitcond175.not = icmp eq i64 %i.iy, %0
  br i1 %exitcond175.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ae, !llvm.loop !1158

bb.ai:                                            ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76
  %.0149 = phi i64 [ 0, %.lr.ph ], [ %i.kk, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76 ] ; 8 uses
  %i.iz = shl i64 %.0149, 3                       ; 2 uses
  %i.ja = load i64, ptr %.sroa.0130.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.jb = mul i64 %i.ja, %.0149                   ; 5 uses
  %i.jc = load i64, ptr %.sroa.2131.0.copyload, align 8, !tbaa !109
  %i.jd = add i64 %i.jc, -1
  %i.je = icmp eq i64 %.0149, %i.jd
  br i1 %i.je, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.sroa.3132.0.copyload = load ptr, ptr %.sroa.3132.0..sroa_idx, align 8, !tbaa !246
  %i.jf = load i64, ptr %.sroa.3132.0.copyload, align 8, !tbaa !109
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.jg = add nuw i64 %.0149, 1
  %i.jh = mul i64 %i.ja, %i.jg
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ji = phi i64 [ %i.jf, %bb.aj ], [ %i.jh, %bb.ak ] ; 4 uses
  %i.jj = icmp ult i64 %i.jb, %i.ji
  br i1 %i.jj, label %.lr.ph.i.i74, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76

.lr.ph.i.i74:                                     ; preds = %bb.al
  %i.jk = load ptr, ptr %.sroa.5134.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %.0149 ; 3 uses
  %i.jm = load ptr, ptr %.sroa.4133.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jo = mul i64 %.0149, %i.ja
  %i.jp = sub i64 %i.ji, %i.jo                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.jp, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i74
  %scevgep = getelementptr i8, ptr %i.jm, i64 8   ; 2 uses
  %i.jq = mul i64 %i.ja, %i.iz                    ; 2 uses
  %scevgep217 = getelementptr nuw i8, ptr %scevgep, i64 %i.jq
  %i.jr = mul i64 %.0149, %i.ja
  %i.js = sub i64 %i.ji, %i.jr
  %i.jt = shl i64 %i.js, 3
  %i.ju = getelementptr i8, ptr %scevgep, i64 %i.jq
  %scevgep218 = getelementptr i8, ptr %i.ju, i64 %i.jt
  %i.jv = getelementptr i8, ptr %i.jk, i64 %i.iz
  %scevgep219 = getelementptr i8, ptr %i.jv, i64 8
  %bound0 = icmp ult ptr %scevgep217, %scevgep219
  %bound1 = icmp ult ptr %i.jl, %scevgep218
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jp, -4                      ; 3 uses
  %i.jw = add i64 %i.jb, %n.vec
  %i.jx = load i64, ptr %i.jl, align 8, !tbaa !109, !alias.scope !1159
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.jx, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %index ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.jz, align 8, !tbaa !109, !alias.scope !1162, !noalias !1159
  %wide.load220 = load <2 x i64>, ptr %i.ka, align 8, !tbaa !109, !alias.scope !1162, !noalias !1159
  %i.kb = add <2 x i64> %wide.load, %broadcast.splat
  %i.kc = add <2 x i64> %wide.load220, %broadcast.splat
  store <2 x i64> %i.kb, ptr %i.jz, align 8, !tbaa !109, !alias.scope !1162, !noalias !1159
  store <2 x i64> %i.kc, ptr %i.ka, align 8, !tbaa !109, !alias.scope !1162, !noalias !1159
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !1164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jp, %n.vec
  br i1 %cmp.n, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i74, %middle.block
  %.010.i.i75.ph = phi i64 [ %i.jb, %vector.memcheck ], [ %i.jb, %.lr.ph.i.i74 ], [ %i.jw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.010.i.i75 = phi i64 [ %i.ki, %scalar.ph ], [ %.010.i.i75.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ke = load i64, ptr %i.jl, align 8, !tbaa !109
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.010.i.i75 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !109
  %i.kh = add i64 %i.kg, %i.ke
  store i64 %i.kh, ptr %i.kf, align 8, !tbaa !109
  %i.ki = add nuw i64 %.010.i.i75, 1              ; 2 uses
  %i.kj = icmp ult i64 %i.ki, %i.ji
  br i1 %i.kj, label %scalar.ph, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76, !llvm.loop !1165

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76: ; preds = %scalar.ph, %middle.block, %bb.al
  %i.kk = add nuw i64 %.0149, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.kk, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ai, !llvm.loop !1166

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit76, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit73, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit70, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit67, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit64, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data20CSRArrayAdapterBatchEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_JmEEEvSD_DpT0_.exit, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data20CSRArrayAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E0_clImEEDaSA_.exit, %.preheader147, %.preheader145, %.preheader143, %.preheader141, %.preheader139, %.preheader137, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.am:                                            ; preds = %bb.i
  %i.kl = landingpad { ptr, i32 }
          catch ptr null
  %i.km = extractvalue { ptr, i32 } %i.kl, 0
  call void @__clang_call_terminate(ptr %i.km) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS_16GHistIndexMatrix13PushBatchImplINS_4data20CSRArrayAdapterBatchERNS4_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEEUlSB_E_EEDaNS0_11BinTypeSizeEOSB_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.xgboost::common::Index::CompressBin.203", align 8 ; 4 uses
  %3 = alloca %"struct.xgboost::common::Index::CompressBin.203", align 8 ; 4 uses
  %4 = alloca %"struct.xgboost::common::Index::CompressBin.201", align 8 ; 4 uses
  %5 = alloca %"struct.xgboost::common::Index::CompressBin", align 8 ; 4 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.h [
    i8 1, label %bb.b
    i8 2, label %bb.d
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !1058   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !303  ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !645  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.g = load i8, ptr %i.f, align 8, !tbaa !301
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = icmp ne ptr %i.d, null
  %i.j = icmp ult i64 %i.e, %i.h
  %i.k = or i1 %i.i, %i.j
  br i1 %i.k, label %_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data20CSRArrayAdapterBatchERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlS9_E_clIhEEDaS9_.exit, label %bb.c, !prof !249

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data20CSRArrayAdapterBatchERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlS9_E_clIhEEDaS9_.exit: ; preds = %bb.b
  %i.l = udiv i64 %i.e, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1167, !nonnull !191, !align !496
  %i.o = load i64, ptr %i.n, align 8, !tbaa !109
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1168, !nonnull !191, !align !496 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1169, !nonnull !191, !align !496
  %i.t = load i64, ptr %i.s, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1170, !nonnull !191, !align !496
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1171, !nonnull !191, !align !501
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1172, !nonnull !191, !align !501
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !100
  %i.ab = sext i32 %i.aa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !239
  store ptr %i.ad, ptr %5, align 8
  call void @_ZN7xgboost16GHistIndexMatrix12SetIndexDataINS_4data20CSRArrayAdapterBatchEhNS_6common5Index11CompressBinIhEERNS2_14IsValidFunctorEEEvNS4_4SpanIT0_Lm18446744073709551615EEEmNSA_IKNS_11FeatureTypeELm18446744073709551615EEEmRKT_OT2_mOT1_(ptr noundef nonnull align 8 dereferenceable(225) %i.a, i64 %i.l, ptr %i.d, i64 noundef %i.o, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(172) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.x, i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %1, align 8, !tbaa !1058  ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !303 ; 2 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !645 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !301
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = icmp ne ptr %i.ah, null
  %i.an = icmp ult i64 %i.ai, %i.al
  %i.ao = or i1 %i.am, %i.an
  br i1 %i.ao, label %_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data20CSRArrayAdapterBatchERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlS9_E_clItEEDaS9_.exit, label %bb.e, !prof !249

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data20CSRArrayAdapterBatchERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlS9_E_clItEEDaS9_.exit: ; preds = %bb.d
  %i.ap = udiv i64 %i.ai, %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1167, !nonnull !191, !align !496
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !109
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1168, !nonnull !191, !align !496 ; 2 uses
  %.sroa.0.0.copyload.i6 = load i64, ptr %i.au, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.2.0.copyload.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i7, align 8, !tbaa !124
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1169, !nonnull !191, !align !496
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !109
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1170, !nonnull !191, !align !496
end_hunk_2
begin_hunk_3_@_ZN7xgboost6common11ParallelForImZNS0_10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_EEvSD_iNS0_5SchedEOSO_:bb.a
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !109
  %i.kr = add i64 %i.kq, %i.kl                    ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kn
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !109
  %i.kt = add nuw i64 %.014.i.i88, 3              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i90.3 = load i64, ptr %.sroa.4145.0.copyload, align 8, !tbaa !109
  %i.ku = getelementptr [8 x i8], ptr %i.jv, i64 %.sroa.0.0.copyload1.i.i.i90.3
  %i.kv = getelementptr [8 x i8], ptr %i.ku, i64 %i.kt
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !109
  %i.kx = add i64 %i.kw, %i.kr                    ; 3 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kt
  store i64 %i.kx, ptr %i.ky, align 8, !tbaa !109
  %i.kz = add nuw i64 %.014.i.i88, 4              ; 2 uses
  %niter252.next.3 = add i64 %niter252, 4         ; 2 uses
  %niter252.ncmp.3.not = icmp eq i64 %niter252.next.3, %unroll_iter251
  br i1 %niter252.ncmp.3.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91.loopexit.unr-lcssa, label %bb.as, !llvm.loop !1517

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91.loopexit.unr-lcssa: ; preds = %bb.as
  %lcmp.mod249.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod249.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91, label %.epil.preheader246

.epil.preheader246:                               ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91.loopexit.unr-lcssa, %.lr.ph.i.i85
  %.014.i.i88.epil.init = phi i64 [ %i.jm, %.lr.ph.i.i85 ], [ %i.kz, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91.loopexit.unr-lcssa ]
  %.01113.i.i89.epil.init = phi i64 [ 0, %.lr.ph.i.i85 ], [ %i.kx, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91.loopexit.unr-lcssa ]
  %lcmp.mod250 = icmp ne i64 %xtraiter247, 0
  call void @llvm.assume(i1 %lcmp.mod250)
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.epil.preheader246
  %.014.i.i88.epil = phi i64 [ %.014.i.i88.epil.init, %.epil.preheader246 ], [ %i.lf, %bb.at ] ; 3 uses
  %.01113.i.i89.epil = phi i64 [ %.01113.i.i89.epil.init, %.epil.preheader246 ], [ %i.ld, %bb.at ]
  %epil.iter248 = phi i64 [ 0, %.epil.preheader246 ], [ %epil.iter248.next, %bb.at ]
  %.sroa.0.0.copyload1.i.i.i90.epil = load i64, ptr %.sroa.4145.0.copyload, align 8, !tbaa !109
  %i.la = getelementptr [8 x i8], ptr %i.jv, i64 %.sroa.0.0.copyload1.i.i.i90.epil
  %i.lb = getelementptr [8 x i8], ptr %i.la, i64 %.014.i.i88.epil
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !109
  %i.ld = add i64 %i.lc, %.01113.i.i89.epil       ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %.014.i.i88.epil
  store i64 %i.ld, ptr %i.le, align 8, !tbaa !109
  %i.lf = add nuw i64 %.014.i.i88.epil, 1
  %epil.iter248.next = add i64 %epil.iter248, 1   ; 2 uses
  %epil.iter248.cmp.not = icmp eq i64 %epil.iter248.next, %xtraiter247
  br i1 %epil.iter248.cmp.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91, label %bb.at, !llvm.loop !1531

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91.loopexit.unr-lcssa, %bb.at, %bb.ar
  %i.lg = add nuw i64 %.040172, 1                 ; 2 uses
  %exitcond197.not = icmp eq i64 %i.lg, %0
  br i1 %exitcond197.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ao, !llvm.loop !1532

bb.au:                                            ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98
  %.0171 = phi i64 [ 0, %.lr.ph ], [ %i.nc, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98 ] ; 5 uses
  %i.lh = load i64, ptr %.sroa.0152.0.copyload, align 8, !tbaa !109 ; 3 uses
  %i.li = mul i64 %i.lh, %.0171                   ; 3 uses
  %i.lj = load i64, ptr %.sroa.2153.0.copyload, align 8, !tbaa !109
  %i.lk = add i64 %i.lj, -1
  %i.ll = icmp eq i64 %.0171, %i.lk
  br i1 %i.ll, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.sroa.3154.0.copyload = load ptr, ptr %.sroa.3154.0..sroa_idx, align 8, !tbaa !246
  %i.lm = load i64, ptr %.sroa.3154.0.copyload, align 8, !tbaa !109
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.ln = add nuw i64 %.0171, 1
  %i.lo = mul i64 %i.lh, %i.ln
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.lp = phi i64 [ %i.lm, %bb.av ], [ %i.lo, %bb.aw ] ; 3 uses
  %i.lq = icmp ult i64 %i.li, %i.lp
  br i1 %i.lq, label %.lr.ph.i.i92, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98

.lr.ph.i.i92:                                     ; preds = %bb.ax
  %.sroa.6.0.copyload.i.i.i94 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i93, align 8, !tbaa !466
  %i.lr = load ptr, ptr %.sroa.6.0.copyload.i.i.i94, align 8, !tbaa !121 ; 5 uses
  %i.ls = load ptr, ptr %.sroa.5156.0.copyload, align 8, !tbaa !246
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 5 uses
  %i.lu = mul i64 %.0171, %i.lh                   ; 2 uses
  %i.lv = sub i64 %i.lp, %i.lu                    ; 2 uses
  %xtraiter = and i64 %i.lv, 3                    ; 3 uses
  %i.lw = sub i64 %i.lu, %i.lp
  %i.lx = icmp ugt i64 %i.lw, -4
  br i1 %i.lx, label %.epil.preheader, label %.lr.ph.i.i92.new

.lr.ph.i.i92.new:                                 ; preds = %.lr.ph.i.i92
  %unroll_iter = and i64 %i.lv, -4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph.i.i92.new
  %.014.i.i95 = phi i64 [ %i.li, %.lr.ph.i.i92.new ], [ %i.mv, %bb.ay ] ; 6 uses
  %.01113.i.i96 = phi i64 [ 0, %.lr.ph.i.i92.new ], [ %i.mt, %bb.ay ]
  %niter = phi i64 [ 0, %.lr.ph.i.i92.new ], [ %niter.next.3, %bb.ay ]
  %.sroa.0.0.copyload1.i.i.i97 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.ly = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97
  %i.lz = getelementptr [8 x i8], ptr %i.ly, i64 %.014.i.i95
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !109
  %i.mb = add i64 %i.ma, %.01113.i.i96            ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.014.i.i95
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !109
  %i.md = add nuw i64 %.014.i.i95, 1              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.1 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.me = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.1
  %i.mf = getelementptr [8 x i8], ptr %i.me, i64 %i.md
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !109
  %i.mh = add i64 %i.mg, %i.mb                    ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.md
  store i64 %i.mh, ptr %i.mi, align 8, !tbaa !109
  %i.mj = add nuw i64 %.014.i.i95, 2              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.2 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mk = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.2
  %i.ml = getelementptr [8 x i8], ptr %i.mk, i64 %i.mj
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !109
  %i.mn = add i64 %i.mm, %i.mh                    ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.mj
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !109
  %i.mp = add nuw i64 %.014.i.i95, 3              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.3 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mq = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.3
  %i.mr = getelementptr [8 x i8], ptr %i.mq, i64 %i.mp
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !109
  %i.mt = add i64 %i.ms, %i.mn                    ; 3 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.mp
  store i64 %i.mt, ptr %i.mu, align 8, !tbaa !109
  %i.mv = add nuw i64 %.014.i.i95, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98.loopexit.unr-lcssa, label %bb.ay, !llvm.loop !1517

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98.loopexit.unr-lcssa: ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98.loopexit.unr-lcssa, %.lr.ph.i.i92
  %.014.i.i95.epil.init = phi i64 [ %i.li, %.lr.ph.i.i92 ], [ %i.mv, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98.loopexit.unr-lcssa ]
  %.01113.i.i96.epil.init = phi i64 [ 0, %.lr.ph.i.i92 ], [ %i.mt, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98.loopexit.unr-lcssa ]
  %lcmp.mod245 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod245)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader
  %.014.i.i95.epil = phi i64 [ %.014.i.i95.epil.init, %.epil.preheader ], [ %i.nb, %bb.az ] ; 3 uses
  %.01113.i.i96.epil = phi i64 [ %.01113.i.i96.epil.init, %.epil.preheader ], [ %i.mz, %bb.az ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.az ]
  %.sroa.0.0.copyload1.i.i.i97.epil = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mw = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.epil
  %i.mx = getelementptr [8 x i8], ptr %i.mw, i64 %.014.i.i95.epil
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !109
  %i.mz = add i64 %i.my, %.01113.i.i96.epil       ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.014.i.i95.epil
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !109
  %i.nb = add nuw i64 %.014.i.i95.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98, label %bb.az, !llvm.loop !1533

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98.loopexit.unr-lcssa, %bb.az, %bb.ax
  %i.nc = add nuw i64 %.0171, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.nc, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.au, !llvm.loop !1534

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit84, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit77, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit70, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E_clImEEDaSC_.exit, %.preheader169, %.preheader167, %.preheader165, %.preheader163, %.preheader161, %.preheader159, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.ba:                                            ; preds = %bb.k
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  %i.ne = extractvalue { ptr, i32 } %i.nd, 0
  call void @__clang_call_terminate(ptr %i.ne) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNS0_10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_EEvSD_iNS0_5SchedEOSO_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.52", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %.not168 = icmp eq i64 %0, 0
  br i1 %.not168, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph161

.lr.ph161:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !1535, !nonnull !191, !align !496
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1537, !nonnull !191, !align !496
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !191, !align !496
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !191, !align !496
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !191, !align !496
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph161, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E0_clImEEDaSC_.exit
  %.048160 = phi i64 [ 0, %.lr.ph161 ], [ %i.ax, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E0_clImEEDaSC_.exit ] ; 8 uses
  %i.m = shl i64 %.048160, 3                      ; 2 uses
  %i.n = load i64, ptr %i.d, align 8, !tbaa !109  ; 5 uses
  %i.o = mul i64 %i.n, %.048160                   ; 5 uses
  %i.p = load i64, ptr %i.f, align 8, !tbaa !109
  %i.q = add i64 %i.p, -1
  %i.r = icmp eq i64 %.048160, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.h, align 8, !tbaa !109
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.048160, 1
  %i.u = mul i64 %i.n, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = phi i64 [ %i.s, %bb.c ], [ %i.u, %bb.d ] ; 4 uses
  %i.w = icmp ult i64 %i.o, %i.v
  br i1 %i.w, label %.lr.ph.i, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E0_clImEEDaSC_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !470  ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.048160 ; 3 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !246  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = mul i64 %.048160, %i.n
  %i.ac = sub i64 %i.v, %i.ab                     ; 3 uses
  %min.iters.check340 = icmp ult i64 %i.ac, 10
  br i1 %min.iters.check340, label %scalar.ph339.preheader, label %vector.memcheck331

vector.memcheck331:                               ; preds = %.lr.ph.i
  %scevgep332 = getelementptr i8, ptr %i.z, i64 8 ; 2 uses
  %i.ad = mul i64 %i.n, %i.m                      ; 2 uses
  %scevgep333 = getelementptr nuw i8, ptr %scevgep332, i64 %i.ad
  %i.ae = mul i64 %.048160, %i.n
  %i.af = sub i64 %i.v, %i.ae
  %i.ag = shl i64 %i.af, 3
  %i.ah = getelementptr i8, ptr %scevgep332, i64 %i.ad
  %scevgep334 = getelementptr i8, ptr %i.ah, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.m
  %scevgep335 = getelementptr i8, ptr %i.ai, i64 8
  %bound0336 = icmp ult ptr %scevgep333, %scevgep335
  %bound1337 = icmp ult ptr %i.y, %scevgep334
  %found.conflict338 = and i1 %bound0336, %bound1337
  br i1 %found.conflict338, label %scalar.ph339.preheader, label %vector.ph341

vector.ph341:                                     ; preds = %vector.memcheck331
  %n.vec342 = and i64 %i.ac, -4                   ; 3 uses
  %i.aj = add i64 %i.o, %n.vec342
  %i.ak = load i64, ptr %i.y, align 8, !tbaa !109, !alias.scope !1538
  %broadcast.splatinsert347 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat348 = shufflevector <2 x i64> %broadcast.splatinsert347, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.o
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body343, %vector.ph341
  %index344 = phi i64 [ 0, %vector.ph341 ], [ %index.next349, %vector.body343 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index344 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load345 = load <2 x i64>, ptr %i.am, align 8, !tbaa !109, !alias.scope !1541, !noalias !1538
  %wide.load346 = load <2 x i64>, ptr %i.an, align 8, !tbaa !109, !alias.scope !1541, !noalias !1538
  %i.ao = add <2 x i64> %wide.load345, %broadcast.splat348
  %i.ap = add <2 x i64> %wide.load346, %broadcast.splat348
  store <2 x i64> %i.ao, ptr %i.am, align 8, !tbaa !109, !alias.scope !1541, !noalias !1538
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !109, !alias.scope !1541, !noalias !1538
  %index.next349 = add nuw i64 %index344, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next349, %n.vec342
  br i1 %i.aq, label %middle.block350, label %vector.body343, !llvm.loop !1543

middle.block350:                                  ; preds = %vector.body343
  %cmp.n351 = icmp eq i64 %i.ac, %n.vec342
  br i1 %cmp.n351, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E0_clImEEDaSC_.exit, label %scalar.ph339.preheader

scalar.ph339.preheader:                           ; preds = %vector.memcheck331, %.lr.ph.i, %middle.block350
  %.010.i.ph = phi i64 [ %i.o, %vector.memcheck331 ], [ %i.o, %.lr.ph.i ], [ %i.aj, %middle.block350 ]
  br label %scalar.ph339

scalar.ph339:                                     ; preds = %scalar.ph339.preheader, %scalar.ph339
  %.010.i = phi i64 [ %i.av, %scalar.ph339 ], [ %.010.i.ph, %scalar.ph339.preheader ] ; 2 uses
  %i.ar = load i64, ptr %i.y, align 8, !tbaa !109
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.010.i ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !109
  %i.au = add i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.as, align 8, !tbaa !109
  %i.av = add nuw i64 %.010.i, 1                  ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.v
  br i1 %i.aw, label %scalar.ph339, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E0_clImEEDaSC_.exit, !llvm.loop !1544

_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E0_clImEEDaSC_.exit: ; preds = %scalar.ph339, %middle.block350, %bb.e
  %i.ax = add nuw i64 %.048160, 1                 ; 2 uses
  %exitcond180.not = icmp eq i64 %i.ax, %0
  br i1 %exitcond180.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.b, !llvm.loop !1545

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !100, !noalias !1546
  store i32 1, ptr %i.b, align 4, !tbaa !100, !noalias !1546
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.f
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.52") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ay = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ay, ptr noundef nonnull @.str.61, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.h

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.az = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.i ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.10, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.62, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bc = load ptr, ptr %5, align 8, !tbaa !201   ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !85
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.bd, i64 noundef %i.bf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.j unwind label %bb.am

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.h ], [ %i.bj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.pr135 = load ptr, ptr %5, align 8, !tbaa !201 ; 4 uses
  %.not.i61 = icmp eq ptr %.pr135, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %.pr135, align 8, !tbaa !82 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.pr135, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !83
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr135, i64 noundef 32) #33
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.k, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  switch i32 %2, label %_ZN4dmlc12OMPExceptionD2Ev.exit [
    i32 0, label %.preheader137
    i32 1, label %bb.q
    i32 2, label %bb.z
    i32 3, label %.preheader147
  ]

.preheader147:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not162 = icmp eq i64 %0, 0
  br i1 %.not162, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader147
  %.sroa.0130.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2131.0.copyload = load ptr, ptr %.sroa.2131.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4133.0.copyload = load ptr, ptr %.sroa.4133.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5134.0.copyload = load ptr, ptr %.sroa.5134.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ai

.preheader137:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not167 = icmp eq i64 %0, 0
  br i1 %.not167, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader137
  %.sroa.082.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !246
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.483.0.copyload = load ptr, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !473
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.584.0.copyload = load ptr, ptr %.sroa.584.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph159, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit
  %.044158 = phi i64 [ 0, %.lr.ph159 ], [ %i.da, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit ] ; 8 uses
  %i.bp = shl i64 %.044158, 3                     ; 2 uses
  %i.bq = load i64, ptr %.sroa.082.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.br = mul i64 %i.bq, %.044158                 ; 5 uses
  %i.bs = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !109
  %i.bt = add i64 %i.bs, -1
  %i.bu = icmp eq i64 %.044158, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !246
  %i.bv = load i64, ptr %.sroa.3.0.copyload, align 8, !tbaa !109
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bw = add nuw i64 %.044158, 1
  %i.bx = mul i64 %i.bq, %i.bw
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.by = phi i64 [ %i.bv, %bb.n ], [ %i.bx, %bb.o ] ; 4 uses
  %i.bz = icmp ult i64 %i.br, %i.by
  br i1 %i.bz, label %.lr.ph.i.i, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.ca = load ptr, ptr %.sroa.584.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.044158 ; 3 uses
  %i.cc = load ptr, ptr %.sroa.483.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = mul i64 %.044158, %i.bq
  %i.cf = sub i64 %i.by, %i.ce                    ; 3 uses
  %min.iters.check318 = icmp ult i64 %i.cf, 10
  br i1 %min.iters.check318, label %scalar.ph317.preheader, label %vector.memcheck309

vector.memcheck309:                               ; preds = %.lr.ph.i.i
  %scevgep310 = getelementptr i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cg = mul i64 %i.bq, %i.bp                    ; 2 uses
  %scevgep311 = getelementptr nuw i8, ptr %scevgep310, i64 %i.cg
  %i.ch = mul i64 %.044158, %i.bq
  %i.ci = sub i64 %i.by, %i.ch
  %i.cj = shl i64 %i.ci, 3
  %i.ck = getelementptr i8, ptr %scevgep310, i64 %i.cg
  %scevgep312 = getelementptr i8, ptr %i.ck, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ca, i64 %i.bp
  %scevgep313 = getelementptr i8, ptr %i.cl, i64 8
  %bound0314 = icmp ult ptr %scevgep311, %scevgep313
  %bound1315 = icmp ult ptr %i.cb, %scevgep312
  %found.conflict316 = and i1 %bound0314, %bound1315
  br i1 %found.conflict316, label %scalar.ph317.preheader, label %vector.ph319

vector.ph319:                                     ; preds = %vector.memcheck309
  %n.vec320 = and i64 %i.cf, -4                   ; 3 uses
  %i.cm = add i64 %i.br, %n.vec320
  %i.cn = load i64, ptr %i.cb, align 8, !tbaa !109, !alias.scope !1549
  %broadcast.splatinsert325 = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat326 = shufflevector <2 x i64> %broadcast.splatinsert325, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.br
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next327, %vector.body321 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %index322 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load323 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !109, !alias.scope !1552, !noalias !1549
  %wide.load324 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !109, !alias.scope !1552, !noalias !1549
  %i.cr = add <2 x i64> %wide.load323, %broadcast.splat326
  %i.cs = add <2 x i64> %wide.load324, %broadcast.splat326
  store <2 x i64> %i.cr, ptr %i.cp, align 8, !tbaa !109, !alias.scope !1552, !noalias !1549
  store <2 x i64> %i.cs, ptr %i.cq, align 8, !tbaa !109, !alias.scope !1552, !noalias !1549
  %index.next327 = add nuw i64 %index322, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next327, %n.vec320
  br i1 %i.ct, label %middle.block328, label %vector.body321, !llvm.loop !1554

middle.block328:                                  ; preds = %vector.body321
  %cmp.n329 = icmp eq i64 %i.cf, %n.vec320
  br i1 %cmp.n329, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit, label %scalar.ph317.preheader

scalar.ph317.preheader:                           ; preds = %vector.memcheck309, %.lr.ph.i.i, %middle.block328
  %.010.i.i.ph = phi i64 [ %i.br, %vector.memcheck309 ], [ %i.br, %.lr.ph.i.i ], [ %i.cm, %middle.block328 ]
  br label %scalar.ph317

scalar.ph317:                                     ; preds = %scalar.ph317.preheader, %scalar.ph317
  %.010.i.i = phi i64 [ %i.cy, %scalar.ph317 ], [ %.010.i.i.ph, %scalar.ph317.preheader ] ; 2 uses
  %i.cu = load i64, ptr %i.cb, align 8, !tbaa !109
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.010.i.i ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !109
  %i.cx = add i64 %i.cw, %i.cu
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !109
  %i.cy = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.by
  br i1 %i.cz, label %scalar.ph317, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit, !llvm.loop !1555

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit: ; preds = %scalar.ph317, %middle.block328, %bb.p
  %i.da = add nuw i64 %.044158, 1                 ; 2 uses
  %exitcond179.not = icmp eq i64 %i.da, %0
  br i1 %exitcond179.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.m, !llvm.loop !1556

bb.q:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.db = icmp eq i64 %3, 0
  %.not166 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.db, label %.preheader139, label %.preheader141

.preheader141:                                    ; preds = %bb.q
  br i1 %.not166, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.preheader141
  %.sroa.0100.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2101.0.copyload = load ptr, ptr %.sroa.2101.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4103.0.copyload = load ptr, ptr %.sroa.4103.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5104.0.copyload = load ptr, ptr %.sroa.5104.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.v

.preheader139:                                    ; preds = %bb.q
  br i1 %.not166, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader139
  %.sroa.090.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.291.0.copyload = load ptr, ptr %.sroa.291.0..sroa_idx, align 8, !tbaa !246
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.493.0.copyload = load ptr, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !473
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.594.0.copyload = load ptr, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !476
  %.sroa.392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph157, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit64
  %.043156 = phi i64 [ 0, %.lr.ph157 ], [ %i.en, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit64 ] ; 8 uses
  %i.dc = shl i64 %.043156, 3                     ; 2 uses
  %i.dd = load i64, ptr %.sroa.090.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.de = mul i64 %i.dd, %.043156                 ; 5 uses
  %i.df = load i64, ptr %.sroa.291.0.copyload, align 8, !tbaa !109
  %i.dg = add i64 %i.df, -1
  %i.dh = icmp eq i64 %.043156, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.392.0.copyload = load ptr, ptr %.sroa.392.0..sroa_idx, align 8, !tbaa !246
  %i.di = load i64, ptr %.sroa.392.0.copyload, align 8, !tbaa !109
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dj = add nuw i64 %.043156, 1
  %i.dk = mul i64 %i.dd, %i.dj
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dl = phi i64 [ %i.di, %bb.s ], [ %i.dk, %bb.t ] ; 4 uses
  %i.dm = icmp ult i64 %i.de, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i62, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit64

.lr.ph.i.i62:                                     ; preds = %bb.u
  %i.dn = load ptr, ptr %.sroa.594.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.043156 ; 3 uses
  %i.dp = load ptr, ptr %.sroa.493.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = mul i64 %.043156, %i.dd
  %i.ds = sub i64 %i.dl, %i.dr                    ; 3 uses
  %min.iters.check296 = icmp ult i64 %i.ds, 10
  br i1 %min.iters.check296, label %scalar.ph295.preheader, label %vector.memcheck287

vector.memcheck287:                               ; preds = %.lr.ph.i.i62
  %scevgep288 = getelementptr i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dt = mul i64 %i.dd, %i.dc                    ; 2 uses
  %scevgep289 = getelementptr nuw i8, ptr %scevgep288, i64 %i.dt
  %i.du = mul i64 %.043156, %i.dd
  %i.dv = sub i64 %i.dl, %i.du
  %i.dw = shl i64 %i.dv, 3
  %i.dx = getelementptr i8, ptr %scevgep288, i64 %i.dt
  %scevgep290 = getelementptr i8, ptr %i.dx, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dn, i64 %i.dc
  %scevgep291 = getelementptr i8, ptr %i.dy, i64 8
  %bound0292 = icmp ult ptr %scevgep289, %scevgep291
  %bound1293 = icmp ult ptr %i.do, %scevgep290
  %found.conflict294 = and i1 %bound0292, %bound1293
  br i1 %found.conflict294, label %scalar.ph295.preheader, label %vector.ph297

vector.ph297:                                     ; preds = %vector.memcheck287
  %n.vec298 = and i64 %i.ds, -4                   ; 3 uses
  %i.dz = add i64 %i.de, %n.vec298
  %i.ea = load i64, ptr %i.do, align 8, !tbaa !109, !alias.scope !1557
  %broadcast.splatinsert303 = insertelement <2 x i64> poison, i64 %i.ea, i64 0
  %broadcast.splat304 = shufflevector <2 x i64> %broadcast.splatinsert303, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.de
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index300 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %wide.load301 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !109, !alias.scope !1560, !noalias !1557
  %wide.load302 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !109, !alias.scope !1560, !noalias !1557
  %i.ee = add <2 x i64> %wide.load301, %broadcast.splat304
  %i.ef = add <2 x i64> %wide.load302, %broadcast.splat304
  store <2 x i64> %i.ee, ptr %i.ec, align 8, !tbaa !109, !alias.scope !1560, !noalias !1557
  store <2 x i64> %i.ef, ptr %i.ed, align 8, !tbaa !109, !alias.scope !1560, !noalias !1557
  %index.next305 = add nuw i64 %index300, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.eg, label %middle.block306, label %vector.body299, !llvm.loop !1562

middle.block306:                                  ; preds = %vector.body299
  %cmp.n307 = icmp eq i64 %i.ds, %n.vec298
  br i1 %cmp.n307, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit64, label %scalar.ph295.preheader

scalar.ph295.preheader:                           ; preds = %vector.memcheck287, %.lr.ph.i.i62, %middle.block306
  %.010.i.i63.ph = phi i64 [ %i.de, %vector.memcheck287 ], [ %i.de, %.lr.ph.i.i62 ], [ %i.dz, %middle.block306 ]
  br label %scalar.ph295

scalar.ph295:                                     ; preds = %scalar.ph295.preheader, %scalar.ph295
  %.010.i.i63 = phi i64 [ %i.el, %scalar.ph295 ], [ %.010.i.i63.ph, %scalar.ph295.preheader ] ; 2 uses
  %i.eh = load i64, ptr %i.do, align 8, !tbaa !109
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.010.i.i63 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !109
  %i.ek = add i64 %i.ej, %i.eh
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !109
  %i.el = add nuw i64 %.010.i.i63, 1              ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.dl
  br i1 %i.em, label %scalar.ph295, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit64, !llvm.loop !1563

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit64: ; preds = %scalar.ph295, %middle.block306, %bb.u
  %i.en = add nuw i64 %.043156, 1                 ; 2 uses
  %exitcond178.not = icmp eq i64 %i.en, %0
  br i1 %exitcond178.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.r, !llvm.loop !1564

bb.v:                                             ; preds = %.lr.ph155, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit67
  %.042154 = phi i64 [ 0, %.lr.ph155 ], [ %i.fz, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit67 ] ; 8 uses
  %i.eo = shl i64 %.042154, 3                     ; 2 uses
  %i.ep = load i64, ptr %.sroa.0100.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.eq = mul i64 %i.ep, %.042154                 ; 5 uses
  %i.er = load i64, ptr %.sroa.2101.0.copyload, align 8, !tbaa !109
  %i.es = add i64 %i.er, -1
  %i.et = icmp eq i64 %.042154, %i.es
  br i1 %i.et, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.3102.0.copyload = load ptr, ptr %.sroa.3102.0..sroa_idx, align 8, !tbaa !246
  %i.eu = load i64, ptr %.sroa.3102.0.copyload, align 8, !tbaa !109
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ev = add nuw i64 %.042154, 1
  %i.ew = mul i64 %i.ep, %i.ev
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ex = phi i64 [ %i.eu, %bb.w ], [ %i.ew, %bb.x ] ; 4 uses
  %i.ey = icmp ult i64 %i.eq, %i.ex
  br i1 %i.ey, label %.lr.ph.i.i65, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit67

.lr.ph.i.i65:                                     ; preds = %bb.y
  %i.ez = load ptr, ptr %.sroa.5104.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.042154 ; 3 uses
  %i.fb = load ptr, ptr %.sroa.4103.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = mul i64 %.042154, %i.ep
  %i.fe = sub i64 %i.ex, %i.fd                    ; 3 uses
  %min.iters.check274 = icmp ult i64 %i.fe, 10
  br i1 %min.iters.check274, label %scalar.ph273.preheader, label %vector.memcheck265

vector.memcheck265:                               ; preds = %.lr.ph.i.i65
  %scevgep266 = getelementptr i8, ptr %i.fb, i64 8 ; 2 uses
  %i.ff = mul i64 %i.ep, %i.eo                    ; 2 uses
  %scevgep267 = getelementptr nuw i8, ptr %scevgep266, i64 %i.ff
  %i.fg = mul i64 %.042154, %i.ep
  %i.fh = sub i64 %i.ex, %i.fg
  %i.fi = shl i64 %i.fh, 3
  %i.fj = getelementptr i8, ptr %scevgep266, i64 %i.ff
  %scevgep268 = getelementptr i8, ptr %i.fj, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.ez, i64 %i.eo
  %scevgep269 = getelementptr i8, ptr %i.fk, i64 8
  %bound0270 = icmp ult ptr %scevgep267, %scevgep269
  %bound1271 = icmp ult ptr %i.fa, %scevgep268
  %found.conflict272 = and i1 %bound0270, %bound1271
  br i1 %found.conflict272, label %scalar.ph273.preheader, label %vector.ph275

vector.ph275:                                     ; preds = %vector.memcheck265
  %n.vec276 = and i64 %i.fe, -4                   ; 3 uses
  %i.fl = add i64 %i.eq, %n.vec276
  %i.fm = load i64, ptr %i.fa, align 8, !tbaa !109, !alias.scope !1565
  %broadcast.splatinsert281 = insertelement <2 x i64> poison, i64 %i.fm, i64 0
  %broadcast.splat282 = shufflevector <2 x i64> %broadcast.splatinsert281, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.eq
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph275
  %index278 = phi i64 [ 0, %vector.ph275 ], [ %index.next283, %vector.body277 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %index278 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %wide.load279 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !109, !alias.scope !1568, !noalias !1565
  %wide.load280 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !109, !alias.scope !1568, !noalias !1565
  %i.fq = add <2 x i64> %wide.load279, %broadcast.splat282
  %i.fr = add <2 x i64> %wide.load280, %broadcast.splat282
  store <2 x i64> %i.fq, ptr %i.fo, align 8, !tbaa !109, !alias.scope !1568, !noalias !1565
  store <2 x i64> %i.fr, ptr %i.fp, align 8, !tbaa !109, !alias.scope !1568, !noalias !1565
  %index.next283 = add nuw i64 %index278, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next283, %n.vec276
  br i1 %i.fs, label %middle.block284, label %vector.body277, !llvm.loop !1570

middle.block284:                                  ; preds = %vector.body277
  %cmp.n285 = icmp eq i64 %i.fe, %n.vec276
  br i1 %cmp.n285, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit67, label %scalar.ph273.preheader

scalar.ph273.preheader:                           ; preds = %vector.memcheck265, %.lr.ph.i.i65, %middle.block284
  %.010.i.i66.ph = phi i64 [ %i.eq, %vector.memcheck265 ], [ %i.eq, %.lr.ph.i.i65 ], [ %i.fl, %middle.block284 ]
  br label %scalar.ph273

scalar.ph273:                                     ; preds = %scalar.ph273.preheader, %scalar.ph273
  %.010.i.i66 = phi i64 [ %i.fx, %scalar.ph273 ], [ %.010.i.i66.ph, %scalar.ph273.preheader ] ; 2 uses
  %i.ft = load i64, ptr %i.fa, align 8, !tbaa !109
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.010.i.i66 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !109
  %i.fw = add i64 %i.fv, %i.ft
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !109
  %i.fx = add nuw i64 %.010.i.i66, 1              ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.ex
  br i1 %i.fy, label %scalar.ph273, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit67, !llvm.loop !1571

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit67: ; preds = %scalar.ph273, %middle.block284, %bb.y
  %i.fz = add nuw i64 %.042154, 1                 ; 2 uses
  %exitcond177.not = icmp eq i64 %i.fz, %0
  br i1 %exitcond177.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.v, !llvm.loop !1572

bb.z:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ga = icmp eq i64 %3, 0
  %.not164 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.ga, label %.preheader143, label %.preheader145

.preheader145:                                    ; preds = %bb.z
  br i1 %.not164, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph151

.lr.ph151:                                        ; preds = %.preheader145
  %.sroa.0120.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2121.0.copyload = load ptr, ptr %.sroa.2121.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4123.0.copyload = load ptr, ptr %.sroa.4123.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5124.0.copyload = load ptr, ptr %.sroa.5124.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ae

.preheader143:                                    ; preds = %bb.z
  br i1 %.not164, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph153

.lr.ph153:                                        ; preds = %.preheader143
  %.sroa.0110.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2111.0.copyload = load ptr, ptr %.sroa.2111.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4113.0.copyload = load ptr, ptr %.sroa.4113.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5114.0.copyload = load ptr, ptr %.sroa.5114.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph153, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit70
  %.041152 = phi i64 [ 0, %.lr.ph153 ], [ %i.hm, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit70 ] ; 8 uses
  %i.gb = shl i64 %.041152, 3                     ; 2 uses
  %i.gc = load i64, ptr %.sroa.0110.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.gd = mul i64 %i.gc, %.041152                 ; 5 uses
  %i.ge = load i64, ptr %.sroa.2111.0.copyload, align 8, !tbaa !109
  %i.gf = add i64 %i.ge, -1
  %i.gg = icmp eq i64 %.041152, %i.gf
  br i1 %i.gg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.3112.0.copyload = load ptr, ptr %.sroa.3112.0..sroa_idx, align 8, !tbaa !246
  %i.gh = load i64, ptr %.sroa.3112.0.copyload, align 8, !tbaa !109
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gi = add nuw i64 %.041152, 1
  %i.gj = mul i64 %i.gc, %i.gi
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gk = phi i64 [ %i.gh, %bb.ab ], [ %i.gj, %bb.ac ] ; 4 uses
  %i.gl = icmp ult i64 %i.gd, %i.gk
  br i1 %i.gl, label %.lr.ph.i.i68, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit70

.lr.ph.i.i68:                                     ; preds = %bb.ad
  %i.gm = load ptr, ptr %.sroa.5114.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.041152 ; 3 uses
  %i.go = load ptr, ptr %.sroa.4113.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gq = mul i64 %.041152, %i.gc
  %i.gr = sub i64 %i.gk, %i.gq                    ; 3 uses
  %min.iters.check252 = icmp ult i64 %i.gr, 10
  br i1 %min.iters.check252, label %scalar.ph251.preheader, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph.i.i68
  %scevgep244 = getelementptr i8, ptr %i.go, i64 8 ; 2 uses
  %i.gs = mul i64 %i.gc, %i.gb                    ; 2 uses
  %scevgep245 = getelementptr nuw i8, ptr %scevgep244, i64 %i.gs
  %i.gt = mul i64 %.041152, %i.gc
  %i.gu = sub i64 %i.gk, %i.gt
  %i.gv = shl i64 %i.gu, 3
  %i.gw = getelementptr i8, ptr %scevgep244, i64 %i.gs
  %scevgep246 = getelementptr i8, ptr %i.gw, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gm, i64 %i.gb
  %scevgep247 = getelementptr i8, ptr %i.gx, i64 8
  %bound0248 = icmp ult ptr %scevgep245, %scevgep247
  %bound1249 = icmp ult ptr %i.gn, %scevgep246
  %found.conflict250 = and i1 %bound0248, %bound1249
  br i1 %found.conflict250, label %scalar.ph251.preheader, label %vector.ph253

vector.ph253:                                     ; preds = %vector.memcheck243
  %n.vec254 = and i64 %i.gr, -4                   ; 3 uses
  %i.gy = add i64 %i.gd, %n.vec254
  %i.gz = load i64, ptr %i.gn, align 8, !tbaa !109, !alias.scope !1573
  %broadcast.splatinsert259 = insertelement <2 x i64> poison, i64 %i.gz, i64 0
  %broadcast.splat260 = shufflevector <2 x i64> %broadcast.splatinsert259, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gd
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph253
  %index256 = phi i64 [ 0, %vector.ph253 ], [ %index.next261, %vector.body255 ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %index256 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %wide.load257 = load <2 x i64>, ptr %i.hb, align 8, !tbaa !109, !alias.scope !1576, !noalias !1573
  %wide.load258 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !109, !alias.scope !1576, !noalias !1573
  %i.hd = add <2 x i64> %wide.load257, %broadcast.splat260
  %i.he = add <2 x i64> %wide.load258, %broadcast.splat260
  store <2 x i64> %i.hd, ptr %i.hb, align 8, !tbaa !109, !alias.scope !1576, !noalias !1573
  store <2 x i64> %i.he, ptr %i.hc, align 8, !tbaa !109, !alias.scope !1576, !noalias !1573
  %index.next261 = add nuw i64 %index256, 4       ; 2 uses
  %i.hf = icmp eq i64 %index.next261, %n.vec254
  br i1 %i.hf, label %middle.block262, label %vector.body255, !llvm.loop !1578

middle.block262:                                  ; preds = %vector.body255
  %cmp.n263 = icmp eq i64 %i.gr, %n.vec254
  br i1 %cmp.n263, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit70, label %scalar.ph251.preheader

scalar.ph251.preheader:                           ; preds = %vector.memcheck243, %.lr.ph.i.i68, %middle.block262
  %.010.i.i69.ph = phi i64 [ %i.gd, %vector.memcheck243 ], [ %i.gd, %.lr.ph.i.i68 ], [ %i.gy, %middle.block262 ]
  br label %scalar.ph251

scalar.ph251:                                     ; preds = %scalar.ph251.preheader, %scalar.ph251
  %.010.i.i69 = phi i64 [ %i.hk, %scalar.ph251 ], [ %.010.i.i69.ph, %scalar.ph251.preheader ] ; 2 uses
  %i.hg = load i64, ptr %i.gn, align 8, !tbaa !109
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.010.i.i69 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !109
  %i.hj = add i64 %i.hi, %i.hg
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !109
  %i.hk = add nuw i64 %.010.i.i69, 1              ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.gk
  br i1 %i.hl, label %scalar.ph251, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit70, !llvm.loop !1579

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit70: ; preds = %scalar.ph251, %middle.block262, %bb.ad
  %i.hm = add nuw i64 %.041152, 1                 ; 2 uses
  %exitcond176.not = icmp eq i64 %i.hm, %0
  br i1 %exitcond176.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.aa, !llvm.loop !1580

bb.ae:                                            ; preds = %.lr.ph151, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit73
  %.040150 = phi i64 [ 0, %.lr.ph151 ], [ %i.iy, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit73 ] ; 8 uses
  %i.hn = shl i64 %.040150, 3                     ; 2 uses
  %i.ho = load i64, ptr %.sroa.0120.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.hp = mul i64 %i.ho, %.040150                 ; 5 uses
  %i.hq = load i64, ptr %.sroa.2121.0.copyload, align 8, !tbaa !109
  %i.hr = add i64 %i.hq, -1
  %i.hs = icmp eq i64 %.040150, %i.hr
  br i1 %i.hs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.3122.0.copyload = load ptr, ptr %.sroa.3122.0..sroa_idx, align 8, !tbaa !246
  %i.ht = load i64, ptr %.sroa.3122.0.copyload, align 8, !tbaa !109
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.hu = add nuw i64 %.040150, 1
  %i.hv = mul i64 %i.ho, %i.hu
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hw = phi i64 [ %i.ht, %bb.af ], [ %i.hv, %bb.ag ] ; 4 uses
  %i.hx = icmp ult i64 %i.hp, %i.hw
  br i1 %i.hx, label %.lr.ph.i.i71, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit73

.lr.ph.i.i71:                                     ; preds = %bb.ah
  %i.hy = load ptr, ptr %.sroa.5124.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %.040150 ; 3 uses
  %i.ia = load ptr, ptr %.sroa.4123.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ic = mul i64 %.040150, %i.ho
  %i.id = sub i64 %i.hw, %i.ic                    ; 3 uses
  %min.iters.check230 = icmp ult i64 %i.id, 10
  br i1 %min.iters.check230, label %scalar.ph229.preheader, label %vector.memcheck221

vector.memcheck221:                               ; preds = %.lr.ph.i.i71
  %scevgep222 = getelementptr i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ie = mul i64 %i.ho, %i.hn                    ; 2 uses
  %scevgep223 = getelementptr nuw i8, ptr %scevgep222, i64 %i.ie
  %i.if = mul i64 %.040150, %i.ho
  %i.ig = sub i64 %i.hw, %i.if
  %i.ih = shl i64 %i.ig, 3
  %i.ii = getelementptr i8, ptr %scevgep222, i64 %i.ie
  %scevgep224 = getelementptr i8, ptr %i.ii, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.hy, i64 %i.hn
  %scevgep225 = getelementptr i8, ptr %i.ij, i64 8
  %bound0226 = icmp ult ptr %scevgep223, %scevgep225
  %bound1227 = icmp ult ptr %i.hz, %scevgep224
  %found.conflict228 = and i1 %bound0226, %bound1227
  br i1 %found.conflict228, label %scalar.ph229.preheader, label %vector.ph231

vector.ph231:                                     ; preds = %vector.memcheck221
  %n.vec232 = and i64 %i.id, -4                   ; 3 uses
  %i.ik = add i64 %i.hp, %n.vec232
  %i.il = load i64, ptr %i.hz, align 8, !tbaa !109, !alias.scope !1581
  %broadcast.splatinsert237 = insertelement <2 x i64> poison, i64 %i.il, i64 0
  %broadcast.splat238 = shufflevector <2 x i64> %broadcast.splatinsert237, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hp
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index234 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %wide.load235 = load <2 x i64>, ptr %i.in, align 8, !tbaa !109, !alias.scope !1584, !noalias !1581
  %wide.load236 = load <2 x i64>, ptr %i.io, align 8, !tbaa !109, !alias.scope !1584, !noalias !1581
  %i.ip = add <2 x i64> %wide.load235, %broadcast.splat238
  %i.iq = add <2 x i64> %wide.load236, %broadcast.splat238
  store <2 x i64> %i.ip, ptr %i.in, align 8, !tbaa !109, !alias.scope !1584, !noalias !1581
  store <2 x i64> %i.iq, ptr %i.io, align 8, !tbaa !109, !alias.scope !1584, !noalias !1581
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.ir, label %middle.block240, label %vector.body233, !llvm.loop !1586

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.id, %n.vec232
  br i1 %cmp.n241, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit73, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %vector.memcheck221, %.lr.ph.i.i71, %middle.block240
  %.010.i.i72.ph = phi i64 [ %i.hp, %vector.memcheck221 ], [ %i.hp, %.lr.ph.i.i71 ], [ %i.ik, %middle.block240 ]
  br label %scalar.ph229

scalar.ph229:                                     ; preds = %scalar.ph229.preheader, %scalar.ph229
  %.010.i.i72 = phi i64 [ %i.iw, %scalar.ph229 ], [ %.010.i.i72.ph, %scalar.ph229.preheader ] ; 2 uses
  %i.is = load i64, ptr %i.hz, align 8, !tbaa !109
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.010.i.i72 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !109
  %i.iv = add i64 %i.iu, %i.is
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !109
  %i.iw = add nuw i64 %.010.i.i72, 1              ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.hw
  br i1 %i.ix, label %scalar.ph229, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit73, !llvm.loop !1587

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit73: ; preds = %scalar.ph229, %middle.block240, %bb.ah
  %i.iy = add nuw i64 %.040150, 1                 ; 2 uses
  %exitcond175.not = icmp eq i64 %i.iy, %0
  br i1 %exitcond175.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ae, !llvm.loop !1588

bb.ai:                                            ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit76
  %.0149 = phi i64 [ 0, %.lr.ph ], [ %i.kk, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit76 ] ; 8 uses
  %i.iz = shl i64 %.0149, 3                       ; 2 uses
  %i.ja = load i64, ptr %.sroa.0130.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.jb = mul i64 %i.ja, %.0149                   ; 5 uses
  %i.jc = load i64, ptr %.sroa.2131.0.copyload, align 8, !tbaa !109
  %i.jd = add i64 %i.jc, -1
  %i.je = icmp eq i64 %.0149, %i.jd
  br i1 %i.je, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.sroa.3132.0.copyload = load ptr, ptr %.sroa.3132.0..sroa_idx, align 8, !tbaa !246
  %i.jf = load i64, ptr %.sroa.3132.0.copyload, align 8, !tbaa !109
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.jg = add nuw i64 %.0149, 1
  %i.jh = mul i64 %i.ja, %i.jg
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ji = phi i64 [ %i.jf, %bb.aj ], [ %i.jh, %bb.ak ] ; 4 uses
  %i.jj = icmp ult i64 %i.jb, %i.ji
  br i1 %i.jj, label %.lr.ph.i.i74, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit76

.lr.ph.i.i74:                                     ; preds = %bb.al
  %i.jk = load ptr, ptr %.sroa.5134.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %.0149 ; 3 uses
  %i.jm = load ptr, ptr %.sroa.4133.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jo = mul i64 %.0149, %i.ja
  %i.jp = sub i64 %i.ji, %i.jo                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.jp, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i74
  %scevgep = getelementptr i8, ptr %i.jm, i64 8   ; 2 uses
  %i.jq = mul i64 %i.ja, %i.iz                    ; 2 uses
  %scevgep217 = getelementptr nuw i8, ptr %scevgep, i64 %i.jq
  %i.jr = mul i64 %.0149, %i.ja
  %i.js = sub i64 %i.ji, %i.jr
  %i.jt = shl i64 %i.js, 3
  %i.ju = getelementptr i8, ptr %scevgep, i64 %i.jq
  %scevgep218 = getelementptr i8, ptr %i.ju, i64 %i.jt
  %i.jv = getelementptr i8, ptr %i.jk, i64 %i.iz
  %scevgep219 = getelementptr i8, ptr %i.jv, i64 8
  %bound0 = icmp ult ptr %scevgep217, %scevgep219
  %bound1 = icmp ult ptr %i.jl, %scevgep218
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jp, -4                      ; 3 uses
  %i.jw = add i64 %i.jb, %n.vec
  %i.jx = load i64, ptr %i.jl, align 8, !tbaa !109, !alias.scope !1589
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.jx, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %index ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.jz, align 8, !tbaa !109, !alias.scope !1592, !noalias !1589
  %wide.load220 = load <2 x i64>, ptr %i.ka, align 8, !tbaa !109, !alias.scope !1592, !noalias !1589
  %i.kb = add <2 x i64> %wide.load, %broadcast.splat
  %i.kc = add <2 x i64> %wide.load220, %broadcast.splat
  store <2 x i64> %i.kb, ptr %i.jz, align 8, !tbaa !109, !alias.scope !1592, !noalias !1589
  store <2 x i64> %i.kc, ptr %i.ka, align 8, !tbaa !109, !alias.scope !1592, !noalias !1589
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !1594

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jp, %n.vec
  br i1 %cmp.n, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit76, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i74, %middle.block
  %.010.i.i75.ph = phi i64 [ %i.jb, %vector.memcheck ], [ %i.jb, %.lr.ph.i.i74 ], [ %i.jw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.010.i.i75 = phi i64 [ %i.ki, %scalar.ph ], [ %.010.i.i75.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ke = load i64, ptr %i.jl, align 8, !tbaa !109
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.010.i.i75 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !109
  %i.kh = add i64 %i.kg, %i.ke
  store i64 %i.kh, ptr %i.kf, align 8, !tbaa !109
  %i.ki = add nuw i64 %.010.i.i75, 1              ; 2 uses
  %i.kj = icmp ult i64 %i.ki, %i.ji
  br i1 %i.kj, label %scalar.ph, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit76, !llvm.loop !1595

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit76: ; preds = %scalar.ph, %middle.block, %bb.al
  %i.kk = add nuw i64 %.0149, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.kk, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ai, !llvm.loop !1596

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit76, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit73, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit70, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit67, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit64, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_11CatAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E0_clImEEDaSC_.exit, %.preheader147, %.preheader145, %.preheader143, %.preheader141, %.preheader139, %.preheader137, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.am:                                            ; preds = %bb.i
  %i.kl = landingpad { ptr, i32 }
          catch ptr null
  %i.km = extractvalue { ptr, i32 } %i.kl, 0
  call void @__clang_call_terminate(ptr %i.km) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS_16GHistIndexMatrix13PushBatchImplINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEERNS4_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEEUlSD_E_EEDaNS0_11BinTypeSizeEOSD_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.xgboost::common::Index::CompressBin.203", align 8 ; 4 uses
  %3 = alloca %"struct.xgboost::common::Index::CompressBin.203", align 8 ; 4 uses
  %4 = alloca %"struct.xgboost::common::Index::CompressBin.201", align 8 ; 4 uses
  %5 = alloca %"struct.xgboost::common::Index::CompressBin", align 8 ; 4 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.h [
    i8 1, label %bb.b
    i8 2, label %bb.d
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !1490   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !303  ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !645  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.g = load i8, ptr %i.f, align 8, !tbaa !301
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = icmp ne ptr %i.d, null
  %i.j = icmp ult i64 %i.e, %i.h
  %i.k = or i1 %i.i, %i.j
  br i1 %i.k, label %_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlSB_E_clIhEEDaSB_.exit, label %bb.c, !prof !249

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlSB_E_clIhEEDaSB_.exit: ; preds = %bb.b
  %i.l = udiv i64 %i.e, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1597, !nonnull !191, !align !496
  %i.o = load i64, ptr %i.n, align 8, !tbaa !109
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1598, !nonnull !191, !align !496 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1599, !nonnull !191, !align !496
  %i.t = load i64, ptr %i.s, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1600, !nonnull !191, !align !496
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1601, !nonnull !191, !align !501
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1602, !nonnull !191, !align !501
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !100
  %i.ab = sext i32 %i.aa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !239
  store ptr %i.ad, ptr %5, align 8
  call void @_ZN7xgboost16GHistIndexMatrix12SetIndexDataINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEEhNS_6common5Index11CompressBinIhEERNS2_14IsValidFunctorEEEvNS6_4SpanIT0_Lm18446744073709551615EEEmNSC_IKNS_11FeatureTypeELm18446744073709551615EEEmRKT_OT2_mOT1_(ptr noundef nonnull align 8 dereferenceable(225) %i.a, i64 %i.l, ptr %i.d, i64 noundef %i.o, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.x, i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %1, align 8, !tbaa !1490  ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !303 ; 2 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !645 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !301
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = icmp ne ptr %i.ah, null
  %i.an = icmp ult i64 %i.ai, %i.al
  %i.ao = or i1 %i.am, %i.an
  br i1 %i.ao, label %_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlSB_E_clItEEDaSB_.exit, label %bb.e, !prof !249

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data27EncColumnarAdapterBatchImplINS_11CatAccessorEEERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlSB_E_clItEEDaSB_.exit: ; preds = %bb.d
  %i.ap = udiv i64 %i.ai, %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1597, !nonnull !191, !align !496
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !109
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1598, !nonnull !191, !align !496 ; 2 uses
  %.sroa.0.0.copyload.i6 = load i64, ptr %i.au, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.2.0.copyload.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i7, align 8, !tbaa !124
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1599, !nonnull !191, !align !496
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !109
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1600, !nonnull !191, !align !496
end_hunk_3
begin_hunk_4_@_ZN7xgboost6common11ParallelForImZNS0_10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E_EEvSD_iNS0_5SchedEOSO_:bb.a
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !109
  %i.kr = add i64 %i.kq, %i.kl                    ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kn
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !109
  %i.kt = add nuw i64 %.014.i.i88, 3              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i90.3 = load i64, ptr %.sroa.4145.0.copyload, align 8, !tbaa !109
  %i.ku = getelementptr [8 x i8], ptr %i.jv, i64 %.sroa.0.0.copyload1.i.i.i90.3
  %i.kv = getelementptr [8 x i8], ptr %i.ku, i64 %i.kt
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !109
  %i.kx = add i64 %i.kw, %i.kr                    ; 3 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kt
  store i64 %i.kx, ptr %i.ky, align 8, !tbaa !109
  %i.kz = add nuw i64 %.014.i.i88, 4              ; 2 uses
  %niter252.next.3 = add i64 %niter252, 4         ; 2 uses
  %niter252.ncmp.3.not = icmp eq i64 %niter252.next.3, %unroll_iter251
  br i1 %niter252.ncmp.3.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91.loopexit.unr-lcssa, label %bb.as, !llvm.loop !1733

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91.loopexit.unr-lcssa: ; preds = %bb.as
  %lcmp.mod249.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod249.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91, label %.epil.preheader246

.epil.preheader246:                               ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91.loopexit.unr-lcssa, %.lr.ph.i.i85
  %.014.i.i88.epil.init = phi i64 [ %i.jm, %.lr.ph.i.i85 ], [ %i.kz, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91.loopexit.unr-lcssa ]
  %.01113.i.i89.epil.init = phi i64 [ 0, %.lr.ph.i.i85 ], [ %i.kx, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91.loopexit.unr-lcssa ]
  %lcmp.mod250 = icmp ne i64 %xtraiter247, 0
  call void @llvm.assume(i1 %lcmp.mod250)
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.epil.preheader246
  %.014.i.i88.epil = phi i64 [ %.014.i.i88.epil.init, %.epil.preheader246 ], [ %i.lf, %bb.at ] ; 3 uses
  %.01113.i.i89.epil = phi i64 [ %.01113.i.i89.epil.init, %.epil.preheader246 ], [ %i.ld, %bb.at ]
  %epil.iter248 = phi i64 [ 0, %.epil.preheader246 ], [ %epil.iter248.next, %bb.at ]
  %.sroa.0.0.copyload1.i.i.i90.epil = load i64, ptr %.sroa.4145.0.copyload, align 8, !tbaa !109
  %i.la = getelementptr [8 x i8], ptr %i.jv, i64 %.sroa.0.0.copyload1.i.i.i90.epil
  %i.lb = getelementptr [8 x i8], ptr %i.la, i64 %.014.i.i88.epil
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !109
  %i.ld = add i64 %i.lc, %.01113.i.i89.epil       ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %.014.i.i88.epil
  store i64 %i.ld, ptr %i.le, align 8, !tbaa !109
  %i.lf = add nuw i64 %.014.i.i88.epil, 1
  %epil.iter248.next = add i64 %epil.iter248, 1   ; 2 uses
  %epil.iter248.cmp.not = icmp eq i64 %epil.iter248.next, %xtraiter247
  br i1 %epil.iter248.cmp.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91, label %bb.at, !llvm.loop !1747

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91.loopexit.unr-lcssa, %bb.at, %bb.ar
  %i.lg = add nuw i64 %.040172, 1                 ; 2 uses
  %exitcond197.not = icmp eq i64 %i.lg, %0
  br i1 %exitcond197.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ao, !llvm.loop !1748

bb.au:                                            ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98
  %.0171 = phi i64 [ 0, %.lr.ph ], [ %i.nc, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98 ] ; 5 uses
  %i.lh = load i64, ptr %.sroa.0152.0.copyload, align 8, !tbaa !109 ; 3 uses
  %i.li = mul i64 %i.lh, %.0171                   ; 3 uses
  %i.lj = load i64, ptr %.sroa.2153.0.copyload, align 8, !tbaa !109
  %i.lk = add i64 %i.lj, -1
  %i.ll = icmp eq i64 %.0171, %i.lk
  br i1 %i.ll, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.sroa.3154.0.copyload = load ptr, ptr %.sroa.3154.0..sroa_idx, align 8, !tbaa !246
  %i.lm = load i64, ptr %.sroa.3154.0.copyload, align 8, !tbaa !109
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.ln = add nuw i64 %.0171, 1
  %i.lo = mul i64 %i.lh, %i.ln
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.lp = phi i64 [ %i.lm, %bb.av ], [ %i.lo, %bb.aw ] ; 3 uses
  %i.lq = icmp ult i64 %i.li, %i.lp
  br i1 %i.lq, label %.lr.ph.i.i92, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98

.lr.ph.i.i92:                                     ; preds = %bb.ax
  %.sroa.6.0.copyload.i.i.i94 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i93, align 8, !tbaa !466
  %i.lr = load ptr, ptr %.sroa.6.0.copyload.i.i.i94, align 8, !tbaa !121 ; 5 uses
  %i.ls = load ptr, ptr %.sroa.5156.0.copyload, align 8, !tbaa !246
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 5 uses
  %i.lu = mul i64 %.0171, %i.lh                   ; 2 uses
  %i.lv = sub i64 %i.lp, %i.lu                    ; 2 uses
  %xtraiter = and i64 %i.lv, 3                    ; 3 uses
  %i.lw = sub i64 %i.lu, %i.lp
  %i.lx = icmp ugt i64 %i.lw, -4
  br i1 %i.lx, label %.epil.preheader, label %.lr.ph.i.i92.new

.lr.ph.i.i92.new:                                 ; preds = %.lr.ph.i.i92
  %unroll_iter = and i64 %i.lv, -4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph.i.i92.new
  %.014.i.i95 = phi i64 [ %i.li, %.lr.ph.i.i92.new ], [ %i.mv, %bb.ay ] ; 6 uses
  %.01113.i.i96 = phi i64 [ 0, %.lr.ph.i.i92.new ], [ %i.mt, %bb.ay ]
  %niter = phi i64 [ 0, %.lr.ph.i.i92.new ], [ %niter.next.3, %bb.ay ]
  %.sroa.0.0.copyload1.i.i.i97 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.ly = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97
  %i.lz = getelementptr [8 x i8], ptr %i.ly, i64 %.014.i.i95
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !109
  %i.mb = add i64 %i.ma, %.01113.i.i96            ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.014.i.i95
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !109
  %i.md = add nuw i64 %.014.i.i95, 1              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.1 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.me = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.1
  %i.mf = getelementptr [8 x i8], ptr %i.me, i64 %i.md
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !109
  %i.mh = add i64 %i.mg, %i.mb                    ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.md
  store i64 %i.mh, ptr %i.mi, align 8, !tbaa !109
  %i.mj = add nuw i64 %.014.i.i95, 2              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.2 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mk = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.2
  %i.ml = getelementptr [8 x i8], ptr %i.mk, i64 %i.mj
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !109
  %i.mn = add i64 %i.mm, %i.mh                    ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.mj
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !109
  %i.mp = add nuw i64 %.014.i.i95, 3              ; 2 uses
  %.sroa.0.0.copyload1.i.i.i97.3 = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mq = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.3
  %i.mr = getelementptr [8 x i8], ptr %i.mq, i64 %i.mp
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !109
  %i.mt = add i64 %i.ms, %i.mn                    ; 3 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.mp
  store i64 %i.mt, ptr %i.mu, align 8, !tbaa !109
  %i.mv = add nuw i64 %.014.i.i95, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98.loopexit.unr-lcssa, label %bb.ay, !llvm.loop !1733

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98.loopexit.unr-lcssa: ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98.loopexit.unr-lcssa, %.lr.ph.i.i92
  %.014.i.i95.epil.init = phi i64 [ %i.li, %.lr.ph.i.i92 ], [ %i.mv, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98.loopexit.unr-lcssa ]
  %.01113.i.i96.epil.init = phi i64 [ 0, %.lr.ph.i.i92 ], [ %i.mt, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98.loopexit.unr-lcssa ]
  %lcmp.mod245 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod245)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader
  %.014.i.i95.epil = phi i64 [ %.014.i.i95.epil.init, %.epil.preheader ], [ %i.nb, %bb.az ] ; 3 uses
  %.01113.i.i96.epil = phi i64 [ %.01113.i.i96.epil.init, %.epil.preheader ], [ %i.mz, %bb.az ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.az ]
  %.sroa.0.0.copyload1.i.i.i97.epil = load i64, ptr %.sroa.4155.0.copyload, align 8, !tbaa !109
  %i.mw = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.0.0.copyload1.i.i.i97.epil
  %i.mx = getelementptr [8 x i8], ptr %i.mw, i64 %.014.i.i95.epil
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !109
  %i.mz = add i64 %i.my, %.01113.i.i96.epil       ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.014.i.i95.epil
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !109
  %i.nb = add nuw i64 %.014.i.i95.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98, label %bb.az, !llvm.loop !1749

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98.loopexit.unr-lcssa, %bb.az, %bb.ax
  %i.nc = add nuw i64 %.0171, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.nc, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.au, !llvm.loop !1750

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit98, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit91, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit84, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit77, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit70, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E_JmEEEvSF_DpT0_.exit, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E_clImEEDaSC_.exit, %.preheader169, %.preheader167, %.preheader165, %.preheader163, %.preheader161, %.preheader159, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.ba:                                            ; preds = %bb.k
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  %i.ne = extractvalue { ptr, i32 } %i.nd, 0
  call void @__clang_call_terminate(ptr %i.ne) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNS0_10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSD_SD_T1_T0_EUlSD_E0_EEvSD_iNS0_5SchedEOSO_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.52", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %.not168 = icmp eq i64 %0, 0
  br i1 %.not168, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph161

.lr.ph161:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !1751, !nonnull !191, !align !496
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1753, !nonnull !191, !align !496
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !191, !align !496
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !191, !align !496
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !191, !align !496
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph161, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E0_clImEEDaSC_.exit
  %.048160 = phi i64 [ 0, %.lr.ph161 ], [ %i.ax, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E0_clImEEDaSC_.exit ] ; 8 uses
  %i.m = shl i64 %.048160, 3                      ; 2 uses
  %i.n = load i64, ptr %i.d, align 8, !tbaa !109  ; 5 uses
  %i.o = mul i64 %i.n, %.048160                   ; 5 uses
  %i.p = load i64, ptr %i.f, align 8, !tbaa !109
  %i.q = add i64 %i.p, -1
  %i.r = icmp eq i64 %.048160, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.h, align 8, !tbaa !109
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.048160, 1
  %i.u = mul i64 %i.n, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = phi i64 [ %i.s, %bb.c ], [ %i.u, %bb.d ] ; 4 uses
  %i.w = icmp ult i64 %i.o, %i.v
  br i1 %i.w, label %.lr.ph.i, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E0_clImEEDaSC_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !470  ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.048160 ; 3 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !246  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = mul i64 %.048160, %i.n
  %i.ac = sub i64 %i.v, %i.ab                     ; 3 uses
  %min.iters.check340 = icmp ult i64 %i.ac, 10
  br i1 %min.iters.check340, label %scalar.ph339.preheader, label %vector.memcheck331

vector.memcheck331:                               ; preds = %.lr.ph.i
  %scevgep332 = getelementptr i8, ptr %i.z, i64 8 ; 2 uses
  %i.ad = mul i64 %i.n, %i.m                      ; 2 uses
  %scevgep333 = getelementptr nuw i8, ptr %scevgep332, i64 %i.ad
  %i.ae = mul i64 %.048160, %i.n
  %i.af = sub i64 %i.v, %i.ae
  %i.ag = shl i64 %i.af, 3
  %i.ah = getelementptr i8, ptr %scevgep332, i64 %i.ad
  %scevgep334 = getelementptr i8, ptr %i.ah, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.m
  %scevgep335 = getelementptr i8, ptr %i.ai, i64 8
  %bound0336 = icmp ult ptr %scevgep333, %scevgep335
  %bound1337 = icmp ult ptr %i.y, %scevgep334
  %found.conflict338 = and i1 %bound0336, %bound1337
  br i1 %found.conflict338, label %scalar.ph339.preheader, label %vector.ph341

vector.ph341:                                     ; preds = %vector.memcheck331
  %n.vec342 = and i64 %i.ac, -4                   ; 3 uses
  %i.aj = add i64 %i.o, %n.vec342
  %i.ak = load i64, ptr %i.y, align 8, !tbaa !109, !alias.scope !1754
  %broadcast.splatinsert347 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat348 = shufflevector <2 x i64> %broadcast.splatinsert347, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.o
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body343, %vector.ph341
  %index344 = phi i64 [ 0, %vector.ph341 ], [ %index.next349, %vector.body343 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index344 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load345 = load <2 x i64>, ptr %i.am, align 8, !tbaa !109, !alias.scope !1757, !noalias !1754
  %wide.load346 = load <2 x i64>, ptr %i.an, align 8, !tbaa !109, !alias.scope !1757, !noalias !1754
  %i.ao = add <2 x i64> %wide.load345, %broadcast.splat348
  %i.ap = add <2 x i64> %wide.load346, %broadcast.splat348
  store <2 x i64> %i.ao, ptr %i.am, align 8, !tbaa !109, !alias.scope !1757, !noalias !1754
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !109, !alias.scope !1757, !noalias !1754
  %index.next349 = add nuw i64 %index344, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next349, %n.vec342
  br i1 %i.aq, label %middle.block350, label %vector.body343, !llvm.loop !1759

middle.block350:                                  ; preds = %vector.body343
  %cmp.n351 = icmp eq i64 %i.ac, %n.vec342
  br i1 %cmp.n351, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E0_clImEEDaSC_.exit, label %scalar.ph339.preheader

scalar.ph339.preheader:                           ; preds = %vector.memcheck331, %.lr.ph.i, %middle.block350
  %.010.i.ph = phi i64 [ %i.o, %vector.memcheck331 ], [ %i.o, %.lr.ph.i ], [ %i.aj, %middle.block350 ]
  br label %scalar.ph339

scalar.ph339:                                     ; preds = %scalar.ph339.preheader, %scalar.ph339
  %.010.i = phi i64 [ %i.av, %scalar.ph339 ], [ %.010.i.ph, %scalar.ph339.preheader ] ; 2 uses
  %i.ar = load i64, ptr %i.y, align 8, !tbaa !109
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.010.i ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !109
  %i.au = add i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.as, align 8, !tbaa !109
  %i.av = add nuw i64 %.010.i, 1                  ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.v
  br i1 %i.aw, label %scalar.ph339, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E0_clImEEDaSC_.exit, !llvm.loop !1760

_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E0_clImEEDaSC_.exit: ; preds = %scalar.ph339, %middle.block350, %bb.e
  %i.ax = add nuw i64 %.048160, 1                 ; 2 uses
  %exitcond180.not = icmp eq i64 %i.ax, %0
  br i1 %exitcond180.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.b, !llvm.loop !1761

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !100, !noalias !1762
  store i32 1, ptr %i.b, align 4, !tbaa !100, !noalias !1762
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.f
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.52") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ay = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ay, ptr noundef nonnull @.str.61, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.h

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.az = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.i ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.10, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.62, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bc = load ptr, ptr %5, align 8, !tbaa !201   ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !85
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.bd, i64 noundef %i.bf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.j unwind label %bb.am

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.h ], [ %i.bj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.pr135 = load ptr, ptr %5, align 8, !tbaa !201 ; 4 uses
  %.not.i61 = icmp eq ptr %.pr135, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %.pr135, align 8, !tbaa !82 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.pr135, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !83
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr135, i64 noundef 32) #33
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.k, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  switch i32 %2, label %_ZN4dmlc12OMPExceptionD2Ev.exit [
    i32 0, label %.preheader137
    i32 1, label %bb.q
    i32 2, label %bb.z
    i32 3, label %.preheader147
  ]

.preheader147:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not162 = icmp eq i64 %0, 0
  br i1 %.not162, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader147
  %.sroa.0130.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2131.0.copyload = load ptr, ptr %.sroa.2131.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4133.0.copyload = load ptr, ptr %.sroa.4133.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5134.0.copyload = load ptr, ptr %.sroa.5134.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ai

.preheader137:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not167 = icmp eq i64 %0, 0
  br i1 %.not167, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader137
  %.sroa.082.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !246
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.483.0.copyload = load ptr, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !473
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.584.0.copyload = load ptr, ptr %.sroa.584.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph159, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit
  %.044158 = phi i64 [ 0, %.lr.ph159 ], [ %i.da, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit ] ; 8 uses
  %i.bp = shl i64 %.044158, 3                     ; 2 uses
  %i.bq = load i64, ptr %.sroa.082.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.br = mul i64 %i.bq, %.044158                 ; 5 uses
  %i.bs = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !109
  %i.bt = add i64 %i.bs, -1
  %i.bu = icmp eq i64 %.044158, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !246
  %i.bv = load i64, ptr %.sroa.3.0.copyload, align 8, !tbaa !109
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bw = add nuw i64 %.044158, 1
  %i.bx = mul i64 %i.bq, %i.bw
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.by = phi i64 [ %i.bv, %bb.n ], [ %i.bx, %bb.o ] ; 4 uses
  %i.bz = icmp ult i64 %i.br, %i.by
  br i1 %i.bz, label %.lr.ph.i.i, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.ca = load ptr, ptr %.sroa.584.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.044158 ; 3 uses
  %i.cc = load ptr, ptr %.sroa.483.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = mul i64 %.044158, %i.bq
  %i.cf = sub i64 %i.by, %i.ce                    ; 3 uses
  %min.iters.check318 = icmp ult i64 %i.cf, 10
  br i1 %min.iters.check318, label %scalar.ph317.preheader, label %vector.memcheck309

vector.memcheck309:                               ; preds = %.lr.ph.i.i
  %scevgep310 = getelementptr i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cg = mul i64 %i.bq, %i.bp                    ; 2 uses
  %scevgep311 = getelementptr nuw i8, ptr %scevgep310, i64 %i.cg
  %i.ch = mul i64 %.044158, %i.bq
  %i.ci = sub i64 %i.by, %i.ch
  %i.cj = shl i64 %i.ci, 3
  %i.ck = getelementptr i8, ptr %scevgep310, i64 %i.cg
  %scevgep312 = getelementptr i8, ptr %i.ck, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ca, i64 %i.bp
  %scevgep313 = getelementptr i8, ptr %i.cl, i64 8
  %bound0314 = icmp ult ptr %scevgep311, %scevgep313
  %bound1315 = icmp ult ptr %i.cb, %scevgep312
  %found.conflict316 = and i1 %bound0314, %bound1315
  br i1 %found.conflict316, label %scalar.ph317.preheader, label %vector.ph319

vector.ph319:                                     ; preds = %vector.memcheck309
  %n.vec320 = and i64 %i.cf, -4                   ; 3 uses
  %i.cm = add i64 %i.br, %n.vec320
  %i.cn = load i64, ptr %i.cb, align 8, !tbaa !109, !alias.scope !1765
  %broadcast.splatinsert325 = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat326 = shufflevector <2 x i64> %broadcast.splatinsert325, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.br
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next327, %vector.body321 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %index322 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load323 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !109, !alias.scope !1768, !noalias !1765
  %wide.load324 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !109, !alias.scope !1768, !noalias !1765
  %i.cr = add <2 x i64> %wide.load323, %broadcast.splat326
  %i.cs = add <2 x i64> %wide.load324, %broadcast.splat326
  store <2 x i64> %i.cr, ptr %i.cp, align 8, !tbaa !109, !alias.scope !1768, !noalias !1765
  store <2 x i64> %i.cs, ptr %i.cq, align 8, !tbaa !109, !alias.scope !1768, !noalias !1765
  %index.next327 = add nuw i64 %index322, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next327, %n.vec320
  br i1 %i.ct, label %middle.block328, label %vector.body321, !llvm.loop !1770

middle.block328:                                  ; preds = %vector.body321
  %cmp.n329 = icmp eq i64 %i.cf, %n.vec320
  br i1 %cmp.n329, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit, label %scalar.ph317.preheader

scalar.ph317.preheader:                           ; preds = %vector.memcheck309, %.lr.ph.i.i, %middle.block328
  %.010.i.i.ph = phi i64 [ %i.br, %vector.memcheck309 ], [ %i.br, %.lr.ph.i.i ], [ %i.cm, %middle.block328 ]
  br label %scalar.ph317

scalar.ph317:                                     ; preds = %scalar.ph317.preheader, %scalar.ph317
  %.010.i.i = phi i64 [ %i.cy, %scalar.ph317 ], [ %.010.i.i.ph, %scalar.ph317.preheader ] ; 2 uses
  %i.cu = load i64, ptr %i.cb, align 8, !tbaa !109
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.010.i.i ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !109
  %i.cx = add i64 %i.cw, %i.cu
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !109
  %i.cy = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.by
  br i1 %i.cz, label %scalar.ph317, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit, !llvm.loop !1771

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit: ; preds = %scalar.ph317, %middle.block328, %bb.p
  %i.da = add nuw i64 %.044158, 1                 ; 2 uses
  %exitcond179.not = icmp eq i64 %i.da, %0
  br i1 %exitcond179.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.m, !llvm.loop !1772

bb.q:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.db = icmp eq i64 %3, 0
  %.not166 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.db, label %.preheader139, label %.preheader141

.preheader141:                                    ; preds = %bb.q
  br i1 %.not166, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.preheader141
  %.sroa.0100.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2101.0.copyload = load ptr, ptr %.sroa.2101.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4103.0.copyload = load ptr, ptr %.sroa.4103.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5104.0.copyload = load ptr, ptr %.sroa.5104.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.v

.preheader139:                                    ; preds = %bb.q
  br i1 %.not166, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader139
  %.sroa.090.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.291.0.copyload = load ptr, ptr %.sroa.291.0..sroa_idx, align 8, !tbaa !246
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.493.0.copyload = load ptr, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !473
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.594.0.copyload = load ptr, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !476
  %.sroa.392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph157, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit64
  %.043156 = phi i64 [ 0, %.lr.ph157 ], [ %i.en, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit64 ] ; 8 uses
  %i.dc = shl i64 %.043156, 3                     ; 2 uses
  %i.dd = load i64, ptr %.sroa.090.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.de = mul i64 %i.dd, %.043156                 ; 5 uses
  %i.df = load i64, ptr %.sroa.291.0.copyload, align 8, !tbaa !109
  %i.dg = add i64 %i.df, -1
  %i.dh = icmp eq i64 %.043156, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.392.0.copyload = load ptr, ptr %.sroa.392.0..sroa_idx, align 8, !tbaa !246
  %i.di = load i64, ptr %.sroa.392.0.copyload, align 8, !tbaa !109
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dj = add nuw i64 %.043156, 1
  %i.dk = mul i64 %i.dd, %i.dj
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dl = phi i64 [ %i.di, %bb.s ], [ %i.dk, %bb.t ] ; 4 uses
  %i.dm = icmp ult i64 %i.de, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i62, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit64

.lr.ph.i.i62:                                     ; preds = %bb.u
  %i.dn = load ptr, ptr %.sroa.594.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.043156 ; 3 uses
  %i.dp = load ptr, ptr %.sroa.493.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = mul i64 %.043156, %i.dd
  %i.ds = sub i64 %i.dl, %i.dr                    ; 3 uses
  %min.iters.check296 = icmp ult i64 %i.ds, 10
  br i1 %min.iters.check296, label %scalar.ph295.preheader, label %vector.memcheck287

vector.memcheck287:                               ; preds = %.lr.ph.i.i62
  %scevgep288 = getelementptr i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dt = mul i64 %i.dd, %i.dc                    ; 2 uses
  %scevgep289 = getelementptr nuw i8, ptr %scevgep288, i64 %i.dt
  %i.du = mul i64 %.043156, %i.dd
  %i.dv = sub i64 %i.dl, %i.du
  %i.dw = shl i64 %i.dv, 3
  %i.dx = getelementptr i8, ptr %scevgep288, i64 %i.dt
  %scevgep290 = getelementptr i8, ptr %i.dx, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dn, i64 %i.dc
  %scevgep291 = getelementptr i8, ptr %i.dy, i64 8
  %bound0292 = icmp ult ptr %scevgep289, %scevgep291
  %bound1293 = icmp ult ptr %i.do, %scevgep290
  %found.conflict294 = and i1 %bound0292, %bound1293
  br i1 %found.conflict294, label %scalar.ph295.preheader, label %vector.ph297

vector.ph297:                                     ; preds = %vector.memcheck287
  %n.vec298 = and i64 %i.ds, -4                   ; 3 uses
  %i.dz = add i64 %i.de, %n.vec298
  %i.ea = load i64, ptr %i.do, align 8, !tbaa !109, !alias.scope !1773
  %broadcast.splatinsert303 = insertelement <2 x i64> poison, i64 %i.ea, i64 0
  %broadcast.splat304 = shufflevector <2 x i64> %broadcast.splatinsert303, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.de
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index300 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %wide.load301 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !109, !alias.scope !1776, !noalias !1773
  %wide.load302 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !109, !alias.scope !1776, !noalias !1773
  %i.ee = add <2 x i64> %wide.load301, %broadcast.splat304
  %i.ef = add <2 x i64> %wide.load302, %broadcast.splat304
  store <2 x i64> %i.ee, ptr %i.ec, align 8, !tbaa !109, !alias.scope !1776, !noalias !1773
  store <2 x i64> %i.ef, ptr %i.ed, align 8, !tbaa !109, !alias.scope !1776, !noalias !1773
  %index.next305 = add nuw i64 %index300, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.eg, label %middle.block306, label %vector.body299, !llvm.loop !1778

middle.block306:                                  ; preds = %vector.body299
  %cmp.n307 = icmp eq i64 %i.ds, %n.vec298
  br i1 %cmp.n307, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit64, label %scalar.ph295.preheader

scalar.ph295.preheader:                           ; preds = %vector.memcheck287, %.lr.ph.i.i62, %middle.block306
  %.010.i.i63.ph = phi i64 [ %i.de, %vector.memcheck287 ], [ %i.de, %.lr.ph.i.i62 ], [ %i.dz, %middle.block306 ]
  br label %scalar.ph295

scalar.ph295:                                     ; preds = %scalar.ph295.preheader, %scalar.ph295
  %.010.i.i63 = phi i64 [ %i.el, %scalar.ph295 ], [ %.010.i.i63.ph, %scalar.ph295.preheader ] ; 2 uses
  %i.eh = load i64, ptr %i.do, align 8, !tbaa !109
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.010.i.i63 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !109
  %i.ek = add i64 %i.ej, %i.eh
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !109
  %i.el = add nuw i64 %.010.i.i63, 1              ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.dl
  br i1 %i.em, label %scalar.ph295, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit64, !llvm.loop !1779

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit64: ; preds = %scalar.ph295, %middle.block306, %bb.u
  %i.en = add nuw i64 %.043156, 1                 ; 2 uses
  %exitcond178.not = icmp eq i64 %i.en, %0
  br i1 %exitcond178.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.r, !llvm.loop !1780

bb.v:                                             ; preds = %.lr.ph155, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit67
  %.042154 = phi i64 [ 0, %.lr.ph155 ], [ %i.fz, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit67 ] ; 8 uses
  %i.eo = shl i64 %.042154, 3                     ; 2 uses
  %i.ep = load i64, ptr %.sroa.0100.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.eq = mul i64 %i.ep, %.042154                 ; 5 uses
  %i.er = load i64, ptr %.sroa.2101.0.copyload, align 8, !tbaa !109
  %i.es = add i64 %i.er, -1
  %i.et = icmp eq i64 %.042154, %i.es
  br i1 %i.et, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.3102.0.copyload = load ptr, ptr %.sroa.3102.0..sroa_idx, align 8, !tbaa !246
  %i.eu = load i64, ptr %.sroa.3102.0.copyload, align 8, !tbaa !109
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ev = add nuw i64 %.042154, 1
  %i.ew = mul i64 %i.ep, %i.ev
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ex = phi i64 [ %i.eu, %bb.w ], [ %i.ew, %bb.x ] ; 4 uses
  %i.ey = icmp ult i64 %i.eq, %i.ex
  br i1 %i.ey, label %.lr.ph.i.i65, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit67

.lr.ph.i.i65:                                     ; preds = %bb.y
  %i.ez = load ptr, ptr %.sroa.5104.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.042154 ; 3 uses
  %i.fb = load ptr, ptr %.sroa.4103.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = mul i64 %.042154, %i.ep
  %i.fe = sub i64 %i.ex, %i.fd                    ; 3 uses
  %min.iters.check274 = icmp ult i64 %i.fe, 10
  br i1 %min.iters.check274, label %scalar.ph273.preheader, label %vector.memcheck265

vector.memcheck265:                               ; preds = %.lr.ph.i.i65
  %scevgep266 = getelementptr i8, ptr %i.fb, i64 8 ; 2 uses
  %i.ff = mul i64 %i.ep, %i.eo                    ; 2 uses
  %scevgep267 = getelementptr nuw i8, ptr %scevgep266, i64 %i.ff
  %i.fg = mul i64 %.042154, %i.ep
  %i.fh = sub i64 %i.ex, %i.fg
  %i.fi = shl i64 %i.fh, 3
  %i.fj = getelementptr i8, ptr %scevgep266, i64 %i.ff
  %scevgep268 = getelementptr i8, ptr %i.fj, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.ez, i64 %i.eo
  %scevgep269 = getelementptr i8, ptr %i.fk, i64 8
  %bound0270 = icmp ult ptr %scevgep267, %scevgep269
  %bound1271 = icmp ult ptr %i.fa, %scevgep268
  %found.conflict272 = and i1 %bound0270, %bound1271
  br i1 %found.conflict272, label %scalar.ph273.preheader, label %vector.ph275

vector.ph275:                                     ; preds = %vector.memcheck265
  %n.vec276 = and i64 %i.fe, -4                   ; 3 uses
  %i.fl = add i64 %i.eq, %n.vec276
  %i.fm = load i64, ptr %i.fa, align 8, !tbaa !109, !alias.scope !1781
  %broadcast.splatinsert281 = insertelement <2 x i64> poison, i64 %i.fm, i64 0
  %broadcast.splat282 = shufflevector <2 x i64> %broadcast.splatinsert281, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.eq
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph275
  %index278 = phi i64 [ 0, %vector.ph275 ], [ %index.next283, %vector.body277 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %index278 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %wide.load279 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !109, !alias.scope !1784, !noalias !1781
  %wide.load280 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !109, !alias.scope !1784, !noalias !1781
  %i.fq = add <2 x i64> %wide.load279, %broadcast.splat282
  %i.fr = add <2 x i64> %wide.load280, %broadcast.splat282
  store <2 x i64> %i.fq, ptr %i.fo, align 8, !tbaa !109, !alias.scope !1784, !noalias !1781
  store <2 x i64> %i.fr, ptr %i.fp, align 8, !tbaa !109, !alias.scope !1784, !noalias !1781
  %index.next283 = add nuw i64 %index278, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next283, %n.vec276
  br i1 %i.fs, label %middle.block284, label %vector.body277, !llvm.loop !1786

middle.block284:                                  ; preds = %vector.body277
  %cmp.n285 = icmp eq i64 %i.fe, %n.vec276
  br i1 %cmp.n285, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit67, label %scalar.ph273.preheader

scalar.ph273.preheader:                           ; preds = %vector.memcheck265, %.lr.ph.i.i65, %middle.block284
  %.010.i.i66.ph = phi i64 [ %i.eq, %vector.memcheck265 ], [ %i.eq, %.lr.ph.i.i65 ], [ %i.fl, %middle.block284 ]
  br label %scalar.ph273

scalar.ph273:                                     ; preds = %scalar.ph273.preheader, %scalar.ph273
  %.010.i.i66 = phi i64 [ %i.fx, %scalar.ph273 ], [ %.010.i.i66.ph, %scalar.ph273.preheader ] ; 2 uses
  %i.ft = load i64, ptr %i.fa, align 8, !tbaa !109
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.010.i.i66 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !109
  %i.fw = add i64 %i.fv, %i.ft
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !109
  %i.fx = add nuw i64 %.010.i.i66, 1              ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.ex
  br i1 %i.fy, label %scalar.ph273, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit67, !llvm.loop !1787

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit67: ; preds = %scalar.ph273, %middle.block284, %bb.y
  %i.fz = add nuw i64 %.042154, 1                 ; 2 uses
  %exitcond177.not = icmp eq i64 %i.fz, %0
  br i1 %exitcond177.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.v, !llvm.loop !1788

bb.z:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ga = icmp eq i64 %3, 0
  %.not164 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.ga, label %.preheader143, label %.preheader145

.preheader145:                                    ; preds = %bb.z
  br i1 %.not164, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph151

.lr.ph151:                                        ; preds = %.preheader145
  %.sroa.0120.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2121.0.copyload = load ptr, ptr %.sroa.2121.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4123.0.copyload = load ptr, ptr %.sroa.4123.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5124.0.copyload = load ptr, ptr %.sroa.5124.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ae

.preheader143:                                    ; preds = %bb.z
  br i1 %.not164, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph153

.lr.ph153:                                        ; preds = %.preheader143
  %.sroa.0110.0.copyload = load ptr, ptr %4, align 8, !tbaa !246
  %.sroa.2111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2111.0.copyload = load ptr, ptr %.sroa.2111.0..sroa_idx, align 8, !tbaa !246
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4113.0.copyload = load ptr, ptr %.sroa.4113.0..sroa_idx, align 8, !tbaa !473
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5114.0.copyload = load ptr, ptr %.sroa.5114.0..sroa_idx, align 8, !tbaa !476
  %.sroa.3112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph153, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit70
  %.041152 = phi i64 [ 0, %.lr.ph153 ], [ %i.hm, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit70 ] ; 8 uses
  %i.gb = shl i64 %.041152, 3                     ; 2 uses
  %i.gc = load i64, ptr %.sroa.0110.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.gd = mul i64 %i.gc, %.041152                 ; 5 uses
  %i.ge = load i64, ptr %.sroa.2111.0.copyload, align 8, !tbaa !109
  %i.gf = add i64 %i.ge, -1
  %i.gg = icmp eq i64 %.041152, %i.gf
  br i1 %i.gg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.3112.0.copyload = load ptr, ptr %.sroa.3112.0..sroa_idx, align 8, !tbaa !246
  %i.gh = load i64, ptr %.sroa.3112.0.copyload, align 8, !tbaa !109
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gi = add nuw i64 %.041152, 1
  %i.gj = mul i64 %i.gc, %i.gi
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gk = phi i64 [ %i.gh, %bb.ab ], [ %i.gj, %bb.ac ] ; 4 uses
  %i.gl = icmp ult i64 %i.gd, %i.gk
  br i1 %i.gl, label %.lr.ph.i.i68, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit70

.lr.ph.i.i68:                                     ; preds = %bb.ad
  %i.gm = load ptr, ptr %.sroa.5114.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.041152 ; 3 uses
  %i.go = load ptr, ptr %.sroa.4113.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gq = mul i64 %.041152, %i.gc
  %i.gr = sub i64 %i.gk, %i.gq                    ; 3 uses
  %min.iters.check252 = icmp ult i64 %i.gr, 10
  br i1 %min.iters.check252, label %scalar.ph251.preheader, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph.i.i68
  %scevgep244 = getelementptr i8, ptr %i.go, i64 8 ; 2 uses
  %i.gs = mul i64 %i.gc, %i.gb                    ; 2 uses
  %scevgep245 = getelementptr nuw i8, ptr %scevgep244, i64 %i.gs
  %i.gt = mul i64 %.041152, %i.gc
  %i.gu = sub i64 %i.gk, %i.gt
  %i.gv = shl i64 %i.gu, 3
  %i.gw = getelementptr i8, ptr %scevgep244, i64 %i.gs
  %scevgep246 = getelementptr i8, ptr %i.gw, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gm, i64 %i.gb
  %scevgep247 = getelementptr i8, ptr %i.gx, i64 8
  %bound0248 = icmp ult ptr %scevgep245, %scevgep247
  %bound1249 = icmp ult ptr %i.gn, %scevgep246
  %found.conflict250 = and i1 %bound0248, %bound1249
  br i1 %found.conflict250, label %scalar.ph251.preheader, label %vector.ph253

vector.ph253:                                     ; preds = %vector.memcheck243
  %n.vec254 = and i64 %i.gr, -4                   ; 3 uses
  %i.gy = add i64 %i.gd, %n.vec254
  %i.gz = load i64, ptr %i.gn, align 8, !tbaa !109, !alias.scope !1789
  %broadcast.splatinsert259 = insertelement <2 x i64> poison, i64 %i.gz, i64 0
  %broadcast.splat260 = shufflevector <2 x i64> %broadcast.splatinsert259, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gd
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph253
  %index256 = phi i64 [ 0, %vector.ph253 ], [ %index.next261, %vector.body255 ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %index256 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %wide.load257 = load <2 x i64>, ptr %i.hb, align 8, !tbaa !109, !alias.scope !1792, !noalias !1789
  %wide.load258 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !109, !alias.scope !1792, !noalias !1789
  %i.hd = add <2 x i64> %wide.load257, %broadcast.splat260
  %i.he = add <2 x i64> %wide.load258, %broadcast.splat260
  store <2 x i64> %i.hd, ptr %i.hb, align 8, !tbaa !109, !alias.scope !1792, !noalias !1789
  store <2 x i64> %i.he, ptr %i.hc, align 8, !tbaa !109, !alias.scope !1792, !noalias !1789
  %index.next261 = add nuw i64 %index256, 4       ; 2 uses
  %i.hf = icmp eq i64 %index.next261, %n.vec254
  br i1 %i.hf, label %middle.block262, label %vector.body255, !llvm.loop !1794

middle.block262:                                  ; preds = %vector.body255
  %cmp.n263 = icmp eq i64 %i.gr, %n.vec254
  br i1 %cmp.n263, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit70, label %scalar.ph251.preheader

scalar.ph251.preheader:                           ; preds = %vector.memcheck243, %.lr.ph.i.i68, %middle.block262
  %.010.i.i69.ph = phi i64 [ %i.gd, %vector.memcheck243 ], [ %i.gd, %.lr.ph.i.i68 ], [ %i.gy, %middle.block262 ]
  br label %scalar.ph251

scalar.ph251:                                     ; preds = %scalar.ph251.preheader, %scalar.ph251
  %.010.i.i69 = phi i64 [ %i.hk, %scalar.ph251 ], [ %.010.i.i69.ph, %scalar.ph251.preheader ] ; 2 uses
  %i.hg = load i64, ptr %i.gn, align 8, !tbaa !109
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.010.i.i69 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !109
  %i.hj = add i64 %i.hi, %i.hg
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !109
  %i.hk = add nuw i64 %.010.i.i69, 1              ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.gk
  br i1 %i.hl, label %scalar.ph251, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit70, !llvm.loop !1795

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit70: ; preds = %scalar.ph251, %middle.block262, %bb.ad
  %i.hm = add nuw i64 %.041152, 1                 ; 2 uses
  %exitcond176.not = icmp eq i64 %i.hm, %0
  br i1 %exitcond176.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.aa, !llvm.loop !1796

bb.ae:                                            ; preds = %.lr.ph151, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit73
  %.040150 = phi i64 [ 0, %.lr.ph151 ], [ %i.iy, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit73 ] ; 8 uses
  %i.hn = shl i64 %.040150, 3                     ; 2 uses
  %i.ho = load i64, ptr %.sroa.0120.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.hp = mul i64 %i.ho, %.040150                 ; 5 uses
  %i.hq = load i64, ptr %.sroa.2121.0.copyload, align 8, !tbaa !109
  %i.hr = add i64 %i.hq, -1
  %i.hs = icmp eq i64 %.040150, %i.hr
  br i1 %i.hs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.3122.0.copyload = load ptr, ptr %.sroa.3122.0..sroa_idx, align 8, !tbaa !246
  %i.ht = load i64, ptr %.sroa.3122.0.copyload, align 8, !tbaa !109
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.hu = add nuw i64 %.040150, 1
  %i.hv = mul i64 %i.ho, %i.hu
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hw = phi i64 [ %i.ht, %bb.af ], [ %i.hv, %bb.ag ] ; 4 uses
  %i.hx = icmp ult i64 %i.hp, %i.hw
  br i1 %i.hx, label %.lr.ph.i.i71, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit73

.lr.ph.i.i71:                                     ; preds = %bb.ah
  %i.hy = load ptr, ptr %.sroa.5124.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %.040150 ; 3 uses
  %i.ia = load ptr, ptr %.sroa.4123.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ic = mul i64 %.040150, %i.ho
  %i.id = sub i64 %i.hw, %i.ic                    ; 3 uses
  %min.iters.check230 = icmp ult i64 %i.id, 10
  br i1 %min.iters.check230, label %scalar.ph229.preheader, label %vector.memcheck221

vector.memcheck221:                               ; preds = %.lr.ph.i.i71
  %scevgep222 = getelementptr i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ie = mul i64 %i.ho, %i.hn                    ; 2 uses
  %scevgep223 = getelementptr nuw i8, ptr %scevgep222, i64 %i.ie
  %i.if = mul i64 %.040150, %i.ho
  %i.ig = sub i64 %i.hw, %i.if
  %i.ih = shl i64 %i.ig, 3
  %i.ii = getelementptr i8, ptr %scevgep222, i64 %i.ie
  %scevgep224 = getelementptr i8, ptr %i.ii, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.hy, i64 %i.hn
  %scevgep225 = getelementptr i8, ptr %i.ij, i64 8
  %bound0226 = icmp ult ptr %scevgep223, %scevgep225
  %bound1227 = icmp ult ptr %i.hz, %scevgep224
  %found.conflict228 = and i1 %bound0226, %bound1227
  br i1 %found.conflict228, label %scalar.ph229.preheader, label %vector.ph231

vector.ph231:                                     ; preds = %vector.memcheck221
  %n.vec232 = and i64 %i.id, -4                   ; 3 uses
  %i.ik = add i64 %i.hp, %n.vec232
  %i.il = load i64, ptr %i.hz, align 8, !tbaa !109, !alias.scope !1797
  %broadcast.splatinsert237 = insertelement <2 x i64> poison, i64 %i.il, i64 0
  %broadcast.splat238 = shufflevector <2 x i64> %broadcast.splatinsert237, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hp
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index234 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %wide.load235 = load <2 x i64>, ptr %i.in, align 8, !tbaa !109, !alias.scope !1800, !noalias !1797
  %wide.load236 = load <2 x i64>, ptr %i.io, align 8, !tbaa !109, !alias.scope !1800, !noalias !1797
  %i.ip = add <2 x i64> %wide.load235, %broadcast.splat238
  %i.iq = add <2 x i64> %wide.load236, %broadcast.splat238
  store <2 x i64> %i.ip, ptr %i.in, align 8, !tbaa !109, !alias.scope !1800, !noalias !1797
  store <2 x i64> %i.iq, ptr %i.io, align 8, !tbaa !109, !alias.scope !1800, !noalias !1797
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.ir, label %middle.block240, label %vector.body233, !llvm.loop !1802

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.id, %n.vec232
  br i1 %cmp.n241, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit73, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %vector.memcheck221, %.lr.ph.i.i71, %middle.block240
  %.010.i.i72.ph = phi i64 [ %i.hp, %vector.memcheck221 ], [ %i.hp, %.lr.ph.i.i71 ], [ %i.ik, %middle.block240 ]
  br label %scalar.ph229

scalar.ph229:                                     ; preds = %scalar.ph229.preheader, %scalar.ph229
  %.010.i.i72 = phi i64 [ %i.iw, %scalar.ph229 ], [ %.010.i.i72.ph, %scalar.ph229.preheader ] ; 2 uses
  %i.is = load i64, ptr %i.hz, align 8, !tbaa !109
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.010.i.i72 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !109
  %i.iv = add i64 %i.iu, %i.is
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !109
  %i.iw = add nuw i64 %.010.i.i72, 1              ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.hw
  br i1 %i.ix, label %scalar.ph229, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit73, !llvm.loop !1803

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit73: ; preds = %scalar.ph229, %middle.block240, %bb.ah
  %i.iy = add nuw i64 %.040150, 1                 ; 2 uses
  %exitcond175.not = icmp eq i64 %i.iy, %0
  br i1 %exitcond175.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ae, !llvm.loop !1804

bb.ai:                                            ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit76
  %.0149 = phi i64 [ 0, %.lr.ph ], [ %i.kk, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit76 ] ; 8 uses
  %i.iz = shl i64 %.0149, 3                       ; 2 uses
  %i.ja = load i64, ptr %.sroa.0130.0.copyload, align 8, !tbaa !109 ; 5 uses
  %i.jb = mul i64 %i.ja, %.0149                   ; 5 uses
  %i.jc = load i64, ptr %.sroa.2131.0.copyload, align 8, !tbaa !109
  %i.jd = add i64 %i.jc, -1
  %i.je = icmp eq i64 %.0149, %i.jd
  br i1 %i.je, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.sroa.3132.0.copyload = load ptr, ptr %.sroa.3132.0..sroa_idx, align 8, !tbaa !246
  %i.jf = load i64, ptr %.sroa.3132.0.copyload, align 8, !tbaa !109
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.jg = add nuw i64 %.0149, 1
  %i.jh = mul i64 %i.ja, %i.jg
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ji = phi i64 [ %i.jf, %bb.aj ], [ %i.jh, %bb.ak ] ; 4 uses
  %i.jj = icmp ult i64 %i.jb, %i.ji
  br i1 %i.jj, label %.lr.ph.i.i74, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit76

.lr.ph.i.i74:                                     ; preds = %bb.al
  %i.jk = load ptr, ptr %.sroa.5134.0.copyload, align 8, !tbaa !470 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %.0149 ; 3 uses
  %i.jm = load ptr, ptr %.sroa.4133.0.copyload, align 8, !tbaa !246 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jo = mul i64 %.0149, %i.ja
  %i.jp = sub i64 %i.ji, %i.jo                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.jp, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i74
  %scevgep = getelementptr i8, ptr %i.jm, i64 8   ; 2 uses
  %i.jq = mul i64 %i.ja, %i.iz                    ; 2 uses
  %scevgep217 = getelementptr nuw i8, ptr %scevgep, i64 %i.jq
  %i.jr = mul i64 %.0149, %i.ja
  %i.js = sub i64 %i.ji, %i.jr
  %i.jt = shl i64 %i.js, 3
  %i.ju = getelementptr i8, ptr %scevgep, i64 %i.jq
  %scevgep218 = getelementptr i8, ptr %i.ju, i64 %i.jt
  %i.jv = getelementptr i8, ptr %i.jk, i64 %i.iz
  %scevgep219 = getelementptr i8, ptr %i.jv, i64 8
  %bound0 = icmp ult ptr %scevgep217, %scevgep219
  %bound1 = icmp ult ptr %i.jl, %scevgep218
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jp, -4                      ; 3 uses
  %i.jw = add i64 %i.jb, %n.vec
  %i.jx = load i64, ptr %i.jl, align 8, !tbaa !109, !alias.scope !1805
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.jx, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %index ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.jz, align 8, !tbaa !109, !alias.scope !1808, !noalias !1805
  %wide.load220 = load <2 x i64>, ptr %i.ka, align 8, !tbaa !109, !alias.scope !1808, !noalias !1805
  %i.kb = add <2 x i64> %wide.load, %broadcast.splat
  %i.kc = add <2 x i64> %wide.load220, %broadcast.splat
  store <2 x i64> %i.kb, ptr %i.jz, align 8, !tbaa !109, !alias.scope !1808, !noalias !1805
  store <2 x i64> %i.kc, ptr %i.ka, align 8, !tbaa !109, !alias.scope !1808, !noalias !1805
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !1810

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jp, %n.vec
  br i1 %cmp.n, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit76, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i74, %middle.block
  %.010.i.i75.ph = phi i64 [ %i.jb, %vector.memcheck ], [ %i.jb, %.lr.ph.i.i74 ], [ %i.jw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.010.i.i75 = phi i64 [ %i.ki, %scalar.ph ], [ %.010.i.i75.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ke = load i64, ptr %i.jl, align 8, !tbaa !109
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.010.i.i75 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !109
  %i.kh = add i64 %i.kg, %i.ke
  store i64 %i.kh, ptr %i.kf, align 8, !tbaa !109
  %i.ki = add nuw i64 %.010.i.i75, 1              ; 2 uses
  %i.kj = icmp ult i64 %i.ki, %i.ji
  br i1 %i.kj, label %scalar.ph, label %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit76, !llvm.loop !1811

_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit76: ; preds = %scalar.ph, %middle.block, %bb.al
  %i.kk = add nuw i64 %.0149, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.kk, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ai, !llvm.loop !1812

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit76, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit73, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit70, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit67, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit64, %_ZN4dmlc12OMPException3RunIZN7xgboost6common10PartialSumINS3_18IndexTransformIterIZNS2_16GHistIndexMatrix16PushAdapterBatchINS2_4data27EncColumnarAdapterBatchImplINS2_12NoOpAccessorEEEEEvPKNS2_7ContextEmmRKT_fNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSF_SF_T1_T0_EUlSF_E0_JmEEEvSF_DpT0_.exit, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSC_SC_T1_T0_ENKUlSC_E0_clImEEDaSC_.exit, %.preheader147, %.preheader145, %.preheader143, %.preheader141, %.preheader139, %.preheader137, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.am:                                            ; preds = %bb.i
  %i.kl = landingpad { ptr, i32 }
          catch ptr null
  %i.km = extractvalue { ptr, i32 } %i.kl, 0
  call void @__clang_call_terminate(ptr %i.km) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS_16GHistIndexMatrix13PushBatchImplINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEERNS4_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEEUlSD_E_EEDaNS0_11BinTypeSizeEOSD_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.xgboost::common::Index::CompressBin.203", align 8 ; 4 uses
  %3 = alloca %"struct.xgboost::common::Index::CompressBin.203", align 8 ; 4 uses
  %4 = alloca %"struct.xgboost::common::Index::CompressBin.201", align 8 ; 4 uses
  %5 = alloca %"struct.xgboost::common::Index::CompressBin", align 8 ; 4 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.h [
    i8 1, label %bb.b
    i8 2, label %bb.d
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !1707   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !303  ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !645  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.g = load i8, ptr %i.f, align 8, !tbaa !301
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = icmp ne ptr %i.d, null
  %i.j = icmp ult i64 %i.e, %i.h
  %i.k = or i1 %i.i, %i.j
  br i1 %i.k, label %_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlSB_E_clIhEEDaSB_.exit, label %bb.c, !prof !249

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlSB_E_clIhEEDaSB_.exit: ; preds = %bb.b
  %i.l = udiv i64 %i.e, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1813, !nonnull !191, !align !496
  %i.o = load i64, ptr %i.n, align 8, !tbaa !109
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1814, !nonnull !191, !align !496 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1815, !nonnull !191, !align !496
  %i.t = load i64, ptr %i.s, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1816, !nonnull !191, !align !496
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1817, !nonnull !191, !align !501
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1818, !nonnull !191, !align !501
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !100
  %i.ab = sext i32 %i.aa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !239
  store ptr %i.ad, ptr %5, align 8
  call void @_ZN7xgboost16GHistIndexMatrix12SetIndexDataINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEEhNS_6common5Index11CompressBinIhEERNS2_14IsValidFunctorEEEvNS6_4SpanIT0_Lm18446744073709551615EEEmNSC_IKNS_11FeatureTypeELm18446744073709551615EEEmRKT_OT2_mOT1_(ptr noundef nonnull align 8 dereferenceable(225) %i.a, i64 %i.l, ptr %i.d, i64 noundef %i.o, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(17) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.x, i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %1, align 8, !tbaa !1707  ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !303 ; 2 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !645 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !301
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = icmp ne ptr %i.ah, null
  %i.an = icmp ult i64 %i.ai, %i.al
  %i.ao = or i1 %i.am, %i.an
  br i1 %i.ao, label %_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlSB_E_clItEEDaSB_.exit, label %bb.e, !prof !249

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost16GHistIndexMatrix13PushBatchImplINS_4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEERNS2_14IsValidFunctorEEEvPKNS_7ContextERKT_mOT0_NS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEEENKUlSB_E_clItEEDaSB_.exit: ; preds = %bb.d
  %i.ap = udiv i64 %i.ai, %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1813, !nonnull !191, !align !496
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !109
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1814, !nonnull !191, !align !496 ; 2 uses
  %.sroa.0.0.copyload.i6 = load i64, ptr %i.au, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.2.0.copyload.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i7, align 8, !tbaa !124
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1815, !nonnull !191, !align !496
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !109
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1816, !nonnull !191, !align !496
end_hunk_4
