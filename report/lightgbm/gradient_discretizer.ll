Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/gradient_discretizer?download=true
inline.NumInlined: 717
inline.NumDeleted: 360
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv
; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log5WriteENS_8LogLevelEPKcS3_P13__va_list_tag(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 6 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN8LightGBM3Log8GetLevelEvE5level)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !149
  %.not = icmp sgt i32 %0, %i.c
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN8LightGBM3Log14GetLogCallBackEvE8callback) ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %1) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !151, !noalias !152
  %i.i = tail call i32 @vfprintf(ptr noundef %i.h, ptr noundef %2, ptr noundef %3) #5, !inline_history !147 ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !151
  %i.k = tail call i32 @fflush(ptr noundef %i.j)  ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 512, ptr noundef nonnull @.str.8, ptr noundef %1) #5 ; 0 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !46
  call void %i.m(ptr noundef nonnull %i.a)
  %i.n = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 512, ptr noundef %2, ptr noundef %3) #5 ; 0 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !46
  call void %i.o(ptr noundef nonnull %i.a)
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !46
  call void %i.p(ptr noundef nonnull @.str.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFviiiEZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS4_E3$_0E9_M_invokeERKSt9_Any_dataOiSA_SA_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree nonnull readonly align 4 captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !46    ; 4 uses
  %.val5 = load i32, ptr %2, align 4, !tbaa !32   ; 2 uses
  %.val6 = load i32, ptr %3, align 4, !tbaa !32   ; 2 uses
  %i.a = tail call i32 @omp_get_thread_num()
  %i.b = icmp slt i32 %.val5, %.val6
  br i1 %i.b, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS3_E3$_0JiiiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.c = load ptr, ptr %.val, align 8, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !156
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !157, !nonnull !65, !align !158
  %i.h = sext i32 %i.a to i64                     ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !159, !nonnull !65, !align !158
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.h ; 2 uses
  %i.o = sext i32 %.val5 to i64
  %wide.trip.count.i.i.i = sext i32 %.val6 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.f ] ; 3 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.i.i.i
  %i.q = load float, ptr %i.p, align 4, !tbaa !36
  %i.r = tail call noundef float @llvm.fabs.f32(float %i.q)
  %i.s = fpext float %i.r to double               ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.i.i.i
  %i.u = load float, ptr %i.t, align 4, !tbaa !36
  %i.v = tail call noundef float @llvm.fabs.f32(float %i.u)
  %i.w = fpext float %i.v to double               ; 2 uses
  %i.x = load double, ptr %i.j, align 8, !tbaa !38
  %i.y = fcmp olt double %i.x, %i.s
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store double %i.s, ptr %i.j, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = load double, ptr %i.n, align 8, !tbaa !38
  %i.aa = fcmp olt double %i.z, %i.w
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.w, ptr %i.n, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %"_ZSt10__invoke_rIvRZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS3_E3$_0JiiiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit", label %bb.b, !llvm.loop !153

"_ZSt10__invoke_rIvRZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS3_E3$_0JiiiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit": ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFviiiEZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS2_E3$_0", ptr %0, align 8, !tbaa !161
  br label %"_ZNSt14_Function_base13_Base_managerIZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !46
  store ptr %.val, ptr %0, align 8, !tbaa !46
  br label %"_ZNSt14_Function_base13_Base_managerIZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !162
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  br label %"_ZNSt14_Function_base13_Base_managerIZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !46 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #25
  br label %"_ZNSt14_Function_base13_Base_managerIZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nounwind
declare i32 @omp_get_thread_num() local_unnamed_addr #15

declare void @_ZN8LightGBM7Network9AllreduceEPciiS1_RKPFvPKcS1_iiE(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8LightGBM7Network17GlobalSyncUpByMaxIdEET_S2_ENUlPKcPciiE_8__invokeES4_S5_ii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #13 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.i, label %_ZZN8LightGBM7Network17GlobalSyncUpByMaxIdEET_S2_ENKUlPKcPciiE_clES4_S5_ii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i32 [ 0, %.lr.ph.i ], [ %i.h, %bb.d ]
  %.01417.i.a = phi ptr [ %0, %.lr.ph.i ], [ %i.f, %bb.d ] ; 3 uses
  %.01516.i = phi ptr [ %1, %.lr.ph.i ], [ %i.g, %bb.d ] ; 3 uses
  %i.c = load double, ptr %.01417.i.a, align 8, !tbaa !38
  %i.d = load double, ptr %.01516.i, align 8, !tbaa !38
  %i.e = fcmp ogt double %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.01516.i, ptr nonnull align 8 %.01417.i.a, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds i8, ptr %.01417.i.a, i64 %i.b
  %i.g = getelementptr inbounds i8, ptr %.01516.i, i64 %i.b
  %i.h = add nsw i32 %.018.i, %2                  ; 2 uses
  %4 = icmp slt i32 %i.h, %3
  br i1 %4, label %bb.b, label %_ZZN8LightGBM7Network17GlobalSyncUpByMaxIdEET_S2_ENKUlPKcPciiE_clES4_S5_ii.exit, !llvm.loop !163

_ZZN8LightGBM7Network17GlobalSyncUpByMaxIdEET_S2_ENKUlPKcPciiE_clES4_S5_ii.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<>::param_type", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !166
  %i.c = sext i32 %i.b to i64
  %i.d = load i32, ptr %2, align 4, !tbaa !167
  %i.e = sext i32 %i.d to i64
  %i.f = sub nsw i64 %i.c, %i.e                   ; 4 uses
  %i.g = icmp ult i64 %i.f, 4294967295
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = trunc nuw i64 %i.f to i32                ; 3 uses
  %i.i = add nuw i32 %i.h, 1                      ; 2 uses
  %i.j = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.k = zext i32 %i.i to i64                     ; 2 uses
  %i.l = mul i64 %i.j, %i.k                       ; 3 uses
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %.not21 = icmp ult i32 %i.h, %i.m
  br i1 %.not21, label %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = xor i32 %i.h, -1
  %i.o = urem i32 %i.n, %i.i                      ; 2 uses
  %i.p = icmp ugt i32 %i.o, %i.m
  br i1 %i.p, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.q = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.r = mul i64 %i.q, %i.k                       ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp ugt i32 %i.o, %i.s
  br i1 %i.t, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, !llvm.loop !164

_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.1.i = phi i64 [ %i.l, %bb.b ], [ %i.l, %bb.c ], [ %i.r, %.lr.ph.i ]
  %i.u = lshr i64 %.1.i, 32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 4294967295
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !tbaa !167
  store i32 -1, ptr %i.v, align 4, !tbaa !166
  %i.w = call noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 32                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.z = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.aa = add i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, %i.f
  %i.ac = icmp ult i64 %i.aa, %i.y
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %.loopexit, !llvm.loop !165

bb.f:                                             ; preds = %bb.d
  %i.ae = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
  %.0 = phi i64 [ %i.u, %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit ], [ %i.ae, %bb.f ], [ %i.aa, %bb.e ]
  %i.af = load i32, ptr %2, align 4, !tbaa !167
  %i.ag = trunc i64 %.0 to i32
  %i.ah = add i32 %i.af, %i.ag
  ret i32 %i.ah
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM19GradientDiscretizer22RenewIntGradTreeOutputEPNS_4TreeEPKNS_6ConfigEPKNS_13DataPartitionEPKfSA_RKSt8functionIFiiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5336) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %i.j = alloca double, align 8                   ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca double, align 8                   ; 5 uses
  %i.n = alloca double, align 8                   ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.o = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !34
  store ptr %5, ptr %i.f, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i64 43, ptr %i.d, align 8, !tbaa !73
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !177
  %i.r = load i64, ptr %i.d, align 8, !tbaa !73   ; 3 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.q, ptr noundef nonnull align 1 dereferenceable(43) @.str.10, i64 43, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !178
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 0, ptr %i.t, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.u = load ptr, ptr %7, align 8, !tbaa !177    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.p
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.w = load i64, ptr %i.p, align 8, !tbaa !75
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.y, ptr %8, align 8, !tbaa !175
  store i32 1635017060, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 4, ptr %i.z, align 8, !tbaa !178
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 0, ptr %i.aa, align 4, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !178
  %i.ad = icmp eq i64 %i.ac, 4
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %.preheader75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !177
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = load i32, ptr %i.y, align 1
  %i.ai = icmp ne i32 %i.ag, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br i1 %i.ak, label %.preheader, label %.preheader75

.preheader75:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !192
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph, label %_ZNSt6vectorIdSaIdEED2Ev.exit

.lr.ph:                                           ; preds = %.preheader75
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 336
  br label %bb.i

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !192
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph78, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 5288
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !26, !noalias !193
  br label %._crit_edge

.lr.ph78:                                         ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5288
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader.._crit_edge_crit_edge
  %i.bc = phi ptr [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.cq, %bb.b ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 5288
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 5296 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !41, !noalias !193 ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = icmp ugt i64 %i.bi, 9223372036854775800
end_hunk_0
begin_hunk_1_@_ZN8LightGBM19GradientDiscretizer22RenewIntGradTreeOutputEPNS_4TreeEPKNS_6ConfigEPKNS_13DataPartitionEPKfSA_RKSt8functionIFiiEE.omp_outlined.omp.reduction.reduction_func:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load double, ptr %i.b, align 8, !tbaa !38
  %i.h = load double, ptr %i.a, align 8, !tbaa !38
  %i.i = fadd double %i.g, %i.h
  store double %i.i, ptr %i.b, align 8, !tbaa !38
  %i.j = load double, ptr %i.f, align 8, !tbaa !38
  %i.k = load double, ptr %i.d, align 8, !tbaa !38
  %i.l = fadd double %i.j, %i.k
  store double %i.l, ptr %i.f, align 8, !tbaa !38
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #20

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #20

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM19GradientDiscretizer22RenewIntGradTreeOutputEPNS_4TreeEPKNS_6ConfigEPKNS_13DataPartitionEPKfSA_RKSt8functionIFiiEE.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %7) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca double, align 8                   ; 7 uses
  %i.g = alloca [2 x ptr], align 8                ; 3 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !32     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.j, ptr %i.b, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !38
  %i.k = load i32, ptr %0, align 4, !tbaa !32     ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !32
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 5 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !32
  %i.n = load i32, ptr %i.a, align 4, !tbaa !32   ; 4 uses
  %.not22 = icmp sgt i32 %i.n, %i.m
  br i1 %.not22, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = load ptr, ptr %3, align 8, !tbaa !83     ; 3 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !34     ; 3 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !34     ; 3 uses
  %i.r = sext i32 %i.n to i64                     ; 3 uses
  %i.s = add nsw i32 %i.m, 1
  %i.t = add i32 %i.m, %i.n
  %i.u = and i32 %i.t, 1
  %lcmp.mod.not.not = icmp eq i32 %i.u, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.v = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !36
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.x
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !36
  %i.ac = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.ab, i64 1
  %i.ae = fpext <2 x float> %i.ad to <2 x double>
  %i.af = fadd <2 x double> %i.ae, zeroinitializer ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.r, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa.unr = phi <2 x double> [ poison, %.lr.ph ], [ %i.af, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.af, %.prol.loopexit.unr-lcssa ]
  %i.ag = icmp eq i32 %i.m, %i.n
  br i1 %i.ag, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.ah = phi <2 x double> [ %i.be, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !36
  %i.an = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ak
  %i.ao = load float, ptr %i.an, align 4, !tbaa !36
  %i.ap = insertelement <2 x float> poison, float %i.am, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.ao, i64 1
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  %i.as = fadd <2 x double> %i.ah, %i.ar
  %i.at = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !32
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !36
  %i.az = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.aw
  %i.ba = load float, ptr %i.az, align 4, !tbaa !36
  %i.bb = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.ba, i64 1
  %i.bd = fpext <2 x float> %i.bc to <2 x double>
  %i.be = fadd <2 x double> %i.as, %i.bd          ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.s, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa = phi <2 x double> [ %.lcssa.unr, %.prol.loopexit ], [ %i.be, %.lr.ph.new ] ; 2 uses
  %i.bf = extractelement <2 x double> %.lcssa, i64 0
  store double %i.bf, ptr %i.e, align 8, !tbaa !38
  %i.bg = extractelement <2 x double> %.lcssa, i64 1
  store double %i.bg, ptr %i.f, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  store ptr %i.e, ptr %i.g, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.bh, align 8
  %i.bi = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %i.k, i32 2, i64 16, ptr nonnull %i.g, ptr nonnull @_ZN8LightGBM19GradientDiscretizer22RenewIntGradTreeOutputEPNS_4TreeEPKNS_6ConfigEPKNS_13DataPartitionEPKfSA_RKSt8functionIFiiEE.omp_outlined.12.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.bi, label %bb.f [
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.bj = load double, ptr %6, align 8, !tbaa !38
  %i.bk = load double, ptr %i.e, align 8, !tbaa !38
  %i.bl = fadd double %i.bj, %i.bk
  store double %i.bl, ptr %6, align 8, !tbaa !38
  %i.bm = load double, ptr %7, align 8, !tbaa !38
  %i.bn = load double, ptr %i.f, align 8, !tbaa !38
  %i.bo = fadd double %i.bm, %i.bn
  store double %i.bo, ptr %7, align 8, !tbaa !38
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bp = load double, ptr %i.e, align 8, !tbaa !38
  %i.bq = atomicrmw fadd ptr %6, double %i.bp monotonic, align 8 ; 0 uses
  %i.br = load double, ptr %i.f, align 8, !tbaa !38
  %i.bs = atomicrmw fadd ptr %7, double %i.br monotonic, align 8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN8LightGBM19GradientDiscretizer22RenewIntGradTreeOutputEPNS_4TreeEPKNS_6ConfigEPKNS_13DataPartitionEPKfSA_RKSt8functionIFiiEE.omp_outlined.12.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #19 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load double, ptr %i.b, align 8, !tbaa !38
  %i.h = load double, ptr %i.a, align 8, !tbaa !38
  %i.i = fadd double %i.g, %i.h
  store double %i.i, ptr %i.b, align 8, !tbaa !38
  %i.j = load double, ptr %i.f, align 8, !tbaa !38
  %i.k = load double, ptr %i.d, align 8, !tbaa !38
  %i.l = fadd double %i.j, %i.k
  store double %i.l, ptr %i.f, align 8, !tbaa !38
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_ENUlPKcPciiE_8__invokeES8_S9_ii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #13 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.i, label %_ZZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_ENKUlPKcPciiE_clES8_S9_ii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ 0, %.lr.ph.i ], [ %i.h, %bb.b ]
  %.01114.i.a = phi ptr [ %0, %.lr.ph.i ], [ %i.f, %bb.b ] ; 2 uses
  %.01213.i = phi ptr [ %1, %.lr.ph.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.c = load double, ptr %.01114.i.a, align 8, !tbaa !38
  %i.d = load double, ptr %.01213.i, align 8, !tbaa !38
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %.01213.i, align 8, !tbaa !38
  %i.f = getelementptr inbounds i8, ptr %.01114.i.a, i64 %i.b
  %i.g = getelementptr inbounds i8, ptr %.01213.i, i64 %i.b
  %i.h = add nsw i32 %.015.i, %2                  ; 2 uses
  %4 = icmp slt i32 %i.h, %3
  br i1 %4, label %bb.b, label %_ZZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_ENKUlPKcPciiE_clES8_S9_ii.exit, !llvm.loop !208

_ZZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_ENKUlPKcPciiE_clES8_S9_ii.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #21 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(none) }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { convergent nounwind }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nofree nounwind }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !22}
!1 = !{i32 1, !"long-double-type", !"x86_fp80"}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !14, i64 8}
!18 = !{!"p1 int", !13, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!19, !18, i64 0}
!21 = !{!19, !18, i64 16}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!15, !14, i64 16}
!24 = !{!"p1 double", !13, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!25, !24, i64 0}
!27 = !{!25, !24, i64 16}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!29, !28, i64 0}
!31 = !{!29, !28, i64 16}
!32 = !{!8, !8, i64 0}
!33 = !{!"p1 float", !13, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"float", !7, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"double", !7, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!25, !24, i64 8}
!42 = !{!"_ZTSSt14_Function_base", !7, i64 0, !13, i64 16}
!43 = !{!42, !13, i64 16}
!44 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !13, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!13, !13, i64 0}
!47 = !{!"_ZTSSt8functionIFviiiEE", !42, i64 0, !13, i64 24}
!48 = !{!47, !13, i64 24}
!49 = !{!"bool", !7, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !25, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !50, i64 0}
!52 = !{!"_ZTSSt6vectorIdSaIdEE", !51, i64 0}
!53 = !{!"long", !7, i64 0}
!54 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !7, i64 0, !53, i64 4992}
!55 = !{!"_ZTSNSt24uniform_int_distributionIiE10param_typeE", !8, i64 0, !8, i64 4}
!56 = !{!"_ZTSSt24uniform_int_distributionIiE", !55, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !29, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorIaSaIaEE", !58, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implE", !15, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !61, i64 0}
!63 = !{!"_ZTSN8LightGBM19GradientDiscretizerE", !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !49, i64 24, !52, i64 32, !52, i64 56, !54, i64 80, !56, i64 5080, !59, i64 5088, !59, i64 5112, !37, i64 5136, !37, i64 5144, !37, i64 5152, !37, i64 5160, !37, i64 5168, !37, i64 5176, !49, i64 5184, !8, i64 5188, !59, i64 5192, !59, i64 5216, !59, i64 5240, !59, i64 5264, !52, i64 5288, !62, i64 5312}
!64 = !{!63, !8, i64 8}
!65 = !{}
!66 = !{!63, !37, i64 5152}
!67 = !{!63, !37, i64 5160}
!68 = !{!28, !28, i64 0}
!69 = !{!"p1 _ZTSN8LightGBM7DatasetE", !13, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!29, !28, i64 8}
!72 = !{!63, !8, i64 20}
!73 = !{!53, !53, i64 0}
!74 = !{!54, !53, i64 4992}
!75 = !{!7, !7, i64 0}
!76 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!77 = !{i64 2, i64 -1, i64 -1, i1 true}
!78 = !{!77}
!79 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !19, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !79, i64 0}
!81 = !{!"_ZTSSt6vectorIiSaIiEE", !80, i64 0}
!82 = !{!19, !18, i64 8}
!83 = !{!18, !18, i64 0}
!84 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !13, i64 0}
!85 = !{!84, !13, i64 0}
!86 = !{!63, !37, i64 5168}
!87 = !{!63, !37, i64 5176}
!88 = distinct !{!88, !22, !39, !40}
!89 = distinct !{!89, !22, !40, !39}
!90 = distinct !{!90, !22, !39, !40}
!91 = distinct !{!91, !22, !40, !39}
!92 = distinct !{!92, !22}
!93 = !{!63, !37, i64 5136}
!94 = !{!63, !37, i64 5144}
!95 = !{!63, !49, i64 5184}
!96 = !{i8 0, i8 2}
!97 = !{!63, !49, i64 24}
!98 = !{i64 0, i64 4992, !75, i64 4992, i64 8, !73}
!99 = !{!63, !8, i64 5188}
!100 = distinct !{!100, !22, !39, !40}
!101 = distinct !{!101, !22, !39, !40}
!102 = distinct !{!102, !22}
!103 = distinct !{!103, !22, !39, !40}
!104 = distinct !{!104, !22, !39, !40}
!105 = distinct !{!105, !22}
!106 = !{!"p1 _ZTSSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS1_EE", !13, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!107, !106, i64 0}
!109 = !{!"p1 _ZTSN8LightGBM12FeatureGroupE", !13, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!"p1 _ZTSSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE", !13, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!112, !111, i64 0}
!114 = !{!"p1 _ZTSN8LightGBM9BinMapperE", !13, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!"_ZTSN8LightGBM11MissingTypeE", !7, i64 0}
!117 = !{!"_ZTSN8LightGBM7BinTypeE", !7, i64 0}
!118 = !{!"any p2 pointer", !13, i64 0}
!119 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !118, i64 0}
!120 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!121 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !120, i64 0}
!122 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !35, i64 0, !53, i64 8}
!123 = !{!"_ZTSSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !119, i64 0, !53, i64 8, !121, i64 16, !53, i64 24, !122, i64 32, !120, i64 48}
!124 = !{!"_ZTSSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE", !123, i64 0}
!125 = !{!"_ZTSN8LightGBM9BinMapperE", !8, i64 0, !116, i64 4, !52, i64 8, !49, i64 32, !37, i64 40, !117, i64 48, !124, i64 56, !81, i64 112, !37, i64 136, !37, i64 144, !8, i64 152, !8, i64 156}
!126 = !{!125, !8, i64 0}
!127 = !{!125, !8, i64 156}
!128 = distinct !{!128, !22, !39, !40}
!129 = distinct !{!129, !22, !39, !40}
!130 = distinct !{!130, !22, !39, !40}
!131 = distinct !{!131, !22, !40, !39}
!132 = distinct !{!132, !22, !39, !40}
!133 = distinct !{!133, !22, !40, !39}
!134 = distinct !{!134, !22, !39, !40}
!135 = distinct !{!135, !22, !40, !39}
!136 = distinct !{!136, !22, !39, !40}
!137 = distinct !{!137, !22, !40, !39}
!138 = distinct !{!138, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!139 = distinct !{!139, !138, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!140 = distinct !{!140, !138, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!141 = distinct !{!141, !22}
!142 = !{!139}
!143 = !{!140}
!144 = distinct !{null}
!145 = distinct !{!145, !"vprintf"}
!146 = distinct !{!146, !145, !"vprintf: argument 0"}
!147 = distinct !{null}
!148 = !{!"_ZTSN8LightGBM8LogLevelE", !7, i64 0}
!149 = !{!148, !148, i64 0}
!150 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!151 = !{!150, !150, i64 0}
!152 = !{!146}
!153 = distinct !{!153, !22}
!154 = !{!"_ZTSZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS2_E3$_0", !33, i64 0, !33, i64 8, !44, i64 16, !44, i64 24}
!155 = !{!154, !33, i64 0}
!156 = !{!154, !33, i64 8}
!157 = !{!154, !44, i64 16}
!158 = !{i64 8}
!159 = !{!154, !44, i64 24}
!160 = !{!"p1 _ZTSSt9type_info", !13, i64 0}
!161 = !{!160, !160, i64 0}
!162 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !45, i64 24, i64 8, !45}
!163 = distinct !{!163, !22}
!164 = distinct !{!164, !22}
!165 = distinct !{!165, !22}
!166 = !{!55, !8, i64 4}
!167 = !{!55, !8, i64 0}
!168 = distinct !{!168, !"_ZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_"}
!169 = distinct !{!169, !168, !"_ZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_: argument 0"}
!170 = distinct !{!170, !22}
!171 = distinct !{null}
!172 = distinct !{!172, !22}
!173 = distinct !{!173, !22}
!174 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!175 = !{!174, !28, i64 0}
!176 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !174, i64 0, !53, i64 8, !7, i64 16}
!177 = !{!176, !28, i64 0}
!178 = !{!176, !53, i64 8}
!179 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!180 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !179, i64 0}
!181 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !180, i64 0}
!182 = !{!"_ZTSSt6vectorIjSaIjEE", !181, i64 0}
!183 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!184 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !183, i64 0}
!185 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !184, i64 0}
!186 = !{!"_ZTSSt6vectorIfSaIfEE", !185, i64 0}
!187 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!188 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implE", !187, i64 0}
!189 = !{!"_ZTSSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE", !188, i64 0}
!190 = !{!"_ZTSSt6vectorIS_IdSaIdEESaIS1_EE", !189, i64 0}
!191 = !{!"_ZTSN8LightGBM4TreeE", !8, i64 8, !8, i64 12, !81, i64 16, !81, i64 40, !81, i64 64, !81, i64 88, !182, i64 112, !52, i64 136, !8, i64 160, !81, i64 168, !182, i64 192, !81, i64 216, !182, i64 240, !59, i64 264, !186, i64 288, !81, i64 312, !52, i64 336, !52, i64 360, !81, i64 384, !52, i64 408, !52, i64 432, !81, i64 456, !81, i64 480, !49, i64 504, !62, i64 512, !37, i64 536, !8, i64 544, !49, i64 548, !190, i64 552, !52, i64 576, !62, i64 600, !62, i64 624}
!192 = !{!191, !8, i64 12}
!193 = !{!169}
!194 = !{!"_ZTSNSt12_Vector_baseIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!195 = !{!194, !18, i64 0}
!196 = !{!"_ZTSN8LightGBM8TaskTypeE", !7, i64 0}
!197 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!198 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !197, i64 0, !197, i64 8, !197, i64 16}
!199 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !198, i64 0}
!200 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !199, i64 0}
!201 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !200, i64 0}
!202 = !{!"_ZTSN8LightGBM6ConfigE", !176, i64 0, !196, i64 32, !176, i64 40, !176, i64 72, !176, i64 104, !176, i64 136, !201, i64 168, !8, i64 192, !37, i64 200, !8, i64 208, !176, i64 216, !8, i64 248, !176, i64 256, !8, i64 288, !49, i64 292, !49, i64 293, !49, i64 294, !37, i64 296, !8, i64 304, !8, i64 308, !37, i64 312, !37, i64 320, !37, i64 328, !37, i64 336, !8, i64 344, !8, i64 348, !49, i64 352, !37, i64 360, !37, i64 368, !8, i64 376, !49, i64 380, !8, i64 384, !8, i64 388, !37, i64 392, !49, i64 400, !37, i64 408, !37, i64 416, !37, i64 424, !37, i64 432, !37, i64 440, !37, i64 448, !8, i64 456, !37, i64 464, !49, i64 472, !49, i64 473, !8, i64 476, !37, i64 480, !37, i64 488, !8, i64 496, !8, i64 500, !37, i64 504, !37, i64 512, !8, i64 520, !8, i64 524, !59, i64 528, !176, i64 552, !37, i64 584, !52, i64 592, !176, i64 616, !37, i64 648, !37, i64 656, !37, i64 664, !52, i64 672, !52, i64 696, !37, i64 720, !176, i64 728, !8, i64 760, !176, i64 768, !176, i64 800, !8, i64 832, !8, i64 836, !49, i64 840, !8, i64 844, !49, i64 848, !49, i64 849, !49, i64 850, !8, i64 852, !81, i64 856, !8, i64 880, !8, i64 884, !8, i64 888, !49, i64 892, !49, i64 893, !49, i64 894, !49, i64 895, !49, i64 896, !49, i64 897, !49, i64 898, !49, i64 899, !176, i64 904, !176, i64 936, !176, i64 968, !176, i64 1000, !176, i64 1032, !176, i64 1064, !49, i64 1096, !49, i64 1097, !176, i64 1104, !8, i64 1136, !8, i64 1140, !49, i64 1144, !49, i64 1145, !49, i64 1146, !49, i64 1147, !49, i64 1148, !8, i64 1152, !37, i64 1160, !176, i64 1168, !176, i64 1200, !176, i64 1232, !8, i64 1264, !8, i64 1268, !49, i64 1272, !37, i64 1280, !37, i64 1288, !49, i64 1296, !49, i64 1297, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !8, i64 1336, !49, i64 1340, !52, i64 1344, !37, i64 1368, !201, i64 1376, !8, i64 1400, !49, i64 1404, !81, i64 1408, !8, i64 1432, !52, i64 1440, !8, i64 1464, !8, i64 1468, !8, i64 1472, !176, i64 1480, !176, i64 1512, !8, i64 1544, !8, i64 1548, !176, i64 1552, !49, i64 1584, !8, i64 1588, !53, i64 1592, !49, i64 1600, !49, i64 1601, !190, i64 1608, !62, i64 1632}
!203 = !{!202, !37, i64 416}
!204 = !{!202, !37, i64 424}
!205 = !{!202, !37, i64 408}
!206 = !{!"_ZTSSt8functionIFiiEE", !42, i64 0, !13, i64 24}
!207 = !{!206, !13, i64 24}
!208 = distinct !{!208, !22}
end_hunk_1
