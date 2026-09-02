Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/conv?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef ptr @cl_base64_decode(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.013.i = add i64 %1, -1                        ; 2 uses
  %.not1214.i = icmp eq i64 %.013.i, 0
  br i1 %.not1214.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.a = trunc i64 %1 to i32
  %i.b = add i32 %i.a, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.016.i = phi i64 [ %.0.i, %bb.c ], [ %.013.i, %.lr.ph.preheader.i ] ; 2 uses
  %.0915.i = phi i32 [ %i.f, %bb.c ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.016.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !8
  %i.e = icmp eq i8 %i.d, 61
  br i1 %i.e, label %bb.c, label %.critedge.loopexit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = add nuw nsw i32 %.0915.i, 1
  %.0.i = add i64 %.016.i, -1                     ; 2 uses
  %.not12.i = icmp eq i64 %.0.i, 0
  br i1 %.not12.i, label %.critedge.loopexit.i, label %.lr.ph.i

.critedge.loopexit.i:                             ; preds = %bb.c, %.lr.ph.i
  %.09.lcssa.ph.i = phi i32 [ %.0915.i, %.lr.ph.i ], [ %i.b, %bb.c ]
  %i.g = zext nneg i32 %.09.lcssa.ph.i to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %.09.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.g, %.critedge.loopexit.i ]
  %i.h = mul i64 %1, 3
  %i.i = lshr i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1
  %i.k = sub nsw i64 %i.j, %.09.lcssa.i
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %bb.b
  %.010.i = phi i64 [ %i.k, %.critedge.i ], [ 1, %bb.b ]
  %i.l = tail call noalias ptr @malloc(i64 noundef %.010.i) #5 ; 2 uses
  %.not29 = icmp eq ptr %i.l, null
  br i1 %.not29, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.a, %bb.d
  %i.m = phi ptr [ %i.l, %bb.d ], [ %2, %bb.a ]   ; 4 uses
  %i.n = tail call ptr @BIO_f_base64() #6
  %i.o = tail call ptr @BIO_new(ptr noundef %i.n) #6 ; 3 uses
  %.not30 = icmp eq ptr %i.o, null
  br i1 %.not30, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.thread
  br i1 %.not, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #6
  br label %bb.n

bb.g:                                             ; preds = %.thread
  %i.p = trunc i64 %1 to i32                      ; 2 uses
  %i.q = tail call ptr @BIO_new_mem_buf(ptr noundef %0, i32 noundef %i.p) #6 ; 2 uses
  %.not31 = icmp eq ptr %i.q, null
  br i1 %.not31, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 @BIO_free(ptr noundef nonnull %i.o) #6 ; 0 uses
  br i1 %.not, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.m) #6
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.s = tail call ptr @BIO_push(ptr noundef nonnull %i.o, ptr noundef nonnull %i.q) #6 ; 3 uses
  %.not32 = icmp eq i32 %4, 0
  br i1 %.not32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @BIO_set_flags(ptr noundef %i.s, i32 noundef 256) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not.i33 = icmp eq i64 %1, 0
  br i1 %.not.i33, label %base64_len.exit48, label %.preheader.i34

.preheader.i34:                                   ; preds = %bb.l
  %.013.i35 = add i64 %1, -1                      ; 2 uses
  %.not1214.i36 = icmp eq i64 %.013.i35, 0
  br i1 %.not1214.i36, label %.critedge.i43, label %.lr.ph.preheader.i37

.lr.ph.preheader.i37:                             ; preds = %.preheader.i34
  %i.t = add i32 %i.p, -1
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.m, %.lr.ph.preheader.i37
  %.016.i39 = phi i64 [ %.0.i46, %bb.m ], [ %.013.i35, %.lr.ph.preheader.i37 ] ; 2 uses
  %.0915.i40 = phi i32 [ %i.x, %bb.m ], [ 0, %.lr.ph.preheader.i37 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.016.i39
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = icmp eq i8 %i.v, 61
  br i1 %i.w, label %bb.m, label %.critedge.i43

bb.m:                                             ; preds = %.lr.ph.i38
  %i.x = add nuw nsw i32 %.0915.i40, 1
  %.0.i46 = add i64 %.016.i39, -1                 ; 2 uses
  %.not12.i47 = icmp eq i64 %.0.i46, 0
  br i1 %.not12.i47, label %.critedge.i43, label %.lr.ph.i38

.critedge.i43:                                    ; preds = %.lr.ph.i38, %bb.m, %.preheader.i34
  %.09.lcssa.i44 = phi i32 [ 0, %.preheader.i34 ], [ %i.t, %bb.m ], [ %.0915.i40, %.lr.ph.i38 ]
  %i.y = mul i64 %1, 3
  %i.z = lshr i64 %i.y, 2
  %5 = trunc i64 %i.z to i32
  %6 = sub i32 %5, %.09.lcssa.i44
  br label %base64_len.exit48

base64_len.exit48:                                ; preds = %bb.l, %.critedge.i43
  %.010.i45 = phi i32 [ %6, %.critedge.i43 ], [ 0, %bb.l ]
  %i.aa = tail call i32 @BIO_read(ptr noundef %i.s, ptr noundef nonnull %i.m, i32 noundef %.010.i45) #6
  %i.ab = sext i32 %i.aa to i64
  store i64 %i.ab, ptr %3, align 8, !tbaa !10
  tail call void @BIO_free_all(ptr noundef %i.s) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.f, %bb.d, %base64_len.exit48
  %.0 = phi ptr [ %i.m, %base64_len.exit48 ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.i ], [ null, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #3

declare ptr @BIO_f_base64() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare ptr @BIO_new_mem_buf(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #3

declare ptr @BIO_push(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BIO_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BIO_free_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @cl_base64_encode(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call ptr @BIO_f_base64() #6
  %i.c = tail call ptr @BIO_new(ptr noundef %i.b) #6 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @BIO_s_mem() #6
  %i.e = tail call ptr @BIO_new(ptr noundef %i.d) #6 ; 2 uses
  %.not22 = icmp eq ptr %i.e, null
  br i1 %.not22, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @BIO_free(ptr noundef nonnull %i.c) #6 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = tail call ptr @BIO_push(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #6 ; 4 uses
  %i.h = trunc i64 %1 to i32
  %i.i = tail call i32 @BIO_write(ptr noundef %i.g, ptr noundef %0, i32 noundef %i.h) #6 ; 0 uses
  %i.j = tail call i64 @BIO_ctrl(ptr noundef %i.g, i32 noundef 11, i64 noundef 0, ptr noundef null) #6 ; 0 uses
  %i.k = call i64 @BIO_ctrl(ptr noundef %i.g, i32 noundef 3, i64 noundef 0, ptr noundef nonnull %i.a) #6 ; 3 uses
  %i.l = add i64 %i.k, 1
  %i.m = call noalias ptr @malloc(i64 noundef %i.l) #5 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = call i32 @BIO_free(ptr noundef nonnull %i.c) #6 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.p, i64 %i.k, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.q, align 1, !tbaa !8
  store ptr %i.m, ptr %i.a, align 8, !tbaa !13
  call void @BIO_free_all(ptr noundef %i.g) #6
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi ptr [ null, %bb.e ], [ %i.r, %bb.f ], [ null, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0
}

declare ptr @BIO_s_mem() local_unnamed_addr #3

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
end_hunk_0
