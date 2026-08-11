inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0_@CVodeSetMaxNumProjFails:bb.a
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = icmp slt i32 %1, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cvAccessProjMem.exit
  store i32 10, ptr %i.f, align 8, !tbaa !29
  br label %cvAccessProjMem.exit.thread

bb.f:                                             ; preds = %cvAccessProjMem.exit
  store i32 %1, ptr %i.f, align 8, !tbaa !29
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit.thread:                      ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ -56, %bb.d ], [ -21, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -56, 1) i32 @CVodeSetEpsProj(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 441, ptr noundef nonnull @__func__.CVodeSetEpsProj, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cvAccessProjMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %cvAccessProjMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -56, i32 noundef 449, ptr noundef nonnull @__func__.CVodeSetEpsProj, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = fcmp ugt double %1, 0.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %cvAccessProjMem.exit
  store double 1.000000e-01, ptr %i.f, align 8, !tbaa !34
  br label %cvAccessProjMem.exit.thread

bb.f:                                             ; preds = %cvAccessProjMem.exit
  store double %1, ptr %i.f, align 8, !tbaa !34
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit.thread:                      ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ -56, %bb.d ], [ -21, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -56, 1) i32 @CVodeSetProjFailEta(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 441, ptr noundef nonnull @__func__.CVodeSetProjFailEta, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cvAccessProjMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %cvAccessProjMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -56, i32 noundef 449, ptr noundef nonnull @__func__.CVodeSetProjFailEta, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = fcmp ole double %1, 0.000000e+00
  %i.f = fcmp ogt double %1, 1.000000e+00
  %or.cond = or i1 %i.e, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cvAccessProjMem.exit
  store double 2.500000e-01, ptr %i.g, align 8, !tbaa !35
  br label %cvAccessProjMem.exit.thread

bb.f:                                             ; preds = %cvAccessProjMem.exit
  store double %1, ptr %i.g, align 8, !tbaa !35
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit.thread:                      ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ -56, %bb.d ], [ -21, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -56, 1) i32 @CVodeGetNumProjEvals(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 441, ptr noundef nonnull @__func__.CVodeGetNumProjEvals, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cvAccessProjMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %cvAccessProjMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -56, i32 noundef 449, ptr noundef nonnull @__func__.CVodeGetNumProjEvals, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36
  store i64 %i.f, ptr %1, align 8, !tbaa !37
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit.thread:                      ; preds = %bb.d, %bb.b, %cvAccessProjMem.exit
  %.0 = phi i32 [ 0, %cvAccessProjMem.exit ], [ -56, %bb.d ], [ -21, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -56, 1) i32 @CVodeGetNumProjFails(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 441, ptr noundef nonnull @__func__.CVodeGetNumProjFails, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cvAccessProjMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %cvAccessProjMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -56, i32 noundef 449, ptr noundef nonnull @__func__.CVodeGetNumProjFails, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  store i64 %i.f, ptr %1, align 8, !tbaa !37
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit.thread:                      ; preds = %bb.d, %bb.b, %cvAccessProjMem.exit
  %.0 = phi i32 [ 0, %cvAccessProjMem.exit ], [ -56, %bb.d ], [ -21, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -58, 4) i32 @cvDoProjection(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, double noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 9 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -56, i32 noundef 290, ptr noundef nonnull @__func__.cvDoProjection, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.k, ptr noundef %i.i) #8
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.04957 = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.o = load double, ptr %i.n, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.s = load double, ptr %i.r, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.v = tail call i32 %i.m(double noundef %i.o, ptr noundef %i.q, ptr noundef %i.e, double noundef %i.s, ptr noundef %.04957, ptr noundef %i.u) #8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36
  %i.y = add nsw i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !27
  %i.aa = icmp eq i32 %i.v, 0
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.thread
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !26
  %.not55 = icmp eq i32 %i.ab, 0
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ae = tail call double @N_VWrmsNorm(ptr noundef %.04957, ptr noundef %i.ad) #8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store double %i.ae, ptr %i.af, align 8, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i32 1, ptr %i.ag, align 4, !tbaa !47
  br label %bb.l

bb.h:                                             ; preds = %.thread
  %i.ah = icmp slt i32 %i.v, 0
  %4 = icmp sgt i32 %i.v, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !38
  %i.ak = add nsw i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !38
  tail call void @cvRestore(ptr noundef nonnull %0, double noundef %2) #8
  br i1 %i.ah, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %3, align 4, !tbaa !48
  %i.am = add nsw i32 %i.al, 1                    ; 2 uses
  store i32 %i.am, ptr %3, align 4, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !50
  %i.aq = tail call double @llvm.fabs.f64(double %i.ap) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.as = load double, ptr %i.ar, align 8, !tbaa !51 ; 2 uses
  %i.at = fmul double %i.as, f0x3FF000010C6F7A0B
  %i.au = fcmp ugt double %i.aq, %i.at
  br i1 %i.au, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !29
  %i.ax = icmp eq i32 %i.am, %i.aw
  %or.cond = and i1 %4, %i.ax
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.az = load double, ptr %i.ay, align 8, !tbaa !35 ; 2 uses
  %i.ba = fdiv double %i.as, %i.aq                ; 2 uses
  %i.bb = fcmp ogt double %i.az, %i.ba
  %. = select i1 %i.bb, double %i.az, double %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store double %., ptr %i.bc, align 8, !tbaa !52
  store i32 8, ptr %1, align 4, !tbaa !48
  tail call void @cvRescale(ptr noundef nonnull %0) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.k, %bb.g, %bb.b
  %.0 = phi i32 [ -56, %bb.b ], [ 0, %bb.g ], [ 3, %bb.k ], [ -57, %bb.h ], [ -58, %bb.j ], [ -58, %bb.i ]
  ret i32 %.0
}

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @cvRestore(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare void @cvRescale(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -56, 1) i32 @cvProjInit(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -56, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef i32 @cvProjFree(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #8
  store ptr null, ptr %0, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 40}
!9 = !{!"CVodeMemRec", !10, i64 0, !11, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !5, i64 40, !5, i64 44, !12, i64 48, !12, i64 56, !13, i64 64, !5, i64 72, !5, i64 76, !11, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !5, i64 112, !5, i64 116, !12, i64 120, !12, i64 128, !13, i64 136, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !11, i64 160, !11, i64 168, !11, i64 176, !5, i64 184, !5, i64 188, !14, i64 192, !14, i64 200, !15, i64 208, !5, i64 216, !12, i64 224, !5, i64 232, !5, i64 236, !12, i64 240, !14, i64 248, !16, i64 256, !15, i64 264, !5, i64 272, !11, i64 280, !11, i64 288, !5, i64 296, !5, i64 300, !5, i64 304, !12, i64 312, !14, i64 320, !16, i64 328, !15, i64 336, !6, i64 344, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !6, i64 512, !13, i64 616, !13, i64 624, !13, i64 632, !13, i64 640, !6, i64 648, !16, i64 752, !16, i64 760, !16, i64 768, !16, i64 776, !16, i64 784, !5, i64 792, !6, i64 800, !16, i64 904, !16, i64 912, !16, i64 920, !16, i64 928, !13, i64 936, !5, i64 944, !5, i64 948, !12, i64 952, !5, i64 960, !5, i64 964, !5, i64 968, !5, i64 972, !5, i64 976, !12, i64 984, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !6, i64 1048, !6, i64 1160, !6, i64 1208, !12, i64 1312, !12, i64 1320, !12, i64 1328, !12, i64 1336, !12, i64 1344, !12, i64 1352, !12, i64 1360, !12, i64 1368, !12, i64 1376, !12, i64 1384, !5, i64 1392, !12, i64 1400, !12, i64 1408, !5, i64 1416, !12, i64 1424, !12, i64 1432, !15, i64 1440, !5, i64 1448, !18, i64 1456, !5, i64 1464, !5, i64 1468, !5, i64 1472, !12, i64 1480, !12, i64 1488, !12, i64 1496, !12, i64 1504, !12, i64 1512, !12, i64 1520, !12, i64 1528, !12, i64 1536, !12, i64 1544, !12, i64 1552, !12, i64 1560, !12, i64 1568, !18, i64 1576, !5, i64 1584, !18, i64 1592, !18, i64 1600, !18, i64 1608, !18, i64 1616, !18, i64 1624, !18, i64 1632, !18, i64 1640, !18, i64 1648, !18, i64 1656, !19, i64 1664, !18, i64 1672, !18, i64 1680, !19, i64 1688, !18, i64 1696, !18, i64 1704, !19, i64 1712, !18, i64 1720, !18, i64 1728, !18, i64 1736, !18, i64 1744, !18, i64 1752, !18, i64 1760, !5, i64 1768, !12, i64 1776, !12, i64 1784, !12, i64 1792, !18, i64 1800, !18, i64 1808, !18, i64 1816, !18, i64 1824, !18, i64 1832, !18, i64 1840, !20, i64 1848, !5, i64 1856, !20, i64 1864, !5, i64 1872, !20, i64 1880, !5, i64 1888, !20, i64 1896, !5, i64 1904, !5, i64 1908, !18, i64 1912, !5, i64 1920, !11, i64 1928, !5, i64 1936, !13, i64 1944, !13, i64 1952, !13, i64 1960, !13, i64 1968, !13, i64 1976, !13, i64 1984, !5, i64 1992, !5, i64 1996, !11, i64 2000, !11, i64 2008, !11, i64 2016, !11, i64 2024, !11, i64 2032, !11, i64 2040, !18, i64 2048, !12, i64 2056, !5, i64 2064, !5, i64 2068, !18, i64 2072, !12, i64 2080, !12, i64 2088, !12, i64 2096, !5, i64 2104, !5, i64 2108, !12, i64 2112, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !5, i64 2160, !5, i64 2164, !5, i64 2168, !5, i64 2172, !5, i64 2176, !5, i64 2180, !11, i64 2184, !18, i64 2192, !5, i64 2200, !6, i64 2208, !5, i64 2400, !18, i64 2408, !11, i64 2416, !5, i64 2424, !15, i64 2432, !15, i64 2440, !12, i64 2448, !12, i64 2456, !12, i64 2464, !14, i64 2472, !14, i64 2480, !14, i64 2488, !12, i64 2496, !5, i64 2504, !18, i64 2512, !15, i64 2520, !5, i64 2528, !13, i64 2536, !18, i64 2544, !18, i64 2552, !5, i64 2560, !21, i64 2568, !5, i64 2576, !5, i64 2580, !6, i64 2584, !14, i64 2688, !16, i64 2696, !16, i64 2704, !5, i64 2712, !5, i64 2716, !22, i64 2720, !5, i64 2728}
!10 = !{!"p1 _ZTS11SUNContext_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!14 = !{!"p1 double", !11, i64 0}
!15 = !{!"p1 int", !11, i64 0}
!16 = !{!"p2 _ZTS17_generic_N_Vector", !17, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!"p1 long", !11, i64 0}
!20 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !11, i64 0}
!21 = !{!"p1 _ZTS15CVodeProjMemRec", !11, i64 0}
!22 = !{!"p1 _ZTS11CVadjMemRec", !11, i64 0}
!23 = !{!21, !21, i64 0}
!24 = !{!25, !5, i64 0}
!25 = !{!"CVodeProjMemRec", !5, i64 0, !5, i64 4, !5, i64 8, !18, i64 16, !18, i64 24, !5, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !18, i64 64, !18, i64 72}
!26 = !{!25, !5, i64 4}
!27 = !{!25, !5, i64 8}
!28 = !{!25, !18, i64 16}
!29 = !{!25, !5, i64 32}
!30 = !{!12, !12, i64 0}
!31 = !{!25, !11, i64 40}
!32 = !{!9, !5, i64 2576}
!33 = !{!9, !21, i64 2568}
!34 = !{!25, !12, i64 48}
!35 = !{!25, !12, i64 56}
!36 = !{!25, !18, i64 64}
!37 = !{!18, !18, i64 0}
!38 = !{!25, !18, i64 72}
!39 = !{!9, !13, i64 472}
!40 = !{!9, !13, i64 480}
!41 = !{!9, !13, i64 464}
!42 = !{!9, !12, i64 1032}
!43 = !{!9, !13, i64 456}
!44 = !{!9, !11, i64 32}
!45 = !{!9, !13, i64 448}
!46 = !{!9, !12, i64 1384}
!47 = !{!9, !5, i64 2580}
!48 = !{!5, !5, i64 0}
!49 = !{!9, !12, i64 1496}
!50 = !{!9, !12, i64 992}
!51 = !{!9, !12, i64 1480}
!52 = !{!9, !12, i64 1016}
!53 = !{!25, !18, i64 24}
end_hunk_0
