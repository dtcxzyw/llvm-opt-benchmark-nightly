inline.NumInlined: 15
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }

@ZSTD_defaultCMem = internal constant %struct.ZSTD_customMem zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ZSTD_createThreadPool(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @POOL_create_advanced(i64 noundef %0, i64 noundef 0, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @POOL_create(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @POOL_create_advanced(i64 noundef %0, i64 noundef %1, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @POOL_create_advanced(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val57 = load ptr, ptr %2, align 8, !tbaa !9   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val58 = load ptr, ptr %i.a, align 8           ; 3 uses
  %.not.i = icmp eq ptr %.val57, null
  br i1 %.not.i, label %ZSTD_customCalloc.exit, label %bb.c

ZSTD_customCalloc.exit:                           ; preds = %bb.b
  %i.b = tail call noalias dereferenceable_or_null(240) ptr @calloc(i64 noundef 1, i64 noundef 240) #8 ; 3 uses
  %.not48 = icmp eq ptr %i.b, null
  br i1 %.not48, label %bb.m, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr %.val57(ptr noundef %.val58, i64 noundef 240) #9, !inline_history !12 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(240) %i.c, i8 0, i64 240, i1 false)
  %i.d = add i64 %1, 1                            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 %i.d, ptr %i.e, align 8, !tbaa !13
  %i.f = shl i64 %i.d, 4                          ; 2 uses
  %i.g = tail call ptr %.val57(ptr noundef %.val58, i64 noundef %i.f) #9, !inline_history !12 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.g, i8 0, i64 %i.f, i1 false)
  br label %ZSTD_customCalloc.exit61

bb.d:                                             ; preds = %ZSTD_customCalloc.exit
  %i.h = add i64 %1, 1                            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.h, ptr %i.i, align 8, !tbaa !13
  %i.j = shl i64 %i.h, 4
  %i.k = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.j) #8
  br label %ZSTD_customCalloc.exit61

ZSTD_customCalloc.exit61:                         ; preds = %bb.c, %bb.d
  %.0.i6769 = phi ptr [ %i.c, %bb.c ], [ %i.b, %bb.d ] ; 17 uses
  %.0.i60 = phi ptr [ %i.g, %bb.c ], [ %i.k, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i6769, i64 48 ; 2 uses
  store ptr %.0.i60, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i6769, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i6769, i64 80
  store i64 0, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i6769, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i6769, i64 96
  %i.q = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.p, ptr noundef null) #9
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i6769, i64 136
  %i.s = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.r, ptr noundef null) #9
  %i.t = or i32 %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i6769, i64 184
  %i.v = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.u, ptr noundef null) #9
  %i.w = or i32 %i.t, %i.v
  %.not49 = icmp eq i32 %i.w, 0
  br i1 %.not49, label %.critedge, label %bb.e

bb.e:                                             ; preds = %ZSTD_customCalloc.exit61
  tail call void @POOL_free(ptr noundef nonnull %.0.i6769)
  br label %bb.m

.critedge:                                        ; preds = %ZSTD_customCalloc.exit61
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i6769, i64 232
  store i32 0, ptr %i.x, align 8, !tbaa !21
  %i.y = shl i64 %0, 3                            ; 3 uses
  %.val = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %.not.i62 = icmp eq ptr %.val, null
  br i1 %.not.i62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.z = tail call ptr %.val(ptr noundef %.val58, i64 noundef %i.y) #9, !inline_history !12 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 0, i64 %i.y, i1 false)
  br label %ZSTD_customCalloc.exit64

bb.g:                                             ; preds = %.critedge
  %i.aa = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.y) #8
  br label %ZSTD_customCalloc.exit64

ZSTD_customCalloc.exit64:                         ; preds = %bb.f, %bb.g
  %.0.i63 = phi ptr [ %i.z, %bb.f ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i6769, i64 24 ; 2 uses
  store ptr %.0.i63, ptr %i.ab, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i6769, i64 32 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0.i6769, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !24
  %.not50 = icmp eq ptr %.0.i63, null
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %ZSTD_customCalloc.exit64
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !18
  %.not51 = icmp eq ptr %i.ad, null
  br i1 %.not51, label %bb.i, label %.preheader

bb.i:                                             ; preds = %bb.h, %ZSTD_customCalloc.exit64
  tail call void @POOL_free(ptr noundef nonnull %.0.i6769)
  br label %bb.m

.preheader:                                       ; preds = %bb.h, %bb.k
  %.072 = phi i64 [ %i.ah, %bb.k ], [ 0, %bb.h ]  ; 3 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.072
  %i.ag = tail call i32 @pthread_create(ptr noundef %i.af, ptr noundef null, ptr noundef nonnull @POOL_thread, ptr noundef nonnull %.0.i6769) #9
  %.not52 = icmp eq i32 %i.ag, 0
  br i1 %.not52, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader
  store i64 %.072, ptr %i.ac, align 8, !tbaa !23
  tail call void @POOL_free(ptr noundef nonnull %.0.i6769)
  br label %bb.m

bb.k:                                             ; preds = %.preheader
  %i.ah = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %0
  br i1 %exitcond.not, label %bb.l, label %.preheader, !llvm.loop !26

bb.l:                                             ; preds = %bb.k
  store i64 %0, ptr %i.ac, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i6769, i64 40
  store i64 %0, ptr %i.ai, align 8, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.e, %ZSTD_customCalloc.exit, %bb.a, %bb.i
  %.2 = phi ptr [ null, %ZSTD_customCalloc.exit ], [ null, %bb.a ], [ null, %bb.i ], [ null, %bb.e ], [ %.0.i6769, %bb.l ], [ null, %bb.j ]
  ret ptr %.2
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @POOL_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ZSTD_customFree.exit22, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 1, ptr %i.c, align 8, !tbaa !21
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.e) #9 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.h = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.g) #9 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %POOL_join.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.09.i = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.09.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !29
  %i.o = tail call i32 @pthread_join(i64 noundef %i.n, ptr noundef null) #9 ; 0 uses
  %i.p = add nuw i64 %.09.i, 1                    ; 2 uses
  %i.q = load i64, ptr %i.i, align 8, !tbaa !23
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %POOL_join.exit, !llvm.loop !30

POOL_join.exit:                                   ; preds = %bb.c, %bb.b
  %i.s = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.t = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.e) #9 ; 0 uses
  %i.u = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.g) #9 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val14 = load ptr, ptr %i.x, align 8           ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val15 = load ptr, ptr %i.y, align 8           ; 2 uses
  %.not.i16 = icmp eq ptr %i.w, null
  br i1 %.not.i16, label %ZSTD_customFree.exit, label %bb.d

bb.d:                                             ; preds = %POOL_join.exit
  %.not4.i = icmp eq ptr %.val14, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %.val14(ptr noundef %.val15, ptr noundef nonnull %i.w) #9, !inline_history !31
  br label %ZSTD_customFree.exitthread-pre-split

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.w) #9
  br label %ZSTD_customFree.exitthread-pre-split

ZSTD_customFree.exitthread-pre-split:             ; preds = %bb.f, %bb.e
  %.val12.pr = load ptr, ptr %i.x, align 8
  %.val13.pre = load ptr, ptr %i.y, align 8
  br label %ZSTD_customFree.exit

ZSTD_customFree.exit:                             ; preds = %ZSTD_customFree.exitthread-pre-split, %POOL_join.exit
  %.val13 = phi ptr [ %.val13.pre, %ZSTD_customFree.exitthread-pre-split ], [ %.val15, %POOL_join.exit ]
  %.val12 = phi ptr [ %.val12.pr, %ZSTD_customFree.exitthread-pre-split ], [ %.val14, %POOL_join.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22  ; 3 uses
  %.not.i17 = icmp eq ptr %i.aa, null
  br i1 %.not.i17, label %bb.j, label %bb.g

bb.g:                                             ; preds = %ZSTD_customFree.exit
  %.not4.i18 = icmp eq ptr %.val12, null
  br i1 %.not4.i18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %.val12(ptr noundef %.val13, ptr noundef nonnull %i.aa) #9, !inline_history !31
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.aa) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %ZSTD_customFree.exit
  %.val = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not4.i21 = icmp eq ptr %.val, null
  br i1 %.not4.i21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val11 = load ptr, ptr %i.y, align 8
  tail call void %.val(ptr noundef %.val11, ptr noundef nonnull %0) #9, !inline_history !31
  br label %ZSTD_customFree.exit22

bb.l:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %0) #9
  br label %ZSTD_customFree.exit22

ZSTD_customFree.exit22:                           ; preds = %bb.l, %bb.k, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef ptr @POOL_thread(ptr noundef returned %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.g
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.m = load i32, ptr %i.b, align 8, !tbaa !20
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %bb.d, label %.critedge

end_hunk_0
