inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0_@hotkeysGetMemoryUsage:bb.a

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i64 @chkTopKGetMemoryUsage(ptr noundef nonnull %i.e) #12
  %i.g = add i64 %i.f, %.0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i64 [ %i.g, %bb.e ], [ %.0, %bb.d ]   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %.not18 = icmp eq ptr %i.i, null
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = add i64 %.1, 4
  %i.n = add i64 %i.m, %i.l
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  %.011 = phi i64 [ 0, %bb.a ], [ %i.n, %bb.g ], [ %.1, %bb.f ]
  ret i64 %.011
}

declare i64 @chkTopKGetMemoryUsage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @hotkeysCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [22 x ptr], align 16              ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [128 x i8], align 16              ; 5 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca [64 x i8], align 16               ; 5 uses
  %1 = alloca %struct.rusage, align 8             ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !105  ; 5 uses
  %i.k = icmp slt i32 %i.j, 2
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #12
  br label %bb.cw

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98   ; 5 uses
  %i.r = tail call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.4) #15
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.a, ptr noundef nonnull align 16 dereferenceable(176) @__const.hotkeysCommand.help, i64 176, i1 false)
  call void @addReplyHelp(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.cw

bb.e:                                             ; preds = %bb.c
  %i.s = tail call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.26) #15
  %.not303 = icmp eq i32 %i.s, 0
  br i1 %.not303, label %bb.f, label %bb.at

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !106 ; 2 uses
  %.not304 = icmp eq ptr %i.t, null
  br i1 %.not304, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.v = load i32, ptr %i.u, align 8, !tbaa !30
  %.not305 = icmp eq i32 %i.v, 0
  br i1 %.not305, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #12
  br label %bb.cw

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.w = icmp samesign ult i32 %i.j, 4
  br i1 %i.w, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !98
  %i.ab = tail call i32 @strcasecmp(ptr noundef %i.aa, ptr noundef nonnull @.str.28) #15
  %.not306 = icmp eq i32 %i.ab, 0
  br i1 %.not306, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #12
  br label %bb.cw

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.30, i32 noundef 2) #12 ; 0 uses
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97
  %i.ag = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.af, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %.not307 = icmp eq i32 %i.ag, 0
  br i1 %.not307, label %.preheader389, label %.critedge357

.preheader389:                                    ; preds = %bb.l
  %i.ah = load i32, ptr %i.i, align 8, !tbaa !105 ; 4 uses
  %i.ai = load i64, ptr %i.b, align 8             ; 4 uses
  %i.aj = icmp sgt i32 %i.ah, 4
  %i.ak = icmp sgt i64 %i.ai, 0
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph460, label %._crit_edge461.thread

.lr.ph460:                                        ; preds = %.preheader389
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.an = zext nneg i32 %i.ah to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph460, %bb.s
  %indvars.iv533 = phi i64 [ 0, %.lr.ph460 ], [ %indvars.iv.next534, %bb.s ]
  %indvars.iv531 = phi i64 [ 4, %.lr.ph460 ], [ %indvars.iv.next532, %bb.s ] ; 2 uses
  %.0251459 = phi i64 [ 0, %.lr.ph460 ], [ %.1252, %bb.s ] ; 5 uses
  %.0277456 = phi i32 [ 0, %.lr.ph460 ], [ %.1278, %bb.s ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv531
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !97
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !98 ; 2 uses
  %i.as = call i32 @strcasecmp(ptr noundef %i.ar, ptr noundef nonnull @.str.31) #15
  %.not323 = icmp eq i32 %i.as, 0
  br i1 %.not323, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.at = and i64 %.0251459, 1
  %.not324 = icmp eq i64 %i.at, 0
  br i1 %.not324, label %bb.o, label %.critedge357.sink.split

bb.o:                                             ; preds = %bb.n
  %i.au = or disjoint i64 %.0251459, 1
  %i.av = add nsw i32 %.0277456, 1
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.aw = call i32 @strcasecmp(ptr noundef %i.ar, ptr noundef nonnull @.str.33) #15
  %.not325 = icmp eq i32 %i.aw, 0
  br i1 %.not325, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ax = and i64 %.0251459, 2
  %.not326 = icmp eq i64 %i.ax, 0
  br i1 %.not326, label %bb.r, label %.critedge357.sink.split

bb.r:                                             ; preds = %bb.q
  %i.ay = or disjoint i64 %.0251459, 2
  %i.az = add nsw i32 %.0277456, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.o
  %.1278 = phi i32 [ %.0277456, %bb.p ], [ %i.az, %bb.r ], [ %i.av, %bb.o ] ; 2 uses
  %.1252 = phi i64 [ %.0251459, %bb.p ], [ %i.ay, %bb.r ], [ %i.au, %bb.o ] ; 2 uses
  %indvars.iv.next534 = add nuw nsw i64 %indvars.iv533, 1 ; 3 uses
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1 ; 3 uses
  %i.ba = icmp samesign ult i64 %indvars.iv.next532, %i.an
  %i.bb = icmp sgt i64 %i.ai, %indvars.iv.next534
  %i.bc = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %i.bc, label %bb.m, label %._crit_edge461, !llvm.loop !107

._crit_edge461:                                   ; preds = %bb.s
  %i.bd = trunc nuw nsw i64 %indvars.iv.next532 to i32 ; 2 uses
  %.not308 = icmp eq i64 %i.ai, %indvars.iv.next534
  br i1 %.not308, label %bb.t, label %.critedge357.sink.split

._crit_edge461.thread:                            ; preds = %.preheader389
  %.not308582 = icmp eq i64 %i.ai, 0
  br i1 %.not308582, label %.thread586, label %.critedge357.sink.split

bb.t:                                             ; preds = %._crit_edge461
  %i.be = icmp eq i32 %.1278, 0
  br i1 %i.be, label %.thread586, label %bb.u

.thread586:                                       ; preds = %._crit_edge461.thread, %bb.t
  br label %.critedge357.sink.split

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i64 0, ptr %i.d, align 8, !tbaa !63
  %.not385479 = icmp sgt i32 %i.ah, %i.bd
  br i1 %.not385479, label %.lr.ph485, label %._crit_edge486

.lr.ph485:                                        ; preds = %bb.u, %bb.as
  %i.bf = phi i32 [ %i.dm, %bb.as ], [ %i.ah, %bb.u ]
  %.1254483 = phi i32 [ %.8261, %bb.as ], [ %i.bd, %bb.u ] ; 7 uses
  %.0280482 = phi i32 [ %.3283, %bb.as ], [ 10, %bb.u ] ; 3 uses
  %.0284481 = phi i32 [ %.3287, %bb.as ], [ 1, %bb.u ] ; 3 uses
  %.0288480 = phi ptr [ %.6294, %bb.as ], [ null, %bb.u ] ; 9 uses
  %.neg = add nsw i32 %.1254483, 1                ; 3 uses
  %.not309 = icmp eq i32 %i.bf, %.neg
  br i1 %.not309, label %.critedge350, label %bb.v

bb.v:                                             ; preds = %.lr.ph485
  %i.bg = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.bh = sext i32 %.1254483 to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !97
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !98 ; 4 uses
  %i.bm = call i32 @strcasecmp(ptr noundef %i.bl, ptr noundef nonnull @.str.37) #15
  %.not310 = icmp eq i32 %i.bm, 0
  br i1 %.not310, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.bn = getelementptr i8, ptr %i.bi, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !97
  %i.bp = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.bo, i64 noundef 1, i64 noundef 64, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.38) #12
  %.not311 = icmp eq i32 %i.bp, 0
  br i1 %.not311, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.w
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !63
  %i.br = trunc i64 %i.bq to i32
  %2 = add nsw i32 %.1254483, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %bb.as

bb.x:                                             ; preds = %bb.w
  call void @slotRangeArrayFree(ptr noundef %.0288480) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %.thread373

bb.y:                                             ; preds = %bb.v
  %i.bs = call i32 @strcasecmp(ptr noundef %i.bl, ptr noundef nonnull @.str.39) #15
  %.not312 = icmp eq i32 %i.bs, 0
  br i1 %.not312, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr i8, ptr %i.bi, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !97
  %i.bv = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.bu, i64 noundef 1, i64 noundef 1000000, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.40) #12
  %.not313 = icmp eq i32 %i.bv, 0
  br i1 %.not313, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @slotRangeArrayFree(ptr noundef %.0288480) #12
  br label %.thread373

bb.ab:                                            ; preds = %bb.z
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !63
  %i.bx = mul nsw i64 %i.bw, 1000
  store i64 %i.bx, ptr %i.d, align 8, !tbaa !63
  %3 = add nsw i32 %.1254483, 2
  br label %bb.as

.critedge:                                        ; preds = %bb.y
  %i.by = call i32 @strcasecmp(ptr noundef %i.bl, ptr noundef nonnull @.str.41) #15
  %.not314 = icmp eq i32 %i.by, 0
  br i1 %.not314, label %bb.ac, label %.critedge349

bb.ac:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.bz = getelementptr i8, ptr %i.bi, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !97
  %i.cb = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.ca, i64 noundef 1, i64 noundef 2147483647, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.42) #12
  %.not315 = icmp eq i32 %i.cb, 0
  br i1 %.not315, label %.thread367, label %bb.ad

.thread367:                                       ; preds = %bb.ac
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !63
  %i.cd = trunc i64 %i.cc to i32
  %4 = add nsw i32 %.1254483, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %bb.as

bb.ad:                                            ; preds = %bb.ac
  call void @slotRangeArrayFree(ptr noundef %.0288480) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %.thread373

.critedge349:                                     ; preds = %.critedge
  %i.ce = call i32 @strcasecmp(ptr noundef %i.bl, ptr noundef nonnull @.str.43) #15
  %.not316 = icmp eq i32 %i.ce, 0
  br i1 %.not316, label %bb.ae, label %.critedge350

bb.ae:                                            ; preds = %.critedge349
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !108
  %.not317 = icmp eq i32 %i.cf, 0
  br i1 %.not317, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.44) #12
  br label %.thread373

bb.ag:                                            ; preds = %bb.ae
  %.not318 = icmp eq ptr %.0288480, null
  br i1 %.not318, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.45) #12
  call void @slotRangeArrayFree(ptr noundef nonnull %.0288480) #12
  br label %.thread373

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.cg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 64, ptr noundef nonnull @.str.46, i32 noundef 16384) #12 ; 0 uses
  %i.ch = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.ci = sext i32 %.neg to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !97
  %i.cl = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.ck, i64 noundef 1, i64 noundef 16384, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #12
  %.not319 = icmp eq i32 %i.cl, 0
  br i1 %.not319, label %bb.aj, label %.critedge354.thread

bb.aj:                                            ; preds = %bb.ai
  %i.cm = load i64, ptr %i.g, align 8, !tbaa !63  ; 4 uses
  %i.cn = trunc i64 %i.cm to i32                  ; 3 uses
  %i.co = add nsw i32 %.neg, %i.cn
  %i.cp = load i32, ptr %i.i, align 8, !tbaa !105
  %.not320 = icmp slt i32 %i.co, %i.cp
  br i1 %.not320, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.47) #12
  br label %.critedge354.thread

bb.al:                                            ; preds = %bb.aj
  %sext = shl i64 %i.cm, 32                       ; 2 uses
  %i.cq = ashr exact i64 %sext, 32                ; 2 uses
  %i.cr = ashr exact i64 %sext, 30
  %i.cs = call noalias ptr @zmalloc(i64 noundef %i.cr) #14 ; 9 uses
  %.not386471 = icmp sgt i32 %i.cn, 0
  br i1 %.not386471, label %.lr.ph474, label %.critedge355.thread

.critedge355.thread:                              ; preds = %bb.al
  call void @qsort(ptr noundef %i.cs, i64 noundef %i.cq, i64 noundef 4, ptr noundef nonnull @slotCompare) #12
  br label %.critedge354

.lr.ph474:                                        ; preds = %bb.al
  %wide.trip.count546 = and i64 %i.cm, 2147483647
  %i.ct = sext i32 %.1254483 to i64
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph474, %.critedge352
  %indvars.iv543 = phi i64 [ 0, %.lr.ph474 ], [ %indvars.iv.next544, %.critedge352 ] ; 5 uses
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.cv = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv543
  %i.cw = getelementptr [8 x i8], ptr %i.cv, i64 %i.ct
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !97
  %i.cz = call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %i.cy) #12 ; 5 uses
  %i.da = icmp eq i32 %i.cz, -1
  br i1 %i.da, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @zfree(ptr noundef %i.cs) #12
  br label %.critedge354.thread

bb.ao:                                            ; preds = %bb.am
  %i.db = call ptr @getMyClusterNode() #12
  %i.dc = call i32 @clusterNodeCoversSlot(ptr noundef %i.db, i32 noundef %i.cz) #12
  %.not321 = icmp eq i32 %i.dc, 0
  br i1 %.not321, label %bb.ap, label %.preheader

.preheader:                                       ; preds = %bb.ao
  %.not322467.not = icmp eq i64 %indvars.iv543, 0
  br i1 %.not322467.not, label %.critedge352, label %.lr.ph469

bb.ap:                                            ; preds = %bb.ao
  %i.dd = sext i32 %i.cz to i64
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.48, i64 noundef %i.dd) #12
  call void @zfree(ptr noundef %i.cs) #12
  br label %.critedge354.thread

bb.aq:                                            ; preds = %.lr.ph469
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1 ; 2 uses
  %exitcond542.not = icmp eq i64 %indvars.iv.next539, %indvars.iv543
  br i1 %exitcond542.not, label %.critedge352, label %.lr.ph469, !llvm.loop !109

.lr.ph469:                                        ; preds = %.preheader, %bb.aq
  %indvars.iv538 = phi i64 [ %indvars.iv.next539, %bb.aq ], [ 0, %.preheader ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv538
  %i.df = load i32, ptr %i.de, align 4, !tbaa !9
  %i.dg = icmp eq i32 %i.df, %i.cz
  br i1 %i.dg, label %bb.ar, label %bb.aq

bb.ar:                                            ; preds = %.lr.ph469
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.49) #12
  call void @zfree(ptr noundef nonnull %i.cs) #12
  br label %.critedge354.thread

.critedge352:                                     ; preds = %bb.aq, %.preheader
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv543
  store i32 %i.cz, ptr %i.dh, align 4, !tbaa !9
  %indvars.iv.next544 = add nuw nsw i64 %indvars.iv543, 1 ; 2 uses
  %exitcond547.not = icmp eq i64 %indvars.iv.next544, %wide.trip.count546
  br i1 %exitcond547.not, label %.critedge355, label %bb.am, !llvm.loop !110

.critedge355:                                     ; preds = %.critedge352
  call void @qsort(ptr noundef nonnull %i.cs, i64 noundef %i.cq, i64 noundef 4, ptr noundef nonnull @slotCompare) #12
  %wide.trip.count551 = and i64 %i.cm, 2147483647
  br label %.lr.ph477

.lr.ph477:                                        ; preds = %.critedge355, %.lr.ph477
  %indvars.iv548 = phi i64 [ 0, %.critedge355 ], [ %indvars.iv.next549, %.lr.ph477 ] ; 2 uses
  %.1289475 = phi ptr [ null, %.critedge355 ], [ %i.dk, %.lr.ph477 ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv548
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !9
  %i.dk = call ptr @slotRangeArrayAppend(ptr noundef %.1289475, i32 noundef %i.dj) #12 ; 2 uses
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %exitcond552.not = icmp eq i64 %indvars.iv.next549, %wide.trip.count551
  br i1 %exitcond552.not, label %.critedge354, label %.lr.ph477, !llvm.loop !111

.critedge354.thread:                              ; preds = %bb.ai, %bb.ak, %bb.ar, %bb.an, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %.thread373

.critedge354:                                     ; preds = %.lr.ph477, %.critedge355.thread
  %.1289.lcssa = phi ptr [ null, %.critedge355.thread ], [ %i.dk, %.lr.ph477 ]
  call void @zfree(ptr noundef %i.cs) #12
  %5 = add i32 %.1254483, 2
  %i.dl = add i32 %5, %i.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %bb.as

.critedge350:                                     ; preds = %.lr.ph485, %.critedge349
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.50) #12
  call void @slotRangeArrayFree(ptr noundef %.0288480) #12
  br label %.thread373

bb.as:                                            ; preds = %.critedge354, %bb.ab, %.thread, %.thread367
  %.6294 = phi ptr [ %.0288480, %.thread367 ], [ %.0288480, %bb.ab ], [ %.0288480, %.thread ], [ %.1289.lcssa, %.critedge354 ] ; 2 uses
  %.3287 = phi i32 [ %i.cd, %.thread367 ], [ %.0284481, %bb.ab ], [ %.0284481, %.thread ], [ %.0284481, %.critedge354 ] ; 2 uses
  %.3283 = phi i32 [ %.0280482, %.thread367 ], [ %.0280482, %bb.ab ], [ %i.br, %.thread ], [ %.0280482, %.critedge354 ] ; 2 uses
  %.8261 = phi i32 [ %4, %.thread367 ], [ %3, %bb.ab ], [ %2, %.thread ], [ %i.dl, %.critedge354 ] ; 2 uses
  %i.dm = load i32, ptr %i.i, align 8, !tbaa !105 ; 2 uses
  %.not385 = icmp slt i32 %.8261, %i.dm
  br i1 %.not385, label %.lr.ph485, label %._crit_edge486.loopexit, !llvm.loop !112

._crit_edge486.loopexit:                          ; preds = %bb.as
  %.pre562 = load i64, ptr %i.d, align 8, !tbaa !63
  %i.dn = trunc i64 %.pre562 to i32
  br label %._crit_edge486

._crit_edge486:                                   ; preds = %._crit_edge486.loopexit, %bb.u
  %i.do = phi i32 [ 0, %bb.u ], [ %i.dn, %._crit_edge486.loopexit ]
  %.0288.lcssa = phi ptr [ null, %bb.u ], [ %.6294, %._crit_edge486.loopexit ]
  %.0284.lcssa = phi i32 [ 1, %bb.u ], [ %.3287, %._crit_edge486.loopexit ]
  %.0280.lcssa = phi i32 [ 10, %bb.u ], [ %.3283, %._crit_edge486.loopexit ]
  %i.dp = call ptr @hotkeyStatsCreate(i32 noundef %.0280.lcssa, i32 noundef %i.do, i32 noundef %.0284.lcssa, ptr noundef %.0288.lcssa, i64 noundef %.1252)
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !106
  call void @hotkeyStatsRelease(ptr noundef %i.dq)
  store ptr %i.dp, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !106
  %i.dr = load ptr, ptr @shared, align 8, !tbaa !113
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.dr) #12
  br label %.thread373

.thread373:                                       ; preds = %bb.x, %bb.aa, %bb.ad, %bb.af, %.critedge354.thread, %bb.ah, %.critedge350, %._crit_edge486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.cw

bb.at:                                            ; preds = %bb.e
  %i.ds = tail call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.19) #15
  %.not327 = icmp eq i32 %i.ds, 0
  br i1 %.not327, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %.not328 = icmp eq i32 %i.j, 2
  br i1 %.not328, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.51) #12
  br label %bb.cw

bb.aw:                                            ; preds = %bb.au
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !106 ; 4 uses
  %.not329 = icmp eq ptr %i.dt, null
  br i1 %.not329, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 120 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !30
  %.not330 = icmp eq i32 %i.dv, 0
  br i1 %.not330, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  tail call void @addReplyNull(ptr noundef nonnull %0) #12
  br label %bb.cw

bb.az:                                            ; preds = %bb.ax
  store i32 0, ptr %i.du, align 8, !tbaa !30
  %i.dw = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8064), align 8, !tbaa !31
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !61
  %i.dz = sub nsw i64 %i.dw, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 128
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !27
  %i.eb = load ptr, ptr @shared, align 8, !tbaa !113
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.eb) #12
  br label %bb.cw

bb.ba:                                            ; preds = %bb.at
  %i.ec = tail call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.21) #15
  %.not331 = icmp eq i32 %i.ec, 0
  br i1 %.not331, label %bb.bb, label %bb.co

bb.bb:                                            ; preds = %bb.ba
  %.not332 = icmp eq i32 %i.j, 2
  br i1 %.not332, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.52) #12
  br label %bb.cw

bb.bd:                                            ; preds = %bb.bb
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !106 ; 6 uses
  %.not333 = icmp eq ptr %i.ed, null
  br i1 %.not333, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call void @addReplyNull(ptr noundef nonnull %0) #12
  br label %bb.cw

bb.bf:                                            ; preds = %bb.bd
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 136
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !25 ; 2 uses
  %.not334 = icmp eq i64 %i.ef, 0
  br i1 %.not334, label %bb.bg, label %bb.bh, !prof !13

bb.bg:                                            ; preds = %bb.bf
  tail call void @_serverAssert(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 505) #12
  tail call void @abort() #13
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 120
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !30
  %.not335 = icmp eq i32 %i.eh, 0
  br i1 %.not335, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 128
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !27
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.ek = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8064), align 8, !tbaa !31
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !61
  %i.en = sub nsw i64 %i.ek, %i.em
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0273.in = phi i64 [ %i.en, %bb.bj ], [ %i.ej, %bb.bi ]
  %i.eo = and i64 %i.ef, 1
  %.not336 = icmp eq i64 %i.eo, 0
  br i1 %.not336, label %.loopexit390, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.ep = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %1) #12 ; 0 uses
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !106 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 80
  %i.es = load i64, ptr %1, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = load i64, ptr %i.er, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = sub i64 %i.es, %i.ev
  %i.ez = sub nsw i64 %i.eu, %i.ex                ; 4 uses
  %i.fa = icmp slt i64 %i.ez, 0
  %i.fb = add nsw i64 %i.ez, 1000000
  %.lobit.i = ashr i64 %i.ez, 63
  %.07.i = add nsw i64 %i.ey, %.lobit.i
  %.0.i = select i1 %i.fa, i64 %i.fb, i64 %i.ez
  %i.fc = mul nsw i64 %.07.i, 1000
  %i.fd = sdiv i64 %.0.i, 1000
  %i.fe = add nsw i64 %i.fc, %i.fd                ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 96
  %i.fh = load i64, ptr %i.ff, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = load i64, ptr %i.fg, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eq, i64 104
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = sub i64 %i.fh, %i.fk
  %i.fo = sub nsw i64 %i.fj, %i.fm                ; 4 uses
  %i.fp = icmp slt i64 %i.fo, 0
  %i.fq = add nsw i64 %i.fo, 1000000
  %.lobit.i358 = ashr i64 %i.fo, 63
  %.07.i359 = add nsw i64 %i.fn, %.lobit.i358
  %.0.i360 = select i1 %i.fp, i64 %i.fq, i64 %i.fo
  %i.fr = mul nsw i64 %.07.i359, 1000
  %i.fs = sdiv i64 %.0.i360, 1000
  %i.ft = add nsw i64 %i.fr, %i.fs                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.eq, i64 136
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25
  %.pre563 = and i64 %.pre, 1
  %i.fu = icmp eq i64 %.pre563, 0
  br i1 %i.fu, label %.loopexit390, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fv = load ptr, ptr %i.eq, align 8, !tbaa !14
  %i.fw = call ptr @chkTopKList(ptr noundef %i.fv) #12 ; 4 uses
  %i.fx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !106 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 112
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !26 ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph.preheader, label %.loopexit390

.lr.ph.preheader:                                 ; preds = %bb.bm
  %wide.trip.count = zext nneg i32 %i.fz to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bn
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.bn ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %indvars.iv
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !115
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %.loopexit390.loopexit.split.loop.exit613, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit390, label %.lr.ph, !llvm.loop !117

.loopexit390.loopexit.split.loop.exit613:         ; preds = %.lr.ph
  %indvars513.le = trunc i64 %indvars.iv to i32
  br label %.loopexit390

.loopexit390:                                     ; preds = %bb.bn, %.loopexit390.loopexit.split.loop.exit613, %bb.bk, %bb.bm, %bb.bl
  %.0271595 = phi i64 [ %i.ft, %bb.bl ], [ %i.ft, %bb.bm ], [ 0, %bb.bk ], [ %i.ft, %.loopexit390.loopexit.split.loop.exit613 ], [ %i.ft, %bb.bn ]
  %.0272594 = phi i64 [ %i.fe, %bb.bl ], [ %i.fe, %bb.bm ], [ 0, %bb.bk ], [ %i.fe, %.loopexit390.loopexit.split.loop.exit613 ], [ %i.fe, %bb.bn ]
  %i.ge = phi ptr [ %i.eq, %bb.bl ], [ %i.fx, %bb.bm ], [ %i.ed, %bb.bk ], [ %i.fx, %.loopexit390.loopexit.split.loop.exit613 ], [ %i.fx, %bb.bn ] ; 3 uses
  %.0269 = phi ptr [ null, %bb.bl ], [ %i.fw, %bb.bm ], [ null, %bb.bk ], [ %i.fw, %.loopexit390.loopexit.split.loop.exit613 ], [ %i.fw, %bb.bn ] ; 2 uses
  %.1267 = phi i32 [ 0, %bb.bl ], [ 0, %bb.bm ], [ 0, %bb.bk ], [ %indvars513.le, %.loopexit390.loopexit.split.loop.exit613 ], [ %i.fz, %bb.bn ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 136
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !25
  %i.gh = and i64 %i.gg, 2
  %.not338 = icmp eq i64 %i.gh, 0
  br i1 %.not338, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %.loopexit390
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !24 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 6216
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !118 ; 3 uses
  %i.gm = call ptr @chkTopKList(ptr noundef %i.gj) #12 ; 4 uses
  %i.gn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !106 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 112
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !26 ; 3 uses
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph446.preheader, label %.loopexit
end_hunk_0
