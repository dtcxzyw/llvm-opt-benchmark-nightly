inline.NumInlined: 32
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ld2string:bb.a
  br label %bb.o, !llvm.loop !55

bb.q:                                             ; preds = %bb.o
  %i.w = add i64 %.041, -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.q, %bb.m
  %.2 = phi i64 [ %i.p, %bb.m ], [ %i.w, %bb.q ], [ %.041, %bb.o ] ; 2 uses
  %i.x = icmp eq i64 %.2, 2
  br i1 %i.x, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.loopexit
  %i.y = load i8, ptr %0, align 1, !tbaa !13
  %i.z = icmp eq i8 %i.y, 45
  br i1 %i.z, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = icmp eq i8 %i.ab, 48
  br i1 %i.ac, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i8 48, ptr %0, align 1, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %bb.h, %.loopexit, %bb.r, %bb.s, %bb.t, %bb.k, %bb.j, %bb.d, %bb.e
  %.3 = phi i64 [ 3, %bb.d ], [ 4, %bb.e ], [ 3, %bb.h ], [ %i.h, %bb.j ], [ %i.l, %bb.k ], [ 1, %bb.t ], [ 2, %bb.s ], [ 2, %bb.r ], [ %.2, %.loopexit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.3
  store i8 0, ptr %i.ad, align 1, !tbaa !13
  %i.ae = trunc i64 %.3 to i32
  br label %bb.x

bb.v:                                             ; preds = %bb.i, %bb.l, %bb.k, %bb.j, %bb.g, %bb.b
  %.not44 = icmp eq i64 %1, 0
  br i1 %.not44, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %0, align 1, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %.042 = phi i32 [ %i.ae, %bb.u ], [ 0, %bb.w ], [ 0, %bb.v ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define dso_local void @getRandomBytes(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 16 uses
  %3 = alloca %struct.SHA256_CTX, align 8         ; 10 uses
  %.b = load i1, ptr @getRandomBytes.seed_initialized, align 4
  br i1 %.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @fopen64(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) ; 4 uses
  %i.d = icmp eq ptr %i.c, null                   ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @fread(ptr noundef nonnull @getRandomBytes.seed, i64 noundef 64, i64 noundef 1, ptr noundef nonnull %i.c)
  %.not = icmp eq i64 %i.e, 1
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = ptrtoint ptr %i.c to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.h = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #27 ; 0 uses
  %i.i = tail call i32 @getpid() #27
  %i.j = load i64, ptr %2, align 8, !tbaa !56
  %i.k = load i64, ptr %i.f, align 8, !tbaa !58
  %i.l = zext i32 %i.i to i64
  %i.m = xor i64 %i.j, %i.g
  %i.n = xor i64 %i.m, %i.l
  %i.o = xor i64 %i.n, %i.k
  %i.p = trunc i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr @getRandomBytes.seed, i64 %indvars.iv
  store i8 %i.p, ptr %i.q, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.f, label %bb.e, !llvm.loop !59

.thread:                                          ; preds = %bb.c
  store i1 true, ptr @getRandomBytes.seed_initialized, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.r = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  %.not3236 = icmp eq i64 %1, 0
  br i1 %.not3236, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02438 = phi ptr [ %i.ak, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.02537 = phi i64 [ %i.aj, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) @getRandomBytes.seed, i64 64, i1 false)
  %wide.load54 = load <16 x i8>, ptr %i.b, align 16, !tbaa !13
  %wide.load55 = load <16 x i8>, ptr %i.t, align 16, !tbaa !13
  %i.y = xor <16 x i8> %wide.load54, splat (i8 54)
  %i.z = xor <16 x i8> %wide.load55, splat (i8 54)
  store <16 x i8> %i.y, ptr %i.b, align 16, !tbaa !13
  store <16 x i8> %i.z, ptr %i.t, align 16, !tbaa !13
  %wide.load54.1 = load <16 x i8>, ptr %i.u, align 16, !tbaa !13
  %wide.load55.1 = load <16 x i8>, ptr %i.v, align 16, !tbaa !13
  %i.aa = xor <16 x i8> %wide.load54.1, splat (i8 54)
  %i.ab = xor <16 x i8> %wide.load55.1, splat (i8 54)
  store <16 x i8> %i.aa, ptr %i.u, align 16, !tbaa !13
  store <16 x i8> %i.ab, ptr %i.v, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @sha256_init(ptr noundef nonnull %3) #27
  call void @sha256_update(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef 64) #27
  call void @sha256_update(ptr noundef nonnull %3, ptr noundef nonnull @getRandomBytes.counter, i64 noundef 8) #27
  call void @sha256_final(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) @getRandomBytes.seed, i64 64, i1 false)
  %wide.load = load <16 x i8>, ptr %i.b, align 16, !tbaa !13
  %wide.load50 = load <16 x i8>, ptr %i.s, align 16, !tbaa !13
  %i.ac = xor <16 x i8> %wide.load, splat (i8 92)
  %i.ad = xor <16 x i8> %wide.load50, splat (i8 92)
  store <16 x i8> %i.ac, ptr %i.b, align 16, !tbaa !13
  store <16 x i8> %i.ad, ptr %i.s, align 16, !tbaa !13
  %wide.load.1 = load <16 x i8>, ptr %i.w, align 16, !tbaa !13
  %wide.load50.1 = load <16 x i8>, ptr %i.x, align 16, !tbaa !13
  %i.ae = xor <16 x i8> %wide.load.1, splat (i8 92)
  %i.af = xor <16 x i8> %wide.load50.1, splat (i8 92)
  store <16 x i8> %i.ae, ptr %i.w, align 16, !tbaa !13
  store <16 x i8> %i.af, ptr %i.x, align 16, !tbaa !13
  %i.ag = call i64 @llvm.umin.i64(i64 %.02537, i64 32) ; 3 uses
  call void @sha256_init(ptr noundef nonnull %3) #27
  call void @sha256_update(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef 64) #27
  call void @sha256_update(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i64 noundef 32) #27
  call void @sha256_final(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #27
  %i.ah = load i64, ptr @getRandomBytes.counter, align 8, !tbaa !41
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr @getRandomBytes.counter, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.02438, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.ag, i1 false)
  %i.aj = sub i64 %.02537, %i.ag                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02438, i64 %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not32 = icmp eq i64 %i.aj, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #16

declare void @sha256_init(ptr noundef) local_unnamed_addr #14

declare void @sha256_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @sha256_final(ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @getRandomHexChars(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  tail call void @getRandomBytes(ptr noundef %0, i64 noundef %1)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %2 = icmp eq i64 %1, 1
  br i1 %2, label %.lr.ph.epil.preheader.a, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.09 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.n, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.09 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = and i8 %i.b, 15
  %i.d = zext nneg i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @HEX, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  store i8 %i.f, ptr %i.a, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.09
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = and i8 %i.i, 15
  %i.k = zext nneg i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @HEX, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  store i8 %i.m, ptr %i.h, align 1, !tbaa !13
  %i.n = add nuw i64 %.09, 2                      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !61

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader.a

.lr.ph.epil.preheader.a:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.09.epil.init.a = phi i64 [ 0, %.lr.ph.preheader ], [ %i.n, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod10 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.09.epil.init.a ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = and i8 %i.p, 15
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @HEX, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  store i8 %i.t, ptr %i.o, align 1, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader.a, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @getAbsolutePath(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = tail call ptr @sdsnew(ptr noundef %0) #27
  %i.c = tail call ptr @sdstrim(ptr noundef %i.b, ptr noundef nonnull @.str.18) #27 ; 13 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %i.e = icmp eq i8 %i.d, 47
  br i1 %i.e, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @getcwd(ptr noundef nonnull %i.a, i64 noundef 1024) #27
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @sdsnew(ptr noundef nonnull %i.a) #27 ; 14 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %.val.i = load i8, ptr %i.i, align 1, !tbaa !13 ; 3 uses
  %i.j = and i8 %.val.i, 7                        ; 2 uses
  switch i8 %i.j, label %sdslen.exit.thread [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i8 %.val.i, 3
  %i.l = zext nneg i8 %i.k to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = zext i8 %i.n to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 -5
  %i.q = load i16, ptr %i.p, align 1, !tbaa !28
  %i.r = zext i16 %i.q to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %i.h, i64 -9
  %i.t = load i32, ptr %i.s, align 1, !tbaa !9
  %i.u = zext i32 %i.t to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %i.h, i64 -17
  %i.w = load i64, ptr %i.v, align 1, !tbaa !41
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.w, %bb.h ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ %i.r, %bb.f ], [ %i.u, %bb.g ]
  %.not = icmp eq i64 %.0.i, 0
  br i1 %.not, label %sdslen.exit.thread, label %bb.i

bb.i:                                             ; preds = %sdslen.exit
  switch i8 %i.j, label %default.unreachable47 [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.x = lshr i8 %.val.i, 3
  %i.y = zext nneg i8 %i.x to i64
  br label %sdslen.exit33

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds i8, ptr %i.h, i64 -3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = zext i8 %i.aa to i64
  br label %sdslen.exit33

bb.l:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds i8, ptr %i.h, i64 -5
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !28
  %i.ae = zext i16 %i.ad to i64
  br label %sdslen.exit33

bb.m:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds i8, ptr %i.h, i64 -9
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !9
  %i.ah = zext i32 %i.ag to i64
  br label %sdslen.exit33

bb.n:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds i8, ptr %i.h, i64 -17
  %i.aj = load i64, ptr %i.ai, align 1, !tbaa !41
  br label %sdslen.exit33

default.unreachable47:                            ; preds = %bb.i
  unreachable

sdslen.exit33:                                    ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i32 = phi i64 [ %i.aj, %bb.n ], [ %i.y, %bb.j ], [ %i.ab, %bb.k ], [ %i.ae, %bb.l ], [ %i.ah, %bb.m ]
  %i.ak = getelementptr i8, ptr %i.h, i64 %.0.i32
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %.not29 = icmp eq i8 %i.am, 47
  br i1 %.not29, label %sdslen.exit.thread, label %bb.o

bb.o:                                             ; preds = %sdslen.exit33
  %i.an = call ptr @sdscat(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.19) #27
  br label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %bb.c, %bb.o, %sdslen.exit33, %sdslen.exit
  %.027 = phi ptr [ %i.an, %bb.o ], [ %i.h, %sdslen.exit33 ], [ %i.h, %sdslen.exit ], [ %i.h, %bb.c ] ; 8 uses
  %i.ao = getelementptr i8, ptr %i.c, i64 -1
  %i.ap = getelementptr inbounds i8, ptr %i.c, i64 -17
  %i.aq = getelementptr inbounds i8, ptr %i.c, i64 -9
  %i.ar = getelementptr inbounds i8, ptr %i.c, i64 -5
  %i.as = getelementptr inbounds i8, ptr %i.c, i64 -3
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.av = getelementptr i8, ptr %.027, i64 -1
  %i.aw = getelementptr inbounds i8, ptr %.027, i64 -17 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.027, i64 -9 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.027, i64 -5 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.027, i64 -3 ; 2 uses
  br label %sdslen.exit39.thread

sdslen.exit39.thread:                             ; preds = %sdslen.exit39.thread.backedge, %sdslen.exit.thread
  %.val.i34 = load i8, ptr %i.ao, align 1, !tbaa !13 ; 2 uses
  %i.ba = and i8 %.val.i34, 7
  switch i8 %i.ba, label %.critedge [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
  ]

bb.p:                                             ; preds = %sdslen.exit39.thread
  %i.bb = lshr i8 %.val.i34, 3
  %i.bc = zext nneg i8 %i.bb to i64
  br label %sdslen.exit36

bb.q:                                             ; preds = %sdslen.exit39.thread
  %i.bd = load i8, ptr %i.as, align 1, !tbaa !13
  %i.be = zext i8 %i.bd to i64
  br label %sdslen.exit36

bb.r:                                             ; preds = %sdslen.exit39.thread
  %i.bf = load i16, ptr %i.ar, align 1, !tbaa !28
  %i.bg = zext i16 %i.bf to i64
  br label %sdslen.exit36

bb.s:                                             ; preds = %sdslen.exit39.thread
  %i.bh = load i32, ptr %i.aq, align 1, !tbaa !9
  %i.bi = zext i32 %i.bh to i64
  br label %sdslen.exit36

bb.t:                                             ; preds = %sdslen.exit39.thread
  %i.bj = load i64, ptr %i.ap, align 1, !tbaa !41
  br label %sdslen.exit36

sdslen.exit36:                                    ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i35 = phi i64 [ %i.bj, %bb.t ], [ %i.bc, %bb.p ], [ %i.be, %bb.q ], [ %i.bg, %bb.r ], [ %i.bi, %bb.s ]
  %i.bk = icmp ugt i64 %.0.i35, 2
  br i1 %i.bk, label %bb.u, label %.critedge

bb.u:                                             ; preds = %sdslen.exit36
  %i.bl = load i8, ptr %i.c, align 1, !tbaa !13
  %i.bm = icmp eq i8 %i.bl, 46
  br i1 %i.bm, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.bn = load i8, ptr %i.at, align 1, !tbaa !13
  %i.bo = icmp eq i8 %i.bn, 46
  br i1 %i.bo, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.bp = load i8, ptr %i.au, align 1, !tbaa !13
  %i.bq = icmp eq i8 %i.bp, 47
  br i1 %i.bq, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  call void @sdsrange(ptr noundef nonnull %i.c, i64 noundef 3, i64 noundef -1) #27
  %.val.i37 = load i8, ptr %i.av, align 1, !tbaa !13 ; 3 uses
  %i.br = and i8 %.val.i37, 7                     ; 2 uses
  switch i8 %i.br, label %sdslen.exit39.thread.backedge [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
  ]

sdslen.exit39.thread.backedge:                    ; preds = %bb.x, %._crit_edge, %sdslen.exit39
  br label %sdslen.exit39.thread, !llvm.loop !62

bb.y:                                             ; preds = %bb.x
  %i.bs = lshr i8 %.val.i37, 3
  %i.bt = zext nneg i8 %i.bs to i64
  br label %sdslen.exit39

bb.z:                                             ; preds = %bb.x
  %i.bu = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bv = zext i8 %i.bu to i64
  br label %sdslen.exit39

bb.aa:                                            ; preds = %bb.x
  %i.bw = load i16, ptr %i.ay, align 1, !tbaa !28
  %i.bx = zext i16 %i.bw to i64
  br label %sdslen.exit39

bb.ab:                                            ; preds = %bb.x
  %i.by = load i32, ptr %i.ax, align 1, !tbaa !9
  %i.bz = zext i32 %i.by to i64
  br label %sdslen.exit39

bb.ac:                                            ; preds = %bb.x
  %i.ca = load i64, ptr %i.aw, align 1, !tbaa !41
  br label %sdslen.exit39

sdslen.exit39:                                    ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.0.i38 = phi i64 [ %i.ca, %bb.ac ], [ %i.bt, %bb.y ], [ %i.bv, %bb.z ], [ %i.bx, %bb.aa ], [ %i.bz, %bb.ab ]
  %i.cb = icmp ugt i64 %.0.i38, 1
  br i1 %i.cb, label %bb.ad, label %sdslen.exit39.thread.backedge

bb.ad:                                            ; preds = %sdslen.exit39
  switch i8 %i.br, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.ah
    i8 4, label %bb.ai
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cc = lshr i8 %.val.i37, 3
  %i.cd = zext nneg i8 %i.cc to i64
  br label %sdslen.exit42

bb.af:                                            ; preds = %bb.ad
  %i.ce = load i8, ptr %i.az, align 1, !tbaa !13
  %i.cf = zext i8 %i.ce to i64
  br label %sdslen.exit42

bb.ag:                                            ; preds = %bb.ad
  %i.cg = load i16, ptr %i.ay, align 1, !tbaa !28
  %i.ch = zext i16 %i.cg to i64
  br label %sdslen.exit42

bb.ah:                                            ; preds = %bb.ad
  %i.ci = load i32, ptr %i.ax, align 1, !tbaa !9
  %i.cj = zext i32 %i.ci to i64
  br label %sdslen.exit42

bb.ai:                                            ; preds = %bb.ad
  %i.ck = load i64, ptr %i.aw, align 1, !tbaa !41
  br label %sdslen.exit42

default.unreachable:                              ; preds = %bb.ad
  unreachable

sdslen.exit42:                                    ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.0.i41 = phi i64 [ %i.ck, %bb.ai ], [ %i.cd, %bb.ae ], [ %i.cf, %bb.af ], [ %i.ch, %bb.ag ], [ %i.cj, %bb.ah ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.027, i64 %.0.i41
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -2 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %.not3048 = icmp eq i8 %i.cn, 47
  br i1 %.not3048, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %sdslen.exit42, %.lr.ph
  %.050 = phi i32 [ %i.cp, %.lr.ph ], [ 1, %sdslen.exit42 ] ; 2 uses
  %.02649 = phi ptr [ %i.co, %.lr.ph ], [ %i.cm, %sdslen.exit42 ]
  %i.co = getelementptr inbounds i8, ptr %.02649, i64 -1 ; 2 uses
  %i.cp = add nuw nsw i32 %.050, 1
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !13
  %.not30 = icmp eq i8 %i.cq, 47
  br i1 %.not30, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !63

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cr = sub nuw i32 -2, %.050
  %i.cs = sext i32 %i.cr to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %sdslen.exit42
  %.0.lcssa = phi i64 [ -2, %sdslen.exit42 ], [ %i.cs, %._crit_edge.loopexit ]
  call void @sdsrange(ptr noundef nonnull %.027, i64 noundef 0, i64 noundef %.0.lcssa) #27
  br label %sdslen.exit39.thread.backedge

.critedge:                                        ; preds = %sdslen.exit39.thread, %bb.v, %bb.u, %sdslen.exit36, %bb.w
  %i.ct = call ptr @sdscatsds(ptr noundef %.027, ptr noundef nonnull %i.c) #27
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %.critedge
  %.028.ph = phi ptr [ %i.ct, %.critedge ], [ null, %bb.b ]
  call void @sdsfree(ptr noundef nonnull %i.c) #27
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split, %bb.a
  %.028 = phi ptr [ %i.c, %bb.a ], [ %.028.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %.028
}

declare ptr @sdsnew(ptr noundef) local_unnamed_addr #14

declare ptr @sdstrim(ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @sdsfree(ptr noundef) local_unnamed_addr #14

declare ptr @sdscat(ptr noundef, ptr noundef) local_unnamed_addr #14

declare void @sdsrange(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

declare ptr @sdscatsds(ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @getTimeZone() local_unnamed_addr #19 {
bb.a:
  %i.a = load i64, ptr @timezone, align 8, !tbaa !41
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @pathIsBaseName(ptr nofree noundef readonly %0) local_unnamed_addr #20 {
bb.a:
  %i.a = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #29
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #29
  %i.d = icmp eq ptr %i.c, null
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ 0, %bb.a ], [ %i.e, %bb.b ]
  ret i32 %i.f
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @fileExist(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = call i32 @stat64(ptr noundef %0, ptr noundef nonnull %1) #27
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 61440
  %i.f = icmp eq i32 %i.e, 32768
  %i.g = select i1 %i.b, i1 %i.f, i1 false
  %i.h = zext i1 %i.g to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i32 %i.h
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @dirExists(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = call i32 @stat64(ptr noundef %0, ptr noundef nonnull %1) #27
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 61440
  %i.f = icmp eq i32 %i.e, 16384
  %i.g = select i1 %i.b, i1 %i.f, i1 false
  %i.h = zext i1 %i.g to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i32 %i.h
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -1, 1) i32 @dirCreateIfMissing(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = tail call i32 @mkdir(ptr noundef %0, i32 noundef 493) #27
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #28    ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9
  %.not2 = icmp eq i32 %i.c, 17
  br i1 %.not2, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.d = call i32 @stat64(ptr noundef readonly %0, ptr noundef nonnull %1) #27
  %i.e = icmp ne i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 61440
  %i.i = icmp ne i32 %i.h, 16384
  %.not6 = select i1 %i.e, i1 true, i1 %i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 20, ptr %i.b, align 4, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.b ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local noundef range(i32 -1, 1) i32 @dirRemove(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca [4097 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = tail call noalias ptr @opendir(ptr noundef %0) ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = tail call ptr @readdir64(ptr noundef nonnull %i.b) #27 ; 2 uses
  %.not33 = icmp eq ptr %i.d, null
  br i1 %.not33, label %._crit_edge, label %sub_0.lr.ph

sub_0.lr.ph:                                      ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %sub_0

sub_0:                                            ; preds = %sub_0.lr.ph, %.backedge
  %i.f = phi ptr [ %i.d, %sub_0.lr.ph ], [ %i.q, %.backedge ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 19 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %.not34 = icmp eq i8 %i.h, 46
  br i1 %.not34, label %.tail, label %.tail26.thread

.tail:                                            ; preds = %sub_0
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %.backedge, label %sub_128

sub_128:                                          ; preds = %.tail
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.m = load i8, ptr %i.l, align 1
  %.not36 = icmp eq i8 %i.m, 46
  br i1 %.not36, label %.tail26, label %.tail26.thread

.tail26:                                          ; preds = %sub_128
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 21
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %.backedge, label %.tail26.thread

.backedge:                                        ; preds = %bb.f, %bb.h, %.tail, %.tail26
  %i.q = call ptr @readdir64(ptr noundef nonnull %i.b) #27 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %sub_0, !llvm.loop !64

.tail26.thread:                                   ; preds = %sub_0, %sub_128, %.tail26
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4097, ptr noundef nonnull @.str.22, ptr noundef %0, ptr noundef nonnull %i.g) #27 ; 0 uses
  %i.s = call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.a, i32 noundef 2048) #27 ; 3 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.tail26.thread
  %i.u = call i32 @closedir(ptr noundef nonnull %i.b) ; 0 uses
  br label %.thread

bb.c:                                             ; preds = %.tail26.thread
  %i.v = call i32 @fstat64(i32 noundef %i.s, ptr noundef nonnull %1) #27
  %i.w = icmp eq i32 %i.v, -1
  %i.x = call i32 @close(i32 noundef %i.s) #27    ; 0 uses
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = call i32 @closedir(ptr noundef nonnull %i.b) ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.e, align 8, !tbaa !65
  %i.aa = and i32 %i.z, 61440
  %i.ab = icmp eq i32 %i.aa, 16384
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = call i32 @dirRemove(ptr noundef nonnull %i.a)
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.g, label %.backedge, !llvm.loop !64

bb.g:                                             ; preds = %bb.f
  %i.ae = call i32 @closedir(ptr noundef nonnull %i.b) ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.e
  %i.af = call i32 @unlink(ptr noundef nonnull %i.a) #27
  %.not24 = icmp eq i32 %i.af, 0
  br i1 %.not24, label %.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = call i32 @closedir(ptr noundef nonnull %i.b) ; 0 uses
  br label %.thread

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %i.ah = call i32 @rmdir(ptr noundef %0) #27
  %.not21 = icmp ne i32 %i.ah, 0
  %i.ai = call i32 @closedir(ptr noundef nonnull %i.b) ; 0 uses
  %. = sext i1 %.not21 to i32
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.g, %bb.d, %bb.b, %._crit_edge, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ %., %._crit_edge ], [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.g ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i32 %.2
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #16

declare ptr @readdir64(ptr noundef) local_unnamed_addr #14

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #16

declare i32 @close(i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @rmdir(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local ptr @makePath(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @sdsempty() #27
  %i.b = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.a, ptr noundef nonnull @.str.22, ptr noundef %0, ptr noundef %1) #27
  ret ptr %i.b
}

declare ptr @sdscatfmt(ptr noundef, ptr noundef, ...) local_unnamed_addr #14

declare ptr @sdsempty() local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @fsyncFileDir(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4097 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4096
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #28
  store i32 36, ptr %i.d, align 4, !tbaa !9
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.b, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.e, i1 false)
  %i.f = call ptr @dirname(ptr noundef nonnull %i.a) #27
  %i.g = call i32 (ptr, i32, ...) @open64(ptr noundef %i.f, i32 noundef 0) #27 ; 4 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__errno_location() #28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9
  %i.k = icmp ne i32 %i.j, 21
  %. = sext i1 %i.k to i32
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.l = call i32 @fdatasync(i32 noundef %i.g) #27
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @__errno_location() #28    ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9    ; 2 uses
  switch i32 %i.o, label %bb.g [
    i32 9, label %bb.h
    i32 22, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @close(i32 noundef %i.g) #27    ; 0 uses
  store i32 %i.o, ptr %i.n, align 4, !tbaa !9
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.e
  %i.q = call i32 @close(i32 noundef %i.g) #27    ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.g, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %., %bb.d ], [ -1, %bb.g ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0
}

; Function Attrs: nounwind
declare ptr @dirname(ptr noundef) local_unnamed_addr #4

declare i32 @fdatasync(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @reclaimFilePageCache(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @posix_fadvise64(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 4) #27 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #28
  store i32 %i.a, ptr %i.b, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @posix_fadvise64(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @fgets_async_signal_safe(ptr nofree noundef captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.thread21

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = tail call i64 @read(i32 noundef %2, ptr noundef %i.b, i64 noundef 1) #27
  %i.d = icmp slt i64 %i.c, 1
  br i1 %i.d, label %.thread21, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = load i8, ptr %i.b, align 1, !tbaa !13
  %.not = icmp eq i8 %i.e, 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.thread21, label %.lr.ph, !llvm.loop !68

.thread21:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %i.f = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ null, %.lr.ph ]
  ret ptr %i.f
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #21

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @vsnprintf_async_signal_safe(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #22 {
bb.a:
  %i.a = alloca [22 x i8], align 16               ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 21 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %next.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %next.gep115 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %next.gep116 = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %next.gep117 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %next.gep118 = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %next.gep119 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %next.gep120 = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %next.gep121 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %next.gep122 = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %next.gep123 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %next.gep124 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %next.gep125 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %next.gep126 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %next.gep127 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %next.gep128 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.054 = phi ptr [ %2, %bb.a ], [ %i.fj, %.loopexit ] ; 5 uses
  %.049 = phi ptr [ %0, %bb.a ], [ %.3.ph, %.loopexit ] ; 11 uses
  %i.j = load i8, ptr %.054, align 1, !tbaa !13   ; 2 uses
  switch i8 %i.j, label %bb.c [
    i8 0, label %bb.aj
    i8 37, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq ptr %.049, %i.c
  br i1 %i.k, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.049, i64 1
  store i8 %i.j, ptr %.049, align 1, !tbaa !13
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.054, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13    ; 2 uses
  %.not = icmp eq i8 %i.n, 108                    ; 2 uses
  br i1 %.not, label %.sink.split.i, label %check_longlong_async_signal_safe.exit

.sink.split.i:                                    ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.054, i64 2 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.p, 108
  %i.q = getelementptr inbounds nuw i8, ptr %.054, i64 3
  %.0.ph.i = select i1 %.not.i, ptr %i.q, ptr %i.o ; 2 uses
  %.pr = load i8, ptr %.0.ph.i, align 1, !tbaa !13
  br label %check_longlong_async_signal_safe.exit

check_longlong_async_signal_safe.exit:            ; preds = %bb.e, %.sink.split.i
  %i.r = phi i8 [ %i.n, %bb.e ], [ %.pr, %.sink.split.i ] ; 2 uses
  %.0.i = phi ptr [ %i.m, %bb.e ], [ %.0.ph.i, %.sink.split.i ] ; 6 uses
  switch i8 %i.r, label %.loopexit [
    i8 115, label %bb.af
    i8 112, label %check_longlong_async_signal_safe.exit..thread79_crit_edge
    i8 100, label %bb.f
    i8 105, label %bb.f
    i8 117, label %bb.f
    i8 120, label %bb.f
  ]

check_longlong_async_signal_safe.exit..thread79_crit_edge: ; preds = %check_longlong_async_signal_safe.exit
  %.pre = load i32, ptr %3, align 8
  br label %.thread79

bb.f:                                             ; preds = %check_longlong_async_signal_safe.exit, %check_longlong_async_signal_safe.exit, %check_longlong_async_signal_safe.exit, %check_longlong_async_signal_safe.exit
  %i.s = icmp eq i8 %i.r, 117                     ; 2 uses
  %.pre100 = load i32, ptr %3, align 8            ; 9 uses
  br i1 %.not, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  br i1 %i.s, label %bb.h, label %.thread79

bb.h:                                             ; preds = %bb.g
  %i.t = icmp ult i32 %.pre100, 41
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = zext nneg i32 %.pre100 to i64
  %i.w = getelementptr i8, ptr %i.u, i64 %i.v
  %i.x = add nuw nsw i32 %.pre100, 8
  store i32 %i.x, ptr %3, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.d, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = phi ptr [ %i.w, %bb.i ], [ %i.y, %bb.j ]
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !41
  br label %bb.x

.thread79:                                        ; preds = %check_longlong_async_signal_safe.exit..thread79_crit_edge, %bb.g
  %i.ac = phi i32 [ %.pre, %check_longlong_async_signal_safe.exit..thread79_crit_edge ], [ %.pre100, %bb.g ] ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 41
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread79
  %i.ae = load ptr, ptr %i.e, align 8
  %i.af = zext nneg i32 %i.ac to i64
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.af
  %i.ah = add nuw nsw i32 %i.ac, 8
  store i32 %i.ah, ptr %3, align 8
  br label %bb.n

bb.m:                                             ; preds = %.thread79
  %i.ai = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.d, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ak = phi ptr [ %i.ag, %bb.l ], [ %i.ai, %bb.m ]
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !41
  br label %bb.x

bb.o:                                             ; preds = %bb.f
  %i.am = icmp ult i32 %.pre100, 41               ; 2 uses
  br i1 %i.s, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  br i1 %i.am, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.an = load ptr, ptr %i.e, align 8
  %i.ao = zext nneg i32 %.pre100 to i64
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ao
  %i.aq = add nuw nsw i32 %.pre100, 8
  store i32 %i.aq, ptr %3, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  store ptr %i.as, ptr %i.d, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.at = phi ptr [ %i.ap, %bb.q ], [ %i.ar, %bb.r ]
  %i.au = load i32, ptr %i.at, align 4, !tbaa !9
  %i.av = zext i32 %i.au to i64
  br label %bb.x

bb.t:                                             ; preds = %bb.o
  br i1 %i.am, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aw = load ptr, ptr %i.e, align 8
  %i.ax = zext nneg i32 %.pre100 to i64
  %i.ay = getelementptr i8, ptr %i.aw, i64 %i.ax
  %i.az = add nuw nsw i32 %.pre100, 8
  store i32 %i.az, ptr %3, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ba = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.d, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bc = phi ptr [ %i.ay, %bb.u ], [ %i.ba, %bb.v ]
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !9
  %i.be = sext i32 %i.bd to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.s, %bb.w, %bb.k, %bb.n
  %.not6477 = phi i1 [ false, %bb.k ], [ false, %bb.n ], [ true, %bb.s ], [ true, %bb.w ]
  %.052 = phi i64 [ 0, %bb.k ], [ %i.al, %bb.n ], [ 0, %bb.s ], [ %i.be, %bb.w ] ; 4 uses
  %.051 = phi i64 [ %i.ab, %bb.k ], [ 0, %bb.n ], [ %i.av, %bb.s ], [ 0, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.bf = load i8, ptr %.0.i, align 1, !tbaa !13  ; 3 uses
  %i.bg = icmp eq i8 %i.bf, 120                   ; 2 uses
  %i.bh = icmp eq i8 %i.bf, 112                   ; 2 uses
  %i.bi = or i1 %i.bg, %i.bh                      ; 2 uses
  %i.bj = icmp eq i8 %i.bf, 117
  br i1 %i.bj, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  store i8 0, ptr %i.f, align 1, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.pn.i = phi ptr [ %i.f, %bb.y ], [ %.07.i, %bb.z ]
  %.0.i68 = phi i64 [ %.051, %bb.y ], [ %i.bn, %bb.z ] ; 3 uses
  %.07.i = getelementptr inbounds i8, ptr %.pn.i, i64 -1 ; 3 uses
  %i.bk = urem i64 %.0.i68, 10
  %i.bl = getelementptr inbounds nuw i8, ptr @HEX, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !13
  store i8 %i.bm, ptr %.07.i, align 1, !tbaa !13
  %i.bn = udiv i64 %.0.i68, 10
  %.not.i69 = icmp ult i64 %.0.i68, 10
  br i1 %.not.i69, label %u2string_async_signal_safe.exit, label %bb.z, !llvm.loop !69

bb.aa:                                            ; preds = %bb.x
  %i.bo = icmp slt i64 %.052, 0                   ; 2 uses
  store i8 0, ptr %i.f, align 1, !tbaa !13
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %.052, i1 true)
  %i.bp = or i1 %i.bg, %i.bh
  %or.cond.i = and i1 %i.bo, %i.bp                ; 2 uses
  br i1 %or.cond.i, label %.loopexit55.loopexit.i, label %.loopexit55.i

.loopexit55.loopexit.i:                           ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %scevgep.i, i8 48, i64 16, i1 false), !tbaa !13
  %i.bq = xor i64 %.052, -1
  br label %.loopexit55.i

.loopexit55.i:                                    ; preds = %.loopexit55.loopexit.i, %bb.aa
  %.1.i = phi i64 [ %spec.select.i, %bb.aa ], [ %i.bq, %.loopexit55.loopexit.i ]
  %i.br = select i1 %i.bi, i64 16, i64 10         ; 3 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.loopexit55.i
  %.050.i = phi ptr [ %i.g, %.loopexit55.i ], [ %i.bv, %bb.ab ] ; 3 uses
  %.2.i = phi i64 [ %.1.i, %.loopexit55.i ], [ %i.bw, %bb.ab ] ; 3 uses
  %i.bs = urem i64 %.2.i, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr @HEX, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bv = getelementptr inbounds i8, ptr %.050.i, i64 -1 ; 3 uses
  store i8 %i.bu, ptr %.050.i, align 1, !tbaa !13
  %i.bw = udiv i64 %.2.i, %i.br
  %.not.i70 = icmp ult i64 %.2.i, %i.br
  br i1 %.not.i70, label %bb.ac, label %bb.ab, !llvm.loop !70

bb.ac:                                            ; preds = %bb.ab
  %not. = xor i1 %i.bi, true
  %or.cond3.i = and i1 %i.bo, %not.
  br i1 %or.cond3.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bx = getelementptr inbounds i8, ptr %.050.i, i64 -2
  store i8 45, ptr %i.bv, align 1, !tbaa !13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.151.i = phi ptr [ %i.bx, %bb.ad ], [ %i.bv, %bb.ac ]
  br i1 %or.cond.i, label %vector.ph, label %i2string_async_signal_safe.exit

vector.ph:                                        ; preds = %bb.ae
  %wide.load = load <16 x i8>, ptr %i.i, align 1, !tbaa !13
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 17 uses
  %i.by = icmp eq <16 x i8> %reverse, splat (i8 48)
  %i.bz = icmp eq <16 x i8> %reverse, splat (i8 49)
  %i.ca = icmp eq <16 x i8> %reverse, splat (i8 50)
  %i.cb = icmp eq <16 x i8> %reverse, splat (i8 51)
  %i.cc = icmp eq <16 x i8> %reverse, splat (i8 52)
  %i.cd = icmp eq <16 x i8> %reverse, splat (i8 53)
  %i.ce = icmp eq <16 x i8> %reverse, splat (i8 54)
  %i.cf = icmp eq <16 x i8> %reverse, splat (i8 55)
  %i.cg = icmp eq <16 x i8> %reverse, splat (i8 56)
  %i.ch = icmp eq <16 x i8> %reverse, splat (i8 57)
  %i.ci = icmp eq <16 x i8> %reverse, splat (i8 97)
  %i.cj = icmp eq <16 x i8> %reverse, splat (i8 98)
  %i.ck = icmp eq <16 x i8> %reverse, splat (i8 99)
  %i.cl = icmp eq <16 x i8> %reverse, splat (i8 100)
  %i.cm = icmp eq <16 x i8> %reverse, splat (i8 101)
  %i.cn = add <16 x i8> %reverse, splat (i8 -97)
  %i.co = icmp ult <16 x i8> %i.cn, splat (i8 6)
  %i.cp = add <16 x i8> %reverse, splat (i8 -48)
  %i.cq = icmp ult <16 x i8> %i.cp, splat (i8 10)
  %i.cr = or <16 x i1> %i.co, %i.cq               ; 16 uses
  %predphi = select <16 x i1> %i.cm, <16 x i8> splat (i8 49), <16 x i8> splat (i8 48)
  %predphi129 = select <16 x i1> %i.cl, <16 x i8> splat (i8 50), <16 x i8> %predphi
  %predphi130 = select <16 x i1> %i.ck, <16 x i8> splat (i8 51), <16 x i8> %predphi129
  %predphi131 = select <16 x i1> %i.cj, <16 x i8> splat (i8 52), <16 x i8> %predphi130
  %predphi132 = select <16 x i1> %i.ci, <16 x i8> splat (i8 53), <16 x i8> %predphi131
  %predphi133 = select <16 x i1> %i.ch, <16 x i8> splat (i8 54), <16 x i8> %predphi132
  %predphi134 = select <16 x i1> %i.cg, <16 x i8> splat (i8 55), <16 x i8> %predphi133
  %predphi135 = select <16 x i1> %i.cf, <16 x i8> splat (i8 56), <16 x i8> %predphi134
  %predphi136 = select <16 x i1> %i.ce, <16 x i8> splat (i8 57), <16 x i8> %predphi135
  %predphi137 = select <16 x i1> %i.cd, <16 x i8> splat (i8 97), <16 x i8> %predphi136
  %predphi138 = select <16 x i1> %i.cc, <16 x i8> splat (i8 98), <16 x i8> %predphi137
  %predphi139 = select <16 x i1> %i.cb, <16 x i8> splat (i8 99), <16 x i8> %predphi138
  %predphi140 = select <16 x i1> %i.ca, <16 x i8> splat (i8 100), <16 x i8> %predphi139
  %predphi141 = select <16 x i1> %i.bz, <16 x i8> splat (i8 101), <16 x i8> %predphi140
  %predphi142 = select <16 x i1> %i.by, <16 x i8> splat (i8 102), <16 x i8> %predphi141 ; 16 uses
  %i.cs = extractelement <16 x i1> %i.cr, i64 0
  br i1 %i.cs, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.ph
  %i.ct = extractelement <16 x i8> %predphi142, i64 0
  store i8 %i.ct, ptr %i.g, align 4, !tbaa !13
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph
  %i.cu = extractelement <16 x i1> %i.cr, i64 1
  br i1 %i.cu, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue
  %i.cv = extractelement <16 x i8> %predphi142, i64 1
  store i8 %i.cv, ptr %next.gep, align 1, !tbaa !13
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue
  %i.cw = extractelement <16 x i1> %i.cr, i64 2
  br i1 %i.cw, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  %i.cx = extractelement <16 x i8> %predphi142, i64 2
  store i8 %i.cx, ptr %next.gep115, align 2, !tbaa !13
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %i.cy = extractelement <16 x i1> %i.cr, i64 3
  br i1 %i.cy, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  %i.cz = extractelement <16 x i8> %predphi142, i64 3
  store i8 %i.cz, ptr %next.gep116, align 1, !tbaa !13
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %i.da = extractelement <16 x i1> %i.cr, i64 4
  br i1 %i.da, label %pred.store.if149, label %pred.store.continue150

pred.store.if149:                                 ; preds = %pred.store.continue148
  %i.db = extractelement <16 x i8> %predphi142, i64 4
  store i8 %i.db, ptr %next.gep117, align 16, !tbaa !13
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %pred.store.continue148
  %i.dc = extractelement <16 x i1> %i.cr, i64 5
  br i1 %i.dc, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue150
  %i.dd = extractelement <16 x i8> %predphi142, i64 5
  store i8 %i.dd, ptr %next.gep118, align 1, !tbaa !13
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue150
  %i.de = extractelement <16 x i1> %i.cr, i64 6
  br i1 %i.de, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %pred.store.continue152
  %i.df = extractelement <16 x i8> %predphi142, i64 6
  store i8 %i.df, ptr %next.gep119, align 2, !tbaa !13
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %i.dg = extractelement <16 x i1> %i.cr, i64 7
  br i1 %i.dg, label %pred.store.if155, label %pred.store.continue156

pred.store.if155:                                 ; preds = %pred.store.continue154
  %i.dh = extractelement <16 x i8> %predphi142, i64 7
  store i8 %i.dh, ptr %next.gep120, align 1, !tbaa !13
  br label %pred.store.continue156

pred.store.continue156:                           ; preds = %pred.store.if155, %pred.store.continue154
  %i.di = extractelement <16 x i1> %i.cr, i64 8
  br i1 %i.di, label %pred.store.if157, label %pred.store.continue158

pred.store.if157:                                 ; preds = %pred.store.continue156
  %i.dj = extractelement <16 x i8> %predphi142, i64 8
  store i8 %i.dj, ptr %next.gep121, align 4, !tbaa !13
  br label %pred.store.continue158

pred.store.continue158:                           ; preds = %pred.store.if157, %pred.store.continue156
  %i.dk = extractelement <16 x i1> %i.cr, i64 9
  br i1 %i.dk, label %pred.store.if159, label %pred.store.continue160

pred.store.if159:                                 ; preds = %pred.store.continue158
  %i.dl = extractelement <16 x i8> %predphi142, i64 9
  store i8 %i.dl, ptr %next.gep122, align 1, !tbaa !13
  br label %pred.store.continue160

pred.store.continue160:                           ; preds = %pred.store.if159, %pred.store.continue158
  %i.dm = extractelement <16 x i1> %i.cr, i64 10
  br i1 %i.dm, label %pred.store.if161, label %pred.store.continue162

pred.store.if161:                                 ; preds = %pred.store.continue160
  %i.dn = extractelement <16 x i8> %predphi142, i64 10
  store i8 %i.dn, ptr %next.gep123, align 2, !tbaa !13
  br label %pred.store.continue162

pred.store.continue162:                           ; preds = %pred.store.if161, %pred.store.continue160
  %i.do = extractelement <16 x i1> %i.cr, i64 11
  br i1 %i.do, label %pred.store.if163, label %pred.store.continue164

pred.store.if163:                                 ; preds = %pred.store.continue162
  %i.dp = extractelement <16 x i8> %predphi142, i64 11
  store i8 %i.dp, ptr %next.gep124, align 1, !tbaa !13
  br label %pred.store.continue164

pred.store.continue164:                           ; preds = %pred.store.if163, %pred.store.continue162
  %i.dq = extractelement <16 x i1> %i.cr, i64 12
  br i1 %i.dq, label %pred.store.if165, label %pred.store.continue166

pred.store.if165:                                 ; preds = %pred.store.continue164
  %i.dr = extractelement <16 x i8> %predphi142, i64 12
  store i8 %i.dr, ptr %next.gep125, align 8, !tbaa !13
  br label %pred.store.continue166

pred.store.continue166:                           ; preds = %pred.store.if165, %pred.store.continue164
  %i.ds = extractelement <16 x i1> %i.cr, i64 13
  br i1 %i.ds, label %pred.store.if167, label %pred.store.continue168

pred.store.if167:                                 ; preds = %pred.store.continue166
  %i.dt = extractelement <16 x i8> %predphi142, i64 13
  store i8 %i.dt, ptr %next.gep126, align 1, !tbaa !13
  br label %pred.store.continue168

pred.store.continue168:                           ; preds = %pred.store.if167, %pred.store.continue166
  %i.du = extractelement <16 x i1> %i.cr, i64 14
  br i1 %i.du, label %pred.store.if169, label %pred.store.continue170

pred.store.if169:                                 ; preds = %pred.store.continue168
  %i.dv = extractelement <16 x i8> %predphi142, i64 14
  store i8 %i.dv, ptr %next.gep127, align 2, !tbaa !13
  br label %pred.store.continue170

pred.store.continue170:                           ; preds = %pred.store.if169, %pred.store.continue168
  %i.dw = extractelement <16 x i1> %i.cr, i64 15
  br i1 %i.dw, label %pred.store.if171, label %i2string_async_signal_safe.exit

pred.store.if171:                                 ; preds = %pred.store.continue170
  %i.dx = extractelement <16 x i8> %predphi142, i64 15
  store i8 %i.dx, ptr %next.gep128, align 1, !tbaa !13
  br label %i2string_async_signal_safe.exit

i2string_async_signal_safe.exit:                  ; preds = %pred.store.continue170, %pred.store.if171, %bb.ae
  %.3.i = phi ptr [ %.151.i, %bb.ae ], [ %i.h, %pred.store.if171 ], [ %i.h, %pred.store.continue170 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  br label %u2string_async_signal_safe.exit

u2string_async_signal_safe.exit:                  ; preds = %bb.z, %i2string_async_signal_safe.exit
  %i.dz = phi ptr [ %i.dy, %i2string_async_signal_safe.exit ], [ %.07.i, %bb.z ]
  %i.ea = load i8, ptr %.0.i, align 1, !tbaa !13
  %i.eb = icmp eq i8 %i.ea, 120
  %or.cond.not67 = and i1 %.not6477, %i.eb
  %i.ec = icmp slt i64 %.052, 0
  %or.cond3 = select i1 %or.cond.not67, i1 %i.ec, i1 false
  %spec.select.idx.sroa.sel.idx.sroa.sel.idx = select i1 %or.cond3, i64 8, i64 0
  %spec.select.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.dz, i64 %spec.select.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.ed = load i8, ptr %spec.select.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !13 ; 2 uses
  %i.ee = icmp ne i8 %i.ed, 0
  %i.ef = icmp ult ptr %.049, %i.c
  %i.eg = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %i.eg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %u2string_async_signal_safe.exit, %.lr.ph
  %i.eh = phi i8 [ %i.ek, %.lr.ph ], [ %i.ed, %u2string_async_signal_safe.exit ]
  %.190 = phi ptr [ %i.ei, %.lr.ph ], [ %spec.select.idx.sroa.sel.idx.sroa.sel, %u2string_async_signal_safe.exit ]
  %.15089 = phi ptr [ %i.ej, %.lr.ph ], [ %.049, %u2string_async_signal_safe.exit ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.190, i64 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.15089, i64 1 ; 3 uses
  store i8 %i.eh, ptr %.15089, align 1, !tbaa !13
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !13  ; 2 uses
  %i.el = icmp ne i8 %i.ek, 0
  %i.em = icmp ult ptr %i.ej, %i.c
  %i.en = select i1 %i.el, i1 %i.em, i1 false
  br i1 %i.en, label %.lr.ph, label %._crit_edge, !llvm.loop !71

._crit_edge:                                      ; preds = %.lr.ph, %u2string_async_signal_safe.exit
  %.150.lcssa = phi ptr [ %.049, %u2string_async_signal_safe.exit ], [ %i.ej, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.loopexit

bb.af:                                            ; preds = %check_longlong_async_signal_safe.exit
  %i.eo = load i32, ptr %3, align 8               ; 3 uses
  %i.ep = icmp ult i32 %i.eo, 41
  br i1 %i.ep, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eq = load ptr, ptr %i.e, align 8
  %i.er = zext nneg i32 %i.eo to i64
  %i.es = getelementptr i8, ptr %i.eq, i64 %i.er
  %i.et = add nuw nsw i32 %i.eo, 8
  store i32 %i.et, ptr %3, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.eu = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  store ptr %i.ev, ptr %i.d, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ew = phi ptr [ %i.es, %bb.ag ], [ %i.eu, %bb.ah ]
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !31 ; 2 uses
  %.not63 = icmp eq ptr %i.ex, null
  %spec.store.select = select i1 %.not63, ptr @.str.23, ptr %i.ex ; 2 uses
  %i.ey = load i8, ptr %spec.store.select, align 1, !tbaa !13 ; 2 uses
  %i.ez = icmp ne i8 %i.ey, 0
  %i.fa = icmp ult ptr %.049, %i.c
  %i.fb = select i1 %i.ez, i1 %i.fa, i1 false
  br i1 %i.fb, label %.lr.ph94, label %.loopexit

.lr.ph94:                                         ; preds = %bb.ai, %.lr.ph94
  %i.fc = phi i8 [ %i.ff, %.lr.ph94 ], [ %i.ey, %bb.ai ]
  %.092 = phi ptr [ %i.fd, %.lr.ph94 ], [ %spec.store.select, %bb.ai ]
  %.291 = phi ptr [ %i.fe, %.lr.ph94 ], [ %.049, %bb.ai ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.092, i64 1 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.291, i64 1 ; 3 uses
  store i8 %i.fc, ptr %.291, align 1, !tbaa !13
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !13  ; 2 uses
  %i.fg = icmp ne i8 %i.ff, 0
  %i.fh = icmp ult ptr %i.fe, %i.c
  %i.fi = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %i.fi, label %.lr.ph94, label %.loopexit, !llvm.loop !72

.loopexit:                                        ; preds = %.lr.ph94, %bb.ai, %check_longlong_async_signal_safe.exit, %bb.d, %._crit_edge
  %.155.ph = phi ptr [ %.0.i, %check_longlong_async_signal_safe.exit ], [ %.0.i, %._crit_edge ], [ %.054, %bb.d ], [ %.0.i, %bb.ai ], [ %.0.i, %.lr.ph94 ]
  %.3.ph = phi ptr [ %.049, %check_longlong_async_signal_safe.exit ], [ %.150.lcssa, %._crit_edge ], [ %i.l, %bb.d ], [ %.049, %bb.ai ], [ %i.fe, %.lr.ph94 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.155.ph, i64 1
  br label %bb.b, !llvm.loop !73

bb.aj:                                            ; preds = %bb.b, %bb.c
  %.049.lcssa = phi ptr [ %.049, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  store i8 0, ptr %.049.lcssa, align 1, !tbaa !13
  %i.fk = ptrtoint ptr %.049.lcssa to i64
  %i.fl = ptrtoint ptr %0 to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = trunc i64 %i.fm to i32
  ret i32 %i.fn
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @snprintf_async_signal_safe(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ...) local_unnamed_addr #23 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call i32 @vsnprintf_async_signal_safe(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #24

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 int", !20, i64 0}
!20 = !{!"any pointer", !11, i64 0}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 short", !20, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"short", !11, i64 0}
!30 = distinct !{!30, !15}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 omnipotent char", !20, i64 0}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = !{!40, !40, i64 0}
!40 = !{!"long long", !11, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !11, i64 0}
!43 = distinct !{!43, !15}
!44 = !{!45, !45, i64 0}
!45 = !{!"long double", !11, i64 0}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!48 = !{!49, !49, i64 0}
!49 = !{!"double", !11, i64 0}
!50 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!51 = !{!"branch_weights", i32 -190773248, i32 -198967296}
!52 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = !{!57, !42, i64 0}
!57 = !{!"timeval", !42, i64 0, !42, i64 8}
!58 = !{!57, !42, i64 8}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15}
!65 = !{!66, !10, i64 24}
!66 = !{!"stat", !42, i64 0, !42, i64 8, !42, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !67, i64 72, !67, i64 88, !67, i64 104, !11, i64 120}
!67 = !{!"timespec", !42, i64 0, !42, i64 8}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !15}
end_hunk_0
