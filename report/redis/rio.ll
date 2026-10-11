Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/rio?download=true
inline.NumInlined: 29
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rioWriteBulkString:bb.a
  call void %i.ax(ptr noundef nonnull %0, ptr noundef %.02537.i16, i64 noundef %i.aw) #16, !inline_history !0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader.i13
  %i.ay = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.az = call i64 %i.ay(ptr noundef nonnull %0, ptr noundef %.02537.i16, i64 noundef %i.aw) #16, !inline_history !0
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.thread.i20, label %bb.l

.thread.i20:                                      ; preds = %bb.k
  %i.bb = load i64, ptr %i.j, align 8, !tbaa !33
  %i.bc = or i64 %i.bb, 2
  store i64 %i.bc, ptr %i.j, align 8, !tbaa !33
  br label %rioWrite.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.02537.i16, i64 %i.aw
  %i.be = sub i64 %.02438.i15, %i.aw              ; 2 uses
  %i.bf = load i64, ptr %i.p, align 8, !tbaa !36
  %i.bg = add i64 %i.bf, %i.aw
  store i64 %i.bg, ptr %i.p, align 8, !tbaa !36
  %.not31.i19 = icmp eq i64 %i.be, 0
  br i1 %.not31.i19, label %rioWrite.exit21, label %.preheader.i13

rioWrite.exit21:                                  ; preds = %bb.l
  %i.bh = add i64 %2, 2
  %i.bi = add i64 %i.bh, %i.i
  br label %rioWrite.exit.thread

rioWrite.exit.thread:                             ; preds = %.thread.i20, %rioWrite.exit, %.thread.i, %bb.f, %rioWriteBulkCount.exit.thread, %rioWrite.exit21
  %.0 = phi i64 [ %i.bi, %rioWrite.exit21 ], [ 0, %.thread.i20 ], [ 0, %rioWriteBulkCount.exit.thread ], [ 0, %.thread.i ], [ 0, %bb.f ], [ 0, %rioWrite.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rioWriteBulkLongLong(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %1) #16
  %i.c = zext i32 %i.b to i64
  %i.d = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rioWriteBulkDouble(ptr noundef %0, double noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i32 @fpconv_dtoa(double noundef %1, ptr noundef nonnull %i.a) #16
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  store i8 0, ptr %i.d, align 1, !tbaa !18
  %i.e = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %i.e
}

declare i32 @fpconv_dtoa(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i64 @rioBufferWrite(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call ptr @sdscatlen(ptr noundef %i.b, ptr noundef %1, i64 noundef %2) #16
  store ptr %i.c, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = add i64 %i.e, %2
  store i64 %i.f, ptr %i.d, align 8, !tbaa !18
  ret i64 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @rioBufferTell(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rioBufferFlush(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  ret i32 1
}

declare ptr @sdscatlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i64 @rioFileWrite(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not5763 = icmp eq i64 %2, 0
  br i1 %.not5763, label %.critedge62, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load i64, ptr %i.d, align 8, !tbaa !18
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = tail call i64 @fwrite(ptr noundef %1, i64 noundef %2, i64 noundef 1, ptr noundef %i.g)
  br label %.critedge62

bb.c:                                             ; preds = %.lr.ph, %bb.p
  %i.i = phi i64 [ %.pre, %.lr.ph ], [ %i.ay, %bb.p ] ; 2 uses
  %.04964 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.p ] ; 3 uses
  %i.j = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.k = icmp sgt i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %bb.d, !prof !51

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 105) #16
  tail call void @abort() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = sub nsw i64 %i.j, %i.i
  %i.m = sub i64 %2, %.04964
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.04964
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.q = tail call i64 @fwrite(ptr noundef %i.o, i64 noundef %i.n, i64 noundef 1, ptr noundef %i.p)
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.critedge62, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add i64 %i.n, %.04964                    ; 3 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !18
  %i.u = add i64 %i.t, %i.n                       ; 3 uses
  store i64 %i.u, ptr %i.d, align 8, !tbaa !18
  %i.v = load i64, ptr %i.b, align 8, !tbaa !18
  %.not58 = icmp slt i64 %i.u, %i.v
  br i1 %.not58, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = tail call i32 @fflush(ptr noundef %i.w)  ; 0 uses
  %i.y = load i64, ptr %i.e, align 8, !tbaa !36
  %i.z = add i64 %i.y, %i.s                       ; 4 uses
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.ab = urem i64 %i.z, %i.aa
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.h, !prof !51

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 117) #16
  tail call void @abort() #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !18
  %i.ae = icmp eq i64 %i.ad, %i.aa
  br i1 %i.ae, label %bb.k, label %bb.j, !prof !51

bb.j:                                             ; preds = %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 118) #16
  tail call void @abort() #19
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ag = tail call i32 @fileno(ptr noundef %i.af) #16
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.ai = sub i64 %i.z, %i.ah
  %i.aj = tail call i32 @sync_file_range(i32 noundef %i.ag, i64 noundef %i.ai, i64 noundef %i.ah, i32 noundef 2) #16
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %.critedge62, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i64, ptr %i.b, align 8, !tbaa !18
  %i.am = shl i64 %i.al, 1
  %.not59 = icmp ult i64 %i.z, %i.am
  br i1 %.not59, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ao = tail call i32 @fileno(ptr noundef %i.an) #16
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.aq = shl nsw i64 %i.ap, 1
  %i.ar = sub i64 %i.z, %i.aq
  %i.as = tail call i32 @sync_file_range(i32 noundef %i.ao, i64 noundef %i.ar, i64 noundef %i.ap, i32 noundef 7) #16
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %.critedge62, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.au = load i8, ptr %i.f, align 8
  %.not60 = trunc i8 %i.au to i1
  br i1 %.not60, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aw = tail call i32 @fileno(ptr noundef %i.av) #16
  %i.ax = tail call i32 @reclaimFilePageCache(i32 noundef %i.aw, i64 noundef 0, i64 noundef 0) #16 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.n
  store i64 0, ptr %i.d, align 8, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %.critedge
  %i.ay = phi i64 [ %i.u, %bb.f ], [ 0, %.critedge ]
  %.not57 = icmp eq i64 %2, %i.s
  br i1 %.not57, label %.critedge62, label %bb.c, !llvm.loop !50

.critedge62:                                      ; preds = %bb.e, %bb.k, %bb.m, %bb.p, %.preheader, %bb.b
  %.5 = phi i64 [ %i.h, %bb.b ], [ 1, %.preheader ], [ 0, %bb.e ], [ 0, %bb.k ], [ 0, %bb.m ], [ 1, %bb.p ]
  ret i64 %.5
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @rioFileTell(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call i64 @ftello64(ptr noundef %i.b)
  ret i64 %i.c
}

; Function Attrs: nofree nounwind uwtable
define internal noundef range(i32 0, 2) i32 @rioFileFlush(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call i32 @fflush(ptr noundef %i.b)
  %i.d = icmp eq i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @sync_file_range(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @reclaimFilePageCache(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @ftello64(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @rioConnWrite(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) #8 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @rioConnTell(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rioConnFlush(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @rioFdRead(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) #8 {
bb.a:
  ret i64 0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 2) i64 @rioFdWrite(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq i64 %2, 0                        ; 2 uses
  %.not41.not61 = and i1 %i.a, %i.b
  %i.c = icmp ugt i64 %2, 16384
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 14 uses
  br i1 %i.c, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !18 ; 3 uses
  %i.g = and i8 %.val.i, 7                        ; 2 uses
  switch i8 %i.g, label %.outer.split.preheader [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i8 %.val.i, 3
  %i.i = zext nneg i8 %i.h to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18
  %i.l = zext i8 %i.k to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 -5
  %i.n = load i16, ptr %i.m, align 1, !tbaa !21
  %i.o = zext i16 %i.n to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -9
  %i.q = load i32, ptr %i.p, align 1, !tbaa !13
  %i.r = zext i32 %i.q to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = load i64, ptr %i.s, align 1, !tbaa !17
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.t, %bb.g ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ %i.r, %bb.f ]
  %.not42 = icmp eq i64 %.0.i, 0
  br i1 %.not42, label %.outer.split.preheader, label %bb.h

bb.h:                                             ; preds = %sdslen.exit
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = lshr i8 %.val.i, 3
  %i.v = zext nneg i8 %i.u to i64
  br label %sdslen.exit53

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !18
  %i.y = zext i8 %i.x to i64
  br label %sdslen.exit53

bb.k:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds i8, ptr %i.e, i64 -5
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !21
  %i.ab = zext i16 %i.aa to i64
  br label %sdslen.exit53

bb.l:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds i8, ptr %i.e, i64 -9
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i32 %i.ad to i64
  br label %sdslen.exit53

bb.m:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.ag = load i64, ptr %i.af, align 1, !tbaa !17
  br label %sdslen.exit53

default.unreachable:                              ; preds = %bb.h
  unreachable

sdslen.exit53:                                    ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i52 = phi i64 [ %i.ag, %bb.m ], [ %i.v, %bb.i ], [ %i.y, %bb.j ], [ %i.ab, %bb.k ], [ %i.ae, %bb.l ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not43.i71 = icmp eq i64 %.0.i52, 0
  br i1 %.not43.i71, label %rioFdWrite.exit, label %.outer63.split

.outer63.split:                                   ; preds = %sdslen.exit53, %.outer63
  %i.ai = phi i64 [ %i.ar, %.outer63 ], [ %.0.i52, %sdslen.exit53 ]
  %.0.i44.ph72 = phi i64 [ %i.aq, %.outer63 ], [ 0, %sdslen.exit53 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0.i44.ph72
  br label %bb.n

bb.n:                                             ; preds = %.outer63.split, %bb.p
  %i.ak = load i32, ptr %i.ah, align 8, !tbaa !18
  %i.al = tail call i64 @write(i32 noundef %i.ak, ptr noundef %i.aj, i64 noundef %i.ai) #16, !inline_history !53 ; 3 uses
  %i.am = icmp slt i64 %i.al, 1
  br i1 %i.am, label %bb.o, label %.outer63

bb.o:                                             ; preds = %bb.n
  %i.an = icmp eq i64 %i.al, -1
  br i1 %i.an, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.ao = tail call ptr @__errno_location() #18, !inline_history !53 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !13
  switch i32 %i.ap, label %.critedge [
    i32 4, label %bb.n
    i32 11, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  store i32 110, ptr %i.ao, align 4, !tbaa !13
  br label %.critedge

.outer63:                                         ; preds = %bb.n
  %i.aq = add i64 %i.al, %.0.i44.ph72             ; 3 uses
  %.not43.i = icmp eq i64 %i.aq, %.0.i52
  %i.ar = sub i64 %.0.i52, %i.aq
  br i1 %.not43.i, label %rioFdWrite.exit.loopexit, label %.outer63.split, !llvm.loop !52

rioFdWrite.exit.loopexit:                         ; preds = %.outer63
  %.pre85 = load ptr, ptr %i.d, align 8, !tbaa !18
  br label %rioFdWrite.exit

rioFdWrite.exit:                                  ; preds = %rioFdWrite.exit.loopexit, %sdslen.exit53
  %i.as = phi ptr [ %.pre85, %rioFdWrite.exit.loopexit ], [ %i.e, %sdslen.exit53 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !18
  %i.av = add i64 %i.au, %.0.i52
  store i64 %i.av, ptr %i.at, align 8, !tbaa !18
  tail call void @sdsclear(ptr noundef %i.as) #16, !inline_history !53
  br label %sdslen.exit50

bb.r:                                             ; preds = %bb.a
  br i1 %i.b, label %..thread_crit_edge, label %bb.s

..thread_crit_edge:                               ; preds = %bb.r
  %.phi.trans.insert83 = getelementptr i8, ptr %i.e, i64 -1
  %.val.i48.pre = load i8, ptr %.phi.trans.insert83, align 1, !tbaa !18
  br label %.thread

bb.s:                                             ; preds = %bb.r
  %i.aw = tail call ptr @sdscatlen(ptr noundef %i.e, ptr noundef %1, i64 noundef %2) #16 ; 7 uses
  store ptr %i.aw, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr i8, ptr %i.aw, i64 -1
  %.val.i45.a = load i8, ptr %i.ax, align 1, !tbaa !18 ; 3 uses
  %i.ay = and i8 %.val.i45.a, 7
  switch i8 %i.ay, label %sdslen.exit47.a [
    i8 0, label %3
    i8 1, label %6
    i8 2, label %bb.t
    i8 3, label %bb.u
    i8 4, label %bb.v
  ]

3:                                                ; preds = %bb.s
  %4 = lshr i8 %.val.i45.a, 3
  %5 = zext nneg i8 %4 to i64
  br label %sdslen.exit47.a

6:                                                ; preds = %bb.s
  %7 = getelementptr inbounds i8, ptr %i.aw, i64 -3
  %8 = load i8, ptr %7, align 1, !tbaa !18
  %9 = zext i8 %8 to i64
  br label %sdslen.exit47.a

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -5
  %i.ba = load i16, ptr %i.az, align 1, !tbaa !21
  %i.bb = zext i16 %i.ba to i64
  br label %sdslen.exit47.a

bb.u:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds i8, ptr %i.aw, i64 -9
  %i.bd = load i32, ptr %i.bc, align 1, !tbaa !13
  %i.be = zext i32 %i.bd to i64
  br label %sdslen.exit47.a

bb.v:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds i8, ptr %i.aw, i64 -17
  %i.bg = load i64, ptr %i.bf, align 1, !tbaa !17
  br label %sdslen.exit47.a

sdslen.exit47.a:                                  ; preds = %bb.s, %3, %6, %bb.t, %bb.u, %bb.v
  %.0.i43 = phi i64 [ %i.bg, %bb.v ], [ %5, %3 ], [ %9, %6 ], [ %i.bb, %bb.t ], [ %i.be, %bb.u ], [ 0, %bb.s ]
  %i.bh = icmp ugt i64 %.0.i43, 16384
  %brmerge = or i1 %.not41.not61, %i.bh
  br i1 %brmerge, label %.thread, label %.critedge

.thread:                                          ; preds = %..thread_crit_edge, %sdslen.exit47.a
  %.val.i48 = phi i8 [ %.val.i48.pre, %..thread_crit_edge ], [ %.val.i45.a, %sdslen.exit47.a ] ; 2 uses
  %i.bi = phi ptr [ %i.e, %..thread_crit_edge ], [ %i.aw, %sdslen.exit47.a ] ; 9 uses
  %i.bj = and i8 %.val.i48, 7
  switch i8 %i.bj, label %.outer._crit_edge [
    i8 0, label %bb.w
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.aa
  ]

bb.w:                                             ; preds = %.thread
  %i.bk = lshr i8 %.val.i48, 3
  %i.bl = zext nneg i8 %i.bk to i64
  br label %sdslen.exit50

bb.x:                                             ; preds = %.thread
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18
  %i.bo = zext i8 %i.bn to i64
  br label %sdslen.exit50

bb.y:                                             ; preds = %.thread
  %i.bp = getelementptr inbounds i8, ptr %i.bi, i64 -5
  %i.bq = load i16, ptr %i.bp, align 1, !tbaa !21
  %i.br = zext i16 %i.bq to i64
  br label %sdslen.exit50

bb.z:                                             ; preds = %.thread
  %i.bs = getelementptr inbounds i8, ptr %i.bi, i64 -9
  %i.bt = load i32, ptr %i.bs, align 1, !tbaa !13
  %i.bu = zext i32 %i.bt to i64
  br label %sdslen.exit50

bb.aa:                                            ; preds = %.thread
  %i.bv = getelementptr inbounds i8, ptr %i.bi, i64 -17
  %i.bw = load i64, ptr %i.bv, align 1, !tbaa !17
  br label %sdslen.exit50

sdslen.exit50:                                    ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %rioFdWrite.exit
  %.032 = phi i64 [ %2, %rioFdWrite.exit ], [ %i.bu, %bb.z ], [ %i.br, %bb.y ], [ %i.bw, %bb.aa ], [ %i.bl, %bb.w ], [ %i.bo, %bb.x ] ; 2 uses
  %.031 = phi ptr [ %1, %rioFdWrite.exit ], [ %i.bi, %bb.z ], [ %i.bi, %bb.y ], [ %i.bi, %bb.aa ], [ %i.bi, %bb.w ], [ %i.bi, %bb.x ]
  %.not4373 = icmp eq i64 %.032, 0
  br i1 %.not4373, label %.outer._crit_edge, label %.outer.split.preheader

.outer.split.preheader:                           ; preds = %bb.b, %sdslen.exit, %sdslen.exit50
  %.03198 = phi ptr [ %.031, %sdslen.exit50 ], [ %1, %sdslen.exit ], [ %1, %bb.b ]
  %.03296 = phi i64 [ %.032, %sdslen.exit50 ], [ %2, %sdslen.exit ], [ %2, %bb.b ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %.outer.split

.outer.split:                                     ; preds = %.outer.split.preheader, %.outer
  %i.by = phi i64 [ %i.ch, %.outer ], [ %.03296, %.outer.split.preheader ]
  %.0.ph74 = phi i64 [ %i.cg, %.outer ], [ 0, %.outer.split.preheader ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.03198, i64 %.0.ph74
  br label %bb.ab

bb.ab:                                            ; preds = %.outer.split, %bb.ad
  %i.ca = load i32, ptr %i.bx, align 8, !tbaa !18
  %i.cb = tail call i64 @write(i32 noundef %i.ca, ptr noundef %i.bz, i64 noundef %i.by) #16 ; 3 uses
  %i.cc = icmp slt i64 %i.cb, 1
  br i1 %i.cc, label %bb.ac, label %.outer

bb.ac:                                            ; preds = %bb.ab
  %i.cd = icmp eq i64 %i.cb, -1
  br i1 %i.cd, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.ce = tail call ptr @__errno_location() #18   ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !13
  switch i32 %i.cf, label %.critedge [
    i32 4, label %bb.ab
    i32 11, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  store i32 110, ptr %i.ce, align 4, !tbaa !13
  br label %.critedge

.outer:                                           ; preds = %bb.ab
  %i.cg = add i64 %i.cb, %.0.ph74                 ; 3 uses
  %.not43 = icmp eq i64 %i.cg, %.03296
  %i.ch = sub i64 %.03296, %i.cg
  br i1 %.not43, label %.outer._crit_edge, label %.outer.split, !llvm.loop !52

.outer._crit_edge:                                ; preds = %.outer, %.thread, %sdslen.exit50
  %.03297 = phi i64 [ 0, %.thread ], [ 0, %sdslen.exit50 ], [ %.03296, %.outer ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !18
  %i.ck = add i64 %i.cj, %.03297
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !18
  tail call void @sdsclear(ptr noundef %i.cm) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.o, %bb.ad, %bb.ac, %bb.q, %.outer._crit_edge, %bb.ae, %sdslen.exit47.a
  %.1 = phi i64 [ 0, %bb.q ], [ 1, %sdslen.exit47.a ], [ 1, %.outer._crit_edge ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.ac ], [ 0, %bb.o ], [ 0, %bb.p ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @rioFdTell(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @rioFdFlush(ptr nofree noundef captures(none) %0) #2 {
bb.a:
  %i.a = tail call i64 @rioFdWrite(ptr noundef %0, ptr noundef null, i64 noundef 0)
  %i.b = trunc nuw nsw i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @rioConnsetRead(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) #8 {
bb.a:
  ret i64 0
}

; Function Attrs: nounwind uwtable
define internal noundef range(i64 0, 2) i64 @rioConnsetWrite(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = icmp ugt i64 %2, 262144
  br i1 %i.a, label %sdslen.exit78.thread119, label %bb.b

sdslen.exit78.thread119:                          ; preds = %bb.a
  %i.b = tail call i64 @rioConnsetWrite(ptr noundef %0, ptr noundef null, i64 noundef 0) ; 0 uses
  br label %.lr.ph94

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %1, null
  %i.d = icmp ne i64 %2, 0
  %or.cond = and i1 %i.c, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 3 uses
  br i1 %or.cond, label %bb.c, label %._crit_edge102

._crit_edge102:                                   ; preds = %bb.b
  %.phi.trans.insert103 = getelementptr i8, ptr %i.f, i64 -1
  %.val.i76.pre = load i8, ptr %.phi.trans.insert103, align 1, !tbaa !18
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @sdscatlen(ptr noundef %i.f, ptr noundef nonnull %1, i64 noundef %2) #16 ; 6 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !18
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %.val.i = load i8, ptr %i.h, align 1, !tbaa !18 ; 2 uses
  %i.i = and i8 %.val.i, 7
  switch i8 %i.i, label %.critedge [
    i8 4, label %bb.f
    i8 3, label %bb.e
    i8 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.k = load i16, ptr %i.j, align 1, !tbaa !21
  %i.l = zext i16 %i.k to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 -9
  %i.n = load i32, ptr %i.m, align 1, !tbaa !13
  %i.o = zext i32 %i.n to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 -17
  %i.q = load i64, ptr %i.p, align 1, !tbaa !17
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.q, %bb.f ], [ %i.l, %bb.d ], [ %i.o, %bb.e ]
  %i.r = icmp ult i64 %.0.i, 16385
  br i1 %i.r, label %.critedge, label %bb.g

bb.g:                                             ; preds = %._crit_edge102, %sdslen.exit
  %.val.i76 = phi i8 [ %.val.i76.pre, %._crit_edge102 ], [ %.val.i, %sdslen.exit ] ; 2 uses
  %i.s = phi ptr [ %i.f, %._crit_edge102 ], [ %i.g, %sdslen.exit ] ; 5 uses
  %i.t = and i8 %.val.i76, 7
  switch i8 %i.t, label %._crit_edge95 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = lshr i8 %.val.i76, 3
  %i.v = zext nneg i8 %i.u to i64
  br label %sdslen.exit78

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !18
  %i.y = zext i8 %i.x to i64
  br label %sdslen.exit78

bb.j:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds i8, ptr %i.s, i64 -5
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !21
  %i.ab = zext i16 %i.aa to i64
  br label %sdslen.exit78

bb.k:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds i8, ptr %i.s, i64 -9
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i32 %i.ad to i64
  br label %sdslen.exit78

bb.l:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds i8, ptr %i.s, i64 -17
  %i.ag = load i64, ptr %i.af, align 1, !tbaa !17
  br label %sdslen.exit78

sdslen.exit78:                                    ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.057 = phi i64 [ %i.ae, %bb.k ], [ %i.ag, %bb.l ], [ %i.v, %bb.h ], [ %i.y, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %.not90 = icmp eq i64 %.057, 0
  br i1 %.not90, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %sdslen.exit78.thread119, %sdslen.exit78
  %.057124 = phi i64 [ %2, %sdslen.exit78.thread119 ], [ %.057, %sdslen.exit78 ]
  %.060123 = phi ptr [ %1, %sdslen.exit78.thread119 ], [ %i.s, %sdslen.exit78 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !18
  %.not97 = icmp eq i64 %i.ak, 0
  br i1 %.not97, label %.critedge, label %.lr.ph94.split

.lr.ph94.split:                                   ; preds = %.lr.ph94, %bb.q
  %i.al = phi i64 [ %i.an, %bb.q ], [ 1, %.lr.ph94 ]
  %.05593 = phi i64 [ %.156.lcssa, %bb.q ], [ 0, %.lr.ph94 ] ; 2 uses
  %.15892 = phi i64 [ %i.bs, %bb.q ], [ %.057124, %.lr.ph94 ] ; 2 uses
  %.16191 = phi ptr [ %i.br, %bb.q ], [ %.060123, %.lr.ph94 ] ; 2 uses
  %i.am = tail call i64 @llvm.umin.i64(i64 %.15892, i64 32768) ; 5 uses
  %.not98 = icmp eq i64 %i.al, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph94.split
  %i.an = phi i64 [ 0, %.lr.ph94.split ], [ %i.bp, %.loopexit ] ; 2 uses
  %.156.lcssa = phi i64 [ %.05593, %.lr.ph94.split ], [ %.4, %.loopexit ] ; 2 uses
  %.not72 = icmp eq i64 %.156.lcssa, %i.an
  br i1 %.not72, label %.critedge, label %bb.q

.lr.ph:                                           ; preds = %.lr.ph94.split, %.loopexit
  %.05288 = phi i64 [ %i.bo, %.loopexit ], [ 0, %.lr.ph94.split ] ; 4 uses
  %.15687 = phi i64 [ %.4, %.loopexit ], [ %.05593, %.lr.ph94.split ] ; 3 uses
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.05288
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !58
  %.not73 = icmp eq i32 %i.ar, 0
  br i1 %.not73, label %.preheader, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.as = add i64 %.15687, 1
  br label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %bb.p
  %.0 = phi i64 [ %i.bn, %bb.p ], [ 0, %.lr.ph ]  ; 3 uses
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.05288
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.16191, i64 %.0
  %i.ax = sub i64 %i.am, %.0
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !59
  %i.bb = tail call i32 %i.ba(ptr noundef nonnull %i.av, ptr noundef %i.aw, i64 noundef %i.ax) #16, !inline_history !54 ; 3 uses
  %i.bc = icmp slt i32 %i.bb, 1
  br i1 %i.bc, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.preheader
  %i.bd = tail call ptr @__errno_location() #18   ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !13 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp eq i32 %i.bb, -1
  %i.bh = icmp eq i32 %i.be, 11
  %or.cond129 = and i1 %i.bg, %i.bh
  br i1 %or.cond129, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.o, %bb.n
  %.sink = phi i32 [ 5, %bb.n ], [ 110, %bb.o ]
end_hunk_0
