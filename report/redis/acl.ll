inline.NumInlined: 130
inline.NumDeleted: 5
begin_hunk_0_@ACLCheckUserCredentials:bb.a
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !25 ; 2 uses
  %i.g = and i8 %.val.i, 7
  switch i8 %i.g, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i8 %.val.i, 3
  %i.i = zext nneg i8 %i.h to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !25
  %i.l = zext i8 %i.k to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 -5
  %i.n = load i16, ptr %i.m, align 1, !tbaa !35
  %i.o = zext i16 %i.n to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -9
  %i.q = load i32, ptr %i.p, align 1, !tbaa !9
  %i.r = zext i32 %i.q to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = load i64, ptr %i.s, align 1, !tbaa !13
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.t, %bb.f ], [ %i.i, %bb.b ], [ %i.l, %bb.c ], [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr null, ptr %i.c, align 8, !tbaa !160
  %i.u = load ptr, ptr @Users, align 8, !tbaa !100
  %i.v = call i32 @raxFind(ptr noundef %i.u, ptr noundef nonnull %i.e, i64 noundef %.0.i, ptr noundef nonnull %i.c) #25 ; 0 uses
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !160  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %sdslen.exit
  %i.y = tail call ptr @__errno_location() #28
  store i32 2, ptr %i.y, align 4, !tbaa !9
  br label %bb.u

bb.h:                                             ; preds = %sdslen.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = load atomic i32, ptr %i.z seq_cst, align 4, !tbaa !118
  %i.ab = and i32 %i.aa, 2
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call ptr @__errno_location() #28
  store i32 22, ptr %i.ac, align 4, !tbaa !9
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.ad = load atomic i32, ptr %i.z seq_cst, align 4, !tbaa !118
  %i.ae = and i32 %i.ad, 4
  %.not17 = icmp eq i32 %i.ae, 0
  br i1 %.not17, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !102
  call void @listRewind(ptr noundef %i.ag, ptr noundef nonnull %3) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !161 ; 6 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  %.val.i20 = load i8, ptr %i.aj, align 1, !tbaa !25 ; 2 uses
  %i.ak = and i8 %.val.i20, 7
  switch i8 %i.ak, label %sdslen.exit22 [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.al = lshr i8 %.val.i20, 3
  %i.am = zext nneg i8 %i.al to i64
  br label %sdslen.exit22

bb.m:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 -3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !25
  %i.ap = zext i8 %i.ao to i64
  br label %sdslen.exit22

bb.n:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 -5
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !35
  %i.as = zext i16 %i.ar to i64
  br label %sdslen.exit22

bb.o:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds i8, ptr %i.ai, i64 -9
  %i.au = load i32, ptr %i.at, align 1, !tbaa !9
  %i.av = zext i32 %i.au to i64
  br label %sdslen.exit22

bb.p:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds i8, ptr %i.ai, i64 -17
  %i.ax = load i64, ptr %i.aw, align 1, !tbaa !13
  br label %sdslen.exit22

sdslen.exit22:                                    ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i21 = phi i64 [ %i.ax, %bb.p ], [ %i.am, %bb.l ], [ %i.ap, %bb.m ], [ %i.as, %bb.n ], [ %i.av, %bb.o ], [ 0, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @sha256_init(ptr noundef nonnull %2) #25
  call void @sha256_update(ptr noundef nonnull %2, ptr noundef nonnull %i.ai, i64 noundef %.0.i21) #25
  call void @sha256_final(ptr noundef nonnull %2, ptr noundef nonnull %i.a) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %sdslen.exit22
  %indvars.iv.i = phi i64 [ 0, %sdslen.exit22 ], [ %indvars.iv.next.i.1, %bb.q ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !25  ; 2 uses
  %i.ba = lshr i8 %i.az, 4
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !25
  %i.be = shl nuw nsw i64 %indvars.iv.i, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.be ; 2 uses
  store i8 %i.bd, ptr %i.bf, align 4, !tbaa !25
  %i.bg = and i8 %i.az, 15
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !25
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !25  ; 2 uses
  %i.bn = lshr i8 %i.bm, 4
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !25
  %i.br = shl nuw nsw i64 %indvars.iv.next.i, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.br ; 2 uses
  store i8 %i.bq, ptr %i.bs, align 2, !tbaa !25
  %i.bt = and i8 %i.bm, 15
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !25
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 32
  br i1 %exitcond.not.i.1, label %ACLHashPassword.exit, label %bb.q, !llvm.loop !30

ACLHashPassword.exit:                             ; preds = %bb.q
  %i.by = call ptr @sdsnewlen(ptr noundef nonnull %i.b, i64 noundef 64) #25 ; 18 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 36
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 44
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 52
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 60
  br label %.critedge

.critedge:                                        ; preds = %vector.body, %ACLHashPassword.exit
  %i.co = call ptr @listNext(ptr noundef nonnull %3) #25 ; 2 uses
  %.not18 = icmp eq ptr %i.co, null
  br i1 %.not18, label %bb.s, label %vector.body

vector.body:                                      ; preds = %.critedge
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !98 ; 16 uses
  %wide.load = load <4 x i8>, ptr %i.by, align 1, !tbaa !25
  %wide.load28 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %wide.load29 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !25
  %wide.load30 = load <4 x i8>, ptr %i.cr, align 1, !tbaa !25
  %wide.load.1 = load <4 x i8>, ptr %i.ca, align 1, !tbaa !25
  %wide.load28.1 = load <4 x i8>, ptr %i.cb, align 1, !tbaa !25
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %wide.load29.1 = load <4 x i8>, ptr %i.cs, align 1, !tbaa !25
  %wide.load30.1 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !25
  %wide.load29.1.a = load <4 x i8>, ptr %i.cc, align 1, !tbaa !25
  %wide.load30.1.a = load <4 x i8>, ptr %i.cd, align 1, !tbaa !25
  %4 = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  %wide.load29.2 = load <4 x i8>, ptr %4, align 1, !tbaa !25
  %wide.load30.2 = load <4 x i8>, ptr %5, align 1, !tbaa !25
  %wide.load.2 = load <4 x i8>, ptr %i.ce, align 1, !tbaa !25
  %wide.load28.2 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %wide.load29.2.a = load <4 x i8>, ptr %i.cu, align 1, !tbaa !25
  %wide.load30.2.a = load <4 x i8>, ptr %i.cv, align 1, !tbaa !25
  %wide.load.4 = load <4 x i8>, ptr %i.cg, align 1, !tbaa !25
  %wide.load28.4 = load <4 x i8>, ptr %i.ch, align 1, !tbaa !25
  %6 = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %i.cq, i64 36
  %wide.load.3 = load <4 x i8>, ptr %6, align 1, !tbaa !25
  %wide.load28.3 = load <4 x i8>, ptr %7, align 1, !tbaa !25
  %wide.load29.3 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !25
  %wide.load30.3 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !25
  %8 = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %9 = getelementptr inbounds nuw i8, ptr %i.cq, i64 44
  %wide.load29.5 = load <4 x i8>, ptr %8, align 1, !tbaa !25
  %wide.load30.5 = load <4 x i8>, ptr %9, align 1, !tbaa !25
  %wide.load.4.a = load <4 x i8>, ptr %i.ck, align 1, !tbaa !25
  %wide.load28.4.a = load <4 x i8>, ptr %i.cl, align 1, !tbaa !25
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 52
  %wide.load29.4 = load <4 x i8>, ptr %i.cw, align 1, !tbaa !25
  %wide.load30.4 = load <4 x i8>, ptr %i.cx, align 1, !tbaa !25
  %wide.load.7 = load <4 x i8>, ptr %i.cm, align 1, !tbaa !25
  %wide.load28.7 = load <4 x i8>, ptr %i.cn, align 1, !tbaa !25
  %10 = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %11 = getelementptr inbounds nuw i8, ptr %i.cq, i64 60
  %wide.load.5 = load <4 x i8>, ptr %10, align 1, !tbaa !25
  %wide.load28.5 = load <4 x i8>, ptr %11, align 1, !tbaa !25
  %12 = icmp ne <4 x i8> %wide.load29, %wide.load
  %13 = icmp ne <4 x i8> %wide.load29.1, %wide.load.1
  %14 = or <4 x i1> %12, %13
  %15 = icmp ne <4 x i8> %wide.load29.2, %wide.load29.1.a
  %16 = or <4 x i1> %14, %15
  %17 = icmp ne <4 x i8> %wide.load29.2.a, %wide.load.2
  %18 = or <4 x i1> %16, %17
  %19 = icmp ne <4 x i8> %wide.load.3, %wide.load.4
  %20 = or <4 x i1> %18, %19
  %21 = icmp ne <4 x i8> %wide.load29.5, %wide.load29.3
  %22 = or <4 x i1> %20, %21
  %23 = icmp ne <4 x i8> %wide.load29.4, %wide.load.4.a
  %24 = or <4 x i1> %22, %23
  %25 = icmp ne <4 x i8> %wide.load.5, %wide.load.7
  %26 = or <4 x i1> %24, %25
  %27 = icmp ne <4 x i8> %wide.load30, %wide.load28
  %28 = or <4 x i1> %26, %27
  %29 = icmp ne <4 x i8> %wide.load30.1, %wide.load28.1
  %30 = or <4 x i1> %28, %29
  %31 = icmp ne <4 x i8> %wide.load30.2, %wide.load30.1.a
  %32 = or <4 x i1> %30, %31
  %33 = icmp ne <4 x i8> %wide.load30.2.a, %wide.load28.2
  %34 = or <4 x i1> %32, %33
  %35 = icmp ne <4 x i8> %wide.load28.3, %wide.load28.4
  %36 = or <4 x i1> %34, %35
  %37 = icmp ne <4 x i8> %wide.load30.5, %wide.load30.3
  %38 = or <4 x i1> %36, %37
  %39 = icmp ne <4 x i8> %wide.load30.4, %wide.load28.4.a
  %40 = or <4 x i1> %38, %39
  %41 = icmp ne <4 x i8> %wide.load28.5, %wide.load28.7
  %42 = or <4 x i1> %40, %41
  %43 = bitcast <4 x i1> %42 to i4
  %.not19.not = icmp eq i4 %43, 0
  br i1 %.not19.not, label %bb.r, label %.critedge

bb.r:                                             ; preds = %vector.body
  call void @sdsfree(ptr noundef nonnull %i.by) #25
  br label %bb.t, !llvm.loop !163

bb.s:                                             ; preds = %.critedge
  call void @sdsfree(ptr noundef %i.by) #25
  %i.cy = tail call ptr @__errno_location() #28
  store i32 22, ptr %i.cy, align 4, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.2 = phi i32 [ 0, %bb.r ], [ -1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.j, %bb.t, %bb.i, %bb.g
  %.3 = phi i32 [ -1, %bb.g ], [ -1, %bb.i ], [ %.2, %bb.t ], [ 0, %bb.j ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ACLGetUserByName(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !160
  %i.b = load ptr, ptr @Users, align 8, !tbaa !100
  %i.c = call i32 @raxFind(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define dso_local void @addAuthErrReply(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @clientHasPendingReplies(ptr noundef %0) #25
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not5 = icmp eq ptr %1, null
  br i1 %.not5, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink = phi ptr [ %i.c, %bb.c ], [ @.str.89, %bb.b ]
  tail call void @addReplyError(ptr noundef %0, ptr noundef %.sink) #25
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  ret void
}

declare i32 @clientHasPendingReplies(ptr noundef) local_unnamed_addr #1

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @checkPasswordBasedAuth(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call i32 @ACLCheckUserCredentials(ptr noundef %1, ptr noundef %2)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 1, ptr %i.d, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !161  ; 6 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %.val.i = load i8, ptr %i.g, align 1, !tbaa !25 ; 2 uses
  %i.h = and i8 %.val.i, 7
  switch i8 %i.h, label %sdslen.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i8 %.val.i, 3
  %i.j = zext nneg i8 %i.i to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !25
  %i.m = zext i8 %i.l to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.o = load i16, ptr %i.n, align 1, !tbaa !35
  %i.p = zext i16 %i.o to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.f, i64 -9
  %i.r = load i32, ptr %i.q, align 1, !tbaa !9
  %i.s = zext i32 %i.r to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.u = load i64, ptr %i.t, align 1, !tbaa !13
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.u, %bb.g ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ %i.s, %bb.f ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !160
  %i.v = load ptr, ptr @Users, align 8, !tbaa !100
  %i.w = call i32 @raxFind(ptr noundef %i.v, ptr noundef nonnull %i.f, i64 noundef %.0.i, ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.x, ptr %i.y, align 8, !tbaa !105
  call void @moduleNotifyUserChanged(ptr noundef nonnull %0) #25
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !165
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = lshr i32 %i.ab, 2
  %i.ad = and i32 %i.ac, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !161
  tail call void @addACLLogEntry(ptr noundef %0, i32 noundef 3, i32 noundef %i.ad, i32 noundef 0, ptr noundef %i.af, ptr noundef null)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %sdslen.exit
  %.0 = phi i32 [ 0, %sdslen.exit ], [ 1, %bb.h ]
  ret i32 %.0
}

declare void @moduleNotifyUserChanged(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @addACLLogEntry(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.listIter, align 8           ; 4 uses
  switch i32 %1, label %bb.g [
    i32 3, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8432), align 8, !tbaa !166
  %i.b = add nsw i64 %i.a, 1
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8432), align 8, !tbaa !166
  br label %ACLUpdateInfoMetrics.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8440), align 8, !tbaa !167
  %i.d = add nsw i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8440), align 8, !tbaa !167
  br label %ACLUpdateInfoMetrics.exit

bb.d:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8448), align 8, !tbaa !168
  %i.f = add nsw i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8448), align 8, !tbaa !168
  br label %ACLUpdateInfoMetrics.exit

bb.e:                                             ; preds = %bb.a
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8456), align 8, !tbaa !169
  %i.h = add nsw i64 %i.g, 1
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8456), align 8, !tbaa !169
  br label %ACLUpdateInfoMetrics.exit

bb.f:                                             ; preds = %bb.a
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8464), align 8, !tbaa !170
  %i.j = add nsw i64 %i.i, 1
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8464), align 8, !tbaa !170
  br label %ACLUpdateInfoMetrics.exit

bb.g:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.22, i32 noundef 2665, ptr noundef nonnull @.str.123) #25
  tail call void @abort() #27
  unreachable

ACLUpdateInfoMetrics.exit:                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8408), align 8, !tbaa !171
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %ACLUpdateInfoMetrics.exit
end_hunk_0
begin_hunk_1_@authCommand:bb.a
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %internalAuth.exit

bb.v:                                             ; preds = %bb.g, %bb.f
  %.017 = phi ptr [ %i.q, %bb.f ], [ %i.w, %bb.g ] ; 2 uses
  %.0 = phi ptr [ %i.m, %bb.f ], [ %i.u, %bb.g ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8, !tbaa !186
  %i.bz = call i32 @checkModuleAuthentication(ptr noundef nonnull %0, ptr noundef %.0, ptr noundef %.017, ptr noundef nonnull %i.b) #25 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %bb.w, label %ACLAuthenticateUser.exit

bb.w:                                             ; preds = %bb.v
  %i.cb = call i32 @checkPasswordBasedAuth(ptr noundef nonnull %0, ptr noundef %.0, ptr noundef %.017)
  br label %ACLAuthenticateUser.exit

ACLAuthenticateUser.exit:                         ; preds = %bb.v, %bb.w
  %.0.i = phi i32 [ %i.cb, %bb.w ], [ %i.bz, %bb.v ]
  switch i32 %.0.i, label %addAuthErrReply.exit [
    i32 0, label %bb.x
    i32 1, label %bb.y
  ]

bb.x:                                             ; preds = %ACLAuthenticateUser.exit
  %i.cc = load ptr, ptr @shared, align 8, !tbaa !246
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.cc) #25
  br label %addAuthErrReply.exit

bb.y:                                             ; preds = %ACLAuthenticateUser.exit
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !186 ; 2 uses
  %i.ce = call i32 @clientHasPendingReplies(ptr noundef nonnull %0) #25
  %.not.i22 = icmp eq i32 %i.ce, 0
  br i1 %.not.i22, label %bb.z, label %addAuthErrReply.exit

bb.z:                                             ; preds = %bb.y
  %.not5.i = icmp eq ptr %i.cd, null
  br i1 %.not5.i, label %.sink.split.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !161
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.aa, %bb.z
  %.sink.i = phi ptr [ %i.cg, %bb.aa ], [ @.str.89, %bb.z ]
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef %.sink.i) #25
  br label %addAuthErrReply.exit

addAuthErrReply.exit:                             ; preds = %.sink.split.i, %bb.y, %ACLAuthenticateUser.exit, %bb.x
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !186 ; 2 uses
  %.not21 = icmp eq ptr %i.ch, null
  br i1 %.not21, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %addAuthErrReply.exit
  call void @decrRefCount(ptr noundef nonnull %i.ch) #25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %addAuthErrReply.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %internalAuth.exit

internalAuth.exit:                                ; preds = %bb.u, %bb.i, %bb.e, %bb.ac, %bb.b
  ret void
}

declare void @addReplyErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ACLUpdateDefaultUserPassword(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @DefaultUser, align 8, !tbaa !160
  %i.b = tail call i32 @ACLSetUser(ptr noundef %i.a, ptr noundef nonnull @.str.67, i64 noundef -1) ; 0 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @sdsnew(ptr noundef nonnull @.str.207) #25
  %i.d = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.d, align 1, !tbaa !25 ; 2 uses
  %i.e = and i8 %.val.i, 7
  switch i8 %i.e, label %sdslen.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i8 %.val.i, 3
  %i.g = zext nneg i8 %i.f to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %0, i64 -3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !25
  %i.j = zext i8 %i.i to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %0, i64 -5
  %i.l = load i16, ptr %i.k, align 1, !tbaa !35
  %i.m = zext i16 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %0, i64 -9
  %i.o = load i32, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i32 %i.o to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %0, i64 -17
  %i.r = load i64, ptr %i.q, align 1, !tbaa !13
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.r, %bb.g ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ %i.p, %bb.f ], [ 0, %bb.b ]
  %i.s = tail call ptr @sdscatlen(ptr noundef %i.c, ptr noundef nonnull %0, i64 noundef %.0.i) #25 ; 7 uses
  %i.t = load ptr, ptr @DefaultUser, align 8, !tbaa !160
  %i.u = getelementptr i8, ptr %i.s, i64 -1
  %.val.i6 = load i8, ptr %i.u, align 1, !tbaa !25 ; 2 uses
  %i.v = and i8 %.val.i6, 7
  switch i8 %i.v, label %sdslen.exit8 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.h:                                             ; preds = %sdslen.exit
  %i.w = lshr i8 %.val.i6, 3
  %i.x = zext nneg i8 %i.w to i64
  br label %sdslen.exit8

bb.i:                                             ; preds = %sdslen.exit
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 -3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !25
  %i.aa = zext i8 %i.z to i64
  br label %sdslen.exit8

bb.j:                                             ; preds = %sdslen.exit
  %i.ab = getelementptr inbounds i8, ptr %i.s, i64 -5
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !35
  %i.ad = zext i16 %i.ac to i64
  br label %sdslen.exit8

bb.k:                                             ; preds = %sdslen.exit
  %i.ae = getelementptr inbounds i8, ptr %i.s, i64 -9
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !9
  %i.ag = zext i32 %i.af to i64
  br label %sdslen.exit8

bb.l:                                             ; preds = %sdslen.exit
  %i.ah = getelementptr inbounds i8, ptr %i.s, i64 -17
  %i.ai = load i64, ptr %i.ah, align 1, !tbaa !13
  br label %sdslen.exit8

sdslen.exit8:                                     ; preds = %sdslen.exit, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i7 = phi i64 [ %i.ai, %bb.l ], [ %i.x, %bb.h ], [ %i.aa, %bb.i ], [ %i.ad, %bb.j ], [ %i.ag, %bb.k ], [ 0, %sdslen.exit ]
  %i.aj = tail call i32 @ACLSetUser(ptr noundef %i.t, ptr noundef nonnull %i.s, i64 noundef %.0.i7) ; 0 uses
  tail call void @sdsfree(ptr noundef nonnull %i.s) #25
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.ak = load ptr, ptr @DefaultUser, align 8, !tbaa !160
  %i.al = tail call i32 @ACLSetUser(ptr noundef %i.ak, ptr noundef nonnull @.str.25, i64 noundef -1) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %sdslen.exit8
  ret void
}

declare i32 @prefixmatch(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @stringmatchlen(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @doesCommandHaveKeys(ptr noundef) local_unnamed_addr #1

declare i32 @getKeysFromCommandWithSpecs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @doesCommandHaveChannelsWithFlags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @getChannelsFromCommand(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @clusterGetSecret(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nounwind memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind allocsize(1) }
attributes #31 = { cold noreturn nounwind }

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
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !11, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS15ACLCategoryItem", !17, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"ACLCategoryItem", !20, i64 0, !14, i64 8}
!20 = !{!"p1 omnipotent char", !17, i64 0}
!21 = !{!19, !14, i64 8}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = !{!11, !11, i64 0}
!26 = distinct !{!26, !23, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !23, !28, !27}
!30 = distinct !{!30, !23}
!31 = distinct !{!31, !23}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 short", !17, i64 0}
!34 = distinct !{!34, !23}
!35 = !{!36, !36, i64 0}
!36 = !{!"short", !11, i64 0}
!37 = distinct !{!37, !23}
!38 = !{!20, !20, i64 0}
!39 = !{!40, !20, i64 8}
!40 = !{!"", !10, i64 0, !20, i64 8}
!41 = !{!40, !10, i64 0}
!42 = !{!43, !10, i64 8424}
!43 = !{!"redisServer", !10, i64 0, !14, i64 8, !20, i64 16, !20, i64 24, !44, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !46, i64 64, !47, i64 72, !47, i64 80, !48, i64 88, !49, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !50, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !20, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !14, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !20, i64 232, !20, i64 240, !10, i64 248, !10, i64 252, !14, i64 256, !11, i64 264, !47, i64 272, !47, i64 280, !47, i64 288, !51, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !20, i64 472, !20, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !52, i64 1336, !51, i64 1440, !51, i64 1448, !51, i64 1456, !51, i64 1464, !51, i64 1472, !51, i64 1480, !51, i64 1488, !54, i64 1496, !54, i64 1504, !17, i64 1512, !49, i64 1520, !10, i64 1528, !49, i64 1536, !10, i64 1544, !51, i64 1552, !11, i64 1560, !11, i64 1624, !47, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !55, i64 2424, !10, i64 2448, !50, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !14, i64 2488, !14, i64 2496, !14, i64 2504, !14, i64 2512, !14, i64 2520, !14, i64 2528, !50, i64 2536, !50, i64 2544, !50, i64 2552, !50, i64 2560, !50, i64 2568, !50, i64 2576, !57, i64 2584, !50, i64 2592, !50, i64 2600, !50, i64 2608, !50, i64 2616, !50, i64 2624, !50, i64 2632, !14, i64 2640, !50, i64 2648, !50, i64 2656, !50, i64 2664, !50, i64 2672, !50, i64 2680, !50, i64 2688, !50, i64 2696, !50, i64 2704, !14, i64 2712, !14, i64 2720, !14, i64 2728, !50, i64 2736, !50, i64 2744, !50, i64 2752, !50, i64 2760, !50, i64 2768, !57, i64 2776, !50, i64 2784, !50, i64 2792, !50, i64 2800, !50, i64 2808, !50, i64 2816, !51, i64 2824, !50, i64 2832, !50, i64 2840, !14, i64 2848, !58, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !14, i64 2976, !14, i64 2984, !14, i64 2992, !14, i64 3000, !14, i64 3008, !14, i64 3016, !14, i64 3024, !14, i64 3032, !57, i64 3040, !11, i64 3048, !14, i64 3080, !50, i64 3088, !50, i64 3096, !50, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !50, i64 5168, !50, i64 5176, !50, i64 5184, !50, i64 5192, !11, i64 5200, !50, i64 6264, !50, i64 6272, !14, i64 6280, !50, i64 6288, !50, i64 6296, !14, i64 6304, !11, i64 6312, !59, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !14, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !14, i64 6496, !14, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !20, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !60, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !20, i64 6680, !20, i64 6688, !10, i64 6696, !10, i64 6700, !14, i64 6704, !14, i64 6712, !14, i64 6720, !14, i64 6728, !14, i64 6736, !10, i64 6744, !10, i64 6748, !20, i64 6752, !10, i64 6760, !10, i64 6764, !50, i64 6768, !50, i64 6776, !14, i64 6784, !14, i64 6792, !14, i64 6800, !10, i64 6808, !10, i64 6812, !14, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !14, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !17, i64 6872, !10, i64 6880, !50, i64 6888, !50, i64 6896, !50, i64 6904, !50, i64 6912, !10, i64 6920, !61, i64 6928, !10, i64 6936, !20, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !14, i64 6968, !14, i64 6976, !14, i64 6984, !14, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !62, i64 7024, !10, i64 7032, !10, i64 7036, !20, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !63, i64 7072, !10, i64 7088, !20, i64 7096, !10, i64 7104, !20, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !50, i64 7232, !50, i64 7240, !11, i64 7248, !50, i64 7256, !10, i64 7264, !10, i64 7268, !65, i64 7272, !50, i64 7280, !50, i64 7288, !66, i64 7296, !14, i64 7344, !14, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !14, i64 7400, !51, i64 7408, !14, i64 7416, !20, i64 7424, !20, i64 7432, !20, i64 7440, !10, i64 7448, !10, i64 7452, !54, i64 7456, !54, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !14, i64 7488, !14, i64 7496, !14, i64 7504, !14, i64 7512, !14, i64 7520, !67, i64 7528, !67, i64 7536, !10, i64 7544, !20, i64 7552, !14, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !14, i64 7584, !14, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !20, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !50, i64 7680, !10, i64 7688, !51, i64 7696, !10, i64 7704, !50, i64 7712, !50, i64 7720, !14, i64 7728, !14, i64 7736, !10, i64 7744, !50, i64 7752, !14, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !50, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !51, i64 7872, !51, i64 7880, !10, i64 7888, !14, i64 7896, !51, i64 7904, !51, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !14, i64 7936, !14, i64 7944, !14, i64 7952, !14, i64 7960, !14, i64 7968, !14, i64 7976, !14, i64 7984, !14, i64 7992, !14, i64 8000, !50, i64 8008, !50, i64 8016, !50, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !14, i64 8048, !11, i64 8056, !50, i64 8064, !50, i64 8072, !10, i64 8080, !14, i64 8088, !50, i64 8096, !14, i64 8104, !50, i64 8112, !68, i64 8120, !47, i64 8128, !10, i64 8136, !68, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !50, i64 8168, !50, i64 8176, !20, i64 8184, !50, i64 8192, !50, i64 8200, !50, i64 8208, !10, i64 8216, !69, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !20, i64 8256, !20, i64 8264, !20, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !50, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !50, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !50, i64 8384, !47, i64 8392, !20, i64 8400, !14, i64 8408, !20, i64 8416, !10, i64 8424, !70, i64 8432, !10, i64 8472, !14, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !71, i64 8504, !20, i64 8624, !20, i64 8632, !20, i64 8640, !20, i64 8648, !72, i64 8656, !50, i64 8664, !10, i64 8672, !20, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !14, i64 8704, !10, i64 8712, !10, i64 8716, !20, i64 8720, !10, i64 8728, !10, i64 8732}
!44 = !{!"p2 omnipotent char", !45, i64 0}
!45 = !{!"any p2 pointer", !17, i64 0}
!46 = !{!"p1 _ZTS7redisDb", !17, i64 0}
!47 = !{!"p1 _ZTS4dict", !17, i64 0}
!48 = !{!"p1 _ZTS11aeEventLoop", !17, i64 0}
!49 = !{!"p1 _ZTS3rax", !17, i64 0}
!50 = !{!"long long", !11, i64 0}
!51 = !{!"p1 _ZTS4list", !17, i64 0}
!52 = !{!"connListener", !11, i64 0, !10, i64 64, !44, i64 72, !10, i64 80, !10, i64 84, !53, i64 88, !17, i64 96}
!53 = !{!"p1 _ZTS14ConnectionType", !17, i64 0}
!54 = !{!"p1 _ZTS6client", !17, i64 0}
!55 = !{!"pendingCommandPool", !56, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!56 = !{!"p2 _ZTS14pendingCommand", !45, i64 0}
!57 = !{!"double", !11, i64 0}
!58 = !{!"malloc_stats", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80}
!59 = !{!"p1 _ZTS11hotkeyStats", !17, i64 0}
!60 = !{!"p1 double", !17, i64 0}
!61 = !{!"p1 _ZTS9saveparam", !17, i64 0}
!62 = !{!"p2 _ZTS10connection", !45, i64 0}
!63 = !{!"redisOpArray", !64, i64 0, !10, i64 8, !10, i64 12}
!64 = !{!"p1 _ZTS7redisOp", !17, i64 0}
!65 = !{!"p1 _ZTS11replBacklog", !17, i64 0}
!66 = !{!"replDataBuf", !51, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!67 = !{!"p1 _ZTS10connection", !17, i64 0}
!68 = !{!"p1 _ZTS8_kvstore", !17, i64 0}
!69 = !{!"p1 _ZTS12clusterState", !17, i64 0}
!70 = !{!"aclInfo", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32}
!71 = !{!"redisTLSContextConfig", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !10, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!72 = !{!"p1 _ZTS14sentinelConfig", !17, i64 0}
!73 = !{!74, !10, i64 0}
!74 = !{!"", !10, i64 0, !11, i64 8, !75, i64 136, !51, i64 144, !51, i64 152, !20, i64 160}
!75 = !{!"p3 omnipotent char", !76, i64 0}
!76 = !{!"any p3 pointer", !45, i64 0}
!77 = !{!74, !51, i64 144}
!78 = !{!74, !51, i64 152}
!79 = !{!74, !75, i64 136}
!80 = !{!74, !20, i64 160}
!81 = !{!82, !17, i64 32}
!82 = !{!"list", !83, i64 0, !83, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !14, i64 40}
!83 = !{!"p1 _ZTS8listNode", !17, i64 0}
!84 = !{!82, !17, i64 24}
!85 = !{!82, !17, i64 16}
!86 = !{!44, !44, i64 0}
!87 = distinct !{!87, !23}
!88 = distinct !{!88, !23}
!89 = distinct !{!89, !23}
!90 = distinct !{!90, !23}
!91 = distinct !{!91, !23}
!92 = !{!93, !51, i64 24}
!93 = !{!"", !20, i64 0, !11, i64 8, !51, i64 16, !51, i64 24, !94, i64 32}
!94 = !{!"p1 _ZTS11redisObject", !17, i64 0}
!95 = !{!82, !14, i64 40}
!96 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!97 = !{!82, !83, i64 0}
!98 = !{!99, !17, i64 16}
!99 = !{!"listNode", !83, i64 0, !83, i64 8, !17, i64 16}
!100 = !{!49, !49, i64 0}
!101 = !{!93, !20, i64 0}
!102 = !{!93, !51, i64 16}
!103 = !{!93, !94, i64 32}
!104 = !{!43, !51, i64 1440}
!105 = !{!106, !17, i64 224}
!106 = !{!"client", !14, i64 0, !14, i64 8, !67, i64 16, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !10, i64 28, !46, i64 32, !94, i64 40, !94, i64 48, !94, i64 56, !20, i64 64, !14, i64 72, !14, i64 80, !10, i64 88, !107, i64 96, !10, i64 104, !10, i64 108, !107, i64 112, !14, i64 120, !108, i64 128, !109, i64 152, !110, i64 160, !10, i64 168, !107, i64 176, !10, i64 184, !10, i64 188, !111, i64 192, !111, i64 200, !111, i64 208, !111, i64 216, !17, i64 224, !10, i64 232, !10, i64 236, !14, i64 240, !51, i64 248, !50, i64 256, !51, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !10, i64 296, !10, i64 300, !112, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !50, i64 336, !50, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !14, i64 368, !14, i64 376, !20, i64 384, !50, i64 392, !50, i64 400, !50, i64 408, !50, i64 416, !50, i64 424, !50, i64 432, !50, i64 440, !50, i64 448, !50, i64 456, !50, i64 464, !50, i64 472, !11, i64 480, !10, i64 524, !20, i64 528, !10, i64 536, !10, i64 540, !14, i64 544, !113, i64 552, !114, i64 592, !50, i64 664, !51, i64 672, !47, i64 680, !47, i64 688, !47, i64 696, !20, i64 704, !20, i64 712, !83, i64 720, !83, i64 728, !83, i64 736, !17, i64 744, !17, i64 752, !17, i64 760, !17, i64 768, !17, i64 776, !14, i64 784, !49, i64 792, !14, i64 800, !10, i64 808, !83, i64 816, !17, i64 824, !83, i64 832, !14, i64 840, !83, i64 848, !14, i64 856, !83, i64 864, !14, i64 872, !99, i64 880, !99, i64 904, !14, i64 928, !14, i64 936, !14, i64 944, !50, i64 952, !14, i64 960, !14, i64 968, !20, i64 976, !11, i64 984, !115, i64 992, !50, i64 1000, !50, i64 1008, !50, i64 1016, !116, i64 1024, !20, i64 1032, !11, i64 1040}
!107 = !{!"p2 _ZTS11redisObject", !45, i64 0}
!108 = !{!"pendingCommandList", !109, i64 0, !109, i64 8, !10, i64 16, !10, i64 20}
!109 = !{!"p1 _ZTS14pendingCommand", !17, i64 0}
!110 = !{!"p1 _ZTS14deferredObject", !17, i64 0}
!111 = !{!"p1 _ZTS12redisCommand", !17, i64 0}
!112 = !{!"p1 _ZTS9dictEntry", !17, i64 0}
!113 = !{!"multiState", !56, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !14, i64 24, !10, i64 32}
!114 = !{!"blockingState", !10, i64 0, !50, i64 8, !10, i64 16, !47, i64 24, !10, i64 32, !10, i64 36, !50, i64 40, !17, i64 48, !17, i64 56, !14, i64 64}
!115 = !{!"p1 _ZTS13payloadHeader", !17, i64 0}
!116 = !{!"p1 _ZTS7asmTask", !17, i64 0}
!117 = distinct !{!117, !23}
!118 = !{!93, !11, i64 8}
!119 = distinct !{!119, !23}
!120 = !{!121, !10, i64 208}
!121 = !{!"redisCommand", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !10, i64 32, !20, i64 40, !20, i64 48, !10, i64 56, !17, i64 64, !10, i64 72, !44, i64 80, !10, i64 88, !17, i64 96, !10, i64 104, !14, i64 112, !14, i64 120, !17, i64 128, !10, i64 136, !17, i64 144, !10, i64 152, !111, i64 160, !122, i64 168, !50, i64 176, !50, i64 184, !50, i64 192, !50, i64 200, !10, i64 208, !20, i64 216, !123, i64 224, !124, i64 232, !47, i64 288, !111, i64 296, !125, i64 304}
!122 = !{!"p1 _ZTS15redisCommandArg", !17, i64 0}
!123 = !{!"p1 _ZTS13hdr_histogram", !17, i64 0}
!124 = !{!"", !20, i64 0, !14, i64 8, !10, i64 16, !11, i64 24, !10, i64 40, !11, i64 44}
!125 = !{!"p1 _ZTS18RedisModuleCommand", !17, i64 0}
!126 = distinct !{!126, !23}
!127 = !{!121, !47, i64 288}
!128 = distinct !{!128, !23}
!129 = !{!121, !14, i64 120}
!130 = distinct !{!130, !23}
!131 = !{!132, !17, i64 24}
!132 = !{!"raxIterator", !10, i64 0, !49, i64 8, !20, i64 16, !17, i64 24, !14, i64 32, !14, i64 40, !11, i64 48, !133, i64 176, !134, i64 184, !17, i64 472, !17, i64 480}
!133 = !{!"p1 _ZTS7raxNode", !17, i64 0}
!134 = !{!"raxStack", !45, i64 0, !14, i64 8, !14, i64 16, !11, i64 24, !10, i64 280}
!135 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!136 = distinct !{!136, !23}
!137 = distinct !{!137, !23}
!138 = distinct !{!138, !23}
!139 = !{!140, !140, i64 0}
!140 = !{!"p1 int", !17, i64 0}
!141 = distinct !{!141, !23}
!142 = !{!121, !20, i64 216}
!143 = !{!121, !111, i64 296}
!144 = !{!43, !10, i64 6416}
!145 = !{!43, !10, i64 6420}
!146 = !{!43, !47, i64 80}
!147 = distinct !{!147, !23}
!148 = distinct !{!148, !23}
!149 = distinct !{!149, !23}
!150 = distinct !{!150, !23}
!151 = !{!152, !14, i64 8}
!152 = !{!"ACLUserFlag", !20, i64 0, !14, i64 8}
!153 = !{!152, !20, i64 0}
!154 = distinct !{!154, !23}
!155 = distinct !{!155, !23}
!156 = distinct !{!156, !23}
!157 = distinct !{!157, !23}
!158 = distinct !{!158, !23}
!159 = !{!51, !51, i64 0}
end_hunk_1
