inline.NumInlined: 43
inline.NumDeleted: 22
begin_hunk_0_@AddDataToChunkList:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @ChunkInit(ptr noundef nonnull %4) #5
  %i.a = call i32 @ChunkAssignData(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #5 ; 2 uses
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @ChunkSetHead(ptr noundef nonnull %4, ptr noundef nonnull %3) #5 ; 2 uses
  %.not10 = icmp eq i32 %i.b, 1
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  %i.c = call ptr @ChunkRelease(ptr noundef nonnull %4) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.07 = phi i32 [ %.0, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret i32 %.07
}

; Function Attrs: nounwind uwtable
define i32 @WebPMuxSetAnimationParams(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i8], align 4                 ; 5 uses
  %2 = alloca %struct.WebPData, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  store ptr %i.a, ptr %2, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 6, ptr %i.b, align 8, !tbaa !16
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %MuxDeleteAllNamedData.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47
  %or.cond18 = icmp ugt i32 %i.f, 65535
  br i1 %or.cond18, label %MuxDeleteAllNamedData.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @kChunks, i64 24), align 8, !tbaa !30 ; 3 uses
  %i.h = call i32 @ChunkGetIdFromTag(i32 noundef %i.g) #5 ; 2 uses
  switch i32 %i.h, label %bb.d [
    i32 3, label %MuxDeleteAllNamedData.exit.thread
    i32 5, label %MuxDeleteAllNamedData.exit.thread
    i32 6, label %MuxDeleteAllNamedData.exit.thread
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = call ptr @MuxGetChunkListFromId(ptr noundef nonnull %0, i32 noundef %i.h) #5 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i, label %MuxDeleteAllNamedData.exit.thread21, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.g
  %i.k = phi ptr [ %i.p, %bb.g ], [ %i.j, %bb.d ] ; 3 uses
  %.012.i.i = phi ptr [ %.1.i.i, %bb.g ], [ %i.i, %bb.d ] ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !19
  %i.m = icmp eq i32 %i.l, %i.g
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.n = call ptr @ChunkDelete(ptr noundef nonnull %i.k) #5 ; 2 uses
  store ptr %i.n, ptr %.012.i.i, align 8, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = phi ptr [ %i.n, %bb.e ], [ %.pre.i.i, %bb.f ] ; 2 uses
  %.1.i.i = phi ptr [ %.012.i.i, %bb.e ], [ %i.o, %bb.f ]
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %MuxDeleteAllNamedData.exit.thread21, label %.lr.ph.i.i, !llvm.loop !21

MuxDeleteAllNamedData.exit.thread21:              ; preds = %bb.g, %bb.d
  %i.q = load i32, ptr %1, align 4, !tbaa !49
  store i32 %i.q, ptr %i.a, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load i32, ptr %i.e, align 4, !tbaa !47
  %i.t = trunc i32 %i.s to i16
  store i16 %i.t, ptr %i.r, align 4
  %i.u = call fastcc i32 @MuxSet(ptr noundef %0, i32 noundef %i.g, ptr noundef %2, i32 noundef 1)
  br label %MuxDeleteAllNamedData.exit.thread

MuxDeleteAllNamedData.exit.thread:                ; preds = %bb.c, %bb.c, %bb.c, %bb.b, %bb.a, %MuxDeleteAllNamedData.exit.thread21
  %.0 = phi i32 [ %i.u, %MuxDeleteAllNamedData.exit.thread21 ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.c ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @WebPMuxSetCanvasSize(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %MuxDeleteAllNamedData.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %2, %1                            ; 2 uses
  %or.cond = icmp slt i32 %i.b, 0
  %i.c = icmp sgt i32 %1, 16777216
  %or.cond3 = or i1 %i.c, %or.cond
  %i.d = icmp sgt i32 %2, 16777216
  %or.cond5 = or i1 %i.d, %or.cond3
  br i1 %or.cond5, label %MuxDeleteAllNamedData.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %umul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 %2)
  %i.e = extractvalue { i32, i1 } %umul, 1
  br i1 %i.e, label %MuxDeleteAllNamedData.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = mul nsw i32 %2, %1
  %i.g = icmp ne i32 %i.f, 0
  %.not = icmp eq i32 %i.b, 0
  %or.cond30 = or i1 %i.g, %.not
  br i1 %or.cond30, label %bb.e, label %MuxDeleteAllNamedData.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr @kChunks, align 16, !tbaa !30 ; 2 uses
  %i.i = tail call i32 @ChunkGetIdFromTag(i32 noundef %i.h) #5 ; 2 uses
  switch i32 %i.i, label %bb.f [
    i32 3, label %MuxDeleteAllNamedData.exit.thread
    i32 5, label %MuxDeleteAllNamedData.exit.thread
    i32 6, label %MuxDeleteAllNamedData.exit.thread
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @MuxGetChunkListFromId(ptr noundef nonnull %0, i32 noundef %i.i) #5 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i, label %MuxDeleteAllNamedData.exit.thread33, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.i
  %i.l = phi ptr [ %i.q, %bb.i ], [ %i.k, %bb.f ] ; 3 uses
  %.012.i.i = phi ptr [ %.1.i.i, %bb.i ], [ %i.j, %bb.f ] ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !19
  %i.n = icmp eq i32 %i.m, %i.h
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.o = tail call ptr @ChunkDelete(ptr noundef nonnull %i.l) #5 ; 2 uses
  store ptr %i.o, ptr %.012.i.i, align 8, !tbaa !17
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.p, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %.pre.i.i, %bb.h ] ; 2 uses
  %.1.i.i = phi ptr [ %.012.i.i, %bb.g ], [ %i.p, %bb.h ]
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %MuxDeleteAllNamedData.exit.thread33, label %.lr.ph.i.i, !llvm.loop !21

MuxDeleteAllNamedData.exit.thread33:              ; preds = %bb.i, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %1, ptr %i.r, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %2, ptr %i.s, align 4, !tbaa !51
  br label %MuxDeleteAllNamedData.exit.thread

MuxDeleteAllNamedData.exit.thread:                ; preds = %bb.e, %bb.e, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %MuxDeleteAllNamedData.exit.thread33
  %.0 = phi i32 [ 1, %MuxDeleteAllNamedData.exit.thread33 ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.e ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @WebPMuxDeleteChunk(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %MuxDeleteAllNamedData.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @ChunkGetTagFromFourCC(ptr noundef nonnull %1) #5 ; 2 uses
  %i.d = tail call i32 @ChunkGetIdFromTag(i32 noundef %i.c) #5 ; 2 uses
  switch i32 %i.d, label %bb.c [
    i32 3, label %MuxDeleteAllNamedData.exit
    i32 5, label %MuxDeleteAllNamedData.exit
    i32 6, label %MuxDeleteAllNamedData.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @MuxGetChunkListFromId(ptr noundef nonnull %0, i32 noundef %i.d) #5 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i, label %MuxDeleteAllNamedData.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.f
  %i.g = phi ptr [ %i.l, %bb.f ], [ %i.f, %bb.c ] ; 3 uses
  %.012.i.i = phi ptr [ %.1.i.i, %bb.f ], [ %i.e, %bb.c ] ; 2 uses
  %.0711.i.i = phi i32 [ %.18.i.i, %bb.f ], [ 0, %bb.c ]
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19
  %i.i = icmp eq i32 %i.h, %i.c
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.j = tail call ptr @ChunkDelete(ptr noundef nonnull %i.g) #5 ; 2 uses
  store ptr %i.j, ptr %.012.i.i, align 8, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %i.j, %bb.d ], [ %.pre.i.i, %bb.e ] ; 2 uses
  %.18.i.i = phi i32 [ 1, %bb.d ], [ %.0711.i.i, %bb.e ] ; 2 uses
  %.1.i.i = phi ptr [ %.012.i.i, %bb.d ], [ %i.k, %bb.e ]
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %MuxDeleteAllNamedData.exit, label %.lr.ph.i.i, !llvm.loop !21

MuxDeleteAllNamedData.exit:                       ; preds = %bb.f, %bb.c, %bb.b, %bb.b, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.b ], [ -1, %bb.b ], [ 0, %bb.c ], [ %.18.i.i, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @WebPMuxDeleteFrame(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @MuxImageDeleteNth(ptr noundef nonnull %0, i32 noundef %1) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @MuxImageDeleteNth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @WebPMuxAssemble(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 4                ; 10 uses
  %2 = alloca %struct.WebPData, align 8           ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %bb.as, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @kChunks, i64 40), align 8, !tbaa !52
  %i.h = call i32 @WebPMuxNumChunks(ptr noundef nonnull %0, i32 noundef %i.g, ptr noundef nonnull %i.b) #5 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 1
  br i1 %.not.i, label %bb.d, label %MuxCleanup.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.b, align 4, !tbaa !3
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store ptr null, ptr %i.d, align 8, !tbaa !7
  %i.k = call i32 @MuxImageGetNth(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.d) #5 ; 2 uses
  %.not22.i = icmp eq i32 %i.k, 1
  br i1 %.not22.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !7    ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %.not23.i = icmp eq ptr %i.m, null
  br i1 %.not23.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.r = load i32, ptr %i.q, align 4, !tbaa !51
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !41
  %i.v = icmp eq i32 %i.u, %i.o
  br i1 %i.v, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.ab = call ptr @ChunkDelete(ptr noundef nonnull %i.m) #5 ; 0 uses
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !7
  store ptr null, ptr %i.ac, align 8, !tbaa !36
  store i32 0, ptr %i.b, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @kChunks, i64 28), align 4, !tbaa !52
  %i.ae = call i32 @WebPMuxNumChunks(ptr noundef nonnull %0, i32 noundef %i.ad, ptr noundef nonnull %i.c) #5 ; 2 uses
  %.not24.i = icmp eq i32 %i.ae, 1
  br i1 %.not24.i, label %bb.n, label %MuxCleanup.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.af = load i32, ptr %i.c, align 4, !tbaa !3
  %i.ag = icmp sgt i32 %i.af, 0
  %i.ah = load i32, ptr %i.b, align 4
  %i.ai = icmp eq i32 %i.ah, 0
  %or.cond.i = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond.i, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @kChunks, i64 24), align 8, !tbaa !30 ; 4 uses
  %i.ak = call i32 @ChunkGetIdFromTag(i32 noundef %i.aj) #5 ; 2 uses
  switch i32 %i.ak, label %bb.p [
    i32 3, label %MuxCleanup.exit.thread
    i32 5, label %MuxCleanup.exit.thread
    i32 6, label %MuxCleanup.exit.thread
  ]

bb.p:                                             ; preds = %bb.o
  %i.al = call ptr @MuxGetChunkListFromId(ptr noundef nonnull %0, i32 noundef %i.ak) #5 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !17 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not10.i.i.i, label %MuxCleanup.exit.thread, label %.lr.ph.i.i.outer.i.outer

.lr.ph.i.i.outer.i.outer:                         ; preds = %bb.p, %.lr.ph.i.i.i._crit_edge.thread
  %.ph.i.ph = phi ptr [ %.pre.i.i.i102, %.lr.ph.i.i.i._crit_edge.thread ], [ %i.am, %bb.p ] ; 3 uses
  %.012.i.i.ph.i.ph = phi ptr [ %i.as, %.lr.ph.i.i.i._crit_edge.thread ], [ %i.al, %bb.p ]
  %.not25.not.i = phi i1 [ false, %.lr.ph.i.i.i._crit_edge.thread ], [ true, %bb.p ]
  %i.an = load i32, ptr %.ph.i.ph, align 8, !tbaa !19
  %i.ao = icmp eq i32 %i.an, %i.aj
  br i1 %i.ao, label %.thread.i.preheader, label %.lr.ph.i.i.i._crit_edge

.lr.ph.i.i.outer.i:                               ; preds = %.lr.ph.i.i.i._crit_edge
  %3 = load i32, ptr %.pre.i.i.i, align 8, !tbaa !19
  %4 = icmp eq i32 %3, %i.aj
  br i1 %4, label %.thread.i.preheader.loopexit, label %.lr.ph.i.i.i._crit_edge, !llvm.loop !21

.thread.i.preheader.loopexit:                     ; preds = %.lr.ph.i.i.outer.i
  %5 = getelementptr inbounds nuw i8, ptr %.ph.i123, i64 24
  br label %.thread.i.preheader

.thread.i.preheader:                              ; preds = %.thread.i.preheader.loopexit, %.lr.ph.i.i.outer.i.outer
  %.ph.i.lcssa = phi ptr [ %.ph.i.ph, %.lr.ph.i.i.outer.i.outer ], [ %.pre.i.i.i, %.thread.i.preheader.loopexit ]
  %.012.i.i.ph.i.lcssa = phi ptr [ %.012.i.i.ph.i.ph, %.lr.ph.i.i.outer.i.outer ], [ %5, %.thread.i.preheader.loopexit ]
  br label %.thread.i

.lr.ph.i.i.i:                                     ; preds = %.thread.i
  %i.ap = load i32, ptr %i.au, align 8, !tbaa !19
  %i.aq = icmp eq i32 %i.ap, %i.aj
  br i1 %i.aq, label %.thread.i, label %.lr.ph.i.i.i._crit_edge.thread, !llvm.loop !21

.lr.ph.i.i.i._crit_edge:                          ; preds = %.lr.ph.i.i.outer.i.outer, %.lr.ph.i.i.outer.i
  %.ph.i123 = phi ptr [ %.pre.i.i.i, %.lr.ph.i.i.outer.i ], [ %.ph.i.ph, %.lr.ph.i.i.outer.i.outer ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.ph.i123, i64 24
  %.pre.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !17 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i, label %MuxDeleteAllNamedData.exit.i, label %.lr.ph.i.i.outer.i, !llvm.loop !21

.lr.ph.i.i.i._crit_edge.thread:                   ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %.pre.i.i.i102 = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %.pre.i.i.i102, null
  br i1 %.not.i.i.i103, label %.loopexit, label %.lr.ph.i.i.outer.i.outer, !llvm.loop !21

.thread.i:                                        ; preds = %.thread.i.preheader, %.lr.ph.i.i.i
  %i.at = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.ph.i.lcssa, %.thread.i.preheader ]
  %i.au = call ptr @ChunkDelete(ptr noundef nonnull %i.at) #5 ; 5 uses
  store ptr %i.au, ptr %.012.i.i.ph.i.lcssa, align 8, !tbaa !17
  %.not.i.i35.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i35.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !21

MuxDeleteAllNamedData.exit.i:                     ; preds = %.lr.ph.i.i.i._crit_edge
  br i1 %.not25.not.i, label %MuxCleanup.exit.thread, label %.loopexit

.critedge.i:                                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %MuxCleanup.exit.thread

MuxCleanup.exit.thread:                           ; preds = %MuxDeleteAllNamedData.exit.i, %.critedge.i, %bb.m, %bb.c, %bb.p, %bb.o, %bb.o, %bb.o
  %.1.i.ph = phi i32 [ -1, %bb.o ], [ -1, %bb.o ], [ -1, %bb.o ], [ 0, %bb.p ], [ %i.h, %bb.c ], [ %i.ae, %bb.m ], [ %i.k, %.critedge.i ], [ 0, %MuxDeleteAllNamedData.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %bb.as

.loopexit:                                        ; preds = %.lr.ph.i.i.i._crit_edge.thread, %.thread.i, %MuxDeleteAllNamedData.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  store ptr %i.a, ptr %2, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.av, align 8, !tbaa !16
  %i.aw = load ptr, ptr %0, align 8, !tbaa !22    ; 5 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %CreateVP8XChunk.exit.thread, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !27 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %CreateVP8XChunk.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !53
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %CreateVP8XChunk.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = load i32, ptr @kChunks, align 16, !tbaa !30 ; 3 uses
  %i.bf = call i32 @ChunkGetIdFromTag(i32 noundef %i.be) #5 ; 2 uses
  switch i32 %i.bf, label %bb.t [
    i32 3, label %CreateVP8XChunk.exit.thread
    i32 5, label %CreateVP8XChunk.exit.thread
    i32 6, label %CreateVP8XChunk.exit.thread
  ]

bb.t:                                             ; preds = %bb.s
  %i.bg = call ptr @MuxGetChunkListFromId(ptr noundef nonnull %0, i32 noundef %i.bf) #5 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !17 ; 2 uses
  %.not10.i.i.i51 = icmp eq ptr %i.bh, null
  br i1 %.not10.i.i.i51, label %MuxDeleteAllNamedData.exit.thread81.i, label %.lr.ph.i.i.i52

.lr.ph.i.i.i52:                                   ; preds = %bb.t, %bb.w
  %i.bi = phi ptr [ %i.bn, %bb.w ], [ %i.bh, %bb.t ] ; 3 uses
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %bb.w ], [ %i.bg, %bb.t ] ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !19
  %i.bk = icmp eq i32 %i.bj, %i.be
  br i1 %i.bk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i52
  %i.bl = call ptr @ChunkDelete(ptr noundef nonnull %i.bi) #5 ; 2 uses
  store ptr %i.bl, ptr %.012.i.i.i, align 8, !tbaa !17
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph.i.i.i52
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %.pre.i.i.i53 = load ptr, ptr %i.bm, align 8, !tbaa !17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bn = phi ptr [ %i.bl, %bb.u ], [ %.pre.i.i.i53, %bb.v ] ; 2 uses
  %.1.i.i.i = phi ptr [ %.012.i.i.i, %bb.u ], [ %i.bm, %bb.v ]
  %.not.i.i.i54 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i54, label %MuxDeleteAllNamedData.exit.thread81.i, label %.lr.ph.i.i.i52, !llvm.loop !21

MuxDeleteAllNamedData.exit.thread81.i:            ; preds = %bb.w, %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !54 ; 2 uses
  %.not.i55 = icmp eq ptr %i.bp, null
  br i1 %.not.i55, label %bb.y, label %bb.x

bb.x:                                             ; preds = %MuxDeleteAllNamedData.exit.thread81.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !53
  %.not54.i = icmp eq ptr %i.br, null
  %spec.select.i = select i1 %.not54.i, i32 0, i32 32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %MuxDeleteAllNamedData.exit.thread81.i
  %.0.i = phi i32 [ 0, %MuxDeleteAllNamedData.exit.thread81.i ], [ %spec.select.i, %bb.x ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !55 ; 2 uses
  %.not55.i = icmp eq ptr %i.bt, null
  br i1 %.not55.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !53
  %.not56.i = icmp eq ptr %i.bv, null
  %i.bw = or disjoint i32 %.0.i, 8
  %spec.select64.i = select i1 %.not56.i, i32 %.0.i, i32 %i.bw
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1.i56 = phi i32 [ %.0.i, %bb.y ], [ %spec.select64.i, %bb.z ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !56 ; 2 uses
  %.not57.i = icmp eq ptr %i.by, null
  br i1 %.not57.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !53
  %.not58.i = icmp eq ptr %i.ca, null
  %i.cb = or i32 %.1.i56, 4
  %spec.select65.i = select i1 %.not58.i, i32 %.1.i56, i32 %i.cb
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2.i = phi i32 [ %.1.i56, %bb.aa ], [ %spec.select65.i, %bb.ab ] ; 3 uses
  %i.cc = load ptr, ptr %i.aw, align 8, !tbaa !36 ; 2 uses
  %.not59.i = icmp eq ptr %i.cc, null
  br i1 %.not59.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !19
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @kChunks, i64 36), align 4, !tbaa !30
  %i.cf = icmp eq i32 %i.cd, %i.ce
  %i.cg = or i32 %.2.i, 2
  %spec.select66.i = select i1 %i.cf, i32 %i.cg, i32 %.2.i
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.3.i = phi i32 [ %.2.i, %bb.ac ], [ %spec.select66.i, %bb.ad ] ; 2 uses
  %i.ch = call i32 @MuxImageCount(ptr noundef nonnull %i.aw, i32 noundef 5) #5
  %i.ci = icmp sgt i32 %i.ch, 0
  %i.cj = or i32 %.3.i, 16                        ; 2 uses
  %spec.select67.i = select i1 %i.ci, i32 %i.cj, i32 %.3.i ; 2 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !22  ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !57
  %.not.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i, label %bb.ag, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %bb.af
  %.02613.i.i = phi ptr [ %i.dn, %bb.af ], [ %.val.i, %bb.ae ] ; 4 uses
  %.02712.i.i = phi i32 [ %spec.select.i.i, %bb.af ], [ 0, %bb.ae ]
  %.03011.i.i = phi i32 [ %.131.i.i, %bb.af ], [ 0, %bb.ae ]
  %i.cm = load ptr, ptr %.02613.i.i, align 8, !tbaa !36 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !16
  %.not.i.i.i.i = icmp eq i64 %i.co, 16
  br i1 %.not.i.i.i.i, label %bb.af, label %CreateVP8XChunk.exit.thread

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !12 ; 4 uses
  %.val.i.i.i.i.i = load i16, ptr %i.cq, align 1
  %i.cr = zext i16 %.val.i.i.i.i.i to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !38
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 17
  %i.cw = shl nuw nsw i32 %i.cr, 1
  %i.cx = or disjoint i32 %i.cv, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  %.val.i8.i.i.i.i = load i16, ptr %i.cy, align 1
  %i.cz = zext i16 %.val.i8.i.i.i.i to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 5
  %i.db = load i8, ptr %i.da, align 1, !tbaa !38
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 17
  %i.de = shl nuw nsw i32 %i.cz, 1
  %i.df = or disjoint i32 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.02613.i.i, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %.02613.i.i, i64 36
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !42
  %i.dk = add nsw i32 %i.cx, %i.dh
  %i.dl = add nsw i32 %i.df, %i.dj
  %.131.i.i = call i32 @llvm.smax.i32(i32 %i.dl, i32 %.03011.i.i) ; 2 uses
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %i.dk, i32 %.02712.i.i) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.02613.i.i, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !57 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.dn, null
  br i1 %.not36.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !58

bb.ag:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !42
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.af, %bb.ag
  %.278.ph.i = phi i32 [ %i.dp, %bb.ag ], [ %spec.select.i.i, %bb.af ] ; 4 uses
  %.175.ph.i = phi i32 [ %i.dr, %bb.ag ], [ %.131.i.i, %bb.af ] ; 4 uses
  %i.ds = icmp slt i32 %.278.ph.i, 1
  %i.dt = icmp slt i32 %.175.ph.i, 1
  %or.cond3.i = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond3.i, label %CreateVP8XChunk.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %.loopexit.i
  %i.du = icmp samesign ugt i32 %.278.ph.i, 16777216
  %i.dv = icmp samesign ugt i32 %.175.ph.i, 16777216
  %or.cond5.i = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond5.i, label %CreateVP8XChunk.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !50 ; 3 uses
  %.not61.i = icmp eq i32 %i.dx, 0
  br i1 %.not61.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !51
  %.not62.i = icmp eq i32 %i.dz, 0
  br i1 %.not62.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ea = icmp sgt i32 %.278.ph.i, %i.dx
  br i1 %i.ea, label %CreateVP8XChunk.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !51 ; 2 uses
  %i.ed = icmp sgt i32 %.175.ph.i, %i.ec
  br i1 %i.ed, label %CreateVP8XChunk.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.076.i = phi i32 [ %.278.ph.i, %bb.aj ], [ %i.dx, %bb.al ]
  %.074.i = phi i32 [ %.175.ph.i, %bb.aj ], [ %i.ec, %bb.al ]
  %i.ee = icmp eq i32 %spec.select67.i, 0
  br i1 %i.ee, label %bb.an, label %CreateVP8XChunk.exit

bb.an:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !59
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %CreateVP8XChunk.exit.thread65, label %CreateVP8XChunk.exit

CreateVP8XChunk.exit.thread65:                    ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.ao

CreateVP8XChunk.exit.thread:                      ; preds = %.lr.ph.i.i, %.loopexit, %bb.s, %bb.s, %bb.s, %.loopexit.i, %bb.ah, %bb.ak, %bb.r, %bb.q, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.as

CreateVP8XChunk.exit:                             ; preds = %bb.am, %bb.an
  %i.ei = call i32 @MuxHasAlpha(ptr noundef nonnull %i.aw) #5
  %.not63.i = icmp eq i32 %i.ei, 0
  %spec.select68.i = select i1 %.not63.i, i32 %spec.select67.i, i32 %i.cj
  store i32 %spec.select68.i, ptr %i.a, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ek = add nsw i32 %.076.i, -1                 ; 2 uses
  %i.el = trunc i32 %i.ek to i16
  store i16 %i.el, ptr %i.ej, align 4
  %i.em = lshr i32 %i.ek, 16
  %i.en = trunc i32 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.en, ptr %i.eo, align 2, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.eq = add nsw i32 %.074.i, -1                 ; 2 uses
  %i.er = trunc i32 %i.eq to i16
  store i16 %i.er, ptr %i.ep, align 1
  %i.es = lshr i32 %i.eq, 16
  %i.et = trunc i32 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !38
  %i.ev = call fastcc i32 @MuxSet(ptr noundef nonnull %0, i32 noundef %i.be, ptr noundef %2, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.not49 = icmp eq i32 %i.ev, 1
  br i1 %.not49, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %CreateVP8XChunk.exit.thread65, %CreateVP8XChunk.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !60
  %i.ey = call i64 @ChunkListDiskSize(ptr noundef %i.ex) #5
  %i.ez = load ptr, ptr %i.bo, align 8, !tbaa !54
  %i.fa = call i64 @ChunkListDiskSize(ptr noundef %i.ez) #5
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !61
  %i.fd = call i64 @ChunkListDiskSize(ptr noundef %i.fc) #5
  %i.fe = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %.not5.i = icmp eq ptr %i.fe, null
  br i1 %.not5.i, label %ImageListDiskSize.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ao, %.lr.ph.i
  %.07.i = phi i64 [ %i.fg, %.lr.ph.i ], [ 0, %bb.ao ]
  %.046.i = phi ptr [ %i.fi, %.lr.ph.i ], [ %i.fe, %bb.ao ] ; 2 uses
  %i.ff = call i64 @MuxImageDiskSize(ptr noundef nonnull %.046.i) #5
  %i.fg = add i64 %i.ff, %.07.i                   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.046.i, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !57 ; 2 uses
  %.not.i57 = icmp eq ptr %i.fi, null
  br i1 %.not.i57, label %ImageListDiskSize.exit, label %.lr.ph.i, !llvm.loop !62

ImageListDiskSize.exit:                           ; preds = %.lr.ph.i, %bb.ao
  %.0.lcssa.i = phi i64 [ 0, %bb.ao ], [ %i.fg, %.lr.ph.i ]
  %i.fj = load ptr, ptr %i.bs, align 8, !tbaa !55
  %i.fk = call i64 @ChunkListDiskSize(ptr noundef %i.fj) #5
  %i.fl = load ptr, ptr %i.bx, align 8, !tbaa !56
  %i.fm = call i64 @ChunkListDiskSize(ptr noundef %i.fl) #5
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !59
  %i.fp = call i64 @ChunkListDiskSize(ptr noundef %i.fo) #5
  %i.fq = add i64 %i.ey, 12
  %i.fr = add i64 %i.fq, %i.fa
  %i.fs = add i64 %i.fr, %i.fd
  %i.ft = add i64 %i.fs, %.0.lcssa.i
  %i.fu = add i64 %i.ft, %i.fk
  %i.fv = add i64 %i.fu, %i.fm
  %i.fw = add i64 %i.fv, %i.fp                    ; 3 uses
  %i.fx = call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.fw) #5 ; 4 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %ImageListDiskSize.exit
  %i.fz = call ptr @MuxEmitRiffHeader(ptr noundef nonnull %i.fx, i64 noundef %i.fw) #5
  %i.ga = load ptr, ptr %i.ew, align 8, !tbaa !60
  %i.gb = call ptr @ChunkListEmit(ptr noundef %i.ga, ptr noundef %i.fz) #5
  %i.gc = load ptr, ptr %i.bo, align 8, !tbaa !54
  %i.gd = call ptr @ChunkListEmit(ptr noundef %i.gc, ptr noundef %i.gb) #5
  %i.ge = load ptr, ptr %i.fb, align 8, !tbaa !61
  %i.gf = call ptr @ChunkListEmit(ptr noundef %i.ge, ptr noundef %i.gd) #5 ; 2 uses
  %i.gg = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %.not6.i = icmp eq ptr %i.gg, null
  br i1 %.not6.i, label %ImageListEmit.exit, label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %bb.ap, %.lr.ph.i58
  %.08.i = phi ptr [ %i.gh, %.lr.ph.i58 ], [ %i.gf, %bb.ap ]
  %.057.i = phi ptr [ %i.gj, %.lr.ph.i58 ], [ %i.gg, %bb.ap ] ; 2 uses
  %i.gh = call ptr @MuxImageEmit(ptr noundef nonnull %.057.i, ptr noundef %.08.i) #5 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.057.i, i64 48
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !57 ; 2 uses
  %.not.i59 = icmp eq ptr %i.gj, null
  br i1 %.not.i59, label %ImageListEmit.exit, label %.lr.ph.i58, !llvm.loop !63

ImageListEmit.exit:                               ; preds = %.lr.ph.i58, %bb.ap
  %.0.lcssa.i60 = phi ptr [ %i.gf, %bb.ap ], [ %i.gh, %.lr.ph.i58 ]
  %i.gk = load ptr, ptr %i.bs, align 8, !tbaa !55
  %i.gl = call ptr @ChunkListEmit(ptr noundef %i.gk, ptr noundef %.0.lcssa.i60) #5
  %i.gm = load ptr, ptr %i.bx, align 8, !tbaa !56
  %i.gn = call ptr @ChunkListEmit(ptr noundef %i.gm, ptr noundef %i.gl) #5
  %i.go = load ptr, ptr %i.fn, align 8, !tbaa !59
  %i.gp = call ptr @ChunkListEmit(ptr noundef %i.go, ptr noundef %i.gn) #5 ; 0 uses
  %i.gq = call i32 @MuxValidate(ptr noundef nonnull %0) #5 ; 2 uses
  %.not50 = icmp eq i32 %i.gq, 1
  br i1 %.not50, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %ImageListEmit.exit
  call void @WebPSafeFree(ptr noundef nonnull %i.fx) #5
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %ImageListEmit.exit
  %.042 = phi i64 [ 0, %bb.aq ], [ %i.fw, %ImageListEmit.exit ]
  %.0 = phi ptr [ null, %bb.aq ], [ %i.fx, %ImageListEmit.exit ]
  store ptr %.0, ptr %1, align 8, !tbaa !12
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.042, ptr %i.gr, align 8, !tbaa !16
  br label %bb.as

bb.as:                                            ; preds = %CreateVP8XChunk.exit.thread, %MuxCleanup.exit.thread, %ImageListDiskSize.exit, %CreateVP8XChunk.exit, %bb.b, %bb.a, %bb.ar
  %.043 = phi i32 [ %i.gq, %bb.ar ], [ -1, %bb.a ], [ -1, %bb.b ], [ %.1.i.ph, %MuxCleanup.exit.thread ], [ %i.ev, %CreateVP8XChunk.exit ], [ -3, %ImageListDiskSize.exit ], [ -1, %CreateVP8XChunk.exit.thread ]
  ret i32 %.043
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i64 @ChunkListDiskSize(ptr noundef) local_unnamed_addr #2

declare ptr @MuxEmitRiffHeader(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @ChunkListEmit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MuxValidate(ptr noundef) local_unnamed_addr #2

end_hunk_0
