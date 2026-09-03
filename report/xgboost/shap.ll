Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/shap?download=true
inline.NumInlined: 4414
inline.NumDeleted: 1676
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !377
  tail call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_123WriteWeightedLeafReturnINS_4tree14ScalarTreeViewEEEvRKT_RKNS0_6detail14QuadratureRuleEijRKSt5arrayIfLm8EEfPSD_(ptr noundef nonnull align 8 dereferenceable(68) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %i.j, i32 noundef %1, i32 noundef %i.l, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef %3, ptr noundef %4)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !276  ; 2 uses
  %i.o = tail call fastcc noundef float @_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE11ChildWeightEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %i.g)
  %i.p = tail call fastcc noundef float @_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE11ChildWeightEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %i.n)
  %i.q = load ptr, ptr %0, align 8, !tbaa !389, !nonnull !198, !align !199 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !273  ; 2 uses
  %i.t = getelementptr inbounds [20 x i8], ptr %i.s, i64 %i.d ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !391  ; 2 uses
  %i.w = and i32 %i.v, 2147483647
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !997, !nonnull !198, !align !199
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !97 ; 2 uses
  %i.ad = fcmp uno float %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp slt i32 %i.v, 0
  %.in.v.i.i.i = select i1 %i.ae, i64 4, i64 8
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 %.in.v.i.i.i
  %i.af = load i32, ptr %.in.i.i.i, align 4, !tbaa !18
  br label %_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE16EvaluateGoesLeftEi.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !275
  %i.ai = tail call noundef zeroext i1 @_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE(ptr noundef nonnull align 8 dereferenceable(68) %i.q, i32 noundef %1, float noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.q)
  %i.aj = xor i1 %i.ai, true
  %i.ak = zext i1 %i.aj to i32
  %i.al = add nsw i32 %i.ah, %i.ak
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !389
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 48
  %.pre7.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !273
  br label %_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE16EvaluateGoesLeftEi.exit

_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE16EvaluateGoesLeftEi.exit: ; preds = %bb.d, %bb.e
  %i.am = phi ptr [ %i.s, %bb.d ], [ %.pre7.i, %bb.e ]
  %.0.i.i = phi i32 [ %i.af, %bb.d ], [ %i.al, %bb.e ]
  %i.an = getelementptr inbounds [20 x i8], ptr %i.am, i64 %i.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !275
  %i.aq = icmp eq i32 %.0.i.i, %i.ap              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  tail call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE10VisitChildEiifbRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %i.g, float noundef %i.o, i1 noundef zeroext %i.aq, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef %3, ptr noundef %4)
  %i.ar = xor i1 %i.aq, true
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE10VisitChildEiifbRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %i.n, float noundef %i.p, i1 noundef zeroext %i.ar, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef %3, ptr noundef %5)
  %i.as = load <4 x float>, ptr %5, align 16, !tbaa !97
  %i.at = load <4 x float>, ptr %4, align 4, !tbaa !97
  %i.au = fadd <4 x float> %i.as, %i.at
  store <4 x float> %i.au, ptr %4, align 4, !tbaa !97
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = load <4 x float>, ptr %i.av, align 16, !tbaa !97
  %i.ay = load <4 x float>, ptr %i.aw, align 4, !tbaa !97
  %i.az = fadd <4 x float> %i.ax, %i.ay
  store <4 x float> %i.az, ptr %i.aw, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.f

bb.f:                                             ; preds = %_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE16EvaluateGoesLeftEi.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_123WriteWeightedLeafReturnINS_4tree14ScalarTreeViewEEEvRKT_RKNS0_6detail14QuadratureRuleEijRKSt5arrayIfLm8EEfPSD_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %4, float noundef %5, ptr nofree noundef nonnull writeonly captures(none) %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %3, ptr %i.d, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i32 0, ptr %i.e, align 4, !tbaa !18
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %_ZN4dmlc11LogCheck_EQIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %_ZN4dmlc11LogCheck_EQIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i

_ZN4dmlc11LogCheck_EQIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit

_ZN4dmlc11LogCheck_EQIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_EQIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.g = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.g, ptr noundef nonnull @.str, i32 noundef 38)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i:          ; preds = %.noexc.i
  %i.h = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.71, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.k = load ptr, ptr %7, align 8, !tbaa !21     ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.i, %.noexc.i, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.c ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  resume { ptr, i32 } %.pn.i

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %.pr13.i = load ptr, ptr %7, align 8, !tbaa !21 ; 4 uses
  %.not.i.i = icmp eq ptr %.pr13.i, null
  br i1 %.not.i.i, label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %.pr13.i, align 8, !tbaa !26 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pr13.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.v = load i64, ptr %i.t, align 8, !tbaa !28
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr13.i, i64 noundef 32) #30
  br label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit

bb.h:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit: ; preds = %_ZN4dmlc11LogCheck_EQIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, %_ZN4dmlc11LogCheck_EQIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  %i.z = add nuw i64 %i.c, 32
  %i.aa = add nuw i64 %i.b, 32
  %i.ab = add nuw i64 %i.b, 64
  %i.ac = add i64 %i.a, 32                        ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.z, %i.a
  %rt.bound1 = icmp ugt i64 %i.ac, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound014 = icmp ugt i64 %i.ab, %i.a
  %rt.bound115 = icmp ult i64 %i.aa, %i.ac
  %rt.conflict16 = and i1 %rt.bound014, %rt.bound115
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict16
  %rt.guard = freeze i1 %rt.conflict.all
  br i1 %rt.guard, label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit.rtscalar, label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit.rtvec, !prof !98

_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit.rtvec: ; preds = %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !273
  %i.af = sext i32 %2 to i64
  %i.ag = getelementptr inbounds [20 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aj = fmul float %5, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load <4 x float>, ptr %4, align 4, !tbaa !97
  %i.am = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ao = fmul <4 x float> %i.an, %i.al
  %i.ap = load <4 x float>, ptr %i.ak, align 4, !tbaa !97
  %i.aq = fmul <4 x float> %i.ao, %i.ap
  store <4 x float> %i.aq, ptr %6, align 4, !tbaa !97
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.au = load <4 x float>, ptr %i.ar, align 4, !tbaa !97
  %i.av = fmul <4 x float> %i.an, %i.au
  %i.aw = load <4 x float>, ptr %i.as, align 4, !tbaa !97
  %i.ax = fmul <4 x float> %i.av, %i.aw
  store <4 x float> %i.ax, ptr %i.at, align 4, !tbaa !97
  br label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit.rtcont

_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit.rtscalar: ; preds = %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !273
  %i.ba = sext i32 %2 to i64
  %i.bb = getelementptr inbounds [20 x i8], ptr %i.az, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.be = fmul float %5, %i.bd                    ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load float, ptr %4, align 4, !tbaa !97
  %i.bh = fmul float %i.be, %i.bg
  %i.bi = load float, ptr %i.bf, align 4, !tbaa !97
  %i.bj = fmul float %i.bh, %i.bi
  store float %i.bj, ptr %6, align 4, !tbaa !97
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !97
  %i.bm = fmul float %i.be, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !97
  %i.bp = fmul float %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.bp, ptr %i.bq, align 4, !tbaa !97
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !97
  %i.bt = fmul float %i.be, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !97
  %i.bw = fmul float %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.bw, ptr %i.bx, align 4, !tbaa !97
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bz = load float, ptr %i.by, align 4, !tbaa !97
  %i.ca = fmul float %i.be, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !97
  %i.cd = fmul float %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.cd, ptr %i.ce, align 4, !tbaa !97
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !97
  %i.ch = fmul float %i.be, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !97
  %i.ck = fmul float %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.ck, ptr %i.cl, align 4, !tbaa !97
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !97
  %i.co = fmul float %i.be, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !97
  %i.cr = fmul float %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.cr, ptr %i.cs, align 4, !tbaa !97
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !97
  %i.cv = fmul float %i.be, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !97
  %i.cy = fmul float %i.cv, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.cy, ptr %i.cz, align 4, !tbaa !97
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.db = load float, ptr %i.da, align 4, !tbaa !97
  %i.dc = fmul float %i.be, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.de = load float, ptr %i.dd, align 4, !tbaa !97
  %i.df = fmul float %i.dc, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %i.df, ptr %i.dg, align 4, !tbaa !97
  br label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit.rtcont

_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit.rtcont: ; preds = %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit.rtscalar, %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree14ScalarTreeViewEij.exit.rtvec
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE11ChildWeightEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = load ptr, ptr %0, align 8, !tbaa !389, !nonnull !198, !align !199
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !277
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !279 ; 2 uses
  store float %i.k, ptr %i.a, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !97
  %i.l = fcmp ult float %i.k, 0.000000e+00
  br i1 %i.l, label %_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12, label %_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12.thread

_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.m = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull @.str, i32 noundef 352)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.n = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.72, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.r, i64 noundef %i.t)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.x, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.o

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
end_hunk_0
begin_hunk_1_@_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_:bb.a
  %i.ao = zext i1 %i.an to i32
  %i.ap = add nsw i32 %i.al, %i.ao
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !399
  br label %_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE16EvaluateGoesLeftEi.exit

_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE16EvaluateGoesLeftEi.exit: ; preds = %bb.d, %bb.e
  %i.aq = phi ptr [ %i.r, %bb.d ], [ %.pre.i, %bb.e ]
  %.0.i.i = phi i32 [ %i.ah, %bb.d ], [ %i.ap, %bb.e ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !268
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.d
  %i.au = load i32, ptr %i.at, align 4, !tbaa !18
  %i.av = icmp eq i32 %.0.i.i, %i.au              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  tail call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE10VisitChildEiifbRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %i.f, float noundef %i.p, i1 noundef zeroext %i.av, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef %3, ptr noundef %4)
  %i.aw = xor i1 %i.av, true
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE10VisitChildEiifbRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %i.o, float noundef %i.q, i1 noundef zeroext %i.aw, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef %3, ptr noundef %5)
  %i.ax = load <4 x float>, ptr %5, align 16, !tbaa !97
  %i.ay = load <4 x float>, ptr %4, align 4, !tbaa !97
  %i.az = fadd <4 x float> %i.ax, %i.ay
  store <4 x float> %i.az, ptr %4, align 4, !tbaa !97
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bc = load <4 x float>, ptr %i.ba, align 16, !tbaa !97
  %i.bd = load <4 x float>, ptr %i.bb, align 4, !tbaa !97
  %i.be = fadd <4 x float> %i.bc, %i.bd
  store <4 x float> %i.be, ptr %i.bb, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.f

bb.f:                                             ; preds = %_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE16EvaluateGoesLeftEi.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_123WriteWeightedLeafReturnINS_4tree19MultiTargetTreeViewEEEvRKT_RKNS0_6detail14QuadratureRuleEijRKSt5arrayIfLm8EEfPSD_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %4, float noundef %5, ptr nofree noundef nonnull writeonly captures(none) %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %3, ptr %i.d, align 4, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !269, !noalias !1003
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !18, !noalias !1003
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29, !noalias !1004
  %i.m = sext i32 %i.j to i64
  %i.n = mul i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !29, !noalias !1004 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !1004
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load i64, ptr %i.s, align 8, !tbaa !270, !noalias !1004 ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.u, i64 0, i64 %i.n          ; 4 uses
  %.not8.i.i.i.i = icmp ugt i64 %i.v, %i.t
  br i1 %.not8.i.i.i.i, label %bb.b, label %bb.c, !prof !131

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #31, !noalias !1004
  unreachable

bb.c:                                             ; preds = %bb.a
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !271, !noalias !1004 ; 3 uses
  %i.x = icmp ne ptr %i.w, null
  %i.y = icmp eq i64 %i.t, %i.v                   ; 2 uses
  %i.z = or i1 %i.y, %i.x
  br i1 %i.z, label %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i, label %bb.d, !prof !161

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #31, !noalias !1004
  unreachable

_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i: ; preds = %bb.c
  %.sink.i.i.i.i.i = select i1 %i.y, i64 0, i64 %i.r ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i64 %.sink.i.i.i.i.i, ptr %i.e, align 8, !tbaa !29
  %i.aa = zext i32 %3 to i64
  %i.ab = icmp ugt i64 %.sink.i.i.i.i.i, %i.aa
  br i1 %i.ab, label %_ZN4dmlc11LogCheck_LTIjmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %_ZN4dmlc11LogCheck_LTIjmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i

_ZN4dmlc11LogCheck_LTIjmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit

_ZN4dmlc11LogCheck_LTIjmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i
  call void @_ZN4dmlc14LogCheckFormatIjmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4dmlc11LogCheck_LTIjmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ac = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %bb.e
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ac, ptr noundef nonnull @.str, i32 noundef 44)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i unwind label %bb.f

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i:          ; preds = %.noexc.i
  %i.ad = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.g ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.74, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.ag = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !27
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.ah, i64 noundef %i.aj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.i, %.noexc.i, %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.an, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  resume { ptr, i32 } %.pn.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %.pr13.i = load ptr, ptr %7, align 8, !tbaa !21 ; 4 uses
  %.not.i.i = icmp eq ptr %.pr13.i, null
  br i1 %.not.i.i, label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %.pr13.i, align 8, !tbaa !26 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pr13.i, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !28
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr13.i, i64 noundef 32) #30
  br label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit

bb.k:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #31
  unreachable

_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit: ; preds = %_ZN4dmlc11LogCheck_LTIjmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, %_ZN4dmlc11LogCheck_LTIjmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %bb.i, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  %i.av = add nuw i64 %i.c, 32
  %i.aw = add nuw i64 %i.b, 32
  %i.ax = add nuw i64 %i.b, 64
  %i.ay = add i64 %i.a, 32                        ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.av, %i.a
  %rt.bound1 = icmp ugt i64 %i.ay, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound016 = icmp ugt i64 %i.ax, %i.a
  %rt.bound117 = icmp ult i64 %i.aw, %i.ay
  %rt.conflict18 = and i1 %rt.bound016, %rt.bound117
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict18
  %rt.guard = freeze i1 %rt.conflict.all
  br i1 %rt.guard, label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit.rtscalar, label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit.rtvec, !prof !98

_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit.rtvec: ; preds = %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.ba = load i32, ptr %i.d, align 4, !tbaa !18
  %i.bb = zext i32 %i.ba to i64
  %i.bc = mul i64 %i.p, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bf = fmul float %5, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load <4 x float>, ptr %4, align 4, !tbaa !97
  %i.bi = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bk = fmul <4 x float> %i.bj, %i.bh
  %i.bl = load <4 x float>, ptr %i.bg, align 4, !tbaa !97
  %i.bm = fmul <4 x float> %i.bk, %i.bl
  store <4 x float> %i.bm, ptr %6, align 4, !tbaa !97
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bq = load <4 x float>, ptr %i.bn, align 4, !tbaa !97
  %i.br = fmul <4 x float> %i.bj, %i.bq
  %i.bs = load <4 x float>, ptr %i.bo, align 4, !tbaa !97
  %i.bt = fmul <4 x float> %i.br, %i.bs
  store <4 x float> %i.bt, ptr %i.bp, align 4, !tbaa !97
  br label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit.rtcont

_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit.rtscalar: ; preds = %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.bv = load i32, ptr %i.d, align 4, !tbaa !18
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul i64 %i.p, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ca = fmul float %5, %i.bz                    ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cc = load float, ptr %4, align 4, !tbaa !97
  %i.cd = fmul float %i.ca, %i.cc
  %i.ce = load float, ptr %i.cb, align 4, !tbaa !97
  %i.cf = fmul float %i.cd, %i.ce
  store float %i.cf, ptr %6, align 4, !tbaa !97
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !97
  %i.ci = fmul float %i.ca, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !97
  %i.cl = fmul float %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.cl, ptr %i.cm, align 4, !tbaa !97
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.co = load float, ptr %i.cn, align 4, !tbaa !97
  %i.cp = fmul float %i.ca, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !97
  %i.cs = fmul float %i.cp, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.cs, ptr %i.ct, align 4, !tbaa !97
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !97
  %i.cw = fmul float %i.ca, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !97
  %i.cz = fmul float %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.cz, ptr %i.da, align 4, !tbaa !97
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dc = load float, ptr %i.db, align 4, !tbaa !97
  %i.dd = fmul float %i.ca, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.df = load float, ptr %i.de, align 4, !tbaa !97
  %i.dg = fmul float %i.dd, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.dg, ptr %i.dh, align 4, !tbaa !97
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.dj = load float, ptr %i.di, align 4, !tbaa !97
  %i.dk = fmul float %i.ca, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !97
  %i.dn = fmul float %i.dk, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.dn, ptr %i.do, align 4, !tbaa !97
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !97
  %i.dr = fmul float %i.ca, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !97
  %i.du = fmul float %i.dr, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.du, ptr %i.dv, align 4, !tbaa !97
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !97
  %i.dy = fmul float %i.ca, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !97
  %i.eb = fmul float %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %i.eb, ptr %i.ec, align 4, !tbaa !97
  br label %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit.rtcont

_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit.rtcont: ; preds = %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit.rtscalar, %_ZN7xgboost16interpretability12_GLOBAL__N_19LeafValueERKNS_4tree19MultiTargetTreeViewEij.exit.rtvec
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE11ChildWeightEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !198, !align !199
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !272
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load float, ptr %i.i, align 4, !tbaa !97 ; 2 uses
  store float %i.j, ptr %i.a, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !97
  %i.k = fcmp ult float %i.j, 0.000000e+00
  br i1 %i.k, label %_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12, label %_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12.thread

_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.l = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.l, ptr noundef nonnull @.str, i32 noundef 352)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.m = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.72, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.o

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
end_hunk_1
