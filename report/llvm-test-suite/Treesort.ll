inline.NumInlined: 6
begin_hunk_0
@kount = dso_local local_unnamed_addr global i32 0, align 4
@top = dso_local local_unnamed_addr global i32 0, align 4
@z = dso_local local_unnamed_addr global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local local_unnamed_addr global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local local_unnamed_addr global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@zi = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@str = private unnamed_addr constant [16 x i8] c" Error in Tree.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Initrand() local_unnamed_addr #0 {
bb.a:
  store i64 74755, ptr @seed, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 65536) i32 @Rand() local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr @seed, align 8, !tbaa !8
  %i.b = mul nsw i64 %i.a, 1309
  %i.c = add nsw i64 %i.b, 13849
  %i.d = and i64 %i.c, 65535                      ; 2 uses
  store i64 %i.d, ptr @seed, align 8, !tbaa !8
  %i.e = trunc nuw nsw i64 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @tInitarr() local_unnamed_addr #2 {
bb.a:
  store i32 0, ptr @biggest, align 4, !tbaa !4
  store i32 0, ptr @littlest, align 4, !tbaa !4
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %i.a = phi i64 [ 74755, %bb.a ], [ %i.p, %bb.f ]
  %i.b = phi i32 [ 0, %bb.a ], [ %i.x, %bb.f ]    ; 3 uses
  %i.c = phi i32 [ 0, %bb.a ], [ %i.w, %bb.f ]    ; 3 uses
  %i.d = mul nuw nsw i64 %i.a, 1309
  %i.e = add nuw nsw i64 %i.d, 13849              ; 2 uses
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 65535
  %i.h = add nsw i32 %i.g, -50000                 ; 6 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv
  store i32 %i.h, ptr %i.i, align 4, !tbaa !4
  %i.j = icmp sgt i32 %i.h, %i.b
  br i1 %i.j, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %i.h, %i.c
  br i1 %i.k, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %biggest.sink = phi ptr [ @biggest, %bb.b ], [ @littlest, %bb.c ]
  %.ph = phi i32 [ %i.c, %bb.b ], [ %i.h, %bb.c ]
  %.ph14 = phi i32 [ %i.h, %bb.b ], [ %i.b, %bb.c ]
  store i32 %i.h, ptr %biggest.sink, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %i.l = phi i32 [ %i.c, %bb.c ], [ %.ph, %.sink.split ] ; 3 uses
  %i.m = phi i32 [ %i.b, %bb.c ], [ %.ph14, %.sink.split ] ; 3 uses
  %i.n = mul nuw nsw i64 %i.e, 1309
  %i.o = add nuw nsw i64 %i.n, 13849
  %i.p = and i64 %i.o, 65535                      ; 3 uses
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = add nsw i32 %i.q, -50000                 ; 6 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.r, ptr %i.t, align 4, !tbaa !4
  %i.u = icmp sgt i32 %i.r, %i.m
  br i1 %i.u, label %.sink.split.1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp slt i32 %i.r, %i.l
  br i1 %i.v, label %.sink.split.1, label %bb.f

.sink.split.1:                                    ; preds = %bb.e, %bb.d
  %biggest.sink.1 = phi ptr [ @biggest, %bb.d ], [ @littlest, %bb.e ]
  %.ph.1 = phi i32 [ %i.l, %bb.d ], [ %i.r, %bb.e ]
  %.ph14.1 = phi i32 [ %i.r, %bb.d ], [ %i.m, %bb.e ]
  store i32 %i.r, ptr %biggest.sink.1, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.1, %bb.e
  %i.w = phi i32 [ %i.l, %bb.e ], [ %.ph.1, %.sink.split.1 ]
  %i.x = phi i32 [ %i.m, %bb.e ], [ %.ph14.1, %.sink.split.1 ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 5001
  br i1 %exitcond.not.1, label %bb.g, label %bb.b, !llvm.loop !10

bb.g:                                             ; preds = %bb.f
  store i64 %i.p, ptr @seed, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @CreateNode(ptr noundef writeonly captures(none) initializes((0, 8)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #11 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i32 %1, ptr %i.b, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @Insert(i32 noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr16 = phi ptr [ %1, %bb.a ], [ %.tr16.be, %tailrecurse.backedge ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr16, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp sgt i32 %0, %i.b
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %tailrecurse
  %i.d = load ptr, ptr %.tr16, align 8, !tbaa !17 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.b, %bb.e
  %.tr16.be = phi ptr [ %i.d, %bb.b ], [ %i.i, %bb.e ]
  br label %tailrecurse

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #11 ; 2 uses
  store ptr %i.f, ptr %.tr16, align 8, !tbaa !12
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %tailrecurse
  %i.g = icmp slt i32 %0, %i.b
  br i1 %i.g, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.tr16, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %tailrecurse.backedge

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.tr16, i64 8
  %i.l = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #11 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !12
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.c, %bb.f
  %.sink27 = phi ptr [ %i.l, %bb.f ], [ %i.f, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sink27, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink27, i8 0, i64 16, i1 false)
  store i32 %0, ptr %i.m, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.sink.split
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @Checktree(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %.not12 = icmp sgt i32 %i.c, %i.e
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @Checktree(ptr noundef nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %i.f, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 3 uses
  %.not13 = icmp eq ptr %i.h, null
  br i1 %.not13, label %common.ret17, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !15
  %.not14 = icmp slt i32 %i.j, %i.l
  br i1 %.not14, label %bb.f, label %common.ret17

common.ret17:                                     ; preds = %bb.e, %bb.d, %bb.f
  %common.ret17.op = phi i32 [ %4, %bb.f ], [ 0, %bb.e ], [ %.0, %bb.d ]
  ret i32 %common.ret17.op

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @Checktree(ptr noundef nonnull %i.h)
  %1 = icmp ne i32 %i.m, 0
  %2 = icmp ne i32 %.0, 0
  %3 = select i1 %1, i1 %2, i1 false
  %4 = zext i1 %3 to i32
  br label %common.ret17
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @Trees(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  store i32 0, ptr @biggest, align 4, !tbaa !4
  store i32 0, ptr @littlest, align 4, !tbaa !4
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %indvars.iv.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %i.a = phi i64 [ 74755, %bb.a ], [ %i.p, %bb.f ]
  %i.b = phi i32 [ 0, %bb.a ], [ %i.x, %bb.f ]    ; 3 uses
  %i.c = phi i32 [ 0, %bb.a ], [ %i.w, %bb.f ]    ; 3 uses
  %i.d = mul nuw nsw i64 %i.a, 1309
  %i.e = add nuw nsw i64 %i.d, 13849              ; 2 uses
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 65535
  %i.h = add nsw i32 %i.g, -50000                 ; 6 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv.i
  store i32 %i.h, ptr %i.i, align 4, !tbaa !4
  %i.j = icmp sgt i32 %i.h, %i.b
  br i1 %i.j, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %i.h, %i.c
  br i1 %i.k, label %.sink.split.i, label %bb.d

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %biggest.sink.i = phi ptr [ @biggest, %bb.b ], [ @littlest, %bb.c ]
  %.ph.i = phi i32 [ %i.c, %bb.b ], [ %i.h, %bb.c ]
  %.ph14.i = phi i32 [ %i.h, %bb.b ], [ %i.b, %bb.c ]
  store i32 %i.h, ptr %biggest.sink.i, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i, %bb.c
  %i.l = phi i32 [ %i.c, %bb.c ], [ %.ph.i, %.sink.split.i ] ; 3 uses
  %i.m = phi i32 [ %i.b, %bb.c ], [ %.ph14.i, %.sink.split.i ] ; 3 uses
  %i.n = mul nuw nsw i64 %i.e, 1309
  %i.o = add nuw nsw i64 %i.n, 13849
  %i.p = and i64 %i.o, 65535                      ; 3 uses
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = add nsw i32 %i.q, -50000                 ; 6 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.r, ptr %i.t, align 4, !tbaa !4
  %i.u = icmp sgt i32 %i.r, %i.m
  br i1 %i.u, label %.sink.split.i.1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp slt i32 %i.r, %i.l
  br i1 %i.v, label %.sink.split.i.1, label %bb.f

.sink.split.i.1:                                  ; preds = %bb.e, %bb.d
  %biggest.sink.i.1 = phi ptr [ @biggest, %bb.d ], [ @littlest, %bb.e ]
  %.ph.i.1 = phi i32 [ %i.l, %bb.d ], [ %i.r, %bb.e ]
  %.ph14.i.1 = phi i32 [ %i.r, %bb.d ], [ %i.m, %bb.e ]
  store i32 %i.r, ptr %biggest.sink.i.1, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i.1, %bb.e
  %i.w = phi i32 [ %i.l, %bb.e ], [ %.ph.i.1, %.sink.split.i.1 ]
  %i.x = phi i32 [ %i.m, %bb.e ], [ %.ph14.i.1, %.sink.split.i.1 ]
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 5001
  br i1 %exitcond.not.i.1, label %tInitarr.exit, label %bb.b, !llvm.loop !10

tInitarr.exit:                                    ; preds = %bb.f
  store i64 %i.p, ptr @seed, align 8, !tbaa !8
  %i.y = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #11 ; 4 uses
  store ptr %i.y, ptr @tree, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %tInitarr.exit, %Insert.exit
  %i.ab = phi ptr [ %i.y, %tInitarr.exit ], [ %i.as, %Insert.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 2, %tInitarr.exit ], [ %indvars.iv.next, %Insert.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4  ; 3 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.g
  %.tr16.i = phi ptr [ %i.ab, %bb.g ], [ %.tr16.i.be, %tailrecurse.i.backedge ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !15 ; 2 uses
  %i.ag = icmp sgt i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %bb.j

bb.h:                                             ; preds = %tailrecurse.i
  %i.ah = load ptr, ptr %.tr16.i, align 8, !tbaa !17 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.i, label %tailrecurse.i.backedge

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #11, !inline_history !19 ; 2 uses
  store ptr %i.aj, ptr %.tr16.i, align 8, !tbaa !12
  %.pre = load ptr, ptr @tree, align 8, !tbaa !12
  br label %.loopexit.sink.split.i

bb.j:                                             ; preds = %tailrecurse.i
  %i.ak = icmp slt i32 %i.ad, %i.af
  br i1 %i.ak, label %bb.k, label %Insert.exit

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.l, label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.k, %bb.h
  %.tr16.i.be = phi ptr [ %i.ah, %bb.h ], [ %i.am, %bb.k ]
  br label %tailrecurse.i

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.ap = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #11, !inline_history !19 ; 2 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !12
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.l, %bb.i
  %i.aq = phi ptr [ %i.ab, %bb.l ], [ %.pre, %bb.i ]
  %.sink27.i = phi ptr [ %i.ap, %bb.l ], [ %i.aj, %bb.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink27.i, i8 0, i64 16, i1 false)
  store i32 %i.ad, ptr %i.ar, align 8, !tbaa !15
  br label %Insert.exit

Insert.exit:                                      ; preds = %bb.j, %.loopexit.sink.split.i
  %i.as = phi ptr [ %i.aq, %.loopexit.sink.split.i ], [ %i.ab, %bb.j ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5001
  br i1 %exitcond.not, label %bb.m, label %bb.g, !llvm.loop !20

bb.m:                                             ; preds = %Insert.exit
  %i.at = sext i32 %0 to i64
  %i.au = getelementptr [4 x i8], ptr @sortlist, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  %i.ay = load ptr, ptr @tree, align 8, !tbaa !12
  %i.az = tail call i32 @Checktree(ptr noundef %i.ay)
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #7 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.03 = phi i32 [ 0, %bb.a ], [ %i.a, %bb.b ]    ; 2 uses
  tail call void @Trees(i32 noundef %.03)
  %i.a = add nuw nsw i32 %.03, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.a, 100
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !21

bb.c:                                             ; preds = %bb.b
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
end_hunk_0
