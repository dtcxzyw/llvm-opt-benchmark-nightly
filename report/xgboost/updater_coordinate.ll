Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_coordinate?download=true
inline.NumInlined: 2925
inline.NumDeleted: 1295
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7xgboost6common11ParallelForIjZNS_6linear22ThriftyFeatureSelector5SetupEPKNS_7ContextERKNS_3gbm13GBLinearModelERKSt6vectorINS_6detail20GradientPairInternalIfEESaISE_EEPNS_7DMatrixEffiEUlT_E_EEvSL_iNS0_5SchedEOT0_:bb.a
_ZNK7xgboost6common4SpanIKNS_5EntryELm18446744073709551615EEixEm.exit20.i.i144: ; preds = %bb.aw
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv.i.i142 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !265
  %i.lv = mul i32 %i.lu, %i.lj
  %i.lw = add i32 %i.lv, %i.lo
  %i.lx = zext i32 %i.lw to i64
  %i.ly = load ptr, ptr %.sroa.5209.0.copyload, align 8, !tbaa !268
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.lx ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !270 ; 2 uses
  %i.mc = fcmp olt float %i.mb, 0.000000e+00
  br i1 %i.mc, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNK7xgboost6common4SpanIKNS_5EntryELm18446744073709551615EEixEm.exit20.i.i144
  %i.md = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.me = load float, ptr %i.md, align 4, !tbaa !271 ; 2 uses
  %i.mf = load float, ptr %i.lz, align 4, !tbaa !272
  %i.mg = fmul float %i.mb, %i.me
  %i.mh = insertelement <2 x float> poison, float %i.me, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mj = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.mk = insertelement <2 x float> %i.mj, float %i.mg, i64 1
  %i.ml = fmul <2 x float> %i.mi, %i.mk
  %i.mm = fpext <2 x float> %i.ml to <2 x double>
  %i.mn = load <2 x double>, ptr %i.ls, align 8, !tbaa !231
  %i.mo = fadd <2 x double> %i.mn, %i.mm
  store <2 x double> %i.mo, ptr %i.ls, align 8, !tbaa !231
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZNK7xgboost6common4SpanIKNS_5EntryELm18446744073709551615EEixEm.exit20.i.i144
  %indvars.iv.next.i.i145 = add nuw nsw i64 %indvars.iv.i.i142, 1 ; 2 uses
  %exitcond.not.i.i146 = icmp eq i64 %indvars.iv.next.i.i145, %i.lm
  br i1 %exitcond.not.i.i146, label %._crit_edge.i.i147, label %bb.aw, !llvm.loop !547

_ZN4dmlc12OMPException3RunIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS2_7ContextERKNS2_3gbm13GBLinearModelERKSt6vectorINS2_6detail20GradientPairInternalIfEESaISF_EEPNS2_7DMatrixEffiEUlT_E_JjEEEvSM_DpT0_.exit150: ; preds = %._crit_edge.i.i147, %.lr.ph26.i.i136, %_ZNK7xgboost18HostSparsePageViewixEm.exit.i.i134
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.au, !llvm.loop !556

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS2_7ContextERKNS2_3gbm13GBLinearModelERKSt6vectorINS2_6detail20GradientPairInternalIfEESaISF_EEPNS2_7DMatrixEffiEUlT_E_JjEEEvSM_DpT0_.exit150, %_ZN4dmlc12OMPException3RunIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS2_7ContextERKNS2_3gbm13GBLinearModelERKSt6vectorINS2_6detail20GradientPairInternalIfEESaISF_EEPNS2_7DMatrixEffiEUlT_E_JjEEEvSM_DpT0_.exit133, %_ZN4dmlc12OMPException3RunIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS2_7ContextERKNS2_3gbm13GBLinearModelERKSt6vectorINS2_6detail20GradientPairInternalIfEESaISF_EEPNS2_7DMatrixEffiEUlT_E_JjEEEvSM_DpT0_.exit116, %_ZN4dmlc12OMPException3RunIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS2_7ContextERKNS2_3gbm13GBLinearModelERKSt6vectorINS2_6detail20GradientPairInternalIfEESaISF_EEPNS2_7DMatrixEffiEUlT_E_JjEEEvSM_DpT0_.exit99, %_ZN4dmlc12OMPException3RunIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS2_7ContextERKNS2_3gbm13GBLinearModelERKSt6vectorINS2_6detail20GradientPairInternalIfEESaISF_EEPNS2_7DMatrixEffiEUlT_E_JjEEEvSM_DpT0_.exit82, %_ZN4dmlc12OMPException3RunIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS2_7ContextERKNS2_3gbm13GBLinearModelERKSt6vectorINS2_6detail20GradientPairInternalIfEESaISF_EEPNS2_7DMatrixEffiEUlT_E_JjEEEvSM_DpT0_.exit, %_ZZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS_7ContextERKNS_3gbm13GBLinearModelERKSt6vectorINS_6detail20GradientPairInternalIfEESaISC_EEPNS_7DMatrixEffiENKUlT_E_clIjEEDaSJ_.exit, %.preheader222, %.preheader220, %.preheader218, %.preheader216, %.preheader214, %.preheader212, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.ba:                                            ; preds = %bb.k
  %i.mp = landingpad { ptr, i32 }
          catch ptr null
  %i.mq = extractvalue { ptr, i32 } %i.mp, 0
  call void @__clang_call_terminate(ptr %i.mq) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.32, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !80
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.b)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.33, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %bb.b
  %i.e = load i32, ptr %2, align 4, !tbaa !80
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.e)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.34, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34
          to label %bb.d unwind label %bb.h       ; 8 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !26, !alias.scope !567
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !28, !alias.scope !567
  store i8 0, ptr %i.i, align 8, !tbaa !25, !alias.scope !567
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84, !noalias !567 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !567 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85, !noalias !567 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !24, !alias.scope !567 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.i, align 8, !tbaa !25, !alias.scope !567
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #32
  br label %.body

bb.g:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  store ptr %i.h, ptr %0, align 8, !tbaa !97
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !54
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !25
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #32
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #32
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #28

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 34 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr28, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph56

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEET_SU_SU_T0_.exit
  %i.h = icmp eq i64 %i.db, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph56, !llvm.loop !568

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.er, %bb.b ] ; 2 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i27.lcssa, 3               ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i27.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_T0_SV_T1_T2_.exit.i.i, %._crit_edge
  %.09.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.bc, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_T0_SV_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.09.i.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27   ; 2 uses
  %i.u = icmp slt i64 %.09.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.036.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.036.i.i.i, 1                   ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.y
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !27
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !145
  %i.ae = tail call noundef float @llvm.fabs.f32(float %i.ad)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ab
  %i.ag = load float, ptr %i.af, align 4, !tbaa !145
  %i.ah = tail call noundef float @llvm.fabs.f32(float %i.ag)
  %i.ai = fcmp ogt float %i.ae, %i.ah
  %spec.select.i.i.i = select i1 %i.ai, i64 %i.y, i64 %i.w ; 4 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %spec.select.i.i.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !27
  %i.al = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.036.i.i.i
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !27
  %i.am = icmp slt i64 %spec.select.i.i.i, %i.m
  br i1 %i.am, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !569

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.09.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.an = icmp eq i64 %.0.lcssa.i.i.i, %i.k
  %or.cond.i.i = select i1 %i.o, i1 %i.an, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !27
  store i64 %i.ao, ptr %i.r, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ap = icmp sgt i64 %.1.i.i.i, %.09.i.i
  br i1 %i.ap, label %.lr.ph.i.i.i.i15, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_T0_SV_T1_T2_.exit.i.i

.lr.ph.i.i.i.i15:                                 ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !145
  %i.as = tail call noundef float @llvm.fabs.f32(float %i.ar)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i15
  %.019.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i15 ], [ %.0920.i.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i.i.i = sdiv i64 %.0920.in.i.i.i.i, 2  ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.0920.i.i.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !27 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !145
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.aw)
  %i.ay = fcmp ogt float %i.ax, %i.as
  br i1 %i.ay, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_T0_SV_T1_T2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.019.i.i.i.i
  store i64 %i.au, ptr %i.az, align 8, !tbaa !27
  %i.ba = icmp sgt i64 %.0920.i.i.i.i, %.09.i.i
  br i1 %i.ba, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_T0_SV_T1_T2_.exit.i.i, !llvm.loop !570

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_T0_SV_T1_T2_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i14 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0920.i.i.i.i, %bb.g ], [ %.019.i.i.i.i, %bb.f ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i14
  store i64 %i.t, ptr %i.bb, align 8, !tbaa !27
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.bc = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !571

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_T0_SV_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.bd, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_T0_SV_T1_T2_.exit.i.i ]
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !27 ; 2 uses
  %i.bf = load i64, ptr %.fr28, align 8, !tbaa !27
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !27
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bg, %i.a                     ; 3 uses
  %i.bi = ashr exact i64 %i.bh, 3                 ; 3 uses
  %i.bj = add nsw i64 %i.bi, -1
  %i.bk = lshr i64 %i.bj, 1
  %i.bl = icmp sgt i64 %i.bi, 2
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.bm = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.bn = add i64 %i.bm, 2                        ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.bn
  %i.bp = or disjoint i64 %i.bm, 1                ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.bp
  %i.br = load i64, ptr %i.bo, align 8, !tbaa !27
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.br
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !145
  %i.bv = tail call noundef float @llvm.fabs.f32(float %i.bu)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bs
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !145
  %i.by = tail call noundef float @llvm.fabs.f32(float %i.bx)
  %i.bz = fcmp ogt float %i.bv, %i.by
  %spec.select.i.i.i.i = select i1 %i.bz, i64 %i.bp, i64 %i.bn ; 4 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !27
  %i.cc = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.036.i.i.i.i
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !27
  %i.cd = icmp slt i64 %spec.select.i.i.i.i, %i.bk
  br i1 %i.cd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !569

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ce = and i64 %i.bh, 8
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cg = add nsw i64 %i.bi, -2
  %i.ch = ashr exact i64 %i.cg, 1
  %i.ci = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ch
  br i1 %i.ci, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.cj = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ck = or disjoint i64 %i.cj, 1                ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !27
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !27
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.ck, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.be
  %i.cp = load float, ptr %i.co, align 4, !tbaa !145
  %i.cq = tail call noundef float @llvm.fabs.f32(float %i.cp)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.k ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.0920.i.i89.i.i.i
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !27 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !145
  %i.cv = tail call noundef float @llvm.fabs.f32(float %i.cu)
  %i.cw = fcmp ogt float %i.cv, %i.cq
  br i1 %i.cw, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.cx = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.019.i.i.i.i.i
  store i64 %i.cs, ptr %i.cx, align 8, !tbaa !27
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_RT0_.exit.i.i, label %bb.j, !llvm.loop !570

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.019.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.cy = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.be, ptr %i.cy, align 8, !tbaa !27
  %i.cz = icmp sgt i64 %i.bh, 8
  br i1 %i.cz, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_T0_.exit, !llvm.loop !572

.lr.ph56:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2555 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02654 = phi i64 [ %i.db, %bb.b ], [ %2, %.lr.ph ]
  %i.da = phi i64 [ %i.es, %bb.b ], [ %i.d, %.lr.ph ]
  %i.db = add nsw i64 %.02654, -1                 ; 3 uses
  %i.dc = lshr i64 %i.da, 1
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.dc ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %storemerge2555, i64 -8 ; 3 uses
  %i.df = load i64, ptr %i.f, align 8, !tbaa !27  ; 3 uses
  %i.dg = load i64, ptr %i.dd, align 8, !tbaa !27 ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.df
  %i.di = load float, ptr %i.dh, align 4, !tbaa !145
  %i.dj = tail call noundef float @llvm.fabs.f32(float %i.di) ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dg
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !145
  %i.dm = tail call noundef float @llvm.fabs.f32(float %i.dl) ; 3 uses
  %i.dn = fcmp ogt float %i.dj, %i.dm
  %i.do = load i64, ptr %i.de, align 8, !tbaa !27 ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !145
  %i.dr = tail call noundef float @llvm.fabs.f32(float %i.dq) ; 4 uses
  br i1 %i.dn, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph56
  %i.ds = fcmp ogt float %i.dm, %i.dr
  br i1 %i.ds, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dt = load i64, ptr %.fr28, align 8, !tbaa !27
  store i64 %i.dg, ptr %.fr28, align 8, !tbaa !27
  store i64 %i.dt, ptr %i.dd, align 8, !tbaa !27
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.du = fcmp ogt float %i.dj, %i.dr
  %i.dv = load i64, ptr %.fr28, align 8, !tbaa !27 ; 2 uses
  br i1 %i.du, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 %i.do, ptr %.fr28, align 8, !tbaa !27
  store i64 %i.dv, ptr %i.de, align 8, !tbaa !27
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  store i64 %i.df, ptr %.fr28, align 8, !tbaa !27
  store i64 %i.dv, ptr %i.f, align 8, !tbaa !27
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i.preheader

bb.q:                                             ; preds = %.lr.ph56
  %i.dw = fcmp ogt float %i.dj, %i.dr
  br i1 %i.dw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dx = load i64, ptr %.fr28, align 8, !tbaa !27
  store i64 %i.df, ptr %.fr28, align 8, !tbaa !27
  store i64 %i.dx, ptr %i.f, align 8, !tbaa !27
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.dy = fcmp ogt float %i.dm, %i.dr
  %i.dz = load i64, ptr %.fr28, align 8, !tbaa !27 ; 2 uses
  br i1 %i.dy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 %i.do, ptr %.fr28, align 8, !tbaa !27
  store i64 %i.dz, ptr %i.de, align 8, !tbaa !27
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  store i64 %i.dg, ptr %.fr28, align 8, !tbaa !27
  store i64 %i.dz, ptr %i.dd, align 8, !tbaa !27
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i.preheader, %bb.x
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.x ], [ %storemerge2555, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.ej, %bb.x ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i.preheader ]
  %i.ea = load i64, ptr %.fr28, align 8, !tbaa !27
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !145
  %i.ed = tail call noundef float @llvm.fabs.f32(float %i.ec) ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i ], [ %i.ej, %bb.v ] ; 8 uses
  %i.ee = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !27 ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !145
  %i.eh = tail call noundef float @llvm.fabs.f32(float %i.eg)
  %i.ei = fcmp ogt float %i.eh, %i.ed
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.v, label %.preheader.i.i, !llvm.loop !573

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.v ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 5 uses
  %i.ek = load i64, ptr %.sroa.09.1.i.i, align 8, !tbaa !27 ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !145
  %i.en = tail call noundef float @llvm.fabs.f32(float %i.em)
  %i.eo = fcmp ogt float %i.ed, %i.en
  br i1 %i.eo, label %.preheader.i.i, label %bb.w, !llvm.loop !574

bb.w:                                             ; preds = %.preheader.i.i
  %i.ep = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.ep, label %bb.x, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEET_SU_SU_T0_.exit

bb.x:                                             ; preds = %bb.w
  store i64 %i.ek, ptr %.sroa.012.1.i.i, align 8, !tbaa !27
  store i64 %i.ee, ptr %.sroa.09.1.i.i, align 8, !tbaa !27
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_SU_T0_.exit.i, !llvm.loop !575

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEET_SU_SU_T0_.exit: ; preds = %bb.w
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2555, i64 noundef %i.db, ptr nonnull %3)
  %i.eq = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.er = sub i64 %i.eq, %i.a                     ; 2 uses
  %i.es = ashr exact i64 %i.er, 3                 ; 2 uses
  %i.et = icmp sgt i64 %i.es, 16
  br i1 %i.et, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_T0_.exit, !llvm.loop !568

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEET_SU_SU_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_SU_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.021.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.021.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.e = load i64, ptr %.sroa.0.021.i.ptr, align 8, !tbaa !27 ; 2 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.h = load float, ptr %i.g, align 4, !tbaa !145
  %i.i = tail call noundef float @llvm.fabs.f32(float %i.h) ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  %i.k = load float, ptr %i.j, align 4, !tbaa !145
  %i.l = tail call noundef float @llvm.fabs.f32(float %i.k)
  %i.m = fcmp ogt float %i.i, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ugt i64 %.sroa.0.021.i.idx, 8
  br i1 %i.n, label %bb.d, label %bb.e, !prof !263

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.f, ptr %i.o, align 8, !tbaa !27
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.p = load i64, ptr %.pn20.i, align 8, !tbaa !27 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !145
  %i.s = tail call noundef float @llvm.fabs.f32(float %i.r)
  %i.t = fcmp ogt float %i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.u = phi i64 [ %i.v, %.lr.ph.i.i ], [ %i.p, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i64 %i.u, ptr %.sroa.05.09.i.i, align 8, !tbaa !27
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.v = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !27 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !145
  %i.y = tail call noundef float @llvm.fabs.f32(float %i.x)
  %i.z = fcmp ogt float %i.i, %i.y
  br i1 %i.z, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !576

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i64 %i.e, ptr %.sink.i, align 8, !tbaa !27
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_.exit, label %bb.b, !llvm.loop !577

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not7.i = icmp eq ptr %i.aa, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_T0_.exit.i
  %.sroa.0.08.i = phi ptr [ %i.aq, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_T0_.exit.i ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_.exit ] ; 5 uses
  %i.ab = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !27 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !145
  %i.ae = tail call noundef float @llvm.fabs.f32(float %i.ad) ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -8 ; 2 uses
  %i.af = load i64, ptr %.sroa.0.08.i.i, align 8, !tbaa !27 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !145
  %i.ai = tail call noundef float @llvm.fabs.f32(float %i.ah)
  %i.aj = fcmp ogt float %i.ae, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_T0_.exit.i

.lr.ph.i.i12:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i12
  %i.ak = phi i64 [ %i.al, %.lr.ph.i.i12 ], [ %i.af, %.lr.ph.i10 ]
  %.sroa.0.010.i.i13 = phi ptr [ %.sroa.0.0.i.i15, %.lr.ph.i.i12 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i14 = phi ptr [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i64 %i.ak, ptr %.sroa.05.09.i.i14, align 8, !tbaa !27
  %.sroa.0.0.i.i15 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i13, i64 -8 ; 2 uses
  %i.al = load i64, ptr %.sroa.0.0.i.i15, align 8, !tbaa !27 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !145
  %i.ao = tail call noundef float @llvm.fabs.f32(float %i.an)
  %i.ap = fcmp ogt float %i.ae, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_T0_.exit.i, !llvm.loop !576

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i12, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ]
  store i64 %i.ab, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8 ; 2 uses
  %.not.i11 = icmp eq ptr %i.aq, %1
  br i1 %.not.i11, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_.exit, label %.lr.ph.i10, !llvm.loop !578

bb.g:                                             ; preds = %bb.a
  %i.ar = icmp eq ptr %0, %1
  %.sroa.0.018.i17 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not19.i18 = icmp eq ptr %.sroa.0.018.i17, %1
  %or.cond = select i1 %i.ar, i1 true, i1 %.not19.i18
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22
  %.sroa.0.021.i20 = phi ptr [ %.sroa.0.0.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22 ], [ %.sroa.0.018.i17, %bb.g ] ; 6 uses
  %.pn20.i21 = phi ptr [ %.sroa.0.021.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22 ], [ %0, %bb.g ] ; 4 uses
  %i.as = load i64, ptr %.sroa.0.021.i20, align 8, !tbaa !27 ; 2 uses
  %i.at = load i64, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.as
  %i.av = load float, ptr %i.au, align 4, !tbaa !145
  %i.aw = tail call noundef float @llvm.fabs.f32(float %i.av) ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.at
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !145
  %i.az = tail call noundef float @llvm.fabs.f32(float %i.ay)
  %i.ba = fcmp ogt float %i.aw, %i.az
  br i1 %i.ba, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i19
  %i.bb = ptrtoint ptr %.sroa.0.021.i20 to i64
  %i.bc = sub i64 %i.bb, %i.b                     ; 3 uses
  %i.bd = ashr exact i64 %i.bc, 3                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 1
  br i1 %i.be, label %bb.i, label %bb.j, !prof !263

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 16
  %i.bg = sub nsw i64 0, %i.bd
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.bc, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22

bb.j:                                             ; preds = %bb.h
  %i.bi = icmp eq i64 %i.bc, 8
  br i1 %i.bi, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 8
  store i64 %i.at, ptr %i.bj, align 8, !tbaa !27
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22

bb.l:                                             ; preds = %.lr.ph.i19
  %i.bk = load i64, ptr %.pn20.i21, align 8, !tbaa !27 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !145
  %i.bn = tail call noundef float @llvm.fabs.f32(float %i.bm)
  %i.bo = fcmp ogt float %i.aw, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22

.lr.ph.i.i26:                                     ; preds = %bb.l, %.lr.ph.i.i26
  %i.bp = phi i64 [ %i.bq, %.lr.ph.i.i26 ], [ %i.bk, %bb.l ]
  %.sroa.0.010.i.i27 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i26 ], [ %.pn20.i21, %bb.l ] ; 3 uses
  %.sroa.05.09.i.i28 = phi ptr [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ], [ %.sroa.0.021.i20, %bb.l ]
  store i64 %i.bp, ptr %.sroa.05.09.i.i28, align 8, !tbaa !27
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i27, i64 -8 ; 2 uses
  %i.bq = load i64, ptr %.sroa.0.0.i.i29, align 8, !tbaa !27 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !145
  %i.bt = tail call noundef float @llvm.fabs.f32(float %i.bs)
  %i.bu = fcmp ogt float %i.aw, %i.bt
  br i1 %i.bu, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22, !llvm.loop !576

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22: ; preds = %.lr.ph.i.i26, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i23 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.021.i20, %bb.l ], [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ]
  store i64 %i.as, ptr %.sink.i23, align 8, !tbaa !27
  %.sroa.0.0.i24 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i20, i64 8 ; 2 uses
  %.not.i25 = icmp eq ptr %.sroa.0.0.i24, %1
  br i1 %.not.i25, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_.exit, label %.lr.ph.i19, !llvm.loop !577

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost6linear21GreedyFeatureSelectorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7xgboost6linear21GreedyFeatureSelectorE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
end_hunk_0
