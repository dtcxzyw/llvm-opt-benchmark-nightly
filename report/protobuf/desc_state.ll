inline.NumInlined: 27
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_upb_DescState_Grow(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.b, 7
  %i.k = and i64 %i.j, -8                         ; 3 uses
  %.val.i = load ptr, ptr %1, align 8, !tbaa !15  ; 5 uses
  %i.l = getelementptr i8, ptr %1, i64 8
  %.val11.i = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.m = ptrtoint ptr %.val11.i to i64
  %i.n = ptrtoint ptr %.val.i to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, %i.k
  br i1 %i.p, label %upb_Arena_Malloc.exit, label %upb_Arena_Malloc.exit.thread, !prof !18

upb_Arena_Malloc.exit.thread:                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.k
  store ptr %i.q, ptr %1, align 8, !tbaa !15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  store ptr %.val.i, ptr %i.e, align 8, !tbaa !14
  br label %bb.c

upb_Arena_Malloc.exit:                            ; preds = %bb.b
  %i.r = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %1, i64 noundef %i.k) #5 ; 3 uses
  store ptr %i.r, ptr %i.e, align 8, !tbaa !14
  %.not30 = icmp eq ptr %i.r, null
  br i1 %.not30, label %bb.m, label %upb_Arena_Malloc.exit._crit_edge

upb_Arena_Malloc.exit._crit_edge:                 ; preds = %upb_Arena_Malloc.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %upb_Arena_Malloc.exit._crit_edge, %upb_Arena_Malloc.exit.thread
  %i.s = phi i64 [ %i.b, %upb_Arena_Malloc.exit.thread ], [ %.pre, %upb_Arena_Malloc.exit._crit_edge ] ; 2 uses
  %.0.i35 = phi ptr [ %.val.i, %upb_Arena_Malloc.exit.thread ], [ %i.r, %upb_Arena_Malloc.exit._crit_edge ] ; 3 uses
  store ptr %.0.i35, ptr %i.c, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i35, i64 %i.s
  store ptr %i.t, ptr %0, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.u = phi ptr [ %.0.i35, %bb.c ], [ %i.f, %bb.a ] ; 6 uses
  %i.v = phi i64 [ %i.s, %bb.c ], [ %i.b, %bb.a ]
  %sext = shl i64 %i.i, 32
  %i.w = ashr exact i64 %sext, 32                 ; 2 uses
  %i.x = sub i64 %i.b, %i.w
  %i.y = icmp ult i64 %i.x, 16
  br i1 %i.y, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.z = shl i64 %i.v, 1                          ; 5 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !7
  %.not40.i = icmp ugt i64 %i.z, %i.b
  br i1 %.not40.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aa = add i64 %i.z, 6
  %i.ab = and i64 %i.aa, -8                       ; 4 uses
  %i.ac = add i64 %i.b, 7
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = sub i64 %i.ab, %i.ad                    ; 2 uses
  %.val14.i.i = load ptr, ptr %1, align 8, !tbaa !15 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ad ; 2 uses
  %i.ag = icmp eq ptr %i.af, %.val14.i.i
  br i1 %i.ag, label %bb.g, label %upb_Arena_TryExtend.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %1, i64 8
  %.val13.i.i = load ptr, ptr %i.ah, align 8, !tbaa !17
  %i.ai = ptrtoint ptr %.val13.i.i to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %.not.i.i = icmp ult i64 %i.ak, %i.ae
  br i1 %.not.i.i, label %upb_Arena_TryExtend.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 %i.ae
  store ptr %i.al, ptr %1, align 8, !tbaa !15
  br label %upb_Arena_Realloc.exit.thread

.critedge.i:                                      ; preds = %bb.e
  %.val.i32 = load ptr, ptr %1, align 8, !tbaa !15 ; 2 uses
  %i.am = add i64 %i.b, 7
  %i.an = and i64 %i.am, -8                       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.an
  %i.ap = icmp eq ptr %i.ao, %.val.i32
  br i1 %i.ap, label %upb_Arena_ShrinkLast.exit.i, label %upb_Arena_Realloc.exit.thread

upb_Arena_ShrinkLast.exit.i:                      ; preds = %.critedge.i
  %i.aq = add i64 %i.z, 6
  %i.ar = and i64 %i.aq, -8
  %.neg.i.i = sub i64 %i.ar, %i.an
  %i.as = getelementptr inbounds i8, ptr %.val.i32, i64 %.neg.i.i
  store ptr %i.as, ptr %1, align 8, !tbaa !15
  br label %upb_Arena_Realloc.exit.thread

upb_Arena_TryExtend.exit.thread.i:                ; preds = %bb.g, %bb.f
  %i.at = getelementptr i8, ptr %1, i64 8
  %.val11.i.i = load ptr, ptr %i.at, align 8, !tbaa !17
  %i.au = ptrtoint ptr %.val11.i.i to i64
  %i.av = ptrtoint ptr %.val14.i.i to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = icmp ult i64 %i.aw, %i.ab
  br i1 %i.ax, label %bb.i, label %bb.j, !prof !18

bb.i:                                             ; preds = %upb_Arena_TryExtend.exit.thread.i
  %i.ay = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %1, i64 noundef %i.ab) #5
  br label %upb_Arena_Malloc.exit.i

bb.j:                                             ; preds = %upb_Arena_TryExtend.exit.thread.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 %i.ab
  store ptr %i.az, ptr %1, align 8, !tbaa !15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i.i) ]
  br label %upb_Arena_Malloc.exit.i

upb_Arena_Malloc.exit.i:                          ; preds = %bb.j, %bb.i
  %.0.i43.i = phi ptr [ %i.ay, %bb.i ], [ %.val14.i.i, %bb.j ] ; 6 uses
  %i.ba = icmp ne ptr %.0.i43.i, null
  %i.bb = icmp ne i64 %i.b, 0
  %or.cond.i = and i1 %i.bb, %i.ba
  br i1 %or.cond.i, label %bb.k, label %upb_Arena_Realloc.exit

bb.k:                                             ; preds = %upb_Arena_Malloc.exit.i
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.z)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i43.i, ptr nonnull readonly align 1 %i.u, i64 %i.bc, i1 false)
  br label %upb_Arena_Realloc.exit.thread

upb_Arena_Realloc.exit.thread:                    ; preds = %bb.k, %bb.h, %.critedge.i, %upb_Arena_ShrinkLast.exit.i
  %.034.i.ph = phi ptr [ %i.u, %upb_Arena_ShrinkLast.exit.i ], [ %i.u, %.critedge.i ], [ %i.u, %bb.h ], [ %.0.i43.i, %bb.k ] ; 2 uses
  store ptr %.034.i.ph, ptr %i.e, align 8, !tbaa !14
  br label %bb.l

upb_Arena_Realloc.exit:                           ; preds = %upb_Arena_Malloc.exit.i
  store ptr %.0.i43.i, ptr %i.e, align 8, !tbaa !14
  %.not31 = icmp eq ptr %.0.i43.i, null
  br i1 %.not31, label %bb.m, label %bb.l

bb.l:                                             ; preds = %upb_Arena_Realloc.exit.thread, %upb_Arena_Realloc.exit
  %.034.i38 = phi ptr [ %.034.i.ph, %upb_Arena_Realloc.exit.thread ], [ %.0.i43.i, %upb_Arena_Realloc.exit ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.034.i38, i64 %i.w
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !13
  %i.be = load i64, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.034.i38, i64 %i.be
  store ptr %i.bf, ptr %0, align 8, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.l, %upb_Arena_Realloc.exit, %upb_Arena_Malloc.exit
  %.0 = phi i1 [ false, %upb_Arena_Realloc.exit ], [ false, %upb_Arena_Malloc.exit ], [ true, %bb.l ], [ true, %bb.d ]
  ret i1 %.0
}

declare ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !12, i64 40}
!8 = !{!"", !9, i64 0, !12, i64 40, !10, i64 48, !10, i64 56}
!9 = !{!"", !10, i64 0, !5, i64 8}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!8, !10, i64 56}
!14 = !{!8, !10, i64 48}
!15 = !{!16, !10, i64 0}
!16 = !{!"upb_Arena", !10, i64 0, !10, i64 8}
!17 = !{!16, !10, i64 8}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!8, !10, i64 0}
end_hunk_0
