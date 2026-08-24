Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/initcache?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL11cache_alloc = internal unnamed_addr global i32 0, align 4
@_ZL11cache_count = internal unnamed_addr global i32 0, align 4
@_ZL14cache_paralist = internal unnamed_addr global ptr null, align 8
@_ZL9cache_key = internal unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_Z17pj_clone_paralistPK8ARG_list(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not16 = icmp eq ptr %0, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.019 = phi ptr [ %i.d, %bb.c ], [ null, %bb.a ] ; 2 uses
  %.01318 = phi ptr [ %.1, %bb.c ], [ null, %bb.a ]
  %.01417 = phi ptr [ %i.h, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01417, i64 9 ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #8
  %i.c = add i64 %i.b, 16
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #9 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !8
  store ptr null, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.g = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %i.a) #10 ; 0 uses
  %.not15 = icmp eq ptr %.019, null
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store ptr %i.d, ptr %.019, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi ptr [ %.01318, %bb.b ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.h = load ptr, ptr %.01417, align 8, !tbaa !9 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.013.lcssa = phi ptr [ null, %bb.a ], [ %.1, %bb.c ]
  ret ptr %.013.lcssa
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_Z18pj_clear_initcachev() local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @_ZL11cache_alloc, align 4, !tbaa !14
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z15pj_acquire_lockv()
  %i.c = load i32, ptr @_ZL11cache_count, align 4, !tbaa !14 ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph12, label %._crit_edge13

.lr.ph12:                                         ; preds = %bb.b, %._crit_edge
  %i.e = phi i32 [ %i.m, %._crit_edge ], [ %i.c, %bb.b ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr @_ZL14cache_paralist, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9    ; 2 uses
  %i.i = load ptr, ptr @_ZL9cache_key, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.k) #10
  %.not8 = icmp eq ptr %i.h, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph12, %.lr.ph
  %.09 = phi ptr [ %i.l, %.lr.ph ], [ %i.h, %.lr.ph12 ] ; 2 uses
  %i.l = load ptr, ptr %.09, align 8, !tbaa !9    ; 2 uses
  tail call void @free(ptr noundef nonnull %.09) #10
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !22

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr @_ZL11cache_count, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph12
  %i.m = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.e, %.lr.ph12 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph12, label %._crit_edge13, !llvm.loop !23

._crit_edge13:                                    ; preds = %._crit_edge, %bb.b
  %i.p = load ptr, ptr @_ZL9cache_key, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.p) #10
  %i.q = load ptr, ptr @_ZL14cache_paralist, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.q) #10
  store i32 0, ptr @_ZL11cache_count, align 4, !tbaa !14
  store i32 0, ptr @_ZL11cache_alloc, align 4, !tbaa !14
  store ptr null, ptr @_ZL9cache_key, align 8, !tbaa !18
  store ptr null, ptr @_ZL14cache_paralist, align 8, !tbaa !15
  tail call void @_Z15pj_release_lockv()
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge13, %bb.a
  ret void
}

declare void @_Z15pj_acquire_lockv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare void @_Z15pj_release_lockv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z19pj_search_initcachePKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  tail call void @_Z15pj_acquire_lockv()
  %i.a = load i32, ptr @_ZL11cache_count, align 4 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @_ZL9cache_key, align 8, !tbaa !18
  %i.d = load ptr, ptr @_ZL14cache_paralist, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_Z17pj_clone_paralistPK8ARG_list.exit
  %1 = phi i32 [ %i.a, %.lr.ph ], [ %2, %_Z17pj_clone_paralistPK8ARG_list.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z17pj_clone_paralistPK8ARG_list.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.f) #8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_Z17pj_clone_paralistPK8ARG_list.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9    ; 2 uses
  %.not16.i = icmp eq ptr %i.j, null
  br i1 %.not16.i, label %_Z17pj_clone_paralistPK8ARG_list.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %.019.i = phi ptr [ %i.n, %bb.e ], [ null, %bb.c ] ; 2 uses
  %.01318.i = phi ptr [ %.1.i, %bb.e ], [ null, %bb.c ]
  %.01417.i = phi ptr [ %i.r, %bb.e ], [ %i.j, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01417.i, i64 9 ; 2 uses
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #8
  %i.m = add i64 %i.l, 16
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #9 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 0, ptr %i.o, align 8, !tbaa !8
  store ptr null, ptr %i.n, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.q = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) %i.k) #10 ; 0 uses
  %.not15.i = icmp eq ptr %.019.i, null
  br i1 %.not15.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  store ptr %i.n, ptr %.019.i, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.1.i = phi ptr [ %.01318.i, %bb.d ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.r = load ptr, ptr %.01417.i, align 8, !tbaa !9 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_Z17pj_clone_paralistPK8ARG_list.exit.loopexit, label %.lr.ph.i, !llvm.loop !12

_Z17pj_clone_paralistPK8ARG_list.exit.loopexit:   ; preds = %bb.e
  %.pre = load i32, ptr @_ZL11cache_count, align 4
  br label %_Z17pj_clone_paralistPK8ARG_list.exit

_Z17pj_clone_paralistPK8ARG_list.exit:            ; preds = %_Z17pj_clone_paralistPK8ARG_list.exit.loopexit, %bb.c, %bb.b
  %2 = phi i32 [ %1, %bb.b ], [ %1, %bb.c ], [ %.pre, %_Z17pj_clone_paralistPK8ARG_list.exit.loopexit ] ; 2 uses
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %.1.i, %_Z17pj_clone_paralistPK8ARG_list.exit.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = icmp eq ptr %.1, null
  %3 = sext i32 %2 to i64
  %4 = icmp slt i64 %indvars.iv.next, %3
  %i.t = select i1 %i.s, i1 %4, i1 false
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %_Z17pj_clone_paralistPK8ARG_list.exit, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.1, %_Z17pj_clone_paralistPK8ARG_list.exit ]
  tail call void @_Z15pj_release_lockv()
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_Z19pj_insert_initcachePKcPK8ARG_list(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  tail call void @_Z15pj_acquire_lockv()
  %i.a = load i32, ptr @_ZL11cache_count, align 4, !tbaa !14 ; 2 uses
  %i.b = load i32, ptr @_ZL11cache_alloc, align 4, !tbaa !14
  %i.c = icmp eq i32 %i.a, %i.b
  %.pre = load ptr, ptr @_ZL9cache_key, align 8, !tbaa !18 ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = shl nsw i32 %i.a, 1
  %i.e = add nsw i32 %i.d, 15                     ; 2 uses
  store i32 %i.e, ptr @_ZL11cache_alloc, align 4, !tbaa !14
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #9 ; 3 uses
  %i.i = icmp ne ptr %.pre, null
  %2 = load i32, ptr @_ZL11cache_count, align 4   ; 2 uses
  %i.j = icmp ne i32 %2, 0
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sext i32 %2 to i64
  %i.l = shl nsw i64 %i.k, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %.pre, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @free(ptr noundef %.pre) #10
  store ptr %i.h, ptr @_ZL9cache_key, align 8, !tbaa !18
  %3 = load i32, ptr @_ZL11cache_alloc, align 4, !tbaa !14
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %5) #9 ; 2 uses
  %i.n = load ptr, ptr @_ZL14cache_paralist, align 8, !tbaa !15 ; 3 uses
  %6 = icmp ne ptr %i.n, null
  %7 = load i32, ptr @_ZL11cache_count, align 4   ; 2 uses
  %i.o = icmp ne i32 %7, 0
  %or.cond3 = select i1 %6, i1 %i.o, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = sext i32 %7 to i64
  %i.q = shl nsw i64 %i.p, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.m, ptr nonnull align 8 %i.n, i64 %i.q, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @free(ptr noundef %i.n) #10
  store ptr %i.m, ptr @_ZL14cache_paralist, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.r = phi ptr [ %i.h, %bb.f ], [ %.pre, %bb.a ]
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8
  %i.t = add i64 %i.s, 1
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #9 ; 2 uses
  %8 = load i32, ptr @_ZL11cache_count, align 4, !tbaa !14 ; 2 uses
  %i.v = sext i32 %8 to i64                       ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.v
  store ptr %i.u, ptr %i.w, align 8, !tbaa !20
  %i.x = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) %0) #10 ; 0 uses
  %.not16.i = icmp eq ptr %1, null
  br i1 %.not16.i, label %_Z17pj_clone_paralistPK8ARG_list.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.019.i = phi ptr [ %i.ab, %bb.i ], [ null, %bb.g ] ; 2 uses
  %.01318.i = phi ptr [ %.1.i, %bb.i ], [ null, %bb.g ]
  %.01417.i = phi ptr [ %i.af, %bb.i ], [ %1, %bb.g ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01417.i, i64 9 ; 2 uses
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #8
  %i.aa = add i64 %i.z, 16
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #9 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 0, ptr %i.ac, align 8, !tbaa !8
  store ptr null, ptr %i.ab, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 9
  %i.ae = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(1) %i.y) #10 ; 0 uses
  %.not15.i = icmp eq ptr %.019.i, null
  br i1 %.not15.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  store ptr %i.ab, ptr %.019.i, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %.1.i = phi ptr [ %.01318.i, %bb.h ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %i.af = load ptr, ptr %.01417.i, align 8, !tbaa !9 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_Z17pj_clone_paralistPK8ARG_list.exit.loopexit, label %.lr.ph.i, !llvm.loop !12

_Z17pj_clone_paralistPK8ARG_list.exit.loopexit:   ; preds = %bb.i
  %.pre14 = load i32, ptr @_ZL11cache_count, align 4, !tbaa !14 ; 2 uses
  %.pre15 = sext i32 %.pre14 to i64
  br label %_Z17pj_clone_paralistPK8ARG_list.exit

_Z17pj_clone_paralistPK8ARG_list.exit:            ; preds = %_Z17pj_clone_paralistPK8ARG_list.exit.loopexit, %bb.g
  %.pre-phi = phi i64 [ %.pre15, %_Z17pj_clone_paralistPK8ARG_list.exit.loopexit ], [ %i.v, %bb.g ]
  %9 = phi i32 [ %.pre14, %_Z17pj_clone_paralistPK8ARG_list.exit.loopexit ], [ %8, %bb.g ]
  %.013.lcssa.i = phi ptr [ %.1.i, %_Z17pj_clone_paralistPK8ARG_list.exit.loopexit ], [ null, %bb.g ]
  %i.ag = load ptr, ptr @_ZL14cache_paralist, align 8, !tbaa !15
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %.pre-phi
  store ptr %.013.lcssa.i, ptr %i.ah, align 8, !tbaa !9
  %i.ai = add nsw i32 %9, 1
  store i32 %i.ai, ptr @_ZL11cache_count, align 4, !tbaa !14
  tail call void @_Z15pj_release_lockv()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

attributes #0 = { mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS8ARG_list", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!5, !5, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p2 _ZTS8ARG_list", !17, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p2 omnipotent char", !17, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 omnipotent char", !11, i64 0}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
end_hunk_0
