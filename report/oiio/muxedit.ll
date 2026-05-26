inline.NumInlined: 43
inline.NumDeleted: 22
begin_hunk_0_@SetAlphaAndImageChunks:bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  br label %GetImageData.exit

bb.d:                                             ; preds = %bb.b
  %i.h = tail call ptr @WebPMuxCreateInternal(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 265) #5 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %.not21.i = icmp eq ptr %i.o, null
  br i1 %.not21.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !24
  %.pre.pre = load ptr, ptr %6, align 8, !tbaa !12
  %i.q = icmp eq ptr %.pre.pre, null
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %.pre = phi i1 [ %i.q, %bb.f ], [ true, %bb.e ]
  tail call void @WebPMuxDelete(ptr noundef nonnull %i.h)
  br label %GetImageData.exit

GetImageData.exit:                                ; preds = %bb.c, %.thread.i
  %.not17 = phi i1 [ true, %bb.c ], [ %.pre, %.thread.i ]
  %i.r = load ptr, ptr %5, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16
  %i.u = tail call i32 @VP8LCheckSignature(ptr noundef %i.r, i64 noundef %i.t) #5
  %.fr = freeze i32 %i.u
  %.not = icmp eq i32 %.fr, 0
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @kChunks, i64 72), align 8
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @kChunks, i64 60), align 4
  %spec.select = select i1 %.not, i32 %i.w, i32 %i.v
  br i1 %.not17, label %bb.i, label %bb.g

bb.g:                                             ; preds = %GetImageData.exit
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @kChunks, i64 48), align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @ChunkInit(ptr noundef nonnull %4) #5
  %i.y = call i32 @ChunkAssignData(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef %1, i32 noundef %i.x) #5 ; 2 uses
  %.not.i21 = icmp eq i32 %i.y, 1
  br i1 %.not.i21, label %bb.h, label %AddDataToChunkList.exit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = call i32 @ChunkSetHead(ptr noundef nonnull %4, ptr noundef nonnull %i.z) #5 ; 2 uses
  %.not10.i = icmp eq i32 %i.aa, 1
  br i1 %.not10.i, label %AddDataToChunkList.exit.thread, label %AddDataToChunkList.exit

AddDataToChunkList.exit.thread:                   ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.i

AddDataToChunkList.exit:                          ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.y, %bb.g ], [ %i.aa, %bb.h ]
  %i.ab = call ptr @ChunkRelease(ptr noundef nonnull %4) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.l

bb.i:                                             ; preds = %AddDataToChunkList.exit.thread, %GetImageData.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @ChunkInit(ptr noundef nonnull %3) #5
  %i.ac = call i32 @ChunkAssignData(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef %1, i32 noundef %spec.select) #5 ; 2 uses
  %.not.i22 = icmp eq i32 %i.ac, 1
  br i1 %.not.i22, label %bb.j, label %AddDataToChunkList.exit26

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = call i32 @ChunkSetHead(ptr noundef nonnull %3, ptr noundef nonnull %i.ad) #5 ; 2 uses
  %.not10.i25 = icmp eq i32 %i.ae, 1
  br i1 %.not10.i25, label %bb.k, label %AddDataToChunkList.exit26

AddDataToChunkList.exit26:                        ; preds = %bb.i, %bb.j
  %.0.i23 = phi i32 [ %i.ac, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = call ptr @ChunkRelease(ptr noundef nonnull %3) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.ag = call i32 @MuxImageFinalize(ptr noundef nonnull %2) #5
  %.not20 = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not20, i32 -1, i32 1
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %AddDataToChunkList.exit26, %AddDataToChunkList.exit, %bb.k
  %.0 = phi i32 [ %i.ah, %bb.k ], [ %.0.i23, %AddDataToChunkList.exit26 ], [ %.0.i, %AddDataToChunkList.exit ], [ -2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret i32 %.0
}

declare i32 @MuxImagePush(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @MuxImageRelease(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @WebPMuxPushFrame(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.WebPMuxImage, align 8       ; 9 uses
  %4 = alloca %struct.WebPData, align 8           ; 6 uses
  %5 = alloca %struct.WebPMuxFrameInfo, align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread80, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32
  %.not = icmp eq i32 %i.d, 3
  br i1 %.not, label %bb.c, label %.thread80

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !34
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread80, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp ugt i64 %i.h, 4294967286
  br i1 %i.i, label %.thread80, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %.not50 = icmp eq ptr %i.j, null
  br i1 %.not50, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not51 = icmp eq ptr %i.k, null
  br i1 %.not51, label %.thread80, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr %i.k, align 8, !tbaa !19
  %i.m = tail call i32 @ChunkGetIdFromTag(i32 noundef %i.l) #5
  %.pre = load i32, ptr %i.c, align 4, !tbaa !32
  %i.n = icmp eq i32 %i.m, %.pre
  br i1 %i.n, label %bb.h, label %.thread80

bb.h:                                             ; preds = %bb.g, %bb.e
  call void @MuxImageInit(ptr noundef nonnull %3) #5
  %i.o = call fastcc i32 @SetAlphaAndImageChunks(ptr noundef %1, i32 noundef %2, ptr noundef %3) ; 2 uses
  %.not53 = icmp eq i32 %i.o, 1
  br i1 %.not53, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @kChunks, i64 36), align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !37
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !39   ; 2 uses
  %i.s = and i32 %i.r, -2                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !40   ; 2 uses
  %i.v = and i32 %i.u, -2                         ; 2 uses
  store i32 %i.v, ptr %i.t, align 4, !tbaa !40
  %i.w = icmp sgt i32 %i.r, -1
  %i.x = icmp slt i32 %i.s, 16777216
  %or.cond4.not70 = and i1 %i.w, %i.x
  %i.y = icmp sgt i32 %i.u, -1
  %i.z = icmp slt i32 %i.v, 16777216
  %.not73 = and i1 %i.y, %i.z
  %or.cond10.not67 = select i1 %or.cond4.not70, i1 %.not73, i1 false
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp ult i32 %i.ab, 16777216
  %or.cond16.not65 = select i1 %or.cond10.not67, i1 %i.ac, i1 false
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = load i32, ptr %i.ad, align 8
  %.not54 = icmp ult i32 %i.ae, 2
  %or.cond59 = select i1 %or.cond16.not65, i1 %.not54, i1 false
  br i1 %or.cond59, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !42
  %i.aj = call fastcc i32 @CreateFrameData(i32 noundef %i.ag, i32 noundef %i.ai, ptr noundef %5, ptr noundef %4) ; 2 uses
  %.not55 = icmp eq i32 %i.aj, 1
  br i1 %.not55, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ak = call fastcc i32 @AddDataToChunkList(ptr noundef %4, i32 noundef 1, i32 noundef %i.p, ptr noundef %3) ; 2 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !12
  call void @WebPFree(ptr noundef %i.al) #5
  %.not56 = icmp eq i32 %i.ak, 1
  br i1 %.not56, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.k
  %.039.ph = phi i32 [ %i.ak, %bb.k ], [ -1, %bb.i ], [ %i.aj, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %i.am = call i32 @MuxImagePush(ptr noundef nonnull %3, ptr noundef nonnull %0) #5 ; 2 uses
  %.not57 = icmp eq i32 %i.am, 1
  br i1 %.not57, label %.thread80, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l, %bb.h
  %.140 = phi i32 [ %i.o, %bb.h ], [ %i.am, %bb.l ], [ %.039.ph, %.thread ]
  %i.an = call ptr @MuxImageRelease(ptr noundef nonnull %3) #5 ; 0 uses
  br label %.thread80

.thread80:                                        ; preds = %bb.f, %bb.l, %bb.c, %bb.d, %bb.b, %bb.a, %bb.g, %bb.m
  %.2 = phi i32 [ -1, %bb.g ], [ -1, %bb.a ], [ -1, %bb.b ], [ %.140, %bb.m ], [ -1, %bb.c ], [ -1, %bb.d ], [ 1, %bb.l ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret i32 %.2
}

declare i32 @ChunkGetIdFromTag(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -3, 2) i32 @CreateFrameData(i32 noundef %0, i32 noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @kChunks, i64 44), align 4, !tbaa !43
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.b) #5 ; 13 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !39
  %i.g = sdiv i32 %i.f, 2                         ; 2 uses
  %i.h = trunc i32 %i.g to i16
  store i16 %i.h, ptr %i.c, align 1
  %i.i = lshr i32 %i.g, 16
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.j, ptr %i.k, align 1, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  %i.o = sdiv i32 %i.n, 2                         ; 2 uses
  %i.p = trunc i32 %i.o to i16
  store i16 %i.p, ptr %i.l, align 1
  %i.q = lshr i32 %i.o, 16
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store i8 %i.r, ptr %i.s, align 1, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.u = add nsw i32 %0, -1                       ; 2 uses
  %i.v = trunc i32 %i.u to i16
  store i16 %i.v, ptr %i.t, align 1
  %i.w = lshr i32 %i.u, 16
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.x, ptr %i.y, align 1, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.aa = add nsw i32 %1, -1                      ; 2 uses
  %i.ab = trunc i32 %i.aa to i16
  store i16 %i.ab, ptr %i.z, align 1
  %i.ac = lshr i32 %i.aa, 16
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = trunc i32 %i.ah to i16
  store i16 %i.ai, ptr %i.af, align 1
  %i.aj = lshr i32 %i.ah, 16
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !45
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = select i1 %i.ao, i8 2, i8 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !46
  %i.as = icmp eq i32 %i.ar, 1
  %i.at = zext i1 %i.as to i8
  %i.au = or disjoint i8 %i.ap, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 %i.au, ptr %i.av, align 1, !tbaa !38
  store ptr %i.c, ptr %3, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.b, ptr %i.aw, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -3, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @AddDataToChunkList(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.WebPChunk, align 8          ; 6 uses
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
define i32 @WebPMuxSetAnimationParams(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
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
end_hunk_0
