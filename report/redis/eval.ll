inline.NumInlined: 119
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@evalGetCommandFlags:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113  ; 2 uses
  %i.g = icmp eq ptr %i.f, @evalShaCommand
  %i.h = icmp eq ptr %i.f, @evalShaRoCommand
  %spec.select = or i1 %i.g, %i.h                 ; 3 uses
  %i.i = zext i1 %spec.select to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !121  ; 6 uses
  br i1 %spec.select, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %.val.i = load i8, ptr %i.p, align 1, !tbaa !19
  %i.q = and i8 %.val.i, 7
  switch i8 %i.q, label %sdslen.exit.thread [
    i8 4, label %bb.f
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19
  %i.t = zext i8 %i.s to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 -5
  %i.v = load i16, ptr %i.u, align 1, !tbaa !105
  %i.w = zext i16 %i.v to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds i8, ptr %i.o, i64 -9
  %i.y = load i32, ptr %i.x, align 1, !tbaa !9
  %i.z = zext i32 %i.y to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %i.o, i64 -17
  %i.ab = load i64, ptr %i.aa, align 1, !tbaa !106
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.ab, %bb.f ], [ %i.z, %bb.e ], [ %i.t, %bb.c ], [ %i.w, %bb.d ]
  %.not = icmp eq i64 %.0.i, 40
  br i1 %.not, label %._crit_edge, label %sdslen.exit.thread

._crit_edge:                                      ; preds = %bb.a, %sdslen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  call fastcc void @evalCalcFunctionName(i32 noundef %i.i, ptr noundef %i.o, ptr noundef %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 16), align 8, !tbaa !70
  %i.af = call ptr @dictFind(ptr noundef %i.ae, ptr noundef nonnull %i.ad) #17 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !123
  %.not20 = icmp eq ptr %i.af, null
  br i1 %.not20, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  br i1 %spec.select, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !119
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !120
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !121
  %i.am = call i32 @evalExtractShebangFlags(ptr noundef %i.al, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null)
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %bb.k, label %._crit_edge28

bb.i:                                             ; preds = %._crit_edge
  %i.ao = call ptr @dictGetVal(ptr noundef nonnull %i.af) #17
  br label %._crit_edge28

._crit_edge28:                                    ; preds = %bb.h, %bb.i
  %.sink = phi ptr [ %i.ao, %bb.i ], [ %i.b, %bb.h ]
  %.pre29 = load i64, ptr %.sink, align 8, !tbaa !106 ; 2 uses
  %i.ap = and i64 %.pre29, 16
  %.not21 = icmp eq i64 %i.ap, 0
  br i1 %.not21, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge28
  %i.aq = call i64 @scriptFlagsToCmdFlags(i64 noundef %1, i64 noundef %.pre29) #17
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge28, %bb.h, %bb.g, %bb.j
  %.0 = phi i64 [ %1, %bb.h ], [ %i.aq, %bb.j ], [ %1, %bb.g ], [ %1, %._crit_edge28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %bb.b, %sdslen.exit, %bb.k
  %.1 = phi i64 [ %.0, %bb.k ], [ %1, %sdslen.exit ], [ %1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @evalShaCommand(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1488), align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !129
  tail call void @replicationFeedMonitors(ptr noundef %0, ptr noundef %i.a, i32 noundef %i.e, ptr noundef %i.g, i32 noundef %i.i) #17
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !119
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !120
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121  ; 5 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %.val.i = load i8, ptr %i.o, align 1, !tbaa !19
  %i.p = and i8 %.val.i, 7
  switch i8 %i.p, label %sdslen.exit.thread [
    i8 4, label %bb.e
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !19
  %i.s = zext i8 %i.r to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds i8, ptr %i.n, i64 -5
  %i.u = load i16, ptr %i.t, align 1, !tbaa !105
  %i.v = zext i16 %i.u to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds i8, ptr %i.n, i64 -9
  %i.x = load i32, ptr %i.w, align 1, !tbaa !9
  %i.y = zext i32 %i.x to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 -17
  %i.aa = load i64, ptr %i.z, align 1, !tbaa !106
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.aa, %bb.e ], [ %i.y, %bb.d ], [ %i.s, %bb.b ], [ %i.v, %bb.c ]
  %.not = icmp eq i64 %.0.i, 40
  br i1 %.not, label %bb.f, label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %bb.a, %sdslen.exit
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 240), align 8, !tbaa !130
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ab) #17
  br label %bb.i

bb.f:                                             ; preds = %sdslen.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !73
  %i.ae = and i64 %i.ad, 33554432
  %.not9 = icmp eq i64 %i.ae, 0
  br i1 %.not9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @evalGenericCommand(ptr noundef nonnull %0, i32 noundef 1)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.31) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %sdslen.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @evalShaRoCommand(ptr noundef %0) #0 {
bb.a:
  tail call void @evalShaCommand(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @evalCalcFunctionName(i32 noundef %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 43)) %2) unnamed_addr #0 {
bb.a:
  store i8 102, ptr %2, align 1, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 95, ptr %i.a, align 1, !tbaa !19
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %8, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %3 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %4 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %5 = add i64 %3, 40
  %6 = add i64 %4, 2
  %7 = add i64 %4, 43
  %rt.bound0 = icmp ugt i64 %7, %3
  %rt.bound1 = icmp ult i64 %6, %5
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.preheader.preheader.a, label %.preheader.preheader.rtvec

8:                                                ; preds = %bb.a
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %10 = getelementptr i8, ptr %1, i64 -1
  %.val.i = load i8, ptr %10, align 1, !tbaa !19  ; 2 uses
  %11 = and i8 %.val.i, 7
  switch i8 %11, label %sdslen.exit [
    i8 0, label %12
    i8 1, label %15
    i8 2, label %19
    i8 3, label %23
    i8 4, label %27
  ]

12:                                               ; preds = %8
  %13 = lshr i8 %.val.i, 3
  %14 = zext nneg i8 %13 to i64
  br label %sdslen.exit

15:                                               ; preds = %8
  %16 = getelementptr inbounds i8, ptr %1, i64 -3
  %17 = load i8, ptr %16, align 1, !tbaa !19
  %18 = zext i8 %17 to i64
  br label %sdslen.exit

19:                                               ; preds = %8
  %20 = getelementptr inbounds i8, ptr %1, i64 -5
  %21 = load i16, ptr %20, align 1, !tbaa !105
  %22 = zext i16 %21 to i64
  br label %sdslen.exit

23:                                               ; preds = %8
  %24 = getelementptr inbounds i8, ptr %1, i64 -9
  %25 = load i32, ptr %24, align 1, !tbaa !9
  %26 = zext i32 %25 to i64
  br label %sdslen.exit

27:                                               ; preds = %8
  %28 = getelementptr inbounds i8, ptr %1, i64 -17
  %29 = load i64, ptr %28, align 1, !tbaa !106
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %8, %12, %15, %19, %23, %27
  %.0.i = phi i64 [ %29, %27 ], [ %14, %12 ], [ %18, %15 ], [ %22, %19 ], [ %26, %23 ], [ 0, %8 ]
  tail call void @sha1hex(ptr noundef nonnull %9, ptr noundef nonnull %1, i64 noundef %.0.i)
  br label %.preheader.preheader.rtcont

.preheader.preheader.rtcont:                      ; preds = %.preheader.preheader.rtvec, %.preheader.preheader.a, %sdslen.exit
  ret void

.preheader.preheader.rtvec:                       ; preds = %.preheader.preheader
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %31 = load <16 x i8>, ptr %1, align 1, !tbaa !19 ; 3 uses
  %32 = add <16 x i8> %31, splat (i8 -65)
  %33 = icmp ult <16 x i8> %32, splat (i8 26)
  %34 = add nuw nsw <16 x i8> %31, splat (i8 32)
  %35 = select <16 x i1> %33, <16 x i8> %34, <16 x i8> %31
  store <16 x i8> %35, ptr %30, align 1, !tbaa !19
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 18
  %38 = load <16 x i8>, ptr %36, align 1, !tbaa !19 ; 3 uses
  %39 = add <16 x i8> %38, splat (i8 -65)
  %40 = icmp ult <16 x i8> %39, splat (i8 26)
  %41 = add nuw nsw <16 x i8> %38, splat (i8 32)
  %42 = select <16 x i1> %40, <16 x i8> %41, <16 x i8> %38
  store <16 x i8> %42, ptr %37, align 1, !tbaa !19
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 34
  %45 = load <8 x i8>, ptr %43, align 1, !tbaa !19 ; 3 uses
  %46 = add <8 x i8> %45, splat (i8 -65)
  %47 = icmp ult <8 x i8> %46, splat (i8 26)
  %48 = add nuw nsw <8 x i8> %45, splat (i8 32)
  %49 = select <8 x i1> %47, <8 x i8> %48, <8 x i8> %45
  store <8 x i8> %49, ptr %44, align 1, !tbaa !19
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 42
  store i8 0, ptr %50, align 1, !tbaa !19
  br label %.preheader.preheader.rtcont

.preheader.preheader.a:                           ; preds = %.preheader.preheader
  %i.b = load i8, ptr %1, align 1, !tbaa !19      ; 3 uses
  %i.c = add i8 %i.b, -65
  %or.cond = icmp ult i8 %i.c, 26
  %i.d = add nuw nsw i8 %i.b, 32
  %spec.select = select i1 %or.cond, i8 %i.d, i8 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %spec.select, ptr %i.e, align 1, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !19    ; 3 uses
  %i.h = add i8 %i.g, -65
  %or.cond.1 = icmp ult i8 %i.h, 26
  %i.i = add nuw nsw i8 %i.g, 32
  %spec.select.1 = select i1 %or.cond.1, i8 %i.i, i8 %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %spec.select.1, ptr %i.j, align 1, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !19    ; 3 uses
  %i.m = add i8 %i.l, -65
  %or.cond.2 = icmp ult i8 %i.m, 26
  %i.n = add nuw nsw i8 %i.l, 32
  %spec.select.2 = select i1 %or.cond.2, i8 %i.n, i8 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %spec.select.2, ptr %i.o, align 1, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19    ; 3 uses
  %i.r = add i8 %i.q, -65
  %or.cond.3 = icmp ult i8 %i.r, 26
  %i.s = add nuw nsw i8 %i.q, 32
  %spec.select.3 = select i1 %or.cond.3, i8 %i.s, i8 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %spec.select.3, ptr %i.t, align 1, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19    ; 3 uses
  %i.w = add i8 %i.v, -65
  %or.cond.4 = icmp ult i8 %i.w, 26
  %i.x = add nuw nsw i8 %i.v, 32
  %spec.select.4 = select i1 %or.cond.4, i8 %i.x, i8 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %spec.select.4, ptr %i.y, align 1, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19   ; 3 uses
  %i.ab = add i8 %i.aa, -65
  %or.cond.5 = icmp ult i8 %i.ab, 26
  %i.ac = add nuw nsw i8 %i.aa, 32
  %spec.select.5 = select i1 %or.cond.5, i8 %i.ac, i8 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %spec.select.5, ptr %i.ad, align 1, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !19  ; 3 uses
  %i.ag = add i8 %i.af, -65
  %or.cond.6 = icmp ult i8 %i.ag, 26
  %i.ah = add nuw nsw i8 %i.af, 32
  %spec.select.6 = select i1 %or.cond.6, i8 %i.ah, i8 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %spec.select.6, ptr %i.ai, align 1, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !19  ; 3 uses
  %i.al = add i8 %i.ak, -65
  %or.cond.7 = icmp ult i8 %i.al, 26
  %i.am = add nuw nsw i8 %i.ak, 32
  %spec.select.7 = select i1 %or.cond.7, i8 %i.am, i8 %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %spec.select.7, ptr %i.an, align 1, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19  ; 3 uses
  %i.aq = add i8 %i.ap, -65
  %or.cond.8 = icmp ult i8 %i.aq, 26
  %i.ar = add nuw nsw i8 %i.ap, 32
  %spec.select.8 = select i1 %or.cond.8, i8 %i.ar, i8 %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %spec.select.8, ptr %i.as, align 1, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.au = load i8, ptr %i.at, align 1, !tbaa !19  ; 3 uses
  %i.av = add i8 %i.au, -65
  %or.cond.9 = icmp ult i8 %i.av, 26
  %i.aw = add nuw nsw i8 %i.au, 32
  %spec.select.9 = select i1 %or.cond.9, i8 %i.aw, i8 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 11
  store i8 %spec.select.9, ptr %i.ax, align 1, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !19  ; 3 uses
  %i.ba = add i8 %i.az, -65
  %or.cond.10 = icmp ult i8 %i.ba, 26
  %i.bb = add nuw nsw i8 %i.az, 32
  %spec.select.10 = select i1 %or.cond.10, i8 %i.bb, i8 %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %spec.select.10, ptr %i.bc, align 1, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !19  ; 3 uses
  %i.bf = add i8 %i.be, -65
  %or.cond.11 = icmp ult i8 %i.bf, 26
  %i.bg = add nuw nsw i8 %i.be, 32
  %spec.select.11 = select i1 %or.cond.11, i8 %i.bg, i8 %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %spec.select.11, ptr %i.bh, align 1, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !19  ; 3 uses
  %i.bk = add i8 %i.bj, -65
  %or.cond.12 = icmp ult i8 %i.bk, 26
  %i.bl = add nuw nsw i8 %i.bj, 32
  %spec.select.12 = select i1 %or.cond.12, i8 %i.bl, i8 %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i8 %spec.select.12, ptr %i.bm, align 1, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !19  ; 3 uses
  %i.bp = add i8 %i.bo, -65
  %or.cond.13 = icmp ult i8 %i.bp, 26
  %i.bq = add nuw nsw i8 %i.bo, 32
  %spec.select.13 = select i1 %or.cond.13, i8 %i.bq, i8 %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 15
  store i8 %spec.select.13, ptr %i.br, align 1, !tbaa !19
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !19  ; 3 uses
  %i.bu = add i8 %i.bt, -65
  %or.cond.14 = icmp ult i8 %i.bu, 26
  %i.bv = add nuw nsw i8 %i.bt, 32
  %spec.select.14 = select i1 %or.cond.14, i8 %i.bv, i8 %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %spec.select.14, ptr %i.bw, align 1, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !19  ; 3 uses
  %i.bz = add i8 %i.by, -65
  %or.cond.15 = icmp ult i8 %i.bz, 26
  %i.ca = add nuw nsw i8 %i.by, 32
  %spec.select.15 = select i1 %or.cond.15, i8 %i.ca, i8 %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 %spec.select.15, ptr %i.cb, align 1, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !19  ; 3 uses
  %i.ce = add i8 %i.cd, -65
  %or.cond.16 = icmp ult i8 %i.ce, 26
  %i.cf = add nuw nsw i8 %i.cd, 32
  %spec.select.16 = select i1 %or.cond.16, i8 %i.cf, i8 %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 %spec.select.16, ptr %i.cg, align 1, !tbaa !19
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !19  ; 3 uses
  %i.cj = add i8 %i.ci, -65
  %or.cond.17 = icmp ult i8 %i.cj, 26
  %i.ck = add nuw nsw i8 %i.ci, 32
  %spec.select.17 = select i1 %or.cond.17, i8 %i.ck, i8 %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 19
  store i8 %spec.select.17, ptr %i.cl, align 1, !tbaa !19
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !19  ; 3 uses
  %i.co = add i8 %i.cn, -65
  %or.cond.18 = icmp ult i8 %i.co, 26
  %i.cp = add nuw nsw i8 %i.cn, 32
  %spec.select.18 = select i1 %or.cond.18, i8 %i.cp, i8 %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 %spec.select.18, ptr %i.cq, align 1, !tbaa !19
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !19  ; 3 uses
  %i.ct = add i8 %i.cs, -65
  %or.cond.19 = icmp ult i8 %i.ct, 26
  %i.cu = add nuw nsw i8 %i.cs, 32
  %spec.select.19 = select i1 %or.cond.19, i8 %i.cu, i8 %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 %spec.select.19, ptr %i.cv, align 1, !tbaa !19
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !19  ; 3 uses
  %i.cy = add i8 %i.cx, -65
  %or.cond.20 = icmp ult i8 %i.cy, 26
  %i.cz = add nuw nsw i8 %i.cx, 32
  %spec.select.20 = select i1 %or.cond.20, i8 %i.cz, i8 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i8 %spec.select.20, ptr %i.da, align 1, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !19  ; 3 uses
  %i.dd = add i8 %i.dc, -65
  %or.cond.21 = icmp ult i8 %i.dd, 26
  %i.de = add nuw nsw i8 %i.dc, 32
  %spec.select.21 = select i1 %or.cond.21, i8 %i.de, i8 %i.dc
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 %spec.select.21, ptr %i.df, align 1, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !19  ; 3 uses
  %i.di = add i8 %i.dh, -65
  %or.cond.22 = icmp ult i8 %i.di, 26
  %i.dj = add nuw nsw i8 %i.dh, 32
  %spec.select.22 = select i1 %or.cond.22, i8 %i.dj, i8 %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 %spec.select.22, ptr %i.dk, align 1, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !19  ; 3 uses
  %i.dn = add i8 %i.dm, -65
  %or.cond.23 = icmp ult i8 %i.dn, 26
  %i.do = add nuw nsw i8 %i.dm, 32
  %spec.select.23 = select i1 %or.cond.23, i8 %i.do, i8 %i.dm
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 %spec.select.23, ptr %i.dp, align 1, !tbaa !19
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !19  ; 3 uses
  %i.ds = add i8 %i.dr, -65
  %or.cond.24 = icmp ult i8 %i.ds, 26
  %i.dt = add nuw nsw i8 %i.dr, 32
  %spec.select.24 = select i1 %or.cond.24, i8 %i.dt, i8 %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 %spec.select.24, ptr %i.du, align 1, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !19  ; 3 uses
  %i.dx = add i8 %i.dw, -65
  %or.cond.25 = icmp ult i8 %i.dx, 26
  %i.dy = add nuw nsw i8 %i.dw, 32
  %spec.select.25 = select i1 %or.cond.25, i8 %i.dy, i8 %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 %spec.select.25, ptr %i.dz, align 1, !tbaa !19
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !19  ; 3 uses
  %i.ec = add i8 %i.eb, -65
  %or.cond.26 = icmp ult i8 %i.ec, 26
  %i.ed = add nuw nsw i8 %i.eb, 32
  %spec.select.26 = select i1 %or.cond.26, i8 %i.ed, i8 %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 %spec.select.26, ptr %i.ee, align 1, !tbaa !19
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !19  ; 3 uses
  %i.eh = add i8 %i.eg, -65
  %or.cond.27 = icmp ult i8 %i.eh, 26
  %i.ei = add nuw nsw i8 %i.eg, 32
  %spec.select.27 = select i1 %or.cond.27, i8 %i.ei, i8 %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 29
  store i8 %spec.select.27, ptr %i.ej, align 1, !tbaa !19
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !19  ; 3 uses
  %i.em = add i8 %i.el, -65
  %or.cond.28 = icmp ult i8 %i.em, 26
  %i.en = add nuw nsw i8 %i.el, 32
  %spec.select.28 = select i1 %or.cond.28, i8 %i.en, i8 %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 30
  store i8 %spec.select.28, ptr %i.eo, align 1, !tbaa !19
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !19  ; 3 uses
  %i.er = add i8 %i.eq, -65
  %or.cond.29 = icmp ult i8 %i.er, 26
  %i.es = add nuw nsw i8 %i.eq, 32
  %spec.select.29 = select i1 %or.cond.29, i8 %i.es, i8 %i.eq
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 31
  store i8 %spec.select.29, ptr %i.et, align 1, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !19  ; 3 uses
  %i.ew = add i8 %i.ev, -65
  %or.cond.30 = icmp ult i8 %i.ew, 26
  %i.ex = add nuw nsw i8 %i.ev, 32
  %spec.select.30 = select i1 %or.cond.30, i8 %i.ex, i8 %i.ev
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 %spec.select.30, ptr %i.ey, align 1, !tbaa !19
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !19  ; 3 uses
  %i.fb = add i8 %i.fa, -65
  %or.cond.31 = icmp ult i8 %i.fb, 26
  %i.fc = add nuw nsw i8 %i.fa, 32
  %spec.select.31 = select i1 %or.cond.31, i8 %i.fc, i8 %i.fa
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 %spec.select.31, ptr %i.fd, align 1, !tbaa !19
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !19  ; 3 uses
  %i.fg = add i8 %i.ff, -65
  %or.cond.32 = icmp ult i8 %i.fg, 26
  %i.fh = add nuw nsw i8 %i.ff, 32
  %spec.select.32 = select i1 %or.cond.32, i8 %i.fh, i8 %i.ff
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 %spec.select.32, ptr %i.fi, align 1, !tbaa !19
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !19  ; 3 uses
  %i.fl = add i8 %i.fk, -65
  %or.cond.33 = icmp ult i8 %i.fl, 26
  %i.fm = add nuw nsw i8 %i.fk, 32
  %spec.select.33 = select i1 %or.cond.33, i8 %i.fm, i8 %i.fk
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 35
  store i8 %spec.select.33, ptr %i.fn, align 1, !tbaa !19
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !19  ; 3 uses
  %i.fq = add i8 %i.fp, -65
  %or.cond.34 = icmp ult i8 %i.fq, 26
  %i.fr = add nuw nsw i8 %i.fp, 32
  %spec.select.34 = select i1 %or.cond.34, i8 %i.fr, i8 %i.fp
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 %spec.select.34, ptr %i.fs, align 1, !tbaa !19
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !19  ; 3 uses
  %i.fv = add i8 %i.fu, -65
  %or.cond.35 = icmp ult i8 %i.fv, 26
  %i.fw = add nuw nsw i8 %i.fu, 32
  %spec.select.35 = select i1 %or.cond.35, i8 %i.fw, i8 %i.fu
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 37
  store i8 %spec.select.35, ptr %i.fx, align 1, !tbaa !19
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !19  ; 3 uses
  %i.ga = add i8 %i.fz, -65
  %or.cond.36 = icmp ult i8 %i.ga, 26
  %i.gb = add nuw nsw i8 %i.fz, 32
  %spec.select.36 = select i1 %or.cond.36, i8 %i.gb, i8 %i.fz
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 38
  store i8 %spec.select.36, ptr %i.gc, align 1, !tbaa !19
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !19  ; 3 uses
  %i.gf = add i8 %i.ge, -65
  %or.cond.37 = icmp ult i8 %i.gf, 26
  %i.gg = add nuw nsw i8 %i.ge, 32
  %spec.select.37 = select i1 %or.cond.37, i8 %i.gg, i8 %i.ge
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 39
  store i8 %spec.select.37, ptr %i.gh, align 1, !tbaa !19
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !19  ; 3 uses
  %i.gk = add i8 %i.gj, -65
  %or.cond.38 = icmp ult i8 %i.gk, 26
  %i.gl = add nuw nsw i8 %i.gj, 32
  %spec.select.38 = select i1 %or.cond.38, i8 %i.gl, i8 %i.gj
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 %spec.select.38, ptr %i.gm, align 1, !tbaa !19
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !19  ; 3 uses
  %i.gp = add i8 %i.go, -65
  %or.cond.39 = icmp ult i8 %i.gp, 26
  %i.gq = add nuw nsw i8 %i.go, 32
  %spec.select.39 = select i1 %or.cond.39, i8 %i.gq, i8 %i.go
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 41
  store i8 %spec.select.39, ptr %i.gr, align 1, !tbaa !19
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 42
  store i8 0, ptr %i.gs, align 1, !tbaa !19
  br label %.preheader.preheader.rtcont
}

declare ptr @dictFind(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dictGetVal(ptr noundef) local_unnamed_addr #1

declare i64 @scriptFlagsToCmdFlags(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @luaCreateFunction(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [43 x i8], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i8 102, ptr %i.a, align 16, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 95, ptr %i.e, align 1, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !121  ; 6 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %.val.i = load i8, ptr %i.i, align 1, !tbaa !19 ; 2 uses
  %i.j = and i8 %.val.i, 7
  switch i8 %i.j, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = lshr i8 %.val.i, 3
  %i.l = zext nneg i8 %i.k to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !19
  %i.o = zext i8 %i.n to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 -5
  %i.q = load i16, ptr %i.p, align 1, !tbaa !105
  %i.r = zext i16 %i.q to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds i8, ptr %i.h, i64 -9
  %i.t = load i32, ptr %i.s, align 1, !tbaa !9
  %i.u = zext i32 %i.t to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds i8, ptr %i.h, i64 -17
  %i.w = load i64, ptr %i.v, align 1, !tbaa !106
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.w, %bb.f ], [ %i.l, %bb.b ], [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.u, %bb.e ], [ 0, %bb.a ]
  call void @sha1hex(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, i64 noundef %.0.i)
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 16), align 8, !tbaa !70
  %i.y = call ptr @dictFind(ptr noundef %i.x, ptr noundef nonnull %i.f) #17 ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %sdslen.exit
  %i.z = call ptr @dictGetKey(ptr noundef nonnull %i.y) #17
  br label %bb.z

bb.h:                                             ; preds = %sdslen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 0, ptr %i.c, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store ptr null, ptr %i.d, align 8, !tbaa !103
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !121
  %i.ab = call i32 @evalExtractShebangFlags(ptr noundef %i.aa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not32 = icmp eq ptr %0, null
  br i1 %.not32, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !103
  call void @addReplyErrorSds(ptr noundef nonnull %0, ptr noundef %i.ad) #17
  br label %bb.y

bb.k:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr @lctx, align 8, !tbaa !86
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !121 ; 6 uses
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !106 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.af, i64 -1
  %.val.i33 = load i8, ptr %i.ai, align 1, !tbaa !19 ; 2 uses
  %i.aj = and i8 %.val.i33, 7
  switch i8 %i.aj, label %sdslen.exit35 [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = lshr i8 %.val.i33, 3
  %i.al = zext nneg i8 %i.ak to i64
  br label %sdslen.exit35

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 -3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19
  %i.ao = zext i8 %i.an to i64
  br label %sdslen.exit35

bb.n:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds i8, ptr %i.af, i64 -5
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !105
  %i.ar = zext i16 %i.aq to i64
  br label %sdslen.exit35

bb.o:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds i8, ptr %i.af, i64 -9
  %i.at = load i32, ptr %i.as, align 1, !tbaa !9
  %i.au = zext i32 %i.at to i64
  br label %sdslen.exit35

bb.p:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds i8, ptr %i.af, i64 -17
  %i.aw = load i64, ptr %i.av, align 1, !tbaa !106
  br label %sdslen.exit35

sdslen.exit35:                                    ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i34 = phi i64 [ %i.aw, %bb.p ], [ %i.al, %bb.l ], [ %i.ao, %bb.m ], [ %i.ar, %bb.n ], [ %i.au, %bb.o ], [ 0, %bb.k ]
  %i.ax = sub i64 %.0.i34, %i.ag
  %i.ay = call i32 @luaL_loadbuffer(ptr noundef %i.ae, ptr noundef nonnull %i.ah, i64 noundef %i.ax, ptr noundef nonnull @.str.20) #17
  %.not29 = icmp eq i32 %i.ay, 0
  br i1 %.not29, label %bb.t, label %bb.q

bb.q:                                             ; preds = %sdslen.exit35
  %.not31 = icmp eq ptr %0, null
  br i1 %.not31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr @lctx, align 8, !tbaa !86
  %i.ba = call ptr @lua_tolstring(ptr noundef %i.az, i32 noundef -1, ptr noundef null) #17
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef %i.ba) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bb = load ptr, ptr @lctx, align 8, !tbaa !86
  call void @lua_settop(ptr noundef %i.bb, i32 noundef -2) #17
  %i.bc = load ptr, ptr @lctx, align 8, !tbaa !86
  call void @luaGC(ptr noundef %i.bc, ptr noundef nonnull @gc_count) #17
  br label %bb.y

bb.t:                                             ; preds = %sdslen.exit35
  %i.bd = load ptr, ptr @lctx, align 8, !tbaa !86
  %i.be = call i32 @lua_type(ptr noundef %i.bd, i32 noundef -1) #17
  %i.bf = icmp eq i32 %i.be, 6
  br i1 %i.bf, label %bb.v, label %bb.u, !prof !132

bb.u:                                             ; preds = %bb.t
  call void @_serverAssert(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 471) #17
  call void @abort() #19
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr @lctx, align 8, !tbaa !86
  call void @lua_setfield(ptr noundef %i.bg, i32 noundef -10000, ptr noundef nonnull %i.a) #17
  %i.bh = call noalias dereferenceable_or_null(24) ptr @zcalloc(i64 noundef 24) #20 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %1, ptr %i.bi, align 8, !tbaa !13
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !106
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !133
  %i.bk = call ptr @sdsnewlen(ptr noundef nonnull %i.f, i64 noundef 40) #17 ; 4 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %.preheader.i, label %luaScriptsLRUAdd.exit

.preheader.i:                                     ; preds = %bb.v
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 24), align 8, !tbaa !71 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !134
  %i.bo = icmp ugt i64 %i.bn, 499
  br i1 %i.bo, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.bp = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.bl, %.preheader.i ]
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !135
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !136
  call void @luaDeleteFunction(ptr noundef %0, ptr noundef %i.bs)
  %i.bt = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2624), align 8, !tbaa !137
  %i.bu = add nsw i64 %i.bt, 1
  store i64 %i.bu, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2624), align 8, !tbaa !137
end_hunk_0
