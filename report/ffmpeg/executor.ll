Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/executor?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@executor_free:bb.a
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !39
  %i.p = tail call i32 @pthread_join(i64 noundef %i.o, ptr noundef null) #5 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.a, align 8, !tbaa !26
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %bb.c, label %.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.not16 = icmp eq i32 %2, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.t) #5 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %.not17 = icmp eq i32 %1, 0
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.v) #5 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  tail call void @av_free(ptr noundef %i.y) #5
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24
  tail call void @av_free(ptr noundef %i.aa) #5
  tail call void @av_free(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @av_executor_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 3 uses
  %.not7 = icmp eq ptr %i.a, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  tail call fastcc void @executor_free(ptr noundef %i.a, i32 noundef %i.c, i32 noundef %i.c)
  store ptr null, ptr %0, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @av_executor_execute(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #5 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not23 = icmp eq ptr %1, null
  br i1 %.not23, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %.not2434 = icmp eq ptr %i.g, null
  br i1 %.not2434, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.h = phi ptr [ %i.k, %bb.e ], [ %i.g, %bb.d ]
  %.035 = phi ptr [ %.pre.pre, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.h, ptr noundef nonnull %1) #5
  %.not25 = icmp eq i32 %i.j, 0
  %.pre.pre = load ptr, ptr %.035, align 8, !tbaa !34 ; 4 uses
  br i1 %.not25, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %.pre.pre, align 8, !tbaa !34 ; 2 uses
  %.not24 = icmp eq ptr %i.k, null
  br i1 %.not24, label %.critedge, label %.lr.ph, !llvm.loop !42

.critedge:                                        ; preds = %bb.e, %.lr.ph, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %.pre.pre, %.lr.ph ]
  %.0.lcssa = phi ptr [ %i.e, %bb.d ], [ %.pre.pre, %bb.e ], [ %.035, %.lr.ph ]
  store ptr %i.l, ptr %1, align 8, !tbaa !37
  store ptr %1, ptr %.0.lcssa, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.c
  %i.m = load i32, ptr %i.a, align 8, !tbaa !26
  %.not26 = icmp eq i32 %i.m, 0
  br i1 %.not26, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.n) #5 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.p) #5 ; 0 uses
  %.pr = load i32, ptr %i.a, align 8, !tbaa !26
  %.not27 = icmp eq i32 %.pr, 0
  br i1 %.not27, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.f, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.s = load i8, ptr %i.r, align 4, !tbaa !43, !range !44, !noundef !45
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.o, label %bb.h

bb.h:                                             ; preds = %.thread
  store i8 1, ptr %i.r, align 4, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34   ; 2 uses
  %.not25.i38 = icmp eq ptr %i.w, null
  br i1 %.not25.i38, label %.loopexit, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %run_one_task.exit
  %i.aa = phi ptr [ %i.w, %.lr.ph.i.lr.ph ], [ %i.as, %run_one_task.exit ]
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ac = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.ah, %bb.j ]
  %.026.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.ag, %bb.j ] ; 2 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.ae = load ptr, ptr %0, align 8, !tbaa !9
  %i.af = tail call i32 %i.ad(ptr noundef nonnull %i.ac, ptr noundef %i.ae) #5, !inline_history !35
  %.not21.i = icmp eq i32 %i.af, 0
  %i.ag = load ptr, ptr %.026.i, align 8, !tbaa !34 ; 6 uses
  br i1 %.not21.i, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %.loopexit, label %bb.i, !llvm.loop !36

.critedge.i:                                      ; preds = %bb.i
  %.not22.i = icmp eq ptr %i.ag, null
  br i1 %.not22.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.critedge.i
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !37
  store ptr %i.ai, ptr %.026.i, align 8, !tbaa !34
  store ptr null, ptr %i.ag, align 8, !tbaa !37
  %i.aj = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.y) #5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.an = load ptr, ptr %0, align 8, !tbaa !9
  %i.ao = tail call i32 %i.am(ptr noundef nonnull %i.ag, ptr noundef %i.ab, ptr noundef %i.an) #5, !inline_history !35 ; 0 uses
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !26
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %run_one_task.exit

bb.n:                                             ; preds = %bb.m
  %i.ar = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.y) #5 ; 0 uses
  br label %run_one_task.exit

run_one_task.exit:                                ; preds = %bb.m, %bb.n
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !34  ; 2 uses
  %.not25.i = icmp eq ptr %i.as, null
  br i1 %.not25.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !46

.loopexit:                                        ; preds = %run_one_task.exit, %.critedge.i, %bb.j, %bb.h
  store i8 0, ptr %i.r, align 4, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %.loopexit, %.thread
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #3

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #3

declare void @av_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"AVTaskCallbacks", !11, i64 0, !6, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !11, i64 24}
!13 = !{!10, !11, i64 32}
!14 = !{!10, !11, i64 16}
!15 = !{i64 0, i64 8, !16, i64 8, i64 4, !17, i64 16, i64 8, !16, i64 24, i64 8, !16, i64 32, i64 8, !16}
!16 = !{!11, !11, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !6, i64 8}
!19 = !{!"AVExecutor", !10, i64 0, !6, i64 40, !20, i64 44, !21, i64 48, !22, i64 56, !7, i64 64, !7, i64 104, !6, i64 152, !23, i64 160}
!20 = !{!"_Bool", !7, i64 0}
!21 = !{!"p1 _ZTS10ThreadInfo", !11, i64 0}
!22 = !{!"p1 omnipotent char", !11, i64 0}
!23 = !{!"p1 _ZTS6AVTask", !11, i64 0}
!24 = !{!19, !22, i64 56}
!25 = !{!19, !21, i64 48}
!26 = !{!19, !6, i64 40}
!27 = !{!28, !29, i64 0}
!28 = !{!"ThreadInfo", !29, i64 0, !30, i64 8}
!29 = !{!"p1 _ZTS10AVExecutor", !11, i64 0}
!30 = !{!"long", !7, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!19, !6, i64 152}
!34 = !{!23, !23, i64 0}
!35 = distinct !{null}
!36 = distinct !{!36, !32}
!37 = !{!38, !23, i64 0}
!38 = !{!"AVTask", !23, i64 0}
!39 = !{!28, !30, i64 8}
!40 = distinct !{!40, !32}
!41 = !{!29, !29, i64 0}
!42 = distinct !{!42, !32}
!43 = !{!19, !20, i64 44}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = distinct !{!46, !32}
end_hunk_0
