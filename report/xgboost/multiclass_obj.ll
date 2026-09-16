Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/multiclass_obj?download=true
inline.NumInlined: 3054
inline.NumDeleted: 1257
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS2_3obj20SoftmaxMultiClassObj9TransformEPNS2_16HostDeviceVectorIfEEbEUlmNS3_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJSA_EEEvSE_DpPT_EUlmE_JmEEEvT_DpT0_:bb.a
  br i1 %.not.i.i12, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit14, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ak) #35
          to label %.noexc13 unwind label %bb.r

.noexc13:                                         ; preds = %bb.o
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit14:        ; preds = %bb.n
  %i.al = load ptr, ptr %0, align 8, !tbaa !201
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.am = load ptr, ptr %6, align 8, !tbaa !201
  store ptr null, ptr %6, align 8, !tbaa !201
  %i.an = load ptr, ptr %0, align 8, !tbaa !201   ; 2 uses
  store ptr %i.an, ptr %3, align 8, !tbaa !201
  store ptr %i.am, ptr %0, align 8, !tbaa !201
  %.not.i.i15 = icmp eq ptr %i.an, null
  br i1 %.not.i.i15, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit16.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit16

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit16.thread: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit18

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit16: ; preds = %bb.p
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %.pr21 = load ptr, ptr %6, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not.i17 = icmp eq ptr %.pr21, null
  br i1 %.not.i17, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit18, label %bb.q

bb.q:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit16
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit18

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit18: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit16.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit16, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit18, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit14
  %i.ap = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #20 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ar = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #20 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.v

bb.v:                                             ; preds = %_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj20SoftmaxMultiClassObj9TransformEPNS_16HostDeviceVectorIfEEbEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS7_EEEvSB_DpPT_ENKUlmE_clEm.exit, %bb.u, %bb.s
  ret void

bb.w:                                             ; preds = %bb.t, %bb.r, %bb.m
  %.merged = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.v, %bb.m ], [ %i.aq, %bb.t ]
  resume { ptr, i32 } %.merged

bb.x:                                             ; preds = %bb.t, %bb.r
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common7SoftmaxINS0_6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEEEEvT_S7_(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !219    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !136

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !220  ; 6 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.f = load float, ptr %i.e, align 4, !tbaa !146 ; 3 uses
  %.fr67 = freeze ptr %2
  %i.g = icmp ne ptr %0, %.fr67                   ; 2 uses
  %.sroa.642.053 = add nuw i64 %1, 1              ; 4 uses
  %i.h = icmp ne i64 %.sroa.642.053, %3
  %.not8.i54 = select i1 %i.g, i1 true, i1 %i.h
  br i1 %.not8.i54, label %.lr.ph, label %.preheader50

.lr.ph:                                           ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEdeEv.exit
  br i1 %i.g, label %.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.i = xor i64 %1, -1
  %i.j = add i64 %i.a, %i.i
  %i.k = add i64 %3, -2
  %i.l = sub i64 %i.k, %1
  %i.m = freeze i64 %i.l
  %.not77.not = icmp ugt i64 %i.j, %i.m
  br i1 %.not77.not, label %.lr.ph.split.preheader80, label %.split.us, !prof !136

.lr.ph.split.preheader80:                         ; preds = %.lr.ph.split.preheader
  %i.n = xor i64 %1, -1
  %i.o = add i64 %3, %i.n                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph.split.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader80
  %n.vec = and i64 %i.o, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.642.053
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.s, %vector.body ] ; 2 uses
  %vec.phi82 = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.t, %vector.body ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x float>, ptr %i.q, align 4, !tbaa !146 ; 2 uses
  %wide.load83 = load <4 x float>, ptr %i.r, align 4, !tbaa !146 ; 2 uses
  %i.s = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load, <4 x float> %vec.phi) ; 2 uses
  %i.t = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load83, <4 x float> %vec.phi82) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = fcmp uno <4 x float> %wide.load, %wide.load83
  %i.v = freeze <4 x i1> %i.u
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp ne i4 %i.w, 0                       ; 5 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  %i.z = or i1 %i.x, %i.y
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !600

middle.block:                                     ; preds = %vector.body
  %i.aa = select i1 %i.x, <4 x float> %vec.phi, <4 x float> %i.s
  %i.ab = select i1 %i.x, <4 x float> %vec.phi82, <4 x float> %i.t
  %i.ac = select i1 %i.x, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.aa, <4 x float> %i.ab)
  %i.ad = tail call nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  %i.ae = add i64 %.sroa.642.053, %i.ac
  %cmp.n = icmp ne i64 %i.o, %n.vec
  %.not96 = or i1 %cmp.n, %i.x
  br i1 %.not96, label %.lr.ph.split.preheader97, label %.preheader50

.lr.ph.split.preheader97:                         ; preds = %.lr.ph.split.preheader80, %middle.block
  %.sroa.642.056.ph = phi i64 [ %.sroa.642.053, %.lr.ph.split.preheader80 ], [ %i.ae, %middle.block ]
  %.055.ph = phi float [ %i.f, %.lr.ph.split.preheader80 ], [ %i.ad, %middle.block ]
  br label %.lr.ph.split

.preheader50:                                     ; preds = %.lr.ph.split, %middle.block, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEdeEv.exit
  %.0.lcssa = phi float [ %i.f, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEdeEv.exit ], [ %i.ad, %middle.block ], [ %i.ah, %.lr.ph.split ]
  %.not59 = icmp eq i64 %1, %3
  br i1 %.not59, label %._crit_edge, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %.preheader50
  %umax = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %1) ; 2 uses
  br label %.lr.ph62

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader97, %.lr.ph.split
  %.sroa.642.056 = phi i64 [ %.sroa.642.0, %.lr.ph.split ], [ %.sroa.642.056.ph, %.lr.ph.split.preheader97 ] ; 2 uses
  %.055 = phi float [ %i.ah, %.lr.ph.split ], [ %.055.ph, %.lr.ph.split.preheader97 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.642.056
  %i.ag = load float, ptr %i.af, align 4, !tbaa !146
  %i.ah = tail call nsz float @llvm.maxnum.f32(float %i.ag, float %.055) ; 2 uses
  %.sroa.642.0 = add nuw i64 %.sroa.642.056, 1    ; 2 uses
  %.not68 = icmp eq i64 %.sroa.642.0, %3
  br i1 %.not68, label %.preheader50, label %.lr.ph.split, !llvm.loop !601

.split.us:                                        ; preds = %.lr.ph, %.lr.ph.split.preheader
  tail call void @_ZSt9terminatev() #37
  unreachable

.preheader:                                       ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit24
  %i.ai = fptrunc double %i.bb to float           ; 2 uses
  %umax71 = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %1)
  %i.aj = xor i64 %1, -1
  %i.ak = add i64 %3, %i.aj
  %i.al = freeze i64 %i.ak
  %i.am = sub i64 %umax, %1
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.am)
  %i.ao = add i64 %i.an, 1                        ; 3 uses
  %min.iters.check85 = icmp ult i64 %i.ao, 5
  br i1 %min.iters.check85, label %scalar.ph84.preheader, label %vector.ph86

scalar.ph84.preheader:                            ; preds = %vector.body90, %.preheader
  %.sroa.6.065.ph = phi i64 [ %1, %.preheader ], [ %4, %vector.body90 ]
  br label %scalar.ph84

vector.ph86:                                      ; preds = %.preheader
  %i.ap = and i64 %i.ao, 3                        ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = select i1 %i.aq, i64 4, i64 %i.ap
  %n.vec87 = sub i64 %i.ao, %i.ar                 ; 2 uses
  %4 = add i64 %1, %n.vec87
  %broadcast.splatinsert88 = insertelement <4 x float> poison, float %i.ai, i64 0
  %broadcast.splat89 = shufflevector <4 x float> %broadcast.splatinsert88, <4 x float> poison, <4 x i32> zeroinitializer
  %i.as = getelementptr [4 x i8], ptr %i.d, i64 %1
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph86
  %index91 = phi i64 [ 0, %vector.ph86 ], [ %index.next93, %vector.body90 ] ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %index91 ; 2 uses
  %wide.load92 = load <4 x float>, ptr %i.at, align 4, !tbaa !146
  %i.au = fdiv <4 x float> %wide.load92, %broadcast.splat89
  store <4 x float> %i.au, ptr %i.at, align 4, !tbaa !146
  %index.next93 = add nuw i64 %index91, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next93, %n.vec87
  br i1 %i.av, label %scalar.ph84.preheader, label %vector.body90, !llvm.loop !602

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit24
  %.01761 = phi double [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit24 ], [ 0.000000e+00, %.lr.ph62.preheader ]
  %.sroa.8.060 = phi i64 [ %i.bc, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit24 ], [ %1, %.lr.ph62.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.8.060, %umax
  br i1 %exitcond.not, label %bb.c, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit24, !prof !97

bb.c:                                             ; preds = %.lr.ph62
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit24: ; preds = %.lr.ph62
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.8.060 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !146
  %i.ay = fsub float %i.ax, %.0.lcssa
  %i.az = tail call float @expf(float noundef %i.ay) #20 ; 2 uses
  store float %i.az, ptr %i.aw, align 4, !tbaa !146
  %i.ba = fpext float %i.az to double
  %i.bb = fadd double %.01761, %i.ba              ; 2 uses
  %i.bc = add i64 %.sroa.8.060, 1                 ; 2 uses
  %.not = icmp eq i64 %i.bc, %3
  br i1 %.not, label %.preheader, label %.lr.ph62, !llvm.loop !603

._crit_edge:                                      ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit28, %.preheader50
  ret void

scalar.ph84:                                      ; preds = %scalar.ph84.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit28
  %.sroa.6.065 = phi i64 [ %i.bg, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit28 ], [ %.sroa.6.065.ph, %scalar.ph84.preheader ] ; 3 uses
  %exitcond72.not = icmp eq i64 %.sroa.6.065, %umax71
  br i1 %exitcond72.not, label %bb.d, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit28, !prof !97

bb.d:                                             ; preds = %scalar.ph84
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit28: ; preds = %scalar.ph84
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.065 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !146
  %i.bf = fdiv float %i.be, %i.ai
  store float %i.bf, ptr %i.bd, align 4, !tbaa !146
  %i.bg = add i64 %.sroa.6.065, 1                 ; 2 uses
  %.not49 = icmp eq i64 %i.bg, %3
  br i1 %.not49, label %._crit_edge, label %scalar.ph84, !llvm.loop !604
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj20SoftmaxMultiClassObj9TransformEPNS_16HostDeviceVectorIfEEbEUlmNS0_4SpanIKfLm18446744073709551615EEENS9_IfLm18446744073709551615EEEE_E10LaunchCUDAILPv0EJS7_S7_EEEvSD_DpPT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.a, ptr noundef nonnull @.str.97, i32 noundef 163)
  %i.b = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.b ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.98, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
          to label %_ZNSolsEb.exit unwind label %bb.b ; 0 uses

_ZNSolsEb.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.e

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNKS0_9TransformILb0EE9EvaluatorIZNKS_3obj20SoftmaxMultiClassObj9TransformEPNS_16HostDeviceVectorIfEEbEUlmNS0_4SpanIKfLm18446744073709551615EEENSA_IfLm18446744073709551615EEEE_E9LaunchCPUIJS8_S8_EEEvSE_DpPT_EUlmE_EEvT_iNS0_5SchedEOT0_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.dmlc::OMPException", align 8 ; 13 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not102 = icmp eq i64 %0, 0
  br i1 %.not102, label %.loopexit, label %.lr.ph95

.lr.ph95:                                         ; preds = %.preheader, %.lr.ph95
  %.04994 = phi i64 [ %i.d, %.lr.ph95 ], [ 0, %.preheader ] ; 2 uses
  tail call void @_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj20SoftmaxMultiClassObj9TransformEPNS_16HostDeviceVectorIfEEbEUlmNS0_4SpanIKfLm18446744073709551615EEENS9_IfLm18446744073709551615EEEE_E9LaunchCPUIJS7_S7_EEEvSD_DpPT_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.04994)
  %i.d = add nuw i64 %.04994, 1                   ; 2 uses
  %exitcond113.not = icmp eq i64 %i.d, %0
  br i1 %exitcond113.not, label %.loopexit, label %.lr.ph95, !llvm.loop !605

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !82, !noalias !614
  store i32 1, ptr %i.b, align 4, !tbaa !82, !noalias !614
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.b
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %6, align 8, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.e = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.e, ptr noundef nonnull @.str.92, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.d

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.f = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.e ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.32, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.93, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = load ptr, ptr %6, align 8, !tbaa !99     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.27, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.f unwind label %bb.ac

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ab

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.pr69 = load ptr, ptr %6, align 8, !tbaa !99   ; 4 uses
  %.not.i63 = icmp eq ptr %.pr69, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %.pr69, align 8, !tbaa !24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr69, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

end_hunk_0
