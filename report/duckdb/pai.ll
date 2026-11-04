Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/pai?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @duckdb_je_pai_alloc_batch_default(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4, i1 noundef zeroext %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %.not25 = icmp eq i64 %3, 0
  br i1 %.not25, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01524 = phi i64 [ %i.y, %bb.d ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i8 0, ptr %i.a, align 1, !tbaa !8
  %i.b = load ptr, ptr %1, align 8, !tbaa !19
  %i.c = call ptr %i.b(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef 4096, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext %5, ptr noundef nonnull %i.a) #2, !inline_history !18 ; 8 uses
  %i.d = load i8, ptr %i.a, align 1, !tbaa !8, !range !11, !noundef !12
  %i.e = load i8, ptr %6, align 1, !tbaa !8, !range !11, !noundef !12
  %i.f = or i8 %i.e, %i.d
  store i8 %i.f, ptr %6, align 1, !tbaa !8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.c, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 4 uses
  store ptr %i.c, ptr %i.h, align 8, !tbaa !13
  %i.i = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13
  store ptr %i.l, ptr %i.g, align 8, !tbaa !13
  %i.m = load ptr, ptr %4, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.c, ptr %i.n, align 8, !tbaa !13
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13
  store ptr %i.q, ptr %i.h, align 8, !tbaa !13
  %i.r = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.r, ptr %i.u, align 8, !tbaa !13
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr %i.c, ptr %i.w, align 8, !tbaa !13
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %.pre.i, %bb.c ], [ %i.c, %bb.b ]
  store ptr %i.x, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  %i.y = add nuw i64 %.01524, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.e
  %i.z = phi i64 [ %.01524, %bb.e ], [ 0, %bb.a ], [ %3, %bb.d ]
  ret i64 %i.z
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @duckdb_je_pai_dalloc_batch_default(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %.val7 = load ptr, ptr %2, align 8, !tbaa !17   ; 2 uses
  %.not8 = icmp eq ptr %.val7, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %edata_list_active_remove.exit
  %.val9 = phi ptr [ %.val7, %.lr.ph ], [ %.val, %edata_list_active_remove.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i8 0, ptr %i.a, align 1, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %.val9, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !17
  %i.e = icmp eq ptr %i.d, %.val9
  br i1 %i.e, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %.val9, i64 48 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.g, ptr %i.j, align 8, !tbaa !13
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.k, ptr %i.m, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13
  store ptr %i.o, ptr %i.h, align 8, !tbaa !13
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.p, ptr %i.s, align 8, !tbaa !13
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %.val9, ptr %i.u, align 8, !tbaa !13
  br label %edata_list_active_remove.exit

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %2, align 8, !tbaa !17
  br label %edata_list_active_remove.exit

edata_list_active_remove.exit:                    ; preds = %.thread.i, %bb.c
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !21
  call void %i.v(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.val9, ptr noundef nonnull %i.a) #2, !inline_history !20
  %i.w = load i8, ptr %i.a, align 1, !tbaa !8, !range !11, !noundef !12
  %i.x = load i8, ptr %3, align 1, !tbaa !8, !range !11, !noundef !12
  %i.y = or i8 %i.x, %i.w
  store i8 %i.y, ptr %3, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  %.val = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %edata_list_active_remove.exit, %bb.a
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"_Bool", !4, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"pai_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!4, !4, i64 0}
!14 = !{!"p1 _ZTS7edata_s", !9, i64 0}
!15 = !{!"", !14, i64 0}
!16 = !{!"", !15, i64 0}
!17 = !{!16, !14, i64 0}
!18 = distinct !{null}
!19 = !{!10, !9, i64 0}
!20 = distinct !{null}
!21 = !{!10, !9, i64 32}
end_hunk_0
