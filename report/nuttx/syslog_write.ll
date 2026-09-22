Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/syslog_write?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g_syslog_channel = external dso_local local_unnamed_addr constant [1 x ptr], align 8
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i64 -5, -9223372036854775808) i64 @syslog_write_foreach(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @g_syslog_channel, align 8 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not105 = icmp eq i64 %1, 0                    ; 3 uses
  br i1 %i.b, label %.thread88, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8              ; 4 uses
  br i1 %2, label %bb.c, label %.thread84

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.j, label %bb.d

.thread84:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not86 = icmp eq ptr %i.h, null
  br i1 %.not86, label %.thread87, label %bb.d

bb.d:                                             ; preds = %.thread84, %bb.c
  %i.i = phi ptr [ %i.h, %.thread84 ], [ %i.f, %bb.c ] ; 3 uses
  %i.j = load i8, ptr %i.c, align 8
  %i.k = and i8 %i.j, 2
  %.not79 = icmp ne i8 %i.k, 0
  %brmerge = or i1 %.not79, %.not105
  br i1 %brmerge, label %.loopexit94, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %.096 = phi i64 [ %i.u, %bb.g ], [ 0, %bb.d ]   ; 4 uses
  %.06795 = phi i64 [ %.168, %bb.g ], [ 0, %bb.d ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.096
  %i.m = load i8, ptr %i.l, align 1
  %.not80 = icmp eq i8 %i.m, 10
  br i1 %.not80, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds i8, ptr %0, i64 %.06795
  %i.o = sub i64 %.096, %.06795
  %i.p = tail call i64 %i.i(ptr noundef nonnull %i.a, ptr noundef %i.n, i64 noundef %i.o) #5
  %i.q = icmp sgt i64 %i.p, -1
  br i1 %i.q, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i64 %i.i(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i64 noundef 2) #5
  %.fr = freeze i64 %i.r
  %i.s = icmp slt i64 %.fr, 0
  %i.t = add nuw i64 %.096, 1
  br i1 %i.s, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.e, %bb.f
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %.lr.ph
  %.168 = phi i64 [ %.06795, %.lr.ph ], [ %.06795, %.thread ], [ %i.t, %bb.f ] ; 2 uses
  %i.u = add nuw i64 %.096, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %1
  br i1 %exitcond.not, label %.loopexit94, label %.lr.ph, !llvm.loop !7

.loopexit94:                                      ; preds = %bb.g, %bb.d
  %.269 = phi i64 [ 0, %bb.d ], [ %.168, %bb.g ]  ; 5 uses
  %i.v = icmp ult i64 %.269, %1
  br i1 %i.v, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.loopexit94
  %i.w = getelementptr inbounds i8, ptr %0, i64 %.269
  %i.x = sub nuw i64 %1, %.269
  %i.y = tail call i64 %i.i(ptr noundef nonnull %i.a, ptr noundef %i.w, i64 noundef %i.x) #5 ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %.thread88, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i64 %i.y, %.269
  br label %.loopexit

bb.j:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.thread87

.thread87:                                        ; preds = %.thread84, %bb.j
  %.in77 = phi ptr [ %i.ab, %bb.j ], [ %i.d, %.thread84 ]
  %i.ac = load ptr, ptr %.in77, align 8           ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.thread88, label %bb.k

bb.k:                                             ; preds = %.thread87
  %i.ae = load i8, ptr %i.c, align 8
  %i.af = and i8 %i.ae, 2
  %.not78 = icmp eq i8 %i.af, 0
  br i1 %.not78, label %.preheader, label %.preheader91

.preheader91:                                     ; preds = %bb.k
  br i1 %.not105, label %.loopexit, label %.lr.ph98

.preheader:                                       ; preds = %bb.k
  br i1 %.not105, label %.loopexit, label %.lr.ph101

.lr.ph98:                                         ; preds = %.preheader91, %.lr.ph98
  %.37097 = phi i64 [ %i.ak, %.lr.ph98 ], [ 0, %.preheader91 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.37097
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = sext i8 %i.ah to i32
  %i.aj = tail call i32 %i.ac(ptr noundef nonnull %i.a, i32 noundef %i.ai) #5 ; 0 uses
  %i.ak = add nuw i64 %.37097, 1                  ; 2 uses
  %exitcond110.not = icmp eq i64 %i.ak, %1
  br i1 %exitcond110.not, label %.loopexit, label %.lr.ph98, !llvm.loop !8

.lr.ph101:                                        ; preds = %.preheader, %bb.m
  %.4100 = phi i64 [ %i.as, %bb.m ], [ 0, %.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.4100 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %i.an = icmp eq i8 %i.am, 10
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph101
  %i.ao = tail call i32 %i.ac(ptr noundef nonnull %i.a, i32 noundef 13) #5 ; 0 uses
  %.pre = load i8, ptr %i.al, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph101
  %i.ap = phi i8 [ %.pre, %bb.l ], [ %i.am, %.lr.ph101 ]
  %i.aq = sext i8 %i.ap to i32
  %i.ar = tail call i32 %i.ac(ptr noundef nonnull %i.a, i32 noundef %i.aq) #5 ; 0 uses
  %i.as = add nuw i64 %.4100, 1                   ; 2 uses
  %exitcond111.not = icmp eq i64 %i.as, %1
  br i1 %exitcond111.not, label %.loopexit, label %.lr.ph101, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph98, %bb.m, %.preheader91, %.preheader, %.loopexit94, %bb.i
  %.5 = phi i64 [ %i.aa, %bb.i ], [ %.269, %.loopexit94 ], [ %1, %bb.m ], [ 0, %.preheader ], [ 0, %.preheader91 ], [ %1, %.lr.ph98 ]
  %spec.select81 = tail call i64 @llvm.smax.i64(i64 %.5, i64 -5)
  br label %.thread88

.thread88:                                        ; preds = %.thread87, %bb.h, %.loopexit, %bb.a
  %.066.lcssa = phi i64 [ -5, %bb.a ], [ -5, %bb.h ], [ -5, %.thread87 ], [ %spec.select81, %.loopexit ]
  ret i64 %.066.lcssa
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i64 -5, -9223372036854775808) i64 @syslog_write(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #6, !srcloc !11
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %syslog_safe_to_block.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @sched_idletask() #5
  br i1 %i.c, label %syslog_safe_to_block.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @nxsched_self() #5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i = icmp ne ptr %i.f, null
  br label %syslog_safe_to_block.exit

syslog_safe_to_block.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ true, %bb.a ], [ %.not.i, %bb.c ], [ true, %bb.b ]
  %i.g = tail call i64 @syslog_write_foreach(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %.0.i) #7
  ret i64 %i.g
}

; Function Attrs: noredzone optsize
declare dso_local zeroext i1 @sched_idletask() local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local ptr @nxsched_self() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noredzone nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { noredzone optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = distinct !{!7, !10}
!8 = distinct !{!8, !10}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i64 555362}
end_hunk_0
