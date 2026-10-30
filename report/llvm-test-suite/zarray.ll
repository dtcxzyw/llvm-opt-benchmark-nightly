Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/zarray?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"array\00", align 1
@ostop = external local_unnamed_addr global ptr, align 8
@osp = external local_unnamed_addr global ptr, align 8
@osbot = external local_unnamed_addr global ptr, align 8
@zarray_op_init.my_defs = internal global [4 x %struct.op_def] [%struct.op_def { ptr @.str.1, ptr @zaload }, %struct.op_def { ptr @.str.2, ptr @zarray }, %struct.op_def { ptr @.str.3, ptr @zastore }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"1aload\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"1array\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"1astore\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -25, 1) i32 @zarray(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !10
  %i.c = and i16 %i.b, 252
  %i.d = icmp eq i16 %i.c, 20
  br i1 %i.d, label %bb.b, label %make_array.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.f = icmp ugt i64 %i.e, 268435454
  br i1 %i.f, label %make_array.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %i.e to i32
  %i.h = tail call ptr @alloc(i32 noundef %i.g, i32 noundef 16, ptr noundef nonnull @.str) #4 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %make_array.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !11
  store i16 770, ptr %i.a, align 8, !tbaa !10
  %i.j = trunc i64 %i.e to i16                    ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.j, ptr %i.k, align 2, !tbaa !12
  %.not11 = icmp eq i16 %i.j, 0
  br i1 %.not11, label %make_array.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i16 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.013.prol = phi ptr [ %i.m, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.0712.prol = phi i16 [ %i.l, %.lr.ph.prol ], [ %i.j, %.lr.ph.preheader ]
  %prol.iter = phi i16 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.l = add i16 %.0712.prol, -1                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.013.prol, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.013.prol, i64 8
  store i16 32, ptr %i.n, align 8, !tbaa !10
  %prol.iter.next = add i16 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i16 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !17

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.013.unr = phi ptr [ %i.h, %.lr.ph.preheader ], [ %i.m, %.lr.ph.prol ]
  %.0712.unr = phi i16 [ %i.j, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %i.o = icmp ult i16 %i.j, 8
  br i1 %i.o, label %make_array.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi ptr [ %i.x, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0712 = phi i16 [ %i.w, %.lr.ph ], [ %.0712.unr, %.lr.ph.prol.loopexit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013, i64 8
  store i16 32, ptr %i.p, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %.013, i64 24
  store i16 32, ptr %i.q, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %.013, i64 40
  store i16 32, ptr %i.r, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %.013, i64 56
  store i16 32, ptr %i.s, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %.013, i64 72
  store i16 32, ptr %i.t, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %.013, i64 88
  store i16 32, ptr %i.u, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %.013, i64 104
  store i16 32, ptr %i.v, align 8, !tbaa !10
  %i.w = add i16 %.0712, -8                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.013, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %.013, i64 120
  store i16 32, ptr %i.y, align 8, !tbaa !10
  %.not.7 = icmp eq i16 %i.w, 0
  br i1 %.not.7, label %make_array.exit.thread, label %.lr.ph, !llvm.loop !18

make_array.exit.thread:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d, %bb.c, %bb.b, %bb.a
  %.08 = phi i32 [ -20, %bb.a ], [ -25, %bb.c ], [ -15, %bb.b ], [ 0, %bb.d ], [ 0, %.lr.ph ], [ 0, %.lr.ph.prol.loopexit ]
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -25, 1) i32 @make_array(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !10
  %i.c = and i16 %i.b, 252
  %i.d = icmp eq i16 %i.c, 20
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.f = icmp ugt i64 %i.e, 268435454
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %i.e to i32
  %i.h = tail call ptr @alloc(i32 noundef %i.g, i32 noundef 16, ptr noundef %3) #4 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !11
  %i.j = shl i32 %1, 2
  %i.k = add nsw i32 %i.j, %2
  %i.l = trunc i32 %i.k to i16
  store i16 %i.l, ptr %i.a, align 8, !tbaa !10
  %i.m = trunc i64 %i.e to i16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.m, ptr %i.n, align 2, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -20, %bb.a ], [ -15, %bb.b ], [ 0, %bb.d ], [ -25, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zaload(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.c = lshr i16 %i.b, 2
  %i.d = and i16 %i.c, 63
  switch i16 %i.d, label %bb.g [
    i16 0, label %bb.b
    i16 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = and i16 %i.b, 512
  %.not.not = icmp eq i16 %i.e, 0
  br i1 %.not.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !11 ; 2 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.sroa.54.0.copyload = load i16, ptr %.sroa.54.0..sroa_idx, align 2, !tbaa !13 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4
  %i.f = zext i16 %.sroa.54.0.copyload to i64     ; 3 uses
  %i.g = load ptr, ptr @ostop, align 8, !tbaa !16
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  %i.l = icmp slt i64 %i.k, %i.f
  br i1 %i.l, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.f, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr align 1 %.sroa.0.0.copyload, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.f ; 6 uses
  store ptr %i.n, ptr @osp, align 8, !tbaa !16
  %i.o = load ptr, ptr @ostop, align 8, !tbaa !16
  %i.p = icmp ugt ptr %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr @osp, align 8, !tbaa !16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %.sroa.0.0.copyload, ptr %i.n, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i16 %i.b, ptr %.sroa.5.0..sroa_idx2, align 8, !tbaa !13
  %.sroa.54.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  store i16 %.sroa.54.0.copyload, ptr %.sroa.54.0..sroa_idx5, align 2, !tbaa !13
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx10, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.f ], [ -20, %bb.a ], [ -7, %bb.b ], [ -16, %bb.e ], [ -15, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zastore(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !10
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = and i32 %i.c, 252
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 256
  %.not.not = icmp eq i32 %i.f, 0
  br i1 %.not.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i16, ptr %i.g, align 2, !tbaa !12
  %i.i = zext i16 %i.h to i64                     ; 3 uses
  %i.j = load ptr, ptr @osbot, align 8, !tbaa !16
  %i.k = ptrtoint ptr %0 to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4
  %i.o = icmp ult i64 %i.n, %i.i
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !11
  %i.q = sub nsw i64 0, %i.i                      ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = tail call i32 (ptr, ptr, i64, ...) @refcpy(ptr noundef %i.p, ptr noundef nonnull %i.r, i64 noundef %i.i) #4 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !21
  %i.t = load ptr, ptr @osp, align 8, !tbaa !16
  %i.u = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.q
  store ptr %i.u, ptr @osp, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -20, %bb.a ], [ -7, %bb.b ], [ 0, %bb.d ], [ -17, %bb.c ]
  ret i32 %.0
}

declare i32 @refcpy(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @zarray_op_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @z_op_init(ptr noundef nonnull @zarray_op_init.my_defs) #4 ; 0 uses
  ret void
}

declare i32 @z_op_init(...) local_unnamed_addr #3

declare ptr @alloc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"ref_s", !5, i64 0, !8, i64 8, !8, i64 10}
!10 = !{!9, !8, i64 8}
!11 = !{!5, !5, i64 0}
!12 = !{!9, !8, i64 10}
!13 = !{!8, !8, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 _ZTS5ref_s", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = distinct !{!17, !19}
!18 = distinct !{!18, !20}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{i64 0, i64 8, !11, i64 8, i64 2, !13, i64 10, i64 2, !13}
end_hunk_0
