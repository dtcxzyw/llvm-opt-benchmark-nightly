inline.NumInlined: 166
inline.NumDeleted: 2
begin_hunk_0_@sentinelHandleConfiguration:bb.a
  %.not228 = icmp eq ptr %i.fy, null
  br i1 %.not228, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !95
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !95
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !95
  %i.gf = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ge, ptr noundef null, i32 noundef 10) #26, !inline_history !205
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 168
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !89
  %i.gj = tail call ptr @createSentinelRedisInstance(ptr noundef %i.ga, i32 noundef 4, ptr noundef %i.gc, i32 noundef %i.gg, i32 noundef %i.gi, ptr noundef nonnull %i.fy) ; 3 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gl = tail call ptr @__errno_location() #28
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !9
  %switch.tableidx285 = add i32 %i.gm, -2         ; 2 uses
  %i.gn = icmp ult i32 %switch.tableidx285, 21
  br i1 %i.gn, label %switch.lookup286, label %sentinelCheckCreateInstanceErrors.exit.thread

bb.ba:                                            ; preds = %bb.ay
  %i.go = load ptr, ptr %i.fz, align 8, !tbaa !95
  %i.gp = tail call ptr @sdsnew(ptr noundef %i.go) #26
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !26
  %i.gr = tail call i32 @sentinelTryConnectionSharing(ptr noundef nonnull %i.gj) ; 0 uses
  br label %.critedge

bb.bb:                                            ; preds = %bb.av
  %i.gs = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.87) #30
  %i.gt = icmp eq i32 %i.gs, 0
  %i.gu = icmp eq i32 %1, 4
  %or.cond34 = and i1 %i.gu, %i.gt
  br i1 %or.cond34, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !95
  %i.gx = tail call ptr @sentinelGetMasterByName(ptr noundef %i.gw) ; 2 uses
  %.not235 = icmp eq ptr %i.gx, null
  br i1 %.not235, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !95
  %i.ha = tail call ptr @sdsnew(ptr noundef %i.gz) #26 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !95
  %i.hd = tail call ptr @sdsnew(ptr noundef %i.hc) #26 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 120
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !38
  %i.hg = tail call i32 @dictAdd(ptr noundef %i.hf, ptr noundef %i.ha, ptr noundef %i.hd) #26
  %.not236 = icmp eq i32 %i.hg, 0
  br i1 %.not236, label %.critedge, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @sdsfree(ptr noundef %i.ha) #26
  tail call void @sdsfree(ptr noundef %i.hd) #26
  br label %sentinelCheckCreateInstanceErrors.exit.thread

bb.bf:                                            ; preds = %bb.bb
  %i.hh = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str) #30
  %i.hi = icmp eq i32 %i.hh, 0
  %or.cond37 = and i1 %i.dv, %i.hi
  br i1 %or.cond37, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !95 ; 2 uses
  %char0233 = load i8, ptr %i.hk, align 1
  %.not234 = icmp eq i8 %char0233, 0
  br i1 %.not234, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hl = tail call ptr @sdsnew(ptr noundef nonnull %i.hk) #26
  store ptr %i.hl, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 104), align 8, !tbaa !81
  br label %.critedge

bb.bi:                                            ; preds = %bb.bf
  %i.hm = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.1) #30
  %i.hn = icmp eq i32 %i.hm, 0
  %or.cond40 = and i1 %i.dv, %i.hn
  br i1 %or.cond40, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !95
  %i.hq = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.hp, ptr noundef null, i32 noundef 10) #26, !inline_history !205
  %i.hr = trunc i64 %i.hq to i32
  store i32 %i.hr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 112), align 16, !tbaa !82
  br label %.critedge

bb.bk:                                            ; preds = %bb.bi
  %i.hs = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.2) #30
  %i.ht = icmp eq i32 %i.hs, 0
  %or.cond43 = and i1 %i.dv, %i.ht
  br i1 %or.cond43, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !95
  %i.hw = tail call i32 @yesnotoi(ptr noundef %i.hv) #26 ; 2 uses
  store i32 %i.hw, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 128), align 32, !tbaa !84
  %i.hx = icmp eq i32 %i.hw, -1
  br i1 %i.hx, label %sentinelCheckCreateInstanceErrors.exit.thread, label %.critedge

bb.bm:                                            ; preds = %bb.bk
  %i.hy = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.3) #30
  %i.hz = icmp eq i32 %i.hy, 0
  %or.cond46 = and i1 %i.dv, %i.hz
  br i1 %or.cond46, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !95 ; 2 uses
  %char0231 = load i8, ptr %i.ib, align 1
  %.not232 = icmp eq i8 %char0231, 0
  br i1 %.not232, label %.critedge, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ic = tail call ptr @sdsnew(ptr noundef nonnull %i.ib) #26
  store ptr %i.ic, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 144), align 16, !tbaa !208
  br label %.critedge

bb.bp:                                            ; preds = %bb.bm
  %i.id = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.4) #30
  %i.ie = icmp eq i32 %i.id, 0
  %or.cond49 = and i1 %i.dv, %i.ie
  br i1 %or.cond49, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !95 ; 2 uses
  %char0 = load i8, ptr %i.ig, align 1
  %.not230 = icmp eq i8 %char0, 0
  br i1 %.not230, label %.critedge, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ih = tail call ptr @sdsnew(ptr noundef nonnull %i.ig) #26
  store ptr %i.ih, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 136), align 8, !tbaa !209
  br label %.critedge

bb.bs:                                            ; preds = %bb.bp
  %i.ii = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.7) #30
  %i.ij = icmp eq i32 %i.ii, 0
  %or.cond52 = and i1 %i.dv, %i.ij
  br i1 %or.cond52, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !95
  %i.im = tail call i32 @yesnotoi(ptr noundef %i.il) #26 ; 2 uses
  store i32 %i.im, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 152), align 8, !tbaa !92
  %i.in = icmp eq i32 %i.im, -1
  br i1 %i.in, label %sentinelCheckCreateInstanceErrors.exit.thread, label %.critedge

bb.bu:                                            ; preds = %bb.bs
  %i.io = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.8) #30
  %i.ip = icmp eq i32 %i.io, 0
  %or.cond55 = and i1 %i.dv, %i.ip
  br i1 %or.cond55, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !95
  %i.is = tail call i32 @yesnotoi(ptr noundef %i.ir) #26 ; 2 uses
  store i32 %i.is, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %i.it = icmp eq i32 %i.is, -1
  br i1 %i.it, label %sentinelCheckCreateInstanceErrors.exit.thread, label %.critedge

bb.bw:                                            ; preds = %bb.bu
  %i.iu = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.92) #30
  %i.iv = icmp eq i32 %i.iu, 0
  %or.cond58 = and i1 %i.z, %i.iv
  br i1 %or.cond58, label %bb.bx, label %sentinelCheckCreateInstanceErrors.exit.thread

bb.bx:                                            ; preds = %bb.bw
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !95
  %i.iy = tail call ptr @sentinelGetMasterByName(ptr noundef %i.ix) ; 2 uses
  %.not229 = icmp eq ptr %i.iy, null
  br i1 %.not229, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !95
  %i.jb = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ja, ptr noundef null, i32 noundef 10) #26, !inline_history !205 ; 2 uses
  %sext = shl i64 %i.jb, 32
  %i.jc = ashr exact i64 %sext, 32
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 96
  store i64 %i.jc, ptr %i.jd, align 8, !tbaa !166
  %i.je = and i64 %i.jb, 2147483648
  %.not259 = icmp eq i64 %i.je, 0
  br i1 %.not259, label %.critedge, label %sentinelCheckCreateInstanceErrors.exit.thread

.critedge:                                        ; preds = %bb.ba, %bb.aw, %bb.at, %bb.c, %bb.bd, %bb.ad, %bb.ae, %sentinelPropagateDownAfterPeriod.exit, %bb.n, %bb.v, %bb.ab, %bb.ah, %bb.ao, %bb.bh, %bb.bg, %bb.bl, %bb.br, %bb.bq, %bb.bv, %bb.by, %bb.bt, %bb.bn, %bb.bo, %bb.bj, %bb.ak, %bb.al, %bb.y, %bb.r, %bb.k
  br label %sentinelCheckCreateInstanceErrors.exit.thread

switch.lookup:                                    ; preds = %bb.d
  %i.jf = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sentinelCommand, i64 %i.jf
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %sentinelCheckCreateInstanceErrors.exit.thread

switch.lookup282:                                 ; preds = %bb.au
  %i.jg = zext nneg i32 %switch.tableidx281 to i64
  %switch.gep283 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sentinelHandleConfiguration.2, i64 %i.jg
  %switch.load284 = load ptr, ptr %switch.gep283, align 8
  br label %sentinelCheckCreateInstanceErrors.exit.thread

switch.lookup286:                                 ; preds = %bb.az
  %i.jh = zext nneg i32 %switch.tableidx285 to i64
  %switch.gep287 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sentinelHandleConfiguration.3, i64 %i.jh
  %switch.load288 = load ptr, ptr %switch.gep287, align 8
  br label %sentinelCheckCreateInstanceErrors.exit.thread

sentinelCheckCreateInstanceErrors.exit.thread:    ; preds = %bb.d, %bb.au, %bb.az, %switch.lookup286, %switch.lookup282, %switch.lookup, %bb.ax, %bb.as, %bb.b, %bb.be, %bb.bw, %bb.by, %bb.bx, %bb.bv, %bb.bt, %bb.bl, %bb.bc, %bb.an, %bb.aj, %bb.ag, %bb.aa, %bb.x, %bb.u, %bb.t, %bb.q, %bb.p, %bb.m, %bb.k, %bb.j, %bb.g, %bb.f, %.critedge
  %.4 = phi ptr [ null, %.critedge ], [ @.str.94, %bb.bw ], [ @.str.71, %bb.f ], [ @.str.71, %bb.as ], [ @.str.71, %bb.j ], [ @.str.72, %bb.g ], [ @.str.72, %bb.k ], [ @.str.71, %bb.p ], [ @.str.71, %bb.m ], [ @.str.71, %bb.t ], [ @.str.76, %bb.q ], [ @.str.78, %bb.u ], [ @.str.71, %bb.x ], [ @.str.71, %bb.aa ], [ @.str.81, %bb.ag ], [ @.str.71, %bb.aj ], [ @.str.69, %bb.b ], [ @.str.88, %bb.be ], [ @.str.71, %bb.an ], [ @.str.71, %bb.bc ], [ @.str.89, %bb.bl ], [ @.str.90, %bb.bt ], [ @.str.71, %bb.bx ], [ @.str.91, %bb.bv ], [ @.str.93, %bb.by ], [ %switch.load, %switch.lookup ], [ %switch.load288, %switch.lookup286 ], [ @.str.71, %bb.ax ], [ %switch.load284, %switch.lookup282 ], [ @.str.62, %bb.az ], [ @.str.62, %bb.au ], [ @.str.62, %bb.d ]
  ret ptr %.4
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @yesnotoi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @rewriteConfigSentinelOption(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  %2 = alloca %struct.dictIterator, align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = tail call ptr @sdsempty() #26
  %i.b = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.a, ptr noundef nonnull @.str.95, ptr noundef nonnull @sentinel) #26
  %i.c = tail call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.96, ptr noundef %i.b, i32 noundef 1) #26 ; 0 uses
  %i.d = tail call ptr @sdsempty() #26
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 128), align 32, !tbaa !84
  %.not = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not, ptr @.str.99, ptr @.str.98
  %i.g = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.d, ptr noundef nonnull @.str.97, ptr noundef nonnull %i.f) #26
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 128), align 32, !tbaa !84
  %i.i = icmp ne i32 %i.h, 1
  %i.j = zext i1 %i.i to i32
  %i.k = tail call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.100, ptr noundef %i.g, i32 noundef %i.j) #26 ; 0 uses
  %i.l = tail call ptr @sdsempty() #26
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 152), align 8, !tbaa !92
  %.not128 = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not128, ptr @.str.99, ptr @.str.98
  %i.o = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.l, ptr noundef nonnull @.str.101, ptr noundef nonnull %i.n) #26
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 152), align 8, !tbaa !92
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = tail call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.102, ptr noundef %i.o, i32 noundef %i.r) #26 ; 0 uses
  %i.t = tail call ptr @sdsempty() #26
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not129 = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not129, ptr @.str.99, ptr @.str.98
  %i.w = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.t, ptr noundef nonnull @.str.103, ptr noundef nonnull %i.v) #26
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = tail call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %i.w, i32 noundef %i.z) #26 ; 0 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  call void @dictInitIterator(ptr noundef nonnull %1, ptr noundef %i.ab) #26
  %i.ac = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not130168 = icmp eq ptr %i.ac, null
  br i1 %.not130168, label %._crit_edge171, label %.lr.ph170

.lr.ph170:                                        ; preds = %bb.a, %._crit_edge167
  %i.ad = phi ptr [ %i.gb, %._crit_edge167 ], [ %i.ac, %bb.a ]
  %i.ae = call ptr @dictGetVal(ptr noundef nonnull %i.ad) #26 ; 20 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !39
  %i.ag = and i32 %i.af, 64
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph170
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 312
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %.not7.i = icmp eq ptr %i.ai, null
  br i1 %.not7.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 272
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !180
  %i.al = icmp sgt i32 %i.ak, 4
  br i1 %i.al, label %sentinelGetCurrentMasterAddress.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph170
  br label %sentinelGetCurrentMasterAddress.exit

sentinelGetCurrentMasterAddress.exit:             ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.ae, %bb.d ], [ %i.ai, %bb.c ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !34 ; 4 uses
  %i.am = call ptr @sdsempty() #26
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 14 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not.i147 = icmp eq i32 %i.ap, 0
  %.in.idx.i = select i1 %.not.i147, i64 8, i64 0
  %.in.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.in.idx.i
  %i.aq = load ptr, ptr %.in.i, align 8, !tbaa !95
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.au = load i32, ptr %i.at, align 8, !tbaa !89
  %i.av = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.am, ptr noundef nonnull @.str.105, ptr noundef %i.ao, ptr noundef %i.aq, i32 noundef %i.as, i32 noundef %i.au) #26
  %i.aw = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.106, ptr noundef %i.av, i32 noundef 1) #26 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 88 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !165
  %i.az = load i64, ptr @sentinel_default_down_after, align 8, !tbaa !115
  %.not135 = icmp eq i64 %i.ay, %i.az
  br i1 %.not135, label %bb.f, label %bb.e

bb.e:                                             ; preds = %sentinelGetCurrentMasterAddress.exit
  %i.ba = call ptr @sdsempty() #26
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !165
  %i.bd = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.107, ptr noundef %i.bb, i64 noundef %i.bc) #26
  %i.be = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.108, ptr noundef %i.bd, i32 noundef 1) #26 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %sentinelGetCurrentMasterAddress.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 296 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !175
  %i.bh = load i64, ptr @sentinel_default_failover_timeout, align 8, !tbaa !115
  %.not136 = icmp eq i64 %i.bg, %i.bh
  br i1 %.not136, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = call ptr @sdsempty() #26
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.bk = load i64, ptr %i.bf, align 8, !tbaa !175
  %i.bl = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.109, ptr noundef %i.bj, i64 noundef %i.bk) #26
  %i.bm = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.110, ptr noundef %i.bl, i32 noundef 1) #26 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 172 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !173
  %.not137 = icmp eq i32 %i.bo, 1
  br i1 %.not137, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = call ptr @sdsempty() #26
  %i.bq = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !173
  %i.bs = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.111, ptr noundef %i.bq, i32 noundef %i.br) #26
  %i.bt = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.112, ptr noundef %i.bs, i32 noundef 1) #26 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 320 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !27
  %.not138 = icmp eq ptr %i.bv, null
  br i1 %.not138, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = call ptr @sdsempty() #26
  %i.bx = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !27
  %i.bz = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.bw, ptr noundef nonnull @.str.113, ptr noundef %i.bx, ptr noundef %i.by) #26
  %i.ca = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.114, ptr noundef %i.bz, i32 noundef 1) #26 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ae, i64 328 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !28
  %.not139 = icmp eq ptr %i.cc, null
  br i1 %.not139, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = call ptr @sdsempty() #26
  %i.ce = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !28
  %i.cg = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.cd, ptr noundef nonnull @.str.115, ptr noundef %i.ce, ptr noundef %i.cf) #26
  %i.ch = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.116, ptr noundef %i.cg, i32 noundef 1) #26 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ae, i64 176 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31
  %.not140 = icmp eq ptr %i.cj, null
  br i1 %.not140, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = call ptr @sdsempty() #26
  %i.cl = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !31
  %i.cn = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.117, ptr noundef %i.cl, ptr noundef %i.cm) #26
  %i.co = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.118, ptr noundef %i.cn, i32 noundef 1) #26 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ae, i64 184 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !32
  %.not141 = icmp eq ptr %i.cq, null
  br i1 %.not141, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = call ptr @sdsempty() #26
  %i.cs = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !32
  %i.cu = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.119, ptr noundef %i.cs, ptr noundef %i.ct) #26
  %i.cv = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.120, ptr noundef %i.cu, i32 noundef 1) #26 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !166
  %.not142 = icmp eq i64 %i.cx, 0
  br i1 %.not142, label %bb.t, label %bb.s

end_hunk_0
