Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/sample_strategy?download=true
inline.NumInlined: 841
inline.NumDeleted: 415
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS_11TreeLearnerEPfS3_.omp_outlined:bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 %i.h, ptr %i.b, align 4, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 1, ptr %i.c, align 4, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4, !tbaa !143
  %i.i = load i32, ptr %0, align 4, !tbaa !143    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !143
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !143
  %i.l = load i32, ptr %i.a, align 4, !tbaa !143  ; 2 uses
  %.not13 = icmp sgt i32 %i.l, %i.k
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 376
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !105
  %i.s = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !143
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr %i.n, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !143
  %i.z = load i32, ptr %i.w, align 4, !tbaa !143
  %i.aa = sub nsw i32 %i.y, %i.z
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !143
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !143
  %i.ad = sext i32 %i.ac to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ad
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8LightGBM9Threading3ForIiEEiT_S2_S2_RKSt8functionIFviS2_S2_EE(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %5 = alloca %class.ThreadExceptionHelper, align 8 ; 7 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %0, ptr %i.a, align 4, !tbaa !143
  store i32 %1, ptr %i.b, align 4, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.f = sub nsw i32 %1, %0                       ; 2 uses
  %i.g = tail call i32 @OMP_NUM_THREADS()
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = add i32 %i.h, %2
  %i.j = sdiv i32 %i.i, %2
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.g) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %i.c, align 4, !tbaa !143
  %i.k = icmp sgt i32 %.sroa.speculated.i.i, 1
  br i1 %i.k, label %bb.b, label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sroa.speculated.i.i, %i.h
  %i.m = sdiv i32 %i.l, %.sroa.speculated.i.i
  %i.n = add nsw i32 %i.m, 31
  %i.o = sdiv i32 %i.n, 32
  %i.p = shl nsw i32 %i.o, 5
  br label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit: ; preds = %bb.a, %bb.b
  %storemerge.i.i = phi i32 [ %i.p, %bb.b ], [ %i.f, %bb.a ]
  store i32 %storemerge.i.i, ptr %i.d, align 4, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.q = invoke i32 @OMP_NUM_THREADS()
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.q)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8LightGBM9Threading3ForIiEEiT_S2_S2_RKSt8functionIFviS2_S2_EE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %3, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.r = load ptr, ptr %5, align 8, !tbaa !150    ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN21ThreadExceptionHelperD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.c
  store ptr %i.r, ptr %4, align 8, !tbaa !150
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 dereferenceable(8) %4) #31
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !150
  %.not.i3.i = icmp eq ptr %i.t, null
  br i1 %.not.i3.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  br label %.body

_ZN21ThreadExceptionHelperD2Ev.exit:              ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.u = load i32, ptr %i.c, align 4, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  ret i32 %i.u

bb.g:                                             ; preds = %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.s, %bb.f ], [ %i.s, %bb.e ]
  call void @_ZN21ThreadExceptionHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log5DebugEPKcz(ptr noundef %0, ...) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @_ZN8LightGBM3Log5WriteENS_8LogLevelEPKcS3_P13__va_list_tag(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %0, ptr noundef nonnull %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNSt17_Function_handlerIFiiiiPiS0_EZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS2_11TreeLearnerEPfS6_EUliiiS0_S0_E_E9_M_invokeERKSt9_Any_dataOiSC_SC_OS0_SD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZSt13__invoke_implIiRZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS0_11TreeLearnerEPfS4_EUliiiPiS5_E_JiiiS5_S5_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFiiiiPiS0_EZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS2_11TreeLearnerEPfS6_EUliiiS0_S0_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS_11TreeLearnerEPfS3_EUliiiPiS4_E_, ptr %0, align 8, !tbaa !156
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !125
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !162
  store i64 %i.a, ptr %0, align 8, !tbaa !162
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZSt13__invoke_implIiRZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS0_11TreeLearnerEPfS4_EUliiiPiS5_E_JiiiS5_S5_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !143    ; 2 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !143    ; 5 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !101    ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !230    ; 8 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 81
  %7 = load i8, ptr %6, align 1, !tbaa !48, !range !131, !noundef !132
  %8 = trunc nuw i8 %7 to i1
  %i.e = icmp slt i32 %i.b, 1                     ; 2 uses
  br i1 %8, label %bb.b, label %9

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %_ZZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS_11TreeLearnerEPfS3_ENKUliiiPiS4_E_clEiiiS4_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !157
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 336
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 328
  %i.q = sext i32 %i.a to i64
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %indvars.iv.i.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %.02329.i.i = phi i32 [ %i.b, %bb.c ], [ %.1.i.i, %bb.h ] ; 2 uses
  %.02428.i.i = phi i32 [ 0, %bb.c ], [ %.125.i.i, %bb.h ] ; 3 uses
  %i.r = add nsw i64 %indvars.iv.i.i, %i.q        ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !159
  %i.u = fcmp ogt float %i.t, 0.000000e+00
  %i.v = load i32, ptr %i.k, align 4, !tbaa !49
  %i.w = trunc nsw i64 %i.r to i32                ; 2 uses
  %i.x = sdiv i32 %i.w, %i.v
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !142
  %i.ab = mul i32 %i.aa, 214013
  %i.ac = add i32 %i.ab, 2531011                  ; 2 uses
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !142
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = and i32 %i.ad, 32767
  %i.af = uitofp nneg i32 %i.ae to float
  %i.ag = fmul nnan float %i.af, f0x38000000
  %i.ah = fpext float %i.ag to double             ; 2 uses
  br i1 %i.u, label %.split.i.i, label %bb.e

.split.i.i:                                       ; preds = %bb.d
  %i.ai = load double, ptr %i.p, align 8, !tbaa !167
  %i.aj = fcmp ogt double %i.ai, %i.ah
  br i1 %i.aj, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ak = load double, ptr %i.o, align 8, !tbaa !168
  %i.al = fcmp ogt double %i.ak, %i.ah
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.split.i.i
  %i.am = add nsw i32 %.02428.i.i, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %.split.i.i
  %i.an = add nsw i32 %.02329.i.i, -1             ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i.i = phi i32 [ %i.an, %bb.g ], [ %.02428.i.i, %bb.f ]
  %.125.i.i = phi i32 [ %.02428.i.i, %bb.g ], [ %i.am, %bb.f ] ; 2 uses
  %.1.i.i = phi i32 [ %i.an, %bb.g ], [ %.02329.i.i, %bb.f ]
  %i.ao = sext i32 %.sink.i.i to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ao
  store i32 %i.w, ptr %i.ap, align 4, !tbaa !143
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS_11TreeLearnerEPfS3_ENKUliiiPiS4_E_clEiiiS4_S4_.exit, label %bb.d, !llvm.loop !228

9:                                                ; preds = %bb.a
  br i1 %i.e, label %_ZZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS_11TreeLearnerEPfS3_ENKUliiiPiS4_E_clEiiiS4_S4_.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 320
  %i.aw = load double, ptr %i.av, align 8, !tbaa !136
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i.i
  %.023.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.bp, %bb.i ] ; 2 uses
  %.01622.i.i = phi i32 [ %i.b, %.preheader.i.i ], [ %.1.i8.i, %bb.i ] ; 2 uses
  %.01721.i.i = phi i32 [ 0, %.preheader.i.i ], [ %.118.i.i, %bb.i ] ; 2 uses
  %i.ax = add nsw i32 %.023.i.i, %i.a             ; 2 uses
  %i.ay = load i32, ptr %i.ar, align 4, !tbaa !49
  %i.az = sdiv i32 %i.ax, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !142
  %i.bd = mul i32 %i.bc, 214013
  %i.be = add i32 %i.bd, 2531011                  ; 2 uses
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !142
  %i.bf = lshr i32 %i.be, 16
  %i.bg = and i32 %i.bf, 32767
  %i.bh = uitofp nneg i32 %i.bg to float
  %i.bi = fmul nnan float %i.bh, f0x38000000
  %i.bj = fpext float %i.bi to double
  %i.bk = fcmp ogt double %i.aw, %i.bj            ; 3 uses
  %i.bl = add nsw i32 %.01622.i.i, -1             ; 2 uses
  %.sink.i7.i = select i1 %i.bk, i32 %.01721.i.i, i32 %i.bl
  %i.bm = zext i1 %i.bk to i32
  %.118.i.i = add nuw nsw i32 %.01721.i.i, %i.bm  ; 2 uses
  %.1.i8.i = select i1 %i.bk, i32 %.01622.i.i, i32 %i.bl
  %i.bn = sext i32 %.sink.i7.i to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bn
  store i32 %i.ax, ptr %i.bo, align 4, !tbaa !143
  %i.bp = add nuw nsw i32 %.023.i.i, 1            ; 2 uses
  %exitcond.not.i9.i = icmp eq i32 %i.bp, %i.b
  br i1 %exitcond.not.i9.i, label %_ZZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS_11TreeLearnerEPfS3_ENKUliiiPiS4_E_clEiiiS4_S4_.exit, label %bb.i, !llvm.loop !0

_ZZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS_11TreeLearnerEPfS3_ENKUliiiPiS4_E_clEiiiS4_S4_.exit: ; preds = %bb.i, %bb.h, %bb.b, %9
  %.0.i = phi i32 [ %.125.i.i, %bb.h ], [ 0, %bb.b ], [ 0, %9 ], [ %.118.i.i, %bb.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNSt17_Function_handlerIFiiiiPiS0_EZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS2_11TreeLearnerEPfS6_EUliiiS0_S0_E0_E9_M_invokeERKSt9_Any_dataOiSC_SC_OS0_SD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !143
  %i.b = load i32, ptr %3, align 4, !tbaa !143    ; 3 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !101
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %_ZSt10__invoke_rIiRZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS0_11TreeLearnerEPfS4_EUliiiPiS5_E0_JiiiS5_S5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !232    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 320
  %i.l = load double, ptr %i.k, align 8, !tbaa !136
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i.i.i.i
  %.023.i.i.i.i = phi i32 [ 0, %.preheader.i.i.i.i ], [ %i.ae, %bb.b ] ; 2 uses
  %.01622.i.i.i.i = phi i32 [ %i.b, %.preheader.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 2 uses
  %.01721.i.i.i.i = phi i32 [ 0, %.preheader.i.i.i.i ], [ %.118.i.i.i.i, %bb.b ] ; 2 uses
  %i.m = add nsw i32 %.023.i.i.i.i, %i.a          ; 2 uses
  %i.n = load i32, ptr %i.g, align 4, !tbaa !49
  %i.o = sdiv i32 %i.m, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !142
  %i.s = mul i32 %i.r, 214013
  %i.t = add i32 %i.s, 2531011                    ; 2 uses
  store i32 %i.t, ptr %i.q, align 4, !tbaa !142
  %i.u = lshr i32 %i.t, 16
  %i.v = and i32 %i.u, 32767
  %i.w = uitofp nneg i32 %i.v to float
  %i.x = fmul nnan float %i.w, f0x38000000
  %i.y = fpext float %i.x to double
  %i.z = fcmp ogt double %i.l, %i.y               ; 3 uses
  %i.aa = add nsw i32 %.01622.i.i.i.i, -1         ; 2 uses
  %.sink.i.i.i.i = select i1 %i.z, i32 %.01721.i.i.i.i, i32 %i.aa
  %i.ab = zext i1 %i.z to i32
  %.118.i.i.i.i = add nuw nsw i32 %.01721.i.i.i.i, %i.ab ; 2 uses
  %.1.i.i.i.i = select i1 %i.z, i32 %.01622.i.i.i.i, i32 %i.aa
  %i.ac = sext i32 %.sink.i.i.i.i to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ac
  store i32 %i.m, ptr %i.ad, align 4, !tbaa !143
  %i.ae = add nuw nsw i32 %.023.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.ae, %i.b
  br i1 %exitcond.not.i.i.i.i, label %_ZSt10__invoke_rIiRZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS0_11TreeLearnerEPfS4_EUliiiPiS5_E0_JiiiS5_S5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit, label %bb.b, !llvm.loop !0

_ZSt10__invoke_rIiRZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS0_11TreeLearnerEPfS4_EUliiiPiS5_E0_JiiiS5_S5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit: ; preds = %bb.b, %bb.a
  %.019.i.i.i.i = phi i32 [ 0, %bb.a ], [ %.118.i.i.i.i, %bb.b ]
  ret i32 %.019.i.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFiiiiPiS0_EZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS2_11TreeLearnerEPfS6_EUliiiS0_S0_E0_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E0_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS_11TreeLearnerEPfS3_EUliiiPiS4_E0_, ptr %0, align 8, !tbaa !156
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E0_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !125
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E0_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !162
  store i64 %i.a, ptr %0, align 8, !tbaa !162
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E0_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8LightGBM21BaggingSampleStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E0_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM9Threading3ForIiEEiT_S2_S2_RKSt8functionIFviS2_S2_EE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(48) %7) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !143    ; 2 uses
  %i.i = add nsw i32 %i.h, -1                     ; 3 uses
  %i.j = icmp sgt i32 %i.h, 0
  br i1 %i.j, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i32 %i.i, ptr %i.e, align 4, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store i32 1, ptr %i.f, align 4, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  store i32 0, ptr %i.g, align 4, !tbaa !143
  %i.k = load i32, ptr %0, align 4, !tbaa !143    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 33, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !143
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.i) ; 3 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !143
  %i.n = load i32, ptr %i.d, align 4, !tbaa !143  ; 2 uses
  %.not38 = icmp sgt i32 %i.n, %i.m
  br i1 %.not38, label %._crit_edge39, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.m, %.preheader.lr.ph ], [ %i.ar, %._crit_edge ] ; 2 uses
  %i.r = phi i32 [ %i.n, %.preheader.lr.ph ], [ %i.ap, %._crit_edge ] ; 3 uses
  %.not3136 = icmp sgt i32 %i.r, %i.q
  br i1 %.not3136, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.037 = phi i32 [ %i.al, %bb.h ], [ %i.r, %.preheader ] ; 4 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !143
  %i.t = load i32, ptr %4, align 4, !tbaa !143    ; 2 uses
  %i.u = mul nsw i32 %i.t, %.037
  %i.v = add nsw i32 %i.u, %i.s                   ; 3 uses
  %i.w = add nsw i32 %i.v, %i.t
  %i.x = load i32, ptr %5, align 4, !tbaa !143
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.x) ; 2 uses
  %i.y = icmp slt i32 %i.v, %.sroa.speculated
  br i1 %i.y, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.037, ptr %i.a, align 4, !tbaa !143
  store i32 %i.v, ptr %i.b, align 4, !tbaa !143
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !143
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !129
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #31
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !165
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNKSt8functionIFviiiEEclEiii.exit unwind label %bb.f, !inline_history !233

_ZNKSt8functionIFviiiEEclEiii.exit:               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = extractvalue { ptr, i32 } %i.ab, 1
  %i.ae = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #15
  %i.af = icmp eq i32 %i.ad, %i.ae
  %i.ag = call ptr @__cxa_begin_catch(ptr %i.ac) #15 ; 2 uses
  br i1 %i.af, label %bb.g, label %.invoke49

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #15
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.ak)
          to label %.invoke49 unwind label %bb.j

bb.h:                                             ; preds = %.invoke, %_ZNKSt8functionIFviiiEEclEiii.exit, %.lr.ph
  %i.al = add nsw i32 %.037, 1
  %i.am = load i32, ptr %i.e, align 4, !tbaa !143 ; 2 uses
  %.not31.not = icmp slt i32 %.037, %i.am
  br i1 %.not31.not, label %.lr.ph, label %._crit_edge.loopexit

.invoke49:                                        ; preds = %bb.f, %bb.g
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.invoke unwind label %bb.j

.invoke:                                          ; preds = %.invoke49
end_hunk_0
