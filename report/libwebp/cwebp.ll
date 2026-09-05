Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/cwebp?download=true
inline.NumInlined: 29
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@PrintExtraInfoLossy:bb.a
  %i.cw = call i64 @fwrite(ptr nonnull @.str.232, i64 18, i64 1, ptr %i.cv) #12 ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  call fastcc void @PrintPercents(ptr noundef nonnull %i.cx)
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.cz = call i64 @fwrite(ptr nonnull @.str.233, i64 18, i64 1, ptr %i.cy) #12 ; 0 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  call fastcc void @PrintValues(ptr noundef nonnull %i.da)
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dc = call i64 @fwrite(ptr nonnull @.str.234, i64 18, i64 1, ptr %i.db) #12 ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  call fastcc void @PrintValues(ptr noundef nonnull %i.dd)
  br i1 %.not55, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.df = call i64 @fwrite(ptr nonnull @.str.235, i64 28, i64 1, ptr %i.de) #12 ; 0 uses
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dh = call i64 @fwrite(ptr nonnull @.str.236, i64 49, i64 1, ptr %i.dg) #12 ; 0 uses
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dj = call i64 @fwrite(ptr nonnull @.str.237, i64 18, i64 1, ptr %i.di) #12 ; 0 uses
  %i.dk = load i32, ptr %i.c, align 4, !tbaa !31
  call fastcc void @PrintByteCount(ptr noundef nonnull %i.a, i32 noundef %i.dk, ptr noundef null)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !32
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @PrintFullLosslessInfo(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.238)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.b
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @PrintMapInfo(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = add nsw i32 %i.d, 15
  %i.f = sdiv i32 %i.e, 16                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19   ; 2 uses
  %i.i = add nsw i32 %i.h, 15
  %i.j = sdiv i32 %i.i, 16                        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20   ; 2 uses
  %i.m = icmp sgt i32 %i.h, 0
  br i1 %i.m, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.n = icmp sgt i32 %i.d, 0
  %i.o = and i32 %i.l, -2
  %or.cond = icmp eq i32 %i.o, 6
  br i1 %i.n, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %smax113 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %i.p = zext nneg i32 %i.f to i64                ; 5 uses
  %smax119 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %wide.trip.count120 = zext nneg i32 %smax119 to i64 ; 5 uses
  %wide.trip.count114 = zext nneg i32 %smax113 to i64 ; 5 uses
  switch i32 %i.l, label %.preheader.lr.ph.split.us.split [
    i32 1, label %.preheader.us.us
    i32 2, label %.preheader.us.us44
    i32 3, label %.preheader.us.us51
  ]

.preheader.us.us:                                 ; preds = %.preheader.lr.ph.split.us, %._crit_edge.split.us.us.us
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %._crit_edge.split.us.us.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %i.q = mul nuw nsw i64 %indvars.iv92, %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %bb.c ], [ 0, %.preheader.us.us ] ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv86
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  %i.u = load i8, ptr %i.t, align 1, !tbaa !28
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.w = zext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr @.str.245, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !28
  %i.z = sext i8 %i.y to i32
  %fputc28.us.us.us = tail call i32 @fputc(i32 %i.z, ptr %i.v) ; 0 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count114
  br i1 %exitcond91.not, label %._crit_edge.split.us.us.us, label %bb.c, !llvm.loop !104

._crit_edge.split.us.us.us:                       ; preds = %bb.c
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc.us.us = tail call i32 @fputc(i32 10, ptr %i.aa) ; 0 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count120
  br i1 %exitcond97.not, label %.loopexit, label %.preheader.us.us, !llvm.loop !105

.preheader.us.us44:                               ; preds = %.preheader.lr.ph.split.us, %._crit_edge.split.split.us.us.us
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %._crit_edge.split.split.us.us.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %i.ab = mul nuw nsw i64 %indvars.iv80, %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.us.us44
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %bb.d ], [ 0, %.preheader.us.us44 ] ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv74
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !28
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ah = zext i8 %i.af to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @.str.246, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !28
  %i.ak = sext i8 %i.aj to i32
  %fputc27.us.us.us = tail call i32 @fputc(i32 %i.ak, ptr %i.ag) ; 0 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count114
  br i1 %exitcond79.not, label %._crit_edge.split.split.us.us.us, label %bb.d, !llvm.loop !104

._crit_edge.split.split.us.us.us:                 ; preds = %bb.d
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc.us.us47 = tail call i32 @fputc(i32 10, ptr %i.al) ; 0 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count120
  br i1 %exitcond85.not, label %.loopexit, label %.preheader.us.us44, !llvm.loop !105

.preheader.us.us51:                               ; preds = %.preheader.lr.ph.split.us, %._crit_edge.split.split.split.us.us.us
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %._crit_edge.split.split.split.us.us.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %i.am = mul nuw nsw i64 %indvars.iv68, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.us.us51
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader.us.us51 ] ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !28
  %i.ar = zext i8 %i.aq to i32
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.247, i32 noundef %i.ar) #14 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next, %wide.trip.count114
  br i1 %exitcond67.not, label %._crit_edge.split.split.split.us.us.us, label %bb.e, !llvm.loop !104

._crit_edge.split.split.split.us.us.us:           ; preds = %bb.e
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc.us.us54 = tail call i32 @fputc(i32 10, ptr %i.au) ; 0 uses
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count120
  br i1 %exitcond73.not, label %.loopexit, label %.preheader.us.us51, !llvm.loop !105

.preheader.lr.ph.split.us.split:                  ; preds = %.preheader.lr.ph.split.us
  br i1 %or.cond, label %.preheader.us.us57, label %.preheader.us

.preheader.us.us57:                               ; preds = %.preheader.lr.ph.split.us.split, %._crit_edge.split.split.split.split.us.us.us
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %._crit_edge.split.split.split.split.us.us.us ], [ 0, %.preheader.lr.ph.split.us.split ] ; 2 uses
  %i.av = mul nuw nsw i64 %indvars.iv116, %i.p
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.us.us57
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %bb.f ], [ 0, %.preheader.us.us57 ] ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv110
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !28
  %i.ba = zext i8 %i.az to i32
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.248, i32 noundef %i.ba) #14 ; 0 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge.split.split.split.split.us.us.us, label %bb.f, !llvm.loop !104

._crit_edge.split.split.split.split.us.us.us:     ; preds = %bb.f
  %i.bd = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc.us.us59 = tail call i32 @fputc(i32 10, ptr %i.bd) ; 0 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count120
  br i1 %exitcond121.not, label %.loopexit, label %.preheader.us.us57, !llvm.loop !105

.preheader.us:                                    ; preds = %.preheader.lr.ph.split.us.split, %._crit_edge.split.split.split.split.us37
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %._crit_edge.split.split.split.split.us37 ], [ 0, %.preheader.lr.ph.split.us.split ] ; 2 uses
  %i.be = mul nuw nsw i64 %indvars.iv104, %i.p
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.us
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %bb.g ], [ 0, %.preheader.us ] ; 2 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv98
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !28
  %i.bj = zext i8 %i.bi to i32
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.249, i32 noundef %i.bj) #14 ; 0 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count114
  br i1 %exitcond103.not, label %._crit_edge.split.split.split.split.us37, label %bb.g, !llvm.loop !104

._crit_edge.split.split.split.split.us37:         ; preds = %bb.g
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc.us = tail call i32 @fputc(i32 10, ptr %i.bm) ; 0 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count120
  br i1 %exitcond109.not, label %.loopexit, label %.preheader.us, !llvm.loop !105

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.035 = phi i32 [ %i.bo, %.preheader ], [ 0, %.preheader.preheader ]
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bn) ; 0 uses
  %i.bo = add nuw nsw i32 %.035, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bo, %smax
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !105

.loopexit:                                        ; preds = %.preheader, %._crit_edge.split.split.split.us.us.us, %._crit_edge.split.split.us.us.us, %._crit_edge.split.us.us.us, %._crit_edge.split.split.split.split.us37, %._crit_edge.split.split.split.split.us.us.us, %bb.b, %bb.a
  ret void
}

declare i32 @WebPPictureDistortion(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @PrintMetadataInfo(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.c = tail call i64 @fwrite(ptr nonnull @.str.250, i64 10, i64 1, ptr %i.b) #12 ; 0 uses
  %i.d = and i32 %1, 2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !107
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.251, i32 noundef %i.h) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = and i32 %1, 1
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !108
  %i.n = trunc i64 %i.m to i32
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.252, i32 noundef %i.n) #14 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = and i32 %1, 4
  %.not10 = icmp eq i32 %i.p, 0
  br i1 %.not10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !109
  %i.t = trunc i64 %i.s to i32
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.253, i32 noundef %i.t) #14 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f
  ret void
}

declare void @WebPMemoryWriterClear(ptr noundef) local_unnamed_addr #2

declare void @WebPFree(ptr noundef) local_unnamed_addr #2

declare void @MetadataFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @WebPPictureInitInternal(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WebPConfigInitInternal(ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WebPGetEnabledInputFileFormats() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @ImgIoUtilReadFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WebPGuessImageReader(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WebPPictureAlloc(ptr noundef) local_unnamed_addr #2

declare void @ImgIoUtilCopyPlane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WebPPictureYUVAToARGB(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @WebPMalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @WriteLE24(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -2147483648, 2147483647) %1) unnamed_addr #4 {
WriteLE.exit:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = trunc i32 %1 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !28
  %i.c = lshr i32 %1, 8
  %i.d = trunc i32 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !28
  %i.f = lshr i32 %1, 16
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.g, ptr %i.h, align 1, !tbaa !28
  %i.i = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 3, i64 noundef 1, ptr noundef nonnull %0)
  %i.j = icmp eq i64 %i.i, 1
  %i.k = zext i1 %i.j to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.k
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @PrintFullLosslessInfo(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.209, ptr noundef %1, i32 noundef %i.c) #14 ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.g = load i32, ptr %i.f, align 4, !tbaa !110
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load i32, ptr %i.h, align 4, !tbaa !111
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.210, i32 noundef %i.g, i32 noundef %i.i) #14 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 7 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !112
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.n = tail call i64 @fwrite(ptr nonnull @.str.211, i64 27, i64 1, ptr %i.m) #12 ; 0 uses
  %i.o = load i32, ptr %i.k, align 4, !tbaa !112  ; 2 uses
  %i.p = and i32 %i.o, 1
  %.not17 = icmp eq i32 %i.p, 0
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.r = tail call i64 @fwrite(ptr nonnull @.str.212, i64 11, i64 1, ptr %i.q) #12 ; 0 uses
  %.pre = load i32, ptr %i.k, align 4, !tbaa !112
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i32 [ %.pre, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.t = and i32 %i.s, 2
  %.not18 = icmp eq i32 %i.t, 0
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.v = tail call i64 @fwrite(ptr nonnull @.str.213, i64 22, i64 1, ptr %i.u) #12 ; 0 uses
  %.pre23 = load i32, ptr %i.k, align 4, !tbaa !112
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi i32 [ %.pre23, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.x = and i32 %i.w, 4
  %.not19 = icmp eq i32 %i.x, 0
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.z = tail call i64 @fwrite(ptr nonnull @.str.214, i64 15, i64 1, ptr %i.y) #12 ; 0 uses
  %.pre24 = load i32, ptr %i.k, align 4, !tbaa !112
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = phi i32 [ %.pre24, %bb.g ], [ %i.w, %bb.f ]
  %i.ab = and i32 %i.aa, 8
end_hunk_0
