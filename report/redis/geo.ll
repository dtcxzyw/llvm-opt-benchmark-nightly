Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/geo?download=true
inline.NumInlined: 21
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@scoresOfGeoHashBox:bb.a
  store i64 %i.a, ptr %2, align 8, !tbaa !44
  %i.b = add i64 %0, 1
  %i.c = tail call i64 @geohashAlign52Bits(i64 %i.b, i8 %1) #13
  store i64 %i.c, ptr %3, align 8, !tbaa !44
  ret void
}

declare i64 @geohashAlign52Bits(i64, i8) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @membersOfGeoHashBox(ptr nofree noundef readonly captures(none) %0, i64 %1, i8 %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
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
define dso_local i32 @membersOfAllNeighbors(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [9 x %struct.GeoHashBits], align 16 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !80
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !80
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !80
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !80
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !80
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !80
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !80
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !80
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !80
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = add i64 %4, -1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.06984 = phi i32 [ 0, %bb.a ], [ %.1, %bb.i ]  ; 4 uses
  %.07083 = phi i32 [ 0, %bb.a ], [ %.171, %bb.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 4 uses
  %i.t = load i64, ptr %i.s, align 16, !tbaa !82  ; 4 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i8, ptr %i.u, align 8, !tbaa !83
  %.not75 = icmp eq i8 %i.v, 0
  br i1 %.not75, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.not76 = icmp eq i32 %.07083, 0
  br i1 %.not76, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = zext i32 %.07083 to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 16, !tbaa !82
  %i.z = icmp eq i64 %i.t, %i.y
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !83
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.af = load i64, ptr %i.q, align 8, !tbaa !17
  %.not82 = icmp ult i64 %i.r, %i.af
  br i1 %.not82, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ah = load i8, ptr %i.ag, align 8             ; 2 uses
  %i.ai = tail call i64 @geohashAlign52Bits(i64 %i.t, i8 %i.ah) #13
  %i.aj = add i64 %i.t, 1
  %i.ak = tail call i64 @geohashAlign52Bits(i64 %i.aj, i8 %i.ah) #13
  %i.al = uitofp i64 %i.ai to double
  %i.am = uitofp i64 %i.ak to double
  %i.an = tail call i32 @geoGetPointsInRange(ptr noundef readonly %0, double noundef %i.al, double noundef %i.am, ptr noundef readonly %2, ptr noundef nonnull %3, i64 noundef %4)
  %i.ao = add i32 %i.an, %.06984
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.h
  %.171 = phi i32 [ %i.ap, %bb.h ], [ %.07083, %bb.c ], [ %.07083, %bb.f ]
  %.1 = phi i32 [ %i.ao, %bb.h ], [ %.06984, %bb.c ], [ %.06984, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %bb.j, label %bb.b, !llvm.loop !79

bb.j:                                             ; preds = %bb.g, %bb.i
  %.069.lcssa = phi i32 [ %.06984, %bb.g ], [ %.1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i32 %.069.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @geoaddCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 6 uses
  %1 = alloca %struct.GeoHashBits, align 8        ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64   ; 6 uses
  %i.d = icmp sgt i32 %i.c, 2
  br i1 %i.d, label %.lr.ph, label %.thread.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.095 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ]  ; 3 uses
  %.06294 = phi i32 [ 0, %.lr.ph ], [ %.163, %bb.e ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 3 uses
  %i.k = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.23) #14
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.24) #14
  %.not76 = icmp eq i32 %i.l, 0
  br i1 %.not76, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.25) #14
  %.not77 = icmp eq i32 %i.m, 0
  br i1 %.not77, label %bb.e, label %.thread.split.loop.exit141

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.163 = phi i32 [ %.06294, %bb.d ], [ 1, %bb.b ], [ %.06294, %bb.c ] ; 2 uses
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
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !67
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.v) #13
  br label %bb.o

.lr.ph105:                                        ; preds = %.thread, %.thread.thread
  %.066.lcssa133138 = phi i32 [ %.066.lcssa.ph, %.thread ], [ 2, %.thread.thread ] ; 4 uses
  %i.w = phi i32 [ %i.r, %.thread ], [ %i.t, %.thread.thread ] ; 2 uses
  %i.x = sdiv exact i32 %i.w, 3                   ; 2 uses
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
  %i.af = icmp sgt i32 %i.w, 0
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
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !65
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv113
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv113
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !31
  tail call void @incrRefCount(ptr noundef %i.ao) #13
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %.preheader, label %bb.g, !llvm.loop !84

bb.h:                                             ; preds = %.lr.ph107, %bb.n
  %indvars.iv118 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next119, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !65
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
  %i.az = load double, ptr %i.a, align 16, !tbaa !21 ; 3 uses
  %i.ba = call double @llvm.fabs.f64(double %i.az)
  %or.cond.i = fcmp ogt double %i.ba, 1.800000e+02
  %.pre.i = load double, ptr %i.ai, align 8, !tbaa !21 ; 3 uses
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
  br i1 %exitcond127.not, label %.thread89, label %.lr.ph109, !llvm.loop !85

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
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !65
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
  br i1 %exitcond122.not, label %._crit_edge, label %bb.h, !llvm.loop !86

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
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
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
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !65   ; 2 uses
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
  %i.x = load double, ptr %i.q, align 8, !tbaa !21 ; 2 uses
  %i.y = call double @llvm.fabs.f64(double %i.x)
  %or.cond.i = fcmp ogt double %i.y, 1.800000e+02
  %.pre.i = load double, ptr %i.v, align 8, !tbaa !21 ; 2 uses
  %i.z = call double @llvm.fabs.f64(double %.pre.i)
  %or.cond17.i = fcmp ogt double %i.z, f0x40554345B1A57F00
  %or.cond20.i = select i1 %or.cond.i, i1 true, i1 %or.cond17.i
  br i1 %or.cond20.i, label %bb.f, label %extractLongLatOrReply.exit

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str, double noundef %i.x, double noundef %.pre.i) #13
  br label %extractLongLatOrReply.exit.thread

end_hunk_0
