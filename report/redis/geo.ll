inline.NumInlined: 21
inline.NumDeleted: 2
begin_hunk_0_@extractDistanceOrReply:bb.a
bb.l:                                             ; preds = %extractUnitOrReply.exit, %bb.k, %bb.j, %bb.a, %bb.c
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %extractUnitOrReply.exit ], [ 0, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @extractBoxOrReply(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = load ptr, ptr %1, align 8, !tbaa !31
  %i.d = call i32 @getDoubleFromObjectOrReply(ptr noundef %0, ptr noundef %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8) #13
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = call i32 @getDoubleFromObjectOrReply(ptr noundef %0, ptr noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.9) #13
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.h = load double, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.i = fcmp olt double %i.h, 0.000000e+00
  %i.j = load double, ptr %i.b, align 8           ; 2 uses
  %i.k = fcmp olt double %i.j, 0.000000e+00
  %or.cond = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.10) #13
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %.not22 = icmp eq ptr %4, null
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store double %i.h, ptr %4, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not23 = icmp eq ptr %3, null
  br i1 %.not23, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store double %i.j, ptr %3, align 8, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 4 uses
  %i.p = call i32 @strcasecmp(ptr noundef %i.o, ptr noundef nonnull @.str.1) #14
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = call i32 @strcasecmp(ptr noundef %i.o, ptr noundef nonnull @.str.2) #14
  %.not7.i = icmp eq i32 %i.q, 0
  br i1 %.not7.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = call i32 @strcasecmp(ptr noundef %i.o, ptr noundef nonnull @.str.3) #14
  %.not8.i = icmp eq i32 %i.r, 0
  br i1 %.not8.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = call i32 @strcasecmp(ptr noundef %i.o, ptr noundef nonnull @.str.4) #14
  %.not9.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i, label %bb.m, label %extractUnitOrReply.exit

extractUnitOrReply.exit:                          ; preds = %bb.l
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  br label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.l
  %.0.i.ph = phi double [ 1.609340e+03, %bb.l ], [ 1.000000e+00, %bb.i ], [ 1.000000e+03, %bb.j ], [ 3.048000e-01, %bb.k ]
  %.not24 = icmp eq ptr %2, null
  br i1 %.not24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store double %.0.i.ph, ptr %2, align 8, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %extractUnitOrReply.exit, %bb.n, %bb.m, %bb.a, %bb.b, %bb.d
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %bb.d ], [ -1, %bb.b ], [ -1, %extractUnitOrReply.exit ], [ 0, %bb.n ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @addReplyDoubleDistance(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call i32 @fixedpoint_d2string(ptr noundef nonnull %i.a, i64 noundef 128, double noundef %1, i32 noundef 4) #13
  %i.c = sext i32 %i.b to i64
  call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare i32 @fixedpoint_d2string(ptr noundef, i64 noundef, double noundef, i32 noundef) local_unnamed_addr #4

declare void @addReplyBulkCBuffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @geoWithinShape(ptr noundef readonly captures(none) %0, double noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = fptoui double %1 to i64
  %i.b = tail call i32 @geohashDecodeToLongLatWGS84(i64 %i.a, i8 26, ptr noundef %2) #13
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !35
  switch i32 %i.c, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !20
  %i.h = load double, ptr %2, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load double, ptr %i.k, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !38
  %i.o = fmul double %i.l, %i.n
  %i.p = tail call i32 @geohashGetDistanceIfInRadiusWGS84(double noundef %i.e, double noundef %i.g, double noundef %i.h, double noundef %i.j, double noundef %i.o, ptr noundef %3) #13
  %.not22 = icmp eq i32 %i.p, 0
  br i1 %.not22, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load double, ptr %i.r, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !38 ; 2 uses
  %i.v = fmul double %i.s, %i.u
  %i.w = load double, ptr %i.q, align 8, !tbaa !37
  %i.x = fmul double %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !20
  %i.ac = load double, ptr %2, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !20
  %i.af = tail call i32 @geohashGetDistanceIfInRectangle(double noundef %i.v, double noundef %i.x, double noundef %i.z, double noundef %i.ab, double noundef %i.ac, double noundef %i.ae, ptr noundef %3) #13
  %.not21 = icmp eq i32 %i.af, 0
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.d ]
  ret i32 %.0
}

declare i32 @geohashGetDistanceIfInRadiusWGS84(double noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

declare i32 @geohashGetDistanceIfInRectangle(double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @geoGetPointsInRange(ptr noundef readonly captures(none) %0, double noundef %1, double noundef %2, ptr noundef readonly captures(none) %3, ptr noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.zrangespec, align 8         ; 10 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca [2 x double], align 16            ; 6 uses
  %i.f = alloca double, align 8                   ; 6 uses
  %i.g = alloca [2 x double], align 16            ; 6 uses
  %i.h = alloca double, align 8                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store double %1, ptr %6, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %2, ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 1, ptr %i.k, align 4, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %i.n = load i64, ptr %0, align 8
  %7 = trunc i64 %i.n to i32
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 15
  switch i32 %9, label %.loopexit91 [
    i32 11, label %bb.b
    i32 7, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 0, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i64 0, ptr %i.d, align 8, !tbaa !44
  %i.q = call ptr @zzlFirstInRange(ptr noundef %i.p, ptr noundef nonnull %6) #13 ; 3 uses
  store ptr %i.q, ptr %i.a, align 8, !tbaa !46
  %.not64 = icmp eq ptr %i.q, null
  br i1 %.not64, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.r = call ptr @lpNext(ptr noundef %i.p, ptr noundef nonnull %i.q) #13
  store ptr %i.r, ptr %i.b, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = add i64 %5, -1
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !20
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.w = call double @zzlGetScore(ptr noundef %i.v) #13 ; 3 uses
  %i.x = call i32 @zslValueLteMax(double noundef %i.w, ptr noundef nonnull %6) #13
  %.not62 = icmp eq i32 %i.x, 0
  br i1 %.not62, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.z = call ptr @lpGetValue(ptr noundef %i.y, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #13 ; 2 uses
  %i.aa = call i32 @geoWithinShape(ptr noundef %3, double noundef %i.w, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %._crit_edge93

._crit_edge93:                                    ; preds = %bb.d
  %.pre94 = load i64, ptr %i.l, align 8, !tbaa !13
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.z, null
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !44
  %i.ae = call ptr @sdsfromlonglong(i64 noundef %i.ad) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = load i32, ptr %i.c, align 4, !tbaa !9
  %i.ag = zext i32 %i.af to i64
  %i.ah = call ptr @sdsnewlen(ptr noundef nonnull %i.z, i64 noundef %i.ag) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = phi ptr [ %i.ae, %bb.f ], [ %i.ah, %bb.g ]
  %i.aj = load double, ptr %i.f, align 8, !tbaa !20
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !13  ; 4 uses
  %i.al = load i64, ptr %i.s, align 8, !tbaa !18
  %i.am = icmp eq i64 %i.ak, %i.al
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !19  ; 2 uses
  br i1 %i.am, label %bb.i, label %geoArrayAppend.exit

bb.i:                                             ; preds = %bb.h
  %i.an = icmp eq i64 %i.ak, 0
  %i.ao = shl i64 %i.ak, 1
  %spec.select.i = select i1 %i.an, i64 8, i64 %i.ao ; 2 uses
  store i64 %spec.select.i, ptr %i.s, align 8, !tbaa !18
  %i.ap = mul i64 %spec.select.i, 40
  %i.aq = call ptr @zrealloc(ptr noundef %.pre.i, i64 noundef %i.ap) #12 ; 2 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !19
  %.pre22.i = load i64, ptr %i.l, align 8, !tbaa !13
  br label %geoArrayAppend.exit

geoArrayAppend.exit:                              ; preds = %bb.h, %bb.i
  %i.ar = phi i64 [ %.pre22.i, %bb.i ], [ %i.ak, %bb.h ] ; 2 uses
  %i.as = phi ptr [ %i.aq, %bb.i ], [ %.pre.i, %bb.h ]
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ar ; 5 uses
  %i.au = load double, ptr %i.e, align 16, !tbaa !20
  store double %i.au, ptr %i.at, align 8, !tbaa !22
  %i.av = load double, ptr %i.t, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store double %i.av, ptr %i.aw, align 8, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store double %i.aj, ptr %i.ax, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr %i.ai, ptr %i.ay, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store double %i.w, ptr %i.az, align 8, !tbaa !28
  %i.ba = add i64 %i.ar, 1                        ; 2 uses
  store i64 %i.ba, ptr %i.l, align 8, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge93, %geoArrayAppend.exit
  %i.bb = phi i64 [ %.pre94, %._crit_edge93 ], [ %i.ba, %geoArrayAppend.exit ]
  %.not89 = icmp ult i64 %i.u, %i.bb
  br i1 %.not89, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.c, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  call void @zzlNext(ptr noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.bc = load ptr, ptr %i.a, align 8
  %.not61 = icmp eq ptr %i.bc, null
  br i1 %.not61, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.k, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit91

bb.l:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.bh = call ptr @zslNthInRange(ptr noundef %i.bg, ptr noundef nonnull %6, i64 noundef 0, ptr noundef null) #13 ; 2 uses
  %.not60 = icmp eq ptr %i.bh, null
  br i1 %.not60, label %.critedge69, label %.preheader90

.preheader90:                                     ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bk = add i64 %5, -1
  br label %bb.m

bb.m:                                             ; preds = %.preheader90, %bb.r
  %.04792 = phi ptr [ %i.bh, %.preheader90 ], [ %i.cn, %bb.r ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !20
  %i.bl = load double, ptr %.04792, align 8, !tbaa !20
  %i.bm = call i32 @zslValueLteMax(double noundef %i.bl, ptr noundef nonnull %6) #13
  %.not58 = icmp eq i32 %i.bm, 0
  br i1 %.not58, label %.thread79, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = load double, ptr %.04792, align 8, !tbaa !20
  %i.bo = call i32 @geoWithinShape(ptr noundef %3, double noundef %i.bn, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n
  %.pre = load i64, ptr %i.l, align 8, !tbaa !13
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bq = call ptr @zslGetNodeElement(ptr noundef nonnull %.04792) #13
  %i.br = load double, ptr %i.h, align 8, !tbaa !20
  %i.bs = load double, ptr %.04792, align 8, !tbaa !20
  %i.bt = call ptr @sdsdup(ptr noundef %i.bq) #13
  %i.bu = load i64, ptr %i.l, align 8, !tbaa !13  ; 4 uses
  %i.bv = load i64, ptr %i.bi, align 8, !tbaa !18
  %i.bw = icmp eq i64 %i.bu, %i.bv
  %.pre.i71 = load ptr, ptr %4, align 8, !tbaa !19 ; 2 uses
  br i1 %i.bw, label %bb.p, label %geoArrayAppend.exit74

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp eq i64 %i.bu, 0
  %i.by = shl i64 %i.bu, 1
  %spec.select.i72 = select i1 %i.bx, i64 8, i64 %i.by ; 2 uses
  store i64 %spec.select.i72, ptr %i.bi, align 8, !tbaa !18
  %i.bz = mul i64 %spec.select.i72, 40
  %i.ca = call ptr @zrealloc(ptr noundef %.pre.i71, i64 noundef %i.bz) #12 ; 2 uses
  store ptr %i.ca, ptr %4, align 8, !tbaa !19
  %.pre22.i73 = load i64, ptr %i.l, align 8, !tbaa !13
  br label %geoArrayAppend.exit74

geoArrayAppend.exit74:                            ; preds = %bb.o, %bb.p
  %i.cb = phi i64 [ %.pre22.i73, %bb.p ], [ %i.bu, %bb.o ] ; 2 uses
  %i.cc = phi ptr [ %i.ca, %bb.p ], [ %.pre.i71, %bb.o ]
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.cc, i64 %i.cb ; 5 uses
  %i.ce = load double, ptr %i.g, align 16, !tbaa !20
  store double %i.ce, ptr %i.cd, align 8, !tbaa !22
  %i.cf = load double, ptr %i.bj, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store double %i.cf, ptr %i.cg, align 8, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store double %i.br, ptr %i.ch, align 8, !tbaa !26
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store ptr %i.bt, ptr %i.ci, align 8, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store double %i.bs, ptr %i.cj, align 8, !tbaa !28
  %i.ck = add i64 %i.cb, 1                        ; 2 uses
  store i64 %i.ck, ptr %i.l, align 8, !tbaa !13
  br label %bb.q

end_hunk_0
