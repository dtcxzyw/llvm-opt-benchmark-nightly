inline.NumInlined: 51
inline.NumDeleted: 28
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rb_data_type_struct = type { ptr, %struct.anon, ptr, ptr, i64 }
%struct.anon = type { ptr, ptr, ptr, ptr, [1 x ptr] }
%struct.monitor_args = type { i64, ptr, i64 }
%struct.wait_for_cond_data = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"Monitor\00", align 1
@rb_cObject = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"try_enter\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"synchronize\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"mon_locked?\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"mon_check_owner\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"mon_owned?\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"wait_for_cond\00", align 1
@monitor_data_type = internal constant %struct.rb_data_type_struct { ptr @.str.10, %struct.anon { ptr @monitor_mark, ptr inttoptr (i64 -1 to ptr), ptr null, ptr @monitor_compact, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 35 }, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"monitor_exit: count:%d\00", align 1
@rb_eThreadError = external local_unnamed_addr global i64, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"current fiber not owner\00", align 1
@monitor_wait_for_cond_body.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"wait\00", align 1

; Function Attrs: nounwind uwtable
define void @Init_monitor() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_ext_ractor_safe(i1 noundef zeroext true) #5
  %i.a = load i64, ptr @rb_cObject, align 8, !tbaa !10
  %i.b = tail call i64 @rb_define_class(ptr noundef nonnull @.str, i64 noundef %i.a) #5 ; 9 uses
  tail call void @rb_define_alloc_func(i64 noundef %i.b, ptr noundef nonnull @monitor_alloc) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.1, ptr noundef nonnull @monitor_try_enter, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.2, ptr noundef nonnull @monitor_enter, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.3, ptr noundef nonnull @monitor_exit, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.4, ptr noundef nonnull @monitor_synchronize, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.5, ptr noundef nonnull @monitor_locked_p, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.6, ptr noundef nonnull @monitor_check_owner, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.7, ptr noundef nonnull @monitor_owned_p, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.8, ptr noundef nonnull @monitor_wait_for_cond, i32 noundef 2) #5
  ret void
}

declare void @rb_ext_ractor_safe(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i64 @rb_define_class(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @monitor_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 24, ptr noundef nonnull @monitor_data_type) #5 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = tail call i64 @rb_mutex_new() #5         ; 4 uses
  store i64 %i.j, ptr %i.i, align 8, !tbaa !10
  %i.k = icmp eq i64 %i.j, 0
  %i.l = and i64 %i.j, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %rb_obj_write.exit, label %bb.c

bb.c:                                             ; preds = %RTYPEDDATA_GET_DATA.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.a, i64 noundef %i.j) #5
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %RTYPEDDATA_GET_DATA.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 4, ptr %i.o, align 8, !tbaa !10
  store i64 0, ptr %i.h, align 8, !tbaa !17
  ret i64 %i.a
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @monitor_try_enter(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc nuw i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @monitor_data_type to i64)
  br i1 %i.p, label %monitor_ptr.exit, label %.preheader.i.i, !prof !22

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = icmp eq ptr %i.r, @monitor_data_type
  br i1 %i.s, label %monitor_ptr.exit, label %.preheader.i.i, !llvm.loop !28

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @monitor_data_type) #5
  br label %monitor_ptr.exit

monitor_ptr.exit:                                 ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 4 uses
  %i.u = tail call i64 @rb_fiber_current() #5     ; 5 uses
  %i.v = getelementptr i8, ptr %.1.i.i, i64 8     ; 2 uses
  %.val = load i64, ptr %i.v, align 8, !tbaa !30
  %i.w = icmp eq i64 %.val, %i.u
  br i1 %i.w, label %monitor_ptr.exit._crit_edge, label %bb.e

monitor_ptr.exit._crit_edge:                      ; preds = %monitor_ptr.exit
  %.pre = load i64, ptr %.1.i.i, align 8, !tbaa !17
  %i.x = add nsw i64 %.pre, 1
  br label %rb_obj_write.exit

bb.e:                                             ; preds = %monitor_ptr.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31
  %i.aa = tail call i64 @rb_mutex_trylock(i64 noundef %i.z) #5
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.u, ptr %i.v, align 8, !tbaa !10
  %i.ab = icmp eq i64 %i.u, 0
  %i.ac = and i64 %i.u, 7
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %i.ab, %i.ad
  br i1 %i.ae, label %rb_obj_write.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.u) #5
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.g, %bb.f, %monitor_ptr.exit._crit_edge
  %i.af = phi i64 [ %i.x, %monitor_ptr.exit._crit_edge ], [ 1, %bb.f ], [ 1, %bb.g ]
  store i64 %i.af, ptr %.1.i.i, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %rb_obj_write.exit
  %.0 = phi i64 [ 20, %rb_obj_write.exit ], [ 0, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @monitor_enter(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i.i, label %bb.b, label %.critedge.i.i.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc nuw i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @monitor_data_type to i64)
  br i1 %i.p, label %monitor_args_init.exit, label %.preheader.i.i.i, !prof !22

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.d
  %.016.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = icmp eq ptr %i.r, @monitor_data_type
  br i1 %i.s, label %monitor_args_init.exit, label %.preheader.i.i.i, !llvm.loop !28

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @monitor_data_type) #5
  br label %monitor_args_init.exit

monitor_args_init.exit:                           ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.1.i.i.i = phi ptr [ %i.t, %.critedge.i.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.o, %bb.d ] ; 4 uses
  %i.u = tail call i64 @rb_fiber_current() #5     ; 5 uses
  %i.v = getelementptr i8, ptr %.1.i.i.i, i64 8   ; 2 uses
  %.val.i = load i64, ptr %i.v, align 8, !tbaa !30
  %i.w = icmp eq i64 %.val.i, %i.u
  br i1 %i.w, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %monitor_args_init.exit
  %.pre8.i = load i64, ptr %.1.i.i.i, align 8, !tbaa !17
  %i.x = add nsw i64 %.pre8.i, 1
  br label %monitor_enter0.exit

bb.e:                                             ; preds = %monitor_args_init.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31
  %i.aa = tail call i64 @rb_mutex_lock(i64 noundef %i.z) #5 ; 0 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !10
  %i.ab = icmp eq i64 %i.u, 0
  %i.ac = and i64 %i.u, 7
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %i.ab, %i.ad
  br i1 %i.ae, label %monitor_enter0.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.u) #5
  br label %monitor_enter0.exit

monitor_enter0.exit:                              ; preds = %bb.e, %bb.f, %._crit_edge.i
  %i.af = phi i64 [ %i.x, %._crit_edge.i ], [ 1, %bb.f ], [ 1, %bb.e ]
  store i64 %i.af, ptr %.1.i.i.i, align 8, !tbaa !17
  ret i64 4
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @monitor_exit(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i.i, label %bb.b, label %.critedge.i.i.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc nuw i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @monitor_data_type to i64)
  br i1 %i.p, label %monitor_args_init.exit, label %.preheader.i.i.i, !prof !22

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.d
  %.016.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = icmp eq ptr %i.r, @monitor_data_type
  br i1 %i.s, label %monitor_args_init.exit, label %.preheader.i.i.i, !llvm.loop !28

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @monitor_data_type) #5
  br label %monitor_args_init.exit

monitor_args_init.exit:                           ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.1.i.i.i = phi ptr [ %i.t, %.critedge.i.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.o, %bb.d ] ; 4 uses
  %i.u = tail call i64 @rb_fiber_current() #5
  %i.v = getelementptr i8, ptr %.1.i.i.i, i64 8   ; 2 uses
  %.val.val.i = load i64, ptr %i.v, align 8, !tbaa !30
  %i.w = icmp eq i64 %.val.val.i, %i.u
  br i1 %i.w, label %monitor_check_owner0.exit.i, label %bb.e

bb.e:                                             ; preds = %monitor_args_init.exit
  %i.x = load i64, ptr @rb_eThreadError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.12) #6
  unreachable

monitor_check_owner0.exit.i:                      ; preds = %monitor_args_init.exit
  %i.y = load i64, ptr %.1.i.i.i, align 8, !tbaa !17 ; 3 uses
  %i.z = icmp slt i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %monitor_check_owner0.exit.i
  %i.aa = trunc i64 %i.y to i32
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.11, i32 noundef %i.aa) #7
  unreachable

bb.g:                                             ; preds = %monitor_check_owner0.exit.i
  %i.ab = add nsw i64 %i.y, -1                    ; 2 uses
  store i64 %i.ab, ptr %.1.i.i.i, align 8, !tbaa !17
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %monitor_exit0.exit

bb.h:                                             ; preds = %bb.g
  store i64 4, ptr %i.v, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31
  %i.af = tail call i64 @rb_mutex_unlock(i64 noundef %i.ae) #5 ; 0 uses
  br label %monitor_exit0.exit

monitor_exit0.exit:                               ; preds = %bb.g, %bb.h
  ret i64 4
}

; Function Attrs: nounwind uwtable
define internal i64 @monitor_synchronize(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.monitor_args, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  store i64 %0, ptr %1, align 8, !tbaa !32
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i.i, label %bb.b, label %.critedge.i.i.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc nuw i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @monitor_data_type to i64)
  br i1 %i.p, label %monitor_args_init.exit, label %.preheader.i.i.i, !prof !22

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.d
  %.016.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = icmp eq ptr %i.r, @monitor_data_type
  br i1 %i.s, label %monitor_args_init.exit, label %.preheader.i.i.i, !llvm.loop !28

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @monitor_data_type) #5
  br label %monitor_args_init.exit

monitor_args_init.exit:                           ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.pre.i = phi ptr [ %i.t, %.critedge.i.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.o, %bb.d ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.pre.i, ptr %i.u, align 8, !tbaa !35
  %i.v = tail call i64 @rb_fiber_current() #5     ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.v, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr i8, ptr %.pre.i, i64 8     ; 2 uses
  %.val.i = load i64, ptr %i.x, align 8, !tbaa !30
  %i.y = icmp eq i64 %.val.i, %i.v
  br i1 %i.y, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %monitor_args_init.exit
  %.pre8.i = load i64, ptr %.pre.i, align 8, !tbaa !17
  %i.z = add nsw i64 %.pre8.i, 1
  br label %monitor_enter0.exit

bb.e:                                             ; preds = %monitor_args_init.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31
  %i.ac = tail call i64 @rb_mutex_lock(i64 noundef %i.ab) #5 ; 0 uses
  store i64 %i.v, ptr %i.x, align 8, !tbaa !10
  %i.ad = icmp eq i64 %i.v, 0
  %i.ae = and i64 %i.v, 7
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = or i1 %i.ad, %i.af
  br i1 %i.ag, label %monitor_enter0.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.v) #5
  br label %monitor_enter0.exit

monitor_enter0.exit:                              ; preds = %bb.e, %bb.f, %._crit_edge.i
  %i.ah = phi i64 [ %i.z, %._crit_edge.i ], [ 1, %bb.f ], [ 1, %bb.e ]
  store i64 %i.ah, ptr %.pre.i, align 8, !tbaa !17
  %i.ai = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.aj = call i64 @rb_ensure(ptr noundef nonnull @monitor_sync_body, i64 noundef %i.ai, ptr noundef nonnull @monitor_sync_ensure, i64 noundef %i.ai) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  ret i64 %i.aj
}

; Function Attrs: nounwind uwtable
define internal i64 @monitor_locked_p(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc nuw i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @monitor_data_type to i64)
  br i1 %i.p, label %monitor_ptr.exit, label %.preheader.i.i, !prof !22

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = icmp eq ptr %i.r, @monitor_data_type
  br i1 %i.s, label %monitor_ptr.exit, label %.preheader.i.i, !llvm.loop !28

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @monitor_data_type) #5
  br label %monitor_ptr.exit

monitor_ptr.exit:                                 ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31
  %i.w = tail call i64 @rb_mutex_locked_p(i64 noundef %i.v) #5
  ret i64 %i.w
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @monitor_check_owner(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i.i, label %bb.b, label %.critedge.i.i.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc nuw i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @monitor_data_type to i64)
  br i1 %i.p, label %monitor_args_init.exit, label %.preheader.i.i.i, !prof !22

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.d
  %.016.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = icmp eq ptr %i.r, @monitor_data_type
  br i1 %i.s, label %monitor_args_init.exit, label %.preheader.i.i.i, !llvm.loop !28

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @monitor_data_type) #5
  br label %monitor_args_init.exit

monitor_args_init.exit:                           ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.1.i.i.i = phi ptr [ %i.t, %.critedge.i.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.o, %bb.d ]
  %i.u = tail call i64 @rb_fiber_current() #5
  %i.v = getelementptr i8, ptr %.1.i.i.i, i64 8
  %.val.val = load i64, ptr %i.v, align 8, !tbaa !30
  %i.w = icmp eq i64 %.val.val, %i.u
  br i1 %i.w, label %monitor_check_owner0.exit, label %bb.e

bb.e:                                             ; preds = %monitor_args_init.exit
  %i.x = load i64, ptr @rb_eThreadError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.12) #6
  unreachable

monitor_check_owner0.exit:                        ; preds = %monitor_args_init.exit
  ret i64 4
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @monitor_owned_p(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc nuw i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @monitor_data_type to i64)
  br i1 %i.p, label %monitor_ptr.exit, label %.preheader.i.i, !prof !22

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = icmp eq ptr %i.r, @monitor_data_type
  br i1 %i.s, label %monitor_ptr.exit, label %.preheader.i.i, !llvm.loop !28

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @monitor_data_type) #5
  br label %monitor_ptr.exit

monitor_ptr.exit:                                 ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31
  %i.w = tail call i64 @rb_mutex_locked_p(i64 noundef %i.v) #5
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %monitor_ptr.exit
  %i.x = tail call i64 @rb_fiber_current() #5
  %i.y = getelementptr i8, ptr %.1.i.i, i64 8
  %.val = load i64, ptr %i.y, align 8, !tbaa !30
  %i.z = icmp eq i64 %.val, %i.x
  %i.aa = select i1 %i.z, i64 20, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %monitor_ptr.exit
  %i.ab = phi i64 [ 0, %monitor_ptr.exit ], [ %i.aa, %bb.e ]
  ret i64 %i.ab
}

; Function Attrs: nounwind uwtable
define internal i64 @monitor_wait_for_cond(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.wait_for_cond_data, align 8 ; 7 uses
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i.i, label %bb.b, label %.critedge.i.i.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc nuw i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @monitor_data_type to i64)
  br i1 %i.p, label %monitor_ptr.exit.i, label %.preheader.i.i.i, !prof !22

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.d
  %.016.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = icmp eq ptr %i.r, @monitor_data_type
  br i1 %i.s, label %monitor_ptr.exit.i, label %.preheader.i.i.i, !llvm.loop !28

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @monitor_data_type) #5
  br label %monitor_ptr.exit.i

monitor_ptr.exit.i:                               ; preds = %bb.d, %.critedge.i.i.i, %RTYPEDDATA_GET_DATA.exit.i.i.i
  %.1.i.i.i = phi ptr [ %i.t, %.critedge.i.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.u = load i64, ptr %.1.i.i.i, align 8, !tbaa !17 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 8
  store i64 4, ptr %i.v, align 8, !tbaa !10
  store i64 0, ptr %.1.i.i.i, align 8, !tbaa !17
  %i.w = add i64 %i.u, 4611686018427387904
  %or.cond.i.i = icmp sgt i64 %i.w, -1
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %monitor_ptr.exit.i
  %i.x = shl nsw i64 %i.u, 1
  %i.y = or disjoint i64 %i.x, 1
  br label %monitor_exit_for_cond.exit

bb.f:                                             ; preds = %monitor_ptr.exit.i
  %i.z = tail call i64 @rb_int2big(i64 noundef %i.u) #5
  br label %monitor_exit_for_cond.exit

monitor_exit_for_cond.exit:                       ; preds = %bb.e, %bb.f
  %.0.i.i = phi i64 [ %i.y, %bb.e ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store i64 %0, ptr %3, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.ab, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.0.i.i, ptr %i.ac, align 8, !tbaa !41
  %i.ad = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.ae = call i64 @rb_ensure(ptr noundef nonnull @monitor_wait_for_cond_body, i64 noundef %i.ad, ptr noundef nonnull @monitor_enter_for_cond, i64 noundef %i.ad) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret i64 %i.ae
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_mutex_new() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @monitor_mark(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  tail call void @rb_gc_mark_movable(i64 noundef %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  tail call void @rb_gc_mark_movable(i64 noundef %i.d) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @monitor_compact(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %i.c = tail call i64 @rb_gc_location(i64 noundef %i.b) #5
  store i64 %i.c, ptr %i.a, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31
  %i.f = tail call i64 @rb_gc_location(i64 noundef %i.e) #5
  store i64 %i.f, ptr %i.d, align 8, !tbaa !31
  ret void
}

declare void @rb_gc_mark_movable(i64 noundef) local_unnamed_addr #1

declare i64 @rb_gc_location(i64 noundef) local_unnamed_addr #1

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_fiber_current() local_unnamed_addr #1

declare i64 @rb_mutex_trylock(i64 noundef) local_unnamed_addr #1

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_mutex_lock(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #3

declare i64 @rb_mutex_unlock(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @monitor_sync_body(i64 %0) #0 {
bb.a:
  %i.a = tail call i64 (i32, ...) @rb_yield_values(i32 noundef 0) #5
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @monitor_sync_ensure(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !35 ; 4 uses
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val8.i = load i64, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr i8, ptr %.val.i, i64 8     ; 2 uses
  %.val.val.i = load i64, ptr %i.d, align 8, !tbaa !30
  %i.e = icmp eq i64 %.val.val.i, %.val8.i
  br i1 %i.e, label %monitor_check_owner0.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr @rb_eThreadError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.12) #6
  unreachable

monitor_check_owner0.exit.i:                      ; preds = %bb.a
  %i.g = load i64, ptr %.val.i, align 8, !tbaa !17 ; 3 uses
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %monitor_check_owner0.exit.i
  %i.i = trunc i64 %i.g to i32
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.11, i32 noundef %i.i) #7
  unreachable

bb.d:                                             ; preds = %monitor_check_owner0.exit.i
  %i.j = add nsw i64 %i.g, -1                     ; 2 uses
  store i64 %i.j, ptr %.val.i, align 8, !tbaa !17
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %monitor_exit0.exit

bb.e:                                             ; preds = %bb.d
  store i64 4, ptr %i.d, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  %i.n = tail call i64 @rb_mutex_unlock(i64 noundef %i.m) #5 ; 0 uses
  br label %monitor_exit0.exit

monitor_exit0.exit:                               ; preds = %bb.d, %bb.e
  ret i64 4
}

declare i64 @rb_yield_values(i32 noundef, ...) local_unnamed_addr #1

declare i64 @rb_mutex_locked_p(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @monitor_wait_for_cond_body(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %i.b, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.g = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc nuw i64 %i.k to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @monitor_data_type to i64)
  br i1 %i.r, label %monitor_ptr.exit, label %.preheader.i.i, !prof !22

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23   ; 2 uses
  %i.u = icmp eq ptr %i.t, @monitor_data_type
  br i1 %i.u, label %monitor_ptr.exit, label %.preheader.i.i, !llvm.loop !28

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %i.b, ptr noundef nonnull @monitor_data_type) #5
  br label %monitor_ptr.exit

monitor_ptr.exit:                                 ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.v, %.critedge.i.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.q, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !39
  %.pr.i = load i64, ptr @monitor_wait_for_cond_body.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %monitor_ptr.exit, %.lr.ph.i
  %i.y = tail call i64 @rb_intern2(ptr noundef nonnull @.str.13, i64 noundef 4) #5 ; 3 uses
  store i64 %i.y, ptr @monitor_wait_for_cond_body.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !42

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %monitor_ptr.exit
  %.lcssa.i = phi i64 [ %.pr.i, %monitor_ptr.exit ], [ %i.y, %.lr.ph.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !40
  %i.ad = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.x, i64 noundef %.lcssa.i, i32 noundef 2, i64 noundef %i.aa, i64 noundef %i.ac) #5
  %i.ae = and i64 %i.ad, -5
  %.not = icmp eq i64 %i.ae, 0
  %i.af = select i1 %.not, i64 0, i64 20
  ret i64 %i.af
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @monitor_enter_for_cond(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 6 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %i.b, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.g = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc nuw i64 %i.k to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @monitor_data_type to i64)
  br i1 %i.r, label %monitor_ptr.exit, label %.preheader.i.i, !prof !22

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23   ; 2 uses
  %i.u = icmp eq ptr %i.t, @monitor_data_type
  br i1 %i.u, label %monitor_ptr.exit, label %.preheader.i.i, !llvm.loop !28

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %i.b, ptr noundef nonnull @monitor_data_type) #5
  %.pre = load i64, ptr %i.a, align 8, !tbaa !37
  br label %monitor_ptr.exit

monitor_ptr.exit:                                 ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %i.w = phi i64 [ %.pre, %.critedge.i.i ], [ %i.b, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.b, %bb.d ]
  %.1.i.i = phi ptr [ %i.v, %.critedge.i.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %i.y = tail call i64 @rb_fiber_current() #5     ; 4 uses
  store i64 %i.y, ptr %i.x, align 8, !tbaa !10
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = and i64 %i.y, 7
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = or i1 %i.z, %i.ab
  br i1 %i.ac, label %rb_obj_write.exit, label %bb.e

bb.e:                                             ; preds = %monitor_ptr.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.w, i64 noundef %i.y) #5
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %monitor_ptr.exit, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !41
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %rb_num2long_inline.exit, label %bb.f

bb.f:                                             ; preds = %rb_obj_write.exit
  %i.ag = tail call i64 @rb_num2long(i64 noundef 0) #5
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %rb_obj_write.exit, %bb.f
  %.0.i = phi i64 [ %i.ag, %bb.f ], [ 0, %rb_obj_write.exit ]
  store i64 %.0.i, ptr %.1.i.i, align 8, !tbaa !17
  ret i64 4
}

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #1

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #1

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !11, i64 24}
!13 = !{!"RTypedData", !14, i64 0, !11, i64 16, !11, i64 24, !15, i64 32}
!14 = !{!"RBasic", !11, i64 0, !11, i64 8}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!13, !15, i64 32}
!17 = !{!18, !11, i64 0}
!18 = !{!"rb_monitor", !11, i64 0, !11, i64 8, !11, i64 16}
!19 = !{!"branch_weights", i32 1073205, i32 2146410443}
!20 = !{!14, !11, i64 0}
!21 = !{!"branch_weights", i32 -100663296, i32 2097152}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!24, !27, i64 48}
!24 = !{!"rb_data_type_struct", !25, i64 0, !26, i64 8, !27, i64 48, !15, i64 56, !11, i64 64}
!25 = !{!"p1 omnipotent char", !15, i64 0}
!26 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !8, i64 32}
!27 = !{!"p1 _ZTS19rb_data_type_struct", !15, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!18, !11, i64 8}
!31 = !{!18, !11, i64 16}
!32 = !{!33, !11, i64 0}
!33 = !{!"monitor_args", !11, i64 0, !34, i64 8, !11, i64 16}
!34 = !{!"p1 _ZTS10rb_monitor", !15, i64 0}
!35 = !{!33, !34, i64 8}
!36 = !{!33, !11, i64 16}
!37 = !{!38, !11, i64 0}
!38 = !{!"wait_for_cond_data", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!39 = !{!38, !11, i64 8}
!40 = !{!38, !11, i64 16}
!41 = !{!38, !11, i64 24}
!42 = distinct !{!42, !29}
end_hunk_0
