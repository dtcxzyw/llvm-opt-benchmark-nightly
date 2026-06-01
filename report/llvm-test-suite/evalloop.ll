begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@sum = dso_local local_unnamed_addr global i32 0, align 4
@eval.dispatch = internal unnamed_addr constant [32 x ptr] [ptr blockaddress(@eval, %.loopexit), ptr blockaddress(@eval, %.split93), ptr blockaddress(@eval, %.split96), ptr blockaddress(@eval, %.split99), ptr blockaddress(@eval, %.split102), ptr blockaddress(@eval, %.split105), ptr blockaddress(@eval, %.split108), ptr blockaddress(@eval, %.split111), ptr blockaddress(@eval, %.split114), ptr blockaddress(@eval, %.split117), ptr blockaddress(@eval, %.split120), ptr blockaddress(@eval, %.split123), ptr blockaddress(@eval, %.split126), ptr blockaddress(@eval, %.split129), ptr blockaddress(@eval, %.split132), ptr blockaddress(@eval, %.split135), ptr blockaddress(@eval, %.split138), ptr blockaddress(@eval, %.split141), ptr blockaddress(@eval, %.split144), ptr blockaddress(@eval, %.split147), ptr blockaddress(@eval, %.split150), ptr blockaddress(@eval, %.split153), ptr blockaddress(@eval, %.split156), ptr blockaddress(@eval, %.split159), ptr blockaddress(@eval, %.split162), ptr blockaddress(@eval, %.split165), ptr blockaddress(@eval, %.split168), ptr blockaddress(@eval, %.split171), ptr blockaddress(@eval, %.split174), ptr blockaddress(@eval, %.split177), ptr blockaddress(@eval, %.split180), ptr blockaddress(@eval, %.split183)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Sum: %u\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @execute(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @sum, align 4, !tbaa !4
  %i.b = add i32 %i.a, %0
  store i32 %i.b, ptr @sum, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @eval(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.062 = phi ptr [ %0, %bb.a ], [ %i.a, %bb.b ]  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.062, i64 4 ; 32 uses
  %i.b = load i32, ptr %.062, align 4, !tbaa !4
  switch i32 %i.b, label %bb.b [
    i32 0, label %.loopexit
    i32 1, label %.split93.preheader
    i32 2, label %.split96
    i32 3, label %.split99
    i32 4, label %.split102
    i32 5, label %.split105
    i32 6, label %.split108
    i32 7, label %.split111
    i32 8, label %.split114
    i32 9, label %.split117
    i32 10, label %.split120
    i32 11, label %.split123
    i32 12, label %.split126
    i32 13, label %.split129
    i32 14, label %.split132
    i32 15, label %.split135
    i32 16, label %.split138
    i32 17, label %.split141
    i32 18, label %.split144
    i32 19, label %.split147
    i32 20, label %.split150
    i32 21, label %.split153
    i32 22, label %.split156
    i32 23, label %.split159
    i32 24, label %.split162
    i32 25, label %.split165
    i32 26, label %.split168
    i32 27, label %.split171
    i32 28, label %.split174
    i32 29, label %.split177
    i32 30, label %.split180
    i32 31, label %.split183
  ]

.split93.preheader:                               ; preds = %bb.b, %.split96, %.split99, %.split102, %.split105, %.split108, %.split111, %.split114, %.split117, %.split120, %.split123, %.split126, %.split129, %.split132, %.split135, %.split138, %.split141, %.split144, %.split147, %.split150, %.split153, %.split156, %.split159, %.split162, %.split165, %.split168, %.split171, %.split174, %.split177, %.split180, %.split183
  %.sink308.sink.ph = phi i32 [ %.sink308, %.split183 ], [ %.sink279, %.split96 ], [ %.sink280, %.split99 ], [ %.sink281, %.split102 ], [ %.sink282, %.split105 ], [ %.sink283, %.split108 ], [ %.sink284, %.split111 ], [ %.sink285, %.split114 ], [ %.sink286, %.split117 ], [ %.sink287, %.split120 ], [ %.sink288, %.split123 ], [ %.sink289, %.split126 ], [ %.sink290, %.split129 ], [ %.sink291, %.split132 ], [ %.sink292, %.split135 ], [ %.sink293, %.split138 ], [ %.sink294, %.split141 ], [ %.sink295, %.split144 ], [ %.sink296, %.split147 ], [ %.sink297, %.split150 ], [ %.sink298, %.split153 ], [ %.sink299, %.split156 ], [ %.sink300, %.split159 ], [ %.sink301, %.split162 ], [ %.sink302, %.split165 ], [ %.sink303, %.split168 ], [ %.sink304, %.split171 ], [ %.sink305, %.split174 ], [ %.sink306, %.split177 ], [ %.sink307, %.split180 ], [ 0, %bb.b ]
  %.32.sink278.ph = phi ptr [ %.32, %.split183 ], [ %.365, %.split96 ], [ %.466, %.split99 ], [ %.567, %.split102 ], [ %.668, %.split105 ], [ %.769, %.split108 ], [ %.870, %.split111 ], [ %.971, %.split114 ], [ %.1072, %.split117 ], [ %.1173, %.split120 ], [ %.1274, %.split123 ], [ %.1375, %.split126 ], [ %.1476, %.split129 ], [ %.1577, %.split132 ], [ %.1678, %.split135 ], [ %.1779, %.split138 ], [ %.1880, %.split141 ], [ %.1981, %.split144 ], [ %.2082, %.split147 ], [ %.2183, %.split150 ], [ %.2284, %.split153 ], [ %.2385, %.split156 ], [ %.2486, %.split159 ], [ %.2587, %.split162 ], [ %.2688, %.split165 ], [ %.2789, %.split168 ], [ %.2890, %.split171 ], [ %.2991, %.split174 ], [ %.3092, %.split177 ], [ %.31, %.split180 ], [ %i.a, %bb.b ]
  br label %.split93

.loopexit:                                        ; preds = %bb.b, %.split93
  ret void

.split93:                                         ; preds = %.split93.preheader, %.split93
  %.sink308.sink = phi i32 [ 1, %.split93 ], [ %.sink308.sink.ph, %.split93.preheader ]
  %.32.sink278 = phi ptr [ %i.c, %.split93 ], [ %.32.sink278.ph, %.split93.preheader ] ; 2 uses
  tail call void @execute(i32 noundef %.sink308.sink)
  %i.c = getelementptr inbounds nuw i8, ptr %.32.sink278, i64 4 ; 31 uses
  %i.d = load i32, ptr %.32.sink278, align 4, !tbaa !4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr @eval.dispatch, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  indirectbr ptr %i.g, [label %.loopexit, label %.split93, label %.split96, label %.split99, label %.split102, label %.split105, label %.split108, label %.split111, label %.split114, label %.split117, label %.split120, label %.split123, label %.split126, label %.split129, label %.split132, label %.split135, label %.split138, label %.split141, label %.split144, label %.split147, label %.split150, label %.split153, label %.split156, label %.split159, label %.split162, label %.split165, label %.split168, label %.split171, label %.split174, label %.split177, label %.split180, label %.split183]

.split96:                                         ; preds = %bb.b, %.split93
  %.sink279 = phi i32 [ 2, %.split93 ], [ 0, %bb.b ]
  %.365 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split99:                                         ; preds = %bb.b, %.split93
  %.sink280 = phi i32 [ 3, %.split93 ], [ 0, %bb.b ]
  %.466 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split102:                                        ; preds = %bb.b, %.split93
  %.sink281 = phi i32 [ 4, %.split93 ], [ 0, %bb.b ]
  %.567 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split105:                                        ; preds = %bb.b, %.split93
  %.sink282 = phi i32 [ 5, %.split93 ], [ 0, %bb.b ]
  %.668 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split108:                                        ; preds = %bb.b, %.split93
  %.sink283 = phi i32 [ 6, %.split93 ], [ 0, %bb.b ]
  %.769 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split111:                                        ; preds = %bb.b, %.split93
  %.sink284 = phi i32 [ 7, %.split93 ], [ 0, %bb.b ]
  %.870 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split114:                                        ; preds = %bb.b, %.split93
  %.sink285 = phi i32 [ 8, %.split93 ], [ 0, %bb.b ]
  %.971 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split117:                                        ; preds = %bb.b, %.split93
  %.sink286 = phi i32 [ 9, %.split93 ], [ 0, %bb.b ]
  %.1072 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split120:                                        ; preds = %bb.b, %.split93
  %.sink287 = phi i32 [ 10, %.split93 ], [ 0, %bb.b ]
  %.1173 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split123:                                        ; preds = %bb.b, %.split93
  %.sink288 = phi i32 [ 11, %.split93 ], [ 0, %bb.b ]
  %.1274 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split126:                                        ; preds = %bb.b, %.split93
  %.sink289 = phi i32 [ 12, %.split93 ], [ 0, %bb.b ]
  %.1375 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split129:                                        ; preds = %bb.b, %.split93
  %.sink290 = phi i32 [ 13, %.split93 ], [ 0, %bb.b ]
  %.1476 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split132:                                        ; preds = %bb.b, %.split93
  %.sink291 = phi i32 [ 14, %.split93 ], [ 0, %bb.b ]
  %.1577 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split135:                                        ; preds = %bb.b, %.split93
  %.sink292 = phi i32 [ 15, %.split93 ], [ 0, %bb.b ]
  %.1678 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split138:                                        ; preds = %bb.b, %.split93
  %.sink293 = phi i32 [ 16, %.split93 ], [ 0, %bb.b ]
  %.1779 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split141:                                        ; preds = %bb.b, %.split93
  %.sink294 = phi i32 [ 17, %.split93 ], [ 0, %bb.b ]
  %.1880 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split144:                                        ; preds = %bb.b, %.split93
  %.sink295 = phi i32 [ 18, %.split93 ], [ 0, %bb.b ]
  %.1981 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split147:                                        ; preds = %bb.b, %.split93
  %.sink296 = phi i32 [ 19, %.split93 ], [ 0, %bb.b ]
  %.2082 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split150:                                        ; preds = %bb.b, %.split93
  %.sink297 = phi i32 [ 20, %.split93 ], [ 0, %bb.b ]
  %.2183 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split153:                                        ; preds = %bb.b, %.split93
  %.sink298 = phi i32 [ 21, %.split93 ], [ 0, %bb.b ]
  %.2284 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split156:                                        ; preds = %bb.b, %.split93
  %.sink299 = phi i32 [ 22, %.split93 ], [ 0, %bb.b ]
  %.2385 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split159:                                        ; preds = %bb.b, %.split93
  %.sink300 = phi i32 [ 23, %.split93 ], [ 0, %bb.b ]
  %.2486 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split162:                                        ; preds = %bb.b, %.split93
  %.sink301 = phi i32 [ 24, %.split93 ], [ 0, %bb.b ]
  %.2587 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split165:                                        ; preds = %bb.b, %.split93
  %.sink302 = phi i32 [ 25, %.split93 ], [ 0, %bb.b ]
  %.2688 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split168:                                        ; preds = %bb.b, %.split93
  %.sink303 = phi i32 [ 26, %.split93 ], [ 0, %bb.b ]
  %.2789 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split171:                                        ; preds = %bb.b, %.split93
  %.sink304 = phi i32 [ 27, %.split93 ], [ 0, %bb.b ]
  %.2890 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split174:                                        ; preds = %bb.b, %.split93
  %.sink305 = phi i32 [ 28, %.split93 ], [ 0, %bb.b ]
  %.2991 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split177:                                        ; preds = %bb.b, %.split93
  %.sink306 = phi i32 [ 29, %.split93 ], [ 0, %bb.b ]
  %.3092 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split180:                                        ; preds = %bb.b, %.split93
  %.sink307 = phi i32 [ 30, %.split93 ], [ 0, %bb.b ]
  %.31 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader

.split183:                                        ; preds = %bb.b, %.split93
  %.sink308 = phi i32 [ 31, %.split93 ], [ 0, %bb.b ]
  %.32 = phi ptr [ %i.c, %.split93 ], [ %i.a, %bb.b ]
  br label %.split93.preheader
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
vector.ph:
  %i.a = alloca [2048 x i32], align 16            ; 10 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i16> [ <i16 0, i16 1, i16 2, i16 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i16> %vec.ind, splat (i16 4)
  %i.b = urem <4 x i16> %vec.ind, splat (i16 31)
  %i.c = urem <4 x i16> %step.add, splat (i16 31)
  %i.d = add nuw nsw <4 x i16> %i.b, splat (i16 1)
  %i.e = add nuw nsw <4 x i16> %i.c, splat (i16 1)
  %i.f = zext nneg <4 x i16> %i.d to <4 x i32>
  %i.g = zext nneg <4 x i16> %i.e to <4 x i32>
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> %i.f, ptr %i.h, align 16, !tbaa !4
  store <4 x i32> %i.g, ptr %i.i, align 16, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i16> %vec.ind, splat (i16 8)
  %i.j = icmp eq i64 %index.next, 2040
  br i1 %i.j, label %scalar.ph, label %vector.body, !llvm.loop !10

scalar.ph:                                        ; preds = %vector.body
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8160
  store i32 26, ptr %i.k, align 16, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8164
  store i32 27, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8168
  store i32 28, ptr %i.m, align 8, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8172
  store i32 29, ptr %i.n, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8176
  store i32 30, ptr %i.o, align 16, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8180
  store i32 31, ptr %i.p, align 4, !tbaa !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8184
  store i32 1, ptr %i.q, align 8, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8188
  store i32 0, ptr %i.r, align 4, !tbaa !4
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  %i.s = load i32, ptr @sum, align 4, !tbaa !4
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.s) ; 0 uses
  ret i32 0

bb.b:                                             ; preds = %scalar.ph, %bb.b
  %.09 = phi i32 [ 0, %scalar.ph ], [ %i.u, %bb.b ]
  call void @eval(ptr noundef nonnull %i.a)
  %i.u = add nuw nsw i32 %.09, 1                  ; 2 uses
  %exitcond11.not = icmp eq i32 %i.u, 100000
  br i1 %exitcond11.not, label %bb.a, label %bb.b, !llvm.loop !14
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11}
end_hunk_0
