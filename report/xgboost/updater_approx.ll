Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_approx?download=true
inline.NumInlined: 9700
inline.NumDeleted: 3289
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev:bb.a

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit

_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

declare void @_ZN7xgboost6common7Monitor4StopERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree19GlobalApproxBuilder14BuildHistogramEPNS_7DMatrixEPNS_7RegTreeERKSt6vectorINS0_14CPUExpandEntryESaIS7_EERKS6_INS_6detail20GradientPairInternalIfEESaISE_EENS_6common4SpanIfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef byval(%"class.xgboost::common::Span.299") align 8 %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"struct.xgboost::tree::ScalarTreeView", align 8 ; 4 uses
  %8 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 10 uses
  %9 = alloca %"struct.xgboost::BatchParam", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.c, ptr noundef nonnull align 1 dereferenceable(14) @__func__._ZN7xgboost4tree19GlobalApproxBuilder14BuildHistogramEPNS_7DMatrixEPNS_7RegTreeERKSt6vectorINS0_14CPUExpandEntryESaIS7_EERKS6_INS_6detail20GradientPairInternalIfEESaISE_EENS_6common4SpanIfLm18446744073709551615EEE, i64 14, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 14, ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i8 0, ptr %i.e, align 2, !tbaa !66
  invoke void @_ZN7xgboost6common7Monitor5StartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %6, align 8, !tbaa !60     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.c, align 8, !tbaa !66
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZNK7xgboost7RegTree10HostScViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::tree::ScalarTreeView") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %2)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !325
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !270  ; 2 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !268    ; 4 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.v, align 8, !noalias !1146
  %.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.ptr13.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.u, ptr %i.x, align 8, !tbaa !76, !alias.scope !1146
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.q, ptr %.sroa.27.0..sroa_idx.i.i.i, align 8, !tbaa !148, !alias.scope !1146
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.q, ptr %i.y, align 8, !tbaa !432, !alias.scope !1146
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.aa, align 8, !alias.scope !1146
  store i64 %i.u, ptr %i.w, align 8, !tbaa !76, !alias.scope !1146
  store i64 1, ptr %.ptr13.i.i.i, align 8, !tbaa !76, !alias.scope !1146
  store i64 1, ptr %.ptr.i.i.i, align 8, !tbaa !76, !alias.scope !1146
  store i64 1, ptr %8, align 8, !tbaa !76, !alias.scope !1146
  %i.ab = icmp eq ptr %i.p, %i.q
  %.sink.i.i.i.i = select i1 %i.ab, i64 0, i64 %i.u
  store i64 %.sink.i.i.i.i, ptr %i.z, align 8, !tbaa !433, !alias.scope !1146
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ac = load ptr, ptr %0, align 8, !tbaa !304
  %.sroa.0.0.copyload = load i64, ptr %5, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !331
  %i.ad = getelementptr i8, ptr %i.ac, i64 20
  %.val = load i32, ptr %i.ad, align 4, !tbaa !326
  store i32 %.val, ptr %9, align 8, !tbaa !330, !alias.scope !1147
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.ae, align 8, !tbaa !76, !alias.scope !1147
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !331, !alias.scope !1147
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.af, align 8, !tbaa !332, !alias.scope !1147
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 25
  store i8 0, ptr %i.ag, align 1, !tbaa !333, !alias.scope !1147
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 32
  store double +qnan, ptr %i.ah, align 8, !tbaa !334, !alias.scope !1147
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 1, ptr %i.ai, align 8, !tbaa !335, !alias.scope !1147
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 3, ptr %i.aj, align 4, !tbaa !336, !alias.scope !1147
  call void @_ZN7xgboost4tree21MultiHistogramBuilder18BuildHistLeftRightINS0_20CommonRowPartitionerENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextEPNS_7DMatrixERKT1_RKSt6vectorIT_SaISF_EERKSE_IT0_SaISK_EENS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEERKNS_10BatchParamEb(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef %i.l, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(68) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %9, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.al, ptr %10, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.al, ptr noundef nonnull align 1 dereferenceable(14) @__func__._ZN7xgboost4tree19GlobalApproxBuilder14BuildHistogramEPNS_7DMatrixEPNS_7RegTreeERKSt6vectorINS0_14CPUExpandEntryESaIS7_EERKS6_INS_6detail20GradientPairInternalIfEESaISE_EENS_6common4SpanIfLm18446744073709551615EEE, i64 14, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 14, ptr %i.am, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 30
  store i8 0, ptr %i.an, align 2, !tbaa !66
  invoke void @_ZN7xgboost6common7Monitor4StopERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load ptr, ptr %10, align 8, !tbaa !60   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.al
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.b
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !66
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  ret void

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !60    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.c
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.c
  %i.av = load i64, ptr %i.c, align 8, !tbaa !66
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %10, align 8, !tbaa !60   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.al
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.d
  %i.ba = load i64, ptr %i.al, align 8, !tbaa !66
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn11.pn = phi { ptr, i32 } [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ]
  resume { ptr, i32 } %.pn11.pn
}

declare noundef i32 @_ZNK7xgboost7RegTree8GetDepthEi(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, ptr %4, ptr noundef %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.xgboost::common::Span.369", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 12 uses
  %7 = alloca %"class.std::vector.626", align 8   ; 17 uses
  %8 = alloca %"class.std::shared_ptr.41", align 16 ; 7 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %10 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 10 uses
  %11 = alloca %class.anon.631, align 8           ; 5 uses
  %12 = alloca %"class.std::vector.346", align 8  ; 15 uses
  %13 = alloca %"struct.xgboost::tree::TreeEvaluator::SplitEvaluator", align 8 ; 11 uses
  %14 = alloca %class.anon.632, align 8           ; 13 uses
  store i64 %3, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.c = load ptr, ptr %0, align 8, !tbaa !396
  %i.d = tail call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.c)
  store i32 %i.d, ptr %i.a, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !312  ; 2 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !391    ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 88                  ; 3 uses
  %15 = icmp ugt i64 %i.k, 576460752303423487
  br i1 %15, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #35
  unreachable

_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %._crit_edge.thread, label %bb.b

._crit_edge.thread:                               ; preds = %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %bb.r

bb.b:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.n = shl nuw nsw i64 %i.k, 4                  ; 3 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #36 ; 5 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !453
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.n, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.o, i64 %i.n ; 2 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !312
  %.pre148 = load ptr, ptr %5, align 8, !tbaa !391 ; 2 uses
  %i.q = icmp eq ptr %.pre, %.pre148
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.p, ptr %i.s, align 8, !tbaa !454
  store ptr %scevgep.i.i.i.i.i, ptr %i.r, align 8, !tbaa !455
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pre149 = load ptr, ptr %7, align 8, !tbaa !1156
  %.pre150 = load ptr, ptr %i.r, align 8, !tbaa !1156
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.v = phi ptr [ %.pre150, %._crit_edge.loopexit ], [ %scevgep.i.i.i.i.i, %bb.b ]
  %i.w = phi ptr [ %.pre149, %._crit_edge.loopexit ], [ %i.o, %bb.b ] ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.v
  br i1 %i.x, label %bb.r, label %bb.w, !prof !1157

bb.c:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.y = phi ptr [ %.pre148, %.lr.ph ], [ %i.bq, %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.038129 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !393
  %i.aa = load ptr, ptr %0, align 8, !tbaa !396
  %i.ab = getelementptr inbounds nuw [88 x i8], ptr %i.y, i64 %.038129
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !324
  invoke void @_ZN7xgboost6common13ColumnSampler13GetFeatureSetEPKNS_7ContextEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %8, ptr noundef nonnull align 8 dereferenceable(104) %i.z, ptr noundef %i.aa, i32 noundef %i.ad)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %7, align 8, !tbaa !453
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.038129 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load <2 x ptr>, ptr %8, align 16, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !82
  %.not.i.i.i.i62 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i62, label %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.aj, align 8, !tbaa !91
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !92
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #21, !inline_history !14
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !87
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #21, !inline_history !14
  br label %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.am, %bb.h ], [ %i.aw, %bb.i ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.j, label %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit, !prof !123

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #21
  br label %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit

_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  %i.ay = load ptr, ptr %i.u, align 8, !tbaa !95  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.az, align 8, !tbaa !91
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !92
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !87
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #21, !inline_history !15
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !87
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #21, !inline_history !15
  br label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.bc, %bb.n ], [ %i.bm, %bb.o ]
  %i.bn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bn, label %bb.p, label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !123

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #21
  br label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEaSEOS3_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.bo = add nuw i64 %.038129, 1                 ; 2 uses
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !312
  %i.bq = load ptr, ptr %5, align 8, !tbaa !391   ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 88
  %i.bv = icmp ult i64 %i.bo, %i.bu
  br i1 %i.bv, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !1148

bb.q:                                             ; preds = %bb.c
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.cp

bb.r:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bx = phi ptr [ %i.l, %._crit_edge.thread ], [ %i.r, %._crit_edge ]
  %i.by = phi ptr [ %i.m, %._crit_edge.thread ], [ %i.s, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.bz = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc63 unwind label %bb.t

.noexc63:                                         ; preds = %bb.r
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bz, ptr noundef nonnull @.str.110, i32 noundef 277)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.t

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc63
  %i.ca = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.u ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.111, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.u ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN7xgboost4tree21MultiHistogramBuilder13BuildRootHistINS0_20CommonRowPartitionerENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPNS_7DMatrixERKT1_RKSt6vectorIT_SaISC_EENS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEERKT0_RKNS_10BatchParamEb:bb.a
  br i1 %i.hf, label %.lr.ph142.split.split.us, label %._crit_edge143, !llvm.loop !1247

.split145.split.us:                               ; preds = %bb.bd
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.split145

._crit_edge143:                                   ; preds = %bb.be, %bb.bc, %.preheader
  %i.hh = add i64 %.028, 1
  %i.hi = load ptr, ptr %i.db, align 8, !tbaa !179 ; 3 uses
  %.not.i.i.i.i115 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i115, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge143
  %i.hj = load ptr, ptr %i.dc, align 8, !tbaa !180
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hm) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.bf, %._crit_edge143
  %i.hn = load ptr, ptr %18, align 8, !tbaa !474  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i1.i, label %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.ho = load ptr, ptr %i.dd, align 8, !tbaa !475
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hr) #37
  br label %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit

_ZN7xgboost6common14BlockedSpace2dD2Ev.exit:      ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.hs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit unwind label %bb.aw ; 0 uses

bb.bh:                                            ; preds = %bb.ax
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bi:                                            ; preds = %.noexc112, %bb.az
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bj:                                            ; preds = %_ZNK7xgboost4tree21MultiHistogramBuilder12ReadByColumnERKNS_16GHistIndexMatrixEb.exit
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.split147:                                        ; preds = %.lr.ph142.split.split.us
  call void @_ZSt9terminatev() #38, !noalias !1257
  unreachable

.split.us:                                        ; preds = %.lr.ph142.split
  call void @_ZSt9terminatev() #38, !noalias !1257
  unreachable

.split145:                                        ; preds = %.split145.split.us, %.split145.us
  %.us-phi = phi { ptr, i32 } [ %i.gr, %.split145.us ], [ %i.hg, %.split145.split.us ]
  call void @_ZN7xgboost6common14BlockedSpace2dD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #21
  br label %bb.bk

bb.bk:                                            ; preds = %.split145, %bb.bj
  %.pn52.pn = phi { ptr, i32 } [ %.us-phi, %.split145 ], [ %i.hv, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bh, %bb.bk, %bb.bi, %bb.aw
  %.pn52.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ff, %bb.aw ], [ %i.ht, %bb.bh ], [ %.pn52.pn, %bb.bk ], [ %i.hu, %bb.bi ]
  call void @_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #21
  br label %.body102

.body102:                                         ; preds = %bb.aa, %bb.bl
  %.pn52.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn, %bb.bl ], [ %i.de, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.bq

._crit_edge155:                                   ; preds = %bb.bo, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit
  %i.hw = load ptr, ptr %13, align 8, !tbaa !213  ; 3 uses
  %.not.i.i.i116 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge155
  %i.hx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !214
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hw to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.ib) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge155, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.ic = load ptr, ptr %12, align 8, !tbaa !213  ; 3 uses
  %.not.i.i.i118 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIiSaIiEED2Ev.exit120, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.id = load ptr, ptr %i.bk, align 8, !tbaa !214
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.ic to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.ig) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit120

_ZNSt6vectorIiSaIiEED2Ev.exit120:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

.lr.ph154:                                        ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit, %bb.bo
  %i.ih = phi i64 [ %i.im, %bb.bo ], [ 0, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit ]
  %.0153 = phi i32 [ %i.il, %bb.bo ], [ 0, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit ]
  %i.ii = load ptr, ptr %0, align 8, !tbaa !184
  %i.ij = getelementptr inbounds nuw [456 x i8], ptr %i.ii, i64 %i.ih
  %i.ik = load ptr, ptr %i.cc, align 8, !tbaa !485
  invoke void @_ZN7xgboost4tree16HistogramBuilder13SyncHistogramINS0_14ScalarTreeViewEEEvPKNS_7ContextERKT_RKSt6vectorIiSaIiEESE_(ptr noundef nonnull align 8 dereferenceable(453) %i.ij, ptr noundef %i.ik, ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %.lr.ph154
  %i.il = add i32 %.0153, 1                       ; 2 uses
  %i.im = zext i32 %i.il to i64                   ; 2 uses
  %i.in = load i64, ptr %i.a, align 8, !tbaa !76
  %i.io = icmp ugt i64 %i.in, %i.im
  br i1 %i.io, label %.lr.ph154, label %._crit_edge155, !llvm.loop !1250

bb.bp:                                            ; preds = %.lr.ph154
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.body102, %bb.av, %bb.w, %bb.r
  %.pn61 = phi { ptr, i32 } [ %i.bv, %bb.r ], [ %.pn50, %bb.w ], [ %i.ip, %bb.bp ], [ %.pn52.pn.pn.pn.pn.pn, %.body102 ], [ %i.fe, %bb.av ] ; 2 uses
  %i.iq = load ptr, ptr %13, align 8, !tbaa !213  ; 3 uses
  %.not.i.i.i121 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i121, label %_ZNSt6vectorIiSaIiEED2Ev.exit123, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ir = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !214
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = ptrtoint ptr %i.iq to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iv) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit123

_ZNSt6vectorIiSaIiEED2Ev.exit123:                 ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.iw = load ptr, ptr %12, align 8, !tbaa !213  ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i124, label %.body, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit123
  %i.ix = load ptr, ptr %i.bk, align 8, !tbaa !214
  br label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.o, %bb.bs
  %.sink191 = phi ptr [ %i.ix, %bb.bs ], [ %i.bi, %bb.o ]
  %.sink190 = phi ptr [ %i.iw, %bb.bs ], [ %i.bg, %bb.o ] ; 2 uses
  %.pn61.pn.ph = phi { ptr, i32 } [ %.pn61, %bb.bs ], [ %i.bf, %bb.o ]
  %i.iy = ptrtoint ptr %.sink191 to i64
  %i.iz = ptrtoint ptr %.sink190 to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %.sink190, i64 noundef %i.ja) #37
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt6vectorIiSaIiEED2Ev.exit123, %bb.n
  %.pn61.pn = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %.pn61, %_ZNSt6vectorIiSaIiEED2Ev.exit123 ], [ %.pn61.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.bt

bb.bt:                                            ; preds = %.body, %bb.k, %bb.e
  %.pn61.pn.pn = phi { ptr, i32 } [ %.pn61.pn, %.body ], [ %.pn48, %bb.k ], [ %.pn, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %.pn61.pn.pn

bb.bu:                                            ; preds = %bb.v, %bb.j, %bb.d
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  %i.jc = extractvalue { ptr, i32 } %i.jb, 0
  call void @__clang_call_terminate(ptr %i.jc) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN7xgboost4tree13HistEvaluator8InitRootERKNS0_9GradStatsE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !447  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %2 = ptrtoint ptr %i.c to i64
  %3 = ptrtoint ptr %i.d to i64
  %4 = sub i64 %2, %3
  %5 = sdiv exact i64 %4, 24                      ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %6 = sub nuw nsw i64 1, %5
  tail call void @_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %6)
  br label %_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %5, 1
  br i1 %i.f, label %bb.d, label %_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPN7xgboost4tree13HistEvaluator9NodeEntryES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7xgboost4tree13HistEvaluator9NodeEntryES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.g, ptr %i.b, align 8, !tbaa !447
  br label %_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN7xgboost4tree13HistEvaluator9NodeEntryES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i16, ptr %i.i, align 8, !tbaa !407, !noalias !1260
  %i.k = icmp eq i16 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EE6resizeEm.exit
  %i.m = tail call noundef ptr @_ZNK7xgboost16HostDeviceVectorIiE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l), !noalias !1260 ; 0 uses
  %i.n = tail call noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(33) %i.h), !noalias !1260
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = tail call noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o), !noalias !1260
  br label %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EE6resizeEm.exit
  %i.q = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIiE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l), !noalias !1260 ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(33) %i.h), !noalias !1260
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !440, !noalias !1260
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t), !noalias !1260
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !440, !noalias !1260
  br label %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit

_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit: ; preds = %bb.e, %bb.f
  %.sroa.49.0 = phi ptr [ %i.n, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %.sink4.i = phi ptr [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %.sink3.in.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sink3.i = load i8, ptr %.sink3.in.i, align 8, !tbaa !405, !range !135, !noalias !1260, !noundef !136
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %i.x = load <2 x double>, ptr %1, align 8, !tbaa !427 ; 3 uses
  %i.y = extractelement <2 x double> %i.x, i64 0  ; 9 uses
  store <2 x double> %i.x, ptr %i.w, align 8, !tbaa !427
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !397 ; 6 uses
  %i.ab = extractelement <2 x double> %i.x, i64 1 ; 3 uses
  %i.ac = fcmp ugt double %i.ab, 0.000000e+00     ; 2 uses
  br i1 %i.ac, label %bb.g, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

bb.g:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !442 ; 2 uses
  %i.af = fpext float %i.ae to double             ; 3 uses
  %i.ag = fcmp ogt double %i.y, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = fsub double %i.y, %i.af
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = fneg float %i.ae
  %i.aj = fpext float %i.ai to double
  %i.ak = fcmp olt double %i.y, %i.aj
  br i1 %i.ak, label %bb.j, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.al = fadd double %i.y, %i.af
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi double [ %i.ah, %bb.h ], [ %i.al, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.am = fneg double %.0.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ao = load float, ptr %i.an, align 8, !tbaa !443
  %i.ap = fpext float %i.ao to double
  %i.aq = fadd double %i.ab, %i.ap
  %i.ar = fdiv double %i.am, %i.aq                ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.at = load float, ptr %i.as, align 8, !tbaa !444 ; 2 uses
  %i.au = fcmp une float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.k, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

bb.k:                                             ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i
  %i.av = tail call double @llvm.fabs.f64(double %i.ar)
  %i.aw = fpext float %i.at to double             ; 2 uses
  %i.ax = fcmp ogt double %i.av, %i.aw
  br i1 %i.ax, label %bb.l, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ay = tail call double @llvm.copysign.f64(double %i.aw, double %i.ar)
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i: ; preds = %bb.l, %bb.k, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i, %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit
  %.012.i.i.i.i.i = phi double [ 0.000000e+00, %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit ], [ %i.ay, %bb.l ], [ %i.ar, %bb.k ], [ %i.ar, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i ]
  %i.az = fptrunc double %.012.i.i.i.i.i to float ; 4 uses
  %i.ba = trunc nuw i8 %.sink3.i to i1            ; 2 uses
  br i1 %i.ba, label %bb.m, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i

bb.m:                                             ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i
  %i.bb = load float, ptr %.sroa.49.0, align 4, !tbaa !146 ; 2 uses
  %i.bc = fcmp ogt float %i.bb, %i.az
  br i1 %i.bc, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = load float, ptr %.sink4.i, align 4, !tbaa !146 ; 2 uses
  %i.be = fcmp olt float %i.bd, %i.az
  %..i.i.i.i = select i1 %i.be, float %i.bd, float %i.az
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i: ; preds = %bb.n, %bb.m, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i
  %.1.i.i.i.i = phi float [ %i.az, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i ], [ %i.bb, %bb.m ], [ %..i.i.i.i, %bb.n ] ; 4 uses
  br i1 %i.ac, label %bb.o, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit: ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store float 0.000000e+00, ptr %i.bf, align 8, !tbaa !450
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.o:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i
  %i.bg = fmul double %i.y, 2.000000e+00
  %i.bh = fpext float %.1.i.i.i.i to double
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !443
  %i.bk = fpext float %i.bj to double
  %i.bl = fadd double %i.ab, %i.bk                ; 2 uses
  %i.bm = fmul float %.1.i.i.i.i, %.1.i.i.i.i
  %i.bn = fpext float %i.bm to double
  %i.bo = fmul double %i.bl, %i.bn
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bh, double %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  %i.br = load float, ptr %i.bq, align 4, !tbaa !442 ; 2 uses
  %i.bs = fpext float %i.br to double             ; 4 uses
  %i.bt = fmul double %i.bs, 2.000000e+00
  %i.bu = tail call noundef float @llvm.fabs.f32(float %.1.i.i.i.i)
  %i.bv = fpext float %i.bu to double
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bv, double %i.bp)
  %i.bx = fptrunc double %i.bw to float
  %i.by = fneg float %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store float %i.by, ptr %i.bz, align 8, !tbaa !450
  %i.ca = fcmp ogt double %i.y, %i.bs
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cb = fsub double %i.y, %i.bs
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cc = fneg float %i.br
  %i.cd = fpext float %i.cc to double
  %i.ce = fcmp olt double %i.y, %i.cd
  br i1 %i.ce, label %bb.r, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cf = fadd double %i.y, %i.bs
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  %.0.i.i.i.i.i = phi double [ %i.cb, %bb.p ], [ %i.cf, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.cg = fneg double %.0.i.i.i.i.i
  %i.ch = fdiv double %i.cg, %i.bl                ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !444 ; 2 uses
  %i.ck = fcmp une float %i.cj, 0.000000e+00
  br i1 %i.ck, label %bb.s, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.s:                                             ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i
  %i.cl = tail call double @llvm.fabs.f64(double %i.ch)
  %i.cm = fpext float %i.cj to double             ; 2 uses
  %i.cn = fcmp ogt double %i.cl, %i.cm
  br i1 %i.cn, label %bb.t, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.co = tail call double @llvm.copysign.f64(double %i.cm, double %i.ch)
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i: ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit, %bb.t, %bb.s, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i
  %.012.i.i.i.i = phi double [ 0.000000e+00, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit ], [ %i.co, %bb.t ], [ %i.ch, %bb.s ], [ %i.ch, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i ]
  %i.cp = fptrunc double %.012.i.i.i.i to float   ; 4 uses
  br i1 %i.ba, label %bb.u, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

bb.u:                                             ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i
  %i.cq = load float, ptr %.sroa.49.0, align 4, !tbaa !146 ; 2 uses
  %i.cr = fcmp ogt float %i.cq, %i.cp
  br i1 %i.cr, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = load float, ptr %.sink4.i, align 4, !tbaa !146 ; 2 uses
  %i.ct = fcmp olt float %i.cs, %i.cp
  %..i.i.i = select i1 %i.ct, float %i.cs, float %i.cp
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit: ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i, %bb.u, %bb.v
  %.1.i.i.i = phi float [ %i.cp, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i ], [ %i.cq, %bb.u ], [ %..i.i.i, %bb.v ]
  ret float %.1.i.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_1
begin_hunk_2_@_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_:bb.a
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !87
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #21, !inline_history !17
  br label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.n, label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !123

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #21
  br label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EEC2IS3_vEEPT_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !92
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !0
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !123

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !619  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #13 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7xgboost13BatchIteratorINS_16GHistIndexMatrixEE5AtEndEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !339    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e, !prof !123

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.b = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.b, ptr noundef nonnull @.str.92, i32 noundef 482)
  %i.c = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.93, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.pre = load ptr, ptr %0, align 8, !tbaa !339
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2, %bb.a
  %i.g = phi ptr [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  ret i1 %i.k

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #38
  unreachable
}

declare noundef nonnull align 8 dereferenceable(218) ptr @_ZNK7xgboost16GHistIndexMatrix9TransposeEv(ptr noundef nonnull align 8 dereferenceable(225)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(218) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.119", align 8   ; 13 uses
  %7 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 13 uses
  %8 = alloca %class.anon.608, align 8            ; 6 uses
  %9 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %class.anon.610, align 8           ; 10 uses
  %12 = alloca %class.anon.611, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !391    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !344
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not69 = icmp eq ptr %i.b, %i.c
  br i1 %.not69, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %13 = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %13, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.m, align 4, !tbaa !122
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc48
  store ptr %i.m, ptr %6, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !406
  store ptr %i.q, ptr %i.k, align 8, !tbaa !214
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  invoke void @_ZN7xgboost4tree20CommonRowPartitioner19FindSplitConditionsINS0_14CPUExpandEntryENS_16GHistIndexMatrixENS0_14ScalarTreeViewEEEvRKSt6vectorIT_SaIS7_EERKT1_RKT0_PS6_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %4, ptr %8, align 8, !tbaa !363
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !621
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS3_14CPUExpandEntryENS3_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISI_EERKT3_EUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 2048)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !593
  %i.w = load ptr, ptr %7, align 8, !tbaa !474
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  invoke void @_ZN7xgboost6common16PartitionBuilderILm2048EE4InitIZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS4_14CPUExpandEntryENS4_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISJ_EERKT3_EUlmE0_EEvmmT_(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef %i.aa, i64 noundef %i.g, ptr nonnull %4, ptr nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !76, !noalias !1517
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !76, !noalias !1517
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.m

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !69
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.af, ptr noundef nonnull @.str.95, i32 noundef 168)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc34
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.96, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.af

bb.l:                                             ; preds = %bb.w, %_ZN7xgboost6common16PartitionBuilderILm2048EE19CalculateRowOffsetsEv.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %.noexc34, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.ab

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.pr49 = load ptr, ptr %9, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %.pr49, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %.pr49, align 8, !tbaa !60 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pr49, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !66
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr49, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.h, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.az = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %bb.s unwind label %bb.l

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %4, ptr %11, align 8, !tbaa !363
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.ba, align 8, !tbaa !623
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %i.bb, align 8, !tbaa !362
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %6, ptr %i.bc, align 8, !tbaa !583
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %2, ptr %i.bd, align 8, !tbaa !361
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %5, ptr %i.be, align 8, !tbaa !364
  invoke void @_ZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !488
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !179 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_:bb.a
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #37
  br label %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit

_ZN7xgboost6common14BlockedSpace2dD2Ev.exit:      ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.dh = load ptr, ptr %6, align 8, !tbaa !213   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !214
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dm) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.ab:                                            ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.ar, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ae

bb.ac:                                            ; preds = %bb.s
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ae

bb.ad:                                            ; preds = %bb.v
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.l
  %.pn29 = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %i.do, %bb.ad ], [ %i.dn, %bb.ac ], [ %.pn.pn, %bb.ab ]
  call void @_ZN7xgboost6common14BlockedSpace2dD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #21
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.k
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %bb.ae ], [ %i.ap, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.e
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %bb.af ], [ %i.r, %bb.e ]
  %i.dp = load ptr, ptr %6, align 8, !tbaa !213   ; 3 uses
  %.not.i.i.i44 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIiSaIiEED2Ev.exit45, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !214
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit45

_ZNSt6vectorIiSaIiEED2Ev.exit45:                  ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn29.pn.pn

bb.ai:                                            ; preds = %bb.o
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS_4tree20CommonRowPartitioner14UpdatePositionILb1ELb1ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT1_SaISH_EERKT2_EUlT_E_EEDaNS0_11BinTypeSizeEOSP_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !360
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1518, !nonnull !136, !align !497
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1519, !nonnull !136, !align !497
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1520, !nonnull !136, !align !497
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1521, !nonnull !136, !align !497
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1522, !nonnull !136, !align !497
  tail call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(225) %i.f, ptr noundef nonnull align 8 dereferenceable(218) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(68) %i.l)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !360
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1518, !nonnull !136, !align !497
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1519, !nonnull !136, !align !497
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1520, !nonnull !136, !align !497
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1521, !nonnull !136, !align !497
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1522, !nonnull !136, !align !497
  tail call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(225) %i.r, ptr noundef nonnull align 8 dereferenceable(218) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(68) %i.x)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %1, align 8, !tbaa !360
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1518, !nonnull !136, !align !497
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1519, !nonnull !136, !align !497
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1520, !nonnull !136, !align !497
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1521, !nonnull !136, !align !497
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1522, !nonnull !136, !align !497
  tail call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.y, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(225) %i.ad, ptr noundef nonnull align 8 dereferenceable(218) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(68) %i.aj)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ak = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ak, ptr noundef nonnull @.str.78, i32 noundef 223)
  %i.al = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.e
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.94, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.an = load ptr, ptr %1, align 8, !tbaa !360
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1518, !nonnull !136, !align !497
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !79
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1519, !nonnull !136, !align !497
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1520, !nonnull !136, !align !497
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1521, !nonnull !136, !align !497
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1522, !nonnull !136, !align !497
  call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.an, ptr noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(225) %i.as, ptr noundef nonnull align 8 dereferenceable(218) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(68) %i.ay)
  br label %bb.h

bb.f:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.az

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c, %bb.b
  ret void

bb.i:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(218) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.119", align 8   ; 13 uses
  %7 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 13 uses
  %8 = alloca %class.anon.500, align 8            ; 6 uses
  %9 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %class.anon.502, align 8           ; 10 uses
  %12 = alloca %class.anon.503, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !391    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !344
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not69 = icmp eq ptr %i.b, %i.c
  br i1 %.not69, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %13 = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %13, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.m, align 4, !tbaa !122
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc48
  store ptr %i.m, ptr %6, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !406
  store ptr %i.q, ptr %i.k, align 8, !tbaa !214
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  invoke void @_ZN7xgboost4tree20CommonRowPartitioner19FindSplitConditionsINS0_14CPUExpandEntryENS_16GHistIndexMatrixENS0_14ScalarTreeViewEEEvRKSt6vectorIT_SaIS7_EERKT1_RKT0_PS6_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %4, ptr %8, align 8, !tbaa !363
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !635
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree20CommonRowPartitioner14UpdatePositionItLb1ELb1ENS3_14CPUExpandEntryENS3_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISI_EERKT3_EUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 2048)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !593
  %i.w = load ptr, ptr %7, align 8, !tbaa !474
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  invoke void @_ZN7xgboost6common16PartitionBuilderILm2048EE4InitIZNS_4tree20CommonRowPartitioner14UpdatePositionItLb1ELb1ENS4_14CPUExpandEntryENS4_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISJ_EERKT3_EUlmE0_EEvmmT_(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef %i.aa, i64 noundef %i.g, ptr nonnull %4, ptr nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !76, !noalias !1525
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !76, !noalias !1525
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.m

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !69
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.af, ptr noundef nonnull @.str.95, i32 noundef 168)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc34
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.96, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.af

bb.l:                                             ; preds = %bb.w, %_ZN7xgboost6common16PartitionBuilderILm2048EE19CalculateRowOffsetsEv.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %.noexc34, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.ab

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.pr49 = load ptr, ptr %9, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %.pr49, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %.pr49, align 8, !tbaa !60 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pr49, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !66
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr49, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.h, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.az = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %bb.s unwind label %bb.l

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %4, ptr %11, align 8, !tbaa !363
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.ba, align 8, !tbaa !637
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %i.bb, align 8, !tbaa !362
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %6, ptr %i.bc, align 8, !tbaa !583
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %2, ptr %i.bd, align 8, !tbaa !361
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %5, ptr %i.be, align 8, !tbaa !364
  invoke void @_ZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionItLb1ELb1ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !488
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !179 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE17_M_default_appendEm:bb.a
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.057.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.prol, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.p, align 8, !tbaa !494
  %i.q = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1619

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.t, align 8, !tbaa !494
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.v, align 8, !tbaa !494
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.x, align 8, !tbaa !494
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.z, align 8, !tbaa !494
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ab, align 8, !tbaa !494
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ad, align 8, !tbaa !494
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.af, align 8, !tbaa !494
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ah, align 8, !tbaa !494
  %i.ai = add i64 %.057.i.i.i, -8                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1620

_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !489
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
  unreachable

_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 384307168202282325) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 24
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #36 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i31.prol, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.aq, align 8, !tbaa !494
  %i.ar = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 24 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !1621

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %i.at = icmp ult i64 %1, 8
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.057.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i31, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.au, align 8, !tbaa !494
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.aw, align 8, !tbaa !494
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ay, align 8, !tbaa !494
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ba, align 8, !tbaa !494
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bc, align 8, !tbaa !494
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.be, align 8, !tbaa !494
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bg, align 8, !tbaa !494
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 168
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bi, align 8, !tbaa !494
  %i.bj = add i64 %.057.i.i.i32, -8               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 192
  %.not.i.i.i33.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1620

_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i64 24, i1 false), !tbaa.struct !490, !alias.scope !1625
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i38 = icmp eq ptr %i.bl, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i37, !llvm.loop !19

_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN7xgboost6common16RowSetCollection4ElemESaIS3_EE13_M_deallocateEPS3_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #37
  br label %_ZNSt12_Vector_baseIN7xgboost6common16RowSetCollection4ElemESaIS3_EE13_M_deallocateEPS3_m.exit41

_ZNSt12_Vector_baseIN7xgboost6common16RowSetCollection4ElemESaIS3_EE13_M_deallocateEPS3_m.exit41: ; preds = %_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8, !tbaa !175
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %1
  store ptr %i.bq, ptr %i.a, align 8, !tbaa !489
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.br, ptr %i.h, align 8, !tbaa !176
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7xgboost6common16RowSetCollection4ElemESaIS3_EE13_M_deallocateEPS3_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(218) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.119", align 8   ; 13 uses
  %7 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 13 uses
  %8 = alloca %class.anon.513, align 8            ; 6 uses
  %9 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %class.anon.515, align 8           ; 10 uses
  %12 = alloca %class.anon.516, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !391    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !344
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not69 = icmp eq ptr %i.b, %i.c
  br i1 %.not69, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %13 = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %13, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.m, align 4, !tbaa !122
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc48
  store ptr %i.m, ptr %6, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !406
  store ptr %i.q, ptr %i.k, align 8, !tbaa !214
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  invoke void @_ZN7xgboost4tree20CommonRowPartitioner19FindSplitConditionsINS0_14CPUExpandEntryENS_16GHistIndexMatrixENS0_14ScalarTreeViewEEEvRKSt6vectorIT_SaIS7_EERKT1_RKT0_PS6_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %4, ptr %8, align 8, !tbaa !363
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !683
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS3_14CPUExpandEntryENS3_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISI_EERKT3_EUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 2048)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !593
  %i.w = load ptr, ptr %7, align 8, !tbaa !474
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  invoke void @_ZN7xgboost6common16PartitionBuilderILm2048EE4InitIZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS4_14CPUExpandEntryENS4_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISJ_EERKT3_EUlmE0_EEvmmT_(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef %i.aa, i64 noundef %i.g, ptr nonnull %4, ptr nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !76, !noalias !1628
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !76, !noalias !1628
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.m

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !69
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.af, ptr noundef nonnull @.str.95, i32 noundef 168)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc34
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.96, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.af

bb.l:                                             ; preds = %bb.w, %_ZN7xgboost6common16PartitionBuilderILm2048EE19CalculateRowOffsetsEv.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %.noexc34, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.ab

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.pr49 = load ptr, ptr %9, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %.pr49, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %.pr49, align 8, !tbaa !60 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pr49, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !66
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr49, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.h, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.az = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %bb.s unwind label %bb.l

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %4, ptr %11, align 8, !tbaa !363
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.ba, align 8, !tbaa !685
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %i.bb, align 8, !tbaa !362
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %6, ptr %i.bc, align 8, !tbaa !583
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %2, ptr %i.bd, align 8, !tbaa !361
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %5, ptr %i.be, align 8, !tbaa !364
  invoke void @_ZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !488
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !179 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE0_EEvRKNS0_14BlockedSpace2dEiOT_ENKUlvE_clEv:bb.a
  %i.r = tail call { i64, i64 } @_ZNK7xgboost6common14BlockedSpace2d8GetRangeEm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 noundef %.011)
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !687  ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !1670, !nonnull !136, !align !497
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !391
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %i.p
  %i.y = load i32, ptr %i.x, align 8, !tbaa !371
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.aa = sext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !492 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %sext.i = shl i64 %i.p, 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179
  %i.ag = ashr exact i64 %sext.i, 29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !76
  %i.aj = lshr i64 %i.s, 11
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !193
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !626 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !628
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !630
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16416 ; 2 uses
  %i.ax = load i64, ptr %i.ao, align 8, !tbaa !629 ; 2 uses
  switch i64 %i.ax, label %bb.c [
    i64 0, label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
    i64 1, label %bb.d
  ], !prof !681

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr nonnull align 8 %i.av, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !193
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %i.ak
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !626
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !76
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !76
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i:          ; preds = %bb.d, %bb.c, %bb.b
  %i.az = phi ptr [ %i.ao, %bb.b ], [ %.pre19.i.i, %bb.c ], [ %i.ao, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !631 ; 2 uses
  switch i64 %i.bb, label %bb.e [
    i64 0, label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
    i64 1, label %bb.f
  ], !prof !681

bb.e:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %.idx.i.i14.i.i = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr nonnull align 8 %i.aw, i64 %.idx.i.i14.i.i, i1 false)
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

bb.f:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !76
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !76
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit: ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i, %bb.e, %bb.f
  %i.bd = add nuw i64 %.011, 1                    ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.sroa.speculated
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !1664
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS_4tree20CommonRowPartitioner14UpdatePositionILb0ELb1ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT1_SaISH_EERKT2_EUlT_E_EEDaNS0_11BinTypeSizeEOSP_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !366
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1671, !nonnull !136, !align !497
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1672, !nonnull !136, !align !497
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1673, !nonnull !136, !align !497
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1674, !nonnull !136, !align !497
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1675, !nonnull !136, !align !497
  tail call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(225) %i.f, ptr noundef nonnull align 8 dereferenceable(218) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(68) %i.l)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !366
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1671, !nonnull !136, !align !497
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1672, !nonnull !136, !align !497
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1673, !nonnull !136, !align !497
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1674, !nonnull !136, !align !497
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1675, !nonnull !136, !align !497
  tail call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(225) %i.r, ptr noundef nonnull align 8 dereferenceable(218) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(68) %i.x)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %1, align 8, !tbaa !366
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1671, !nonnull !136, !align !497
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1672, !nonnull !136, !align !497
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1673, !nonnull !136, !align !497
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1674, !nonnull !136, !align !497
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1675, !nonnull !136, !align !497
  tail call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.y, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(225) %i.ad, ptr noundef nonnull align 8 dereferenceable(218) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(68) %i.aj)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ak = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ak, ptr noundef nonnull @.str.78, i32 noundef 223)
  %i.al = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.e
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.94, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.an = load ptr, ptr %1, align 8, !tbaa !366
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1671, !nonnull !136, !align !497
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !79
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1672, !nonnull !136, !align !497
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1673, !nonnull !136, !align !497
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1674, !nonnull !136, !align !497
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1675, !nonnull !136, !align !497
  call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.an, ptr noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(225) %i.as, ptr noundef nonnull align 8 dereferenceable(218) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(68) %i.ay)
  br label %bb.h

bb.f:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.az

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c, %bb.b
  ret void

bb.i:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(218) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.119", align 8   ; 13 uses
  %7 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 13 uses
  %8 = alloca %class.anon.526, align 8            ; 6 uses
  %9 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %class.anon.528, align 8           ; 10 uses
  %12 = alloca %class.anon.529, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !391    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !344
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not69 = icmp eq ptr %i.b, %i.c
  br i1 %.not69, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %13 = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %13, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.m, align 4, !tbaa !122
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc48
  store ptr %i.m, ptr %6, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !406
  store ptr %i.q, ptr %i.k, align 8, !tbaa !214
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  invoke void @_ZN7xgboost4tree20CommonRowPartitioner19FindSplitConditionsINS0_14CPUExpandEntryENS_16GHistIndexMatrixENS0_14ScalarTreeViewEEEvRKSt6vectorIT_SaIS7_EERKT1_RKT0_PS6_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %4, ptr %8, align 8, !tbaa !363
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !703
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb1ENS3_14CPUExpandEntryENS3_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISI_EERKT3_EUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 2048)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !593
  %i.w = load ptr, ptr %7, align 8, !tbaa !474
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  invoke void @_ZN7xgboost6common16PartitionBuilderILm2048EE4InitIZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb1ENS4_14CPUExpandEntryENS4_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISJ_EERKT3_EUlmE0_EEvmmT_(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef %i.aa, i64 noundef %i.g, ptr nonnull %4, ptr nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !76, !noalias !1678
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !76, !noalias !1678
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.m

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !69
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.af, ptr noundef nonnull @.str.95, i32 noundef 168)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc34
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.96, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.af

bb.l:                                             ; preds = %bb.w, %_ZN7xgboost6common16PartitionBuilderILm2048EE19CalculateRowOffsetsEv.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %.noexc34, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.ab

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.pr49 = load ptr, ptr %9, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %.pr49, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %.pr49, align 8, !tbaa !60 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pr49, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !66
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr49, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.h, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.az = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %bb.s unwind label %bb.l

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %4, ptr %11, align 8, !tbaa !363
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.ba, align 8, !tbaa !705
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %i.bb, align 8, !tbaa !362
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %6, ptr %i.bc, align 8, !tbaa !583
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %2, ptr %i.bd, align 8, !tbaa !361
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %5, ptr %i.be, align 8, !tbaa !364
  invoke void @_ZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb1ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !488
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !179 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor2dIZNS2_4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb1ENS5_14CPUExpandEntryENS5_14ScalarTreeViewEEEvPKNS2_7ContextERKNS2_16GHistIndexMatrixERKNS3_12ColumnMatrixERKSt6vectorIT2_SaISK_EERKT3_EUlmNS3_7Range1dEE0_EEvRKNS3_14BlockedSpace2dEiOT_EUlvE_JEEEvSX_DpT0_:bb.a
bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #35
          to label %.noexc9 unwind label %bb.l

.noexc9:                                          ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10:        ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !507
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.r = load ptr, ptr %4, align 8, !tbaa !507
  store ptr null, ptr %4, align 8, !tbaa !507
  %i.s = load ptr, ptr %0, align 8, !tbaa !507    ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !507
  store ptr %i.r, ptr %0, align 8, !tbaa !507
  %.not.i.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i.i11, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %.pr17 = load ptr, ptr %4, align 8, !tbaa !507
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i13 = icmp eq ptr %.pr17, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

.sink.split:                                      ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14
  %.sink = phi ptr [ %i.o, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10 ], [ %i.o, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14 ], [ %i.g, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %i.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sink) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.a, %bb.g ], [ %i.u, %bb.m ]
  resume { ptr, i32 } %.merged

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #38
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb1ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE0_EEvRKNS0_14BlockedSpace2dEiOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1720, !nonnull !136, !align !497
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1721, !nonnull !136, !align !603
  %i.e = load i32, ptr %i.d, align 4, !tbaa !122
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = udiv i64 %i.b, %i.f
  %i.h = urem i64 %i.b, %i.f
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.g, %i.j
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.k) ; 2 uses
  %.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit ] ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !1722, !nonnull !136, !align !497 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !1723, !nonnull !136, !align !497
  %i.p = tail call noundef i64 @_ZNK7xgboost6common14BlockedSpace2d17GetFirstDimensionEm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 noundef %.011) ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !1723, !nonnull !136, !align !497
  %i.r = tail call { i64, i64 } @_ZNK7xgboost6common14BlockedSpace2d8GetRangeEm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 noundef %.011)
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !707  ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !1724, !nonnull !136, !align !497
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !391
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %i.p
  %i.y = load i32, ptr %i.x, align 8, !tbaa !371
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.aa = sext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !492 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %sext.i = shl i64 %i.p, 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179
  %i.ag = ashr exact i64 %sext.i, 29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !76
  %i.aj = lshr i64 %i.s, 11
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !193
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !626 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !628
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !630
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16416 ; 2 uses
  %i.ax = load i64, ptr %i.ao, align 8, !tbaa !629 ; 2 uses
  switch i64 %i.ax, label %bb.c [
    i64 0, label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
    i64 1, label %bb.d
  ], !prof !681

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr nonnull align 8 %i.av, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !193
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %i.ak
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !626
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !76
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !76
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i:          ; preds = %bb.d, %bb.c, %bb.b
  %i.az = phi ptr [ %i.ao, %bb.b ], [ %.pre19.i.i, %bb.c ], [ %i.ao, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !631 ; 2 uses
  switch i64 %i.bb, label %bb.e [
    i64 0, label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
    i64 1, label %bb.f
  ], !prof !681

bb.e:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %.idx.i.i14.i.i = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr nonnull align 8 %i.aw, i64 %.idx.i.i14.i.i, i1 false)
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

bb.f:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !76
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !76
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit: ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i, %bb.e, %bb.f
  %i.bd = add nuw i64 %.011, 1                    ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.sroa.speculated
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !1718
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(218) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.119", align 8   ; 13 uses
  %7 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 13 uses
  %8 = alloca %class.anon.539, align 8            ; 6 uses
  %9 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %class.anon.541, align 8           ; 10 uses
  %12 = alloca %class.anon.542, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !391    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !344
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not69 = icmp eq ptr %i.b, %i.c
  br i1 %.not69, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %13 = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %13, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.m, align 4, !tbaa !122
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc48
  store ptr %i.m, ptr %6, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !406
  store ptr %i.q, ptr %i.k, align 8, !tbaa !214
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  invoke void @_ZN7xgboost4tree20CommonRowPartitioner19FindSplitConditionsINS0_14CPUExpandEntryENS_16GHistIndexMatrixENS0_14ScalarTreeViewEEEvRKSt6vectorIT_SaIS7_EERKT1_RKT0_PS6_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %4, ptr %8, align 8, !tbaa !363
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !721
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree20CommonRowPartitioner14UpdatePositionItLb0ELb1ENS3_14CPUExpandEntryENS3_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISI_EERKT3_EUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 2048)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !593
  %i.w = load ptr, ptr %7, align 8, !tbaa !474
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  invoke void @_ZN7xgboost6common16PartitionBuilderILm2048EE4InitIZNS_4tree20CommonRowPartitioner14UpdatePositionItLb0ELb1ENS4_14CPUExpandEntryENS4_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISJ_EERKT3_EUlmE0_EEvmmT_(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef %i.aa, i64 noundef %i.g, ptr nonnull %4, ptr nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !76, !noalias !1727
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !76, !noalias !1727
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.m

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !69
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.af, ptr noundef nonnull @.str.95, i32 noundef 168)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc34
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.96, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.af

bb.l:                                             ; preds = %bb.w, %_ZN7xgboost6common16PartitionBuilderILm2048EE19CalculateRowOffsetsEv.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %.noexc34, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.ab

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.pr49 = load ptr, ptr %9, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %.pr49, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %.pr49, align 8, !tbaa !60 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pr49, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !66
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr49, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.h, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.az = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %bb.s unwind label %bb.l

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %4, ptr %11, align 8, !tbaa !363
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.ba, align 8, !tbaa !723
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %i.bb, align 8, !tbaa !362
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %6, ptr %i.bc, align 8, !tbaa !583
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %2, ptr %i.bd, align 8, !tbaa !361
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %5, ptr %i.be, align 8, !tbaa !364
  invoke void @_ZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionItLb0ELb1ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !488
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !179 ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor2dIZNS2_4tree20CommonRowPartitioner14UpdatePositionItLb0ELb1ENS5_14CPUExpandEntryENS5_14ScalarTreeViewEEEvPKNS2_7ContextERKNS2_16GHistIndexMatrixERKNS3_12ColumnMatrixERKSt6vectorIT2_SaISK_EERKT3_EUlmNS3_7Range1dEE0_EEvRKNS3_14BlockedSpace2dEiOT_EUlvE_JEEEvSX_DpT0_:bb.a
bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #35
          to label %.noexc9 unwind label %bb.l

.noexc9:                                          ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10:        ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !507
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.r = load ptr, ptr %4, align 8, !tbaa !507
  store ptr null, ptr %4, align 8, !tbaa !507
  %i.s = load ptr, ptr %0, align 8, !tbaa !507    ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !507
  store ptr %i.r, ptr %0, align 8, !tbaa !507
  %.not.i.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i.i11, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %.pr17 = load ptr, ptr %4, align 8, !tbaa !507
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i13 = icmp eq ptr %.pr17, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

.sink.split:                                      ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14
  %.sink = phi ptr [ %i.o, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10 ], [ %i.o, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14 ], [ %i.g, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %i.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sink) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.a, %bb.g ], [ %i.u, %bb.m ]
  resume { ptr, i32 } %.merged

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #38
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionItLb0ELb1ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE0_EEvRKNS0_14BlockedSpace2dEiOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1769, !nonnull !136, !align !497
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1770, !nonnull !136, !align !603
  %i.e = load i32, ptr %i.d, align 4, !tbaa !122
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = udiv i64 %i.b, %i.f
  %i.h = urem i64 %i.b, %i.f
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.g, %i.j
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.k) ; 2 uses
  %.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit ] ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !1771, !nonnull !136, !align !497 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !1772, !nonnull !136, !align !497
  %i.p = tail call noundef i64 @_ZNK7xgboost6common14BlockedSpace2d17GetFirstDimensionEm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 noundef %.011) ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !1772, !nonnull !136, !align !497
  %i.r = tail call { i64, i64 } @_ZNK7xgboost6common14BlockedSpace2d8GetRangeEm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 noundef %.011)
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !725  ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !1773, !nonnull !136, !align !497
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !391
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %i.p
  %i.y = load i32, ptr %i.x, align 8, !tbaa !371
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.aa = sext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !492 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %sext.i = shl i64 %i.p, 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179
  %i.ag = ashr exact i64 %sext.i, 29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !76
  %i.aj = lshr i64 %i.s, 11
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !193
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !626 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !628
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !630
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16416 ; 2 uses
  %i.ax = load i64, ptr %i.ao, align 8, !tbaa !629 ; 2 uses
  switch i64 %i.ax, label %bb.c [
    i64 0, label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
    i64 1, label %bb.d
  ], !prof !681

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr nonnull align 8 %i.av, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !193
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %i.ak
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !626
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !76
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !76
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i:          ; preds = %bb.d, %bb.c, %bb.b
  %i.az = phi ptr [ %i.ao, %bb.b ], [ %.pre19.i.i, %bb.c ], [ %i.ao, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !631 ; 2 uses
  switch i64 %i.bb, label %bb.e [
    i64 0, label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
    i64 1, label %bb.f
  ], !prof !681

bb.e:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %.idx.i.i14.i.i = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr nonnull align 8 %i.aw, i64 %.idx.i.i14.i.i, i1 false)
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

bb.f:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !76
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !76
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit: ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i, %bb.e, %bb.f
  %i.bd = add nuw i64 %.011, 1                    ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.sroa.speculated
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !1767
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(218) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.119", align 8   ; 13 uses
  %7 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 13 uses
  %8 = alloca %class.anon.548, align 8            ; 6 uses
  %9 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %class.anon.550, align 8           ; 10 uses
  %12 = alloca %class.anon.551, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !391    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !344
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not69 = icmp eq ptr %i.b, %i.c
  br i1 %.not69, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %13 = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %13, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.m, align 4, !tbaa !122
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc48
  store ptr %i.m, ptr %6, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !406
  store ptr %i.q, ptr %i.k, align 8, !tbaa !214
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  invoke void @_ZN7xgboost4tree20CommonRowPartitioner19FindSplitConditionsINS0_14CPUExpandEntryENS_16GHistIndexMatrixENS0_14ScalarTreeViewEEEvRKSt6vectorIT_SaIS7_EERKT1_RKT0_PS6_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %4, ptr %8, align 8, !tbaa !363
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !735
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb1ENS3_14CPUExpandEntryENS3_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISI_EERKT3_EUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 2048)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !593
  %i.w = load ptr, ptr %7, align 8, !tbaa !474
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  invoke void @_ZN7xgboost6common16PartitionBuilderILm2048EE4InitIZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb1ENS4_14CPUExpandEntryENS4_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISJ_EERKT3_EUlmE0_EEvmmT_(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef %i.aa, i64 noundef %i.g, ptr nonnull %4, ptr nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !76, !noalias !1776
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !76, !noalias !1776
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.m

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !69
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.af, ptr noundef nonnull @.str.95, i32 noundef 168)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc34
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.96, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.af

bb.l:                                             ; preds = %bb.w, %_ZN7xgboost6common16PartitionBuilderILm2048EE19CalculateRowOffsetsEv.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %.noexc34, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.ab

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.pr49 = load ptr, ptr %9, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %.pr49, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %.pr49, align 8, !tbaa !60 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pr49, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !66
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr49, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.h, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.az = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %bb.s unwind label %bb.l

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %4, ptr %11, align 8, !tbaa !363
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.ba, align 8, !tbaa !737
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %i.bb, align 8, !tbaa !362
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %6, ptr %i.bc, align 8, !tbaa !583
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %2, ptr %i.bd, align 8, !tbaa !361
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %5, ptr %i.be, align 8, !tbaa !364
  invoke void @_ZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb1ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !488
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !179 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb1ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE0_EEvRKNS0_14BlockedSpace2dEiOT_ENKUlvE_clEv:bb.a
  %i.r = tail call { i64, i64 } @_ZNK7xgboost6common14BlockedSpace2d8GetRangeEm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 noundef %.011)
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !739  ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !1822, !nonnull !136, !align !497
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !391
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %i.p
  %i.y = load i32, ptr %i.x, align 8, !tbaa !371
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.aa = sext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !492 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %sext.i = shl i64 %i.p, 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179
  %i.ag = ashr exact i64 %sext.i, 29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !76
  %i.aj = lshr i64 %i.s, 11
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !193
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !626 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !628
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !630
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16416 ; 2 uses
  %i.ax = load i64, ptr %i.ao, align 8, !tbaa !629 ; 2 uses
  switch i64 %i.ax, label %bb.c [
    i64 0, label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
    i64 1, label %bb.d
  ], !prof !681

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr nonnull align 8 %i.av, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !193
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %i.ak
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !626
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !76
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !76
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i:          ; preds = %bb.d, %bb.c, %bb.b
  %i.az = phi ptr [ %i.ao, %bb.b ], [ %.pre19.i.i, %bb.c ], [ %i.ao, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !631 ; 2 uses
  switch i64 %i.bb, label %bb.e [
    i64 0, label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
    i64 1, label %bb.f
  ], !prof !681

bb.e:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %.idx.i.i14.i.i = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr nonnull align 8 %i.aw, i64 %.idx.i.i14.i.i, i1 false)
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

bb.f:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !76
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !76
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit: ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i, %bb.e, %bb.f
  %i.bd = add nuw i64 %.011, 1                    ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.sroa.speculated
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !1816
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS_4tree20CommonRowPartitioner14UpdatePositionILb1ELb0ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT1_SaISH_EERKT2_EUlT_E_EEDaNS0_11BinTypeSizeEOSP_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !368
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1823, !nonnull !136, !align !497
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1824, !nonnull !136, !align !497
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1825, !nonnull !136, !align !497
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1826, !nonnull !136, !align !497
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1827, !nonnull !136, !align !497
  tail call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(225) %i.f, ptr noundef nonnull align 8 dereferenceable(218) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(68) %i.l)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !368
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1823, !nonnull !136, !align !497
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1824, !nonnull !136, !align !497
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1825, !nonnull !136, !align !497
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1826, !nonnull !136, !align !497
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1827, !nonnull !136, !align !497
  tail call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(225) %i.r, ptr noundef nonnull align 8 dereferenceable(218) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(68) %i.x)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %1, align 8, !tbaa !368
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1823, !nonnull !136, !align !497
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1824, !nonnull !136, !align !497
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1825, !nonnull !136, !align !497
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1826, !nonnull !136, !align !497
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1827, !nonnull !136, !align !497
  tail call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.y, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(225) %i.ad, ptr noundef nonnull align 8 dereferenceable(218) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(68) %i.aj)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ak = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ak, ptr noundef nonnull @.str.78, i32 noundef 223)
  %i.al = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.e
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.94, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.an = load ptr, ptr %1, align 8, !tbaa !368
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1823, !nonnull !136, !align !497
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !79
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1824, !nonnull !136, !align !497
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1825, !nonnull !136, !align !497
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1826, !nonnull !136, !align !497
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1827, !nonnull !136, !align !497
  call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.an, ptr noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(225) %i.as, ptr noundef nonnull align 8 dereferenceable(218) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(68) %i.ay)
  br label %bb.h

bb.f:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.az

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c, %bb.b
  ret void

bb.i:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(218) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.119", align 8   ; 13 uses
  %7 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 13 uses
  %8 = alloca %class.anon.558, align 8            ; 6 uses
  %9 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %class.anon.560, align 8           ; 10 uses
  %12 = alloca %class.anon.561, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !391    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !344
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not69 = icmp eq ptr %i.b, %i.c
  br i1 %.not69, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %13 = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %13, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.m, align 4, !tbaa !122
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc48
  store ptr %i.m, ptr %6, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !406
  store ptr %i.q, ptr %i.k, align 8, !tbaa !214
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  invoke void @_ZN7xgboost4tree20CommonRowPartitioner19FindSplitConditionsINS0_14CPUExpandEntryENS_16GHistIndexMatrixENS0_14ScalarTreeViewEEEvRKSt6vectorIT_SaIS7_EERKT1_RKT0_PS6_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %4, ptr %8, align 8, !tbaa !363
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !749
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb0ENS3_14CPUExpandEntryENS3_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISI_EERKT3_EUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 2048)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !593
  %i.w = load ptr, ptr %7, align 8, !tbaa !474
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  invoke void @_ZN7xgboost6common16PartitionBuilderILm2048EE4InitIZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb0ENS4_14CPUExpandEntryENS4_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISJ_EERKT3_EUlmE0_EEvmmT_(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef %i.aa, i64 noundef %i.g, ptr nonnull %4, ptr nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !76, !noalias !1830
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !76, !noalias !1830
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.m

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !69
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.af, ptr noundef nonnull @.str.95, i32 noundef 168)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc34
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.96, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.af

bb.l:                                             ; preds = %bb.w, %_ZN7xgboost6common16PartitionBuilderILm2048EE19CalculateRowOffsetsEv.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %.noexc34, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.ab

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.pr49 = load ptr, ptr %9, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %.pr49, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %.pr49, align 8, !tbaa !60 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pr49, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !66
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr49, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.h, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.az = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %bb.s unwind label %bb.l

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %4, ptr %11, align 8, !tbaa !363
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.ba, align 8, !tbaa !751
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %i.bb, align 8, !tbaa !362
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %6, ptr %i.bc, align 8, !tbaa !583
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %2, ptr %i.bd, align 8, !tbaa !361
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %5, ptr %i.be, align 8, !tbaa !364
  invoke void @_ZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb0ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !488
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !179 ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor2dIZNS2_4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb0ENS5_14CPUExpandEntryENS5_14ScalarTreeViewEEEvPKNS2_7ContextERKNS2_16GHistIndexMatrixERKNS3_12ColumnMatrixERKSt6vectorIT2_SaISK_EERKT3_EUlmNS3_7Range1dEE0_EEvRKNS3_14BlockedSpace2dEiOT_EUlvE_JEEEvSX_DpT0_:bb.a
bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #35
          to label %.noexc9 unwind label %bb.l

.noexc9:                                          ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10:        ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !507
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.r = load ptr, ptr %4, align 8, !tbaa !507
  store ptr null, ptr %4, align 8, !tbaa !507
  %i.s = load ptr, ptr %0, align 8, !tbaa !507    ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !507
  store ptr %i.r, ptr %0, align 8, !tbaa !507
  %.not.i.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i.i11, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %.pr17 = load ptr, ptr %4, align 8, !tbaa !507
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i13 = icmp eq ptr %.pr17, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

.sink.split:                                      ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14
  %.sink = phi ptr [ %i.o, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10 ], [ %i.o, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14 ], [ %i.g, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %i.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sink) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.a, %bb.g ], [ %i.u, %bb.m ]
  resume { ptr, i32 } %.merged

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #38
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb0ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE0_EEvRKNS0_14BlockedSpace2dEiOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1868, !nonnull !136, !align !497
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1869, !nonnull !136, !align !603
  %i.e = load i32, ptr %i.d, align 4, !tbaa !122
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = udiv i64 %i.b, %i.f
  %i.h = urem i64 %i.b, %i.f
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.g, %i.j
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.k) ; 2 uses
  %.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit ] ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !1870, !nonnull !136, !align !497 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !1871, !nonnull !136, !align !497
  %i.p = tail call noundef i64 @_ZNK7xgboost6common14BlockedSpace2d17GetFirstDimensionEm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 noundef %.011) ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !1871, !nonnull !136, !align !497
  %i.r = tail call { i64, i64 } @_ZNK7xgboost6common14BlockedSpace2d8GetRangeEm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 noundef %.011)
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !753  ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !1872, !nonnull !136, !align !497
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !391
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %i.p
  %i.y = load i32, ptr %i.x, align 8, !tbaa !371
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.aa = sext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !492 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %sext.i = shl i64 %i.p, 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179
  %i.ag = ashr exact i64 %sext.i, 29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !76
  %i.aj = lshr i64 %i.s, 11
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !193
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !626 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !628
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !630
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16416 ; 2 uses
  %i.ax = load i64, ptr %i.ao, align 8, !tbaa !629 ; 2 uses
  switch i64 %i.ax, label %bb.c [
    i64 0, label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
    i64 1, label %bb.d
  ], !prof !681

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr nonnull align 8 %i.av, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !193
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %i.ak
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !626
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !76
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !76
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i:          ; preds = %bb.d, %bb.c, %bb.b
  %i.az = phi ptr [ %i.ao, %bb.b ], [ %.pre19.i.i, %bb.c ], [ %i.ao, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !631 ; 2 uses
  switch i64 %i.bb, label %bb.e [
    i64 0, label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
    i64 1, label %bb.f
  ], !prof !681

bb.e:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %.idx.i.i14.i.i = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr nonnull align 8 %i.aw, i64 %.idx.i.i14.i.i, i1 false)
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

bb.f:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !76
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !76
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit: ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i, %bb.e, %bb.f
  %i.bd = add nuw i64 %.011, 1                    ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.sroa.speculated
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !1866
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(218) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.119", align 8   ; 13 uses
  %7 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 13 uses
  %8 = alloca %class.anon.567, align 8            ; 6 uses
  %9 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %class.anon.569, align 8           ; 10 uses
  %12 = alloca %class.anon.570, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !391    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !344
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not69 = icmp eq ptr %i.b, %i.c
  br i1 %.not69, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %13 = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %13, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.m, align 4, !tbaa !122
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc48
  store ptr %i.m, ptr %6, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !406
  store ptr %i.q, ptr %i.k, align 8, !tbaa !214
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  invoke void @_ZN7xgboost4tree20CommonRowPartitioner19FindSplitConditionsINS0_14CPUExpandEntryENS_16GHistIndexMatrixENS0_14ScalarTreeViewEEEvRKSt6vectorIT_SaIS7_EERKT1_RKT0_PS6_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %4, ptr %8, align 8, !tbaa !363
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !755
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree20CommonRowPartitioner14UpdatePositionItLb1ELb0ENS3_14CPUExpandEntryENS3_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISI_EERKT3_EUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 2048)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !593
  %i.w = load ptr, ptr %7, align 8, !tbaa !474
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  invoke void @_ZN7xgboost6common16PartitionBuilderILm2048EE4InitIZNS_4tree20CommonRowPartitioner14UpdatePositionItLb1ELb0ENS4_14CPUExpandEntryENS4_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISJ_EERKT3_EUlmE0_EEvmmT_(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef %i.aa, i64 noundef %i.g, ptr nonnull %4, ptr nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !76, !noalias !1875
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !76, !noalias !1875
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.m

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !69
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.af, ptr noundef nonnull @.str.95, i32 noundef 168)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc34
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.96, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.af

bb.l:                                             ; preds = %bb.w, %_ZN7xgboost6common16PartitionBuilderILm2048EE19CalculateRowOffsetsEv.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %.noexc34, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.ab

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.pr49 = load ptr, ptr %9, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %.pr49, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %.pr49, align 8, !tbaa !60 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pr49, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !66
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr49, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.h, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.az = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %bb.s unwind label %bb.l

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %4, ptr %11, align 8, !tbaa !363
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.ba, align 8, !tbaa !757
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %i.bb, align 8, !tbaa !362
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %6, ptr %i.bc, align 8, !tbaa !583
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %2, ptr %i.bd, align 8, !tbaa !361
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %5, ptr %i.be, align 8, !tbaa !364
  invoke void @_ZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionItLb1ELb0ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !488
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !179 ; 3 uses
end_hunk_9
begin_hunk_10_@_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor2dIZNS2_4tree20CommonRowPartitioner14UpdatePositionItLb1ELb0ENS5_14CPUExpandEntryENS5_14ScalarTreeViewEEEvPKNS2_7ContextERKNS2_16GHistIndexMatrixERKNS3_12ColumnMatrixERKSt6vectorIT2_SaISK_EERKT3_EUlmNS3_7Range1dEE0_EEvRKNS3_14BlockedSpace2dEiOT_EUlvE_JEEEvSX_DpT0_:bb.a
bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #35
          to label %.noexc9 unwind label %bb.l

.noexc9:                                          ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10:        ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !507
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.r = load ptr, ptr %4, align 8, !tbaa !507
  store ptr null, ptr %4, align 8, !tbaa !507
  %i.s = load ptr, ptr %0, align 8, !tbaa !507    ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !507
  store ptr %i.r, ptr %0, align 8, !tbaa !507
  %.not.i.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i.i11, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %.pr17 = load ptr, ptr %4, align 8, !tbaa !507
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i13 = icmp eq ptr %.pr17, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

.sink.split:                                      ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14
  %.sink = phi ptr [ %i.o, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10 ], [ %i.o, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14 ], [ %i.g, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %i.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sink) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.a, %bb.g ], [ %i.u, %bb.m ]
  resume { ptr, i32 } %.merged

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #38
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionItLb1ELb0ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE0_EEvRKNS0_14BlockedSpace2dEiOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1913, !nonnull !136, !align !497
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1914, !nonnull !136, !align !603
  %i.e = load i32, ptr %i.d, align 4, !tbaa !122
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = udiv i64 %i.b, %i.f
  %i.h = urem i64 %i.b, %i.f
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.g, %i.j
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.k) ; 2 uses
  %.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit ] ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !1915, !nonnull !136, !align !497 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !1916, !nonnull !136, !align !497
  %i.p = tail call noundef i64 @_ZNK7xgboost6common14BlockedSpace2d17GetFirstDimensionEm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 noundef %.011) ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !1916, !nonnull !136, !align !497
  %i.r = tail call { i64, i64 } @_ZNK7xgboost6common14BlockedSpace2d8GetRangeEm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 noundef %.011)
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !759  ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !1917, !nonnull !136, !align !497
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !391
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %i.p
  %i.y = load i32, ptr %i.x, align 8, !tbaa !371
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.aa = sext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !492 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %sext.i = shl i64 %i.p, 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179
  %i.ag = ashr exact i64 %sext.i, 29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !76
  %i.aj = lshr i64 %i.s, 11
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !193
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !626 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !628
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !630
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16416 ; 2 uses
  %i.ax = load i64, ptr %i.ao, align 8, !tbaa !629 ; 2 uses
  switch i64 %i.ax, label %bb.c [
    i64 0, label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
    i64 1, label %bb.d
  ], !prof !681

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr nonnull align 8 %i.av, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !193
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %i.ak
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !626
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !76
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !76
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i:          ; preds = %bb.d, %bb.c, %bb.b
  %i.az = phi ptr [ %i.ao, %bb.b ], [ %.pre19.i.i, %bb.c ], [ %i.ao, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !631 ; 2 uses
  switch i64 %i.bb, label %bb.e [
    i64 0, label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
    i64 1, label %bb.f
  ], !prof !681

bb.e:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %.idx.i.i14.i.i = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr nonnull align 8 %i.aw, i64 %.idx.i.i14.i.i, i1 false)
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

bb.f:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !76
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !76
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit: ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i, %bb.e, %bb.f
  %i.bd = add nuw i64 %.011, 1                    ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.sroa.speculated
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !1911
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(218) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.119", align 8   ; 13 uses
  %7 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 13 uses
  %8 = alloca %class.anon.575, align 8            ; 6 uses
  %9 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %class.anon.577, align 8           ; 10 uses
  %12 = alloca %class.anon.578, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !391    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !344
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not69 = icmp eq ptr %i.b, %i.c
  br i1 %.not69, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %13 = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %13, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.m, align 4, !tbaa !122
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc48
  store ptr %i.m, ptr %6, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !406
  store ptr %i.q, ptr %i.k, align 8, !tbaa !214
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  invoke void @_ZN7xgboost4tree20CommonRowPartitioner19FindSplitConditionsINS0_14CPUExpandEntryENS_16GHistIndexMatrixENS0_14ScalarTreeViewEEEvRKSt6vectorIT_SaIS7_EERKT1_RKT0_PS6_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %4, ptr %8, align 8, !tbaa !363
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !761
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb0ENS3_14CPUExpandEntryENS3_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISI_EERKT3_EUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 2048)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !593
  %i.w = load ptr, ptr %7, align 8, !tbaa !474
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  invoke void @_ZN7xgboost6common16PartitionBuilderILm2048EE4InitIZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb0ENS4_14CPUExpandEntryENS4_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISJ_EERKT3_EUlmE0_EEvmmT_(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef %i.aa, i64 noundef %i.g, ptr nonnull %4, ptr nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !76, !noalias !1920
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !76, !noalias !1920
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.m

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !69
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.af, ptr noundef nonnull @.str.95, i32 noundef 168)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc34
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.96, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.af

bb.l:                                             ; preds = %bb.w, %_ZN7xgboost6common16PartitionBuilderILm2048EE19CalculateRowOffsetsEv.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %.noexc34, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.ab

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.pr49 = load ptr, ptr %9, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %.pr49, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %.pr49, align 8, !tbaa !60 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pr49, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !66
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr49, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.h, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.az = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %bb.s unwind label %bb.l

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %4, ptr %11, align 8, !tbaa !363
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.ba, align 8, !tbaa !763
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %i.bb, align 8, !tbaa !362
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %6, ptr %i.bc, align 8, !tbaa !583
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %2, ptr %i.bd, align 8, !tbaa !361
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %5, ptr %i.be, align 8, !tbaa !364
  invoke void @_ZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb0ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !488
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !179 ; 3 uses
end_hunk_10
begin_hunk_11_@_ZZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb0ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE0_EEvRKNS0_14BlockedSpace2dEiOT_ENKUlvE_clEv:bb.a
  %i.r = tail call { i64, i64 } @_ZNK7xgboost6common14BlockedSpace2d8GetRangeEm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 noundef %.011)
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !765  ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !1962, !nonnull !136, !align !497
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !391
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %i.p
  %i.y = load i32, ptr %i.x, align 8, !tbaa !371
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.aa = sext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !492 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %sext.i = shl i64 %i.p, 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179
  %i.ag = ashr exact i64 %sext.i, 29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !76
  %i.aj = lshr i64 %i.s, 11
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !193
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !626 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !628
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !630
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16416 ; 2 uses
  %i.ax = load i64, ptr %i.ao, align 8, !tbaa !629 ; 2 uses
  switch i64 %i.ax, label %bb.c [
    i64 0, label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
    i64 1, label %bb.d
  ], !prof !681

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr nonnull align 8 %i.av, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !193
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %i.ak
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !626
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !76
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !76
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i:          ; preds = %bb.d, %bb.c, %bb.b
  %i.az = phi ptr [ %i.ao, %bb.b ], [ %.pre19.i.i, %bb.c ], [ %i.ao, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !631 ; 2 uses
  switch i64 %i.bb, label %bb.e [
    i64 0, label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
    i64 1, label %bb.f
  ], !prof !681

bb.e:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %.idx.i.i14.i.i = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr nonnull align 8 %i.aw, i64 %.idx.i.i14.i.i, i1 false)
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

bb.f:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !76
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !76
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit: ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i, %bb.e, %bb.f
  %i.bd = add nuw i64 %.011, 1                    ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.sroa.speculated
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !1956
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS_4tree20CommonRowPartitioner14UpdatePositionILb0ELb0ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT1_SaISH_EERKT2_EUlT_E_EEDaNS0_11BinTypeSizeEOSP_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !370
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1963, !nonnull !136, !align !497
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1964, !nonnull !136, !align !497
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1965, !nonnull !136, !align !497
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1966, !nonnull !136, !align !497
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1967, !nonnull !136, !align !497
  tail call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(225) %i.f, ptr noundef nonnull align 8 dereferenceable(218) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(68) %i.l)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !370
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1963, !nonnull !136, !align !497
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1964, !nonnull !136, !align !497
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1965, !nonnull !136, !align !497
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1966, !nonnull !136, !align !497
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1967, !nonnull !136, !align !497
  tail call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(225) %i.r, ptr noundef nonnull align 8 dereferenceable(218) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(68) %i.x)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %1, align 8, !tbaa !370
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1963, !nonnull !136, !align !497
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1964, !nonnull !136, !align !497
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1965, !nonnull !136, !align !497
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1966, !nonnull !136, !align !497
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1967, !nonnull !136, !align !497
  tail call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.y, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(225) %i.ad, ptr noundef nonnull align 8 dereferenceable(218) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(68) %i.aj)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ak = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ak, ptr noundef nonnull @.str.78, i32 noundef 223)
  %i.al = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.e
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.94, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.an = load ptr, ptr %1, align 8, !tbaa !370
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1963, !nonnull !136, !align !497
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !79
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1964, !nonnull !136, !align !497
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1965, !nonnull !136, !align !497
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1966, !nonnull !136, !align !497
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1967, !nonnull !136, !align !497
  call void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %i.an, ptr noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(225) %i.as, ptr noundef nonnull align 8 dereferenceable(218) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(68) %i.ay)
  br label %bb.h

bb.f:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.az

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c, %bb.b
  ret void

bb.i:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(218) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.119", align 8   ; 13 uses
  %7 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 13 uses
  %8 = alloca %class.anon.584, align 8            ; 6 uses
  %9 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %class.anon.586, align 8           ; 10 uses
  %12 = alloca %class.anon.587, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !391    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !344
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not69 = icmp eq ptr %i.b, %i.c
  br i1 %.not69, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %13 = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %13, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.m, align 4, !tbaa !122
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc48
  store ptr %i.m, ptr %6, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !406
  store ptr %i.q, ptr %i.k, align 8, !tbaa !214
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  invoke void @_ZN7xgboost4tree20CommonRowPartitioner19FindSplitConditionsINS0_14CPUExpandEntryENS_16GHistIndexMatrixENS0_14ScalarTreeViewEEEvRKSt6vectorIT_SaIS7_EERKT1_RKT0_PS6_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %4, ptr %8, align 8, !tbaa !363
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !767
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb0ENS3_14CPUExpandEntryENS3_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISI_EERKT3_EUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 2048)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !593
  %i.w = load ptr, ptr %7, align 8, !tbaa !474
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  invoke void @_ZN7xgboost6common16PartitionBuilderILm2048EE4InitIZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb0ENS4_14CPUExpandEntryENS4_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISJ_EERKT3_EUlmE0_EEvmmT_(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef %i.aa, i64 noundef %i.g, ptr nonnull %4, ptr nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !76, !noalias !1970
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !76, !noalias !1970
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.m

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !69
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.af, ptr noundef nonnull @.str.95, i32 noundef 168)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc34
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.96, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.af

bb.l:                                             ; preds = %bb.w, %_ZN7xgboost6common16PartitionBuilderILm2048EE19CalculateRowOffsetsEv.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %.noexc34, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.ab

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.pr49 = load ptr, ptr %9, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %.pr49, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %.pr49, align 8, !tbaa !60 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pr49, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !66
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr49, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.h, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.az = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %bb.s unwind label %bb.l

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %4, ptr %11, align 8, !tbaa !363
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.ba, align 8, !tbaa !769
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %i.bb, align 8, !tbaa !362
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %6, ptr %i.bc, align 8, !tbaa !583
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %2, ptr %i.bd, align 8, !tbaa !361
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %5, ptr %i.be, align 8, !tbaa !364
  invoke void @_ZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb0ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !488
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !179 ; 3 uses
end_hunk_11
begin_hunk_12_@_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor2dIZNS2_4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb0ENS5_14CPUExpandEntryENS5_14ScalarTreeViewEEEvPKNS2_7ContextERKNS2_16GHistIndexMatrixERKNS3_12ColumnMatrixERKSt6vectorIT2_SaISK_EERKT3_EUlmNS3_7Range1dEE0_EEvRKNS3_14BlockedSpace2dEiOT_EUlvE_JEEEvSX_DpT0_:bb.a
bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #35
          to label %.noexc9 unwind label %bb.l

.noexc9:                                          ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10:        ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !507
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.r = load ptr, ptr %4, align 8, !tbaa !507
  store ptr null, ptr %4, align 8, !tbaa !507
  %i.s = load ptr, ptr %0, align 8, !tbaa !507    ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !507
  store ptr %i.r, ptr %0, align 8, !tbaa !507
  %.not.i.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i.i11, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %.pr17 = load ptr, ptr %4, align 8, !tbaa !507
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i13 = icmp eq ptr %.pr17, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

.sink.split:                                      ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14
  %.sink = phi ptr [ %i.o, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10 ], [ %i.o, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14 ], [ %i.g, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %i.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sink) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.a, %bb.g ], [ %i.u, %bb.m ]
  resume { ptr, i32 } %.merged

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #38
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb0ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE0_EEvRKNS0_14BlockedSpace2dEiOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2008, !nonnull !136, !align !497
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2009, !nonnull !136, !align !603
  %i.e = load i32, ptr %i.d, align 4, !tbaa !122
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = udiv i64 %i.b, %i.f
  %i.h = urem i64 %i.b, %i.f
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.g, %i.j
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.k) ; 2 uses
  %.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit ] ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !2010, !nonnull !136, !align !497 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !2011, !nonnull !136, !align !497
  %i.p = tail call noundef i64 @_ZNK7xgboost6common14BlockedSpace2d17GetFirstDimensionEm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 noundef %.011) ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !2011, !nonnull !136, !align !497
  %i.r = tail call { i64, i64 } @_ZNK7xgboost6common14BlockedSpace2d8GetRangeEm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 noundef %.011)
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !771  ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !2012, !nonnull !136, !align !497
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !391
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %i.p
  %i.y = load i32, ptr %i.x, align 8, !tbaa !371
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.aa = sext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !492 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %sext.i = shl i64 %i.p, 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179
  %i.ag = ashr exact i64 %sext.i, 29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !76
  %i.aj = lshr i64 %i.s, 11
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !193
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !626 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !628
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !630
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16416 ; 2 uses
  %i.ax = load i64, ptr %i.ao, align 8, !tbaa !629 ; 2 uses
  switch i64 %i.ax, label %bb.c [
    i64 0, label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
    i64 1, label %bb.d
  ], !prof !681

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr nonnull align 8 %i.av, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !193
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %i.ak
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !626
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !76
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !76
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i:          ; preds = %bb.d, %bb.c, %bb.b
  %i.az = phi ptr [ %i.ao, %bb.b ], [ %.pre19.i.i, %bb.c ], [ %i.ao, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !631 ; 2 uses
  switch i64 %i.bb, label %bb.e [
    i64 0, label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
    i64 1, label %bb.f
  ], !prof !681

bb.e:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %.idx.i.i14.i.i = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr nonnull align 8 %i.aw, i64 %.idx.i.i14.i.i, i1 false)
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

bb.f:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !76
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !76
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit: ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i, %bb.e, %bb.f
  %i.bd = add nuw i64 %.011, 1                    ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.sroa.speculated
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !2006
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(218) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.119", align 8   ; 13 uses
  %7 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 13 uses
  %8 = alloca %class.anon.592, align 8            ; 6 uses
  %9 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %class.anon.594, align 8           ; 10 uses
  %12 = alloca %class.anon.595, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !391    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !344
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not69 = icmp eq ptr %i.b, %i.c
  br i1 %.not69, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %13 = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %13, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.m, align 4, !tbaa !122
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc48
  store ptr %i.m, ptr %6, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !406
  store ptr %i.q, ptr %i.k, align 8, !tbaa !214
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  invoke void @_ZN7xgboost4tree20CommonRowPartitioner19FindSplitConditionsINS0_14CPUExpandEntryENS_16GHistIndexMatrixENS0_14ScalarTreeViewEEEvRKSt6vectorIT_SaIS7_EERKT1_RKT0_PS6_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %4, ptr %8, align 8, !tbaa !363
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !773
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree20CommonRowPartitioner14UpdatePositionItLb0ELb0ENS3_14CPUExpandEntryENS3_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISI_EERKT3_EUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 2048)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !593
  %i.w = load ptr, ptr %7, align 8, !tbaa !474
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  invoke void @_ZN7xgboost6common16PartitionBuilderILm2048EE4InitIZNS_4tree20CommonRowPartitioner14UpdatePositionItLb0ELb0ENS4_14CPUExpandEntryENS4_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISJ_EERKT3_EUlmE0_EEvmmT_(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef %i.aa, i64 noundef %i.g, ptr nonnull %4, ptr nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !76, !noalias !2015
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !76, !noalias !2015
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.m

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !69
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.af, ptr noundef nonnull @.str.95, i32 noundef 168)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc34
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.96, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.af

bb.l:                                             ; preds = %bb.w, %_ZN7xgboost6common16PartitionBuilderILm2048EE19CalculateRowOffsetsEv.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %.noexc34, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.ab

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.pr49 = load ptr, ptr %9, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %.pr49, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %.pr49, align 8, !tbaa !60 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pr49, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !66
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr49, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.h, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.az = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %bb.s unwind label %bb.l

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %4, ptr %11, align 8, !tbaa !363
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.ba, align 8, !tbaa !775
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %i.bb, align 8, !tbaa !362
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %6, ptr %i.bc, align 8, !tbaa !583
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %2, ptr %i.bd, align 8, !tbaa !361
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %5, ptr %i.be, align 8, !tbaa !364
  invoke void @_ZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionItLb0ELb0ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !488
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !179 ; 3 uses
end_hunk_12
begin_hunk_13_@_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor2dIZNS2_4tree20CommonRowPartitioner14UpdatePositionItLb0ELb0ENS5_14CPUExpandEntryENS5_14ScalarTreeViewEEEvPKNS2_7ContextERKNS2_16GHistIndexMatrixERKNS3_12ColumnMatrixERKSt6vectorIT2_SaISK_EERKT3_EUlmNS3_7Range1dEE0_EEvRKNS3_14BlockedSpace2dEiOT_EUlvE_JEEEvSX_DpT0_:bb.a
bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #35
          to label %.noexc9 unwind label %bb.l

.noexc9:                                          ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10:        ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !507
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.r = load ptr, ptr %4, align 8, !tbaa !507
  store ptr null, ptr %4, align 8, !tbaa !507
  %i.s = load ptr, ptr %0, align 8, !tbaa !507    ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !507
  store ptr %i.r, ptr %0, align 8, !tbaa !507
  %.not.i.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i.i11, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %.pr17 = load ptr, ptr %4, align 8, !tbaa !507
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i13 = icmp eq ptr %.pr17, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

.sink.split:                                      ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14
  %.sink = phi ptr [ %i.o, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10 ], [ %i.o, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14 ], [ %i.g, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %i.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sink) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.a, %bb.g ], [ %i.u, %bb.m ]
  resume { ptr, i32 } %.merged

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #38
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionItLb0ELb0ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE0_EEvRKNS0_14BlockedSpace2dEiOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2053, !nonnull !136, !align !497
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2054, !nonnull !136, !align !603
  %i.e = load i32, ptr %i.d, align 4, !tbaa !122
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = udiv i64 %i.b, %i.f
  %i.h = urem i64 %i.b, %i.f
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.g, %i.j
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.k) ; 2 uses
  %.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit ] ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !2055, !nonnull !136, !align !497 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !2056, !nonnull !136, !align !497
  %i.p = tail call noundef i64 @_ZNK7xgboost6common14BlockedSpace2d17GetFirstDimensionEm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 noundef %.011) ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !2056, !nonnull !136, !align !497
  %i.r = tail call { i64, i64 } @_ZNK7xgboost6common14BlockedSpace2d8GetRangeEm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 noundef %.011)
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !777  ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !2057, !nonnull !136, !align !497
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !391
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %i.p
  %i.y = load i32, ptr %i.x, align 8, !tbaa !371
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.aa = sext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !492 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %sext.i = shl i64 %i.p, 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179
  %i.ag = ashr exact i64 %sext.i, 29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !76
  %i.aj = lshr i64 %i.s, 11
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !193
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !626 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !628
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !630
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16416 ; 2 uses
  %i.ax = load i64, ptr %i.ao, align 8, !tbaa !629 ; 2 uses
  switch i64 %i.ax, label %bb.c [
    i64 0, label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
    i64 1, label %bb.d
  ], !prof !681

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr nonnull align 8 %i.av, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !193
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %i.ak
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !626
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !76
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !76
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i:          ; preds = %bb.d, %bb.c, %bb.b
  %i.az = phi ptr [ %i.ao, %bb.b ], [ %.pre19.i.i, %bb.c ], [ %i.ao, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !631 ; 2 uses
  switch i64 %i.bb, label %bb.e [
    i64 0, label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
    i64 1, label %bb.f
  ], !prof !681

bb.e:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %.idx.i.i14.i.i = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr nonnull align 8 %i.aw, i64 %.idx.i.i14.i.i, i1 false)
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

bb.f:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !76
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !76
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionItLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit: ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i, %bb.e, %bb.f
  %i.bd = add nuw i64 %.011, 1                    ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.sroa.speculated
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !2051
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb0ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(218) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.119", align 8   ; 13 uses
  %7 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 13 uses
  %8 = alloca %class.anon.600, align 8            ; 6 uses
  %9 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %class.anon.602, align 8           ; 10 uses
  %12 = alloca %class.anon.603, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !391    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !344
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not69 = icmp eq ptr %i.b, %i.c
  br i1 %.not69, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %13 = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %13, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.m, align 4, !tbaa !122
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc48
  store ptr %i.m, ptr %6, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !406
  store ptr %i.q, ptr %i.k, align 8, !tbaa !214
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  invoke void @_ZN7xgboost4tree20CommonRowPartitioner19FindSplitConditionsINS0_14CPUExpandEntryENS_16GHistIndexMatrixENS0_14ScalarTreeViewEEEvRKSt6vectorIT_SaIS7_EERKT1_RKT0_PS6_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %4, ptr %8, align 8, !tbaa !363
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !779
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb0ENS3_14CPUExpandEntryENS3_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISI_EERKT3_EUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 2048)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !593
  %i.w = load ptr, ptr %7, align 8, !tbaa !474
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  invoke void @_ZN7xgboost6common16PartitionBuilderILm2048EE4InitIZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb0ENS4_14CPUExpandEntryENS4_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISJ_EERKT3_EUlmE0_EEvmmT_(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef %i.aa, i64 noundef %i.g, ptr nonnull %4, ptr nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !76, !noalias !2060
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !76, !noalias !2060
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.m

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !69
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.af, ptr noundef nonnull @.str.95, i32 noundef 168)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc34
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.96, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.af

bb.l:                                             ; preds = %bb.w, %_ZN7xgboost6common16PartitionBuilderILm2048EE19CalculateRowOffsetsEv.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %.noexc34, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.ab

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.pr49 = load ptr, ptr %9, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %.pr49, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %.pr49, align 8, !tbaa !60 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pr49, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !66
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr49, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.h, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.az = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %bb.s unwind label %bb.l

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %4, ptr %11, align 8, !tbaa !363
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.ba, align 8, !tbaa !781
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %i.bb, align 8, !tbaa !362
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %6, ptr %i.bc, align 8, !tbaa !583
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %2, ptr %i.bd, align 8, !tbaa !361
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %5, ptr %i.be, align 8, !tbaa !364
  invoke void @_ZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb0ELb0ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !488
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !179 ; 3 uses
end_hunk_13
begin_hunk_14_@_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor2dIZNS2_4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS5_14CPUExpandEntryENS5_14ScalarTreeViewEEEvPKNS2_7ContextERKNS2_16GHistIndexMatrixERKNS3_12ColumnMatrixERKSt6vectorIT2_SaISK_EERKT3_EUlmNS3_7Range1dEE0_EEvRKNS3_14BlockedSpace2dEiOT_EUlvE_JEEEvSX_DpT0_:bb.a
bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.r = load ptr, ptr %4, align 8, !tbaa !507
  store ptr null, ptr %4, align 8, !tbaa !507
  %i.s = load ptr, ptr %0, align 8, !tbaa !507    ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !507
  store ptr %i.r, ptr %0, align 8, !tbaa !507
  %.not.i.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i.i11, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %.pr17 = load ptr, ptr %4, align 8, !tbaa !507
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i13 = icmp eq ptr %.pr17, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit12, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

.sink.split:                                      ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14
  %.sink = phi ptr [ %i.o, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit10 ], [ %i.o, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14 ], [ %i.g, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %i.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sink) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.a, %bb.g ], [ %i.u, %bb.m ]
  resume { ptr, i32 } %.merged

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #38
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost6common13ParallelFor2dIZNS_4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS2_14CPUExpandEntryENS2_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISH_EERKT3_EUlmNS0_7Range1dEE0_EEvRKNS0_14BlockedSpace2dEiOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2140, !nonnull !136, !align !497
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2141, !nonnull !136, !align !603
  %i.e = load i32, ptr %i.d, align 4, !tbaa !122
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = udiv i64 %i.b, %i.f
  %i.h = urem i64 %i.b, %i.f
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.g, %i.j
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.k) ; 2 uses
  %.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit ] ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !2142, !nonnull !136, !align !497 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !2143, !nonnull !136, !align !497
  %i.p = tail call noundef i64 @_ZNK7xgboost6common14BlockedSpace2d17GetFirstDimensionEm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 noundef %.011) ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !2143, !nonnull !136, !align !497
  %i.r = tail call { i64, i64 } @_ZNK7xgboost6common14BlockedSpace2d8GetRangeEm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 noundef %.011)
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !633  ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !2144, !nonnull !136, !align !497
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !391
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %i.p
  %i.y = load i32, ptr %i.x, align 8, !tbaa !371
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.aa = sext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !492 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %sext.i = shl i64 %i.p, 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179
  %i.ag = ashr exact i64 %sext.i, 29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !76
  %i.aj = lshr i64 %i.s, 11
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !193
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !626 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !628
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !630
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16416 ; 2 uses
  %i.ax = load i64, ptr %i.ao, align 8, !tbaa !629 ; 2 uses
  switch i64 %i.ax, label %bb.c [
    i64 0, label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
    i64 1, label %bb.d
  ], !prof !681

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr nonnull align 8 %i.av, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !193
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %i.ak
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !626
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !76
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !76
  br label %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i

_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i:          ; preds = %bb.d, %bb.c, %bb.b
  %i.az = phi ptr [ %i.ao, %bb.b ], [ %.pre19.i.i, %bb.c ], [ %i.ao, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !631 ; 2 uses
  switch i64 %i.bb, label %bb.e [
    i64 0, label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit
    i64 1, label %bb.f
  ], !prof !681

bb.e:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %.idx.i.i14.i.i = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr nonnull align 8 %i.aw, i64 %.idx.i.i14.i.i, i1 false)
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

bb.f:                                             ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !76
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !76
  br label %_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit

_ZZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIhLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_ENKUlmNSB_7Range1dEE0_clEmSO_.exit: ; preds = %_ZSt6copy_nIPKmmPmET1_T_T0_S3_.exit.i.i, %bb.e, %bb.f
  %i.bd = add nuw i64 %.011, 1                    ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.sroa.speculated
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !2138
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree21MultiHistogramBuilder18BuildHistLeftRightINS0_20CommonRowPartitionerENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextEPNS_7DMatrixERKT1_RKSt6vectorIT_SaISF_EERKSE_IT0_SaISK_EENS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEERKNS_10BatchParamEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(68) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef byval(%"class.xgboost::linalg::TensorView") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, i1 noundef zeroext %8) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::vector.119", align 8   ; 19 uses
  %10 = alloca %"class.std::vector.119", align 8  ; 16 uses
  %11 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %12 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %13 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %15 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %16 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %17 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %18 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 10 uses
  %19 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %20 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %21 = alloca %"class.xgboost::linalg::TensorView.446", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !312  ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !391    ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 88                  ; 4 uses
  %22 = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %22, label %.noexc82, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc82:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #35
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %.noexc83

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc83:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #36 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !213
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !214
  store i32 0, ptr %i.n, align 4, !tbaa !122
  %i.q = getelementptr i8, ptr %i.n, i64 4        ; 3 uses
  %i.r = add nsw i64 %i.l, -1                     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc83
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.r, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !122
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc83, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.q, %.noexc83 ], [ %i.t, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store ptr %.0.i.i.i.i.i, ptr %i.u, align 8, !tbaa !406
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !312  ; 2 uses
  %i.w = load ptr, ptr %5, align 8, !tbaa !391    ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 88                 ; 4 uses
  %23 = icmp ugt i64 %i.aa, 2305843009213693951
  br i1 %23, label %bb.c, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i84

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #35
          to label %.noexc90 unwind label %bb.i

.noexc90:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i84: ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not.i.i.i.i85 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i.i85, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i89, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i84
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #36
          to label %.noexc91 unwind label %bb.i   ; 6 uses

.noexc91:                                         ; preds = %bb.d
  store ptr %i.ac, ptr %10, align 8, !tbaa !213
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !214
  store i32 0, ptr %i.ac, align 4, !tbaa !122
  %i.af = getelementptr i8, ptr %i.ac, i64 4      ; 3 uses
  %i.ag = add nsw i64 %i.aa, -1                   ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i89, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i86

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i86: ; preds = %.noexc91
  %.idx.i.i.i.i.i.i.i87 = shl nuw nsw i64 %i.ag, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %.idx.i.i.i.i.i.i.i87, i1 false), !tbaa !122
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i.i.i.i.i.i87
  br label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i89

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i89: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i84, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i86, %.noexc91
  %i.aj = phi ptr [ %i.ac, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i86 ], [ %i.ac, %.noexc91 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i84 ] ; 2 uses
  %.0.i.i.i.i.i88 = phi ptr [ %i.ai, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i86 ], [ %i.af, %.noexc91 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i84 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store ptr %.0.i.i.i.i.i88, ptr %i.ak, align 8, !tbaa !406
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !406
  %i.am = load ptr, ptr %9, align 8, !tbaa !213   ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %i.ar = ptrtoint ptr %.0.i.i.i.i.i88 to i64
  %i.as = ptrtoint ptr %i.aj to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  invoke void @_ZN7xgboost4tree11AssignNodesERKNS0_14ScalarTreeViewERKSt6vectorINS0_14CPUExpandEntryESaIS5_EENS_6common4SpanIiLm18446744073709551615EEESC_(ptr noundef nonnull align 8 dereferenceable(68) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %i.aq, ptr %i.am, i64 %i.au, ptr %i.aj)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i89
  %i.av = load ptr, ptr %0, align 8, !tbaa !486
  invoke void @_ZN7xgboost4tree16HistogramBuilder11AddHistRowsINS0_14ScalarTreeViewEEEvRKT_PSt6vectorIiSaIiEESA_b(ptr noundef nonnull align 8 dereferenceable(453) %i.av, ptr noundef nonnull align 8 dereferenceable(68) %3, ptr noundef nonnull %9, ptr noundef nonnull %10, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !406
  %i.ax = load ptr, ptr %9, align 8, !tbaa !213
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 2                 ; 2 uses
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !406
  %i.bd = load ptr, ptr %10, align 8, !tbaa !213
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2                 ; 2 uses
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !76
  %.not.i = icmp ult i64 %i.bb, %i.bh
  br i1 %.not.i, label %bb.g, label %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.k

_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.g
  %.pr = load ptr, ptr %11, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.bi = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc93 unwind label %bb.l

.noexc93:                                         ; preds = %bb.h
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bi, ptr noundef nonnull @.str.59, i32 noundef 397)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.l

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc93
  %i.bj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.m ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.107, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bm = load ptr, ptr %11, align 8, !tbaa !69   ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !60
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !59
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bn, i64 noundef %i.bp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.o unwind label %bb.l

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit158

bb.j:                                             ; preds = %bb.e, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i89
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.k:                                             ; preds = %bb.g
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.s

bb.l:                                             ; preds = %.noexc93, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.n unwind label %bb.cm

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %i.bw, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #21
  br label %bb.s

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %.pr169 = load ptr, ptr %11, align 8, !tbaa !69 ; 4 uses
  %.not.i102 = icmp eq ptr %.pr169, null
  br i1 %.not.i102, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %.pr169, align 8, !tbaa !60 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pr169, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !66
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr169, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.o, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.cc = load ptr, ptr %i.ak, align 8, !tbaa !406
  %i.cd = load ptr, ptr %10, align 8, !tbaa !213
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  %i.ci = load ptr, ptr %i.u, align 8, !tbaa !406
  %i.cj = load ptr, ptr %9, align 8, !tbaa !213
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2
  %i.co = add nsw i64 %i.cn, %i.ch                ; 2 uses
  store i64 %i.co, ptr %i.c, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !312
  %i.cq = load ptr, ptr %5, align 8, !tbaa !391
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = sdiv exact i64 %i.ct, 88
  %i.cv = shl nsw i64 %i.cu, 1                    ; 2 uses
  store i64 %i.cv, ptr %i.d, align 8, !tbaa !76
  %i.cw = icmp eq i64 %i.co, %i.cv
  br i1 %i.cw, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit81.thread, label %bb.q

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit81.thread: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit120

bb.q:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit81 unwind label %bb.t

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit81: ; preds = %bb.q
  %.pr171 = load ptr, ptr %13, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %.not181 = icmp eq ptr %.pr171, null
  br i1 %.not181, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit120, label %bb.r

bb.r:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.cx = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc103 unwind label %bb.u

.noexc103:                                        ; preds = %bb.r
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.cx, ptr noundef nonnull @.str.59, i32 noundef 398)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit105 unwind label %bb.u

_ZN4dmlc15LogMessageFatalC2EPKci.exit105:         ; preds = %.noexc103
  %i.cy = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit107 unwind label %bb.v ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit107: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit105
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit107
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull @.str.108, i64 noundef 74)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.db = load ptr, ptr %13, align 8, !tbaa !69   ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !60
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !59
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef %i.dc, i64 noundef %i.de)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113 unwind label %bb.v

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.x unwind label %bb.u

bb.s:                                             ; preds = %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.bu, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.cj

bb.t:                                             ; preds = %bb.q
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.z

bb.u:                                             ; preds = %.noexc103, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit107, %_ZN4dmlc15LogMessageFatalC2EPKci.exit105
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.w unwind label %bb.cm

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn60 = phi { ptr, i32 } [ %i.di, %bb.u ], [ %i.dj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #21
  br label %bb.z

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %.pr172 = load ptr, ptr %13, align 8, !tbaa !69 ; 4 uses
  %.not.i116 = icmp eq ptr %.pr172, null
  br i1 %.not.i116, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit120, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = load ptr, ptr %.pr172, align 8, !tbaa !60 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.pr172, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i117: ; preds = %bb.y
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !66
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i118

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i118: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i117
  call void @_ZdlPvm(ptr noundef nonnull %.pr172, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit120

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit120: ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit81, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit81.thread, %bb.x, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !185
  %i.dr = load ptr, ptr %0, align 8, !tbaa !184   ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %24 = sdiv exact i64 %i.du, 456
  %i.dv = icmp ugt i64 %24, 1
  br i1 %i.dv, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit120
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !485
  %i.dy = load ptr, ptr %2, align 8, !tbaa !87, !noalias !2158
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 104
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !2158
  invoke void %i.ea(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::BatchSet") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit unwind label %bb.ba, !inline_history !10

bb.z:                                             ; preds = %bb.w, %bb.t
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %bb.w ], [ %i.dh, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.cj

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit120, %bb.aa
  %i.eb = phi ptr [ %i.eh, %bb.aa ], [ %i.dr, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit120 ]
  %i.ec = phi i64 [ %i.ef, %bb.aa ], [ 1, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit120 ]
  %.037183 = phi i32 [ %i.ee, %bb.aa ], [ 1, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit120 ]
  %i.ed = getelementptr inbounds nuw [456 x i8], ptr %i.eb, i64 %i.ec
  invoke void @_ZN7xgboost4tree16HistogramBuilder11AddHistRowsINS0_14ScalarTreeViewEEEvRKT_PSt6vectorIiSaIiEESA_b(ptr noundef nonnull align 8 dereferenceable(453) %i.ed, ptr noundef nonnull align 8 dereferenceable(68) %3, ptr noundef nonnull %9, ptr noundef nonnull %10, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.lr.ph
  %i.ee = add i32 %.037183, 1                     ; 2 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = load ptr, ptr %i.dp, align 8, !tbaa !185
  %i.eh = load ptr, ptr %0, align 8, !tbaa !184   ; 2 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = sdiv exact i64 %i.ek, 456
  %i.em = icmp ugt i64 %i.el, %i.ef
  br i1 %i.em, label %.lr.ph, label %._crit_edge, !llvm.loop !2147

bb.ab:                                            ; preds = %.lr.ph
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !2159)
  %i.eo = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !95, !noalias !2159 ; 2 uses
  %i.er = load <2 x ptr>, ptr %15, align 16, !tbaa !82, !noalias !2159
  store <2 x ptr> %i.er, ptr %16, align 16, !tbaa !82, !alias.scope !2159
  %.not.i.i.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 3 uses
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66, !noalias !2159
  %.not.i.i.i.i.i.i = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !122, !noalias !2159
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !122, !noalias !2159
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ew = atomicrmw volatile add ptr %i.es, i32 1 acq_rel, align 4, !noalias !2159 ; 0 uses
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit

_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit: ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit, %bb.ad, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false), !alias.scope !2160
  invoke void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef null)
          to label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit.preheader unwind label %bb.af

_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit.preheader: ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8            ; 2 uses
  %.not191 = icmp eq i64 %i.fc, 0
  %i.fd = load i64, ptr %i.fa, align 8            ; 2 uses
  %i.fe = load <3 x i64>, ptr %6, align 8
  %i.ff = shufflevector <3 x i64> %i.fe, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.fj = load i64, ptr %i.fi, align 8            ; 4 uses
  %i.fk = icmp eq i64 %i.fj, 0
  %.in.i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.fl = load ptr, ptr %.in.i.i, align 8         ; 2 uses
  %i.fm = icmp ne ptr %i.fl, null
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 64
  %.sroa.0.0.copyload.i = load i32, ptr %i.fn, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 40
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 48
  %i.fo = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.fq = getelementptr inbounds nuw i8, ptr %18, i64 16
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit

bb.af:                                            ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #21
  br label %.body

_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit: ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit.preheader, %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit
  %.036 = phi i64 [ %i.it, %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit ], [ 0, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit.preheader ] ; 3 uses
  %i.fs = invoke noundef zeroext i1 @_ZNK7xgboost13BatchIteratorINS_16GHistIndexMatrixEE5AtEndEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.ag unwind label %bb.bb

bb.ag:                                            ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit
  br i1 %i.fs, label %bb.ah, label %bb.bc

bb.ah:                                            ; preds = %bb.ag
  %i.ft = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.fw = load atomic i64, ptr %i.fv acquire, align 8 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 4294967297
  %i.fy = trunc i64 %i.fw to i32                  ; 2 uses
  br i1 %i.fx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.fv, align 8, !tbaa !91
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.fz, align 4, !tbaa !92
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !87
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21, !inline_history !11
  %i.gd = load ptr, ptr %i.fu, align 8, !tbaa !87
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21, !inline_history !11
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.gg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i123 = icmp eq i8 %i.gg, 0
  br i1 %.not.i.i.i.i123, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gh = add nsw i32 %i.fy, -1
  store i32 %i.gh, ptr %i.fv, align 8, !tbaa !122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.gi = atomicrmw volatile add ptr %i.fv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i124 = phi i32 [ %i.fy, %bb.al ], [ %i.gi, %bb.am ]
  %i.gj = icmp eq i32 %.0.i.i.i.i.i124, 1
  br i1 %i.gj, label %bb.an, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit, !prof !123

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit

_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit: ; preds = %bb.ah, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.gk = load ptr, ptr %i.eo, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i125 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i125, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit129, label %bb.ao

bb.ao:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 4 uses
  %i.gm = load atomic i64, ptr %i.gl acquire, align 8 ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 4294967297
  %i.go = trunc i64 %i.gm to i32                  ; 2 uses
  br i1 %i.gn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.gl, align 8, !tbaa !91
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  store i32 0, ptr %i.gp, align 4, !tbaa !92
  %i.gq = load ptr, ptr %i.gk, align 8, !tbaa !87
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(16) %i.gk) #21, !inline_history !11
  %i.gt = load ptr, ptr %i.gk, align 8, !tbaa !87
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(16) %i.gk) #21, !inline_history !11
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit129

bb.aq:                                            ; preds = %bb.ao
  %i.gw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i126 = icmp eq i8 %i.gw, 0
end_hunk_14
