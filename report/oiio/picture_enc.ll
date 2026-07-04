inline.NumInlined: 24
inline.NumDeleted: 5
begin_hunk_0
; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @WebPPictureInitInternal(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.mask = and i32 %1, -256
  %.not = icmp eq i32 %.mask, 512
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %0, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, i8 0, i64 256, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @DummyWriter, ptr %i.a, align 8, !tbaa !7
  %i.b = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %0, i32 noundef 0) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @DummyWriter(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  ret i32 1
}

declare i32 @WebPEncodingSetError(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @WebPValidatePicture(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !15
  switch i32 %i.i, label %.sink.split [
    i32 0, label %bb.e
    i32 4, label %bb.e
  ]

.sink.split:                                      ; preds = %bb.d, %bb.b, %bb.c
  %.sink = phi i32 [ 5, %bb.b ], [ 5, %bb.c ], [ 4, %bb.d ]
  %i.j = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %0, i32 noundef %.sink) #7
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d, %bb.d, %bb.a
  %.0 = phi i32 [ 1, %bb.d ], [ 1, %bb.d ], [ 0, %bb.a ], [ %i.j, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @WebPPictureResetBuffers(ptr nofree noundef writeonly captures(none) initializes((16, 60), (72, 84), (224, 240)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.d, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @WebPPictureAllocARGB(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 2 uses
  %i.e = icmp slt i32 %i.b, 1
  %i.f = icmp slt i32 %i.d, 1
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %WebPValidatePicture.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15
  switch i32 %i.h, label %WebPValidatePicture.exit [
    i32 0, label %WebPValidatePicture.exit.thread
    i32 4, label %WebPValidatePicture.exit.thread
  ]

WebPValidatePicture.exit:                         ; preds = %bb.a, %bb.b
  %.sink.i = phi i32 [ 5, %bb.a ], [ 4, %bb.b ]
  %i.i = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %0, i32 noundef %.sink.i) #7
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %WebPValidatePicture.exit.thread

WebPValidatePicture.exit.thread:                  ; preds = %bb.b, %bb.b, %WebPValidatePicture.exit
  %i.j = sext i32 %i.b to i64
  %i.k = sext i32 %i.d to i64
  %i.l = mul nsw i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  tail call void @WebPSafeFree(ptr noundef %i.n) #7
  store ptr null, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 0, ptr %i.p, align 8, !tbaa !17
  %i.q = add nsw i64 %i.l, 31
  %i.r = tail call ptr @WebPSafeMalloc(i64 noundef %i.q, i64 noundef 4) #7 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %WebPValidatePicture.exit.thread
  %i.t = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %0, i32 noundef 1) #7
  br label %bb.e

bb.d:                                             ; preds = %WebPValidatePicture.exit.thread
  store ptr %i.r, ptr %i.m, align 8, !tbaa !18
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = add i64 %i.u, 31
  %i.w = and i64 %i.v, -32
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.o, align 8, !tbaa !16
  store i32 %i.b, ptr %i.p, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %WebPValidatePicture.exit, %bb.d, %bb.c
  %.0 = phi i32 [ %i.t, %bb.c ], [ 1, %bb.d ], [ 0, %WebPValidatePicture.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #3

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define hidden i32 @WebPPictureAllocYUVA(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14   ; 2 uses
  %i.g = sext i32 %i.d to i64                     ; 2 uses
  %i.h = add nsw i64 %i.g, 1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = icmp slt i32 %i.d, 1
  %i.l = icmp slt i32 %i.f, 1
  %or.cond68 = select i1 %i.k, i1 true, i1 %i.l   ; 2 uses
  br i1 %or.cond68, label %WebPValidatePicture.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %WebPValidatePicture.exit [
    i32 0, label %WebPValidatePicture.exit.thread
    i32 4, label %WebPValidatePicture.exit.thread
  ]

WebPValidatePicture.exit:                         ; preds = %bb.a, %bb.b
  %.sink.i = phi i32 [ 5, %bb.a ], [ 4, %bb.b ]
  %i.m = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %0, i32 noundef %.sink.i) #7
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %WebPValidatePicture.exit.thread

WebPValidatePicture.exit.thread:                  ; preds = %bb.b, %bb.b, %WebPValidatePicture.exit
  %i.n = sext i32 %i.f to i64                     ; 3 uses
  %i.o = add nsw i64 %i.n, 1
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.b, 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19
  tail call void @WebPSafeFree(ptr noundef %i.t) #7
  store ptr null, ptr %i.s, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.u, i8 0, i64 44, i1 false)
  %.not63 = icmp eq i32 %i.r, 0
  %i.v = select i1 %.not63, i32 0, i32 %i.d       ; 2 uses
  %i.w = mul nsw i64 %i.n, %i.g                   ; 2 uses
  %sext = shl i64 %i.i, 32
  %i.x = ashr exact i64 %sext, 32
  %sext64 = shl i64 %i.p, 32
  %i.y = ashr exact i64 %sext64, 32
  %i.z = mul nsw i64 %i.y, %i.x                   ; 3 uses
  %i.aa = sext i32 %i.v to i64
  %i.ab = mul nsw i64 %i.aa, %i.n                 ; 2 uses
  %i.ac = icmp slt i32 %i.j, 1
  %or.cond3 = select i1 %or.cond68, i1 true, i1 %i.ac
  %i.ad = icmp slt i32 %i.q, 1
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.ad
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %WebPValidatePicture.exit.thread
  %i.ae = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %0, i32 noundef 5) #7
  br label %bb.h

bb.d:                                             ; preds = %WebPValidatePicture.exit.thread
  %i.af = add nuw nsw i64 %i.ab, %i.w
  %i.ag = shl nuw nsw i64 %i.z, 1
  %i.ah = add i64 %i.af, %i.ag
  %i.ai = tail call ptr @WebPSafeMalloc(i64 noundef %i.ah, i64 noundef 1) #7 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %0, i32 noundef 1) #7
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  store ptr %i.ai, ptr %i.s, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.d, ptr %i.al, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.j, ptr %i.am, align 4, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.v, ptr %i.an, align 8, !tbaa !22
  store ptr %i.ai, ptr %i.u, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.w ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.z ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !25
  %.not65 = icmp eq i64 %i.ab, 0
  br i1 %.not65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.z
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.as, ptr %i.at, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %WebPValidatePicture.exit, %bb.e, %bb.c
  %.0 = phi i32 [ %i.ae, %bb.c ], [ %i.ak, %bb.e ], [ 0, %WebPValidatePicture.exit ], [ 1, %bb.g ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @WebPPictureAlloc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %WebPPictureFree.exit

WebPPictureFree.exit:                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  tail call void @WebPSafeFree(ptr noundef %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  tail call void @WebPSafeFree(ptr noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.g, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load i32, ptr %0, align 8, !tbaa !27
  %.not6 = icmp eq i32 %i.h, 0
  br i1 %.not6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %WebPPictureFree.exit
  %i.i = tail call i32 @WebPPictureAllocYUVA(ptr noundef nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %WebPPictureFree.exit
  %i.j = tail call i32 @WebPPictureAllocARGB(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ %i.j, %bb.c ], [ %i.i, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @WebPPictureFree(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  tail call void @WebPSafeFree(ptr noundef %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  tail call void @WebPSafeFree(ptr noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.g, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @WebPMemoryWriterInit(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @WebPMemoryWrite(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !29
  %i.f = add i64 %i.e, %1                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = shl i64 %i.h, 1
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.f)
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 8192) ; 2 uses
  %i.k = tail call ptr @WebPSafeMalloc(i64 noundef %spec.store.select, i64 noundef 1) #7 ; 3 uses
  %.not39 = icmp eq ptr %i.k, null
  br i1 %.not39, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.m, i64 %i.l, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !33
  tail call void @WebPSafeFree(ptr noundef %i.n) #7
  store ptr %i.k, ptr %i.b, align 8, !tbaa !33
  store i64 %spec.store.select, ptr %i.g, align 8, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.not40 = icmp eq i64 %1, 0
  br i1 %.not40, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.p = load i64, ptr %i.d, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %0, i64 %1, i1 false)
  %i.r = load i64, ptr %i.d, align 8, !tbaa !29
  %i.s = add i64 %i.r, %1
  store i64 %i.s, ptr %i.d, align 8, !tbaa !29
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.g, %bb.h, %bb.a
  %.1 = phi i32 [ 0, %bb.c ], [ 1, %bb.g ], [ 1, %bb.a ], [ 1, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define void @WebPMemoryWriterClear(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
end_hunk_0
