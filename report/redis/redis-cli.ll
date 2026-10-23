Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-cli?download=true
inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@fopen64
; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @hi_sdssplitargs(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @hi_sdsfreesplitres(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

declare void @hi_sdsfree(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @clusterManagerCommandCreate(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %2 = alloca %struct.listIter, align 8           ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %3 = alloca %struct.listIter, align 8           ; 6 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct.listIter, align 8           ; 20 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca [46 x i8], align 16               ; 6 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %i.h = tail call ptr @listCreate() #32          ; 2 uses
  store ptr %i.h, ptr @cluster_manager.0, align 8, !tbaa !78
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge371
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge371 ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 4 uses
  %i.l = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 64) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.l, align 1, !tbaa !73
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 58) #34 ; 3 uses
  %.not17.i = icmp eq ptr %i.m, null
  br i1 %.not17.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.181, ptr noundef nonnull %i.k) #39 ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.m, align 1, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.q = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.p, ptr noundef null, i32 noundef 10) #32, !inline_history !1
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = tail call noalias dereferenceable_or_null(16520) ptr @zmalloc(i64 noundef 16520) #36 ; 24 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr %i.k, ptr %i.t, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %i.r, ptr %i.u, align 8, !tbaa !82
  %i.v = add nsw i32 %i.r, 10000
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  store i32 %i.v, ptr %i.w, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16480
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16472
  store i32 0, ptr %i.aa, align 8, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.x, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.y, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %i.ab, align 8, !tbaa !85
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16516
  store i32 0, ptr %i.ac, align 4, !tbaa !86
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16388) %i.ad, i8 0, i64 16388, i1 false)
  %i.ae = tail call fastcc i32 @clusterManagerNodeConnect(ptr noundef nonnull %i.s)
  %.not358 = icmp eq i32 %i.ae, 0
  br i1 %.not358, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @freeClusterManagerNode(ptr noundef nonnull %i.s)
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %.val = load ptr, ptr %i.s, align 8, !tbaa !87
  %i.af = tail call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %.val, ptr noundef nonnull @.str.204) #32 ; 7 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %clusterManagerNodeIsCluster.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !50
  %i.ai = icmp eq i32 %i.ah, 6
  br i1 %i.ai, label %clusterManagerNodeIsCluster.exit.thread397, label %clusterManagerNodeIsCluster.exit

clusterManagerNodeIsCluster.exit.thread397:       ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !70
  %i.al = add i64 %i.ak, 1
  %i.am = tail call noalias ptr @zmalloc(i64 noundef %i.al) #36 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !51
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !70
  %i.aq = add i64 %i.ap, 1
  %i.ar = tail call i64 @redis_strlcpy(ptr noundef %i.am, ptr noundef %i.ao, i64 noundef %i.aq) #32 ; 0 uses
  tail call void @freeReplyObject(ptr noundef nonnull %i.af) #32
  br label %clusterManagerNodeIsCluster.exit.thread

clusterManagerNodeIsCluster.exit:                 ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !51
  %i.au = tail call fastcc i64 @getLongInfoField(ptr noundef %i.at, ptr noundef nonnull @.str.203)
  tail call void @freeReplyObject(ptr noundef nonnull %i.af) #32
  %i.av = and i64 %i.au, 4294967295
  %.not359 = icmp eq i64 %i.av, 0
  br i1 %.not359, label %clusterManagerNodeIsCluster.exit.thread, label %bb.i

clusterManagerNodeIsCluster.exit.thread:          ; preds = %bb.g, %clusterManagerNodeIsCluster.exit, %clusterManagerNodeIsCluster.exit.thread397
  %i.aw = phi ptr [ %i.am, %clusterManagerNodeIsCluster.exit.thread397 ], [ null, %clusterManagerNodeIsCluster.exit ], [ null, %bb.g ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val372 = load ptr, ptr %i.ay, align 8, !tbaa !81
  %.val373 = load i32, ptr %i.ax, align 8, !tbaa !82
  %.not.i377 = icmp eq ptr %i.aw, null            ; 2 uses
  %i.az = select i1 %.not.i377, ptr @.str.205, ptr %i.aw
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.206, ptr noundef %.val372, i32 noundef %.val373, ptr noundef nonnull %i.az)
  br i1 %.not.i377, label %bb.n, label %.sink.split

bb.i:                                             ; preds = %clusterManagerNodeIsCluster.exit
  %i.ba = call fastcc i32 @clusterManagerNodeLoadInfo(ptr noundef nonnull %i.s, i32 noundef 0, ptr noundef %i.d)
  %.not361 = icmp eq i32 %i.ba, 0
  br i1 %.not361, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !40  ; 3 uses
  %.not362 = icmp eq ptr %i.bb, null
  br i1 %.not362, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !81
  %i.bf = load i32, ptr %i.bc, align 8, !tbaa !82
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.be, i32 noundef %i.bf, ptr noundef nonnull %i.bb)
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.bg = call fastcc i32 @clusterManagerNodeIsEmpty(ptr noundef nonnull %i.s, ptr noundef %i.d)
  %.not363 = icmp eq i32 %i.bg, 0
  br i1 %.not363, label %bb.m, label %.critedge371

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !40  ; 3 uses
  %.val374 = load ptr, ptr %i.bh, align 8, !tbaa !81
  %.val375 = load i32, ptr %i.bi, align 8, !tbaa !82
  %.not.i378 = icmp eq ptr %i.bj, null            ; 2 uses
  %.str.225..i = select i1 %.not.i378, ptr @.str.225, ptr %i.bj
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.206, ptr noundef %.val374, i32 noundef %.val375, ptr noundef nonnull %.str.225..i)
  br i1 %.not.i378, label %bb.n, label %.sink.split

.critedge371:                                     ; preds = %bb.l
  %i.bk = load ptr, ptr @cluster_manager.0, align 8, !tbaa !78
  %i.bl = tail call ptr @listAddNodeTail(ptr noundef %i.bk, ptr noundef nonnull %i.s) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !236

.sink.split:                                      ; preds = %bb.m, %clusterManagerNodeIsCluster.exit.thread, %bb.k
  %.sink = phi ptr [ %i.aw, %clusterManagerNodeIsCluster.exit.thread ], [ %i.bb, %bb.k ], [ %i.bj, %bb.m ]
  tail call void @zfree(ptr noundef nonnull %.sink) #32
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m, %bb.j, %clusterManagerNodeIsCluster.exit.thread
  tail call fastcc void @freeClusterManagerNode(ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br label %.critedge

._crit_edge.loopexit:                             ; preds = %.critedge371
  %.pre = load ptr, ptr @cluster_manager.0, align 8, !tbaa !78
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.bm = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.h, %bb.a ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !90 ; 3 uses
  %i.bp = trunc i64 %i.bo to i32                  ; 8 uses
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 596), align 4, !tbaa !91 ; 3 uses
  %i.br = add nsw i32 %i.bq, 1                    ; 2 uses
  %i.bs = sdiv i32 %i.bp, %i.br                   ; 5 uses
  %i.bt = icmp slt i32 %i.bs, 3
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.183, i32 noundef %i.bp, i32 noundef %i.bq)
  %i.bu = mul nsw i32 %i.br, 3
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.184, i32 noundef %i.bu)
  br label %.critedge

bb.p:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.185, i32 noundef %i.bp)
  %sext = shl i64 %i.bo, 32                       ; 2 uses
  %i.bv = ashr exact i64 %sext, 32                ; 2 uses
  %i.bw = mul nsw i64 %i.bv, 16520
  %i.bx = tail call noalias ptr @zcalloc(i64 noundef %i.bw) #36 ; 6 uses
  %i.by = ashr exact i64 %sext, 29                ; 2 uses
  %i.bz = tail call noalias ptr @zcalloc(i64 noundef %i.by) #36 ; 3 uses
  %i.ca = mul nsw i64 %i.bv, 24
  %i.cb = tail call noalias ptr @zcalloc(i64 noundef %i.ca) #36 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.cc = load ptr, ptr @cluster_manager.0, align 8, !tbaa !78
  call void @listRewind(ptr noundef %i.cc, ptr noundef nonnull %4) #32
  %i.cd = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not531 = icmp eq ptr %i.cd, null
  br i1 %.not531, label %.preheader463.thread, label %.lr.ph534

.preheader463:                                    ; preds = %clusterManagerNodeArrayAdd.exit
  %i.ce = icmp sgt i32 %i.bp, 0
  br i1 %i.ce, label %.preheader462.lr.ph, label %.lr.ph552

.preheader463.thread:                             ; preds = %bb.p
  %i.cf = icmp sgt i32 %i.bp, 0
  br i1 %i.cf, label %.preheader462.preheader, label %.lr.ph552

.preheader462.lr.ph:                              ; preds = %.preheader463
  %i.cg = icmp sgt i32 %.1275, 0
  br i1 %i.cg, label %.preheader462.us.preheader, label %.preheader462.preheader

.preheader462.preheader:                          ; preds = %.preheader463.thread, %.preheader462.lr.ph
  br label %.preheader462

.preheader462.us.preheader:                       ; preds = %.preheader462.lr.ph
  %wide.trip.count659 = zext nneg i32 %.1275 to i64
  br label %.preheader462.us

.preheader462.us:                                 ; preds = %.preheader462.us.backedge, %.preheader462.us.preheader
  %indvars.iv656 = phi i64 [ 0, %.preheader462.us.preheader ], [ %indvars.iv656.be, %.preheader462.us.backedge ] ; 2 uses
  %.1277536.us = phi i32 [ 0, %.preheader462.us.preheader ], [ %.2278.us, %.preheader462.us.backedge ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %indvars.iv656 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 20 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !253 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.preheader462.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !94 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.r, label %.split.us

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !95 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !97 ; 2 uses
  %.not.i380.us = icmp eq ptr %i.cp, null
  br i1 %.not.i380.us, label %clusterManagerNodeArrayShift.exit.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = add nsw i32 %i.cj, -1
  store i32 %i.cq, ptr %i.ci, align 4, !tbaa !253
  br label %clusterManagerNodeArrayShift.exit.us

clusterManagerNodeArrayShift.exit.us:             ; preds = %bb.s, %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cr, ptr %i.ch, align 8, !tbaa !95
  %i.cs = add nsw i32 %i.cm, -1
  store i32 %i.cs, ptr %i.cl, align 8, !tbaa !94
  %i.ct = add nsw i32 %.1277536.us, 1
  %i.cu = sext i32 %.1277536.us to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cu
  store ptr %i.cp, ptr %i.cv, align 8, !tbaa !97
  br label %bb.t

bb.t:                                             ; preds = %clusterManagerNodeArrayShift.exit.us, %.preheader462.us
  %.2278.us = phi i32 [ %i.ct, %clusterManagerNodeArrayShift.exit.us ], [ %.1277536.us, %.preheader462.us ] ; 3 uses
  %indvars.iv.next657 = add nuw nsw i64 %indvars.iv656, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %indvars.iv.next657, %wide.trip.count659
  br i1 %exitcond660.not, label %..loopexit_crit_edge.us, label %.preheader462.us.backedge

.preheader462.us.backedge:                        ; preds = %bb.t, %..loopexit_crit_edge.us
  %indvars.iv656.be = phi i64 [ %indvars.iv.next657, %bb.t ], [ 0, %..loopexit_crit_edge.us ]
  br label %.preheader462.us, !llvm.loop !237

..loopexit_crit_edge.us:                          ; preds = %bb.t
  %i.cw = icmp slt i32 %.2278.us, %i.bp
  br i1 %i.cw, label %.preheader462.us.backedge, label %.lr.ph552

.lr.ph534:                                        ; preds = %bb.p, %clusterManagerNodeArrayAdd.exit
  %i.cx = phi ptr [ %i.dz, %clusterManagerNodeArrayAdd.exit ], [ %i.cd, %bb.p ]
  %.0274532 = phi i32 [ %.1275, %clusterManagerNodeArrayAdd.exit ], [ 0, %bb.p ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !99 ; 3 uses
  %.not456527 = icmp sgt i32 %.0274532, 0
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !81 ; 2 uses
  br i1 %.not456527, label %.lr.ph530, label %.critedge460.loopexit

.lr.ph530:                                        ; preds = %.lr.ph534
  %wide.trip.count654 = zext nneg i32 %.0274532 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph530, %bb.v
  %indvars.iv651 = phi i64 [ 0, %.lr.ph530 ], [ %indvars.iv.next652, %bb.v ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv651
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !40
  %i.de = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull dereferenceable(1) %i.db) #34
  %.not355 = icmp eq i32 %i.de, 0
  br i1 %.not355, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1 ; 2 uses
  %exitcond655.not = icmp eq i64 %indvars.iv.next652, %wide.trip.count654
  br i1 %exitcond655.not, label %.critedge460.loopexit.loopexit, label %bb.u, !llvm.loop !238

.critedge460.loopexit.loopexit:                   ; preds = %bb.v
  %i.df = zext nneg i32 %.0274532 to i64
  br label %.critedge460.loopexit

.critedge460.loopexit:                            ; preds = %.lr.ph534, %.critedge460.loopexit.loopexit
  %.1238.lcssa = phi i64 [ %i.df, %.critedge460.loopexit.loopexit ], [ 0, %.lr.ph534 ]
  %i.dg = add nsw i32 %.0274532, 1
  %i.dh = sext i32 %.0274532 to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dh
  store ptr %i.db, ptr %i.di, align 8, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %.critedge460.loopexit
  %.1238481 = phi i64 [ %.1238.lcssa, %.critedge460.loopexit ], [ %indvars.iv651, %bb.u ]
  %.1275 = phi i32 [ %i.dg, %.critedge460.loopexit ], [ %.0274532, %bb.u ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.1238481 ; 7 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !95 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.w, label %._crit_edge694

._crit_edge694:                                   ; preds = %.loopexit
  %.phi.trans.insert695 = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.pre696 = load i32, ptr %.phi.trans.insert695, align 8, !tbaa !94
  br label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.dm = call noalias ptr @zcalloc(i64 noundef %i.by) #36 ; 3 uses
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !95
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !254
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i32 %i.bp, ptr %i.do, align 8, !tbaa !94
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  store i32 0, ptr %i.dp, align 4, !tbaa !253
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge694, %bb.w
  %i.dq = phi ptr [ %i.dk, %._crit_edge694 ], [ %i.dm, %bb.w ]
  %i.dr = phi i32 [ %.pre696, %._crit_edge694 ], [ %i.bp, %bb.w ] ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @__assert_fail(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.7, i32 noundef 7007, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayAdd) #37
  unreachable

bb.z:                                             ; preds = %bb.x
  %.not.i379 = icmp eq ptr %i.cz, null
  br i1 %.not.i379, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @__assert_fail(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.7, i32 noundef 7008, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayAdd) #37
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 20 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !253 ; 3 uses
  %i.dv = icmp slt i32 %i.du, %i.dr
  br i1 %i.dv, label %clusterManagerNodeArrayAdd.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @__assert_fail(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.7, i32 noundef 7009, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayAdd) #37
  unreachable

clusterManagerNodeArrayAdd.exit:                  ; preds = %bb.ab
  %i.dw = add nsw i32 %i.du, 1
  store i32 %i.dw, ptr %i.dt, align 4, !tbaa !253
  %i.dx = sext i32 %i.du to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dx
  store ptr %i.cz, ptr %i.dy, align 8, !tbaa !97
  %i.dz = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not = icmp eq ptr %i.dz, null
  br i1 %.not, label %.preheader463, label %.lr.ph534, !llvm.loop !239

.preheader462:                                    ; preds = %.preheader462.preheader, %.preheader462
  br label %.preheader462

.split.us:                                        ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.7, i32 noundef 6994, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayShift) #37
  unreachable

.lr.ph552:                                        ; preds = %..loopexit_crit_edge.us, %.preheader463, %.preheader463.thread
  %i.ea = phi i1 [ false, %.preheader463 ], [ false, %.preheader463.thread ], [ true, %..loopexit_crit_edge.us ]
  %.0274.lcssa748 = phi i32 [ %.1275, %.preheader463 ], [ 0, %.preheader463.thread ], [ %.1275, %..loopexit_crit_edge.us ] ; 6 uses
  %.0276.lcssa = phi i32 [ 0, %.preheader463 ], [ 0, %.preheader463.thread ], [ %.2278.us, %..loopexit_crit_edge.us ]
  %i.eb = zext nneg i32 %i.bs to i64              ; 4 uses
  %i.ec = getelementptr [8 x i8], ptr %i.bx, i64 %i.eb ; 4 uses
  %i.ed = sub nsw i32 %.0276.lcssa, %i.bs         ; 4 uses
  %i.ee = uitofp nneg i32 %i.bs to float
  %i.ef = fdiv float 1.638400e+04, %i.ee
  %i.eg = add nsw i32 %i.bs, -1
  %wide.trip.count667 = zext nneg i32 %i.eg to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph552, %._crit_edge547
  %indvars.iv664 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next665, %._crit_edge547 ] ; 4 uses
  %.0264549 = phi float [ 0.000000e+00, %.lr.ph552 ], [ %i.ej, %._crit_edge547 ]
  %.0265548 = phi i64 [ 0, %.lr.ph552 ], [ %i.fq, %._crit_edge547 ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv664
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !97 ; 3 uses
  %i.ej = fadd float %i.ef, %.0264549             ; 2 uses
  %i.ek = fadd float %i.ej, -1.000000e+00
  %i.el = fpext float %i.ek to double
  %i.em = call i64 @lround(double noundef %i.el) #32, !tbaa !24 ; 2 uses
  %i.en = icmp sgt i64 %i.em, 16384
  %i.eo = icmp eq i64 %indvars.iv664, %wide.trip.count667
  %or.cond366 = select i1 %i.en, i1 true, i1 %i.eo
  %.0262 = select i1 %or.cond366, i64 16383, i64 %i.em
  %.1263 = call i64 @llvm.smax.i64(i64 %.0262, i64 %.0265548) ; 6 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv664 to i32
  %i.eq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.186, i32 noundef %i.ep, i64 noundef %.0265548, i64 noundef %.1263) ; 0 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 16468 ; 11 uses
  store i32 0, ptr %i.er, align 4, !tbaa !100
  %sext608 = shl i64 %.0265548, 32
  %i.es = ashr exact i64 %sext608, 32             ; 4 uses
  %.not354543 = icmp slt i64 %.1263, %i.es
  br i1 %.not354543, label %._crit_edge547, label %.lr.ph546

.lr.ph546:                                        ; preds = %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 84 ; 5 uses
  %i.eu = add i64 %.1263, 1
  %i.ev = sub i64 %i.eu, %.0265548
  %i.ew = sub i64 %.1263, %i.es
  %xtraiter = and i64 %i.ev, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph546, %.prol.preheader
  %indvars.iv661.prol = phi i64 [ %indvars.iv.next662.prol, %.prol.preheader ], [ %i.es, %.lr.ph546 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph546 ]
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv661.prol
  store i8 1, ptr %i.ex, align 1, !tbaa !73
  %i.ey = load i32, ptr %i.er, align 4, !tbaa !100
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.er, align 4, !tbaa !100
  %indvars.iv.next662.prol = add nsw i64 %indvars.iv661.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !240

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph546
  %indvars.iv661.unr = phi i64 [ %i.es, %.lr.ph546 ], [ %indvars.iv.next662.prol, %.prol.preheader ]
  %i.fa = icmp ult i64 %i.ew, 3
  br i1 %i.fa, label %._crit_edge547, label %.lr.ph546.new

.lr.ph546.new:                                    ; preds = %.prol.loopexit, %.lr.ph546.new
  %indvars.iv661 = phi i64 [ %indvars.iv.next662.3, %.lr.ph546.new ], [ %indvars.iv661.unr, %.prol.loopexit ] ; 5 uses
  %i.fb = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv661
  store i8 1, ptr %i.fb, align 1, !tbaa !73
  %i.fc = load i32, ptr %i.er, align 4, !tbaa !100
  %i.fd = add nsw i32 %i.fc, 1
  store i32 %i.fd, ptr %i.er, align 4, !tbaa !100
  %i.fe = getelementptr i8, ptr %i.et, i64 %indvars.iv661
  %i.ff = getelementptr i8, ptr %i.fe, i64 1
  store i8 1, ptr %i.ff, align 1, !tbaa !73
  %i.fg = load i32, ptr %i.er, align 4, !tbaa !100
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.er, align 4, !tbaa !100
  %i.fi = getelementptr i8, ptr %i.et, i64 %indvars.iv661
  %i.fj = getelementptr i8, ptr %i.fi, i64 2
  store i8 1, ptr %i.fj, align 1, !tbaa !73
  %i.fk = load i32, ptr %i.er, align 4, !tbaa !100
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.er, align 4, !tbaa !100
  %indvars.iv.next662.2 = add nsw i64 %indvars.iv661, 3 ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv.next662.2
  store i8 1, ptr %i.fm, align 1, !tbaa !73
  %i.fn = load i32, ptr %i.er, align 4, !tbaa !100
  %i.fo = add nsw i32 %i.fn, 1
  store i32 %i.fo, ptr %i.er, align 4, !tbaa !100
  %indvars.iv.next662.3 = add nsw i64 %indvars.iv661, 4
  %.not354.not.3 = icmp sgt i64 %.1263, %indvars.iv.next662.2
  br i1 %.not354.not.3, label %.lr.ph546.new, label %._crit_edge547, !llvm.loop !241

._crit_edge547:                                   ; preds = %.prol.loopexit, %.lr.ph546.new, %bb.ad
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ei, i64 80
  store i32 1, ptr %i.fp, align 8, !tbaa !101
  %i.fq = add nuw nsw i64 %.1263, 1
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1 ; 2 uses
  %exitcond668.not = icmp eq i64 %indvars.iv.next665, %i.eb
  br i1 %exitcond668.not, label %._crit_edge553, label %bb.ad, !llvm.loop !242

._crit_edge553:                                   ; preds = %._crit_edge547
  %i.fr = load ptr, ptr %i.ec, align 8, !tbaa !97
  %i.fs = add nsw i32 %i.ed, -1                   ; 2 uses
  %i.ft = icmp sgt i32 %i.ed, 1
  br i1 %i.ft, label %.lr.ph556.preheader, label %._crit_edge557

.lr.ph556.preheader:                              ; preds = %._crit_edge553
  %i.fu = shl nuw nsw i64 %i.eb, 3
  %i.fv = getelementptr i8, ptr %i.bx, i64 %i.fu
  %scevgep = getelementptr i8, ptr %i.fv, i64 8
  %i.fw = zext nneg i32 %i.fs to i64
  %i.fx = shl nuw nsw i64 %i.fw, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %scevgep, i64 %i.fx, i1 false), !tbaa !97
  br label %._crit_edge557

._crit_edge557:                                   ; preds = %.lr.ph556.preheader, %._crit_edge553
  %i.fy = sext i32 %i.fs to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.fy
  store ptr %i.fr, ptr %i.fz, align 8, !tbaa !97
  br label %.lr.ph570.preheader

.lr.ph570.preheader:                              ; preds = %._crit_edge557, %bb.am
  %.3279 = phi i32 [ %i.ed, %._crit_edge557 ], [ %.7283, %bb.am ]
  %.0269 = phi ptr [ %i.ec, %._crit_edge557 ], [ %.4273, %bb.am ]
  %i.ga = phi i1 [ true, %._crit_edge557 ], [ false, %bb.am ] ; 2 uses
  %.0256 = phi i32 [ %i.ed, %._crit_edge557 ], [ %.4260, %bb.am ]
  br label %.lr.ph570

.lr.ph570:                                        ; preds = %.lr.ph570.preheader, %.thread426
  %indvars.iv677 = phi i64 [ 0, %.lr.ph570.preheader ], [ %indvars.iv.next678, %.thread426 ] ; 2 uses
  %.1257567 = phi i32 [ %.0256, %.lr.ph570.preheader ], [ %.4260, %.thread426 ]
  %.1270566 = phi ptr [ %.0269, %.lr.ph570.preheader ], [ %.4273, %.thread426 ]
  %.4280565 = phi i32 [ %.3279, %.lr.ph570.preheader ], [ %.7283, %.thread426 ]
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv677
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !97 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.lr.ph570
  %.5281 = phi i32 [ %.4280565, %.lr.ph570 ], [ %.6282422, %bb.al ] ; 6 uses
  %.2271 = phi ptr [ %.1270566, %.lr.ph570 ], [ %.3272423, %bb.al ] ; 7 uses
  %.2258 = phi i32 [ %.1257567, %.lr.ph570 ], [ %i.hc, %bb.al ] ; 5 uses
  %.0254 = phi i32 [ 0, %.lr.ph570 ], [ %i.hb, %bb.al ] ; 2 uses
  %i.gg = icmp slt i32 %.0254, %i.bq
  %i.gh = icmp ne i32 %.2258, 0
  %or.cond3.not819 = select i1 %i.gg, i1 %i.gh, i1 false
  %i.gi = icmp sgt i32 %.5281, 0
  %or.cond754 = select i1 %or.cond3.not819, i1 %i.gi, i1 false
  br i1 %or.cond754, label %.lr.ph562.preheader, label %.thread426

.lr.ph562.preheader:                              ; preds = %bb.ae
  %wide.trip.count675 = zext nneg i32 %.5281 to i64
  br label %.lr.ph562

.lr.ph562:                                        ; preds = %.lr.ph562.preheader, %bb.ah
  %indvars.iv672 = phi i64 [ 0, %.lr.ph562.preheader ], [ %indvars.iv.next673, %bb.ah ] ; 4 uses
  %.0246560 = phi i32 [ -1, %.lr.ph562.preheader ], [ %.2248.ph, %bb.ah ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.2271, i64 %indvars.iv672
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !97 ; 3 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.lr.ph562
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !81
  %i.go = load ptr, ptr %i.gd, align 8, !tbaa !81
  %i.gp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gn, ptr noundef nonnull dereferenceable(1) %i.go) #34
  %.not349 = icmp eq i32 %i.gp, 0
  br i1 %.not349, label %bb.ag, label %.thread417

bb.ag:                                            ; preds = %bb.af
  %i.gq = icmp slt i32 %.0246560, 0
  %i.gr = trunc nuw nsw i64 %indvars.iv672 to i32
  %spec.select = select i1 %i.gq, i32 %i.gr, i32 %.0246560
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph562
  %.2248.ph = phi i32 [ %.0246560, %.lr.ph562 ], [ %spec.select, %bb.ag ] ; 4 uses
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count675
  br i1 %exitcond676.not, label %._crit_edge563, label %.lr.ph562, !llvm.loop !243

.thread417:                                       ; preds = %bb.af
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.2271, i64 %indvars.iv672
  store ptr null, ptr %i.gs, align 8, !tbaa !97
  br label %bb.aj

._crit_edge563:                                   ; preds = %bb.ah
  %i.gt = icmp sgt i32 %.2248.ph, -1
  br i1 %i.gt, label %bb.ai, label %.thread426

bb.ai:                                            ; preds = %._crit_edge563
  %i.gu = zext nneg i32 %.2248.ph to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.2271, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !97 ; 2 uses
  %i.gx = add nuw nsw i32 %.2248.ph, 1            ; 2 uses
  %i.gy = sub nsw i32 %.5281, %i.gx               ; 2 uses
  %i.gz = zext nneg i32 %i.gx to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.2271, i64 %i.gz ; 2 uses
  %.not351 = icmp eq ptr %i.gw, null
  br i1 %.not351, label %.thread426, label %bb.aj

bb.aj:                                            ; preds = %.thread417, %bb.ai
  %.0250424 = phi ptr [ %i.gk, %.thread417 ], [ %i.gw, %bb.ai ] ; 4 uses
  %.3272423 = phi ptr [ %.2271, %.thread417 ], [ %i.ha, %bb.ai ] ; 2 uses
  %.6282422 = phi i32 [ %.5281, %.thread417 ], [ %i.gy, %bb.ai ] ; 2 uses
  %i.hb = add nuw nsw i32 %.0254, 1
  %i.hc = add nsw i32 %.2258, -1                  ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.0250424, i64 72 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !102 ; 2 uses
  %.not352 = icmp eq ptr %i.he, null
  br i1 %.not352, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @hi_sdsfree(ptr noundef nonnull %i.he) #32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hf = load ptr, ptr %i.ge, align 8, !tbaa !103
  %i.hg = call ptr @hi_sdsnew(ptr noundef %i.hf) #32
  store ptr %i.hg, ptr %i.hd, align 8, !tbaa !102
  %i.hh = getelementptr inbounds nuw i8, ptr %.0250424, i64 80
  store i32 1, ptr %i.hh, align 8, !tbaa !101
  %i.hi = getelementptr inbounds nuw i8, ptr %.0250424, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !81
  %i.hk = getelementptr inbounds nuw i8, ptr %.0250424, i64 24
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !82
  %i.hm = load ptr, ptr %i.gd, align 8, !tbaa !81
  %i.hn = load i32, ptr %i.gf, align 8, !tbaa !82
  %i.ho = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.187, ptr noundef %i.hj, i32 noundef %i.hl, ptr noundef %i.hm, i32 noundef %i.hn) ; 0 uses
  br i1 %i.ga, label %bb.ae, label %.thread426

.thread426:                                       ; preds = %._crit_edge563, %bb.al, %bb.ai, %bb.ae
  %.7283 = phi i32 [ %.5281, %bb.ae ], [ %i.gy, %bb.ai ], [ %.6282422, %bb.al ], [ %.5281, %._crit_edge563 ] ; 2 uses
  %.4273 = phi ptr [ %.2271, %bb.ae ], [ %i.ha, %bb.ai ], [ %.3272423, %bb.al ], [ %.2271, %._crit_edge563 ] ; 2 uses
  %.4260 = phi i32 [ %.2258, %bb.ae ], [ %.2258, %bb.ai ], [ %i.hc, %bb.al ], [ %.2258, %._crit_edge563 ] ; 3 uses
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %exitcond682.not = icmp eq i64 %indvars.iv.next678, %i.eb
  br i1 %exitcond682.not, label %._crit_edge571, label %.lr.ph570, !llvm.loop !244

._crit_edge571:                                   ; preds = %.thread426
  %i.hp = icmp sgt i32 %.4260, 0
  %or.cond = select i1 %i.ga, i1 %i.hp, i1 false
  br i1 %or.cond, label %bb.am, label %.preheader

.preheader:                                       ; preds = %._crit_edge571
  %i.hq = icmp sgt i32 %.0274.lcssa748, 0
  br i1 %i.hq, label %.lr.ph576.preheader, label %._crit_edge577

.lr.ph576.preheader:                              ; preds = %.preheader
  %wide.trip.count686 = zext nneg i32 %.0274.lcssa748 to i64
  br label %.lr.ph576

bb.am:                                            ; preds = %._crit_edge571
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %.lr.ph570.preheader

.lr.ph576:                                        ; preds = %.lr.ph576.preheader, %clusterManagerNodeArrayReset.exit
  %indvars.iv683 = phi i64 [ 0, %.lr.ph576.preheader ], [ %indvars.iv.next684, %clusterManagerNodeArrayReset.exit ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %indvars.iv683 ; 5 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !95 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !254 ; 6 uses
  %i.hv = icmp ugt ptr %i.hs, %i.hu
  br i1 %i.hv, label %bb.an, label %clusterManagerNodeArrayReset.exit

bb.an:                                            ; preds = %.lr.ph576
  %i.hw = ptrtoint ptr %i.hs to i64
  %i.hx = ptrtoint ptr %i.hu to i64
  %i.hy = sub i64 %i.hw, %i.hx                    ; 3 uses
  %i.hz = lshr exact i64 %i.hy, 3                 ; 3 uses
  %i.ia = trunc i64 %i.hz to i32                  ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store i32 %i.ia, ptr %i.ib, align 8, !tbaa !94
  store ptr %i.hu, ptr %i.hr, align 8, !tbaa !95
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 20 ; 4 uses
  store i32 0, ptr %i.ic, align 4, !tbaa !253
  %i.id = icmp sgt i32 %i.ia, 0
  br i1 %i.id, label %.lr.ph.preheader.i, label %clusterManagerNodeArrayReset.exit

.lr.ph.preheader.i:                               ; preds = %bb.an
  %i.ie = and i64 %i.hy, 17179869176
  %i.if = icmp eq i64 %i.ie, 8
  br i1 %i.if, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.hz, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aq, %.lr.ph.preheader.i.new
  %i.ig = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ip, %bb.aq ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.aq ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.aq ]
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv.i
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !97
  %.not.i381 = icmp eq ptr %i.ii, null
  br i1 %.not.i381, label %.lr.ph.i.1, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i
  %i.ij = add nsw i32 %i.ig, 1                    ; 2 uses
  store i32 %i.ij, ptr %i.ic, align 4, !tbaa !253
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ao, %.lr.ph.i
  %i.ik = phi i32 [ %i.ig, %.lr.ph.i ], [ %i.ij, %bb.ao ] ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !97
  %.not.i381.1 = icmp eq ptr %i.in, null
  br i1 %.not.i381.1, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.1
  %i.io = add nsw i32 %i.ik, 1                    ; 2 uses
  store i32 %i.io, ptr %i.ic, align 4, !tbaa !253
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i.1
  %i.ip = phi i32 [ %i.ik, %.lr.ph.i.1 ], [ %i.io, %bb.ap ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %clusterManagerNodeArrayReset.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !245

clusterManagerNodeArrayReset.exit.loopexit.unr-lcssa: ; preds = %bb.aq
  %i.iq = and i64 %i.hy, 8
  %lcmp.mod895.not = icmp eq i64 %i.iq, 0
  br i1 %lcmp.mod895.not, label %clusterManagerNodeArrayReset.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %clusterManagerNodeArrayReset.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ip, %clusterManagerNodeArrayReset.exit.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %clusterManagerNodeArrayReset.exit.loopexit.unr-lcssa ]
  %lcmp.mod896 = trunc i64 %i.hz to i1
  call void @llvm.assume(i1 %lcmp.mod896)
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv.i.epil.init
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !97
  %.not.i381.epil = icmp eq ptr %i.is, null
  br i1 %.not.i381.epil, label %clusterManagerNodeArrayReset.exit, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.epil.preheader
  %i.it = add nsw i32 %.epil.init, 1
  store i32 %i.it, ptr %i.ic, align 4, !tbaa !253
  br label %clusterManagerNodeArrayReset.exit

clusterManagerNodeArrayReset.exit:                ; preds = %clusterManagerNodeArrayReset.exit.loopexit.unr-lcssa, %bb.ar, %.lr.ph.i.epil.preheader, %.lr.ph576, %bb.an
  %indvars.iv.next684 = add nuw nsw i64 %indvars.iv683, 1 ; 2 uses
  %exitcond687.not = icmp eq i64 %indvars.iv.next684, %wide.trip.count686
  br i1 %exitcond687.not, label %._crit_edge577, label %.lr.ph576, !llvm.loop !246

._crit_edge577:                                   ; preds = %clusterManagerNodeArrayReset.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr null, ptr %i.b, align 8, !tbaa !104
  %i.iu = call fastcc i32 @clusterManagerGetAntiAffinityScore(ptr noundef readonly %i.cb, i32 noundef %.0274.lcssa748, ptr noundef null, ptr noundef null)
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %clusterManagerOptimizeAntiAffinity.exit, label %bb.as

bb.as:                                            ; preds = %._crit_edge577
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.229)
  %i.iw = load ptr, ptr @cluster_manager.0, align 8, !tbaa !78
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !90 ; 2 uses
  %i.iz = trunc i64 %i.iy to i32                  ; 2 uses
  %i.ja = call i64 @time(ptr noundef null) #32
  %i.jb = trunc i64 %i.ja to i32
  call void @srand(i32 noundef %i.jb) #32
  %i.jc = icmp sgt i32 %i.iz, 0
  br i1 %i.jc, label %.lr.ph71.i, label %.loopexit.i

.lr.ph71.i:                                       ; preds = %bb.as
  %i.jd = mul nuw nsw i32 %i.iz, 500
  %i.je = shl i64 %i.iy, 32
  %sext.i = add nsw i64 %i.je, -4294967296
  %i.jf = ashr exact i64 %sext.i, 29
  br label %bb.at

bb.at:                                            ; preds = %bb.bc, %.lr.ph71.i
  %i.jg = phi ptr [ null, %.lr.ph71.i ], [ %i.jn, %bb.bc ] ; 2 uses
  %.069.i = phi i32 [ %i.jd, %.lr.ph71.i ], [ %i.kr, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i32 0, ptr %i.c, align 4, !tbaa !24
  %.not.i382 = icmp eq ptr %i.jg, null
  br i1 %.not.i382, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @zfree(ptr noundef nonnull %i.jg) #32
  store ptr null, ptr %i.b, align 8, !tbaa !104
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.jh = call fastcc i32 @clusterManagerGetAntiAffinityScore(ptr noundef readonly %i.cb, i32 noundef %.0274.lcssa748, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.ji = icmp eq i32 %i.jh, 0
  %i.jj = load i32, ptr %i.c, align 4             ; 2 uses
  %i.jk = icmp eq i32 %i.jj, 0
  %or.cond.i = select i1 %i.ji, i1 true, i1 %i.jk
  br i1 %or.cond.i, label %.thread.i, label %bb.aw

.thread.i:                                        ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %.pre.pre.i = load ptr, ptr %i.b, align 8, !tbaa !104
  br label %.loopexit.i

bb.aw:                                            ; preds = %bb.av
  %i.jl = call i32 @rand() #32
  %i.jm = srem i32 %i.jl, %i.jj
  %i.jn = load ptr, ptr %i.b, align 8, !tbaa !104 ; 4 uses
  %i.jo = sext i32 %i.jm to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.jo
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !97 ; 3 uses
  %i.jr = call noalias ptr @zcalloc(i64 noundef %i.jf) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.js = load ptr, ptr @cluster_manager.0, align 8, !tbaa !78
  call void @listRewind(ptr noundef %i.js, ptr noundef nonnull %3) #32
  %i.jt = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not5967.i = icmp eq ptr %i.jt, null
  br i1 %.not5967.i, label %.thread64.i, label %.lr.ph.i383

.lr.ph.i383:                                      ; preds = %bb.aw, %bb.az
  %i.ju = phi ptr [ %i.kc, %bb.az ], [ %i.jt, %bb.aw ]
  %.05068.i = phi i32 [ %.151.i, %bb.az ], [ 0, %bb.aw ] ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !99 ; 3 uses
  %.not60.i = icmp eq ptr %i.jw, %i.jq
  br i1 %.not60.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i383
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 72
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !102
  %.not61.i = icmp eq ptr %i.jy, null
  br i1 %.not61.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jz = add nsw i32 %.05068.i, 1
  %i.ka = sext i32 %.05068.i to i64
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %i.ka
  store ptr %i.jw, ptr %i.kb, align 8, !tbaa !97
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.lr.ph.i383
  %.151.i = phi i32 [ %i.jz, %bb.ay ], [ %.05068.i, %bb.ax ], [ %.05068.i, %.lr.ph.i383 ] ; 3 uses
end_hunk_0
