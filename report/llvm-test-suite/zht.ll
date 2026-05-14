inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.int_state_s = type { ptr, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.gs_point_s = type { float, float }

@gs_screen_enum_sizeof = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"setscreen\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@esp = external local_unnamed_addr global ptr, align 8
@estop = external local_unnamed_addr global ptr, align 8
@osp = external local_unnamed_addr global ptr, align 8
@istate = external local_unnamed_addr global %struct.int_state_s, align 8
@ostop = external local_unnamed_addr global ptr, align 8
@zht_op_init.my_defs = internal global [2 x %struct.op_def] [%struct.op_def { ptr @.str.1, ptr @zsetscreen }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"3setscreen\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2) i32 @zsetscreen(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.gs_point_s, align 4         ; 5 uses
  %i.a = alloca [2 x float], align 4              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 4 uses
  %i.c = call i32 @num_params(ptr noundef nonnull %i.b, i32 noundef 2, ptr noundef nonnull %i.a) #3 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  %i.g = lshr i16 %i.f, 2
  %i.h = and i16 %i.g, 63
  switch i16 %i.h, label %bb.n [
    i16 0, label %bb.c
    i16 10, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.i = and i16 %i.f, 3
  %.not = icmp eq i16 %i.i, 3
  br i1 %.not, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr @gs_screen_enum_sizeof, align 4, !tbaa !4
  %i.k = call ptr @alloc(i32 noundef 1, i32 noundef %i.j, ptr noundef nonnull @.str) #3 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @igs, align 8, !tbaa !11
  %i.n = load float, ptr %i.a, align 4, !tbaa !14
  %i.o = fpext float %i.n to double
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !14
  %i.r = fpext float %i.q to double
  %i.s = call i32 @gs_screen_init(ptr noundef nonnull %i.k, ptr noundef %i.m, double noundef %i.o, double noundef %i.r) #3 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr @gs_screen_enum_sizeof, align 4, !tbaa !4
  call void @alloc_free(ptr noundef nonnull %i.k, i32 noundef 1, i32 noundef %i.u, ptr noundef nonnull @.str) #3
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.v = load ptr, ptr @esp, align 8, !tbaa !16   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 3 uses
  %i.x = load ptr, ptr @estop, align 8, !tbaa !16
  %i.y = icmp ugt ptr %i.w, %i.x
  br i1 %i.y, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i16 0, ptr %i.z, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i16 33, ptr %i.aa, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  store ptr %i.ab, ptr @esp, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !19
  store ptr %i.w, ptr @esp, align 8, !tbaa !16
  store ptr %i.k, ptr %i.w, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store i16 52, ptr %i.ac, align 8, !tbaa !8
  %i.ad = load i32, ptr @gs_screen_enum_sizeof, align 4, !tbaa !4
  %i.ae = trunc i32 %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 58
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !21
  %i.ag = load ptr, ptr @osp, align 8, !tbaa !16
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -48
  store ptr %i.ah, ptr @osp, align 8, !tbaa !16
  %i.ai = getelementptr inbounds i8, ptr %0, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  %i.aj = call i32 @gs_screen_currentpoint(ptr noundef nonnull %i.k, ptr noundef nonnull %1) #3, !inline_history !22 ; 3 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %screen_sample.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr @esp, align 8, !tbaa !16  ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @istate, i64 8), ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !19
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -48
  store ptr %i.an, ptr @esp, align 8, !tbaa !16
  br label %screen_sample.exit

bb.k:                                             ; preds = %bb.i
  store ptr %i.b, ptr @osp, align 8, !tbaa !16
  %i.ao = load ptr, ptr @ostop, align 8, !tbaa !16
  %i.ap = icmp ugt ptr %i.b, %i.ao
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.ai, ptr @osp, align 8, !tbaa !16
  br label %screen_sample.exit

bb.m:                                             ; preds = %bb.k
  %i.aq = load float, ptr %1, align 4, !tbaa !23
  %i.ar = getelementptr inbounds i8, ptr %0, i64 -32
  store float %i.aq, ptr %i.ar, align 8, !tbaa !18
  %i.as = getelementptr inbounds i8, ptr %0, i64 -24
  store i16 44, ptr %i.as, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !25
  store float %i.au, ptr %i.b, align 8, !tbaa !18
  %i.av = getelementptr inbounds i8, ptr %0, i64 -8
  store i16 44, ptr %i.av, align 8, !tbaa !8
  %i.aw = load ptr, ptr @esp, align 8, !tbaa !16  ; 5 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -16
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr @set_screen_continue, ptr %i.ay, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i16 37, ptr %i.az, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 26
  store i16 0, ptr %i.ba, align 2, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  store ptr %i.bb, ptr @esp, align 8, !tbaa !16
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.bb, align 8
  br label %screen_sample.exit

screen_sample.exit:                               ; preds = %bb.h, %bb.j, %bb.l, %bb.m
  %.0.i = phi i32 [ 1, %bb.m ], [ 1, %bb.j ], [ -16, %bb.l ], [ %i.aj, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.d, %bb.c, %bb.b, %bb.a, %screen_sample.exit, %bb.f
  %.0 = phi i32 [ %.0.i, %screen_sample.exit ], [ %i.c, %bb.a ], [ -20, %bb.b ], [ -7, %bb.c ], [ %i.s, %bb.f ], [ -25, %bb.d ], [ -5, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @alloc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_screen_init(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @alloc_free(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2) i32 @screen_sample(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.gs_point_s, align 4         ; 5 uses
  %i.a = load ptr, ptr @esp, align 8, !tbaa !16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  %i.c = call i32 @gs_screen_currentpoint(ptr noundef %i.b, ptr noundef nonnull %1) #3 ; 3 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @esp, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @istate, i64 8), ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !19
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -48
  store ptr %i.g, ptr @esp, align 8, !tbaa !16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.h, ptr @osp, align 8, !tbaa !16
  %i.i = load ptr, ptr @ostop, align 8, !tbaa !16
  %i.j = icmp ugt ptr %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr @osp, align 8, !tbaa !16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = load float, ptr %1, align 4, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.k, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 44, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !25
  store float %i.o, ptr %i.h, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 44, ptr %i.p, align 8, !tbaa !8
  %i.q = load ptr, ptr @esp, align 8, !tbaa !16   ; 5 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr @set_screen_continue, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i16 37, ptr %i.t, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 26
  store i16 0, ptr %i.u, align 2, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr %i.v, ptr @esp, align 8, !tbaa !16
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.v, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 1, %bb.f ], [ 1, %bb.c ], [ -16, %bb.e ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @gs_screen_currentpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2) i32 @set_screen_continue(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.gs_point_s, align 4         ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = call i32 @num_params(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #3 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @esp, align 8, !tbaa !16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = load float, ptr %i.a, align 4, !tbaa !14
  %i.g = fpext float %i.f to double
  %i.h = call i32 @gs_screen_next(ptr noundef %i.e, double noundef %i.g) #3 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @osp, align 8, !tbaa !16
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16
  store ptr %i.k, ptr @osp, align 8, !tbaa !16
  %i.l = getelementptr inbounds i8, ptr %0, i64 -16
  %i.m = load ptr, ptr @esp, align 8, !tbaa !16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  %i.o = call i32 @gs_screen_currentpoint(ptr noundef %i.n, ptr noundef nonnull %1) #3, !inline_history !22 ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %screen_sample.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @esp, align 8, !tbaa !16   ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @istate, i64 8), ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !19
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -48
  store ptr %i.s, ptr @esp, align 8, !tbaa !16
  br label %screen_sample.exit

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr @osp, align 8, !tbaa !16
  %i.u = load ptr, ptr @ostop, align 8, !tbaa !16
  %i.v = icmp ugt ptr %i.t, %i.u
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.l, ptr @osp, align 8, !tbaa !16
  br label %screen_sample.exit

bb.h:                                             ; preds = %bb.f
  %i.w = load float, ptr %1, align 4, !tbaa !23
  store float %i.w, ptr %0, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 44, ptr %i.x, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !25
  store float %i.z, ptr %i.t, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 44, ptr %i.aa, align 8, !tbaa !8
  %i.ab = load ptr, ptr @esp, align 8, !tbaa !16  ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr @set_screen_continue, ptr %i.ad, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i16 37, ptr %i.ae, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 26
  store i16 0, ptr %i.af, align 2, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  store ptr %i.ag, ptr @esp, align 8, !tbaa !16
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.ag, align 8
  br label %screen_sample.exit

screen_sample.exit:                               ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  %.0.i = phi i32 [ 1, %bb.h ], [ 1, %bb.e ], [ -16, %bb.g ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %screen_sample.exit
  %.0 = phi i32 [ %.0.i, %screen_sample.exit ], [ %i.b, %bb.a ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

declare i32 @gs_screen_next(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @zht_op_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @z_op_init(ptr noundef nonnull @zht_op_init.my_defs) #3 ; 0 uses
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
!8 = !{!9, !10, i64 8}
!9 = !{!"ref_s", !6, i64 0, !10, i64 8, !10, i64 10}
!10 = !{!"short", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS10gs_state_s", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS5ref_s", !13, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{i64 0, i64 8, !18, i64 8, i64 2, !20, i64 10, i64 2, !20}
!20 = !{!10, !10, i64 0}
!21 = !{!9, !10, i64 10}
!22 = !{ptr @screen_sample}
!23 = !{!24, !15, i64 0}
!24 = !{!"gs_point_s", !15, i64 0, !15, i64 4}
!25 = !{!24, !15, i64 4}
end_hunk_0
