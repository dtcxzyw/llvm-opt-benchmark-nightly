Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/accelerator?download=true
inline.NumInlined: 2113
inline.NumDeleted: 840
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE

declare void @_Z32gpu_densmatr_allTargDiagMatr_subILb1ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.FullStateDiagMatr) align 8, double, double) #1

declare void @_Z32gpu_densmatr_allTargDiagMatr_subILb0ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.FullStateDiagMatr) align 8, double, double) #1

declare void @_Z32cpu_densmatr_allTargDiagMatr_subILb1ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.FullStateDiagMatr) align 8, double, double) #1

declare void @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.FullStateDiagMatr) align 8, double, double) #1

declare void @_Z32gpu_densmatr_allTargDiagMatr_subILb1ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.FullStateDiagMatr) align 8, double, double) #1

declare void @_Z32gpu_densmatr_allTargDiagMatr_subILb0ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.FullStateDiagMatr) align 8, double, double) #1

declare void @_Z32cpu_densmatr_allTargDiagMatr_subILb1ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.FullStateDiagMatr) align 8, double, double) #1

declare void @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.FullStateDiagMatr) align 8, double, double) #1

; Function Attrs: mustprogress uwtable
define void @_Z35accel_densmatr_allTargDiagMatr_subA5Qureg17FullStateDiagMatrSt7complexIdEbbb(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %1, double %2, double %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.FullStateDiagMatr, align 8  ; 7 uses
  %8 = alloca %struct.FullStateDiagMatr, align 8  ; 7 uses
  tail call void @_Z31assert_fullStateDiagMatrIsLocal17FullStateDiagMatr(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  %i.c = icmp ne i32 %i.b, 0                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16
  %i.f = icmp ne i32 %i.e, 0                      ; 4 uses
  tail call void @_Z46assert_fullStateDiagMatrTemplateParamsAreValidbbb(i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6)
  %i.g = fcmp une double %2, 1.000000e+00
  %i.h = fcmp une double %3, 0.000000e+00
  %i.i = select i1 %i.g, i1 true, i1 %i.h         ; 6 uses
  %or.cond.i = and i1 %4, %5
  %or.cond3.i = and i1 %or.cond.i, %6
  br i1 %or.cond3.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = xor i1 %4, true
  %or.cond5.i = or i1 %5, %.not.i
  %or.cond7.i = or i1 %or.cond5.i, %6
  br i1 %or.cond7.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %_Z32gpu_densmatr_allTargDiagMatr_subILb1ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE._Z32gpu_densmatr_allTargDiagMatr_subILb0ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE.i = select i1 %i.i, ptr @_Z32gpu_densmatr_allTargDiagMatr_subILb1ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE, ptr @_Z32gpu_densmatr_allTargDiagMatr_subILb0ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE
  tail call void @_Z46assert_fullStateDiagMatrTemplateParamsAreValidbbb(i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
  %_Z32cpu_densmatr_allTargDiagMatr_subILb1ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE._Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE.i73 = select i1 %i.i, ptr @_Z32cpu_densmatr_allTargDiagMatr_subILb1ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE, ptr @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE
  br label %_Z31getDenseMatrAllTargDiagMatrFuncbSt7complexIdEbbb.exit74

bb.d:                                             ; preds = %bb.b
  %_Z32gpu_densmatr_allTargDiagMatr_subILb1ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE._Z32gpu_densmatr_allTargDiagMatr_subILb0ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.i = select i1 %i.i, ptr @_Z32gpu_densmatr_allTargDiagMatr_subILb1ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE, ptr @_Z32gpu_densmatr_allTargDiagMatr_subILb0ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE
  tail call void @_Z46assert_fullStateDiagMatrTemplateParamsAreValidbbb(i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6)
  %_Z32cpu_densmatr_allTargDiagMatr_subILb1ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE._Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.i65 = select i1 %i.i, ptr @_Z32cpu_densmatr_allTargDiagMatr_subILb1ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE, ptr @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE
  br label %_Z31getDenseMatrAllTargDiagMatrFuncbSt7complexIdEbbb.exit74

bb.e:                                             ; preds = %bb.b
  %.not33.i = xor i1 %5, true
  %or.cond10.not.i = or i1 %4, %.not33.i
  %or.cond12.i = or i1 %or.cond10.not.i, %6
  %_Z32gpu_densmatr_allTargDiagMatr_subILb1ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE._Z32gpu_densmatr_allTargDiagMatr_subILb0ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.i = select i1 %i.i, ptr @_Z32gpu_densmatr_allTargDiagMatr_subILb1ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE, ptr @_Z32gpu_densmatr_allTargDiagMatr_subILb0ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE
  %spec.select = select i1 %or.cond12.i, ptr null, ptr %_Z32gpu_densmatr_allTargDiagMatr_subILb1ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE._Z32gpu_densmatr_allTargDiagMatr_subILb0ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.i
  tail call void @_Z46assert_fullStateDiagMatrTemplateParamsAreValidbbb(i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6)
  %.not33.i67 = xor i1 %5, true
  %or.cond10.not.i68 = or i1 %4, %.not33.i67
  %or.cond12.i69 = or i1 %or.cond10.not.i68, %6
  %_Z32cpu_densmatr_allTargDiagMatr_subILb1ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE._Z32cpu_densmatr_allTargDiagMatr_subILb0ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.i71 = select i1 %i.i, ptr @_Z32cpu_densmatr_allTargDiagMatr_subILb1ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE, ptr @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE
  %spec.select86 = select i1 %or.cond12.i69, ptr null, ptr %_Z32cpu_densmatr_allTargDiagMatr_subILb1ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE._Z32cpu_densmatr_allTargDiagMatr_subILb0ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.i71
  br label %_Z31getDenseMatrAllTargDiagMatrFuncbSt7complexIdEbbb.exit74

_Z31getDenseMatrAllTargDiagMatrFuncbSt7complexIdEbbb.exit74: ; preds = %bb.e, %bb.c, %bb.d
  %.0.i76 = phi ptr [ %_Z32gpu_densmatr_allTargDiagMatr_subILb1ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE._Z32gpu_densmatr_allTargDiagMatr_subILb0ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE.i, %bb.c ], [ %_Z32gpu_densmatr_allTargDiagMatr_subILb1ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE._Z32gpu_densmatr_allTargDiagMatr_subILb0ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.i, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %.0.i66 = phi ptr [ %_Z32cpu_densmatr_allTargDiagMatr_subILb1ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE._Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE.i73, %bb.c ], [ %_Z32cpu_densmatr_allTargDiagMatr_subILb1ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE._Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.i65, %bb.d ], [ %spec.select86, %bb.e ] ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %.thread79, label %bb.f

bb.f:                                             ; preds = %_Z31getDenseMatrAllTargDiagMatrFuncbSt7complexIdEbbb.exit74
  %or.cond3 = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond3, label %bb.g, label %.thread79

.thread79:                                        ; preds = %bb.f, %_Z31getDenseMatrAllTargDiagMatrFuncbSt7complexIdEbbb.exit74
  %.0.i76.sink = phi ptr [ %.0.i76, %_Z31getDenseMatrAllTargDiagMatrFuncbSt7complexIdEbbb.exit74 ], [ %.0.i66, %bb.f ]
  tail call void %.0.i76.sink(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %1, double %2, double %3)
  %.not80 = xor i1 %i.c, true
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not = xor i1 %i.c, true                       ; 2 uses
  %or.cond5 = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond5, label %.thread83, label %bb.h

.thread83:                                        ; preds = %bb.g
  tail call void %.0.i66(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %1, double %2, double %3)
  br label %bb.n

bb.h:                                             ; preds = %.thread79, %bb.g
  %.not82 = phi i1 [ %.not80, %.thread79 ], [ %.not, %bb.g ]
  %or.cond8 = select i1 %.not82, i1 true, i1 %i.f
  br i1 %or.cond8, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Z41assert_quregGpuBufferIsNotGraftedToMatrix5Qureg17FullStateDiagMatr(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %1)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.616.0.copyload = load i64, ptr %.sroa.616.0..sroa_idx, align 8, !tbaa !46 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !47
  %.not57 = icmp eq i32 %i.k, 0                   ; 2 uses
  br i1 %.not57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.n = tail call noundef ptr @_Z14gpu_allocArrayx(i64 noundef %.sroa.616.0.copyload)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.o = phi ptr [ %i.m, %bb.j ], [ %i.n, %bb.k ] ; 4 uses
  tail call void @_Z50assert_applyFullStateDiagMatrTempGpuAllocSucceededPSt7complexIdE(ptr noundef %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 1, ptr %.sroa.5.0..sroa_idx10, align 8, !tbaa !30
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %7, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx14, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx, i64 12, i1 false)
  %.sroa.616.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.sroa.616.0.copyload, ptr %.sroa.616.0..sroa_idx17, align 8, !tbaa !46
  %.sroa.7.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false)
  %.sroa.723.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.o, ptr %.sroa.723.0..sroa_idx24, align 8, !tbaa !49
  tail call void @_Z16gpu_copyCpuToGpu17FullStateDiagMatr(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 1, ptr %.sroa.5.0..sroa_idx12, align 8, !tbaa !30
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %8, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx15, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx, i64 12, i1 false)
  %.sroa.616.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %.sroa.616.0.copyload, ptr %.sroa.616.0..sroa_idx19, align 8, !tbaa !46
  %.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx22, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false)
  %.sroa.723.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %8, i64 88
  store ptr %i.o, ptr %.sroa.723.0..sroa_idx26, align 8, !tbaa !49
  tail call void %.0.i76(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %8, double %2, double %3)
  br i1 %.not57, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_Z16gpu_deallocArrayPSt7complexIdE(ptr noundef %i.o)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %.thread83, %bb.h
  ret void
}

declare void @_Z31assert_fullStateDiagMatrIsLocal17FullStateDiagMatr(ptr noundef byval(%struct.FullStateDiagMatr) align 8) local_unnamed_addr #1

declare void @_Z41assert_quregGpuBufferIsNotGraftedToMatrix5Qureg17FullStateDiagMatr(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.FullStateDiagMatr) align 8) local_unnamed_addr #1

declare noundef ptr @_Z14gpu_allocArrayx(i64 noundef) local_unnamed_addr #1

declare void @_Z50assert_applyFullStateDiagMatrTempGpuAllocSucceededPSt7complexIdE(ptr noundef) local_unnamed_addr #1

declare void @_Z16gpu_copyCpuToGpu17FullStateDiagMatr(ptr noundef byval(%struct.FullStateDiagMatr) align 8) local_unnamed_addr #1

declare void @_Z16gpu_deallocArrayPSt7complexIdE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z35accel_densmatr_allTargDiagMatr_subB5Qureg17FullStateDiagMatrSt7complexIdEbbb(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %1, double %2, double %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.FullStateDiagMatr, align 16 ; 9 uses
  tail call void @_Z37assert_fullStateDiagMatrIsDistributed17FullStateDiagMatr(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %1)
  tail call void @_Z36assert_acceleratorQuregIsDistributed5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !30
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !46
  %i.d = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.d, ptr %7, align 16
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.b, ptr %.sroa.5.0..sroa_idx5, align 16, !tbaa !30
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx7, align 4, !tbaa !30
  %.sroa.69.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 0, ptr %.sroa.69.0..sroa_idx10, align 8, !tbaa !30
  %.sroa.7.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx12, align 4
  %.sroa.714.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.sroa.4.0.copyload, ptr %.sroa.714.0..sroa_idx15, align 16, !tbaa !46
  %.sroa.818.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !49
  %8 = ptrtoint <2 x ptr> %i.e to <2 x i64>
  store <2 x i64> %8, ptr %.sroa.818.0..sroa_idx19, align 16, !tbaa !49
  tail call void @_Z35accel_densmatr_allTargDiagMatr_subA5Qureg17FullStateDiagMatrSt7complexIdEbbb(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %7, double %2, double %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6)
  ret void
}

declare void @_Z37assert_fullStateDiagMatrIsDistributed17FullStateDiagMatr(ptr noundef byval(%struct.FullStateDiagMatr) align 8) local_unnamed_addr #1

declare void @_Z36assert_acceleratorQuregIsDistributed5Qureg(ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z49accel_statevector_anyCtrlPauliTensorOrGadget_subA5QuregSt6vectorIiSaIiEES2_S2_S2_S2_St7complexIdES4_(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %5, double %6, double %7, double %8, double %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca [7 x %"class.std::vector.79"], align 8 ; 64 uses
  %11 = alloca [7 x %"class.std::vector.79"], align 8 ; 64 uses
  %12 = alloca %"class.std::vector", align 8      ; 6 uses
  %13 = alloca %"class.std::vector", align 8      ; 7 uses
  %14 = alloca %"class.std::vector", align 8      ; 7 uses
  %15 = alloca %"class.std::vector", align 8      ; 7 uses
  %16 = alloca %"class.std::vector", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %3, align 8, !tbaa !25
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.j = load ptr, ptr %4, align 8, !tbaa !25
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = add nuw nsw i64 %i.n, %i.g
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9
  %.not307.not.not = icmp eq i32 %i.r, 0
  %.sink973.sroa.gep = getelementptr inbounds nuw i8, ptr %11, i64 136
  %.sink973.sroa.gep982 = getelementptr inbounds nuw i8, ptr %11, i64 40
  %.sink973.sroa.gep983 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %.sink973.sroa.gep984 = getelementptr inbounds nuw i8, ptr %11, i64 88
  %.sink973.sroa.gep985 = getelementptr inbounds nuw i8, ptr %11, i64 112
  %.sink973.sroa.gep986 = getelementptr inbounds nuw i8, ptr %11, i64 160
  %.sink981.sroa.gep = getelementptr inbounds nuw i8, ptr %10, i64 136
  %.sink981.sroa.gep987 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %.sink981.sroa.gep988 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %.sink981.sroa.gep989 = getelementptr inbounds nuw i8, ptr %10, i64 88
  %.sink981.sroa.gep990 = getelementptr inbounds nuw i8, ptr %10, i64 112
  %.sink981.sroa.gep991 = getelementptr inbounds nuw i8, ptr %10, i64 160
  br i1 %.not307.not.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.s = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #11
          to label %bb.e unwind label %bb.c       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %10, align 8, !tbaa !50    ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i4.i, label %.thread834, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #12
  br label %.thread834

bb.e:                                             ; preds = %bb.b
  store ptr %i.s, ptr %10, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) @constinit.130, i64 56, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.ae = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #11
          to label %bb.g unwind label %bb.f       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 2 uses
  %.not.i.i4.i402 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i4.i402, label %.preheader841.preheader, label %.preheader841.preheader.sink.split

bb.g:                                             ; preds = %bb.e
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) @constinit.131, i64 56, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !53
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.al = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #11
          to label %bb.i unwind label %bb.h       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !50 ; 2 uses
  %.not.i.i4.i407 = icmp eq ptr %i.an, null
  br i1 %.not.i.i4.i407, label %.preheader841.preheader, label %.preheader841.preheader.sink.split

bb.i:                                             ; preds = %bb.g
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) @constinit.132, i64 56, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #11
          to label %bb.k unwind label %bb.j       ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %.not.i.i4.i412 = icmp eq ptr %i.au, null
  br i1 %.not.i.i4.i412, label %.preheader841.preheader, label %.preheader841.preheader.sink.split

bb.k:                                             ; preds = %bb.i
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(56) @constinit.133, i64 56, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !53
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.az = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #11
          to label %bb.m unwind label %bb.l       ; 3 uses

bb.l:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !50 ; 2 uses
  %.not.i.i4.i417 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i4.i417, label %.preheader841.preheader, label %.preheader841.preheader.sink.split

bb.m:                                             ; preds = %bb.k
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 56 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.az, ptr noundef nonnull align 8 dereferenceable(56) @constinit.134, i64 56, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 104
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 120 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bg = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #11
          to label %bb.o unwind label %bb.n       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !50 ; 2 uses
  %.not.i.i4.i422 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i4.i422, label %.preheader841.preheader, label %.preheader841.preheader.sink.split

bb.o:                                             ; preds = %bb.m
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 136
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) @constinit.135, i64 56, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !53
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  %i.bn = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #11
          to label %bb.q unwind label %bb.p       ; 3 uses

bb.p:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !50 ; 2 uses
  %.not.i.i4.i427 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i4.i427, label %.preheader841.preheader, label %.preheader841.preheader.sink.split

bb.q:                                             ; preds = %bb.o
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !50
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 56 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 160
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) @constinit.136, i64 56, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 152
end_hunk_0
