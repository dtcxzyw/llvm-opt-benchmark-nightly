Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/regression_obj?download=true
inline.NumInlined: 7707
inline.NumDeleted: 2228
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK7xgboost3obj19ExpectileRegression13PredTransformEPNS_16HostDeviceVectorIfEE:bb.a

bb.p:                                             ; preds = %bb.n, %bb.o
  %.pn16 = phi { i64, ptr } [ %.fca.1.insert.i, %bb.n ], [ %i.bf, %bb.o ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn16, 0 ; 3 uses
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn16, 1 ; 5 uses
  %i.bg = icmp eq i64 %.sroa.01.0, 0              ; 3 uses
  %i.bh = icmp ne ptr %.sroa.3.0, null
  %i.bi = or i1 %i.bg, %i.bh
  br i1 %i.bi, label %_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJNS0_6detail6AllTagEiEEEDaDpOT_.exit, label %bb.q, !prof !164

bb.q:                                             ; preds = %bb.p
  call void @_ZSt9terminatev() #39, !noalias !1212
  unreachable

_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJNS0_6detail6AllTagEiEEEDaDpOT_.exit: ; preds = %bb.p
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !1213 ; 5 uses
  %i.bk = udiv i64 %i.as, %i.at                   ; 4 uses
  %i.bl = mul i64 %i.bk, %i.bj
  %.sink.i.i.i.i = select i1 %i.bg, i64 0, i64 %i.bl
  %.sink.i.i.i = select i1 %i.bg, i64 0, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !116
  store i64 %i.bj, ptr %6, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bk, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !35
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.sroa.01.0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !37
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %.sroa.3.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !144
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.sroa.3.0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !144
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %.sink.i.i.i, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !37
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %i.au, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 %i.bj, ptr %7, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %.sroa.547.0..sroa_idx, align 8, !tbaa !35
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.bk, ptr %.sroa.748.0..sroa_idx, align 8
  %.sroa.949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.bj, ptr %.sroa.949.0..sroa_idx, align 8, !tbaa !35
  %.sroa.1050.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.sroa.01.0, ptr %.sroa.1050.0..sroa_idx, align 8, !tbaa !37
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %.sroa.3.0, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !144
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %.sroa.3.0, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !144
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %.sink.i.i.i.i, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !37
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 %i.au, ptr %.sroa.16.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 %i.bj, ptr %i.bo, align 8, !tbaa !325
  call void @_ZN7xgboost6linalg17ElementWiseKernelIfLi1EZNKS_3obj19ExpectileRegression13PredTransformEPNS_16HostDeviceVectorIfEEEUlmE_TnDaLi2EEEvPKNS_7ContextENS_9DeviceOrdENS0_10TensorViewIT_XT0_EEEOT1_(ptr noundef %i.bn, i32 %i.au, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.210") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.r:                                             ; preds = %bb.k, %bb.e
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.k ], [ %.pn, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %.pn13.pn

bb.s:                                             ; preds = %bb.j, %bb.d
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost3obj19ExpectileRegression12ProbToMarginEPNS_6linalg6TensorIfLi1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.c = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(17) %1) ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  store i64 %i.e, ptr %i.b, align 8, !tbaa !37
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %2, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.g = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.g, ptr noundef nonnull @.str.109, i32 noundef 547)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.h = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.57, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.168, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !83     ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.59, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.c ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pr23 = load ptr, ptr %2, align 8, !tbaa !83   ; 4 uses
  %.not.i = icmp eq ptr %.pr23, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %.pr23, align 8, !tbaa !34 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pr23, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.v = load i64, ptr %i.t, align 8, !tbaa !35
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr23, i64 noundef 32) #36
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.x = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(17) %1), !noalias !1219 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !161, !noalias !1219 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !158, !noalias !1219
  %switch.i.i.i = icmp ult i8 %i.aa, 2
  br i1 %switch.i.i.i, label %_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @_ZSt9terminatev() #39, !noalias !1219
  unreachable

_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !37, !noalias !1219
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !160, !noalias !1219
  %i.af = icmp eq ptr %i.ae, %i.y
  %.sink.i.i.i.i = select i1 %i.af, i64 0, i64 %i.ac ; 2 uses
  %storemerge26 = add i64 %.sink.i.i.i.i, -1      ; 2 uses
  %.not27 = icmp eq i64 %storemerge26, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit, %.lr.ph
  %storemerge29 = phi i64 [ %storemerge, %.lr.ph ], [ %storemerge26, %_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit ] ; 3 uses
  %storemerge.in28 = phi i64 [ %storemerge29, %.lr.ph ], [ %.sink.i.i.i.i, %_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %storemerge29 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !81
  %i.ai = getelementptr [4 x i8], ptr %i.y, i64 %storemerge.in28
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !81
  %i.al = fsub float %i.ah, %i.ak
  %i.am = fadd float %i.al, f0xB58637BD           ; 2 uses
  %i.an = fcmp olt float %i.am, f0x358637BD
  %.sroa.speculated.i = select i1 %i.an, float f0x358637BD, float %i.am ; 2 uses
  %i.ao = fneg float %.sroa.speculated.i
  %i.ap = call noundef float @expm1f(float noundef %i.ao) #21
  %i.aq = fneg float %i.ap
  %i.ar = call noundef float @logf(float noundef %i.aq) #21
  %i.as = fadd float %i.ar, %.sroa.speculated.i
  store float %i.as, ptr %i.ag, align 4, !tbaa !81
  %storemerge = add i64 %storemerge29, -1         ; 2 uses
  %.not = icmp eq i64 %storemerge, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1218

bb.i:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost3obj19ExpectileRegression14InitEstimationERKNS_8MetaInfoEPNS_6linalg6TensorIfLi1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef %2) unnamed_addr #31 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::Tensor.212", align 8 ; 12 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %"class.xgboost::linalg::Tensor.163", align 8 ; 12 uses
  %8 = alloca %"class.xgboost::linalg::TensorView.379", align 8 ; 6 uses
  %9 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 5 uses
  %10 = alloca %class.anon.435, align 8           ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.e, !prof !99

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.f = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.f, ptr noundef nonnull @.str.109, i32 noundef 478)
  %i.g = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.169, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.59, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.ba

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.az

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !116
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.q, align 8
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(17) %2, i32 %.sroa.0.0.copyload.i)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = zext i32 %i.n to i64                     ; 8 uses
  store i64 %i.s, ptr %i.r, align 8, !tbaa !37
  call void @_ZN7xgboost16HostDeviceVectorIfE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN7xgboost16HostDeviceVectorIfEC1EmfNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(17) %4, i64 noundef 0, float noundef 0.000000e+00, i32 -65536)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i8 0, ptr %i.u, align 8, !tbaa !158
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.w = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i64 %i.w, 0
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !116  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7xgboost6common10SampleMeanEPKNS_7ContextERKNS_6linalg6TensorIfLi2EEEPNS5_IfLi1EEE(ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(25) %i.z, ptr noundef nonnull %4)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.i, %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.i:                                             ; preds = %bb.f
  invoke void @_ZN7xgboost6common18WeightedSampleMeanEPKNS_7ContextERKNS_6linalg6TensorIfLi2EEERKNS_16HostDeviceVectorIfEEPNS5_IfLi1EEE(ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(25) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %4)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ab = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(17) %4)
          to label %_ZNK7xgboost6linalg6TensorIfLi1EE4SizeEv.exit unwind label %bb.m ; 2 uses

_ZNK7xgboost6linalg6TensorIfLi1EE4SizeEv.exit:    ; preds = %bb.j
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 1, ptr %i.b, align 4, !tbaa !100
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %bb.k

_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %_ZNK7xgboost6linalg6TensorIfLi1EE4SizeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.k:                                             ; preds = %_ZNK7xgboost6linalg6TensorIfLi1EE4SizeEv.exit
  invoke void @_ZN4dmlc14LogCheckFormatImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.n

_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.k
  %.pr = load ptr, ptr %5, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ad = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc67 unwind label %bb.p

.noexc67:                                         ; preds = %bb.l
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ad, ptr noundef nonnull @.str.109, i32 noundef 489)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.p

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc67
  %i.ae = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit70 unwind label %bb.q ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit70: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.57, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit70
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.170, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.ah = load ptr, ptr %5, align 8, !tbaa !83    ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !38
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef %i.ai, i64 noundef %i.ak)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.59, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.s unwind label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %i.an, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ak

bb.p:                                             ; preds = %.noexc67, %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit70, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.r unwind label %bb.ba

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn40 = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %i.aq, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #21
  br label %bb.ak
end_hunk_0
