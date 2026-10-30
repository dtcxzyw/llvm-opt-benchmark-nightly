Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_sysmain_callbacks?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"SDL_MAIN_CALLBACK_RATE\00", align 1
@callback_rate_increment = internal unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"waitevent\00", align 1
@iterate_after_waitevent = internal unnamed_addr global i8 0, align 1

; Function Attrs: nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @SDL_EnterAppMainCallbacks_REAL(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SDL_InitMainCallbacks(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #2 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @MainCallbackRateHintChanged, ptr noundef null) #2 ; 0 uses
  %i.d = load i64, ptr @callback_rate_increment, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @SDL_GetTicksNS_REAL() #2
  %i.f = load i64, ptr @callback_rate_increment, align 8
  %i.g = add i64 %i.f, %i.e
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.c
  %.0.ph = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ]
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %.preheader
  %.0 = phi i64 [ %.0.ph, %.preheader ], [ %.0.be, %.backedge ] ; 3 uses
  %i.h = load i8, ptr @iterate_after_waitevent, align 1, !range !4, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %GenericIterateMainCallbacks.exit

bb.e:                                             ; preds = %bb.d
  %i.j = tail call zeroext i1 @SDL_WaitEvent_REAL(ptr noundef null) #2 ; 0 uses
  %.pre.i = load i8, ptr @iterate_after_waitevent, align 1, !range !4
  %i.k = trunc nuw i8 %.pre.i to i1
  %i.l = xor i1 %i.k, true
  br label %GenericIterateMainCallbacks.exit

GenericIterateMainCallbacks.exit:                 ; preds = %bb.d, %bb.e
  %i.m = phi i1 [ %i.l, %bb.e ], [ true, %bb.d ]
  %i.n = tail call i32 @SDL_IterateMainCallbacks(i1 noundef zeroext %i.m) #2 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.j

bb.f:                                             ; preds = %GenericIterateMainCallbacks.exit
  %i.p = load i64, ptr @callback_rate_increment, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.backedge, label %bb.g

.backedge:                                        ; preds = %bb.f, %bb.i
  %.0.be = phi i64 [ %i.v, %bb.i ], [ 0, %bb.f ]
  br label %bb.d, !llvm.loop !3

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i64 @SDL_GetTicksNS_REAL() #2  ; 3 uses
  %i.s = icmp ugt i64 %.0, %i.r
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = sub nuw i64 %.0, %i.r
  tail call void @SDL_DelayPrecise_REAL(i64 noundef %i.t) #2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi i64 [ %.0, %bb.h ], [ %i.r, %bb.g ]
  %i.u = load i64, ptr @callback_rate_increment, align 8
  %i.v = add i64 %i.u, %.1
  br label %.backedge

bb.j:                                             ; preds = %GenericIterateMainCallbacks.exit
  tail call void @SDL_RemoveHintCallback_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @MainCallbackRateHintChanged, ptr noundef null) #2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  %.014 = phi i32 [ %i.n, %bb.j ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @SDL_QuitMainCallbacks(i32 noundef %.014) #2
  %i.w = icmp eq i32 %.014, 2
  %i.x = zext i1 %i.w to i32
  ret i32 %i.x
}

declare i32 @SDL_InitMainCallbacks(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @MainCallbackRateHintChanged(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %3, ptr noundef nonnull @.str.1) #2
  %i.b = icmp eq i32 %i.a, 0                      ; 2 uses
  %i.c = zext i1 %i.b to i8
  store i8 %i.c, ptr @iterate_after_waitevent, align 1
  br i1 %i.b, label %bb.e, label %bb.c

.thread:                                          ; preds = %bb.a
  store i8 0, ptr @iterate_after_waitevent, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call double @SDL_atof_REAL(ptr noundef nonnull %3) #2
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.e = phi double [ %i.d, %bb.c ], [ 0.000000e+00, %.thread ] ; 2 uses
  %i.f = fcmp ogt double %i.e, 0.000000e+00
  %i.g = fdiv double 1.000000e+09, %i.e
  %i.h = fptoui double %i.g to i64
  %storemerge = select i1 %i.f, i64 %i.h, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %storemerge7 = phi i64 [ %storemerge, %bb.d ], [ 0, %bb.b ]
  store i64 %storemerge7, ptr @callback_rate_increment, align 8
  ret void
}

declare i64 @SDL_GetTicksNS_REAL() local_unnamed_addr #1

declare void @SDL_DelayPrecise_REAL(i64 noundef) local_unnamed_addr #1

declare void @SDL_RemoveHintCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @SDL_QuitMainCallbacks(i32 noundef) local_unnamed_addr #1

declare i32 @SDL_strcmp_REAL(ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @SDL_atof_REAL(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_WaitEvent_REAL(ptr noundef) local_unnamed_addr #1

declare i32 @SDL_IterateMainCallbacks(i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = distinct !{!3, !6}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"llvm.loop.mustprogress"}
end_hunk_0
