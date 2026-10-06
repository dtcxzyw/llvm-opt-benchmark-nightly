Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_quantile_hist?download=true
inline.NumInlined: 15946
inline.NumDeleted: 4545
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN7xgboost4tree18HistMultiEvaluator8InitRootENS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIdEELi1EEE:bb.a
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.us

_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.us: ; preds = %.split.us.i.i.i.i.i.i.i.i.i.us, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.us
  %.sroa.5.1.le.i.sink.i.i.i.i.i.i.i.i.us = phi i64 [ %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.us, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.us ], [ %i.ef, %.split.us.i.i.i.i.i.i.i.i.i.us ]
  %.sink.i.i.i.i.i.i.i.i.us = phi i64 [ %i.ed, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.us ], [ %i.ee, %.split.us.i.i.i.i.i.i.i.i.i.us ]
  %i.eg = mul i64 %.sroa.0.0, %.sink.i.i.i.i.i.i.i.i.us
  %i.eh = mul i64 %.sroa.6.0, %.sroa.5.1.le.i.sink.i.i.i.i.i.i.i.i.us
  %i.ei = getelementptr [16 x i8], ptr %i.cx, i64 %i.eg
  %i.ej = getelementptr [16 x i8], ptr %i.ei, i64 %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !tbaa.struct !648
  %i.ek = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.us, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %i.ek, %i.dd
  br i1 %exitcond50.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.split.us, !llvm.loop !1720

.lr.ph.i.i.i.i.i.split:                           ; preds = %.lr.ph.i.i.i.i.i
  br i1 %.not.i7.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.split.split.us.preheader, label %.lr.ph.i.i.i.i.i.split.split

.lr.ph.i.i.i.i.i.split.split.us.preheader:        ; preds = %.lr.ph.i.i.i.i.i.split
  %i.el = zext i32 %i.di to i64
  br label %.lr.ph.i.i.i.i.i.split.split.us

.lr.ph.i.i.i.i.i.split.split.us:                  ; preds = %.lr.ph.i.i.i.i.i.split.split.us.preheader, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.us43
  %.sroa.0.010.i.i.i.i.i.us36 = phi i64 [ %i.fa, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.us43 ], [ 0, %.lr.ph.i.i.i.i.i.split.split.us.preheader ] ; 7 uses
  %i.em = load i64, ptr %2, align 8, !tbaa !91
  %i.en = mul i64 %i.em, %.sroa.0.010.i.i.i.i.i.us36
  %i.eo = load ptr, ptr %i.df, align 8, !tbaa !536
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.en
  %i.eq = icmp samesign ugt i64 %.sroa.0.010.i.i.i.i.i.us36, 4294967295
  br i1 %i.eq, label %.split.i.i.i.i.i.i.i.i.i.us, label %.split.us.i11.i.i.i.i.i.i.i.i.us38

.split.us.i11.i.i.i.i.i.i.i.i.us38:               ; preds = %.lr.ph.i.i.i.i.i.split.split.us
  %i.er = trunc nuw i64 %.sroa.0.010.i.i.i.i.i.us36 to i32
  %i.es = lshr i32 %i.er, %i.dj
  %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.us42 = and i64 %.sroa.0.010.i.i.i.i.i.us36, %i.el
  %i.et = zext i32 %i.es to i64
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.us43

.split.i.i.i.i.i.i.i.i.i.us:                      ; preds = %.lr.ph.i.i.i.i.i.split.split.us
  %i.eu = udiv i64 %.sroa.0.010.i.i.i.i.i.us36, %.fr46 ; 2 uses
  %i.ev = mul i64 %i.eu, %.fr46                   ; 0 uses
  %.recomposed = urem i64 %.sroa.0.010.i.i.i.i.i.us36, %.fr46
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.us43

_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.us43: ; preds = %.split.i.i.i.i.i.i.i.i.i.us, %.split.us.i11.i.i.i.i.i.i.i.i.us38
  %.sroa.5.1.le.i.sink.i.i.i.i.i.i.i.i.us44 = phi i64 [ %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.us42, %.split.us.i11.i.i.i.i.i.i.i.i.us38 ], [ %.recomposed, %.split.i.i.i.i.i.i.i.i.i.us ]
  %.sink.i.i.i.i.i.i.i.i.us45 = phi i64 [ %i.et, %.split.us.i11.i.i.i.i.i.i.i.i.us38 ], [ %i.eu, %.split.i.i.i.i.i.i.i.i.i.us ]
  %i.ew = mul i64 %.sroa.0.0, %.sink.i.i.i.i.i.i.i.i.us45
  %i.ex = mul i64 %.sroa.6.0, %.sroa.5.1.le.i.sink.i.i.i.i.i.i.i.i.us44
  %i.ey = getelementptr [16 x i8], ptr %i.cx, i64 %i.ew
  %i.ez = getelementptr [16 x i8], ptr %i.ey, i64 %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !tbaa.struct !648
  %i.fa = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.us36, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %i.fa, %i.dd
  br i1 %exitcond49.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.split.split.us, !llvm.loop !1720

.lr.ph.i.i.i.i.i.split.split:                     ; preds = %.lr.ph.i.i.i.i.i.split, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.fq, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.split ] ; 6 uses
  %i.fb = load i64, ptr %2, align 8, !tbaa !91
  %i.fc = mul i64 %i.fb, %.sroa.0.010.i.i.i.i.i
  %i.fd = load ptr, ptr %i.df, align 8, !tbaa !536
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.fc
  %i.ff = icmp samesign ugt i64 %.sroa.0.010.i.i.i.i.i, 4294967295
  br i1 %i.ff, label %.split.i.i.i.i.i.i.i.i.i, label %.split.i8.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.split.split
  %i.fg = udiv i64 %.sroa.0.010.i.i.i.i.i, %.fr46 ; 2 uses
  %i.fh = mul i64 %i.fg, %.fr46                   ; 0 uses
  %.recomposed64 = urem i64 %.sroa.0.010.i.i.i.i.i, %.fr46
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i

.split.i8.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.split.split
  %i.fi = trunc nuw i64 %.sroa.0.010.i.i.i.i.i to i32 ; 2 uses
  %i.fj = udiv i32 %i.fi, %i.dg                   ; 2 uses
  %i.fk = mul i32 %i.fj, %i.dg                    ; 0 uses
  %.recomposed65 = urem i32 %i.fi, %i.dg
  %.sroa.5.1.le.i.i.i.i.i.i.i.i.i = zext i32 %.recomposed65 to i64
  %i.fl = zext i32 %i.fj to i64
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i

_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i.i.i.i.i, %.split.i8.i.i.i.i.i.i.i.i ], [ %.recomposed64, %.split.i.i.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.fl, %.split.i8.i.i.i.i.i.i.i.i ], [ %i.fg, %.split.i.i.i.i.i.i.i.i.i ]
  %i.fm = mul i64 %.sroa.0.0, %.sink.i.i.i.i.i.i.i.i
  %i.fn = mul i64 %.sroa.6.0, %.sroa.5.1.le.i.sink.i.i.i.i.i.i.i.i
  %i.fo = getelementptr [16 x i8], ptr %i.cx, i64 %i.fm
  %i.fp = getelementptr [16 x i8], ptr %i.fo, i64 %i.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i64 16, i1 false), !tbaa.struct !648
  %i.fq = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fq, %i.dd
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.split.split, !llvm.loop !1720

.loopexit:                                        ; preds = %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.us43, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIdEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.us, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

bb.x:                                             ; preds = %bb.a
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.ac

bb.y:                                             ; preds = %bb.m, %.noexc19, %.noexc18, %bb.l, %.noexc16, %.noexc, %bb.k, %bb.o
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %bb.p
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE19CalcGainGivenWeightINS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIdEELi1EEENS7_IfLi1EEETnNSt9enable_ifIXsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEdRKS3_RKSF_RKT0_.exit
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.y ], [ %i.fu, %bb.aa ], [ %i.ft, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %0) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ab ], [ %i.fr, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost7RegTree7SetRootENS_6linalg10TensorViewIKfLi1EEEf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef byval(%"class.xgboost::linalg::TensorView.476") align 8 %1, float noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e, !prof !170

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.c = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.c, ptr noundef nonnull @.str.89, i32 noundef 396)
  %i.d = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.90, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !193
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3, %bb.a
  %i.h = phi ptr [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3 ], [ %i.b, %bb.a ]
  call void @_ZN7xgboost15MultiTargetTree7SetRootENS_6linalg10TensorViewIKfLi1EEEf(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.476") align 8 %1, float noundef %2)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS_6common4SpanIPKNS0_21BoundedHistCollectionELm18446744073709551615EEERKNS2_13HistogramCutsENS3_IKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_16MultiExpandEntryESaISF_EE(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4, ptr %5, ptr noundef %6) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.xgboost::common::Span.483", align 8 ; 4 uses
  %8 = alloca %"class.xgboost::common::Span.29", align 8 ; 3 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %12 = alloca %"class.std::vector.588", align 8  ; 17 uses
  %13 = alloca %"class.std::shared_ptr.113", align 16 ; 7 uses
  %14 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = alloca i32, align 4                      ; 12 uses
  %15 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 10 uses
  %16 = alloca %class.anon.593, align 8           ; 5 uses
  %17 = alloca %"class.std::vector.374", align 8  ; 14 uses
  %18 = alloca %"struct.xgboost::tree::TreeEvaluator::SplitEvaluator", align 8 ; 11 uses
  %19 = alloca %class.anon.594, align 8           ; 12 uses
  store i64 %1, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  store i64 %4, ptr %8, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %5, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !91   ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 %1, ptr %i.b, align 8, !tbaa !91
  %i.h = icmp eq i64 %i.g, %1
  br i1 %i.h, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.i = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.i, ptr noundef nonnull @.str.91, i32 noundef 614)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.j = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.92, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = load ptr, ptr %9, align 8, !tbaa !111    ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !113
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.n, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.e unwind label %bb.dh

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.dg

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr147 = load ptr, ptr %9, align 8, !tbaa !111 ; 4 uses
  %.not.i = icmp eq ptr %.pr147, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %.pr147, align 8, !tbaa !112 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pr147, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.x = load i64, ptr %i.v, align 8, !tbaa !114
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr147, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.z = load i64, ptr %7, align 8, !tbaa !689
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.k, !prof !170

bb.h:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.ab = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ab, ptr noundef nonnull @.str.91, i32 noundef 615)
  %i.ac = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit72 unwind label %bb.i ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit72: ; preds = %bb.h
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.93, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit72
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.k

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit72, %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.j unwind label %bb.dh

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.dg

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !356 ; 2 uses
  %i.ai = load ptr, ptr %6, align 8, !tbaa !379   ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 104               ; 3 uses
  %i.an = icmp ugt i64 %i.am, 576460752303423487
  br i1 %i.an, label %bb.l, label %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #37
          to label %.noexc77 unwind label %bb.n

.noexc77:                                         ; preds = %bb.l
  unreachable

_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i.i.i, label %._crit_edge.thread, label %.lr.ph.preheader.i.i.i.i.i

._crit_edge.thread:                               ; preds = %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.ad

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.aq = shl nuw nsw i64 %i.am, 4                ; 3 uses
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #38
          to label %bb.m unwind label %bb.n       ; 5 uses

bb.m:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ar, ptr %12, align 8, !tbaa !692
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.am
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %i.aq, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ar, i64 %i.aq ; 2 uses
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !356
  %.pre175 = load ptr, ptr %6, align 8, !tbaa !379 ; 2 uses
  %i.at = icmp eq ptr %.pre, %.pre175
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.as, ptr %i.av, align 8, !tbaa !693
  store ptr %scevgep.i.i.i.i.i, ptr %i.au, align 8, !tbaa !694
  br i1 %i.at, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pre176 = load ptr, ptr %12, align 8, !tbaa !695
end_hunk_0
begin_hunk_1_@_ZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS_6common4SpanIPKNS0_21BoundedHistCollectionELm18446744073709551615EEERKNS2_13HistogramCutsENS3_IKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_16MultiExpandEntryESaISF_EE:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #11, !inline_history !24
  br label %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.br, %bb.t ], [ %i.cb, %bb.u ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.v, label %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit, !prof !170

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #11
  br label %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit

_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v
  %i.cd = load ptr, ptr %i.ay, align 8, !tbaa !159 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.ce, align 8, !tbaa !155
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !156
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !131
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #11, !inline_history !25
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !131
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #11, !inline_history !25
  br label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.ch, %bb.z ], [ %i.cr, %bb.aa ]
  %i.cs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cs, label %bb.ab, label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !170

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #11
  br label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  %i.ct = add nuw i64 %.035155, 1                 ; 2 uses
  %i.cu = load ptr, ptr %i.ag, align 8, !tbaa !356
  %i.cv = load ptr, ptr %6, align 8, !tbaa !379   ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = sdiv exact i64 %i.cy, 104
  %i.da = icmp ult i64 %i.ct, %i.cz
  br i1 %i.da, label %bb.o, label %._crit_edge.loopexit, !llvm.loop !1728

bb.ac:                                            ; preds = %bb.o
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %bb.de

bb.ad:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.dc = phi ptr [ %i.ao, %._crit_edge.thread ], [ %i.au, %._crit_edge ]
  %i.dd = phi ptr [ %i.ap, %._crit_edge.thread ], [ %i.av, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  %i.de = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc80 unwind label %bb.af

.noexc80:                                         ; preds = %bb.ad
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.de, ptr noundef nonnull @.str.91, i32 noundef 621)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit82 unwind label %bb.af

_ZN4dmlc15LogMessageFatalC2EPKci.exit82:          ; preds = %.noexc80
  %i.df = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit84 unwind label %bb.ag ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit84: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit82
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull @.str.94, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86 unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit84
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88 unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.ai

bb.af:                                            ; preds = %.noexc80, %bb.ad, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit84, %_ZN4dmlc15LogMessageFatalC2EPKci.exit82
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ah unwind label %bb.dh

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn49 = phi { ptr, i32 } [ %i.di, %bb.af ], [ %i.dj, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.de

bb.ai:                                            ; preds = %bb.ae, %._crit_edge
  %i.dk = phi ptr [ %i.dc, %bb.ae ], [ %i.au, %._crit_edge ]
  %i.dl = phi ptr [ %i.dd, %bb.ae ], [ %i.av, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !674
  %i.do = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.dn)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.do, ptr %i.c, align 4, !tbaa !109
  %i.dp = load ptr, ptr %12, align 8, !tbaa !695
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !679
  %i.dr = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIjE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.ds = load i32, ptr %i.c, align 4, !tbaa !109
  %i.dt = sext i32 %i.ds to i64
  %i.du = udiv i64 %i.dr, %i.dt
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  %i.dv = load ptr, ptr %i.ag, align 8, !tbaa !356
  %i.dw = load ptr, ptr %6, align 8, !tbaa !379
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = sdiv exact i64 %i.dz, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  store ptr %12, ptr %16, align 8, !tbaa !698
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree18HistMultiEvaluator14EvaluateSplitsENS0_4SpanIPKNS3_21BoundedHistCollectionELm18446744073709551615EEERKNS0_13HistogramCutsENS5_IKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS3_16MultiExpandEntryESaISH_EEEUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %15, i64 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %.sroa.speculated)
          to label %bb.al unwind label %bb.as

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.eb = load i32, ptr %i.c, align 4, !tbaa !109
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = load ptr, ptr %i.ag, align 8, !tbaa !356 ; 2 uses
  %i.ee = load ptr, ptr %6, align 8, !tbaa !379   ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 2 uses
  %i.ei = sdiv exact i64 %i.eh, 104
  %i.ej = mul i64 %i.ei, %i.ec                    ; 3 uses
  %i.ek = icmp ugt i64 %i.ej, 88686269585142075
  br i1 %i.ek, label %bb.am, label %_ZNSt6vectorIN7xgboost4tree16MultiExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #37
          to label %.noexc94 unwind label %bb.at

.noexc94:                                         ; preds = %bb.am
  unreachable

_ZNSt6vectorIN7xgboost4tree16MultiExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i89 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i89, label %_ZNSt12_Vector_baseIN7xgboost4tree16MultiExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i90

_ZNSt12_Vector_baseIN7xgboost4tree16MultiExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN7xgboost4tree16MultiExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  store i64 0, ptr %17, align 8
  br label %bb.an

.lr.ph.preheader.i.i.i.i.i90:                     ; preds = %_ZNSt6vectorIN7xgboost4tree16MultiExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.el = mul i64 %i.eh, %i.ec                    ; 3 uses
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #38
          to label %.noexc95 unwind label %bb.at  ; 4 uses

.noexc95:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i90
  store ptr %i.em, ptr %17, align 8, !tbaa !379
  %i.en = getelementptr inbounds nuw [104 x i8], ptr %i.em, i64 %i.ej
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.em, i8 0, i64 %i.el, i1 false)
  %scevgep.i.i.i.i.i91 = getelementptr i8, ptr %i.em, i64 %i.el
  %.pre178 = load ptr, ptr %i.ag, align 8, !tbaa !356
  %.pre179 = load ptr, ptr %6, align 8, !tbaa !379
  br label %bb.an

bb.an:                                            ; preds = %.noexc95, %_ZNSt12_Vector_baseIN7xgboost4tree16MultiExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.eo = phi ptr [ %i.ee, %_ZNSt12_Vector_baseIN7xgboost4tree16MultiExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.pre179, %.noexc95 ] ; 2 uses
  %i.ep = phi ptr [ %i.ed, %_ZNSt12_Vector_baseIN7xgboost4tree16MultiExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.pre178, %.noexc95 ] ; 2 uses
  %.sink.i92 = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost4tree16MultiExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.en, %.noexc95 ]
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost4tree16MultiExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i.i.i91, %.noexc95 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %.sink.i92, ptr %i.er, align 8, !tbaa !357
  store ptr %.0.lcssa.i.i.i.i.i93, ptr %i.eq, align 8, !tbaa !356
  %.not167 = icmp ne ptr %i.ep, %i.eo
  %i.es = load i32, ptr %i.c, align 4             ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  %or.cond = select i1 %.not167, i1 %i.et, i1 false
  br i1 %or.cond, label %.preheader149, label %._crit_edge160

.preheader149:                                    ; preds = %bb.an, %._crit_edge158
  %i.eu = phi ptr [ %i.fu, %._crit_edge158 ], [ %i.eo, %bb.an ]
  %i.ev = phi ptr [ %i.fv, %._crit_edge158 ], [ %i.ep, %bb.an ]
  %i.ew = phi i32 [ %i.fw, %._crit_edge158 ], [ %i.es, %bb.an ] ; 3 uses
  %.034159 = phi i64 [ %i.fx, %._crit_edge158 ], [ 0, %bb.an ] ; 3 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph157, label %._crit_edge158

._crit_edge160:                                   ; preds = %._crit_edge158, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fa = load i16, ptr %i.ez, align 8, !tbaa !430, !noalias !1735
  %i.fb = icmp eq i16 %i.fa, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br i1 %i.fb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge160
  %i.fd = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIiE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fc)
          to label %.noexc97 unwind label %bb.cc

.noexc97:                                         ; preds = %bb.ao
  store ptr %i.fd, ptr %18, align 8, !tbaa !432, !alias.scope !1735
  %i.fe = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ey)
          to label %.noexc98 unwind label %bb.cc

.noexc98:                                         ; preds = %.noexc97
  %i.ff = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !433, !alias.scope !1735
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fh = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fg)
          to label %bb.bn unwind label %bb.cc

bb.ap:                                            ; preds = %._crit_edge160
  %i.fi = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIiE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fc)
          to label %.noexc100 unwind label %bb.cc

.noexc100:                                        ; preds = %bb.ap
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !93, !noalias !1735
  store ptr %i.fj, ptr %18, align 8, !tbaa !432, !alias.scope !1735
  %i.fk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ey)
          to label %.noexc101 unwind label %bb.cc

.noexc101:                                        ; preds = %.noexc100
  %i.fl = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !423, !noalias !1735
  store ptr %i.fm, ptr %i.fl, align 8, !tbaa !433, !alias.scope !1735
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %.noexc102 unwind label %bb.cc

.noexc102:                                        ; preds = %.noexc101
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !423, !noalias !1735
  br label %bb.bn

bb.aq:                                            ; preds = %bb.ai
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.ar:                                            ; preds = %bb.aj
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.as:                                            ; preds = %bb.ak
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.dc

bb.at:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i90, %bb.am
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

._crit_edge158.loopexit:                          ; preds = %_ZN7xgboost4tree16MultiExpandEntryaSERKS1_.exit
  %.pre180 = load ptr, ptr %i.ag, align 8, !tbaa !356
  %.pre181 = load ptr, ptr %6, align 8, !tbaa !379
  br label %._crit_edge158

._crit_edge158:                                   ; preds = %._crit_edge158.loopexit, %.preheader149
  %i.fu = phi ptr [ %.pre181, %._crit_edge158.loopexit ], [ %i.eu, %.preheader149 ] ; 2 uses
  %i.fv = phi ptr [ %.pre180, %._crit_edge158.loopexit ], [ %i.ev, %.preheader149 ] ; 2 uses
  %i.fw = phi i32 [ %i.is, %._crit_edge158.loopexit ], [ %i.ew, %.preheader149 ]
  %i.fx = add nuw i64 %.034159, 1                 ; 2 uses
  %i.fy = ptrtoint ptr %i.fv to i64
  %i.fz = ptrtoint ptr %i.fu to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = sdiv exact i64 %i.ga, 104
  %i.gc = icmp ult i64 %i.fx, %i.gb
  br i1 %i.gc, label %.preheader149, label %._crit_edge160, !llvm.loop !1731

.lr.ph157:                                        ; preds = %.preheader149, %_ZN7xgboost4tree16MultiExpandEntryaSERKS1_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7xgboost4tree16MultiExpandEntryaSERKS1_.exit ], [ 0, %.preheader149 ] ; 2 uses
  %i.gd = phi i32 [ %i.is, %_ZN7xgboost4tree16MultiExpandEntryaSERKS1_.exit ], [ %i.ew, %.preheader149 ]
  %i.ge = load ptr, ptr %6, align 8, !tbaa !379
  %i.gf = getelementptr inbounds nuw [104 x i8], ptr %i.ge, i64 %.034159 ; 8 uses
  %i.gg = sext i32 %i.gd to i64
  %i.gh = mul i64 %.034159, %i.gg
  %i.gi = load ptr, ptr %17, align 8, !tbaa !379
  %i.gj = getelementptr [104 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = getelementptr [104 x i8], ptr %i.gj, i64 %indvars.iv ; 10 uses
  %i.gl = load i64, ptr %i.gf, align 8, !tbaa !109
  store i64 %i.gl, ptr %i.gk, align 8, !tbaa !109
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gm, ptr noundef nonnull align 8 dereferenceable(96) %i.gn, i64 12, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 24 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gf, i64 24 ; 2 uses
  %.not.i118 = icmp eq ptr %i.gf, %i.gk
  br i1 %.not.i118, label %.noexc103, label %bb.au

bb.au:                                            ; preds = %.lr.ph157
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gf, i64 32 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !459
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !346 ; 9 uses
  %i.gt = ptrtoint ptr %i.gr to i64               ; 3 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu                    ; 12 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gk, i64 40 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !347
  %i.gy = load ptr, ptr %i.go, align 8, !tbaa !346 ; 5 uses
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64               ; 2 uses
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = icmp ugt i64 %i.gv, %i.hb
  br i1 %i.hc, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.hd = icmp ugt i64 %i.gv, 9223372036854775804
  br i1 %i.hd, label %bb.aw, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i, !prof !170

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc120 unwind label %.loopexit.split-lp151

.noexc120:                                        ; preds = %bb.aw
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i: ; preds = %bb.av
  %i.he = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gv) #38
          to label %.noexc121 unwind label %.loopexit150 ; 4 uses

.noexc121:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %i.hf = icmp samesign ugt i64 %i.gv, 4
  br i1 %i.hf, label %bb.ax, label %bb.ay, !prof !194

bb.ax:                                            ; preds = %.noexc121
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.he, ptr align 4 %i.gs, i64 %i.gv, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

bb.ay:                                            ; preds = %.noexc121
  %i.hg = icmp eq i64 %i.gv, 4
  br i1 %i.hg, label %bb.az, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.hh = load i32, ptr %i.gs, align 4, !tbaa !109
  store i32 %i.hh, ptr %i.he, align 4, !tbaa !109
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i: ; preds = %bb.az, %bb.ay, %bb.ax
  %i.hi = load ptr, ptr %i.go, align 8, !tbaa !346 ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i119, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i
  %i.hj = load ptr, ptr %i.gw, align 8, !tbaa !347
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hm) #39
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.ba, %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i
  store ptr %i.he, ptr %i.go, align 8, !tbaa !346
  %i.hn = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.gv
  store ptr %i.hn, ptr %i.gw, align 8, !tbaa !347
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.bb:                                            ; preds = %bb.au
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gk, i64 32 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !459 ; 3 uses
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = sub i64 %i.hq, %i.ha                    ; 5 uses
  %.not24.i = icmp ult i64 %i.hr, %i.gv
  br i1 %.not24.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
end_hunk_1
begin_hunk_2_@_ZN7xgboost4tree11HistUpdater8InitRootEPNS_7DMatrixENS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEEPNS_7RegTreeE:._crit_edge.i.i
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.dd
  %i.px = load i64, ptr %i.ok, align 8, !tbaa !114
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  br label %bb.de

bb.de:                                            ; preds = %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %.body147, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %.pn92.pn = phi { ptr, i32 } [ %i.lx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ], [ %i.mc, %bb.by ], [ %i.pu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %.pn86.pn, %.body147 ], [ %i.md, %bb.bz ]
  call void @_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #11
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.loopexit
  %.pn92.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %bb.de ], [ %.pn82, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %bb.dg

bb.dg:                                            ; preds = %bb.bt, %bb.bu, %bb.df, %bb.af, %bb.ap, %bb.ao, %bb.ag, %bb.ax, %bb.ac
  %.pn92.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dx, %bb.ag ], [ %.pn79, %bb.ax ], [ %i.du, %bb.ac ], [ %.pn71, %bb.af ], [ %i.ez, %bb.ap ], [ %.pn73.pn, %bb.ao ], [ %.pn92.pn.pn, %bb.df ], [ %i.lo, %bb.bu ], [ %i.ln, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.di

bb.dh:                                            ; preds = %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit
  %i.pz = landingpad { ptr, i32 }
          cleanup
  %i.qa = load ptr, ptr %25, align 8, !tbaa !112  ; 2 uses
  %i.qb = icmp eq ptr %i.qa, %i.pn
  br i1 %i.qb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.dh
  %i.qc = load i64, ptr %i.pn, align 8, !tbaa !114
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qd) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  br label %bb.di

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %bb.dg, %bb.ab
  %.pn98.pn = phi { ptr, i32 } [ %i.pz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %.pn92.pn.pn.pn.pn, %bb.dg ], [ %.pn69, %bb.ab ] ; 2 uses
  %i.qe = load ptr, ptr %i.p, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i.i193 = icmp eq ptr %i.qe, null
  br i1 %.not.i.i.i.i.i193, label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit194, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !347
  %i.qh = ptrtoint ptr %i.qg to i64
  %i.qi = ptrtoint ptr %i.qe to i64
  %i.qj = sub i64 %i.qh, %i.qi
  call void @_ZdlPvm(ptr noundef nonnull %i.qe, i64 noundef %i.qj) #39
  br label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit194

_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit194:     ; preds = %bb.dj, %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %.pn98.pn.pn = phi { ptr, i32 } [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn98.pn, %bb.di ], [ %.pn98.pn, %bb.dj ]
  resume { ptr, i32 } %.pn98.pn.pn

bb.dk:                                            ; preds = %bb.aj
  %i.qk = landingpad { ptr, i32 }
          catch ptr null
  %i.ql = extractvalue { ptr, i32 } %i.qk, 0
  call void @__clang_call_terminate(ptr %i.ql) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree6DriverINS0_14CPUExpandEntryEE3PopEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.807") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.22 = alloca { i8, %"struct.xgboost::tree::GradStats", %"struct.xgboost::tree::GradStats" }, align 8 ; 5 uses
  %2 = alloca [1 x %"struct.xgboost::tree::CPUExpandEntry"], align 8 ; 18 uses
  %3 = alloca %"struct.xgboost::tree::CPUExpandEntry", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !453  ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !453
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !3226
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.8.copyload = load float, ptr %i.j, align 8 ; 3 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.k = load i64, ptr %.sroa.9.8..sroa_idx, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !459  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !346  ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %i.r, 9223372036854775804
  br i1 %i.s, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !170

.noexc.i.i.i.i:                                   ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #38
  %.pre60 = load ptr, ptr %i.l, align 8, !tbaa !115 ; 3 uses
  %.pre61 = load ptr, ptr %i.m, align 8, !tbaa !115 ; 2 uses
  %.pre62 = ptrtoint ptr %.pre61 to i64
  %.pre63 = ptrtoint ptr %.pre60 to i64
  %i.u = icmp eq ptr %.pre61, %.pre60
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.d
  %.pre-phi64 = phi i64 [ %.pre63, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.q, %bb.d ]
  %.pre-phi = phi i64 [ %.pre62, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.p, %bb.d ]
  %.not.i.i.i.i.i.i14 = phi i1 [ %i.u, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ true, %bb.d ]
  %i.v = phi ptr [ %.pre60, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.t, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %bb.d ] ; 8 uses
  %i.x = sub i64 %.pre-phi, %.pre-phi64           ; 9 uses
  %i.y = icmp sgt i64 %i.x, 4                     ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h, !prof !194

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.w, ptr align 4 %i.v, i64 %i.x, i1 false)
  br label %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.z = icmp eq i64 %i.x, 4
  br i1 %i.z, label %bb.i, label %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !109
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !109
  br label %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit

_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit:    ; preds = %bb.g, %bb.h, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  invoke void @_ZNSt14priority_queueIN7xgboost4tree14CPUExpandEntryESt6vectorIS2_SaIS2_EESt8functionIFbS2_S2_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1004 ; 2 uses
  %i.ae = fcmp ole float %.sroa.6.8.copyload, f0x358637BD
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load float, ptr %i.af, align 8
  %i.ah = fcmp olt float %.sroa.6.8.copyload, %i.ag
  %or.cond15.i = select i1 %i.ae, i1 true, i1 %i.ah
  br i1 %or.cond15.i, label %_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !555 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  %.sroa.044.4.extract.shift = lshr i64 %i.i, 32
  %.sroa.044.4.extract.trunc = trunc nuw i64 %.sroa.044.4.extract.shift to i32
  %i.al = icmp eq i32 %i.aj, %.sroa.044.4.extract.trunc
  %or.cond18.i = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond18.i, label %_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit.thread, label %_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit

_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !556 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 1
  %i.ap = icmp ne i32 %i.ad, %i.an
  %or.cond.not.i = or i1 %i.ao, %i.ap
  br i1 %or.cond.not.i, label %bb.l, label %_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit.thread

bb.l:                                             ; preds = %_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit
  %i.aq = add nsw i32 %i.ad, 1
  store i32 %i.aq, ptr %i.ac, align 8, !tbaa !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 %i.i, ptr %2, align 8, !tbaa !109
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sroa.6.8.copyload, ptr %i.ar, align 8
  %.sroa.9.8..sroa_idx46 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i64 %i.k, ptr %.sroa.9.8..sroa_idx46, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i14, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.au = getelementptr inbounds i8, ptr null, i64 %i.x ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store ptr %i.au, ptr %i.av, align 8, !tbaa !347
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp ugt i64 %i.x, 9223372036854775804
  br i1 %i.aw, label %.noexc.i.i.i.i16, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i15, !prof !170

.noexc.i.i.i.i16:                                 ; preds = %bb.m
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.noexc.i.i.i.i16
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i15: ; preds = %bb.m
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #38
          to label %.noexc17 unwind label %bb.w   ; 5 uses

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i15
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !346
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !459
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.x ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !347
  br i1 %i.y, label %bb.n, label %bb.o, !prof !3227

bb.n:                                             ; preds = %.noexc17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr align 4 %i.w, i64 %i.x, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %.noexc17
  %i.bb = icmp eq i64 %i.x, 4
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load i32, ptr %i.w, align 4, !tbaa !109
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !109
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %.thread
  %i.bd = phi ptr [ %i.az, %bb.n ], [ %i.az, %bb.o ], [ %i.az, %bb.p ], [ %i.au, %.thread ]
  %i.be = phi ptr [ %i.ay, %bb.n ], [ %i.ay, %bb.o ], [ %i.ay, %bb.p ], [ %i.at, %.thread ]
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !459
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bg = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #38
          to label %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EE11_M_allocateEm.exit.i.i unwind label %bb.r ; 3 uses

_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.bg, ptr %0, align 8, !tbaa !474
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !458
  %i.bk = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN7xgboost4tree14CPUExpandEntryEPS2_ET0_T_S7_S6_(ptr noundef nonnull %2, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bg)
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EE11_M_allocateEm.exit.i.i, %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !474   ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i5.i, label %.body, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !458
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #39
  br label %.body

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EE11_M_allocateEm.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bs, align 8, !tbaa !457
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !347
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #39
  br label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit

_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit:        ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.y

bb.v:                                             ; preds = %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i15, %.noexc.i.i.i.i16
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %bb.r, %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i.i19 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i19, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %.body
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !347
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #39
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %.body, %bb.w
  %.pn10 = phi { ptr, i32 } [ %i.cb, %bb.w ], [ %i.bl, %.body ], [ %i.bl, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.aa

_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit.thread: ; preds = %bb.k, %bb.j, %_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit.thread, %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit
  %.not.i.i.i.i.i21 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i21, label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit22, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.r) #39
  br label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit22

_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit22:      ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  br label %bb.az

bb.aa:                                            ; preds = %.loopexit, %bb.v
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %.loopexit ], [ %i.ca, %bb.v ]
  %.not.i.i.i.i.i23 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i23, label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit24, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.r) #39
  br label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit24

_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit24:      ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  br label %bb.ba

bb.ac:                                            ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.cj = load i64, ptr %i.b, align 8, !tbaa !109
  store i64 %i.cj, ptr %3, align 8, !tbaa !109
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(80) %i.cl, i64 12, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !459 ; 2 uses
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !346 ; 3 uses
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 3 uses
  %.not.i.i.i.i.i.i25 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i.i.i.i.i.i25, label %.noexc29, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = icmp ugt i64 %i.ct, 9223372036854775804
  br i1 %i.cu, label %.noexc.i.i.i.i27, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26, !prof !170

.noexc.i.i.i.i27:                                 ; preds = %bb.ad
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc28 unwind label %bb.at

.noexc28:                                         ; preds = %.noexc.i.i.i.i27
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26: ; preds = %bb.ad
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #38
          to label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26..noexc29_crit_edge unwind label %bb.at

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26..noexc29_crit_edge: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26
  %.pre = load ptr, ptr %i.cn, align 8, !tbaa !115 ; 2 uses
  %.pre58 = load ptr, ptr %i.co, align 8, !tbaa !115
  %.pre65 = ptrtoint ptr %.pre58 to i64
  %.pre67 = ptrtoint ptr %.pre to i64
  br label %.noexc29

.noexc29:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26..noexc29_crit_edge, %bb.ac
  %.pre-phi68 = phi i64 [ %.pre67, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26..noexc29_crit_edge ], [ %i.cs, %bb.ac ]
  %.pre-phi66 = phi i64 [ %.pre65, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26..noexc29_crit_edge ], [ %i.cr, %bb.ac ]
  %i.cw = phi ptr [ %.pre, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26..noexc29_crit_edge ], [ %i.cq, %bb.ac ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN7xgboost4tree13HistEvaluator8InitRootERKNS0_9GradStatsE:bb.a
  br label %_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN7xgboost4tree13HistEvaluator9NodeEntryES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i16, ptr %i.n, align 8, !tbaa !430, !noalias !3282
  %i.p = icmp eq i16 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EE6resizeEm.exit
  %i.r = tail call noundef ptr @_ZNK7xgboost16HostDeviceVectorIiE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !noalias !3282 ; 0 uses
  %i.s = tail call noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(33) %i.m), !noalias !3282
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = tail call noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t), !noalias !3282
  br label %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EE6resizeEm.exit
  %i.v = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIiE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !noalias !3282 ; 0 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(33) %i.m), !noalias !3282
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !423, !noalias !3282
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y), !noalias !3282
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !423, !noalias !3282
  br label %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit

_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit: ; preds = %bb.e, %bb.f
  %.sroa.49.0 = phi ptr [ %i.s, %bb.e ], [ %i.x, %bb.f ] ; 2 uses
  %.sink4.i = phi ptr [ %i.u, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %.sink3.in.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sink3.i = load i8, ptr %.sink3.in.i, align 8, !tbaa !438, !range !184, !noalias !3282, !noundef !185
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !324 ; 3 uses
  %i.ac = load <2 x double>, ptr %1, align 8, !tbaa !632 ; 3 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0 ; 9 uses
  store <2 x double> %i.ac, ptr %i.ab, align 8, !tbaa !632
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1016 ; 6 uses
  %i.ag = extractelement <2 x double> %i.ac, i64 1 ; 3 uses
  %i.ah = fcmp ugt double %i.ag, 0.000000e+00     ; 2 uses
  br i1 %i.ah, label %bb.g, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

bb.g:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !742 ; 2 uses
  %i.ak = fpext float %i.aj to double             ; 3 uses
  %i.al = fcmp ogt double %i.ad, %i.ak
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = fsub double %i.ad, %i.ak
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.an = fneg float %i.aj
  %i.ao = fpext float %i.an to double
  %i.ap = fcmp olt double %i.ad, %i.ao
  br i1 %i.ap, label %bb.j, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.aq = fadd double %i.ad, %i.ak
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi double [ %i.am, %bb.h ], [ %i.aq, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.ar = fneg double %.0.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.at = load float, ptr %i.as, align 8, !tbaa !743
  %i.au = fpext float %i.at to double
  %i.av = fadd double %i.ag, %i.au
  %i.aw = fdiv double %i.ar, %i.av                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !744 ; 2 uses
  %i.az = fcmp une float %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.k, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

bb.k:                                             ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i
  %i.ba = tail call double @llvm.fabs.f64(double %i.aw)
  %i.bb = fpext float %i.ay to double             ; 2 uses
  %i.bc = fcmp ogt double %i.ba, %i.bb
  br i1 %i.bc, label %bb.l, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bd = tail call double @llvm.copysign.f64(double %i.bb, double %i.aw)
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i: ; preds = %bb.l, %bb.k, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i, %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit
  %.012.i.i.i.i.i = phi double [ 0.000000e+00, %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit ], [ %i.bd, %bb.l ], [ %i.aw, %bb.k ], [ %i.aw, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i ]
  %i.be = fptrunc double %.012.i.i.i.i.i to float ; 4 uses
  %i.bf = trunc nuw i8 %.sink3.i to i1            ; 2 uses
  br i1 %i.bf, label %bb.m, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i

bb.m:                                             ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i
  %i.bg = load float, ptr %.sroa.49.0, align 4, !tbaa !241 ; 2 uses
  %i.bh = fcmp ogt float %i.bg, %i.be
  br i1 %i.bh, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load float, ptr %.sink4.i, align 4, !tbaa !241 ; 2 uses
  %i.bj = fcmp olt float %i.bi, %i.be
  %..i.i.i.i = select i1 %i.bj, float %i.bi, float %i.be
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i: ; preds = %bb.n, %bb.m, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i
  %.1.i.i.i.i = phi float [ %i.be, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i ], [ %i.bg, %bb.m ], [ %..i.i.i.i, %bb.n ] ; 4 uses
  br i1 %i.ah, label %bb.o, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit: ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store float 0.000000e+00, ptr %i.bk, align 8, !tbaa !1019
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.o:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i
  %i.bl = fmul double %i.ad, 2.000000e+00
  %i.bm = fpext float %.1.i.i.i.i to double
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !743
  %i.bp = fpext float %i.bo to double
  %i.bq = fadd double %i.ag, %i.bp                ; 2 uses
  %i.br = fmul float %.1.i.i.i.i, %.1.i.i.i.i
  %i.bs = fpext float %i.br to double
  %i.bt = fmul double %i.bq, %i.bs
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bm, double %i.bt)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !742 ; 2 uses
  %i.bx = fpext float %i.bw to double             ; 4 uses
  %i.by = fmul double %i.bx, 2.000000e+00
  %i.bz = tail call noundef float @llvm.fabs.f32(float %.1.i.i.i.i)
  %i.ca = fpext float %i.bz to double
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.by, double %i.ca, double %i.bu)
  %i.cc = fptrunc double %i.cb to float
  %i.cd = fneg float %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store float %i.cd, ptr %i.ce, align 8, !tbaa !1019
  %i.cf = fcmp ogt double %i.ad, %i.bx
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cg = fsub double %i.ad, %i.bx
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ch = fneg float %i.bw
  %i.ci = fpext float %i.ch to double
  %i.cj = fcmp olt double %i.ad, %i.ci
  br i1 %i.cj, label %bb.r, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.ck = fadd double %i.ad, %i.bx
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  %.0.i.i.i.i.i = phi double [ %i.cg, %bb.p ], [ %i.ck, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.cl = fneg double %.0.i.i.i.i.i
  %i.cm = fdiv double %i.cl, %i.bq                ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.co = load float, ptr %i.cn, align 8, !tbaa !744 ; 2 uses
  %i.cp = fcmp une float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.s, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.s:                                             ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i
  %i.cq = tail call double @llvm.fabs.f64(double %i.cm)
  %i.cr = fpext float %i.co to double             ; 2 uses
  %i.cs = fcmp ogt double %i.cq, %i.cr
  br i1 %i.cs, label %bb.t, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.ct = tail call double @llvm.copysign.f64(double %i.cr, double %i.cm)
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i: ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit, %bb.t, %bb.s, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i
  %.012.i.i.i.i = phi double [ 0.000000e+00, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit ], [ %i.ct, %bb.t ], [ %i.cm, %bb.s ], [ %i.cm, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i ]
  %i.cu = fptrunc double %.012.i.i.i.i to float   ; 4 uses
  br i1 %i.bf, label %bb.u, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

bb.u:                                             ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i
  %i.cv = load float, ptr %.sroa.49.0, align 4, !tbaa !241 ; 2 uses
  %i.cw = fcmp ogt float %i.cv, %i.cu
  br i1 %i.cw, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = load float, ptr %.sink4.i, align 4, !tbaa !241 ; 2 uses
  %i.cy = fcmp olt float %i.cx, %i.cu
  %..i.i.i = select i1 %i.cy, float %i.cx, float %i.cu
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit: ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i, %bb.u, %bb.v
  %.1.i.i.i = phi float [ %i.cu, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i ], [ %i.cv, %bb.u ], [ %..i.i.i, %bb.v ]
  ret float %.1.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, ptr %4, ptr noundef %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.xgboost::common::Span.29", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 12 uses
  %7 = alloca %"class.std::vector.588", align 8   ; 17 uses
  %8 = alloca %"class.std::shared_ptr.113", align 16 ; 7 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %10 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 10 uses
  %11 = alloca %class.anon.834, align 8           ; 5 uses
  %12 = alloca %"class.std::vector.807", align 8  ; 15 uses
  %13 = alloca %"struct.xgboost::tree::TreeEvaluator::SplitEvaluator", align 8 ; 11 uses
  %14 = alloca %class.anon.835, align 8           ; 13 uses
  store i64 %3, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = load ptr, ptr %0, align 8, !tbaa !1015
  %i.d = tail call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.c)
  store i32 %i.d, ptr %i.a, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !457  ; 2 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !474    ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 88                  ; 3 uses
  %i.l = icmp ugt i64 %i.k, 576460752303423487
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #37
  unreachable

_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %._crit_edge.thread, label %bb.b

._crit_edge.thread:                               ; preds = %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %bb.r

bb.b:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.o = shl nuw nsw i64 %i.k, 4                  ; 3 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38 ; 5 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !692
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.o, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.p, i64 %i.o ; 2 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !457
  %.pre148 = load ptr, ptr %5, align 8, !tbaa !474 ; 2 uses
  %i.r = icmp eq ptr %.pre, %.pre148
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.t, align 8, !tbaa !693
  store ptr %scevgep.i.i.i.i.i, ptr %i.s, align 8, !tbaa !694
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pre149 = load ptr, ptr %7, align 8, !tbaa !695
  %.pre150 = load ptr, ptr %i.s, align 8, !tbaa !695
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.w = phi ptr [ %.pre150, %._crit_edge.loopexit ], [ %scevgep.i.i.i.i.i, %bb.b ]
  %i.x = phi ptr [ %.pre149, %._crit_edge.loopexit ], [ %i.p, %bb.b ] ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.w
  br i1 %i.y, label %bb.r, label %bb.w, !prof !696

bb.c:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.z = phi ptr [ %.pre148, %.lr.ph ], [ %i.br, %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.038129 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !476
  %i.ab = load ptr, ptr %0, align 8, !tbaa !1015
  %i.ac = getelementptr inbounds nuw [88 x i8], ptr %i.z, i64 %.038129
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !466
  invoke void @_ZN7xgboost6common13ColumnSampler13GetFeatureSetEPKNS_7ContextEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.113") align 8 %8, ptr noundef nonnull align 8 dereferenceable(104) %i.aa, ptr noundef %i.ab, i32 noundef %i.ae)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %7, align 8, !tbaa !692
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %.038129 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load <2 x ptr>, ptr %8, align 16, !tbaa !138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !159 ; 8 uses
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !138
  %.not.i.i.i.i62 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i62, label %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ak, align 8, !tbaa !155
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !156
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !131
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #11, !inline_history !24
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !131
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #11, !inline_history !24
  br label %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.h ], [ %i.ax, %bb.i ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.j, label %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit, !prof !170

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #11
  br label %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit

_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !159 ; 8 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ba, align 8, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !156
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !131
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #11, !inline_history !25
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !131
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #11, !inline_history !25
  br label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.bd, %bb.n ], [ %i.bn, %bb.o ]
  %i.bo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bo, label %bb.p, label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !170

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #11
  br label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.bp = add nuw i64 %.038129, 1                 ; 2 uses
  %i.bq = load ptr, ptr %i.e, align 8, !tbaa !457
  %i.br = load ptr, ptr %5, align 8, !tbaa !474   ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 88
  %i.bw = icmp ult i64 %i.bp, %i.bv
  br i1 %i.bw, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !3283

bb.q:                                             ; preds = %bb.c
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.cp

bb.r:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.by = phi ptr [ %i.m, %._crit_edge.thread ], [ %i.s, %._crit_edge ]
  %i.bz = phi ptr [ %i.n, %._crit_edge.thread ], [ %i.t, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.ca = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc63 unwind label %bb.t

.noexc63:                                         ; preds = %bb.r
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ca, ptr noundef nonnull @.str.91, i32 noundef 277)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.t

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc63
  %i.cb = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.u ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.94, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %.pre151 = load ptr, ptr %7, align 8, !tbaa !695
  br label %bb.w

bb.t:                                             ; preds = %.noexc63, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.v unwind label %bb.cq

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.cf, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.cp

bb.w:                                             ; preds = %bb.s, %._crit_edge
  %i.cg = phi ptr [ %i.by, %bb.s ], [ %i.s, %._crit_edge ]
  %i.ch = phi ptr [ %i.bz, %bb.s ], [ %i.t, %._crit_edge ]
  %i.ci = phi ptr [ %.pre151, %bb.s ], [ %i.x, %._crit_edge ]
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !679
  %i.ck = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIjE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !109
  %i.cm = sext i32 %i.cl to i64
  %i.cn = udiv i64 %i.ck, %i.cm
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !457
  %i.cp = load ptr, ptr %5, align 8, !tbaa !474
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 88
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store ptr %7, ptr %11, align 8, !tbaa !698
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree13HistEvaluator14EvaluateSplitsERKNS3_21BoundedHistCollectionERKNS0_13HistogramCutsENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS3_14CPUExpandEntryESaISG_EEEUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %10, i64 noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %.sroa.speculated)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !109
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = load ptr, ptr %i.e, align 8, !tbaa !457 ; 2 uses
  %i.cx = load ptr, ptr %5, align 8, !tbaa !474   ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = sdiv exact i64 %i.da, 88
  %i.dc = mul i64 %i.db, %i.cv                    ; 3 uses
  %i.dd = icmp ugt i64 %i.dc, 104811045873349725
  br i1 %i.dd, label %bb.z, label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #37
          to label %.noexc74 unwind label %bb.af

.noexc74:                                         ; preds = %bb.z
  unreachable

_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i69 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.i69, label %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i70

_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  store i64 0, ptr %12, align 8
  br label %bb.aa

.lr.ph.preheader.i.i.i.i.i70:                     ; preds = %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.de = mul i64 %i.da, %i.cv                    ; 3 uses
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #38
          to label %.noexc75 unwind label %bb.af  ; 4 uses

.noexc75:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i70
  store ptr %i.df, ptr %12, align 8, !tbaa !474
  %i.dg = getelementptr inbounds nuw [88 x i8], ptr %i.df, i64 %i.dc
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.df, i8 0, i64 %i.de, i1 false)
  %scevgep.i.i.i.i.i71 = getelementptr i8, ptr %i.df, i64 %i.de
  %.pre152 = load ptr, ptr %i.e, align 8, !tbaa !457
  %.pre153 = load ptr, ptr %5, align 8, !tbaa !474
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc75, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.dh = phi ptr [ %i.cx, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.pre153, %.noexc75 ] ; 2 uses
  %i.di = phi ptr [ %i.cw, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.pre152, %.noexc75 ] ; 2 uses
  %.sink.i72 = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.dg, %.noexc75 ]
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i.i.i71, %.noexc75 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %.sink.i72, ptr %i.dk, align 8, !tbaa !458
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.dj, align 8, !tbaa !457
  %.not140 = icmp ne ptr %i.di, %i.dh
  %i.dl = load i32, ptr %i.a, align 4             ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  %or.cond = select i1 %.not140, i1 %i.dm, i1 false
  br i1 %or.cond, label %.preheader123, label %._crit_edge134

.preheader123:                                    ; preds = %bb.aa, %._crit_edge132
  %i.dn = phi ptr [ %i.en, %._crit_edge132 ], [ %i.dh, %bb.aa ]
  %i.do = phi ptr [ %i.eo, %._crit_edge132 ], [ %i.di, %bb.aa ]
  %i.dp = phi i32 [ %i.ep, %._crit_edge132 ], [ %i.dl, %bb.aa ] ; 2 uses
  %i.dq = phi i32 [ %i.eq, %._crit_edge132 ], [ %i.dl, %bb.aa ] ; 3 uses
  %.037133 = phi i64 [ %i.er, %._crit_edge132 ], [ 0, %bb.aa ] ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph131, label %._crit_edge132

._crit_edge134:                                   ; preds = %._crit_edge132, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3290)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.du = load i16, ptr %i.dt, align 8, !tbaa !430, !noalias !3290
  %i.dv = icmp eq i16 %i.du, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.dv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge134
  %i.dx = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIiE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %.noexc77 unwind label %bb.bn

.noexc77:                                         ; preds = %bb.ab
  store ptr %i.dx, ptr %13, align 8, !tbaa !432, !alias.scope !3290
  %i.dy = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ds)
          to label %.noexc78 unwind label %bb.bn

.noexc78:                                         ; preds = %.noexc77
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !433, !alias.scope !3290
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eb = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ea)
          to label %bb.ba unwind label %bb.bn

bb.ac:                                            ; preds = %._crit_edge134
  %i.ec = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIiE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %.noexc80 unwind label %bb.bn

.noexc80:                                         ; preds = %bb.ac
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !93, !noalias !3290
  store ptr %i.ed, ptr %13, align 8, !tbaa !432, !alias.scope !3290
  %i.ee = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ds)
          to label %.noexc81 unwind label %bb.bn

.noexc81:                                         ; preds = %.noexc80
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !423, !noalias !3290
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !433, !alias.scope !3290
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ei = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eh)
          to label %.noexc82 unwind label %bb.bn

.noexc82:                                         ; preds = %.noexc81
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !423, !noalias !3290
  br label %bb.ba

bb.ad:                                            ; preds = %bb.w
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ae:                                            ; preds = %bb.x
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.co

bb.af:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i70, %bb.z
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

._crit_edge132.loopexit:                          ; preds = %bb.az
  %.pre155 = load ptr, ptr %i.e, align 8, !tbaa !457
  %.pre156 = load ptr, ptr %5, align 8, !tbaa !474
  br label %._crit_edge132

._crit_edge132:                                   ; preds = %._crit_edge132.loopexit, %.preheader123
  %i.en = phi ptr [ %.pre156, %._crit_edge132.loopexit ], [ %i.dn, %.preheader123 ] ; 2 uses
  %i.eo = phi ptr [ %.pre155, %._crit_edge132.loopexit ], [ %i.do, %.preheader123 ] ; 2 uses
  %i.ep = phi i32 [ %i.he, %._crit_edge132.loopexit ], [ %i.dp, %.preheader123 ]
  %i.eq = phi i32 [ %i.he, %._crit_edge132.loopexit ], [ %i.dq, %.preheader123 ]
  %i.er = add nuw i64 %.037133, 1                 ; 2 uses
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = ptrtoint ptr %i.en to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = sdiv exact i64 %i.eu, 88
  %i.ew = icmp ult i64 %i.er, %i.ev
  br i1 %i.ew, label %.preheader123, label %._crit_edge134, !llvm.loop !3286

.lr.ph131:                                        ; preds = %.preheader123, %bb.az
  %i.ex = phi i32 [ %i.he, %bb.az ], [ %i.dp, %.preheader123 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.az ], [ 0, %.preheader123 ] ; 2 uses
  %i.ey = phi i32 [ %i.he, %bb.az ], [ %i.dq, %.preheader123 ]
  %i.ez = load ptr, ptr %5, align 8, !tbaa !474
  %i.fa = getelementptr inbounds nuw [88 x i8], ptr %i.ez, i64 %.037133 ; 6 uses
  %i.fb = sext i32 %i.ey to i64
  %i.fc = mul i64 %.037133, %i.fb
  %i.fd = load ptr, ptr %12, align 8, !tbaa !474
  %i.fe = getelementptr [88 x i8], ptr %i.fd, i64 %i.fc
  %i.ff = getelementptr [88 x i8], ptr %i.fe, i64 %indvars.iv ; 8 uses
  %i.fg = load i64, ptr %i.fa, align 8, !tbaa !109
  store i64 %i.fg, ptr %i.ff, align 8, !tbaa !109
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fh, ptr noundef nonnull align 8 dereferenceable(80) %i.fi, i64 12, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 24 ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.fa, %i.ff
  br i1 %.not.i, label %bb.az, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph131
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 32 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !459
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !346 ; 9 uses
  %i.fo = ptrtoint ptr %i.fm to i64               ; 3 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp                    ; 12 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ff, i64 40 ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !347
  %i.ft = load ptr, ptr %i.fj, align 8, !tbaa !346 ; 5 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64               ; 2 uses
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = icmp ugt i64 %i.fq, %i.fw
  br i1 %i.fx, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.fy = icmp ugt i64 %i.fq, 9223372036854775804
  br i1 %i.fy, label %bb.ai, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i, !prof !170

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc96 unwind label %.loopexit.split-lp125

.noexc96:                                         ; preds = %bb.ai
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i: ; preds = %bb.ah
  %i.fz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fq) #38
          to label %.noexc97 unwind label %.loopexit124 ; 4 uses

.noexc97:                                         ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %i.ga = icmp samesign ugt i64 %i.fq, 4
  br i1 %i.ga, label %bb.aj, label %bb.ak, !prof !194

bb.aj:                                            ; preds = %.noexc97
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fz, ptr align 4 %i.fn, i64 %i.fq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

bb.ak:                                            ; preds = %.noexc97
  %i.gb = icmp eq i64 %i.fq, 4
  br i1 %i.gb, label %bb.al, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.gc = load i32, ptr %i.fn, align 4, !tbaa !109
  store i32 %i.gc, ptr %i.fz, align 4, !tbaa !109
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.gd = load ptr, ptr %i.fj, align 8, !tbaa !346 ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i95, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i
  %i.ge = load ptr, ptr %i.fr, align 8, !tbaa !347
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gd to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gh) #39
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.am, %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i
  store ptr %i.fz, ptr %i.fj, align 8, !tbaa !346
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fq
  store ptr %i.gi, ptr %i.fr, align 8, !tbaa !347
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.an:                                            ; preds = %bb.ag
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ff, i64 32 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !459 ; 3 uses
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = sub i64 %i.gl, %i.fv                    ; 5 uses
  %.not24.i = icmp ult i64 %i.gm, %i.fq
  br i1 %.not24.i, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gn = icmp sgt i64 %i.fq, 4
  br i1 %i.gn, label %bb.ap, label %bb.aq, !prof !194
end_hunk_3
