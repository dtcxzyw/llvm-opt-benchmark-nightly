Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/StreamUtils?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z10ReadStreamP19ISequentialInStreamPvPm(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !14
  store i64 0, ptr %2, align 8, !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.020 = phi ptr [ %1, %bb.a ], [ %i.m, %bb.c ]  ; 2 uses
  %.018 = phi i32 [ undef, %bb.a ], [ %.2, %bb.c ]
  %.017 = phi i64 [ %i.b, %bb.a ], [ %i.n, %bb.c ] ; 3 uses
  %.not = icmp eq i64 %.017, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = call i64 @llvm.umin.i64(i64 %.017, i64 2147483648)
  %i.d = trunc nuw i64 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = load ptr, ptr %0, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.020, i32 noundef %i.d, ptr noundef nonnull %i.a) ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = load i64, ptr %2, align 8, !tbaa !14
  %i.l = add i64 %i.k, %i.j
  store i64 %i.l, ptr %2, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %.020, i64 %i.j
  %i.n = sub i64 %.017, %i.j
  %.not22 = icmp eq i32 %i.h, 0                   ; 2 uses
  %i.o = icmp ne i32 %i.i, 0                      ; 2 uses
  %..018. = select i1 %i.o, i32 %.018, i32 0
  %.2 = select i1 %.not22, i32 %..018., i32 %i.h  ; 2 uses
  %cond1 = select i1 %.not22, i1 %i.o, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br i1 %cond1, label %bb.b, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %bb.b, %bb.c
  %.3 = phi i32 [ %.2, %bb.c ], [ 0, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.c ]     ; 2 uses
  %.020.i = phi ptr [ %1, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %.018.i = phi i32 [ undef, %bb.a ], [ %.2.i, %bb.c ]
  %.017.i = phi i64 [ %2, %bb.a ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i = icmp eq i64 %.017.i, 0
  br i1 %.not.i, label %_Z10ReadStreamP19ISequentialInStreamPvPm.exit.thread, label %bb.c

_Z10ReadStreamP19ISequentialInStreamPvPm.exit.thread: ; preds = %bb.b
  %i.b = icmp ne i64 %2, %.0
  %i.c = zext i1 %i.b to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = call i64 @llvm.umin.i64(i64 %.017.i, i64 2147483648)
  %i.e = trunc nuw i64 %i.d to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.020.i, i32 noundef %i.e, ptr noundef nonnull %i.a), !inline_history !12 ; 2 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %i.l = add i64 %.0, %i.k                        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.020.i, i64 %i.k
  %i.n = sub i64 %.017.i, %i.k
  %.not22.i = icmp eq i32 %i.i, 0                 ; 2 uses
  %i.o = icmp ne i32 %i.j, 0                      ; 2 uses
  %..018..i = select i1 %i.o, i32 %.018.i, i32 0
  %..018..i.fr = freeze i32 %..018..i
  %.2.i = select i1 %.not22.i, i32 %..018..i.fr, i32 %i.i ; 3 uses
  %cond1.i = select i1 %.not22.i, i1 %i.o, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br i1 %cond1.i, label %bb.b, label %_Z10ReadStreamP19ISequentialInStreamPvPm.exit, !llvm.loop !0

_Z10ReadStreamP19ISequentialInStreamPvPm.exit:    ; preds = %bb.c
  %.not = icmp eq i32 %.2.i, 0
  %i.p = icmp ne i64 %2, %i.l
  %i.q = zext i1 %i.p to i32
  %spec.select = select i1 %.not, i32 %i.q, i32 %.2.i
  br label %bb.d

bb.d:                                             ; preds = %_Z10ReadStreamP19ISequentialInStreamPvPm.exit, %_Z10ReadStreamP19ISequentialInStreamPvPm.exit.thread
  %i.r = phi i32 [ %spec.select, %_Z10ReadStreamP19ISequentialInStreamPvPm.exit ], [ %i.c, %_Z10ReadStreamP19ISequentialInStreamPvPm.exit.thread ]
  ret i32 %i.r
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z15ReadStream_FAILP19ISequentialInStreamPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.c ]     ; 2 uses
  %.020.i = phi ptr [ %1, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %.018.i = phi i32 [ undef, %bb.a ], [ %.2.i, %bb.c ]
  %.017.i = phi i64 [ %2, %bb.a ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i = icmp eq i64 %.017.i, 0
  br i1 %.not.i, label %_Z10ReadStreamP19ISequentialInStreamPvPm.exit.thread, label %bb.c

_Z10ReadStreamP19ISequentialInStreamPvPm.exit.thread: ; preds = %bb.b
  %i.b = icmp eq i64 %2, %.0
  %i.c = select i1 %i.b, i32 0, i32 -2147467259
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = call i64 @llvm.umin.i64(i64 %.017.i, i64 2147483648)
  %i.e = trunc nuw i64 %i.d to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.020.i, i32 noundef %i.e, ptr noundef nonnull %i.a), !inline_history !12 ; 2 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %i.l = add i64 %.0, %i.k                        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.020.i, i64 %i.k
  %i.n = sub i64 %.017.i, %i.k
  %.not22.i = icmp eq i32 %i.i, 0                 ; 2 uses
  %i.o = icmp ne i32 %i.j, 0                      ; 2 uses
  %..018..i = select i1 %i.o, i32 %.018.i, i32 0
  %..018..i.fr = freeze i32 %..018..i
  %.2.i = select i1 %.not22.i, i32 %..018..i.fr, i32 %i.i ; 3 uses
  %cond1.i = select i1 %.not22.i, i1 %i.o, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br i1 %cond1.i, label %bb.b, label %_Z10ReadStreamP19ISequentialInStreamPvPm.exit, !llvm.loop !0

_Z10ReadStreamP19ISequentialInStreamPvPm.exit:    ; preds = %bb.c
  %.not = icmp eq i32 %.2.i, 0
  %i.p = icmp eq i64 %2, %i.l
  %i.q = select i1 %i.p, i32 0, i32 -2147467259
  %spec.select = select i1 %.not, i32 %i.q, i32 %.2.i
  br label %bb.d

bb.d:                                             ; preds = %_Z10ReadStreamP19ISequentialInStreamPvPm.exit, %_Z10ReadStreamP19ISequentialInStreamPvPm.exit.thread
  %i.r = phi i32 [ %spec.select, %_Z10ReadStreamP19ISequentialInStreamPvPm.exit ], [ %i.c, %_Z10ReadStreamP19ISequentialInStreamPvPm.exit.thread ]
  ret i32 %i.r
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.015 = phi i32 [ undef, %bb.a ], [ %.2, %bb.c ]
  %.014 = phi ptr [ %1, %bb.a ], [ %i.j, %bb.c ]  ; 2 uses
  %.013 = phi i64 [ %2, %bb.a ], [ %i.k, %bb.c ]  ; 3 uses
  %.not = icmp eq i64 %.013, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = call i64 @llvm.umin.i64(i64 %.013, i64 2147483648)
  %i.c = trunc nuw i64 %i.b to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.d = load ptr, ptr %0, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.014, i32 noundef %i.c, ptr noundef nonnull %i.a) ; 2 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.014, i64 %i.i
  %i.k = sub i64 %.013, %i.i
  %.not18 = icmp eq i32 %i.g, 0                   ; 2 uses
  %i.l = icmp ne i32 %i.h, 0                      ; 2 uses
  %..015. = select i1 %i.l, i32 %.015, i32 -2147467259
  %.2 = select i1 %.not18, i32 %..015., i32 %i.g  ; 2 uses
  %.1.not = select i1 %.not18, i1 %i.l, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br i1 %.1.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.3 = phi i32 [ %.2, %bb.c ], [ 0, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !11}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"vtable pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{ptr @_Z10ReadStreamP19ISequentialInStreamPvPm}
!13 = !{!"long", !6, i64 0}
!14 = !{!13, !13, i64 0}
end_hunk_0
