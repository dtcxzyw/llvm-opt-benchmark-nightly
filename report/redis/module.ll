Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/module?download=true
inline.NumInlined: 700
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@RM_ReplyWithCallReply:bb.a
  %.not6.i = icmp eq ptr %i.f, null
  br i1 %.not6.i, label %moduleGetReplyClient.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  br label %moduleGetReplyClient.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %moduleGetReplyClient.exit

moduleGetReplyClient.exit:                        ; preds = %bb.c, %bb.d
  %.0.i.in = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  %.0.i = load ptr, ptr %.0.i.in, align 8, !tbaa !48 ; 4 uses
  %i.i = icmp eq ptr %.0.i, null
  br i1 %i.i, label %moduleGetReplyClient.exit.thread, label %bb.e

bb.e:                                             ; preds = %moduleGetReplyClient.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !250
  %i.l = icmp eq i32 %i.k, 2
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @callReplyIsResp3(ptr noundef %1) #31
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.g, label %moduleGetReplyClient.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.n = call ptr @callReplyGetProto(ptr noundef %1, ptr noundef nonnull %i.a) #31
  %i.o = load i64, ptr %i.a, align 8, !tbaa !45
  call void @addReplyProto(ptr noundef nonnull %.0.i, ptr noundef %i.n, i64 noundef %i.o) #31
  %i.p = call ptr @callReplyDeferredErrorList(ptr noundef %1) #31 ; 2 uses
  %.not13 = icmp eq ptr %i.p, null
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @deferredAfterErrorReply(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.p) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %moduleGetReplyClient.exit.thread

moduleGetReplyClient.exit.thread:                 ; preds = %bb.b, %bb.f, %moduleGetReplyClient.exit, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ 0, %moduleGetReplyClient.exit ], [ 1, %bb.f ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @callReplyIsResp3(ptr noundef) local_unnamed_addr #1

declare ptr @callReplyGetProto(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplyProto(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @callReplyDeferredErrorList(ptr noundef) local_unnamed_addr #1

declare void @deferredAfterErrorReply(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @RM_ReplyWithDouble(ptr nofree noundef readonly captures(none) %0, double noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !114
  %i.c = and i32 %i.b, 16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !246  ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %moduleGetReplyClient.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  br label %moduleGetReplyClient.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %moduleGetReplyClient.exit

moduleGetReplyClient.exit:                        ; preds = %bb.c, %bb.d
  %.0.i.in = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %.0.i = load ptr, ptr %.0.i.in, align 8, !tbaa !48 ; 2 uses
  %i.h = icmp eq ptr %.0.i, null
  br i1 %i.h, label %moduleGetReplyClient.exit.thread, label %bb.e

bb.e:                                             ; preds = %moduleGetReplyClient.exit
  tail call void @addReplyDouble(ptr noundef nonnull %.0.i, double noundef %1) #31
  br label %moduleGetReplyClient.exit.thread

moduleGetReplyClient.exit.thread:                 ; preds = %bb.b, %moduleGetReplyClient.exit, %bb.e
  ret i32 0
}

declare void @addReplyDouble(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @RM_ReplyWithBigNumber(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !114
  %i.c = and i32 %i.b, 16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !246  ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %moduleGetReplyClient.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  br label %moduleGetReplyClient.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %moduleGetReplyClient.exit

moduleGetReplyClient.exit:                        ; preds = %bb.c, %bb.d
  %.0.i.in = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %.0.i = load ptr, ptr %.0.i.in, align 8, !tbaa !48 ; 2 uses
  %i.h = icmp eq ptr %.0.i, null
  br i1 %i.h, label %moduleGetReplyClient.exit.thread, label %bb.e

bb.e:                                             ; preds = %moduleGetReplyClient.exit
  tail call void @addReplyBigNum(ptr noundef nonnull %.0.i, ptr noundef %1, i64 noundef %2) #31
  br label %moduleGetReplyClient.exit.thread

moduleGetReplyClient.exit.thread:                 ; preds = %bb.b, %moduleGetReplyClient.exit, %bb.e
  ret i32 0
}

declare void @addReplyBigNum(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @RM_ReplyWithLongDouble(ptr nofree noundef readonly captures(none) %0, x86_fp80 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !114
  %i.c = and i32 %i.b, 16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !246  ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %moduleGetReplyClient.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  br label %moduleGetReplyClient.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %moduleGetReplyClient.exit

moduleGetReplyClient.exit:                        ; preds = %bb.c, %bb.d
  %.0.i.in = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %.0.i = load ptr, ptr %.0.i.in, align 8, !tbaa !48 ; 2 uses
  %i.h = icmp eq ptr %.0.i, null
  br i1 %i.h, label %moduleGetReplyClient.exit.thread, label %bb.e

bb.e:                                             ; preds = %moduleGetReplyClient.exit
  tail call void @addReplyHumanLongDouble(ptr noundef nonnull %.0.i, x86_fp80 noundef %1) #31
  br label %moduleGetReplyClient.exit.thread

moduleGetReplyClient.exit.thread:                 ; preds = %bb.b, %moduleGetReplyClient.exit, %bb.e
  ret i32 0
}

declare void @addReplyHumanLongDouble(ptr noundef, x86_fp80 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_Replicate(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ...) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 0, ptr %i.a, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i32 0, ptr %i.b, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.c = tail call ptr @lookupCommandByCString(ptr noundef %1) #31
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.d = call ptr @moduleCreateArgvFromUserFormat(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %3) ; 4 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 4, !tbaa !29
  %i.g = lshr i32 %i.f, 1
  %i.h = and i32 %i.g, 3
  %.1 = xor i32 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !122
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !143
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !146
  %i.o = load i32, ptr %i.a, align 4, !tbaa !29   ; 3 uses
  call void @alsoPropagate(i32 noundef %i.n, ptr noundef nonnull %i.d, i32 noundef %i.o, i32 noundef %.1) #31
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !82
  call void @decrRefCount(ptr noundef %i.r) #31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !531

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  call void @zfree(ptr noundef nonnull %i.d) #31
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !251
  %i.t = add nsw i64 %i.s, 1
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !251
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  %.016 = phi i32 [ 1, %bb.a ], [ 0, %._crit_edge ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define dso_local ptr @moduleCreateArgvFromUserFormat(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %i.b = trunc i64 %i.a to i32
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call ptr @zrealloc(ptr noundef null, i64 noundef %i.e) #33 ; 2 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #35
  %i.h = tail call ptr @createStringObject(ptr noundef nonnull %0, i64 noundef %i.g) #31
  store ptr %i.h, ptr %i.f, align 8, !tbaa !82
  %.not122 = icmp eq ptr %3, null                 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.0105 = phi i32 [ 1, %bb.a ], [ %.2, %.loopexit ] ; 37 uses
  %.0103 = phi i32 [ %i.c, %bb.a ], [ %.1104, %.loopexit ] ; 29 uses
  %.0101 = phi ptr [ %i.f, %bb.a ], [ %.1, %.loopexit ] ; 37 uses
  %.0100 = phi ptr [ %1, %bb.a ], [ %i.fc, %.loopexit ] ; 2 uses
  %i.k = load i8, ptr %.0100, align 1, !tbaa !85
  switch i8 %i.k, label %.preheader [
    i8 0, label %bb.be
    i8 99, label %bb.c
    i8 115, label %bb.g
    i8 98, label %bb.s
    i8 108, label %bb.x
    i8 118, label %bb.ab
    i8 33, label %bb.ag
    i8 65, label %bb.ai
    i8 82, label %bb.ak
    i8 51, label %bb.am
    i8 48, label %bb.ao
    i8 67, label %bb.aq
    i8 83, label %bb.as
    i8 87, label %bb.au
    i8 77, label %bb.aw
    i8 69, label %bb.ay
    i8 68, label %bb.ba
    i8 75, label %bb.bc
  ]

.preheader:                                       ; preds = %bb.b
  %i.l = icmp sgt i32 %.0105, 0
  br i1 %i.l, label %.lr.ph140.preheader, label %._crit_edge

.lr.ph140.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.0105 to i64
  br label %.lr.ph140

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %4, align 8                ; 3 uses
  %i.n = icmp ult i32 %i.m, 41
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = zext nneg i32 %i.m to i64
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  %i.r = add nuw nsw i32 %i.m, 8
  store i32 %i.r, ptr %4, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = phi ptr [ %i.q, %bb.d ], [ %i.s, %bb.e ]
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175  ; 2 uses
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #35
  %i.x = tail call ptr @createStringObject(ptr noundef nonnull %i.v, i64 noundef %i.w) #31
  %i.y = add nsw i32 %.0105, 1
  %i.z = sext i32 %.0105 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0101, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !82
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %4, align 8               ; 3 uses
  %i.ac = icmp ult i32 %i.ab, 41
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.j, align 8
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.ag = add nuw nsw i32 %i.ab, 8
  store i32 %i.ag, ptr %4, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  store ptr %i.ai, ptr %i.i, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = phi ptr [ %i.af, %bb.h ], [ %i.ah, %bb.i ]
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !110 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = and i64 %i.al, 2147483392
  %i.an = icmp eq i64 %i.am, 2147483136
  br i1 %i.an, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !243 ; 6 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %.val.i = load i8, ptr %i.aq, align 1, !tbaa !85 ; 2 uses
  %i.ar = and i8 %.val.i, 7
  switch i8 %i.ar, label %sdslen.exit [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.as = lshr i8 %.val.i, 3
  %i.at = zext nneg i8 %i.as to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 -3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !85
  %i.aw = zext i8 %i.av to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds i8, ptr %i.ap, i64 -5
  %i.ay = load i16, ptr %i.ax, align 1, !tbaa !245
  %i.az = zext i16 %i.ay to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds i8, ptr %i.ap, i64 -9
  %i.bb = load i32, ptr %i.ba, align 1, !tbaa !29
  %i.bc = zext i32 %i.bb to i64
  br label %sdslen.exit

bb.p:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds i8, ptr %i.ap, i64 -17
  %i.be = load i64, ptr %i.bd, align 1, !tbaa !45
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i = phi i64 [ %i.be, %bb.p ], [ %i.at, %bb.l ], [ %i.aw, %bb.m ], [ %i.az, %bb.n ], [ %i.bc, %bb.o ], [ 0, %bb.k ]
  %i.bf = tail call ptr @createStringObject(ptr noundef nonnull %i.ap, i64 noundef %.0.i) #31
  br label %bb.r

bb.q:                                             ; preds = %bb.j
  tail call void @incrRefCount(ptr noundef nonnull %i.ak) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %sdslen.exit
end_hunk_0
