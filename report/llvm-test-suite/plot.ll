begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@num_tsteps = common dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@num_refine = common dso_local local_unnamed_addr global i32 0, align 4
@num_blocks = common dso_local local_unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1
@npx = common dso_local local_unnamed_addr global i32 0, align 4
@init_block_x = common dso_local local_unnamed_addr global i32 0, align 4
@npy = common dso_local local_unnamed_addr global i32 0, align 4
@init_block_y = common dso_local local_unnamed_addr global i32 0, align 4
@npz = common dso_local local_unnamed_addr global i32 0, align 4
@init_block_z = common dso_local local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@num_active = common dso_local local_unnamed_addr global i32 0, align 4
@max_active_block = common dso_local local_unnamed_addr global i32 0, align 4
@blocks = common dso_local local_unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1
@parents = common dso_local local_unnamed_addr global ptr null, align 8
@sorted_list = common dso_local local_unnamed_addr global ptr null, align 8
@sorted_index = common dso_local local_unnamed_addr global ptr null, align 8
@my_pe = common dso_local local_unnamed_addr global i32 0, align 4
@num_pes = common dso_local local_unnamed_addr global i32 0, align 4
@max_num_blocks = common dso_local local_unnamed_addr global i32 0, align 4
@target_active = common dso_local local_unnamed_addr global i32 0, align 4
@target_max = common dso_local local_unnamed_addr global i32 0, align 4
@target_min = common dso_local local_unnamed_addr global i32 0, align 4
@uniform_refine = common dso_local local_unnamed_addr global i32 0, align 4
@x_block_size = common dso_local local_unnamed_addr global i32 0, align 4
@y_block_size = common dso_local local_unnamed_addr global i32 0, align 4
@z_block_size = common dso_local local_unnamed_addr global i32 0, align 4
@num_vars = common dso_local local_unnamed_addr global i32 0, align 4
@comm_vars = common dso_local local_unnamed_addr global i32 0, align 4
@reorder = common dso_local local_unnamed_addr global i32 0, align 4
@inbalance = common dso_local local_unnamed_addr global i32 0, align 4
@refine_freq = common dso_local local_unnamed_addr global i32 0, align 4
@report_diffusion = common dso_local local_unnamed_addr global i32 0, align 4
@checksum_freq = common dso_local local_unnamed_addr global i32 0, align 4
@stages_per_ts = common dso_local local_unnamed_addr global i32 0, align 4
@error_tol = common dso_local local_unnamed_addr global i32 0, align 4
@stencil = common dso_local local_unnamed_addr global i32 0, align 4
@report_perf = common dso_local local_unnamed_addr global i32 0, align 4
@plot_freq = common dso_local local_unnamed_addr global i32 0, align 4
@lb_opt = common dso_local local_unnamed_addr global i32 0, align 4
@block_change = common dso_local local_unnamed_addr global i32 0, align 4
@code = common dso_local local_unnamed_addr global i32 0, align 4
@permute = common dso_local local_unnamed_addr global i32 0, align 4
@nonblocking = common dso_local local_unnamed_addr global i32 0, align 4
@refine_ghost = common dso_local local_unnamed_addr global i32 0, align 4
@max_num_parents = common dso_local local_unnamed_addr global i32 0, align 4
@num_parents = common dso_local local_unnamed_addr global i32 0, align 4
@max_active_parent = common dso_local local_unnamed_addr global i32 0, align 4
@cur_max_level = common dso_local local_unnamed_addr global i32 0, align 4
@block_start = common dso_local local_unnamed_addr global ptr null, align 8
@global_active = common dso_local local_unnamed_addr global i32 0, align 4
@x_block_half = common dso_local local_unnamed_addr global i32 0, align 4
@y_block_half = common dso_local local_unnamed_addr global i32 0, align 4
@z_block_half = common dso_local local_unnamed_addr global i32 0, align 4
@tol = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@grid_sum = common dso_local local_unnamed_addr global ptr null, align 8
@p8 = common dso_local local_unnamed_addr global ptr null, align 8
@p2 = common dso_local local_unnamed_addr global ptr null, align 8
@mesh_size = common dso_local local_unnamed_addr global [3 x i32] zeroinitializer, align 4
@max_mesh_size = common dso_local local_unnamed_addr global i32 0, align 4
@from = common dso_local local_unnamed_addr global ptr null, align 8
@to = common dso_local local_unnamed_addr global ptr null, align 8
@msg_len = common dso_local local_unnamed_addr global [3 x [4 x i32]] zeroinitializer, align 16
@local_max_b = common dso_local local_unnamed_addr global i32 0, align 4
@global_max_b = common dso_local local_unnamed_addr global i32 0, align 4
@num_objects = common dso_local local_unnamed_addr global i32 0, align 4
@objects = common dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local void @plot(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store <4 x i8> <i8 112, i8 108, i8 111, i8 116>, ptr %i.a, align 16, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 46, ptr %i.b, align 4, !tbaa !8
  %i.c = load i32, ptr @num_tsteps, align 4, !tbaa !4 ; 2 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.028.lcssa = phi i32 [ 0, %bb.a ], [ %i.g, %.lr.ph ] ; 3 uses
  %i.e = add nuw nsw i32 %.028.lcssa, 5
  %i.f = add i32 %.028.lcssa, 1
  %wide.trip.count = zext i32 %i.f to i64
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02734 = phi i32 [ %i.h, %.lr.ph ], [ 1, %bb.a ]
  %.02833 = phi i32 [ %i.g, %.lr.ph ], [ 0, %bb.a ]
  %i.g = add nuw nsw i32 %.02833, 1               ; 2 uses
  %i.h = mul nuw nsw i32 %.02734, 10              ; 2 uses
  %i.i = icmp samesign ult i32 %i.h, %i.c
  br i1 %i.i, label %.lr.ph, label %.preheader, !llvm.loop !9

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.136 = phi i32 [ 1, %.preheader ], [ %i.o, %bb.b ] ; 2 uses
  %i.j = sdiv i32 %0, %.136
  %i.k = srem i32 %i.j, 10
  %i.l = trunc nsw i32 %i.k to i8
  %i.m = add nsw i8 %i.l, 48
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  %2 = sub i32 %i.e, %1
  %3 = zext nneg i32 %2 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  store i8 %i.m, ptr %i.n, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = mul nuw nsw i32 %.136, 10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !11

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i32 %.028.lcssa to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i8 0, ptr %i.r, align 1, !tbaa !8
  %i.s = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str) ; 4 uses
  %i.t = load i32, ptr @num_refine, align 4, !tbaa !4 ; 4 uses
  %.not3237 = icmp slt i32 %i.t, 0
  br i1 %.not3237, label %._crit_edge, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.c
  %i.u = load ptr, ptr @num_blocks, align 8, !tbaa !12 ; 2 uses
  %i.v = add nuw i32 %i.t, 1
  %wide.trip.count52 = zext i32 %i.v to i64       ; 3 uses
  %min.iters.check = icmp ult i32 %i.t, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph40
  %n.vec = and i64 %wide.trip.count52, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi63 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !4
  %wide.load64 = load <4 x i32>, ptr %i.x, align 4, !tbaa !4
  %i.y = add <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.z = add <4 x i32> %wide.load64, %vec.phi63   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.z, %i.y
  %i.ab = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count52
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph40, %middle.block
  %indvars.iv49.ph = phi i64 [ 0, %.lr.ph40 ], [ %n.vec, %middle.block ]
  %.039.ph = phi i32 [ 0, %.lr.ph40 ], [ %i.ab, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %scalar.ph ], [ %indvars.iv49.ph, %scalar.ph.preheader ] ; 2 uses
  %.039 = phi i32 [ %i.ae, %scalar.ph ], [ %.039.ph, %scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv49
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = add nsw i32 %i.ad, %.039                ; 2 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %._crit_edge, label %scalar.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %i.ab, %middle.block ], [ %i.ae, %scalar.ph ]
  %i.af = load i32, ptr @npx, align 4, !tbaa !4
  %i.ag = load i32, ptr @init_block_x, align 4, !tbaa !4
  %i.ah = mul nsw i32 %i.ag, %i.af
  %i.ai = load i32, ptr @npy, align 4, !tbaa !4
  %i.aj = load i32, ptr @init_block_y, align 4, !tbaa !4
  %i.ak = mul nsw i32 %i.aj, %i.ai
  %i.al = load i32, ptr @npz, align 4, !tbaa !4
  %i.am = load i32, ptr @init_block_z, align 4, !tbaa !4
  %i.an = mul nsw i32 %i.am, %i.al
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.1, i32 noundef %.0.lcssa, i32 noundef %i.t, i32 noundef %i.ah, i32 noundef %i.ak, i32 noundef %i.an) #4 ; 0 uses
  %i.ap = load i32, ptr @num_active, align 4, !tbaa !4
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.2, i32 noundef %i.ap) #4 ; 0 uses
  %i.ar = load i32, ptr @max_active_block, align 4, !tbaa !4 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph45.preheader, label %._crit_edge46

.lr.ph45.preheader:                               ; preds = %._crit_edge
  %.pre57 = load ptr, ptr @blocks, align 8, !tbaa !19
  br label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %bb.e
  %i.at = phi i32 [ %i.ar, %.lr.ph45.preheader ], [ %i.bh, %bb.e ]
  %i.au = phi ptr [ %.pre57, %.lr.ph45.preheader ], [ %i.bi, %bb.e ] ; 2 uses
  %indvars.iv54 = phi i64 [ 0, %.lr.ph45.preheader ], [ %indvars.iv.next55, %bb.e ] ; 2 uses
  %i.av = getelementptr inbounds nuw [192 x i8], ptr %i.au, i64 %indvars.iv54 ; 5 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !20
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph45
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 172
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 176
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 180
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.3, i32 noundef %i.az, i32 noundef %i.bb, i32 noundef %i.bd, i32 noundef %i.bf) #4 ; 0 uses
  %.pre = load ptr, ptr @blocks, align 8, !tbaa !19
  %.pre58 = load i32, ptr @max_active_block, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph45, %bb.d
  %i.bh = phi i32 [ %i.at, %.lr.ph45 ], [ %.pre58, %bb.d ] ; 2 uses
  %i.bi = phi ptr [ %i.au, %.lr.ph45 ], [ %.pre, %bb.d ]
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.bj = sext i32 %i.bh to i64
  %i.bk = icmp slt i64 %indvars.iv.next55, %i.bj
  br i1 %i.bk, label %.lr.ph45, label %._crit_edge46, !llvm.loop !27

._crit_edge46:                                    ; preds = %bb.e, %._crit_edge
  %i.bl = tail call i32 @fclose(ptr noundef %i.s) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 int", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = distinct !{!15, !10, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !10, !17, !16}
!19 = !{!14, !14, i64 0}
!20 = !{!21, !5, i64 0}
!21 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !6, i64 28, !6, i64 52, !6, i64 76, !6, i64 172, !22, i64 184}
!22 = !{!"p4 double", !23, i64 0}
!23 = !{!"any p4 pointer", !24, i64 0}
!24 = !{!"any p3 pointer", !25, i64 0}
!25 = !{!"any p2 pointer", !14, i64 0}
!26 = !{!21, !5, i64 4}
!27 = distinct !{!27, !10}
end_hunk_0
