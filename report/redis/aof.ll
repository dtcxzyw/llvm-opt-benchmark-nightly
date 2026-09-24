Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/aof?download=true
inline.NumInlined: 96
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rewriteAppendOnlyFileBackground:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @sendChildCowInfo(i32 noundef 1, ptr noundef nonnull @.str.149) #17
  call void @exitFromChild(i32 noundef 0, i32 noundef 0) #17
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  tail call void @exitFromChild(i32 noundef 1, i32 noundef 0) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.v

bb.q:                                             ; preds = %bb.j
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6812), align 4, !tbaa !102
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !75
  %i.ab = icmp sgt i32 %i.aa, 3
  br i1 %i.ab, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = tail call ptr @__errno_location() #19
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !15
  %i.ae = tail call ptr @strerror(i32 noundef %i.ad) #17
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.160, ptr noundef %i.ae) #17
  br label %bb.v

bb.s:                                             ; preds = %bb.j
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !75
  %i.ag = icmp sgt i32 %i.af, 2
  br i1 %i.ag, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = sext i32 %i.r to i64
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.161, i64 noundef %i.ah) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6748), align 4, !tbaa !98
  %i.ai = tail call i64 @time(ptr noundef null) #17
  store i64 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6792), align 8, !tbaa !96
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.q, %bb.a, %bb.p, %bb.u, %bb.g, %bb.e
  %.0 = phi i32 [ 0, %bb.u ], [ -1, %bb.e ], [ -1, %bb.g ], [ 0, %bb.p ], [ -1, %bb.a ], [ -1, %bb.q ], [ -1, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @startAppendOnlyWithRetry() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @startAppendOnly()
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !75
  %i.d = icmp sgt i32 %i.c, 3
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.73) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = tail call i32 @sleep(i32 noundef 1) #17  ; 0 uses
  %i.f = tail call i32 @startAppendOnly()
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !75
  %i.i = icmp sgt i32 %i.h, 3
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.73) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = tail call i32 @sleep(i32 noundef 1) #17  ; 0 uses
  %i.k = tail call i32 @startAppendOnly()
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !75
  %i.n = icmp sgt i32 %i.m, 3
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.73) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = tail call i32 @sleep(i32 noundef 1) #17  ; 0 uses
  %i.p = tail call i32 @startAppendOnly()
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !75
  %i.s = icmp sgt i32 %i.r, 3
  br i1 %i.s, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.73) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.t = tail call i32 @sleep(i32 noundef 1) #17  ; 0 uses
  %i.u = tail call i32 @startAppendOnly()
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !75
  %i.x = icmp sgt i32 %i.w, 3
  br i1 %i.x, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.73) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.y = tail call i32 @sleep(i32 noundef 1) #17  ; 0 uses
  %i.z = tail call i32 @startAppendOnly()
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !75
  %i.ac = icmp sgt i32 %i.ab, 3
  br i1 %i.ac, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.73) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ad = tail call i32 @sleep(i32 noundef 1) #17 ; 0 uses
  %i.ae = tail call i32 @startAppendOnly()
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !75
  %i.ah = icmp sgt i32 %i.ag, 3
  br i1 %i.ah, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.73) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ai = tail call i32 @sleep(i32 noundef 1) #17 ; 0 uses
  %i.aj = tail call i32 @startAppendOnly()
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !75
  %i.am = icmp sgt i32 %i.al, 3
  br i1 %i.am, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.73) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.an = tail call i32 @sleep(i32 noundef 1) #17 ; 0 uses
  %i.ao = tail call i32 @startAppendOnly()
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !75
  %i.ar = icmp sgt i32 %i.aq, 3
  br i1 %i.ar, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.73) #17
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.as = tail call i32 @sleep(i32 noundef 1) #17 ; 0 uses
  %i.at = tail call i32 @startAppendOnly()
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !75
  %i.aw = icmp sgt i32 %i.av, 3
  br i1 %i.aw, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.73) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ax = tail call i32 @sleep(i32 noundef 1) #17 ; 0 uses
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !75
  %i.az = icmp sgt i32 %i.ay, 3
  br i1 %i.az, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.74) #17
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  tail call void @exit(i32 noundef 1) #20
  unreachable

.thread:                                          ; preds = %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d, %bb.a
  ret void
}

declare i32 @sleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @applyAppendOnlyConfig() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6664), align 8, !tbaa !179 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6668), align 4 ; 2 uses
  %i.d = icmp ne i32 %i.c, 0
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @stopAppendOnly()
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ne i32 %i.a, 0
  %i.f = icmp eq i32 %i.c, 0
  %or.cond3 = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @startAppendOnlyWithRetry()
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i64 -1, -9223372036854775808) i64 @aofWrite(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %.not21 = icmp eq i64 %2, 0
  br i1 %.not21, label %.loopexit, label %.outer.split

.outer.split:                                     ; preds = %bb.a, %.outer
  %.0.ph24 = phi i64 [ %i.i, %.outer ], [ 0, %bb.a ] ; 3 uses
  %.014.ph23 = phi i64 [ %i.g, %.outer ], [ %2, %bb.a ] ; 2 uses
  %.015.ph22 = phi ptr [ %i.h, %.outer ], [ %1, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer.split, %bb.c
  %i.a = tail call i64 @write(i32 noundef %0, ptr noundef %.015.ph22, i64 noundef %.014.ph23) #17 ; 4 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %.outer

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #19
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.b, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %bb.c
  %.not18 = icmp eq i64 %.0.ph24, 0
  %i.f = select i1 %.not18, i64 -1, i64 %.0.ph24
  br label %.loopexit

.outer:                                           ; preds = %bb.b
  %i.g = sub i64 %.014.ph23, %i.a                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.015.ph22, i64 %i.a
  %i.i = add nuw nsw i64 %i.a, %.0.ph24           ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %.loopexit, label %.outer.split, !llvm.loop !1

.loopexit:                                        ; preds = %.outer, %bb.a, %bb.d
  %.016 = phi i64 [ %i.f, %bb.d ], [ 0, %bb.a ], [ %i.i, %.outer ]
  ret i64 %.016
}

declare i32 @usleep(i32 noundef) local_unnamed_addr #3

declare i64 @mstime() local_unnamed_addr #3

declare void @latencyAddSample(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ftruncate64(i32 noundef, i64 noundef) local_unnamed_addr #6

declare void @sdsrange(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @sdsclear(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @catAppendOnlyGenericCommand(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 42, ptr %i.a, align 16, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = call i32 @ll2string(ptr noundef nonnull %i.b, i64 noundef 31, i64 noundef %i.c) #17 ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e     ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 1
  store i8 13, ptr %i.g, align 1, !tbaa !25
  %i.h = add nsw i32 %i.d, 3
  %i.i = getelementptr i8, ptr %i.f, i64 2
  store i8 10, ptr %i.i, align 1, !tbaa !25
  %i.j = sext i32 %i.h to i64
  %i.k = call ptr @sdscatlen(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.j) #17 ; 2 uses
  %i.l = icmp sgt i32 %1, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %sdslen.exit23
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %sdslen.exit23 ] ; 2 uses
  %.02024 = phi ptr [ %i.k, %.lr.ph.preheader ], [ %i.bf, %sdslen.exit23 ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.o = call ptr @getDecodedObject(ptr noundef %i.n) #17 ; 2 uses
  store i8 36, ptr %i.a, align 16, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !106  ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %.val.i = load i8, ptr %i.r, align 1, !tbaa !25 ; 2 uses
  %i.s = and i8 %.val.i, 7
  switch i8 %i.s, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.t = lshr i8 %.val.i, 3
  %i.u = zext nneg i8 %i.t to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 -3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !25
  %i.x = zext i8 %i.w to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 -5
  %i.z = load i16, ptr %i.y, align 1, !tbaa !27
  %i.aa = zext i16 %i.z to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 -9
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !15
  %i.ad = zext i32 %i.ac to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds i8, ptr %i.q, i64 -17
  %i.af = load i64, ptr %i.ae, align 1, !tbaa !29
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.af, %bb.f ], [ %i.u, %bb.b ], [ %i.x, %bb.c ], [ %i.aa, %bb.d ], [ %i.ad, %bb.e ], [ 0, %.lr.ph ]
  %i.ag = call i32 @ll2string(ptr noundef nonnull %i.b, i64 noundef 31, i64 noundef %.0.i) #17 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %i.a, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  store i8 13, ptr %i.aj, align 1, !tbaa !25
  %i.ak = add nsw i32 %i.ag, 3
  %i.al = getelementptr i8, ptr %i.ai, i64 2
  store i8 10, ptr %i.al, align 1, !tbaa !25
  %i.am = sext i32 %i.ak to i64
  %i.an = call ptr @sdscatlen(ptr noundef %.02024, ptr noundef nonnull %i.a, i64 noundef %i.am) #17
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !106 ; 6 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1
  %.val.i21 = load i8, ptr %i.ap, align 1, !tbaa !25 ; 2 uses
  %i.aq = and i8 %.val.i21, 7
  switch i8 %i.aq, label %sdslen.exit23 [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %sdslen.exit
  %i.ar = lshr i8 %.val.i21, 3
  %i.as = zext nneg i8 %i.ar to i64
  br label %sdslen.exit23

bb.h:                                             ; preds = %sdslen.exit
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 -3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !25
  %i.av = zext i8 %i.au to i64
  br label %sdslen.exit23

bb.i:                                             ; preds = %sdslen.exit
  %i.aw = getelementptr inbounds i8, ptr %i.ao, i64 -5
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !27
  %i.ay = zext i16 %i.ax to i64
  br label %sdslen.exit23

end_hunk_0
