inline.NumInlined: 21
inline.NumDeleted: 2
begin_hunk_0_@extractDistanceOrReply:bb.a

bb.i:                                             ; preds = %bb.h
  %i.m = call i32 @strcasecmp(ptr noundef %i.i, ptr noundef nonnull @.str.4) #14
  %.not9.i = icmp eq i32 %i.m, 0
  br i1 %.not9.i, label %bb.j, label %extractUnitOrReply.exit

extractUnitOrReply.exit:                          ; preds = %bb.i
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  br label %bb.l

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.i
  %.0.i.ph = phi double [ 1.609340e+03, %bb.i ], [ 1.000000e+00, %bb.f ], [ 1.000000e+03, %bb.g ], [ 3.048000e-01, %bb.h ]
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store double %.0.i.ph, ptr %2, align 8, !tbaa !20
  br label %bb.l

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
  %i.a = alloca ptr, align 8                      ; 8 uses
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
  %i.o = trunc i64 %i.n to i32
  %i.p = lshr i32 %i.o, 4
  %i.q = and i32 %i.p, 15
  switch i32 %i.q, label %.loopexit91 [
    i32 11, label %bb.b
    i32 7, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 0, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i64 0, ptr %i.d, align 8, !tbaa !44
  %i.t = call ptr @zzlFirstInRange(ptr noundef %i.s, ptr noundef nonnull %6) #13 ; 3 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !46
  %.not64 = icmp eq ptr %i.t, null
  br i1 %.not64, label %.critedge, label %7

7:                                                ; preds = %bb.b
  %8 = call ptr @lpNext(ptr noundef %i.s, ptr noundef nonnull %i.t) #13
  store ptr %8, ptr %i.b, align 8, !tbaa !46
  %.old = load ptr, ptr %i.a, align 8, !tbaa !46
  %.not61.old = icmp eq ptr %.old, null
  br i1 %.not61.old, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %7
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = add i64 %5, -1
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !20
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.y = call double @zzlGetScore(ptr noundef %i.x) #13 ; 3 uses
  %i.z = call i32 @zslValueLteMax(double noundef %i.y, ptr noundef nonnull %6) #13
  %.not62 = icmp eq i32 %i.z, 0
  br i1 %.not62, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.ab = call ptr @lpGetValue(ptr noundef %i.aa, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #13 ; 2 uses
  %i.ac = call i32 @geoWithinShape(ptr noundef %3, double noundef %i.y, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %._crit_edge93

._crit_edge93:                                    ; preds = %bb.d
  %.pre94 = load i64, ptr %i.l, align 8, !tbaa !13
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp eq ptr %i.ab, null
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.d, align 8, !tbaa !44
  %i.ag = call ptr @sdsfromlonglong(i64 noundef %i.af) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !9
  %i.ai = zext i32 %i.ah to i64
  %i.aj = call ptr @sdsnewlen(ptr noundef nonnull %i.ab, i64 noundef %i.ai) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = phi ptr [ %i.ag, %bb.f ], [ %i.aj, %bb.g ]
  %i.al = load double, ptr %i.f, align 8, !tbaa !20
  %i.am = load i64, ptr %i.l, align 8, !tbaa !13  ; 4 uses
  %i.an = load i64, ptr %i.u, align 8, !tbaa !18
  %i.ao = icmp eq i64 %i.am, %i.an
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !19  ; 2 uses
  br i1 %i.ao, label %bb.i, label %geoArrayAppend.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp eq i64 %i.am, 0
  %i.aq = shl i64 %i.am, 1
  %spec.select.i = select i1 %i.ap, i64 8, i64 %i.aq ; 2 uses
  store i64 %spec.select.i, ptr %i.u, align 8, !tbaa !18
  %i.ar = mul i64 %spec.select.i, 40
  %i.as = call ptr @zrealloc(ptr noundef %.pre.i, i64 noundef %i.ar) #12 ; 2 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !19
  %.pre22.i = load i64, ptr %i.l, align 8, !tbaa !13
  br label %geoArrayAppend.exit

geoArrayAppend.exit:                              ; preds = %bb.h, %bb.i
  %i.at = phi i64 [ %.pre22.i, %bb.i ], [ %i.am, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.as, %bb.i ], [ %.pre.i, %bb.h ]
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.au, i64 %i.at ; 5 uses
  %i.aw = load double, ptr %i.e, align 16, !tbaa !20
  store double %i.aw, ptr %i.av, align 8, !tbaa !22
  %i.ax = load double, ptr %i.v, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store double %i.ax, ptr %i.ay, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store double %i.al, ptr %i.az, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr %i.ak, ptr %i.ba, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store double %i.y, ptr %i.bb, align 8, !tbaa !28
  %i.bc = add i64 %i.at, 1                        ; 2 uses
  store i64 %i.bc, ptr %i.l, align 8, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge93, %geoArrayAppend.exit
  %i.bd = phi i64 [ %.pre94, %._crit_edge93 ], [ %i.bc, %geoArrayAppend.exit ]
  %.not89 = icmp ult i64 %i.w, %i.bd
  br i1 %.not89, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.c, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  call void @zzlNext(ptr noundef %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.be = load ptr, ptr %i.a, align 8
  %.not61 = icmp eq ptr %i.be, null
  br i1 %.not61, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.k, %.thread, %7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit91

bb.l:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.bj = call ptr @zslNthInRange(ptr noundef %i.bi, ptr noundef nonnull %6, i64 noundef 0, ptr noundef null) #13 ; 2 uses
  %.not60 = icmp eq ptr %i.bj, null
  br i1 %.not60, label %.critedge69, label %.preheader90

.preheader90:                                     ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bm = add i64 %5, -1
  br label %bb.m

bb.m:                                             ; preds = %.preheader90, %bb.r
  %.04792 = phi ptr [ %i.bj, %.preheader90 ], [ %i.cp, %bb.r ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !20
  %i.bn = load double, ptr %.04792, align 8, !tbaa !20
  %i.bo = call i32 @zslValueLteMax(double noundef %i.bn, ptr noundef nonnull %6) #13
  %.not58 = icmp eq i32 %i.bo, 0
  br i1 %.not58, label %.thread79, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = load double, ptr %.04792, align 8, !tbaa !20
  %i.bq = call i32 @geoWithinShape(ptr noundef %3, double noundef %i.bp, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n
  %.pre = load i64, ptr %i.l, align 8, !tbaa !13
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bs = call ptr @zslGetNodeElement(ptr noundef nonnull %.04792) #13
  %i.bt = load double, ptr %i.h, align 8, !tbaa !20
  %i.bu = load double, ptr %.04792, align 8, !tbaa !20
  %i.bv = call ptr @sdsdup(ptr noundef %i.bs) #13
  %i.bw = load i64, ptr %i.l, align 8, !tbaa !13  ; 4 uses
  %i.bx = load i64, ptr %i.bk, align 8, !tbaa !18
  %i.by = icmp eq i64 %i.bw, %i.bx
  %.pre.i71 = load ptr, ptr %4, align 8, !tbaa !19 ; 2 uses
  br i1 %i.by, label %bb.p, label %geoArrayAppend.exit74

bb.p:                                             ; preds = %bb.o
  %i.bz = icmp eq i64 %i.bw, 0
  %i.ca = shl i64 %i.bw, 1
  %spec.select.i72 = select i1 %i.bz, i64 8, i64 %i.ca ; 2 uses
  store i64 %spec.select.i72, ptr %i.bk, align 8, !tbaa !18
  %i.cb = mul i64 %spec.select.i72, 40
  %i.cc = call ptr @zrealloc(ptr noundef %.pre.i71, i64 noundef %i.cb) #12 ; 2 uses
  store ptr %i.cc, ptr %4, align 8, !tbaa !19
  %.pre22.i73 = load i64, ptr %i.l, align 8, !tbaa !13
  br label %geoArrayAppend.exit74

geoArrayAppend.exit74:                            ; preds = %bb.o, %bb.p
  %i.cd = phi i64 [ %.pre22.i73, %bb.p ], [ %i.bw, %bb.o ] ; 2 uses
  %i.ce = phi ptr [ %i.cc, %bb.p ], [ %.pre.i71, %bb.o ]
  %i.cf = getelementptr inbounds nuw [40 x i8], ptr %i.ce, i64 %i.cd ; 5 uses
  %i.cg = load double, ptr %i.g, align 16, !tbaa !20
  store double %i.cg, ptr %i.cf, align 8, !tbaa !22
  %i.ch = load double, ptr %i.bl, align 8, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store double %i.ch, ptr %i.ci, align 8, !tbaa !25
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store double %i.bt, ptr %i.cj, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store ptr %i.bv, ptr %i.ck, align 8, !tbaa !27
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store double %i.bu, ptr %i.cl, align 8, !tbaa !28
  %i.cm = add i64 %i.cd, 1                        ; 2 uses
  store i64 %i.cm, ptr %i.l, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %geoArrayAppend.exit74
  %i.cn = phi i64 [ %.pre, %._crit_edge ], [ %i.cm, %geoArrayAppend.exit74 ]
  %.not85 = icmp ult i64 %i.bm, %i.cn
  br i1 %.not85, label %.thread79, label %bb.r

.thread79:                                        ; preds = %bb.m, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %.loopexit91

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %.04792, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !51 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  %.not = icmp eq ptr %i.cp, null
  br i1 %.not, label %.loopexit91, label %bb.m

.loopexit91:                                      ; preds = %bb.r, %.thread79, %.loopexit, %bb.a
  %i.cq = load i64, ptr %i.l, align 8, !tbaa !13
  %i.cr = sub i64 %i.cq, %i.m
  %i.cs = trunc i64 %i.cr to i32
  br label %.critedge69

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.critedge69

.critedge69:                                      ; preds = %bb.l, %.critedge, %.loopexit91
  %.2 = phi i32 [ %i.cs, %.loopexit91 ], [ 0, %bb.l ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret i32 %.2
}

declare ptr @zzlFirstInRange(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @lpNext(ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @zzlGetScore(ptr noundef) local_unnamed_addr #4

declare i32 @zslValueLteMax(double noundef, ptr noundef) local_unnamed_addr #4

declare ptr @lpGetValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @sdsfromlonglong(i64 noundef) local_unnamed_addr #4

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @zzlNext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @zslNthInRange(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @zslGetNodeElement(ptr noundef) local_unnamed_addr #4

declare ptr @sdsdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @scoresOfGeoHashBox(i64 %0, i8 %1, ptr noundef writeonly captures(none) initializes((0, 8)) %2, ptr noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @geohashAlign52Bits(i64 %0, i8 %1) #13
  store i64 %i.a, ptr %2, align 8, !tbaa !54
  %i.b = add i64 %0, 1
  %i.c = tail call i64 @geohashAlign52Bits(i64 %i.b, i8 %1) #13
  store i64 %i.c, ptr %3, align 8, !tbaa !54
  ret void
}

declare i64 @geohashAlign52Bits(i64, i8) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @membersOfGeoHashBox(ptr noundef readonly captures(none) %0, i64 %1, i8 %2, ptr noundef captures(none) %3, ptr noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @geohashAlign52Bits(i64 %1, i8 %2) #13
  %i.b = add i64 %1, 1
  %i.c = tail call i64 @geohashAlign52Bits(i64 %i.b, i8 %2) #13
  %i.d = uitofp i64 %i.a to double
  %i.e = uitofp i64 %i.c to double
  %i.f = tail call i32 @geoGetPointsInRange(ptr noundef %0, double noundef %i.d, double noundef %i.e, ptr noundef %4, ptr noundef %3, i64 noundef %5)
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define dso_local i32 @membersOfAllNeighbors(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [9 x %struct.GeoHashBits], align 16 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !55
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !55
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !55
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !55
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !55
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !55
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !55
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !55
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !55
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = add i64 %4, -1
  br label %bb.b

end_hunk_0
begin_hunk_1_@geoaddCommand:bb.a
  %.1 = phi i32 [ %.095, %bb.d ], [ %.095, %bb.b ], [ 1, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.b

.thread.split.loop.exit141:                       ; preds = %bb.d
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread

.thread:                                          ; preds = %bb.e, %.thread.split.loop.exit141
  %.066.lcssa.ph = phi i32 [ %i.n, %.thread.split.loop.exit141 ], [ %i.c, %bb.e ] ; 2 uses
  %.062.lcssa.ph = phi i32 [ %.06294, %.thread.split.loop.exit141 ], [ %.163, %bb.e ]
  %.0.lcssa.ph = phi i32 [ %.095, %.thread.split.loop.exit141 ], [ %.1, %bb.e ]
  %i.o = icmp ne i32 %.0.lcssa.ph, 0
  %i.p = icmp ne i32 %.062.lcssa.ph, 0
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  %i.r = sub nsw i32 %i.c, %.066.lcssa.ph         ; 2 uses
  %i.s = srem i32 %i.r, 3
  %.not78 = icmp ne i32 %i.s, 0
  %brmerge = select i1 %.not78, i1 true, i1 %i.q
  br i1 %brmerge, label %bb.f, label %.lr.ph105

.thread.thread:                                   ; preds = %bb.a
  %i.t = add nsw i32 %i.c, -2
  %.nonneg = sub i32 2, %i.c
  %i.u = urem i32 %.nonneg, 3
  %.not78132 = icmp eq i32 %i.u, 0
  br i1 %.not78132, label %.lr.ph105, label %bb.f

bb.f:                                             ; preds = %.thread, %.thread.thread
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !81
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.v) #13
  br label %bb.o

.lr.ph105:                                        ; preds = %.thread, %.thread.thread
  %.066.lcssa133138 = phi i32 [ %.066.lcssa.ph, %.thread ], [ 2, %.thread.thread ] ; 4 uses
  %i.w = phi i32 [ %i.r, %.thread ], [ %i.t, %.thread.thread ] ; 2 uses
  %i.x = sdiv i32 %i.w, 3                         ; 2 uses
  %i.y = shl nsw i32 %i.x, 1
  %i.z = add nsw i32 %i.y, %.066.lcssa133138      ; 4 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  %i.ac = tail call noalias ptr @zcalloc(i64 noundef %i.ab) #11 ; 7 uses
  %i.ad = tail call ptr @createRawStringObject(ptr noundef nonnull @.str.26, i64 noundef 4) #13
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %umax = tail call i32 @llvm.umax.i32(i32 %.066.lcssa133138, i32 2)
  %wide.trip.count116 = zext i32 %umax to i64
  br label %bb.g

.preheader:                                       ; preds = %bb.g
  %i.af = icmp sgt i32 %i.w, 2
  br i1 %i.af, label %.lr.ph107, label %._crit_edge

.lr.ph107:                                        ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ah = zext i32 %.066.lcssa133138 to i64       ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = add nuw nsw i32 %.066.lcssa133138, 1
  %i.al = zext i32 %i.ak to i64
  %wide.trip.count121 = zext nneg i32 %i.x to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ah
  %invariant.gep145 = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.al
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph105, %bb.g
  %indvars.iv113 = phi i64 [ 1, %.lr.ph105 ], [ %indvars.iv.next114, %bb.g ] ; 3 uses
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !80
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv113
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv113
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !31
  tail call void @incrRefCount(ptr noundef %i.ao) #13
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %.preheader, label %bb.g, !llvm.loop !83

bb.h:                                             ; preds = %.lr.ph107, %bb.n
  %indvars.iv118 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next119, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !80
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ah
  %i.as = mul nuw nsw i64 %indvars.iv118, 3       ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31
  %i.av = call i32 @getDoubleFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.au, ptr noundef nonnull %i.a, ptr noundef null) #13
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %bb.i, label %extractLongLatOrReply.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = call i32 @getDoubleFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.ax, ptr noundef nonnull %i.ai, ptr noundef null) #13
  %.not.1.i = icmp eq i32 %i.ay, 0
  br i1 %.not.1.i, label %bb.j, label %extractLongLatOrReply.exit

bb.j:                                             ; preds = %bb.i
  %i.az = load double, ptr %i.a, align 16, !tbaa !20 ; 3 uses
  %i.ba = call double @llvm.fabs.f64(double %i.az)
  %or.cond.i = fcmp ogt double %i.ba, 1.800000e+02
  %.pre.i = load double, ptr %i.ai, align 8, !tbaa !20 ; 3 uses
  %i.bb = call double @llvm.fabs.f64(double %.pre.i)
  %or.cond17.i = fcmp ogt double %i.bb, f0x40554345B1A57F00
  %or.cond20.i = select i1 %or.cond.i, i1 true, i1 %or.cond17.i
  br i1 %or.cond20.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str, double noundef %i.az, double noundef %.pre.i) #13
  br label %extractLongLatOrReply.exit

extractLongLatOrReply.exit:                       ; preds = %bb.h, %bb.i, %bb.k
  %i.bc = icmp sgt i32 %i.z, 0
  br i1 %i.bc, label %.lr.ph109.preheader, label %.thread89

.lr.ph109.preheader:                              ; preds = %extractLongLatOrReply.exit
  %wide.trip.count126 = zext nneg i32 %i.z to i64
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %bb.m
  %indvars.iv123 = phi i64 [ 0, %.lr.ph109.preheader ], [ %indvars.iv.next124, %bb.m ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv123
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31 ; 2 uses
  %.not80 = icmp eq ptr %i.be, null
  br i1 %.not80, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph109
  call void @decrRefCount(ptr noundef nonnull %i.be) #13
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph109, %bb.l
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.thread89, label %.lr.ph109, !llvm.loop !84

.thread89:                                        ; preds = %bb.m, %extractLongLatOrReply.exit
  call void @zfree(ptr noundef nonnull %i.ac) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.bf = call i32 @geohashEncodeWGS84(double noundef %i.az, double noundef %.pre.i, i8 noundef zeroext 26, ptr noundef nonnull %1) #13 ; 0 uses
  %i.bg = load i64, ptr %1, align 8
  %i.bh = load i8, ptr %i.aj, align 8
  %i.bi = call i64 @geohashAlign52Bits(i64 %i.bg, i8 %i.bh) #13
  %i.bj = call ptr @createStringObjectFromLongLongWithSds(i64 noundef %i.bi) #13
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !80
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.as
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.ah
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31 ; 2 uses
  %i.bp = shl nuw nsw i64 %indvars.iv118, 1       ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bp
  store ptr %i.bj, ptr %gep, align 8, !tbaa !31
  %gep146 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep145, i64 %i.bp
  store ptr %i.bo, ptr %gep146, align 8, !tbaa !31
  call void @incrRefCount(ptr noundef %i.bo) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %bb.h, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.n, %.preheader
  call void @replaceClientCommandVector(ptr noundef nonnull %0, i32 noundef %i.z, ptr noundef nonnull %i.ac) #13
  call void @zaddCommand(ptr noundef nonnull %0) #13
  br label %bb.o

bb.o:                                             ; preds = %.thread89, %._crit_edge, %bb.f
  ret void
}

declare void @addReplyErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias ptr @zcalloc(i64 noundef) local_unnamed_addr #2

declare ptr @createRawStringObject(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @incrRefCount(ptr noundef) local_unnamed_addr #4

declare void @decrRefCount(ptr noundef) local_unnamed_addr #4

declare i32 @geohashEncodeWGS84(double noundef, double noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare ptr @createStringObjectFromLongLongWithSds(i64 noundef) local_unnamed_addr #4

declare void @replaceClientCommandVector(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @zaddCommand(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @georadiusGeneric(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %3 = alloca %struct.GeoShape, align 8           ; 22 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %4 = alloca %struct.GeoHashRadius, align 8      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = tail call ptr @lookupKeyRead(ptr noundef %i.f, ptr noundef %i.k) #13 ; 7 uses
  %i.m = tail call i32 @checkType(ptr noundef %0, ptr noundef %i.l, i32 noundef 3) #13
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.cv

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %i.n = and i32 %2, 1
  %.not365 = icmp eq i32 %i.n, 0
  br i1 %.not365, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 8, !tbaa !35
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !80   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.s = call i32 @getDoubleFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef nonnull %i.q, ptr noundef null) #13
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.d, label %extractLongLatOrReply.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = call i32 @getDoubleFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.u, ptr noundef nonnull %i.v, ptr noundef null) #13
  %.not.1.i = icmp eq i32 %i.w, 0
  br i1 %.not.1.i, label %bb.e, label %extractLongLatOrReply.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = load double, ptr %i.q, align 8, !tbaa !20 ; 2 uses
  %i.y = call double @llvm.fabs.f64(double %i.x)
  %or.cond.i = fcmp ogt double %i.y, 1.800000e+02
  %.pre.i = load double, ptr %i.v, align 8, !tbaa !20 ; 2 uses
  %i.z = call double @llvm.fabs.f64(double %.pre.i)
  %or.cond17.i = fcmp ogt double %i.z, f0x40554345B1A57F00
  %or.cond20.i = select i1 %or.cond.i, i1 true, i1 %or.cond17.i
  br i1 %or.cond20.i, label %bb.f, label %extractLongLatOrReply.exit

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str, double noundef %i.x, double noundef %.pre.i) #13
  br label %extractLongLatOrReply.exit.thread

extractLongLatOrReply.exit:                       ; preds = %bb.e
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ae = call i32 @extractDistanceOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad)
  %.not370 = icmp eq i32 %i.ae, 0
  br i1 %.not370, label %bb.o, label %extractLongLatOrReply.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.af = and i32 %2, 2
  %i.ag = icmp eq i32 %i.af, 0                    ; 2 uses
  %i.ah = icmp ne ptr %i.l, null
  %or.cond = or i1 %i.ag, %i.ah
  br i1 %or.cond, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  br i1 %i.ag, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %3, align 8, !tbaa !35
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33
  %i.an = call i32 @zsetScore(ptr noundef %i.l, ptr noundef %i.am, ptr noundef nonnull %i.b) #13
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %longLatFromMember.exit.thread, label %longLatFromMember.exit

longLatFromMember.exit.thread:                    ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.critedge

longLatFromMember.exit:                           ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load double, ptr %i.b, align 8, !tbaa !20
  %i.ar = fptoui double %i.aq to i64
  %i.as = call i32 @geohashDecodeToLongLatWGS84(i64 %i.ar, i8 26, ptr noundef nonnull %i.ap) #13
  %.not.i415 = icmp eq i32 %i.as, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br i1 %.not.i415, label %.critedge, label %bb.j

.critedge:                                        ; preds = %longLatFromMember.exit.thread, %longLatFromMember.exit
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #13
  br label %extractLongLatOrReply.exit.thread

bb.j:                                             ; preds = %longLatFromMember.exit
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ax = call i32 @extractDistanceOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw)
  %.not369 = icmp eq i32 %i.ax, 0
  br i1 %.not369, label %bb.o, label %extractLongLatOrReply.exit.thread

bb.k:                                             ; preds = %bb.h
  %i.ay = and i32 %2, 8
  %.not367 = icmp eq i32 %i.ay, 0
  br i1 %.not367, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = and i32 %2, 16
  %.not368 = icmp eq i32 %i.az, 0
  br i1 %.not368, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #13
  br label %extractLongLatOrReply.exit.thread

bb.o:                                             ; preds = %bb.g, %bb.m, %bb.l, %bb.j, %extractLongLatOrReply.exit
  %.0287 = phi i32 [ 6, %extractLongLatOrReply.exit ], [ 5, %bb.j ], [ 3, %bb.m ], [ 2, %bb.l ], [ 5, %bb.g ] ; 4 uses
  %.0 = phi ptr [ null, %extractLongLatOrReply.exit ], [ null, %bb.j ], [ %i.bc, %bb.m ], [ null, %bb.l ], [ null, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 0, ptr %i.c, align 8, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !60 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, %.0287
  br i1 %i.bf, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %bb.o
  %i.bg = sub nsw i32 %i.be, %.0287               ; 9 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.bi = and i32 %2, 12
  %i.bj = icmp eq i32 %i.bi, 0                    ; 2 uses
  %i.bk = and i32 %2, 8
  %.not386 = icmp eq i32 %i.bk, 0                 ; 4 uses
  %i.bl = and i32 %2, 24
  %.not584 = icmp eq i32 %i.bl, 24
  %i.bm = icmp eq ptr %i.l, null
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bo = zext nneg i32 %.0287 to i64             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 72
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.ay
  %.1520 = phi ptr [ %.0, %.lr.ph ], [ %.3.ph, %bb.ay ] ; 13 uses
  %.0279519 = phi i32 [ 0, %.lr.ph ], [ %.2281.ph, %bb.ay ] ; 12 uses
  %.0293518 = phi i32 [ 0, %.lr.ph ], [ %.2295.ph, %bb.ay ] ; 14 uses
  %.0303517 = phi i32 [ 0, %.lr.ph ], [ %.2305.ph, %bb.ay ] ; 14 uses
  %.0308516 = phi i32 [ 0, %.lr.ph ], [ %.2310.ph, %bb.ay ] ; 14 uses
  %.0313515 = phi i32 [ 0, %.lr.ph ], [ %.2315.ph, %bb.ay ] ; 13 uses
  %.0318514 = phi i32 [ 0, %.lr.ph ], [ %.2320.ph, %bb.ay ] ; 13 uses
  %.0323513 = phi i32 [ 0, %.lr.ph ], [ %i.em, %bb.ay ] ; 18 uses
  %.0326512 = phi i32 [ 0, %.lr.ph ], [ %.2328.ph, %bb.ay ] ; 14 uses
  %.0331511 = phi i32 [ 0, %.lr.ph ], [ %.2333.ph, %bb.ay ] ; 14 uses
  %.0336510 = phi i32 [ 0, %.lr.ph ], [ %.2338.ph, %bb.ay ] ; 13 uses
  %.0341509 = phi i32 [ 0, %.lr.ph ], [ %.2343.ph, %bb.ay ] ; 14 uses
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !80  ; 4 uses
  %i.bt = add nsw i32 %.0323513, %.0287
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bu ; 5 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !33 ; 13 uses
  %i.bz = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.29) #14
  %.not371 = icmp eq i32 %i.bz, 0
  br i1 %.not371, label %bb.ay, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.30) #14
  %.not372 = icmp eq i32 %i.ca, 0
  br i1 %.not372, label %bb.ay, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.31) #14
  %.not373 = icmp eq i32 %i.cb, 0
  br i1 %.not373, label %bb.ay, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.32) #14
  %.not374 = icmp eq i32 %i.cc, 0
  br i1 %.not374, label %bb.ay, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.33) #14
end_hunk_1
begin_hunk_2_@georadiusGeneric:bb.a
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !33
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.46, ptr noundef %i.fd) #13
  br label %.thread445

bb.bd:                                            ; preds = %bb.bb
  %or.cond21 = select i1 %i.ez, i1 true, i1 %.4330
  %or.cond23 = select i1 %or.cond21, i1 true, i1 %.4345
  br i1 %or.cond23, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fe = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !31
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !33
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.47, ptr noundef %i.fh) #13
  br label %.thread445

bb.bf:                                            ; preds = %bb.bd
  %i.fi = icmp eq i32 %.4335, 0
  %i.fj = load i64, ptr %i.c, align 8
  %i.fk = icmp ne i64 %i.fj, 0                    ; 2 uses
  %or.cond25 = select i1 %i.fi, i1 true, i1 %i.fk
  br i1 %or.cond25, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.48) #13
  br label %.thread445

bb.bh:                                            ; preds = %bb.bf
  %i.fl = icmp eq ptr %i.l, null
  br i1 %i.fl, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  br i1 %.not395, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fm = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.fn = call i32 @dbDelete(ptr noundef %i.fm, ptr noundef nonnull %.5) #13
  %.not405 = icmp eq i32 %i.fn, 0
  br i1 %.not405, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fo = load ptr, ptr %i.e, align 8, !tbaa !86
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.fo, ptr noundef nonnull %.5, ptr noundef null, i32 noundef 1) #13
  %i.fp = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !88
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.49, ptr noundef nonnull %.5, i32 noundef %i.fr) #13
  %i.fs = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !92
  %i.ft = add nsw i64 %i.fs, 1
  store i64 %i.ft, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !92
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !113
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.fu) #13
  br label %.thread445

bb.bm:                                            ; preds = %bb.bi
  %i.fv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !114
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.fv) #13
  br label %.thread445

bb.bn:                                            ; preds = %bb.bh
  %i.fw = icmp ne i32 %.4335, 0                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @geohashCalculateAreasByShapeWGS84(ptr dead_on_unwind nonnull writable sret(%struct.GeoHashRadius) align 8 %4, ptr noundef nonnull %3) #13
  %i.fx = call noalias noundef dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #11 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i8 0, i64 24, i1 false)
  %i.fy = load i64, ptr %i.c, align 8
  %i.fz = select i1 %i.fw, i64 %i.fy, i64 0
  %i.ga = call i32 @membersOfAllNeighbors(ptr noundef nonnull %i.l, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %i.fx, i64 noundef %i.fz) ; 0 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !13 ; 6 uses
  %i.gd = icmp eq i64 %i.gc, 0
  %or.cond31 = and i1 %.not395, %i.gd
  br i1 %or.cond31, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ge = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !114
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ge) #13
  br label %.loopexit

bb.bp:                                            ; preds = %bb.bn
  %not. = xor i1 %i.fk, true
  %i.gf = icmp ne i32 %.4340, 0
  %or.cond27 = select i1 %not., i1 true, i1 %i.gf
  %or.cond29 = select i1 %or.cond27, i1 true, i1 %i.fw
  %spec.store.select32 = select i1 %or.cond29, i32 %.4340, i32 1
  %i.gg = load i64, ptr %i.c, align 8, !tbaa !44  ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  %i.gi = call i64 @llvm.smin.i64(i64 %i.gc, i64 %i.gg)
  %i.gj = select i1 %i.gh, i64 %i.gc, i64 %i.gi   ; 11 uses
  switch i32 %spec.store.select32, label %bb.bq [
    i32 0, label %bb.bu
    i32 1, label %bb.br
  ]

bb.bq:                                            ; preds = %bb.bp
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %.0299 = phi ptr [ @sort_gp_desc, %bb.bq ], [ @sort_gp_asc, %bb.bp ] ; 2 uses
  %i.gk = icmp eq i64 %i.gj, %i.gc
  %i.gl = load ptr, ptr %i.fx, align 8, !tbaa !19 ; 2 uses
  br i1 %i.gk, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @qsort(ptr noundef %i.gl, i64 noundef %i.gc, i64 noundef 40, ptr noundef nonnull %.0299) #13
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.gm = add nsw i64 %i.gj, -1
  call void @pqsort(ptr noundef %i.gl, i64 noundef %i.gc, i64 noundef 40, ptr noundef nonnull %.0299, i64 noundef 0, i64 noundef %i.gm) #13
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bb.bp
  br i1 %.not395, label %bb.bv, label %bb.cf

bb.bv:                                            ; preds = %bb.bu
  %.not402 = icmp eq i32 %.4312, 0                ; 2 uses
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.gj) #13
  %i.gn = icmp sgt i64 %i.gj, 0
  br i1 %i.gn, label %.lr.ph542, label %.loopexit

.lr.ph542:                                        ; preds = %bb.bv
  %spec.select = zext i1 %.4297 to i64
  %i.go = select i1 %.4297, i64 2, i64 1
  %.1301 = select i1 %.not402, i64 %spec.select, i64 %i.go
  %i.gp = zext i1 %.4307 to i64
  %.2302 = add nuw nsw i64 %.1301, %i.gp          ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.not404 = icmp eq i64 %.2302, 0
  %i.gr = add nuw nsw i64 %.2302, 1
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph542, %bb.ce
  %indvars.iv551 = phi i64 [ 0, %.lr.ph542 ], [ %indvars.iv.next552, %bb.ce ] ; 2 uses
  %i.gs = load ptr, ptr %i.fx, align 8, !tbaa !19
  %i.gt = getelementptr inbounds nuw [40 x i8], ptr %i.gs, i64 %indvars.iv551 ; 5 uses
  %i.gu = load double, ptr %i.gq, align 8, !tbaa !38
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 3 uses
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !26
  %i.gx = fdiv double %i.gw, %i.gu
  store double %i.gx, ptr %i.gv, align 8, !tbaa !26
  br i1 %.not404, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.gr) #13
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 32 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !27
  call void @addReplyBulkSds(ptr noundef %0, ptr noundef %i.gz) #13
  store ptr null, ptr %i.gy, align 8, !tbaa !27
  br i1 %.4297, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ha = load double, ptr %i.gv, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.hb = call i32 @fixedpoint_d2string(ptr noundef nonnull %i.a, i64 noundef 128, double noundef %i.ha, i32 noundef 4) #13
  %i.hc = sext i32 %i.hb to i64
  call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.hc) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  br i1 %.4307, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.he = load double, ptr %i.hd, align 8, !tbaa !28
  %i.hf = fptosi double %i.he to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.hf) #13
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  br i1 %.not402, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #13
  %i.hg = load double, ptr %i.gt, align 8, !tbaa !22
  call void @addReplyDouble(ptr noundef %0, double noundef %i.hg) #13
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !25
  call void @addReplyDouble(ptr noundef %0, double noundef %i.hi) #13
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %exitcond554.not = icmp eq i64 %indvars.iv.next552, %i.gj
  br i1 %exitcond554.not, label %.loopexit, label %bb.bw, !llvm.loop !115

bb.cf:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %.not397 = icmp eq i64 %i.gj, 0
  br i1 %.not397, label %._crit_edge536, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hj = call ptr @createZsetObject() #13        ; 2 uses
  store ptr %i.hj, ptr %i.d, align 8, !tbaa !31
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !33 ; 3 uses
  %i.hm = icmp sgt i64 %i.gj, 0
  br i1 %i.hm, label %.lr.ph535, label %.loopexit578

.lr.ph535:                                        ; preds = %bb.cg
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  br i1 %.4283, label %.lr.ph535.split.us, label %.lr.ph535.split

.lr.ph535.split.us:                               ; preds = %.lr.ph535, %bb.cm
  %indvars.iv547 = phi i64 [ %indvars.iv.next548, %bb.cm ], [ 0, %.lr.ph535 ] ; 2 uses
  %.0288533.us = phi i64 [ %i.it, %bb.cm ], [ 0, %.lr.ph535 ]
  %.0289532.us = phi i64 [ %spec.select414.us, %bb.cm ], [ 0, %.lr.ph535 ]
  %i.hp = load ptr, ptr %i.fx, align 8, !tbaa !19
  %i.hq = getelementptr inbounds nuw [40 x i8], ptr %i.hp, i64 %indvars.iv547 ; 3 uses
  %i.hr = load double, ptr %i.hn, align 8, !tbaa !38
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !26
  %i.hu = fdiv double %i.ht, %i.hr
  store double %i.hu, ptr %i.hs, align 8, !tbaa !26
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !28
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 32 ; 3 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !27 ; 6 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 -1
  %.val.i.us = load i8, ptr %i.hz, align 1, !tbaa !37 ; 2 uses
  %i.ia = and i8 %.val.i.us, 7
  switch i8 %i.ia, label %sdslen.exit.us [
    i8 0, label %bb.cl
    i8 1, label %bb.ck
    i8 2, label %bb.cj
    i8 3, label %bb.ci
    i8 4, label %bb.ch
  ]

bb.ch:                                            ; preds = %.lr.ph535.split.us
  %i.ib = getelementptr inbounds i8, ptr %i.hy, i64 -17
  %i.ic = load i64, ptr %i.ib, align 1, !tbaa !54
  br label %sdslen.exit.us

bb.ci:                                            ; preds = %.lr.ph535.split.us
  %i.id = getelementptr inbounds i8, ptr %i.hy, i64 -9
  %i.ie = load i32, ptr %i.id, align 1, !tbaa !9
  %i.if = zext i32 %i.ie to i64
  br label %sdslen.exit.us

bb.cj:                                            ; preds = %.lr.ph535.split.us
  %i.ig = getelementptr inbounds i8, ptr %i.hy, i64 -5
  %i.ih = load i16, ptr %i.ig, align 1, !tbaa !116
  %i.ii = zext i16 %i.ih to i64
  br label %sdslen.exit.us

bb.ck:                                            ; preds = %.lr.ph535.split.us
  %i.ij = getelementptr inbounds i8, ptr %i.hy, i64 -3
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !37
  %i.il = zext i8 %i.ik to i64
  br label %sdslen.exit.us

bb.cl:                                            ; preds = %.lr.ph535.split.us
  %i.im = lshr i8 %.val.i.us, 3
  %i.in = zext nneg i8 %i.im to i64
  br label %sdslen.exit.us

sdslen.exit.us:                                   ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %.lr.ph535.split.us
  %.0.i416.us = phi i64 [ %i.ic, %bb.ch ], [ %i.in, %bb.cl ], [ %i.il, %bb.ck ], [ %i.ii, %bb.cj ], [ %i.if, %bb.ci ], [ 0, %.lr.ph535.split.us ] ; 2 uses
  %i.io = load ptr, ptr %i.ho, align 8, !tbaa !47
  %i.ip = call ptr @zslInsert(ptr noundef %i.io, double noundef %i.hw, ptr noundef nonnull %i.hy) #13
  %i.iq = load ptr, ptr %i.hl, align 8, !tbaa !118
  %i.ir = call i32 @dictAdd(ptr noundef %i.iq, ptr noundef %i.ip, ptr noundef null) #13
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.cm, label %.split.us, !prof !119

bb.cm:                                            ; preds = %sdslen.exit.us
  %spec.select414.us = call i64 @llvm.umax.i64(i64 %.0289532.us, i64 %.0.i416.us) ; 2 uses
  %i.it = add i64 %.0.i416.us, %.0288533.us       ; 2 uses
  %i.iu = load ptr, ptr %i.hx, align 8, !tbaa !27
  call void @sdsfree(ptr noundef %i.iu) #13
  store ptr null, ptr %i.hx, align 8, !tbaa !27
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %exitcond550.not = icmp eq i64 %indvars.iv.next548, %i.gj
  br i1 %exitcond550.not, label %.loopexit578, label %.lr.ph535.split.us, !llvm.loop !120

.lr.ph535.split:                                  ; preds = %.lr.ph535, %bb.cs
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cs ], [ 0, %.lr.ph535 ] ; 2 uses
  %.0288533 = phi i64 [ %i.jx, %bb.cs ], [ 0, %.lr.ph535 ]
  %.0289532 = phi i64 [ %spec.select414, %bb.cs ], [ 0, %.lr.ph535 ]
  %i.iv = load ptr, ptr %i.fx, align 8, !tbaa !19
  %i.iw = getelementptr inbounds nuw [40 x i8], ptr %i.iv, i64 %indvars.iv ; 2 uses
  %i.ix = load double, ptr %i.hn, align 8, !tbaa !38
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 16 ; 2 uses
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !26
  %i.ja = fdiv double %i.iz, %i.ix                ; 2 uses
  store double %i.ja, ptr %i.iy, align 8, !tbaa !26
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 32 ; 3 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !27 ; 6 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 -1
  %.val.i = load i8, ptr %i.jd, align 1, !tbaa !37 ; 2 uses
  %i.je = and i8 %.val.i, 7
  switch i8 %i.je, label %sdslen.exit [
    i8 0, label %bb.cn
    i8 1, label %bb.co
    i8 2, label %bb.cp
    i8 3, label %bb.cq
    i8 4, label %bb.cr
  ]

bb.cn:                                            ; preds = %.lr.ph535.split
  %i.jf = lshr i8 %.val.i, 3
  %i.jg = zext nneg i8 %i.jf to i64
  br label %sdslen.exit

bb.co:                                            ; preds = %.lr.ph535.split
  %i.jh = getelementptr inbounds i8, ptr %i.jc, i64 -3
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !37
  %i.jj = zext i8 %i.ji to i64
  br label %sdslen.exit

bb.cp:                                            ; preds = %.lr.ph535.split
  %i.jk = getelementptr inbounds i8, ptr %i.jc, i64 -5
  %i.jl = load i16, ptr %i.jk, align 1, !tbaa !116
  %i.jm = zext i16 %i.jl to i64
  br label %sdslen.exit

bb.cq:                                            ; preds = %.lr.ph535.split
  %i.jn = getelementptr inbounds i8, ptr %i.jc, i64 -9
  %i.jo = load i32, ptr %i.jn, align 1, !tbaa !9
  %i.jp = zext i32 %i.jo to i64
  br label %sdslen.exit

bb.cr:                                            ; preds = %.lr.ph535.split
  %i.jq = getelementptr inbounds i8, ptr %i.jc, i64 -17
  %i.jr = load i64, ptr %i.jq, align 1, !tbaa !54
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph535.split, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr
  %.0.i416 = phi i64 [ %i.jr, %bb.cr ], [ %i.jg, %bb.cn ], [ %i.jj, %bb.co ], [ %i.jm, %bb.cp ], [ %i.jp, %bb.cq ], [ 0, %.lr.ph535.split ] ; 2 uses
  %i.js = load ptr, ptr %i.ho, align 8, !tbaa !47
  %i.jt = call ptr @zslInsert(ptr noundef %i.js, double noundef %i.ja, ptr noundef nonnull %i.jc) #13
  %i.ju = load ptr, ptr %i.hl, align 8, !tbaa !118
  %i.jv = call i32 @dictAdd(ptr noundef %i.ju, ptr noundef %i.jt, ptr noundef null) #13
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.cs, label %.split.us, !prof !119

.split.us:                                        ; preds = %sdslen.exit, %sdslen.exit.us
  call void @_serverAssert(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 826) #13
  call void @abort() #15
  unreachable

bb.cs:                                            ; preds = %sdslen.exit
  %spec.select414 = call i64 @llvm.umax.i64(i64 %.0289532, i64 %.0.i416) ; 2 uses
  %i.jx = add i64 %.0.i416, %.0288533             ; 2 uses
  %i.jy = load ptr, ptr %i.jb, align 8, !tbaa !27
  call void @sdsfree(ptr noundef %i.jy) #13
  store ptr null, ptr %i.jb, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.gj
  br i1 %exitcond.not, label %.loopexit578, label %.lr.ph535.split, !llvm.loop !120

.loopexit578:                                     ; preds = %bb.cs, %bb.cm, %bb.cg
  %.0289.lcssa.ph = phi i64 [ %spec.select414.us, %bb.cm ], [ 0, %bb.cg ], [ %spec.select414, %bb.cs ]
  %.0288.lcssa.ph = phi i64 [ %i.it, %bb.cm ], [ 0, %bb.cg ], [ %i.jx, %bb.cs ]
  %5 = load ptr, ptr %i.d, align 8, !tbaa !31
  call void @zsetConvertToListpackIfNeeded(ptr noundef %5, i64 noundef %.0289.lcssa.ph, i64 noundef %.0288.lcssa.ph) #13
  %i.jz = load ptr, ptr %i.e, align 8, !tbaa !86
  call void @setKey(ptr noundef %0, ptr noundef %i.jz, ptr noundef nonnull %.5, ptr noundef nonnull %i.d, i32 noundef 0) #13
  %i.ka = select i1 %i.ez, ptr @.str.52, ptr @.str.51
  %i.kb = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 72
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !88
  call void @notifyKeyspaceEvent(i32 noundef 128, ptr noundef nonnull %i.ka, ptr noundef nonnull %.5, i32 noundef %i.kd) #13
  br label %.sink.split

._crit_edge536:                                   ; preds = %bb.cf
  %i.ke = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.kf = call i32 @dbDelete(ptr noundef %i.ke, ptr noundef nonnull %.5) #13
  %.not398 = icmp eq i32 %i.kf, 0
  br i1 %.not398, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %._crit_edge536
  %i.kg = load ptr, ptr %i.e, align 8, !tbaa !86
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.kg, ptr noundef nonnull %.5, ptr noundef null, i32 noundef 1) #13
  %i.kh = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 72
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !88
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.49, ptr noundef nonnull %.5, i32 noundef %i.kj) #13
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit578, %bb.ct
  %.sink583 = phi i64 [ 1, %bb.ct ], [ %i.gj, %.loopexit578 ]
  %i.kk = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !92
  %i.kl = add nsw i64 %i.kk, %.sink583
  store i64 %i.kl, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !92
  br label %bb.cu

bb.cu:                                            ; preds = %.sink.split, %._crit_edge536
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.gj) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ce, %bb.cu, %bb.bv, %bb.bo
  call void @geoArrayFree(ptr noundef nonnull %i.fx)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.thread445

.thread445:                                       ; preds = %bb.y, %bb.ao, %bb.ar, %bb.av, %bb.aa, %bb.al, %bb.ax, %bb.bl, %bb.bm, %.loopexit, %bb.bg, %bb.be, %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %extractLongLatOrReply.exit.thread

extractLongLatOrReply.exit.thread:                ; preds = %bb.c, %bb.d, %bb.f, %.critedge, %extractLongLatOrReply.exit, %bb.j, %.thread445, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.cv

bb.cv:                                            ; preds = %bb.a, %extractLongLatOrReply.exit.thread
  ret void
}

declare ptr @lookupKeyRead(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @checkType(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @getLongLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @dbDelete(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @keyModified(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @notifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @addReply(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @geohashCalculateAreasByShapeWGS84(ptr dead_on_unwind writable sret(%struct.GeoHashRadius) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @sort_gp_asc(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !26 ; 2 uses
  %i.e = fcmp ogt double %i.b, %i.d
  %i.f = fcmp une double %i.b, %i.d
  %. = sext i1 %i.f to i32
  %.0 = select i1 %i.e, i32 1, i32 %.
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @sort_gp_desc(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !26 ; 2 uses
  %i.e = fcmp ogt double %i.b, %i.d
  %i.f = fcmp une double %i.b, %i.d
  %..i.neg = zext i1 %i.f to i32
  %.0.i.neg = select i1 %i.e, i32 -1, i32 %..i.neg
  ret i32 %.0.i.neg
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

declare void @pqsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @addReplyBulkSds(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @addReplyDouble(ptr noundef, double noundef) local_unnamed_addr #4

declare ptr @createZsetObject() local_unnamed_addr #4

declare ptr @zslInsert(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #4

declare i32 @dictAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

declare void @zsetConvertToListpackIfNeeded(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @setKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @georadiusCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @georadiusGeneric(ptr noundef %0, i32 noundef 1, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @georadiusbymemberCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @georadiusGeneric(ptr noundef %0, i32 noundef 1, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @georadiusroCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @georadiusGeneric(ptr noundef %0, i32 noundef 1, i32 noundef 5)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @georadiusbymemberroCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @georadiusGeneric(ptr noundef %0, i32 noundef 1, i32 noundef 6)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @geosearchCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @georadiusGeneric(ptr noundef %0, i32 noundef 1, i32 noundef 8)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @geosearchstoreCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @georadiusGeneric(ptr noundef %0, i32 noundef 2, i32 noundef 24)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @geohashCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca [2 x double], align 16            ; 5 uses
  %1 = alloca [2 x %struct.GeoHashRange], align 16 ; 5 uses
  %2 = alloca %struct.GeoHashBits, align 8        ; 4 uses
  %i.c = alloca [12 x i8], align 1                ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.j = tail call ptr @lookupKeyRead(ptr noundef %i.e, ptr noundef %i.i) #13 ; 3 uses
  %i.k = tail call i32 @checkType(ptr noundef %0, ptr noundef %i.j, i32 noundef 3) #13
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !60
  %i.n = add nsw i32 %i.m, -2
  %i.o = sext i32 %i.n to i64
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.o) #13
  %i.p = load i32, ptr %i.l, align 8, !tbaa !60
  %i.q = icmp sgt i32 %i.p, 2
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %.not27 = icmp eq ptr %i.j, null
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_2
