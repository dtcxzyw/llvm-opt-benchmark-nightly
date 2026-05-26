begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"dash pattern\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -15, 1) i32 @gs_setlinewidth(ptr noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fmul double %1, 5.000000e-01
  %i.c = fptrunc double %i.b to float
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  store float %i.c, ptr %i.e, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -15, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @gs_currentlinewidth(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load float, ptr %i.b, align 8, !tbaa !25
  %i.d = fmul float %i.c, 2.000000e+00
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @gs_setlinecap(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %1, ptr %i.c, align 4, !tbaa !29
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @gs_currentlinecap(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @gs_setlinejoin(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.c, align 8, !tbaa !30
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @gs_currentlinejoin(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -15, 1) i32 @gs_setmiterlimit(ptr noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp olt double %1, 1.000000e+00
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fptrunc double %1 to float
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store float %i.b, ptr %i.e, align 4, !tbaa !31
  %i.f = fmul double %1, %1                       ; 4 uses
  %i.g = fcmp olt double %i.f, 2.000100e+00
  %i.h = fcmp ogt double %i.f, 1.999900e+00
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fadd double %i.f, -1.000000e+00
  %i.j = tail call double @sqrt(double noundef %i.i) #9, !tbaa !4
  %i.k = fmul double %i.j, 2.000000e+00
  %i.l = fadd double %i.f, -2.000000e+00
  %i.m = fdiv double %i.k, %i.l
  %i.n = fptrunc double %i.m to float
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = phi float [ %i.n, %bb.c ], [ 1.000000e+06, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store float %i.o, ptr %i.p, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -15, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @gs_currentmiterlimit(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !31
  ret float %i.d
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -25, 1) i32 @gs_setdash(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, double noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.not73 = icmp eq i32 %2, 0
  br i1 %.not73, label %._crit_edge79, label %.lr.ph78

bb.b:                                             ; preds = %.lr.ph78
  %i.d = add i32 %.03976, -1                      ; 2 uses
  %i.e = fadd float %.04275, %i.g                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.04874, i64 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge79, label %.lr.ph78, !llvm.loop !33

.lr.ph78:                                         ; preds = %bb.a, %bb.b
  %.03976 = phi i32 [ %i.d, %bb.b ], [ %2, %bb.a ]
  %.04275 = phi float [ %i.e, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.04874 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.g = load float, ptr %.04874, align 4, !tbaa !35 ; 2 uses
  %i.h = fcmp uge float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %.loopexit, !llvm.loop !33

._crit_edge79:                                    ; preds = %bb.b, %bb.a
  %.042.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = icmp eq i32 %2, 0
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge79
  %i.j = fcmp oeq float %.042.lcssa, 0.000000e+00
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = fpext float %.042.lcssa to double        ; 2 uses
  %i.l = fdiv double %3, %i.k
  %i.m = tail call double @llvm.floor.f64(double %i.l)
  %i.n = fneg double %i.m
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.k, double %3)
  %i.p = fptrunc double %i.o to float
  %i.q = load float, ptr %1, align 4, !tbaa !35
  %i.r = fsub float %i.p, %i.q                    ; 3 uses
  %i.s = fcmp ult float %i.r, 0.000000e+00
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ]
  %i.t = phi float [ %i.x, %.lr.ph ], [ %i.r, %bb.d ]
  %.04656 = phi i8 [ %i.u, %.lr.ph ], [ 1, %bb.d ]
  %i.u = xor i8 %.04656, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.w = load float, ptr %i.v, align 4, !tbaa !35
  %i.x = fsub float %i.t, %i.w                    ; 3 uses
  %i.y = fcmp ult float %i.x, 0.000000e+00
  br i1 %i.y, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !36

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.z = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aa = zext nneg i8 %i.u to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.046.lcssa = phi i32 [ 1, %bb.d ], [ %i.aa, %._crit_edge.loopexit ]
  %.044.lcssa = phi i32 [ 0, %bb.d ], [ %i.z, %._crit_edge.loopexit ]
  %.lcssa = phi float [ %i.r, %bb.d ], [ %i.x, %._crit_edge.loopexit ]
  %i.ab = tail call ptr @gs_malloc(i32 noundef %2, i32 noundef 4, ptr noundef nonnull @.str) #9 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ad = zext i32 %2 to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr nonnull align 4 %1, i64 %i.ae, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge79, %bb.e
  %.147 = phi i32 [ %.046.lcssa, %bb.e ], [ 1, %._crit_edge79 ]
  %.145 = phi i32 [ %.044.lcssa, %bb.e ], [ 0, %._crit_edge79 ]
  %.141 = phi float [ %.lcssa, %bb.e ], [ 0.000000e+00, %._crit_edge79 ]
  %.038 = phi ptr [ %i.ab, %bb.e ], [ null, %._crit_edge79 ]
  store ptr %.038, ptr %i.c, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %2, ptr %i.af, align 8, !tbaa !38
  %i.ag = fptrunc double %3 to float
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store float %i.ag, ptr %i.ah, align 4, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %.147, ptr %i.ai, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %.145, ptr %i.aj, align 4, !tbaa !41
  %i.ak = fneg float %.141
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store float %i.ak, ptr %i.al, align 8, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph78, %._crit_edge, %bb.c, %bb.f
  %.2 = phi i32 [ -25, %._crit_edge ], [ 0, %bb.f ], [ -15, %bb.c ], [ -15, %.lr.ph78 ]
  ret i32 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare ptr @gs_malloc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @gs_currentdash_length(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @gs_currentdash_pattern(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %i.d, i64 %i.h, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @gs_currentdash_offset(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load float, ptr %i.c, align 4, !tbaa !45
  ret float %i.d
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !19, i64 280}
!9 = !{!"gs_state_s", !10, i64 0, !12, i64 8, !13, i64 24, !16, i64 136, !5, i64 232, !17, i64 240, !17, i64 248, !18, i64 256, !18, i64 264, !5, i64 272, !19, i64 280, !20, i64 288, !11, i64 296, !21, i64 304, !22, i64 312, !11, i64 320, !23, i64 328, !16, i64 336, !5, i64 432, !6, i64 436, !6, i64 437, !14, i64 440, !24, i64 448, !5, i64 456}
!10 = !{!"p1 _ZTS10gs_state_s", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 8}
!13 = !{!"gs_matrix_fixed_s", !14, i64 0, !15, i64 8, !14, i64 16, !15, i64 24, !14, i64 32, !15, i64 40, !14, i64 48, !15, i64 56, !14, i64 64, !15, i64 72, !14, i64 80, !15, i64 88, !15, i64 96, !15, i64 104}
!14 = !{!"float", !6, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"gs_matrix_s", !14, i64 0, !15, i64 8, !14, i64 16, !15, i64 24, !14, i64 32, !15, i64 40, !14, i64 48, !15, i64 56, !14, i64 64, !15, i64 72, !14, i64 80, !15, i64 88}
!17 = !{!"p1 omnipotent char", !11, i64 0}
!18 = !{!"p1 _ZTS9gx_path_s", !11, i64 0}
!19 = !{!"p1 _ZTS13line_params_s", !11, i64 0}
!20 = !{!"p1 _ZTS10halftone_s", !11, i64 0}
!21 = !{!"p1 _ZTS10gs_color_s", !11, i64 0}
!22 = !{!"p1 _ZTS17gx_device_color_s", !11, i64 0}
!23 = !{!"p1 _ZTS9gs_font_s", !11, i64 0}
!24 = !{!"p1 _ZTS8device_s", !11, i64 0}
!25 = !{!26, !14, i64 0}
!26 = !{!"line_params_s", !14, i64 0, !5, i64 4, !5, i64 8, !14, i64 12, !14, i64 16, !27, i64 24}
!27 = !{!"dash_params_s", !28, i64 0, !5, i64 8, !14, i64 12, !5, i64 16, !5, i64 20, !14, i64 24}
!28 = !{!"p1 float", !11, i64 0}
!29 = !{!26, !5, i64 4}
!30 = !{!26, !5, i64 8}
!31 = !{!26, !14, i64 12}
!32 = !{!26, !14, i64 16}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!14, !14, i64 0}
!36 = distinct !{!36, !34}
!37 = !{!27, !28, i64 0}
!38 = !{!27, !5, i64 8}
!39 = !{!27, !14, i64 12}
!40 = !{!27, !5, i64 16}
!41 = !{!27, !5, i64 20}
!42 = !{!27, !14, i64 24}
!43 = !{!26, !5, i64 32}
!44 = !{!26, !28, i64 24}
!45 = !{!26, !14, i64 36}
end_hunk_0
