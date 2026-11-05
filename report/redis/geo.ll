Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/geo?download=true
inline.NumInlined: 21
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@scoresOfGeoHashBox:bb.a
  %i.c = tail call i64 @geohashAlign52Bits(i64 %i.b, i8 %1) #13
  store i64 %i.c, ptr %3, align 8, !tbaa !87
  ret void
}

declare i64 @geohashAlign52Bits(i64, i8) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @membersOfGeoHashBox(ptr nofree noundef readonly captures(none) %0, i64 %1, i8 %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 !guid !135 {
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
define dso_local i32 @membersOfAllNeighbors(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #0 !guid !137 {
bb.a:
  %5 = alloca [9 x %struct.GeoHashBits], align 16 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !138
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !138
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !138
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !138
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !138
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !138
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !138
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !138
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !138
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = add i64 %4, -1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.06984 = phi i32 [ 0, %bb.a ], [ %.1, %bb.i ]  ; 4 uses
  %.07083 = phi i32 [ 0, %bb.a ], [ %.171, %bb.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 4 uses
  %i.t = load i64, ptr %i.s, align 16, !tbaa !140 ; 4 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i8, ptr %i.u, align 8, !tbaa !141
  %.not75 = icmp eq i8 %i.v, 0
  br i1 %.not75, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.not76 = icmp eq i32 %.07083, 0
  br i1 %.not76, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = zext i32 %.07083 to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 16, !tbaa !140
  %i.z = icmp eq i64 %i.t, %i.y
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !141
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !141
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.af = load i64, ptr %i.q, align 8, !tbaa !60
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
  br i1 %exitcond.not, label %bb.j, label %bb.b, !llvm.loop !136

bb.j:                                             ; preds = %bb.g, %bb.i
  %.069.lcssa = phi i32 [ %.06984, %bb.g ], [ %.1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i32 %.069.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @geoaddCommand(ptr noundef %0) local_unnamed_addr #0 !guid !145 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 6 uses
  %1 = alloca %struct.GeoHashBits, align 8        ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !107  ; 6 uses
  %i.d = icmp sgt i32 %i.c, 2
  br i1 %i.d, label %.lr.ph, label %.thread.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.095 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ]  ; 3 uses
  %.06294 = phi i32 [ 0, %.lr.ph ], [ %.163, %bb.e ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76   ; 3 uses
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
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !110
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
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !74
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
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv113
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !74 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv113
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !74
  tail call void @incrRefCount(ptr noundef %i.ao) #13
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %.preheader, label %bb.g, !llvm.loop !142

bb.h:                                             ; preds = %.lr.ph107, %bb.n
  %indvars.iv118 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next119, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !108
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ah
  %i.as = mul nuw nsw i64 %indvars.iv118, 3       ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !74
  %i.av = call i32 @getDoubleFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.au, ptr noundef nonnull %i.a, ptr noundef null) #13
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %bb.i, label %extractLongLatOrReply.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !74
  %i.ay = call i32 @getDoubleFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.ax, ptr noundef nonnull %i.ai, ptr noundef null) #13
  %.not.1.i = icmp eq i32 %i.ay, 0
  br i1 %.not.1.i, label %bb.j, label %extractLongLatOrReply.exit

bb.j:                                             ; preds = %bb.i
  %i.az = load double, ptr %i.a, align 16, !tbaa !64 ; 3 uses
  %i.ba = call double @llvm.fabs.f64(double %i.az)
  %or.cond.i = fcmp ogt double %i.ba, 1.800000e+02
  %.pre.i = load double, ptr %i.ai, align 8, !tbaa !64 ; 3 uses
  %i.bb = call double @llvm.fabs.f64(double %.pre.i)
  %or.cond17.i = fcmp ogt double %i.bb, f0x40554345B1A57F00
  %or.cond20.i = select i1 %or.cond.i, i1 true, i1 %or.cond17.i
  br i1 %or.cond20.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str, double noundef %i.az, double noundef %.pre.i) #13
  br label %extractLongLatOrReply.exit

extractLongLatOrReply.exit:                       ; preds = %bb.h, %bb.i, %bb.k
  %2 = icmp sgt i32 %i.z, 0
  br i1 %2, label %.lr.ph109.preheader, label %.thread89

.lr.ph109.preheader:                              ; preds = %extractLongLatOrReply.exit
  %wide.trip.count126 = zext nneg i32 %i.z to i64
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %bb.m
  %indvars.iv123 = phi i64 [ 0, %.lr.ph109.preheader ], [ %indvars.iv.next124, %bb.m ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv123
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !74 ; 2 uses
  %.not80 = icmp eq ptr %i.bd, null
  br i1 %.not80, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph109
  call void @decrRefCount(ptr noundef nonnull %i.bd) #13
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph109, %bb.l
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.thread89, label %.lr.ph109, !llvm.loop !143

.thread89:                                        ; preds = %bb.m, %extractLongLatOrReply.exit
  call void @zfree(ptr noundef nonnull %i.ac) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.be = call i32 @geohashEncodeWGS84(double noundef %i.az, double noundef %.pre.i, i8 noundef zeroext 26, ptr noundef nonnull %1) #13 ; 0 uses
  %i.bf = load i64, ptr %1, align 8
  %i.bg = load i8, ptr %i.aj, align 8
  %i.bh = call i64 @geohashAlign52Bits(i64 %i.bf, i8 %i.bg) #13
  %i.bi = call ptr @createStringObjectFromLongLongWithSds(i64 noundef %i.bh) #13
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !108
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.as
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.ah
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !74 ; 2 uses
  %i.bo = shl nuw nsw i64 %indvars.iv118, 1       ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bo
  store ptr %i.bi, ptr %gep, align 8, !tbaa !74
  %gep146 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep145, i64 %i.bo
  store ptr %i.bn, ptr %gep146, align 8, !tbaa !74
  call void @incrRefCount(ptr noundef %i.bn) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %bb.h, !llvm.loop !144

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
define dso_local void @georadiusGeneric(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !149 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %3 = alloca %struct.GeoShape, align 8           ; 22 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %4 = alloca %struct.GeoHashRadius, align 8      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.l = tail call ptr @lookupKeyRead(ptr noundef %i.f, ptr noundef %i.k) #13 ; 7 uses
  %i.m = tail call i32 @checkType(ptr noundef %0, ptr noundef %i.l, i32 noundef 3) #13
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.cu

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %i.n = and i32 %2, 1
  %.not365 = icmp eq i32 %i.n, 0
  br i1 %.not365, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 8, !tbaa !78
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.s = call i32 @getDoubleFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef nonnull %i.q, ptr noundef null) #13
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.d, label %extractLongLatOrReply.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = call i32 @getDoubleFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.u, ptr noundef nonnull %i.v, ptr noundef null) #13
  %.not.1.i = icmp eq i32 %i.w, 0
  br i1 %.not.1.i, label %bb.e, label %extractLongLatOrReply.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = load double, ptr %i.q, align 8, !tbaa !64 ; 2 uses
  %i.y = call double @llvm.fabs.f64(double %i.x)
  %or.cond.i = fcmp ogt double %i.y, 1.800000e+02
  %.pre.i = load double, ptr %i.v, align 8, !tbaa !64 ; 2 uses
  %i.z = call double @llvm.fabs.f64(double %.pre.i)
  %or.cond17.i = fcmp ogt double %i.z, f0x40554345B1A57F00
  %or.cond20.i = select i1 %or.cond.i, i1 true, i1 %or.cond17.i
  br i1 %or.cond20.i, label %bb.f, label %extractLongLatOrReply.exit

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str, double noundef %i.x, double noundef %.pre.i) #13
  br label %extractLongLatOrReply.exit.thread

extractLongLatOrReply.exit:                       ; preds = %bb.e
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !108
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
  store i32 1, ptr %3, align 8, !tbaa !78
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !76
  %i.an = call i32 @zsetScore(ptr noundef %i.l, ptr noundef %i.am, ptr noundef nonnull %i.b) #13
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %longLatFromMember.exit.thread, label %longLatFromMember.exit

longLatFromMember.exit.thread:                    ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.critedge

longLatFromMember.exit:                           ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load double, ptr %i.b, align 8, !tbaa !64
  %i.ar = fptoui double %i.aq to i64
  %i.as = call i32 @geohashDecodeToLongLatWGS84(i64 %i.ar, i8 26, ptr noundef nonnull %i.ap) #13
  %.not.i415 = icmp eq i32 %i.as, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br i1 %.not.i415, label %.critedge, label %bb.j

.critedge:                                        ; preds = %longLatFromMember.exit.thread, %longLatFromMember.exit
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #13
  br label %extractLongLatOrReply.exit.thread

bb.j:                                             ; preds = %longLatFromMember.exit
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !108
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
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !74
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #13
  br label %extractLongLatOrReply.exit.thread

bb.o:                                             ; preds = %bb.g, %bb.m, %bb.l, %bb.j, %extractLongLatOrReply.exit
  %.0341 = phi ptr [ null, %extractLongLatOrReply.exit ], [ null, %bb.j ], [ %i.bc, %bb.m ], [ null, %bb.l ], [ null, %bb.g ] ; 2 uses
  %.0332 = phi i32 [ 6, %extractLongLatOrReply.exit ], [ 5, %bb.j ], [ 3, %bb.m ], [ 2, %bb.l ], [ 5, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 0, ptr %i.c, align 8, !tbaa !82
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
end_hunk_0
begin_hunk_1_@geoposCommand:bb.a
  %i.z = call i32 @zsetScore(ptr noundef nonnull %i.i, ptr noundef %i.y, ptr noundef nonnull %i.a) #13
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  call void @addReplyNullArray(ptr noundef nonnull %0) #13
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ab = load double, ptr %i.a, align 8, !tbaa !64
  %i.ac = fptoui double %i.ab to i64
  %i.ad = call i32 @geohashDecodeToLongLatWGS84(i64 %i.ac, i8 26, ptr noundef nonnull %i.b) #13
  %.not21.not = icmp eq i32 %i.ad, 0
  br i1 %.not21.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @addReplyNullArray(ptr noundef nonnull %0) #13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #13
  %i.ae = load double, ptr %i.b, align 16, !tbaa !64
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.ae) #13
  %i.af = load double, ptr %i.q, align 8, !tbaa !64
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.af) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %i.k, align 8, !tbaa !107
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph.split, label %.loopexit, !llvm.loop !191

.loopexit:                                        ; preds = %bb.h, %.lr.ph.split.us, %bb.b, %bb.a
  ret void
}

declare void @addReplyNullArray(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @geodistCommand(ptr noundef %0) local_unnamed_addr #0 !guid !193 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca [4 x double], align 16            ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !107  ; 2 uses
  %i.f = icmp eq i32 %i.e, 5
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76   ; 4 uses
  %i.m = tail call i32 @strcasecmp(ptr noundef %i.l, ptr noundef nonnull @.str.1) #14
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %extractUnitOrReply.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @strcasecmp(ptr noundef %i.l, ptr noundef nonnull @.str.2) #14
  %.not7.i = icmp eq i32 %i.n, 0
  br i1 %.not7.i, label %extractUnitOrReply.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @strcasecmp(ptr noundef %i.l, ptr noundef nonnull @.str.3) #14
  %.not8.i = icmp eq i32 %i.o, 0
  br i1 %.not8.i, label %extractUnitOrReply.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @strcasecmp(ptr noundef %i.l, ptr noundef nonnull @.str.4) #14
  %.not9.i = icmp eq i32 %i.p, 0
  br i1 %.not9.i, label %extractUnitOrReply.exit.thread, label %extractUnitOrReply.exit

extractUnitOrReply.exit:                          ; preds = %bb.e
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #13
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.q = icmp sgt i32 %i.e, 5
  br i1 %i.q, label %bb.g, label %.extractUnitOrReply.exit.thread_crit_edge

.extractUnitOrReply.exit.thread_crit_edge:        ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !108
  br label %extractUnitOrReply.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !110
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.r) #13
  br label %bb.q

extractUnitOrReply.exit.thread:                   ; preds = %.extractUnitOrReply.exit.thread_crit_edge, %bb.e, %bb.b, %bb.c, %bb.d
  %i.s = phi ptr [ %.pre, %.extractUnitOrReply.exit.thread_crit_edge ], [ %i.h, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ], [ %i.h, %bb.d ]
  %.0 = phi double [ 1.000000e+00, %.extractUnitOrReply.exit.thread_crit_edge ], [ 1.609340e+03, %bb.e ], [ 1.000000e+00, %bb.b ], [ 1.000000e+03, %bb.c ], [ 3.048000e-01, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !194
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !74
  %i.ab = tail call ptr @lookupKeyReadOrReply(ptr noundef nonnull %0, ptr noundef %i.v, ptr noundef %i.aa) #13 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.q, label %bb.h

bb.h:                                             ; preds = %extractUnitOrReply.exit.thread
  %i.ad = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, i32 noundef 3) #13
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !108
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !74
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76
  %i.aj = call i32 @zsetScore(ptr noundef nonnull %i.ab, ptr noundef %i.ai, ptr noundef nonnull %i.a) #13
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !108
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !76
  %i.aq = call i32 @zsetScore(ptr noundef nonnull %i.ab, ptr noundef %i.ap, ptr noundef nonnull %i.b) #13
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @addReplyNull(ptr noundef nonnull %0) #13
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.as = load double, ptr %i.a, align 8, !tbaa !64
  %i.at = fptoui double %i.as to i64
  %i.au = call i32 @geohashDecodeToLongLatWGS84(i64 %i.at, i8 26, ptr noundef nonnull %i.c) #13
  %.not22 = icmp eq i32 %i.au, 0
  br i1 %.not22, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = load double, ptr %i.b, align 8, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ax = fptoui double %i.av to i64
  %i.ay = call i32 @geohashDecodeToLongLatWGS84(i64 %i.ax, i8 26, ptr noundef nonnull %i.aw) #13
  %.not23 = icmp eq i32 %i.ay, 0
  br i1 %.not23, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @addReplyNull(ptr noundef nonnull %0) #13
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.az = load double, ptr %i.c, align 16, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !64
  %i.bc = load double, ptr %i.aw, align 16, !tbaa !64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !64
  %i.bf = call double @geohashGetDistance(double noundef %i.az, double noundef %i.bb, double noundef %i.bc, double noundef %i.be) #13
  %i.bg = fdiv double %i.bf, %.0
  call void @addReplyDoubleDistance(ptr noundef nonnull %0, double noundef %i.bg)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.q

bb.q:                                             ; preds = %extractUnitOrReply.exit, %bb.p, %bb.h, %extractUnitOrReply.exit.thread, %bb.g
  ret void
}

declare ptr @lookupKeyReadOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @geohashGetDistance(double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{i64 -585165317436634621}
!14 = !{i64 6939121590136141089}
!15 = !{i64 5138562114865154292}
!16 = !{i64 5277698255918267961}
!17 = !{i64 -7043539534694481360}
!18 = !{i64 4567174319494939519}
!19 = !{i64 4982208298108909763}
!20 = !{i64 -4944792903899619747}
!21 = !{i64 -7837924548652132705}
!22 = !{i64 -4278254835743798573}
!23 = !{i64 -7057079708094931992}
!24 = !{i64 5859841872293284241}
!25 = !{i64 -8964278975930013190}
!26 = !{i64 487362870351494607}
!27 = !{i64 -926136575200933115}
!28 = !{i64 -6272872862806453912}
!29 = !{i64 -757408102763866275}
!30 = !{i64 -4288355255314824534}
!31 = !{i64 2443308831586653580}
!32 = !{i64 5679913068438021320}
!33 = !{i64 4181548890912254737}
!34 = !{i64 -7012239336809046144}
!35 = !{i64 5332152583894354892}
!36 = !{i64 -6522027029113644165}
!37 = !{i64 1498837871843220545}
!38 = !{i64 -6739445425719105103}
!39 = !{i64 -2222550419221150898}
!40 = !{i64 -962706144768945800}
!41 = !{i64 1285983317104741515}
!42 = !{i64 1876627902371871444}
!43 = !{i64 -4465165917942269168}
!44 = !{i64 -5878000769804987210}
!45 = !{i64 6156542153710202645}
!46 = !{i64 -5992348603226197700}
!47 = !{i64 8529286462201689302}
!48 = !{i64 -8673533937969488626}
!49 = !{i64 2664591555053361045}
!50 = !{i64 -4233677311420256017}
!51 = !{i64 -6060934055210011857}
!52 = !{i64 -6947984875948538640}
!53 = !{i64 8023623626382835484}
!54 = !{i64 -4906688214988794930}
!55 = !{i64 -5746858334018777094}
!56 = !{!"any pointer", !10, i64 0}
!57 = !{!"p1 _ZTS8geoPoint", !56, i64 0}
!58 = !{!"long", !10, i64 0}
!59 = !{!"geoArray", !57, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!59, !58, i64 16}
!61 = !{!59, !58, i64 8}
!62 = !{!59, !57, i64 0}
!63 = !{!"double", !10, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"p1 omnipotent char", !56, i64 0}
!66 = !{!"geoPoint", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !65, i64 32}
!67 = !{!66, !63, i64 0}
!68 = !{!66, !63, i64 8}
!69 = !{!66, !63, i64 16}
!70 = !{!66, !65, i64 32}
!71 = !{!66, !63, i64 24}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"p1 _ZTS11redisObject", !56, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"redisObject", !11, i64 0, !11, i64 0, !11, i64 1, !11, i64 3, !11, i64 4, !11, i64 5, !56, i64 8}
!76 = !{!75, !56, i64 8}
!77 = !{!"", !11, i64 0, !10, i64 8, !63, i64 24, !10, i64 32, !10, i64 64}
!78 = !{!77, !11, i64 0}
!79 = !{!10, !10, i64 0}
!80 = !{!77, !63, i64 24}
!81 = !{!"long long", !10, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"p1 _ZTS4dict", !56, i64 0}
!84 = !{!"p1 _ZTS9zskiplist", !56, i64 0}
!85 = !{!"zset", !83, i64 0, !84, i64 8}
!86 = !{!85, !84, i64 8}
!87 = !{!58, !58, i64 0}
!88 = !{!"p1 _ZTS10connection", !56, i64 0}
!89 = !{!"p1 _ZTS7redisDb", !56, i64 0}
!90 = !{!"any p2 pointer", !56, i64 0}
!91 = !{!"p2 _ZTS11redisObject", !90, i64 0}
!92 = !{!"p1 _ZTS14pendingCommand", !56, i64 0}
!93 = !{!"pendingCommandList", !92, i64 0, !92, i64 8, !11, i64 16, !11, i64 20}
!94 = !{!"p1 _ZTS14deferredObject", !56, i64 0}
!95 = !{!"p1 _ZTS12redisCommand", !56, i64 0}
!96 = !{!"p1 _ZTS4list", !56, i64 0}
!97 = !{!"p1 _ZTS9dictEntry", !56, i64 0}
!98 = !{!"p2 _ZTS14pendingCommand", !90, i64 0}
!99 = !{!"multiState", !98, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !58, i64 24, !11, i64 32}
!100 = !{!"blockingState", !11, i64 0, !81, i64 8, !11, i64 16, !83, i64 24, !11, i64 32, !11, i64 36, !81, i64 40, !56, i64 48, !56, i64 56, !58, i64 64}
!101 = !{!"p1 _ZTS8listNode", !56, i64 0}
!102 = !{!"p1 _ZTS3rax", !56, i64 0}
!103 = !{!"listNode", !101, i64 0, !101, i64 8, !56, i64 16}
!104 = !{!"p1 _ZTS13payloadHeader", !56, i64 0}
!105 = !{!"p1 _ZTS7asmTask", !56, i64 0}
!106 = !{!"client", !58, i64 0, !58, i64 8, !88, i64 16, !10, i64 24, !10, i64 25, !10, i64 26, !10, i64 27, !11, i64 28, !89, i64 32, !73, i64 40, !73, i64 48, !73, i64 56, !65, i64 64, !58, i64 72, !58, i64 80, !11, i64 88, !91, i64 96, !11, i64 104, !11, i64 108, !91, i64 112, !58, i64 120, !93, i64 128, !92, i64 152, !94, i64 160, !11, i64 168, !91, i64 176, !11, i64 184, !11, i64 188, !95, i64 192, !95, i64 200, !95, i64 208, !95, i64 216, !56, i64 224, !11, i64 232, !11, i64 236, !58, i64 240, !96, i64 248, !81, i64 256, !96, i64 264, !58, i64 272, !58, i64 280, !58, i64 288, !11, i64 296, !11, i64 300, !97, i64 304, !58, i64 312, !58, i64 320, !58, i64 328, !81, i64 336, !81, i64 344, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !58, i64 368, !58, i64 376, !65, i64 384, !81, i64 392, !81, i64 400, !81, i64 408, !81, i64 416, !81, i64 424, !81, i64 432, !81, i64 440, !81, i64 448, !81, i64 456, !81, i64 464, !81, i64 472, !10, i64 480, !11, i64 524, !65, i64 528, !11, i64 536, !11, i64 540, !58, i64 544, !99, i64 552, !100, i64 592, !81, i64 664, !96, i64 672, !83, i64 680, !83, i64 688, !83, i64 696, !65, i64 704, !65, i64 712, !101, i64 720, !101, i64 728, !101, i64 736, !56, i64 744, !56, i64 752, !56, i64 760, !56, i64 768, !56, i64 776, !58, i64 784, !102, i64 792, !58, i64 800, !11, i64 808, !101, i64 816, !56, i64 824, !101, i64 832, !58, i64 840, !101, i64 848, !58, i64 856, !101, i64 864, !58, i64 872, !103, i64 880, !103, i64 904, !58, i64 928, !58, i64 936, !58, i64 944, !81, i64 952, !58, i64 960, !58, i64 968, !65, i64 976, !10, i64 984, !104, i64 992, !81, i64 1000, !81, i64 1008, !81, i64 1016, !105, i64 1024, !65, i64 1032, !10, i64 1040}
!107 = !{!106, !11, i64 88}
!108 = !{!106, !91, i64 96}
!109 = !{!"sharedObjectsStruct", !73, i64 0, !73, i64 8, !73, i64 16, !73, i64 24, !73, i64 32, !73, i64 40, !73, i64 48, !73, i64 56, !10, i64 64, !10, i64 96, !10, i64 128, !10, i64 160, !73, i64 192, !73, i64 200, !73, i64 208, !73, i64 216, !73, i64 224, !73, i64 232, !73, i64 240, !73, i64 248, !73, i64 256, !73, i64 264, !73, i64 272, !73, i64 280, !73, i64 288, !73, i64 296, !73, i64 304, !73, i64 312, !73, i64 320, !73, i64 328, !73, i64 336, !73, i64 344, !73, i64 352, !73, i64 360, !73, i64 368, !73, i64 376, !73, i64 384, !73, i64 392, !73, i64 400, !73, i64 408, !73, i64 416, !73, i64 424, !73, i64 432, !73, i64 440, !73, i64 448, !73, i64 456, !73, i64 464, !73, i64 472, !73, i64 480, !73, i64 488, !73, i64 496, !73, i64 504, !73, i64 512, !73, i64 520, !73, i64 528, !73, i64 536, !73, i64 544, !73, i64 552, !73, i64 560, !73, i64 568, !73, i64 576, !73, i64 584, !73, i64 592, !73, i64 600, !73, i64 608, !73, i64 616, !73, i64 624, !73, i64 632, !73, i64 640, !73, i64 648, !73, i64 656, !73, i64 664, !73, i64 672, !73, i64 680, !73, i64 688, !73, i64 696, !73, i64 704, !73, i64 712, !73, i64 720, !73, i64 728, !73, i64 736, !73, i64 744, !73, i64 752, !73, i64 760, !73, i64 768, !73, i64 776, !73, i64 784, !73, i64 792, !73, i64 800, !73, i64 808, !10, i64 816, !10, i64 896, !10, i64 80896, !10, i64 81152, !10, i64 81408, !10, i64 81664, !65, i64 81920, !65, i64 81928}
!110 = !{!109, !73, i64 216}
!111 = !{!106, !89, i64 32}
!112 = !{i64 -389114075951576889}
!113 = !{i64 -2790220868520861795}
!114 = distinct !{!114, !72}
!115 = !{i64 -4889415901885232532}
!116 = !{i64 4068634404776950238}
!117 = !{i64 7418160033238699341}
!118 = !{i64 -4257365513502127775}
!119 = !{i64 -2541337307954255487}
!120 = !{i64 -1179764738467321887}
!121 = !{i64 5023596428890053973}
!122 = !{i64 -4692999704229326769}
!123 = !{i64 -3489904813776068758}
!124 = !{i64 -9001788232987575500}
!125 = !{!"", !63, i64 0, !63, i64 8, !11, i64 16, !11, i64 20}
!126 = !{!125, !63, i64 0}
!127 = !{!125, !63, i64 8}
!128 = !{!125, !11, i64 16}
!129 = !{!125, !11, i64 20}
!130 = !{!65, !65, i64 0}
!131 = !{!"p1 _ZTS13zskiplistNode", !56, i64 0}
!132 = !{!"zskiplistLevel", !131, i64 0, !58, i64 8}
!133 = !{!132, !131, i64 0}
!134 = !{i64 5383581690044494157}
!135 = !{i64 2398883574172285293}
!136 = distinct !{!136, !72}
!137 = !{i64 7899311470856378446}
!138 = !{i64 0, i64 8, !87, i64 8, i64 1, !79}
!139 = !{!"", !58, i64 0, !10, i64 8}
!140 = !{!139, !58, i64 0}
!141 = !{!139, !10, i64 8}
!142 = distinct !{!142, !72}
!143 = distinct !{!143, !72}
!144 = distinct !{!144, !72}
!145 = !{i64 2839043356605027654}
!146 = distinct !{!146, !72}
!147 = distinct !{!147, !72}
!148 = distinct !{!148, !72}
!149 = !{i64 -3152325861658913343}
!150 = !{!"p1 _ZTS8_kvstore", !56, i64 0}
!151 = !{!"p1 _ZTS7_estore", !56, i64 0}
!152 = !{!"redisDb", !150, i64 0, !150, i64 8, !151, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !11, i64 72, !81, i64 80, !58, i64 88}
!153 = !{!152, !11, i64 72}
!154 = !{!"p2 omnipotent char", !90, i64 0}
!155 = !{!"p1 _ZTS11aeEventLoop", !56, i64 0}
!156 = !{!"p1 _ZTS14ConnectionType", !56, i64 0}
!157 = !{!"connListener", !10, i64 0, !11, i64 64, !154, i64 72, !11, i64 80, !11, i64 84, !156, i64 88, !56, i64 96}
!158 = !{!"p1 _ZTS6client", !56, i64 0}
!159 = !{!"pendingCommandPool", !98, i64 0, !11, i64 8, !11, i64 12, !11, i64 16}
!160 = !{!"malloc_stats", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !58, i64 56, !58, i64 64, !58, i64 72, !58, i64 80}
!161 = !{!"p1 _ZTS11hotkeyStats", !56, i64 0}
!162 = !{!"p1 double", !56, i64 0}
!163 = !{!"p1 _ZTS9saveparam", !56, i64 0}
!164 = !{!"p2 _ZTS10connection", !90, i64 0}
!165 = !{!"p1 _ZTS7redisOp", !56, i64 0}
!166 = !{!"redisOpArray", !165, i64 0, !11, i64 8, !11, i64 12}
!167 = !{!"p1 _ZTS11replBacklog", !56, i64 0}
!168 = !{!"replDataBuf", !96, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40}
!169 = !{!"p1 _ZTS12clusterState", !56, i64 0}
!170 = !{!"aclInfo", !81, i64 0, !81, i64 8, !81, i64 16, !81, i64 24, !81, i64 32}
!171 = !{!"redisTLSContextConfig", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !11, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116}
!172 = !{!"p1 _ZTS14sentinelConfig", !56, i64 0}
!173 = !{!"redisServer", !11, i64 0, !58, i64 8, !65, i64 16, !65, i64 24, !154, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !89, i64 64, !83, i64 72, !83, i64 80, !155, i64 88, !102, i64 96, !11, i64 104, !11, i64 108, !10, i64 112, !10, i64 116, !81, i64 120, !10, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !65, i64 144, !11, i64 152, !11, i64 156, !10, i64 160, !11, i64 204, !58, i64 208, !11, i64 216, !11, i64 220, !11, i64 224, !65, i64 232, !65, i64 240, !11, i64 248, !11, i64 252, !58, i64 256, !10, i64 264, !83, i64 272, !83, i64 280, !83, i64 288, !96, i64 296, !10, i64 304, !11, i64 312, !11, i64 316, !10, i64 320, !11, i64 324, !11, i64 328, !11, i64 332, !10, i64 336, !11, i64 464, !65, i64 472, !65, i64 480, !11, i64 488, !10, i64 496, !11, i64 1328, !157, i64 1336, !96, i64 1440, !96, i64 1448, !96, i64 1456, !96, i64 1464, !96, i64 1472, !96, i64 1480, !96, i64 1488, !158, i64 1496, !158, i64 1504, !56, i64 1512, !102, i64 1520, !11, i64 1528, !102, i64 1536, !11, i64 1544, !96, i64 1552, !10, i64 1560, !10, i64 1624, !83, i64 1880, !10, i64 1888, !11, i64 1896, !11, i64 1900, !10, i64 1904, !11, i64 2416, !11, i64 2420, !159, i64 2424, !11, i64 2448, !81, i64 2456, !11, i64 2464, !11, i64 2468, !11, i64 2472, !11, i64 2476, !11, i64 2480, !58, i64 2488, !58, i64 2496, !58, i64 2504, !58, i64 2512, !58, i64 2520, !58, i64 2528, !81, i64 2536, !81, i64 2544, !81, i64 2552, !81, i64 2560, !81, i64 2568, !81, i64 2576, !63, i64 2584, !81, i64 2592, !81, i64 2600, !81, i64 2608, !81, i64 2616, !81, i64 2624, !81, i64 2632, !58, i64 2640, !81, i64 2648, !81, i64 2656, !81, i64 2664, !81, i64 2672, !81, i64 2680, !81, i64 2688, !81, i64 2696, !81, i64 2704, !58, i64 2712, !58, i64 2720, !58, i64 2728, !81, i64 2736, !81, i64 2744, !81, i64 2752, !81, i64 2760, !81, i64 2768, !63, i64 2776, !81, i64 2784, !81, i64 2792, !81, i64 2800, !81, i64 2808, !81, i64 2816, !96, i64 2824, !81, i64 2832, !81, i64 2840, !58, i64 2848, !160, i64 2856, !10, i64 2944, !10, i64 2952, !10, i64 2960, !10, i64 2968, !58, i64 2976, !58, i64 2984, !58, i64 2992, !58, i64 3000, !58, i64 3008, !58, i64 3016, !58, i64 3024, !58, i64 3032, !63, i64 3040, !10, i64 3048, !58, i64 3080, !81, i64 3088, !81, i64 3096, !81, i64 3104, !10, i64 3112, !10, i64 4136, !10, i64 5160, !81, i64 5168, !81, i64 5176, !81, i64 5184, !81, i64 5192, !10, i64 5200, !81, i64 6264, !81, i64 6272, !58, i64 6280, !81, i64 6288, !81, i64 6296, !58, i64 6304, !10, i64 6312, !161, i64 6408, !11, i64 6416, !11, i64 6420, !11, i64 6424, !11, i64 6428, !11, i64 6432, !11, i64 6436, !11, i64 6440, !11, i64 6444, !11, i64 6448, !11, i64 6452, !11, i64 6456, !11, i64 6460, !11, i64 6464, !58, i64 6472, !11, i64 6480, !11, i64 6484, !11, i64 6488, !11, i64 6492, !58, i64 6496, !58, i64 6504, !11, i64 6512, !11, i64 6516, !11, i64 6520, !11, i64 6524, !11, i64 6528, !11, i64 6532, !65, i64 6536, !10, i64 6544, !11, i64 6616, !11, i64 6620, !11, i64 6624, !162, i64 6632, !11, i64 6640, !11, i64 6644, !11, i64 6648, !11, i64 6652, !11, i64 6656, !11, i64 6660, !11, i64 6664, !11, i64 6668, !11, i64 6672, !65, i64 6680, !65, i64 6688, !11, i64 6696, !11, i64 6700, !58, i64 6704, !58, i64 6712, !58, i64 6720, !58, i64 6728, !58, i64 6736, !11, i64 6744, !11, i64 6748, !65, i64 6752, !11, i64 6760, !11, i64 6764, !81, i64 6768, !81, i64 6776, !58, i64 6784, !58, i64 6792, !58, i64 6800, !11, i64 6808, !11, i64 6812, !58, i64 6816, !11, i64 6824, !11, i64 6828, !11, i64 6832, !11, i64 6836, !11, i64 6840, !58, i64 6848, !11, i64 6856, !10, i64 6860, !10, i64 6864, !56, i64 6872, !11, i64 6880, !81, i64 6888, !81, i64 6896, !81, i64 6904, !81, i64 6912, !11, i64 6920, !163, i64 6928, !11, i64 6936, !65, i64 6944, !11, i64 6952, !11, i64 6956, !11, i64 6960, !58, i64 6968, !58, i64 6976, !58, i64 6984, !58, i64 6992, !11, i64 7000, !11, i64 7004, !11, i64 7008, !11, i64 7012, !11, i64 7016, !11, i64 7020, !164, i64 7024, !11, i64 7032, !11, i64 7036, !65, i64 7040, !11, i64 7048, !11, i64 7052, !11, i64 7056, !10, i64 7060, !11, i64 7068, !166, i64 7072, !11, i64 7088, !65, i64 7096, !11, i64 7104, !65, i64 7112, !11, i64 7120, !11, i64 7124, !11, i64 7128, !11, i64 7132, !11, i64 7136, !11, i64 7140, !11, i64 7144, !10, i64 7148, !10, i64 7189, !81, i64 7232, !81, i64 7240, !10, i64 7248, !81, i64 7256, !11, i64 7264, !11, i64 7268, !167, i64 7272, !81, i64 7280, !81, i64 7288, !168, i64 7296, !58, i64 7344, !58, i64 7352, !11, i64 7360, !11, i64 7364, !11, i64 7368, !11, i64 7372, !11, i64 7376, !11, i64 7380, !11, i64 7384, !11, i64 7388, !11, i64 7392, !58, i64 7400, !96, i64 7408, !58, i64 7416, !65, i64 7424, !65, i64 7432, !65, i64 7440, !11, i64 7448, !11, i64 7452, !158, i64 7456, !158, i64 7464, !11, i64 7472, !11, i64 7476, !11, i64 7480, !11, i64 7484, !58, i64 7488, !58, i64 7496, !58, i64 7504, !58, i64 7512, !58, i64 7520, !88, i64 7528, !88, i64 7536, !11, i64 7544, !65, i64 7552, !58, i64 7560, !11, i64 7568, !11, i64 7572, !11, i64 7576, !58, i64 7584, !58, i64 7592, !11, i64 7600, !11, i64 7604, !11, i64 7608, !11, i64 7612, !65, i64 7616, !11, i64 7624, !11, i64 7628, !10, i64 7632, !81, i64 7680, !11, i64 7688, !96, i64 7696, !11, i64 7704, !81, i64 7712, !81, i64 7720, !58, i64 7728, !58, i64 7736, !11, i64 7744, !81, i64 7752, !58, i64 7760, !11, i64 7768, !11, i64 7772, !11, i64 7776, !11, i64 7780, !11, i64 7784, !81, i64 7792, !10, i64 7800, !11, i64 7812, !11, i64 7816, !11, i64 7820, !10, i64 7824, !96, i64 7872, !96, i64 7880, !11, i64 7888, !58, i64 7896, !96, i64 7904, !96, i64 7912, !11, i64 7920, !11, i64 7924, !11, i64 7928, !11, i64 7932, !58, i64 7936, !58, i64 7944, !58, i64 7952, !58, i64 7960, !58, i64 7968, !58, i64 7976, !58, i64 7984, !58, i64 7992, !58, i64 8000, !81, i64 8008, !81, i64 8016, !81, i64 8024, !11, i64 8032, !11, i64 8036, !10, i64 8040, !58, i64 8048, !10, i64 8056, !81, i64 8064, !81, i64 8072, !11, i64 8080, !58, i64 8088, !81, i64 8096, !58, i64 8104, !81, i64 8112, !150, i64 8120, !83, i64 8128, !11, i64 8136, !150, i64 8144, !11, i64 8152, !11, i64 8156, !11, i64 8160, !11, i64 8164, !81, i64 8168, !81, i64 8176, !65, i64 8184, !81, i64 8192, !81, i64 8200, !81, i64 8208, !11, i64 8216, !169, i64 8224, !11, i64 8232, !11, i64 8236, !11, i64 8240, !11, i64 8244, !11, i64 8248, !65, i64 8256, !65, i64 8264, !65, i64 8272, !11, i64 8280, !11, i64 8284, !11, i64 8288, !11, i64 8292, !11, i64 8296, !11, i64 8300, !11, i64 8304, !11, i64 8308, !81, i64 8312, !11, i64 8320, !11, i64 8324, !11, i64 8328, !81, i64 8336, !11, i64 8344, !11, i64 8348, !11, i64 8352, !11, i64 8356, !11, i64 8360, !11, i64 8364, !11, i64 8368, !11, i64 8372, !11, i64 8376, !81, i64 8384, !83, i64 8392, !65, i64 8400, !58, i64 8408, !65, i64 8416, !11, i64 8424, !170, i64 8432, !11, i64 8472, !58, i64 8480, !11, i64 8488, !11, i64 8492, !11, i64 8496, !171, i64 8504, !65, i64 8624, !65, i64 8632, !65, i64 8640, !65, i64 8648, !172, i64 8656, !81, i64 8664, !11, i64 8672, !65, i64 8680, !11, i64 8688, !11, i64 8692, !11, i64 8696, !58, i64 8704, !11, i64 8712, !11, i64 8716, !65, i64 8720, !11, i64 8728, !11, i64 8732}
end_hunk_1
