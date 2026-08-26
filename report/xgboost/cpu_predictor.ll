Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cpu_predictor?download=true
inline.NumInlined: 9576
inline.NumDeleted: 2555
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZNK7xgboost9predictor12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsE:bb.a

bb.l:                                             ; preds = %bb.d
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #35
  unreachable
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0) ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.18, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.25) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN4dmlc18LogStackTraceLevelEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.a) #18
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4dmlc18LogStackTraceLevelEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !47
  %i.h = add i64 %i.g, 1
  br label %_ZN4dmlc18LogStackTraceLevelEv.exit

_ZN4dmlc18LogStackTraceLevelEv.exit:              ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi i64 [ %i.h, %bb.c ], [ 10, %bb.b ], [ 10, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN4dmlc10StackTraceB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, i64 noundef 1, i64 noundef %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !15
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.18, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !26
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  %i.u = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN4dmlc15LogMessageFatal5Entry8FinalizeEv(ptr dead_on_unwind writable sret(%"struct.dmlc::Error") align 8 %i.t, ptr noundef nonnull align 8 dereferenceable(376) %i.u)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN4dmlc5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
  unreachable

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !26
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.t) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !26
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #34
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEEC2ENS_9DeviceOrdERKNS_3gbm11GBTreeModelEbiiOS9_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) initializes((0, 60)) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(192) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"struct.xgboost::tree::MultiTargetTreeView", align 8 ; 7 uses
  %6 = alloca %"struct.xgboost::tree::ScalarTreeView", align 8 ; 7 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %8 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i32 %3, ptr %i.e, align 8, !tbaa !206
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  store i32 %4, ptr %i.f, align 4, !tbaa !212
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load <2 x i32>, ptr %i.k, align 8, !tbaa !80
  %i.m = shufflevector <2 x i32> %i.l, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.m, ptr %i.h, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store i32 0, ptr %i.n, align 8, !tbaa !213
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 3 uses
  %i.p = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #32
          to label %.noexc47 unwind label %bb.d

.noexc47:                                         ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.q = load i32, ptr %i.e, align 8, !tbaa !206  ; 3 uses
  %i.r = load i32, ptr %i.f, align 4, !tbaa !212  ; 2 uses
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.w = sext i32 %i.q to i64
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.t
  %.pre = load i32, ptr %i.e, align 8, !tbaa !206
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.x = phi i32 [ %i.q, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.02.0.lcssa.a = phi ptr [ null, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %.sroa.02.3.a, %._crit_edge.loopexit ]
  %.sroa.12.0.lcssa = phi ptr [ null, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %.sroa.12.3, %._crit_edge.loopexit ]
  %.sroa.22.0.lcssa = phi ptr [ null, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %.sroa.22.3, %._crit_edge.loopexit ]
  %.lcssa35 = phi i32 [ %i.r, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %i.by, %._crit_edge.loopexit ] ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !147    ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !214 ; 3 uses
  store ptr %.sroa.22.0.lcssa, ptr %0, align 8, !tbaa !147
  store ptr %.sroa.12.0.lcssa, ptr %i.z, align 8, !tbaa !215
  store ptr %.sroa.02.0.lcssa.a, ptr %i.aa, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.lcssa35, ptr %i.a, align 4, !tbaa !80, !noalias !216
  store i32 %i.x, ptr %i.b, align 4, !tbaa !80, !noalias !216
  %.not.i = icmp slt i32 %.lcssa35, %i.x
  br i1 %.not.i, label %bb.c, label %.thread

.thread:                                          ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.c:                                             ; preds = %._crit_edge
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.u unwind label %bb.w

bb.d:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.w, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %.sroa.22.058 = phi ptr [ null, %.lr.ph ], [ %.sroa.22.3, %bb.t ] ; 14 uses
  %.sroa.12.057 = phi ptr [ null, %.lr.ph ], [ %.sroa.12.3, %bb.t ] ; 18 uses
  %.sroa.02.056 = phi ptr [ null, %.lr.ph ], [ %.sroa.02.3.a, %bb.t ] ; 6 uses
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !177
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !182
  %.not28 = icmp eq ptr %i.ah, null
  br i1 %.not28, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !177
  invoke void @_ZN7xgboost4tree19MultiTargetTreeViewC1ENS_9DeviceOrdEbPKNS_7RegTreeE(ptr noundef nonnull align 8 dereferenceable(192) %5, i32 %1, i1 noundef zeroext false, ptr noundef %i.ai)
          to label %bb.g unwind label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !219
  %i.ak = load i32, ptr %i.n, align 8, !tbaa !213
  %i.al = add nsw i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.n, align 8, !tbaa !213
  %.not.i48 = icmp eq ptr %.sroa.12.057, %.sroa.02.056
  br i1 %.not.i48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(193) %.sroa.12.057, ptr noundef nonnull align 8 dereferenceable(192) %5, i64 192, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.12.057, i64 192
  store i8 1, ptr %i.am, align 8, !tbaa !227
  br label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12emplace_backIJRS4_EEERS5_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.an = ptrtoint ptr %.sroa.12.057 to i64
  %i.ao = ptrtoint ptr %.sroa.22.058 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.j, label %_ZNKSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #32
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ar = sdiv exact i64 %i.ap, 200               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 46116860184273879)
  %i.av = select i1 %i.at, i64 46116860184273879, i64 %i.au ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.aw = mul nuw nsw i64 %i.av, 200
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #33
          to label %.noexc50 unwind label %.loopexit ; 5 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(193) %i.ay, ptr noundef nonnull align 8 dereferenceable(192) %5, i64 192, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  store i8 1, ptr %i.az, align 8, !tbaa !227
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.22.058, %.sroa.12.057
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc50, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %i.ax, %.noexc50 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %.sroa.22.058, %.noexc50 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(200) %.0911.i.i.i.i.i, i64 200, i1 false), !alias.scope !229
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 200 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 200 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, %.sroa.12.057
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !233

_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc50
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ax, %.noexc50 ], [ %i.bb, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.22.058, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.22.058, i64 noundef %i.ap) #34
  br label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.bc = getelementptr inbounds nuw [200 x i8], ptr %i.ax, i64 %i.av
  br label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12emplace_backIJRS4_EEERS5_DpOT_.exit

_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12emplace_backIJRS4_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.h
  %.sroa.02.1.a = phi ptr [ %i.bc, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.02.056, %bb.h ]
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.12.057, %bb.h ]
  %.sroa.22.1 = phi ptr [ %i.ax, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.22.058, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.t

.loopexit:                                        ; preds = %bb.f, %_ZNKSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.22.056.lcssa = phi ptr [ %.sroa.02.056, %bb.f ], [ %.sroa.12.057, %_ZNKSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.22.05669 = phi ptr [ %.sroa.22.056.lcssa, %.loopexit ], [ %.sroa.12.057, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.ay

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !177
  invoke void @_ZN7xgboost4tree14ScalarTreeViewC1ENS_9DeviceOrdEbPKNS_7RegTreeE(ptr noundef nonnull align 8 dereferenceable(68) %6, i32 %1, i1 noundef zeroext false, ptr noundef %i.bd)
          to label %bb.n unwind label %.loopexit29

bb.n:                                             ; preds = %bb.m
  %i.be = load i32, ptr %i.v, align 8, !tbaa !234
  %i.bf = load i32, ptr %i.n, align 8, !tbaa !213
  %i.bg = add nsw i32 %i.bf, %i.be
  store i32 %i.bg, ptr %i.n, align 8, !tbaa !213
  %.not.i51 = icmp eq ptr %.sroa.12.057, %.sroa.02.056
  br i1 %.not.i51, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(193) %.sroa.12.057, ptr noundef nonnull align 8 dereferenceable(72) %6, i64 72, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.12.057, i64 192
  store i8 0, ptr %i.bh, align 8, !tbaa !227
  br label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12emplace_backIJRS3_EEERS5_DpOT_.exit

bb.p:                                             ; preds = %bb.n
  %i.bi = ptrtoint ptr %.sroa.12.057 to i64
  %i.bj = ptrtoint ptr %.sroa.22.058 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %bb.q, label %_ZNKSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i52

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #32
          to label %.noexc63 unwind label %.loopexit.split-lp30

.noexc63:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i52: ; preds = %bb.p
  %i.bm = sdiv exact i64 %i.bk, 200               ; 3 uses
  %.sroa.speculated.i.i.i53 = call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i53, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 46116860184273879)
  %i.bq = select i1 %i.bo, i64 46116860184273879, i64 %i.bp ; 3 uses
  %.not.i.i.i54 = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i.i54)
  %i.br = mul nuw nsw i64 %i.bq, 200
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #33
          to label %.noexc64 unwind label %.loopexit29 ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i52
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(193) %i.bt, ptr noundef nonnull align 8 dereferenceable(72) %6, i64 72, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 192
  store i8 0, ptr %i.bu, align 8, !tbaa !227
  %.not10.i.i.i.i.i55 = icmp eq ptr %.sroa.22.058, %.sroa.12.057
  br i1 %.not10.i.i.i.i.i55, label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i60, label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %.noexc64, %.lr.ph.i.i.i.i.i56
  %.012.i.i.i.i.i57 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i56 ], [ %i.bs, %.noexc64 ] ; 2 uses
  %.0911.i.i.i.i.i58 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i56 ], [ %.sroa.22.058, %.noexc64 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.012.i.i.i.i.i57, ptr noundef nonnull align 8 dereferenceable(200) %.0911.i.i.i.i.i58, i64 200, i1 false), !alias.scope !238
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i58, i64 200 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i57, i64 200 ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.bv, %.sroa.12.057
  br i1 %.not.i.i.i.i.i59, label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i60, label %.lr.ph.i.i.i.i.i56, !llvm.loop !233

_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i60: ; preds = %.lr.ph.i.i.i.i.i56, %.noexc64
  %.0.lcssa.i.i.i.i.i61 = phi ptr [ %i.bs, %.noexc64 ], [ %i.bw, %.lr.ph.i.i.i.i.i56 ]
  %.not.i23.i.i62 = icmp eq ptr %.sroa.22.058, null
  br i1 %.not.i23.i.i62, label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i60
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.22.058, i64 noundef %i.bk) #34
  br label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i60
  %i.bx = getelementptr inbounds nuw [200 x i8], ptr %i.bs, i64 %i.bq
  br label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12emplace_backIJRS3_EEERS5_DpOT_.exit

_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12emplace_backIJRS3_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.o
  %.sroa.02.2.a = phi ptr [ %i.bx, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.02.056, %bb.o ]
  %.0.lcssa.i.i.i.i.i61.pn = phi ptr [ %.0.lcssa.i.i.i.i.i61, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.12.057, %bb.o ]
  %.sroa.22.2 = phi ptr [ %i.bs, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.22.058, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.t

.loopexit29:                                      ; preds = %bb.m, %_ZNKSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i52
  %.sroa.22.056.lcssa65 = phi ptr [ %.sroa.02.056, %bb.m ], [ %.sroa.12.057, %_ZNKSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i52 ]
  %lpad.loopexit31 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp30:                             ; preds = %bb.q
  %lpad.loopexit.split-lp32 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp30, %.loopexit29
  %.sroa.22.05668 = phi ptr [ %.sroa.22.056.lcssa65, %.loopexit29 ], [ %.sroa.12.057, %.loopexit.split-lp30 ]
  %lpad.phi33 = phi { ptr, i32 } [ %lpad.loopexit31, %.loopexit29 ], [ %lpad.loopexit.split-lp32, %.loopexit.split-lp30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ay

bb.t:                                             ; preds = %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12emplace_backIJRS3_EEERS5_DpOT_.exit, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12emplace_backIJRS4_EEERS5_DpOT_.exit
  %.sroa.02.3.a = phi ptr [ %.sroa.02.1.a, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12emplace_backIJRS4_EEERS5_DpOT_.exit ], [ %.sroa.02.2.a, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12emplace_backIJRS3_EEERS5_DpOT_.exit ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.pn, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12emplace_backIJRS4_EEERS5_DpOT_.exit ], [ %.0.lcssa.i.i.i.i.i61.pn, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12emplace_backIJRS3_EEERS5_DpOT_.exit ]
  %.sroa.22.3 = phi ptr [ %.sroa.22.1, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12emplace_backIJRS4_EEERS5_DpOT_.exit ], [ %.sroa.22.2, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EE12emplace_backIJRS3_EEERS5_DpOT_.exit ] ; 2 uses
  %.sroa.12.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn.pn, i64 200 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.by = load i32, ptr %i.f, align 4, !tbaa !212 ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next, %i.bz
  br i1 %i.ca, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !242

bb.u:                                             ; preds = %bb.c
  %.pr = load ptr, ptr %7, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.cb = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc65 unwind label %bb.x

.noexc65:                                         ; preds = %bb.v
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.cb, ptr noundef nonnull @.str.27, i32 noundef 65)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.x

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc65
  %i.cc = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.y ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull @.str.28, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cf = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !19
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !15
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef %i.cg, i64 noundef %i.ci)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.y

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.aa unwind label %bb.x

bb.w:                                             ; preds = %bb.c
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.x:                                             ; preds = %.noexc65, %bb.v, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.z unwind label %bb.bc

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.x ], [ %i.cn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #18
  br label %bb.am

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.pr19 = load ptr, ptr %7, align 8, !tbaa !38   ; 4 uses
  %.not.i74 = icmp eq ptr %.pr19, null
  br i1 %.not.i74, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = load ptr, ptr %.pr19, align 8, !tbaa !19 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pr19, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ab
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !26
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr19, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.u, %.thread, %bb.aa, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ct = load i32, ptr %i.f, align 4, !tbaa !212
  %i.cu = load i32, ptr %i.e, align 8, !tbaa !206
  %i.cv = sub nsw i32 %i.ct, %i.cu                ; 3 uses
  store i32 %i.cv, ptr %i.c, align 4, !tbaa !80
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 72
  invoke void @_ZNK7xgboost16HostDeviceVectorIjE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, i32 %1)
          to label %bb.ac unwind label %bb.an

bb.ac:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.cx = invoke { i64, ptr } @_ZNK7xgboost3gbm11GBTreeModel10TreeGroupsENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(192) %2, i32 %1)
          to label %bb.ad unwind label %bb.ao     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cy = extractvalue { i64, ptr } %i.cx, 0      ; 3 uses
  %i.cz = extractvalue { i64, ptr } %i.cx, 1      ; 2 uses
  %i.da = load i32, ptr %i.e, align 8, !tbaa !206
  %i.db = sext i32 %i.da to i64                   ; 4 uses
  %i.dc = sext i32 %i.cv to i64                   ; 3 uses
  %i.dd = icmp eq i32 %i.cv, -1
  br i1 %i.dd, label %.split.i, label %bb.ae

.split.i:                                         ; preds = %bb.ad
  %.not8.i = icmp ult i64 %i.cy, %i.db
  br i1 %.not8.i, label %bb.af, label %bb.ag, !prof !179

bb.ae:                                            ; preds = %bb.ad
  %i.de = add nsw i64 %i.dc, %i.db
  %.not.i75 = icmp ugt i64 %i.de, %i.cy
  br i1 %.not.i75, label %bb.af, label %bb.ah, !prof !179

bb.af:                                            ; preds = %bb.ae, %.split.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.ag:                                            ; preds = %.split.i
  %i.df = sub nuw i64 %i.cy, %i.db
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.dg = phi i64 [ %i.df, %bb.ag ], [ %i.dc, %bb.ae ] ; 2 uses
  %i.dh = icmp ne ptr %i.cz, null
  %i.di = icmp eq i64 %i.dg, 0
  %i.dj = or i1 %i.dh, %i.di
  br i1 %i.dj, label %bb.aj, label %bb.ai, !prof !63

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt9terminatev() #35
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.db
  store i64 %i.dg, ptr %i.g, align 8, !tbaa !47
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.dk, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.dl = load ptr, ptr %i.z, align 8, !tbaa !215
  %i.dm = load ptr, ptr %0, align 8, !tbaa !147
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = sdiv exact i64 %i.dp, 200               ; 2 uses
  store i64 %i.dq, ptr %i.d, align 8, !tbaa !47
  %i.dr = icmp eq i64 %i.dq, %i.dc
  br i1 %i.dr, label %_ZN4dmlc11LogCheck_EQIimEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %bb.ak

_ZN4dmlc11LogCheck_EQIimEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit93

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4dmlc14LogCheckFormatIimEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4dmlc11LogCheck_EQIimEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.ap

_ZN4dmlc11LogCheck_EQIimEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.ak
  %.pr22 = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %.not27 = icmp eq ptr %.pr22, null
  br i1 %.not27, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit93, label %bb.al

bb.al:                                            ; preds = %_ZN4dmlc11LogCheck_EQIimEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ds = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc76 unwind label %bb.aq

.noexc76:                                         ; preds = %bb.al
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ds, ptr noundef nonnull @.str.27, i32 noundef 69)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit78 unwind label %bb.aq

_ZN4dmlc15LogMessageFatalC2EPKci.exit78:          ; preds = %.noexc76
  %i.dt = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit80 unwind label %bb.ar ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit80: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit78
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit80
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull @.str.29, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  %i.dw = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !15
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef %i.dx, i64 noundef %i.dz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit86 unwind label %bb.ar

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit86: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit86
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.at unwind label %bb.aq

bb.am:                                            ; preds = %bb.z, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.z ], [ %i.cl, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.ay

bb.an:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ao:                                            ; preds = %bb.ac
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ap:                                            ; preds = %bb.ak
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.aw

bb.aq:                                            ; preds = %.noexc76, %bb.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit86, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit80, %_ZN4dmlc15LogMessageFatalC2EPKci.exit78
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.as unwind label %bb.bc

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn38 = phi { ptr, i32 } [ %i.ef, %bb.aq ], [ %i.eg, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  br label %bb.aw

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pr23 = load ptr, ptr %9, align 8, !tbaa !38   ; 4 uses
  %.not.i89 = icmp eq ptr %.pr23, null
  br i1 %.not.i89, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit93, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eh = load ptr, ptr %.pr23, align 8, !tbaa !19 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.pr23, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i90: ; preds = %bb.au
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !26
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i91

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i91: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i90
  call void @_ZdlPvm(ptr noundef nonnull %.pr23, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit93

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit93: ; preds = %_ZN4dmlc11LogCheck_EQIimEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQIimEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.at, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.not.i.i.i94 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i94, label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit93
  %i.em = ptrtoint ptr %i.ab to i64
  %i.en = ptrtoint ptr %i.y to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.eo) #34
  br label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EED2Ev.exit

_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit93, %bb.av
  %i.ep = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #18 ; 0 uses
  ret void

bb.aw:                                            ; preds = %bb.as, %bb.ap
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %bb.as ], [ %i.ee, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ao, %bb.an
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %bb.aw ], [ %i.ed, %bb.ao ], [ %i.ec, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.ay

bb.ay:                                            ; preds = %bb.l, %bb.s, %bb.ax, %bb.am
  %.sroa.02.4.a = phi ptr [ %.sroa.22.05669, %bb.l ], [ %.sroa.22.05668, %bb.s ], [ %i.ab, %bb.ax ], [ %i.ab, %bb.am ]
  %.sroa.22.4 = phi ptr [ %.sroa.22.058, %bb.l ], [ %.sroa.22.058, %bb.s ], [ %i.y, %bb.ax ], [ %i.y, %bb.am ] ; 3 uses
  %.pn42.pn = phi { ptr, i32 } [ %lpad.phi, %bb.l ], [ %lpad.phi33, %bb.s ], [ %.pn38.pn.pn, %bb.ax ], [ %.pn.pn, %bb.am ]
  %.not.i.i.i95 = icmp eq ptr %.sroa.22.4, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EED2Ev.exit96, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eq = ptrtoint ptr %.sroa.02.4.a to i64
  %i.er = ptrtoint ptr %.sroa.22.4 to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.22.4, i64 noundef %i.es) #34
  br label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EED2Ev.exit96

_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EED2Ev.exit96: ; preds = %bb.ay, %bb.az
  %i.et = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #18 ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EED2Ev.exit96, %bb.d
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EED2Ev.exit96 ], [ %i.ac, %bb.d ]
  %i.eu = load ptr, ptr %0, align 8, !tbaa !147   ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EED2Ev.exit98, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !214
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #34
  br label %_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EED2Ev.exit98

_ZNSt6vectorISt7variantIJN7xgboost4tree14ScalarTreeViewENS2_19MultiTargetTreeViewEEESaIS5_EED2Ev.exit98: ; preds = %bb.ba, %bb.bb
  resume { ptr, i32 } %.pn42.pn.pn

bb.bc:                                            ; preds = %bb.ar, %bb.y
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !47
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.b)
          to label %_ZNSolsEm.exit unwind label %bb.f ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.9, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZNSolsEm.exit
  %i.e = load i64, ptr %2, align 8, !tbaa !47
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.e)
          to label %_ZNSolsEm.exit6 unwind label %bb.f

_ZNSolsEm.exit6:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %_ZNSolsEm.exit6
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33
          to label %bb.b unwind label %bb.f       ; 8 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !25, !alias.scope !249
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !15, !alias.scope !249
  store i8 0, ptr %i.i, align 8, !tbaa !26, !alias.scope !249
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !250, !noalias !249 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !249 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !254, !noalias !249 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !19, !alias.scope !249 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.i, align 8, !tbaa !26, !alias.scope !249
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #34
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !38
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !56
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !26
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #18
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.f:                                             ; preds = %_ZNSolsEm.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #34
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #9 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #13 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal5Entry11ThreadLocalEv()
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.tm, align 8                 ; 3 uses
  %4 = alloca %"class.dmlc::DateLogger", align 1  ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a
  %i.aen = add nuw i64 %.06099.i.i.i.i.i80.i.i, 1 ; 2 uses
  %exitcond122.not.i.i.i.i.i96.i.i = icmp eq i64 %i.aen, %i.zu
  br i1 %exitcond122.not.i.i.i.i.i96.i.i, label %bb.io, label %.lr.ph100.i.i.i.i.i79.i.i, !llvm.loop !471

bb.in:                                            ; preds = %.sink.split.i.i.i.i95.i.i
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i81.i.i

bb.io:                                            ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm64EmZNS2_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS5_14SparsePageViewINS2_11CatAccessorEEEEEvRKT0_RKNS5_15GBTreeModelViewINS6_3VecESt7variantIJNS2_4tree14ScalarTreeViewENSH_19MultiTargetTreeViewEEENS6_9CopyViewsEEEPNS6_9ThreadTmpIXT_EEEibNS2_6linalg10TensorViewIfLi2EEENS3_15OptionalWeightsEEUlOT_E_EEvSB_iOT1_EUlSW_E_JmEEEvSW_DpT0_.exit.i.i.i.i.i
  %.pr84.pr.i.i.i.i.i97.i.i = load ptr, ptr %152, align 8, !tbaa !406 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %149)
  %.not.i77.i.i.i.i.i98.i.i = icmp eq ptr %.pr84.pr.i.i.i.i.i97.i.i, null
  br i1 %.not.i77.i.i.i.i.i98.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i.i101.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i.i99.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i.i99.i.i: ; preds = %bb.io
  store ptr %.pr84.pr.i.i.i.i.i97.i.i, ptr %149, align 8, !tbaa !406
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %149) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %149) #32
          to label %bb.ip unwind label %bb.iq

bb.ip:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i.i99.i.i
  unreachable

bb.iq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i.i99.i.i
  %i.aep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aeq = load ptr, ptr %149, align 8, !tbaa !406
  %.not.i2.i.i.i.i.i.i100.i.i = icmp eq ptr %i.aeq, null
  br i1 %.not.i2.i.i.i.i.i.i100.i.i, label %.body.i.i.i.i.i81.i.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %149) #18
  br label %.body.i.i.i.i.i81.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i.i101.i.i: ; preds = %bb.io, %.thread.i.i.i.i119.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %149)
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #18
  br label %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i

.body.i.i.i.i.i81.i.i:                            ; preds = %bb.if, %bb.ir, %bb.iq, %bb.in, %bb.il, %bb.ik
  %.pn64.i.i.i.i.i82.i.i = phi { ptr, i32 } [ %i.aep, %bb.iq ], [ %i.aep, %bb.ir ], [ %i.aeo, %bb.in ], [ %i.aei, %bb.ik ], [ %i.aej, %bb.il ], [ %i.adr, %bb.if ]
  %i.aer = load ptr, ptr %152, align 8, !tbaa !406
  %.not.i.i79.i.i.i.i.i83.i.i = icmp eq ptr %i.aer, null
  br i1 %.not.i.i79.i.i.i.i.i83.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i84.i.i, label %bb.is

bb.is:                                            ; preds = %.body.i.i.i.i.i81.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %152) #18
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i84.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i84.i.i: ; preds = %bb.is, %.body.i.i.i.i.i81.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #18
  br label %.body.i.i87.i.i

bb.it:                                            ; preds = %bb.ht
  %i.aes = landingpad { ptr, i32 }
          catch ptr null
  %i.aet = extractvalue { ptr, i32 } %i.aes, 0
  call void @__clang_call_terminate(ptr %i.aet) #35
  unreachable

_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i: ; preds = %.noexc45.i.i145.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i.i101.i.i, %.preheader.i.i.i.i.i139.i.i
  %i.aeu = phi ptr [ %i.zw, %.preheader.i.i.i.i.i139.i.i ], [ %i.zp, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i.i101.i.i ], [ %i.zw, %.noexc45.i.i145.i.i ]
  %i.aev = phi ptr [ %i.zx, %.preheader.i.i.i.i.i139.i.i ], [ %i.zq, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i.i101.i.i ], [ %i.zx, %.noexc45.i.i145.i.i ] ; 3 uses
  %.not.i.i.i49.i.i102.i.i = icmp eq ptr %i.aev, null
  br i1 %.not.i.i.i49.i.i102.i.i, label %bb.ix, label %bb.iu

bb.iu:                                            ; preds = %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i
  %i.aew = ptrtoint ptr %i.aeu to i64
  %i.aex = ptrtoint ptr %i.aev to i64
  %i.aey = sub i64 %i.aew, %i.aex
  call void @_ZdlPvm(ptr noundef nonnull %i.aev, i64 noundef %i.aey) #34
  br label %bb.ix

.loopexit.i.i143.i.i:                             ; preds = %.noexc274.i.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i.i264.i.i, %.lr.ph108.i.i.i.i.i141.i.i
  %lpad.loopexit.i.i144.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i87.i.i

.loopexit.split-lp.i.i121.i.i:                    ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i120.i.i
  %lpad.loopexit.split-lp.i.i122.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i87.i.i

.body.i.i87.i.i:                                  ; preds = %.loopexit.split-lp.i.i121.i.i, %.loopexit.i.i143.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i84.i.i, %bb.hu, %.loopexit.split-lp67.i.i218.i.i, %.loopexit66.i.i244.i.i, %bb.hm, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i188.i.i, %bb.gl
  %i.aez = phi ptr [ %i.ve, %.loopexit.split-lp67.i.i218.i.i ], [ %i.zp, %.loopexit.split-lp.i.i121.i.i ], [ %i.ve, %bb.hm ], [ %i.ve, %bb.gl ], [ %i.ve, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i188.i.i ], [ %i.ve, %.loopexit66.i.i244.i.i ], [ %i.zp, %bb.hu ], [ %i.zp, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i84.i.i ], [ %i.zw, %.loopexit.i.i143.i.i ]
  %i.afa = phi ptr [ %i.vf, %.loopexit.split-lp67.i.i218.i.i ], [ %i.zq, %.loopexit.split-lp.i.i121.i.i ], [ %i.vf, %bb.hm ], [ %i.vf, %bb.gl ], [ %i.vf, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i188.i.i ], [ %i.vf, %.loopexit66.i.i244.i.i ], [ %i.zq, %bb.hu ], [ %i.zq, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i84.i.i ], [ %i.zx, %.loopexit.i.i143.i.i ] ; 3 uses
  %.pn22.i.i88.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp69.i.i219.i.i, %.loopexit.split-lp67.i.i218.i.i ], [ %lpad.loopexit.split-lp.i.i122.i.i, %.loopexit.split-lp.i.i121.i.i ], [ %.pn.pn.i.i156.i.i, %bb.hm ], [ %.pn.i.i.i.i223.i.i, %bb.gl ], [ %.pn64.i.i.i.i186.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i188.i.i ], [ %lpad.loopexit68.i.i245.i.i, %.loopexit66.i.i244.i.i ], [ %.pn.i.i.i.i.i126.i.i, %bb.hu ], [ %.pn64.i.i.i.i.i82.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i84.i.i ], [ %lpad.loopexit.i.i144.i.i, %.loopexit.i.i143.i.i ] ; 2 uses
  %.not.i.i.i50.i.i89.i.i = icmp eq ptr %i.afa, null
  br i1 %.not.i.i.i50.i.i89.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i90.i.i, label %bb.iv

bb.iv:                                            ; preds = %.body.i.i87.i.i
  %i.afb = ptrtoint ptr %i.aez to i64
  %i.afc = ptrtoint ptr %i.afa to i64
  %i.afd = sub i64 %i.afb, %i.afc
  call void @_ZdlPvm(ptr noundef nonnull %i.afa, i64 noundef %i.afd) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i90.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i90.i.i:        ; preds = %bb.iv, %.body.i.i87.i.i, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn22.i.i88434.i.i = phi { ptr, i32 } [ %.pn22.i.i88.i.i, %.body.i.i87.i.i ], [ %.pn22.i.i88.i.i, %bb.iv ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #18
  br label %.body252.i.i

bb.iw:                                            ; preds = %bb.fy
  %i.afe = landingpad { ptr, i32 }
          catch ptr null
  %i.aff = extractvalue { ptr, i32 } %i.afe, 0
  call void @__clang_call_terminate(ptr %i.aff) #35
  unreachable

bb.ix:                                            ; preds = %bb.iu, %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %161)
  call void @llvm.lifetime.end.p0(ptr nonnull %160)
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #18
  %i.afg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_10SparsePageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %194)
          to label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i unwind label %bb.fl ; 0 uses

bb.iy:                                            ; preds = %bb.fm
  %i.afh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

bb.iz:                                            ; preds = %.noexc71.i.i, %bb.fn
  %i.afi = landingpad { ptr, i32 }
          cleanup
  br label %.body252.i.i

.body252.i.i:                                     ; preds = %bb.iz, %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i90.i.i
  %eh.lpad-body253.i.i = phi { ptr, i32 } [ %i.afi, %bb.iz ], [ %.pn22.i.i88434.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i90.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #18
  br label %bb.ja

bb.ja:                                            ; preds = %.body252.i.i, %bb.iy, %bb.fl
  %.pn26.i.i = phi { ptr, i32 } [ %i.tt, %bb.fl ], [ %eh.lpad-body253.i.i, %.body252.i.i ], [ %i.afh, %bb.iy ]
  call void @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %195) #18
  br label %.body55.i.i

.body55.i.i:                                      ; preds = %bb.ja, %bb.eq
  %.pn26.pn.i.i = phi { ptr, i32 } [ %.pn26.i.i, %bb.ja ], [ %i.ru, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #18
  call void @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %194) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %194) #18
  call void @_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %193) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #18
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit52.i.i

_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit52.i.i: ; preds = %.body55.i.i, %bb.el, %bb.ek
  %.pn26.pn.pn.i.i = phi { ptr, i32 } [ %.pn26.pn.i.i, %.body55.i.i ], [ %.pn20.pn.pn.i.i, %bb.ek ], [ %.pn20.pn.pn.i.i, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0285.i.i)
  br label %.body

bb.jb:                                            ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i, %bb.ay, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0285.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %187)
  %i.afj = load ptr, ptr %198, align 8, !tbaa !150 ; 3 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %198, i64 8
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !153 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.afj, %i.afl
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i12.i

.lr.ph.i.i.i.i12.i:                               ; preds = %bb.jb, %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.afs, %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i ], [ %i.afj, %bb.jb ] ; 3 uses
  %i.afm = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i, label %bb.jc

bb.jc:                                            ; preds = %.lr.ph.i.i.i.i12.i
  %i.afn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !81
  %i.afp = ptrtoint ptr %i.afo to i64
  %i.afq = ptrtoint ptr %i.afm to i64
  %i.afr = sub i64 %i.afp, %i.afq
  call void @_ZdlPvm(ptr noundef nonnull %i.afm, i64 noundef %i.afr) #34
  br label %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i: ; preds = %bb.jc, %.lr.ph.i.i.i.i12.i
  %i.afs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i13.i = icmp eq ptr %i.afs, %i.afl
  br i1 %.not.i.i.i.i13.i, label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i12.i, !llvm.loop !154

_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %198, align 8, !tbaa !150
  br label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.jb
  %i.aft = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.afj, %bb.jb ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aft, null
  br i1 %.not.i.i1.i.i.i, label %bb.jf, label %bb.jd

bb.jd:                                            ; preds = %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.afu = getelementptr inbounds nuw i8, ptr %198, i64 16
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !155
  %i.afw = ptrtoint ptr %i.afv to i64
  %i.afx = ptrtoint ptr %i.aft to i64
  %i.afy = sub i64 %i.afw, %i.afx
  call void @_ZdlPvm(ptr noundef nonnull %i.aft, i64 noundef %i.afy) #34
  br label %bb.jf

bb.je:                                            ; preds = %bb.em, %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i, %.noexc7.i, %bb.u, %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i, %.noexc4.i, %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i, %.noexc.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i
  %.sroa.010.1.a = phi ptr [ %i.eq, %bb.em ], [ %i.eq, %.noexc.i.i.i.i ], [ %i.eq, %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.eq, %.noexc7.i ], [ %i.eq, %bb.u ], [ %i.eq, %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i ], [ null, %.noexc4.i ], [ null, %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i ], [ null, %.noexc.i ], [ null, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i ]
  %.sroa.1012.1 = phi ptr [ %i.eo, %bb.em ], [ %i.eo, %.noexc.i.i.i.i ], [ %i.eo, %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.eo, %.noexc7.i ], [ %i.eo, %bb.u ], [ %i.eo, %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i ], [ null, %.noexc4.i ], [ null, %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i ], [ null, %.noexc.i ], [ null, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i ]
  %i.afz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.jf:                                            ; preds = %bb.jd, %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #18
  %.not.i.i.i.i40 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i40, label %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicyD2Ev.exit, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.aga = ptrtoint ptr %i.eq to i64
  %i.agb = ptrtoint ptr %i.eo to i64
  %i.agc = sub i64 %i.aga, %i.agb
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.agc) #34
  br label %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicyD2Ev.exit

.body:                                            ; preds = %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit52.i.i, %bb.je
  %.sroa.010.2.a = phi ptr [ %i.eq, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit52.i.i ], [ %.sroa.010.1.a, %bb.je ]
  %.sroa.1012.2 = phi ptr [ %i.eo, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit52.i.i ], [ %.sroa.1012.1, %bb.je ] ; 3 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn26.pn.pn.i.i, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit52.i.i ], [ %i.afz, %bb.je ] ; 2 uses
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %198) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #18
  %.not.i.i.i.i41 = icmp eq ptr %.sroa.1012.2, null
  br i1 %.not.i.i.i.i41, label %common.resume, label %bb.jh

bb.jh:                                            ; preds = %.body
  %i.agd = ptrtoint ptr %.sroa.010.2.a to i64
  %i.age = ptrtoint ptr %.sroa.1012.2 to i64
  %i.agf = sub i64 %i.agd, %i.age
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.1012.2, i64 noundef %i.agf) #34
  br label %common.resume

bb.ji:                                            ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_EEvPKNS_7ContextES5_SD_SH_ENKUlPKS4_E_clESN_.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #18
  %i.agg = load ptr, ptr %3, align 8, !tbaa !331, !nonnull !146, !align !333 ; 2 uses
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %138, i8 0, i64 24, i1 false)
  %.not.i.i43 = icmp eq i32 %i.agh, 0
  br i1 %.not.i.i43, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i52, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.agi = sext i32 %i.agh to i64
  %i.agj = shl nsw i64 %i.agi, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %137, i8 0, i64 32, i1 false)
  invoke void @_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %138, ptr null, i64 noundef %i.agj, ptr noundef nonnull align 8 dereferenceable(25) %137)
          to label %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i48 unwind label %bb.jl

_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i48: ; preds = %bb.jj
  %i.agk = load ptr, ptr %137, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i6.i.i49 = icmp eq ptr %i.agk, null
  br i1 %.not.i.i.i.i6.i.i49, label %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i50, label %bb.jk

bb.jk:                                            ; preds = %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i48
  %i.agl = getelementptr inbounds nuw i8, ptr %137, i64 16
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !81
  %i.agn = ptrtoint ptr %i.agm to i64
  %i.ago = ptrtoint ptr %i.agk to i64
  %i.agp = sub i64 %i.agn, %i.ago
  call void @_ZdlPvm(ptr noundef nonnull %i.agk, i64 noundef %i.agp) #34
  br label %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i50

_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i50:          ; preds = %bb.jk, %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #18
  %.pre.i51 = load ptr, ptr %3, align 8, !tbaa !331
  br label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i52

bb.jl:                                            ; preds = %bb.jj
  %i.agq = landingpad { ptr, i32 }
          cleanup
  %i.agr = load ptr, ptr %137, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i7.i.i44 = icmp eq ptr %i.agr, null
  br i1 %.not.i.i.i.i7.i.i44, label %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i.i45, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.ags = getelementptr inbounds nuw i8, ptr %137, i64 16
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !81
  %i.agu = ptrtoint ptr %i.agt to i64
  %i.agv = ptrtoint ptr %i.agr to i64
  %i.agw = sub i64 %i.agu, %i.agv
  call void @_ZdlPvm(ptr noundef nonnull %i.agr, i64 noundef %i.agw) #34
  br label %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i.i45

common.resume:                                    ; preds = %.body503.thread, %.body.thread, %.body, %bb.jh, %.body503, %bb.zc, %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i.i511, %.body.i519, %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i.i45, %.body.i53
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i520, %.body.i519 ], [ %eh.lpad-body.i54, %.body.i53 ], [ %i.agq, %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i.i45 ], [ %i.cae, %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i.i511 ], [ %eh.lpad-body.i, %bb.jh ], [ %eh.lpad-body.i, %.body ], [ %eh.lpad-body.i303, %.body503 ], [ %eh.lpad-body.i303, %bb.zc ], [ %i.db, %.body.thread ], [ %i.bhq, %.body503.thread ]
  resume { ptr, i32 } %common.resume.op

_ZN7xgboost7RegTree4FVecD2Ev.exit8.i.i45:         ; preds = %bb.jm, %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #18
  call void @_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %138) #18
  br label %common.resume

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i52: ; preds = %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i50, %bb.ji
  %i.agx = phi ptr [ %i.agg, %bb.ji ], [ %.pre.i51, %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i50 ] ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !334, !nonnull !146, !align !335 ; 16 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !336, !nonnull !146 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !337, !nonnull !146, !align !335 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !338, !nonnull !146, !align !335 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #18
  %i.ahg = load ptr, ptr %1, align 8, !tbaa !56, !noalias !472
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16
  %i.ahi = load ptr, ptr %i.ahh, align 8, !noalias !472
  %i.ahj = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.ahi(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc.i55 unwind label %bb.sw, !inline_history !475

.noexc.i55:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i52
  invoke void @_ZNK7xgboost8MetaInfo10CatsSharedEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.140") align 8 %126, ptr noundef nonnull align 8 dereferenceable(248) %i.ahj)
          to label %.noexc3.i56 unwind label %bb.sw

.noexc3.i56:                                      ; preds = %.noexc.i55
  %i.ahk = load ptr, ptr %126, align 8, !tbaa !324
  %i.ahl = getelementptr inbounds nuw i8, ptr %126, i64 8
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !326 ; 8 uses
  %.not.i.i.i.i.i57 = icmp eq ptr %i.ahm, null
  br i1 %.not.i.i.i.i.i57, label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i61, label %bb.jn

bb.jn:                                            ; preds = %.noexc3.i56
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8 ; 4 uses
  %i.aho = load atomic i64, ptr %i.ahn acquire, align 8 ; 2 uses
  %i.ahp = icmp eq i64 %i.aho, 4294967297
  %i.ahq = trunc i64 %i.aho to i32                ; 2 uses
  br i1 %i.ahp, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  store i32 0, ptr %i.ahn, align 8, !tbaa !327
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahm, i64 12
  store i32 0, ptr %i.ahr, align 4, !tbaa !329
  %i.ahs = load ptr, ptr %i.ahm, align 8, !tbaa !56
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16
  %i.ahu = load ptr, ptr %i.aht, align 8
  call void %i.ahu(ptr noundef nonnull align 8 dereferenceable(16) %i.ahm) #18, !inline_history !476
  %i.ahv = load ptr, ptr %i.ahm, align 8, !tbaa !56
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 24
  %i.ahx = load ptr, ptr %i.ahw, align 8
  call void %i.ahx(ptr noundef nonnull align 8 dereferenceable(16) %i.ahm) #18, !inline_history !476
  br label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i61

bb.jp:                                            ; preds = %bb.jn
  %i.ahy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i.i58 = icmp eq i8 %i.ahy, 0
  br i1 %.not.i.i.i.i.i.i58, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.ahz = add nsw i32 %i.ahq, -1
  store i32 %i.ahz, ptr %i.ahn, align 8, !tbaa !80
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i59

bb.jr:                                            ; preds = %bb.jp
  %i.aia = atomicrmw volatile add ptr %i.ahn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i59

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i59: ; preds = %bb.jr, %bb.jq
  %.0.i.i.i.i.i.i.i60 = phi i32 [ %i.ahq, %bb.jq ], [ %i.aia, %bb.jr ]
  %i.aib = icmp eq i32 %.0.i.i.i.i.i.i.i60, 1
  br i1 %i.aib, label %bb.js, label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i61, !prof !179

bb.js:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i59
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ahm) #18
  br label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i61

_ZNK7xgboost7DMatrix4CatsEv.exit.i.i61:           ; preds = %bb.js, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i59, %bb.jo, %.noexc3.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #18
  invoke void @_ZNK7xgboost12CatContainer8HostViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.enc::detail::ColumnsViewImpl") align 8 %127, ptr noundef nonnull align 8 dereferenceable(73) %i.ahk)
          to label %.noexc4.i62 unwind label %bb.sw

.noexc4.i62:                                      ; preds = %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #18
  %i.aic = load ptr, ptr %1, align 8, !tbaa !56
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 136
  %i.aie = load ptr, ptr %i.aid, align 8
  %i.aif = invoke noundef zeroext i1 %i.aie(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc5.i63 unwind label %bb.sw, !inline_history !475

.noexc5.i63:                                      ; preds = %.noexc4.i62
  br i1 %i.aif, label %bb.ol, label %bb.jt

bb.jt:                                            ; preds = %.noexc5.i63
  %i.aig = load ptr, ptr %1, align 8, !tbaa !56
  %i.aih = load ptr, ptr %i.aig, align 8
  %i.aii = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.aih(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc6.i64 unwind label %bb.sw, !inline_history !475

.noexc6.i64:                                      ; preds = %bb.jt
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 184
  %i.aik = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_11FeatureTypeEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aij)
          to label %.noexc7.i65 unwind label %bb.sw ; 3 uses

.noexc7.i65:                                      ; preds = %.noexc6.i64
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 8 ; 2 uses
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !349 ; 2 uses
  %i.ain = load ptr, ptr %i.aik, align 8, !tbaa !351 ; 3 uses
  %i.aio = ptrtoint ptr %i.aim to i64             ; 2 uses
  %i.aip = ptrtoint ptr %i.ain to i64             ; 2 uses
  %i.aiq = sub i64 %i.aio, %i.aip                 ; 4 uses
  %.not.i.i.i.i30.i.i66 = icmp eq ptr %i.aim, %i.ain
  br i1 %.not.i.i.i.i30.i.i66, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %.noexc7.i65
  %i.air = icmp slt i64 %i.aiq, 0
  br i1 %i.air, label %.noexc.i.i.i.i272, label %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i67, !prof !179

.noexc.i.i.i.i272:                                ; preds = %bb.ju
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc8.i273 unwind label %bb.sw

.noexc8.i273:                                     ; preds = %.noexc.i.i.i.i272
  unreachable

_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i67: ; preds = %bb.ju
  %i.ais = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aiq) #33
          to label %.noexc9.i68 unwind label %bb.sw

.noexc9.i68:                                      ; preds = %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i67
  %.pre.i.i69 = load ptr, ptr %i.aik, align 8, !tbaa !58 ; 2 uses
  %.pre312.i.i = load ptr, ptr %i.ail, align 8, !tbaa !58
  %.pre313.i.i = ptrtoint ptr %.pre312.i.i to i64
  %.pre314.i.i = ptrtoint ptr %.pre.i.i69 to i64
  br label %bb.jv

bb.jv:                                            ; preds = %.noexc9.i68, %.noexc7.i65
  %.pre-phi315.i.i = phi i64 [ %.pre314.i.i, %.noexc9.i68 ], [ %i.aip, %.noexc7.i65 ]
  %.pre-phi.i.i70 = phi i64 [ %.pre313.i.i, %.noexc9.i68 ], [ %i.aio, %.noexc7.i65 ]
  %i.ait = phi ptr [ %.pre.i.i69, %.noexc9.i68 ], [ %i.ain, %.noexc7.i65 ] ; 2 uses
  %i.aiu = phi ptr [ %i.ais, %.noexc9.i68 ], [ null, %.noexc7.i65 ] ; 7 uses
  %i.aiv = sub i64 %.pre-phi.i.i70, %.pre-phi315.i.i ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE:bb.a
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.dh, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit ]
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.df, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.011 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !173  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !59   ; 4 uses
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
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !62
  %.pre2.i = load ptr, ptr %i.h, align 8, !tbaa !62
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
  %min.iters.check37 = icmp ult i64 %i.w, 28
  br i1 %min.iters.check37, label %.lr.ph.i.i.i.i.i.preheader53, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec39 = and i64 %i.y, 9223372036854775800    ; 3 uses
  %i.z = shl i64 %n.vec39, 2
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %vector.ph38
  %index41 = phi i64 [ 0, %vector.ph38 ], [ %index.next42, %vector.body40 ] ; 2 uses
  %i.ab = shl i64 %index41, 2
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.ac, align 4, !tbaa !64
  %index.next42 = add nuw i64 %index41, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next42, %n.vec39
  br i1 %i.ad, label %middle.block43, label %vector.body40, !llvm.loop !1396

middle.block43:                                   ; preds = %vector.body40
  %cmp.n44 = icmp eq i64 %i.y, %n.vec39
  br i1 %cmp.n44, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader53

.lr.ph.i.i.i.i.i.preheader53:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block43
  %.07.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block43 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader53, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader53 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i, align 4, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1397

_ZN7xgboost7RegTree4FVec4InitEm.exit:             ; preds = %.lr.ph.i.i.i.i.i, %middle.block43, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 1, ptr %i.af, align 8, !tbaa !462
  %.pre = load i64, ptr %1, align 8, !tbaa !457
  br label %bb.e

bb.e:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit, %bb.b
  %i.ag = phi ptr [ %i.s, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.j, %bb.b ] ; 10 uses
  %i.ah = phi i64 [ %.pre, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.f, %bb.b ]
  %i.ai = add i64 %i.ah, %.011                    ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !1294  ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.am(ptr noundef nonnull align 8 dereferenceable(56) %i.aj), !inline_history !1398 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1399, !noalias !1400 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1403, !noalias !1400 ; 10 uses
  %i.ar = mul i64 %i.aq, %i.ai
  %i.as = getelementptr [4 x i8], ptr %i.ao, i64 %i.ar ; 5 uses
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.at = shl i64 %i.aq, 2
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %i.au = shl i64 %i.ai, 2
  %i.av = add i64 %i.au, 4
  %i.aw = mul i64 %i.aq, %i.av
  %scevgep22 = getelementptr i8, ptr %i.ao, i64 %i.aw
  %bound0 = icmp ult ptr %i.ag, %scevgep22
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound024 = icmp ult ptr %i.ag, %scevgep23
  %bound125 = icmp ult ptr %i.e, %scevgep
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx = or i1 %found.conflict, %found.conflict26
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, -4                      ; 3 uses
  %i.ax = load float, ptr %i.e, align 8, !tbaa !1296, !alias.scope !1404
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.ax, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue34, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue34 ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %predphi, %pred.store.continue34 ]
  %vec.phi27 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %predphi35, %pred.store.continue34 ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %wide.load = load <2 x float>, ptr %i.ay, align 4, !tbaa !64, !alias.scope !1407, !noalias !1409 ; 4 uses
  %wide.load28 = load <2 x float>, ptr %i.az, align 4, !tbaa !64, !alias.scope !1407, !noalias !1409 ; 4 uses
  %i.ba = fcmp une <2 x float> %broadcast.splat, %wide.load
  %i.bb = fcmp une <2 x float> %broadcast.splat, %wide.load28
  %i.bc = fcmp ord <2 x float> %wide.load, zeroinitializer
  %i.bd = fcmp ord <2 x float> %wide.load28, zeroinitializer
  %.not48 = and <2 x i1> %i.bc, %i.ba             ; 3 uses
  %.not51 = and <2 x i1> %i.bd, %i.bb             ; 3 uses
  %i.be = extractelement <2 x i1> %.not48, i64 0
  br i1 %i.be, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index
  %i.bg = extractelement <2 x float> %wide.load, i64 0
  store float %i.bg, ptr %i.bf, align 4, !tbaa !64, !alias.scope !1412, !noalias !1414
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bh = extractelement <2 x i1> %.not48, i64 1
  br i1 %i.bh, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = extractelement <2 x float> %wide.load, i64 1
  store float %i.bk, ptr %i.bj, align 4, !tbaa !64, !alias.scope !1412, !noalias !1414
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue
  %i.bl = extractelement <2 x i1> %.not51, i64 0
  br i1 %i.bl, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = extractelement <2 x float> %wide.load28, i64 0
  store float %i.bo, ptr %i.bn, align 4, !tbaa !64, !alias.scope !1412, !noalias !1414
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %i.bp = extractelement <2 x i1> %.not51, i64 1
  br i1 %i.bp, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = extractelement <2 x float> %wide.load28, i64 1
  store float %i.bs, ptr %i.br, align 4, !tbaa !64, !alias.scope !1412, !noalias !1414
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %i.bt = zext <2 x i1> %.not48 to <2 x i64>
  %predphi = add <2 x i64> %vec.phi, %i.bt        ; 2 uses
  %i.bu = zext <2 x i1> %.not51 to <2 x i64>
  %predphi35 = add <2 x i64> %vec.phi27, %i.bu    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !1415

middle.block:                                     ; preds = %pred.store.continue34
  %bin.rdx = add <2 x i64> %predphi35, %predphi
  %i.bw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i.preheader52

.lr.ph.i.i.preheader52:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.014.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %i.bw, %middle.block ] ; 3 uses
  %.0913.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0913.i.i.ph, 1
  %xtraiter = and i64 %i.aq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader52
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.0913.i.i.ph
  %i.by = load float, ptr %i.bx, align 4, !tbaa !64, !noalias !1409 ; 3 uses
  %i.bz = load float, ptr %i.e, align 8, !tbaa !1296
  %i.ca = fcmp oeq float %i.bz, %i.by
  %i.cb = fcmp uno float %i.by, 0.000000e+00
  %or.cond.i.i.prol = or i1 %i.cb, %i.ca
  br i1 %or.cond.i.i.prol, label %.lr.ph.i.i.prol.loopexit.unr-lcssa, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.prol
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.0913.i.i.ph
  store float %i.by, ptr %i.cc, align 4, !tbaa !64
  %i.cd = add i64 %.014.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit.unr-lcssa

.lr.ph.i.i.prol.loopexit.unr-lcssa:               ; preds = %bb.f, %.lr.ph.i.i.prol
  %.1.i.i.prol = phi i64 [ %.014.i.i.ph, %.lr.ph.i.i.prol ], [ %i.cd, %bb.f ] ; 2 uses
  %i.ce = or disjoint i64 %.0913.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.preheader52
  %.1.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.preheader52 ], [ %.1.i.i.prol, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %.014.i.i.unr = phi i64 [ %.014.i.i.ph, %.lr.ph.i.i.preheader52 ], [ %.1.i.i.prol, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %.0913.i.i.unr = phi i64 [ %.0913.i.i.ph, %.lr.ph.i.i.preheader52 ], [ %i.ce, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %i.cf = icmp eq i64 %i.aq, %.neg
  br i1 %i.cf, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.i
  %.014.i.i = phi i64 [ %.1.i.i.1, %bb.i ], [ %.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.0913.i.i = phi i64 [ %i.cv, %bb.i ], [ %.0913.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.0913.i.i
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !64, !noalias !1409 ; 3 uses
  %i.ci = load float, ptr %i.e, align 8, !tbaa !1296
  %i.cj = fcmp oeq float %i.ci, %i.ch
  %i.ck = fcmp uno float %i.ch, 0.000000e+00
  %or.cond.i.i = or i1 %i.ck, %i.cj
  br i1 %or.cond.i.i, label %.lr.ph.i.i.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.0913.i.i
  store float %i.ch, ptr %i.cl, align 4, !tbaa !64
  %i.cm = add i64 %.014.i.i, 1
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.g, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %.014.i.i, %.lr.ph.i.i ], [ %i.cm, %bb.g ] ; 2 uses
  %i.cn = add nuw i64 %.0913.i.i, 1               ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !64, !noalias !1409 ; 3 uses
  %i.cq = load float, ptr %i.e, align 8, !tbaa !1296
  %i.cr = fcmp oeq float %i.cq, %i.cp
  %i.cs = fcmp uno float %i.cp, 0.000000e+00
  %or.cond.i.i.1 = or i1 %i.cs, %i.cr
  br i1 %or.cond.i.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.1
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cn
  store float %i.cp, ptr %i.ct, align 4, !tbaa !64
  %i.cu = add i64 %.1.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.1
  %.1.i.i.1 = phi i64 [ %.1.i.i, %.lr.ph.i.i.1 ], [ %i.cu, %bb.h ] ; 2 uses
  %i.cv = add nuw i64 %.0913.i.i, 2               ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.cv, %i.aq
  br i1 %exitcond.not.i.i.1, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i, !llvm.loop !1416

_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %bb.i, %middle.block, %bb.e
  %.09.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %i.bw, %middle.block ], [ %.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.1.i.i.1, %bb.i ]
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !173
  %i.cx = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 2
  %i.dc = icmp ne i64 %.09.lcssa.i.i, %i.db
  %i.dd = zext i1 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 %i.dd, ptr %i.de, align 8, !tbaa !462
  %i.df = add nuw i64 %.011, 1                    ; 2 uses
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !455
  %i.dh = load i64, ptr %1, align 8, !tbaa !457   ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = icmp ult i64 %i.df, %i.di
  br i1 %i.dj, label %bb.b, label %._crit_edge, !llvm.loop !1417
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt3any17_Manager_externalISt10shared_ptrIN7xgboost4data12ArrayAdapterEEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 noundef %0, ptr noundef %1, ptr noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 7 uses
  switch i32 %0, label %bb.q [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.h
    i32 4, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !26
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  store ptr @_ZTISt10shared_ptrIN7xgboost4data12ArrayAdapterEE, ptr %2, align 8, !tbaa !26
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !326  ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !58
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !58
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7xgboost4data12ArrayAdapterEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %i.g, align 4, !tbaa !80
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !80
  br label %_ZNSt10shared_ptrIN7xgboost4data12ArrayAdapterEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost4data12ArrayAdapterEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7xgboost4data12ArrayAdapterEEC2ERKS3_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.l = load ptr, ptr %2, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.c, ptr %i.m, align 8, !tbaa !26
  %i.n = load ptr, ptr %1, align 8, !tbaa !143
  %i.o = load ptr, ptr %2, align 8, !tbaa !26
  store ptr %i.n, ptr %i.o, align 8, !tbaa !143
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.p = icmp eq ptr %i.b, null
  br i1 %i.p, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !326  ; 8 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost4data12ArrayAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.s, align 8, !tbaa !327
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !329
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #18, !inline_history !1274
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #18, !inline_history !1274
  br label %_ZNSt12__shared_ptrIN7xgboost4data12ArrayAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i14 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i14, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !80
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.m ], [ %i.af, %bb.n ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.o, label %_ZNSt12__shared_ptrIN7xgboost4data12ArrayAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !179

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #18
  br label %_ZNSt12__shared_ptrIN7xgboost4data12ArrayAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost4data12ArrayAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #34
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr %2, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.b, ptr %i.ai, align 8, !tbaa !26
  %i.aj = load ptr, ptr %1, align 8, !tbaa !143
  %i.ak = load ptr, ptr %2, align 8, !tbaa !26
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !143
  store ptr null, ptr %1, align 8, !tbaa !143
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %_ZNSt12__shared_ptrIN7xgboost4data12ArrayAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p, %_ZNSt10shared_ptrIN7xgboost4data12ArrayAdapterEEC2ERKS3_.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor17CheckProxyDMatrixINS_4data12ArrayAdapterEEEvSt10shared_ptrIT_EPKNS2_12DMatrixProxyEPKNS_17LearnerModelParamE(ptr noundef align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.e, !prof !179

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.f = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.f, ptr noundef nonnull @.str.65, i32 noundef 15)
  %i.g = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.59, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.af

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.ae

end_hunk_2
begin_hunk_3_@_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_ENKUlSV_E_clImEEDaSV_:bb.a
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1449, !nonnull !146
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !78, !range !145, !noundef !146
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1450, !nonnull !146, !align !335
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.y, i64 noundef %i.z, i64 %i.o, ptr %.val.i, i64 noundef %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i1 noundef zeroext %i.aj, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.al)
  br i1 %i.q, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.bd, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !173 ; 3 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !59 ; 5 uses
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
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.az, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1451

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.i.preheader8:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader8 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1452

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i8 1, ptr %i.bc, align 8, !tbaa !462
  %i.bd = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.o
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i, !llvm.loop !1453

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i64 %3, ptr %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !455
  %i.c = load i64, ptr %1, align 8, !tbaa !457    ; 2 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !173  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !59   ; 4 uses
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
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !62
  %.pre2.i = load ptr, ptr %i.h, align 8, !tbaa !62
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
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.ac, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1454

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader86

.lr.ph.i.i.i.i.i.preheader86:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader86, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader86 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i, align 4, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1455

_ZN7xgboost7RegTree4FVec4InitEm.exit:             ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 1, ptr %i.af, align 8, !tbaa !462
  %.pre = load i64, ptr %1, align 8, !tbaa !457
  br label %bb.e

bb.e:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit, %bb.b
  %i.ag = phi ptr [ %i.s, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.j, %bb.b ]
  %i.ah = phi i64 [ %.pre, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.f, %bb.b ]
  %i.ai = load ptr, ptr %0, align 8, !tbaa !1298  ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef nonnull align 8 dereferenceable(72) ptr %i.al(ptr noundef nonnull align 8 dereferenceable(160) %i.ai), !inline_history !1456 ; 5 uses
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
  %.013.i.i = phi i64 [ %.1.i.i, %bb.s ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.0912.i.i = phi i64 [ %i.cg, %bb.s ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.au = mul i64 %.0912.i.i, %.sroa.14.0.copyload ; 11 uses
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
  %i.aw = load float, ptr %i.av, align 4, !tbaa !64, !noalias !1457
  br label %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit

bb.g:                                             ; preds = %.lr.ph.i.i.split
  %i.ax = getelementptr [8 x i8], ptr %i.ap, i64 %i.au
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !1460, !noalias !1457
  %i.az = fptrunc double %i.ay to float
  br label %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit

bb.h:                                             ; preds = %.lr.ph.i.i.split
  %i.ba = getelementptr [16 x i8], ptr %i.at, i64 %i.au
  %i.bb = load x86_fp80, ptr %i.ba, align 16, !tbaa !1461, !noalias !1457
  %i.bc = fptrunc x86_fp80 %i.bb to float
  br label %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit

bb.i:                                             ; preds = %.lr.ph.i.i.split
  %i.bd = getelementptr i8, ptr %i.as, i64 %i.au
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !26, !noalias !1457
  %i.bf = sitofp i8 %i.be to float
  br label %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit

bb.j:                                             ; preds = %.lr.ph.i.i.split
  %i.bg = getelementptr [2 x i8], ptr %i.ar, i64 %i.au
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !744, !noalias !1457
  %i.bi = sitofp i16 %i.bh to float
  br label %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit

bb.k:                                             ; preds = %.lr.ph.i.i.split
  %i.bj = getelementptr [4 x i8], ptr %i.aq, i64 %i.au
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !80, !noalias !1457
  %i.bl = sitofp i32 %i.bk to float
  br label %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit

bb.l:                                             ; preds = %.lr.ph.i.i.split
  %i.bm = getelementptr [8 x i8], ptr %i.ap, i64 %i.au
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !47, !noalias !1457
  %i.bo = sitofp i64 %i.bn to float
  br label %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit

bb.m:                                             ; preds = %.lr.ph.i.i.split
  %i.bp = getelementptr i8, ptr %i.as, i64 %i.au
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !26, !noalias !1457
  %i.br = uitofp i8 %i.bq to float
  br label %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit

bb.n:                                             ; preds = %.lr.ph.i.i.split
  %i.bs = getelementptr [2 x i8], ptr %i.ar, i64 %i.au
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !744, !noalias !1457
  %i.bu = uitofp i16 %i.bt to float
  br label %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit

bb.o:                                             ; preds = %.lr.ph.i.i.split
  %i.bv = getelementptr [4 x i8], ptr %i.aq, i64 %i.au
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !80, !noalias !1457
  %i.bx = uitofp i32 %i.bw to float
  br label %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit

bb.p:                                             ; preds = %.lr.ph.i.i.split
  %i.by = getelementptr [8 x i8], ptr %i.ap, i64 %i.au
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !47, !noalias !1457
  %i.ca = uitofp i64 %i.bz to float
  br label %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit

bb.q:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZSt9terminatev() #35, !noalias !1457
  unreachable

_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i = phi float [ %i.aw, %bb.f ], [ %i.az, %bb.g ], [ %i.bc, %bb.h ], [ %i.bf, %bb.i ], [ %i.bi, %bb.j ], [ %i.bl, %bb.k ], [ %i.bo, %bb.l ], [ %i.br, %bb.m ], [ %i.bu, %bb.n ], [ %i.bx, %bb.o ], [ %i.ca, %bb.p ] ; 3 uses
  %i.cb = load float, ptr %i.e, align 8, !tbaa !1300
  %i.cc = fcmp oeq float %i.cb, %.0.i
  %i.cd = fcmp uno float %.0.i, 0.000000e+00
  %or.cond.i.i = or i1 %i.cd, %i.cc
  br i1 %or.cond.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.0912.i.i
  store float %.0.i, ptr %i.ce, align 4, !tbaa !64
  %i.cf = add i64 %.013.i.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit
  %.1.i.i = phi i64 [ %.013.i.i, %_ZNK7xgboost14ArrayInterfaceILi2ELb0EE12DispatchCallIZNKS1_clIfJRKmRmEEET_DpOT0_EUlPKS7_E_EEDcS7_.exit ], [ %i.cf, %bb.r ] ; 2 uses
  %i.cg = add nuw i64 %.0912.i.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %.sroa.2563.0.copyload
  br i1 %exitcond.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i.split, !llvm.loop !1463

_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12ArrayAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit: ; preds = %bb.s, %bb.e
  %.09.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %.1.i.i, %bb.s ]
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !173
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 2
  %i.cn = icmp ne i64 %.09.lcssa.i.i, %i.cm
  %i.co = zext i1 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 %i.co, ptr %i.cp, align 8, !tbaa !462
  %i.cq = add nuw i64 %.077, 1                    ; 2 uses
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !455
  %i.cs = load i64, ptr %1, align 8, !tbaa !457   ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = icmp ult i64 %i.cq, %i.ct
  br i1 %i.cu, label %bb.b, label %._crit_edge, !llvm.loop !1464
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt3any17_Manager_externalISt10shared_ptrIN7xgboost4data15CSRArrayAdapterEEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 noundef %0, ptr noundef %1, ptr noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 7 uses
  switch i32 %0, label %bb.q [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.h
    i32 4, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !26
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  store ptr @_ZTISt10shared_ptrIN7xgboost4data15CSRArrayAdapterEE, ptr %2, align 8, !tbaa !26
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !326  ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !58
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !58
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7xgboost4data15CSRArrayAdapterEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %i.g, align 4, !tbaa !80
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !80
  br label %_ZNSt10shared_ptrIN7xgboost4data15CSRArrayAdapterEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost4data15CSRArrayAdapterEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7xgboost4data15CSRArrayAdapterEEC2ERKS3_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.l = load ptr, ptr %2, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.c, ptr %i.m, align 8, !tbaa !26
  %i.n = load ptr, ptr %1, align 8, !tbaa !143
  %i.o = load ptr, ptr %2, align 8, !tbaa !26
  store ptr %i.n, ptr %i.o, align 8, !tbaa !143
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.p = icmp eq ptr %i.b, null
  br i1 %i.p, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !326  ; 8 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost4data15CSRArrayAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.s, align 8, !tbaa !327
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !329
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #18, !inline_history !1281
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #18, !inline_history !1281
  br label %_ZNSt12__shared_ptrIN7xgboost4data15CSRArrayAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i14 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i14, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !80
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.m ], [ %i.af, %bb.n ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.o, label %_ZNSt12__shared_ptrIN7xgboost4data15CSRArrayAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !179

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #18
  br label %_ZNSt12__shared_ptrIN7xgboost4data15CSRArrayAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost4data15CSRArrayAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #34
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr %2, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.b, ptr %i.ai, align 8, !tbaa !26
  %i.aj = load ptr, ptr %1, align 8, !tbaa !143
  %i.ak = load ptr, ptr %2, align 8, !tbaa !26
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !143
  store ptr null, ptr %1, align 8, !tbaa !143
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %_ZNSt12__shared_ptrIN7xgboost4data15CSRArrayAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p, %_ZNSt10shared_ptrIN7xgboost4data15CSRArrayAdapterEEC2ERKS3_.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor17CheckProxyDMatrixINS_4data15CSRArrayAdapterEEEvSt10shared_ptrIT_EPKNS2_12DMatrixProxyEPKNS_17LearnerModelParamE(ptr noundef align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.e, !prof !179

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.f = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.f, ptr noundef nonnull @.str.65, i32 noundef 15)
  %i.g = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.59, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.af

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.ae

end_hunk_3
begin_hunk_4_@_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_ENKUlSV_E_clImEEDaSV_:bb.a
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.z, i64 noundef %i.aj)
  %.pre.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !62
  %.pre2.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !62
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
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.av, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1501

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader34

.lr.ph.i.i.i.i.i.i.i.preheader34:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader34, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader34 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ak
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1502

_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 1, ptr %i.ay, align 8, !tbaa !462
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !457
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, %bb.e
  %i.az = phi ptr [ %i.al, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.ac, %bb.e ]
  %i.ba = phi i64 [ %.pre.i.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.y, %bb.e ]
  %i.bb = add i64 %i.ba, %.011.i.i
  %i.bc = call noundef i64 @_ZNK7xgboost9predictor11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(13) %i.t, i64 noundef %i.bb, ptr noundef %i.az)
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !173
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  %i.bj = icmp ne i64 %i.bc, %i.bi
  %i.bk = zext i1 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 %i.bk, ptr %i.bl, align 8, !tbaa !462
  %i.bm = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.bn = load i64, ptr %i.e, align 8, !tbaa !455
  %i.bo = load i64, ptr %1, align 8, !tbaa !457   ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, !llvm.loop !1503

_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i: ; preds = %bb.h, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  %.pre-phi.i = phi i64 [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ], [ %i.bp, %bb.h ]
  %i.br = phi i64 [ %i.f, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ], [ %i.bo, %bb.h ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1504, !nonnull !146, !align !335
  %i.bu = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1505, !nonnull !146, !align !335
  %i.bw = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1506, !nonnull !146, !align !335
  %i.by = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1507, !nonnull !146
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !78, !range !145, !noundef !146
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1508, !nonnull !146, !align !335
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.bt, i64 noundef %i.br, i64 %i.o, ptr %.val.i, i64 noundef %.pre-phi.i, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i1 noundef zeroext %i.cb, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.cd)
  br i1 %i.q, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.cv, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !173 ; 3 uses
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !59 ; 5 uses
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
  store <4 x float> splat (float +qnan), ptr %next.gep28, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.cr, align 4, !tbaa !64
  %index.next29 = add nuw i64 %index27, 8         ; 2 uses
  %i.cs = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.cs, label %middle.block30, label %vector.body26, !llvm.loop !1509

middle.block30:                                   ; preds = %vector.body26
  %cmp.n31 = icmp eq i64 %i.cn, %n.vec25
  br i1 %cmp.n31, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.i.preheader33:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block30
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cp, %middle.block30 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.ct = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.cg
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1510

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block30, %.lr.ph.i14.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i8 1, ptr %i.cu, align 8, !tbaa !462
  %i.cv = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cv, %i.o
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i14.i, !llvm.loop !1511

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7xgboost9predictor11AdapterViewINS_4data15CSRArrayAdapterENS_12NoOpAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(13) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1302   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(172) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(368) %i.a) ; 10 uses
  %i.f = tail call noundef i64 @_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_(ptr noundef nonnull align 8 dereferenceable(172) %i.e, ptr nonnull align 8 dereferenceable(172) %i.e, i64 %1), !noalias !1512 ; 3 uses
  %i.g = add i64 %1, 1
  %i.h = tail call noundef i64 @_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_(ptr noundef nonnull align 8 dereferenceable(172) %i.e, ptr nonnull align 8 dereferenceable(172) %i.e, i64 %i.g), !noalias !1512 ; 2 uses
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.45.0.copyload.i = load i64, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !26, !noalias !1512 ; 2 uses
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
  %.062 = phi i64 [ %.1, %bb.aa ], [ 0, %.lr.ph ] ; 2 uses
  %.0961 = phi i64 [ %i.co, %bb.aa ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = add i64 %.0961, %i.i                     ; 12 uses
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
  %i.o = load float, ptr %i.n, align 4, !tbaa !64, !noalias !1515
  %i.p = fptoui float %i.o to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.c:                                             ; preds = %.lr.ph.split
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.r = load double, ptr %i.q, align 8, !tbaa !1460, !noalias !1515
  %i.s = fptoui double %i.r to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.u = load x86_fp80, ptr %i.t, align 16, !tbaa !1461, !noalias !1515
  %i.v = fptoui x86_fp80 %i.u to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.e:                                             ; preds = %.lr.ph.split
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.16.32.copyload, i64 %i.m
  %i.x = load i8, ptr %i.w, align 1, !tbaa !26, !noalias !1515
  %i.y = sext i8 %i.x to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.f:                                             ; preds = %.lr.ph.split
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !744, !noalias !1515
  %i.ab = sext i16 %i.aa to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.g:                                             ; preds = %.lr.ph.split
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !80, !noalias !1515
  %i.ae = sext i32 %i.ad to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.h:                                             ; preds = %.lr.ph.split
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !47, !noalias !1515
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.i:                                             ; preds = %.lr.ph.split
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.16.32.copyload, i64 %i.m
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !26, !noalias !1515
  %i.aj = zext i8 %i.ai to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.j:                                             ; preds = %.lr.ph.split
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !744, !noalias !1515
  %i.am = zext i16 %i.al to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.k:                                             ; preds = %.lr.ph.split
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !80, !noalias !1515
  %i.ap = zext i32 %i.ao to i64
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.l:                                             ; preds = %.lr.ph.split
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.16.32.copyload, i64 %i.m
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !47, !noalias !1515
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit

bb.m:                                             ; preds = %.lr.ph
  tail call void @_ZSt9terminatev() #35, !noalias !1515
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
  %i.au = load float, ptr %i.at, align 4, !tbaa !64, !noalias !1515
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit

bb.o:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit
  %i.av = mul i64 %i.l, %.sroa.30.56.copyload
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.43.88.copyload, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !1460, !noalias !1515
  %i.ay = fptrunc double %i.ax to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit

bb.p:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit
  %i.az = mul i64 %i.l, %.sroa.30.56.copyload
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.88.copyload, i64 %i.az
  %i.bb = load x86_fp80, ptr %i.ba, align 16, !tbaa !1461, !noalias !1515
  %i.bc = fptrunc x86_fp80 %i.bb to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit

bb.q:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit
  %i.bd = mul i64 %i.l, %.sroa.30.56.copyload
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.43.88.copyload, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !26, !noalias !1515
  %i.bg = sitofp i8 %i.bf to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit

bb.r:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit
  %i.bh = mul i64 %i.l, %.sroa.30.56.copyload
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.88.copyload, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !744, !noalias !1515
  %i.bk = sitofp i16 %i.bj to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit

bb.s:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit
  %i.bl = mul i64 %i.l, %.sroa.30.56.copyload
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.88.copyload, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !80, !noalias !1515
  %i.bo = sitofp i32 %i.bn to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit

bb.t:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit
  %i.bp = mul i64 %i.l, %.sroa.30.56.copyload
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.43.88.copyload, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !47, !noalias !1515
  %i.bs = sitofp i64 %i.br to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit

bb.u:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit
  %i.bt = mul i64 %i.l, %.sroa.30.56.copyload
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.43.88.copyload, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !26, !noalias !1515
  %i.bw = uitofp i8 %i.bv to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit

bb.v:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit
  %i.bx = mul i64 %i.l, %.sroa.30.56.copyload
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.88.copyload, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !744, !noalias !1515
  %i.ca = uitofp i16 %i.bz to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit

bb.w:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit
  %i.cb = mul i64 %i.l, %.sroa.30.56.copyload
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.88.copyload, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !80, !noalias !1515
  %i.ce = uitofp i32 %i.cd to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit

bb.x:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit
  %i.cf = mul i64 %i.l, %.sroa.30.56.copyload
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.43.88.copyload, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !47, !noalias !1515
  %i.ci = uitofp i64 %i.ch to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit

bb.y:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_.exit
  tail call void @_ZSt9terminatev() #35, !noalias !1515
  unreachable

_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit: ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.0.i = phi float [ %i.au, %bb.n ], [ %i.ay, %bb.o ], [ %i.bc, %bb.p ], [ %i.bg, %bb.q ], [ %i.bk, %bb.r ], [ %i.bo, %bb.s ], [ %i.bs, %bb.t ], [ %i.bw, %bb.u ], [ %i.ca, %bb.v ], [ %i.ce, %bb.w ], [ %i.ci, %bb.x ] ; 3 uses
  %i.cj = load float, ptr %i.k, align 8, !tbaa !1304
  %i.ck = fcmp oeq float %i.cj, %.0.i
  %i.cl = fcmp uno float %.0.i, 0.000000e+00
  %or.cond = or i1 %i.cl, %i.ck
  br i1 %or.cond, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0.i11
  store float %.0.i, ptr %i.cm, align 4, !tbaa !64
  %i.cn = add i64 %.062, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit
  %.1 = phi i64 [ %.062, %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJmEEET_DpOT0_EUlPKS4_E_EEDcS4_.exit ], [ %i.cn, %bb.z ] ; 2 uses
  %i.co = add nuw i64 %.0961, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.co, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1518
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clImJRmEEET_DpOT0_EUlPKS5_E_EEDcS5_(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr %1, i64 %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1519
  switch i8 %i.b, label %bb.m [
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
    i8 11, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1520
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47
  %i.g = mul i64 %i.f, %2
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !64
  %i.j = fptoui float %i.i to i64
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1520
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47
  %i.o = mul i64 %i.n, %2
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.o
  %i.q = load double, ptr %i.p, align 8, !tbaa !1460
  %i.r = fptoui double %i.q to i64
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1520
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !47
  %i.w = mul i64 %i.v, %2
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.w
  %i.y = load x86_fp80, ptr %i.x, align 16, !tbaa !1461
  %i.z = fptoui x86_fp80 %i.y to i64
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1520
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !47
  %i.ae = mul i64 %i.ad, %2
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !26
  %i.ah = sext i8 %i.ag to i64
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1520
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !47
  %i.am = mul i64 %i.al, %2
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !744
  %i.ap = sext i16 %i.ao to i64
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1520
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !47
  %i.au = mul i64 %i.at, %2
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !80
  %i.ax = sext i32 %i.aw to i64
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1520
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !47
  %i.bc = mul i64 %i.bb, %2
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !47
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1520
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !47
  %i.bj = mul i64 %i.bi, %2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !26
  %i.bm = zext i8 %i.bl to i64
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1520
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !47
  %i.br = mul i64 %i.bq, %2
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !744
  %i.bu = zext i16 %i.bt to i64
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1520
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !47
  %i.bz = mul i64 %i.by, %2
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !80
  %i.cc = zext i32 %i.cb to i64
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1520
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.ch = mul i64 %i.cg, %2
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !47
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #35
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.j, %bb.b ], [ %i.r, %bb.c ], [ %i.z, %bb.d ], [ %i.ah, %bb.e ], [ %i.ap, %bb.f ], [ %i.ax, %bb.g ], [ %i.be, %bb.h ], [ %i.bm, %bb.i ], [ %i.bu, %bb.j ], [ %i.cc, %bb.k ], [ %i.cj, %bb.l ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt3any17_Manager_externalISt10shared_ptrIN7xgboost4data15ColumnarAdapterEEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 noundef %0, ptr noundef %1, ptr noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 7 uses
  switch i32 %0, label %bb.q [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.h
    i32 4, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !26
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  store ptr @_ZTISt10shared_ptrIN7xgboost4data15ColumnarAdapterEE, ptr %2, align 8, !tbaa !26
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !326  ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !58
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !58
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7xgboost4data15ColumnarAdapterEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %i.g, align 4, !tbaa !80
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !80
  br label %_ZNSt10shared_ptrIN7xgboost4data15ColumnarAdapterEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost4data15ColumnarAdapterEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7xgboost4data15ColumnarAdapterEEC2ERKS3_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.l = load ptr, ptr %2, align 8, !tbaa !26
end_hunk_4
begin_hunk_5_@_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_ENKUlSV_E_clImEEDaSV_:bb.a
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1556, !nonnull !146, !align !335
  %i.ae = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1557, !nonnull !146, !align !335
  %i.ag = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1558, !nonnull !146
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !78, !range !145, !noundef !146
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1559, !nonnull !146, !align !335
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.y, i64 noundef %i.z, i64 %i.o, ptr %.val.i, i64 noundef %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i1 noundef zeroext %i.aj, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.al)
  br i1 %i.q, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.bd, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !173 ; 3 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !59 ; 5 uses
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
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.az, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1560

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.i.preheader8:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader8 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1561

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i8 1, ptr %i.bc, align 8, !tbaa !462
  %i.bd = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.o
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i, !llvm.loop !1562

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i64 %3, ptr %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !455
  %i.c = load i64, ptr %1, align 8, !tbaa !457    ; 2 uses
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !173  ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !59   ; 4 uses
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
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !62
  %.pre2.i = load ptr, ptr %i.k, align 8, !tbaa !62
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
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.af, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1563

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader34

.lr.ph.i.i.i.i.i.preheader34:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader34, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader34 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i, align 4, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1564

_ZN7xgboost7RegTree4FVec4InitEm.exit:             ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 1, ptr %i.ai, align 8, !tbaa !462
  %.pre = load i64, ptr %1, align 8, !tbaa !457
  br label %bb.e

bb.e:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit, %bb.b
  %i.aj = phi ptr [ %i.v, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.m, %bb.b ]
  %i.ak = phi i64 [ %.pre, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.i, %bb.b ]
  %i.al = add i64 %i.ak, %.013                    ; 13 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !1318  ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef nonnull align 8 dereferenceable(17) ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(160) %i.am), !inline_history !1565 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1566 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = lshr i64 %i.al, 3
  %i.au = and i64 %i.al, 7
  %i.av = shl nuw nsw i64 1, %i.au
  %i.aw = trunc nuw i64 %i.av to i8
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !1568, !noalias !1569
  br label %bb.f

bb.f:                                             ; preds = %.thread.i.i, %.lr.ph.i.i
  %.017.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %.thread.i.i ] ; 3 uses
  %.0916.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gh, %.thread.i.i ] ; 6 uses
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.ax, i64 %.0916.i.i ; 24 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1572, !noalias !1569 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.at
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !26, !noalias !1569
  %i.bd = and i8 %i.bc, %i.aw
  %.not.i.i.i11 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i11, label %.thread.i.i, label %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i

_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i: ; preds = %bb.g, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 49
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !1519, !noalias !1569
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
    i8 10, label %bb.q
    i8 11, label %bb.r
  ]

bb.h:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i, %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1520, !noalias !1569
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !47, !noalias !1569
  %i.bk = mul i64 %i.bj, %i.al
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !64, !noalias !1569
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.i:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1520, !noalias !1569
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !47, !noalias !1569
  %i.br = mul i64 %i.bq, %i.al
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !1460, !noalias !1569
  %i.bu = fptrunc double %i.bt to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.j:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1520, !noalias !1569
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !47, !noalias !1569
  %i.bz = mul i64 %i.by, %i.al
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = load x86_fp80, ptr %i.ca, align 16, !tbaa !1461, !noalias !1569
  %i.cc = fptrunc x86_fp80 %i.cb to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.k:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1520, !noalias !1569
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !47, !noalias !1569
  %i.ch = mul i64 %i.cg, %i.al
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !26, !noalias !1569
  %i.ck = sitofp i8 %i.cj to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.l:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1520, !noalias !1569
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !47, !noalias !1569
  %i.cp = mul i64 %i.co, %i.al
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !744, !noalias !1569
  %i.cs = sitofp i16 %i.cr to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.m:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1520, !noalias !1569
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !47, !noalias !1569
  %i.cx = mul i64 %i.cw, %i.al
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !80, !noalias !1569
  %i.da = sitofp i32 %i.cz to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.n:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1520, !noalias !1569
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !47, !noalias !1569
  %i.df = mul i64 %i.de, %i.al
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !47, !noalias !1569
  %i.di = sitofp i64 %i.dh to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.o:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1520, !noalias !1569
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !47, !noalias !1569
  %i.dn = mul i64 %i.dm, %i.al
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !26, !noalias !1569
  %i.dq = uitofp i8 %i.dp to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.p:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1520, !noalias !1569
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !47, !noalias !1569
  %i.dv = mul i64 %i.du, %i.al
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !744, !noalias !1569
  %i.dy = uitofp i16 %i.dx to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.q:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1520, !noalias !1569
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !47, !noalias !1569
  %i.ed = mul i64 %i.ec, %i.al
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !80, !noalias !1569
  %i.eg = uitofp i32 %i.ef to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.r:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1520, !noalias !1569
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !47, !noalias !1569
  %i.el = mul i64 %i.ek, %i.al
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !47, !noalias !1569
  %i.eo = uitofp i64 %i.en to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.s:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  tail call void @_ZSt9terminatev() #35, !noalias !1569
  unreachable

_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i = phi float [ %i.bm, %bb.h ], [ %i.bu, %bb.i ], [ %i.cc, %bb.j ], [ %i.ck, %bb.k ], [ %i.cs, %bb.l ], [ %i.da, %bb.m ], [ %i.di, %bb.n ], [ %i.dq, %bb.o ], [ %i.dy, %bb.p ], [ %i.eg, %bb.q ], [ %i.eo, %bb.r ] ; 6 uses
  %i.ep = load float, ptr %i.e, align 8, !tbaa !1320
  %i.eq = fcmp oeq float %i.ep, %.0.i
  %i.er = fcmp uno float %.0.i, 0.000000e+00
  %or.cond.i.i = or i1 %i.er, %i.eq
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit
  %i.es = load i64, ptr %i.f, align 8, !tbaa !645 ; 3 uses
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %_ZNK7xgboost11CatAccessorclIfmEET_S2_T0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eu = icmp ult i64 %.0916.i.i, %i.es
  br i1 %i.eu, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i, label %bb.v, !prof !63

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i: ; preds = %bb.u
  %i.ev = load ptr, ptr %i.h, align 8, !tbaa !652 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.0916.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !80 ; 2 uses
  %i.ey = sext i32 %i.ex to i64                   ; 7 uses
  %i.ez = add nuw i64 %.0916.i.i, 1               ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.es
  br i1 %i.fa, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit4.i.i, label %bb.w, !prof !63

bb.w:                                             ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit4.i.i: ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ez
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !80
  %i.fd = sub nsw i32 %i.fc, %i.ex                ; 3 uses
  %i.fe = icmp eq i32 %i.fd, -1                   ; 2 uses
  br i1 %i.fe, label %.split.i.i.i, label %bb.x

.split.i.i.i:                                     ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit4.i.i
  %i.ff = load i64, ptr %i.g, align 8, !tbaa !645 ; 3 uses
  %.not8.i.i.i = icmp ult i64 %i.ff, %i.ey
  br i1 %.not8.i.i.i, label %bb.y, label %bb.z, !prof !179

bb.x:                                             ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit4.i.i
  %i.fg = sext i32 %i.fd to i64                   ; 2 uses
  %i.fh = add nsw i64 %i.fg, %i.ey
  %i.fi = load i64, ptr %i.g, align 8, !tbaa !645 ; 2 uses
  %.not.i.i.i12 = icmp ugt i64 %i.fh, %i.fi
  br i1 %.not.i.i.i12, label %bb.y, label %bb.aa, !prof !179

bb.y:                                             ; preds = %bb.x, %.split.i.i.i
  tail call void @_ZSt9terminatev() #35
  unreachable

bb.z:                                             ; preds = %.split.i.i.i
  %i.fj = sub nuw i64 %i.ff, %i.ey
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.fk = phi i64 [ %i.ff, %bb.z ], [ %i.fi, %bb.x ] ; 3 uses
  %i.fl = phi i64 [ %i.fj, %bb.z ], [ %i.fg, %bb.x ]
  %i.fm = load ptr, ptr %.in.i.i.i, align 8, !tbaa !652 ; 2 uses
  %i.fn = icmp ne ptr %i.fm, null                 ; 2 uses
  %i.fo = icmp eq i64 %i.fl, 0                    ; 2 uses
  %i.fp = or i1 %i.fo, %i.fn
  br i1 %i.fp, label %_ZNK3enc11MappingViewixEm.exit.i, label %bb.ab, !prof !63

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK3enc11MappingViewixEm.exit.i:                 ; preds = %bb.aa
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.ey
  br i1 %i.fo, label %_ZNK7xgboost11CatAccessorclIfmEET_S2_T0_.exit, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit4.i8.i

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit4.i8.i: ; preds = %_ZNK3enc11MappingViewixEm.exit.i
  br i1 %i.fe, label %.split.i.i13.i, label %bb.ac

.split.i.i13.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit4.i8.i
  %.not8.i.i14.i = icmp ult i64 %i.fk, %i.ey
  br i1 %.not8.i.i14.i, label %bb.ad, label %bb.ae, !prof !179

bb.ac:                                            ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit4.i8.i
  %i.fr = sext i32 %i.fd to i64                   ; 2 uses
  %i.fs = add nsw i64 %i.fr, %i.ey
  %.not.i.i9.i = icmp ugt i64 %i.fs, %i.fk
  br i1 %.not.i.i9.i, label %bb.ad, label %bb.af, !prof !179

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
  br i1 %i.fw, label %_ZNK3enc11MappingViewixEm.exit15.i, label %bb.ag, !prof !63

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
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !80
  %i.ge = sitofp i32 %i.gd to float
  br label %_ZNK7xgboost11CatAccessorclIfmEET_S2_T0_.exit

_ZNK7xgboost11CatAccessorclIfmEET_S2_T0_.exit:    ; preds = %bb.t, %_ZNK3enc11MappingViewixEm.exit.i, %_ZNK3enc11MappingViewixEm.exit15.i, %bb.ah
  %.1.i = phi float [ %.0.i, %_ZNK3enc11MappingViewixEm.exit15.i ], [ %.0.i, %_ZNK3enc11MappingViewixEm.exit.i ], [ %i.ge, %bb.ah ], [ %.0.i, %bb.t ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.0916.i.i
  store float %.1.i, ptr %i.gf, align 4, !tbaa !64
  %i.gg = add i64 %.017.i.i, 1
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %_ZNK7xgboost11CatAccessorclIfmEET_S2_T0_.exit, %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit, %bb.g
  %.1.i.i = phi i64 [ %.017.i.i, %bb.g ], [ %i.gg, %_ZNK7xgboost11CatAccessorclIfmEET_S2_T0_.exit ], [ %.017.i.i, %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit ] ; 2 uses
  %i.gh = add nuw i64 %.0916.i.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.gh, %i.ar
  br i1 %exitcond.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %bb.f, !llvm.loop !1573

_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_11CatAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit: ; preds = %.thread.i.i, %bb.e
  %.09.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %.1.i.i, %.thread.i.i ]
  %i.gi = load ptr, ptr %i.k, align 8, !tbaa !173
  %i.gj = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = ashr exact i64 %i.gm, 2
  %i.go = icmp ne i64 %.09.lcssa.i.i, %i.gn
  %i.gp = zext i1 %i.go to i8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 %i.gp, ptr %i.gq, align 8, !tbaa !462
  %i.gr = add nuw i64 %.013, 1                    ; 2 uses
  %i.gs = load i64, ptr %i.a, align 8, !tbaa !455
  %i.gt = load i64, ptr %1, align 8, !tbaa !457   ; 2 uses
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = icmp ult i64 %i.gr, %i.gu
  br i1 %i.gv, label %bb.b, label %._crit_edge, !llvm.loop !1574
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
  %i.i = load ptr, ptr %0, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1362, !nonnull !146, !align !335 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !1321   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1525 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1525
  %i.s = icmp eq ptr %i.p, %i.r                   ; 2 uses
  br i1 %i.s, label %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !47
  br label %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit

_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.u, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1363, !nonnull !146, !align !335
  %i.x = load i64, ptr %i.w, align 8, !tbaa !47, !noalias !1575 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !173, !noalias !1575 ; 2 uses
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !59, !noalias !1575 ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.af, align 8, !noalias !1575
  %i.ag = icmp eq ptr %i.z, %i.aa
  %i.ah = mul i64 %i.x, %.0.i.i
  %.sink.i.i.i.i = select i1 %i.ag, i64 0, i64 %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1367, !nonnull !146, !align !335 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1368, !nonnull !146, !align !335
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1369, !nonnull !146, !align !333
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !80 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1370, !nonnull !146
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !78, !range !145, !noundef !146
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1371, !nonnull !146, !align !335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !tbaa.struct !1538
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
  store i8 %i.ar, ptr %i.e, align 1, !tbaa !78
  br i1 %i.s, label %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit.thread.i, label %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit.i

_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit.thread.i: ; preds = %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %i.av = load i32, ptr %i.au, align 4, !tbaa !401
  store i32 %i.av, ptr %i.f, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit.i: ; preds = %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !47 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !401
  store i32 %i.az, ptr %i.f, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ba = icmp ugt i64 %i.ax, 1
  br i1 %i.ba, label %bb.c, label %_ZN7xgboost6common11ParallelForIiZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlT_E_EEvSV_iOSA_.exit.i

bb.c:                                             ; preds = %_ZNK7xgboost9predictor11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEE4SizeEv.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 28 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !212 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !206 ; 2 uses
  %i.bf = sub nsw i32 %i.bc, %i.be                ; 2 uses
  %i.bg = sext i32 %i.bf to i64                   ; 4 uses
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
  store i32 0, ptr %i.bl, align 4, !tbaa !80
  %i.bm = add nsw i64 %i.bg, -1                   ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc54.i
  %i.bo = getelementptr i8, ptr %i.bl, i64 4
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.bm, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bo, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !80
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc54.i
  store ptr %i.bl, ptr %18, align 8, !tbaa !181
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bg ; 2 uses
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !180
  store ptr %i.bp, ptr %i.bi, align 8, !tbaa !347
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i, %bb.c
  %i.bq = phi i64 [ %i.bg, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
end_hunk_5
begin_hunk_6_@_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_ENKUlSV_E_clImEEDaSV_:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1594, !nonnull !146, !align !335
  %i.z = load i64, ptr %1, align 8, !tbaa !457    ; 2 uses
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !455
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1595, !nonnull !146, !align !335
  %i.ae = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1596, !nonnull !146, !align !335
  %i.ag = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1597, !nonnull !146
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !78, !range !145, !noundef !146
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1598, !nonnull !146, !align !335
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.y, i64 noundef %i.z, i64 %i.o, ptr %.val.i, i64 noundef %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i1 noundef zeroext %i.aj, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.al)
  br i1 %i.q, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.bd, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !173 ; 3 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !59 ; 5 uses
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
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.az, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1599

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.i.preheader8:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader8 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1600

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i8 1, ptr %i.bc, align 8, !tbaa !462
  %i.bd = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.o
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i, !llvm.loop !1601

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i64 %3, ptr %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !455
  %i.c = load i64, ptr %1, align 8, !tbaa !457    ; 2 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !173  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !59   ; 4 uses
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
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !62
  %.pre2.i = load ptr, ptr %i.h, align 8, !tbaa !62
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
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.ac, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1602

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.preheader23:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i, align 4, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1603

_ZN7xgboost7RegTree4FVec4InitEm.exit:             ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 1, ptr %i.af, align 8, !tbaa !462
  %.pre = load i64, ptr %1, align 8, !tbaa !457
  br label %bb.e

bb.e:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit, %bb.b
  %i.ag = phi ptr [ %i.s, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.j, %bb.b ]
  %i.ah = phi i64 [ %.pre, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.f, %bb.b ]
  %i.ai = add i64 %i.ah, %.012                    ; 13 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !1321  ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef nonnull align 8 dereferenceable(17) ptr %i.am(ptr noundef nonnull align 8 dereferenceable(160) %i.aj), !inline_history !1604 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !1566 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = lshr i64 %i.ai, 3
  %i.ar = and i64 %i.ai, 7
  %i.as = shl nuw nsw i64 1, %i.ar
  %i.at = trunc nuw i64 %i.as to i8
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !1568, !noalias !1605
  br label %bb.f

bb.f:                                             ; preds = %.thread.i.i, %.lr.ph.i.i
  %.018.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %.thread.i.i ] ; 3 uses
  %.0917.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.er, %.thread.i.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw [56 x i8], ptr %i.au, i64 %.0917.i.i ; 24 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1572, !noalias !1605 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !26, !noalias !1605
  %i.ba = and i8 %i.az, %i.at
  %.not.i.i.i11 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i11, label %.thread.i.i, label %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i

_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i: ; preds = %bb.g, %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 49
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !1519, !noalias !1605
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

bb.h:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i, %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1520, !noalias !1605
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !47, !noalias !1605
  %i.bh = mul i64 %i.bg, %i.ai
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !64, !noalias !1605
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.i:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1520, !noalias !1605
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !47, !noalias !1605
  %i.bo = mul i64 %i.bn, %i.ai
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !1460, !noalias !1605
  %i.br = fptrunc double %i.bq to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.j:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1520, !noalias !1605
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !47, !noalias !1605
  %i.bw = mul i64 %i.bv, %i.ai
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bw
  %i.by = load x86_fp80, ptr %i.bx, align 16, !tbaa !1461, !noalias !1605
  %i.bz = fptrunc x86_fp80 %i.by to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.k:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1520, !noalias !1605
  %i.cc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !47, !noalias !1605
  %i.ce = mul i64 %i.cd, %i.ai
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !26, !noalias !1605
  %i.ch = sitofp i8 %i.cg to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.l:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1520, !noalias !1605
  %i.ck = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !47, !noalias !1605
  %i.cm = mul i64 %i.cl, %i.ai
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !744, !noalias !1605
  %i.cp = sitofp i16 %i.co to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.m:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1520, !noalias !1605
  %i.cs = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !47, !noalias !1605
  %i.cu = mul i64 %i.ct, %i.ai
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !80, !noalias !1605
  %i.cx = sitofp i32 %i.cw to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.n:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1520, !noalias !1605
  %i.da = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !47, !noalias !1605
  %i.dc = mul i64 %i.db, %i.ai
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !47, !noalias !1605
  %i.df = sitofp i64 %i.de to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.o:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1520, !noalias !1605
  %i.di = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !47, !noalias !1605
  %i.dk = mul i64 %i.dj, %i.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !26, !noalias !1605
  %i.dn = uitofp i8 %i.dm to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.p:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1520, !noalias !1605
  %i.dq = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !47, !noalias !1605
  %i.ds = mul i64 %i.dr, %i.ai
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !744, !noalias !1605
  %i.dv = uitofp i16 %i.du to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.q:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1520, !noalias !1605
  %i.dy = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !47, !noalias !1605
  %i.ea = mul i64 %i.dz, %i.ai
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !80, !noalias !1605
  %i.ed = uitofp i32 %i.ec to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.r:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1520, !noalias !1605
  %i.eg = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !47, !noalias !1605
  %i.ei = mul i64 %i.eh, %i.ai
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !47, !noalias !1605
  %i.el = uitofp i64 %i.ek to float
  br label %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit

bb.s:                                             ; preds = %_ZNK7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEE4Line10GetElementEm.exit.i.i
  tail call void @_ZSt9terminatev() #35, !noalias !1605
  unreachable

_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i = phi float [ %i.bj, %bb.h ], [ %i.br, %bb.i ], [ %i.bz, %bb.j ], [ %i.ch, %bb.k ], [ %i.cp, %bb.l ], [ %i.cx, %bb.m ], [ %i.df, %bb.n ], [ %i.dn, %bb.o ], [ %i.dv, %bb.p ], [ %i.ed, %bb.q ], [ %i.el, %bb.r ] ; 3 uses
  %i.em = load float, ptr %i.e, align 8, !tbaa !1323
  %i.en = fcmp oeq float %i.em, %.0.i
  %i.eo = fcmp uno float %.0.i, 0.000000e+00
  %or.cond.i.i = or i1 %i.eo, %i.en
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.0917.i.i
  store float %.0.i, ptr %i.ep, align 4, !tbaa !64
  %i.eq = add i64 %.018.i.i, 1
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.t, %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit, %bb.g
  %.1.i.i = phi i64 [ %.018.i.i, %bb.g ], [ %i.eq, %bb.t ], [ %.018.i.i, %_ZNK7xgboost14ArrayInterfaceILi1ELb1EE12DispatchCallIZNKS1_clIfJRKmEEET_DpOT0_EUlPKS6_E_EEDcS6_.exit ] ; 2 uses
  %i.er = add nuw i64 %.0917.i.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.er, %i.ao
  br i1 %exitcond.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %bb.f, !llvm.loop !1608

_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data15ColumnarAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit: ; preds = %.thread.i.i, %bb.e
  %.09.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %.1.i.i, %.thread.i.i ]
  %i.es = load ptr, ptr %i.h, align 8, !tbaa !173
  %i.et = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = ashr exact i64 %i.ew, 2
  %i.ey = icmp ne i64 %.09.lcssa.i.i, %i.ex
  %i.ez = zext i1 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 %i.ez, ptr %i.fa, align 8, !tbaa !462
  %i.fb = add nuw i64 %.012, 1                    ; 2 uses
  %i.fc = load i64, ptr %i.a, align 8, !tbaa !455
  %i.fd = load i64, ptr %1, align 8, !tbaa !457   ; 2 uses
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = icmp ult i64 %i.fb, %i.fe
  br i1 %i.ff, label %bb.b, label %._crit_edge, !llvm.loop !1609
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_ZNS1_13LaunchPredictISF_EEvPKNS_7ContextES5_SC_SE_EUlPKS4_E_EEvSK_S5_SC_SE_OT0_(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %12 = alloca %class.anon.594, align 8           ; 10 uses
  %13 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %14 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %16 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %17 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %19 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %20 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %21 = alloca %class.anon.589, align 8           ; 10 uses
  %22 = alloca %"class.std::shared_ptr.140", align 8 ; 5 uses
  %23 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 3 uses
  %24 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %25 = alloca %"struct.xgboost::BatchParam", align 8 ; 8 uses
  %26 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %27 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %28 = alloca %"class.xgboost::predictor::GHistIndexMatrixView.427", align 8 ; 12 uses
  %29 = alloca %"class.xgboost::BatchSet.174", align 16 ; 7 uses
  %30 = alloca %"class.xgboost::BatchIterator.175", align 16 ; 9 uses
  %31 = alloca %"class.xgboost::BatchIterator.175", align 8 ; 8 uses
  %32 = alloca %"class.xgboost::predictor::SparsePageView.429", align 8 ; 9 uses
  %33 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %34 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %35 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %36 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %37 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %38 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %39 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %40 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %41 = alloca %class.anon.583, align 8           ; 10 uses
  %42 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %43 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %44 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %45 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %46 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %47 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %48 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %49 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %50 = alloca %class.anon.578, align 8           ; 10 uses
  %51 = alloca %"class.std::tuple.184", align 8   ; 6 uses
  %52 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 4 uses
  %53 = alloca %"class.std::shared_ptr.140", align 8 ; 5 uses
  %.sroa.0149.i.i157 = alloca %"struct.enc::MappingView", align 8 ; 6 uses
  %54 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 4 uses
  %55 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %56 = alloca %"struct.xgboost::BatchParam", align 8 ; 8 uses
  %57 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %58 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %59 = alloca %"class.xgboost::predictor::GHistIndexMatrixView", align 8 ; 13 uses
  %60 = alloca %"class.xgboost::BatchSet.174", align 16 ; 7 uses
  %61 = alloca %"class.xgboost::BatchIterator.175", align 16 ; 9 uses
  %62 = alloca %"class.xgboost::BatchIterator.175", align 8 ; 8 uses
  %63 = alloca %"class.xgboost::predictor::SparsePageView", align 8 ; 10 uses
  %64 = alloca %"class.std::shared_ptr.140", align 8 ; 5 uses
  %65 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %66 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %67 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %68 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %69 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %70 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %71 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %72 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %73 = alloca %class.anon.572, align 8           ; 10 uses
  %74 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %75 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %76 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %77 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %78 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %79 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %80 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %81 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %82 = alloca %class.anon.567, align 8           ; 10 uses
  %83 = alloca %"class.std::shared_ptr.140", align 8 ; 5 uses
  %84 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 3 uses
  %85 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %86 = alloca %"struct.xgboost::BatchParam", align 8 ; 8 uses
  %87 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %88 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %89 = alloca %"class.xgboost::predictor::GHistIndexMatrixView.427", align 8 ; 12 uses
  %90 = alloca %"class.xgboost::BatchSet.174", align 16 ; 7 uses
  %91 = alloca %"class.xgboost::BatchIterator.175", align 16 ; 9 uses
  %92 = alloca %"class.xgboost::BatchIterator.175", align 8 ; 8 uses
  %93 = alloca %"class.xgboost::predictor::SparsePageView.429", align 8 ; 9 uses
  %94 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %95 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %96 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %97 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %98 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %99 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %100 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %101 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %102 = alloca %class.anon.561, align 8          ; 10 uses
  %103 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %104 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %105 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %106 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %107 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %108 = alloca %"class.std::unique_ptr", align 8 ; 8 uses
  %109 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %110 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %111 = alloca %class.anon.556, align 8          ; 10 uses
  %112 = alloca %"class.std::tuple.184", align 8  ; 6 uses
  %113 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 4 uses
  %114 = alloca %"class.std::shared_ptr.140", align 8 ; 5 uses
  %.sroa.0149.i.i = alloca %"struct.enc::MappingView", align 8 ; 6 uses
  %115 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 4 uses
  %116 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %117 = alloca %"struct.xgboost::BatchParam", align 8 ; 8 uses
  %118 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %119 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %120 = alloca %"class.xgboost::predictor::GHistIndexMatrixView", align 8 ; 13 uses
  %121 = alloca %"class.xgboost::BatchSet.174", align 16 ; 7 uses
  %122 = alloca %"class.xgboost::BatchIterator.175", align 16 ; 9 uses
  %123 = alloca %"class.xgboost::BatchIterator.175", align 8 ; 8 uses
  %124 = alloca %"class.xgboost::predictor::SparsePageView", align 8 ; 10 uses
  %125 = alloca %"class.std::shared_ptr.140", align 8 ; 5 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !56
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !307
  %i.t = load i64, ptr %i.s, align 8, !tbaa !156
  %i.u = load ptr, ptr %1, align 8, !tbaa !56
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !307
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !204
  %i.z = mul i64 %i.y, %i.t
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = load ptr, ptr %1, align 8, !tbaa !56
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !307
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !205
  %i.af = uitofp i64 %i.ae to double
  %i.ag = uitofp i64 %.sroa.speculated.i to double
  %i.ah = fdiv double %i.af, %i.ag
  %i.ai = fcmp ogt double %i.ah, 1.250000e-01
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !308
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !309
  %.not23 = icmp eq i32 %i.am, 0                  ; 2 uses
  br i1 %i.ai, label %bb.b, label %bb.jr

bb.b:                                             ; preds = %bb.a
  br i1 %.not23, label %bb.ep, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #18
  %i.an = load ptr, ptr %1, align 8, !tbaa !56, !noalias !1610
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
end_hunk_6
begin_hunk_7_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_ZNS1_13LaunchPredictISF_EEvPKNS_7ContextES5_SC_SE_EUlPKS4_E_EEvSK_S5_SC_SE_OT0_:bb.a

bb.du:                                            ; preds = %bb.dp
  %i.og = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.oh = icmp eq i32 %i.ny, %i.og
  br i1 %i.oh, label %bb.dv, label %.body.i.i.i.i83.i.i

bb.dv:                                            ; preds = %bb.du
  %i.oi = call ptr @__cxa_begin_catch(ptr %i.nx) #18 ; 0 uses
  %i.oj = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ke) #18 ; 2 uses
  %.not.i.i10.i.i.i88.i.i = icmp eq i32 %i.oj, 0
  br i1 %.not.i.i10.i.i.i88.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i90.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.oj) #32
          to label %.noexc11.i.i.i89.i.i unwind label %bb.dz

.noexc11.i.i.i89.i.i:                             ; preds = %bb.dw
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i90.i.i: ; preds = %bb.dv
  %i.ok = load ptr, ptr %101, align 8, !tbaa !406
  %.not.i.i.i91.i.i = icmp eq ptr %i.ok, null
  br i1 %.not.i.i.i91.i.i, label %bb.dx, label %.sink.split.i.i.i92.i.i

bb.dx:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i90.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %96) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #18
  %i.ol = load ptr, ptr %96, align 8, !tbaa !406
  store ptr null, ptr %96, align 8, !tbaa !406
  %i.om = load ptr, ptr %101, align 8, !tbaa !406 ; 2 uses
  store ptr %i.om, ptr %94, align 8, !tbaa !406
  store ptr %i.ol, ptr %101, align 8, !tbaa !406
  %.not.i.i13.i.i.i99.i.i = icmp eq ptr %i.om, null
  br i1 %.not.i.i13.i.i.i99.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i104.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i100.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i104.i.i: ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i103.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i100.i.i: ; preds = %bb.dx
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %94) #18
  %.pr20.i.i.i101.i.i = load ptr, ptr %96, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #18
  %.not.i15.i.i.i102.i.i = icmp eq ptr %.pr20.i.i.i101.i.i, null
  br i1 %.not.i15.i.i.i102.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i103.i.i, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i100.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %96) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i103.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i103.i.i: ; preds = %bb.dy, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i100.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i104.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #18
  br label %.sink.split.i.i.i92.i.i

bb.dz:                                            ; preds = %bb.dw
  %i.on = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i83.i.i unwind label %bb.eb

bb.ea:                                            ; preds = %bb.dr
  %i.oo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i83.i.i unwind label %bb.eb

.sink.split.i.i.i92.i.i:                          ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i103.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i90.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i113.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i107.i.i
  %i.op = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ke) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm1EmZZZNKS2_9predictor12CPUPredictor11PredictLeafEPNS2_7DMatrixEPNS2_16HostDeviceVectorIfEERKNS2_3gbm11GBTreeModelEiENKUlOT_E_clINS5_12_GLOBAL__N_112LaunchConfigIJNSK_11BlockPolicyENSK_17EncAccessorPolicyEEEEEEDaSH_ENKUlSH_E_clINS5_14SparsePageViewINS2_11CatAccessorEEEEEDaSH_EUlSH_E_EEvT0_iOT1_EUlSG_E_JmEEEvSG_DpT0_.exit.i.i.i.i unwind label %bb.ec

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.oq = landingpad { ptr, i32 }
          catch ptr null
  %i.or = extractvalue { ptr, i32 } %i.oq, 0
  call void @__clang_call_terminate(ptr %i.or) #35
  unreachable

_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm1EmZZZNKS2_9predictor12CPUPredictor11PredictLeafEPNS2_7DMatrixEPNS2_16HostDeviceVectorIfEERKNS2_3gbm11GBTreeModelEiENKUlOT_E_clINS5_12_GLOBAL__N_112LaunchConfigIJNSK_11BlockPolicyENSK_17EncAccessorPolicyEEEEEEDaSH_ENKUlSH_E_clINS5_14SparsePageViewINS2_11CatAccessorEEEEEDaSH_EUlSH_E_EEvT0_iOT1_EUlSG_E_JmEEEvSG_DpT0_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i92.i.i, %.lr.ph100.i.i.i.i81.i.i
  %i.os = add nuw i64 %.06099.i.i.i.i82.i.i, 1    ; 2 uses
  %exitcond122.not.i.i.i.i93.i.i = icmp eq i64 %i.os, %i.nc
  br i1 %exitcond122.not.i.i.i.i93.i.i, label %bb.ed, label %.lr.ph100.i.i.i.i81.i.i, !llvm.loop !1666

bb.ec:                                            ; preds = %.sink.split.i.i.i92.i.i
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i83.i.i

bb.ed:                                            ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm1EmZZZNKS2_9predictor12CPUPredictor11PredictLeafEPNS2_7DMatrixEPNS2_16HostDeviceVectorIfEERKNS2_3gbm11GBTreeModelEiENKUlOT_E_clINS5_12_GLOBAL__N_112LaunchConfigIJNSK_11BlockPolicyENSK_17EncAccessorPolicyEEEEEEDaSH_ENKUlSH_E_clINS5_14SparsePageViewINS2_11CatAccessorEEEEEDaSH_EUlSH_E_EEvT0_iOT1_EUlSG_E_JmEEEvSG_DpT0_.exit.i.i.i.i
  %.pr84.pr.i.i.i.i94.i.i = load ptr, ptr %101, align 8, !tbaa !406 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %98)
  %.not.i77.i.i.i.i95.i.i = icmp eq ptr %.pr84.pr.i.i.i.i94.i.i, null
  br i1 %.not.i77.i.i.i.i95.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i98.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i96.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i96.i.i: ; preds = %bb.ed
  store ptr %.pr84.pr.i.i.i.i94.i.i, ptr %98, align 8, !tbaa !406
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %98) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %98) #32
          to label %bb.ee unwind label %bb.ef

bb.ee:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i96.i.i
  unreachable

bb.ef:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i96.i.i
  %i.ou = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ov = load ptr, ptr %98, align 8, !tbaa !406
  %.not.i2.i.i.i.i.i97.i.i = icmp eq ptr %i.ov, null
  br i1 %.not.i2.i.i.i.i.i97.i.i, label %.body.i.i.i.i83.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %98) #18
  br label %.body.i.i.i.i83.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i98.i.i:    ; preds = %bb.ed, %.thread.i.i.i115.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %98)
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #18
  br label %.loopexit154.i.i

.body.i.i.i.i83.i.i:                              ; preds = %bb.du, %bb.eg, %bb.ef, %bb.ec, %bb.ea, %bb.dz
  %.pn64.i.i.i.i84.i.i = phi { ptr, i32 } [ %i.ou, %bb.ef ], [ %i.ou, %bb.eg ], [ %i.ot, %bb.ec ], [ %i.on, %bb.dz ], [ %i.oo, %bb.ea ], [ %i.nw, %bb.du ]
  %i.ow = load ptr, ptr %101, align 8, !tbaa !406
  %.not.i.i79.i.i.i.i85.i.i = icmp eq ptr %i.ow, null
  br i1 %.not.i.i79.i.i.i.i85.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i86.i.i, label %bb.eh

bb.eh:                                            ; preds = %.body.i.i.i.i83.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %101) #18
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i86.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i86.i.i:  ; preds = %bb.eh, %.body.i.i.i.i83.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #18
  br label %.body139.i.i

bb.ei:                                            ; preds = %bb.dl
  %i.ox = landingpad { ptr, i32 }
          catch ptr null
  %i.oy = extractvalue { ptr, i32 } %i.ox, 0
  call void @__clang_call_terminate(ptr %i.oy) #35
  unreachable

.loopexit154.i.i:                                 ; preds = %.noexc137.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i98.i.i, %.preheader.i.i.i.i132.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #18
  %i.oz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_10SparsePageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %122)
          to label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i unwind label %bb.de ; 0 uses

bb.ej:                                            ; preds = %bb.df
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

.loopexit.i.i:                                    ; preds = %.lr.ph108.i.i.i.i134.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i.i

.loopexit.split-lp.i.i:                           ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i116.i.i, %.noexc73.i.i, %bb.dg
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i.i

.body139.i.i:                                     ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i86.i.i, %bb.dm
  %eh.lpad-body140.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i119.i.i, %bb.dm ], [ %.pn64.i.i.i.i84.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i86.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #18
  br label %bb.ek

bb.ek:                                            ; preds = %.body139.i.i, %bb.ej, %bb.de
  %.pn26.i.i = phi { ptr, i32 } [ %i.me, %bb.de ], [ %eh.lpad-body140.i.i, %.body139.i.i ], [ %i.pa, %bb.ej ]
  call void @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %123) #18
  br label %.body57.i.i

.body57.i.i:                                      ; preds = %bb.ek, %bb.cj
  %.pn26.pn.i.i = phi { ptr, i32 } [ %.pn26.i.i, %bb.ek ], [ %i.kf, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #18
  call void @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %122) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #18
  call void @_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %121) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #18
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit54.i.i

_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit54.i.i: ; preds = %.body57.i.i, %bb.ce, %bb.cd
  %.pn26.pn.pn.i.i = phi { ptr, i32 } [ %.pn26.pn.i.i, %.body57.i.i ], [ %.pn20.pn.pn.i.i, %bb.cd ], [ %.pn20.pn.pn.i.i, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0149.i.i)
  br label %.body

bb.el:                                            ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i, %bb.au, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0149.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %115)
  %.not.i.i.i.i48 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i48, label %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicyD2Ev.exit, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.pb = ptrtoint ptr %i.cz to i64
  %i.pc = ptrtoint ptr %i.cx to i64
  %i.pd = sub i64 %i.pb, %i.pc
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.pd) #34
  br label %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicyD2Ev.exit

bb.en:                                            ; preds = %bb.cf, %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i, %.noexc43, %bb.q, %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i, %.noexc40, %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i, %.noexc, %bb.j
  %.sroa.010.0.a = phi ptr [ %i.cz, %bb.cf ], [ %i.cz, %.noexc.i.i.i.i ], [ %i.cz, %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.cz, %.noexc43 ], [ %i.cz, %bb.q ], [ %i.cz, %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i ], [ null, %.noexc40 ], [ null, %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i ], [ null, %.noexc ], [ null, %bb.j ]
  %.sroa.1012.0 = phi ptr [ %i.cx, %bb.cf ], [ %i.cx, %.noexc.i.i.i.i ], [ %i.cx, %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.cx, %.noexc43 ], [ %i.cx, %bb.q ], [ %i.cx, %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i ], [ null, %.noexc40 ], [ null, %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i ], [ null, %.noexc ], [ null, %bb.j ]
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit54.i.i, %bb.en
  %.sroa.010.1.a = phi ptr [ %i.cz, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit54.i.i ], [ %.sroa.010.0.a, %bb.en ]
  %.sroa.1012.1 = phi ptr [ %i.cx, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit54.i.i ], [ %.sroa.1012.0, %bb.en ] ; 3 uses
  %eh.lpad-body = phi { ptr, i32 } [ %.pn26.pn.pn.i.i, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit54.i.i ], [ %i.pe, %bb.en ] ; 2 uses
  %.not.i.i.i.i49 = icmp eq ptr %.sroa.1012.1, null
  br i1 %.not.i.i.i.i49, label %common.resume, label %bb.eo

bb.eo:                                            ; preds = %.body
  %i.pf = ptrtoint ptr %.sroa.010.1.a to i64
  %i.pg = ptrtoint ptr %.sroa.1012.1 to i64
  %i.ph = sub i64 %i.pf, %i.pg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.1012.1, i64 noundef %i.ph) #34
  br label %common.resume

bb.ep:                                            ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_EEvPKNS_7ContextES5_SC_SE_ENKUlPKS4_E_clESK_.exit, %bb.b
  %i.pi = load ptr, ptr %3, align 8, !tbaa !1615, !nonnull !146, !align !335 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !1617, !nonnull !146, !align !333 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !1618, !nonnull !146, !align !333 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !1619, !nonnull !146, !align !335 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !1620, !nonnull !146, !align !335 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !1621, !nonnull !146, !align !333 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #18
  %i.pt = load ptr, ptr %1, align 8, !tbaa !56, !noalias !1667
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8, !noalias !1667
  %i.pw = call noundef nonnull align 8 dereferenceable(248) ptr %i.pv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !1667, !inline_history !1670
  call void @_ZNK7xgboost8MetaInfo10CatsSharedEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.140") align 8 %83, ptr noundef nonnull align 8 dereferenceable(248) %i.pw)
  %i.px = load ptr, ptr %83, align 8, !tbaa !324
  %i.py = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !326 ; 8 uses
  %.not.i.i.i.i.i51 = icmp eq ptr %i.pz, null
  br i1 %.not.i.i.i.i.i51, label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i55, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 4 uses
  %i.qb = load atomic i64, ptr %i.qa acquire, align 8 ; 2 uses
  %i.qc = icmp eq i64 %i.qb, 4294967297
  %i.qd = trunc i64 %i.qb to i32                  ; 2 uses
  br i1 %i.qc, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i32 0, ptr %i.qa, align 8, !tbaa !327
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 12
  store i32 0, ptr %i.qe, align 4, !tbaa !329
  %i.qf = load ptr, ptr %i.pz, align 8, !tbaa !56
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.qh = load ptr, ptr %i.qg, align 8
  call void %i.qh(ptr noundef nonnull align 8 dereferenceable(16) %i.pz) #18, !inline_history !1671
  %i.qi = load ptr, ptr %i.pz, align 8, !tbaa !56
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qk = load ptr, ptr %i.qj, align 8
  call void %i.qk(ptr noundef nonnull align 8 dereferenceable(16) %i.pz) #18, !inline_history !1671
  br label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i55

bb.es:                                            ; preds = %bb.eq
  %i.ql = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i.i52 = icmp eq i8 %i.ql, 0
  br i1 %.not.i.i.i.i.i.i52, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.qm = add nsw i32 %i.qd, -1
  store i32 %i.qm, ptr %i.qa, align 8, !tbaa !80
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i53

bb.eu:                                            ; preds = %bb.es
  %i.qn = atomicrmw volatile add ptr %i.qa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i53: ; preds = %bb.eu, %bb.et
  %.0.i.i.i.i.i.i.i54 = phi i32 [ %i.qd, %bb.et ], [ %i.qn, %bb.eu ]
  %i.qo = icmp eq i32 %.0.i.i.i.i.i.i.i54, 1
  br i1 %i.qo, label %bb.ev, label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i55, !prof !179

bb.ev:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pz) #18
  br label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i55

_ZNK7xgboost7DMatrix4CatsEv.exit.i.i55:           ; preds = %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i53, %bb.er, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #18
  call void @_ZNK7xgboost12CatContainer8HostViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.enc::detail::ColumnsViewImpl") align 8 %84, ptr noundef nonnull align 8 dereferenceable(73) %i.px)
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #18
  %i.qp = load ptr, ptr %1, align 8, !tbaa !56
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 136
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = call noundef zeroext i1 %i.qr(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !1672
  br i1 %i.qs, label %bb.hl, label %bb.ew

bb.ew:                                            ; preds = %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i55
  %i.qt = load ptr, ptr %1, align 8, !tbaa !56
  %i.qu = load ptr, ptr %i.qt, align 8
  %i.qv = call noundef nonnull align 8 dereferenceable(248) ptr %i.qu(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !1673
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 184
  %i.qx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_11FeatureTypeEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qw) ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 8 ; 2 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !349 ; 2 uses
  %i.ra = load ptr, ptr %i.qx, align 8, !tbaa !351 ; 3 uses
  %i.rb = ptrtoint ptr %i.qz to i64               ; 2 uses
  %i.rc = ptrtoint ptr %i.ra to i64               ; 2 uses
  %i.rd = sub i64 %i.rb, %i.rc                    ; 4 uses
  %.not.i.i.i.i30.i.i56 = icmp eq ptr %i.qz, %i.ra
  br i1 %.not.i.i.i.i30.i.i56, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.re = icmp slt i64 %i.rd, 0
  br i1 %i.re, label %.noexc.i.i.i.i137, label %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i57, !prof !179

.noexc.i.i.i.i137:                                ; preds = %bb.ex
  call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i57: ; preds = %bb.ex
  %i.rf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rd) #33
  %.pre.i.i58 = load ptr, ptr %i.qx, align 8, !tbaa !58 ; 2 uses
  %.pre177.i.i = load ptr, ptr %i.qy, align 8, !tbaa !58
  %.pre178.i.i = ptrtoint ptr %.pre177.i.i to i64
  %.pre179.i.i = ptrtoint ptr %.pre.i.i58 to i64
  br label %bb.ey

bb.ey:                                            ; preds = %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i57, %bb.ew
  %.pre-phi180.i.i = phi i64 [ %.pre179.i.i, %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i57 ], [ %i.rc, %bb.ew ]
  %.pre-phi.i.i59 = phi i64 [ %.pre178.i.i, %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i57 ], [ %i.rb, %bb.ew ]
  %i.rg = phi ptr [ %.pre.i.i58, %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i57 ], [ %i.ra, %bb.ew ] ; 2 uses
  %i.rh = phi ptr [ %i.rf, %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i57 ], [ null, %bb.ew ] ; 7 uses
  %i.ri = sub i64 %.pre-phi.i.i59, %.pre-phi180.i.i ; 4 uses
  %i.rj = icmp sgt i64 %i.ri, 1
  br i1 %i.rj, label %bb.ez, label %bb.fa, !prof !63

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.rh, ptr align 1 %i.rg, i64 %i.ri, i1 false)
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i60

bb.fa:                                            ; preds = %bb.ey
  %i.rk = icmp eq i64 %i.ri, 1
  br i1 %i.rk, label %bb.fb, label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i60

bb.fb:                                            ; preds = %bb.fa
  %i.rl = load i8, ptr %i.rg, align 1, !tbaa !352
  store i8 %i.rl, ptr %i.rh, align 1, !tbaa !352
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i60

_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i60: ; preds = %bb.fb, %bb.fa, %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #18
  %i.rm = getelementptr inbounds nuw i8, ptr %86, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %86, i8 0, i64 48, i1 false)
  store double +qnan, ptr %i.rm, align 8, !tbaa !354
  %i.rn = getelementptr inbounds nuw i8, ptr %86, i64 40
  store i8 1, ptr %i.rn, align 8, !tbaa !357
  %i.ro = getelementptr inbounds nuw i8, ptr %86, i64 44
  store i32 3, ptr %i.ro, align 4, !tbaa !358
  %i.rp = load ptr, ptr %1, align 8, !tbaa !56, !noalias !1674
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 104
  %i.rr = load ptr, ptr %i.rq, align 8, !noalias !1674
  invoke void %i.rr(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::BatchSet") align 8 %85, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %86)
          to label %_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit.i.i63 unwind label %bb.gb, !inline_history !362

_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit.i.i63: ; preds = %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  %i.rs = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.rt = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !326, !noalias !1677 ; 2 uses
  %i.rv = load <2 x ptr>, ptr %85, align 16, !tbaa !58, !noalias !1677
  store <2 x ptr> %i.rv, ptr %87, align 16, !tbaa !58, !alias.scope !1677
  %.not.i.i.i.i.i.i.i64 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i.i.i.i.i.i64, label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit.i.i66, label %bb.fc

bb.fc:                                            ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit.i.i63
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 3 uses
  %i.rx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26, !noalias !1677
  %.not.i.i.i.i.i.i.i.i65 = icmp eq i8 %i.rx, 0
  br i1 %.not.i.i.i.i.i.i.i.i65, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ry = load i32, ptr %i.rw, align 4, !tbaa !80, !noalias !1677
  %i.rz = add nsw i32 %i.ry, 1
  store i32 %i.rz, ptr %i.rw, align 4, !tbaa !80, !noalias !1677
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit.i.i66

bb.fe:                                            ; preds = %bb.fc
  %i.sa = atomicrmw volatile add ptr %i.rw, i32 1 acq_rel, align 4, !noalias !1677 ; 0 uses
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit.i.i66

_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit.i.i66: ; preds = %bb.fe, %bb.fd, %_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit.i.i63
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %88, i8 0, i64 16, i1 false), !alias.scope !1680
  invoke void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_(ptr noundef nonnull align 8 dereferenceable(16) %88, ptr noundef null)
          to label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit.preheader.i.i69 unwind label %bb.ff

_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit.preheader.i.i69: ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit.i.i66
  %i.sb = getelementptr inbounds nuw i8, ptr %89, i64 16
  %.sroa.2.0..sroa_idx.i.i.i70 = getelementptr inbounds nuw i8, ptr %89, i64 24
  %i.sc = getelementptr inbounds nuw i8, ptr %89, i64 32
  %i.sd = getelementptr inbounds nuw i8, ptr %89, i64 40
  %i.se = getelementptr inbounds nuw i8, ptr %89, i64 48
  %i.sf = getelementptr inbounds nuw i8, ptr %89, i64 56
  %i.sg = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.sh = getelementptr inbounds nuw i8, ptr %82, i64 16
  %i.si = getelementptr inbounds nuw i8, ptr %82, i64 24
  %i.sj = getelementptr inbounds nuw i8, ptr %82, i64 32
  %i.sk = getelementptr inbounds nuw i8, ptr %82, i64 40
  %i.sl = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 3 uses
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit.i.i71

bb.ff:                                            ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit.i.i66
end_hunk_7
