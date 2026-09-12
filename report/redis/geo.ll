Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/geo?download=true
inline.NumInlined: 21
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@geoaddCommand:bb.a
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
  br i1 %.not, label %bb.b, label %bb.cu

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

extractLongLatOrReply.exit:                       ; preds = %bb.e
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !65
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
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !21
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
  %i.aq = load double, ptr %i.b, align 8, !tbaa !21
  %i.ar = fptoui double %i.aq to i64
  %i.as = call i32 @geohashDecodeToLongLatWGS84(i64 %i.ar, i8 26, ptr noundef nonnull %i.ap) #13
  %.not.i415 = icmp eq i32 %i.as, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br i1 %.not.i415, label %.critedge, label %bb.j

.critedge:                                        ; preds = %longLatFromMember.exit.thread, %longLatFromMember.exit
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #13
  br label %extractLongLatOrReply.exit.thread

bb.j:                                             ; preds = %longLatFromMember.exit
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !65
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
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #13
  br label %extractLongLatOrReply.exit.thread

bb.o:                                             ; preds = %bb.g, %bb.m, %bb.l, %bb.j, %extractLongLatOrReply.exit
  %.0341 = phi ptr [ null, %extractLongLatOrReply.exit ], [ null, %bb.j ], [ %i.bc, %bb.m ], [ null, %bb.l ], [ null, %bb.g ] ; 2 uses
  %.0332 = phi i32 [ 6, %extractLongLatOrReply.exit ], [ 5, %bb.j ], [ 3, %bb.m ], [ 2, %bb.l ], [ 5, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 0, ptr %i.c, align 8, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !64 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, %.0332
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %5 = sub nuw nsw i32 %i.be, %.0332              ; 8 uses
  %i.bg = and i32 %2, 12
  %i.bh = icmp eq i32 %i.bg, 0                    ; 2 uses
  %i.bi = and i32 %2, 8
  %.not386 = icmp eq i32 %i.bi, 0                 ; 4 uses
  %i.bj = and i32 %2, 24
  %.not584 = icmp eq i32 %i.bj, 24
  %i.bk = icmp eq ptr %i.l, null
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bm = zext nneg i32 %.0332 to i64             ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 72
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.ax
  %.0286520 = phi i32 [ 0, %.lr.ph ], [ %i.ek, %bb.ax ] ; 18 uses
  %.0289519 = phi i32 [ 0, %.lr.ph ], [ %.2291.ph, %bb.ax ] ; 14 uses
  %.0292518 = phi i32 [ 0, %.lr.ph ], [ %.2294.ph, %bb.ax ] ; 13 uses
  %.0297517 = phi i32 [ 0, %.lr.ph ], [ %.2299.ph, %bb.ax ] ; 14 uses
  %.0302516 = phi i32 [ 0, %.lr.ph ], [ %.2304.ph, %bb.ax ] ; 14 uses
  %.0307515 = phi i32 [ 0, %.lr.ph ], [ %.2309.ph, %bb.ax ] ; 13 uses
  %.0312514 = phi i32 [ 0, %.lr.ph ], [ %.2314.ph, %bb.ax ] ; 13 uses
  %.0317513 = phi i32 [ 0, %.lr.ph ], [ %.2319.ph, %bb.ax ] ; 14 uses
  %.0322512 = phi i32 [ 0, %.lr.ph ], [ %.2324.ph, %bb.ax ] ; 14 uses
  %.0327511 = phi i32 [ 0, %.lr.ph ], [ %.2329.ph, %bb.ax ] ; 14 uses
  %.0336510 = phi i32 [ 0, %.lr.ph ], [ %.2338.ph, %bb.ax ] ; 12 uses
  %.1342509 = phi ptr [ %.0341, %.lr.ph ], [ %.3344.ph, %bb.ax ] ; 13 uses
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !65  ; 4 uses
  %i.br = add nsw i32 %.0286520, %.0332
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs ; 5 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !33 ; 13 uses
  %i.bx = call i32 @strcasecmp(ptr noundef %i.bw, ptr noundef nonnull @.str.29) #14
  %.not371 = icmp eq i32 %i.bx, 0
  br i1 %.not371, label %bb.ax, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = call i32 @strcasecmp(ptr noundef %i.bw, ptr noundef nonnull @.str.30) #14
  %.not372 = icmp eq i32 %i.by, 0
  br i1 %.not372, label %bb.ax, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = call i32 @strcasecmp(ptr noundef %i.bw, ptr noundef nonnull @.str.31) #14
  %.not373 = icmp eq i32 %i.bz, 0
  br i1 %.not373, label %bb.ax, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = call i32 @strcasecmp(ptr noundef %i.bw, ptr noundef nonnull @.str.32) #14
  %.not374 = icmp eq i32 %i.ca, 0
  br i1 %.not374, label %bb.ax, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = call i32 @strcasecmp(ptr noundef %i.bw, ptr noundef nonnull @.str.33) #14
  %.not375 = icmp eq i32 %i.cb, 0
  br i1 %.not375, label %bb.ax, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = call i32 @strcasecmp(ptr noundef %i.bw, ptr noundef nonnull @.str.34) #14
  %.not376 = icmp eq i32 %i.cc, 0
  br i1 %.not376, label %bb.ax, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = call i32 @strcasecmp(ptr noundef %i.bw, ptr noundef nonnull @.str.35) #14
  %.not377 = icmp eq i32 %i.cd, 0
  br i1 %.not377, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.ce = add nsw i32 %.0286520, 1                ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %5
  br i1 %i.cf, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cg = getelementptr i8, ptr %i.bt, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !31
  %i.ci = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.ch, ptr noundef nonnull %i.c, ptr noundef null) #13
  %.not378 = icmp eq i32 %i.ci, 0
  br i1 %.not378, label %bb.y, label %.thread445

bb.y:                                             ; preds = %bb.x
  %i.cj = load i64, ptr %i.c, align 8, !tbaa !39
  %i.ck = icmp slt i64 %i.cj, 1
  br i1 %i.ck, label %bb.z, label %bb.ax

bb.z:                                             ; preds = %bb.y
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.36) #13
  br label %.thread445

bb.aa:                                            ; preds = %bb.w, %bb.v
  %i.cl = call i32 @strcasecmp(ptr noundef %i.bw, ptr noundef nonnull @.str.37) #14
  %.not379 = icmp eq i32 %i.cl, 0
  br i1 %.not379, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cm = add nsw i32 %.0286520, 1                ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %5
  %or.cond408 = and i1 %i.bh, %i.cn
  br i1 %or.cond408, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.co = getelementptr i8, ptr %i.bt, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !31
  br label %bb.ax

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cq = call i32 @strcasecmp(ptr noundef %i.bw, ptr noundef nonnull @.str.38) #14
  %.not382 = icmp eq i32 %i.cq, 0
  br i1 %.not382, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.cr = add nsw i32 %.0286520, 1                ; 2 uses
  %i.cs = icmp slt i32 %i.cr, %5
  %or.cond410 = and i1 %i.bh, %i.cs
  br i1 %or.cond410, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ct = getelementptr i8, ptr %i.bt, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !31
  br label %bb.ax

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not584, label %bb.ax, label %.thread

.thread:                                          ; preds = %bb.ad, %bb.ag
  %i.cv = call i32 @strcasecmp(ptr noundef %i.bw, ptr noundef nonnull @.str.39) #14
  %.not388 = icmp eq i32 %i.cv, 0
  br i1 %.not388, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %.thread
  %i.cw = add nsw i32 %.0286520, 1                ; 3 uses
  %i.cx = icmp sge i32 %i.cw, %5
  %i.cy = icmp ne i32 %.0307515, 0
  %i.cz = or i1 %.not386, %i.cx
  %or.cond459 = select i1 %i.cz, i1 true, i1 %i.cy
  br i1 %or.cond459, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.bk, label %bb.ax, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = getelementptr i8, ptr %i.bt, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !31
  %i.dc = call i32 @longLatFromMember(ptr noundef nonnull %i.l, ptr noundef %i.db, ptr noundef nonnull %i.bl)
  %i.dd = icmp eq i32 %i.dc, -1
  br i1 %i.dd, label %bb.ak, label %bb.ax

bb.ak:                                            ; preds = %bb.aj
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #13
  br label %.thread445

bb.al:                                            ; preds = %bb.ah, %.thread
  %i.de = call i32 @strcasecmp(ptr noundef %i.bw, ptr noundef nonnull @.str.40) #14
  %.not389 = icmp eq i32 %i.de, 0
  br i1 %.not389, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.df = add nsw i32 %.0286520, 2                ; 2 uses
  %i.dg = icmp sge i32 %i.df, %5
  %i.dh = icmp ne i32 %.0312514, 0
  %i.di = or i1 %.not386, %i.dg
  %or.cond460 = select i1 %i.di, i1 true, i1 %i.dh
  br i1 %or.cond460, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bm
  %i.dk = sext i32 %.0286520 to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = call i32 @extractLongLatOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.bl)
  %i.do = icmp eq i32 %i.dn, -1
  br i1 %i.do, label %.thread445, label %bb.ax

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.dp = call i32 @strcasecmp(ptr noundef %i.bw, ptr noundef nonnull @.str.41) #14
  %.not390 = icmp eq i32 %i.dp, 0
  br i1 %.not390, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.dq = add nsw i32 %.0286520, 2                ; 2 uses
  %i.dr = icmp sge i32 %i.dq, %5
  %i.ds = icmp ne i32 %.0297517, 0
  %i.dt = or i1 %.not386, %i.dr
  %or.cond461 = select i1 %i.dt, i1 true, i1 %i.ds
  br i1 %or.cond461, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bm
  %i.dv = sext i32 %.0286520 to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = call i32 @extractDistanceOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo)
  %.not391 = icmp eq i32 %i.dy, 0
  br i1 %.not391, label %bb.ar, label %.thread445

bb.ar:                                            ; preds = %bb.aq
  store i32 1, ptr %3, align 8, !tbaa !35
  br label %bb.ax

bb.as:                                            ; preds = %bb.ap, %bb.ao
  %i.dz = call i32 @strcasecmp(ptr noundef %i.bw, ptr noundef nonnull @.str.42) #14
  %.not392 = icmp eq i32 %i.dz, 0
  br i1 %.not392, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ea = add nsw i32 %.0286520, 3                ; 2 uses
  %i.eb = icmp sge i32 %i.ea, %5
  %i.ec = icmp ne i32 %.0302516, 0
  %i.ed = or i1 %.not386, %i.eb
  %or.cond462 = select i1 %i.ed, i1 true, i1 %i.ec
  br i1 %or.cond462, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bm
  %i.ef = sext i32 %.0286520 to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = call i32 @extractBoxOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.eh, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bo)
  %.not393 = icmp eq i32 %i.ei, 0
  br i1 %.not393, label %bb.av, label %.thread445

bb.av:                                            ; preds = %bb.au
  store i32 2, ptr %3, align 8, !tbaa !35
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at, %bb.as
  %i.ej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !67
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ej) #13
  br label %.thread445

bb.ax:                                            ; preds = %bb.an, %bb.ai, %bb.aj, %bb.ag, %bb.y, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.ac, %bb.av, %bb.ar, %bb.af
  %.3344.ph = phi ptr [ %.1342509, %bb.ai ], [ %.1342509, %bb.p ], [ %.1342509, %bb.q ], [ %.1342509, %bb.r ], [ %.1342509, %bb.s ], [ %.1342509, %bb.t ], [ %.1342509, %bb.u ], [ %i.cp, %bb.ac ], [ %i.cu, %bb.af ], [ %.1342509, %bb.y ], [ %.1342509, %bb.ag ], [ %.1342509, %bb.aj ], [ %.1342509, %bb.ar ], [ %.1342509, %bb.av ], [ %.1342509, %bb.an ] ; 2 uses
  %.2338.ph = phi i32 [ %.0336510, %bb.ai ], [ %.0336510, %bb.p ], [ %.0336510, %bb.q ], [ %.0336510, %bb.r ], [ %.0336510, %bb.s ], [ %.0336510, %bb.t ], [ %.0336510, %bb.u ], [ 0, %bb.ac ], [ 1, %bb.af ], [ %.0336510, %bb.y ], [ 1, %bb.ag ], [ %.0336510, %bb.aj ], [ %.0336510, %bb.ar ], [ %.0336510, %bb.av ], [ %.0336510, %bb.an ] ; 2 uses
  %.2329.ph = phi i32 [ %.0327511, %bb.ai ], [ 1, %bb.p ], [ %.0327511, %bb.q ], [ %.0327511, %bb.r ], [ %.0327511, %bb.s ], [ %.0327511, %bb.t ], [ %.0327511, %bb.u ], [ %.0327511, %bb.ac ], [ %.0327511, %bb.af ], [ %.0327511, %bb.y ], [ %.0327511, %bb.ag ], [ %.0327511, %bb.aj ], [ %.0327511, %bb.ar ], [ %.0327511, %bb.av ], [ %.0327511, %bb.an ] ; 2 uses
  %.2324.ph = phi i32 [ %.0322512, %bb.ai ], [ %.0322512, %bb.p ], [ 1, %bb.q ], [ %.0322512, %bb.r ], [ %.0322512, %bb.s ], [ %.0322512, %bb.t ], [ %.0322512, %bb.u ], [ %.0322512, %bb.ac ], [ %.0322512, %bb.af ], [ %.0322512, %bb.y ], [ %.0322512, %bb.ag ], [ %.0322512, %bb.aj ], [ %.0322512, %bb.ar ], [ %.0322512, %bb.av ], [ %.0322512, %bb.an ] ; 2 uses
  %.2319.ph = phi i32 [ %.0317513, %bb.ai ], [ %.0317513, %bb.p ], [ %.0317513, %bb.q ], [ 1, %bb.r ], [ %.0317513, %bb.s ], [ %.0317513, %bb.t ], [ %.0317513, %bb.u ], [ %.0317513, %bb.ac ], [ %.0317513, %bb.af ], [ %.0317513, %bb.y ], [ %.0317513, %bb.ag ], [ %.0317513, %bb.aj ], [ %.0317513, %bb.ar ], [ %.0317513, %bb.av ], [ %.0317513, %bb.an ] ; 2 uses
  %.2314.ph = phi i32 [ 1, %bb.ai ], [ %.0312514, %bb.p ], [ %.0312514, %bb.q ], [ %.0312514, %bb.r ], [ %.0312514, %bb.s ], [ %.0312514, %bb.t ], [ %.0312514, %bb.u ], [ %.0312514, %bb.ac ], [ %.0312514, %bb.af ], [ %.0312514, %bb.y ], [ %.0312514, %bb.ag ], [ 1, %bb.aj ], [ %.0312514, %bb.ar ], [ %.0312514, %bb.av ], [ 0, %bb.an ] ; 2 uses
  %.2309.ph = phi i32 [ 0, %bb.ai ], [ %.0307515, %bb.p ], [ %.0307515, %bb.q ], [ %.0307515, %bb.r ], [ %.0307515, %bb.s ], [ %.0307515, %bb.t ], [ %.0307515, %bb.u ], [ %.0307515, %bb.ac ], [ %.0307515, %bb.af ], [ %.0307515, %bb.y ], [ %.0307515, %bb.ag ], [ 0, %bb.aj ], [ %.0307515, %bb.ar ], [ %.0307515, %bb.av ], [ 1, %bb.an ] ; 2 uses
  %.2304.ph = phi i32 [ %.0302516, %bb.ai ], [ %.0302516, %bb.p ], [ %.0302516, %bb.q ], [ %.0302516, %bb.r ], [ %.0302516, %bb.s ], [ %.0302516, %bb.t ], [ %.0302516, %bb.u ], [ %.0302516, %bb.ac ], [ %.0302516, %bb.af ], [ %.0302516, %bb.y ], [ %.0302516, %bb.ag ], [ %.0302516, %bb.aj ], [ 1, %bb.ar ], [ 0, %bb.av ], [ %.0302516, %bb.an ] ; 2 uses
  %.2299.ph = phi i32 [ %.0297517, %bb.ai ], [ %.0297517, %bb.p ], [ %.0297517, %bb.q ], [ %.0297517, %bb.r ], [ %.0297517, %bb.s ], [ %.0297517, %bb.t ], [ %.0297517, %bb.u ], [ %.0297517, %bb.ac ], [ %.0297517, %bb.af ], [ %.0297517, %bb.y ], [ %.0297517, %bb.ag ], [ %.0297517, %bb.aj ], [ 0, %bb.ar ], [ 1, %bb.av ], [ %.0297517, %bb.an ] ; 2 uses
  %.2294.ph = phi i32 [ %.0292518, %bb.ai ], [ %.0292518, %bb.p ], [ %.0292518, %bb.q ], [ %.0292518, %bb.r ], [ %.0292518, %bb.s ], [ 1, %bb.t ], [ 2, %bb.u ], [ %.0292518, %bb.ac ], [ %.0292518, %bb.af ], [ %.0292518, %bb.y ], [ %.0292518, %bb.ag ], [ %.0292518, %bb.aj ], [ %.0292518, %bb.ar ], [ %.0292518, %bb.av ], [ %.0292518, %bb.an ] ; 2 uses
  %.2291.ph = phi i32 [ %.0289519, %bb.ai ], [ %.0289519, %bb.p ], [ %.0289519, %bb.q ], [ %.0289519, %bb.r ], [ 1, %bb.s ], [ %.0289519, %bb.t ], [ %.0289519, %bb.u ], [ %.0289519, %bb.ac ], [ %.0289519, %bb.af ], [ %.0289519, %bb.y ], [ %.0289519, %bb.ag ], [ %.0289519, %bb.aj ], [ %.0289519, %bb.ar ], [ %.0289519, %bb.av ], [ %.0289519, %bb.an ] ; 2 uses
  %.2288.ph = phi i32 [ %i.cw, %bb.ai ], [ %.0286520, %bb.p ], [ %.0286520, %bb.q ], [ %.0286520, %bb.r ], [ %.0286520, %bb.s ], [ %.0286520, %bb.t ], [ %.0286520, %bb.u ], [ %i.cm, %bb.ac ], [ %i.cr, %bb.af ], [ %i.ce, %bb.y ], [ %.0286520, %bb.ag ], [ %i.cw, %bb.aj ], [ %i.dq, %bb.ar ], [ %i.ea, %bb.av ], [ %i.df, %bb.an ]
  %i.ek = add nsw i32 %.2288.ph, 1                ; 2 uses
  %i.el = icmp slt i32 %i.ek, %5
  br i1 %i.el, label %bb.p, label %._crit_edge.loopexit, !llvm.loop !87

._crit_edge.loopexit:                             ; preds = %bb.ax
  %i.em = icmp ne i32 %.2314.ph, 0
  %i.en = icmp ne i32 %.2309.ph, 0
  %i.eo = icmp ne i32 %.2304.ph, 0
  %i.ep = icmp ne i32 %.2299.ph, 0
  %i.eq = icmp eq i32 %.2338.ph, 0
  %i.er = icmp ne i32 %.2329.ph, 0
  %i.es = icmp ne i32 %.2324.ph, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %.5 = phi ptr [ %.0341, %bb.o ], [ %.3344.ph, %._crit_edge.loopexit ] ; 9 uses
  %.4340 = phi i1 [ true, %bb.o ], [ %i.eq, %._crit_edge.loopexit ]
  %.4331 = phi i1 [ false, %bb.o ], [ %i.er, %._crit_edge.loopexit ] ; 4 uses
  %.4326 = phi i1 [ false, %bb.o ], [ %i.es, %._crit_edge.loopexit ] ; 3 uses
  %.4321 = phi i32 [ 0, %bb.o ], [ %.2319.ph, %._crit_edge.loopexit ] ; 2 uses
  %.4316 = phi i1 [ false, %bb.o ], [ %i.em, %._crit_edge.loopexit ]
  %.4311 = phi i1 [ false, %bb.o ], [ %i.en, %._crit_edge.loopexit ]
  %.4306 = phi i1 [ false, %bb.o ], [ %i.eo, %._crit_edge.loopexit ]
  %.4301 = phi i1 [ false, %bb.o ], [ %i.ep, %._crit_edge.loopexit ]
  %.4296 = phi i32 [ 0, %bb.o ], [ %.2294.ph, %._crit_edge.loopexit ] ; 2 uses
  %.4 = phi i32 [ 0, %bb.o ], [ %.2291.ph, %._crit_edge.loopexit ] ; 2 uses
  %.not395 = icmp eq ptr %.5, null                ; 4 uses
  br i1 %.not395, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge
  %or.cond13 = select i1 %.4331, i1 true, i1 %.4326
  %i.et = icmp ne i32 %.4321, 0
  %or.cond15 = select i1 %or.cond13, i1 true, i1 %i.et
  br i1 %or.cond15, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.eu = and i32 %2, 16
  %.not406 = icmp eq i32 %i.eu, 0
  %i.ev = select i1 %.not406, ptr @.str.45, ptr @.str.44
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.ev) #13
  br label %.thread445

bb.ba:                                            ; preds = %bb.ay, %._crit_edge
  %i.ew = and i32 %2, 8
  %i.ex = icmp eq i32 %i.ew, 0                    ; 3 uses
  %or.cond17 = select i1 %i.ex, i1 true, i1 %.4316
  %or.cond19 = select i1 %or.cond17, i1 true, i1 %.4311
  br i1 %or.cond19, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ey = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !31
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !33
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.46, ptr noundef %i.fb) #13
  br label %.thread445

bb.bc:                                            ; preds = %bb.ba
  %or.cond21 = select i1 %i.ex, i1 true, i1 %.4306
  %or.cond23 = select i1 %or.cond21, i1 true, i1 %.4301
  br i1 %or.cond23, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fc = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !31
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !33
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.47, ptr noundef %i.ff) #13
  br label %.thread445

bb.be:                                            ; preds = %bb.bc
  %i.fg = icmp eq i32 %.4, 0
  %i.fh = load i64, ptr %i.c, align 8
  %i.fi = icmp ne i64 %i.fh, 0                    ; 2 uses
  %or.cond25 = select i1 %i.fg, i1 true, i1 %i.fi
  br i1 %or.cond25, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.48) #13
  br label %.thread445

bb.bg:                                            ; preds = %bb.be
  %i.fj = icmp eq ptr %i.l, null
  br i1 %i.fj, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not395, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fk = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.fl = call i32 @dbDelete(ptr noundef %i.fk, ptr noundef nonnull %.5) #13
  %.not405 = icmp eq i32 %i.fl, 0
  br i1 %.not405, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fm = load ptr, ptr %i.e, align 8, !tbaa !68
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.fm, ptr noundef nonnull %.5, ptr noundef null, i32 noundef 1) #13
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !93
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.49, ptr noundef nonnull %.5, i32 noundef %i.fp) #13
  %i.fq = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !114
  %i.fr = add nsw i64 %i.fq, 1
  store i64 %i.fr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !114
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !115
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.fs) #13
  br label %.thread445

bb.bl:                                            ; preds = %bb.bh
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !116
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ft) #13
  br label %.thread445

bb.bm:                                            ; preds = %bb.bg
  %i.fu = icmp ne i32 %.4, 0                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @geohashCalculateAreasByShapeWGS84(ptr dead_on_unwind nonnull writable sret(%struct.GeoHashRadius) align 8 %4, ptr noundef nonnull %3) #13
  %i.fv = call noalias noundef dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #11 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, i8 0, i64 24, i1 false)
  %i.fw = load i64, ptr %i.c, align 8
  %i.fx = select i1 %i.fu, i64 %i.fw, i64 0
  %i.fy = call i32 @membersOfAllNeighbors(ptr noundef nonnull %i.l, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %i.fv, i64 noundef %i.fx) ; 0 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !17 ; 6 uses
  %i.gb = icmp eq i64 %i.ga, 0
  %or.cond31 = and i1 %.not395, %i.gb
  br i1 %or.cond31, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !116
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.gc) #13
  br label %.loopexit

bb.bo:                                            ; preds = %bb.bm
  %not. = xor i1 %i.fi, true
  %i.gd = icmp ne i32 %.4296, 0
  %or.cond27 = select i1 %not., i1 true, i1 %i.gd
  %or.cond29 = select i1 %or.cond27, i1 true, i1 %i.fu
  %spec.store.select32 = select i1 %or.cond29, i32 %.4296, i32 1
  %i.ge = load i64, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  %i.gg = call i64 @llvm.smin.i64(i64 %i.ga, i64 %i.ge)
  %i.gh = select i1 %i.gf, i64 %i.ga, i64 %i.gg   ; 11 uses
  switch i32 %spec.store.select32, label %bb.bp [
    i32 0, label %bb.bt
    i32 1, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %.0283 = phi ptr [ @sort_gp_desc, %bb.bp ], [ @sort_gp_asc, %bb.bo ] ; 2 uses
  %i.gi = icmp eq i64 %i.gh, %i.ga
  %i.gj = load ptr, ptr %i.fv, align 8, !tbaa !19 ; 2 uses
  br i1 %i.gi, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @qsort(ptr noundef %i.gj, i64 noundef %i.ga, i64 noundef 40, ptr noundef nonnull %.0283) #13
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.gk = add nsw i64 %i.gh, -1
  call void @pqsort(ptr noundef %i.gj, i64 noundef %i.ga, i64 noundef 40, ptr noundef nonnull %.0283, i64 noundef 0, i64 noundef %i.gk) #13
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bo
  br i1 %.not395, label %bb.bu, label %bb.ce

bb.bu:                                            ; preds = %bb.bt
  %.not402 = icmp eq i32 %.4321, 0                ; 2 uses
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.gh) #13
  %i.gl = icmp sgt i64 %i.gh, 0
  br i1 %i.gl, label %.lr.ph542, label %.loopexit

.lr.ph542:                                        ; preds = %bb.bu
  %spec.select = zext i1 %.4331 to i64
  %i.gm = select i1 %.4331, i64 2, i64 1
  %.1285 = select i1 %.not402, i64 %spec.select, i64 %i.gm
  %i.gn = zext i1 %.4326 to i64
  %.2 = add nuw nsw i64 %.1285, %i.gn             ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.not404 = icmp eq i64 %.2, 0
  %i.gp = add nuw nsw i64 %.2, 1
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph542, %bb.cd
  %indvars.iv551 = phi i64 [ 0, %.lr.ph542 ], [ %indvars.iv.next552, %bb.cd ] ; 2 uses
  %i.gq = load ptr, ptr %i.fv, align 8, !tbaa !19
  %i.gr = getelementptr inbounds nuw [40 x i8], ptr %i.gq, i64 %indvars.iv551 ; 5 uses
  %i.gs = load double, ptr %i.go, align 8, !tbaa !37
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 3 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !26
  %i.gv = fdiv double %i.gu, %i.gs
  store double %i.gv, ptr %i.gt, align 8, !tbaa !26
  br i1 %.not404, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.gp) #13
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 32 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !27
  call void @addReplyBulkSds(ptr noundef %0, ptr noundef %i.gx) #13
  store ptr null, ptr %i.gw, align 8, !tbaa !27
  br i1 %.4331, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.gy = load double, ptr %i.gt, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.gz = call i32 @fixedpoint_d2string(ptr noundef nonnull %i.a, i64 noundef 128, double noundef %i.gy, i32 noundef 4) #13
  %i.ha = sext i32 %i.gz to i64
  call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.ha) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %.4326, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !28
end_hunk_0
