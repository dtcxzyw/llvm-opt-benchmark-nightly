inline.NumInlined: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"avg: %f\0Astd dev: %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\09length %d appeared %d times\0A\00", align 1
@str = private unnamed_addr constant [11 x i8] c"Histogram:\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @HistogramElement_new(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %0, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef zeroext i1 @HistogramElement_updateList(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.02235 = load ptr, ptr %0, align 8, !tbaa !14  ; 4 uses
  %.not.not36 = icmp eq ptr %.02235, null
  br i1 %.not.not36, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %2 = load i32, ptr %.02235, align 8, !tbaa !8   ; 2 uses
  %3 = icmp slt i32 %2, %1
  br i1 %3, label %.lr.ph.a, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.a
  %4 = load i32, ptr %.022, align 8, !tbaa !8     ; 2 uses
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %.lr.ph.a, label %bb.b, !llvm.loop !15

.lr.ph.a:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02238 = phi ptr [ %.022, %.lr.ph ], [ %.02235, %.lr.ph.preheader ] ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %.02238, i64 8
  %.022 = load ptr, ptr %6, align 8, !tbaa !14    ; 4 uses
  %.not.not = icmp eq ptr %.022, null
  br i1 %.not.not, label %bb.g, label %.lr.ph, !llvm.loop !15

bb.b:                                             ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.02238, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.preheader
  %.02238.lcssa = phi ptr [ %.02235, %.lr.ph.preheader ], [ %.022, %bb.b ] ; 2 uses
  %.02337.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %i.a, %bb.b ]
  %.lcssa = phi i32 [ %2, %.lr.ph.preheader ], [ %4, %bb.b ]
  %i.b = icmp eq i32 %.lcssa, %1
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.02238.lcssa, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !12
  br label %HistogramElement_new.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %HistogramElement_new.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %1, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 1, ptr %i.g, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.02238.lcssa, ptr %i.h, align 8, !tbaa !13
  store ptr %i.f, ptr %.02337.lcssa, align 8, !tbaa !14
  br label %HistogramElement_new.exit.thread

bb.g:                                             ; preds = %.lr.ph.a
  %i.i = getelementptr inbounds nuw i8, ptr %.02238, i64 8
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.a
  %.023.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %bb.g ] ; 2 uses
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %.not.i29 = icmp eq ptr %i.j, null
  br i1 %.not.i29, label %HistogramElement_new.exit30.thread, label %HistogramElement_new.exit30

HistogramElement_new.exit30.thread:               ; preds = %.critedge
  store ptr null, ptr %.023.lcssa, align 8, !tbaa !14
  br label %HistogramElement_new.exit.thread

HistogramElement_new.exit30:                      ; preds = %.critedge
  store i32 %1, ptr %i.j, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 1, ptr %i.k, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !13
  store ptr %i.j, ptr %.023.lcssa, align 8, !tbaa !14
  br label %HistogramElement_new.exit.thread

HistogramElement_new.exit.thread:                 ; preds = %bb.e, %bb.f, %bb.d, %HistogramElement_new.exit30, %HistogramElement_new.exit30.thread
  %.024 = phi i1 [ false, %HistogramElement_new.exit30.thread ], [ true, %bb.f ], [ true, %HistogramElement_new.exit30 ], [ true, %bb.d ], [ false, %bb.e ]
  ret i1 %.024
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @Stats_new() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #14 ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @IntVector_new(i32 noundef 16) #15 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i32 2147483647, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8, !tbaa !24
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @IntVector_new(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @Stats_delete(ptr noundef captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not5 = icmp eq ptr %i.a, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @free(ptr noundef nonnull %0) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Stats_logPath(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 8, !tbaa !25     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22
  %i.g = icmp slt i32 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.e, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !23
  %i.j = icmp sgt i32 %i.d, %i.i
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.d, ptr %i.h, align 4, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = tail call zeroext i1 @IntVector_insertEnd(ptr noundef nonnull %i.a, i32 noundef %i.d) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.g
  %.0 = phi i1 [ %i.k, %bb.g ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare zeroext i1 @IntVector_insertEnd(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @Stats_calculate(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %._crit_edge52.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
  %.not40 = icmp eq ptr %i.a, null
  br i1 %.not40, label %._crit_edge52.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !23
  %i.d = add nsw i32 %i.c, 1
  %i.e = sext i32 %i.d to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 4) #16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %i.g, align 8, !tbaa !24
  %.not41 = icmp eq ptr %i.f, null
  br i1 %.not41, label %._crit_edge52.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.h = load i32, ptr %i.a, align 8, !tbaa !29   ; 5 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge52.thread

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 3 uses
  %i.l = zext nneg i32 %i.h to i64                ; 5 uses
  %i.m = add nsw i64 %i.l, -1                     ; 2 uses
  %xtraiter = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.l, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 3 uses
  %.03544 = phi double [ undef, %.lr.ph.new ], [ %.136.1, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4    ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = uitofp nneg i32 %i.p to double
  %i.s = fadd double %.03544, %i.r
  %i.t = zext nneg i32 %i.p to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.136 = phi double [ %i.s, %bb.e ], [ %.03544, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4    ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = uitofp nneg i32 %i.z to double
  %i.ac = fadd double %.136, %i.ab
  %i.ad = zext nneg i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !4
end_hunk_0
