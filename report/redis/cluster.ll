Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/cluster?download=true
inline.NumInlined: 95
inline.NumDeleted: 16
loop-unroll.NumUnrolled: 1
begin_hunk_0_@slotRangeArrayAppend:bb.a
  %i.s = trunc i64 %i.r to i32
  %i.t = load i32, ptr %0, align 4, !tbaa !17     ; 2 uses
  %.not = icmp slt i32 %i.t, %i.s
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %sext = shl i64 %i.r, 32
  %i.u = ashr exact i64 %sext, 29
  %i.v = or disjoint i64 %i.u, 4
  %i.w = tail call ptr @zrealloc(ptr noundef nonnull %0, i64 noundef %i.v) #25 ; 2 uses
  %.pre = load i32, ptr %i.w, align 4, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.x = phi i32 [ %.pre, %bb.j ], [ %i.t, %bb.i ] ; 2 uses
  %.032 = phi ptr [ %i.w, %bb.j ], [ %0, %bb.i ]  ; 3 uses
  %i.y = trunc i32 %1 to i16                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.032, i64 4
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  store i16 %i.y, ptr %i.ab, align 4, !tbaa !120
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i16 %i.y, ptr %i.ac, align 2, !tbaa !121
  %i.ad = add nsw i32 %i.x, 1
  store i32 %i.ad, ptr %.032, align 4, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.b
  %.1 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.h ], [ %.032, %bb.k ]
  ret ptr %.1
}

; Function Attrs: nounwind
declare i64 @je_malloc_usable_size(ptr noundef) local_unnamed_addr #17

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @slotRangeArrayContains(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %0, align 4, !tbaa !17     ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.e = load i16, ptr %i.d, align 4, !tbaa !120
  %i.f = zext i16 %i.e to i32
  %.not = icmp ult i32 %1, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !121
  %i.i = zext i16 %i.h to i32
  %.not13 = icmp ugt i32 %1, %i.i
  br i1 %.not13, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !198

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %i.j = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define dso_local void @slotRangeArrayFreeGeneric(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @zfree(ptr noundef %0) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @slotRangeArrayGetIterator(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #24 ; 4 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !125
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !126
  %i.c = load i32, ptr %0, align 4, !tbaa !17
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i16, ptr %i.e, align 4, !tbaa !120
  %i.g = zext i16 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.h, ptr %i.i, align 4, !tbaa !127
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2147483647, 65536) i32 @slotRangeArrayNext(ptr nofree noundef captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !126  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !125    ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !127  ; 2 uses
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr [4 x i8], ptr %i.c, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 6
  %i.j = load i16, ptr %i.i, align 2, !tbaa !121
  %i.k = zext i16 %i.j to i32
  %i.l = icmp slt i32 %i.f, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %i.f, 1
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.n = add nsw i32 %i.b, 1                      ; 3 uses
  store i32 %i.n, ptr %i.a, align 8, !tbaa !126
  %i.o = load i32, ptr %i.c, align 4, !tbaa !17
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.r = sext i32 %i.n to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i16, ptr %i.s, align 4, !tbaa !120
  %i.u = zext i16 %i.t to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.c
  %.sink = phi i32 [ %i.m, %bb.c ], [ %i.u, %bb.e ], [ -1, %bb.d ] ; 2 uses
  store i32 %.sink, ptr %i.e, align 4, !tbaa !127
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %.sink, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @slotRangeArrayGetCurrentSlot(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !127
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @slotRangeArrayIteratorFree(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @zfree(ptr noundef %0) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @parseSlotRangesOrReply(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.d, -1
  %.not = icmp slt i32 %2, %1
  %or.cond = and i1 %.not, %or.cond.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw nsw i32 %1, %2                   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  %i.g = and i32 %i.e, 1
  %.not42 = icmp eq i32 %i.g, 0
  %or.cond45 = and i1 %i.f, %.not42
  br i1 %or.cond45, label %.lr.ph, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @addReplyErrorArity(ptr noundef %0) #21
  br label %bb.h

.lr.ph:                                           ; preds = %bb.b
  %i.h = shl nuw i32 %i.e, 1
  %i.i = zext i32 %i.h to i64
  %i.j = add nuw nsw i64 %i.i, 4
  %i.k = tail call noalias noundef ptr @zcalloc(i64 noundef %i.j) #24 ; 8 uses
  store i32 0, ptr %i.k, align 4, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %3 = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %getSlotOrReply.exit48
  %indvars.iv = phi i64 [ %3, %.lr.ph ], [ %indvars.iv.next, %getSlotOrReply.exit48 ] ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.q = call i32 @getLongLongFromObject(ptr noundef %i.p, ptr noundef nonnull %i.b) #21
  %i.r = icmp ne i32 %i.q, 0
  %i.s = load i64, ptr %i.b, align 8              ; 2 uses
  %i.t = icmp ugt i64 %i.s, 16383
  %or.cond3.i = select i1 %i.r, i1 true, i1 %i.t
  br i1 %or.cond3.i, label %getSlotOrReply.exit.thread, label %getSlotOrReply.exit

getSlotOrReply.exit.thread:                       ; preds = %bb.d
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.e

getSlotOrReply.exit:                              ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.y = call i32 @getLongLongFromObject(ptr noundef %i.x, ptr noundef nonnull %i.a) #21
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 16383
  %or.cond3.i46 = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond3.i46, label %getSlotOrReply.exit48.thread, label %getSlotOrReply.exit48

getSlotOrReply.exit48.thread:                     ; preds = %getSlotOrReply.exit
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.e

getSlotOrReply.exit48:                            ; preds = %getSlotOrReply.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !17  ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.s to i16
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ae ; 2 uses
  store i16 %i.ad, ptr %i.af, align 4, !tbaa !120
  %i.ag = trunc nuw nsw i64 %i.aa to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !121
  %i.ai = add nsw i32 %i.ac, 1
  store i32 %i.ai, ptr %i.k, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv.next to i32
  %.not43 = icmp sgt i32 %1, %4
  br i1 %.not43, label %bb.d, label %.critedge, !llvm.loop !199

bb.e:                                             ; preds = %getSlotOrReply.exit48.thread, %getSlotOrReply.exit.thread
  call void @zfree(ptr noundef nonnull %i.k) #21
  br label %bb.h

.critedge:                                        ; preds = %getSlotOrReply.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr null, ptr %i.c, align 8, !tbaa !122
  %i.aj = call i32 @slotRangeArrayNormalizeAndValidate(ptr noundef nonnull %i.k, ptr noundef nonnull %i.c)
  %.not44 = icmp eq i32 %i.aj, 0
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !122
  call void @addReplyErrorSds(ptr noundef nonnull %0, ptr noundef %i.ak) #21
  call void @zfree(ptr noundef nonnull %i.k) #21
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f
  %.1 = phi ptr [ null, %bb.f ], [ %i.k, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.c
  %.2 = phi ptr [ null, %bb.c ], [ %.1, %bb.g ], [ null, %bb.e ]
  ret ptr %.2
}

declare void @addReplyErrorArity(ptr noundef) local_unnamed_addr #2

declare ptr @clusterNodeGetMaster(ptr noundef) local_unnamed_addr #2

declare i32 @clusterNodeCoversSlot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @clusterGetLocalSlotRanges() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !98
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef dereferenceable_or_null(8) ptr @zcalloc(i64 noundef 8) #24 ; 4 uses
  store i32 1, ptr %i.b, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 0, ptr %i.c, align 4, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i16 16383, ptr %i.d, align 2, !tbaa !121
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @getMyClusterNode() #21
  %i.f = tail call ptr @clusterNodeGetMaster(ptr noundef %i.e) #21 ; 2 uses
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.e
  %.020 = phi i32 [ %i.i, %bb.e ], [ 0, %bb.c ]   ; 3 uses
  %.01119 = phi ptr [ %.1, %bb.e ], [ null, %bb.c ] ; 2 uses
  %i.g = tail call i32 @clusterNodeCoversSlot(ptr noundef nonnull %i.f, i32 noundef %.020) #21
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.h = tail call ptr @slotRangeArrayAppend(ptr noundef %.01119, i32 noundef %.020)
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.d
  %.1 = phi ptr [ %i.h, %bb.d ], [ %.01119, %.preheader ] ; 3 uses
  %i.i = add nuw nsw i32 %.020, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, 16384
  br i1 %exitcond.not, label %bb.f, label %.preheader, !llvm.loop !200

bb.f:                                             ; preds = %bb.e
  %.not15 = icmp eq ptr %.1, null
  br i1 %.not15, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.c, %bb.f
  %i.j = tail call noalias noundef dereferenceable_or_null(4) ptr @zcalloc(i64 noundef 4) #24 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.b
  %.012 = phi ptr [ %i.b, %bb.b ], [ %i.j, %.thread ], [ %.1, %bb.f ]
  ret ptr %.012
}

; Function Attrs: nounwind uwtable
define dso_local void @sflushCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !80   ; 4 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !98
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.96) #21
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.h = sext i32 %i.c to i64
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !82   ; 2 uses
  %i.n = tail call i32 @strcasecmp(ptr noundef %i.m, ptr noundef nonnull @.str.136) #23
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %i.c, -1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.p = tail call i32 @strcasecmp(ptr noundef %i.m, ptr noundef nonnull @.str.137) #23
  %.not48 = icmp eq i32 %i.p, 0
  br i1 %.not48, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.c, -1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8376), align 8, !tbaa !204
  %.not49 = icmp ne i32 %i.r, 0
  %spec.select = zext i1 %.not49 to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.046 = phi i32 [ 0, %bb.d ], [ %spec.select, %bb.g ], [ 1, %bb.f ]
  %.045 = phi i32 [ %i.o, %bb.d ], [ %i.c, %bb.g ], [ %i.q, %bb.f ] ; 2 uses
  %i.s = and i32 %.045, 1
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @addReplyErrorArity(ptr noundef nonnull %0) #21
  br label %bb.ag

bb.j:                                             ; preds = %bb.h
  %i.u = tail call ptr @parseSlotRangesOrReply(ptr noundef nonnull %0, i32 noundef %.045, i32 noundef 1) ; 6 uses
  %.not50 = icmp eq ptr %i.u, null
  br i1 %.not50, label %bb.ag, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) %i.a, i8 0, i64 16384, i1 false)
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph70, label %.preheader

.lr.ph70:                                         ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  br label %bb.l

.preheader:                                       ; preds = %._crit_edge, %bb.k
  %.044.lcssa = phi ptr [ null, %bb.k ], [ %.1.lcssa, %._crit_edge ] ; 7 uses
  br label %bb.y

bb.l:                                             ; preds = %.lr.ph70, %._crit_edge
  %i.y = phi i32 [ %i.v, %.lr.ph70 ], [ %i.ae, %._crit_edge ]
  %indvars.iv74 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next75, %._crit_edge ] ; 2 uses
  %.04467 = phi ptr [ null, %.lr.ph70 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv74 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !120 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !121
  %.not5363 = icmp ugt i16 %i.aa, %i.ac
  br i1 %.not5363, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.ad = zext i16 %i.aa to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre = load i32, ptr %i.u, align 4, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %i.ae = phi i32 [ %i.y, %bb.l ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.04467, %bb.l ], [ %.2, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next75, %i.af
  br i1 %i.ag, label %bb.l, label %.preheader, !llvm.loop !201

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.x ] ; 9 uses
  %.164 = phi ptr [ %.04467, %.lr.ph.preheader ], [ %.2, %bb.x ] ; 9 uses
  %i.ah = tail call ptr @getMyClusterNode() #21
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = tail call ptr @getNodeBySlot(i32 noundef %i.ai) #21
  %.not58 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not58, label %bb.m, label %bb.x
end_hunk_0
