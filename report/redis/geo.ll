Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/geo?download=true
inline.NumInlined: 21
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@georadiusGeneric:bb.a
  br label %.thread445

bb.ax:                                            ; preds = %bb.an, %bb.ai, %bb.aj, %bb.ag, %bb.y, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.ac, %bb.av, %bb.ar, %bb.af
  %.3344.ph = phi ptr [ %.1342509, %bb.ai ], [ %.1342509, %bb.p ], [ %.1342509, %bb.q ], [ %.1342509, %bb.r ], [ %.1342509, %bb.s ], [ %.1342509, %bb.t ], [ %.1342509, %bb.u ], [ %i.cq, %bb.ac ], [ %i.cv, %bb.af ], [ %.1342509, %bb.y ], [ %.1342509, %bb.ag ], [ %.1342509, %bb.aj ], [ %.1342509, %bb.ar ], [ %.1342509, %bb.av ], [ %.1342509, %bb.an ] ; 2 uses
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
  %.2288.ph = phi i32 [ %i.cx, %bb.ai ], [ %.0286520, %bb.p ], [ %.0286520, %bb.q ], [ %.0286520, %bb.r ], [ %.0286520, %bb.s ], [ %.0286520, %bb.t ], [ %.0286520, %bb.u ], [ %i.cn, %bb.ac ], [ %i.cs, %bb.af ], [ %i.cf, %bb.y ], [ %.0286520, %bb.ag ], [ %i.cx, %bb.aj ], [ %i.dr, %bb.ar ], [ %i.eb, %bb.av ], [ %i.dg, %bb.an ]
  %i.el = add nsw i32 %.2288.ph, 1                ; 2 uses
  %i.em = icmp slt i32 %i.el, %i.bg
  br i1 %i.em, label %bb.p, label %._crit_edge.loopexit, !llvm.loop !146

._crit_edge.loopexit:                             ; preds = %bb.ax
  %i.en = icmp ne i32 %.2314.ph, 0
  %i.eo = icmp ne i32 %.2309.ph, 0
  %i.ep = icmp ne i32 %.2304.ph, 0
  %i.eq = icmp ne i32 %.2299.ph, 0
  %i.er = icmp eq i32 %.2338.ph, 0
  %i.es = icmp ne i32 %.2329.ph, 0
  %i.et = icmp ne i32 %.2324.ph, 0
  %i.eu = icmp eq i32 %.2291.ph, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %.5 = phi ptr [ %.0341, %bb.o ], [ %.3344.ph, %._crit_edge.loopexit ] ; 9 uses
  %.4340 = phi i1 [ true, %bb.o ], [ %i.er, %._crit_edge.loopexit ]
  %.4331 = phi i1 [ false, %bb.o ], [ %i.es, %._crit_edge.loopexit ] ; 4 uses
  %.4326 = phi i1 [ false, %bb.o ], [ %i.et, %._crit_edge.loopexit ] ; 3 uses
  %.4321 = phi i32 [ 0, %bb.o ], [ %.2319.ph, %._crit_edge.loopexit ] ; 2 uses
  %.4316 = phi i1 [ false, %bb.o ], [ %i.en, %._crit_edge.loopexit ]
  %.4311 = phi i1 [ false, %bb.o ], [ %i.eo, %._crit_edge.loopexit ]
  %.4306 = phi i1 [ false, %bb.o ], [ %i.ep, %._crit_edge.loopexit ]
  %.4301 = phi i1 [ false, %bb.o ], [ %i.eq, %._crit_edge.loopexit ]
  %.4296 = phi i32 [ 0, %bb.o ], [ %.2294.ph, %._crit_edge.loopexit ] ; 2 uses
  %.4 = phi i1 [ true, %bb.o ], [ %i.eu, %._crit_edge.loopexit ] ; 3 uses
  %.not395 = icmp eq ptr %.5, null                ; 4 uses
  br i1 %.not395, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge
  %or.cond13 = select i1 %.4331, i1 true, i1 %.4326
  %i.ev = icmp ne i32 %.4321, 0
  %or.cond15 = select i1 %or.cond13, i1 true, i1 %i.ev
  br i1 %or.cond15, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ew = and i32 %2, 16
  %.not406 = icmp eq i32 %i.ew, 0
  %i.ex = select i1 %.not406, ptr @.str.45, ptr @.str.44
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.ex) #13
  br label %.thread445

bb.ba:                                            ; preds = %bb.ay, %._crit_edge
  %i.ey = and i32 %2, 8
  %i.ez = icmp eq i32 %i.ey, 0                    ; 3 uses
  %or.cond17 = select i1 %i.ez, i1 true, i1 %.4316
  %or.cond19 = select i1 %or.cond17, i1 true, i1 %.4311
  br i1 %or.cond19, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fa = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !74
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !76
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.46, ptr noundef %i.fd) #13
  br label %.thread445

bb.bc:                                            ; preds = %bb.ba
  %or.cond21 = select i1 %i.ez, i1 true, i1 %.4306
  %or.cond23 = select i1 %or.cond21, i1 true, i1 %.4301
  br i1 %or.cond23, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fe = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !74
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !76
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.47, ptr noundef %i.fh) #13
  br label %.thread445

bb.be:                                            ; preds = %bb.bc
  %i.fi = load i64, ptr %i.c, align 8
  %i.fj = icmp ne i64 %i.fi, 0                    ; 2 uses
  %or.cond25 = select i1 %.4, i1 true, i1 %i.fj
  br i1 %or.cond25, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.48) #13
  br label %.thread445

bb.bg:                                            ; preds = %bb.be
  %i.fk = icmp eq ptr %i.l, null
  br i1 %i.fk, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not395, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fl = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.fm = call i32 @dbDelete(ptr noundef %i.fl, ptr noundef nonnull %.5) #13
  %.not405 = icmp eq i32 %i.fm, 0
  br i1 %.not405, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !111
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.fn, ptr noundef nonnull %.5, ptr noundef null, i32 noundef 1) #13
  %i.fo = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 72
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !153
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.49, ptr noundef nonnull %.5, i32 noundef %i.fq) #13
  %i.fr = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !174
  %i.fs = add nsw i64 %i.fr, 1
  store i64 %i.fs, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !174
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !175
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ft) #13
  br label %.thread445

bb.bl:                                            ; preds = %bb.bh
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !176
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.fu) #13
  br label %.thread445

bb.bm:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @geohashCalculateAreasByShapeWGS84(ptr dead_on_unwind nonnull writable sret(%struct.GeoHashRadius) align 8 %4, ptr noundef nonnull %3) #13
  %i.fv = call noalias noundef dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #11 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, i8 0, i64 24, i1 false)
  %i.fw = load i64, ptr %i.c, align 8
  %i.fx = select i1 %.4, i64 0, i64 %i.fw
  %i.fy = call i32 @membersOfAllNeighbors(ptr noundef nonnull %i.l, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %i.fv, i64 noundef %i.fx) ; 0 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !60 ; 6 uses
  %i.gb = icmp eq i64 %i.ga, 0
  %or.cond31 = and i1 %.not395, %i.gb
  br i1 %or.cond31, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !176
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.gc) #13
  br label %.loopexit

bb.bo:                                            ; preds = %bb.bm
  %i.gd = icmp eq i32 %.4296, 0
  %or.cond27.not = select i1 %i.fj, i1 %i.gd, i1 false
  %or.cond29.not = select i1 %or.cond27.not, i1 %.4, i1 false
  %spec.store.select32 = select i1 %or.cond29.not, i32 1, i32 %.4296
  %i.ge = load i64, ptr %i.c, align 8, !tbaa !82  ; 2 uses
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
  %i.gj = load ptr, ptr %i.fv, align 8, !tbaa !62 ; 2 uses
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
  %5 = load ptr, ptr %i.fv, align 8, !tbaa !62
  %i.gq = getelementptr inbounds nuw [40 x i8], ptr %5, i64 %indvars.iv551 ; 5 uses
  %i.gr = load double, ptr %i.go, align 8, !tbaa !80
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 3 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !69
  %i.gu = fdiv double %i.gt, %i.gr
  store double %i.gu, ptr %i.gs, align 8, !tbaa !69
  br i1 %.not404, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.gp) #13
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 32 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !70
  call void @addReplyBulkSds(ptr noundef %0, ptr noundef %i.gw) #13
  store ptr null, ptr %i.gv, align 8, !tbaa !70
  br i1 %.4331, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.gx = load double, ptr %i.gs, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.gy = call i32 @fixedpoint_d2string(ptr noundef nonnull %i.a, i64 noundef 128, double noundef %i.gx, i32 noundef 4) #13
  %i.gz = sext i32 %i.gy to i64
  call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.gz) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %.4326, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !71
  %i.hc = fptosi double %i.hb to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.hc) #13
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  br i1 %.not402, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #13
  %i.hd = load double, ptr %i.gq, align 8, !tbaa !67
  call void @addReplyDouble(ptr noundef %0, double noundef %i.hd) #13
  %i.he = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.hf = load double, ptr %i.he, align 8, !tbaa !68
  call void @addReplyDouble(ptr noundef %0, double noundef %i.hf) #13
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %exitcond554.not = icmp eq i64 %indvars.iv.next552, %i.gh
  br i1 %exitcond554.not, label %.loopexit, label %bb.bv, !llvm.loop !147

bb.ce:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %.not397 = icmp eq i64 %i.gh, 0
  br i1 %.not397, label %._crit_edge536, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hg = call ptr @createZsetObject() #13        ; 3 uses
  store ptr %i.hg, ptr %i.d, align 8, !tbaa !74
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !76 ; 3 uses
  %i.hj = icmp sgt i64 %i.gh, 0
  br i1 %i.hj, label %.lr.ph535, label %.loopexit579

.lr.ph535:                                        ; preds = %bb.cf
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 2 uses
  br i1 %.4340, label %.lr.ph535.split.us, label %.lr.ph535.split

.lr.ph535.split.us:                               ; preds = %.lr.ph535, %bb.cl
  %indvars.iv547 = phi i64 [ %indvars.iv.next548, %bb.cl ], [ 0, %.lr.ph535 ] ; 2 uses
  %.0533.us = phi i64 [ %i.ip, %bb.cl ], [ 0, %.lr.ph535 ]
  %.0279532.us = phi i64 [ %spec.select414.us, %bb.cl ], [ 0, %.lr.ph535 ]
  %6 = load ptr, ptr %i.fv, align 8, !tbaa !62
  %i.hm = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv547 ; 3 uses
  %i.hn = load double, ptr %i.hk, align 8, !tbaa !80
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !69
  %i.hq = fdiv double %i.hp, %i.hn
  store double %i.hq, ptr %i.ho, align 8, !tbaa !69
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !71
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 32 ; 3 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !70 ; 6 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 -1
  %.val.i.us = load i8, ptr %i.hv, align 1, !tbaa !79 ; 2 uses
  %i.hw = and i8 %.val.i.us, 7
  switch i8 %i.hw, label %sdslen.exit.us [
    i8 0, label %bb.ck
    i8 1, label %bb.cj
    i8 2, label %bb.ci
    i8 3, label %bb.ch
    i8 4, label %bb.cg
  ]

bb.cg:                                            ; preds = %.lr.ph535.split.us
  %i.hx = getelementptr inbounds i8, ptr %i.hu, i64 -17
  %i.hy = load i64, ptr %i.hx, align 1, !tbaa !87
  br label %sdslen.exit.us

bb.ch:                                            ; preds = %.lr.ph535.split.us
  %i.hz = getelementptr inbounds i8, ptr %i.hu, i64 -9
  %i.ia = load i32, ptr %i.hz, align 1, !tbaa !12
  %i.ib = zext i32 %i.ia to i64
  br label %sdslen.exit.us

bb.ci:                                            ; preds = %.lr.ph535.split.us
  %i.ic = getelementptr inbounds i8, ptr %i.hu, i64 -5
  %i.id = load i16, ptr %i.ic, align 1, !tbaa !178
  %i.ie = zext i16 %i.id to i64
  br label %sdslen.exit.us

bb.cj:                                            ; preds = %.lr.ph535.split.us
  %i.if = getelementptr inbounds i8, ptr %i.hu, i64 -3
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !79
  %i.ih = zext i8 %i.ig to i64
  br label %sdslen.exit.us

bb.ck:                                            ; preds = %.lr.ph535.split.us
  %i.ii = lshr i8 %.val.i.us, 3
  %i.ij = zext nneg i8 %i.ii to i64
  br label %sdslen.exit.us

sdslen.exit.us:                                   ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %.lr.ph535.split.us
  %.0.i416.us = phi i64 [ %i.hy, %bb.cg ], [ %i.ij, %bb.ck ], [ %i.ih, %bb.cj ], [ %i.ie, %bb.ci ], [ %i.ib, %bb.ch ], [ 0, %.lr.ph535.split.us ] ; 2 uses
  %i.ik = load ptr, ptr %i.hl, align 8, !tbaa !86
  %i.il = call ptr @zslInsert(ptr noundef %i.ik, double noundef %i.hs, ptr noundef nonnull %i.hu) #13
  %i.im = load ptr, ptr %i.hi, align 8, !tbaa !179
  %i.in = call i32 @dictAdd(ptr noundef %i.im, ptr noundef %i.il, ptr noundef null) #13
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.cl, label %.split.us, !prof !180

bb.cl:                                            ; preds = %sdslen.exit.us
  %spec.select414.us = call i64 @llvm.umax.i64(i64 %.0279532.us, i64 %.0.i416.us) ; 2 uses
  %i.ip = add i64 %.0.i416.us, %.0533.us          ; 2 uses
  %i.iq = load ptr, ptr %i.ht, align 8, !tbaa !70
  call void @sdsfree(ptr noundef %i.iq) #13
  store ptr null, ptr %i.ht, align 8, !tbaa !70
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %exitcond550.not = icmp eq i64 %indvars.iv.next548, %i.gh
  br i1 %exitcond550.not, label %.loopexit579, label %.lr.ph535.split.us, !llvm.loop !148

.lr.ph535.split:                                  ; preds = %.lr.ph535, %bb.cr
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cr ], [ 0, %.lr.ph535 ] ; 2 uses
  %.0533 = phi i64 [ %i.js, %bb.cr ], [ 0, %.lr.ph535 ]
  %.0279532 = phi i64 [ %spec.select414, %bb.cr ], [ 0, %.lr.ph535 ]
  %7 = load ptr, ptr %i.fv, align 8, !tbaa !62
  %i.ir = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  %i.is = load double, ptr %i.hk, align 8, !tbaa !80
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 2 uses
  %i.iu = load double, ptr %i.it, align 8, !tbaa !69
  %i.iv = fdiv double %i.iu, %i.is                ; 2 uses
  store double %i.iv, ptr %i.it, align 8, !tbaa !69
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 3 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !70 ; 6 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 -1
  %.val.i = load i8, ptr %i.iy, align 1, !tbaa !79 ; 2 uses
  %i.iz = and i8 %.val.i, 7
  switch i8 %i.iz, label %sdslen.exit [
    i8 0, label %bb.cm
    i8 1, label %bb.cn
    i8 2, label %bb.co
    i8 3, label %bb.cp
    i8 4, label %bb.cq
  ]

bb.cm:                                            ; preds = %.lr.ph535.split
  %i.ja = lshr i8 %.val.i, 3
  %i.jb = zext nneg i8 %i.ja to i64
  br label %sdslen.exit

bb.cn:                                            ; preds = %.lr.ph535.split
  %i.jc = getelementptr inbounds i8, ptr %i.ix, i64 -3
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !79
  %i.je = zext i8 %i.jd to i64
  br label %sdslen.exit

bb.co:                                            ; preds = %.lr.ph535.split
  %i.jf = getelementptr inbounds i8, ptr %i.ix, i64 -5
  %i.jg = load i16, ptr %i.jf, align 1, !tbaa !178
  %i.jh = zext i16 %i.jg to i64
  br label %sdslen.exit

bb.cp:                                            ; preds = %.lr.ph535.split
  %i.ji = getelementptr inbounds i8, ptr %i.ix, i64 -9
  %i.jj = load i32, ptr %i.ji, align 1, !tbaa !12
  %i.jk = zext i32 %i.jj to i64
  br label %sdslen.exit

bb.cq:                                            ; preds = %.lr.ph535.split
  %i.jl = getelementptr inbounds i8, ptr %i.ix, i64 -17
  %i.jm = load i64, ptr %i.jl, align 1, !tbaa !87
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph535.split, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq
  %.0.i416 = phi i64 [ %i.jm, %bb.cq ], [ %i.jb, %bb.cm ], [ %i.je, %bb.cn ], [ %i.jh, %bb.co ], [ %i.jk, %bb.cp ], [ 0, %.lr.ph535.split ] ; 2 uses
  %i.jn = load ptr, ptr %i.hl, align 8, !tbaa !86
  %i.jo = call ptr @zslInsert(ptr noundef %i.jn, double noundef %i.iv, ptr noundef nonnull %i.ix) #13
  %i.jp = load ptr, ptr %i.hi, align 8, !tbaa !179
  %i.jq = call i32 @dictAdd(ptr noundef %i.jp, ptr noundef %i.jo, ptr noundef null) #13
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %bb.cr, label %.split.us, !prof !180

.split.us:                                        ; preds = %sdslen.exit, %sdslen.exit.us
  call void @_serverAssert(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 826) #13
  call void @abort() #15
  unreachable

bb.cr:                                            ; preds = %sdslen.exit
  %spec.select414 = call i64 @llvm.umax.i64(i64 %.0279532, i64 %.0.i416) ; 2 uses
  %i.js = add i64 %.0.i416, %.0533                ; 2 uses
  %i.jt = load ptr, ptr %i.iw, align 8, !tbaa !70
  call void @sdsfree(ptr noundef %i.jt) #13
  store ptr null, ptr %i.iw, align 8, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.gh
  br i1 %exitcond.not, label %.loopexit579, label %.lr.ph535.split, !llvm.loop !148

.loopexit579:                                     ; preds = %bb.cr, %bb.cl, %bb.cf
  %.0279.lcssa.ph = phi i64 [ %spec.select414.us, %bb.cl ], [ 0, %bb.cf ], [ %spec.select414, %bb.cr ]
  %.0.lcssa.ph = phi i64 [ %i.ip, %bb.cl ], [ 0, %bb.cf ], [ %i.js, %bb.cr ]
  call void @zsetConvertToListpackIfNeeded(ptr noundef %i.hg, i64 noundef %.0279.lcssa.ph, i64 noundef %.0.lcssa.ph) #13
  %i.ju = load ptr, ptr %i.e, align 8, !tbaa !111
  call void @setKey(ptr noundef %0, ptr noundef %i.ju, ptr noundef nonnull %.5, ptr noundef nonnull %i.d, i32 noundef 0) #13
  %i.jv = select i1 %i.ez, ptr @.str.52, ptr @.str.51
  %i.jw = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 72
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !153
  call void @notifyKeyspaceEvent(i32 noundef 128, ptr noundef nonnull %i.jv, ptr noundef nonnull %.5, i32 noundef %i.jy) #13
  br label %.sink.split

._crit_edge536:                                   ; preds = %bb.ce
  %i.jz = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.ka = call i32 @dbDelete(ptr noundef %i.jz, ptr noundef nonnull %.5) #13
  %.not398 = icmp eq i32 %i.ka, 0
  br i1 %.not398, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge536
  %i.kb = load ptr, ptr %i.e, align 8, !tbaa !111
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.kb, ptr noundef nonnull %.5, ptr noundef null, i32 noundef 1) #13
  %i.kc = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 72
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !153
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.49, ptr noundef nonnull %.5, i32 noundef %i.ke) #13
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit579, %bb.cs
  %.sink584 = phi i64 [ 1, %bb.cs ], [ %i.gh, %.loopexit579 ]
  %i.kf = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !174
  %i.kg = add nsw i64 %i.kf, %.sink584
  store i64 %i.kg, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !174
  br label %bb.ct

bb.ct:                                            ; preds = %.sink.split, %._crit_edge536
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.gh) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cd, %bb.ct, %bb.bu, %bb.bn
  call void @geoArrayFree(ptr noundef nonnull %i.fv)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.thread445

.thread445:                                       ; preds = %bb.x, %bb.an, %bb.aq, %bb.au, %bb.z, %bb.ak, %bb.aw, %bb.bk, %bb.bl, %.loopexit, %bb.bf, %bb.bd, %bb.bb, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %extractLongLatOrReply.exit.thread

extractLongLatOrReply.exit.thread:                ; preds = %bb.c, %bb.d, %bb.f, %.critedge, %extractLongLatOrReply.exit, %bb.j, %.thread445, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.cu

bb.cu:                                            ; preds = %bb.a, %extractLongLatOrReply.exit.thread
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
define internal range(i32 -1, 2) i32 @sort_gp_asc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 !guid !181 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !69 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !69 ; 2 uses
  %i.e = fcmp ogt double %i.b, %i.d
  %i.f = fcmp une double %i.b, %i.d
  %. = sext i1 %i.f to i32
  %.0 = select i1 %i.e, i32 1, i32 %.
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @sort_gp_desc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 !guid !182 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !69 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !69 ; 2 uses
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
end_hunk_0
