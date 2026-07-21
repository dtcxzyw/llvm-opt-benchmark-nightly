inline.NumInlined: 88
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@IsValidExtendedFormat:bb.a

CheckFrameBounds.exit:                            ; preds = %bb.w, %bb.u, %.thread90, %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %.14375, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !39 ; 2 uses
  %.not50 = icmp eq ptr %i.bt, null
  br i1 %.not50, label %.critedge, label %bb.f, !llvm.loop !87

.critedge:                                        ; preds = %CheckFrameBounds.exit, %bb.w, %bb.u, %bb.v, %bb.t, %bb.l, %bb.p, %bb.m, %.thread, %bb.q, %bb.k, %bb.j, %bb.g, %.preheader, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %.4 = phi i32 [ 1, %.preheader ], [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %CheckFrameBounds.exit ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.t ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %bb.m ], [ 0, %.thread ], [ 0, %bb.q ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.w ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @StoreFrame(i32 noundef range(i32 -2147483647, -2147483648) %0, i32 noundef range(i32 -16, -24) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.WebPBitstreamFeatures, align 8 ; 6 uses
  %.val89 = load i64, ptr %2, align 8, !tbaa !78  ; 2 uses
  %i.a = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val90 = load i64, ptr %i.a, align 8, !tbaa !80 ; 2 uses
  %i.b = sub i64 %.val90, %.val89                 ; 2 uses
  %i.c = icmp ult i64 %i.b, 8
  %i.d = zext i32 %1 to i64
  %i.e = icmp ult i64 %i.b, %i.d
  %or.cond114 = or i1 %i.c, %i.e
  br i1 %or.cond114, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.n
  %.val86 = phi i64 [ %.val80, %bb.n ], [ %.val90, %.preheader ]
  %i.q = phi i64 [ %i.at, %bb.n ], [ %.val89, %.preheader ] ; 7 uses
  %.061 = phi i32 [ %.263, %bb.n ], [ 0, %.preheader ] ; 3 uses
  %.058 = phi i32 [ %.159, %bb.n ], [ 0, %.preheader ] ; 4 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !82   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q ; 2 uses
  %.val3.i.i = load i32, ptr %i.s, align 1
  %i.t = add i64 %i.q, 4                          ; 2 uses
  store i64 %i.t, ptr %2, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %.val3.i.i93 = load i32, ptr %i.u, align 1      ; 3 uses
  %i.v = add i64 %i.q, 8                          ; 4 uses
  store i64 %i.v, ptr %2, align 8, !tbaa !78
  %i.w = icmp ugt i32 %.val3.i.i93, -10
  br i1 %i.w, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = and i32 %.val3.i.i93, 1
  %i.y = add nuw i32 %i.x, %.val3.i.i93
  %i.z = zext i32 %i.y to i64                     ; 3 uses
  %i.aa = sub i64 %.val86, %i.v                   ; 2 uses
  %spec.select112 = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.z) ; 3 uses
  %i.ab = add nuw nsw i64 %spec.select112, 8      ; 3 uses
  %.val92 = load i64, ptr %i.g, align 8, !tbaa !79 ; 3 uses
  %i.ac = sub i64 %.val92, %i.v
  %.not = icmp ult i64 %i.ac, %i.z
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp ult i64 %i.aa, %i.z                ; 3 uses
  %spec.select = zext i1 %i.ad to i32             ; 2 uses
  switch i32 %.val3.i.i, label %bb.l [
    i32 1213221953, label %bb.e
    i32 1278758998, label %bb.g
    i32 540561494, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp eq i32 %.058, 0
  br i1 %i.ae, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  store i64 %i.q, ptr %i.o, align 8, !tbaa !25
  store i64 %i.ab, ptr %i.p, align 8, !tbaa !27
  store i32 1, ptr %i.l, align 8, !tbaa !35
  store i32 %0, ptr %i.m, align 8, !tbaa !36
  %i.af = add i64 %spec.select112, %i.v           ; 2 uses
  store i64 %i.af, ptr %2, align 8, !tbaa !78
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ag = icmp sgt i32 %.058, 0
  br i1 %i.ag, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ah = icmp eq i32 %.061, 0
  br i1 %i.ah, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ai = call i32 @WebPGetFeaturesInternal(ptr noundef nonnull %i.s, i64 noundef %i.ab, ptr noundef nonnull %4, i32 noundef 528) #11 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 7
  %or.cond = select i1 %i.ad, i1 %i.aj, i1 false
  br i1 %or.cond, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not77 = icmp eq i32 %i.ai, 0
  br i1 %.not77, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %.1.ph = phi i32 [ 2, %bb.j ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ak = xor i1 %i.ad, true
  %i.al = zext i1 %i.ak to i32
  store i64 %i.q, ptr %i.h, align 8, !tbaa !25
  store i64 %i.ab, ptr %i.i, align 8, !tbaa !27
  %i.am = load <2 x i32>, ptr %4, align 8, !tbaa !3
  store <2 x i32> %i.am, ptr %i.j, align 8, !tbaa !3
  %i.an = load i32, ptr %i.k, align 8, !tbaa !34
  %i.ao = load i32, ptr %i.l, align 8, !tbaa !35
  %i.ap = or i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.l, align 8, !tbaa !35
  store i32 %0, ptr %i.m, align 8, !tbaa !36
  store i32 %i.al, ptr %i.n, align 4, !tbaa !37
  %i.aq = load i64, ptr %2, align 8, !tbaa !78
  %i.ar = add i64 %i.aq, %spec.select112          ; 2 uses
  store i64 %i.ar, ptr %2, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.pre = load i64, ptr %i.g, align 8, !tbaa !79
  br label %bb.m

bb.l:                                             ; preds = %bb.e, %bb.h, %bb.d
  store i64 %i.q, ptr %2, align 8, !tbaa !78
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.f
  %i.as = phi i64 [ %.val92, %bb.l ], [ %.val92, %bb.f ], [ %.pre, %bb.k ]
  %i.at = phi i64 [ %i.q, %bb.l ], [ %i.af, %bb.f ], [ %i.ar, %bb.k ] ; 3 uses
  %.not78 = phi i1 [ false, %bb.l ], [ true, %bb.f ], [ true, %bb.k ]
  %.263 = phi i32 [ %.061, %bb.l ], [ %.061, %bb.f ], [ 1, %bb.k ]
  %.159 = phi i32 [ %.058, %bb.l ], [ 1, %bb.f ], [ %.058, %bb.k ]
  %i.au = icmp eq i64 %i.at, %i.as
  br i1 %i.au, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val80 = load i64, ptr %i.a, align 8, !tbaa !80 ; 2 uses
  %i.av = sub i64 %.val80, %i.at
  %i.aw = icmp ult i64 %i.av, 8
  %spec.select79 = select i1 %i.aw, i32 1, i32 %spec.select ; 2 uses
  %i.ax = icmp eq i32 %spec.select79, 0
  %i.ay = select i1 %.not78, i1 %i.ax, i1 false
  br i1 %i.ay, label %bb.b, label %.critedge, !llvm.loop !88

.critedge:                                        ; preds = %bb.c, %bb.g, %bb.b, %bb.m, %bb.n, %.thread, %bb.a
  %.4 = phi i32 [ 1, %bb.a ], [ %.1.ph, %.thread ], [ 2, %bb.b ], [ 2, %bb.g ], [ 2, %bb.c ], [ %spec.select79, %bb.n ], [ %spec.select, %bb.m ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @ParseVP8XChunks(ptr nofree noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %i.c = and i32 %i.b, 2
  %i.d = icmp ne i32 %i.c, 0
  %i.e = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.pre = load i64, ptr %0, align 8, !tbaa !78
  br label %bb.b

bb.b:                                             ; preds = %bb.z, %bb.a
  %i.m = phi i64 [ %.pre, %bb.a ], [ %i.ek, %bb.z ] ; 7 uses
  %.048 = phi i32 [ 0, %bb.a ], [ %.149, %bb.z ]  ; 8 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !82   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  %.val3.i.i = load i32, ptr %i.o, align 1
  %i.p = add i64 %i.m, 4                          ; 2 uses
  store i64 %i.p, ptr %0, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %.val3.i.i70 = load i32, ptr %i.q, align 1      ; 4 uses
  %i.r = add i64 %i.m, 8                          ; 10 uses
  store i64 %i.r, ptr %0, align 8, !tbaa !78
  %i.s = icmp ugt i32 %.val3.i.i70, -10
  br i1 %i.s, label %.thread81, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = and i32 %.val3.i.i70, 1
  %i.u = add nuw i32 %i.t, %.val3.i.i70           ; 5 uses
  %i.v = zext i32 %i.u to i64                     ; 6 uses
  %.val69 = load i64, ptr %i.g, align 8, !tbaa !79
  %i.w = sub i64 %.val69, %i.r
  %.not = icmp ult i64 %i.w, %i.v
  br i1 %.not, label %.thread81, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %.val3.i.i, label %.thread [
    i32 1480085590, label %.thread81
    i32 1213221953, label %bb.e
    i32 540561494, label %bb.e
    i32 1278758998, label %bb.e
    i32 1296649793, label %bb.g
    i32 1179471425, label %bb.k
    i32 1346585417, label %bb.x
    i32 1179211845, label %bb.v
    i32 542133592, label %bb.w
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.x = icmp sgt i32 %.048, 0
  %or.cond = select i1 %i.x, i1 true, i1 %i.d
  br i1 %or.cond, label %.thread81, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.m, ptr %0, align 8, !tbaa !78
  %i.y = tail call i32 @ParseSingleImage(ptr noundef nonnull %0)
  br label %ParseAnimationFrame.exit

bb.g:                                             ; preds = %bb.d
  %i.z = icmp ult i32 %i.u, 6
  br i1 %i.z, label %.thread81, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val67 = load i64, ptr %i.e, align 8, !tbaa !80
  %i.aa = sub i64 %.val67, %i.r
  %i.ab = icmp ult i64 %i.aa, %i.v
  br i1 %i.ab, label %ParseAnimationFrame.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp eq i32 %.048, 0
  br i1 %i.ac, label %bb.j, label %.thread99

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.r
  %.val3.i.i71 = load i32, ptr %i.ad, align 1
  %i.ae = add i64 %i.m, 12                        ; 2 uses
  store i64 %i.ae, ptr %0, align 8, !tbaa !78
  store i32 %.val3.i.i71, ptr %i.j, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ae
  %.val.i = load i16, ptr %i.af, align 1
  %i.ag = zext i16 %.val.i to i32
  %i.ah = add i64 %i.m, 14
  store i32 %i.ag, ptr %i.k, align 4, !tbaa !53
  %i.ai = add i32 %i.u, -6
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add i64 %i.ah, %i.aj
  store i64 %i.ak, ptr %0, align 8, !tbaa !78
  br label %ParseAnimationFrame.exit

bb.k:                                             ; preds = %bb.d
  %i.al = icmp eq i32 %.048, 0
  br i1 %i.al, label %.thread81, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load i32, ptr %i.a, align 8, !tbaa !42
  %i.an = and i32 %i.am, 2
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = add i32 %i.u, -16                       ; 2 uses
  %i.aq = icmp ult i32 %i.u, 16
  br i1 %i.aq, label %ParseAnimationFrame.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val8.i.i = load i64, ptr %i.e, align 8, !tbaa !80
  %i.ar = sub i64 %.val8.i.i, %i.r
  %i.as = icmp ult i64 %i.ar, 16
  br i1 %i.as, label %ParseAnimationFrame.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = tail call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 80) #11 ; 14 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %ParseAnimationFrame.exit, label %NewFrame.exit.i

NewFrame.exit.i:                                  ; preds = %bb.n
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !82  ; 6 uses
  %i.aw = load i64, ptr %0, align 8, !tbaa !78    ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw ; 2 uses
  %.val.i.i.i = load i16, ptr %i.ax, align 1
  %i.ay = zext i16 %.val.i.i.i to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !83
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add i64 %i.aw, 3                        ; 2 uses
  store i64 %i.bc, ptr %0, align 8, !tbaa !78
  %i.bd = shl nuw nsw i32 %i.bb, 17
  %i.be = shl nuw nsw i32 %i.ay, 1
  %i.bf = or disjoint i32 %i.bd, %i.be
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !85
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bc ; 2 uses
  %.val.i.i43.i = load i16, ptr %i.bg, align 1
  %i.bh = zext i16 %.val.i.i43.i to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !83
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add i64 %i.aw, 6                        ; 2 uses
  store i64 %i.bl, ptr %0, align 8, !tbaa !78
  %i.bm = shl nuw nsw i32 %i.bk, 17
  %i.bn = shl nuw nsw i32 %i.bh, 1
  %i.bo = or disjoint i32 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !86
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bl ; 2 uses
  %.val.i.i44.i = load i16, ptr %i.bq, align 1
  %i.br = zext i16 %.val.i.i44.i to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !83
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 16
  %i.bw = or disjoint i32 %i.bv, %i.br
  %i.bx = add i64 %i.aw, 9                        ; 2 uses
  store i64 %i.bx, ptr %0, align 8, !tbaa !78
  %i.by = add nuw nsw i32 %i.bw, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bx ; 2 uses
  %.val.i.i45.i = load i16, ptr %i.ca, align 1
  %i.cb = zext i16 %.val.i.i45.i to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !83
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 16
  %i.cg = or disjoint i32 %i.cf, %i.cb
  %i.ch = add i64 %i.aw, 12                       ; 2 uses
  store i64 %i.ch, ptr %0, align 8, !tbaa !78
  %i.ci = add nuw nsw i32 %i.cg, 1                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !33
  %i.ck = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ch ; 2 uses
  %.val.i.i46.i = load i16, ptr %i.ck, align 1
  %i.cl = zext i16 %.val.i.i46.i to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !83
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 16
  %i.cq = or disjoint i32 %i.cp, %i.cl
  %i.cr = add i64 %i.aw, 15                       ; 2 uses
  store i64 %i.cr, ptr %0, align 8, !tbaa !78
  %i.cs = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !89
  %i.ct = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cr
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !83  ; 2 uses
  %i.cv = add i64 %i.aw, 16                       ; 2 uses
  store i64 %i.cv, ptr %0, align 8, !tbaa !78
  %i.cw = and i8 %i.cu, 1
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !90
  %i.cz = lshr i8 %i.cu, 1
  %.lobit.i = and i8 %i.cz, 1
  %i.da = zext nneg i8 %.lobit.i to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  store i32 %i.da, ptr %i.db, align 4, !tbaa !62
  %umul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.by, i32 %i.ci)
  %i.dc = extractvalue { i32, i1 } %umul.i, 1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %NewFrame.exit.i
  tail call void @WebPSafeFree(ptr noundef nonnull %i.at) #11
  br label %ParseAnimationFrame.exit

bb.p:                                             ; preds = %NewFrame.exit.i
  %i.dd = load i32, ptr %i.h, align 4, !tbaa !43
  %i.de = add nsw i32 %i.dd, 1
  %i.df = tail call fastcc i32 @StoreFrame(i32 noundef %i.de, i32 noundef %i.ap, ptr noundef nonnull %0, ptr noundef nonnull %i.at) ; 4 uses
  %.not40.i = icmp eq i32 %i.df, 2
  br i1 %.not40.i, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dg = load i64, ptr %0, align 8, !tbaa !78
  %i.dh = sub i64 %i.dg, %i.cv
  %i.di = zext i32 %i.ap to i64
  %i.dj = icmp ugt i64 %i.dh, %i.di
  %spec.select.i = select i1 %i.dj, i32 2, i32 %i.df ; 2 uses
  %i.dk = icmp ne i32 %spec.select.i, 2
  %or.cond.i = select i1 %i.dk, i1 %i.ao, i1 false
  br i1 %or.cond.i, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !36
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.do = load ptr, ptr %i.i, align 8, !tbaa !21  ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !38 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !37
  %.not9.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not9.i.i, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr %i.at, ptr %i.do, align 8, !tbaa !38
  %i.ds = getelementptr inbounds nuw i8, ptr %i.at, i64 72 ; 2 uses
  store ptr null, ptr %i.ds, align 8, !tbaa !39
  store ptr %i.ds, ptr %i.i, align 8, !tbaa !21
  %i.dt = load i32, ptr %i.h, align 4, !tbaa !43
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.h, align 4, !tbaa !43
  br label %ParseAnimationFrame.exit

.thread.i:                                        ; preds = %bb.t, %bb.r, %bb.q, %bb.p
  %.1.ph.i = phi i32 [ %spec.select.i, %bb.q ], [ 2, %bb.p ], [ %i.df, %bb.r ], [ 2, %bb.t ]
  tail call void @WebPSafeFree(ptr noundef nonnull %i.at) #11
  br label %ParseAnimationFrame.exit

bb.v:                                             ; preds = %bb.d
  br label %bb.x

bb.w:                                             ; preds = %bb.d
  br label %bb.x

bb.x:                                             ; preds = %bb.d, %bb.v, %bb.w
  %.sink108 = phi i32 [ 2, %bb.w ], [ 3, %bb.v ], [ 5, %bb.d ]
  %.val65 = load i64, ptr %i.e, align 8, !tbaa !80
  %i.dv = sub i64 %.val65, %i.r
  %.not60 = icmp ult i64 %i.dv, %i.v
  br i1 %.not60, label %ParseAnimationFrame.exit, label %bb.y

.thread99:                                        ; preds = %bb.i
  %.val65101 = load i64, ptr %i.e, align 8, !tbaa !80
  %i.dw = sub i64 %.val65101, %i.r
  %.not60102 = icmp ult i64 %i.dw, %i.v
  br i1 %.not60102, label %ParseAnimationFrame.exit, label %.thread104

.thread:                                          ; preds = %bb.d
  %.val6573 = load i64, ptr %i.e, align 8, !tbaa !80
  %i.dx = sub i64 %.val6573, %i.r
  %.not6074 = icmp ult i64 %i.dx, %i.v
  br i1 %.not6074, label %ParseAnimationFrame.exit, label %.thread76

bb.y:                                             ; preds = %bb.x
  %i.dy = load i32, ptr %i.a, align 8, !tbaa !42
  %i.dz = shl nuw nsw i32 1, %.sink108
  %i.ea = and i32 %i.dy, %i.dz
  %.not61 = icmp eq i32 %i.ea, 0
  br i1 %.not61, label %.thread104, label %.thread76

.thread76:                                        ; preds = %.thread, %bb.y
  %i.eb = tail call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 24) #11 ; 5 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %.thread81, label %StoreChunk.exit

StoreChunk.exit:                                  ; preds = %.thread76
  %i.ed = add nuw i32 %.val3.i.i70, 8
  store i64 %i.m, ptr %i.eb, align 8, !tbaa !70
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !74
  %i.eg = load ptr, ptr %i.l, align 8, !tbaa !22
  store ptr %i.eb, ptr %i.eg, align 8, !tbaa !69
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  store ptr null, ptr %i.eh, align 8, !tbaa !50
  store ptr %i.eh, ptr %i.l, align 8, !tbaa !22
  %.pre92 = load i64, ptr %0, align 8, !tbaa !78
  br label %.thread104

end_hunk_0
