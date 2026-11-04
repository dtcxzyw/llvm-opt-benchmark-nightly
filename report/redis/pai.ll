Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/pai?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i64 @je_pai_alloc_batch_default(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 !guid !25 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %.not24 = icmp eq i64 %3, 0
  br i1 %.not24, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01423 = phi i64 [ %i.y, %bb.d ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i8 0, ptr %i.a, align 1, !tbaa !12
  %i.b = load ptr, ptr %1, align 8, !tbaa !26
  %i.c = call ptr %i.b(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef 4096, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %i.a) #2, !inline_history !23 ; 8 uses
  %i.d = load i8, ptr %i.a, align 1, !tbaa !12, !range !15, !noundef !16
  %i.e = load i8, ptr %5, align 1, !tbaa !12, !range !15, !noundef !16
  %i.f = or i8 %i.e, %i.d
  store i8 %i.f, ptr %5, align 1, !tbaa !12
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.c, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 4 uses
  store ptr %i.c, ptr %i.h, align 8, !tbaa !17
  %i.i = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  store ptr %i.l, ptr %i.g, align 8, !tbaa !17
  %i.m = load ptr, ptr %4, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.c, ptr %i.n, align 8, !tbaa !17
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  store ptr %i.q, ptr %i.h, align 8, !tbaa !17
  %i.r = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.r, ptr %i.u, align 8, !tbaa !17
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr %i.c, ptr %i.w, align 8, !tbaa !17
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %.pre.i, %bb.c ], [ %i.c, %bb.b ]
  store ptr %i.x, ptr %4, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  %i.y = add nuw i64 %.01423, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !24

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.e
  %i.z = phi i64 [ %.01423, %bb.e ], [ 0, %bb.a ], [ %3, %bb.d ]
  ret i64 %i.z
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @je_pai_dalloc_batch_default(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 !guid !29 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %.val7 = load ptr, ptr %2, align 8, !tbaa !21   ; 2 uses
  %.not8 = icmp eq ptr %.val7, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %edata_list_active_remove.exit
  %.val9 = phi ptr [ %.val7, %.lr.ph ], [ %.val, %edata_list_active_remove.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i8 0, ptr %i.a, align 1, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %.val9, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !21
  %i.e = icmp eq ptr %i.d, %.val9
  br i1 %i.e, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %.val9, i64 48 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.g, ptr %i.j, align 8, !tbaa !17
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.k, ptr %i.m, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  store ptr %i.o, ptr %i.h, align 8, !tbaa !17
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.p, ptr %i.s, align 8, !tbaa !17
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %.val9, ptr %i.u, align 8, !tbaa !17
  br label %edata_list_active_remove.exit

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %2, align 8, !tbaa !21
  br label %edata_list_active_remove.exit

edata_list_active_remove.exit:                    ; preds = %.thread.i, %bb.c
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !30
  call void %i.v(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.val9, ptr noundef nonnull %i.a) #2, !inline_history !27
  %i.w = load i8, ptr %i.a, align 1, !tbaa !12, !range !15, !noundef !16
  %i.x = load i8, ptr %3, align 1, !tbaa !12, !range !15, !noundef !16
  %i.y = or i8 %i.x, %i.w
  store i8 %i.y, ptr %3, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  %.val = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !28

._crit_edge:                                      ; preds = %edata_list_active_remove.exit, %bb.a
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_Bool", !8, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"pai_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!8, !8, i64 0}
!18 = !{!"p1 _ZTS7edata_s", !13, i64 0}
!19 = !{!"", !18, i64 0}
!20 = !{!"", !19, i64 0}
!21 = !{!20, !18, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{null}
!24 = distinct !{!24, !22}
!25 = !{i64 -2286183667099578604}
!26 = !{!14, !13, i64 0}
!27 = distinct !{null}
!28 = distinct !{!28, !22}
!29 = !{i64 6586262993021693521}
!30 = !{!14, !13, i64 32}
end_hunk_0
