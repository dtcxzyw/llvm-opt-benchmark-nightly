inline.NumInlined: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.int_state_s = type { ptr, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"zsave\00", align 1
@istate = external local_unnamed_addr global %struct.int_state_s, align 8
@igs = external local_unnamed_addr global ptr, align 8
@osp = external local_unnamed_addr global ptr, align 8
@ostop = external local_unnamed_addr global ptr, align 8
@osbot = external local_unnamed_addr global ptr, align 8
@estack = external global [0 x %struct.ref_s], align 8
@esp = external local_unnamed_addr global ptr, align 8
@dstack = external global [0 x %struct.ref_s], align 8
@dsp = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"zrestore\00", align 1
@zvmem_op_init.my_defs = internal global [4 x %struct.op_def] [%struct.op_def { ptr @.str.2, ptr @zrestore }, %struct.op_def { ptr @.str.3, ptr @zsave }, %struct.op_def { ptr @.str.4, ptr @zvmstatus }, %struct.op_def zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"1restore\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"0save\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"0vmstatus\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @zsave(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @zgsave(ptr noundef %0) #3 ; 2 uses
  %i.b = tail call ptr @alloc(i32 noundef 1, i32 noundef 24, ptr noundef nonnull @.str) #3 ; 5 uses
  %i.c = tail call ptr @alloc_save_state() #3     ; 2 uses
  %i.d = icmp slt i32 %i.a, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.b, null
  %i.f = icmp eq ptr %i.c, null
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %i.b, align 8, !tbaa !8
  %i.g = load ptr, ptr @istate, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !18
  store ptr null, ptr @istate, align 8, !tbaa !14
  %i.i = load ptr, ptr @igs, align 8, !tbaa !19
  %i.j = tail call ptr @gs_state_swap_saved(ptr noundef %i.i, ptr noundef null) #3
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr @osp, align 8, !tbaa !21
  %i.m = load ptr, ptr @ostop, align 8, !tbaa !21
  %i.n = icmp ugt ptr %i.l, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr @osp, align 8, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.l, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 48, ptr %i.o, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.e ], [ %i.a, %bb.a ], [ -16, %bb.d ], [ -25, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @zgsave(...) local_unnamed_addr #2

declare ptr @alloc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @alloc_save_state() local_unnamed_addr #2

declare ptr @gs_state_swap_saved(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @zrestore(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !24
  %i.c = and i16 %i.b, 252
  %i.d = icmp eq i16 %i.c, 48
  br i1 %i.d, label %bb.b, label %restore_check_stack.exit.thread43

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !23     ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 5 uses
  %i.g = load ptr, ptr @osbot, align 8, !tbaa !21 ; 2 uses
  %i.h = icmp ult ptr %i.g, %0
  br i1 %i.h, label %.lr.ph.i, label %.loopexit48

.lr.ph.i:                                         ; preds = %bb.b, %select.unfold.i
  %.01720.i = phi ptr [ %i.l, %select.unfold.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01720.i, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !24
  %1 = trunc i16 %i.j to i8
  %2 = lshr i8 %1, 2
  switch i8 %2, label %select.unfold.i [
    i8 0, label %bb.c
    i8 10, label %bb.c
    i8 2, label %bb.c
    i8 4, label %bb.c
    i8 7, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 14, label %bb.c
    i8 15, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %.016.i = load ptr, ptr %.01720.i, align 8, !tbaa !23
  %i.k = tail call i32 @alloc_is_since_save(ptr noundef %.016.i, ptr noundef %i.f) #3
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %select.unfold.i, label %restore_check_stack.exit.thread43

select.unfold.i:                                  ; preds = %bb.c, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.01720.i, i64 16 ; 2 uses
  %i.m = icmp ult ptr %i.l, %0
  br i1 %i.m, label %.lr.ph.i, label %.loopexit48, !llvm.loop !25

.loopexit48:                                      ; preds = %select.unfold.i, %bb.b
  %i.n = load ptr, ptr @esp, align 8, !tbaa !21   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = icmp ugt ptr %i.o, @estack
  br i1 %i.p, label %.lr.ph.i25, label %.loopexit

.lr.ph.i25:                                       ; preds = %.loopexit48, %select.unfold.i29
  %.01720.i26 = phi ptr [ %i.t, %select.unfold.i29 ], [ @estack, %.loopexit48 ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01720.i26, i64 8
  %i.r = load i16, ptr %i.q, align 8, !tbaa !24
  %3 = trunc i16 %i.r to i8
  %4 = lshr i8 %3, 2
  switch i8 %4, label %select.unfold.i29 [
    i8 0, label %bb.d
    i8 10, label %bb.d
    i8 2, label %bb.d
    i8 4, label %bb.d
    i8 7, label %bb.d
    i8 12, label %bb.d
    i8 13, label %bb.d
    i8 14, label %bb.d
    i8 15, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.i25, %.lr.ph.i25, %.lr.ph.i25, %.lr.ph.i25, %.lr.ph.i25, %.lr.ph.i25, %.lr.ph.i25, %.lr.ph.i25, %.lr.ph.i25
  %.016.i27 = load ptr, ptr %.01720.i26, align 8, !tbaa !23
  %i.s = tail call i32 @alloc_is_since_save(ptr noundef %.016.i27, ptr noundef %i.f) #3
  %.not.i28 = icmp eq i32 %i.s, 0
  br i1 %.not.i28, label %select.unfold.i29, label %restore_check_stack.exit.thread43

select.unfold.i29:                                ; preds = %bb.d, %.lr.ph.i25
  %i.t = getelementptr inbounds nuw i8, ptr %.01720.i26, i64 16
  %i.u = icmp ult ptr %.01720.i26, %i.n
  br i1 %i.u, label %.lr.ph.i25, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %select.unfold.i29, %.loopexit48
  %i.v = load ptr, ptr @dsp, align 8, !tbaa !21   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = icmp ugt ptr %i.w, @dstack
  br i1 %i.x, label %.lr.ph.i32, label %restore_check_stack.exit

.lr.ph.i32:                                       ; preds = %.loopexit, %select.unfold.i36
  %.01720.i33 = phi ptr [ %i.ab, %select.unfold.i36 ], [ @dstack, %.loopexit ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01720.i33, i64 8
  %i.z = load i16, ptr %i.y, align 8, !tbaa !24
  %5 = trunc i16 %i.z to i8
  %6 = lshr i8 %5, 2
  switch i8 %6, label %select.unfold.i36 [
    i8 0, label %bb.e
    i8 10, label %bb.e
    i8 2, label %bb.e
    i8 4, label %bb.e
    i8 7, label %bb.e
    i8 12, label %bb.e
    i8 13, label %bb.e
    i8 14, label %bb.e
    i8 15, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i32, %.lr.ph.i32, %.lr.ph.i32, %.lr.ph.i32, %.lr.ph.i32, %.lr.ph.i32, %.lr.ph.i32, %.lr.ph.i32, %.lr.ph.i32
  %.016.i34 = load ptr, ptr %.01720.i33, align 8, !tbaa !23
  %i.aa = tail call i32 @alloc_is_since_save(ptr noundef %.016.i34, ptr noundef %i.f) #3
  %.not.i35 = icmp eq i32 %i.aa, 0
  br i1 %.not.i35, label %select.unfold.i36, label %restore_check_stack.exit.thread43

select.unfold.i36:                                ; preds = %bb.e, %.lr.ph.i32
  %i.ab = getelementptr inbounds nuw i8, ptr %.01720.i33, i64 16
  %i.ac = icmp ult ptr %.01720.i33, %i.v
  br i1 %i.ac, label %.lr.ph.i32, label %restore_check_stack.exit, !llvm.loop !25

restore_check_stack.exit:                         ; preds = %select.unfold.i36, %.loopexit
  %i.ad = tail call i32 @alloc_restore_state_check(ptr noundef %i.f) #3
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %restore_check_stack.exit.thread43, label %bb.f

bb.f:                                             ; preds = %restore_check_stack.exit
  %i.af = tail call i32 (ptr, ...) @zgrestoreall(ptr noundef nonnull %0) #3 ; 0 uses
  tail call void @alloc_restore_state(ptr noundef %i.f) #3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18
  store ptr %i.ah, ptr @istate, align 8, !tbaa !14
  %i.ai = load ptr, ptr @igs, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.al = tail call ptr @gs_state_swap_saved(ptr noundef %i.ai, ptr noundef %i.ak) #3 ; 0 uses
  %i.am = tail call i32 (ptr, ...) @zgrestore(ptr noundef nonnull %0) #3 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %restore_check_stack.exit.thread43, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @alloc_free(ptr noundef nonnull %i.e, i32 noundef 1, i32 noundef 24, ptr noundef nonnull @.str.1) #3
  %i.ao = load ptr, ptr @osp, align 8, !tbaa !21
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -16
  store ptr %i.ap, ptr @osp, align 8, !tbaa !21
  br label %restore_check_stack.exit.thread43

restore_check_stack.exit.thread43:                ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %restore_check_stack.exit, %bb.a, %bb.g
  %.1 = phi i32 [ -20, %bb.a ], [ -11, %restore_check_stack.exit ], [ 0, %bb.g ], [ %i.am, %bb.f ], [ -11, %bb.e ], [ -11, %bb.d ], [ -11, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -11, 1) i32 @restore_check_stack(ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %select.unfold
  %.01720 = phi ptr [ %i.e, %select.unfold ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01720, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !24
  %3 = trunc i16 %i.c to i8
  %4 = lshr i8 %3, 2
  switch i8 %4, label %select.unfold [
    i8 0, label %bb.b
    i8 10, label %bb.b
    i8 2, label %bb.b
    i8 4, label %bb.b
    i8 7, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
    i8 14, label %bb.b
    i8 15, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.016 = load ptr, ptr %.01720, align 8, !tbaa !23
  %i.d = tail call i32 @alloc_is_since_save(ptr noundef %.016, ptr noundef %2) #3
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %select.unfold, label %._crit_edge

select.unfold:                                    ; preds = %bb.b, %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.01720, i64 16 ; 2 uses
  %i.f = icmp ult ptr %i.e, %1
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %select.unfold, %bb.b, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ -11, %bb.b ], [ 0, %select.unfold ]
  ret i32 %.2
}

declare i32 @alloc_restore_state_check(ptr noundef) local_unnamed_addr #2

declare i32 @zgrestoreall(...) local_unnamed_addr #2

declare void @alloc_restore_state(ptr noundef) local_unnamed_addr #2

declare i32 @zgrestore(...) local_unnamed_addr #2

declare void @alloc_free(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @alloc_is_since_save(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -16, 1) i32 @zvmstatus(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @alloc_status(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.c, ptr @osp, align 8, !tbaa !21
  %i.d = load ptr, ptr @ostop, align 8, !tbaa !21
  %i.e = icmp ugt ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @osp, align 8, !tbaa !21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = call i32 @alloc_save_level() #3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 20, ptr %i.i, align 8, !tbaa !24
  %i.j = load i64, ptr %i.a, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 20, ptr %i.l, align 8, !tbaa !24
  %i.m = load i64, ptr %i.b, align 8, !tbaa !27
  store i64 %i.m, ptr %i.c, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 20, ptr %i.n, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

declare void @alloc_status(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @alloc_save_level() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @zvmem_op_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @z_op_init(ptr noundef nonnull @zvmem_op_init.my_defs) #3 ; 0 uses
  ret void
}

declare i32 @z_op_init(...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"vm_save_s", !10, i64 0, !12, i64 8, !13, i64 16}
!10 = !{!"p1 _ZTS12alloc_save_s", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS11int_state_s", !11, i64 0}
!13 = !{!"p1 _ZTS10gs_state_s", !11, i64 0}
!14 = !{!15, !12, i64 0}
!15 = !{!"int_state_s", !12, i64 0, !16, i64 8, !16, i64 24, !16, i64 40, !16, i64 56}
!16 = !{!"ref_s", !6, i64 0, !17, i64 8, !17, i64 10}
!17 = !{!"short", !6, i64 0}
!18 = !{!9, !12, i64 8}
!19 = !{!13, !13, i64 0}
!20 = !{!9, !13, i64 16}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS5ref_s", !11, i64 0}
!23 = !{!6, !6, i64 0}
!24 = !{!16, !17, i64 8}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !6, i64 0}
end_hunk_0
