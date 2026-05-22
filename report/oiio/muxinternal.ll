inline.NumInlined: 57
inline.NumDeleted: 14
begin_hunk_0_@MuxImageRelease:bb.a
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  tail call void @WebPSafeFree(ptr noundef nonnull %i.z) #11
  store ptr %i.af, ptr %i.y, align 8, !tbaa !26
  %.not.i29 = icmp eq ptr %i.af, null
  br i1 %.not.i29, label %ChunkListDelete.exit30, label %.lr.ph.i26, !llvm.loop !32

ChunkListDelete.exit30:                           ; preds = %ChunkDelete.exit.i28, %ChunkListDelete.exit23
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %ChunkListDelete.exit30
  %.0 = phi ptr [ %i.ah, %ChunkListDelete.exit30 ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @MuxImageCount(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %.not17 = icmp eq ptr %0, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.020 = phi i32 [ %.3, %bb.h ], [ 0, %bb.a ]    ; 3 uses
  %.01218 = phi ptr [ %i.k, %bb.h ], [ %0, %bb.a ] ; 4 uses
  switch i32 %1, label %bb.e [
    i32 10, label %bb.b
    i32 3, label %GetChunkListFromId.exit
    i32 5, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.a = add nsw i32 %.020, 1
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.01218, i64 8
  br label %GetChunkListFromId.exit

bb.d:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.01218, i64 16
  br label %GetChunkListFromId.exit

bb.e:                                             ; preds = %.lr.ph
  unreachable

GetChunkListFromId.exit:                          ; preds = %.lr.ph, %bb.c, %bb.d
  %.0.i = phi ptr [ %.01218, %.lr.ph ], [ %i.c, %bb.d ], [ %i.b, %bb.c ]
  %i.d = load ptr, ptr %.0.i, align 8, !tbaa !26  ; 2 uses
  %.not15 = icmp eq ptr %i.d, null
  br i1 %.not15, label %bb.h, label %bb.f

bb.f:                                             ; preds = %GetChunkListFromId.exit
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19
  switch i32 %i.e, label %ChunkGetIdFromTag.exit [
    i32 1480085590, label %bb.g
    i32 1346585417, label %.fold.split.i
    i32 1296649793, label %.fold.split12.i
    i32 1179471425, label %.fold.split13.i
    i32 1213221953, label %.fold.split14.i
    i32 540561494, label %.fold.split15.i
    i32 1278758998, label %.fold.split16.i
    i32 1179211845, label %.fold.split17.i
    i32 542133592, label %.fold.split18.i
  ]

.fold.split.i:                                    ; preds = %bb.f
  br label %bb.g

.fold.split12.i:                                  ; preds = %bb.f
  br label %bb.g

.fold.split13.i:                                  ; preds = %bb.f
  br label %bb.g

.fold.split14.i:                                  ; preds = %bb.f
  br label %bb.g

.fold.split15.i:                                  ; preds = %bb.f
  br label %bb.g

.fold.split16.i:                                  ; preds = %bb.f
  br label %bb.g

.fold.split17.i:                                  ; preds = %bb.f
  br label %bb.g

.fold.split18.i:                                  ; preds = %bb.f
  br label %bb.g

bb.g:                                             ; preds = %.fold.split18.i, %.fold.split17.i, %.fold.split16.i, %.fold.split15.i, %.fold.split14.i, %.fold.split13.i, %.fold.split12.i, %.fold.split.i, %bb.f
  %.lcssa.i = phi ptr [ @kChunks, %bb.f ], [ getelementptr inbounds nuw (i8, ptr @kChunks, i64 84), %.fold.split17.i ], [ getelementptr inbounds nuw (i8, ptr @kChunks, i64 12), %.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @kChunks, i64 24), %.fold.split12.i ], [ getelementptr inbounds nuw (i8, ptr @kChunks, i64 36), %.fold.split13.i ], [ getelementptr inbounds nuw (i8, ptr @kChunks, i64 48), %.fold.split14.i ], [ getelementptr inbounds nuw (i8, ptr @kChunks, i64 60), %.fold.split15.i ], [ getelementptr inbounds nuw (i8, ptr @kChunks, i64 72), %.fold.split16.i ], [ getelementptr inbounds nuw (i8, ptr @kChunks, i64 96), %.fold.split18.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  br label %ChunkGetIdFromTag.exit

ChunkGetIdFromTag.exit:                           ; preds = %bb.f, %bb.g
  %.06.i = phi i32 [ %i.g, %bb.g ], [ 9, %bb.f ]
  %i.h = icmp eq i32 %.06.i, %1
  %i.i = zext i1 %i.h to i32
  %spec.select = add nsw i32 %.020, %i.i
  br label %bb.h

bb.h:                                             ; preds = %GetChunkListFromId.exit, %ChunkGetIdFromTag.exit, %bb.b
  %.3 = phi i32 [ %i.a, %bb.b ], [ %spec.select, %ChunkGetIdFromTag.exit ], [ %.020, %GetChunkListFromId.exit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01218, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.3, %bb.h ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -3, 2) i32 @MuxImagePush(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %.pre = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %.not23 = icmp eq ptr %.pre, null
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01524 = phi ptr [ %i.b, %.lr.ph ], [ %1, %bb.a ]
  %i.a = phi ptr [ %i.c, %.lr.ph ], [ %.pre, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.015.lcssa = phi ptr [ %1, %bb.a ], [ %.01524, %.lr.ph ] ; 2 uses
  %i.e = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef 56) #11 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 48, i1 false), !tbaa.struct !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr null, ptr %i.g, align 8, !tbaa !37
  %i.h = load ptr, ptr %.015.lcssa, align 8, !tbaa !41 ; 2 uses
  %.not19 = icmp eq ptr %i.h, null
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.e, ptr %i.i, align 8, !tbaa !37
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %.015.lcssa, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %._crit_edge
  %.014 = phi i32 [ -3, %._crit_edge ], [ 1, %bb.d ], [ 1, %bb.c ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define hidden ptr @MuxImageDelete(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @MuxImageRelease(ptr noundef %0)
  tail call void @WebPSafeFree(ptr noundef %0) #11
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @MuxImageDeleteNth(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !41  ; 4 uses
  %.not17.i.i = icmp eq ptr %.pre.i, null         ; 2 uses
  br i1 %i.a, label %bb.b, label %MuxImageCount.exit.i

bb.b:                                             ; preds = %bb.a
  br i1 %.not17.i.i, label %SearchImageToGetOrDelete.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.020.i.i = phi i32 [ %i.b, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.01218.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %.pre.i, %bb.b ]
  %i.b = add nuw nsw i32 %.020.i.i, 1             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01218.i.i, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i, !llvm.loop !40

MuxImageCount.exit.i:                             ; preds = %bb.a
  br i1 %.not17.i.i, label %SearchImageToGetOrDelete.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i, %MuxImageCount.exit.i
  %.01834.i = phi i32 [ %1, %MuxImageCount.exit.i ], [ %i.b, %.lr.ph.i.i ] ; 2 uses
  %.not22.i8 = icmp eq i32 %.01834.i, 1
  br i1 %.not22.i8, label %SearchImageToGetOrDelete.exit, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.e = add i32 %i.f, 1                          ; 2 uses
  %.not22.i = icmp eq i32 %i.e, %.01834.i
  br i1 %.not22.i, label %SearchImageToGetOrDelete.exit.loopexit, label %.lr.ph, !llvm.loop !43

.lr.ph:                                           ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %i.f = phi i32 [ %i.e, %.lr.ph.i ], [ 1, %.lr.ph.preheader.i ]
  %i.g = phi ptr [ %i.i, %.lr.ph.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %SearchImageToGetOrDelete.exit.thread, label %.lr.ph.i, !llvm.loop !43

SearchImageToGetOrDelete.exit.loopexit:           ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  br label %SearchImageToGetOrDelete.exit

SearchImageToGetOrDelete.exit:                    ; preds = %SearchImageToGetOrDelete.exit.loopexit, %.lr.ph.preheader.i
  %i.k = phi ptr [ %.pre.i, %.lr.ph.preheader.i ], [ %i.i, %SearchImageToGetOrDelete.exit.loopexit ] ; 2 uses
  %.03.lcssa = phi ptr [ %0, %.lr.ph.preheader.i ], [ %i.j, %SearchImageToGetOrDelete.exit.loopexit ]
  %i.l = tail call ptr @MuxImageRelease(ptr noundef nonnull %i.k)
  tail call void @WebPSafeFree(ptr noundef nonnull %i.k) #11
  store ptr %i.l, ptr %.03.lcssa, align 8, !tbaa !41
  br label %SearchImageToGetOrDelete.exit.thread

SearchImageToGetOrDelete.exit.thread:             ; preds = %.lr.ph, %MuxImageCount.exit.i, %bb.b, %SearchImageToGetOrDelete.exit
  %.0 = phi i32 [ 1, %SearchImageToGetOrDelete.exit ], [ 0, %bb.b ], [ 0, %MuxImageCount.exit.i ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @MuxImageGetNth(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !41  ; 4 uses
  %.not17.i.i = icmp eq ptr %.pre.i, null         ; 2 uses
  br i1 %i.a, label %bb.b, label %MuxImageCount.exit.i

bb.b:                                             ; preds = %bb.a
  br i1 %.not17.i.i, label %SearchImageToGetOrDelete.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.020.i.i = phi i32 [ %i.b, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.01218.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %.pre.i, %bb.b ]
  %i.b = add nuw nsw i32 %.020.i.i, 1             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01218.i.i, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i, !llvm.loop !40

MuxImageCount.exit.i:                             ; preds = %bb.a
  br i1 %.not17.i.i, label %SearchImageToGetOrDelete.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i, %MuxImageCount.exit.i
  %.01834.i = phi i32 [ %1, %MuxImageCount.exit.i ], [ %i.b, %.lr.ph.i.i ] ; 2 uses
  %.not22.i7 = icmp eq i32 %.01834.i, 1
  br i1 %.not22.i7, label %SearchImageToGetOrDelete.exit, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.e = add i32 %i.f, 1                          ; 2 uses
  %.not22.i = icmp eq i32 %i.e, %.01834.i
  br i1 %.not22.i, label %SearchImageToGetOrDelete.exit, label %.lr.ph, !llvm.loop !43

.lr.ph:                                           ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %i.f = phi i32 [ %i.e, %.lr.ph.i ], [ 1, %.lr.ph.preheader.i ]
  %i.g = phi ptr [ %i.i, %.lr.ph.i ], [ %.pre.i, %.lr.ph.preheader.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %SearchImageToGetOrDelete.exit.thread, label %.lr.ph.i, !llvm.loop !43

SearchImageToGetOrDelete.exit:                    ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.j = phi ptr [ %.pre.i, %.lr.ph.preheader.i ], [ %i.i, %.lr.ph.i ]
  store ptr %i.j, ptr %2, align 8, !tbaa !41
  br label %SearchImageToGetOrDelete.exit.thread

SearchImageToGetOrDelete.exit.thread:             ; preds = %.lr.ph, %MuxImageCount.exit.i, %bb.b, %SearchImageToGetOrDelete.exit
  %.0 = phi i32 [ 1, %SearchImageToGetOrDelete.exit ], [ 0, %bb.b ], [ 0, %MuxImageCount.exit.i ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @MuxImageDiskSize(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %.val20 = load i64, ptr %i.b, align 8, !tbaa !33
  %i.c = add i64 %.val20, 1
  %i.d = and i64 %i.c, 4294967294
  %i.e = add nuw nsw i64 %i.d, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %.not16 = icmp eq ptr %i.g, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val19 = load i64, ptr %i.h, align 8, !tbaa !33
  %i.i = add i64 %.val19, 1
  %i.j = and i64 %i.i, 4294967294
  %i.k = add nuw nsw i64 %.0, 8
  %i.l = add nuw nsw i64 %i.k, %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.l, %bb.d ], [ %.0, %bb.c ]   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 2 uses
  %.not17 = icmp eq ptr %i.n, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %.val = load i64, ptr %i.o, align 8, !tbaa !33
  %i.p = add i64 %.val, 1
  %i.q = and i64 %i.p, 4294967294
  %i.r = add nuw nsw i64 %.1, 8
  %i.s = add nuw nsw i64 %i.r, %i.q
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i64 [ %i.s, %bb.f ], [ %.1, %bb.e ]   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47   ; 2 uses
  %.not18 = icmp eq ptr %i.u, null
  br i1 %.not18, label %bb.h, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.07.i = phi i64 [ %i.z, %.lr.ph.i ], [ 0, %bb.g ]
  %.046.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.u, %bb.g ] ; 2 uses
  %i.v = getelementptr i8, ptr %.046.i, i64 16
  %.04.val.i = load i64, ptr %i.v, align 8, !tbaa !33
  %i.w = add i64 %.04.val.i, 1
  %i.x = and i64 %i.w, 4294967294
  %i.y = add i64 %.07.i, 8
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.046.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %ChunkListDiskSize.exit, label %.lr.ph.i, !llvm.loop !36

ChunkListDiskSize.exit:                           ; preds = %.lr.ph.i
  %i.ac = add i64 %i.z, %.2
  br label %bb.h

bb.h:                                             ; preds = %ChunkListDiskSize.exit, %bb.g
  %.3 = phi i64 [ %i.ac, %ChunkListDiskSize.exit ], [ %.2, %bb.g ]
  ret i64 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @MuxImageEmit(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %.val20.i = load i64, ptr %i.b, align 8, !tbaa !33 ; 4 uses
  %i.c = add i64 %.val20.i, 1
  %i.d = and i64 %i.c, 4294967294                 ; 2 uses
  %i.e = add nuw nsw i64 %i.d, 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %.not16.i = icmp eq ptr %i.g, null
  br i1 %.not16.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val19.i = load i64, ptr %i.h, align 8, !tbaa !33
  %i.i = add i64 %.val19.i, 1
  %i.j = and i64 %i.i, 4294967294
  %i.k = add nuw nsw i64 %i.d, 16
  %i.l = add nuw nsw i64 %i.k, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i64 [ %i.l, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 2 uses
  %.not17.i = icmp eq ptr %i.n, null
  br i1 %.not17.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %.val.i = load i64, ptr %i.o, align 8, !tbaa !33
  %i.p = add i64 %.val.i, 1
  %i.q = and i64 %i.p, 4294967294
  %i.r = add nuw nsw i64 %.1.i, 8
  %i.s = add nuw nsw i64 %i.r, %i.q
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2.i = phi i64 [ %i.s, %bb.e ], [ %.1.i, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47   ; 2 uses
  %.not18.i = icmp eq ptr %i.u, null
  br i1 %.not18.i, label %MuxImageDiskSize.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ 0, %bb.f ]
  %.046.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.u, %bb.f ] ; 2 uses
  %i.v = getelementptr i8, ptr %.046.i.i, i64 16
  %.04.val.i.i = load i64, ptr %i.v, align 8, !tbaa !33
  %i.w = add i64 %.04.val.i.i, 1
  %i.x = and i64 %i.w, 4294967294
  %i.y = add i64 %.07.i.i, 8
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.046.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %ChunkListDiskSize.exit.i, label %.lr.ph.i.i, !llvm.loop !36

ChunkListDiskSize.exit.i:                         ; preds = %.lr.ph.i.i
  %i.ac = add i64 %i.z, %.2.i
  br label %MuxImageDiskSize.exit

MuxImageDiskSize.exit:                            ; preds = %bb.f, %ChunkListDiskSize.exit.i
  %.3.i = phi i64 [ %i.ac, %ChunkListDiskSize.exit.i ], [ %.2.i, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !19
  store i32 %i.ae, ptr %1, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = trunc i64 %.3.i to i32
  %i.ah = add i32 %i.ag, -8
  store i32 %i.ah, ptr %i.af, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.aj, i64 %.val20.i, i1 false)
  %i.ak = and i64 %.val20.i, 1
  %.not.i21 = icmp eq i64 %i.ak, 0
  br i1 %.not.i21, label %ChunkEmitSpecial.exit, label %bb.g

bb.g:                                             ; preds = %MuxImageDiskSize.exit
  %i.al = getelementptr i8, ptr %1, i64 %.val20.i
  %i.am = getelementptr i8, ptr %i.al, i64 8
  store i8 0, ptr %i.am, align 1, !tbaa !18
  br label %ChunkEmitSpecial.exit

ChunkEmitSpecial.exit:                            ; preds = %MuxImageDiskSize.exit, %bb.g
  %.val.i22 = load i64, ptr %i.b, align 8, !tbaa !33
  %i.an = add i64 %.val.i22, 1
  %i.ao = and i64 %i.an, 4294967294
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  br label %bb.h

bb.h:                                             ; preds = %ChunkEmitSpecial.exit, %bb.a
  %.0 = phi ptr [ %i.aq, %ChunkEmitSpecial.exit ], [ %1, %bb.a ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45 ; 4 uses
  %.not18 = icmp eq ptr %i.as, null
  br i1 %.not18, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !33 ; 4 uses
  %i.aw = load i32, ptr %i.as, align 8, !tbaa !19
  store i32 %i.aw, ptr %.0, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.ay = trunc i64 %i.av to i32
  store i32 %i.ay, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr align 1 %i.ba, i64 %i.av, i1 false)
  %i.bb = and i64 %i.av, 1
  %.not.i23 = icmp eq i64 %i.bb, 0
  br i1 %.not.i23, label %ChunkEmit.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr i8, ptr %.0, i64 %i.av
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  store i8 0, ptr %i.bd, align 1, !tbaa !18
  br label %ChunkEmit.exit

ChunkEmit.exit:                                   ; preds = %bb.i, %bb.j
  %.val.i24 = load i64, ptr %i.au, align 8, !tbaa !33
  %i.be = add i64 %.val.i24, 1
  %i.bf = and i64 %i.be, 4294967294
  %i.bg = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  br label %bb.k

bb.k:                                             ; preds = %ChunkEmit.exit, %bb.h
  %.1 = phi ptr [ %i.bh, %ChunkEmit.exit ], [ %.0, %bb.h ] ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !46 ; 4 uses
  %.not19 = icmp eq ptr %i.bj, null
  br i1 %.not19, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !33 ; 4 uses
  %i.bn = load i32, ptr %i.bj, align 8, !tbaa !19
  store i32 %i.bn, ptr %.1, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.bp = trunc i64 %i.bm to i32
  store i32 %i.bp, ptr %i.bo, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %i.br, i64 %i.bm, i1 false)
  %i.bs = and i64 %i.bm, 1
  %.not.i25 = icmp eq i64 %i.bs, 0
  br i1 %.not.i25, label %ChunkEmit.exit27, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr i8, ptr %.1, i64 %i.bm
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  store i8 0, ptr %i.bu, align 1, !tbaa !18
  br label %ChunkEmit.exit27

ChunkEmit.exit27:                                 ; preds = %bb.l, %bb.m
  %.val.i26 = load i64, ptr %i.bl, align 8, !tbaa !33
  %i.bv = add i64 %.val.i26, 1
  %i.bw = and i64 %i.bv, 4294967294
  %i.bx = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  br label %bb.n

bb.n:                                             ; preds = %ChunkEmit.exit27, %bb.k
  %.2 = phi ptr [ %i.by, %ChunkEmit.exit27 ], [ %.1, %bb.k ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !47 ; 2 uses
  %.not20 = icmp eq ptr %i.ca, null
  br i1 %.not20, label %ChunkListEmit.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %ChunkEmit.exit.i
  %.08.i = phi ptr [ %i.cp, %ChunkEmit.exit.i ], [ %.2, %bb.n ] ; 5 uses
  %.057.i = phi ptr [ %i.cr, %ChunkEmit.exit.i ], [ %i.ca, %bb.n ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.057.i, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.057.i, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !33 ; 4 uses
  %i.ce = load i32, ptr %.057.i, align 8, !tbaa !19
  store i32 %i.ce, ptr %.08.i, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  %i.cg = trunc i64 %i.cd to i32
  store i32 %i.cg, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr align 1 %i.ci, i64 %i.cd, i1 false)
  %i.cj = and i64 %i.cd, 1
  %.not.i.i28 = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i28, label %ChunkEmit.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.ck = getelementptr i8, ptr %.08.i, i64 %i.cd
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  store i8 0, ptr %i.cl, align 1, !tbaa !18
  br label %ChunkEmit.exit.i

ChunkEmit.exit.i:                                 ; preds = %bb.o, %.lr.ph.i
  %.val.i.i = load i64, ptr %i.cc, align 8, !tbaa !33
  %i.cm = add i64 %.val.i.i, 1
  %i.cn = and i64 %i.cm, 4294967294
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.057.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !15 ; 2 uses
  %.not.i29 = icmp eq ptr %i.cr, null
  br i1 %.not.i29, label %ChunkListEmit.exit, label %.lr.ph.i, !llvm.loop !35

ChunkListEmit.exit:                               ; preds = %ChunkEmit.exit.i, %bb.n
  %.3 = phi ptr [ %.2, %bb.n ], [ %i.cp, %ChunkEmit.exit.i ]
  ret ptr %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @MuxHasAlpha(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not5 = icmp eq ptr %0, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.06 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.06, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.06, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.03 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.03
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden nonnull ptr @MuxEmitRiffHeader(ptr noundef writeonly captures(ret: address, provenance) initializes((0, 12)) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  store i32 1179011410, ptr %0, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = trunc i64 %1 to i32
  %i.c = add i32 %i.b, -8
  store i32 %i.c, ptr %i.a, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1346520407, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @MuxGetChunkListFromId(ptr noundef readnone captures(ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, 9
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.MuxGetChunkListFromId, i64 %i.b
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sink = phi i64 [ %switch.load, %switch.lookup ], [ 48, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden i32 @MuxValidate(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  %i.j = icmp eq ptr %0, null
  br i1 %i.j, label %.critedge80, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !50
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.critedge80, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 @WebPMuxGetFeatures(ptr noundef nonnull %0, ptr noundef nonnull %i.i) #11 ; 2 uses
  %.not = icmp eq i32 %i.m, 1
  br i1 %.not, label %bb.d, label %.critedge80

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.i, align 4, !tbaa !3
  %i.o = call i32 @WebPMuxNumChunks(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not.i = icmp eq i32 %i.o, 1
  br i1 %.not.i, label %bb.e, label %.critedge80

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %.critedge80, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = and i32 %i.n, 32
  %i.s = icmp ne i32 %i.r, 0
  %i.t = icmp ne i32 %i.p, 1
  %.not16.i = xor i1 %i.s, %i.t
  br i1 %.not16.i, label %ValidateChunk.exit, label %.critedge80

ValidateChunk.exit:                               ; preds = %bb.f
  %i.u = load i32, ptr %i.i, align 4, !tbaa !3
  %i.v = call i32 @WebPMuxNumChunks(ptr noundef nonnull %0, i32 noundef 7, ptr noundef nonnull %i.b) #11 ; 2 uses
  %.not.i81 = icmp eq i32 %i.v, 1
  br i1 %.not.i81, label %bb.g, label %.critedge80

bb.g:                                             ; preds = %ValidateChunk.exit
  %i.w = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %.critedge80, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = and i32 %i.u, 8
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = icmp ne i32 %i.w, 1
  %.not16.i83 = xor i1 %i.z, %i.aa
  br i1 %.not16.i83, label %ValidateChunk.exit84, label %.critedge80

ValidateChunk.exit84:                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.i, align 4, !tbaa !3
  %i.ac = call i32 @WebPMuxNumChunks(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull %i.c) #11 ; 2 uses
  %.not.i85 = icmp eq i32 %i.ac, 1
  br i1 %.not.i85, label %bb.i, label %.critedge80

bb.i:                                             ; preds = %ValidateChunk.exit84
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %.critedge80, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = and i32 %i.ab, 4
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = icmp ne i32 %i.ad, 1
  %.not16.i87 = xor i1 %i.ag, %i.ah
  br i1 %.not16.i87, label %ValidateChunk.exit88, label %.critedge80

ValidateChunk.exit88:                             ; preds = %bb.j
  %i.ai = call i32 @WebPMuxNumChunks(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %i.d) #11 ; 2 uses
  %.not.i89 = icmp eq i32 %i.ai, 1
  br i1 %.not.i89, label %bb.k, label %.critedge80

bb.k:                                             ; preds = %ValidateChunk.exit88
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !3
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %.critedge80, label %ValidateChunk.exit91

ValidateChunk.exit91:                             ; preds = %bb.k
  %i.al = call i32 @WebPMuxNumChunks(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %i.e) #11 ; 2 uses
  %.not.i92 = icmp eq i32 %i.al, 1
  br i1 %.not.i92, label %bb.l, label %.critedge80

bb.l:                                             ; preds = %ValidateChunk.exit91
  %i.am = load i32, ptr %i.i, align 4, !tbaa !3
  %i.an = and i32 %i.am, 2
  %.not67 = icmp eq i32 %i.an, 0
  %i.ao = load i32, ptr %i.d, align 4, !tbaa !3   ; 2 uses
  %i.ap = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %.not67, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = icmp eq i32 %i.ao, 0
  %i.ar = icmp eq i32 %i.ap, 0
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %.critedge80, label %.critedge77

.critedge:                                        ; preds = %bb.l
  %i.as = icmp eq i32 %i.ao, 1
  %i.at = icmp sgt i32 %i.ap, 0
  %or.cond4 = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond4, label %.critedge80, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.au = load ptr, ptr %0, align 8, !tbaa !50    ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.critedge80, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !37
  %.not68 = icmp eq ptr %i.ax, null
  br i1 %.not68, label %bb.p, label %.critedge80

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.q, label %.critedge77

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !53
  %.not69 = icmp eq i32 %i.bc, %i.az
  br i1 %.not69, label %bb.r, label %.critedge80

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !55
  %.not70 = icmp eq i32 %i.be, %i.bg
  br i1 %.not70, label %.critedge77, label %.critedge80

.critedge77:                                      ; preds = %bb.m, %bb.p, %bb.r
  %i.bh = call i32 @WebPMuxNumChunks(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.f) #11 ; 2 uses
  %.not.i95 = icmp eq i32 %i.bh, 1
  br i1 %.not.i95, label %bb.s, label %.critedge80

bb.s:                                             ; preds = %.critedge77
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !3
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %.critedge80, label %ValidateChunk.exit97

ValidateChunk.exit97:                             ; preds = %bb.s
  %i.bk = call i32 @WebPMuxNumChunks(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull %i.g) #11 ; 2 uses
  %.not.i98 = icmp eq i32 %i.bk, 1
  br i1 %.not.i98, label %bb.t, label %.critedge80

bb.t:                                             ; preds = %ValidateChunk.exit97
  %i.bl = load i32, ptr %i.f, align 4, !tbaa !3   ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  %i.bn = load i32, ptr %i.g, align 4
  %i.bo = icmp ne i32 %i.bn, 1
  %or.cond6 = select i1 %i.bm, i1 %i.bo, i1 false
  br i1 %or.cond6, label %.critedge80, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %.not5.i = icmp eq ptr %i.bp, null
  br i1 %.not5.i, label %MuxHasAlpha.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %bb.v
  %.06.i = phi ptr [ %i.bt, %bb.v ], [ %i.bp, %bb.u ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !48
  %.not4.i = icmp eq i32 %i.br, 0
  br i1 %.not4.i, label %bb.v, label %MuxHasAlpha.exit

bb.v:                                             ; preds = %.lr.ph.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !37 ; 2 uses
  %.not.i101 = icmp eq ptr %i.bt, null
  br i1 %.not.i101, label %MuxHasAlpha.exit.thread, label %.lr.ph.i, !llvm.loop !49

MuxHasAlpha.exit:                                 ; preds = %.lr.ph.i
  %i.bu = icmp sgt i32 %i.bl, 0
  br i1 %i.bu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %MuxHasAlpha.exit
  %i.bv = load i32, ptr %i.i, align 4, !tbaa !3
  %i.bw = and i32 %i.bv, 16
  %.not75 = icmp eq i32 %i.bw, 0
  br i1 %.not75, label %.critedge80, label %MuxHasAlpha.exit.thread

bb.x:                                             ; preds = %MuxHasAlpha.exit
  %i.bx = call i32 @WebPMuxNumChunks(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull %i.h) #11 ; 2 uses
  %.not74 = icmp eq i32 %i.bx, 1
  br i1 %.not74, label %bb.y, label %.critedge80

bb.y:                                             ; preds = %bb.x
  %i.by = load i32, ptr %i.h, align 4, !tbaa !3
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.critedge80, label %MuxHasAlpha.exit.thread

MuxHasAlpha.exit.thread:                          ; preds = %bb.v, %bb.u, %bb.w, %bb.y
  br label %.critedge80

.critedge80:                                      ; preds = %bb.s, %.critedge77, %bb.k, %ValidateChunk.exit88, %bb.j, %bb.i, %ValidateChunk.exit84, %bb.h, %bb.g, %ValidateChunk.exit, %bb.f, %bb.e, %bb.d, %ValidateChunk.exit97, %ValidateChunk.exit91, %bb.m, %bb.o, %.critedge, %bb.q, %bb.r, %bb.n, %bb.y, %bb.x, %bb.w, %bb.t, %bb.c, %bb.b, %bb.a, %MuxHasAlpha.exit.thread
  %.3 = phi i32 [ -1, %bb.y ], [ -1, %bb.a ], [ -1, %bb.b ], [ %i.m, %bb.c ], [ %i.bk, %ValidateChunk.exit97 ], [ %i.o, %bb.d ], [ %i.v, %ValidateChunk.exit ], [ %i.ac, %ValidateChunk.exit84 ], [ -1, %bb.m ], [ %i.ai, %ValidateChunk.exit88 ], [ %i.al, %ValidateChunk.exit91 ], [ 1, %MuxHasAlpha.exit.thread ], [ -1, %bb.t ], [ -1, %bb.w ], [ %i.bx, %bb.x ], [ -1, %bb.n ], [ -1, %bb.r ], [ -1, %bb.q ], [ -1, %.critedge ], [ -1, %bb.o ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.i ], [ -1, %bb.k ], [ -1, %bb.s ], [ %i.bh, %.critedge77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.3
}

declare i32 @WebPMuxGetFeatures(ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @WebPMuxNumChunks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @WebPFree(ptr noundef) local_unnamed_addr #8

declare ptr @WebPMalloc(i64 noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 4}
!8 = !{!"WebPChunk", !4, i64 0, !4, i64 4, !9, i64 8, !13, i64 24}
!9 = !{!"WebPData", !10, i64 0, !12, i64 8}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p1 _ZTS9WebPChunk", !11, i64 0}
!14 = !{!9, !10, i64 0}
!15 = !{!8, !13, i64 24}
!16 = !{!17, !4, i64 4}
!17 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!18 = !{!5, !5, i64 0}
!19 = !{!8, !4, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!9, !12, i64 8}
!23 = !{i64 0, i64 8, !24, i64 8, i64 8, !25}
!24 = !{!10, !10, i64 0}
!25 = !{!12, !12, i64 0}
!26 = !{!13, !13, i64 0}
!27 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 8, !24, i64 16, i64 8, !25, i64 24, i64 8, !26}
!28 = !{!29, !29, i64 0}
!29 = !{!"p2 _ZTS9WebPChunk", !30, i64 0}
!30 = !{!"any p2 pointer", !11, i64 0}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
!33 = !{!8, !12, i64 16}
!34 = !{!8, !10, i64 8}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = !{!38, !39, i64 48}
!38 = !{!"WebPMuxImage", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !39, i64 48}
!39 = !{!"p1 _ZTS12WebPMuxImage", !11, i64 0}
!40 = distinct !{!40, !21}
!41 = !{!39, !39, i64 0}
!42 = !{i64 0, i64 8, !26, i64 8, i64 8, !26, i64 16, i64 8, !26, i64 24, i64 8, !26, i64 32, i64 4, !3, i64 36, i64 4, !3, i64 40, i64 4, !3, i64 44, i64 4, !3, i64 48, i64 8, !41}
!43 = distinct !{!43, !21}
!44 = !{!38, !13, i64 0}
!45 = !{!38, !13, i64 8}
!46 = !{!38, !13, i64 16}
!47 = !{!38, !13, i64 24}
!48 = !{!38, !4, i64 40}
!49 = distinct !{!49, !21}
!50 = !{!51, !39, i64 0}
!51 = !{!"WebPMux", !39, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !4, i64 56, !4, i64 60}
!52 = !{!51, !4, i64 56}
!53 = !{!38, !4, i64 32}
!54 = !{!38, !4, i64 36}
!55 = !{!51, !4, i64 60}
end_hunk_0
