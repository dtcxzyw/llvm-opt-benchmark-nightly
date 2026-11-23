Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/wd_start?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.list_node = type { ptr, ptr }

@g_wdactivelist = external dso_local global %struct.list_node, align 8
@g_wdtimernested = external dso_local local_unnamed_addr global i8, align 1
@g_wdexpired = external dso_local local_unnamed_addr global i64, align 8
@g_oneshot_maxticks = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -22, 1) i32 @wd_start_abstick(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %up_irq_restore.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #6, !srcloc !7
  %i.d = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @g_wdactivelist, align 8
  %i.h = icmp eq ptr %i.g, %0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = load ptr, ptr %0, align 8
  store ptr %i.m, ptr %i.j, align 8
  %i.n = zext i1 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.019 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.b ]
  %i.o = load ptr, ptr @g_wdactivelist, align 8   ; 3 uses
  %.not.i24 = icmp eq ptr %i.o, @g_wdactivelist
  br i1 %.not.i24, label %wd_insert.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.0.i25 = phi ptr [ %i.r, %bb.e ], [ %i.o, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i25, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %.not21.i = icmp slt i64 %1, %i.q
  br i1 %.not21.i, label %wd_insert.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %.0.i25, align 8           ; 2 uses
  %.not.i = icmp eq ptr %i.r, @g_wdactivelist
  br i1 %.not.i, label %wd_insert.exit, label %.lr.ph, !llvm.loop !11

wd_insert.exit:                                   ; preds = %.lr.ph, %bb.e, %bb.d
  %.0.i.lcssa = phi ptr [ @g_wdactivelist, %bb.d ], [ @g_wdactivelist, %bb.e ], [ %.0.i25, %.lr.ph ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.lcssa, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8
  store ptr %.0.i.lcssa, ptr %0, align 8
  %i.v = load ptr, ptr %i.s, align 8
  store ptr %0, ptr %i.v, align 8
  store ptr %0, ptr %i.s, align 8
  store ptr %2, ptr %i.e, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.x, align 8
  %i.y = icmp eq ptr %i.o, %.0.i.lcssa
  %i.z = zext i1 %i.y to i32
  %i.aa = or i32 %.019, %i.z
  %i.ab = load i8, ptr @g_wdtimernested, align 1, !range !12, !noundef !13
  %i.ac = xor i8 %i.ab, 1
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = and i32 %i.aa, %i.ad
  %.not22 = icmp eq i32 %i.ae, 0
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %wd_insert.exit
  %i.af = load ptr, ptr @g_wdactivelist, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = load i64, ptr @g_wdexpired, align 8     ; 2 uses
  %i.aj = sub nsw i64 %i.ah, %i.ai
  %i.ak = call i64 @llvm.smax.i64(i64 %i.aj, i64 0)
  %i.al = load i32, ptr @g_oneshot_maxticks, align 4
  %i.am = zext i32 %i.al to i64
  %i.an = call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.am)
  %i.ao = add nsw i64 %i.an, %i.ai
  %i.ap = call i32 @up_alarm_tick_start(i64 noundef %i.ao) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %wd_insert.exit
  %i.aq = and i64 %i.d, 512
  %.not23 = icmp eq i64 %i.aq, 0
  br i1 %.not23, label %up_irq_restore.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !10
  br label %up_irq_restore.exit

up_irq_restore.exit:                              ; preds = %bb.h, %bb.g, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @wd_timer(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #6, !srcloc !7
  %i.b = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !8
  store i64 %0, ptr @g_wdexpired, align 8
  store i8 1, ptr @g_wdtimernested, align 1
  %i.c = load ptr, ptr @g_wdactivelist, align 8   ; 2 uses
  %.not.i3 = icmp eq ptr %i.c, @g_wdactivelist
  br i1 %.not.i3, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.b, %bb.a
  store i8 0, ptr @g_wdtimernested, align 1
  br label %bb.d

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.p, %bb.b ], [ %i.c, %bb.a ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not19.i = icmp slt i64 %0, %i.f
  br i1 %.not19.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.d, align 8
  store ptr %i.k, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load i64, ptr %i.n, align 8
  store ptr null, ptr %i.l, align 8
  call void %i.m(i64 noundef %i.o) #7, !inline_history !14
  %i.p = load ptr, ptr @g_wdactivelist, align 8   ; 2 uses
  %.not.i = icmp eq ptr %i.p, @g_wdactivelist
  br i1 %.not.i, label %.thread, label %.lr.ph, !llvm.loop !15

bb.c:                                             ; preds = %.lr.ph
  store i8 0, ptr @g_wdtimernested, align 1
  %i.q = load i64, ptr @g_wdexpired, align 8      ; 2 uses
  %i.r = sub nsw i64 %i.f, %i.q
  %i.s = call i64 @llvm.smax.i64(i64 %i.r, i64 0)
  %i.t = load i32, ptr @g_oneshot_maxticks, align 4
  %i.u = zext i32 %i.t to i64
  %i.v = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = add nsw i64 %i.v, %i.q
  %i.x = call i32 @up_alarm_tick_start(i64 noundef %i.w) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.y = and i64 %i.b, 512
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %wd_expiration.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !10
  br label %wd_expiration.exit

wd_expiration.exit:                               ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: noredzone optsize
declare dso_local i32 @up_alarm_tick_start(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noredzone nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{i64 630789, i64 630807}
!8 = !{i64 631439}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{i64 631573}
!11 = distinct !{!11, !9}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = distinct !{null}
!15 = distinct !{!15, !9}
end_hunk_0
