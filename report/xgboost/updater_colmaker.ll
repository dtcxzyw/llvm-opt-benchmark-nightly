Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_colmaker?download=true
inline.NumInlined: 4970
inline.NumDeleted: 2084
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS2_4tree13TreeEvaluator8AddSplitILb0EEEviiijffEUlmNS3_4SpanIfLm18446744073709551615EEESB_NSA_IiLm18446744073709551615EEEE_E9LaunchCPUIJNS2_16HostDeviceVectorIfEESH_NSG_IiEEEEEvSD_DpPT_EUlmE_JmEEEvT_DpT0_:bb.a
  %.not.i.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i.i8, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  %.pr = load ptr, ptr %6, align 8, !tbaa !399
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  %i.l = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.m = icmp eq i32 %i.c, %i.l
  br i1 %i.m, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.n = call ptr @__cxa_begin_catch(ptr %i.b) #21 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #21 ; 2 uses
  %.not.i.i9 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i9, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #36
          to label %.noexc10 unwind label %bb.l

.noexc10:                                         ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11:        ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !399
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.r = load ptr, ptr %5, align 8, !tbaa !399
  store ptr null, ptr %5, align 8, !tbaa !399
  %i.s = load ptr, ptr %0, align 8, !tbaa !399    ; 2 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !399
  store ptr %i.r, ptr %0, align 8, !tbaa !399
  %.not.i.i12 = icmp eq ptr %i.s, null
  br i1 %.not.i.i12, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %.pr18 = load ptr, ptr %5, align 8, !tbaa !399
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not.i14 = icmp eq ptr %.pr18, null
  br i1 %.not.i14, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
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

.sink.split:                                      ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15
  %.sink = phi ptr [ %i.o, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11 ], [ %i.o, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15 ], [ %i.g, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %i.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
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
define linkonce_odr void @_ZZN7xgboost4tree13TreeEvaluator8AddSplitILb0EEEviiijffENKUlmNS_6common4SpanIfLm18446744073709551615EEES5_NS4_IiLm18446744073709551615EEEE_clEmS5_S5_S6_(ptr noundef nonnull align 4 dereferenceable(24) %0, i64 noundef %1, i64 %2, ptr %3, i64 %4, ptr %5, ptr noundef byval(%"class.xgboost::common::Span.326") align 8 %6) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !992
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = icmp ugt i64 %2, %i.c
  br i1 %i.d, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit, label %bb.b, !prof !209

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.c ; 2 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !993
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit7, label %bb.c, !prof !209

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit7: ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit
  %i.i = load float, ptr %i.e, align 4, !tbaa !102
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.g ; 2 uses
  store float %i.i, ptr %i.j, align 4, !tbaa !102
  %i.k = icmp ugt i64 %4, %i.c
  br i1 %i.k, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit8, label %bb.d, !prof !209

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit7
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit8: ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit7
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.c ; 2 uses
  %i.m = icmp ugt i64 %4, %i.g
  br i1 %i.m, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit10, label %bb.e, !prof !209

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit8
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit8
  %i.n = load float, ptr %i.l, align 4, !tbaa !102
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.g ; 2 uses
  store float %i.n, ptr %i.o, align 4, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !994
  %i.r = sext i32 %i.q to i64                     ; 4 uses
  %i.s = icmp ugt i64 %2, %i.r
  br i1 %i.s, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit12, label %bb.f, !prof !209

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit10
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit12: ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit10
  %i.t = load float, ptr %i.e, align 4, !tbaa !102
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.r ; 2 uses
  store float %i.t, ptr %i.u, align 4, !tbaa !102
  %i.v = icmp ugt i64 %4, %i.r
  br i1 %i.v, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit13, label %bb.g, !prof !209

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit12
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit13: ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit12
  %i.w = load float, ptr %i.l, align 4, !tbaa !102
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.r ; 2 uses
  store float %i.w, ptr %i.x, align 4, !tbaa !102
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !995
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = load i64, ptr %6, align 8, !tbaa !997
  %i.ac = icmp ugt i64 %i.ab, %i.aa
  br i1 %i.ac, label %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit, label %bb.h, !prof !209

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit13
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit: ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit13
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !998
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aa
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !94 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load <2 x float>, ptr %i.ah, align 4, !tbaa !102
  %8 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %7)
  %i.ai = fmul float %8, 5.000000e-01             ; 5 uses
  %i.aj = fcmp uno float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.i, label %bb.j, !prof !120

bb.i:                                             ; preds = %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #38
  unreachable

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit
  %i.ak = icmp slt i32 %i.ag, 0
  br i1 %i.ak, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit15, label %bb.k

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit15: ; preds = %bb.j
  store float %i.ai, ptr %i.j, align 4, !tbaa !102
  store float %i.ai, ptr %i.x, align 4, !tbaa !102
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.l, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit17

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit17: ; preds = %bb.k
  store float %i.ai, ptr %i.o, align 4, !tbaa !102
  store float %i.ai, ptr %i.u, align 4, !tbaa !102
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit17, %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit15
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i64 @_ZNK7xgboost16HostDeviceVectorIiE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN7xgboost32FeatureInteractionConstraintHost9SplitImplEijii(ptr noundef nonnull align 8 dereferenceable(109), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorINS_13RTreeNodeStatEE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !313  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !284    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !285
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !94
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !313
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #36
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #37 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !94
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !94
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !285
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #35
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !284
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !313
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !285
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_updater_colmaker.cc() #32 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::function", align 8     ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call noundef ptr @_ZN7xgboost4tree18ColMakerTrainParam11__MANAGER__Ev() ; 0 uses
  %i.c = tail call noundef ptr @_ZN4dmlc8RegistryIN7xgboost14TreeUpdaterRegEE3GetEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.d, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, i64 13, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.f, align 1, !tbaa !36
  %i.g = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZN4dmlc8RegistryIN7xgboost14TreeUpdaterRegEE12__REGISTER__ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i10.i unwind label %bb.d ; 5 uses

.noexc.i10.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 44, ptr %i.a, align 8, !tbaa !38
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11.i unwind label %bb.e ; 3 uses

.noexc11.i:                                       ; preds = %.noexc.i10.i
  store ptr %i.i, ptr %2, align 8, !tbaa !35
  %i.j = load i64, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.i, ptr noundef nonnull align 1 dereferenceable(44) @.str.3, i64 44, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt8functionIFPN7xgboost11TreeUpdaterEPKNS0_7ContextEPKNS0_7ObjInfoEEEC2ERKSA_.exit.i.i.i unwind label %_ZNSt14_Function_baseD2Ev.exit18.i

_ZNSt8functionIFPN7xgboost11TreeUpdaterEPKNS0_7ContextEPKNS0_7ObjInfoEEEC2ERKSA_.exit.i.i.i: ; preds = %.noexc11.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 16, i1 false), !tbaa.struct !999
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.r = load <2 x ptr>, ptr %i.p, align 8, !tbaa !123
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !123  ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFPN7xgboost11TreeUpdaterEPKNS0_7ContextEPKNS0_7ObjInfoEENS0_4tree3$_0EE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.p, align 8, !tbaa !123
  store <2 x ptr> %i.r, ptr %i.o, align 8, !tbaa !123
  store ptr @"_ZNSt17_Function_handlerIFPN7xgboost11TreeUpdaterEPKNS0_7ContextEPKNS0_7ObjInfoEENS0_4tree3$_0EE9_M_invokeERKSt9_Any_dataOS5_OS8_", ptr %i.q, align 8, !tbaa !123
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt8functionIFPN7xgboost11TreeUpdaterEPKNS0_7ContextEPKNS0_7ObjInfoEEEC2ERKSA_.exit.i.i.i
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %_ZNSt8functionIFPN7xgboost11TreeUpdaterEPKNS0_7ContextEPKNS0_7ObjInfoEEEC2ERKSA_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  %i.w = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.h
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.y = load i64, ptr %i.h, align 8, !tbaa !36
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.aa = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.d
  br i1 %i.ab, label %__cxx_global_var_init.1.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !36
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #35
  br label %__cxx_global_var_init.1.exit

bb.d:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %.noexc.i10.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i

_ZNSt14_Function_baseD2Ev.exit18.i:               ; preds = %.noexc11.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.h
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit18.i
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !36
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit18.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %i.af, %bb.e ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i ], [ %i.ag, %_ZNSt14_Function_baseD2Ev.exit18.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, %bb.d
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i ], [ %i.ae, %bb.d ]
  %i.al = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.d
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i: ; preds = %bb.f
  %i.an = load i64, ptr %i.d, align 8, !tbaa !36
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn.pn.pn.i

__cxx_global_var_init.1.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  store ptr %i.g, ptr @_ZN7xgboost4treeL32__make_TreeUpdaterReg_ColMaker__E, align 8, !tbaa !55
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #30

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { nounwind memory(none) }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!24}
!llvm.errno.tbaa = !{!29}

!0 = distinct !{!0, !53}
!1 = distinct !{!1, !53}
!2 = distinct !{!2, !53}
!3 = distinct !{ptr @_ZNSt12__shared_ptrIN7xgboost6common13ColumnSamplerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4 = distinct !{!4, !53}
!5 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6 = distinct !{!6, !53}
!7 = distinct !{!7, !53}
!8 = distinct !{null, null}
!9 = distinct !{null, null, null, null, null, null}
!10 = distinct !{!10, !53}
!11 = distinct !{null}
!12 = distinct !{ptr @_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev, ptr @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13SortedCSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!13 = distinct !{ptr @_ZN7xgboost8BatchSetINS_13SortedCSCPageEED2Ev, ptr @_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev, ptr @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13SortedCSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!14 = distinct !{!14, !53}
!15 = distinct !{!15, !53}
!16 = distinct !{!16, !53}
!17 = distinct !{ptr @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13SortedCSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!18 = distinct !{ptr @_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!19 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!20 = distinct !{!20, !53}
!21 = distinct !{!21, !53}
!22 = !{i32 8, !"PIC Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 2}
!24 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!25 = !{!"Simple C++ TBAA"}
!26 = !{!"omnipotent char", !25, i64 0}
!27 = !{!"int", !26, i64 0}
!28 = !{!"__libc_errno", !27, i64 0}
!29 = !{!28, !27, i64 0}
!30 = !{!"any pointer", !26, i64 0}
!31 = !{!"p1 omnipotent char", !30, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!33 = !{!"long", !26, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !33, i64 8, !26, i64 16}
!35 = !{!34, !31, i64 0}
!36 = !{!26, !26, i64 0}
!37 = !{!32, !31, i64 0}
!38 = !{!33, !33, i64 0}
!39 = !{!34, !33, i64 8}
!40 = !{!"_ZTSSt14_Rb_tree_color", !26, i64 0}
!41 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !30, i64 0}
!42 = !{!"_ZTSSt18_Rb_tree_node_base", !40, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!43 = !{!"_ZTSSt15_Rb_tree_header", !42, i64 0, !33, i64 32}
!44 = !{!43, !40, i64 0}
!45 = !{!43, !41, i64 8}
!46 = !{!43, !41, i64 16}
!47 = !{!43, !41, i64 24}
!48 = !{!43, !33, i64 32}
!49 = !{!"bool", !26, i64 0}
!50 = !{!"_ZTSN7xgboost16XGBoostParameterINS_4tree18ColMakerTrainParamEEE", !49, i64 0}
!51 = !{!50, !49, i64 0}
!52 = !{!41, !41, i64 0}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"p1 _ZTSN7xgboost14TreeUpdaterRegE", !30, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"any p2 pointer", !30, i64 0}
!57 = !{!"p2 _ZTSN4dmlc9parameter16FieldAccessEntryE", !56, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIPN4dmlc9parameter16FieldAccessEntryESaIS3_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!58, !57, i64 8}
!60 = !{!58, !57, i64 0}
!61 = !{!58, !57, i64 16}
!62 = !{!"p1 _ZTSN4dmlc9parameter16FieldAccessEntryE", !30, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"vtable pointer", !25, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!42, !41, i64 24}
!67 = !{!42, !41, i64 16}
!68 = !{!"_ZTSN4dmlc9parameter16FieldAccessEntryE", !49, i64 8, !33, i64 16, !34, i64 24, !34, i64 56, !34, i64 88, !33, i64 120}
!69 = !{!"float", !26, i64 0}
!70 = !{!"_ZTSN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfEE", !68, i64 0, !69, i64 128}
!71 = !{!"_ZTSN4dmlc9parameter17FieldEntryNumericINS0_10FieldEntryIfEEfEE", !70, i64 0, !49, i64 132, !49, i64 133, !69, i64 136, !69, i64 140}
!72 = !{!71, !49, i64 133}
!73 = !{!68, !33, i64 120}
!74 = !{!70, !69, i64 128}
!75 = !{!68, !49, i64 8}
!76 = !{!"_ZTSN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiEE", !68, i64 0, !27, i64 128}
!77 = !{!76, !27, i64 128}
!78 = !{!68, !33, i64 16}
!79 = !{!"_ZTSN4dmlc9parameter17FieldEntryNumericINS0_10FieldEntryIiEEiEE", !76, i64 0, !49, i64 132, !49, i64 133, !27, i64 136, !27, i64 140}
!80 = !{!79, !49, i64 132}
!81 = !{!79, !49, i64 133}
!82 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!83 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !82, i64 0}
!84 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !83, i64 0, !43, i64 8}
!85 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !84, i64 0}
!86 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE", !85, i64 0}
!87 = !{!"_ZTSSt4lessIiE"}
!88 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIiEE", !87, i64 0}
!89 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !88, i64 0, !43, i64 8}
!90 = !{!"_ZTSSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE", !89, i64 0}
!91 = !{!"_ZTSSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE", !90, i64 0}
!92 = !{!"_ZTSN4dmlc9parameter10FieldEntryIiEE", !79, i64 0, !49, i64 144, !86, i64 152, !91, i64 200}
!93 = !{!92, !49, i64 144}
!94 = !{!27, !27, i64 0}
!95 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !34, i64 0, !27, i64 32}
!96 = !{!95, !27, i64 32}
!97 = !{!"p1 int", !30, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{ptr @_ZN4dmlc9parameter16FieldAccessEntryD2Ev}
!100 = !{i8 0, i8 2}
!101 = !{}
!102 = !{!69, !69, i64 0}
!103 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!71, !49, i64 132}
!106 = !{!71, !69, i64 136}
!107 = !{!71, !69, i64 140}
!108 = !{!"p1 _ZTSNSt6locale5_ImplE", !30, i64 0}
!109 = !{!"_ZTSSt6locale", !108, i64 0}
!110 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !109, i64 56}
!111 = !{!110, !31, i64 40}
!112 = !{!110, !31, i64 32}
!113 = !{!"_ZTSSt13_Ios_Fmtflags", !26, i64 0}
!114 = !{!"_ZTSSt12_Ios_Iostate", !26, i64 0}
!115 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !30, i64 0}
!116 = !{!"_ZTSNSt8ios_base6_WordsE", !30, i64 0, !33, i64 8}
!117 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !30, i64 0}
!118 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !113, i64 24, !114, i64 28, !114, i64 32, !115, i64 40, !116, i64 48, !26, i64 64, !27, i64 192, !117, i64 200, !109, i64 208}
!119 = !{!118, !33, i64 16}
!120 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!121 = !{!31, !31, i64 0}
!122 = !{!118, !114, i64 32}
!123 = !{!30, !30, i64 0}
!124 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !30, i64 0}
!125 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryEEE", !30, i64 0}
!126 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeE", !124, i64 0, !125, i64 8}
!127 = !{!126, !125, i64 8}
!128 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryEE", !34, i64 0, !62, i64 32}
!129 = !{!128, !62, i64 32}
!130 = !{!79, !27, i64 136}
!131 = !{!79, !27, i64 140}
!132 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !30, i64 0}
!133 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE", !30, i64 0}
!134 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !132, i64 0, !133, i64 8}
!135 = !{!134, !133, i64 8}
!136 = !{!"p1 _ZTSSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE", !30, i64 0}
!137 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !30, i64 0}
!138 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeE", !136, i64 0, !137, i64 8}
!139 = !{!138, !137, i64 8}
!140 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14TreeUpdaterRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !30, i64 0}
!141 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14TreeUpdaterRegEEE", !30, i64 0}
!142 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14TreeUpdaterRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeE", !140, i64 0, !141, i64 8}
!143 = !{!142, !141, i64 8}
!144 = !{!"p1 _ZTSN7xgboost7ContextE", !30, i64 0}
!145 = !{!"_ZTSN7xgboost12ConfigurableE"}
!146 = !{!"_ZTSN7xgboost11TreeUpdaterE", !145, i64 0, !144, i64 8}
!147 = !{!146, !144, i64 8}
!148 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 8, !27, i64 12}
!149 = !{!148, !27, i64 8}
!150 = !{!148, !27, i64 12}
!151 = !{!"p1 float", !30, i64 0}
!152 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !151, i64 0, !151, i64 8, !151, i64 16}
!153 = !{!152, !151, i64 0}
end_hunk_0
begin_hunk_1_@llvm.fabs.v2f32/@llvm.vector.reduce.fadd.v2f32
!799 = distinct !{!799, !798, !"_ZN4dmlc11LogCheck_EQB5cxx11Eii: argument 0"}
!800 = distinct !{!800, !"_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav"}
!801 = distinct !{!801, !800, !"_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav: argument 0"}
!802 = !{!799}
!803 = !{!801}
!804 = distinct !{!804, !"_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav"}
!805 = distinct !{!805, !804, !"_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav: argument 0"}
!806 = distinct !{!806, !"_ZN7xgboost7DMatrix10GetBatchesINS_13SortedCSCPageEEENS_8BatchSetIT_EEPKNS_7ContextE"}
!807 = distinct !{!807, !806, !"_ZN7xgboost7DMatrix10GetBatchesINS_13SortedCSCPageEEENS_8BatchSetIT_EEPKNS_7ContextE: argument 0"}
!808 = distinct !{!808, !"_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv"}
!809 = distinct !{!809, !808, !"_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv: argument 0"}
!810 = distinct !{!810, !"_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv"}
!811 = distinct !{!811, !810, !"_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv: argument 0"}
!812 = !{!805}
!813 = !{!807}
!814 = !{!809}
!815 = !{!811}
!816 = !{!305, !69, i64 32}
!817 = distinct !{!817, !"_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav"}
!818 = distinct !{!818, !817, !"_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav: argument 0"}
!819 = distinct !{!819, !"_ZN4dmlc11LogCheck_NEB5cxx11Eii"}
!820 = distinct !{!820, !819, !"_ZN4dmlc11LogCheck_NEB5cxx11Eii: argument 0"}
!821 = !{!818}
!822 = !{!820}
!823 = !{!298, !27, i64 0}
!824 = distinct !{!824, !"_ZSt11make_sharedIN7xgboost16HostDeviceVectorIjEEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!825 = distinct !{!825, !824, !"_ZSt11make_sharedIN7xgboost16HostDeviceVectorIjEEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!826 = distinct !{!826, !53, !335, !336}
!827 = distinct !{!827, !53, !336, !335}
!828 = !{!220, !69, i64 76}
!829 = !{!825}
!830 = !{!212, !212, i64 0}
!831 = distinct !{!831, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!832 = distinct !{!832, !831, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!833 = distinct !{!833, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!834 = distinct !{!834, !833, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!835 = !{!832}
!836 = !{!834}
!837 = !{!834, !832}
!838 = distinct !{!838, !53}
!839 = distinct !{!839, !53}
!840 = distinct !{!840, !53}
!841 = !{!"p1 _ZTSSt6vectorIS_IN7xgboost4tree8ColMaker11ThreadEntryESaIS3_EESaIS5_EE", !30, i64 0}
!842 = !{!"_ZTSNSt6vectorIS_IN7xgboost4tree8ColMaker11ThreadEntryESaIS3_EESaIS5_EE16_Temporary_valueE", !841, i64 0, !26, i64 8}
!843 = !{!842, !841, i64 0}
!844 = distinct !{!844, !53}
!845 = distinct !{!845, !53}
!846 = distinct !{!846, !53}
!847 = distinct !{!847, !53}
!848 = distinct !{!848, !53}
!849 = distinct !{!849, !53}
!850 = distinct !{!850, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!851 = distinct !{!851, !850, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!852 = distinct !{!852, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!853 = distinct !{!853, !852, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!854 = !{!851}
!855 = !{!853}
!856 = !{!853, !851}
!857 = distinct !{!857, !53}
!858 = distinct !{!858, !53}
!859 = distinct !{!859, !53}
!860 = !{!"_ZTSNSt6vectorIN7xgboost4tree8ColMaker11ThreadEntryESaIS3_EE16_Temporary_valueE", !264, i64 0, !26, i64 8}
!861 = !{!860, !264, i64 0}
!862 = distinct !{!862, !53}
!863 = distinct !{!863, !53}
!864 = distinct !{!864, !53}
!865 = distinct !{!865, !53}
!866 = !{!"p1 _ZTSSt6vectorIN7xgboost4tree8ColMaker9NodeEntryESaIS3_EE", !30, i64 0}
!867 = !{!"_ZTSNSt6vectorIN7xgboost4tree8ColMaker9NodeEntryESaIS3_EE16_Temporary_valueE", !866, i64 0, !26, i64 8}
!868 = !{!867, !866, i64 0}
!869 = !{!269, !269, i64 0}
!870 = distinct !{!870, !53}
!871 = distinct !{!871, !53}
!872 = distinct !{!872, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!873 = distinct !{!873, !872, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!874 = distinct !{!874, !53}
!875 = distinct !{!875, !53}
!876 = distinct !{!876, !53}
!877 = distinct !{!877, !53}
!878 = distinct !{!878, !53}
!879 = distinct !{!879, !53}
!880 = !{!873}
!881 = distinct !{!881, !53}
!882 = distinct !{!882, !53}
!883 = distinct !{!883, !"_ZNK7xgboost10SparsePage7GetViewEv"}
!884 = distinct !{!884, !883, !"_ZNK7xgboost10SparsePage7GetViewEv: argument 0"}
!885 = !{!884}
!886 = !{!191, !190, i64 8}
!887 = !{!253, !252, i64 8}
!888 = !{!387, !387, i64 0}
!889 = !{!388, !388, i64 0}
!890 = distinct !{!890, !53}
!891 = !{i64 0, i64 8, !365, i64 8, i64 8, !365}
!892 = distinct !{ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE10_Auto_nodeD2Ev, null, null, null, ptr @_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!893 = !{!394, !394, i64 0}
!894 = !{!"_ZTSSt4pairIKiSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEE", !27, i64 0, !214, i64 8}
!895 = !{!894, !27, i64 0}
!896 = distinct !{!896, !53}
!897 = distinct !{!897, !53}
!898 = distinct !{!898, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!899 = distinct !{!899, !898, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!900 = distinct !{!900, !53}
!901 = distinct !{!901, !53}
!902 = distinct !{!902, !53}
!903 = distinct !{!903, !53}
!904 = distinct !{!904, !53}
!905 = distinct !{!905, !53}
!906 = !{!899}
!907 = distinct !{!907, !"_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav"}
!908 = distinct !{!908, !907, !"_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav: argument 0"}
!909 = !{!908}
!910 = !{!389, !387, i64 8}
!911 = !{!389, !388, i64 16}
!912 = !{!"_ZTSN7xgboost6common4SpanIKmLm18446744073709551615EEE", !33, i64 0, !190, i64 8}
!913 = !{!912, !190, i64 8}
!914 = !{!281, !257, i64 8}
!915 = !{!"_ZTSN7xgboost4tree18ColMakerTrainParamE", !50, i64 0, !69, i64 4, !27, i64 8}
!916 = !{!915, !27, i64 8}
!917 = !{!281, !280, i64 312}
!918 = !{!915, !69, i64 4}
!919 = !{!389, !382, i64 24}
!920 = distinct !{!920, !53}
!921 = distinct !{!921, !53}
!922 = distinct !{!922, !53}
!923 = distinct !{!923, !53}
!924 = distinct !{!924, !53}
!925 = distinct !{!925, !53}
!926 = !{!412, !204, i64 8}
!927 = !{!302, !204, i64 0}
!928 = distinct !{!928, !53}
!929 = distinct !{!929, !53}
!930 = distinct !{!930, !"_ZN7xgboost7DMatrix10GetBatchesINS_13SortedCSCPageEEENS_8BatchSetIT_EEPKNS_7ContextE"}
!931 = distinct !{!931, !930, !"_ZN7xgboost7DMatrix10GetBatchesINS_13SortedCSCPageEEENS_8BatchSetIT_EEPKNS_7ContextE: argument 0"}
!932 = distinct !{!932, !"_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv"}
!933 = distinct !{!933, !932, !"_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv: argument 0"}
!934 = distinct !{!934, !"_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv"}
!935 = distinct !{!935, !934, !"_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv: argument 0"}
!936 = distinct !{!936, !"_ZNK7xgboost10SparsePage7GetViewEv"}
!937 = distinct !{!937, !936, !"_ZNK7xgboost10SparsePage7GetViewEv: argument 0"}
!938 = !{!931}
!939 = !{!933}
!940 = !{!935}
!941 = !{!937}
!942 = !{!419, !290, i64 8}
!943 = distinct !{!943, !53}
!944 = distinct !{!944, !53}
!945 = distinct !{!945, !53}
!946 = distinct !{!946, !53}
!947 = distinct !{!947, !53}
!948 = distinct !{!948, !53}
!949 = distinct !{!949, !53}
!950 = distinct !{!950, !53}
!951 = distinct !{!951, !53}
!952 = distinct !{!952, !53}
!953 = distinct !{!953, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!954 = distinct !{!954, !953, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!955 = distinct !{!955, !53}
!956 = distinct !{!956, !53}
!957 = distinct !{!957, !53}
!958 = distinct !{!958, !53}
!959 = distinct !{!959, !53}
!960 = distinct !{!960, !53}
!961 = !{!419, !417, i64 0}
!962 = !{!406, !33, i64 0}
!963 = !{!954}
!964 = distinct !{!964, !53}
!965 = distinct !{!965, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!966 = distinct !{!966, !965, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!967 = distinct !{!967, !53}
!968 = distinct !{!968, !53}
!969 = distinct !{!969, !53}
!970 = distinct !{!970, !53}
!971 = distinct !{!971, !53}
!972 = distinct !{!972, !53}
!973 = !{!966}
!974 = !{!292, !291, i64 8}
!975 = !{!424, !424, i64 0}
!976 = !{!427, !425, i64 16}
!977 = !{!426, !426, i64 0}
!978 = distinct !{!978, !53}
!979 = distinct !{!979, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!980 = distinct !{!980, !979, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!981 = distinct !{!981, !53}
!982 = distinct !{!982, !53}
!983 = distinct !{!983, !53}
!984 = distinct !{!984, !53}
!985 = distinct !{!985, !53}
!986 = distinct !{!986, !53}
!987 = !{!980}
!988 = !{!427, !30, i64 0}
!989 = !{!427, !424, i64 8}
!990 = !{!427, !424, i64 24}
!991 = !{!427, !426, i64 32}
!992 = !{!308, !27, i64 4}
!993 = !{!308, !27, i64 0}
!994 = !{!308, !27, i64 8}
!995 = !{!308, !27, i64 12}
!996 = !{!"_ZTSN7xgboost6common4SpanIiLm18446744073709551615EEE", !33, i64 0, !97, i64 8}
!997 = !{!996, !33, i64 0}
!998 = !{!996, !97, i64 8}
!999 = !{i64 0, i64 16, !36}
end_hunk_1
