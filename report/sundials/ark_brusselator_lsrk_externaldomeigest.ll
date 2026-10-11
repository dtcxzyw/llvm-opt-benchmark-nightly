Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_brusselator_lsrk_externaldomeigest?download=true
inline.NumInlined: 19
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %i.fp = icmp slt i32 %i.fo, 0
  br i1 %i.fp, label %check_flag.exit99, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fq = load double, ptr %i.b, align 8, !tbaa !18
  %i.fr = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !27 ; 3 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !18
  %i.fz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.fq, double noundef %i.fu, double noundef %i.fw, double noundef %i.fy) ; 0 uses
  %i.ga = call i32 @ARKodeEvolve(ptr noundef nonnull %i.x, double noundef 1.000000e+01, ptr noundef nonnull %i.q, ptr noundef nonnull %i.b, i32 noundef 1) #8 ; 2 uses
  %i.gb = icmp slt i32 %i.ga, 0
  br i1 %i.gb, label %check_flag.exit99, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.v
  %i.gc = load double, ptr %i.b, align 8, !tbaa !18
  %i.gd = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !27 ; 3 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !18
  %i.gl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.gc, double noundef %i.gg, double noundef %i.gi, double noundef %i.gk) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %check_flag.exit99
  %puts73 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts74 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.gm = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.gn = call i32 @ARKodePrintAllStats(ptr noundef nonnull %i.x, ptr noundef %i.gm, i32 noundef 0) #8 ; 3 uses
  %i.go = icmp slt i32 %i.gn, 0
  br i1 %i.go, label %check_flag.exit101.a, label %bb.w

check_flag.exit101.a:                             ; preds = %.loopexit
  %i.gp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gp, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, i32 noundef %i.gn) #9 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %.loopexit
  call void @N_VDestroy(ptr noundef nonnull %i.q) #8
  call void @ARKodeFree(ptr noundef nonnull %i.a) #8
  %i.gr = call i32 @SUNDomEigEstimator_Destroy(ptr noundef nonnull %i.n) #8 ; 0 uses
  %i.gs = call i32 @SUNContext_Free(ptr noundef nonnull %i.c) #8 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %check_flag.exit101.a, %check_flag.exit97.a, %check_flag.exit95.a, %check_flag.exit93.a, %check_flag.exit91.a, %check_flag.exit89.a, %check_flag.exit87.a, %check_flag.exit85.a, %check_flag.exit83.a, %check_flag.exit81.a, %check_flag.exit79.a, %check_flag.exit77.a, %check_flag.exit.a, %bb.w
  %.1 = phi i32 [ 1, %check_flag.exit77.a ], [ 1, %check_flag.exit.a ], [ %i.gn, %bb.w ], [ 1, %check_flag.exit79.a ], [ 1, %check_flag.exit81.a ], [ 1, %check_flag.exit83.a ], [ 1, %check_flag.exit85.a ], [ 1, %check_flag.exit87.a ], [ 1, %check_flag.exit89.a ], [ 1, %check_flag.exit91.a ], [ 1, %check_flag.exit93.a ], [ 1, %check_flag.exit95.a ], [ 1, %check_flag.exit97.a ], [ 1, %check_flag.exit101.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

declare ptr @LSRKStepCreateSTS(ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @f(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !18
  %i.g = load ptr, ptr %1, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 3 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !18 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = fmul double %i.j, %i.l                   ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %i.r = fneg double %i.j
  %i.s = fmul double %i.n, %i.r
  %i.t = insertelement <2 x double> poison, double %i.n, i64 0
  %i.u = insertelement <2 x double> poison, double %i.j, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = load double, ptr %i.m, align 8, !tbaa !18 ; 3 uses
  %i.x = insertelement <2 x double> poison, double %i.w, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fadd <2 x double> %i.y, <double 1.000000e+00, double -0.000000e+00>
  %i.aa = insertelement <2 x double> %i.t, double %i.w, i64 1
  %i.ab = fsub double %i.d, %i.w
  %i.ac = fdiv double %i.ab, %i.f
  %i.ad = fneg <2 x double> %i.z
  %i.ae = insertelement <2 x double> poison, double %i.b, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ac, i64 1
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.v, <2 x double> %i.af) ; 2 uses
  %i.ah = insertelement <2 x double> %i.ag, double %i.s, i64 1
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.v, <2 x double> %i.ah)
  store <2 x double> %i.ai, ptr %i.q, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ak = extractelement <2 x double> %i.ag, i64 1
  store double %i.ak, ptr %i.aj, align 8, !tbaa !18
  ret i32 0
}

declare i32 @ARKodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @ARKodeSetInterpolantType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @LSRKStepSetDomEigFn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @dom_eig(double noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree readnone captures(none) %7, ptr nofree readnone captures(none) %8) #0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.thread56

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @N_VGetArrayPointer(ptr noundef %6) #8
  %i.f = tail call i64 @N_VGetLength(ptr noundef %6) #8 ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.k = load double, ptr %i.j, align 8, !tbaa !20
  %i.l = tail call ptr @SUNDomEigEstimator_Power(ptr noundef %6, i64 noundef %i.i, double noundef %i.k, ptr noundef %i.a) #8 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %check_flag.exit.a, label %bb.c

check_flag.exit.a:                                ; preds = %._crit_edge
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24) #9 ; 0 uses
  br label %.thread

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %i.p = tail call i32 @rand() #8
  %i.q = sitofp i32 %i.p to double
  %i.r = fdiv double %i.q, f0x41DFFFFFFFC00000
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.r, ptr %i.s, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  store ptr %i.l, ptr %i.b, align 8, !tbaa !19
  %i.t = tail call i32 @SUNDomEigEstimator_SetRhs(ptr noundef nonnull %i.l, ptr noundef nonnull %5, ptr noundef nonnull @f) #8 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %check_flag.exit40.a, label %bb.d

check_flag.exit40.a:                              ; preds = %bb.c
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef %i.t) #9 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.x = tail call i32 @SUNDomEigEstimator_Initialize(ptr noundef nonnull %i.l) #8 ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %.thread56

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26, i32 noundef %i.x) #9 ; 0 uses
  br label %.thread

.thread56:                                        ; preds = %bb.d, %bb.a
  %.029 = phi ptr [ %i.c, %bb.a ], [ %i.l, %bb.d ] ; 2 uses
  %i.ab = tail call i32 @SUNDomEigEstimator_SetRhsLinearizationPoint(ptr noundef nonnull %.029, double noundef %0, ptr noundef %1) #8 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %check_flag.exit44.a, label %bb.f

check_flag.exit44.a:                              ; preds = %.thread56
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.27, i32 noundef %i.ab) #9 ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %.thread56
  %i.af = tail call i32 @SUNDomEigEstimator_Estimate(ptr noundef nonnull %.029, ptr noundef %3, ptr noundef %4) #8 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %check_flag.exit46.a, label %.thread

check_flag.exit46.a:                              ; preds = %bb.f
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef %i.af) #9 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %check_flag.exit.a, %check_flag.exit40.a, %check_flag.exit46.a, %bb.f, %check_flag.exit44.a, %bb.e
  %.1 = phi i32 [ 1, %bb.e ], [ 0, %bb.f ], [ -1, %check_flag.exit44.a ], [ -1, %check_flag.exit46.a ], [ -1, %check_flag.exit40.a ], [ -1, %check_flag.exit.a ]
  ret i32 %.1
}

declare i32 @LSRKStepSetMaxNumStages(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ARKodeSetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @LSRKStepSetDomEigSafetyFactor(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @LSRKStepSetSTSMethodByName(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetOptions(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeEvolve(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @ARKodePrintAllStats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare void @ARKodeFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNDomEigEstimator_Destroy(ptr noundef) local_unnamed_addr #2

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @N_VGetLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #5

declare ptr @SUNDomEigEstimator_Power(ptr noundef, i64 noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNDomEigEstimator_SetRhs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNDomEigEstimator_Initialize(ptr noundef) local_unnamed_addr #2

declare i32 @SUNDomEigEstimator_SetRhsLinearizationPoint(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNDomEigEstimator_Estimate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!13 = !{!"p1 _ZTS19SUNDomEigEstimator_", !9, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"", !12, i64 0, !5, i64 8, !13, i64 32, !14, i64 40, !15, i64 48}
!17 = !{!16, !12, i64 0}
!18 = !{!14, !14, i64 0}
!19 = !{!16, !13, i64 32}
!20 = !{!16, !14, i64 40}
!21 = !{!16, !15, i64 48}
!22 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !9, i64 0}
!23 = !{!"_generic_N_Vector", !9, i64 0, !22, i64 8, !12, i64 16}
!24 = !{!23, !9, i64 0}
!25 = !{!"p1 double", !9, i64 0}
!26 = !{!"_N_VectorContent_Serial", !15, i64 0, !6, i64 8, !25, i64 16}
!27 = !{!26, !25, i64 16}
!28 = !{!12, !12, i64 0}
!29 = !{!9, !9, i64 0}
end_hunk_0
