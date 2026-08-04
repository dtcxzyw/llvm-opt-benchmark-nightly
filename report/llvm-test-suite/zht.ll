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
  %2 = alloca %struct.ref_s, align 8              ; 4 uses
  %i.a = alloca [2 x float], align 8              ; 4 uses
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
  %3 = load <2 x float>, ptr %i.a, align 8, !tbaa !14
  %4 = fpext <2 x float> %3 to <2 x double>       ; 2 uses
  %5 = extractelement <2 x double> %4, i64 0
  %6 = extractelement <2 x double> %4, i64 1
  %i.n = call i32 @gs_screen_init(ptr noundef nonnull %i.k, ptr noundef %i.m, double noundef %5, double noundef %6) #3 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr @gs_screen_enum_sizeof, align 4, !tbaa !4
  call void @alloc_free(ptr noundef nonnull %i.k, i32 noundef 1, i32 noundef %i.p, ptr noundef nonnull @.str) #3
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @esp, align 8, !tbaa !16   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  %i.s = load ptr, ptr @estop, align 8, !tbaa !16
  %i.t = icmp ugt ptr %i.r, %i.s
  br i1 %i.t, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i16 0, ptr %i.u, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i16 33, ptr %i.v, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr %i.w, ptr @esp, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !19
  store ptr %i.r, ptr @esp, align 8, !tbaa !16
  store ptr %i.k, ptr %i.r, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i16 52, ptr %i.x, align 8, !tbaa !8
  %i.y = load i32, ptr @gs_screen_enum_sizeof, align 4, !tbaa !4
  %i.z = trunc i32 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 58
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !21
  %i.ab = load ptr, ptr @osp, align 8, !tbaa !16
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -48
  store ptr %i.ac, ptr @osp, align 8, !tbaa !16
  %i.ad = getelementptr inbounds i8, ptr %0, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  %i.ae = call i32 @gs_screen_currentpoint(ptr noundef nonnull %i.k, ptr noundef nonnull %1) #3, !inline_history !22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %screen_sample.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr @esp, align 8, !tbaa !16  ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @istate, i64 8), ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !19
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -48
  store ptr %i.ai, ptr @esp, align 8, !tbaa !16
  br label %screen_sample.exit

bb.k:                                             ; preds = %bb.i
  store ptr %i.b, ptr @osp, align 8, !tbaa !16
  %i.aj = load ptr, ptr @ostop, align 8, !tbaa !16
  %i.ak = icmp ugt ptr %i.b, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.ad, ptr @osp, align 8, !tbaa !16
  br label %screen_sample.exit

bb.m:                                             ; preds = %bb.k
  %i.al = load float, ptr %1, align 4, !tbaa !23
  %i.am = getelementptr inbounds i8, ptr %0, i64 -32
  store float %i.al, ptr %i.am, align 8, !tbaa !18
  %i.an = getelementptr inbounds i8, ptr %0, i64 -24
  store i16 44, ptr %i.an, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !25
  store float %i.ap, ptr %i.b, align 8, !tbaa !18
  %i.aq = getelementptr inbounds i8, ptr %0, i64 -8
  store i16 44, ptr %i.aq, align 8, !tbaa !8
  %i.ar = load ptr, ptr @esp, align 8, !tbaa !16  ; 5 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr @set_screen_continue, ptr %i.at, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i16 37, ptr %i.au, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 26
  store i16 0, ptr %i.av, align 2, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  store ptr %i.aw, ptr @esp, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !19
  br label %screen_sample.exit

screen_sample.exit:                               ; preds = %bb.h, %bb.j, %bb.l, %bb.m
  %.0.i = phi i32 [ 1, %bb.m ], [ 1, %bb.j ], [ -16, %bb.l ], [ %i.ae, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.d, %bb.c, %bb.b, %bb.a, %screen_sample.exit, %bb.f
  %.0 = phi i32 [ %.0.i, %screen_sample.exit ], [ %i.c, %bb.a ], [ -20, %bb.b ], [ -7, %bb.c ], [ %i.n, %bb.f ], [ -25, %bb.d ], [ -5, %bb.g ]
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
  %2 = alloca %struct.ref_s, align 8              ; 4 uses
  %i.a = load ptr, ptr @esp, align 8, !tbaa !16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  %i.c = call i32 @gs_screen_currentpoint(ptr noundef %i.b, ptr noundef nonnull %1) #3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr @set_screen_continue, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i16 37, ptr %i.t, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 26
  store i16 0, ptr %i.u, align 2, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr %i.v, ptr @esp, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !19
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 1, %bb.f ], [ 1, %bb.c ], [ -16, %bb.e ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
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
  %2 = alloca %struct.ref_s, align 8              ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = call i32 @num_params(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #3 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @esp, align 8, !tbaa !16
end_hunk_0
